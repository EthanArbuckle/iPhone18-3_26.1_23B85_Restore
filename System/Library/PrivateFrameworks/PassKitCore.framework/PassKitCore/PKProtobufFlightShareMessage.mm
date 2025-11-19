@interface PKProtobufFlightShareMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PKProtobufFlightShareMessage

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufFlightShareMessage;
  v4 = [(PKProtobufFlightShareMessage *)&v8 description];
  v5 = [(PKProtobufFlightShareMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
  [v3 setObject:v4 forKey:@"version"];

  flightDataString = self->_flightDataString;
  if (flightDataString)
  {
    [v3 setObject:flightDataString forKey:@"flightDataString"];
  }

  logoImage = self->_logoImage;
  if (logoImage)
  {
    [v3 setObject:logoImage forKey:@"logoImage"];
  }

  foregroundColor = self->_foregroundColor;
  if (foregroundColor)
  {
    [v3 setObject:foregroundColor forKey:@"foregroundColor"];
  }

  backgroundColor = self->_backgroundColor;
  if (backgroundColor)
  {
    [v3 setObject:backgroundColor forKey:@"backgroundColor"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  PBDataWriterWriteUint32Field();
  if (self->_flightDataString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_logoImage)
  {
    PBDataWriterWriteDataField();
  }

  v4 = v5;
  if (self->_foregroundColor)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_backgroundColor)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[10] = self->_version;
  v5 = v4;
  if (self->_flightDataString)
  {
    [v4 setFlightDataString:?];
    v4 = v5;
  }

  if (self->_logoImage)
  {
    [v5 setLogoImage:?];
    v4 = v5;
  }

  if (self->_foregroundColor)
  {
    [v5 setForegroundColor:?];
    v4 = v5;
  }

  if (self->_backgroundColor)
  {
    [v5 setBackgroundColor:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 40) = self->_version;
  v6 = [(NSString *)self->_flightDataString copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSData *)self->_logoImage copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSString *)self->_foregroundColor copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  v12 = [(NSString *)self->_backgroundColor copyWithZone:a3];
  v13 = *(v5 + 8);
  *(v5 + 8) = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_version == *(v4 + 10) && ((flightDataString = self->_flightDataString, !(flightDataString | v4[2])) || -[NSString isEqual:](flightDataString, "isEqual:")) && ((logoImage = self->_logoImage, !(logoImage | v4[4])) || -[NSData isEqual:](logoImage, "isEqual:")) && ((foregroundColor = self->_foregroundColor, !(foregroundColor | v4[3])) || -[NSString isEqual:](foregroundColor, "isEqual:")))
  {
    backgroundColor = self->_backgroundColor;
    if (backgroundColor | v4[1])
    {
      v9 = [(NSString *)backgroundColor isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = 2654435761 * self->_version;
  v4 = [(NSString *)self->_flightDataString hash];
  v5 = v4 ^ [(NSData *)self->_logoImage hash];
  v6 = v5 ^ [(NSString *)self->_foregroundColor hash];
  return v6 ^ [(NSString *)self->_backgroundColor hash]^ v3;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_version = v4[10];
  v5 = v4;
  if (*(v4 + 2))
  {
    [(PKProtobufFlightShareMessage *)self setFlightDataString:?];
  }

  if (v5[4])
  {
    [(PKProtobufFlightShareMessage *)self setLogoImage:?];
  }

  if (v5[3])
  {
    [(PKProtobufFlightShareMessage *)self setForegroundColor:?];
  }

  if (v5[1])
  {
    [(PKProtobufFlightShareMessage *)self setBackgroundColor:?];
  }
}

@end
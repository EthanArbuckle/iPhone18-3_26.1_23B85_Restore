@interface PKProtobufFlightShareMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PKProtobufFlightShareMessage

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufFlightShareMessage;
  v4 = [(PKProtobufFlightShareMessage *)&v8 description];
  dictionaryRepresentation = [(PKProtobufFlightShareMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
  [dictionary setObject:v4 forKey:@"version"];

  flightDataString = self->_flightDataString;
  if (flightDataString)
  {
    [dictionary setObject:flightDataString forKey:@"flightDataString"];
  }

  logoImage = self->_logoImage;
  if (logoImage)
  {
    [dictionary setObject:logoImage forKey:@"logoImage"];
  }

  foregroundColor = self->_foregroundColor;
  if (foregroundColor)
  {
    [dictionary setObject:foregroundColor forKey:@"foregroundColor"];
  }

  backgroundColor = self->_backgroundColor;
  if (backgroundColor)
  {
    [dictionary setObject:backgroundColor forKey:@"backgroundColor"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteUint32Field();
  if (self->_flightDataString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_logoImage)
  {
    PBDataWriterWriteDataField();
  }

  v4 = toCopy;
  if (self->_foregroundColor)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if (self->_backgroundColor)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[10] = self->_version;
  v5 = toCopy;
  if (self->_flightDataString)
  {
    [toCopy setFlightDataString:?];
    toCopy = v5;
  }

  if (self->_logoImage)
  {
    [v5 setLogoImage:?];
    toCopy = v5;
  }

  if (self->_foregroundColor)
  {
    [v5 setForegroundColor:?];
    toCopy = v5;
  }

  if (self->_backgroundColor)
  {
    [v5 setBackgroundColor:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 40) = self->_version;
  v6 = [(NSString *)self->_flightDataString copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSData *)self->_logoImage copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSString *)self->_foregroundColor copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  v12 = [(NSString *)self->_backgroundColor copyWithZone:zone];
  v13 = *(v5 + 8);
  *(v5 + 8) = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_version == *(equalCopy + 10) && ((flightDataString = self->_flightDataString, !(flightDataString | equalCopy[2])) || -[NSString isEqual:](flightDataString, "isEqual:")) && ((logoImage = self->_logoImage, !(logoImage | equalCopy[4])) || -[NSData isEqual:](logoImage, "isEqual:")) && ((foregroundColor = self->_foregroundColor, !(foregroundColor | equalCopy[3])) || -[NSString isEqual:](foregroundColor, "isEqual:")))
  {
    backgroundColor = self->_backgroundColor;
    if (backgroundColor | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_version = fromCopy[10];
  v5 = fromCopy;
  if (*(fromCopy + 2))
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
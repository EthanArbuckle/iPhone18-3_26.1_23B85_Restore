@interface NPKProtoStandalonePaymentHeroImage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoStandalonePaymentHeroImage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentHeroImage;
  v4 = [(NPKProtoStandalonePaymentHeroImage *)&v8 description];
  v5 = [(NPKProtoStandalonePaymentHeroImage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  imageHash = self->_imageHash;
  if (imageHash)
  {
    [v4 setObject:imageHash forKey:@"imageHash"];
  }

  imageData = self->_imageData;
  if (imageData)
  {
    [v4 setObject:imageData forKey:@"imageData"];
  }

  imageURL = self->_imageURL;
  if (imageURL)
  {
    [v4 setObject:imageURL forKey:@"imageURL"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_identifier)
  {
    [NPKProtoStandalonePaymentHeroImage writeTo:];
  }

  v6 = v4;
  PBDataWriterWriteStringField();
  if (self->_imageHash)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_imageData)
  {
    PBDataWriterWriteDataField();
  }

  v5 = v6;
  if (self->_imageURL)
  {
    PBDataWriterWriteStringField();
    v5 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v5 = a3;
  [v5 setIdentifier:self->_identifier];
  if (self->_imageHash)
  {
    [v5 setImageHash:?];
  }

  if (self->_imageData)
  {
    [v5 setImageData:?];
  }

  v4 = v5;
  if (self->_imageURL)
  {
    [v5 setImageURL:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_imageHash copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSData *)self->_imageData copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSString *)self->_imageURL copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((identifier = self->_identifier, !(identifier | v4[1])) || -[NSString isEqual:](identifier, "isEqual:")) && ((imageHash = self->_imageHash, !(imageHash | v4[3])) || -[NSString isEqual:](imageHash, "isEqual:")) && ((imageData = self->_imageData, !(imageData | v4[2])) || -[NSData isEqual:](imageData, "isEqual:")))
  {
    imageURL = self->_imageURL;
    if (imageURL | v4[4])
    {
      v9 = [(NSString *)imageURL isEqual:?];
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
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSString *)self->_imageHash hash]^ v3;
  v5 = [(NSData *)self->_imageData hash];
  return v4 ^ v5 ^ [(NSString *)self->_imageURL hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[1])
  {
    [(NPKProtoStandalonePaymentHeroImage *)self setIdentifier:?];
  }

  if (v4[3])
  {
    [(NPKProtoStandalonePaymentHeroImage *)self setImageHash:?];
  }

  if (v4[2])
  {
    [(NPKProtoStandalonePaymentHeroImage *)self setImageData:?];
  }

  if (v4[4])
  {
    [(NPKProtoStandalonePaymentHeroImage *)self setImageURL:?];
  }
}

@end
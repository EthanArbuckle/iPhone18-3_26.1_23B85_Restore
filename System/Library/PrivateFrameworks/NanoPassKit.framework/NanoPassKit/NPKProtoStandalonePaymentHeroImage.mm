@interface NPKProtoStandalonePaymentHeroImage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoStandalonePaymentHeroImage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentHeroImage;
  v4 = [(NPKProtoStandalonePaymentHeroImage *)&v8 description];
  dictionaryRepresentation = [(NPKProtoStandalonePaymentHeroImage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_identifier)
  {
    [NPKProtoStandalonePaymentHeroImage writeTo:];
  }

  v6 = toCopy;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setIdentifier:self->_identifier];
  if (self->_imageHash)
  {
    [toCopy setImageHash:?];
  }

  if (self->_imageData)
  {
    [toCopy setImageData:?];
  }

  v4 = toCopy;
  if (self->_imageURL)
  {
    [toCopy setImageURL:?];
    v4 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_imageHash copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSData *)self->_imageData copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSString *)self->_imageURL copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((identifier = self->_identifier, !(identifier | equalCopy[1])) || -[NSString isEqual:](identifier, "isEqual:")) && ((imageHash = self->_imageHash, !(imageHash | equalCopy[3])) || -[NSString isEqual:](imageHash, "isEqual:")) && ((imageData = self->_imageData, !(imageData | equalCopy[2])) || -[NSData isEqual:](imageData, "isEqual:")))
  {
    imageURL = self->_imageURL;
    if (imageURL | equalCopy[4])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[1])
  {
    [(NPKProtoStandalonePaymentHeroImage *)self setIdentifier:?];
  }

  if (fromCopy[3])
  {
    [(NPKProtoStandalonePaymentHeroImage *)self setImageHash:?];
  }

  if (fromCopy[2])
  {
    [(NPKProtoStandalonePaymentHeroImage *)self setImageData:?];
  }

  if (fromCopy[4])
  {
    [(NPKProtoStandalonePaymentHeroImage *)self setImageURL:?];
  }
}

@end
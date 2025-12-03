@interface NPKProtoStandalonePaymentSetupProductImageAssetURLs
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoStandalonePaymentSetupProductImageAssetURLs

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentSetupProductImageAssetURLs;
  v4 = [(NPKProtoStandalonePaymentSetupProductImageAssetURLs *)&v8 description];
  dictionaryRepresentation = [(NPKProtoStandalonePaymentSetupProductImageAssetURLs *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  digitalCardImageUrl = self->_digitalCardImageUrl;
  if (digitalCardImageUrl)
  {
    [dictionary setObject:digitalCardImageUrl forKey:@"digitalCardImageUrl"];
  }

  thumbnailImageUrl = self->_thumbnailImageUrl;
  if (thumbnailImageUrl)
  {
    [v4 setObject:thumbnailImageUrl forKey:@"thumbnailImageUrl"];
  }

  logoImageUrl = self->_logoImageUrl;
  if (logoImageUrl)
  {
    [v4 setObject:logoImageUrl forKey:@"logoImageUrl"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_digitalCardImageUrl)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_thumbnailImageUrl)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_logoImageUrl)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_digitalCardImageUrl)
  {
    [toCopy setDigitalCardImageUrl:?];
    toCopy = v5;
  }

  if (self->_thumbnailImageUrl)
  {
    [v5 setThumbnailImageUrl:?];
    toCopy = v5;
  }

  if (self->_logoImageUrl)
  {
    [v5 setLogoImageUrl:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_digitalCardImageUrl copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_thumbnailImageUrl copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_logoImageUrl copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((digitalCardImageUrl = self->_digitalCardImageUrl, !(digitalCardImageUrl | equalCopy[1])) || -[NSString isEqual:](digitalCardImageUrl, "isEqual:")) && ((thumbnailImageUrl = self->_thumbnailImageUrl, !(thumbnailImageUrl | equalCopy[3])) || -[NSString isEqual:](thumbnailImageUrl, "isEqual:")))
  {
    logoImageUrl = self->_logoImageUrl;
    if (logoImageUrl | equalCopy[2])
    {
      v8 = [(NSString *)logoImageUrl isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_digitalCardImageUrl hash];
  v4 = [(NSString *)self->_thumbnailImageUrl hash]^ v3;
  return v4 ^ [(NSString *)self->_logoImageUrl hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(NPKProtoStandalonePaymentSetupProductImageAssetURLs *)self setDigitalCardImageUrl:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(NPKProtoStandalonePaymentSetupProductImageAssetURLs *)self setThumbnailImageUrl:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(NPKProtoStandalonePaymentSetupProductImageAssetURLs *)self setLogoImageUrl:?];
    fromCopy = v5;
  }
}

@end
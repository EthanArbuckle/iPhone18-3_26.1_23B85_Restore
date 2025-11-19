@interface NPKProtoStandalonePaymentSetupProductImageAssetURLs
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoStandalonePaymentSetupProductImageAssetURLs

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentSetupProductImageAssetURLs;
  v4 = [(NPKProtoStandalonePaymentSetupProductImageAssetURLs *)&v8 description];
  v5 = [(NPKProtoStandalonePaymentSetupProductImageAssetURLs *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  digitalCardImageUrl = self->_digitalCardImageUrl;
  if (digitalCardImageUrl)
  {
    [v3 setObject:digitalCardImageUrl forKey:@"digitalCardImageUrl"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_digitalCardImageUrl)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_thumbnailImageUrl)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_logoImageUrl)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_digitalCardImageUrl)
  {
    [v4 setDigitalCardImageUrl:?];
    v4 = v5;
  }

  if (self->_thumbnailImageUrl)
  {
    [v5 setThumbnailImageUrl:?];
    v4 = v5;
  }

  if (self->_logoImageUrl)
  {
    [v5 setLogoImageUrl:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_digitalCardImageUrl copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_thumbnailImageUrl copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_logoImageUrl copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((digitalCardImageUrl = self->_digitalCardImageUrl, !(digitalCardImageUrl | v4[1])) || -[NSString isEqual:](digitalCardImageUrl, "isEqual:")) && ((thumbnailImageUrl = self->_thumbnailImageUrl, !(thumbnailImageUrl | v4[3])) || -[NSString isEqual:](thumbnailImageUrl, "isEqual:")))
  {
    logoImageUrl = self->_logoImageUrl;
    if (logoImageUrl | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(NPKProtoStandalonePaymentSetupProductImageAssetURLs *)self setDigitalCardImageUrl:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(NPKProtoStandalonePaymentSetupProductImageAssetURLs *)self setThumbnailImageUrl:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(NPKProtoStandalonePaymentSetupProductImageAssetURLs *)self setLogoImageUrl:?];
    v4 = v5;
  }
}

@end
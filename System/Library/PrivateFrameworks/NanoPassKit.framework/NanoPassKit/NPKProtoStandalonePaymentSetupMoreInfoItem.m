@interface NPKProtoStandalonePaymentSetupMoreInfoItem
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoStandalonePaymentSetupMoreInfoItem

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentSetupMoreInfoItem;
  v4 = [(NPKProtoStandalonePaymentSetupMoreInfoItem *)&v8 description];
  v5 = [(NPKProtoStandalonePaymentSetupMoreInfoItem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  title = self->_title;
  if (title)
  {
    [v3 setObject:title forKey:@"title"];
  }

  body = self->_body;
  if (body)
  {
    [v4 setObject:body forKey:@"body"];
  }

  linkText = self->_linkText;
  if (linkText)
  {
    [v4 setObject:linkText forKey:@"linkText"];
  }

  linkURL = self->_linkURL;
  if (linkURL)
  {
    [v4 setObject:linkURL forKey:@"linkURL"];
  }

  imageURL = self->_imageURL;
  if (imageURL)
  {
    [v4 setObject:imageURL forKey:@"imageURL"];
  }

  imageData = self->_imageData;
  if (imageData)
  {
    [v4 setObject:imageData forKey:@"imageData"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_title)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_body)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_linkText)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_linkURL)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_imageURL)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_imageData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_title)
  {
    [v4 setTitle:?];
    v4 = v5;
  }

  if (self->_body)
  {
    [v5 setBody:?];
    v4 = v5;
  }

  if (self->_linkText)
  {
    [v5 setLinkText:?];
    v4 = v5;
  }

  if (self->_linkURL)
  {
    [v5 setLinkURL:?];
    v4 = v5;
  }

  if (self->_imageURL)
  {
    [v5 setImageURL:?];
    v4 = v5;
  }

  if (self->_imageData)
  {
    [v5 setImageData:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_title copyWithZone:a3];
  v7 = v5[6];
  v5[6] = v6;

  v8 = [(NSString *)self->_body copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_linkText copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NSString *)self->_linkURL copyWithZone:a3];
  v13 = v5[5];
  v5[5] = v12;

  v14 = [(NSString *)self->_imageURL copyWithZone:a3];
  v15 = v5[3];
  v5[3] = v14;

  v16 = [(NSData *)self->_imageData copyWithZone:a3];
  v17 = v5[2];
  v5[2] = v16;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((title = self->_title, !(title | v4[6])) || -[NSString isEqual:](title, "isEqual:")) && ((body = self->_body, !(body | v4[1])) || -[NSString isEqual:](body, "isEqual:")) && ((linkText = self->_linkText, !(linkText | v4[4])) || -[NSString isEqual:](linkText, "isEqual:")) && ((linkURL = self->_linkURL, !(linkURL | v4[5])) || -[NSString isEqual:](linkURL, "isEqual:")) && ((imageURL = self->_imageURL, !(imageURL | v4[3])) || -[NSString isEqual:](imageURL, "isEqual:")))
  {
    imageData = self->_imageData;
    if (imageData | v4[2])
    {
      v11 = [(NSData *)imageData isEqual:?];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_title hash];
  v4 = [(NSString *)self->_body hash]^ v3;
  v5 = [(NSString *)self->_linkText hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_linkURL hash];
  v7 = [(NSString *)self->_imageURL hash];
  return v6 ^ v7 ^ [(NSData *)self->_imageData hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[6])
  {
    [(NPKProtoStandalonePaymentSetupMoreInfoItem *)self setTitle:?];
  }

  if (v4[1])
  {
    [(NPKProtoStandalonePaymentSetupMoreInfoItem *)self setBody:?];
  }

  if (v4[4])
  {
    [(NPKProtoStandalonePaymentSetupMoreInfoItem *)self setLinkText:?];
  }

  if (v4[5])
  {
    [(NPKProtoStandalonePaymentSetupMoreInfoItem *)self setLinkURL:?];
  }

  if (v4[3])
  {
    [(NPKProtoStandalonePaymentSetupMoreInfoItem *)self setImageURL:?];
  }

  if (v4[2])
  {
    [(NPKProtoStandalonePaymentSetupMoreInfoItem *)self setImageData:?];
  }
}

@end
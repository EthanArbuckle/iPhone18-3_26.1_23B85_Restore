@interface NPKProtoStandalonePaymentSetupMoreInfoItem
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoStandalonePaymentSetupMoreInfoItem

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentSetupMoreInfoItem;
  v4 = [(NPKProtoStandalonePaymentSetupMoreInfoItem *)&v8 description];
  dictionaryRepresentation = [(NPKProtoStandalonePaymentSetupMoreInfoItem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  title = self->_title;
  if (title)
  {
    [dictionary setObject:title forKey:@"title"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_title)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_body)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_linkText)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_linkURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_imageURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_imageData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_title)
  {
    [toCopy setTitle:?];
    toCopy = v5;
  }

  if (self->_body)
  {
    [v5 setBody:?];
    toCopy = v5;
  }

  if (self->_linkText)
  {
    [v5 setLinkText:?];
    toCopy = v5;
  }

  if (self->_linkURL)
  {
    [v5 setLinkURL:?];
    toCopy = v5;
  }

  if (self->_imageURL)
  {
    [v5 setImageURL:?];
    toCopy = v5;
  }

  if (self->_imageData)
  {
    [v5 setImageData:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_title copyWithZone:zone];
  v7 = v5[6];
  v5[6] = v6;

  v8 = [(NSString *)self->_body copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_linkText copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NSString *)self->_linkURL copyWithZone:zone];
  v13 = v5[5];
  v5[5] = v12;

  v14 = [(NSString *)self->_imageURL copyWithZone:zone];
  v15 = v5[3];
  v5[3] = v14;

  v16 = [(NSData *)self->_imageData copyWithZone:zone];
  v17 = v5[2];
  v5[2] = v16;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((title = self->_title, !(title | equalCopy[6])) || -[NSString isEqual:](title, "isEqual:")) && ((body = self->_body, !(body | equalCopy[1])) || -[NSString isEqual:](body, "isEqual:")) && ((linkText = self->_linkText, !(linkText | equalCopy[4])) || -[NSString isEqual:](linkText, "isEqual:")) && ((linkURL = self->_linkURL, !(linkURL | equalCopy[5])) || -[NSString isEqual:](linkURL, "isEqual:")) && ((imageURL = self->_imageURL, !(imageURL | equalCopy[3])) || -[NSString isEqual:](imageURL, "isEqual:")))
  {
    imageData = self->_imageData;
    if (imageData | equalCopy[2])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[6])
  {
    [(NPKProtoStandalonePaymentSetupMoreInfoItem *)self setTitle:?];
  }

  if (fromCopy[1])
  {
    [(NPKProtoStandalonePaymentSetupMoreInfoItem *)self setBody:?];
  }

  if (fromCopy[4])
  {
    [(NPKProtoStandalonePaymentSetupMoreInfoItem *)self setLinkText:?];
  }

  if (fromCopy[5])
  {
    [(NPKProtoStandalonePaymentSetupMoreInfoItem *)self setLinkURL:?];
  }

  if (fromCopy[3])
  {
    [(NPKProtoStandalonePaymentSetupMoreInfoItem *)self setImageURL:?];
  }

  if (fromCopy[2])
  {
    [(NPKProtoStandalonePaymentSetupMoreInfoItem *)self setImageData:?];
  }
}

@end
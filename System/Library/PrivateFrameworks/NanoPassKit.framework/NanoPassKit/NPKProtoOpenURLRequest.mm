@interface NPKProtoOpenURLRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoOpenURLRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoOpenURLRequest;
  v4 = [(NPKProtoOpenURLRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoOpenURLRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  urlString = self->_urlString;
  if (urlString)
  {
    [dictionary setObject:urlString forKey:@"urlString"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_urlString)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  urlString = self->_urlString;
  if (urlString)
  {
    [to setUrlString:urlString];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_urlString copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    urlString = self->_urlString;
    if (urlString | equalCopy[1])
    {
      v6 = [(NSString *)urlString isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(NPKProtoOpenURLRequest *)self setUrlString:?];
  }
}

@end
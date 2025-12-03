@interface NPKProtoAvailableProductsRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoAvailableProductsRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoAvailableProductsRequest;
  v4 = [(NPKProtoAvailableProductsRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoAvailableProductsRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  productsRequestData = self->_productsRequestData;
  if (productsRequestData)
  {
    [dictionary setObject:productsRequestData forKey:@"productsRequestData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_productsRequestData)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  productsRequestData = self->_productsRequestData;
  if (productsRequestData)
  {
    [to setProductsRequestData:productsRequestData];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_productsRequestData copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    productsRequestData = self->_productsRequestData;
    if (productsRequestData | equalCopy[1])
    {
      v6 = [(NSData *)productsRequestData isEqual:?];
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
    [(NPKProtoAvailableProductsRequest *)self setProductsRequestData:?];
  }
}

@end
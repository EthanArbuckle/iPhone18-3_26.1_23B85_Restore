@interface NPKProtoPendingProvisioningReceiptRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoPendingProvisioningReceiptRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoPendingProvisioningReceiptRequest;
  v4 = [(NPKProtoPendingProvisioningReceiptRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoPendingProvisioningReceiptRequest *)self dictionaryRepresentation];
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

  receiptData = self->_receiptData;
  if (receiptData)
  {
    [v4 setObject:receiptData forKey:@"receiptData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_identifier)
  {
    [NPKProtoPendingProvisioningReceiptRequest writeTo:];
  }

  v5 = toCopy;
  PBDataWriterWriteStringField();
  if (!self->_receiptData)
  {
    [NPKProtoPendingProvisioningReceiptRequest writeTo:];
  }

  PBDataWriterWriteDataField();
}

- (void)copyTo:(id)to
{
  identifier = self->_identifier;
  toCopy = to;
  [toCopy setIdentifier:identifier];
  [toCopy setReceiptData:self->_receiptData];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_receiptData copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((identifier = self->_identifier, !(identifier | equalCopy[1])) || -[NSString isEqual:](identifier, "isEqual:")))
  {
    receiptData = self->_receiptData;
    if (receiptData | equalCopy[2])
    {
      v7 = [(NSData *)receiptData isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(NPKProtoPendingProvisioningReceiptRequest *)self setIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(NPKProtoPendingProvisioningReceiptRequest *)self setReceiptData:?];
    fromCopy = v5;
  }
}

@end
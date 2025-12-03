@interface NPKProtoPeerPaymentWebServiceContextDidChangeRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoPeerPaymentWebServiceContextDidChangeRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoPeerPaymentWebServiceContextDidChangeRequest;
  v4 = [(NPKProtoPeerPaymentWebServiceContextDidChangeRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoPeerPaymentWebServiceContextDidChangeRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  peerPaymentWebServiceContextData = self->_peerPaymentWebServiceContextData;
  if (peerPaymentWebServiceContextData)
  {
    [dictionary setObject:peerPaymentWebServiceContextData forKey:@"peerPaymentWebServiceContextData"];
  }

  peerPaymentAccountData = self->_peerPaymentAccountData;
  if (peerPaymentAccountData)
  {
    [v4 setObject:peerPaymentAccountData forKey:@"peerPaymentAccountData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_peerPaymentWebServiceContextData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_peerPaymentAccountData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_peerPaymentWebServiceContextData)
  {
    [toCopy setPeerPaymentWebServiceContextData:?];
    toCopy = v5;
  }

  if (self->_peerPaymentAccountData)
  {
    [v5 setPeerPaymentAccountData:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_peerPaymentWebServiceContextData copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_peerPaymentAccountData copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((peerPaymentWebServiceContextData = self->_peerPaymentWebServiceContextData, !(peerPaymentWebServiceContextData | equalCopy[2])) || -[NSData isEqual:](peerPaymentWebServiceContextData, "isEqual:")))
  {
    peerPaymentAccountData = self->_peerPaymentAccountData;
    if (peerPaymentAccountData | equalCopy[1])
    {
      v7 = [(NSData *)peerPaymentAccountData isEqual:?];
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
  if (fromCopy[2])
  {
    [(NPKProtoPeerPaymentWebServiceContextDidChangeRequest *)self setPeerPaymentWebServiceContextData:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(NPKProtoPeerPaymentWebServiceContextDidChangeRequest *)self setPeerPaymentAccountData:?];
    fromCopy = v5;
  }
}

@end
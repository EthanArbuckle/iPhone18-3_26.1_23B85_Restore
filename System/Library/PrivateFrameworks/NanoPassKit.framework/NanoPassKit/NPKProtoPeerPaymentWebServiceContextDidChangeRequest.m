@interface NPKProtoPeerPaymentWebServiceContextDidChangeRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoPeerPaymentWebServiceContextDidChangeRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoPeerPaymentWebServiceContextDidChangeRequest;
  v4 = [(NPKProtoPeerPaymentWebServiceContextDidChangeRequest *)&v8 description];
  v5 = [(NPKProtoPeerPaymentWebServiceContextDidChangeRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  peerPaymentWebServiceContextData = self->_peerPaymentWebServiceContextData;
  if (peerPaymentWebServiceContextData)
  {
    [v3 setObject:peerPaymentWebServiceContextData forKey:@"peerPaymentWebServiceContextData"];
  }

  peerPaymentAccountData = self->_peerPaymentAccountData;
  if (peerPaymentAccountData)
  {
    [v4 setObject:peerPaymentAccountData forKey:@"peerPaymentAccountData"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_peerPaymentWebServiceContextData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_peerPaymentAccountData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_peerPaymentWebServiceContextData)
  {
    [v4 setPeerPaymentWebServiceContextData:?];
    v4 = v5;
  }

  if (self->_peerPaymentAccountData)
  {
    [v5 setPeerPaymentAccountData:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_peerPaymentWebServiceContextData copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_peerPaymentAccountData copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((peerPaymentWebServiceContextData = self->_peerPaymentWebServiceContextData, !(peerPaymentWebServiceContextData | v4[2])) || -[NSData isEqual:](peerPaymentWebServiceContextData, "isEqual:")))
  {
    peerPaymentAccountData = self->_peerPaymentAccountData;
    if (peerPaymentAccountData | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(NPKProtoPeerPaymentWebServiceContextDidChangeRequest *)self setPeerPaymentWebServiceContextData:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(NPKProtoPeerPaymentWebServiceContextDidChangeRequest *)self setPeerPaymentAccountData:?];
    v4 = v5;
  }
}

@end
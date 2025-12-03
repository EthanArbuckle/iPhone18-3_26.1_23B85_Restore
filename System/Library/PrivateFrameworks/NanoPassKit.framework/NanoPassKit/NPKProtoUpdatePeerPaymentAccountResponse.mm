@interface NPKProtoUpdatePeerPaymentAccountResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoUpdatePeerPaymentAccountResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoUpdatePeerPaymentAccountResponse;
  v4 = [(NPKProtoUpdatePeerPaymentAccountResponse *)&v8 description];
  dictionaryRepresentation = [(NPKProtoUpdatePeerPaymentAccountResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  peerPaymentAccountData = self->_peerPaymentAccountData;
  if (peerPaymentAccountData)
  {
    [dictionary setObject:peerPaymentAccountData forKey:@"peerPaymentAccountData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_peerPaymentAccountData)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  peerPaymentAccountData = self->_peerPaymentAccountData;
  if (peerPaymentAccountData)
  {
    [to setPeerPaymentAccountData:peerPaymentAccountData];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_peerPaymentAccountData copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    peerPaymentAccountData = self->_peerPaymentAccountData;
    if (peerPaymentAccountData | equalCopy[1])
    {
      v6 = [(NSData *)peerPaymentAccountData isEqual:?];
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
    [(NPKProtoUpdatePeerPaymentAccountResponse *)self setPeerPaymentAccountData:?];
  }
}

@end
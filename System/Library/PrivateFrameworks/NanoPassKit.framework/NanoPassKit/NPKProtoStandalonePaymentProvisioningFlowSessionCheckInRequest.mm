@interface NPKProtoStandalonePaymentProvisioningFlowSessionCheckInRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoStandalonePaymentProvisioningFlowSessionCheckInRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentProvisioningFlowSessionCheckInRequest;
  v4 = [(NPKProtoStandalonePaymentProvisioningFlowSessionCheckInRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoStandalonePaymentProvisioningFlowSessionCheckInRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  requestHeader = self->_requestHeader;
  if (requestHeader)
  {
    dictionaryRepresentation = [(NPKProtoStandaloneResponseHeader *)requestHeader dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"RequestHeader"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_requestHeader)
  {
    [NPKProtoStandalonePaymentProvisioningFlowSessionCheckInRequest writeTo:];
  }

  v5 = toCopy;
  PBDataWriterWriteSubmessage();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NPKProtoStandaloneResponseHeader *)self->_requestHeader copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    requestHeader = self->_requestHeader;
    if (requestHeader | equalCopy[1])
    {
      v6 = [(NPKProtoStandaloneResponseHeader *)requestHeader isEqual:?];
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
  fromCopy = from;
  requestHeader = self->_requestHeader;
  v6 = fromCopy[1];
  if (requestHeader)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(NPKProtoStandaloneResponseHeader *)requestHeader mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(NPKProtoStandalonePaymentProvisioningFlowSessionCheckInRequest *)self setRequestHeader:?];
  }

  fromCopy = v7;
LABEL_7:
}

@end
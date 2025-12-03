@interface NPKProtoStandalonePaymentProvisioningFlowSessionEndedResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoStandalonePaymentProvisioningFlowSessionEndedResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentProvisioningFlowSessionEndedResponse;
  v4 = [(NPKProtoStandalonePaymentProvisioningFlowSessionEndedResponse *)&v8 description];
  dictionaryRepresentation = [(NPKProtoStandalonePaymentProvisioningFlowSessionEndedResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  responseHeader = self->_responseHeader;
  if (responseHeader)
  {
    dictionaryRepresentation = [(NPKProtoStandaloneResponseHeader *)responseHeader dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"ResponseHeader"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_responseHeader)
  {
    [NPKProtoStandalonePaymentProvisioningFlowSessionEndedResponse writeTo:];
  }

  v5 = toCopy;
  PBDataWriterWriteSubmessage();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NPKProtoStandaloneResponseHeader *)self->_responseHeader copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    responseHeader = self->_responseHeader;
    if (responseHeader | equalCopy[1])
    {
      v6 = [(NPKProtoStandaloneResponseHeader *)responseHeader isEqual:?];
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
  responseHeader = self->_responseHeader;
  v6 = fromCopy[1];
  if (responseHeader)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(NPKProtoStandaloneResponseHeader *)responseHeader mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(NPKProtoStandalonePaymentProvisioningFlowSessionEndedResponse *)self setResponseHeader:?];
  }

  fromCopy = v7;
LABEL_7:
}

@end
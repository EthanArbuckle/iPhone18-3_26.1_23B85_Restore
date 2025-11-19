@interface NPKProtoStandalonePaymentProvisioningFlowSessionCheckInRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoStandalonePaymentProvisioningFlowSessionCheckInRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentProvisioningFlowSessionCheckInRequest;
  v4 = [(NPKProtoStandalonePaymentProvisioningFlowSessionCheckInRequest *)&v8 description];
  v5 = [(NPKProtoStandalonePaymentProvisioningFlowSessionCheckInRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  requestHeader = self->_requestHeader;
  if (requestHeader)
  {
    v5 = [(NPKProtoStandaloneResponseHeader *)requestHeader dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"RequestHeader"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_requestHeader)
  {
    [NPKProtoStandalonePaymentProvisioningFlowSessionCheckInRequest writeTo:];
  }

  v5 = v4;
  PBDataWriterWriteSubmessage();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NPKProtoStandaloneResponseHeader *)self->_requestHeader copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    requestHeader = self->_requestHeader;
    if (requestHeader | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  requestHeader = self->_requestHeader;
  v6 = v4[1];
  if (requestHeader)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(NPKProtoStandaloneResponseHeader *)requestHeader mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(NPKProtoStandalonePaymentProvisioningFlowSessionCheckInRequest *)self setRequestHeader:?];
  }

  v4 = v7;
LABEL_7:
}

@end
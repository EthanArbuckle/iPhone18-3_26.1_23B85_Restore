@interface NPKProtoStandalonePaymentProvisioningFlowHandleIssuerVerificationChannelRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoStandalonePaymentProvisioningFlowHandleIssuerVerificationChannelRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentProvisioningFlowHandleIssuerVerificationChannelRequest;
  v4 = [(NPKProtoStandalonePaymentProvisioningFlowHandleIssuerVerificationChannelRequest *)&v8 description];
  v5 = [(NPKProtoStandalonePaymentProvisioningFlowHandleIssuerVerificationChannelRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  requestHeader = self->_requestHeader;
  if (requestHeader)
  {
    v5 = [(NPKProtoStandaloneRequestHeader *)requestHeader dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"requestHeader"];
  }

  selectedVerificationChannelIdentifier = self->_selectedVerificationChannelIdentifier;
  if (selectedVerificationChannelIdentifier)
  {
    [v3 setObject:selectedVerificationChannelIdentifier forKey:@"selectedVerificationChannelIdentifier"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_requestHeader)
  {
    [NPKProtoStandalonePaymentProvisioningFlowHandleIssuerVerificationChannelRequest writeTo:];
  }

  v5 = v4;
  PBDataWriterWriteSubmessage();
  if (self->_selectedVerificationChannelIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  [v4 setRequestHeader:self->_requestHeader];
  if (self->_selectedVerificationChannelIdentifier)
  {
    [v4 setSelectedVerificationChannelIdentifier:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NPKProtoStandaloneRequestHeader *)self->_requestHeader copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_selectedVerificationChannelIdentifier copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((requestHeader = self->_requestHeader, !(requestHeader | v4[1])) || -[NPKProtoStandaloneRequestHeader isEqual:](requestHeader, "isEqual:")))
  {
    selectedVerificationChannelIdentifier = self->_selectedVerificationChannelIdentifier;
    if (selectedVerificationChannelIdentifier | v4[2])
    {
      v7 = [(NSString *)selectedVerificationChannelIdentifier isEqual:?];
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
  requestHeader = self->_requestHeader;
  v6 = v4[1];
  v7 = v4;
  if (requestHeader)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NPKProtoStandaloneRequestHeader *)requestHeader mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowHandleIssuerVerificationChannelRequest *)self setRequestHeader:?];
  }

  v4 = v7;
LABEL_7:
  if (v4[2])
  {
    [(NPKProtoStandalonePaymentProvisioningFlowHandleIssuerVerificationChannelRequest *)self setSelectedVerificationChannelIdentifier:?];
    v4 = v7;
  }
}

@end
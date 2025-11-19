@interface NPKProtoStandalonePaymentProvisioningFlowChooseProductRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoStandalonePaymentProvisioningFlowChooseProductRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentProvisioningFlowChooseProductRequest;
  v4 = [(NPKProtoStandalonePaymentProvisioningFlowChooseProductRequest *)&v8 description];
  v5 = [(NPKProtoStandalonePaymentProvisioningFlowChooseProductRequest *)self dictionaryRepresentation];
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

  chosenProductIdentifier = self->_chosenProductIdentifier;
  if (chosenProductIdentifier)
  {
    [v3 setObject:chosenProductIdentifier forKey:@"chosenProductIdentifier"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_requestHeader)
  {
    [NPKProtoStandalonePaymentProvisioningFlowChooseProductRequest writeTo:];
  }

  v5 = v4;
  PBDataWriterWriteSubmessage();
  if (self->_chosenProductIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  [v4 setRequestHeader:self->_requestHeader];
  if (self->_chosenProductIdentifier)
  {
    [v4 setChosenProductIdentifier:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NPKProtoStandaloneRequestHeader *)self->_requestHeader copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_chosenProductIdentifier copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((requestHeader = self->_requestHeader, !(requestHeader | v4[2])) || -[NPKProtoStandaloneRequestHeader isEqual:](requestHeader, "isEqual:")))
  {
    chosenProductIdentifier = self->_chosenProductIdentifier;
    if (chosenProductIdentifier | v4[1])
    {
      v7 = [(NSString *)chosenProductIdentifier isEqual:?];
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
  v6 = v4[2];
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

    [(NPKProtoStandalonePaymentProvisioningFlowChooseProductRequest *)self setRequestHeader:?];
  }

  v4 = v7;
LABEL_7:
  if (v4[1])
  {
    [(NPKProtoStandalonePaymentProvisioningFlowChooseProductRequest *)self setChosenProductIdentifier:?];
    v4 = v7;
  }
}

@end
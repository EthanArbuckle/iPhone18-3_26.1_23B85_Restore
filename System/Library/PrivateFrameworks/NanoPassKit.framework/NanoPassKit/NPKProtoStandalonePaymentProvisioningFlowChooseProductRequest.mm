@interface NPKProtoStandalonePaymentProvisioningFlowChooseProductRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoStandalonePaymentProvisioningFlowChooseProductRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentProvisioningFlowChooseProductRequest;
  v4 = [(NPKProtoStandalonePaymentProvisioningFlowChooseProductRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoStandalonePaymentProvisioningFlowChooseProductRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  requestHeader = self->_requestHeader;
  if (requestHeader)
  {
    dictionaryRepresentation = [(NPKProtoStandaloneRequestHeader *)requestHeader dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"requestHeader"];
  }

  chosenProductIdentifier = self->_chosenProductIdentifier;
  if (chosenProductIdentifier)
  {
    [dictionary setObject:chosenProductIdentifier forKey:@"chosenProductIdentifier"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_requestHeader)
  {
    [NPKProtoStandalonePaymentProvisioningFlowChooseProductRequest writeTo:];
  }

  v5 = toCopy;
  PBDataWriterWriteSubmessage();
  if (self->_chosenProductIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setRequestHeader:self->_requestHeader];
  if (self->_chosenProductIdentifier)
  {
    [toCopy setChosenProductIdentifier:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NPKProtoStandaloneRequestHeader *)self->_requestHeader copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_chosenProductIdentifier copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((requestHeader = self->_requestHeader, !(requestHeader | equalCopy[2])) || -[NPKProtoStandaloneRequestHeader isEqual:](requestHeader, "isEqual:")))
  {
    chosenProductIdentifier = self->_chosenProductIdentifier;
    if (chosenProductIdentifier | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  requestHeader = self->_requestHeader;
  v6 = fromCopy[2];
  v7 = fromCopy;
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

  fromCopy = v7;
LABEL_7:
  if (fromCopy[1])
  {
    [(NPKProtoStandalonePaymentProvisioningFlowChooseProductRequest *)self setChosenProductIdentifier:?];
    fromCopy = v7;
  }
}

@end
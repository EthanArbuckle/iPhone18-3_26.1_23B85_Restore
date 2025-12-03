@interface NPKProtoStandalonePaymentProvisioningFlowChooseFlowRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoStandalonePaymentProvisioningFlowChooseFlowRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentProvisioningFlowChooseFlowRequest;
  v4 = [(NPKProtoStandalonePaymentProvisioningFlowChooseFlowRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoStandalonePaymentProvisioningFlowChooseFlowRequest *)self dictionaryRepresentation];
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

  chosenFlowPickerItemIdentifier = self->_chosenFlowPickerItemIdentifier;
  if (chosenFlowPickerItemIdentifier)
  {
    [dictionary setObject:chosenFlowPickerItemIdentifier forKey:@"chosenFlowPickerItemIdentifier"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_requestHeader)
  {
    [NPKProtoStandalonePaymentProvisioningFlowChooseFlowRequest writeTo:];
  }

  v5 = toCopy;
  PBDataWriterWriteSubmessage();
  if (self->_chosenFlowPickerItemIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setRequestHeader:self->_requestHeader];
  if (self->_chosenFlowPickerItemIdentifier)
  {
    [toCopy setChosenFlowPickerItemIdentifier:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NPKProtoStandaloneRequestHeader *)self->_requestHeader copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_chosenFlowPickerItemIdentifier copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((requestHeader = self->_requestHeader, !(requestHeader | equalCopy[2])) || -[NPKProtoStandaloneRequestHeader isEqual:](requestHeader, "isEqual:")))
  {
    chosenFlowPickerItemIdentifier = self->_chosenFlowPickerItemIdentifier;
    if (chosenFlowPickerItemIdentifier | equalCopy[1])
    {
      v7 = [(NSString *)chosenFlowPickerItemIdentifier isEqual:?];
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

    [(NPKProtoStandalonePaymentProvisioningFlowChooseFlowRequest *)self setRequestHeader:?];
  }

  fromCopy = v7;
LABEL_7:
  if (fromCopy[1])
  {
    [(NPKProtoStandalonePaymentProvisioningFlowChooseFlowRequest *)self setChosenFlowPickerItemIdentifier:?];
    fromCopy = v7;
  }
}

@end
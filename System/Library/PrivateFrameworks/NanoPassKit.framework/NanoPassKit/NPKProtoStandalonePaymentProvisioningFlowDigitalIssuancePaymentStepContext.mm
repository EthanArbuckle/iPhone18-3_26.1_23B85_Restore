@interface NPKProtoStandalonePaymentProvisioningFlowDigitalIssuancePaymentStepContext
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoStandalonePaymentProvisioningFlowDigitalIssuancePaymentStepContext

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentProvisioningFlowDigitalIssuancePaymentStepContext;
  v4 = [(NPKProtoStandalonePaymentProvisioningFlowDigitalIssuancePaymentStepContext *)&v8 description];
  dictionaryRepresentation = [(NPKProtoStandalonePaymentProvisioningFlowDigitalIssuancePaymentStepContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  product = self->_product;
  if (product)
  {
    dictionaryRepresentation = [(NPKProtoStandalonePaymentSetupProduct *)product dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"product"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (self->_product)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  product = self->_product;
  if (product)
  {
    [to setProduct:product];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NPKProtoStandalonePaymentSetupProduct *)self->_product copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    product = self->_product;
    if (product | equalCopy[1])
    {
      v6 = [(NPKProtoStandalonePaymentSetupProduct *)product isEqual:?];
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
  product = self->_product;
  v6 = fromCopy[1];
  if (product)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(NPKProtoStandalonePaymentSetupProduct *)product mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(NPKProtoStandalonePaymentProvisioningFlowDigitalIssuancePaymentStepContext *)self setProduct:?];
  }

  fromCopy = v7;
LABEL_7:
}

@end
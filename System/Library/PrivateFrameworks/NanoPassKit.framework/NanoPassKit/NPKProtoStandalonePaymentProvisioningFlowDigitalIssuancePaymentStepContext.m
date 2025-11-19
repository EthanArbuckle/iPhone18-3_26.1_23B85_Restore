@interface NPKProtoStandalonePaymentProvisioningFlowDigitalIssuancePaymentStepContext
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoStandalonePaymentProvisioningFlowDigitalIssuancePaymentStepContext

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentProvisioningFlowDigitalIssuancePaymentStepContext;
  v4 = [(NPKProtoStandalonePaymentProvisioningFlowDigitalIssuancePaymentStepContext *)&v8 description];
  v5 = [(NPKProtoStandalonePaymentProvisioningFlowDigitalIssuancePaymentStepContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  product = self->_product;
  if (product)
  {
    v5 = [(NPKProtoStandalonePaymentSetupProduct *)product dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"product"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (self->_product)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  product = self->_product;
  if (product)
  {
    [a3 setProduct:product];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NPKProtoStandalonePaymentSetupProduct *)self->_product copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    product = self->_product;
    if (product | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  product = self->_product;
  v6 = v4[1];
  if (product)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(NPKProtoStandalonePaymentSetupProduct *)product mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(NPKProtoStandalonePaymentProvisioningFlowDigitalIssuancePaymentStepContext *)self setProduct:?];
  }

  v4 = v7;
LABEL_7:
}

@end
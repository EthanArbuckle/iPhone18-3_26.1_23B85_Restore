@interface NPKProtoStandalonePaymentProvisioningFlowDigitalIssuanceAmountStepContext
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoStandalonePaymentProvisioningFlowDigitalIssuanceAmountStepContext

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentProvisioningFlowDigitalIssuanceAmountStepContext;
  v4 = [(NPKProtoStandalonePaymentProvisioningFlowDigitalIssuanceAmountStepContext *)&v8 description];
  v5 = [(NPKProtoStandalonePaymentProvisioningFlowDigitalIssuanceAmountStepContext *)self dictionaryRepresentation];
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

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_allowsReaderModeEntry];
    [v3 setObject:v6 forKey:@"allowsReaderModeEntry"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_product)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (*&self->_has)
  {
    allowsReaderModeEntry = self->_allowsReaderModeEntry;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_product)
  {
    v5 = v4;
    [v4 setProduct:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[16] = self->_allowsReaderModeEntry;
    v4[20] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NPKProtoStandalonePaymentSetupProduct *)self->_product copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_allowsReaderModeEntry;
    *(v5 + 20) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  product = self->_product;
  if (product | *(v4 + 1))
  {
    if (![(NPKProtoStandalonePaymentSetupProduct *)product isEqual:?])
    {
      goto LABEL_6;
    }
  }

  v6 = (*(v4 + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0)
    {
LABEL_6:
      v6 = 0;
      goto LABEL_7;
    }

    if (self->_allowsReaderModeEntry)
    {
      if ((*(v4 + 16) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if (*(v4 + 16))
    {
      goto LABEL_6;
    }

    v6 = 1;
  }

LABEL_7:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NPKProtoStandalonePaymentSetupProduct *)self->_product hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_allowsReaderModeEntry;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  product = self->_product;
  v6 = *(v4 + 1);
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
    [(NPKProtoStandalonePaymentProvisioningFlowDigitalIssuanceAmountStepContext *)self setProduct:?];
  }

  v4 = v7;
LABEL_7:
  if (*(v4 + 20))
  {
    self->_allowsReaderModeEntry = *(v4 + 16);
    *&self->_has |= 1u;
  }
}

@end
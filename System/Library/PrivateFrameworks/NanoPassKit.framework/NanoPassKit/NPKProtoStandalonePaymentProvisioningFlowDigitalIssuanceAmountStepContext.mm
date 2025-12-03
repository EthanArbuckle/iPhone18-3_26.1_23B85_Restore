@interface NPKProtoStandalonePaymentProvisioningFlowDigitalIssuanceAmountStepContext
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoStandalonePaymentProvisioningFlowDigitalIssuanceAmountStepContext

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentProvisioningFlowDigitalIssuanceAmountStepContext;
  v4 = [(NPKProtoStandalonePaymentProvisioningFlowDigitalIssuanceAmountStepContext *)&v8 description];
  dictionaryRepresentation = [(NPKProtoStandalonePaymentProvisioningFlowDigitalIssuanceAmountStepContext *)self dictionaryRepresentation];
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

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_allowsReaderModeEntry];
    [dictionary setObject:v6 forKey:@"allowsReaderModeEntry"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_product)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    allowsReaderModeEntry = self->_allowsReaderModeEntry;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_product)
  {
    v5 = toCopy;
    [toCopy setProduct:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[16] = self->_allowsReaderModeEntry;
    toCopy[20] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NPKProtoStandalonePaymentSetupProduct *)self->_product copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_allowsReaderModeEntry;
    *(v5 + 20) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  product = self->_product;
  if (product | *(equalCopy + 1))
  {
    if (![(NPKProtoStandalonePaymentSetupProduct *)product isEqual:?])
    {
      goto LABEL_6;
    }
  }

  v6 = (*(equalCopy + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0)
    {
LABEL_6:
      v6 = 0;
      goto LABEL_7;
    }

    if (self->_allowsReaderModeEntry)
    {
      if ((*(equalCopy + 16) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if (*(equalCopy + 16))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  product = self->_product;
  v6 = *(fromCopy + 1);
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
    [(NPKProtoStandalonePaymentProvisioningFlowDigitalIssuanceAmountStepContext *)self setProduct:?];
  }

  fromCopy = v7;
LABEL_7:
  if (*(fromCopy + 20))
  {
    self->_allowsReaderModeEntry = *(fromCopy + 16);
    *&self->_has |= 1u;
  }
}

@end
@interface NPKProtoStandalonePaymentProvisioningFlowTermsAndConditionsStepContext
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoStandalonePaymentProvisioningFlowTermsAndConditionsStepContext

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentProvisioningFlowTermsAndConditionsStepContext;
  v4 = [(NPKProtoStandalonePaymentProvisioningFlowTermsAndConditionsStepContext *)&v8 description];
  dictionaryRepresentation = [(NPKProtoStandalonePaymentProvisioningFlowTermsAndConditionsStepContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  termsURL = self->_termsURL;
  if (termsURL)
  {
    [dictionary setObject:termsURL forKey:@"termsURL"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_allowNonSecureHTTP];
    [v4 setObject:v6 forKey:@"allowNonSecureHTTP"];
  }

  product = self->_product;
  if (product)
  {
    dictionaryRepresentation = [(NPKProtoStandalonePaymentSetupProduct *)product dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"product"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_termsURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    allowNonSecureHTTP = self->_allowNonSecureHTTP;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

  if (self->_product)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_termsURL)
  {
    [toCopy setTermsURL:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[24] = self->_allowNonSecureHTTP;
    toCopy[28] |= 1u;
  }

  if (self->_product)
  {
    [v5 setProduct:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_termsURL copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_allowNonSecureHTTP;
    *(v5 + 28) |= 1u;
  }

  v8 = [(NPKProtoStandalonePaymentSetupProduct *)self->_product copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  termsURL = self->_termsURL;
  if (termsURL | *(equalCopy + 2))
  {
    if (![(NSString *)termsURL isEqual:?])
    {
      goto LABEL_9;
    }
  }

  v6 = *(equalCopy + 28);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  if ((*(equalCopy + 28) & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = *(equalCopy + 24);
  if (!self->_allowNonSecureHTTP)
  {
LABEL_5:
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  if ((*(equalCopy + 24) & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  product = self->_product;
  if (product | *(equalCopy + 1))
  {
    v8 = [(NPKProtoStandalonePaymentSetupProduct *)product isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_10:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_termsURL hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_allowNonSecureHTTP;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(NPKProtoStandalonePaymentSetupProduct *)self->_product hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(NPKProtoStandalonePaymentProvisioningFlowTermsAndConditionsStepContext *)self setTermsURL:?];
    fromCopy = v7;
  }

  if (fromCopy[28])
  {
    self->_allowNonSecureHTTP = fromCopy[24];
    *&self->_has |= 1u;
  }

  product = self->_product;
  v6 = *(fromCopy + 1);
  if (product)
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    [(NPKProtoStandalonePaymentSetupProduct *)product mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowTermsAndConditionsStepContext *)self setProduct:?];
  }

  fromCopy = v7;
LABEL_11:
}

@end
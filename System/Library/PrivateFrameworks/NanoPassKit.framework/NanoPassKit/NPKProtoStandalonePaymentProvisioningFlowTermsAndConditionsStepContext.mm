@interface NPKProtoStandalonePaymentProvisioningFlowTermsAndConditionsStepContext
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoStandalonePaymentProvisioningFlowTermsAndConditionsStepContext

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentProvisioningFlowTermsAndConditionsStepContext;
  v4 = [(NPKProtoStandalonePaymentProvisioningFlowTermsAndConditionsStepContext *)&v8 description];
  v5 = [(NPKProtoStandalonePaymentProvisioningFlowTermsAndConditionsStepContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  termsURL = self->_termsURL;
  if (termsURL)
  {
    [v3 setObject:termsURL forKey:@"termsURL"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_allowNonSecureHTTP];
    [v4 setObject:v6 forKey:@"allowNonSecureHTTP"];
  }

  product = self->_product;
  if (product)
  {
    v8 = [(NPKProtoStandalonePaymentSetupProduct *)product dictionaryRepresentation];
    [v4 setObject:v8 forKey:@"product"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_termsURL)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    allowNonSecureHTTP = self->_allowNonSecureHTTP;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

  if (self->_product)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_termsURL)
  {
    [v4 setTermsURL:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[24] = self->_allowNonSecureHTTP;
    v4[28] |= 1u;
  }

  if (self->_product)
  {
    [v5 setProduct:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_termsURL copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_allowNonSecureHTTP;
    *(v5 + 28) |= 1u;
  }

  v8 = [(NPKProtoStandalonePaymentSetupProduct *)self->_product copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  termsURL = self->_termsURL;
  if (termsURL | *(v4 + 2))
  {
    if (![(NSString *)termsURL isEqual:?])
    {
      goto LABEL_9;
    }
  }

  v6 = *(v4 + 28);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  if ((*(v4 + 28) & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = *(v4 + 24);
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

  if ((*(v4 + 24) & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  product = self->_product;
  if (product | *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*(v4 + 2))
  {
    [(NPKProtoStandalonePaymentProvisioningFlowTermsAndConditionsStepContext *)self setTermsURL:?];
    v4 = v7;
  }

  if (v4[28])
  {
    self->_allowNonSecureHTTP = v4[24];
    *&self->_has |= 1u;
  }

  product = self->_product;
  v6 = *(v4 + 1);
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

  v4 = v7;
LABEL_11:
}

@end
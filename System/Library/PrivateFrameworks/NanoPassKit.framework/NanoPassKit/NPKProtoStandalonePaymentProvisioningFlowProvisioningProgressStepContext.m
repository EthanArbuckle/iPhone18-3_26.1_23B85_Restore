@interface NPKProtoStandalonePaymentProvisioningFlowProvisioningProgressStepContext
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoStandalonePaymentProvisioningFlowProvisioningProgressStepContext

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentProvisioningFlowProvisioningProgressStepContext;
  v4 = [(NPKProtoStandalonePaymentProvisioningFlowProvisioningProgressStepContext *)&v8 description];
  v5 = [(NPKProtoStandalonePaymentProvisioningFlowProvisioningProgressStepContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  localizedProgressDescription = self->_localizedProgressDescription;
  if (localizedProgressDescription)
  {
    [v3 setObject:localizedProgressDescription forKey:@"localizedProgressDescription"];
  }

  product = self->_product;
  if (product)
  {
    v7 = [(NPKProtoStandalonePaymentSetupProduct *)product dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"product"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_localizedProgressDescription)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_product)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_localizedProgressDescription)
  {
    [v4 setLocalizedProgressDescription:?];
    v4 = v5;
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
  v6 = [(NSString *)self->_localizedProgressDescription copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NPKProtoStandalonePaymentSetupProduct *)self->_product copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((localizedProgressDescription = self->_localizedProgressDescription, !(localizedProgressDescription | v4[1])) || -[NSString isEqual:](localizedProgressDescription, "isEqual:")))
  {
    product = self->_product;
    if (product | v4[2])
    {
      v7 = [(NPKProtoStandalonePaymentSetupProduct *)product isEqual:?];
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
  v7 = v4;
  if (v4[1])
  {
    [(NPKProtoStandalonePaymentProvisioningFlowProvisioningProgressStepContext *)self setLocalizedProgressDescription:?];
    v4 = v7;
  }

  product = self->_product;
  v6 = v4[2];
  if (product)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(NPKProtoStandalonePaymentSetupProduct *)product mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowProvisioningProgressStepContext *)self setProduct:?];
  }

  v4 = v7;
LABEL_9:
}

@end
@interface NPKProtoStandalonePaymentProvisioningFlowProvisioningProgressStepContext
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoStandalonePaymentProvisioningFlowProvisioningProgressStepContext

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentProvisioningFlowProvisioningProgressStepContext;
  v4 = [(NPKProtoStandalonePaymentProvisioningFlowProvisioningProgressStepContext *)&v8 description];
  dictionaryRepresentation = [(NPKProtoStandalonePaymentProvisioningFlowProvisioningProgressStepContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  localizedProgressDescription = self->_localizedProgressDescription;
  if (localizedProgressDescription)
  {
    [dictionary setObject:localizedProgressDescription forKey:@"localizedProgressDescription"];
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
  v5 = toCopy;
  if (self->_localizedProgressDescription)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_product)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_localizedProgressDescription)
  {
    [toCopy setLocalizedProgressDescription:?];
    toCopy = v5;
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
  v6 = [(NSString *)self->_localizedProgressDescription copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NPKProtoStandalonePaymentSetupProduct *)self->_product copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((localizedProgressDescription = self->_localizedProgressDescription, !(localizedProgressDescription | equalCopy[1])) || -[NSString isEqual:](localizedProgressDescription, "isEqual:")))
  {
    product = self->_product;
    if (product | equalCopy[2])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[1])
  {
    [(NPKProtoStandalonePaymentProvisioningFlowProvisioningProgressStepContext *)self setLocalizedProgressDescription:?];
    fromCopy = v7;
  }

  product = self->_product;
  v6 = fromCopy[2];
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

  fromCopy = v7;
LABEL_9:
}

@end
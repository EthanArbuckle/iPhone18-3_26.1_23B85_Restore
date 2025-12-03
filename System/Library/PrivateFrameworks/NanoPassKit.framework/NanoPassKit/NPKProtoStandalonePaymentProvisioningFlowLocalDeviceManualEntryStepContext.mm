@interface NPKProtoStandalonePaymentProvisioningFlowLocalDeviceManualEntryStepContext
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoStandalonePaymentProvisioningFlowLocalDeviceManualEntryStepContext

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentProvisioningFlowLocalDeviceManualEntryStepContext;
  v4 = [(NPKProtoStandalonePaymentProvisioningFlowLocalDeviceManualEntryStepContext *)&v8 description];
  dictionaryRepresentation = [(NPKProtoStandalonePaymentProvisioningFlowLocalDeviceManualEntryStepContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  secondaryManualEntryStepContext = self->_secondaryManualEntryStepContext;
  if (secondaryManualEntryStepContext)
  {
    dictionaryRepresentation = [(NPKProtoStandalonePaymentProvisioningFlowSecondaryManualEntryStepContext *)secondaryManualEntryStepContext dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"secondaryManualEntryStepContext"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_secondaryManualEntryStepContext)
  {
    [NPKProtoStandalonePaymentProvisioningFlowLocalDeviceManualEntryStepContext writeTo:];
  }

  v5 = toCopy;
  PBDataWriterWriteSubmessage();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NPKProtoStandalonePaymentProvisioningFlowSecondaryManualEntryStepContext *)self->_secondaryManualEntryStepContext copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    secondaryManualEntryStepContext = self->_secondaryManualEntryStepContext;
    if (secondaryManualEntryStepContext | equalCopy[1])
    {
      v6 = [(NPKProtoStandalonePaymentProvisioningFlowSecondaryManualEntryStepContext *)secondaryManualEntryStepContext isEqual:?];
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
  secondaryManualEntryStepContext = self->_secondaryManualEntryStepContext;
  v6 = fromCopy[1];
  if (secondaryManualEntryStepContext)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(NPKProtoStandalonePaymentProvisioningFlowSecondaryManualEntryStepContext *)secondaryManualEntryStepContext mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(NPKProtoStandalonePaymentProvisioningFlowLocalDeviceManualEntryStepContext *)self setSecondaryManualEntryStepContext:?];
  }

  fromCopy = v7;
LABEL_7:
}

@end
@interface NPKProtoStandalonePaymentProvisioningFlowLocalDeviceManualEntryStepContext
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoStandalonePaymentProvisioningFlowLocalDeviceManualEntryStepContext

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentProvisioningFlowLocalDeviceManualEntryStepContext;
  v4 = [(NPKProtoStandalonePaymentProvisioningFlowLocalDeviceManualEntryStepContext *)&v8 description];
  v5 = [(NPKProtoStandalonePaymentProvisioningFlowLocalDeviceManualEntryStepContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  secondaryManualEntryStepContext = self->_secondaryManualEntryStepContext;
  if (secondaryManualEntryStepContext)
  {
    v5 = [(NPKProtoStandalonePaymentProvisioningFlowSecondaryManualEntryStepContext *)secondaryManualEntryStepContext dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"secondaryManualEntryStepContext"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_secondaryManualEntryStepContext)
  {
    [NPKProtoStandalonePaymentProvisioningFlowLocalDeviceManualEntryStepContext writeTo:];
  }

  v5 = v4;
  PBDataWriterWriteSubmessage();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NPKProtoStandalonePaymentProvisioningFlowSecondaryManualEntryStepContext *)self->_secondaryManualEntryStepContext copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    secondaryManualEntryStepContext = self->_secondaryManualEntryStepContext;
    if (secondaryManualEntryStepContext | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  secondaryManualEntryStepContext = self->_secondaryManualEntryStepContext;
  v6 = v4[1];
  if (secondaryManualEntryStepContext)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(NPKProtoStandalonePaymentProvisioningFlowSecondaryManualEntryStepContext *)secondaryManualEntryStepContext mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(NPKProtoStandalonePaymentProvisioningFlowLocalDeviceManualEntryStepContext *)self setSecondaryManualEntryStepContext:?];
  }

  v4 = v7;
LABEL_7:
}

@end
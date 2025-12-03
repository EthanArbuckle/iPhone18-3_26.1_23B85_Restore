@interface NPKPaymentProvisioningFlowStepContext
- (NPKPaymentProvisioningFlowStepContext)initWithCoder:(id)coder;
- (NPKPaymentProvisioningFlowStepContext)initWithRequestContext:(id)context;
- (id)_baseFlowStepDescription;
- (id)appleBalanceAccountDetailsStepContext;
- (id)chooseCredentialsStepContext;
- (id)chooseEMoneyProductStepContext;
- (id)chooseFlowStepContext;
- (id)chooseProductStepContext;
- (id)chooseTransitProductStepContext;
- (id)digitalIssuanceAmountStepContext;
- (id)digitalIssuancePaymentStepContext;
- (id)getIssuerApplicationAddRequestStepContext;
- (id)localDeviceManualEntryProgressStepContext;
- (id)localDeviceManualEntryStepContext;
- (id)manualEntryStepContext;
- (id)moreInformationStepContext;
- (id)passcodeUpgradeStepContext;
- (id)preconditionsStepContext;
- (id)productDisambiguationStepContext;
- (id)provisioningProgressStepContext;
- (id)provisioningResultStepContext;
- (id)readerModeEntryStepContext;
- (id)readerModeIngestionStepContext;
- (id)secondaryManualEntryStepContext;
- (id)termsAndConditionsStepContext;
- (id)verificationChannelsStepContext;
- (id)verificationCodeStepContext;
- (id)verificationFieldsStepContext;
- (id)welcomeStepContext;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NPKPaymentProvisioningFlowStepContext

- (NPKPaymentProvisioningFlowStepContext)initWithRequestContext:(id)context
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = NPKPaymentProvisioningFlowStepContext;
  v6 = [(NPKPaymentProvisioningFlowStepContext *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requestContext, context);
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    stepIdentifier = v7->_stepIdentifier;
    v7->_stepIdentifier = uUIDString;
  }

  return v7;
}

- (NPKPaymentProvisioningFlowStepContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = NPKPaymentProvisioningFlowStepContext;
  v5 = [(NPKPaymentProvisioningFlowStepContext *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestContext"];
    requestContext = v5->_requestContext;
    v5->_requestContext = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stepIdentifier"];
    stepIdentifier = v5->_stepIdentifier;
    v5->_stepIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  requestContext = self->_requestContext;
  coderCopy = coder;
  [coderCopy encodeObject:requestContext forKey:@"requestContext"];
  [coderCopy encodeObject:self->_stepIdentifier forKey:@"stepIdentifier"];
}

- (id)_baseFlowStepDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  stepIdentifier = [(NPKPaymentProvisioningFlowStepContext *)self stepIdentifier];
  backStepIdentifier = [(NPKPaymentProvisioningFlowStepContext *)self backStepIdentifier];
  v7 = [v3 stringWithFormat:@"%@: %p identifier %@ back step identifier %@", v4, self, stepIdentifier, backStepIdentifier];

  return v7;
}

- (id)preconditionsStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)welcomeStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)chooseFlowStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)chooseProductStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)chooseCredentialsStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)digitalIssuanceAmountStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)digitalIssuancePaymentStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)readerModeEntryStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)readerModeIngestionStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)manualEntryStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)secondaryManualEntryStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)localDeviceManualEntryStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)localDeviceManualEntryProgressStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)productDisambiguationStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)passcodeUpgradeStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)termsAndConditionsStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)provisioningProgressStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)moreInformationStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)provisioningResultStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)verificationChannelsStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)verificationFieldsStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)verificationCodeStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)getIssuerApplicationAddRequestStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)chooseTransitProductStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)chooseEMoneyProductStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)appleBalanceAccountDetailsStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end
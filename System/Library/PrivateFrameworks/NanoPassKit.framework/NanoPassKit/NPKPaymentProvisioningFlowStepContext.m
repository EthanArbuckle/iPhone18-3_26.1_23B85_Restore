@interface NPKPaymentProvisioningFlowStepContext
- (NPKPaymentProvisioningFlowStepContext)initWithCoder:(id)a3;
- (NPKPaymentProvisioningFlowStepContext)initWithRequestContext:(id)a3;
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
- (void)encodeWithCoder:(id)a3;
@end

@implementation NPKPaymentProvisioningFlowStepContext

- (NPKPaymentProvisioningFlowStepContext)initWithRequestContext:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = NPKPaymentProvisioningFlowStepContext;
  v6 = [(NPKPaymentProvisioningFlowStepContext *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requestContext, a3);
    v8 = [MEMORY[0x277CCAD78] UUID];
    v9 = [v8 UUIDString];
    stepIdentifier = v7->_stepIdentifier;
    v7->_stepIdentifier = v9;
  }

  return v7;
}

- (NPKPaymentProvisioningFlowStepContext)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NPKPaymentProvisioningFlowStepContext;
  v5 = [(NPKPaymentProvisioningFlowStepContext *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestContext"];
    requestContext = v5->_requestContext;
    v5->_requestContext = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stepIdentifier"];
    stepIdentifier = v5->_stepIdentifier;
    v5->_stepIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  requestContext = self->_requestContext;
  v5 = a3;
  [v5 encodeObject:requestContext forKey:@"requestContext"];
  [v5 encodeObject:self->_stepIdentifier forKey:@"stepIdentifier"];
}

- (id)_baseFlowStepDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(NPKPaymentProvisioningFlowStepContext *)self stepIdentifier];
  v6 = [(NPKPaymentProvisioningFlowStepContext *)self backStepIdentifier];
  v7 = [v3 stringWithFormat:@"%@: %p identifier %@ back step identifier %@", v4, self, v5, v6];

  return v7;
}

- (id)preconditionsStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)welcomeStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)chooseFlowStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)chooseProductStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)chooseCredentialsStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)digitalIssuanceAmountStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)digitalIssuancePaymentStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)readerModeEntryStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)readerModeIngestionStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)manualEntryStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)secondaryManualEntryStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)localDeviceManualEntryStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)localDeviceManualEntryProgressStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)productDisambiguationStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)passcodeUpgradeStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)termsAndConditionsStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)provisioningProgressStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)moreInformationStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)provisioningResultStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)verificationChannelsStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)verificationFieldsStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)verificationCodeStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)getIssuerApplicationAddRequestStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)chooseTransitProductStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)chooseEMoneyProductStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)appleBalanceAccountDetailsStepContext
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end
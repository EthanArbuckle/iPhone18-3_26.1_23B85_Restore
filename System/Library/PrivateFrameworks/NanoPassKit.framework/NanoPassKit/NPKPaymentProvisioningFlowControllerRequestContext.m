@interface NPKPaymentProvisioningFlowControllerRequestContext
- (NPKPaymentProvisioningFlowControllerRequestContext)initWithCoder:(id)a3;
- (NPKPaymentProvisioningFlowControllerRequestContext)initWithRequestHeader:(id)a3;
@end

@implementation NPKPaymentProvisioningFlowControllerRequestContext

- (NPKPaymentProvisioningFlowControllerRequestContext)initWithRequestHeader:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = NPKPaymentProvisioningFlowControllerRequestContext;
  v6 = [(NPKPaymentProvisioningFlowControllerRequestContext *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requestHeader, a3);
    v8 = [v5 stepIdentifier];
    currentStepIdentifier = v7->_currentStepIdentifier;
    v7->_currentStepIdentifier = v8;
  }

  return v7;
}

- (NPKPaymentProvisioningFlowControllerRequestContext)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NPKPaymentProvisioningFlowControllerRequestContext;
  v5 = [(NPKPaymentProvisioningFlowControllerRequestContext *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"currentStepIdentifier"];
    currentStepIdentifier = v5->_currentStepIdentifier;
    v5->_currentStepIdentifier = v6;
  }

  return v5;
}

@end
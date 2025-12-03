@interface NPKPaymentProvisioningFlowControllerRequestContext
- (NPKPaymentProvisioningFlowControllerRequestContext)initWithCoder:(id)coder;
- (NPKPaymentProvisioningFlowControllerRequestContext)initWithRequestHeader:(id)header;
@end

@implementation NPKPaymentProvisioningFlowControllerRequestContext

- (NPKPaymentProvisioningFlowControllerRequestContext)initWithRequestHeader:(id)header
{
  headerCopy = header;
  v11.receiver = self;
  v11.super_class = NPKPaymentProvisioningFlowControllerRequestContext;
  v6 = [(NPKPaymentProvisioningFlowControllerRequestContext *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requestHeader, header);
    stepIdentifier = [headerCopy stepIdentifier];
    currentStepIdentifier = v7->_currentStepIdentifier;
    v7->_currentStepIdentifier = stepIdentifier;
  }

  return v7;
}

- (NPKPaymentProvisioningFlowControllerRequestContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = NPKPaymentProvisioningFlowControllerRequestContext;
  v5 = [(NPKPaymentProvisioningFlowControllerRequestContext *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"currentStepIdentifier"];
    currentStepIdentifier = v5->_currentStepIdentifier;
    v5->_currentStepIdentifier = v6;
  }

  return v5;
}

@end
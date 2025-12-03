@interface NPKPaymentProvisioningFlowControllerMoreInformationStepContext
- (NPKPaymentProvisioningFlowControllerMoreInformationStepContext)initWithRequestContext:(id)context;
- (id)description;
@end

@implementation NPKPaymentProvisioningFlowControllerMoreInformationStepContext

- (NPKPaymentProvisioningFlowControllerMoreInformationStepContext)initWithRequestContext:(id)context
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerMoreInformationStepContext;
  return [(NPKPaymentProvisioningFlowStepContext *)&v4 initWithRequestContext:context];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  _baseFlowStepDescription = [(NPKPaymentProvisioningFlowStepContext *)self _baseFlowStepDescription];
  moreInfoItems = [(NPKPaymentProvisioningFlowControllerMoreInformationStepContext *)self moreInfoItems];
  paymentPass = [(NPKPaymentProvisioningFlowControllerMoreInformationStepContext *)self paymentPass];
  uniqueID = [paymentPass uniqueID];
  v8 = [v3 stringWithFormat:@"<%@ pass unique ID %@ more info items %@>", _baseFlowStepDescription, moreInfoItems, uniqueID];

  return v8;
}

@end
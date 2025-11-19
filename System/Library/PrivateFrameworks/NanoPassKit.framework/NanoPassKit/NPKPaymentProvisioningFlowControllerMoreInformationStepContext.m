@interface NPKPaymentProvisioningFlowControllerMoreInformationStepContext
- (NPKPaymentProvisioningFlowControllerMoreInformationStepContext)initWithRequestContext:(id)a3;
- (id)description;
@end

@implementation NPKPaymentProvisioningFlowControllerMoreInformationStepContext

- (NPKPaymentProvisioningFlowControllerMoreInformationStepContext)initWithRequestContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerMoreInformationStepContext;
  return [(NPKPaymentProvisioningFlowStepContext *)&v4 initWithRequestContext:a3];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NPKPaymentProvisioningFlowStepContext *)self _baseFlowStepDescription];
  v5 = [(NPKPaymentProvisioningFlowControllerMoreInformationStepContext *)self moreInfoItems];
  v6 = [(NPKPaymentProvisioningFlowControllerMoreInformationStepContext *)self paymentPass];
  v7 = [v6 uniqueID];
  v8 = [v3 stringWithFormat:@"<%@ pass unique ID %@ more info items %@>", v4, v5, v7];

  return v8;
}

@end
@interface NPKPaymentProvisioningFlowControllerAppleBalanceAccountDetailsStepContext
- (NPKPaymentProvisioningFlowControllerAppleBalanceAccountDetailsStepContext)initWithRequestContext:(id)context;
- (id)description;
@end

@implementation NPKPaymentProvisioningFlowControllerAppleBalanceAccountDetailsStepContext

- (NPKPaymentProvisioningFlowControllerAppleBalanceAccountDetailsStepContext)initWithRequestContext:(id)context
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerAppleBalanceAccountDetailsStepContext;
  return [(NPKPaymentProvisioningFlowStepContext *)&v4 initWithRequestContext:context];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  _baseFlowStepDescription = [(NPKPaymentProvisioningFlowStepContext *)self _baseFlowStepDescription];
  appleID = [(NPKPaymentProvisioningFlowControllerAppleBalanceAccountDetailsStepContext *)self appleID];
  balance = [(NPKPaymentProvisioningFlowControllerAppleBalanceAccountDetailsStepContext *)self balance];
  v7 = [v3 stringWithFormat:@"<%@ appleID %@, balance %@>", _baseFlowStepDescription, appleID, balance];

  return v7;
}

@end
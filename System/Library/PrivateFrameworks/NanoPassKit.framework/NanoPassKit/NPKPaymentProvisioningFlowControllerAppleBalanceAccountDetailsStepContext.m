@interface NPKPaymentProvisioningFlowControllerAppleBalanceAccountDetailsStepContext
- (NPKPaymentProvisioningFlowControllerAppleBalanceAccountDetailsStepContext)initWithRequestContext:(id)a3;
- (id)description;
@end

@implementation NPKPaymentProvisioningFlowControllerAppleBalanceAccountDetailsStepContext

- (NPKPaymentProvisioningFlowControllerAppleBalanceAccountDetailsStepContext)initWithRequestContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = NPKPaymentProvisioningFlowControllerAppleBalanceAccountDetailsStepContext;
  return [(NPKPaymentProvisioningFlowStepContext *)&v4 initWithRequestContext:a3];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NPKPaymentProvisioningFlowStepContext *)self _baseFlowStepDescription];
  v5 = [(NPKPaymentProvisioningFlowControllerAppleBalanceAccountDetailsStepContext *)self appleID];
  v6 = [(NPKPaymentProvisioningFlowControllerAppleBalanceAccountDetailsStepContext *)self balance];
  v7 = [v3 stringWithFormat:@"<%@ appleID %@, balance %@>", v4, v5, v6];

  return v7;
}

@end
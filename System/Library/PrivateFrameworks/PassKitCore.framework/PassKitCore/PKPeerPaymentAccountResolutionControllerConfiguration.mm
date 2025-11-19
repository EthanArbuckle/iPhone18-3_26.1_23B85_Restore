@interface PKPeerPaymentAccountResolutionControllerConfiguration
- (id)description;
@end

@implementation PKPeerPaymentAccountResolutionControllerConfiguration

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"currencyAmount: '%@'; ", self->_currencyAmount];
  v4 = PKPeerPaymentRegistrationFlowStateToString(self->_registrationFlowState);
  [v3 appendFormat:@"registrationFlowState: '%@'; ", v4];

  [v3 appendFormat:@"senderAddress: '%@'; ", self->_senderAddress];
  v5 = PKPeerPaymentIdentityVerificationContextToString(self->_verificationContext);
  [v3 appendFormat:@"verificationContext: '%@'; ", v5];

  if (self->_graduation)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v3 appendFormat:@"graduation: '%@'; ", v6];
  v7 = self->_paymentMode - 1;
  if (v7 > 2)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = off_1E79C4408[v7];
  }

  [v3 appendFormat:@"peerPaymentPaymentMode: '%@'; ", v8];
  v9 = [v3 copy];

  return v9;
}

@end
@interface PKRefreshVPANPaymentCredentialRequest
- (id)endpointComponents;
@end

@implementation PKRefreshVPANPaymentCredentialRequest

- (id)endpointComponents
{
  v5[3] = *MEMORY[0x1E69E9840];
  deviceIdentifier = [(PKRetrieveVPANPaymentCredentialRequest *)self deviceIdentifier];
  v5[1] = deviceIdentifier;
  v5[2] = @"virtualCardRefresh";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];

  return v3;
}

@end
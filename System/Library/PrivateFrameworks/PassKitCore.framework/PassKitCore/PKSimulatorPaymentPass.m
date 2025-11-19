@interface PKSimulatorPaymentPass
- (PKSimulatorPaymentPass)initWithDictionary:(id)a3 bundle:(id)a4;
- (id)devicePrimaryPaymentApplication;
- (id)primaryAccountIdentifier;
@end

@implementation PKSimulatorPaymentPass

- (PKSimulatorPaymentPass)initWithDictionary:(id)a3 bundle:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v13.receiver = self;
  v13.super_class = PKSimulatorPaymentPass;
  v7 = [(PKSecureElementPass *)&v13 initWithDictionary:v6 bundle:a4];
  if (v7)
  {
    v8 = [v6 copy];
    dictionary = v7->_dictionary;
    v7->_dictionary = v8;

    v10 = +[PKSecureElement primarySecureElementIdentifier];
    v14[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [(PKSecureElementPass *)v7 updateDevicePaymentApplicationsWithSecureElementIdentifiers:v11];
  }

  return v7;
}

- (id)devicePrimaryPaymentApplication
{
  v2 = [(PKSecureElementPass *)self paymentApplications];
  v3 = [v2 anyObject];

  return v3;
}

- (id)primaryAccountIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(PKSecureElementPass *)self paymentApplications];
  v4 = [v3 anyObject];
  v5 = [v4 displayName];
  v6 = [v2 stringWithFormat:@"SimulatedIdentifier: %@", v5];

  return v6;
}

@end
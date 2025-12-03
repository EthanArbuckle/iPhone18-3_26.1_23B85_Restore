@interface PKSimulatorPaymentPass
- (PKSimulatorPaymentPass)initWithDictionary:(id)dictionary bundle:(id)bundle;
- (id)devicePrimaryPaymentApplication;
- (id)primaryAccountIdentifier;
@end

@implementation PKSimulatorPaymentPass

- (PKSimulatorPaymentPass)initWithDictionary:(id)dictionary bundle:(id)bundle
{
  v14[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = PKSimulatorPaymentPass;
  v7 = [(PKSecureElementPass *)&v13 initWithDictionary:dictionaryCopy bundle:bundle];
  if (v7)
  {
    v8 = [dictionaryCopy copy];
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
  paymentApplications = [(PKSecureElementPass *)self paymentApplications];
  anyObject = [paymentApplications anyObject];

  return anyObject;
}

- (id)primaryAccountIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  paymentApplications = [(PKSecureElementPass *)self paymentApplications];
  anyObject = [paymentApplications anyObject];
  displayName = [anyObject displayName];
  v6 = [v2 stringWithFormat:@"SimulatedIdentifier: %@", displayName];

  return v6;
}

@end
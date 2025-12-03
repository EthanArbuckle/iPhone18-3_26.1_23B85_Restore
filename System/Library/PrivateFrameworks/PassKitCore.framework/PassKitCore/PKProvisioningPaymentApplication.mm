@interface PKProvisioningPaymentApplication
- (PKProvisioningPaymentApplication)initWithAppletTypeIdentifier:(id)identifier paymentType:(unint64_t)type;
- (PKProvisioningPaymentApplication)initWithDictionary:(id)dictionary;
@end

@implementation PKProvisioningPaymentApplication

- (PKProvisioningPaymentApplication)initWithAppletTypeIdentifier:(id)identifier paymentType:(unint64_t)type
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = PKProvisioningPaymentApplication;
  v8 = [(PKProvisioningPaymentApplication *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_appletTypeIdentifier, identifier);
    v9->_paymentType = type;
  }

  return v9;
}

- (PKProvisioningPaymentApplication)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PKProvisioningPaymentApplication;
  v5 = [(PKProvisioningPaymentApplication *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"appletTypeIdentifier"];
    appletTypeIdentifier = v5->_appletTypeIdentifier;
    v5->_appletTypeIdentifier = v6;

    v8 = [dictionaryCopy objectForKey:@"paymentType"];
    v5->_paymentType = PKPaymentMethodTypeForString(v8);

    v9 = [dictionaryCopy PKStringForKey:@"applicationIdentifier"];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v9;

    if (!v5->_appletTypeIdentifier || !v5->_paymentType)
    {

      v5 = 0;
    }
  }

  return v5;
}

@end
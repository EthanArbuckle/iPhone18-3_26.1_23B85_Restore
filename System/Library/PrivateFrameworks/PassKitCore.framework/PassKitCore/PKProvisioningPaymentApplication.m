@interface PKProvisioningPaymentApplication
- (PKProvisioningPaymentApplication)initWithAppletTypeIdentifier:(id)a3 paymentType:(unint64_t)a4;
- (PKProvisioningPaymentApplication)initWithDictionary:(id)a3;
@end

@implementation PKProvisioningPaymentApplication

- (PKProvisioningPaymentApplication)initWithAppletTypeIdentifier:(id)a3 paymentType:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PKProvisioningPaymentApplication;
  v8 = [(PKProvisioningPaymentApplication *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_appletTypeIdentifier, a3);
    v9->_paymentType = a4;
  }

  return v9;
}

- (PKProvisioningPaymentApplication)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKProvisioningPaymentApplication;
  v5 = [(PKProvisioningPaymentApplication *)&v12 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"appletTypeIdentifier"];
    appletTypeIdentifier = v5->_appletTypeIdentifier;
    v5->_appletTypeIdentifier = v6;

    v8 = [v4 objectForKey:@"paymentType"];
    v5->_paymentType = PKPaymentMethodTypeForString(v8);

    v9 = [v4 PKStringForKey:@"applicationIdentifier"];
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
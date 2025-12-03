@interface PKHomeKeyCredential
- (PKHomeKeyCredential)initWithPaymentPass:(id)pass;
- (id)activationMethods;
- (id)detailDescriptionWithEnvironment:(unint64_t)environment;
- (id)paymentApplications;
@end

@implementation PKHomeKeyCredential

- (PKHomeKeyCredential)initWithPaymentPass:(id)pass
{
  v18[1] = *MEMORY[0x1E69E9840];
  passCopy = pass;
  paymentApplications = [passCopy paymentApplications];
  anyObject = [paymentApplications anyObject];
  secureElementIdentifier = [anyObject secureElementIdentifier];
  v18[0] = secureElementIdentifier;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  [passCopy updateDevicePaymentApplicationsWithSecureElementIdentifiers:v8];

  v17.receiver = self;
  v17.super_class = PKHomeKeyCredential;
  v9 = [(PKPaymentLocalPassCredential *)&v17 initWithPaymentPass:passCopy];
  v10 = v9;
  if (v9)
  {
    [(PKPaymentCredential *)v9 setCardType:3];
    frontFieldBuckets = [passCopy frontFieldBuckets];
    v12 = [frontFieldBuckets count];
    v10->_detailDescriptionAvailable = v12 > 1;
    if (v12 >= 2)
    {
      v13 = PKLocalizedHomeKeyString(&cfstr_ProductNameHom.isa, 0);
      [(PKPaymentCredential *)v10 setLongDescription:v13];
    }

    paymentApplications2 = [passCopy paymentApplications];
    paymentApplications = v10->_paymentApplications;
    v10->_paymentApplications = paymentApplications2;
  }

  return v10;
}

- (id)detailDescriptionWithEnvironment:(unint64_t)environment
{
  if (self->_detailDescriptionAvailable)
  {
    paymentPass = [(PKPaymentLocalPassCredential *)self paymentPass];
    localizedDescription = [paymentPass localizedDescription];
  }

  else
  {
    localizedDescription = 0;
  }

  return localizedDescription;
}

- (id)paymentApplications
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = self->_paymentApplications;
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        paymentNetworkIdentifier = [v9 paymentNetworkIdentifier];
        paymentType = [v9 paymentType];
        if (paymentNetworkIdentifier == 139)
        {
          goto LABEL_10;
        }

        if (paymentNetworkIdentifier != 133)
        {
          continue;
        }

        if (paymentType == 1004)
        {
LABEL_10:
          v12 = +[PKProvisioningSEStorageSnapshot appletTypePurpleTrustAirAliro];
        }

        else
        {
          v12 = +[PKProvisioningSEStorageSnapshot appletTypePurpleTrustAirHome];
        }

        v13 = v12;
        if (v12)
        {
          v14 = [[PKProvisioningPaymentApplication alloc] initWithAppletTypeIdentifier:v12 paymentType:paymentType];
          [v3 addObject:v14];
        }
      }

      v6 = [(NSSet *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v15 = [v3 copy];

  return v15;
}

- (id)activationMethods
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = [PKPaymentCredentialProvisioningMethod alloc];
  v3 = [[PKPassUpgradePrecursorPassGenericReprovisionAction alloc] initWithDeviceProvisioningDataExpected:0];
  v8 = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
  v5 = [(PKPaymentCredentialProvisioningMethod *)v2 initWithSupportsFrictionlessProvisioning:1 actions:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  return v6;
}

@end
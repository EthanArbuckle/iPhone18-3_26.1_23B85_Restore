@interface PKAccountCredential
- (BOOL)_isEqualToCredential:(id)credential;
- (BOOL)isEqual:(id)equal;
- (PKAccountCredential)initWithAccount:(id)account;
- (id)activationMethods;
- (id)detailDescriptionWithEnvironment:(unint64_t)environment;
- (id)longDescription;
- (unint64_t)hash;
@end

@implementation PKAccountCredential

- (PKAccountCredential)initWithAccount:(id)account
{
  accountCopy = account;
  if (accountCopy)
  {
    v9.receiver = self;
    v9.super_class = PKAccountCredential;
    v6 = [(PKPaymentCredential *)&v9 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_account, account);
      [(PKPaymentCredential *)v7 setCardType:1];
      [(PKPaymentCredential *)v7 setCredentialType:PKAccountCredentialType([(PKAccount *)v7->_account feature], v7->_account)];
    }
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKAccountCredential *)self _isEqualToCredential:equalCopy];
  }

  return v5;
}

- (BOOL)_isEqualToCredential:(id)credential
{
  account = self->_account;
  credentialCopy = credential;
  accountIdentifier = [(PKAccount *)account accountIdentifier];
  account = [credentialCopy account];

  accountIdentifier2 = [account accountIdentifier];
  v8 = accountIdentifier;
  v9 = accountIdentifier2;
  v10 = v9;
  if (v8 == v9)
  {
    v12 = 1;
  }

  else
  {
    if (v8)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = [v8 isEqualToString:v9];
    }
  }

  return v12;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
  [array safelyAddObject:accountIdentifier];

  v5 = PKCombinedHash(17, array);
  return v5;
}

- (id)longDescription
{
  feature = [(PKAccount *)self->_account feature];

  return PKLocalizedFeatureString(@"APPLY_FLOW_ACCOUNT_TITLE", feature, 0, v3, v4, v5, v6, v7, v10);
}

- (id)detailDescriptionWithEnvironment:(unint64_t)environment
{
  if ([(PKAccount *)self->_account type]== 1)
  {
    creditDetails = [(PKAccount *)self->_account creditDetails];
    accountSummary = [creditDetails accountSummary];
    creditLimit = [accountSummary creditLimit];

    if (creditLimit)
    {
      notANumber = [MEMORY[0x1E696AB90] notANumber];
      v8 = [creditLimit isEqual:notANumber];

      if (v8)
      {
        v9 = 0;
      }

      else
      {
        currencyCode = [creditDetails currencyCode];
        v11 = PKFormattedCurrencyStringFromNumber(creditLimit, currencyCode);

        v9 = PKLocalizedFeatureString(@"APPLY_ON_FILE_SUBTITLE", 2, @"%@", v12, v13, v14, v15, v16, v11);
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
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
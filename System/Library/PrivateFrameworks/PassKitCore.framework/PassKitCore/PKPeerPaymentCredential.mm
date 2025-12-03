@interface PKPeerPaymentCredential
- (BOOL)_isEqualToCredential:(id)credential;
- (BOOL)isEqual:(id)equal;
- (NSString)pendingPaymentSenderName;
- (PKPeerPaymentCredential)initWithPeerPaymentAccount:(id)account;
- (id)activationMethods;
- (id)detailDescriptionWithEnvironment:(unint64_t)environment;
- (unint64_t)hash;
@end

@implementation PKPeerPaymentCredential

- (PKPeerPaymentCredential)initWithPeerPaymentAccount:(id)account
{
  accountCopy = account;
  if (accountCopy)
  {
    v9.receiver = self;
    v9.super_class = PKPeerPaymentCredential;
    v6 = [(PKPaymentCredential *)&v9 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_account, account);
      [(PKPaymentCredential *)v7 setCardType:1];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKPeerPaymentCredential *)self _isEqualToCredential:equalCopy];
  }

  return v5;
}

- (BOOL)_isEqualToCredential:(id)credential
{
  account = self->_account;
  credentialCopy = credential;
  associatedPassSerialNumber = [(PKPeerPaymentAccount *)account associatedPassSerialNumber];
  account = [credentialCopy account];

  associatedPassSerialNumber2 = [account associatedPassSerialNumber];
  v8 = associatedPassSerialNumber;
  v9 = associatedPassSerialNumber2;
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
  associatedPassSerialNumber = [(PKPeerPaymentAccount *)self->_account associatedPassSerialNumber];
  [array safelyAddObject:associatedPassSerialNumber];

  v5 = PKCombinedHash(17, array);
  return v5;
}

- (id)detailDescriptionWithEnvironment:(unint64_t)environment
{
  currentBalance = [(PKPeerPaymentAccount *)self->_account currentBalance];
  amount = [currentBalance amount];
  if (amount && ([MEMORY[0x1E696AB90] notANumber], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(amount, "isEqual:", v5), v5, (v6 & 1) == 0))
  {
    minimalFormattedStringValue = [currentBalance minimalFormattedStringValue];
    v7 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentOnF.isa, &stru_1F2281668.isa, minimalFormattedStringValue);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)pendingPaymentSenderName
{
  if ([(NSString *)self->_pendingPaymentSenderAddress length]&& ![(NSString *)self->_pendingPaymentSenderName length])
  {
    pendingPaymentSenderAddress = self->_pendingPaymentSenderAddress;
    if (qword_1EB5A0448 != -1)
    {
      dispatch_once(&qword_1EB5A0448, &__block_literal_global_1134);
    }

    v4 = qword_1EB5A0450;
    v5 = [PKPeerPaymentController displayNameForAddress:pendingPaymentSenderAddress contactResolver:v4];
    pendingPaymentSenderName = self->_pendingPaymentSenderName;
    self->_pendingPaymentSenderName = v5;
  }

  v7 = self->_pendingPaymentSenderName;

  return v7;
}

- (id)activationMethods
{
  v11[1] = *MEMORY[0x1E69E9840];
  account = self->_account;
  if (account)
  {
    v3 = [(PKPeerPaymentAccount *)account termsAcceptanceRequired]^ 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = [PKPaymentCredentialProvisioningMethod alloc];
  v5 = [[PKPassUpgradePrecursorPassGenericReprovisionAction alloc] initWithDeviceProvisioningDataExpected:0];
  v10 = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
  v7 = [(PKPaymentCredentialProvisioningMethod *)v4 initWithSupportsFrictionlessProvisioning:v3 actions:v6];
  v11[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  return v8;
}

@end
@interface PKPeerPaymentCredential
- (BOOL)_isEqualToCredential:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)pendingPaymentSenderName;
- (PKPeerPaymentCredential)initWithPeerPaymentAccount:(id)a3;
- (id)activationMethods;
- (id)detailDescriptionWithEnvironment:(unint64_t)a3;
- (unint64_t)hash;
@end

@implementation PKPeerPaymentCredential

- (PKPeerPaymentCredential)initWithPeerPaymentAccount:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v9.receiver = self;
    v9.super_class = PKPeerPaymentCredential;
    v6 = [(PKPaymentCredential *)&v9 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_account, a3);
      [(PKPaymentCredential *)v7 setCardType:1];
    }
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKPeerPaymentCredential *)self _isEqualToCredential:v4];
  }

  return v5;
}

- (BOOL)_isEqualToCredential:(id)a3
{
  account = self->_account;
  v4 = a3;
  v5 = [(PKPeerPaymentAccount *)account associatedPassSerialNumber];
  v6 = [v4 account];

  v7 = [v6 associatedPassSerialNumber];
  v8 = v5;
  v9 = v7;
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
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(PKPeerPaymentAccount *)self->_account associatedPassSerialNumber];
  [v3 safelyAddObject:v4];

  v5 = PKCombinedHash(17, v3);
  return v5;
}

- (id)detailDescriptionWithEnvironment:(unint64_t)a3
{
  v3 = [(PKPeerPaymentAccount *)self->_account currentBalance];
  v4 = [v3 amount];
  if (v4 && ([MEMORY[0x1E696AB90] notANumber], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "isEqual:", v5), v5, (v6 & 1) == 0))
  {
    v8 = [v3 minimalFormattedStringValue];
    v7 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentOnF.isa, &stru_1F2281668.isa, v8);
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
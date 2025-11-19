@interface PKPeerPaymentBankAccountInformation
- (PKPeerPaymentBankAccountInformation)init;
- (id)_bankAccountInformationInKeychain;
- (id)_wrapperWithType:(unint64_t)a3;
- (void)_writeBankAccountInformationToKeychain;
- (void)deleteAllBankInformation;
- (void)deleteAllLocalBankInformation;
- (void)setAccountNumber:(id)a3;
- (void)setBankName:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)setRoutingNumber:(id)a3;
- (void)updateToLatestKeychainData;
@end

@implementation PKPeerPaymentBankAccountInformation

- (PKPeerPaymentBankAccountInformation)init
{
  v5.receiver = self;
  v5.super_class = PKPeerPaymentBankAccountInformation;
  v2 = [(PKBankAccountInformation *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PKPeerPaymentBankAccountInformation *)v2 updateToLatestKeychainData];
  }

  return v3;
}

- (void)deleteAllBankInformation
{
  v4.receiver = self;
  v4.super_class = PKPeerPaymentBankAccountInformation;
  [(PKBankAccountInformation *)&v4 deleteAllBankInformation];
  v3 = [(PKPeerPaymentBankAccountInformation *)self _wrapperWithType:1];
  [v3 resetKeychainItem];
}

- (void)deleteAllLocalBankInformation
{
  v4.receiver = self;
  v4.super_class = PKPeerPaymentBankAccountInformation;
  [(PKBankAccountInformation *)&v4 deleteAllLocalBankInformation];
  v3 = [(PKPeerPaymentBankAccountInformation *)self _wrapperWithType:1];
  [v3 resetLocalKeychainItem];
}

- (void)updateToLatestKeychainData
{
  v3 = [(PKPeerPaymentBankAccountInformation *)self _bankAccountInformationInKeychain];
  v4 = [v3 bankName];
  v11.receiver = self;
  v11.super_class = PKPeerPaymentBankAccountInformation;
  [(PKBankAccountInformation *)&v11 setBankName:v4];

  v5 = [v3 accountNumber];
  v10.receiver = self;
  v10.super_class = PKPeerPaymentBankAccountInformation;
  [(PKBankAccountInformation *)&v10 setAccountNumber:v5];

  v6 = [v3 routingNumber];
  v9.receiver = self;
  v9.super_class = PKPeerPaymentBankAccountInformation;
  [(PKBankAccountInformation *)&v9 setRoutingNumber:v6];

  v7 = [v3 identifier];
  v8.receiver = self;
  v8.super_class = PKPeerPaymentBankAccountInformation;
  [(PKBankAccountInformation *)&v8 setIdentifier:v7];
}

- (id)_wrapperWithType:(unint64_t)a3
{
  v3 = [[PKKeychainItemWrapper alloc] initWithIdentifier:@"PKPeerPaymentUnitedStatesBankAccountInformationKeychainKey" accessGroup:@"com.apple.Passbook.PeerPayment" serviceName:@"com.apple.passkit" type:a3 invisible:0];
  [(PKKeychainItemWrapper *)v3 setLabel:@"com.apple.passkit"];

  return v3;
}

- (void)_writeBankAccountInformationToKeychain
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v7];
  v4 = v7;
  v5 = [(PKPeerPaymentBankAccountInformation *)self _wrapperWithType:1];
  [v5 setObject:v3 forKey:*MEMORY[0x1E697B3C0]];

  if (v4)
  {
    v6 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = v4;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Error writing bank account information to keychain: %@", buf, 0xCu);
    }
  }
}

- (id)_bankAccountInformationInKeychain
{
  v2 = [(PKPeerPaymentBankAccountInformation *)self _wrapperWithType:1];
  v3 = [v2 objectForKey:*MEMORY[0x1E697B3C0]];

  v4 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v3 error:0];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v8 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Could not initialize unarchiver with keychain data.", v10, 2u);
    }
  }

  else if (v4)
  {
    v7 = [v4 decodeTopLevelObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E696A508] error:0];
    [v5 finishDecoding];
    goto LABEL_11;
  }

  v7 = 0;
LABEL_11:

  return v7;
}

- (void)setBankName:(id)a3
{
  v4 = a3;
  v5 = [(PKBankAccountInformation *)self bankName];
  v6 = [v4 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = PKPeerPaymentBankAccountInformation;
    [(PKBankAccountInformation *)&v7 setBankName:v4];
    [(PKPeerPaymentBankAccountInformation *)self _writeBankAccountInformationToKeychain];
  }
}

- (void)setAccountNumber:(id)a3
{
  v4 = a3;
  v5 = [(PKBankAccountInformation *)self accountNumber];
  v6 = [v4 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = PKPeerPaymentBankAccountInformation;
    [(PKBankAccountInformation *)&v7 setAccountNumber:v4];
    [(PKPeerPaymentBankAccountInformation *)self _writeBankAccountInformationToKeychain];
  }
}

- (void)setRoutingNumber:(id)a3
{
  v4 = a3;
  v5 = [(PKBankAccountInformation *)self routingNumber];
  v6 = [v4 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = PKPeerPaymentBankAccountInformation;
    [(PKBankAccountInformation *)&v7 setRoutingNumber:v4];
    [(PKPeerPaymentBankAccountInformation *)self _writeBankAccountInformationToKeychain];
  }
}

- (void)setIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PKBankAccountInformation *)self identifier];
  v6 = [v4 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = PKPeerPaymentBankAccountInformation;
    [(PKBankAccountInformation *)&v7 setIdentifier:v4];
    [(PKPeerPaymentBankAccountInformation *)self _writeBankAccountInformationToKeychain];
  }
}

@end
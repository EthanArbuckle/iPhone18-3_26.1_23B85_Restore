@interface PKPaymentMerchantData
- (PKPaymentMerchantData)initWithMerchantIdentifier:(id)a3 applicationData:(id)a4 merchantSession:(id)a5;
- (id)encode;
@end

@implementation PKPaymentMerchantData

- (PKPaymentMerchantData)initWithMerchantIdentifier:(id)a3 applicationData:(id)a4 merchantSession:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = PKPaymentMerchantData;
  v11 = [(PKPaymentMerchantData *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    merchantIdentifier = v11->_merchantIdentifier;
    v11->_merchantIdentifier = v12;

    v14 = [v9 copy];
    applicationData = v11->_applicationData;
    v11->_applicationData = v14;

    objc_storeStrong(&v11->_merchantSession, a5);
  }

  return v11;
}

- (id)encode
{
  v3 = [MEMORY[0x1E695DF88] data];
  applicationData = self->_applicationData;
  if (applicationData)
  {
    v5 = [(NSData *)applicationData SHA256Hash];
    [v3 appendData:v5];
  }

  merchantSession = self->_merchantSession;
  if (merchantSession)
  {
    v7 = [(PKPaymentMerchantSession *)merchantSession merchantIdentifier];
    [v7 pk_decodeHexadecimal];
  }

  else
  {
    v7 = [(NSString *)self->_merchantIdentifier dataUsingEncoding:4];
    [v7 SHA256Hash];
  }
  v8 = ;
  [v3 appendData:v8];

  v9 = [v3 SHA256Hash];

  return v9;
}

@end
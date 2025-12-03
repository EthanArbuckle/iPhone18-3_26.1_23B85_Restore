@interface PKPaymentMerchantData
- (PKPaymentMerchantData)initWithMerchantIdentifier:(id)identifier applicationData:(id)data merchantSession:(id)session;
- (id)encode;
@end

@implementation PKPaymentMerchantData

- (PKPaymentMerchantData)initWithMerchantIdentifier:(id)identifier applicationData:(id)data merchantSession:(id)session
{
  identifierCopy = identifier;
  dataCopy = data;
  sessionCopy = session;
  v17.receiver = self;
  v17.super_class = PKPaymentMerchantData;
  v11 = [(PKPaymentMerchantData *)&v17 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    merchantIdentifier = v11->_merchantIdentifier;
    v11->_merchantIdentifier = v12;

    v14 = [dataCopy copy];
    applicationData = v11->_applicationData;
    v11->_applicationData = v14;

    objc_storeStrong(&v11->_merchantSession, session);
  }

  return v11;
}

- (id)encode
{
  data = [MEMORY[0x1E695DF88] data];
  applicationData = self->_applicationData;
  if (applicationData)
  {
    sHA256Hash = [(NSData *)applicationData SHA256Hash];
    [data appendData:sHA256Hash];
  }

  merchantSession = self->_merchantSession;
  if (merchantSession)
  {
    merchantIdentifier = [(PKPaymentMerchantSession *)merchantSession merchantIdentifier];
    [merchantIdentifier pk_decodeHexadecimal];
  }

  else
  {
    merchantIdentifier = [(NSString *)self->_merchantIdentifier dataUsingEncoding:4];
    [merchantIdentifier SHA256Hash];
  }
  v8 = ;
  [data appendData:v8];

  sHA256Hash2 = [data SHA256Hash];

  return sHA256Hash2;
}

@end
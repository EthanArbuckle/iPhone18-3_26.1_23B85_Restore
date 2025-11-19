@interface PKPaymentBackgroundRegisterCredentialRecord
- (PKPaymentBackgroundRegisterCredentialRecord)initWithCoder:(id)a3;
- (PKPaymentBackgroundRegisterCredentialRecord)initWithCredentialIdentifier:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentBackgroundRegisterCredentialRecord

- (PKPaymentBackgroundRegisterCredentialRecord)initWithCredentialIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKPaymentBackgroundRegisterCredentialRecord;
  v6 = [(PKPaymentBackgroundDownloadRecord *)&v9 _init];
  v7 = v6;
  if (v6)
  {
    [(PKPaymentBackgroundDownloadRecord *)v6 setTaskType:5];
    objc_storeStrong(&v7->_credentialIdentifier, a3);
  }

  return v7;
}

- (PKPaymentBackgroundRegisterCredentialRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPaymentBackgroundRegisterCredentialRecord;
  v5 = [(PKPaymentBackgroundDownloadRecord *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credentialIdentifier"];
    [(PKPaymentBackgroundRegisterCredentialRecord *)v5 setCredentialIdentifier:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"responseData"];
    [(PKPaymentBackgroundRegisterCredentialRecord *)v5 setResponseData:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPaymentBackgroundRegisterCredentialRecord;
  v4 = a3;
  [(PKPaymentBackgroundDownloadRecord *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_credentialIdentifier forKey:{@"credentialIdentifier", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_responseData forKey:@"responseData"];
}

@end
@interface PKPaymentBackgroundRegisterCredentialRecord
- (PKPaymentBackgroundRegisterCredentialRecord)initWithCoder:(id)coder;
- (PKPaymentBackgroundRegisterCredentialRecord)initWithCredentialIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentBackgroundRegisterCredentialRecord

- (PKPaymentBackgroundRegisterCredentialRecord)initWithCredentialIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = PKPaymentBackgroundRegisterCredentialRecord;
  _init = [(PKPaymentBackgroundDownloadRecord *)&v9 _init];
  v7 = _init;
  if (_init)
  {
    [(PKPaymentBackgroundDownloadRecord *)_init setTaskType:5];
    objc_storeStrong(&v7->_credentialIdentifier, identifier);
  }

  return v7;
}

- (PKPaymentBackgroundRegisterCredentialRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKPaymentBackgroundRegisterCredentialRecord;
  v5 = [(PKPaymentBackgroundDownloadRecord *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credentialIdentifier"];
    [(PKPaymentBackgroundRegisterCredentialRecord *)v5 setCredentialIdentifier:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"responseData"];
    [(PKPaymentBackgroundRegisterCredentialRecord *)v5 setResponseData:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPaymentBackgroundRegisterCredentialRecord;
  coderCopy = coder;
  [(PKPaymentBackgroundDownloadRecord *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_credentialIdentifier forKey:{@"credentialIdentifier", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_responseData forKey:@"responseData"];
}

@end
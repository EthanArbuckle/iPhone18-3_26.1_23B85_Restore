@interface IDSLocalPairingIdentityDataErrorPair
- (IDSLocalPairingIdentityDataErrorPair)initWithCoder:(id)coder;
- (IDSLocalPairingIdentityDataErrorPair)initWithIdentityData:(id)data error:(id)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSLocalPairingIdentityDataErrorPair

- (IDSLocalPairingIdentityDataErrorPair)initWithIdentityData:(id)data error:(id)error
{
  dataCopy = data;
  errorCopy = error;
  v12.receiver = self;
  v12.super_class = IDSLocalPairingIdentityDataErrorPair;
  v9 = [(IDSLocalPairingIdentityDataErrorPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identityData, data);
    objc_storeStrong(&v10->_error, error);
  }

  return v10;
}

- (IDSLocalPairingIdentityDataErrorPair)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kIdentityData"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kError"];

  v7 = [(IDSLocalPairingIdentityDataErrorPair *)self initWithIdentityData:v5 error:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identityData = [(IDSLocalPairingIdentityDataErrorPair *)self identityData];
  [coderCopy encodeObject:identityData forKey:@"kIdentityData"];

  error = [(IDSLocalPairingIdentityDataErrorPair *)self error];
  [coderCopy encodeObject:error forKey:@"kError"];
}

@end
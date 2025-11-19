@interface IDSLocalPairingIdentityDataErrorPair
- (IDSLocalPairingIdentityDataErrorPair)initWithCoder:(id)a3;
- (IDSLocalPairingIdentityDataErrorPair)initWithIdentityData:(id)a3 error:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSLocalPairingIdentityDataErrorPair

- (IDSLocalPairingIdentityDataErrorPair)initWithIdentityData:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IDSLocalPairingIdentityDataErrorPair;
  v9 = [(IDSLocalPairingIdentityDataErrorPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identityData, a3);
    objc_storeStrong(&v10->_error, a4);
  }

  return v10;
}

- (IDSLocalPairingIdentityDataErrorPair)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kIdentityData"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kError"];

  v7 = [(IDSLocalPairingIdentityDataErrorPair *)self initWithIdentityData:v5 error:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IDSLocalPairingIdentityDataErrorPair *)self identityData];
  [v4 encodeObject:v5 forKey:@"kIdentityData"];

  v6 = [(IDSLocalPairingIdentityDataErrorPair *)self error];
  [v4 encodeObject:v6 forKey:@"kError"];
}

@end
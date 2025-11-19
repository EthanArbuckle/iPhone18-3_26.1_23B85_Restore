@interface PKCrossPlatformShareURL
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCrossPlatformShareURL:(id)a3;
- (PKCrossPlatformShareURL)initWithCoder:(id)a3;
- (PKCrossPlatformShareURL)initWithURL:(id)a3 expectedPairedReaderIdentifier:(id)a4 expectedProvisioningCredentialHash:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKCrossPlatformShareURL

- (PKCrossPlatformShareURL)initWithURL:(id)a3 expectedPairedReaderIdentifier:(id)a4 expectedProvisioningCredentialHash:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PKCrossPlatformShareURL;
  v12 = [(PKCrossPlatformShareURL *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_url, a3);
    if (!v10 || !v11)
    {
      objc_storeStrong(&v13->_expectedPairedReaderIdentifier, a4);
      objc_storeStrong(&v13->_expectedProvisioningCredentialHash, a5);
    }
  }

  return v13;
}

- (PKCrossPlatformShareURL)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKCrossPlatformShareURL;
  v5 = [(PKCrossPlatformShareURL *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expectedPairedReaderIdentifier"];
    expectedPairedReaderIdentifier = v5->_expectedPairedReaderIdentifier;
    v5->_expectedPairedReaderIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expectedProvisioningCredentialHash"];
    expectedProvisioningCredentialHash = v5->_expectedProvisioningCredentialHash;
    v5->_expectedProvisioningCredentialHash = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  url = self->_url;
  v5 = a3;
  [v5 encodeObject:url forKey:@"url"];
  [v5 encodeObject:self->_expectedPairedReaderIdentifier forKey:@"expectedPairedReaderIdentifier"];
  [v5 encodeObject:self->_expectedProvisioningCredentialHash forKey:@"expectedProvisioningCredentialHash"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"url: '%@'; ", self->_url];
  [v6 appendFormat:@"expectedPairedReaderIdentifier: '%@'; ", self->_expectedPairedReaderIdentifier];
  [v6 appendFormat:@"expectedProvisioningCredentialHash: '%@'; ", self->_expectedProvisioningCredentialHash];
  [v6 appendFormat:@">"];
  v7 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v7;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if (self->_url)
  {
    [v3 addObject:?];
  }

  if (self->_expectedPairedReaderIdentifier)
  {
    [v4 addObject:?];
  }

  if (self->_expectedProvisioningCredentialHash)
  {
    [v4 addObject:?];
  }

  v5 = PKCombinedHash(17, v4);

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKCrossPlatformShareURL *)self isEqualToCrossPlatformShareURL:v5];
  }

  return v6;
}

- (BOOL)isEqualToCrossPlatformShareURL:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_17;
  }

  url = self->_url;
  v6 = v4[1];
  if (url)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (url != v6)
    {
      goto LABEL_17;
    }
  }

  else if (([(NSURL *)url isEqual:?]& 1) == 0)
  {
    goto LABEL_17;
  }

  expectedPairedReaderIdentifier = self->_expectedPairedReaderIdentifier;
  v9 = v4[2];
  if (!expectedPairedReaderIdentifier || !v9)
  {
    if (expectedPairedReaderIdentifier == v9)
    {
      goto LABEL_13;
    }

LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  if (([(NSString *)expectedPairedReaderIdentifier isEqual:?]& 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_13:
  expectedProvisioningCredentialHash = self->_expectedProvisioningCredentialHash;
  v11 = v4[3];
  if (expectedProvisioningCredentialHash && v11)
  {
    v12 = [(NSString *)expectedProvisioningCredentialHash isEqual:?];
  }

  else
  {
    v12 = expectedProvisioningCredentialHash == v11;
  }

LABEL_18:

  return v12;
}

@end
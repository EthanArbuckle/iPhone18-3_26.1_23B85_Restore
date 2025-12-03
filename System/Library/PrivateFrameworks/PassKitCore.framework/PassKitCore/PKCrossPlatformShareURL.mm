@interface PKCrossPlatformShareURL
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCrossPlatformShareURL:(id)l;
- (PKCrossPlatformShareURL)initWithCoder:(id)coder;
- (PKCrossPlatformShareURL)initWithURL:(id)l expectedPairedReaderIdentifier:(id)identifier expectedProvisioningCredentialHash:(id)hash;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKCrossPlatformShareURL

- (PKCrossPlatformShareURL)initWithURL:(id)l expectedPairedReaderIdentifier:(id)identifier expectedProvisioningCredentialHash:(id)hash
{
  lCopy = l;
  identifierCopy = identifier;
  hashCopy = hash;
  v15.receiver = self;
  v15.super_class = PKCrossPlatformShareURL;
  v12 = [(PKCrossPlatformShareURL *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_url, l);
    if (!identifierCopy || !hashCopy)
    {
      objc_storeStrong(&v13->_expectedPairedReaderIdentifier, identifier);
      objc_storeStrong(&v13->_expectedProvisioningCredentialHash, hash);
    }
  }

  return v13;
}

- (PKCrossPlatformShareURL)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKCrossPlatformShareURL;
  v5 = [(PKCrossPlatformShareURL *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expectedPairedReaderIdentifier"];
    expectedPairedReaderIdentifier = v5->_expectedPairedReaderIdentifier;
    v5->_expectedPairedReaderIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expectedProvisioningCredentialHash"];
    expectedProvisioningCredentialHash = v5->_expectedProvisioningCredentialHash;
    v5->_expectedProvisioningCredentialHash = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  url = self->_url;
  coderCopy = coder;
  [coderCopy encodeObject:url forKey:@"url"];
  [coderCopy encodeObject:self->_expectedPairedReaderIdentifier forKey:@"expectedPairedReaderIdentifier"];
  [coderCopy encodeObject:self->_expectedProvisioningCredentialHash forKey:@"expectedProvisioningCredentialHash"];
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
  array = [MEMORY[0x1E695DF70] array];
  v4 = array;
  if (self->_url)
  {
    [array addObject:?];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKCrossPlatformShareURL *)self isEqualToCrossPlatformShareURL:v5];
  }

  return v6;
}

- (BOOL)isEqualToCrossPlatformShareURL:(id)l
{
  lCopy = l;
  if (!lCopy)
  {
    goto LABEL_17;
  }

  url = self->_url;
  v6 = lCopy[1];
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
  v9 = lCopy[2];
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
  v11 = lCopy[3];
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
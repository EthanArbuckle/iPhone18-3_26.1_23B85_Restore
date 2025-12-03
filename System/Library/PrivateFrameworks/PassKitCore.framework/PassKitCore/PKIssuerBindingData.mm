@interface PKIssuerBindingData
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToIssuerBindingData:(id)data;
- (PKIssuerBindingData)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKIssuerBindingData

- (PKIssuerBindingData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKIssuerBindingData;
  v5 = [(PKIssuerBindingData *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionIdentifier"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"createdKeyHash"];
    createdKeyHash = v5->_createdKeyHash;
    v5->_createdKeyHash = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signedData"];
    signedData = v5->_signedData;
    v5->_signedData = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"callbackURL"];
    callbackURL = v5->_callbackURL;
    v5->_callbackURL = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  sessionIdentifier = self->_sessionIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:sessionIdentifier forKey:@"sessionIdentifier"];
  [coderCopy encodeObject:self->_createdKeyHash forKey:@"createdKeyHash"];
  [coderCopy encodeObject:self->_signedData forKey:@"signedData"];
  [coderCopy encodeObject:self->_callbackURL forKey:@"callbackURL"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"sessionIdentifier: %@; ", self->_sessionIdentifier];
  [v3 appendFormat:@"createdKeyHash: %@; ", self->_createdKeyHash];
  [v3 appendFormat:@"signedData: %@; ", self->_signedData];
  v4 = [(NSURL *)self->_callbackURL description];
  [v3 appendFormat:@"callbackURL: %@; ", v4];

  [v3 appendFormat:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKIssuerBindingData *)self isEqualToIssuerBindingData:v5];
  }

  return v6;
}

- (BOOL)isEqualToIssuerBindingData:(id)data
{
  dataCopy = data;
  v5 = dataCopy;
  if (!dataCopy)
  {
    goto LABEL_21;
  }

  v6 = dataCopy[1];
  v7 = self->_sessionIdentifier;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    if (!v7 || !v8)
    {

      goto LABEL_21;
    }

    v10 = [(NSString *)v7 isEqualToString:v8];

    if (!v10)
    {
      goto LABEL_21;
    }
  }

  createdKeyHash = self->_createdKeyHash;
  v12 = v5[2];
  if (createdKeyHash && v12)
  {
    if (([(NSData *)createdKeyHash isEqual:?]& 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (createdKeyHash != v12)
  {
    goto LABEL_21;
  }

  signedData = self->_signedData;
  v14 = v5[3];
  if (!signedData || !v14)
  {
    if (signedData == v14)
    {
      goto LABEL_17;
    }

LABEL_21:
    v17 = 0;
    goto LABEL_22;
  }

  if (([(NSData *)signedData isEqual:?]& 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  callbackURL = self->_callbackURL;
  v16 = v5[4];
  if (callbackURL && v16)
  {
    v17 = [(NSURL *)callbackURL isEqual:?];
  }

  else
  {
    v17 = callbackURL == v16;
  }

LABEL_22:

  return v17;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_sessionIdentifier];
  [v3 safelyAddObject:self->_createdKeyHash];
  [v3 safelyAddObject:self->_signedData];
  [v3 safelyAddObject:self->_callbackURL];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

@end
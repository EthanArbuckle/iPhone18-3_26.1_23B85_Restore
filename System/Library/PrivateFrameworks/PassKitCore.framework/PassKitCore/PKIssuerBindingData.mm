@interface PKIssuerBindingData
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToIssuerBindingData:(id)a3;
- (PKIssuerBindingData)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKIssuerBindingData

- (PKIssuerBindingData)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKIssuerBindingData;
  v5 = [(PKIssuerBindingData *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionIdentifier"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"createdKeyHash"];
    createdKeyHash = v5->_createdKeyHash;
    v5->_createdKeyHash = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signedData"];
    signedData = v5->_signedData;
    v5->_signedData = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"callbackURL"];
    callbackURL = v5->_callbackURL;
    v5->_callbackURL = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  sessionIdentifier = self->_sessionIdentifier;
  v5 = a3;
  [v5 encodeObject:sessionIdentifier forKey:@"sessionIdentifier"];
  [v5 encodeObject:self->_createdKeyHash forKey:@"createdKeyHash"];
  [v5 encodeObject:self->_signedData forKey:@"signedData"];
  [v5 encodeObject:self->_callbackURL forKey:@"callbackURL"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKIssuerBindingData *)self isEqualToIssuerBindingData:v5];
  }

  return v6;
}

- (BOOL)isEqualToIssuerBindingData:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_21;
  }

  v6 = v4[1];
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
@interface PKApplePayTrustKeyRequest
- (PKApplePayTrustKeyRequest)initWithCoder:(id)coder;
- (PKApplePayTrustKeyRequest)initWithKeyIdentifier:(id)identifier subjectIdentifier:(id)subjectIdentifier;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKApplePayTrustKeyRequest

- (PKApplePayTrustKeyRequest)initWithKeyIdentifier:(id)identifier subjectIdentifier:(id)subjectIdentifier
{
  identifierCopy = identifier;
  subjectIdentifierCopy = subjectIdentifier;
  v12.receiver = self;
  v12.super_class = PKApplePayTrustKeyRequest;
  v9 = [(PKApplePayTrustKeyRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_keyIdentifier, identifier);
    objc_storeStrong(&v10->_subjectIdentifier, subjectIdentifier);
  }

  return v10;
}

- (PKApplePayTrustKeyRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKApplePayTrustKeyRequest;
  v5 = [(PKApplePayTrustKeyRequest *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyIdentifier"];
    keyIdentifier = v5->_keyIdentifier;
    v5->_keyIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subjectIdentifier"];
    subjectIdentifier = v5->_subjectIdentifier;
    v5->_subjectIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  keyIdentifier = self->_keyIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:keyIdentifier forKey:@"keyIdentifier"];
  [coderCopy encodeObject:self->_subjectIdentifier forKey:@"subjectIdentifier"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"keyIdentifier: '%@'; ", self->_keyIdentifier];
  [v3 appendFormat:@"subjectIdentifier: '%@'; ", self->_subjectIdentifier];
  [v3 appendFormat:@">"];

  return v3;
}

@end
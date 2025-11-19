@interface PKIdentityRequest
- (id)asDIIdentityRequest;
- (id)description;
@end

@implementation PKIdentityRequest

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = v3;
  if (self->_descriptor)
  {
    [v3 appendFormat:@"descriptor: %@, ", self->_descriptor];
  }

  if (self->_nonce)
  {
    [v4 appendFormat:@"nonce: %@, ", self->_nonce];
  }

  if (self->_merchantIdentifier)
  {
    [v4 appendFormat:@"merchantIdentifier: %@, ", self->_merchantIdentifier];
  }

  if (self->_merchantNameOverride)
  {
    [v4 appendFormat:@"merchantNameOverride: %@, ", self->_merchantNameOverride];
  }

  if (self->_merchantPrivacyPolicyOverride)
  {
    [v4 appendFormat:@"merchantPrivacyPolicyOverride: %@, ", self->_merchantPrivacyPolicyOverride];
  }

  [v4 appendFormat:@">"];
  v5 = [v4 copy];

  return v5;
}

- (id)asDIIdentityRequest
{
  v3 = objc_alloc_init(MEMORY[0x1E6997DE8]);
  descriptor = self->_descriptor;
  if (descriptor)
  {
    v5 = DIIdentityDocumentDescriptorFromPKIdentityDocumentDescriptor(descriptor);
    [v3 setDescriptor:v5];
  }

  [v3 setNonce:self->_nonce];
  [v3 setMerchantIdentifier:self->_merchantIdentifier];
  [v3 setMerchantNameOverride:self->_merchantNameOverride];
  [v3 setMerchantPrivacyPolicyOverride:self->_merchantPrivacyPolicyOverride];

  return v3;
}

@end
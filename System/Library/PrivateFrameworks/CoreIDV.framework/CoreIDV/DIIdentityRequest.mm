@interface DIIdentityRequest
- (DIIdentityDocumentDescriptor)descriptor;
- (DIIdentityRequest)init;
- (NSData)nonce;
- (NSString)merchantIdentifier;
- (NSString)merchantNameOverride;
- (NSURL)merchantPrivacyPolicyOverride;
- (id)description;
- (void)setDescriptor:(id)descriptor;
- (void)setMerchantIdentifier:(id)identifier;
- (void)setMerchantNameOverride:(id)override;
- (void)setMerchantPrivacyPolicyOverride:(id)override;
- (void)setNonce:(id)nonce;
@end

@implementation DIIdentityRequest

- (DIIdentityRequest)init
{
  v3.receiver = self;
  v3.super_class = DIIdentityRequest;
  result = [(DIIdentityRequest *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (NSString)merchantNameOverride
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_merchantNameOverride;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setMerchantNameOverride:(id)override
{
  overrideCopy = override;
  os_unfair_lock_lock(&self->_lock);
  if (self->_merchantNameOverride != overrideCopy)
  {
    v4 = [(NSString *)overrideCopy copyWithZone:0];
    merchantNameOverride = self->_merchantNameOverride;
    self->_merchantNameOverride = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (DIIdentityDocumentDescriptor)descriptor
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_descriptor;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  os_unfair_lock_lock(&self->_lock);
  descriptor = self->_descriptor;
  self->_descriptor = descriptorCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)merchantIdentifier
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_merchantIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setMerchantIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  if (self->_merchantIdentifier != identifierCopy)
  {
    v4 = [(NSString *)identifierCopy copyWithZone:0];
    merchantIdentifier = self->_merchantIdentifier;
    self->_merchantIdentifier = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSData)nonce
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_nonce;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setNonce:(id)nonce
{
  nonceCopy = nonce;
  os_unfair_lock_lock(&self->_lock);
  if (self->_nonce != nonceCopy)
  {
    v4 = [(NSData *)nonceCopy copyWithZone:0];
    nonce = self->_nonce;
    self->_nonce = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSURL)merchantPrivacyPolicyOverride
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_merchantPrivacyPolicyOverride;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setMerchantPrivacyPolicyOverride:(id)override
{
  overrideCopy = override;
  os_unfair_lock_lock(&self->_lock);
  if (self->_merchantPrivacyPolicyOverride != overrideCopy)
  {
    v4 = [(NSURL *)overrideCopy copyWithZone:0];
    merchantPrivacyPolicyOverride = self->_merchantPrivacyPolicyOverride;
    self->_merchantPrivacyPolicyOverride = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  os_unfair_lock_lock(&self->_lock);
  [v3 appendFormat:@"descriptor: %@, ", self->_descriptor];
  [v3 appendFormat:@"nonce: %@, ", self->_nonce];
  [v3 appendFormat:@"merchantIdentifier: %@, ", self->_merchantIdentifier];
  [v3 appendFormat:@"merchantNameOverride: %@, ", self->_merchantNameOverride];
  absoluteString = [(NSURL *)self->_merchantPrivacyPolicyOverride absoluteString];
  [v3 appendFormat:@"merchantPrivacyPolicyOverride: %@, ", absoluteString];

  os_unfair_lock_unlock(&self->_lock);
  [v3 appendFormat:@">"];

  return v3;
}

@end
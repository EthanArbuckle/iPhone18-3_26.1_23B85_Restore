@interface DCPresentmentSessionOptions
- (DCPresentmentSessionOptions)initWithCoder:(id)coder;
- (DCPresentmentSessionOptions)initWithSessionEncryptionMode:(unint64_t)mode readerAuthenticationPolicy:(unint64_t)policy;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)elementFallbackModes;
- (unint64_t)messageEncodingFormat;
- (unint64_t)readerAuthenticationPolicy;
- (unint64_t)sessionEncryptionMode;
- (void)encodeWithCoder:(id)coder;
- (void)setElementFallbackModes:(unint64_t)modes;
- (void)setMessageEncodingFormat:(unint64_t)format;
- (void)setReaderAuthenticationPolicy:(unint64_t)policy;
- (void)setSessionEncryptionMode:(unint64_t)mode;
@end

@implementation DCPresentmentSessionOptions

- (DCPresentmentSessionOptions)initWithSessionEncryptionMode:(unint64_t)mode readerAuthenticationPolicy:(unint64_t)policy
{
  v7.receiver = self;
  v7.super_class = DCPresentmentSessionOptions;
  result = [(DCPresentmentSessionOptions *)&v7 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
    result->_sessionEncryptionMode = mode;
    result->_readerAuthenticationPolicy = policy;
    result->_elementFallbackModes = 0;
    result->_messageEncodingFormat = 0;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  os_unfair_lock_lock(&self->_lock);
  [coderCopy encodeInteger:self->_sessionEncryptionMode forKey:0x28586D3E0];
  [coderCopy encodeInteger:self->_readerAuthenticationPolicy forKey:0x28586D000];
  [coderCopy encodeInteger:self->_elementFallbackModes forKey:0x28586D420];
  [coderCopy encodeInteger:self->_messageEncodingFormat forKey:0x28586D440];

  os_unfair_lock_unlock(&self->_lock);
}

- (DCPresentmentSessionOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = -[DCPresentmentSessionOptions initWithSessionEncryptionMode:readerAuthenticationPolicy:](self, "initWithSessionEncryptionMode:readerAuthenticationPolicy:", [coderCopy decodeIntegerForKey:0x28586D3E0], objc_msgSend(coderCopy, "decodeIntegerForKey:", 0x28586D000));
  if (v5)
  {
    v5->_elementFallbackModes = [coderCopy decodeIntegerForKey:0x28586D420];
    v5->_messageEncodingFormat = [coderCopy decodeIntegerForKey:0x28586D440];
  }

  return v5;
}

- (id)description
{
  os_unfair_lock_lock(&self->_lock);
  v3 = MEMORY[0x277CCACA8];
  v4 = DCPresentmentSessionEncryptionModeToString(self->_sessionEncryptionMode);
  v5 = DCCredentialReaderAuthenticationPolicyToString(self->_readerAuthenticationPolicy);
  v6 = DCPresentmentElementFallbackModeToString(self->_elementFallbackModes);
  v7 = DCPresentmentMessageEncodingFormatToString(self->_messageEncodingFormat);
  v8 = [v3 stringWithFormat:@"Session encryption mode = %@, Reader authentication policy = %@, Element fallback mode = %@, Message encoding format = %@", v4, v5, v6, v7];

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (unint64_t)sessionEncryptionMode
{
  os_unfair_lock_lock(&self->_lock);
  sessionEncryptionMode = self->_sessionEncryptionMode;
  os_unfair_lock_unlock(&self->_lock);
  return sessionEncryptionMode;
}

- (void)setSessionEncryptionMode:(unint64_t)mode
{
  os_unfair_lock_lock(&self->_lock);
  self->_sessionEncryptionMode = mode;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)readerAuthenticationPolicy
{
  os_unfair_lock_lock(&self->_lock);
  readerAuthenticationPolicy = self->_readerAuthenticationPolicy;
  os_unfair_lock_unlock(&self->_lock);
  return readerAuthenticationPolicy;
}

- (void)setReaderAuthenticationPolicy:(unint64_t)policy
{
  os_unfair_lock_lock(&self->_lock);
  self->_readerAuthenticationPolicy = policy;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)elementFallbackModes
{
  os_unfair_lock_lock(&self->_lock);
  elementFallbackModes = self->_elementFallbackModes;
  os_unfair_lock_unlock(&self->_lock);
  return elementFallbackModes;
}

- (void)setElementFallbackModes:(unint64_t)modes
{
  os_unfair_lock_lock(&self->_lock);
  self->_elementFallbackModes = modes;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)messageEncodingFormat
{
  os_unfair_lock_lock(&self->_lock);
  messageEncodingFormat = self->_messageEncodingFormat;
  os_unfair_lock_unlock(&self->_lock);
  return messageEncodingFormat;
}

- (void)setMessageEncodingFormat:(unint64_t)format
{
  os_unfair_lock_lock(&self->_lock);
  self->_messageEncodingFormat = format;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(DCPresentmentSessionOptions);
  os_unfair_lock_lock(&self->_lock);
  [(DCPresentmentSessionOptions *)v4 setSessionEncryptionMode:self->_sessionEncryptionMode];
  [(DCPresentmentSessionOptions *)v4 setReaderAuthenticationPolicy:self->_readerAuthenticationPolicy];
  [(DCPresentmentSessionOptions *)v4 setElementFallbackModes:self->_elementFallbackModes];
  [(DCPresentmentSessionOptions *)v4 setMessageEncodingFormat:self->_messageEncodingFormat];
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

@end
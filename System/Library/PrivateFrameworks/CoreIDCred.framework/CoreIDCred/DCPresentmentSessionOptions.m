@interface DCPresentmentSessionOptions
- (DCPresentmentSessionOptions)initWithCoder:(id)a3;
- (DCPresentmentSessionOptions)initWithSessionEncryptionMode:(unint64_t)a3 readerAuthenticationPolicy:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)elementFallbackModes;
- (unint64_t)messageEncodingFormat;
- (unint64_t)readerAuthenticationPolicy;
- (unint64_t)sessionEncryptionMode;
- (void)encodeWithCoder:(id)a3;
- (void)setElementFallbackModes:(unint64_t)a3;
- (void)setMessageEncodingFormat:(unint64_t)a3;
- (void)setReaderAuthenticationPolicy:(unint64_t)a3;
- (void)setSessionEncryptionMode:(unint64_t)a3;
@end

@implementation DCPresentmentSessionOptions

- (DCPresentmentSessionOptions)initWithSessionEncryptionMode:(unint64_t)a3 readerAuthenticationPolicy:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = DCPresentmentSessionOptions;
  result = [(DCPresentmentSessionOptions *)&v7 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
    result->_sessionEncryptionMode = a3;
    result->_readerAuthenticationPolicy = a4;
    result->_elementFallbackModes = 0;
    result->_messageEncodingFormat = 0;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [v4 encodeInteger:self->_sessionEncryptionMode forKey:0x28586D3E0];
  [v4 encodeInteger:self->_readerAuthenticationPolicy forKey:0x28586D000];
  [v4 encodeInteger:self->_elementFallbackModes forKey:0x28586D420];
  [v4 encodeInteger:self->_messageEncodingFormat forKey:0x28586D440];

  os_unfair_lock_unlock(&self->_lock);
}

- (DCPresentmentSessionOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = -[DCPresentmentSessionOptions initWithSessionEncryptionMode:readerAuthenticationPolicy:](self, "initWithSessionEncryptionMode:readerAuthenticationPolicy:", [v4 decodeIntegerForKey:0x28586D3E0], objc_msgSend(v4, "decodeIntegerForKey:", 0x28586D000));
  if (v5)
  {
    v5->_elementFallbackModes = [v4 decodeIntegerForKey:0x28586D420];
    v5->_messageEncodingFormat = [v4 decodeIntegerForKey:0x28586D440];
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

- (void)setSessionEncryptionMode:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_sessionEncryptionMode = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)readerAuthenticationPolicy
{
  os_unfair_lock_lock(&self->_lock);
  readerAuthenticationPolicy = self->_readerAuthenticationPolicy;
  os_unfair_lock_unlock(&self->_lock);
  return readerAuthenticationPolicy;
}

- (void)setReaderAuthenticationPolicy:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_readerAuthenticationPolicy = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)elementFallbackModes
{
  os_unfair_lock_lock(&self->_lock);
  elementFallbackModes = self->_elementFallbackModes;
  os_unfair_lock_unlock(&self->_lock);
  return elementFallbackModes;
}

- (void)setElementFallbackModes:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_elementFallbackModes = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)messageEncodingFormat
{
  os_unfair_lock_lock(&self->_lock);
  messageEncodingFormat = self->_messageEncodingFormat;
  os_unfair_lock_unlock(&self->_lock);
  return messageEncodingFormat;
}

- (void)setMessageEncodingFormat:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_messageEncodingFormat = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)copyWithZone:(_NSZone *)a3
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
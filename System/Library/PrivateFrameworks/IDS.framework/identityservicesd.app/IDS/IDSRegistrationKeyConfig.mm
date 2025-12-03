@interface IDSRegistrationKeyConfig
- (void)dealloc;
- (void)setPrivateKey:(__SecKey *)key;
- (void)setPublicKey:(__SecKey *)key;
@end

@implementation IDSRegistrationKeyConfig

- (void)dealloc
{
  privateKey = self->_privateKey;
  if (privateKey)
  {
    CFRelease(privateKey);
    self->_privateKey = 0;
  }

  publicKey = self->_publicKey;
  if (publicKey)
  {
    CFRelease(publicKey);
    self->_publicKey = 0;
  }

  v5.receiver = self;
  v5.super_class = IDSRegistrationKeyConfig;
  [(IDSRegistrationKeyConfig *)&v5 dealloc];
}

- (void)setPublicKey:(__SecKey *)key
{
  publicKey = self->_publicKey;
  if (publicKey != key)
  {
    if (publicKey)
    {
      CFRelease(publicKey);
      self->_publicKey = 0;
    }

    if (key)
    {
      CFRetain(key);
    }

    self->_publicKey = key;
  }
}

- (void)setPrivateKey:(__SecKey *)key
{
  privateKey = self->_privateKey;
  if (privateKey != key)
  {
    if (privateKey)
    {
      CFRelease(privateKey);
      self->_privateKey = 0;
    }

    if (key)
    {
      CFRetain(key);
    }

    self->_privateKey = key;
  }
}

@end
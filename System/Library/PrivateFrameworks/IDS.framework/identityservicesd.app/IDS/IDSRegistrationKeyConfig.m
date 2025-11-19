@interface IDSRegistrationKeyConfig
- (void)dealloc;
- (void)setPrivateKey:(__SecKey *)a3;
- (void)setPublicKey:(__SecKey *)a3;
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

- (void)setPublicKey:(__SecKey *)a3
{
  publicKey = self->_publicKey;
  if (publicKey != a3)
  {
    if (publicKey)
    {
      CFRelease(publicKey);
      self->_publicKey = 0;
    }

    if (a3)
    {
      CFRetain(a3);
    }

    self->_publicKey = a3;
  }
}

- (void)setPrivateKey:(__SecKey *)a3
{
  privateKey = self->_privateKey;
  if (privateKey != a3)
  {
    if (privateKey)
    {
      CFRelease(privateKey);
      self->_privateKey = 0;
    }

    if (a3)
    {
      CFRetain(a3);
    }

    self->_privateKey = a3;
  }
}

@end
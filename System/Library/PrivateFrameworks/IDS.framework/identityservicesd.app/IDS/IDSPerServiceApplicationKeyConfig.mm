@interface IDSPerServiceApplicationKeyConfig
- (IDSPerServiceApplicationKeyConfig)init;
- (void)dealloc;
- (void)setIdentity:(__SecKey *)identity;
@end

@implementation IDSPerServiceApplicationKeyConfig

- (IDSPerServiceApplicationKeyConfig)init
{
  v3.receiver = self;
  v3.super_class = IDSPerServiceApplicationKeyConfig;
  result = [(IDSPerServiceApplicationKeyConfig *)&v3 init];
  if (result)
  {
    result->_identity = 0;
    result->_isRegistered = 0;
  }

  return result;
}

- (void)setIdentity:(__SecKey *)identity
{
  identity = self->_identity;
  if (identity)
  {
    if (identity)
    {
      CFRelease(identity);
      self->_identity = 0;
    }

    v6 = CFRetain(identity);
  }

  else
  {
    if (!identity)
    {
      return;
    }

    CFRelease(identity);
    v6 = 0;
  }

  self->_identity = v6;
}

- (void)dealloc
{
  identity = self->_identity;
  if (identity)
  {
    CFRelease(identity);
    self->_identity = 0;
  }

  v4.receiver = self;
  v4.super_class = IDSPerServiceApplicationKeyConfig;
  [(IDSPerServiceApplicationKeyConfig *)&v4 dealloc];
}

@end
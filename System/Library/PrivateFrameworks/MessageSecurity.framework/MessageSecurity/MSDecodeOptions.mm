@interface MSDecodeOptions
- (MSDecodeOptions)init;
- (MSDecodeOptions)initWithDecryptionIdentity:(__SecIdentity *)identity;
- (MSDecodeOptions)initWithDecryptionKey:(id)key;
- (void)dealloc;
@end

@implementation MSDecodeOptions

- (MSDecodeOptions)init
{
  v7.receiver = self;
  v7.super_class = MSDecodeOptions;
  v2 = [(MSDecodeOptions *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_verifySignatures = 0;
    signerPolicies = v2->_signerPolicies;
    v2->_signerPolicies = 0;

    key = v3->_key;
    v3->_identity = 0;
    v3->_key = 0;
  }

  return v3;
}

- (void)dealloc
{
  identity = self->_identity;
  if (identity)
  {
    self->_identity = 0;
    CFRelease(identity);
  }

  v4.receiver = self;
  v4.super_class = MSDecodeOptions;
  [(MSDecodeOptions *)&v4 dealloc];
}

- (MSDecodeOptions)initWithDecryptionIdentity:(__SecIdentity *)identity
{
  v4 = [(MSDecodeOptions *)self init];
  if (v4)
  {
    if (identity)
    {
      CFRetain(identity);
    }

    v4->_identity = identity;
  }

  return v4;
}

- (MSDecodeOptions)initWithDecryptionKey:(id)key
{
  keyCopy = key;
  v6 = [(MSDecodeOptions *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_key, key);
  }

  return v7;
}

@end
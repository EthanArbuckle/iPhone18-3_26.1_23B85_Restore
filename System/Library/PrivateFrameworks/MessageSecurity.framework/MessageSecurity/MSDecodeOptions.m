@interface MSDecodeOptions
- (MSDecodeOptions)init;
- (MSDecodeOptions)initWithDecryptionIdentity:(__SecIdentity *)a3;
- (MSDecodeOptions)initWithDecryptionKey:(id)a3;
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

- (MSDecodeOptions)initWithDecryptionIdentity:(__SecIdentity *)a3
{
  v4 = [(MSDecodeOptions *)self init];
  if (v4)
  {
    if (a3)
    {
      CFRetain(a3);
    }

    v4->_identity = a3;
  }

  return v4;
}

- (MSDecodeOptions)initWithDecryptionKey:(id)a3
{
  v5 = a3;
  v6 = [(MSDecodeOptions *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_key, a3);
  }

  return v7;
}

@end
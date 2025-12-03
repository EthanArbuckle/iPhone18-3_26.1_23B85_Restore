@interface TetraSigningKeyWrapper
+ (id)generateKeyForTesting;
- (TetraSigningKeyWrapper)initWithSigningKey:(id)key;
- (id)publicKey;
- (id)signDataWithFormatter:(id)formatter error:(id *)error;
@end

@implementation TetraSigningKeyWrapper

- (id)signDataWithFormatter:(id)formatter error:(id *)error
{
  formatterCopy = formatter;
  signingKey = [(TetraSigningKeyWrapper *)self signingKey];
  v8 = [signingKey signDataWithFormatter:formatterCopy error:error];

  return v8;
}

+ (id)generateKeyForTesting
{
  v2 = [TetraSigningKeyWrapper alloc];
  v3 = +[SecKeyP256Private defaultProtectionClassForPlatform];
  v4 = [(FullKey *)SigningKey generateNewKeyWithAccess:v3 error:0];
  v5 = [(TetraSigningKeyWrapper *)v2 initWithSigningKey:v4];

  return v5;
}

- (TetraSigningKeyWrapper)initWithSigningKey:(id)key
{
  keyCopy = key;
  v9.receiver = self;
  v9.super_class = TetraSigningKeyWrapper;
  v6 = [(TetraSigningKeyWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_signingKey, key);
  }

  return v7;
}

- (id)publicKey
{
  v3 = [TetraPublicSigningKeyWrapper alloc];
  publicKey = [(SigningKey *)self->_signingKey publicKey];
  v5 = [(TetraPublicSigningKeyWrapper *)v3 initWithSigningPublicKey:publicKey];

  return v5;
}

@end
@interface TetraSigningKeyWrapper
+ (id)generateKeyForTesting;
- (TetraSigningKeyWrapper)initWithSigningKey:(id)a3;
- (id)publicKey;
- (id)signDataWithFormatter:(id)a3 error:(id *)a4;
@end

@implementation TetraSigningKeyWrapper

- (id)signDataWithFormatter:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(TetraSigningKeyWrapper *)self signingKey];
  v8 = [v7 signDataWithFormatter:v6 error:a4];

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

- (TetraSigningKeyWrapper)initWithSigningKey:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TetraSigningKeyWrapper;
  v6 = [(TetraSigningKeyWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_signingKey, a3);
  }

  return v7;
}

- (id)publicKey
{
  v3 = [TetraPublicSigningKeyWrapper alloc];
  v4 = [(SigningKey *)self->_signingKey publicKey];
  v5 = [(TetraPublicSigningKeyWrapper *)v3 initWithSigningPublicKey:v4];

  return v5;
}

@end
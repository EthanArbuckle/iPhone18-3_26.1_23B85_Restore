@interface CRKInMemoryPrivateKey
- (CRKInMemoryPrivateKey)init;
- (CRKInMemoryPrivateKey)initWithConfiguration:(id)a3;
- (CRKInMemoryPrivateKey)initWithData:(id)a3;
- (NSData)dataRepresentation;
- (__SecKey)underlyingPrivateKey;
@end

@implementation CRKInMemoryPrivateKey

- (CRKInMemoryPrivateKey)init
{
  v3 = objc_opt_new();
  v4 = [(CRKInMemoryPrivateKey *)self initWithConfiguration:v3];

  return v4;
}

- (CRKInMemoryPrivateKey)initWithData:(id)a3
{
  v4 = [CRKIdentityConfiguration configurationWithData:a3];
  v5 = [(CRKInMemoryPrivateKey *)self initWithConfiguration:v4];

  return v5;
}

- (CRKInMemoryPrivateKey)initWithConfiguration:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRKInMemoryPrivateKey;
  v5 = [(CRKInMemoryPrivateKey *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    configuration = v5->_configuration;
    v5->_configuration = v6;
  }

  return v5;
}

- (NSData)dataRepresentation
{
  v2 = [(CRKInMemoryPrivateKey *)self configuration];
  v3 = [v2 dataRepresentation];

  return v3;
}

- (__SecKey)underlyingPrivateKey
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CRKInMemoryPrivateKey.m" lineNumber:47 description:@"Reconsider what you are trying to test"];

  return 0;
}

@end
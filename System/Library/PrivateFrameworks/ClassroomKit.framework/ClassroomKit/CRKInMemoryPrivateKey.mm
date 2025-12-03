@interface CRKInMemoryPrivateKey
- (CRKInMemoryPrivateKey)init;
- (CRKInMemoryPrivateKey)initWithConfiguration:(id)configuration;
- (CRKInMemoryPrivateKey)initWithData:(id)data;
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

- (CRKInMemoryPrivateKey)initWithData:(id)data
{
  v4 = [CRKIdentityConfiguration configurationWithData:data];
  v5 = [(CRKInMemoryPrivateKey *)self initWithConfiguration:v4];

  return v5;
}

- (CRKInMemoryPrivateKey)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = CRKInMemoryPrivateKey;
  v5 = [(CRKInMemoryPrivateKey *)&v9 init];
  if (v5)
  {
    v6 = [configurationCopy copy];
    configuration = v5->_configuration;
    v5->_configuration = v6;
  }

  return v5;
}

- (NSData)dataRepresentation
{
  configuration = [(CRKInMemoryPrivateKey *)self configuration];
  dataRepresentation = [configuration dataRepresentation];

  return dataRepresentation;
}

- (__SecKey)underlyingPrivateKey
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CRKInMemoryPrivateKey.m" lineNumber:47 description:@"Reconsider what you are trying to test"];

  return 0;
}

@end
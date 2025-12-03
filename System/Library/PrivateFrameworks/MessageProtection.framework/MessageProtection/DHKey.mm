@interface DHKey
- (id)description;
- (id)keyAgreementWithPublicKey:(id)key error:(id *)error;
- (id)publicKey;
@end

@implementation DHKey

- (id)publicKey
{
  v2 = [(FullKey *)self key];
  publicKey = [v2 publicKey];

  if (publicKey)
  {
    v4 = [[DHPublicKey alloc] initWithKey:publicKey];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)keyAgreementWithPublicKey:(id)key error:(id *)error
{
  keyCopy = key;
  v7 = [(FullKey *)self key];
  v8 = [keyCopy key];

  v9 = [v7 keyAgreement:v8 error:error];

  return v9;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  publicKey = [(DHKey *)self publicKey];
  dataRepresentation = [publicKey dataRepresentation];
  v5 = [v2 stringWithFormat:@"DHKey with public data representation: %@", dataRepresentation];

  return v5;
}

@end
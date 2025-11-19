@interface DHKey
- (id)description;
- (id)keyAgreementWithPublicKey:(id)a3 error:(id *)a4;
- (id)publicKey;
@end

@implementation DHKey

- (id)publicKey
{
  v2 = [(FullKey *)self key];
  v3 = [v2 publicKey];

  if (v3)
  {
    v4 = [[DHPublicKey alloc] initWithKey:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)keyAgreementWithPublicKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(FullKey *)self key];
  v8 = [v6 key];

  v9 = [v7 keyAgreement:v8 error:a4];

  return v9;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(DHKey *)self publicKey];
  v4 = [v3 dataRepresentation];
  v5 = [v2 stringWithFormat:@"DHKey with public data representation: %@", v4];

  return v5;
}

@end
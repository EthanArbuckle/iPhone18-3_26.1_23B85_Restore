@interface SigningPublicKey
- (BOOL)verifySignature:(id)a3 formatter:(id)a4;
- (BOOL)verifySignature:(id)a3 ofData:(id)a4;
- (id)description;
- (id)tetraWrapped;
@end

@implementation SigningPublicKey

- (BOOL)verifySignature:(id)a3 formatter:(id)a4
{
  v6 = a3;
  v7 = [a4 signedData];
  LOBYTE(self) = [(SigningPublicKey *)self verifySignature:v6 ofData:v7];

  return self;
}

- (BOOL)verifySignature:(id)a3 ofData:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PublicKey *)self key];
  v9 = [v8 verifySignature:v7 data:v6];

  return v9;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(PublicKey *)self dataRepresentation];
  v4 = [v2 stringWithFormat:@"SigningPublicKey with data representation: %@", v3];

  return v4;
}

- (id)tetraWrapped
{
  v2 = [[TetraPublicSigningKeyWrapper alloc] initWithSigningPublicKey:self];

  return v2;
}

@end
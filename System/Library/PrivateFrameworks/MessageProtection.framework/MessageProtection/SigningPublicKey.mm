@interface SigningPublicKey
- (BOOL)verifySignature:(id)signature formatter:(id)formatter;
- (BOOL)verifySignature:(id)signature ofData:(id)data;
- (id)description;
- (id)tetraWrapped;
@end

@implementation SigningPublicKey

- (BOOL)verifySignature:(id)signature formatter:(id)formatter
{
  signatureCopy = signature;
  signedData = [formatter signedData];
  LOBYTE(self) = [(SigningPublicKey *)self verifySignature:signatureCopy ofData:signedData];

  return self;
}

- (BOOL)verifySignature:(id)signature ofData:(id)data
{
  dataCopy = data;
  signatureCopy = signature;
  v8 = [(PublicKey *)self key];
  v9 = [v8 verifySignature:signatureCopy data:dataCopy];

  return v9;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  dataRepresentation = [(PublicKey *)self dataRepresentation];
  v4 = [v2 stringWithFormat:@"SigningPublicKey with data representation: %@", dataRepresentation];

  return v4;
}

- (id)tetraWrapped
{
  v2 = [[TetraPublicSigningKeyWrapper alloc] initWithSigningPublicKey:self];

  return v2;
}

@end
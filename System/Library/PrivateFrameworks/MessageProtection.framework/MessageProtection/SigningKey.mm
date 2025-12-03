@interface SigningKey
- (id)description;
- (id)publicKey;
- (id)signData:(id)data error:(id *)error;
- (id)signDataWithFormatter:(id)formatter error:(id *)error;
- (id)tetraWrapped;
@end

@implementation SigningKey

- (id)tetraWrapped
{
  v2 = [[TetraSigningKeyWrapper alloc] initWithSigningKey:self];

  return v2;
}

- (id)publicKey
{
  publicKey = self->__publicKey;
  if (publicKey)
  {
    v3 = publicKey;
  }

  else
  {
    v5 = [(FullKey *)self key];
    publicKey = [v5 publicKey];

    if (publicKey)
    {
      v7 = [[SigningPublicKey alloc] initWithKey:publicKey];
      v8 = self->__publicKey;
      self->__publicKey = v7;

      v3 = self->__publicKey;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)signData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = [(FullKey *)self key];
  v8 = [v7 signData:dataCopy error:error];

  return v8;
}

- (id)signDataWithFormatter:(id)formatter error:(id *)error
{
  signedData = [formatter signedData];
  v7 = [(SigningKey *)self signData:signedData error:error];

  return v7;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  publicKey = [(SigningKey *)self publicKey];
  dataRepresentation = [publicKey dataRepresentation];
  v5 = [v2 stringWithFormat:@"SigningKey with public data representation: %@", dataRepresentation];

  return v5;
}

@end
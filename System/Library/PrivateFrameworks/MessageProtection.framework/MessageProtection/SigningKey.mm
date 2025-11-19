@interface SigningKey
- (id)description;
- (id)publicKey;
- (id)signData:(id)a3 error:(id *)a4;
- (id)signDataWithFormatter:(id)a3 error:(id *)a4;
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
    v6 = [v5 publicKey];

    if (v6)
    {
      v7 = [[SigningPublicKey alloc] initWithKey:v6];
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

- (id)signData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(FullKey *)self key];
  v8 = [v7 signData:v6 error:a4];

  return v8;
}

- (id)signDataWithFormatter:(id)a3 error:(id *)a4
{
  v6 = [a3 signedData];
  v7 = [(SigningKey *)self signData:v6 error:a4];

  return v7;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(SigningKey *)self publicKey];
  v4 = [v3 dataRepresentation];
  v5 = [v2 stringWithFormat:@"SigningKey with public data representation: %@", v4];

  return v5;
}

@end
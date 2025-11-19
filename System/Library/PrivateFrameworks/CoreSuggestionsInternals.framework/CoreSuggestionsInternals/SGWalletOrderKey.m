@interface SGWalletOrderKey
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToWalletOrderKey:(id)a3;
- (NSString)description;
- (SGWalletOrderKey)initWithIdentifier:(id)a3;
@end

@implementation SGWalletOrderKey

- (NSString)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"[SGWalletOrderKey identifier: %@", self->_identifier];

  return v2;
}

- (BOOL)isEqualToWalletOrderKey:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    v5 = self->_identifier;
    v6 = v5;
    if (v5 == v4->_identifier)
    {
      v7 = 1;
    }

    else
    {
      v7 = [(NSString *)v5 isEqual:?];
    }
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGWalletOrderKey *)self isEqualToWalletOrderKey:v5];
  }

  return v6;
}

- (SGWalletOrderKey)initWithIdentifier:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"SGWalletOrderKey.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v11.receiver = self;
  v11.super_class = SGWalletOrderKey;
  v7 = [(SGWalletOrderKey *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_identifier, a3);
  }

  return v8;
}

@end
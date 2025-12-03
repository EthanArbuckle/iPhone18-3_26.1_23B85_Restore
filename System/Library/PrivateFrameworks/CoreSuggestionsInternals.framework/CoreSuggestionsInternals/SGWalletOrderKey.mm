@interface SGWalletOrderKey
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToWalletOrderKey:(id)key;
- (NSString)description;
- (SGWalletOrderKey)initWithIdentifier:(id)identifier;
@end

@implementation SGWalletOrderKey

- (NSString)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"[SGWalletOrderKey identifier: %@", self->_identifier];

  return v2;
}

- (BOOL)isEqualToWalletOrderKey:(id)key
{
  keyCopy = key;
  if (keyCopy == self)
  {
    v7 = 1;
  }

  else
  {
    v5 = self->_identifier;
    v6 = v5;
    if (v5 == keyCopy->_identifier)
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGWalletOrderKey *)self isEqualToWalletOrderKey:v5];
  }

  return v6;
}

- (SGWalletOrderKey)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGWalletOrderKey.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v11.receiver = self;
  v11.super_class = SGWalletOrderKey;
  v7 = [(SGWalletOrderKey *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_identifier, identifier);
  }

  return v8;
}

@end
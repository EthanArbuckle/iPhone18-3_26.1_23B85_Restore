@interface PKSearchAccountResult
- (BOOL)isEqual:(id)equal;
- (PKSearchAccountResult)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
@end

@implementation PKSearchAccountResult

- (PKSearchAccountResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PKSearchAccountResult *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v6;
  }

  return v5;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = PKSearchAccountResult;
  v3 = [(PKSearchAccountResult *)&v6 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@"accountIdentifier: '%@'; ", self->_accountIdentifier];
  [v4 appendFormat:@">"];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    accountIdentifier = self->_accountIdentifier;
    v6 = equalCopy[1];
    if (accountIdentifier && v6)
    {
      v7 = [(NSString *)accountIdentifier isEqual:?];
    }

    else
    {
      v7 = accountIdentifier == v6;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_accountIdentifier];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

@end
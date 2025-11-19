@interface PKSearchTransactionGroupResult
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PKSearchTransactionGroupResult)initWithCoder:(id)a3;
- (unint64_t)hash;
@end

@implementation PKSearchTransactionGroupResult

- (PKSearchTransactionGroupResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKSearchTransactionGroupResult *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"group"];
    group = v5->_group;
    v5->_group = v6;
  }

  return v5;
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = PKSearchTransactionGroupResult;
  v3 = [(PKSearchTransactionGroupResult *)&v6 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@"group: '%@'; ", self->_group];
  [v4 appendFormat:@">"];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    group = self->_group;
    v6 = v4[1];
    if (group && v6)
    {
      v7 = [(PKPaymentTransactionGroup *)group isEqual:?];
    }

    else
    {
      v7 = group == v6;
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
  [v3 safelyAddObject:self->_group];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

@end
@interface PKSearchTransactionRewardsResult
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PKSearchTransactionRewardsResult)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKSearchTransactionRewardsResult

- (void)encodeWithCoder:(id)coder
{
  rewardsValueUnit = self->_rewardsValueUnit;
  coderCopy = coder;
  [coderCopy encodeInteger:rewardsValueUnit forKey:@"rewardsValueUnit"];
  [coderCopy encodeObject:self->_rewardsValue forKey:@"rewardsValue"];
}

- (PKSearchTransactionRewardsResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PKSearchTransactionRewardsResult *)self init];
  if (v5)
  {
    v5->_rewardsValueUnit = [coderCopy decodeIntegerForKey:@"rewardsValueUnit"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rewardsValue"];
    rewardsValue = v5->_rewardsValue;
    v5->_rewardsValue = v6;
  }

  return v5;
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = PKSearchTransactionRewardsResult;
  v3 = [(PKSearchTransactionRewardsResult *)&v6 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@"rewardsValueUnit: '%lu'; ", self->_rewardsValueUnit];
  [v4 appendFormat:@"rewardsValue: '%@'; ", self->_rewardsValue];
  [v4 appendFormat:@">"];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  rewardsValue = self->_rewardsValue;
  v6 = equalCopy[1];
  if (!rewardsValue || !v6)
  {
    if (rewardsValue == v6)
    {
      goto LABEL_5;
    }

LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  if (([(NSDecimalNumber *)rewardsValue isEqual:?]& 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_5:
  v7 = self->_rewardsValueUnit == equalCopy[2];
LABEL_8:

  return v7;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_rewardsValue];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_rewardsValueUnit - v4 + 32 * v4;

  return v5;
}

@end
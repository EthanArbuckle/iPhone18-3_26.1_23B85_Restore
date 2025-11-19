@interface PKSavingsAccountStepUpDetails
- (BOOL)isEqual:(id)a3;
- (PKSavingsAccountStepUpDetails)initWithCoder:(id)a3;
- (PKSavingsAccountStepUpDetails)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKSavingsAccountStepUpDetails

- (PKSavingsAccountStepUpDetails)initWithDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10.receiver = self;
    v10.super_class = PKSavingsAccountStepUpDetails;
    v5 = [(PKSavingsAccountStepUpDetails *)&v10 init];
    if (v5)
    {
      v5->_thresholdExceeded = [v4 PKBoolForKey:@"thresholdExceeded"];
      v6 = [v4 PKDateForKey:@"neededBy"];
      neededBy = v5->_neededBy;
      v5->_neededBy = v6;
    }

    self = v5;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PKSavingsAccountStepUpDetails)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKSavingsAccountStepUpDetails *)self init];
  if (v5)
  {
    v5->_thresholdExceeded = [v4 decodeBoolForKey:@"thresholdExceeded"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"neededBy"];
    neededBy = v5->_neededBy;
    v5->_neededBy = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  thresholdExceeded = self->_thresholdExceeded;
  v5 = a3;
  [v5 encodeBool:thresholdExceeded forKey:@"thresholdExceeded"];
  [v5 encodeObject:self->_neededBy forKey:@"neededBy"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && self->_thresholdExceeded == *(v4 + 8))
  {
    neededBy = self->_neededBy;
    v6 = v4[2];
    if (neededBy && v6)
    {
      v7 = [(NSDate *)neededBy isEqual:?];
    }

    else
    {
      v7 = neededBy == v6;
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
  [v3 safelyAddObject:self->_neededBy];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_thresholdExceeded - v4 + 32 * v4;

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = v3;
  if (self->_thresholdExceeded)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 appendFormat:@"thresholdExceeded: '%@'; ", v5];
  v6 = [(NSDate *)self->_neededBy description];
  [v4 appendFormat:@"neededBy: '%@'; ", v6];

  [v4 appendFormat:@">"];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[PKSavingsAccountStepUpDetails allocWithZone:?]];
  v4->_thresholdExceeded = self->_thresholdExceeded;
  objc_storeStrong(&v4->_neededBy, self->_neededBy);
  return v4;
}

@end
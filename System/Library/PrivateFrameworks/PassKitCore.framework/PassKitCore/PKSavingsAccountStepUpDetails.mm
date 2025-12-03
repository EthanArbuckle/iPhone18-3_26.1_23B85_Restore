@interface PKSavingsAccountStepUpDetails
- (BOOL)isEqual:(id)equal;
- (PKSavingsAccountStepUpDetails)initWithCoder:(id)coder;
- (PKSavingsAccountStepUpDetails)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKSavingsAccountStepUpDetails

- (PKSavingsAccountStepUpDetails)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v10.receiver = self;
    v10.super_class = PKSavingsAccountStepUpDetails;
    v5 = [(PKSavingsAccountStepUpDetails *)&v10 init];
    if (v5)
    {
      v5->_thresholdExceeded = [dictionaryCopy PKBoolForKey:@"thresholdExceeded"];
      v6 = [dictionaryCopy PKDateForKey:@"neededBy"];
      neededBy = v5->_neededBy;
      v5->_neededBy = v6;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PKSavingsAccountStepUpDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PKSavingsAccountStepUpDetails *)self init];
  if (v5)
  {
    v5->_thresholdExceeded = [coderCopy decodeBoolForKey:@"thresholdExceeded"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"neededBy"];
    neededBy = v5->_neededBy;
    v5->_neededBy = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  thresholdExceeded = self->_thresholdExceeded;
  coderCopy = coder;
  [coderCopy encodeBool:thresholdExceeded forKey:@"thresholdExceeded"];
  [coderCopy encodeObject:self->_neededBy forKey:@"neededBy"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && self->_thresholdExceeded == *(equalCopy + 8))
  {
    neededBy = self->_neededBy;
    v6 = equalCopy[2];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[PKSavingsAccountStepUpDetails allocWithZone:?]];
  v4->_thresholdExceeded = self->_thresholdExceeded;
  objc_storeStrong(&v4->_neededBy, self->_neededBy);
  return v4;
}

@end
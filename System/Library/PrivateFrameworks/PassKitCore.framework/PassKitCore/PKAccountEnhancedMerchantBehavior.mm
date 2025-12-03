@interface PKAccountEnhancedMerchantBehavior
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAccountEnhancedMerchantBehavior:(id)behavior;
- (PKAccountEnhancedMerchantBehavior)initWithCoder:(id)coder;
- (PKAccountEnhancedMerchantBehavior)initWithDictionary:(id)dictionary;
- (PKAccountEnhancedMerchantBehavior)initWithMinRefreshPeriod:(id)period;
- (double)cooldownPeriodForLevel:(unint64_t)level;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAccountEnhancedMerchantBehavior

- (PKAccountEnhancedMerchantBehavior)initWithMinRefreshPeriod:(id)period
{
  periodCopy = period;
  v8.receiver = self;
  v8.super_class = PKAccountEnhancedMerchantBehavior;
  v5 = [(PKAccountEnhancedMerchantBehavior *)&v8 init];
  if (v5)
  {
    if (periodCopy)
    {
      [periodCopy doubleValue];
    }

    else
    {
      v6 = 0x4092C00000000000;
    }

    *&v5->_minRefreshPeriod = v6;
    *&v5->_shortMinRefreshPeriod = xmmword_1ADB99630;
  }

  return v5;
}

- (PKAccountEnhancedMerchantBehavior)initWithDictionary:(id)dictionary
{
  v4 = [dictionary PKNumberForKey:@"minRefreshPeriod"];
  v5 = [(PKAccountEnhancedMerchantBehavior *)self initWithMinRefreshPeriod:v4];

  return v5;
}

- (double)cooldownPeriodForLevel:(unint64_t)level
{
  if (level <= 1)
  {
    result = 0.0;
    if (!level)
    {
      return result;
    }

    if (level == 1)
    {
      v3 = 16;
      return *(&self->super.isa + v3);
    }

LABEL_7:
    v3 = 8;
    return *(&self->super.isa + v3);
  }

  if (level != 3)
  {
    goto LABEL_7;
  }

  v3 = 24;
  return *(&self->super.isa + v3);
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"minRefreshPeriod: '%f'; ", *&self->_minRefreshPeriod];
  [v3 appendFormat:@"shortMinRefreshPeriod: '%f'; ", *&self->_shortMinRefreshPeriod];
  [v3 appendFormat:@"longRefreshPeriod: '%f'; ", *&self->_longMinRefreshPeriod];
  [v3 appendFormat:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAccountEnhancedMerchantBehavior *)self isEqualToAccountEnhancedMerchantBehavior:v5];
  }

  return v6;
}

- (BOOL)isEqualToAccountEnhancedMerchantBehavior:(id)behavior
{
  behaviorCopy = behavior;
  v5 = behaviorCopy && self->_minRefreshPeriod == behaviorCopy[1] && self->_shortMinRefreshPeriod == behaviorCopy[2] && self->_longMinRefreshPeriod == behaviorCopy[3];

  return v5;
}

- (PKAccountEnhancedMerchantBehavior)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = PKAccountEnhancedMerchantBehavior;
  v5 = [(PKAccountEnhancedMerchantBehavior *)&v10 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"minRefreshPeriod"];
    v5->_minRefreshPeriod = v6;
    [coderCopy decodeDoubleForKey:@"shortMinRefreshPeriod"];
    v5->_shortMinRefreshPeriod = v7;
    [coderCopy decodeDoubleForKey:@"longMinRefreshPeriod"];
    v5->_longMinRefreshPeriod = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  minRefreshPeriod = self->_minRefreshPeriod;
  coderCopy = coder;
  [coderCopy encodeDouble:@"minRefreshPeriod" forKey:minRefreshPeriod];
  [coderCopy encodeDouble:@"shortMinRefreshPeriod" forKey:self->_shortMinRefreshPeriod];
  [coderCopy encodeDouble:@"longMinRefreshPeriod" forKey:self->_longMinRefreshPeriod];
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 1) = *&self->_minRefreshPeriod;
  *(result + 2) = *&self->_shortMinRefreshPeriod;
  *(result + 3) = *&self->_longMinRefreshPeriod;
  return result;
}

@end
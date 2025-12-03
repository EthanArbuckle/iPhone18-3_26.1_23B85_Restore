@interface PKAccountPromotionBehavior
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAccountPromotionBehavior:(id)behavior;
- (PKAccountPromotionBehavior)initWithCoder:(id)coder;
- (PKAccountPromotionBehavior)initWithDictionary:(id)dictionary;
- (PKAccountPromotionBehavior)initWithMinRefreshPeriod:(id)period maxImpressionCount:(id)count timeVisibleAfterCompleted:(id)completed;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAccountPromotionBehavior

- (PKAccountPromotionBehavior)initWithMinRefreshPeriod:(id)period maxImpressionCount:(id)count timeVisibleAfterCompleted:(id)completed
{
  periodCopy = period;
  countCopy = count;
  completedCopy = completed;
  v16.receiver = self;
  v16.super_class = PKAccountPromotionBehavior;
  v11 = [(PKAccountPromotionBehavior *)&v16 init];
  if (v11)
  {
    if (periodCopy)
    {
      [periodCopy doubleValue];
    }

    else
    {
      v12 = 0x4092C00000000000;
    }

    *&v11->_minRefreshPeriod = v12;
    if (countCopy)
    {
      integerValue = [countCopy integerValue];
    }

    else
    {
      integerValue = 1;
    }

    v11->_maxImpressionCount = integerValue;
    if (completedCopy)
    {
      [completedCopy doubleValue];
    }

    else
    {
      v14 = 0x4122750000000000;
    }

    *&v11->_timeVisibleAfterCompleted = v14;
  }

  return v11;
}

- (PKAccountPromotionBehavior)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy PKNumberForKey:@"minRefreshPeriod"];
  v6 = [dictionaryCopy PKNumberForKey:@"maxImpressionCount"];
  v7 = [dictionaryCopy PKNumberForKey:@"timeVisibleAfterCompleted"];

  v8 = [(PKAccountPromotionBehavior *)self initWithMinRefreshPeriod:v5 maxImpressionCount:v6 timeVisibleAfterCompleted:v7];
  return v8;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"minRefreshPeriod: '%f'; ", *&self->_minRefreshPeriod];
  [v3 appendFormat:@"maxImpressionCount: '%ld'; ", self->_maxImpressionCount];
  [v3 appendFormat:@"timeVisibleAfterCompleted: '%f'; ", *&self->_timeVisibleAfterCompleted];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAccountPromotionBehavior *)self isEqualToAccountPromotionBehavior:v5];
  }

  return v6;
}

- (BOOL)isEqualToAccountPromotionBehavior:(id)behavior
{
  behaviorCopy = behavior;
  v5 = behaviorCopy && self->_minRefreshPeriod == behaviorCopy[1] && self->_maxImpressionCount == *(behaviorCopy + 2) && self->_timeVisibleAfterCompleted == behaviorCopy[3];

  return v5;
}

- (PKAccountPromotionBehavior)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKAccountPromotionBehavior;
  v5 = [(PKAccountPromotionBehavior *)&v9 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"minRefreshPeriod"];
    v5->_minRefreshPeriod = v6;
    v5->_maxImpressionCount = [coderCopy decodeIntegerForKey:@"maxImpressionCount"];
    [coderCopy decodeDoubleForKey:@"timeVisibleAfterCompleted"];
    v5->_timeVisibleAfterCompleted = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  minRefreshPeriod = self->_minRefreshPeriod;
  coderCopy = coder;
  [coderCopy encodeDouble:@"minRefreshPeriod" forKey:minRefreshPeriod];
  [coderCopy encodeInteger:self->_maxImpressionCount forKey:@"maxImpressionCount"];
  [coderCopy encodeDouble:@"timeVisibleAfterCompleted" forKey:self->_timeVisibleAfterCompleted];
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 1) = *&self->_minRefreshPeriod;
  *(result + 2) = self->_maxImpressionCount;
  *(result + 3) = *&self->_timeVisibleAfterCompleted;
  return result;
}

@end
@interface PKAccountPromotionBehavior
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAccountPromotionBehavior:(id)a3;
- (PKAccountPromotionBehavior)initWithCoder:(id)a3;
- (PKAccountPromotionBehavior)initWithDictionary:(id)a3;
- (PKAccountPromotionBehavior)initWithMinRefreshPeriod:(id)a3 maxImpressionCount:(id)a4 timeVisibleAfterCompleted:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAccountPromotionBehavior

- (PKAccountPromotionBehavior)initWithMinRefreshPeriod:(id)a3 maxImpressionCount:(id)a4 timeVisibleAfterCompleted:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = PKAccountPromotionBehavior;
  v11 = [(PKAccountPromotionBehavior *)&v16 init];
  if (v11)
  {
    if (v8)
    {
      [v8 doubleValue];
    }

    else
    {
      v12 = 0x4092C00000000000;
    }

    *&v11->_minRefreshPeriod = v12;
    if (v9)
    {
      v13 = [v9 integerValue];
    }

    else
    {
      v13 = 1;
    }

    v11->_maxImpressionCount = v13;
    if (v10)
    {
      [v10 doubleValue];
    }

    else
    {
      v14 = 0x4122750000000000;
    }

    *&v11->_timeVisibleAfterCompleted = v14;
  }

  return v11;
}

- (PKAccountPromotionBehavior)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 PKNumberForKey:@"minRefreshPeriod"];
  v6 = [v4 PKNumberForKey:@"maxImpressionCount"];
  v7 = [v4 PKNumberForKey:@"timeVisibleAfterCompleted"];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAccountPromotionBehavior *)self isEqualToAccountPromotionBehavior:v5];
  }

  return v6;
}

- (BOOL)isEqualToAccountPromotionBehavior:(id)a3
{
  v4 = a3;
  v5 = v4 && self->_minRefreshPeriod == v4[1] && self->_maxImpressionCount == *(v4 + 2) && self->_timeVisibleAfterCompleted == v4[3];

  return v5;
}

- (PKAccountPromotionBehavior)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKAccountPromotionBehavior;
  v5 = [(PKAccountPromotionBehavior *)&v9 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"minRefreshPeriod"];
    v5->_minRefreshPeriod = v6;
    v5->_maxImpressionCount = [v4 decodeIntegerForKey:@"maxImpressionCount"];
    [v4 decodeDoubleForKey:@"timeVisibleAfterCompleted"];
    v5->_timeVisibleAfterCompleted = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  minRefreshPeriod = self->_minRefreshPeriod;
  v5 = a3;
  [v5 encodeDouble:@"minRefreshPeriod" forKey:minRefreshPeriod];
  [v5 encodeInteger:self->_maxImpressionCount forKey:@"maxImpressionCount"];
  [v5 encodeDouble:@"timeVisibleAfterCompleted" forKey:self->_timeVisibleAfterCompleted];
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 1) = *&self->_minRefreshPeriod;
  *(result + 2) = self->_maxImpressionCount;
  *(result + 3) = *&self->_timeVisibleAfterCompleted;
  return result;
}

@end
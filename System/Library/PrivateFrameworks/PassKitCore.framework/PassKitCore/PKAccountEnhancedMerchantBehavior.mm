@interface PKAccountEnhancedMerchantBehavior
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAccountEnhancedMerchantBehavior:(id)a3;
- (PKAccountEnhancedMerchantBehavior)initWithCoder:(id)a3;
- (PKAccountEnhancedMerchantBehavior)initWithDictionary:(id)a3;
- (PKAccountEnhancedMerchantBehavior)initWithMinRefreshPeriod:(id)a3;
- (double)cooldownPeriodForLevel:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAccountEnhancedMerchantBehavior

- (PKAccountEnhancedMerchantBehavior)initWithMinRefreshPeriod:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKAccountEnhancedMerchantBehavior;
  v5 = [(PKAccountEnhancedMerchantBehavior *)&v8 init];
  if (v5)
  {
    if (v4)
    {
      [v4 doubleValue];
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

- (PKAccountEnhancedMerchantBehavior)initWithDictionary:(id)a3
{
  v4 = [a3 PKNumberForKey:@"minRefreshPeriod"];
  v5 = [(PKAccountEnhancedMerchantBehavior *)self initWithMinRefreshPeriod:v4];

  return v5;
}

- (double)cooldownPeriodForLevel:(unint64_t)a3
{
  if (a3 <= 1)
  {
    result = 0.0;
    if (!a3)
    {
      return result;
    }

    if (a3 == 1)
    {
      v3 = 16;
      return *(&self->super.isa + v3);
    }

LABEL_7:
    v3 = 8;
    return *(&self->super.isa + v3);
  }

  if (a3 != 3)
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAccountEnhancedMerchantBehavior *)self isEqualToAccountEnhancedMerchantBehavior:v5];
  }

  return v6;
}

- (BOOL)isEqualToAccountEnhancedMerchantBehavior:(id)a3
{
  v4 = a3;
  v5 = v4 && self->_minRefreshPeriod == v4[1] && self->_shortMinRefreshPeriod == v4[2] && self->_longMinRefreshPeriod == v4[3];

  return v5;
}

- (PKAccountEnhancedMerchantBehavior)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKAccountEnhancedMerchantBehavior;
  v5 = [(PKAccountEnhancedMerchantBehavior *)&v10 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"minRefreshPeriod"];
    v5->_minRefreshPeriod = v6;
    [v4 decodeDoubleForKey:@"shortMinRefreshPeriod"];
    v5->_shortMinRefreshPeriod = v7;
    [v4 decodeDoubleForKey:@"longMinRefreshPeriod"];
    v5->_longMinRefreshPeriod = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  minRefreshPeriod = self->_minRefreshPeriod;
  v5 = a3;
  [v5 encodeDouble:@"minRefreshPeriod" forKey:minRefreshPeriod];
  [v5 encodeDouble:@"shortMinRefreshPeriod" forKey:self->_shortMinRefreshPeriod];
  [v5 encodeDouble:@"longMinRefreshPeriod" forKey:self->_longMinRefreshPeriod];
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 1) = *&self->_minRefreshPeriod;
  *(result + 2) = *&self->_shortMinRefreshPeriod;
  *(result + 3) = *&self->_longMinRefreshPeriod;
  return result;
}

@end
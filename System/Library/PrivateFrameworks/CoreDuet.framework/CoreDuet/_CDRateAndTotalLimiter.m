@interface _CDRateAndTotalLimiter
- (BOOL)credit;
- (BOOL)debited;
- (_CDRateAndTotalLimiter)initWithCount:(int64_t)a3 perPeriod:(double)a4 totalCountLimit:(int64_t)a5;
- (id)description;
@end

@implementation _CDRateAndTotalLimiter

- (BOOL)debited
{
  v2 = self;
  objc_sync_enter(v2);
  v7.receiver = v2;
  v7.super_class = _CDRateAndTotalLimiter;
  if (![(_CDRateLimiter *)&v7 debited])
  {
    goto LABEL_5;
  }

  currentTotal = v2->_currentTotal;
  v2->_currentTotal = currentTotal + 1;
  if (currentTotal >= v2->_totalCount)
  {
    v2->_currentTotal = currentTotal;
    v6.receiver = v2;
    v6.super_class = _CDRateAndTotalLimiter;
    [(_CDRateLimiter *)&v6 credit];
LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v4 = 1;
LABEL_6:
  objc_sync_exit(v2);

  return v4;
}

- (_CDRateAndTotalLimiter)initWithCount:(int64_t)a3 perPeriod:(double)a4 totalCountLimit:(int64_t)a5
{
  v7.receiver = self;
  v7.super_class = _CDRateAndTotalLimiter;
  result = [(_CDRateLimiter *)&v7 initWithCount:a3 perPeriod:a4];
  if (result)
  {
    result->_totalCount = a5;
  }

  return result;
}

- (BOOL)credit
{
  v2 = self;
  objc_sync_enter(v2);
  v5.receiver = v2;
  v5.super_class = _CDRateAndTotalLimiter;
  v3 = [(_CDRateLimiter *)&v5 credit];
  --v2->_currentTotal;
  objc_sync_exit(v2);

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(_CDRateLimiter *)self period];
  v7 = [v3 stringWithFormat:@"%@: { period=%f, count=%ld, totalCount=%ld }", v5, v6, -[_CDRateLimiter count](self, "count"), -[_CDRateAndTotalLimiter totalCount](self, "totalCount")];

  return v7;
}

@end
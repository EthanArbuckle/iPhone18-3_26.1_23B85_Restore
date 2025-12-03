@interface _CDRateAndTotalLimiter
- (BOOL)credit;
- (BOOL)debited;
- (_CDRateAndTotalLimiter)initWithCount:(int64_t)count perPeriod:(double)period totalCountLimit:(int64_t)limit;
- (id)description;
@end

@implementation _CDRateAndTotalLimiter

- (BOOL)debited
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7.receiver = selfCopy;
  v7.super_class = _CDRateAndTotalLimiter;
  if (![(_CDRateLimiter *)&v7 debited])
  {
    goto LABEL_5;
  }

  currentTotal = selfCopy->_currentTotal;
  selfCopy->_currentTotal = currentTotal + 1;
  if (currentTotal >= selfCopy->_totalCount)
  {
    selfCopy->_currentTotal = currentTotal;
    v6.receiver = selfCopy;
    v6.super_class = _CDRateAndTotalLimiter;
    [(_CDRateLimiter *)&v6 credit];
LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v4 = 1;
LABEL_6:
  objc_sync_exit(selfCopy);

  return v4;
}

- (_CDRateAndTotalLimiter)initWithCount:(int64_t)count perPeriod:(double)period totalCountLimit:(int64_t)limit
{
  v7.receiver = self;
  v7.super_class = _CDRateAndTotalLimiter;
  result = [(_CDRateLimiter *)&v7 initWithCount:count perPeriod:period];
  if (result)
  {
    result->_totalCount = limit;
  }

  return result;
}

- (BOOL)credit
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5.receiver = selfCopy;
  v5.super_class = _CDRateAndTotalLimiter;
  credit = [(_CDRateLimiter *)&v5 credit];
  --selfCopy->_currentTotal;
  objc_sync_exit(selfCopy);

  return credit;
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
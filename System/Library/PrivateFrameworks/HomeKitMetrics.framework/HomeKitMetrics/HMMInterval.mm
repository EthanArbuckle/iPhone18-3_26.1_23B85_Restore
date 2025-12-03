@interface HMMInterval
+ (id)closedClosedIntervalFromStart:(id)start toEnd:(id)end;
+ (id)closedOpenIntervalFromStart:(id)start toEnd:(id)end;
+ (id)openClosedIntervalFromStart:(id)start toEnd:(id)end;
+ (id)openOpenIntervalFromStart:(id)start toEnd:(id)end;
+ (void)initialize;
- (id)initFromStart:(id)start toEnd:(id)end;
- (id)labelString;
@end

@implementation HMMInterval

- (id)labelString
{
  start = [(HMMInterval *)self start];
  v4 = [(HMMInterval *)self end];
  v5 = [start isEqualToNumber:v4];

  start2 = [(HMMInterval *)self start];
  v7 = start2;
  if (v5)
  {
    allNumbersIntervalString = [start2 description];

    goto LABEL_12;
  }

  v9 = [start2 isEqualToNumber:_HMMNegativeInfinity];

  v10 = [(HMMInterval *)self end];
  v11 = [v10 isEqualToNumber:_HMMPositiveInfinity];

  if (v9)
  {
    if (v11)
    {
      allNumbersIntervalString = [(HMMInterval *)self allNumbersIntervalString];
      goto LABEL_12;
    }

    v12 = MEMORY[0x277CCACA8];
    negativeInfinityIntervalString = [(HMMInterval *)self negativeInfinityIntervalString];
    start4 = [(HMMInterval *)self end];
  }

  else
  {
    v12 = MEMORY[0x277CCACA8];
    if (!v11)
    {
      negativeInfinityIntervalString = [(HMMInterval *)self standardIntervalString];
      start3 = [(HMMInterval *)self start];
      v16 = [(HMMInterval *)self end];
      allNumbersIntervalString = [v12 stringWithValidatedFormat:negativeInfinityIntervalString validFormatSpecifiers:@"%@ %@" error:0, start3, v16];

      goto LABEL_11;
    }

    negativeInfinityIntervalString = [(HMMInterval *)self positiveInfinityIntervalString];
    start4 = [(HMMInterval *)self start];
  }

  start3 = start4;
  allNumbersIntervalString = [v12 stringWithValidatedFormat:negativeInfinityIntervalString validFormatSpecifiers:@"%@" error:0, start4];
LABEL_11:

LABEL_12:

  return allNumbersIntervalString;
}

- (id)initFromStart:(id)start toEnd:(id)end
{
  startCopy = start;
  endCopy = end;
  v12.receiver = self;
  v12.super_class = HMMInterval;
  v9 = [(HMMInterval *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_start, start);
    objc_storeStrong(p_isa + 2, end);
  }

  return p_isa;
}

+ (id)closedClosedIntervalFromStart:(id)start toEnd:(id)end
{
  endCopy = end;
  startCopy = start;
  v7 = [(HMMInterval *)[HMMClosedClosedInterval alloc] initFromStart:startCopy toEnd:endCopy];

  return v7;
}

+ (id)closedOpenIntervalFromStart:(id)start toEnd:(id)end
{
  endCopy = end;
  startCopy = start;
  v7 = [(HMMInterval *)[HMMClosedOpenInterval alloc] initFromStart:startCopy toEnd:endCopy];

  return v7;
}

+ (id)openClosedIntervalFromStart:(id)start toEnd:(id)end
{
  endCopy = end;
  startCopy = start;
  v7 = [(HMMInterval *)[HMMOpenClosedInterval alloc] initFromStart:startCopy toEnd:endCopy];

  return v7;
}

+ (id)openOpenIntervalFromStart:(id)start toEnd:(id)end
{
  endCopy = end;
  startCopy = start;
  v7 = [(HMMInterval *)[HMMOpenOpenInterval alloc] initFromStart:startCopy toEnd:endCopy];

  return v7;
}

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == self)
  {
    v4 = _HMMPositiveInfinity;
    _HMMPositiveInfinity = &unk_283EF3C70;

    v5 = _HMMNegativeInfinity;
    _HMMNegativeInfinity = &unk_283EF3C80;
  }
}

@end
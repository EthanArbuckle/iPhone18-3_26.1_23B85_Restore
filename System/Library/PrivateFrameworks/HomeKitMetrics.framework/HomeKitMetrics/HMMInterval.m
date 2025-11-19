@interface HMMInterval
+ (id)closedClosedIntervalFromStart:(id)a3 toEnd:(id)a4;
+ (id)closedOpenIntervalFromStart:(id)a3 toEnd:(id)a4;
+ (id)openClosedIntervalFromStart:(id)a3 toEnd:(id)a4;
+ (id)openOpenIntervalFromStart:(id)a3 toEnd:(id)a4;
+ (void)initialize;
- (id)initFromStart:(id)a3 toEnd:(id)a4;
- (id)labelString;
@end

@implementation HMMInterval

- (id)labelString
{
  v3 = [(HMMInterval *)self start];
  v4 = [(HMMInterval *)self end];
  v5 = [v3 isEqualToNumber:v4];

  v6 = [(HMMInterval *)self start];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 description];

    goto LABEL_12;
  }

  v9 = [v6 isEqualToNumber:_HMMNegativeInfinity];

  v10 = [(HMMInterval *)self end];
  v11 = [v10 isEqualToNumber:_HMMPositiveInfinity];

  if (v9)
  {
    if (v11)
    {
      v8 = [(HMMInterval *)self allNumbersIntervalString];
      goto LABEL_12;
    }

    v12 = MEMORY[0x277CCACA8];
    v13 = [(HMMInterval *)self negativeInfinityIntervalString];
    v14 = [(HMMInterval *)self end];
  }

  else
  {
    v12 = MEMORY[0x277CCACA8];
    if (!v11)
    {
      v13 = [(HMMInterval *)self standardIntervalString];
      v15 = [(HMMInterval *)self start];
      v16 = [(HMMInterval *)self end];
      v8 = [v12 stringWithValidatedFormat:v13 validFormatSpecifiers:@"%@ %@" error:0, v15, v16];

      goto LABEL_11;
    }

    v13 = [(HMMInterval *)self positiveInfinityIntervalString];
    v14 = [(HMMInterval *)self start];
  }

  v15 = v14;
  v8 = [v12 stringWithValidatedFormat:v13 validFormatSpecifiers:@"%@" error:0, v14];
LABEL_11:

LABEL_12:

  return v8;
}

- (id)initFromStart:(id)a3 toEnd:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMMInterval;
  v9 = [(HMMInterval *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_start, a3);
    objc_storeStrong(p_isa + 2, a4);
  }

  return p_isa;
}

+ (id)closedClosedIntervalFromStart:(id)a3 toEnd:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(HMMInterval *)[HMMClosedClosedInterval alloc] initFromStart:v6 toEnd:v5];

  return v7;
}

+ (id)closedOpenIntervalFromStart:(id)a3 toEnd:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(HMMInterval *)[HMMClosedOpenInterval alloc] initFromStart:v6 toEnd:v5];

  return v7;
}

+ (id)openClosedIntervalFromStart:(id)a3 toEnd:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(HMMInterval *)[HMMOpenClosedInterval alloc] initFromStart:v6 toEnd:v5];

  return v7;
}

+ (id)openOpenIntervalFromStart:(id)a3 toEnd:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(HMMInterval *)[HMMOpenOpenInterval alloc] initFromStart:v6 toEnd:v5];

  return v7;
}

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == a1)
  {
    v4 = _HMMPositiveInfinity;
    _HMMPositiveInfinity = &unk_283EF3C70;

    v5 = _HMMNegativeInfinity;
    _HMMNegativeInfinity = &unk_283EF3C80;
  }
}

@end
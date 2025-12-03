@interface _CUIPSDStopAndMidpointPair
- (_CUIPSDStopAndMidpointPair)initWithStop:(id)stop midpoint:(id)midpoint;
- (int64_t)compare:(id)compare;
- (void)dealloc;
@end

@implementation _CUIPSDStopAndMidpointPair

- (_CUIPSDStopAndMidpointPair)initWithStop:(id)stop midpoint:(id)midpoint
{
  v9.receiver = self;
  v9.super_class = _CUIPSDStopAndMidpointPair;
  v6 = [(_CUIPSDStopAndMidpointPair *)&v9 init];
  if (v6)
  {
    v6->stop = stop;
    if (midpoint)
    {
      [midpoint doubleValue];
    }

    else
    {
      v7 = 0.5;
    }

    v6->midpoint = v7;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CUIPSDStopAndMidpointPair;
  [(_CUIPSDStopAndMidpointPair *)&v3 dealloc];
}

- (int64_t)compare:(id)compare
{
  [self->stop location];
  v5 = v4;
  [*(compare + 1) location];
  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

@end
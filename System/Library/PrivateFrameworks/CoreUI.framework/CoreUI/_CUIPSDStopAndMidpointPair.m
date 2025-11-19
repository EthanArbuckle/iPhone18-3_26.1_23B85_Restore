@interface _CUIPSDStopAndMidpointPair
- (_CUIPSDStopAndMidpointPair)initWithStop:(id)a3 midpoint:(id)a4;
- (int64_t)compare:(id)a3;
- (void)dealloc;
@end

@implementation _CUIPSDStopAndMidpointPair

- (_CUIPSDStopAndMidpointPair)initWithStop:(id)a3 midpoint:(id)a4
{
  v9.receiver = self;
  v9.super_class = _CUIPSDStopAndMidpointPair;
  v6 = [(_CUIPSDStopAndMidpointPair *)&v9 init];
  if (v6)
  {
    v6->stop = a3;
    if (a4)
    {
      [a4 doubleValue];
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

- (int64_t)compare:(id)a3
{
  [self->stop location];
  v5 = v4;
  [*(a3 + 1) location];
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
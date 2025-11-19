@interface HKMCAdjacentFlowAnalyzer
- ($0AC6E346AE4835514AAA8AC86D8F4844)flowDayIndexRange;
- (HKMCAdjacentFlowAnalyzer)initWithFlowDayIndex:(int64_t)a3;
- (void)addNextAscendingDay:(id)a3 shouldStop:(BOOL *)a4;
- (void)addNextDescendingDay:(id)a3 shouldStop:(BOOL *)a4;
@end

@implementation HKMCAdjacentFlowAnalyzer

- (HKMCAdjacentFlowAnalyzer)initWithFlowDayIndex:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = HKMCAdjacentFlowAnalyzer;
  result = [(HKMCAdjacentFlowAnalyzer *)&v5 init];
  if (result)
  {
    result->_flowDayIndex = a3;
    result->_futureFlowDay = a3;
    result->_pastFlowDay = a3;
  }

  return result;
}

- (void)addNextAscendingDay:(id)a3 shouldStop:(BOOL *)a4
{
  v8 = a3;
  if ([v8 dayIndex] <= self->_futureFlowDay)
  {
    [HKMCAdjacentFlowAnalyzer addNextAscendingDay:a2 shouldStop:self];
  }

  unsuitableForRange = self->_unsuitableForRange;
  if (unsuitableForRange)
  {
    goto LABEL_4;
  }

  if (([v8 isFetched] & 1) == 0)
  {
    goto LABEL_9;
  }

  if ([v8 hasFlow])
  {
    self->_futureFlowDay = [v8 dayIndex];
    LOBYTE(unsuitableForRange) = 1;
LABEL_4:
    *a4 = unsuitableForRange;
    goto LABEL_10;
  }

  if (![v8 hasConfirmedNoFlow])
  {
    *a4 = 0;
  }

  else
  {
LABEL_9:
    *a4 = 1;
    self->_unsuitableForRange = 1;
  }

LABEL_10:
}

- (void)addNextDescendingDay:(id)a3 shouldStop:(BOOL *)a4
{
  v8 = a3;
  if ([v8 dayIndex] >= self->_pastFlowDay)
  {
    [HKMCAdjacentFlowAnalyzer addNextDescendingDay:a2 shouldStop:self];
  }

  unsuitableForRange = self->_unsuitableForRange;
  if (unsuitableForRange)
  {
    goto LABEL_4;
  }

  if (([v8 isFetched] & 1) == 0)
  {
    goto LABEL_9;
  }

  if ([v8 hasFlow])
  {
    self->_pastFlowDay = [v8 dayIndex];
    LOBYTE(unsuitableForRange) = 1;
LABEL_4:
    *a4 = unsuitableForRange;
    goto LABEL_10;
  }

  if (![v8 hasConfirmedNoFlow])
  {
    *a4 = 0;
  }

  else
  {
LABEL_9:
    *a4 = 1;
    self->_unsuitableForRange = 1;
  }

LABEL_10:
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)flowDayIndexRange
{
  if (self->_unsuitableForRange)
  {
    flowDayIndex = self->_flowDayIndex;
    v3 = 1;
  }

  else
  {
    v4 = self->_flowDayIndex;
    futureFlowDay = self->_futureFlowDay;
    pastFlowDay = self->_pastFlowDay;
    v7 = futureFlowDay - v4;
    if (futureFlowDay <= v4)
    {
      v7 = 1;
    }

    v8 = 1;
    v9 = futureFlowDay <= v4;
    if (futureFlowDay <= v4)
    {
      v10 = pastFlowDay + 1;
    }

    else
    {
      v10 = self->_flowDayIndex;
    }

    if (v9)
    {
      v8 = v4 - pastFlowDay;
    }

    if (v4 > pastFlowDay)
    {
      flowDayIndex = v10;
    }

    else
    {
      flowDayIndex = self->_flowDayIndex;
    }

    if (v4 > pastFlowDay)
    {
      v3 = v8;
    }

    else
    {
      v3 = v7;
    }
  }

  result.var1 = v3;
  result.var0 = flowDayIndex;
  return result;
}

- (void)addNextAscendingDay:(uint64_t)a1 shouldStop:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMCAdjacentFlowAnalyzer.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"[adjacentDay dayIndex] > _futureFlowDay"}];
}

- (void)addNextDescendingDay:(uint64_t)a1 shouldStop:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMCAdjacentFlowAnalyzer.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"[adjacentDay dayIndex] < _pastFlowDay"}];
}

@end
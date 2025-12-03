@interface CUIKSingleDayTimelineLayoutPartition
- (CUIKSingleDayTimelineLayoutPartition)init;
- (double)freeSpaceStartBoundary;
- (double)freeSpaceWidth;
- (double)totalWidth;
- (id)description;
@end

@implementation CUIKSingleDayTimelineLayoutPartition

- (double)freeSpaceWidth
{
  [(CUIKSingleDayTimelineLayoutPartition *)self endBoundary];
  v4 = v3;
  [(CUIKSingleDayTimelineLayoutPartition *)self freeSpaceStartBoundary];
  result = v4 - v5;
  if (result < 0.0)
  {
    return -result;
  }

  return result;
}

- (double)freeSpaceStartBoundary
{
  [(CUIKSingleDayTimelineLayoutPartition *)self initialStartBoundary];
  v4 = v3;
  v5 = [(NSMutableArray *)self->_stackOfOccurrences count];
  if (v5)
  {
    v6 = v5;
    v7 = [(NSMutableArray *)self->_stackOfOccurrences objectAtIndex:0];
    v8 = objc_opt_respondsToSelector();
    v9 = v7;
    if ((v8 & 1) == 0)
    {
      v9 = objc_opt_class();
    }

    [v9 barToBarHorizontalDistanceIncludingBarWidth];
    v11 = v10;
    v12 = v10 * v6;
    [(CUIKSingleDayTimelineLayoutPartition *)self endBoundary];
    if (v4 >= v13)
    {
      v14 = -(v11 * v6);
    }

    else
    {
      v14 = v12;
    }

    v4 = v4 + v14;
  }

  return v4;
}

- (double)totalWidth
{
  [(CUIKSingleDayTimelineLayoutPartition *)self endBoundary];
  v4 = v3;
  [(CUIKSingleDayTimelineLayoutPartition *)self initialStartBoundary];
  result = v4 - v5;
  if (result < 0.0)
  {
    return -result;
  }

  return result;
}

- (CUIKSingleDayTimelineLayoutPartition)init
{
  v6.receiver = self;
  v6.super_class = CUIKSingleDayTimelineLayoutPartition;
  v2 = [(CUIKSingleDayTimelineLayoutPartition *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    stackOfOccurrences = v2->_stackOfOccurrences;
    v2->_stackOfOccurrences = v3;
  }

  return v2;
}

- (id)description
{
  v9.receiver = self;
  v9.super_class = CUIKSingleDayTimelineLayoutPartition;
  v3 = [(CUIKSingleDayTimelineLayoutPartition *)&v9 description];
  v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:self->_topBoundaryTime];
  v5 = [(NSMutableArray *)self->_stackOfOccurrences count];
  peekOccurrence = [(CUIKSingleDayTimelineLayoutPartition *)self peekOccurrence];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ topBoundary: [%@], initialStartBoundary: [%f], endBoundary: [%f], number of stacked occurrences: [%lu], top occurrence on stack: [%@]", v3, v4, *&self->_initialStartBoundary, *&self->_endBoundary, v5, peekOccurrence];

  return v7;
}

@end
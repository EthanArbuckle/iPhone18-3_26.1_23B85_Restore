@interface NSMutableIndexSet(CATShifting)
- (uint64_t)cat_moveIndex:()CATShifting toIndex:;
- (uint64_t)cat_shiftAndAddIndexesInRange:()CATShifting;
- (uint64_t)cat_shiftAndRemoveIndexesInRange:()CATShifting;
@end

@implementation NSMutableIndexSet(CATShifting)

- (uint64_t)cat_shiftAndAddIndexesInRange:()CATShifting
{
  [self shiftIndexesStartingAtIndex:? by:?];

  return [self addIndexesInRange:{a3, a4}];
}

- (uint64_t)cat_shiftAndRemoveIndexesInRange:()CATShifting
{
  [self removeIndexesInRange:?];

  return [self shiftIndexesStartingAtIndex:a3 + 1 by:-a4];
}

- (uint64_t)cat_moveIndex:()CATShifting toIndex:
{
  v7 = [self containsIndex:?];
  [self cat_shiftAndRemoveIndex:a3];
  if (v7)
  {

    return [self cat_shiftAndAddIndex:a4];
  }

  else
  {

    return [self shiftIndexesStartingAtIndex:a4 by:1];
  }
}

@end
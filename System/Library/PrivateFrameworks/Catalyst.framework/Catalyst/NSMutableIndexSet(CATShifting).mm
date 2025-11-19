@interface NSMutableIndexSet(CATShifting)
- (uint64_t)cat_moveIndex:()CATShifting toIndex:;
- (uint64_t)cat_shiftAndAddIndexesInRange:()CATShifting;
- (uint64_t)cat_shiftAndRemoveIndexesInRange:()CATShifting;
@end

@implementation NSMutableIndexSet(CATShifting)

- (uint64_t)cat_shiftAndAddIndexesInRange:()CATShifting
{
  [a1 shiftIndexesStartingAtIndex:? by:?];

  return [a1 addIndexesInRange:{a3, a4}];
}

- (uint64_t)cat_shiftAndRemoveIndexesInRange:()CATShifting
{
  [a1 removeIndexesInRange:?];

  return [a1 shiftIndexesStartingAtIndex:a3 + 1 by:-a4];
}

- (uint64_t)cat_moveIndex:()CATShifting toIndex:
{
  v7 = [a1 containsIndex:?];
  [a1 cat_shiftAndRemoveIndex:a3];
  if (v7)
  {

    return [a1 cat_shiftAndAddIndex:a4];
  }

  else
  {

    return [a1 shiftIndexesStartingAtIndex:a4 by:1];
  }
}

@end
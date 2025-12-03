@interface OABTableSortedIntArray
- (OABTableSortedIntArray)initWithIntSet:(id)set;
- (int)indexOfInt:(int)int;
- (int)intAtIndex:(int)index;
@end

@implementation OABTableSortedIntArray

- (OABTableSortedIntArray)initWithIntSet:(id)set
{
  setCopy = set;
  v10.receiver = self;
  v10.super_class = OABTableSortedIntArray;
  v5 = [(OABTableSortedIntArray *)&v10 init];
  if (v5)
  {
    allObjects = [setCopy allObjects];
    v7 = [allObjects sortedArrayUsingSelector:sel_compare_];
    mIntArray = v5->mIntArray;
    v5->mIntArray = v7;
  }

  return v5;
}

- (int)indexOfInt:(int)int
{
  mIntArray = self->mIntArray;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*&int];
  v5 = [(NSArray *)mIntArray indexOfObject:v4];

  TCVerifyInputMeetsCondition(v5 != 0x7FFFFFFFFFFFFFFFLL);
  return v5;
}

- (int)intAtIndex:(int)index
{
  v3 = [(NSArray *)self->mIntArray objectAtIndex:index];
  intValue = [v3 intValue];

  return intValue;
}

@end
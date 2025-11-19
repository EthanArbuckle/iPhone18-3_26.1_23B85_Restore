@interface OABTableSortedIntArray
- (OABTableSortedIntArray)initWithIntSet:(id)a3;
- (int)indexOfInt:(int)a3;
- (int)intAtIndex:(int)a3;
@end

@implementation OABTableSortedIntArray

- (OABTableSortedIntArray)initWithIntSet:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = OABTableSortedIntArray;
  v5 = [(OABTableSortedIntArray *)&v10 init];
  if (v5)
  {
    v6 = [v4 allObjects];
    v7 = [v6 sortedArrayUsingSelector:sel_compare_];
    mIntArray = v5->mIntArray;
    v5->mIntArray = v7;
  }

  return v5;
}

- (int)indexOfInt:(int)a3
{
  mIntArray = self->mIntArray;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*&a3];
  v5 = [(NSArray *)mIntArray indexOfObject:v4];

  TCVerifyInputMeetsCondition(v5 != 0x7FFFFFFFFFFFFFFFLL);
  return v5;
}

- (int)intAtIndex:(int)a3
{
  v3 = [(NSArray *)self->mIntArray objectAtIndex:a3];
  v4 = [v3 intValue];

  return v4;
}

@end
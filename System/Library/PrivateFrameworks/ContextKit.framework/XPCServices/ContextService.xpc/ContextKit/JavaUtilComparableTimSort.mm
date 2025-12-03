@interface JavaUtilComparableTimSort
+ (int)minRunLengthWithInt:(int)int;
+ (void)sortWithNSObjectArray:(id)array;
- (void)dealloc;
@end

@implementation JavaUtilComparableTimSort

+ (void)sortWithNSObjectArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v10 = *(array + 2);

  JavaUtilComparableTimSort_sortWithNSObjectArray_withInt_withInt_(array, 0, v10, v3, v4, v5, v6, v7);
}

+ (int)minRunLengthWithInt:(int)int
{
  if (int < 32)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    intCopy = int;
    do
    {
      v3 |= intCopy & 1;
      int = intCopy >> 1;
      v5 = intCopy > 0x3F;
      intCopy >>= 1;
    }

    while (v5);
  }

  return v3 + int;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilComparableTimSort;
  [(JavaUtilComparableTimSort *)&v3 dealloc];
}

@end
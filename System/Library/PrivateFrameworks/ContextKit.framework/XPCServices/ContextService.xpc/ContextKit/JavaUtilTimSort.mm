@interface JavaUtilTimSort
+ (int)minRunLengthWithInt:(int)int;
+ (void)sortWithNSObjectArray:(id)array withJavaUtilComparator:(id)comparator;
- (void)dealloc;
@end

@implementation JavaUtilTimSort

+ (void)sortWithNSObjectArray:(id)array withJavaUtilComparator:(id)comparator
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v10 = *(array + 2);

  JavaUtilTimSort_sortWithNSObjectArray_withInt_withInt_withJavaUtilComparator_(array, 0, v10, comparator, v4, v5, v6, v7);
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
  v3.super_class = JavaUtilTimSort;
  [(JavaUtilTimSort *)&v3 dealloc];
}

@end
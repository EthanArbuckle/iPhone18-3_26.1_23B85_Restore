@interface JavaUtilTimSort
+ (int)minRunLengthWithInt:(int)a3;
+ (void)sortWithNSObjectArray:(id)a3 withJavaUtilComparator:(id)a4;
- (void)dealloc;
@end

@implementation JavaUtilTimSort

+ (void)sortWithNSObjectArray:(id)a3 withJavaUtilComparator:(id)a4
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v10 = *(a3 + 2);

  JavaUtilTimSort_sortWithNSObjectArray_withInt_withInt_withJavaUtilComparator_(a3, 0, v10, a4, v4, v5, v6, v7);
}

+ (int)minRunLengthWithInt:(int)a3
{
  if (a3 < 32)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    v4 = a3;
    do
    {
      v3 |= v4 & 1;
      a3 = v4 >> 1;
      v5 = v4 > 0x3F;
      v4 >>= 1;
    }

    while (v5);
  }

  return v3 + a3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilTimSort;
  [(JavaUtilTimSort *)&v3 dealloc];
}

@end
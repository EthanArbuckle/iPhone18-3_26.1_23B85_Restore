@interface JavaUtilGrego
+ (int64_t)floorDivideWithLong:(int64_t)a3 withLong:(int64_t)a4;
+ (void)initialize;
@end

@implementation JavaUtilGrego

+ (int64_t)floorDivideWithLong:(int64_t)a3 withLong:(int64_t)a4
{
  if (atomic_load_explicit(&JavaUtilGrego__initialized, memory_order_acquire))
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      return a3 / a4;
    }
  }

  else
  {
    sub_1001ACF80();
    if ((a3 & 0x8000000000000000) == 0)
    {
      return a3 / a4;
    }
  }

  return (a3 + 1) / a4 - 1;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v3[2] = xmmword_100314BA4;
    v3[3] = unk_100314BB4;
    v3[4] = xmmword_100314BC4;
    v3[5] = unk_100314BD4;
    v3[0] = xmmword_100314B84;
    v3[1] = unk_100314B94;
    JreStrongAssignAndConsume(&qword_100554C80, [IOSIntArray newArrayWithInts:v3 count:24]);
    v2[2] = xmmword_100314C04;
    v2[3] = unk_100314C14;
    v2[4] = xmmword_100314C24;
    v2[5] = unk_100314C34;
    v2[0] = xmmword_100314BE4;
    v2[1] = unk_100314BF4;
    JreStrongAssignAndConsume(&qword_100554C88, [IOSIntArray newArrayWithInts:v2 count:24]);
    atomic_store(1u, &JavaUtilGrego__initialized);
  }
}

@end
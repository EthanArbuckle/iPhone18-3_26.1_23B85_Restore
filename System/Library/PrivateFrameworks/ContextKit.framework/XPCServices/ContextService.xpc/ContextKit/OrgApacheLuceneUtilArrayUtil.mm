@interface OrgApacheLuceneUtilArrayUtil
+ (void)initialize;
@end

@implementation OrgApacheLuceneUtilArrayUtil

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1000120A8();
    }

    OrgApacheLuceneUtilArrayUtil_MAX_ARRAY_LENGTH_ = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_ARRAY_HEADER_ ^ 0x7FFFFFFF;
    JreStrongAssignAndConsume(&qword_1005543F8, [OrgApacheLuceneUtilArrayUtil_NaturalComparator alloc]);
    atomic_store(1u, OrgApacheLuceneUtilArrayUtil__initialized);
  }
}

@end
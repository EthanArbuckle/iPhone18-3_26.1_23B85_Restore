@interface OrgApacheLuceneUtilLongValues
+ (void)initialize;
@end

@implementation OrgApacheLuceneUtilLongValues

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [OrgApacheLuceneUtilLongValues__1 alloc];
    OrgApacheLuceneIndexNumericDocValues_init(v2, v3);
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilLongValues_IDENTITY_, v2);
    atomic_store(1u, OrgApacheLuceneUtilLongValues__initialized);
  }
}

@end
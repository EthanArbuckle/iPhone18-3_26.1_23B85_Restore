@interface OrgApacheLuceneUtilBits
+ (void)initialize;
@end

@implementation OrgApacheLuceneUtilBits

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [IOSObjectArray newArrayWithLength:0 type:OrgApacheLuceneUtilBits_class_()];
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilBits_EMPTY_ARRAY_, v2);
    atomic_store(1u, OrgApacheLuceneUtilBits__initialized);
  }
}

@end
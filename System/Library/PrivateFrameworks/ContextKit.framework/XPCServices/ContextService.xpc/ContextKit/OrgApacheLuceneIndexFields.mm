@interface OrgApacheLuceneIndexFields
+ (void)initialize;
@end

@implementation OrgApacheLuceneIndexFields

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [IOSObjectArray newArrayWithLength:0 type:OrgApacheLuceneIndexFields_class_()];
    JreStrongAssignAndConsume(&OrgApacheLuceneIndexFields_EMPTY_ARRAY_, v2);
    atomic_store(1u, OrgApacheLuceneIndexFields__initialized);
  }
}

@end
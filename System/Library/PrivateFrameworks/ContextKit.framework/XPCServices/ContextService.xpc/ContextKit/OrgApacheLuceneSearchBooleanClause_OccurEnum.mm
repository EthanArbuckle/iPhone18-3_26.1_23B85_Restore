@interface OrgApacheLuceneSearchBooleanClause_OccurEnum
+ (void)initialize;
@end

@implementation OrgApacheLuceneSearchBooleanClause_OccurEnum

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [OrgApacheLuceneSearchBooleanClause_Occur__1Enum alloc];
    JavaLangEnum_initWithNSString_withInt_(v2, @"MUST", 0);
    OrgApacheLuceneSearchBooleanClause_OccurEnum_values_[0] = v2;
    v3 = [OrgApacheLuceneSearchBooleanClause_Occur__2Enum alloc];
    JavaLangEnum_initWithNSString_withInt_(v3, @"FILTER", 1);
    qword_100557BA0 = v3;
    v4 = [OrgApacheLuceneSearchBooleanClause_Occur__3Enum alloc];
    JavaLangEnum_initWithNSString_withInt_(v4, @"SHOULD", 2);
    qword_100557BA8 = v4;
    v5 = [OrgApacheLuceneSearchBooleanClause_Occur__4Enum alloc];
    JavaLangEnum_initWithNSString_withInt_(v5, @"MUST_NOT", 3);
    qword_100557BB0 = v5;
    atomic_store(1u, OrgApacheLuceneSearchBooleanClause_OccurEnum__initialized);
  }
}

@end
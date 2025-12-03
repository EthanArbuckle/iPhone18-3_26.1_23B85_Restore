@interface OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum
+ (void)initialize;
@end

@implementation OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v2, @"NO", 0);
    OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_values_[0] = v2;
    v3 = [OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v3, @"STOPPED", 1);
    qword_100557988 = v3;
    v4 = [OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v4, @"PAUSED", 2);
    qword_100557990 = v4;
    atomic_store(1u, OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum__initialized);
  }
}

@end
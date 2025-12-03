@interface OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector
- (id)getLeafCollectorWithOrgApacheLuceneIndexLeafReaderContext:(id)context;
@end

@implementation OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector

- (id)getLeafCollectorWithOrgApacheLuceneIndexLeafReaderContext:(id)context
{
  if (!context)
  {
    JreThrowNullPointerException();
  }

  v4 = *(context + 8);
  v5 = [OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector__1 alloc];
  JreStrongAssign(&v5->this$0_, self);
  v5->val$docBase_ = v4;

  return v5;
}

@end
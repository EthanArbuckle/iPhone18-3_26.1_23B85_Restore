@interface OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector
- (id)getLeafCollectorWithOrgApacheLuceneIndexLeafReaderContext:(id)a3;
@end

@implementation OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector

- (id)getLeafCollectorWithOrgApacheLuceneIndexLeafReaderContext:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = *(a3 + 8);
  v5 = [OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector__1 alloc];
  JreStrongAssign(&v5->this$0_, self);
  v5->val$docBase_ = v4;

  return v5;
}

@end
@interface ComAppleProactiveLuceneScoreInterceptWeight_$1
- (float)score;
- (void)dealloc;
@end

@implementation ComAppleProactiveLuceneScoreInterceptWeight_$1

- (float)score
{
  v3 = self->this$0_;
  if (!v3->target_)
  {
    JreThrowNullPointerException();
  }

  v4 = self->val$context_;
  v5 = self->val$scorer_;
  target = v3->target_;

  [ComAppleProactiveLuceneScoreInterceptTarget scoreMatchWithOrgApacheLuceneSearchWeight:"scoreMatchWithOrgApacheLuceneSearchWeight:withOrgApacheLuceneIndexLeafReaderContext:withOrgApacheLuceneSearchScorer:" withOrgApacheLuceneIndexLeafReaderContext:? withOrgApacheLuceneSearchScorer:?];
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleProactiveLuceneScoreInterceptWeight__1;
  [(OrgApacheLuceneSearchFilterScorer *)&v3 dealloc];
}

@end
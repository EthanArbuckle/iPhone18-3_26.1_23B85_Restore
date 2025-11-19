@interface OrgApacheLuceneSearchFilterLeafCollector
- (NSString)description;
- (void)dealloc;
- (void)setScorerWithOrgApacheLuceneSearchScorer:(id)a3;
@end

@implementation OrgApacheLuceneSearchFilterLeafCollector

- (void)setScorerWithOrgApacheLuceneSearchScorer:(id)a3
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneSearchLeafCollector *)in setScorerWithOrgApacheLuceneSearchScorer:a3];
}

- (NSString)description
{
  v3 = [-[OrgApacheLuceneSearchFilterLeafCollector getClass](self "getClass")];
  in = self->in_;
  return JreStrcat("$C@C", v4, v5, v6, v7, v8, v9, v10, v3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchFilterLeafCollector;
  [(OrgApacheLuceneSearchFilterLeafCollector *)&v3 dealloc];
}

@end
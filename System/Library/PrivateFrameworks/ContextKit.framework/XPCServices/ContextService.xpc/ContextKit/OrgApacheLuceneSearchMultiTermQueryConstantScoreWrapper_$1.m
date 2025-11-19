@interface OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_$1
- (id)bulkScorerWithOrgApacheLuceneIndexLeafReaderContext:(id)a3;
- (id)scorerWithOrgApacheLuceneIndexLeafReaderContext:(id)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_$1

- (id)bulkScorerWithOrgApacheLuceneIndexLeafReaderContext:(id)a3
{
  v5 = sub_10002593C(self, a3);
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  if (v5->weight_)
  {
    weight = v5->weight_;

    return [(OrgApacheLuceneSearchWeight *)weight bulkScorerWithOrgApacheLuceneIndexLeafReaderContext:a3];
  }

  else
  {
    result = sub_100025D88(self, v5->set_);
    if (result)
    {
      v8 = new_OrgApacheLuceneSearchWeight_DefaultBulkScorer_initWithOrgApacheLuceneSearchScorer_(result);

      return v8;
    }
  }

  return result;
}

- (id)scorerWithOrgApacheLuceneIndexLeafReaderContext:(id)a3
{
  v5 = sub_10002593C(self, a3);
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  if (v5->weight_)
  {
    weight = v5->weight_;

    return [(OrgApacheLuceneSearchWeight *)weight scorerWithOrgApacheLuceneIndexLeafReaderContext:a3];
  }

  else
  {
    set = v5->set_;

    return sub_100025D88(self, set);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper__1;
  [(OrgApacheLuceneSearchWeight *)&v3 dealloc];
}

@end
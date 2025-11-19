@interface OrgApacheLuceneSearchMultiTermQuery_$1
- (id)rewriteWithOrgApacheLuceneIndexIndexReader:(id)a3 withOrgApacheLuceneSearchMultiTermQuery:(id)a4;
@end

@implementation OrgApacheLuceneSearchMultiTermQuery_$1

- (id)rewriteWithOrgApacheLuceneIndexIndexReader:(id)a3 withOrgApacheLuceneSearchMultiTermQuery:(id)a4
{
  v5 = new_OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_initWithOrgApacheLuceneSearchMultiTermQuery_(a4);
  if (!a4)
  {
    JreThrowNullPointerException();
  }

  v6 = v5;
  [a4 getBoost];
  [(OrgApacheLuceneSearchQuery *)v6 setBoostWithFloat:?];
  return v6;
}

@end
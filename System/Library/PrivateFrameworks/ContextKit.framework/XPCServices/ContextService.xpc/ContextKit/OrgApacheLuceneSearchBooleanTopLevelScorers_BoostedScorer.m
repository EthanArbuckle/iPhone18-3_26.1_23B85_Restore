@interface OrgApacheLuceneSearchBooleanTopLevelScorers_BoostedScorer
- (OrgApacheLuceneSearchBooleanTopLevelScorers_BoostedScorer)initWithOrgApacheLuceneSearchScorer:(id)a3 withFloat:(float)a4;
- (float)score;
- (id)getChildren;
@end

@implementation OrgApacheLuceneSearchBooleanTopLevelScorers_BoostedScorer

- (OrgApacheLuceneSearchBooleanTopLevelScorers_BoostedScorer)initWithOrgApacheLuceneSearchScorer:(id)a3 withFloat:(float)a4
{
  OrgApacheLuceneSearchFilterScorer_initWithOrgApacheLuceneSearchScorer_(self, a3);
  self->boost_ = a4;
  return self;
}

- (float)score
{
  in = self->super.in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneSearchScorer *)in score];
  return v4 * self->boost_;
}

- (id)getChildren
{
  v2 = new_OrgApacheLuceneSearchScorer_ChildScorer_initWithOrgApacheLuceneSearchScorer_withNSString_(self->super.in_, @"BOOSTED");

  return JavaUtilCollections_singletonWithId_(v2);
}

@end
@interface OrgApacheLuceneSearchScoreCachingWrappingScorer
- (OrgApacheLuceneSearchScoreCachingWrappingScorer)initWithOrgApacheLuceneSearchScorer:(id)scorer;
- (float)score;
- (id)getChildren;
@end

@implementation OrgApacheLuceneSearchScoreCachingWrappingScorer

- (OrgApacheLuceneSearchScoreCachingWrappingScorer)initWithOrgApacheLuceneSearchScorer:(id)scorer
{
  OrgApacheLuceneSearchFilterScorer_initWithOrgApacheLuceneSearchScorer_(self, scorer);
  self->curDoc_ = -1;
  return self;
}

- (float)score
{
  in = self->super.in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  docID = [(OrgApacheLuceneSearchScorer *)in docID];
  if (docID == self->curDoc_)
  {
    return self->curScore_;
  }

  v6 = docID;
  [(OrgApacheLuceneSearchScorer *)self->super.in_ score];
  self->curScore_ = result;
  self->curDoc_ = v6;
  return result;
}

- (id)getChildren
{
  v2 = new_OrgApacheLuceneSearchScorer_ChildScorer_initWithOrgApacheLuceneSearchScorer_withNSString_(self->super.in_, @"CACHED");

  return JavaUtilCollections_singletonWithId_(v2);
}

@end
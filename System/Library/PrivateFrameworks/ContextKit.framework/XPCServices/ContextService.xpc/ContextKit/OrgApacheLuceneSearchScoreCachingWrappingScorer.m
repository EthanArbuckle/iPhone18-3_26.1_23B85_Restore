@interface OrgApacheLuceneSearchScoreCachingWrappingScorer
- (OrgApacheLuceneSearchScoreCachingWrappingScorer)initWithOrgApacheLuceneSearchScorer:(id)a3;
- (float)score;
- (id)getChildren;
@end

@implementation OrgApacheLuceneSearchScoreCachingWrappingScorer

- (OrgApacheLuceneSearchScoreCachingWrappingScorer)initWithOrgApacheLuceneSearchScorer:(id)a3
{
  OrgApacheLuceneSearchFilterScorer_initWithOrgApacheLuceneSearchScorer_(self, a3);
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

  v4 = [(OrgApacheLuceneSearchScorer *)in docID];
  if (v4 == self->curDoc_)
  {
    return self->curScore_;
  }

  v6 = v4;
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
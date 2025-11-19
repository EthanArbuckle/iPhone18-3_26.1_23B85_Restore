@interface OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition
- (OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition)initWithOrgApacheLuceneIndexPostingsEnum:(id)a3 withInt:(int)a4;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition

- (OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition)initWithOrgApacheLuceneIndexPostingsEnum:(id)a3 withInt:(int)a4
{
  JreStrongAssign(&self->postings_, a3);
  self->offset_ = a4;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition;
  [(OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition *)&v3 dealloc];
}

@end
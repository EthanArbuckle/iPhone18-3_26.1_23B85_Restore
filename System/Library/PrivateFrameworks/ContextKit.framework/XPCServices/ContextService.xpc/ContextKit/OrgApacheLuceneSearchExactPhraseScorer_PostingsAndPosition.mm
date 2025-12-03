@interface OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition
- (OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition)initWithOrgApacheLuceneIndexPostingsEnum:(id)enum withInt:(int)int;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition

- (OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition)initWithOrgApacheLuceneIndexPostingsEnum:(id)enum withInt:(int)int
{
  JreStrongAssign(&self->postings_, enum);
  self->offset_ = int;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition;
  [(OrgApacheLuceneSearchExactPhraseScorer_PostingsAndPosition *)&v3 dealloc];
}

@end
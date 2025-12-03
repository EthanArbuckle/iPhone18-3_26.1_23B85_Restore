@interface OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_TermAndState
- (OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_TermAndState)initWithOrgApacheLuceneUtilBytesRef:(id)ref withOrgApacheLuceneIndexTermState:(id)state withInt:(int)int withLong:(int64_t)long;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_TermAndState

- (OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_TermAndState)initWithOrgApacheLuceneUtilBytesRef:(id)ref withOrgApacheLuceneIndexTermState:(id)state withInt:(int)int withLong:(int64_t)long
{
  JreStrongAssign(&self->term_, ref);
  JreStrongAssign(&self->state_, state);
  self->docFreq_ = int;
  self->totalTermFreq_ = long;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_TermAndState;
  [(OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_TermAndState *)&v3 dealloc];
}

@end
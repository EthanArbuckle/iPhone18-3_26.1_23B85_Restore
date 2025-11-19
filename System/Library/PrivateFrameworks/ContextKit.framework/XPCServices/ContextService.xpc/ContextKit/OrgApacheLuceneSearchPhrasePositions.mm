@interface OrgApacheLuceneSearchPhrasePositions
- (BOOL)nextPosition;
- (OrgApacheLuceneSearchPhrasePositions)initWithOrgApacheLuceneIndexPostingsEnum:(id)a3 withInt:(int)a4 withInt:(int)a5 withOrgApacheLuceneIndexTermArray:(id)a6;
- (id)description;
- (void)dealloc;
- (void)firstPosition;
@end

@implementation OrgApacheLuceneSearchPhrasePositions

- (OrgApacheLuceneSearchPhrasePositions)initWithOrgApacheLuceneIndexPostingsEnum:(id)a3 withInt:(int)a4 withInt:(int)a5 withOrgApacheLuceneIndexTermArray:(id)a6
{
  self->rptGroup_ = -1;
  JreStrongAssign(&self->postings_, a3);
  self->offset_ = a4;
  self->ord_ = a5;
  JreStrongAssign(&self->terms_, a6);
  return self;
}

- (void)firstPosition
{
  postings = self->postings_;
  if (!postings)
  {
    goto LABEL_6;
  }

  v4 = [(OrgApacheLuceneIndexPostingsEnum *)postings freq];
  self->count_ = v4 - 1;
  if (v4 < 1)
  {
    return;
  }

  v5 = self->postings_;
  if (!v5)
  {
LABEL_6:
    JreThrowNullPointerException();
  }

  self->position_ = [(OrgApacheLuceneIndexPostingsEnum *)v5 nextPosition]- self->offset_;
}

- (BOOL)nextPosition
{
  count = self->count_;
  self->count_ = count - 1;
  if (count >= 1)
  {
    postings = self->postings_;
    if (!postings)
    {
      JreThrowNullPointerException();
    }

    self->position_ = [(OrgApacheLuceneIndexPostingsEnum *)postings nextPosition]- self->offset_;
  }

  return count > 0;
}

- (id)description
{
  count = self->count_;
  position = self->position_;
  offset = self->offset_;
  result = JreStrcat("$I$I$I", a2, v2, v3, v4, v5, v6, v7, @"o:");
  v21 = result;
  if ((self->rptGroup_ & 0x80000000) == 0)
  {
    rptInd = self->rptInd_;
    rptGroup = self->rptGroup_;
    JreStrAppend(&v21, "$I$I", v10, v11, v12, v13, v14, v15, @" rpt:");
    return v21;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchPhrasePositions;
  [(OrgApacheLuceneSearchPhrasePositions *)&v3 dealloc];
}

@end
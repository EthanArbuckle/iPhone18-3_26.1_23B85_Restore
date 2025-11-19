@interface OrgApacheLuceneIndexDocsAndPositionsEnum_DocsAndPositionsEnumWrapper
- (id)attributes;
- (id)getPayload;
- (int)docID;
- (int)endOffset;
- (int)freq;
- (int)nextDoc;
- (int)nextPosition;
- (int)startOffset;
- (int64_t)cost;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexDocsAndPositionsEnum_DocsAndPositionsEnumWrapper

- (int)nextPosition
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexPostingsEnum *)in nextPosition];
}

- (int)startOffset
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexPostingsEnum *)in startOffset];
}

- (int)endOffset
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexPostingsEnum *)in endOffset];
}

- (id)getPayload
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexPostingsEnum *)in getPayload];
}

- (int)freq
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexPostingsEnum *)in freq];
}

- (id)attributes
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexPostingsEnum *)in attributes];
}

- (int)docID
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexPostingsEnum *)in docID];
}

- (int)nextDoc
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  v4 = [(OrgApacheLuceneIndexPostingsEnum *)in nextDoc];

  return sub_100010108(self, v4);
}

- (int64_t)cost
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexPostingsEnum *)in cost];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexDocsAndPositionsEnum_DocsAndPositionsEnumWrapper;
  [(OrgApacheLuceneIndexPostingsEnum *)&v3 dealloc];
}

@end
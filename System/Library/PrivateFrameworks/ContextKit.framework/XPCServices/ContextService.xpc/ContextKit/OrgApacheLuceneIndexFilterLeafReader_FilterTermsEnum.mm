@interface OrgApacheLuceneIndexFilterLeafReader_FilterTermsEnum
- (id)attributes;
- (id)next;
- (id)seekCeilWithOrgApacheLuceneUtilBytesRef:(id)ref;
- (id)term;
- (int)docFreq;
- (int64_t)ord;
- (int64_t)totalTermFreq;
- (void)dealloc;
- (void)seekExactWithLong:(int64_t)long;
@end

@implementation OrgApacheLuceneIndexFilterLeafReader_FilterTermsEnum

- (id)attributes
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexTermsEnum *)in attributes];
}

- (id)seekCeilWithOrgApacheLuceneUtilBytesRef:(id)ref
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexTermsEnum *)in seekCeilWithOrgApacheLuceneUtilBytesRef:ref];
}

- (void)seekExactWithLong:(int64_t)long
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneIndexTermsEnum *)in seekExactWithLong:long];
}

- (id)next
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexTermsEnum *)in next];
}

- (id)term
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexTermsEnum *)in term];
}

- (int64_t)ord
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexTermsEnum *)in ord];
}

- (int)docFreq
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexTermsEnum *)in docFreq];
}

- (int64_t)totalTermFreq
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexTermsEnum *)in totalTermFreq];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexFilterLeafReader_FilterTermsEnum;
  [(OrgApacheLuceneIndexTermsEnum *)&v3 dealloc];
}

@end
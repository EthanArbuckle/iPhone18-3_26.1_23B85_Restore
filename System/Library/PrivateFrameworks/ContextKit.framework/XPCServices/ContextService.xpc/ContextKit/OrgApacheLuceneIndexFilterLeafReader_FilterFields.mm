@interface OrgApacheLuceneIndexFilterLeafReader_FilterFields
- (id)iterator;
- (id)termsWithNSString:(id)a3;
- (int)size;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexFilterLeafReader_FilterFields

- (id)iterator
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexFields *)in iterator];
}

- (id)termsWithNSString:(id)a3
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexFields *)in termsWithNSString:a3];
}

- (int)size
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexFields *)in size];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexFilterLeafReader_FilterFields;
  [(OrgApacheLuceneIndexFilterLeafReader_FilterFields *)&v3 dealloc];
}

@end
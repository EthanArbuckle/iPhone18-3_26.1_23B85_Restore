@interface OrgApacheLuceneIndexFilterLeafReader_FilterFields
- (id)iterator;
- (id)termsWithNSString:(id)string;
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

- (id)termsWithNSString:(id)string
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexFields *)in termsWithNSString:string];
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
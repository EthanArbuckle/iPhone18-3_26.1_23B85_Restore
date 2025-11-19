@interface OrgApacheLuceneIndexPostingsEnum
- (OrgApacheLuceneIndexPostingsEnum)init;
- (id)attributes;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexPostingsEnum

- (OrgApacheLuceneIndexPostingsEnum)init
{
  OrgApacheLuceneSearchDocIdSetIterator_init(self, a2);
  JreStrongAssign(&self->atts_, 0);
  return self;
}

- (id)attributes
{
  result = self->atts_;
  if (!result)
  {
    v4 = new_OrgApacheLuceneUtilAttributeSource_init();
    JreStrongAssignAndConsume(&self->atts_, v4);
    return self->atts_;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexPostingsEnum;
  [(OrgApacheLuceneIndexPostingsEnum *)&v3 dealloc];
}

@end
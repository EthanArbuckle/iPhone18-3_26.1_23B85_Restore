@interface OrgApacheLuceneIndexMultiPostingsEnum_EnumWithSlice
- (id)description;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexMultiPostingsEnum_EnumWithSlice

- (id)description
{
  slice = self->slice_;
  if (!slice)
  {
    JreThrowNullPointerException();
  }

  v4 = [(OrgApacheLuceneIndexReaderSlice *)slice description];
  postingsEnum = self->postingsEnum_;
  return JreStrcat("$C@", v5, v6, v7, v8, v9, v10, v11, v4);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexMultiPostingsEnum_EnumWithSlice;
  [(OrgApacheLuceneIndexMultiPostingsEnum_EnumWithSlice *)&v3 dealloc];
}

@end
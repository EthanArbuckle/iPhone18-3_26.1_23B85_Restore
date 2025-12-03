@interface OrgApacheLuceneIndexMappedMultiFields
- (OrgApacheLuceneIndexMappedMultiFields)initWithOrgApacheLuceneIndexMergeState:(id)state withOrgApacheLuceneIndexMultiFields:(id)fields;
- (id)termsWithNSString:(id)string;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexMappedMultiFields

- (OrgApacheLuceneIndexMappedMultiFields)initWithOrgApacheLuceneIndexMergeState:(id)state withOrgApacheLuceneIndexMultiFields:(id)fields
{
  OrgApacheLuceneIndexFilterLeafReader_FilterFields_initWithOrgApacheLuceneIndexFields_(self, fields);
  JreStrongAssign(&self->mergeState_, state);
  return self;
}

- (id)termsWithNSString:(id)string
{
  in = self->super.in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  v6 = [(OrgApacheLuceneIndexFields *)in termsWithNSString:?];
  objc_opt_class();
  if (!v6)
  {
    return 0;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  mergeState = self->mergeState_;
  v8 = [OrgApacheLuceneIndexMappedMultiFields_MappedMultiTerms alloc];
  sub_1000C3180(v8, string, mergeState, v6);

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexMappedMultiFields;
  [(OrgApacheLuceneIndexFilterLeafReader_FilterFields *)&v3 dealloc];
}

@end
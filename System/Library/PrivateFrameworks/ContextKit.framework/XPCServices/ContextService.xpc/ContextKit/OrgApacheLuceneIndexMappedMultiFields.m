@interface OrgApacheLuceneIndexMappedMultiFields
- (OrgApacheLuceneIndexMappedMultiFields)initWithOrgApacheLuceneIndexMergeState:(id)a3 withOrgApacheLuceneIndexMultiFields:(id)a4;
- (id)termsWithNSString:(id)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexMappedMultiFields

- (OrgApacheLuceneIndexMappedMultiFields)initWithOrgApacheLuceneIndexMergeState:(id)a3 withOrgApacheLuceneIndexMultiFields:(id)a4
{
  OrgApacheLuceneIndexFilterLeafReader_FilterFields_initWithOrgApacheLuceneIndexFields_(self, a4);
  JreStrongAssign(&self->mergeState_, a3);
  return self;
}

- (id)termsWithNSString:(id)a3
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
  sub_1000C3180(v8, a3, mergeState, v6);

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexMappedMultiFields;
  [(OrgApacheLuceneIndexFilterLeafReader_FilterFields *)&v3 dealloc];
}

@end
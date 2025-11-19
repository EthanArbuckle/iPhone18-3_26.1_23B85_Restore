@interface OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_FieldsWriter_$1
- (OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_FieldsWriter_$1)initWithOrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_FieldsGroup:(id)a3 withOrgApacheLuceneIndexFields:(id)a4;
- (id)iterator;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_FieldsWriter_$1

- (id)iterator
{
  v2 = self->val$group_;
  if (!v2 || (fields = v2->fields_) == 0)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilSet *)fields iterator];
}

- (OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_FieldsWriter_$1)initWithOrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_FieldsGroup:(id)a3 withOrgApacheLuceneIndexFields:(id)a4
{
  JreStrongAssign(&self->val$group_, a3);
  OrgApacheLuceneIndexFilterLeafReader_FilterFields_initWithOrgApacheLuceneIndexFields_(self, a4);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_FieldsWriter__1;
  [(OrgApacheLuceneIndexFilterLeafReader_FilterFields *)&v3 dealloc];
}

@end
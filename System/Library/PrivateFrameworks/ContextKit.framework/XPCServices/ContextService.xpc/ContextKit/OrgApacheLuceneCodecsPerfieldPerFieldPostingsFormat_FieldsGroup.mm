@interface OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_FieldsGroup
- (OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_FieldsGroup)init;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_FieldsGroup

- (OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_FieldsGroup)init
{
  v3 = new_JavaUtilTreeSet_init();
  JreStrongAssignAndConsume(&self->fields_, v3);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_FieldsGroup;
  [(OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_FieldsGroup *)&v3 dealloc];
}

@end
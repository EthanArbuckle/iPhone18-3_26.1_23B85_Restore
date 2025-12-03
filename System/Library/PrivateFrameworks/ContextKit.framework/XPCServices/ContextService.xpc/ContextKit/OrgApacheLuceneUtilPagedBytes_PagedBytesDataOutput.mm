@interface OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput
- (OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput)initWithOrgApacheLuceneUtilPagedBytes:(id)bytes;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput

- (OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput)initWithOrgApacheLuceneUtilPagedBytes:(id)bytes
{
  JreStrongAssign(&self->this$0_, bytes);
  OrgApacheLuceneStoreDataOutput_init(self, v4);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput;
  [(OrgApacheLuceneStoreDataOutput *)&v3 dealloc];
}

@end
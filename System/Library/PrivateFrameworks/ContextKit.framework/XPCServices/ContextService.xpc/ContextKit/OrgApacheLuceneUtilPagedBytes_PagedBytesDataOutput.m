@interface OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput
- (OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput)initWithOrgApacheLuceneUtilPagedBytes:(id)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput

- (OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput)initWithOrgApacheLuceneUtilPagedBytes:(id)a3
{
  JreStrongAssign(&self->this$0_, a3);
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
@interface OrgApacheLuceneStoreOutputStreamDataOutput
- (OrgApacheLuceneStoreOutputStreamDataOutput)initWithJavaIoOutputStream:(id)a3;
- (void)close;
- (void)dealloc;
@end

@implementation OrgApacheLuceneStoreOutputStreamDataOutput

- (OrgApacheLuceneStoreOutputStreamDataOutput)initWithJavaIoOutputStream:(id)a3
{
  OrgApacheLuceneStoreDataOutput_init(self, a2);
  JreStrongAssign(&self->os_, a3);
  return self;
}

- (void)close
{
  os = self->os_;
  if (!os)
  {
    JreThrowNullPointerException();
  }

  [(JavaIoOutputStream *)os close];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreOutputStreamDataOutput;
  [(OrgApacheLuceneStoreDataOutput *)&v3 dealloc];
}

@end
@interface OrgApacheLuceneStoreSimpleFSDirectory
- (OrgApacheLuceneStoreSimpleFSDirectory)initWithOrgLukhnosPortmobileFilePath:(id)path;
- (id)openInputWithNSString:(id)string withOrgApacheLuceneStoreIOContext:(id)context;
@end

@implementation OrgApacheLuceneStoreSimpleFSDirectory

- (OrgApacheLuceneStoreSimpleFSDirectory)initWithOrgLukhnosPortmobileFilePath:(id)path
{
  Default = OrgApacheLuceneStoreFSLockFactory_getDefault();
  OrgApacheLuceneStoreFSDirectory_initWithOrgLukhnosPortmobileFilePath_withOrgApacheLuceneStoreLockFactory_(self, path, Default);
  return self;
}

- (id)openInputWithNSString:(id)string withOrgApacheLuceneStoreIOContext:(id)context
{
  [(OrgApacheLuceneStoreBaseDirectory *)self ensureOpen];
  directory = self->super.directory_;
  if (!directory)
  {
    JreThrowNullPointerException();
  }

  v8 = [(OrgLukhnosPortmobileFilePath *)directory resolveWithNSString:string];
  if ((atomic_load_explicit(OrgLukhnosPortmobileFileStandardOpenOptionEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000280F8();
  }

  v9 = OrgLukhnosPortmobileFileFiles_newByteChannelWithOrgLukhnosPortmobileFilePath_withOrgLukhnosPortmobileFileStandardOpenOptionEnum_(v8, OrgLukhnosPortmobileFileStandardOpenOptionEnum_values_[0]);
  v17 = JreStrcat("$@$", v10, v11, v12, v13, v14, v15, v16, @"SimpleFSIndexInput(path=");
  v18 = [OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput alloc];
  OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_initWithNSString_withJavaNioChannelsSeekableByteChannel_withOrgApacheLuceneStoreIOContext_(v18, v17, v9, context);

  return v18;
}

@end
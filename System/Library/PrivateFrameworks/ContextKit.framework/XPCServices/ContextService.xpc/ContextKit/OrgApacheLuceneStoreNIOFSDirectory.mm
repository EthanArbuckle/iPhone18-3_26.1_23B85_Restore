@interface OrgApacheLuceneStoreNIOFSDirectory
- (OrgApacheLuceneStoreNIOFSDirectory)initWithOrgLukhnosPortmobileFilePath:(id)path;
- (id)openInputWithNSString:(id)string withOrgApacheLuceneStoreIOContext:(id)context;
@end

@implementation OrgApacheLuceneStoreNIOFSDirectory

- (OrgApacheLuceneStoreNIOFSDirectory)initWithOrgLukhnosPortmobileFilePath:(id)path
{
  Default = OrgApacheLuceneStoreFSLockFactory_getDefault();
  OrgApacheLuceneStoreFSDirectory_initWithOrgLukhnosPortmobileFilePath_withOrgApacheLuceneStoreLockFactory_(self, path, Default);
  return self;
}

- (id)openInputWithNSString:(id)string withOrgApacheLuceneStoreIOContext:(id)context
{
  [(OrgApacheLuceneStoreBaseDirectory *)self ensureOpen];
  getDirectory = [(OrgApacheLuceneStoreFSDirectory *)self getDirectory];
  if (!getDirectory)
  {
    JreThrowNullPointerException();
  }

  v8 = [getDirectory resolveWithNSString:string];
  if ((atomic_load_explicit(OrgLukhnosPortmobileFileStandardOpenOptionEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000280F8();
  }

  v21 = OrgLukhnosPortmobileFileStandardOpenOptionEnum_values_;
  v9 = [IOSObjectArray arrayWithObjects:&v21 count:1 type:OrgLukhnosPortmobileFileStandardOpenOptionEnum_class_()];
  v10 = OrgLukhnosPortmobileChannelsUtilsFileChannelUtils_openWithOrgLukhnosPortmobileFilePath_withOrgLukhnosPortmobileFileStandardOpenOptionEnumArray_(v8, v9);
  v18 = JreStrcat("$@$", v11, v12, v13, v14, v15, v16, v17, @"NIOFSIndexInput(path=");
  v19 = [OrgApacheLuceneStoreNIOFSDirectory_NIOFSIndexInput alloc];
  OrgApacheLuceneStoreNIOFSDirectory_NIOFSIndexInput_initWithNSString_withJavaNioChannelsFileChannel_withOrgApacheLuceneStoreIOContext_(v19, v18, v10, context);
  return v19;
}

@end
@interface OrgApacheLuceneStoreNIOFSDirectory
- (OrgApacheLuceneStoreNIOFSDirectory)initWithOrgLukhnosPortmobileFilePath:(id)a3;
- (id)openInputWithNSString:(id)a3 withOrgApacheLuceneStoreIOContext:(id)a4;
@end

@implementation OrgApacheLuceneStoreNIOFSDirectory

- (OrgApacheLuceneStoreNIOFSDirectory)initWithOrgLukhnosPortmobileFilePath:(id)a3
{
  Default = OrgApacheLuceneStoreFSLockFactory_getDefault();
  OrgApacheLuceneStoreFSDirectory_initWithOrgLukhnosPortmobileFilePath_withOrgApacheLuceneStoreLockFactory_(self, a3, Default);
  return self;
}

- (id)openInputWithNSString:(id)a3 withOrgApacheLuceneStoreIOContext:(id)a4
{
  [(OrgApacheLuceneStoreBaseDirectory *)self ensureOpen];
  v7 = [(OrgApacheLuceneStoreFSDirectory *)self getDirectory];
  if (!v7)
  {
    JreThrowNullPointerException();
  }

  v8 = [v7 resolveWithNSString:a3];
  if ((atomic_load_explicit(OrgLukhnosPortmobileFileStandardOpenOptionEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000280F8();
  }

  v21 = OrgLukhnosPortmobileFileStandardOpenOptionEnum_values_;
  v9 = [IOSObjectArray arrayWithObjects:&v21 count:1 type:OrgLukhnosPortmobileFileStandardOpenOptionEnum_class_()];
  v10 = OrgLukhnosPortmobileChannelsUtilsFileChannelUtils_openWithOrgLukhnosPortmobileFilePath_withOrgLukhnosPortmobileFileStandardOpenOptionEnumArray_(v8, v9);
  v18 = JreStrcat("$@$", v11, v12, v13, v14, v15, v16, v17, @"NIOFSIndexInput(path=");
  v19 = [OrgApacheLuceneStoreNIOFSDirectory_NIOFSIndexInput alloc];
  OrgApacheLuceneStoreNIOFSDirectory_NIOFSIndexInput_initWithNSString_withJavaNioChannelsFileChannel_withOrgApacheLuceneStoreIOContext_(v19, v18, v10, a4);
  return v19;
}

@end
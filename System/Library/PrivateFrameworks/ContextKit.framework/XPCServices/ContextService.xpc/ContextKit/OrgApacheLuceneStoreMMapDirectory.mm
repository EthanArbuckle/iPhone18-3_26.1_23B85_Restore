@interface OrgApacheLuceneStoreMMapDirectory
+ (void)initialize;
- (OrgApacheLuceneStoreMMapDirectory)initWithOrgLukhnosPortmobileFilePath:(id)path;
- (OrgApacheLuceneStoreMMapDirectory)initWithOrgLukhnosPortmobileFilePath:(id)path withInt:(int)int;
- (id)openInputWithNSString:(id)string withOrgApacheLuceneStoreIOContext:(id)context;
- (void)setUseUnmapWithBoolean:(BOOL)boolean;
@end

@implementation OrgApacheLuceneStoreMMapDirectory

- (OrgApacheLuceneStoreMMapDirectory)initWithOrgLukhnosPortmobileFilePath:(id)path
{
  Default = OrgApacheLuceneStoreFSLockFactory_getDefault();
  OrgApacheLuceneStoreMMapDirectory_initWithOrgLukhnosPortmobileFilePath_withOrgApacheLuceneStoreLockFactory_withInt_(self, path, Default, OrgApacheLuceneStoreMMapDirectory_DEFAULT_MAX_CHUNK_SIZE_);
  return self;
}

- (OrgApacheLuceneStoreMMapDirectory)initWithOrgLukhnosPortmobileFilePath:(id)path withInt:(int)int
{
  Default = OrgApacheLuceneStoreFSLockFactory_getDefault();
  OrgApacheLuceneStoreMMapDirectory_initWithOrgLukhnosPortmobileFilePath_withOrgApacheLuceneStoreLockFactory_withInt_(self, path, Default, int);
  return self;
}

- (void)setUseUnmapWithBoolean:(BOOL)boolean
{
  if (boolean && (OrgApacheLuceneStoreMMapDirectory_UNMAP_SUPPORTED_ & 1) == 0)
  {
    v3 = new_JavaLangIllegalArgumentException_initWithNSString_(@"Unmap hack not supported on this platform!");
    objc_exception_throw(v3);
  }

  self->useUnmapHack_ = boolean;
}

- (id)openInputWithNSString:(id)string withOrgApacheLuceneStoreIOContext:(id)context
{
  [(OrgApacheLuceneStoreBaseDirectory *)self ensureOpen:string];
  directory = self->super.directory_;
  if (!directory)
  {
    JreThrowNullPointerException();
  }

  v7 = [(OrgLukhnosPortmobileFilePath *)directory resolveWithNSString:string];
  if ((atomic_load_explicit(OrgLukhnosPortmobileFileStandardOpenOptionEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000280F8();
  }

  v29 = OrgLukhnosPortmobileFileStandardOpenOptionEnum_values_[0];
  v8 = [IOSObjectArray arrayWithObjects:&v29 count:1 type:OrgLukhnosPortmobileFileStandardOpenOptionEnum_class_()];
  v9 = OrgLukhnosPortmobileChannelsUtilsFileChannelUtils_openWithOrgLukhnosPortmobileFilePath_withOrgLukhnosPortmobileFileStandardOpenOptionEnumArray_(v7, v8);
  if (!v7)
  {
    JreThrowNullPointerException();
  }

  [v7 description];
  v17 = JreStrcat("$$$", v10, v11, v12, v13, v14, v15, v16, @"MMapIndexInput(path=");
  getUseUnmap = [(OrgApacheLuceneStoreMMapDirectory *)self getUseUnmap];
  if (!v9)
  {
    JreThrowNullPointerException();
  }

  v19 = getUseUnmap;
  v20 = [v9 size];
  v24 = sub_10006FC68(self, v17, v9, 0, v20, v21, v22, v23);
  v25 = [v9 size];
  if (v19)
  {
    v26 = qword_100554138;
  }

  else
  {
    v26 = 0;
  }

  v27 = OrgApacheLuceneStoreByteBufferIndexInput_newInstanceWithNSString_withJavaNioByteBufferArray_withLong_withInt_withOrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner_withBoolean_(v17, v24, v25, self->chunkSizePower_, v26, v19);
  [v9 close];
  return v27;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    if ((atomic_load_explicit(OrgApacheLuceneUtilConstants__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100070498();
    }

    if (OrgApacheLuceneUtilConstants_JRE_IS_64BIT_)
    {
      v2 = 0x40000000;
    }

    else
    {
      v2 = 0x10000000;
    }

    OrgApacheLuceneStoreMMapDirectory_DEFAULT_MAX_CHUNK_SIZE_ = v2;
    v3 = JavaSecurityAccessController_doPrivilegedWithJavaSecurityPrivilegedAction_([OrgApacheLuceneStoreMMapDirectory__1 alloc]);
    if (!v3)
    {
      JreThrowNullPointerException();
    }

    OrgApacheLuceneStoreMMapDirectory_UNMAP_SUPPORTED_ = [v3 BOOLeanValue];
    JreStrongAssignAndConsume(&qword_100554138, [OrgApacheLuceneStoreMMapDirectory__2 alloc]);
    atomic_store(1u, &OrgApacheLuceneStoreMMapDirectory__initialized);
  }
}

@end
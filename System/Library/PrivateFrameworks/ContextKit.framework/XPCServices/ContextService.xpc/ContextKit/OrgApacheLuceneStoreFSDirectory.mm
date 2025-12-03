@interface OrgApacheLuceneStoreFSDirectory
+ (id)openWithOrgLukhnosPortmobileFilePath:(id)path;
- (id)createOutputWithNSString:(id)string withOrgApacheLuceneStoreIOContext:(id)context;
- (id)description;
- (id)listAll;
- (int64_t)fileLengthWithNSString:(id)string;
- (void)close;
- (void)dealloc;
- (void)deleteFileWithNSString:(id)string;
- (void)ensureCanWriteWithNSString:(id)string;
- (void)fsyncWithNSString:(id)string;
- (void)renameFileWithNSString:(id)string withNSString:(id)sString;
- (void)syncWithJavaUtilCollection:(id)collection;
@end

@implementation OrgApacheLuceneStoreFSDirectory

+ (id)openWithOrgLukhnosPortmobileFilePath:(id)path
{
  Default = OrgApacheLuceneStoreFSLockFactory_getDefault();

  return OrgApacheLuceneStoreFSDirectory_openWithOrgLukhnosPortmobileFilePath_withOrgApacheLuceneStoreLockFactory_(path, Default);
}

- (id)listAll
{
  [(OrgApacheLuceneStoreBaseDirectory *)self ensureOpen];
  directory = self->directory_;

  return OrgApacheLuceneStoreFSDirectory_listAllWithOrgLukhnosPortmobileFilePath_(directory);
}

- (int64_t)fileLengthWithNSString:(id)string
{
  [(OrgApacheLuceneStoreBaseDirectory *)self ensureOpen];
  directory = self->directory_;
  if (!directory)
  {
    JreThrowNullPointerException();
  }

  v6 = [(OrgLukhnosPortmobileFilePath *)directory resolveWithNSString:string];

  return OrgLukhnosPortmobileFileFiles_sizeWithOrgLukhnosPortmobileFilePath_(v6);
}

- (void)deleteFileWithNSString:(id)string
{
  [(OrgApacheLuceneStoreBaseDirectory *)self ensureOpen];
  directory = self->directory_;
  if (!directory)
  {
    JreThrowNullPointerException();
  }

  v6 = [(OrgLukhnosPortmobileFilePath *)directory resolveWithNSString:string];

  OrgLukhnosPortmobileFileFiles_delete__WithOrgLukhnosPortmobileFilePath_(v6);
}

- (id)createOutputWithNSString:(id)string withOrgApacheLuceneStoreIOContext:(id)context
{
  [(OrgApacheLuceneStoreBaseDirectory *)self ensureOpen:string];
  [(OrgApacheLuceneStoreFSDirectory *)self ensureCanWriteWithNSString:string];
  v6 = [OrgApacheLuceneStoreFSDirectory_FSIndexOutput alloc];
  OrgApacheLuceneStoreFSDirectory_FSIndexOutput_initWithOrgApacheLuceneStoreFSDirectory_withNSString_(v6, self, string);

  return v6;
}

- (void)ensureCanWriteWithNSString:(id)string
{
  directory = self->directory_;
  if (!directory)
  {
    JreThrowNullPointerException();
  }

  v4 = [(OrgLukhnosPortmobileFilePath *)directory resolveWithNSString:string];

  OrgLukhnosPortmobileFileFiles_deleteIfExistsWithOrgLukhnosPortmobileFilePath_(v4);
}

- (void)syncWithJavaUtilCollection:(id)collection
{
  [(OrgApacheLuceneStoreBaseDirectory *)self ensureOpen];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  if (!collection)
  {
    JreThrowNullPointerException();
  }

  v5 = [collection countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(collection);
        }

        [(OrgApacheLuceneStoreFSDirectory *)self fsyncWithNSString:*(*(&v9 + 1) + 8 * i), v9];
      }

      v6 = [collection countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)renameFileWithNSString:(id)string withNSString:(id)sString
{
  [(OrgApacheLuceneStoreBaseDirectory *)self ensureOpen];
  directory = self->directory_;
  if (!directory)
  {
    JreThrowNullPointerException();
  }

  v8 = [(OrgLukhnosPortmobileFilePath *)directory resolveWithNSString:string];
  v9 = [(OrgLukhnosPortmobileFilePath *)self->directory_ resolveWithNSString:sString];
  if ((atomic_load_explicit(OrgLukhnosPortmobileFileStandardCopyOption__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000E6748();
  }

  v10 = OrgLukhnosPortmobileFileStandardCopyOption_ATOMIC_MOVE_;
  [IOSObjectArray arrayWithObjects:&v10 count:1 type:OrgLukhnosPortmobileFileStandardCopyOption_class_()];
  OrgLukhnosPortmobileFileFiles_moveWithOrgLukhnosPortmobileFilePath_withOrgLukhnosPortmobileFilePath_withOrgLukhnosPortmobileFileStandardCopyOptionArray_(v8, v9);
  OrgApacheLuceneUtilIOUtils_fsyncWithOrgLukhnosPortmobileFilePath_withBoolean_(self->directory_, 1);
}

- (void)close
{
  objc_sync_enter(self);
  atomic_store(0, &self->super.isOpen_);

  objc_sync_exit(self);
}

- (id)description
{
  v3 = [-[OrgApacheLuceneStoreFSDirectory getClass](self "getClass")];
  lockFactory = self->super.lockFactory_;
  directory = self->directory_;
  return JreStrcat("$C@$@", v4, v5, v6, v7, v8, v9, v10, v3);
}

- (void)fsyncWithNSString:(id)string
{
  directory = self->directory_;
  if (!directory)
  {
    JreThrowNullPointerException();
  }

  v4 = [(OrgLukhnosPortmobileFilePath *)directory resolveWithNSString:string];

  OrgApacheLuceneUtilIOUtils_fsyncWithOrgLukhnosPortmobileFilePath_withBoolean_(v4, 0);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreFSDirectory;
  [(OrgApacheLuceneStoreBaseDirectory *)&v3 dealloc];
}

@end
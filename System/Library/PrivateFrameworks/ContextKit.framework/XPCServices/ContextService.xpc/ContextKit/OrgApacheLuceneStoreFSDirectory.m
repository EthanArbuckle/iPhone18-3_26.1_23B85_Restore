@interface OrgApacheLuceneStoreFSDirectory
+ (id)openWithOrgLukhnosPortmobileFilePath:(id)a3;
- (id)createOutputWithNSString:(id)a3 withOrgApacheLuceneStoreIOContext:(id)a4;
- (id)description;
- (id)listAll;
- (int64_t)fileLengthWithNSString:(id)a3;
- (void)close;
- (void)dealloc;
- (void)deleteFileWithNSString:(id)a3;
- (void)ensureCanWriteWithNSString:(id)a3;
- (void)fsyncWithNSString:(id)a3;
- (void)renameFileWithNSString:(id)a3 withNSString:(id)a4;
- (void)syncWithJavaUtilCollection:(id)a3;
@end

@implementation OrgApacheLuceneStoreFSDirectory

+ (id)openWithOrgLukhnosPortmobileFilePath:(id)a3
{
  Default = OrgApacheLuceneStoreFSLockFactory_getDefault();

  return OrgApacheLuceneStoreFSDirectory_openWithOrgLukhnosPortmobileFilePath_withOrgApacheLuceneStoreLockFactory_(a3, Default);
}

- (id)listAll
{
  [(OrgApacheLuceneStoreBaseDirectory *)self ensureOpen];
  directory = self->directory_;

  return OrgApacheLuceneStoreFSDirectory_listAllWithOrgLukhnosPortmobileFilePath_(directory);
}

- (int64_t)fileLengthWithNSString:(id)a3
{
  [(OrgApacheLuceneStoreBaseDirectory *)self ensureOpen];
  directory = self->directory_;
  if (!directory)
  {
    JreThrowNullPointerException();
  }

  v6 = [(OrgLukhnosPortmobileFilePath *)directory resolveWithNSString:a3];

  return OrgLukhnosPortmobileFileFiles_sizeWithOrgLukhnosPortmobileFilePath_(v6);
}

- (void)deleteFileWithNSString:(id)a3
{
  [(OrgApacheLuceneStoreBaseDirectory *)self ensureOpen];
  directory = self->directory_;
  if (!directory)
  {
    JreThrowNullPointerException();
  }

  v6 = [(OrgLukhnosPortmobileFilePath *)directory resolveWithNSString:a3];

  OrgLukhnosPortmobileFileFiles_delete__WithOrgLukhnosPortmobileFilePath_(v6);
}

- (id)createOutputWithNSString:(id)a3 withOrgApacheLuceneStoreIOContext:(id)a4
{
  [(OrgApacheLuceneStoreBaseDirectory *)self ensureOpen:a3];
  [(OrgApacheLuceneStoreFSDirectory *)self ensureCanWriteWithNSString:a3];
  v6 = [OrgApacheLuceneStoreFSDirectory_FSIndexOutput alloc];
  OrgApacheLuceneStoreFSDirectory_FSIndexOutput_initWithOrgApacheLuceneStoreFSDirectory_withNSString_(v6, self, a3);

  return v6;
}

- (void)ensureCanWriteWithNSString:(id)a3
{
  directory = self->directory_;
  if (!directory)
  {
    JreThrowNullPointerException();
  }

  v4 = [(OrgLukhnosPortmobileFilePath *)directory resolveWithNSString:a3];

  OrgLukhnosPortmobileFileFiles_deleteIfExistsWithOrgLukhnosPortmobileFilePath_(v4);
}

- (void)syncWithJavaUtilCollection:(id)a3
{
  [(OrgApacheLuceneStoreBaseDirectory *)self ensureOpen];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = [a3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(a3);
        }

        [(OrgApacheLuceneStoreFSDirectory *)self fsyncWithNSString:*(*(&v9 + 1) + 8 * i), v9];
      }

      v6 = [a3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)renameFileWithNSString:(id)a3 withNSString:(id)a4
{
  [(OrgApacheLuceneStoreBaseDirectory *)self ensureOpen];
  directory = self->directory_;
  if (!directory)
  {
    JreThrowNullPointerException();
  }

  v8 = [(OrgLukhnosPortmobileFilePath *)directory resolveWithNSString:a3];
  v9 = [(OrgLukhnosPortmobileFilePath *)self->directory_ resolveWithNSString:a4];
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

- (void)fsyncWithNSString:(id)a3
{
  directory = self->directory_;
  if (!directory)
  {
    JreThrowNullPointerException();
  }

  v4 = [(OrgLukhnosPortmobileFilePath *)directory resolveWithNSString:a3];

  OrgApacheLuceneUtilIOUtils_fsyncWithOrgLukhnosPortmobileFilePath_withBoolean_(v4, 0);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreFSDirectory;
  [(OrgApacheLuceneStoreBaseDirectory *)&v3 dealloc];
}

@end
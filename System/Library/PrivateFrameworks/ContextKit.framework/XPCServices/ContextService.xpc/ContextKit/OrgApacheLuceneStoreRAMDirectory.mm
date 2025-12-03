@interface OrgApacheLuceneStoreRAMDirectory
- (BOOL)fileNameExistsWithNSString:(id)string;
- (OrgApacheLuceneStoreRAMDirectory)init;
- (id)createOutputWithNSString:(id)string withOrgApacheLuceneStoreIOContext:(id)context;
- (id)listAll;
- (id)newRAMFile;
- (id)openInputWithNSString:(id)string withOrgApacheLuceneStoreIOContext:(id)context;
- (int64_t)fileLengthWithNSString:(id)string;
- (int64_t)ramBytesUsed;
- (void)close;
- (void)dealloc;
- (void)deleteFileWithNSString:(id)string;
- (void)renameFileWithNSString:(id)string withNSString:(id)sString;
@end

@implementation OrgApacheLuceneStoreRAMDirectory

- (OrgApacheLuceneStoreRAMDirectory)init
{
  v3 = new_OrgApacheLuceneStoreSingleInstanceLockFactory_init();
  OrgApacheLuceneStoreRAMDirectory_initWithOrgApacheLuceneStoreLockFactory_(self, v3);
  return self;
}

- (id)listAll
{
  [(OrgApacheLuceneStoreBaseDirectory *)self ensureOpen];
  fileMap = self->fileMap_;
  if (!fileMap || (v4 = [(JavaUtilMap *)fileMap keySet]) == 0)
  {
    JreThrowNullPointerException();
  }

  v5 = v4;
  v6 = new_JavaUtilArrayList_initWithInt_([v4 size]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v5);
        }

        [(JavaUtilArrayList *)v6 addWithId:*(*(&v12 + 1) + 8 * i)];
      }

      v8 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  return [(JavaUtilArrayList *)v6 toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[(JavaUtilArrayList *)v6 size] type:NSString_class_()]];
}

- (BOOL)fileNameExistsWithNSString:(id)string
{
  [(OrgApacheLuceneStoreBaseDirectory *)self ensureOpen];
  fileMap = self->fileMap_;
  if (!fileMap)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)fileMap containsKeyWithId:string];
}

- (int64_t)fileLengthWithNSString:(id)string
{
  [(OrgApacheLuceneStoreBaseDirectory *)self ensureOpen];
  fileMap = self->fileMap_;
  if (!fileMap)
  {
    JreThrowNullPointerException();
  }

  v6 = [(JavaUtilMap *)fileMap getWithId:string];
  if (!v6)
  {
    v8 = new_JavaIoFileNotFoundException_initWithNSString_(string);
    objc_exception_throw(v8);
  }

  return [v6 getLength];
}

- (int64_t)ramBytesUsed
{
  [(OrgApacheLuceneStoreBaseDirectory *)self ensureOpen];
  sizeInBytes = self->sizeInBytes_;
  if (!sizeInBytes)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilConcurrentAtomicAtomicLong *)sizeInBytes get];
}

- (void)deleteFileWithNSString:(id)string
{
  [(OrgApacheLuceneStoreBaseDirectory *)self ensureOpen];
  fileMap = self->fileMap_;
  if (!fileMap)
  {
    goto LABEL_7;
  }

  v6 = [(JavaUtilMap *)fileMap removeWithId:string];
  if (!v6)
  {
    v10 = new_JavaIoFileNotFoundException_initWithNSString_(string);
    objc_exception_throw(v10);
  }

  v7 = v6;
  JreStrongAssign(v6 + 3, 0);
  sizeInBytes = self->sizeInBytes_;
  if (!sizeInBytes)
  {
LABEL_7:
    JreThrowNullPointerException();
  }

  v9 = -v7[4];

  [(JavaUtilConcurrentAtomicAtomicLong *)sizeInBytes addAndGetWithLong:v9];
}

- (id)createOutputWithNSString:(id)string withOrgApacheLuceneStoreIOContext:(id)context
{
  [(OrgApacheLuceneStoreBaseDirectory *)self ensureOpen:string];
  newRAMFile = [(OrgApacheLuceneStoreRAMDirectory *)self newRAMFile];
  fileMap = self->fileMap_;
  if (!fileMap)
  {
    goto LABEL_8;
  }

  v8 = [(JavaUtilMap *)fileMap removeWithId:string];
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = v8;
  sizeInBytes = self->sizeInBytes_;
  if (!sizeInBytes)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  [(JavaUtilConcurrentAtomicAtomicLong *)sizeInBytes addAndGetWithLong:-*(v9 + 4)];
  JreStrongAssign(v9 + 3, 0);
LABEL_5:
  [(JavaUtilMap *)self->fileMap_ putWithId:string withId:newRAMFile];
  v11 = new_OrgApacheLuceneStoreRAMOutputStream_initWithNSString_withOrgApacheLuceneStoreRAMFile_withBoolean_(string, newRAMFile, 1);

  return v11;
}

- (id)newRAMFile
{
  v2 = new_OrgApacheLuceneStoreRAMFile_initWithOrgApacheLuceneStoreRAMDirectory_(self);

  return v2;
}

- (void)renameFileWithNSString:(id)string withNSString:(id)sString
{
  [(OrgApacheLuceneStoreBaseDirectory *)self ensureOpen];
  fileMap = self->fileMap_;
  if (!fileMap)
  {
    JreThrowNullPointerException();
  }

  v8 = [(JavaUtilMap *)fileMap getWithId:string];
  if (!v8)
  {
    v10 = new_JavaIoFileNotFoundException_initWithNSString_(string);
    objc_exception_throw(v10);
  }

  [(JavaUtilMap *)self->fileMap_ putWithId:sString withId:v8];
  v9 = self->fileMap_;

  [(JavaUtilMap *)v9 removeWithId:string];
}

- (id)openInputWithNSString:(id)string withOrgApacheLuceneStoreIOContext:(id)context
{
  [(OrgApacheLuceneStoreBaseDirectory *)self ensureOpen:string];
  fileMap = self->fileMap_;
  if (!fileMap)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilMap *)fileMap getWithId:string];
  if (!v7)
  {
    v10 = new_JavaIoFileNotFoundException_initWithNSString_(string);
    objc_exception_throw(v10);
  }

  v8 = new_OrgApacheLuceneStoreRAMInputStream_initWithNSString_withOrgApacheLuceneStoreRAMFile_(string, v7);

  return v8;
}

- (void)close
{
  atomic_store(0, &self->super.isOpen_);
  fileMap = self->fileMap_;
  if (!fileMap)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilMap *)fileMap clear];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreRAMDirectory;
  [(OrgApacheLuceneStoreBaseDirectory *)&v3 dealloc];
}

@end
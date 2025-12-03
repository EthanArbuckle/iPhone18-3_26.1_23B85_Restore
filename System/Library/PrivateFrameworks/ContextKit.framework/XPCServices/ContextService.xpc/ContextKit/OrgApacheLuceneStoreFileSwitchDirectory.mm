@interface OrgApacheLuceneStoreFileSwitchDirectory
- (id)createOutputWithNSString:(id)string withOrgApacheLuceneStoreIOContext:(id)context;
- (id)listAll;
- (id)obtainLockWithNSString:(id)string;
- (id)openInputWithNSString:(id)string withOrgApacheLuceneStoreIOContext:(id)context;
- (int64_t)fileLengthWithNSString:(id)string;
- (void)close;
- (void)dealloc;
- (void)deleteFileWithNSString:(id)string;
- (void)renameFileWithNSString:(id)string withNSString:(id)sString;
- (void)syncWithJavaUtilCollection:(id)collection;
@end

@implementation OrgApacheLuceneStoreFileSwitchDirectory

- (id)obtainLockWithNSString:(id)string
{
  v4 = sub_1000363A8(self, string);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  return [v4 obtainLockWithNSString:string];
}

- (void)close
{
  if (self->doClose_)
  {
    secondaryDir = self->secondaryDir_;
    v5[0] = self->primaryDir_;
    v5[1] = secondaryDir;
    v4 = [IOSObjectArray arrayWithObjects:v5 count:2 type:JavaIoCloseable_class_()];
    OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_(v4);
    self->doClose_ = 0;
  }
}

- (id)listAll
{
  v3 = new_JavaUtilHashSet_init();
  primaryDir = self->primaryDir_;
  if (!primaryDir)
  {
    JreThrowNullPointerException();
  }

  listAll = [(OrgApacheLuceneStoreDirectory *)primaryDir listAll];
  if (!listAll)
  {
    JreThrowNullPointerException();
  }

  v6 = listAll + 24;
  v7 = &listAll[8 * *(listAll + 2) + 24];
  while (v6 < v7)
  {
    [(JavaUtilHashSet *)v3 addWithId:*v6++];
  }

  secondaryDir = self->secondaryDir_;
  if (!secondaryDir)
  {
    JreThrowNullPointerException();
  }

  listAll2 = [(OrgApacheLuceneStoreDirectory *)secondaryDir listAll];
  if (!listAll2)
  {
    JreThrowNullPointerException();
  }

  v10 = listAll2 + 24;
  v11 = &listAll2[8 * *(listAll2 + 2) + 24];
  while (v10 < v11)
  {
    [(JavaUtilHashSet *)v3 addWithId:*v10++];
  }

  v12 = [IOSObjectArray arrayWithLength:[(JavaUtilHashSet *)v3 size] type:NSString_class_()];

  return [(JavaUtilAbstractCollection *)v3 toArrayWithNSObjectArray:v12];
}

- (void)deleteFileWithNSString:(id)string
{
  v4 = sub_1000363A8(self, string);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  [v4 deleteFileWithNSString:string];
}

- (int64_t)fileLengthWithNSString:(id)string
{
  v4 = sub_1000363A8(self, string);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  return [v4 fileLengthWithNSString:string];
}

- (id)createOutputWithNSString:(id)string withOrgApacheLuceneStoreIOContext:(id)context
{
  v6 = sub_1000363A8(self, string);
  if (!v6)
  {
    JreThrowNullPointerException();
  }

  return [v6 createOutputWithNSString:string withOrgApacheLuceneStoreIOContext:context];
}

- (void)syncWithJavaUtilCollection:(id)collection
{
  v5 = new_JavaUtilArrayList_init();
  v6 = new_JavaUtilArrayList_init();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  if (!collection)
  {
    goto LABEL_16;
  }

  v7 = v6;
  v8 = [collection countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(collection);
        }

        primaryExtensions = self->primaryExtensions_;
        if (!primaryExtensions)
        {
          goto LABEL_16;
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        ExtensionWithNSString = OrgApacheLuceneStoreFileSwitchDirectory_getExtensionWithNSString_(v13);
        if ([(JavaUtilSet *)primaryExtensions containsWithId:ExtensionWithNSString, v18])
        {
          v15 = v5;
        }

        else
        {
          v15 = v7;
        }

        [(JavaUtilArrayList *)v15 addWithId:v13];
      }

      v9 = [collection countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  primaryDir = self->primaryDir_;
  if (!primaryDir || ([(OrgApacheLuceneStoreDirectory *)primaryDir syncWithJavaUtilCollection:v5], (secondaryDir = self->secondaryDir_) == 0))
  {
LABEL_16:
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreDirectory *)secondaryDir syncWithJavaUtilCollection:v7];
}

- (void)renameFileWithNSString:(id)string withNSString:(id)sString
{
  v7 = sub_1000363A8(self, string);
  if (v7 != sub_1000363A8(self, sString))
  {
    v8 = new_OrgLukhnosPortmobileFileAtomicMoveNotSupportedException_initWithNSString_withNSString_withNSString_(string, sString, @"source and dest are in different directories");
    objc_exception_throw(v8);
  }

  if (!v7)
  {
    JreThrowNullPointerException();
  }

  [v7 renameFileWithNSString:string withNSString:sString];
}

- (id)openInputWithNSString:(id)string withOrgApacheLuceneStoreIOContext:(id)context
{
  v6 = sub_1000363A8(self, string);
  if (!v6)
  {
    JreThrowNullPointerException();
  }

  return [v6 openInputWithNSString:string withOrgApacheLuceneStoreIOContext:context];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreFileSwitchDirectory;
  [(OrgApacheLuceneStoreFileSwitchDirectory *)&v3 dealloc];
}

@end
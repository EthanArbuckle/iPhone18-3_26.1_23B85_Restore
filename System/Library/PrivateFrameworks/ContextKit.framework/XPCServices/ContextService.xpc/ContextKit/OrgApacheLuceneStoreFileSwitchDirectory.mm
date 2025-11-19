@interface OrgApacheLuceneStoreFileSwitchDirectory
- (id)createOutputWithNSString:(id)a3 withOrgApacheLuceneStoreIOContext:(id)a4;
- (id)listAll;
- (id)obtainLockWithNSString:(id)a3;
- (id)openInputWithNSString:(id)a3 withOrgApacheLuceneStoreIOContext:(id)a4;
- (int64_t)fileLengthWithNSString:(id)a3;
- (void)close;
- (void)dealloc;
- (void)deleteFileWithNSString:(id)a3;
- (void)renameFileWithNSString:(id)a3 withNSString:(id)a4;
- (void)syncWithJavaUtilCollection:(id)a3;
@end

@implementation OrgApacheLuceneStoreFileSwitchDirectory

- (id)obtainLockWithNSString:(id)a3
{
  v4 = sub_1000363A8(self, a3);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  return [v4 obtainLockWithNSString:a3];
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

  v5 = [(OrgApacheLuceneStoreDirectory *)primaryDir listAll];
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  v6 = v5 + 24;
  v7 = &v5[8 * *(v5 + 2) + 24];
  while (v6 < v7)
  {
    [(JavaUtilHashSet *)v3 addWithId:*v6++];
  }

  secondaryDir = self->secondaryDir_;
  if (!secondaryDir)
  {
    JreThrowNullPointerException();
  }

  v9 = [(OrgApacheLuceneStoreDirectory *)secondaryDir listAll];
  if (!v9)
  {
    JreThrowNullPointerException();
  }

  v10 = v9 + 24;
  v11 = &v9[8 * *(v9 + 2) + 24];
  while (v10 < v11)
  {
    [(JavaUtilHashSet *)v3 addWithId:*v10++];
  }

  v12 = [IOSObjectArray arrayWithLength:[(JavaUtilHashSet *)v3 size] type:NSString_class_()];

  return [(JavaUtilAbstractCollection *)v3 toArrayWithNSObjectArray:v12];
}

- (void)deleteFileWithNSString:(id)a3
{
  v4 = sub_1000363A8(self, a3);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  [v4 deleteFileWithNSString:a3];
}

- (int64_t)fileLengthWithNSString:(id)a3
{
  v4 = sub_1000363A8(self, a3);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  return [v4 fileLengthWithNSString:a3];
}

- (id)createOutputWithNSString:(id)a3 withOrgApacheLuceneStoreIOContext:(id)a4
{
  v6 = sub_1000363A8(self, a3);
  if (!v6)
  {
    JreThrowNullPointerException();
  }

  return [v6 createOutputWithNSString:a3 withOrgApacheLuceneStoreIOContext:a4];
}

- (void)syncWithJavaUtilCollection:(id)a3
{
  v5 = new_JavaUtilArrayList_init();
  v6 = new_JavaUtilArrayList_init();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  if (!a3)
  {
    goto LABEL_16;
  }

  v7 = v6;
  v8 = [a3 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(a3);
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

      v9 = [a3 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (void)renameFileWithNSString:(id)a3 withNSString:(id)a4
{
  v7 = sub_1000363A8(self, a3);
  if (v7 != sub_1000363A8(self, a4))
  {
    v8 = new_OrgLukhnosPortmobileFileAtomicMoveNotSupportedException_initWithNSString_withNSString_withNSString_(a3, a4, @"source and dest are in different directories");
    objc_exception_throw(v8);
  }

  if (!v7)
  {
    JreThrowNullPointerException();
  }

  [v7 renameFileWithNSString:a3 withNSString:a4];
}

- (id)openInputWithNSString:(id)a3 withOrgApacheLuceneStoreIOContext:(id)a4
{
  v6 = sub_1000363A8(self, a3);
  if (!v6)
  {
    JreThrowNullPointerException();
  }

  return [v6 openInputWithNSString:a3 withOrgApacheLuceneStoreIOContext:a4];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreFileSwitchDirectory;
  [(OrgApacheLuceneStoreFileSwitchDirectory *)&v3 dealloc];
}

@end
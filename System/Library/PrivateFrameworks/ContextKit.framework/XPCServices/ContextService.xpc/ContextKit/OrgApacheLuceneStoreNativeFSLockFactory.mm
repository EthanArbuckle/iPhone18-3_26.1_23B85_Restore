@interface OrgApacheLuceneStoreNativeFSLockFactory
+ (void)initialize;
- (id)obtainFSLockWithOrgApacheLuceneStoreFSDirectory:(id)a3 withNSString:(id)a4;
@end

@implementation OrgApacheLuceneStoreNativeFSLockFactory

- (id)obtainFSLockWithOrgApacheLuceneStoreFSDirectory:(id)a3 withNSString:(id)a4
{
  if (!a3)
  {
    goto LABEL_18;
  }

  v5 = [a3 getDirectory];
  OrgLukhnosPortmobileFileFiles_createDirectoriesWithOrgLukhnosPortmobileFilePath_(v5);
  if (!v5 || (v6 = [v5 resolveWithNSString:a4], OrgLukhnosPortmobileFileFiles_createFileWithOrgLukhnosPortmobileFilePath_(v6), !v6) || (v7 = objc_msgSend(v6, "toRealPath"), OrgLukhnosPortmobileFileAttributeBasicFileAttributes_class_(), (AttributesWithOrgLukhnosPortmobileFilePath_withIOSClass = OrgLukhnosPortmobileFileFiles_readAttributesWithOrgLukhnosPortmobileFilePath_withIOSClass_(v7)) == 0) || (v9 = -[OrgLukhnosPortmobileFileAttributeBasicFileAttributes creationTime](AttributesWithOrgLukhnosPortmobileFilePath_withIOSClass, "creationTime"), !qword_100554738) || !v7)
  {
LABEL_18:
    JreThrowNullPointerException();
  }

  v10 = v9;
  if (![qword_100554738 addWithId:{objc_msgSend(v7, "description")}])
  {
    v31 = JreStrcat("$@", v11, v12, v13, v14, v15, v16, v17, @"Lock held by this virtual machine: ");
    v32 = new_OrgApacheLuceneStoreLockObtainFailedException_initWithNSString_(v31);
    objc_exception_throw(v32);
  }

  if ((atomic_load_explicit(OrgLukhnosPortmobileFileStandardOpenOptionEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  v35[0] = qword_100557490;
  if ((atomic_load_explicit(OrgLukhnosPortmobileFileStandardOpenOptionEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  v35[1] = qword_100557488;
  v18 = [IOSObjectArray arrayWithObjects:v35 count:2 type:OrgLukhnosPortmobileFileStandardOpenOptionEnum_class_()];
  v19 = OrgLukhnosPortmobileChannelsUtilsFileChannelUtils_openWithOrgLukhnosPortmobileFilePath_withOrgLukhnosPortmobileFileStandardOpenOptionEnumArray_(v7, v18);
  v20 = v19;
  if (!v19)
  {
    JreThrowNullPointerException();
  }

  v28 = [v19 tryLock];
  if (!v28)
  {
    v33 = JreStrcat("$@", v21, v22, v23, v24, v25, v26, v27, @"Lock held by another program: ");
    v34 = new_OrgApacheLuceneStoreLockObtainFailedException_initWithNSString_(v33);
    objc_exception_throw(v34);
  }

  v29 = [OrgApacheLuceneStoreNativeFSLockFactory_NativeFSLock alloc];
  OrgApacheLuceneStoreNativeFSLockFactory_NativeFSLock_initWithJavaNioChannelsFileLock_withJavaNioChannelsFileChannel_withOrgLukhnosPortmobileFilePath_withOrgLukhnosPortmobileFileAttributeFileTime_(&v29->super.super.isa, v28, v20, v7, v10);
  return v29;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [OrgApacheLuceneStoreNativeFSLockFactory alloc];
    OrgApacheLuceneStoreFSLockFactory_init(v2, v3);
    JreStrongAssignAndConsume(&OrgApacheLuceneStoreNativeFSLockFactory_INSTANCE_, v2);
    v4 = new_JavaUtilHashSet_init();
    v5 = JavaUtilCollections_synchronizedSetWithJavaUtilSet_(v4);
    JreStrongAssign(&qword_100554738, v5);
    atomic_store(1u, OrgApacheLuceneStoreNativeFSLockFactory__initialized);
  }
}

@end
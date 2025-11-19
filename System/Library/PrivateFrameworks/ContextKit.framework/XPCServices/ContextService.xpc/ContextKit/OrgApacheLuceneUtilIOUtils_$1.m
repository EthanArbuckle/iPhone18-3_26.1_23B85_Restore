@interface OrgApacheLuceneUtilIOUtils_$1
- (id)postVisitDirectoryWithId:(id)a3 withJavaIoIOException:(id)a4;
- (id)preVisitDirectoryWithId:(id)a3 withOrgLukhnosPortmobileFileAttributeBasicFileAttributes:(id)a4;
- (id)visitFileFailedWithId:(id)a3 withJavaIoIOException:(id)a4;
- (id)visitFileWithId:(id)a3 withOrgLukhnosPortmobileFileAttributeBasicFileAttributes:(id)a4;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilIOUtils_$1

- (id)preVisitDirectoryWithId:(id)a3 withOrgLukhnosPortmobileFileAttributeBasicFileAttributes:(id)a4
{
  if ((atomic_load_explicit(OrgLukhnosPortmobileFileFileVisitResultEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100013914();
  }

  return OrgLukhnosPortmobileFileFileVisitResultEnum_values_;
}

- (id)postVisitDirectoryWithId:(id)a3 withJavaIoIOException:(id)a4
{
  OrgLukhnosPortmobileFileFiles_delete__WithOrgLukhnosPortmobileFilePath_(a3);
  if ((atomic_load_explicit(OrgLukhnosPortmobileFileFileVisitResultEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100013914();
  }

  return OrgLukhnosPortmobileFileFileVisitResultEnum_values_;
}

- (id)visitFileWithId:(id)a3 withOrgLukhnosPortmobileFileAttributeBasicFileAttributes:(id)a4
{
  OrgLukhnosPortmobileFileFiles_delete__WithOrgLukhnosPortmobileFilePath_(a3);
  if ((atomic_load_explicit(OrgLukhnosPortmobileFileFileVisitResultEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100013914();
  }

  return OrgLukhnosPortmobileFileFileVisitResultEnum_values_;
}

- (id)visitFileFailedWithId:(id)a3 withJavaIoIOException:(id)a4
{
  if (a4)
  {
    v4 = self->val$unremoved_;
    if (!v4)
    {
      JreThrowNullPointerException();
    }

    [(JavaUtilHashMap *)v4 putWithId:a3 withId:?];
  }

  if ((atomic_load_explicit(OrgLukhnosPortmobileFileFileVisitResultEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100013914();
  }

  return OrgLukhnosPortmobileFileFileVisitResultEnum_values_;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilIOUtils__1;
  [(OrgApacheLuceneUtilIOUtils_$1 *)&v3 dealloc];
}

@end
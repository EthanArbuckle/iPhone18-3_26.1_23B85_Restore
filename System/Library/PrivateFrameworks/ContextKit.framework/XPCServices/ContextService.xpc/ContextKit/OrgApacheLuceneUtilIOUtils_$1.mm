@interface OrgApacheLuceneUtilIOUtils_$1
- (id)postVisitDirectoryWithId:(id)id withJavaIoIOException:(id)exception;
- (id)preVisitDirectoryWithId:(id)id withOrgLukhnosPortmobileFileAttributeBasicFileAttributes:(id)attributes;
- (id)visitFileFailedWithId:(id)id withJavaIoIOException:(id)exception;
- (id)visitFileWithId:(id)id withOrgLukhnosPortmobileFileAttributeBasicFileAttributes:(id)attributes;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilIOUtils_$1

- (id)preVisitDirectoryWithId:(id)id withOrgLukhnosPortmobileFileAttributeBasicFileAttributes:(id)attributes
{
  if ((atomic_load_explicit(OrgLukhnosPortmobileFileFileVisitResultEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100013914();
  }

  return OrgLukhnosPortmobileFileFileVisitResultEnum_values_;
}

- (id)postVisitDirectoryWithId:(id)id withJavaIoIOException:(id)exception
{
  OrgLukhnosPortmobileFileFiles_delete__WithOrgLukhnosPortmobileFilePath_(id);
  if ((atomic_load_explicit(OrgLukhnosPortmobileFileFileVisitResultEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100013914();
  }

  return OrgLukhnosPortmobileFileFileVisitResultEnum_values_;
}

- (id)visitFileWithId:(id)id withOrgLukhnosPortmobileFileAttributeBasicFileAttributes:(id)attributes
{
  OrgLukhnosPortmobileFileFiles_delete__WithOrgLukhnosPortmobileFilePath_(id);
  if ((atomic_load_explicit(OrgLukhnosPortmobileFileFileVisitResultEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100013914();
  }

  return OrgLukhnosPortmobileFileFileVisitResultEnum_values_;
}

- (id)visitFileFailedWithId:(id)id withJavaIoIOException:(id)exception
{
  if (exception)
  {
    v4 = self->val$unremoved_;
    if (!v4)
    {
      JreThrowNullPointerException();
    }

    [(JavaUtilHashMap *)v4 putWithId:id withId:?];
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
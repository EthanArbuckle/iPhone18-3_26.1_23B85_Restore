@interface OrgApacheLuceneStoreTrackingDirectoryWrapper
- (id)createOutputWithNSString:(id)string withOrgApacheLuceneStoreIOContext:(id)context;
- (void)copyFromWithOrgApacheLuceneStoreDirectory:(id)directory withNSString:(id)string withNSString:(id)sString withOrgApacheLuceneStoreIOContext:(id)context;
- (void)dealloc;
- (void)deleteFileWithNSString:(id)string;
- (void)renameFileWithNSString:(id)string withNSString:(id)sString;
@end

@implementation OrgApacheLuceneStoreTrackingDirectoryWrapper

- (void)deleteFileWithNSString:(id)string
{
  in = self->super.in_;
  if (!in || ([(OrgApacheLuceneStoreDirectory *)in deleteFileWithNSString:?], (createdFileNames = self->createdFileNames_) == 0))
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilSet *)createdFileNames removeWithId:string];
}

- (id)createOutputWithNSString:(id)string withOrgApacheLuceneStoreIOContext:(id)context
{
  in = self->super.in_;
  if (!in || (v7 = [(OrgApacheLuceneStoreDirectory *)in createOutputWithNSString:string withOrgApacheLuceneStoreIOContext:context], (createdFileNames = self->createdFileNames_) == 0))
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilSet *)createdFileNames addWithId:string];
  return v7;
}

- (void)copyFromWithOrgApacheLuceneStoreDirectory:(id)directory withNSString:(id)string withNSString:(id)sString withOrgApacheLuceneStoreIOContext:(id)context
{
  in = self->super.in_;
  if (!in || ([(OrgApacheLuceneStoreDirectory *)in copyFromWithOrgApacheLuceneStoreDirectory:directory withNSString:string withNSString:sString withOrgApacheLuceneStoreIOContext:context], (createdFileNames = self->createdFileNames_) == 0))
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilSet *)createdFileNames addWithId:sString];
}

- (void)renameFileWithNSString:(id)string withNSString:(id)sString
{
  in = self->super.in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  [OrgApacheLuceneStoreDirectory renameFileWithNSString:"renameFileWithNSString:withNSString:" withNSString:?];
  createdFileNames = self->createdFileNames_;
  objc_sync_enter(createdFileNames);
  v9 = self->createdFileNames_;
  if (!v9)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilSet *)v9 addWithId:sString];
  [(JavaUtilSet *)self->createdFileNames_ removeWithId:string];

  objc_sync_exit(createdFileNames);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreTrackingDirectoryWrapper;
  [(OrgApacheLuceneStoreFilterDirectory *)&v3 dealloc];
}

@end
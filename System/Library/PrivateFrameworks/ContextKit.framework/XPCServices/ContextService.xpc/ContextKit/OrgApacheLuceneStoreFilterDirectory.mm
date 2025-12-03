@interface OrgApacheLuceneStoreFilterDirectory
- (OrgApacheLuceneStoreFilterDirectory)initWithOrgApacheLuceneStoreDirectory:(id)directory;
- (id)createOutputWithNSString:(id)string withOrgApacheLuceneStoreIOContext:(id)context;
- (id)description;
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

@implementation OrgApacheLuceneStoreFilterDirectory

- (OrgApacheLuceneStoreFilterDirectory)initWithOrgApacheLuceneStoreDirectory:(id)directory
{
  OrgApacheLuceneStoreDirectory_init(self, a2);
  JreStrongAssign(&self->in_, directory);
  return self;
}

- (id)listAll
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneStoreDirectory *)in listAll];
}

- (void)deleteFileWithNSString:(id)string
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreDirectory *)in deleteFileWithNSString:string];
}

- (int64_t)fileLengthWithNSString:(id)string
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneStoreDirectory *)in fileLengthWithNSString:string];
}

- (id)createOutputWithNSString:(id)string withOrgApacheLuceneStoreIOContext:(id)context
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneStoreDirectory *)in createOutputWithNSString:string withOrgApacheLuceneStoreIOContext:context];
}

- (void)syncWithJavaUtilCollection:(id)collection
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreDirectory *)in syncWithJavaUtilCollection:collection];
}

- (void)renameFileWithNSString:(id)string withNSString:(id)sString
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreDirectory *)in renameFileWithNSString:string withNSString:sString];
}

- (id)openInputWithNSString:(id)string withOrgApacheLuceneStoreIOContext:(id)context
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneStoreDirectory *)in openInputWithNSString:string withOrgApacheLuceneStoreIOContext:context];
}

- (id)obtainLockWithNSString:(id)string
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneStoreDirectory *)in obtainLockWithNSString:string];
}

- (void)close
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreDirectory *)in close];
}

- (id)description
{
  v3 = [-[OrgApacheLuceneStoreFilterDirectory getClass](self "getClass")];
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreDirectory *)in description];
  return JreStrcat("$C$C", v5, v6, v7, v8, v9, v10, v11, v3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreFilterDirectory;
  [(OrgApacheLuceneStoreFilterDirectory *)&v3 dealloc];
}

@end
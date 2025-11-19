@interface OrgApacheLuceneIndexDirectoryReader
+ (id)openIfChangedWithOrgApacheLuceneIndexDirectoryReader:(id)a3;
+ (id)openIfChangedWithOrgApacheLuceneIndexDirectoryReader:(id)a3 withOrgApacheLuceneIndexIndexCommit:(id)a4;
+ (id)openWithOrgApacheLuceneIndexIndexCommit:(id)a3;
- (OrgApacheLuceneIndexDirectoryReader)initWithOrgApacheLuceneStoreDirectory:(id)a3 withOrgApacheLuceneIndexLeafReaderArray:(id)a4;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexDirectoryReader

+ (id)openWithOrgApacheLuceneIndexIndexCommit:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = [a3 getDirectory];

  return OrgApacheLuceneIndexStandardDirectoryReader_openWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexIndexCommit_(v4, a3);
}

+ (id)openIfChangedWithOrgApacheLuceneIndexDirectoryReader:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  return [a3 doOpenIfChanged];
}

+ (id)openIfChangedWithOrgApacheLuceneIndexDirectoryReader:(id)a3 withOrgApacheLuceneIndexIndexCommit:(id)a4
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  return [a3 doOpenIfChangedWithOrgApacheLuceneIndexIndexCommit:a4];
}

- (OrgApacheLuceneIndexDirectoryReader)initWithOrgApacheLuceneStoreDirectory:(id)a3 withOrgApacheLuceneIndexLeafReaderArray:(id)a4
{
  OrgApacheLuceneIndexBaseCompositeReader_initWithOrgApacheLuceneIndexIndexReaderArray_(self, a4);
  JreStrongAssign(&self->directory_, a3);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexDirectoryReader;
  [(OrgApacheLuceneIndexBaseCompositeReader *)&v3 dealloc];
}

@end
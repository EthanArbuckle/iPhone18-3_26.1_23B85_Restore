@interface OrgApacheLuceneIndexDirectoryReader
+ (id)openIfChangedWithOrgApacheLuceneIndexDirectoryReader:(id)reader;
+ (id)openIfChangedWithOrgApacheLuceneIndexDirectoryReader:(id)reader withOrgApacheLuceneIndexIndexCommit:(id)commit;
+ (id)openWithOrgApacheLuceneIndexIndexCommit:(id)commit;
- (OrgApacheLuceneIndexDirectoryReader)initWithOrgApacheLuceneStoreDirectory:(id)directory withOrgApacheLuceneIndexLeafReaderArray:(id)array;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexDirectoryReader

+ (id)openWithOrgApacheLuceneIndexIndexCommit:(id)commit
{
  if (!commit)
  {
    JreThrowNullPointerException();
  }

  getDirectory = [commit getDirectory];

  return OrgApacheLuceneIndexStandardDirectoryReader_openWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexIndexCommit_(getDirectory, commit);
}

+ (id)openIfChangedWithOrgApacheLuceneIndexDirectoryReader:(id)reader
{
  if (!reader)
  {
    JreThrowNullPointerException();
  }

  return [reader doOpenIfChanged];
}

+ (id)openIfChangedWithOrgApacheLuceneIndexDirectoryReader:(id)reader withOrgApacheLuceneIndexIndexCommit:(id)commit
{
  if (!reader)
  {
    JreThrowNullPointerException();
  }

  return [reader doOpenIfChangedWithOrgApacheLuceneIndexIndexCommit:commit];
}

- (OrgApacheLuceneIndexDirectoryReader)initWithOrgApacheLuceneStoreDirectory:(id)directory withOrgApacheLuceneIndexLeafReaderArray:(id)array
{
  OrgApacheLuceneIndexBaseCompositeReader_initWithOrgApacheLuceneIndexIndexReaderArray_(self, array);
  JreStrongAssign(&self->directory_, directory);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexDirectoryReader;
  [(OrgApacheLuceneIndexBaseCompositeReader *)&v3 dealloc];
}

@end
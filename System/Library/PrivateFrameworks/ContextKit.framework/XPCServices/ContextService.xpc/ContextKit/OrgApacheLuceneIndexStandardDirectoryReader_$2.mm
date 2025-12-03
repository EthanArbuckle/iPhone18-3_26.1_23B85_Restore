@interface OrgApacheLuceneIndexStandardDirectoryReader_$2
- (OrgApacheLuceneIndexStandardDirectoryReader_$2)initWithOrgApacheLuceneIndexStandardDirectoryReader:(id)reader withOrgApacheLuceneStoreDirectory:(id)directory;
- (id)doBodyWithNSString:(id)string;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexStandardDirectoryReader_$2

- (id)doBodyWithNSString:(id)string
{
  CommitWithOrgApacheLuceneStoreDirectory_withNSString = OrgApacheLuceneIndexSegmentInfos_readCommitWithOrgApacheLuceneStoreDirectory_withNSString_(self->super.directory_, string);
  v5 = self->this$0_;

  return [(OrgApacheLuceneIndexStandardDirectoryReader *)v5 doOpenIfChangedWithOrgApacheLuceneIndexSegmentInfos:CommitWithOrgApacheLuceneStoreDirectory_withNSString];
}

- (OrgApacheLuceneIndexStandardDirectoryReader_$2)initWithOrgApacheLuceneIndexStandardDirectoryReader:(id)reader withOrgApacheLuceneStoreDirectory:(id)directory
{
  JreStrongAssign(&self->this$0_, reader);
  OrgApacheLuceneIndexSegmentInfos_FindSegmentsFile_initWithOrgApacheLuceneStoreDirectory_(self, directory);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexStandardDirectoryReader__2;
  [(OrgApacheLuceneIndexSegmentInfos_FindSegmentsFile *)&v3 dealloc];
}

@end
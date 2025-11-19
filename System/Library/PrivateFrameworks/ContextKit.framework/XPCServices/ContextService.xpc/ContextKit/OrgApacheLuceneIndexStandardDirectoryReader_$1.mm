@interface OrgApacheLuceneIndexStandardDirectoryReader_$1
- (id)doBodyWithNSString:(id)a3;
@end

@implementation OrgApacheLuceneIndexStandardDirectoryReader_$1

- (id)doBodyWithNSString:(id)a3
{
  CommitWithOrgApacheLuceneStoreDirectory_withNSString = OrgApacheLuceneIndexSegmentInfos_readCommitWithOrgApacheLuceneStoreDirectory_withNSString_(self->super.directory_, a3);
  if (!CommitWithOrgApacheLuceneStoreDirectory_withNSString)
  {
    JreThrowNullPointerException();
  }

  v5 = CommitWithOrgApacheLuceneStoreDirectory_withNSString;
  v6 = [IOSObjectArray arrayWithLength:[(OrgApacheLuceneIndexSegmentInfos *)CommitWithOrgApacheLuceneStoreDirectory_withNSString size] type:OrgApacheLuceneIndexSegmentReader_class_()];
  for (i = [(OrgApacheLuceneIndexSegmentInfos *)v5 size]; (--i & 0x80000000) == 0; IOSObjectArray_SetAndConsume(v6, i & 0x7FFFFFFF, v9))
  {
    v8 = [(OrgApacheLuceneIndexSegmentInfos *)v5 infoWithInt:i];
    if ((atomic_load_explicit(OrgApacheLuceneStoreIOContext__initialized, memory_order_acquire) & 1) == 0)
    {
      objc_opt_class();
    }

    v9 = new_OrgApacheLuceneIndexSegmentReader_initWithOrgApacheLuceneIndexSegmentCommitInfo_withOrgApacheLuceneStoreIOContext_(v8, OrgApacheLuceneStoreIOContext_READ_);
  }

  directory = self->super.directory_;
  v11 = [OrgApacheLuceneIndexStandardDirectoryReader alloc];
  OrgApacheLuceneIndexStandardDirectoryReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexLeafReaderArray_withOrgApacheLuceneIndexIndexWriter_withOrgApacheLuceneIndexSegmentInfos_withBoolean_(v11, directory, v6, 0, v5, 0);
  return v11;
}

@end
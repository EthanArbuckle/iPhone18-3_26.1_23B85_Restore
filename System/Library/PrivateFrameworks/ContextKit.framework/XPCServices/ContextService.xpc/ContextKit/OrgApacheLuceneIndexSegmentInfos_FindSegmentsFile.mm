@interface OrgApacheLuceneIndexSegmentInfos_FindSegmentsFile
- (id)runWithOrgApacheLuceneIndexIndexCommit:(id)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexSegmentInfos_FindSegmentsFile

- (id)runWithOrgApacheLuceneIndexIndexCommit:(id)a3
{
  directory = self->directory_;
  if (a3)
  {
    if (directory == [a3 getDirectory])
    {
      v6 = [a3 getSegmentsFileName];

      return [(OrgApacheLuceneIndexSegmentInfos_FindSegmentsFile *)self doBodyWithNSString:v6];
    }

    v26 = new_JavaIoIOException_initWithNSString_(@"the specified commit does not match the specified Directory");
LABEL_24:
    objc_exception_throw(v26);
  }

  if (!directory)
  {
LABEL_21:
    JreThrowNullPointerException();
  }

  while (1)
  {
    v8 = [(OrgApacheLuceneStoreDirectory *)directory listAll];
    v9 = [(OrgApacheLuceneStoreDirectory *)self->directory_ listAll];
    JavaUtilArrays_sortWithNSObjectArray_(v8);
    JavaUtilArrays_sortWithNSObjectArray_(v9);
    if (JavaUtilArrays_equalsWithNSObjectArray_withNSObjectArray_(v8, v9))
    {
      break;
    }

    directory = self->directory_;
    if (!directory)
    {
      goto LABEL_21;
    }
  }

  LastCommitGenerationWithNSStringArray = OrgApacheLuceneIndexSegmentInfos_getLastCommitGenerationWithNSStringArray_(v8);
  if ((atomic_load_explicit(&OrgApacheLuceneIndexSegmentInfos__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10001987C();
  }

  if (qword_100553E40)
  {
    JreStrcat("$J", v10, v11, v12, v13, v14, v15, v16, @"directory listing gen=");
    sub_10001975C();
  }

  if (LastCommitGenerationWithNSStringArray == -1)
  {
    v27 = self->directory_;
    JavaUtilArrays_toStringWithNSObjectArray_(v8);
    v35 = JreStrcat("$@$$", v28, v29, v30, v31, v32, v33, v34, @"no segments* file found in ");
    v26 = new_OrgApacheLuceneIndexIndexNotFoundException_initWithNSString_(v35);
    goto LABEL_24;
  }

  if (LastCommitGenerationWithNSStringArray <= -1)
  {
    objc_exception_throw(0);
  }

  v25 = [(OrgApacheLuceneIndexSegmentInfos_FindSegmentsFile *)self doBodyWithNSString:OrgApacheLuceneIndexIndexFileNames_fileNameFromGenerationWithNSString_withNSString_withLong_(OrgApacheLuceneIndexIndexFileNames_SEGMENTS_, &stru_100484358, LastCommitGenerationWithNSStringArray)];
  if ((atomic_load_explicit(&OrgApacheLuceneIndexSegmentInfos__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (qword_100553E40)
  {
    JreStrcat("$$", v18, v19, v20, v21, v22, v23, v24, @"success on ");
    sub_10001975C();
  }

  return v25;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexSegmentInfos_FindSegmentsFile;
  [(OrgApacheLuceneIndexSegmentInfos_FindSegmentsFile *)&v3 dealloc];
}

@end
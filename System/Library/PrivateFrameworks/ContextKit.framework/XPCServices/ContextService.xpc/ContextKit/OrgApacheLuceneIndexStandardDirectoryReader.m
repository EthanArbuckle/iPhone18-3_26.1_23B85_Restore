@interface OrgApacheLuceneIndexStandardDirectoryReader
- (BOOL)isCurrent;
- (id)description;
- (id)doOpenIfChangedWithOrgApacheLuceneIndexIndexCommit:(id)a3;
- (id)doOpenIfChangedWithOrgApacheLuceneIndexSegmentInfos:(id)a3;
- (id)getIndexCommit;
- (int64_t)getVersion;
- (void)dealloc;
- (void)doClose;
@end

@implementation OrgApacheLuceneIndexStandardDirectoryReader

- (id)description
{
  v3 = new_JavaLangStringBuilder_init();
  -[JavaLangStringBuilder appendWithNSString:](v3, "appendWithNSString:", [-[OrgApacheLuceneIndexStandardDirectoryReader getClass](self "getClass")]);
  [(JavaLangStringBuilder *)v3 appendWithChar:40];
  segmentInfos = self->segmentInfos_;
  if (!segmentInfos)
  {
    goto LABEL_17;
  }

  v5 = [(OrgApacheLuceneIndexSegmentInfos *)segmentInfos getSegmentsFileName];
  if (v5)
  {
    v6 = [(JavaLangStringBuilder *)v3 appendWithNSString:v5];
    if (!v6)
    {
      goto LABEL_17;
    }

    v7 = [v6 appendWithNSString:@":"];
    if (!v7)
    {
      goto LABEL_17;
    }

    [v7 appendWithLong:{-[OrgApacheLuceneIndexSegmentInfos getVersion](self->segmentInfos_, "getVersion")}];
  }

  if (self->writer_)
  {
    [(JavaLangStringBuilder *)v3 appendWithNSString:@":nrt"];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(OrgApacheLuceneIndexBaseCompositeReader *)self getSequentialSubReaders];
  if (!v8)
  {
LABEL_17:
    JreThrowNullPointerException();
  }

  v9 = v8;
  v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        [(JavaLangStringBuilder *)v3 appendWithChar:32];
        [(JavaLangStringBuilder *)v3 appendWithId:v14];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  [(JavaLangStringBuilder *)v3 appendWithChar:41];
  return [(JavaLangStringBuilder *)v3 description];
}

- (id)doOpenIfChangedWithOrgApacheLuceneIndexIndexCommit:(id)a3
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  if (self->writer_)
  {

    return sub_10010FF54(self, a3);
  }

  else
  {

    return sub_10011001C(self, a3);
  }
}

- (id)doOpenIfChangedWithOrgApacheLuceneIndexSegmentInfos:(id)a3
{
  directory = self->super.directory_;
  v5 = [(OrgApacheLuceneIndexBaseCompositeReader *)self getSequentialSubReaders];
  v6 = new_JavaUtilHashMap_init();
  if (v5)
  {
    v7 = [v5 size];
    if (v7 >= 1)
    {
      v8 = v7;
      v9 = 0;
      while (1)
      {
        v10 = [v5 getWithInt:v9];
        objc_opt_class();
        if (!v10)
        {
          break;
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_47:
          JreThrowClassCastException();
        }

        -[JavaUtilHashMap putWithId:withId:](v6, "putWithId:withId:", [v10 getSegmentName], JavaLangInteger_valueOfWithInt_(v9));
        v9 = (v9 + 1);
        if (v8 == v9)
        {
          goto LABEL_7;
        }
      }

LABEL_46:
      JreThrowNullPointerException();
    }
  }

LABEL_7:
  if (!a3)
  {
    goto LABEL_46;
  }

  v47 = +[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", [a3 size], OrgApacheLuceneIndexSegmentReader_class_());
  v11 = [a3 size];
  v12 = v11 - 1;
  if ((v11 - 1) >= 0)
  {
    do
    {
      v13 = [a3 infoWithInt:v12];
      if (!v13)
      {
        goto LABEL_46;
      }

      v14 = v13;
      v15 = v13[1];
      if (!v15)
      {
        goto LABEL_46;
      }

      v16 = [(JavaUtilHashMap *)v6 getWithId:v15[1]];
      if (!v16)
      {
        goto LABEL_17;
      }

      if (!v5)
      {
        goto LABEL_46;
      }

      v17 = [v5 getWithInt:{objc_msgSend(v16, "intValue")}];
      objc_opt_class();
      if (!v17)
      {
        goto LABEL_17;
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_47;
      }

      v18 = [v14[1] getUseCompoundFile];
      v19 = [v17 getSegmentInfo];
      if (!v19)
      {
LABEL_48:
        JreThrowNullPointerException();
      }

      if (v18 == [v19[1] getUseCompoundFile])
      {
        v22 = [v17 getSegmentInfo];
        if (!v22)
        {
          goto LABEL_48;
        }

        v23 = [v22 getDelGen];
        if (v23 != [v14 getDelGen])
        {
          goto LABEL_28;
        }

        v24 = [v17 getSegmentInfo];
        if (!v24)
        {
          goto LABEL_48;
        }

        v25 = [v24 getFieldInfosGen];
        if (v25 == [v14 getFieldInfosGen])
        {
          [v17 incRef];
          IOSObjectArray_Set(v47, v12, v17);
        }

        else
        {
LABEL_28:
          v26 = [v14[1] maxDoc];
          v27 = [v17 getSegmentInfo];
          if (!v27)
          {
            JreThrowNullPointerException();
          }

          v28 = [v27[1] maxDoc];
          if ([v14 hasDeletions])
          {
            LOBYTE(v29) = 0;
          }

          else
          {
            v29 = [v14 hasFieldUpdates] ^ 1;
          }

          if ([v14 getDelGen] == -1)
          {
            v38 = [v17 getSegmentInfo];
            if (!v38)
            {
              goto LABEL_49;
            }

            v37 = [v38 getDelGen] != -1;
          }

          else
          {
            v37 = 0;
          }

          if ((v26 != v28) | v29 & 1 || v37)
          {
            v46 = *(v14[1] + 1);
            v44 = JreStrcat("$$$", v30, v31, v32, v33, v34, v35, v36, @"same segment ");
            v45 = new_JavaLangIllegalStateException_initWithNSString_(v44);
            objc_exception_throw(v45);
          }

          v39 = [v17 getSegmentInfo];
          if (!v39)
          {
LABEL_49:
            JreThrowNullPointerException();
          }

          v40 = [v39 getDelGen];
          if (v40 == [v14 getDelGen])
          {
            v41 = new_OrgApacheLuceneIndexSegmentReader_initWithOrgApacheLuceneIndexSegmentCommitInfo_withOrgApacheLuceneIndexSegmentReader_withOrgApacheLuceneUtilBits_withInt_(v14, v17, [v17 getLiveDocs], objc_msgSend(v17, "numDocs"));
          }

          else
          {
            v41 = new_OrgApacheLuceneIndexSegmentReader_initWithOrgApacheLuceneIndexSegmentCommitInfo_withOrgApacheLuceneIndexSegmentReader_(v14, v17);
          }

          IOSObjectArray_SetAndConsume(v47, v12, v41);
        }
      }

      else
      {
LABEL_17:
        if ((atomic_load_explicit(OrgApacheLuceneStoreIOContext__initialized, memory_order_acquire) & 1) == 0)
        {
          objc_opt_class();
        }

        v20 = new_OrgApacheLuceneIndexSegmentReader_initWithOrgApacheLuceneIndexSegmentCommitInfo_withOrgApacheLuceneStoreIOContext_(v14, OrgApacheLuceneStoreIOContext_READ_);
        IOSObjectArray_Set(v47, v12, v20);
      }
    }

    while (v12-- > 0);
  }

  v42 = [OrgApacheLuceneIndexStandardDirectoryReader alloc];
  OrgApacheLuceneIndexStandardDirectoryReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexLeafReaderArray_withOrgApacheLuceneIndexIndexWriter_withOrgApacheLuceneIndexSegmentInfos_withBoolean_(v42, directory, v47, 0, a3, 0);

  return v42;
}

- (int64_t)getVersion
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  segmentInfos = self->segmentInfos_;
  if (!segmentInfos)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexSegmentInfos *)segmentInfos getVersion];
}

- (BOOL)isCurrent
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  writer = self->writer_;
  if (writer && ![(OrgApacheLuceneIndexIndexWriter *)writer isClosed])
  {
    v8 = self->writer_;
    segmentInfos = self->segmentInfos_;

    return [(OrgApacheLuceneIndexIndexWriter *)v8 nrtIsCurrentWithOrgApacheLuceneIndexSegmentInfos:segmentInfos];
  }

  else
  {
    LatestCommitWithOrgApacheLuceneStoreDirectory = OrgApacheLuceneIndexSegmentInfos_readLatestCommitWithOrgApacheLuceneStoreDirectory_(self->super.directory_);
    if (!LatestCommitWithOrgApacheLuceneStoreDirectory || (v5 = [LatestCommitWithOrgApacheLuceneStoreDirectory getVersion], (v6 = self->segmentInfos_) == 0))
    {
      JreThrowNullPointerException();
    }

    return v5 == [(OrgApacheLuceneIndexSegmentInfos *)v6 getVersion];
  }
}

- (void)doClose
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(OrgApacheLuceneIndexBaseCompositeReader *)self getSequentialSubReaders];
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  v4 = v3;
  v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        if (!v8)
        {
          JreThrowNullPointerException();
        }

        [v8 decRef];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v9 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v5 = v9;
    }

    while (v9);
  }

  writer = self->writer_;
  if (writer)
  {
    [(OrgApacheLuceneIndexIndexWriter *)writer decRefDeleterWithOrgApacheLuceneIndexSegmentInfos:self->segmentInfos_];
  }

  OrgApacheLuceneUtilIOUtils_reThrowWithJavaLangThrowable_(0);
}

- (id)getIndexCommit
{
  [(OrgApacheLuceneIndexIndexReader *)self ensureOpen];
  segmentInfos = self->segmentInfos_;
  directory = self->super.directory_;
  v5 = [OrgApacheLuceneIndexStandardDirectoryReader_ReaderCommit alloc];
  OrgApacheLuceneIndexStandardDirectoryReader_ReaderCommit_initWithOrgApacheLuceneIndexStandardDirectoryReader_withOrgApacheLuceneIndexSegmentInfos_withOrgApacheLuceneStoreDirectory_(v5, self, segmentInfos, directory);

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexStandardDirectoryReader;
  [(OrgApacheLuceneIndexDirectoryReader *)&v3 dealloc];
}

@end
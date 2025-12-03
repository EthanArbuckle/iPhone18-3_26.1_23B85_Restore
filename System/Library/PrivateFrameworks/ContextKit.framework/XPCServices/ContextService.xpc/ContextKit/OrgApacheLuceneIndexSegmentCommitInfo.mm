@interface OrgApacheLuceneIndexSegmentCommitInfo
- (id)clone;
- (id)files;
- (id)toStringWithInt:(int)int;
- (int64_t)sizeInBytes;
- (void)advanceDelGen;
- (void)advanceDocValuesGen;
- (void)advanceFieldInfosGen;
- (void)dealloc;
- (void)setDelCountWithInt:(int)int;
- (void)setDocValuesUpdatesFilesWithJavaUtilMap:(id)map;
- (void)setFieldInfosFilesWithJavaUtilSet:(id)set;
- (void)setGenUpdatesFilesWithJavaUtilMap:(id)map;
@end

@implementation OrgApacheLuceneIndexSegmentCommitInfo

- (void)setGenUpdatesFilesWithJavaUtilMap:(id)map
{
  genUpdatesFiles = self->genUpdatesFiles_;
  if (!genUpdatesFiles || (-[JavaUtilMap clear](genUpdatesFiles, "clear"), v28 = 0u, v29 = 0u, v26 = 0u, v27 = 0u, !map) || (v6 = [map entrySet]) == 0)
  {
LABEL_22:
    JreThrowNullPointerException();
  }

  v7 = v6;
  v8 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v21 = *v27;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = new_JavaUtilHashSet_init();
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        if (!v11)
        {
          goto LABEL_22;
        }

        v13 = v12;
        getValue = [v11 getValue];
        if (!getValue)
        {
          goto LABEL_22;
        }

        v15 = getValue;
        v16 = [getValue countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v23;
          do
          {
            for (j = 0; j != v17; j = j + 1)
            {
              if (*v23 != v18)
              {
                objc_enumerationMutation(v15);
              }

              info = self->info_;
              if (!info)
              {
                goto LABEL_22;
              }

              [(JavaUtilHashSet *)v13 addWithId:[(OrgApacheLuceneIndexSegmentInfo *)info namedForThisSegmentWithNSString:*(*(&v22 + 1) + 8 * j)]];
            }

            v17 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v17);
        }

        -[JavaUtilMap putWithId:withId:](self->genUpdatesFiles_, "putWithId:withId:", [v11 getKey], v13);
      }

      v9 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v9);
  }
}

- (void)setDocValuesUpdatesFilesWithJavaUtilMap:(id)map
{
  dvUpdatesFiles = self->dvUpdatesFiles_;
  if (!dvUpdatesFiles || (-[JavaUtilMap clear](dvUpdatesFiles, "clear"), v28 = 0u, v29 = 0u, v26 = 0u, v27 = 0u, !map) || (v6 = [map entrySet]) == 0)
  {
LABEL_22:
    JreThrowNullPointerException();
  }

  v7 = v6;
  v8 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v21 = *v27;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = new_JavaUtilHashSet_init();
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        if (!v11)
        {
          goto LABEL_22;
        }

        v13 = v12;
        getValue = [v11 getValue];
        if (!getValue)
        {
          goto LABEL_22;
        }

        v15 = getValue;
        v16 = [getValue countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v23;
          do
          {
            for (j = 0; j != v17; j = j + 1)
            {
              if (*v23 != v18)
              {
                objc_enumerationMutation(v15);
              }

              info = self->info_;
              if (!info)
              {
                goto LABEL_22;
              }

              [(JavaUtilHashSet *)v13 addWithId:[(OrgApacheLuceneIndexSegmentInfo *)info namedForThisSegmentWithNSString:*(*(&v22 + 1) + 8 * j)]];
            }

            v17 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v17);
        }

        -[JavaUtilMap putWithId:withId:](self->dvUpdatesFiles_, "putWithId:withId:", [v11 getKey], v13);
      }

      v9 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v9);
  }
}

- (void)setFieldInfosFilesWithJavaUtilSet:(id)set
{
  fieldInfosFiles = self->fieldInfosFiles_;
  if (!fieldInfosFiles || ([(JavaUtilSet *)fieldInfosFiles clear], v13 = 0u, v14 = 0u, v11 = 0u, v12 = 0u, !set))
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  v6 = [set countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(set);
        }

        info = self->info_;
        if (!info)
        {
          goto LABEL_12;
        }

        [(JavaUtilSet *)self->fieldInfosFiles_ addWithId:[(OrgApacheLuceneIndexSegmentInfo *)info namedForThisSegmentWithNSString:*(*(&v11 + 1) + 8 * i), v11]];
      }

      v7 = [set countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)advanceDelGen
{
  nextWriteDelGen = self->nextWriteDelGen_;
  self->delGen_ = nextWriteDelGen;
  self->nextWriteDelGen_ = nextWriteDelGen + 1;
  atomic_store(0xFFFFFFFFFFFFFFFFLL, &self->sizeInBytes_);
}

- (void)advanceFieldInfosGen
{
  nextWriteFieldInfosGen = self->nextWriteFieldInfosGen_;
  self->fieldInfosGen_ = nextWriteFieldInfosGen;
  self->nextWriteFieldInfosGen_ = nextWriteFieldInfosGen + 1;
  atomic_store(0xFFFFFFFFFFFFFFFFLL, &self->sizeInBytes_);
}

- (void)advanceDocValuesGen
{
  nextWriteDocValuesGen = self->nextWriteDocValuesGen_;
  self->docValuesGen_ = nextWriteDocValuesGen;
  self->nextWriteDocValuesGen_ = nextWriteDocValuesGen + 1;
  atomic_store(0xFFFFFFFFFFFFFFFFLL, &self->sizeInBytes_);
}

- (int64_t)sizeInBytes
{
  p_sizeInBytes = &self->sizeInBytes_;
  v3 = atomic_load(&self->sizeInBytes_);
  if (v3 == -1)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    files = [(OrgApacheLuceneIndexSegmentCommitInfo *)self files];
    if (!files)
    {
LABEL_16:
      JreThrowNullPointerException();
    }

    v6 = files;
    v7 = [files countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v16;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v6);
          }

          info = self->info_;
          if (!info)
          {
            goto LABEL_16;
          }

          dir = info->dir_;
          if (!dir)
          {
            goto LABEL_16;
          }

          v9 += [(OrgApacheLuceneStoreDirectory *)dir fileLengthWithNSString:*(*(&v15 + 1) + 8 * i)];
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    atomic_store(v9, &self->sizeInBytes_);
  }

  return atomic_load(p_sizeInBytes);
}

- (id)files
{
  info = self->info_;
  if (!info)
  {
    goto LABEL_23;
  }

  v4 = new_JavaUtilHashSet_initWithJavaUtilCollection_([(OrgApacheLuceneIndexSegmentInfo *)info files]);
  getCodec = [(OrgApacheLuceneIndexSegmentInfo *)self->info_ getCodec];
  if (!getCodec)
  {
    goto LABEL_23;
  }

  liveDocsFormat = [getCodec liveDocsFormat];
  if (!liveDocsFormat)
  {
    goto LABEL_23;
  }

  [liveDocsFormat filesWithOrgApacheLuceneIndexSegmentCommitInfo:self withJavaUtilCollection:v4];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  genUpdatesFiles = self->genUpdatesFiles_;
  if (!genUpdatesFiles)
  {
    goto LABEL_23;
  }

  values = [(JavaUtilMap *)genUpdatesFiles values];
  if (!values)
  {
    goto LABEL_23;
  }

  v9 = values;
  v10 = [values countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(JavaUtilAbstractCollection *)v4 addAllWithJavaUtilCollection:*(*(&v26 + 1) + 8 * i)];
      }

      v11 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v11);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  dvUpdatesFiles = self->dvUpdatesFiles_;
  if (!dvUpdatesFiles || (v15 = [(JavaUtilMap *)dvUpdatesFiles values]) == 0)
  {
LABEL_23:
    JreThrowNullPointerException();
  }

  v16 = v15;
  v17 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(JavaUtilAbstractCollection *)v4 addAllWithJavaUtilCollection:*(*(&v22 + 1) + 8 * j)];
      }

      v18 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v18);
  }

  [(JavaUtilAbstractCollection *)v4 addAllWithJavaUtilCollection:self->fieldInfosFiles_];
  return v4;
}

- (void)setDelCountWithInt:(int)int
{
  if (int < 0)
  {
    goto LABEL_5;
  }

  info = self->info_;
  if (!info)
  {
    goto LABEL_7;
  }

  if ([(OrgApacheLuceneIndexSegmentInfo *)info maxDoc]< int)
  {
LABEL_5:
    v6 = self->info_;
    if (v6)
    {
      [(OrgApacheLuceneIndexSegmentInfo *)v6 maxDoc];
      v14 = JreStrcat("$I$IC", v7, v8, v9, v10, v11, v12, v13, @"invalid delCount=");
      v15 = new_JavaLangIllegalArgumentException_initWithNSString_(v14);
      objc_exception_throw(v15);
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  self->delCount_ = int;
}

- (id)toStringWithInt:(int)int
{
  info = self->info_;
  if (!info)
  {
    JreThrowNullPointerException();
  }

  v15 = [(OrgApacheLuceneIndexSegmentInfo *)info toStringWithInt:(self->delCount_ + int)];
  if (self->delGen_ != -1)
  {
    delGen = self->delGen_;
    JreStrAppend(&v15, "$J", v5, v6, v7, v8, v9, v10, @":delGen=");
  }

  if (self->fieldInfosGen_ != -1)
  {
    fieldInfosGen = self->fieldInfosGen_;
    JreStrAppend(&v15, "$J", v5, v6, v7, v8, v9, v10, @":fieldInfosGen=");
  }

  if (self->docValuesGen_ != -1)
  {
    docValuesGen = self->docValuesGen_;
    JreStrAppend(&v15, "$J", v5, v6, v7, v8, v9, v10, @":dvGen=");
  }

  return v15;
}

- (id)clone
{
  info = self->info_;
  delCount = self->delCount_;
  delGen = self->delGen_;
  fieldInfosGen = self->fieldInfosGen_;
  docValuesGen = self->docValuesGen_;
  v8 = [OrgApacheLuceneIndexSegmentCommitInfo alloc];
  OrgApacheLuceneIndexSegmentCommitInfo_initWithOrgApacheLuceneIndexSegmentInfo_withInt_withLong_withLong_withLong_(v8, info, delCount, delGen, fieldInfosGen, docValuesGen);
  v9 = v8;
  v9->nextWriteDelGen_ = self->nextWriteDelGen_;
  v9->nextWriteFieldInfosGen_ = self->nextWriteFieldInfosGen_;
  v9->nextWriteDocValuesGen_ = self->nextWriteDocValuesGen_;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  genUpdatesFiles = self->genUpdatesFiles_;
  if (!genUpdatesFiles)
  {
    goto LABEL_23;
  }

  entrySet = [(JavaUtilMap *)genUpdatesFiles entrySet];
  if (!entrySet)
  {
    goto LABEL_23;
  }

  v12 = entrySet;
  v13 = [entrySet countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v33;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v32 + 1) + 8 * i);
        if (!v17)
        {
          goto LABEL_23;
        }

        -[JavaUtilMap putWithId:withId:](v9->genUpdatesFiles_, "putWithId:withId:", [*(*(&v32 + 1) + 8 * i) getKey], new_JavaUtilHashSet_initWithJavaUtilCollection_(objc_msgSend(v17, "getValue")));
      }

      v14 = [v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v14);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  dvUpdatesFiles = self->dvUpdatesFiles_;
  if (!dvUpdatesFiles)
  {
    goto LABEL_23;
  }

  entrySet2 = [(JavaUtilMap *)dvUpdatesFiles entrySet];
  if (!entrySet2)
  {
    goto LABEL_23;
  }

  v20 = entrySet2;
  v21 = [entrySet2 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v29;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v28 + 1) + 8 * j);
        if (!v25)
        {
          goto LABEL_23;
        }

        -[JavaUtilMap putWithId:withId:](v9->dvUpdatesFiles_, "putWithId:withId:", [*(*(&v28 + 1) + 8 * j) getKey], new_JavaUtilHashSet_initWithJavaUtilCollection_(objc_msgSend(v25, "getValue")));
      }

      v22 = [v20 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v22);
  }

  fieldInfosFiles = v9->fieldInfosFiles_;
  if (!fieldInfosFiles)
  {
LABEL_23:
    JreThrowNullPointerException();
  }

  [(JavaUtilSet *)fieldInfosFiles addAllWithJavaUtilCollection:self->fieldInfosFiles_];
  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexSegmentCommitInfo;
  [(OrgApacheLuceneIndexSegmentCommitInfo *)&v3 dealloc];
}

@end
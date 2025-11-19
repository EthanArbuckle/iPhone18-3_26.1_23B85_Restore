@interface OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter
+ (void)initialize;
- (BOOL)tooDirtyWithOrgApacheLuceneCodecsCompressingCompressingTermVectorsReader:(id)a3;
- (BOOL)triggerFlush;
- (id)flush;
- (int)mergeWithOrgApacheLuceneIndexMergeState:(id)a3;
- (void)close;
- (void)dealloc;
- (void)finishDocument;
- (void)startDocumentWithInt:(int)a3;
@end

@implementation OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter

- (void)close
{
  indexWriter = self->indexWriter_;
  v5[0] = self->vectorsStream_;
  v5[1] = indexWriter;
  v4 = [IOSObjectArray arrayWithObjects:v5 count:2 type:JavaIoCloseable_class_()];
  OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_(v4);
  JreStrongAssign(&self->vectorsStream_, 0);
  JreStrongAssign(&self->indexWriter_, 0);
}

- (void)startDocumentWithInt:(int)a3
{
  v4 = sub_1000055F0(&self->super.super.isa, a3);

  JreStrongAssign(&self->curDoc_, v4);
}

- (void)finishDocument
{
  termSuffixes = self->termSuffixes_;
  if (!termSuffixes || (payloadBytes = self->payloadBytes_) == 0)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreDataOutput *)termSuffixes writeBytesWithByteArray:payloadBytes->bytes_ withInt:payloadBytes->length_];
  self->payloadBytes_->length_ = 0;
  ++self->numDocs_;
  if ([OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter triggerFlush]_0(self))
  {
    [OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter flush]_0(self);
  }

  JreStrongAssign(&self->curDoc_, 0);
}

- (BOOL)triggerFlush
{
  v1 = *(a1 + 144);
  if (!v1)
  {
    goto LABEL_7;
  }

  if (*(v1 + 24) < *(a1 + 48))
  {
    v2 = *(a1 + 80);
    if (v2)
    {
      return [v2 size] > 127;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  return 1;
}

- (id)flush
{
  v2 = *(a1 + 80);
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = [v2 size];
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = v3;
  v6 = *(a1 + 24);
  if (!v6)
  {
    goto LABEL_10;
  }

  [v4 writeIndexWithInt:v5 withLong:{objc_msgSend(v6, "getFilePointer")}];
  [*(a1 + 24) writeVIntWithInt:(*(a1 + 72) - v5)];
  [*(a1 + 24) writeVIntWithInt:v5];
  v7 = sub_100006308(a1, v5);
  if (v7 < 1)
  {
    goto LABEL_8;
  }

  v8 = v7;
  v9 = sub_1000064AC(a1);
  sub_1000068C0(a1, v8, v9, v10, v11, v12, v13, v14);
  sub_100006AF8(a1, v8, v9);
  sub_100006FCC(a1, v8);
  sub_10000730C(a1);
  sub_100007714(a1);
  sub_100007964(a1);
  sub_100007C4C(a1, v9);
  sub_100008AC0(a1);
  v15 = *(a1 + 40);
  if (!v15 || (v16 = *(a1 + 144)) == 0)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  [v15 compressWithByteArray:*(v16 + 16) withInt:0 withInt:*(v16 + 24) withOrgApacheLuceneStoreDataOutput:*(a1 + 24)];
LABEL_8:
  [*(a1 + 80) clear];
  JreStrongAssign((a1 + 88), 0);
  result = JreStrongAssign((a1 + 96), 0);
  v18 = *(a1 + 144);
  if (!v18)
  {
    goto LABEL_10;
  }

  *(v18 + 24) = 0;
  ++*(a1 + 56);
  return result;
}

- (int)mergeWithOrgApacheLuceneIndexMergeState:(id)a3
{
  if (!a3 || (v4 = *(a3 + 12)) == 0)
  {
LABEL_64:
    JreThrowNullPointerException();
  }

  v61 = *(v4 + 8);
  v62 = new_OrgApacheLuceneCodecsCompressingMatchingReaders_initWithOrgApacheLuceneIndexMergeState_(a3);
  if (v61 >= 1)
  {
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = *(a3 + 4);
      if (!v8)
      {
        goto LABEL_64;
      }

      v9 = *(v8 + 8);
      if (v6 >= v9)
      {
        IOSArray_throwOutOfBoundsWithMsg(v9, v6);
      }

      matchingReaders = v62->matchingReaders_;
      if (!matchingReaders)
      {
        goto LABEL_64;
      }

      v11 = *(v8 + 24 + 8 * v6);
      size = matchingReaders->super.size_;
      if (v6 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v6);
      }

      v13 = *(&matchingReaders->super.size_ + v6 + 4) != 1 || v11 == 0;
      if (v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v14 = 0;
      }

      else
      {
        objc_opt_class();
        v14 = v11;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          JreThrowClassCastException();
        }
      }

      v15 = *(a3 + 12);
      v16 = *(v15 + 8);
      if (v6 >= v16)
      {
        IOSArray_throwOutOfBoundsWithMsg(v16, v6);
      }

      v17 = *(a3 + 8);
      if (!v17)
      {
        goto LABEL_64;
      }

      v18 = *(v15 + 12 + 4 * v6);
      v19 = *(v17 + 8);
      if (v6 >= v19)
      {
        IOSArray_throwOutOfBoundsWithMsg(v19, v6);
      }

      v20 = *(v17 + 24 + 8 * v6);
      if (v14 && [v14 getCompressionMode] == self->compressionMode_ && objc_msgSend(v14, "getChunkSize") == self->chunkSize_ && objc_msgSend(v14, "getVersion") == 1 && objc_msgSend(v14, "getPackedIntsVersion") == 2 && OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_BULK_MERGE_ENABLED_ == 1 && !v20 && !-[OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter tooDirtyWithOrgApacheLuceneCodecsCompressingCompressingTermVectorsReader:](self, "tooDirtyWithOrgApacheLuceneCodecsCompressingCompressingTermVectorsReader:", v14))
      {
        [v14 checkIntegrity];
        pendingDocs = self->pendingDocs_;
        if (!pendingDocs)
        {
          goto LABEL_64;
        }

        if (([(JavaUtilDeque *)pendingDocs isEmpty]& 1) == 0)
        {
          [OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter flush]_0(self);
          ++self->numDirtyChunks_;
        }

        v24 = [v14 getVectorsStream];
        v25 = [v14 getIndexReader];
        if (!v24)
        {
          goto LABEL_64;
        }

        v26 = v25;
        if (!v25)
        {
          goto LABEL_64;
        }

        [v24 seekWithLong:{objc_msgSend(v25, "getStartPointerWithInt:", 0)}];
        if (v18 >= 1)
        {
          v59 = v26;
          v60 = v24;
          v27 = 0;
          while ([v24 readVInt] == v27)
          {
            v35 = [v24 readVInt];
            indexWriter = self->indexWriter_;
            if (!indexWriter)
            {
              goto LABEL_64;
            }

            v37 = v35;
            vectorsStream = self->vectorsStream_;
            if (!vectorsStream)
            {
              goto LABEL_64;
            }

            [(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexWriter *)indexWriter writeIndexWithInt:v37 withLong:[(OrgApacheLuceneStoreIndexOutput *)vectorsStream getFilePointer]];
            [(OrgApacheLuceneStoreDataOutput *)self->vectorsStream_ writeVIntWithInt:v7];
            [(OrgApacheLuceneStoreDataOutput *)self->vectorsStream_ writeVIntWithInt:v37];
            v27 += v37;
            self->numDocs_ += v37;
            if (v27 > v18)
            {
              v49 = JreStrcat("$I$I$I", v39, v40, v41, v42, v43, v44, v45, @"invalid state: base=");
              v50 = v60;
LABEL_68:
              v51 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v49, v50);
              objc_exception_throw(v51);
            }

            if (v27 == v18)
            {
              v46 = [v14 getMaxPointer];
            }

            else
            {
              v46 = [v59 getStartPointerWithInt:?];
            }

            v7 = (v37 + v7);
            v24 = v60;
            -[OrgApacheLuceneStoreDataOutput copyBytesWithOrgApacheLuceneStoreDataInput:withLong:](self->vectorsStream_, "copyBytesWithOrgApacheLuceneStoreDataInput:withLong:", v60, v46 - [v60 getFilePointer]);
            if (v27 >= v18)
            {
              goto LABEL_56;
            }
          }

          v49 = JreStrcat("$I$I", v28, v29, v30, v31, v32, v33, v34, @"invalid state: base=");
LABEL_66:
          v50 = v24;
          goto LABEL_68;
        }

LABEL_56:
        v47 = [v24 getFilePointer];
        if (v47 != [v14 getMaxPointer])
        {
          [v24 getFilePointer];
          [v14 getMaxPointer];
          v49 = JreStrcat("$J$J", v52, v53, v54, v55, v56, v57, v58, @"invalid state: pos=");
          goto LABEL_66;
        }

        self->numChunks_ += [v14 getNumChunks];
        self->numDirtyChunks_ += [v14 getNumDirtyChunks];
      }

      else
      {
        if (v11)
        {
          [v11 checkIntegrity];
        }

        if (v18 >= 1)
        {
          v21 = 0;
          do
          {
            if (!v20 || [v20 getWithInt:v21])
            {
              if (v11)
              {
                v22 = [v11 getWithInt:v21];
              }

              else
              {
                v22 = 0;
              }

              [(OrgApacheLuceneCodecsTermVectorsWriter *)self addAllDocVectorsWithOrgApacheLuceneIndexFields:v22 withOrgApacheLuceneIndexMergeState:a3];
              v7 = (v7 + 1);
            }

            v21 = (v21 + 1);
          }

          while (v18 != v21);
        }
      }

      if (++v6 == v61)
      {
        goto LABEL_63;
      }
    }
  }

  v7 = 0;
LABEL_63:
  [(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter *)self finishWithOrgApacheLuceneIndexFieldInfos:*(a3 + 2) withInt:v7];
  return v7;
}

- (BOOL)tooDirtyWithOrgApacheLuceneCodecsCompressingCompressingTermVectorsReader:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if ([a3 getNumDirtyChunks] > 1024)
  {
    return 1;
  }

  v5 = 100 * [a3 getNumDirtyChunks];
  return v5 > [a3 getNumChunks];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter;
  [(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_FLAGS_BITS_ = OrgApacheLuceneUtilPackedPackedInts_bitsRequiredWithLong_(7uLL, v2, v3, v4, v5, v6, v7, v8);
    v9 = [OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_class_() getName];
    v17 = JreStrcat("$$", v10, v11, v12, v13, v14, v15, v16, v9);
    JreStrongAssign(&OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_BULK_MERGE_ENABLED_SYSPROP_, v17);
    PropertyWithNSString_withNSString = JavaLangSystem_getPropertyWithNSString_withNSString_(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_BULK_MERGE_ENABLED_SYSPROP_, @"true");
    OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_BULK_MERGE_ENABLED_ = JavaLangBoolean_parseBooleanWithNSString_(PropertyWithNSString_withNSString);
    atomic_store(1u, &OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter__initialized);
  }
}

@end
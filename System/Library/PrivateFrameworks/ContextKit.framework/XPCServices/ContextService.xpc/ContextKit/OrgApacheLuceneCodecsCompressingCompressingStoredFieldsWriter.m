@interface OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter
+ (void)initialize;
- (BOOL)tooDirtyWithOrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader:(id)a3;
- (BOOL)triggerFlush;
- (id)flush;
- (int)mergeWithOrgApacheLuceneIndexMergeState:(id)a3;
- (void)close;
- (void)dealloc;
- (void)finishDocument;
- (void)writeFieldWithOrgApacheLuceneIndexFieldInfo:(id)a3 withOrgApacheLuceneIndexIndexableField:(id)a4;
@end

@implementation OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter

- (void)close
{
  indexWriter = self->indexWriter_;
  v5[0] = self->fieldsStream_;
  v5[1] = indexWriter;
  v4 = [IOSObjectArray arrayWithObjects:v5 count:2 type:JavaIoCloseable_class_()];
  OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_(v4);
  JreStrongAssign(&self->fieldsStream_, 0);
  JreStrongAssign(&self->indexWriter_, 0);
}

- (void)finishDocument
{
  numStoredFields = self->numStoredFields_;
  if (!numStoredFields)
  {
    goto LABEL_16;
  }

  numBufferedDocs = self->numBufferedDocs_;
  if (numBufferedDocs == numStoredFields->super.size_)
  {
    v11 = OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(numBufferedDocs + 1, 4, v2, v3, v4, v5, v6, v7);
    v12 = JavaUtilArrays_copyOfWithIntArray_withInt_(self->numStoredFields_, v11);
    JreStrongAssign(&self->numStoredFields_, v12);
    v13 = JavaUtilArrays_copyOfWithIntArray_withInt_(self->endOffsets_, v11);
    JreStrongAssign(&self->endOffsets_, v13);
    numStoredFields = self->numStoredFields_;
    if (!numStoredFields)
    {
      goto LABEL_16;
    }
  }

  v14 = self->numBufferedDocs_;
  size = numStoredFields->super.size_;
  if (v14 < 0 || v14 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v14);
  }

  *(&numStoredFields->super.size_ + v14 + 1) = self->numStoredFieldsInDoc_;
  self->numStoredFieldsInDoc_ = 0;
  bufferedDocs = self->bufferedDocs_;
  if (!bufferedDocs)
  {
    goto LABEL_16;
  }

  endOffsets = self->endOffsets_;
  if (!endOffsets)
  {
    goto LABEL_16;
  }

  length = bufferedDocs->length_;
  v19 = self->numBufferedDocs_;
  v20 = endOffsets->super.size_;
  if (v19 < 0 || v19 >= v20)
  {
    IOSArray_throwOutOfBoundsWithMsg(v20, v19);
  }

  *(&endOffsets->super.size_ + v19 + 1) = length;
  v21 = self->numBufferedDocs_ + 1;
  self->numBufferedDocs_ = v21;
  v22 = self->bufferedDocs_;
  if (!v22)
  {
LABEL_16:
    JreThrowNullPointerException();
  }

  if (v22->length_ >= self->chunkSize_ || v21 >= self->maxDocsPerChunk_)
  {

    [OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter flush]_0(self);
  }
}

- (id)flush
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    goto LABEL_26;
  }

  v3 = *(a1 + 32);
  if (!v3)
  {
    goto LABEL_26;
  }

  [v1 writeIndexWithInt:*(a1 + 92) withLong:{objc_msgSend(v3, "getFilePointer")}];
  v4 = *(a1 + 80);
  v5 = *(a1 + 92);
  v6 = (v5 - 1);
  if (v6 >= 1)
  {
    v7 = (v5 - 2);
    while (1)
    {
      v8 = *(a1 + 80);
      if (!v8)
      {
        break;
      }

      v9 = *(v8 + 8);
      if (v6 >= v9)
      {
        IOSArray_throwOutOfBoundsWithMsg(v9, v6);
      }

      v10 = *(v8 + 12 + 4 * v6);
      if (v7 >= v9)
      {
        IOSArray_throwOutOfBoundsWithMsg(v9, v7);
      }

      if (!v4)
      {
        break;
      }

      v11 = *(v4 + 8);
      if (v6 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, v6);
      }

      *(v4 + 12 + 4 * v6) = v10 - *(*(a1 + 80) + 12 + 4 * v7);
      v7 = (v7 - 1);
      if (v6-- <= 1)
      {
        goto LABEL_16;
      }
    }

LABEL_26:
    JreThrowNullPointerException();
  }

LABEL_16:
  v13 = *(a1 + 64);
  if (!v13)
  {
    goto LABEL_26;
  }

  v14 = *(v13 + 24);
  v15 = *(a1 + 56);
  result = sub_100105088(a1, *(a1 + 88), *(a1 + 92), *(a1 + 72), v4, v14 >= 2 * v15);
  if (v14 < 2 * v15)
  {
    v21 = *(a1 + 40);
    if (!v21)
    {
      goto LABEL_26;
    }

    result = [v21 compressWithByteArray:*(*(a1 + 64) + 16) withInt:0 withInt:*(*(a1 + 64) + 24) withOrgApacheLuceneStoreDataOutput:*(a1 + 32)];
  }

  else
  {
    v17 = *(a1 + 64);
    v18 = *(v17 + 24);
    if (v18 >= 1)
    {
      v19 = 0;
      do
      {
        v20 = *(a1 + 40);
        if (!v20)
        {
          goto LABEL_26;
        }

        result = [v20 compressWithByteArray:*(v17 + 16) withInt:v19 withInt:JavaLangMath_minWithInt_withInt_(*(a1 + 56) withOrgApacheLuceneStoreDataOutput:{v18 - v19), *(a1 + 32)}];
        v19 = (*(a1 + 56) + v19);
        v17 = *(a1 + 64);
        v18 = *(v17 + 24);
      }

      while (v19 < v18);
    }
  }

  *(a1 + 88) += *(a1 + 92);
  *(a1 + 92) = 0;
  *(*(a1 + 64) + 24) = 0;
  ++*(a1 + 96);
  return result;
}

- (BOOL)triggerFlush
{
  bufferedDocs = self->bufferedDocs_;
  if (!bufferedDocs)
  {
    JreThrowNullPointerException();
  }

  return bufferedDocs->length_ >= self->chunkSize_ || self->numBufferedDocs_ >= self->maxDocsPerChunk_;
}

- (void)writeFieldWithOrgApacheLuceneIndexFieldInfo:(id)a3 withOrgApacheLuceneIndexIndexableField:(id)a4
{
  ++self->numStoredFieldsInDoc_;
  if (!a4)
  {
    goto LABEL_49;
  }

  v7 = [a4 numericValue];
  if (!v7)
  {
    v11 = [a4 binaryValue];
    if (v11)
    {
      v9 = v11;
      v8 = 0;
      v10 = 1;
      goto LABEL_17;
    }

    v12 = [a4 stringValue];
    if (v12)
    {
      v8 = v12;
      v9 = 0;
      v10 = 0;
      goto LABEL_17;
    }

    [a4 name];
    v45 = JreStrcat("$$$", v38, v39, v40, v41, v42, v43, v44, @"field ");
LABEL_51:
    v46 = new_JavaLangIllegalArgumentException_initWithNSString_(v45);
    goto LABEL_52;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = 0;
          v9 = 0;
          v10 = 4;
          goto LABEL_17;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = 0;
          v9 = 0;
          v10 = 3;
          goto LABEL_17;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = 0;
          v9 = 0;
          v10 = 5;
          goto LABEL_17;
        }

        [v7 getClass];
        v45 = JreStrcat("$@", v47, v48, v49, v50, v51, v52, v53, @"cannot store numeric type ");
        goto LABEL_51;
      }
    }
  }

  v8 = 0;
  v9 = 0;
  v10 = 2;
LABEL_17:
  if (!a3)
  {
    goto LABEL_49;
  }

  bufferedDocs = self->bufferedDocs_;
  if (!bufferedDocs)
  {
    goto LABEL_49;
  }

  [(OrgApacheLuceneStoreDataOutput *)bufferedDocs writeVLongWithLong:(*(a3 + 4) << OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter_TYPE_BITS_) | v10];
  if (v9)
  {
    [(OrgApacheLuceneStoreDataOutput *)self->bufferedDocs_ writeVIntWithInt:*(v9 + 5)];
    v14 = self->bufferedDocs_;
    v15 = v9[1];
    v16 = *(v9 + 4);
    v17 = *(v9 + 5);

    [(OrgApacheLuceneUtilGrowableByteArrayDataOutput *)v14 writeBytesWithByteArray:v15 withInt:v16 withInt:v17];
    return;
  }

  if (v8)
  {
    scratchBytes = self->scratchBytes_;
    v19 = [v8 length];
    v26 = OrgApacheLuceneUtilArrayUtil_growWithByteArray_withInt_(scratchBytes, 3 * v19, v20, v21, v22, v23, v24, v25);
    JreStrongAssign(&self->scratchBytes_, v26);
    v27 = OrgApacheLuceneUtilUnicodeUtil_UTF16toUTF8WithJavaLangCharSequence_withInt_withInt_withByteArray_(v8, 0, [v8 length], self->scratchBytes_);
    [(OrgApacheLuceneStoreDataOutput *)self->bufferedDocs_ writeVIntWithInt:v27];
    v28 = self->bufferedDocs_;
    v29 = self->scratchBytes_;

    [(OrgApacheLuceneStoreDataOutput *)v28 writeBytesWithByteArray:v29 withInt:v27];
    return;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    if (v7)
    {
      v30 = self->bufferedDocs_;
      v31 = [v7 intValue];

      [(OrgApacheLuceneStoreDataOutput *)v30 writeZIntWithInt:v31];
      return;
    }

LABEL_49:
    JreThrowNullPointerException();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!v7)
    {
      goto LABEL_49;
    }

    v32 = self->bufferedDocs_;
    v33 = [v7 longLongValue];

    OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter_writeTLongWithOrgApacheLuceneStoreDataOutput_withLong_(v32, v33);
    return;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!v7)
    {
      goto LABEL_49;
    }

    v34 = self->bufferedDocs_;
    [v7 floatValue];

    OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter_writeZFloatWithOrgApacheLuceneStoreDataOutput_withFloat_(v34, v35);
    return;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v46 = new_JavaLangAssertionError_initWithId_(@"Cannot get here");
LABEL_52:
    objc_exception_throw(v46);
  }

  if (!v7)
  {
    goto LABEL_49;
  }

  v36 = self->bufferedDocs_;
  [v7 doubleValue];

  OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter_writeZDoubleWithOrgApacheLuceneStoreDataOutput_withDouble_(v36, v37);
}

- (int)mergeWithOrgApacheLuceneIndexMergeState:(id)a3
{
  if (!a3 || (v3 = a3, (v4 = *(a3 + 12)) == 0))
  {
LABEL_71:
    JreThrowNullPointerException();
  }

  v66 = *(v4 + 8);
  v67 = new_OrgApacheLuceneCodecsCompressingMatchingReaders_initWithOrgApacheLuceneIndexMergeState_(a3);
  if (v66 >= 1)
  {
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = new_OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor_initWithOrgApacheLuceneCodecsStoredFieldsWriter_withOrgApacheLuceneIndexMergeState_withInt_(self, v3, v6);
      matchingReaders = v67->matchingReaders_;
      if (!matchingReaders)
      {
        goto LABEL_71;
      }

      v10 = v8;
      size = matchingReaders->super.size_;
      if (v6 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v6);
      }

      if (*(&matchingReaders->super.size_ + v6 + 4) != 1)
      {
        break;
      }

      v12 = v3[3];
      if (!v12)
      {
        goto LABEL_71;
      }

      v13 = *(v12 + 8);
      if (v6 >= v13)
      {
        IOSArray_throwOutOfBoundsWithMsg(v13, v6);
      }

      v14 = *(v12 + 24 + 8 * v6);
      if (v14)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          JreThrowClassCastException();
        }
      }

LABEL_15:
      v15 = v3[12];
      v16 = *(v15 + 8);
      if (v6 >= v16)
      {
        IOSArray_throwOutOfBoundsWithMsg(v16, v6);
      }

      v17 = v3[8];
      if (!v17)
      {
        goto LABEL_71;
      }

      v18 = *(v15 + 12 + 4 * v6);
      v19 = *(v17 + 8);
      if (v6 >= v19)
      {
        IOSArray_throwOutOfBoundsWithMsg(v19, v6);
      }

      v20 = *(v17 + 24 + 8 * v6);
      if (v14 && [v14 getVersion] == 1 && OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter_BULK_MERGE_ENABLED_)
      {
        if ([v14 getCompressionMode] == self->compressionMode_ && objc_msgSend(v14, "getChunkSize") == self->chunkSize_ && objc_msgSend(v14, "getPackedIntsVersion") == 2 && !v20 && !-[OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter tooDirtyWithOrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader:](self, "tooDirtyWithOrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader:", v14))
        {
          [v14 checkIntegrity];
          if (self->numBufferedDocs_ >= 1)
          {
            [OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter flush]_0(self);
            ++self->numDirtyChunks_;
          }

          v28 = [v14 getFieldsStream];
          v29 = [v14 getIndexReader];
          if (!v28)
          {
            goto LABEL_71;
          }

          v30 = v29;
          if (!v29)
          {
            goto LABEL_71;
          }

          [v28 seekWithLong:{objc_msgSend(v29, "getStartPointerWithInt:", 0)}];
          if (v18 >= 1)
          {
            v63 = v30;
            v64 = v3;
            v31 = 0;
            v65 = v28;
            while ([v28 readVInt] == v31)
            {
              v39 = [v28 readVInt];
              indexWriter = self->indexWriter_;
              if (!indexWriter)
              {
                goto LABEL_71;
              }

              v41 = v39;
              fieldsStream = self->fieldsStream_;
              if (!fieldsStream)
              {
                goto LABEL_71;
              }

              [(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexWriter *)indexWriter writeIndexWithInt:v41 >> 1 withLong:[(OrgApacheLuceneStoreIndexOutput *)fieldsStream getFilePointer]];
              [(OrgApacheLuceneStoreDataOutput *)self->fieldsStream_ writeVIntWithInt:self->docBase_];
              [(OrgApacheLuceneStoreDataOutput *)self->fieldsStream_ writeVIntWithInt:v41];
              v31 += v41 >> 1;
              self->docBase_ += v41 >> 1;
              if (v31 > v18)
              {
                v53 = JreStrcat("$I$I$I", v43, v44, v45, v46, v47, v48, v49, @"invalid state: base=");
                v54 = v65;
LABEL_75:
                v55 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v53, v54);
                objc_exception_throw(v55);
              }

              if (v31 == v18)
              {
                v50 = [v14 getMaxPointer];
              }

              else
              {
                v50 = [v63 getStartPointerWithInt:?];
              }

              v7 = (v41 >> 1) + v7;
              v28 = v65;
              -[OrgApacheLuceneStoreDataOutput copyBytesWithOrgApacheLuceneStoreDataInput:withLong:](self->fieldsStream_, "copyBytesWithOrgApacheLuceneStoreDataInput:withLong:", v65, v50 - [v65 getFilePointer]);
              v3 = v64;
              if (v31 >= v18)
              {
                goto LABEL_62;
              }
            }

            v53 = JreStrcat("$I$I", v32, v33, v34, v35, v36, v37, v38, @"invalid state: base=");
LABEL_73:
            v54 = v28;
            goto LABEL_75;
          }

LABEL_62:
          v51 = [v28 getFilePointer];
          if (v51 != [v14 getMaxPointer])
          {
            [v28 getFilePointer];
            [v14 getMaxPointer];
            v53 = JreStrcat("$J$J", v56, v57, v58, v59, v60, v61, v62, @"invalid state: pos=");
            goto LABEL_73;
          }

          self->numChunks_ += [v14 getNumChunks];
          self->numDirtyChunks_ += [v14 getNumDirtyChunks];
        }

        else
        {
          [v14 checkIntegrity];
          if (v18 >= 1)
          {
            v21 = 0;
            do
            {
              if (!v20 || [v20 getWithInt:v21])
              {
                v22 = [v14 documentWithInt:v21];
                [(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter *)self startDocument];
                bufferedDocs = self->bufferedDocs_;
                if (!bufferedDocs || !v22)
                {
                  goto LABEL_71;
                }

                [(OrgApacheLuceneStoreDataOutput *)bufferedDocs copyBytesWithOrgApacheLuceneStoreDataInput:*(v22 + 1) withLong:v22[4]];
                self->numStoredFieldsInDoc_ = v22[5];
                [(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter *)self finishDocument];
                v7 = (v7 + 1);
              }

              v21 = (v21 + 1);
            }

            while (v18 != v21);
          }
        }
      }

      else
      {
        v24 = v3[3];
        if (!v24)
        {
          goto LABEL_71;
        }

        v25 = *(v24 + 8);
        if (v6 >= v25)
        {
          IOSArray_throwOutOfBoundsWithMsg(v25, v6);
        }

        v26 = *(v24 + 24 + 8 * v6);
        if (v26)
        {
          [*(v24 + 24 + 8 * v6) checkIntegrity];
        }

        if (v18 >= 1)
        {
          v27 = 0;
          do
          {
            if (!v20 || [v20 getWithInt:v27])
            {
              [(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter *)self startDocument];
              if (!v26)
              {
                goto LABEL_71;
              }

              [v26 visitDocumentWithInt:v27 withOrgApacheLuceneIndexStoredFieldVisitor:v10];
              [(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter *)self finishDocument];
              v7 = (v7 + 1);
            }

            v27 = (v27 + 1);
          }

          while (v18 != v27);
        }
      }

      if (++v6 == v66)
      {
        goto LABEL_70;
      }
    }

    v14 = 0;
    goto LABEL_15;
  }

  v7 = 0;
LABEL_70:
  [(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter *)self finishWithOrgApacheLuceneIndexFieldInfos:v3[2] withInt:v7];
  return v7;
}

- (BOOL)tooDirtyWithOrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader:(id)a3
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
  v3.super_class = OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter;
  [(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter_TYPE_BITS_ = OrgApacheLuceneUtilPackedPackedInts_bitsRequiredWithLong_(5uLL, v2, v3, v4, v5, v6, v7, v8);
    OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter_TYPE_MASK_ = OrgApacheLuceneUtilPackedPackedInts_maxValueWithInt_(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter_TYPE_BITS_);
    OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter_NEGATIVE_ZERO_FLOAT_ = JavaLangFloat_floatToIntBitsWithFloat_(-0.0);
    OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter_NEGATIVE_ZERO_DOUBLE_ = JavaLangDouble_doubleToLongBitsWithDouble_(-0.0);
    v9 = [OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter_class_() getName];
    v17 = JreStrcat("$$", v10, v11, v12, v13, v14, v15, v16, v9);
    JreStrongAssign(&OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter_BULK_MERGE_ENABLED_SYSPROP_, v17);
    PropertyWithNSString_withNSString = JavaLangSystem_getPropertyWithNSString_withNSString_(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter_BULK_MERGE_ENABLED_SYSPROP_, @"true");
    OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter_BULK_MERGE_ENABLED_ = JavaLangBoolean_parseBooleanWithNSString_(PropertyWithNSString_withNSString);
    atomic_store(1u, OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter__initialized);
  }
}

@end
@interface OrgApacheLuceneCodecsLucene50Lucene50LiveDocsFormat
- (id)newLiveDocsWithOrgApacheLuceneUtilBits:(id)a3;
- (id)readLiveDocsWithOrgApacheLuceneStoreDirectory:(id)a3 withOrgApacheLuceneIndexSegmentCommitInfo:(id)a4 withOrgApacheLuceneStoreIOContext:(id)a5;
- (void)filesWithOrgApacheLuceneIndexSegmentCommitInfo:(id)a3 withJavaUtilCollection:(id)a4;
- (void)writeLiveDocsWithOrgApacheLuceneUtilMutableBits:(id)a3 withOrgApacheLuceneStoreDirectory:(id)a4 withOrgApacheLuceneIndexSegmentCommitInfo:(id)a5 withInt:(int)a6 withOrgApacheLuceneStoreIOContext:(id)a7;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50LiveDocsFormat

- (id)newLiveDocsWithOrgApacheLuceneUtilBits:(id)a3
{
  objc_opt_class();
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return [a3 clone];
}

- (id)readLiveDocsWithOrgApacheLuceneStoreDirectory:(id)a3 withOrgApacheLuceneIndexSegmentCommitInfo:(id)a4 withOrgApacheLuceneStoreIOContext:(id)a5
{
  if (!a4 || (v8 = [a4 getDelGen], (v9 = *(a4 + 1)) == 0) || (v10 = v8, v11 = OrgApacheLuceneIndexIndexFileNames_fileNameFromGenerationWithNSString_withNSString_withLong_(*(v9 + 8), @"liv", v8), v12 = objc_msgSend(*(a4 + 1), "maxDoc"), !a3))
  {
    JreThrowNullPointerException();
  }

  v13 = v12;
  v14 = [a3 openChecksumInputWithNSString:v11 withOrgApacheLuceneStoreIOContext:a5];
  v15 = [*(a4 + 1) getId];
  v16 = JavaLangLong_toStringWithLong_withInt_(v10, 36);
  OrgApacheLuceneCodecsCodecUtil_checkIndexHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_withByteArray_withNSString_(v14, @"Lucene50LiveDocs", 0, 0, v15, v16);
  v17 = [IOSLongArray arrayWithLength:OrgApacheLuceneUtilFixedBitSet_bits2wordsWithInt_(v13)];
  v18 = v17;
  if (v17->super.size_ >= 1)
  {
    if (!v14)
    {
      JreThrowNullPointerException();
    }

    v19 = 0;
    v20 = v17;
    do
    {
      v21 = [v14 readLong];
      size = v18->super.size_;
      if (v19 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v19);
      }

      v20->buffer_[0] = v21;
      ++v19;
      v20 = (v20 + 8);
    }

    while (v19 < v18->super.size_);
  }

  v23 = new_OrgApacheLuceneUtilFixedBitSet_initWithLongArray_withInt_(v18, v13);
  v24 = [(OrgApacheLuceneUtilFixedBitSet *)v23 length];
  v25 = [(OrgApacheLuceneUtilFixedBitSet *)v23 cardinality];
  if (v24 - v25 != [a4 getDelCount])
  {
    [(OrgApacheLuceneUtilFixedBitSet *)v23 length];
    [(OrgApacheLuceneUtilFixedBitSet *)v23 cardinality];
    [a4 getDelCount];
    v34 = JreStrcat("$I$I", v27, v28, v29, v30, v31, v32, v33, @"bits.deleted=");
    v35 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v34, v14);
    objc_exception_throw(v35);
  }

  OrgApacheLuceneCodecsCodecUtil_checkFooterWithOrgApacheLuceneStoreChecksumIndexInput_withJavaLangThrowable_(v14, 0);
  [v14 close];
  return v23;
}

- (void)writeLiveDocsWithOrgApacheLuceneUtilMutableBits:(id)a3 withOrgApacheLuceneStoreDirectory:(id)a4 withOrgApacheLuceneIndexSegmentCommitInfo:(id)a5 withInt:(int)a6 withOrgApacheLuceneStoreIOContext:(id)a7
{
  if (!a5)
  {
    goto LABEL_16;
  }

  v12 = [a5 getNextDelGen];
  v13 = *(a5 + 1);
  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = v12;
  v15 = OrgApacheLuceneIndexIndexFileNames_fileNameFromGenerationWithNSString_withNSString_withLong_(*(v13 + 8), @"liv", v12);
  objc_opt_class();
  if (!a3)
  {
    goto LABEL_16;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v16 = [a3 length];
  v17 = v16 - [a3 cardinality];
  if (v17 != [a5 getDelCount] + a6)
  {
    [a3 length];
    [a3 cardinality];
    [a5 getDelCount];
    v31 = JreStrcat("$I$I$I", v24, v25, v26, v27, v28, v29, v30, @"bits.deleted=");
    v32 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withNSString_(v31, v15);
    objc_exception_throw(v32);
  }

  v18 = [a3 getBits];
  if (!a4)
  {
LABEL_16:
    JreThrowNullPointerException();
  }

  v19 = v18;
  v20 = [a4 createOutputWithNSString:v15 withOrgApacheLuceneStoreIOContext:a7];
  v21 = [*(a5 + 1) getId];
  v22 = JavaLangLong_toStringWithLong_withInt_(v14, 36);
  OrgApacheLuceneCodecsCodecUtil_writeIndexHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_withByteArray_withNSString_(v20, @"Lucene50LiveDocs", 0, v21, v22);
  if (!v19)
  {
    goto LABEL_15;
  }

  if (v19[2] >= 1)
  {
    v23 = 0;
    while (v20)
    {
      [v20 writeLongWithLong:*&v19[2 * v23++ + 4]];
      if (v23 >= v19[2])
      {
        goto LABEL_12;
      }
    }

LABEL_15:
    JreThrowNullPointerException();
  }

LABEL_12:
  OrgApacheLuceneCodecsCodecUtil_writeFooterWithOrgApacheLuceneStoreIndexOutput_(v20);
  if (v20)
  {
    [v20 close];
  }
}

- (void)filesWithOrgApacheLuceneIndexSegmentCommitInfo:(id)a3 withJavaUtilCollection:(id)a4
{
  if (!a3)
  {
    goto LABEL_9;
  }

  if (![a3 hasDeletions])
  {
    return;
  }

  if (!a4 || (v6 = *(a3 + 1)) == 0)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  v7 = OrgApacheLuceneIndexIndexFileNames_fileNameFromGenerationWithNSString_withNSString_withLong_(*(v6 + 8), @"liv", [a3 getDelGen]);

  [a4 addWithId:v7];
}

@end
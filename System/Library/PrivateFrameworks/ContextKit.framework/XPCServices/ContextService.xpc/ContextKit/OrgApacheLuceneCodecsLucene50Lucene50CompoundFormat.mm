@interface OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat
- (id)getCompoundReaderWithOrgApacheLuceneStoreDirectory:(id)a3 withOrgApacheLuceneIndexSegmentInfo:(id)a4 withOrgApacheLuceneStoreIOContext:(id)a5;
- (void)writeWithOrgApacheLuceneStoreDirectory:(id)a3 withOrgApacheLuceneIndexSegmentInfo:(id)a4 withOrgApacheLuceneStoreIOContext:(id)a5;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat

- (id)getCompoundReaderWithOrgApacheLuceneStoreDirectory:(id)a3 withOrgApacheLuceneIndexSegmentInfo:(id)a4 withOrgApacheLuceneStoreIOContext:(id)a5
{
  v5 = new_OrgApacheLuceneCodecsLucene50Lucene50CompoundReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withOrgApacheLuceneStoreIOContext_(a3, a4, a5);

  return v5;
}

- (void)writeWithOrgApacheLuceneStoreDirectory:(id)a3 withOrgApacheLuceneIndexSegmentInfo:(id)a4 withOrgApacheLuceneStoreIOContext:(id)a5
{
  if (!a4 || (v8 = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(*(a4 + 1), &stru_100484358, OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_DATA_EXTENSION_), v9 = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(*(a4 + 1), &stru_100484358, OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_ENTRIES_EXTENSION_), !a3))
  {
    JreThrowNullPointerException();
  }

  v10 = v9;
  v11 = [a3 createOutputWithNSString:v8 withOrgApacheLuceneStoreIOContext:a5];
  v12 = [a3 createOutputWithNSString:v10 withOrgApacheLuceneStoreIOContext:a5];
  OrgApacheLuceneCodecsCodecUtil_writeIndexHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_withByteArray_withNSString_(v11, OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_DATA_CODEC_, 0, [a4 getId], &stru_100484358);
  OrgApacheLuceneCodecsCodecUtil_writeIndexHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_withByteArray_withNSString_(v12, OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_ENTRY_CODEC_, 0, [a4 getId], &stru_100484358);
  if (!v12 || (v13 = [a4 files]) == 0)
  {
    JreThrowNullPointerException();
  }

  [v12 writeVIntWithInt:{objc_msgSend(v13, "size")}];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = [a4 files];
  v15 = v14;
  if (!v14)
  {
    JreThrowNullPointerException();
  }

  v16 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v16)
  {
    v17 = *v27;
    obj = v15;
    do
    {
      v18 = 0;
      do
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(obj);
        }

        if (!v11)
        {
          JreThrowNullPointerException();
        }

        v19 = *(*(&v26 + 1) + 8 * v18);
        v20 = [v11 getFilePointer];
        if ((atomic_load_explicit(OrgApacheLuceneStoreIOContext__initialized, memory_order_acquire) & 1) == 0)
        {
          objc_opt_class();
        }

        v21 = [a3 openInputWithNSString:v19 withOrgApacheLuceneStoreIOContext:OrgApacheLuceneStoreIOContext_READONCE_];
        v22 = v21;
        if (!v21)
        {
          JreThrowNullPointerException();
        }

        [v11 copyBytesWithOrgApacheLuceneStoreDataInput:v21 withLong:{objc_msgSend(v21, "length")}];
        [v22 close];
        v23 = [v11 getFilePointer];
        [v12 writeStringWithNSString:OrgApacheLuceneIndexIndexFileNames_stripSegmentNameWithNSString_(v19)];
        [v12 writeLongWithLong:v20];
        [v12 writeLongWithLong:v23 - v20];
        v18 = v18 + 1;
      }

      while (v16 != v18);
      v24 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      v16 = v24;
    }

    while (v24);
  }

  OrgApacheLuceneCodecsCodecUtil_writeFooterWithOrgApacheLuceneStoreIndexOutput_(v11);
  OrgApacheLuceneCodecsCodecUtil_writeFooterWithOrgApacheLuceneStoreIndexOutput_(v12);
  [v12 close];
  if (v11)
  {
    [v11 close];
  }
}

@end
@interface OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat
- (id)getCompoundReaderWithOrgApacheLuceneStoreDirectory:(id)directory withOrgApacheLuceneIndexSegmentInfo:(id)info withOrgApacheLuceneStoreIOContext:(id)context;
- (void)writeWithOrgApacheLuceneStoreDirectory:(id)directory withOrgApacheLuceneIndexSegmentInfo:(id)info withOrgApacheLuceneStoreIOContext:(id)context;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat

- (id)getCompoundReaderWithOrgApacheLuceneStoreDirectory:(id)directory withOrgApacheLuceneIndexSegmentInfo:(id)info withOrgApacheLuceneStoreIOContext:(id)context
{
  v5 = new_OrgApacheLuceneCodecsLucene50Lucene50CompoundReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withOrgApacheLuceneStoreIOContext_(directory, info, context);

  return v5;
}

- (void)writeWithOrgApacheLuceneStoreDirectory:(id)directory withOrgApacheLuceneIndexSegmentInfo:(id)info withOrgApacheLuceneStoreIOContext:(id)context
{
  if (!info || (v8 = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(*(info + 1), &stru_100484358, OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_DATA_EXTENSION_), v9 = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(*(info + 1), &stru_100484358, OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_ENTRIES_EXTENSION_), !directory))
  {
    JreThrowNullPointerException();
  }

  v10 = v9;
  v11 = [directory createOutputWithNSString:v8 withOrgApacheLuceneStoreIOContext:context];
  v12 = [directory createOutputWithNSString:v10 withOrgApacheLuceneStoreIOContext:context];
  OrgApacheLuceneCodecsCodecUtil_writeIndexHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_withByteArray_withNSString_(v11, OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_DATA_CODEC_, 0, [info getId], &stru_100484358);
  OrgApacheLuceneCodecsCodecUtil_writeIndexHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_withByteArray_withNSString_(v12, OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_ENTRY_CODEC_, 0, [info getId], &stru_100484358);
  if (!v12 || (v13 = [info files]) == 0)
  {
    JreThrowNullPointerException();
  }

  [v12 writeVIntWithInt:{objc_msgSend(v13, "size")}];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  files = [info files];
  v15 = files;
  if (!files)
  {
    JreThrowNullPointerException();
  }

  v16 = [files countByEnumeratingWithState:&v26 objects:v30 count:16];
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
        getFilePointer = [v11 getFilePointer];
        if ((atomic_load_explicit(OrgApacheLuceneStoreIOContext__initialized, memory_order_acquire) & 1) == 0)
        {
          objc_opt_class();
        }

        v21 = [directory openInputWithNSString:v19 withOrgApacheLuceneStoreIOContext:OrgApacheLuceneStoreIOContext_READONCE_];
        v22 = v21;
        if (!v21)
        {
          JreThrowNullPointerException();
        }

        [v11 copyBytesWithOrgApacheLuceneStoreDataInput:v21 withLong:{objc_msgSend(v21, "length")}];
        [v22 close];
        getFilePointer2 = [v11 getFilePointer];
        [v12 writeStringWithNSString:OrgApacheLuceneIndexIndexFileNames_stripSegmentNameWithNSString_(v19)];
        [v12 writeLongWithLong:getFilePointer];
        [v12 writeLongWithLong:getFilePointer2 - getFilePointer];
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
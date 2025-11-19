@interface OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat
- (id)readWithOrgApacheLuceneStoreDirectory:(id)a3 withNSString:(id)a4 withByteArray:(id)a5 withOrgApacheLuceneStoreIOContext:(id)a6;
- (void)writeWithOrgApacheLuceneStoreDirectory:(id)a3 withOrgApacheLuceneIndexSegmentInfo:(id)a4 withOrgApacheLuceneStoreIOContext:(id)a5;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat

- (id)readWithOrgApacheLuceneStoreDirectory:(id)a3 withNSString:(id)a4 withByteArray:(id)a5 withOrgApacheLuceneStoreIOContext:(id)a6
{
  v10 = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(a4, &stru_100484358, OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat_SI_EXTENSION_);
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v11 = [a3 openChecksumInputWithNSString:v10 withOrgApacheLuceneStoreIOContext:a6];
  v12 = OrgApacheLuceneCodecsCodecUtil_checkIndexHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_withByteArray_withNSString_(v11, OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat_CODEC_NAME_, 0, 1, a5, &stru_100484358);
  if (!v11)
  {
    JreThrowNullPointerException();
  }

  v13 = v12;
  v14 = OrgApacheLuceneUtilVersion_fromBitsWithInt_withInt_withInt_([v11 readInt], objc_msgSend(v11, "readInt"), objc_msgSend(v11, "readInt"));
  v22 = [v11 readInt];
  if (v22 < 0)
  {
    v29 = JreStrcat("$I", v15, v16, v17, v18, v19, v20, v21, @"invalid docCount: ");
    v30 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v29, v11);
    objc_exception_throw(v30);
  }

  v23 = [v11 readByte];
  if (v13 < 1)
  {
    v24 = JavaUtilCollections_unmodifiableMapWithJavaUtilMap_([v11 readStringStringMap]);
    v25 = JavaUtilCollections_unmodifiableSetWithJavaUtilSet_([v11 readStringSet]);
    v26 = JavaUtilCollections_unmodifiableMapWithJavaUtilMap_([v11 readStringStringMap]);
  }

  else
  {
    v24 = [v11 readMapOfStrings];
    v25 = [v11 readSetOfStrings];
    v26 = [v11 readMapOfStrings];
  }

  v27 = new_OrgApacheLuceneIndexSegmentInfo_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneUtilVersion_withNSString_withInt_withBoolean_withOrgApacheLuceneCodecsCodec_withJavaUtilMap_withByteArray_withJavaUtilMap_(a3, v14, a4, v22, v23 == 1, 0, v24, a5, v26);
  [(OrgApacheLuceneIndexSegmentInfo *)v27 setFilesWithJavaUtilCollection:v25];
  OrgApacheLuceneCodecsCodecUtil_checkFooterWithOrgApacheLuceneStoreChecksumIndexInput_withJavaLangThrowable_(v11, 0);
  [v11 close];
  return v27;
}

- (void)writeWithOrgApacheLuceneStoreDirectory:(id)a3 withOrgApacheLuceneIndexSegmentInfo:(id)a4 withOrgApacheLuceneStoreIOContext:(id)a5
{
  if (!a4 || (v8 = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(*(a4 + 1), &stru_100484358, OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat_SI_EXTENSION_), !a3))
  {
    JreThrowNullPointerException();
  }

  v9 = v8;
  v10 = [a3 createOutputWithNSString:v8 withOrgApacheLuceneStoreIOContext:a5];
  [a4 addFileWithNSString:v9];
  OrgApacheLuceneCodecsCodecUtil_writeIndexHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_withByteArray_withNSString_(v10, OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat_CODEC_NAME_, 1, [a4 getId], &stru_100484358);
  v11 = [a4 getVersion];
  v18 = v11;
  if (!v11)
  {
    goto LABEL_22;
  }

  v19 = v11[2];
  if (v19 <= 4)
  {
    v39 = v11[2];
    v36 = JreStrcat("$I$@", v12, v19, v13, v14, v15, v16, v17, @"invalid major version: should be >= 5 but got: ");
    v37 = new_JavaLangIllegalArgumentException_initWithNSString_(v36);
    objc_exception_throw(v37);
  }

  if (!v10)
  {
LABEL_22:
    JreThrowNullPointerException();
  }

  [v10 writeIntWithInt:?];
  [v10 writeIntWithInt:v18[3]];
  [v10 writeIntWithInt:v18[4]];
  [v10 writeIntWithInt:{objc_msgSend(a4, "maxDoc")}];
  if ([a4 getUseCompoundFile])
  {
    v20 = 1;
  }

  else
  {
    v20 = 0xFFFFFFFFLL;
  }

  [v10 writeByteWithByte:v20];
  [v10 writeMapOfStringsWithJavaUtilMap:{objc_msgSend(a4, "getDiagnostics")}];
  v21 = [a4 files];
  v22 = v21;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  if (!v21)
  {
LABEL_20:
    JreThrowNullPointerException();
  }

  v23 = [v21 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v23)
  {
    v24 = *v41;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v41 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v26 = OrgApacheLuceneIndexIndexFileNames_parseSegmentNameWithNSString_(*(*(&v40 + 1) + 8 * i));
        if (!v26)
        {
          goto LABEL_20;
        }

        if (([v26 isEqual:*(a4 + 1)] & 1) == 0)
        {
          v38 = *(a4 + 1);
          v34 = JreStrcat("$$$@", v27, v28, v29, v30, v31, v32, v33, @"invalid files: expected segment=");
          v35 = new_JavaLangIllegalArgumentException_initWithNSString_(v34);
          objc_exception_throw(v35);
        }
      }

      v23 = [v22 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v23);
  }

  [v10 writeSetOfStringsWithJavaUtilSet:v22];
  [v10 writeMapOfStringsWithJavaUtilMap:{objc_msgSend(a4, "getAttributes")}];
  OrgApacheLuceneCodecsCodecUtil_writeFooterWithOrgApacheLuceneStoreIndexOutput_(v10);
  [v10 close];
}

@end
@interface OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat
+ (void)initialize;
- (id)readWithOrgApacheLuceneStoreDirectory:(id)directory withOrgApacheLuceneIndexSegmentInfo:(id)info withNSString:(id)string withOrgApacheLuceneStoreIOContext:(id)context;
- (void)writeWithOrgApacheLuceneStoreDirectory:(id)directory withOrgApacheLuceneIndexSegmentInfo:(id)info withNSString:(id)string withOrgApacheLuceneIndexFieldInfos:(id)infos withOrgApacheLuceneStoreIOContext:(id)context;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat

- (id)readWithOrgApacheLuceneStoreDirectory:(id)directory withOrgApacheLuceneIndexSegmentInfo:(id)info withNSString:(id)string withOrgApacheLuceneStoreIOContext:(id)context
{
  if (!info || (v10 = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(*(info + 1), string, OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_EXTENSION_), !directory))
  {
    JreThrowNullPointerException();
  }

  v11 = [directory openChecksumInputWithNSString:v10 withOrgApacheLuceneStoreIOContext:context];
  v65 = v11;
  v63 = OrgApacheLuceneCodecsCodecUtil_checkIndexHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_withByteArray_withNSString_(v11, OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_CODEC_NAME_, 0, 1, [info getId], string);
  if (!v11)
  {
    JreThrowNullPointerException();
  }

  readVInt = [v11 readVInt];
  v64 = [IOSObjectArray arrayWithLength:readVInt type:OrgApacheLuceneIndexFieldInfo_class_()];
  v13 = JavaUtilCollections_emptyMap();
  if (readVInt >= 1)
  {
    v14 = v13;
    v15 = 0;
    v62 = readVInt;
    v16 = &OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat__initialized;
    do
    {
      readString = [v65 readString];
      readVInt2 = [v65 readVInt];
      if (readVInt2 < 0)
      {
        v56 = JreStrcat("$$$I", v18, v19, v20, v21, v22, v23, v24, @"invalid field number for field: ");
        v57 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v56, v65);
        objc_exception_throw(v57);
      }

      readByte = [v65 readByte];
      readByte2 = [v65 readByte];
      if ((atomic_load_explicit(v16, memory_order_acquire) & 1) == 0)
      {
        objc_opt_class();
      }

      if (readByte2 <= 1u)
      {
        if (!readByte2)
        {
          v35 = OrgApacheLuceneIndexIndexOptionsEnum_values_;
          if (atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire))
          {
            goto LABEL_24;
          }

          goto LABEL_54;
        }

        if (readByte2 != 1)
        {
LABEL_65:
          v58 = JreStrcat("$B", v27, v28, v29, v30, v31, v32, v33, @"invalid IndexOptions byte: ");
          v59 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v58, v65);
          objc_exception_throw(v59);
        }

        v35 = &qword_100557378;
        if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (readByte2 == 2)
        {
          v35 = &qword_100557380;
          if (atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire))
          {
            goto LABEL_24;
          }

LABEL_54:
          objc_opt_class();
          goto LABEL_24;
        }

        if (readByte2 == 3)
        {
          v35 = &qword_100557388;
          if (atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire))
          {
            goto LABEL_24;
          }

          goto LABEL_54;
        }

        if (readByte2 != 4)
        {
          goto LABEL_65;
        }

        v35 = &qword_100557390;
        if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_54;
        }
      }

LABEL_24:
      v36 = *v35;
      readByte3 = [v65 readByte];
      if ((atomic_load_explicit(v16, memory_order_acquire) & 1) == 0)
      {
        objc_opt_class();
      }

      if (readByte3 > 2u)
      {
        switch(readByte3)
        {
          case 3u:
            v45 = &qword_100557A88;
            if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
            {
              goto LABEL_55;
            }

            break;
          case 4u:
            v45 = &qword_100557A98;
            if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
            {
              goto LABEL_55;
            }

            break;
          case 5u:
            v45 = &qword_100557A90;
            if (atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire))
            {
              break;
            }

LABEL_55:
            objc_opt_class();
            break;
          default:
LABEL_66:
            v60 = JreStrcat("$B", v37, v38, v39, v40, v41, v42, v43, @"invalid docvalues byte: ");
            v61 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v60, v65);
            objc_exception_throw(v61);
        }
      }

      else if (readByte3)
      {
        if (readByte3 != 1)
        {
          if (readByte3 != 2)
          {
            goto LABEL_66;
          }

          v45 = &qword_100557A80;
          if (atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire))
          {
            goto LABEL_44;
          }

          goto LABEL_55;
        }

        v45 = &qword_100557A78;
        if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v45 = OrgApacheLuceneIndexDocValuesTypeEnum_values_;
        if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_55;
        }
      }

LABEL_44:
      v46 = v16;
      v47 = *v45;
      readLong = [v65 readLong];
      if (v63 < 1)
      {
        readMapOfStrings = JavaUtilCollections_unmodifiableMapWithJavaUtilMap_([v65 readStringStringMap]);
      }

      else
      {
        readMapOfStrings = [v65 readMapOfStrings];
      }

      v50 = readMapOfStrings;
      if (!readMapOfStrings)
      {
        JreThrowNullPointerException();
      }

      if (![(JavaUtilCollections_UnmodifiableMap *)readMapOfStrings isEqual:v14])
      {
        v14 = v50;
      }

      v51 = new_OrgApacheLuceneIndexFieldInfo_initWithNSString_withInt_withBoolean_withBoolean_withBoolean_withOrgApacheLuceneIndexIndexOptionsEnum_withOrgApacheLuceneIndexDocValuesTypeEnum_withLong_withJavaUtilMap_(readString, readVInt2, readByte & 1, (readByte & 2) != 0, (readByte & 4) != 0, v36, v47, readLong, v14);
      v16 = v46;
      IOSObjectArray_SetAndConsume(v64, v15, v51);
      size = v64->super.size_;
      if (v15 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v15);
      }

      v53 = (&v64->elementType_)[v15];
      if (!v53)
      {
        JreThrowNullPointerException();
      }

      [(IOSClass *)v53 checkConsistency];
      ++v15;
    }

    while (v62 != v15);
  }

  OrgApacheLuceneCodecsCodecUtil_checkFooterWithOrgApacheLuceneStoreChecksumIndexInput_withJavaLangThrowable_(v65, 0);
  v54 = new_OrgApacheLuceneIndexFieldInfos_initWithOrgApacheLuceneIndexFieldInfoArray_(v64);
  if (v65)
  {
    [v65 close];
  }

  return v54;
}

- (void)writeWithOrgApacheLuceneStoreDirectory:(id)directory withOrgApacheLuceneIndexSegmentInfo:(id)info withNSString:(id)string withOrgApacheLuceneIndexFieldInfos:(id)infos withOrgApacheLuceneStoreIOContext:(id)context
{
  if (!info || (v12 = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(*(info + 1), string, OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_EXTENSION_), !directory))
  {
    JreThrowNullPointerException();
  }

  v13 = [directory createOutputWithNSString:v12 withOrgApacheLuceneStoreIOContext:context];
  OrgApacheLuceneCodecsCodecUtil_writeIndexHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_withByteArray_withNSString_(v13, OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_CODEC_NAME_, 1, [info getId], string);
  if (v13)
  {
    v14 = infos == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    JreThrowNullPointerException();
  }

  [v13 writeVIntWithInt:{objc_msgSend(infos, "size")}];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v15 = [infos countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v15)
  {
    v16 = *v39;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v39 != v16)
        {
          objc_enumerationMutation(infos);
        }

        v18 = *(*(&v38 + 1) + 8 * i);
        if (!v18)
        {
          JreThrowNullPointerException();
        }

        [*(*(&v38 + 1) + 8 * i) checkConsistency];
        [v13 writeStringWithNSString:*(v18 + 8)];
        [v13 writeVIntWithInt:*(v18 + 16)];
        hasVectors = [v18 hasVectors];
        omitsNorms = [v18 omitsNorms];
        hasPayloads = [v18 hasPayloads];
        v22 = hasVectors | 2;
        if (!omitsNorms)
        {
          v22 = hasVectors;
        }

        if (hasPayloads)
        {
          v23 = v22 | 4;
        }

        else
        {
          v23 = v22;
        }

        [v13 writeByteWithByte:v23];
        getIndexOptions = [v18 getIndexOptions];
        if ((atomic_load_explicit(OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat__initialized, memory_order_acquire) & 1) == 0)
        {
          objc_opt_class();
        }

        ordinal = [getIndexOptions ordinal];
        if (ordinal >= 5)
        {
          v35 = @"unhandled IndexOptions: ";
LABEL_32:
          v36 = JreStrcat("$@", v26, v27, v28, v29, v30, v31, v32, v35);
          v37 = new_JavaLangAssertionError_initWithId_(v36);
          objc_exception_throw(v37);
        }

        [v13 writeByteWithByte:ordinal];
        getDocValuesType = [v18 getDocValuesType];
        if ((atomic_load_explicit(OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat__initialized, memory_order_acquire) & 1) == 0)
        {
          objc_opt_class();
        }

        ordinal2 = [getDocValuesType ordinal];
        if (ordinal2 > 5)
        {
          v35 = @"unhandled DocValuesType: ";
          goto LABEL_32;
        }

        [v13 writeByteWithByte:(0x40503020100uLL >> (8 * ordinal2)) & 7];
        [v13 writeLongWithLong:{objc_msgSend(v18, "getDocValuesGen")}];
        [v13 writeMapOfStringsWithJavaUtilMap:{objc_msgSend(v18, "attributes")}];
      }

      v15 = [infos countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v15);
  }

  OrgApacheLuceneCodecsCodecUtil_writeFooterWithOrgApacheLuceneStoreIndexOutput_(v13);
  [v13 close];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    atomic_store(1u, OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat__initialized);
  }
}

@end
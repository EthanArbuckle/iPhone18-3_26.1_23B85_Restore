id sub_1000B33B8(uint64_t a1, void *a2)
{
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  if (!a2)
  {
    goto LABEL_38;
  }

  v3 = [a2 countByEnumeratingWithState:&v34 objects:v40 count:16];
  v4 = &OBJC_IVAR___OrgApacheLuceneUtilLongsRef_length_;
  if (v3)
  {
    v5 = v3;
    LODWORD(v6) = 0;
    v7 = *v35;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(a2);
        }

        v9 = *(*(&v34 + 1) + 8 * i);
        if (!v9)
        {
          goto LABEL_38;
        }

        v6 = (*(v9 + 20) + v6);
      }

      v5 = [a2 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v10 = *(a1 + 16);
  if (!v10)
  {
    goto LABEL_38;
  }

  [v10 writeIntWithInt:v6];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v24 = [a2 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (!v24)
  {
    goto LABEL_29;
  }

  v23 = *v31;
  do
  {
    for (j = 0; j != v24; j = j + 1)
    {
      if (*v31 != v23)
      {
        objc_enumerationMutation(a2);
      }

      v12 = *(*(&v30 + 1) + 8 * j);
      if (!v12)
      {
        goto LABEL_38;
      }

      v13 = v4;
      if (*(v12 + *v4) >= 1)
      {
        v14 = 0;
        while (1)
        {
          v15 = *(v12 + 8);
          if (!v15)
          {
            break;
          }

          v16 = *(v15 + 8);
          v17 = v14 + *(v12 + 16);
          if (v17 < 0 || v17 >= v16)
          {
            IOSArray_throwOutOfBoundsWithMsg(v16, v17);
          }

          [*(a1 + 16) writeLongWithLong:*(v15 + 16 + 8 * v17)];
          if (++v14 >= *(v12 + *v13))
          {
            goto LABEL_27;
          }
        }

LABEL_38:
        JreThrowNullPointerException();
      }

LABEL_27:
      v4 = v13;
    }

    v24 = [a2 countByEnumeratingWithState:&v30 objects:v39 count:16];
  }

  while (v24);
LABEL_29:
  [*(a1 + 16) writeIntWithInt:{objc_msgSend(a2, "size")}];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  result = [a2 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (result)
  {
    v19 = result;
    v20 = *v27;
    do
    {
      v21 = 0;
      do
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(a2);
        }

        v22 = *(*(&v26 + 1) + 8 * v21);
        if (!v22)
        {
          goto LABEL_38;
        }

        [*(a1 + 16) writeIntWithInt:*(v22 + *v4)];
        v21 = v21 + 1;
      }

      while (v19 != v21);
      result = [a2 countByEnumeratingWithState:&v26 objects:v38 count:16];
      v19 = result;
    }

    while (result);
  }

  return result;
}

OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer_$1 *sub_1000B36FC(void *a1, void *a2, void *a3)
{
  v6 = new_JavaUtilHashMap_init();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v7 = v6;
  v8 = [a1 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v17;
    do
    {
      v12 = 0;
      v13 = v10;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(a1);
        }

        v10 = v13 + 1;
        [(JavaUtilHashMap *)v7 putWithId:*(*(&v16 + 1) + 8 * v12) withId:JavaLangInteger_valueOfWithInt_(v13), v16];
        v12 = v12 + 1;
        ++v13;
      }

      while (v9 != v12);
      v9 = [a1 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = [OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer__1 alloc];
  JreStrongAssign(&v14->val$docToValueCount_, a2);
  JreStrongAssign(&v14->val$values_, a3);
  JreStrongAssign(&v14->val$setIds_, v7);
  return v14;
}

id sub_1000B386C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_14;
  }

  if (!a2)
  {
    goto LABEL_14;
  }

  [v4 writeVIntWithInt:*(a2 + 16)];
  [*(a1 + 16) writeByteWithByte:0];
  [*(a1 + 16) writeVIntWithInt:3];
  [*(a1 + 16) writeLongWithLong:-1];
  v6 = *(a1 + 8);
  if (!v6)
  {
    goto LABEL_14;
  }

  [*(a1 + 16) writeLongWithLong:{objc_msgSend(v6, "getFilePointer")}];
  [*(a1 + 16) writeVLongWithLong:*(a1 + 24)];
  [*(a1 + 16) writeVIntWithInt:2];
  [*(a1 + 16) writeVIntWithInt:0x4000];
  v7 = new_OrgApacheLuceneUtilPackedMonotonicBlockPackedWriter_initWithOrgApacheLuceneStoreDataOutput_withInt_(*(a1 + 8), 0x4000);
  [(OrgApacheLuceneUtilPackedMonotonicBlockPackedWriter *)v7 addWithLong:0];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  if (!a3)
  {
LABEL_14:
    JreThrowNullPointerException();
  }

  v8 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(a3);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if (!v13)
        {
          goto LABEL_14;
        }

        v10 += [v13 longLongValue];
        [(OrgApacheLuceneUtilPackedMonotonicBlockPackedWriter *)v7 addWithLong:v10];
      }

      v9 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  [(OrgApacheLuceneUtilPackedAbstractBlockPackedWriter *)v7 finish];
  return [*(a1 + 16) writeLongWithLong:{objc_msgSend(*(a1 + 8), "getFilePointer")}];
}

void sub_1000B3D60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    v14 = *(v11 + v12);
    a10 = *(v11 + *(v13 + 2964));
    a11 = v14;
    v15 = [IOSObjectArray arrayWithObjects:&a10 count:2 type:JavaIoCloseable_class_()];
    OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_(v15);
    JUMPOUT(0x1000B3D08);
  }

  _Unwind_Resume(exception_object);
}

OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer *new_OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer_initWithOrgApacheLuceneIndexSegmentWriteState_withNSString_withNSString_withNSString_withNSString_(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = [OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer alloc];
  OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer_initWithOrgApacheLuceneIndexSegmentWriteState_withNSString_withNSString_withNSString_withNSString_(v10, a1, a2, a3, a4, a5);
  return v10;
}

uint64_t OrgApacheLuceneCodecsStoredFieldsReader_class_()
{
  if (qword_1005543B0 != -1)
  {
    sub_1000B429C();
  }

  return qword_1005543A8;
}

uint64_t OrgApacheLuceneSearchMaxNonCompetitiveBoostAttribute_class_()
{
  if (qword_1005543C0 != -1)
  {
    sub_1000B4310();
  }

  return qword_1005543B8;
}

OrgApacheLuceneUtilPackedBlockPackedWriter *new_OrgApacheLuceneUtilPackedBlockPackedWriter_initWithOrgApacheLuceneStoreDataOutput_withInt_(uint64_t a1, signed int a2)
{
  v4 = [OrgApacheLuceneUtilPackedBlockPackedWriter alloc];
  OrgApacheLuceneUtilPackedAbstractBlockPackedWriter_initWithOrgApacheLuceneStoreDataOutput_withInt_(&v4->super.super.isa, a1, a2, v5, v6, v7, v8, v9);
  return v4;
}

OrgApacheLuceneIndexSingleTermsEnum *new_OrgApacheLuceneIndexSingleTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_withOrgApacheLuceneUtilBytesRef_(void *a1, void *a2)
{
  v4 = [OrgApacheLuceneIndexSingleTermsEnum alloc];
  OrgApacheLuceneIndexFilteredTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_(v4, a1);
  JreStrongAssign((&v4->super.doSeek_ + 1), a2);
  [(OrgApacheLuceneIndexFilteredTermsEnum *)v4 setInitialSeekTermWithOrgApacheLuceneUtilBytesRef:a2];
  return v4;
}

void sub_1000B4B18(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1000B4B20);
  }

  objc_terminate();
}

OrgApacheLuceneSearchTopFieldDocs *new_OrgApacheLuceneSearchTopFieldDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_withOrgApacheLuceneSearchSortFieldArray_withFloat_(int a1, void *a2, void *a3, float a4)
{
  v8 = [OrgApacheLuceneSearchTopFieldDocs alloc];
  OrgApacheLuceneSearchTopDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_withFloat_(v8, a1, a2, a4);
  JreStrongAssign((&v8->super.maxScore_ + 1), a3);
  return v8;
}

uint64_t OrgApacheLuceneSearchTopFieldDocs_class_()
{
  if (qword_1005543D0 != -1)
  {
    sub_1000B4CAC();
  }

  return qword_1005543C8;
}

uint64_t OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_()
{
  if (qword_1005543E0 != -1)
  {
    sub_1000B4D20();
  }

  return qword_1005543D8;
}

uint64_t OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_(void *a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilIOUtils__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000B6344();
  }

  v2 = JavaUtilArrays_asListWithNSObjectArray_(a1);

  return OrgApacheLuceneUtilIOUtils_closeWithJavaLangIterable_(v2);
}

uint64_t OrgApacheLuceneUtilIOUtils_closeWithJavaLangIterable_(void *a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilIOUtils__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000B6344();
  }

  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v2 = [a1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = *v8;
    do
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v8 != v3)
        {
          objc_enumerationMutation(a1);
        }

        v5 = *(*(&v7 + 1) + 8 * i);
        if (v5)
        {
          [v5 close];
        }
      }

      v2 = [a1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v2);
  }

  return OrgApacheLuceneUtilIOUtils_reThrowWithJavaLangThrowable_(0);
}

id OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_(void *a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilIOUtils__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000B6344();
  }

  v2 = JavaUtilArrays_asListWithNSObjectArray_(a1);

  return OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaLangIterable_(v2);
}

id OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaLangIterable_(void *a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilIOUtils__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000B6344();
  }

  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  result = [a1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  v3 = result;
  if (result)
  {
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(a1);
        }

        v6 = *(*(&v7 + 1) + 8 * v5);
        if (v6)
        {
          [v6 close];
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      result = [a1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

JavaIoBufferedReader *OrgApacheLuceneUtilIOUtils_getDecodingReaderWithJavaIoInputStream_withJavaNioCharsetCharset_(void *a1, void *a2)
{
  if (atomic_load_explicit(OrgApacheLuceneUtilIOUtils__initialized, memory_order_acquire))
  {
    if (!a2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    sub_1000B6344();
    if (!a2)
    {
      goto LABEL_13;
    }
  }

  v4 = [a2 newDecoder];
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = v4;
  if ((atomic_load_explicit(JavaNioCharsetCodingErrorAction__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100092814();
  }

  v6 = [v5 onMalformedInputWithJavaNioCharsetCodingErrorAction:JavaNioCharsetCodingErrorAction_REPORT_];
  if (!v6)
  {
LABEL_13:
    JreThrowNullPointerException();
  }

  v7 = v6;
  if ((atomic_load_explicit(JavaNioCharsetCodingErrorAction__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100092814();
  }

  v8 = new_JavaIoInputStreamReader_initWithJavaIoInputStream_withJavaNioCharsetCharsetDecoder_(a1, [v7 onUnmappableCharacterWithJavaNioCharsetCodingErrorAction:JavaNioCharsetCodingErrorAction_REPORT_]);
  v9 = new_JavaIoBufferedReader_initWithJavaIoReader_(v8);

  return v9;
}

JavaIoBufferedReader *OrgApacheLuceneUtilIOUtils_getDecodingReaderWithIOSClass_withNSString_withJavaNioCharsetCharset_(void *a1, uint64_t a2, void *a3)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilIOUtils__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000B6344();
  }

  if (!a1)
  {
    JreThrowNullPointerException();
  }

  return OrgApacheLuceneUtilIOUtils_getDecodingReaderWithJavaIoInputStream_withJavaNioCharsetCharset_([a1 getResourceAsStream:a2], a3);
}

void sub_1000B5214(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    v9 = [IOSObjectArray arrayWithObjects:&a9 count:1 type:JavaIoCloseable_class_()];
    OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_(v9);
    objc_exception_rethrow();
  }

  JUMPOUT(0x1000B5278);
}

void sub_1000B5270(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    sub_1000B5274(a1);
  }

  objc_terminate();
}

id OrgApacheLuceneUtilIOUtils_deleteFilesIgnoringExceptionsWithOrgApacheLuceneStoreDirectory_withNSStringArray_(id result, uint64_t a2)
{
  v3 = result;
  if ((atomic_load_explicit(OrgApacheLuceneUtilIOUtils__initialized, memory_order_acquire) & 1) == 0)
  {
    result = sub_1000B6344();
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_10:
    JreThrowNullPointerException();
  }

  if (!a2)
  {
    goto LABEL_10;
  }

LABEL_3:
  v4 = (a2 + 24);
  v5 = a2 + 24 + 8 * *(a2 + 8);
  while (v4 < v5)
  {
    if (!v3)
    {
      JreThrowNullPointerException();
    }

    result = [v3 deleteFileWithNSString:*v4++];
  }

  return result;
}

id OrgApacheLuceneUtilIOUtils_deleteFilesIgnoringExceptionsWithOrgLukhnosPortmobileFilePathArray_(void *a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilIOUtils__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000B6344();
  }

  v2 = JavaUtilArrays_asListWithNSObjectArray_(a1);

  return OrgApacheLuceneUtilIOUtils_deleteFilesIgnoringExceptionsWithJavaUtilCollection_(v2);
}

id OrgApacheLuceneUtilIOUtils_deleteFilesIgnoringExceptionsWithJavaUtilCollection_(void *a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilIOUtils__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000B6344();
  }

  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  result = [a1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  v3 = result;
  if (result)
  {
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(a1);
        }

        v6 = *(*(&v7 + 1) + 8 * v5);
        if (v6)
        {
          OrgLukhnosPortmobileFileFiles_delete__WithOrgLukhnosPortmobileFilePath_(v6);
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      result = [a1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

uint64_t OrgApacheLuceneUtilIOUtils_deleteFilesIfExistWithOrgLukhnosPortmobileFilePathArray_(void *a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilIOUtils__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000B6344();
  }

  v2 = JavaUtilArrays_asListWithNSObjectArray_(a1);

  return OrgApacheLuceneUtilIOUtils_deleteFilesIfExistWithJavaUtilCollection_(v2);
}

uint64_t OrgApacheLuceneUtilIOUtils_deleteFilesIfExistWithJavaUtilCollection_(void *a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilIOUtils__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000B6344();
  }

  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v2 = [a1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = *v8;
    do
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v8 != v3)
        {
          objc_enumerationMutation(a1);
        }

        v5 = *(*(&v7 + 1) + 8 * i);
        if (v5)
        {
          OrgLukhnosPortmobileFileFiles_deleteIfExistsWithOrgLukhnosPortmobileFilePath_(v5);
        }
      }

      v2 = [a1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v2);
  }

  return OrgApacheLuceneUtilIOUtils_reThrowWithJavaLangThrowable_(0);
}

BOOL OrgApacheLuceneUtilIOUtils_rmWithOrgLukhnosPortmobileFilePathArray_(uint64_t a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilIOUtils__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000B6344();
  }

  v2 = new_JavaUtilLinkedHashMap_init();
  if ((atomic_load_explicit(OrgApacheLuceneUtilIOUtils__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000B6344();
  }

  if (a1)
  {
    v3 = (a1 + 24);
    v4 = a1 + 24 + 8 * *(a1 + 8);
    if (a1 + 24 < v4)
    {
      do
      {
        v6 = *v3++;
        v5 = v6;
        if (v6 && OrgLukhnosPortmobileFileFiles_existsWithOrgLukhnosPortmobileFilePath_(v5))
        {
          v7 = [OrgApacheLuceneUtilIOUtils__1 alloc];
          JreStrongAssign(&v7->val$unremoved_, v2);
          OrgLukhnosPortmobileFileFiles_walkFileTreeWithOrgLukhnosPortmobileFilePath_withOrgLukhnosPortmobileFileFileVisitor_(v5, v7);
        }
      }

      while (v3 < v4);
    }
  }

  if (!v2)
  {
LABEL_16:
    JreThrowNullPointerException();
  }

  result = [(JavaUtilHashMap *)v2 isEmpty];
  if (!result)
  {
    v9 = new_JavaLangStringBuilder_initWithNSString_(@"Could not remove the following files (in the order of attempts):\n");
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = [(JavaUtilHashMap *)v2 entrySet];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v12)
      {
        v14 = *v23;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v22 + 1) + 8 * i);
            v17 = [(JavaLangStringBuilder *)v9 appendWithNSString:@"   "];
            if (!v17)
            {
              JreThrowNullPointerException();
            }

            if (!v16)
            {
              JreThrowNullPointerException();
            }

            v18 = [v16 getKey];
            if (!v18)
            {
              JreThrowNullPointerException();
            }

            v19 = [v17 appendWithId:{objc_msgSend(v18, "toAbsolutePath")}];
            if (!v19)
            {
              JreThrowNullPointerException();
            }

            v20 = [v19 appendWithNSString:@": "];
            if (!v20)
            {
              JreThrowNullPointerException();
            }

            v21 = [v20 appendWithId:{objc_msgSend(v16, "getValue")}];
            if (!v21)
            {
              JreThrowNullPointerException();
            }

            [v21 appendWithNSString:@"\n"];
          }

          v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v12);
      }

      v13 = new_JavaIoIOException_initWithNSString_([(JavaLangStringBuilder *)v9 description]);
      objc_exception_throw(v13);
    }

    goto LABEL_16;
  }

  return result;
}

uint64_t OrgApacheLuceneUtilIOUtils_reThrowWithJavaLangThrowable_(uint64_t result)
{
  v1 = result;
  if (atomic_load_explicit(OrgApacheLuceneUtilIOUtils__initialized, memory_order_acquire))
  {
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = sub_1000B6344();
    if (!v1)
    {
      return result;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v2 = sub_1000B60C8(v1);
    objc_exception_throw(v2);
  }

  return OrgApacheLuceneUtilIOUtils_reThrowUncheckedWithJavaLangThrowable_(v1);
}

uint64_t OrgApacheLuceneUtilIOUtils_reThrowUncheckedWithJavaLangThrowable_(uint64_t result)
{
  v1 = result;
  if (atomic_load_explicit(OrgApacheLuceneUtilIOUtils__initialized, memory_order_acquire))
  {
    if (!result)
    {
      return result;
    }

LABEL_5:
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v3 = new_JavaLangRuntimeException_initWithJavaLangThrowable_(v1);
        objc_exception_throw(v3);
      }
    }

    objc_opt_class();
    v2 = sub_1000B60C8(v1);
    objc_exception_throw(v2);
  }

  result = sub_1000B6344();
  if (v1)
  {
    goto LABEL_5;
  }

  return result;
}

id OrgApacheLuceneUtilIOUtils_fsyncWithOrgLukhnosPortmobileFilePath_withBoolean_(id result, char a2)
{
  v3 = result;
  if ((atomic_load_explicit(OrgApacheLuceneUtilIOUtils__initialized, memory_order_acquire) & 1) == 0)
  {
    result = sub_1000B6344();
  }

  if ((a2 & 1) == 0)
  {
    if ((atomic_load_explicit(OrgLukhnosPortmobileFileStandardOpenOptionEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      objc_opt_class();
    }

    v7 = qword_100557488;
    v4 = [IOSObjectArray arrayWithObjects:&v7 count:1 type:OrgLukhnosPortmobileFileStandardOpenOptionEnum_class_()];
    v5 = OrgLukhnosPortmobileChannelsUtilsFileChannelUtils_openWithOrgLukhnosPortmobileFilePath_withOrgLukhnosPortmobileFileStandardOpenOptionEnumArray_(v3, v4);
    v6 = v5;
    if (!v5)
    {
      JreThrowNullPointerException();
    }

    [v5 forceWithBoolean:1];
    return [v6 close];
  }

  return result;
}

uint64_t OrgApacheLuceneUtilIOUtils_spinsWithOrgApacheLuceneStoreDirectory_(id a1)
{
  while (1)
  {
    if ((atomic_load_explicit(OrgApacheLuceneUtilIOUtils__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1000B6344();
    }

    v2 = OrgApacheLuceneStoreFilterDirectory_unwrapWithOrgApacheLuceneStoreDirectory_(a1);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    objc_opt_class();
    if (!v2)
    {
      goto LABEL_18;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_17;
    }

    if (OrgApacheLuceneUtilIOUtils_spinsWithOrgApacheLuceneStoreDirectory_([v2 getPrimaryDir]))
    {
      return 1;
    }

    a1 = [v2 getSecondaryDir];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 1;
  }

  objc_opt_class();
  if (!v2)
  {
LABEL_18:
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_17:
    JreThrowClassCastException();
  }

  v4 = [v2 getDirectory];

  return OrgApacheLuceneUtilIOUtils_spinsWithOrgLukhnosPortmobileFilePath_(v4);
}

uint64_t OrgApacheLuceneUtilIOUtils_spinsWithOrgLukhnosPortmobileFilePath_(void *a1)
{
  if (atomic_load_explicit(OrgApacheLuceneUtilIOUtils__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_10:
    JreThrowNullPointerException();
  }

  sub_1000B6344();
  if (!a1)
  {
    goto LABEL_10;
  }

LABEL_3:
  [a1 toRealPath];
  if ((atomic_load_explicit(OrgApacheLuceneUtilConstants__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100070498();
  }

  if (OrgApacheLuceneUtilConstants_LINUX_ != 1)
  {
    return 1;
  }

  if ((atomic_load_explicit(OrgApacheLuceneUtilIOUtils__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  return 0;
}

id sub_1000B6060(id result, uint64_t a2)
{
  v3 = result;
  if (atomic_load_explicit(OrgApacheLuceneUtilIOUtils__initialized, memory_order_acquire))
  {
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = sub_1000B6344();
    if (!v3)
    {
      return result;
    }
  }

  if (a2)
  {

    return [v3 addSuppressedWithJavaLangThrowable:a2];
  }

  return result;
}

uint64_t sub_1000B60C8(uint64_t a1)
{
  if (a1 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return a1;
}

id OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withNSString_withJavaLangThrowable_(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = OrgLukhnosPortmobileUtilObjects_toStringWithId_(a2);
  v16 = JreStrcat("$$$C", v9, v10, v11, v12, v13, v14, v15, v8);
  JavaIoIOException_initWithNSString_withJavaLangThrowable_(a1, v16, a4);
  JreStrongAssign((a1 + 96), a3);

  return JreStrongAssign((a1 + 88), a2);
}

OrgApacheLuceneIndexCorruptIndexException *new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(void *a1, void *a2)
{
  v4 = [OrgApacheLuceneIndexCorruptIndexException alloc];
  v5 = OrgLukhnosPortmobileUtilObjects_toStringWithId_(a2);
  OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withNSString_withJavaLangThrowable_(v4, a1, v5, 0);
  return v4;
}

OrgApacheLuceneIndexCorruptIndexException *new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_withJavaLangThrowable_(void *a1, void *a2, uint64_t a3)
{
  v6 = [OrgApacheLuceneIndexCorruptIndexException alloc];
  v7 = OrgLukhnosPortmobileUtilObjects_toStringWithId_(a2);
  OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withNSString_withJavaLangThrowable_(v6, a1, v7, a3);
  return v6;
}

OrgApacheLuceneIndexCorruptIndexException *new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withNSString_(void *a1, void *a2)
{
  v4 = [OrgApacheLuceneIndexCorruptIndexException alloc];
  OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withNSString_withJavaLangThrowable_(v4, a1, a2, 0);
  return v4;
}

OrgApacheLuceneUtilPackedBulkOperationPacked1 *new_OrgApacheLuceneUtilPackedBulkOperationPacked1_init()
{
  v0 = [OrgApacheLuceneUtilPackedBulkOperationPacked1 alloc];
  OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(v0, 1);
  return v0;
}

OrgApacheLuceneUtilAutomatonStatePair *new_OrgApacheLuceneUtilAutomatonStatePair_initWithInt_withInt_withInt_(int a1, int a2, int a3)
{
  result = [OrgApacheLuceneUtilAutomatonStatePair alloc];
  result->s_ = a1;
  result->s1_ = a2;
  result->s2_ = a3;
  return result;
}

OrgApacheLuceneUtilAutomatonStatePair *new_OrgApacheLuceneUtilAutomatonStatePair_initWithInt_withInt_(int a1, int a2)
{
  result = [OrgApacheLuceneUtilAutomatonStatePair alloc];
  result->s1_ = a1;
  result->s2_ = a2;
  result->s_ = -1;
  return result;
}

uint64_t OrgApacheLuceneUtilAttributeImpl_class_()
{
  if (qword_1005543F0 != -1)
  {
    sub_1000B7614();
  }

  return qword_1005543E8;
}

id OrgApacheLuceneSearchDisjunctionScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withBoolean_(uint64_t a1, void *a2, void *a3, char a4)
{
  OrgApacheLuceneSearchScorer_initWithOrgApacheLuceneSearchWeight_(a1, a2);
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if ([a3 size] <= 1)
  {
    v14 = new_JavaLangIllegalArgumentException_initWithNSString_(@"There must be at least 2 subScorers");
    objc_exception_throw(v14);
  }

  v7 = new_OrgApacheLuceneSearchDisiPriorityQueue_initWithInt_([a3 size]);
  JreStrongAssignAndConsume((a1 + 24), v7);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  result = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (result)
  {
    v9 = result;
    v10 = 0;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(a3);
        }

        v13 = new_OrgApacheLuceneSearchDisiWrapper_initWithOrgApacheLuceneSearchDocIdSetIterator_(*(*(&v15 + 1) + 8 * v12));
        v10 += v13->cost_;
        [*(a1 + 24) addWithOrgApacheLuceneSearchDisiWrapper:v13];
        v12 = v12 + 1;
      }

      while (v9 != v12);
      result = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v9 = result;
    }

    while (result);
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 32) = v10;
  *(a1 + 16) = a4;
  return result;
}

id OrgApacheLuceneStoreByteArrayDataInput_init(void *a1, uint64_t a2)
{
  OrgApacheLuceneStoreDataInput_init(a1, a2);
  if ((atomic_load_explicit(OrgApacheLuceneUtilBytesRef__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000A23D0();
  }

  v3 = OrgApacheLuceneUtilBytesRef_EMPTY_BYTES_;

  return [a1 resetWithByteArray:v3];
}

OrgApacheLuceneStoreByteArrayDataInput *new_OrgApacheLuceneStoreByteArrayDataInput_initWithByteArray_withInt_withInt_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [OrgApacheLuceneStoreByteArrayDataInput alloc];
  OrgApacheLuceneStoreDataInput_init(v6, v7);
  [(OrgApacheLuceneStoreByteArrayDataInput *)v6 resetWithByteArray:a1 withInt:a2 withInt:a3];
  return v6;
}

OrgApacheLuceneStoreByteArrayDataInput *new_OrgApacheLuceneStoreByteArrayDataInput_init()
{
  v0 = [OrgApacheLuceneStoreByteArrayDataInput alloc];
  OrgApacheLuceneStoreByteArrayDataInput_init(v0, v1);
  return v0;
}

uint64_t OrgApacheLuceneUtilArrayUtil_parseIntWithCharArray_(uint64_t a1)
{
  if (atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_10000B068();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = *(a1 + 8);

  return OrgApacheLuceneUtilArrayUtil_parseIntWithCharArray_withInt_withInt_withInt_(a1, 0, v2, 0xAu);
}

uint64_t OrgApacheLuceneUtilArrayUtil_parseIntWithCharArray_withInt_withInt_(uint64_t a1, uint64_t a2, int a3)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10000B068();
  }

  return OrgApacheLuceneUtilArrayUtil_parseIntWithCharArray_withInt_withInt_withInt_(a1, a2, a3, 0xAu);
}

uint64_t OrgApacheLuceneUtilArrayUtil_parseIntWithCharArray_withInt_withInt_withInt_(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  if (atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire))
  {
    if (!a1)
    {
LABEL_26:
      v18 = new_JavaLangNumberFormatException_init();
      goto LABEL_30;
    }
  }

  else
  {
    sub_10000B068();
    if (!a1)
    {
      goto LABEL_26;
    }
  }

  if (a4 - 37 <= 0xFFFFFFDC)
  {
    goto LABEL_26;
  }

  if (!a3)
  {
    v19 = @"chars length is 0";
    goto LABEL_29;
  }

  v8 = *(a1 + 8);
  if ((a2 & 0x80000000) != 0 || v8 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, a2);
  }

  v9 = *(a1 + 12 + 2 * a2);
  if (a3 == 1 && v9 == 45)
  {
    v19 = @"can't convert to an int";
    goto LABEL_29;
  }

  v10 = v9 == 45;
  v11 = (a3 - v10);
  if ((atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10000B068();
  }

  if (v11 >= 1)
  {
    v12 = 0;
    v13 = a2 + v10;
    while (1)
    {
      v14 = v13;
      v15 = *(a1 + 8);
      if (v13 < 0 || v13 >= v15)
      {
        IOSArray_throwOutOfBoundsWithMsg(v15, v13);
      }

      v16 = JavaLangCharacter_digitWithChar_withInt_(*(a1 + 12 + 2 * v13), a4);
      if (v16 == -1)
      {
        break;
      }

      if (v12 < -(0x80000000 / a4))
      {
        break;
      }

      result = v12 * a4 - v16;
      if (result > v12)
      {
        break;
      }

      v13 = v14 + 1;
      v12 = result;
      if (!--v11)
      {
        goto LABEL_22;
      }
    }

LABEL_28:
    v19 = @"Unable to parse";
LABEL_29:
    v18 = new_JavaLangNumberFormatException_initWithNSString_(v19);
LABEL_30:
    objc_exception_throw(v18);
  }

  result = 0;
LABEL_22:
  if (v9 != 45)
  {
    result = -result;
    if (result < 0)
    {
      goto LABEL_28;
    }
  }

  return result;
}

uint64_t OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire))
  {
    if ((a1 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_26:
    v17 = JreStrcat("$I", a2, a3, a4, a5, a6, a7, a8, @"invalid array size ");
    goto LABEL_28;
  }

  sub_10000B068();
  if ((a1 & 0x80000000) != 0)
  {
    goto LABEL_26;
  }

LABEL_3:
  if (!a1)
  {
    return 0;
  }

  result = OrgApacheLuceneUtilArrayUtil_MAX_ARRAY_LENGTH_;
  if (OrgApacheLuceneUtilArrayUtil_MAX_ARRAY_LENGTH_ < a1)
  {
    v17 = JreStrcat("$I$IC", a2, a3, a4, a5, a6, a7, a8, @"requested array size ");
LABEL_28:
    v18 = new_JavaLangIllegalArgumentException_initWithNSString_(v17);
    objc_exception_throw(v18);
  }

  v11 = a1 >> 3;
  if (a1 >> 3 <= 3)
  {
    v11 = 3;
  }

  v12 = v11 + a1;
  v13 = v12 + 7;
  if ((v12 + 7) >= 0 && v13 <= OrgApacheLuceneUtilArrayUtil_MAX_ARRAY_LENGTH_)
  {
    if ((atomic_load_explicit(OrgApacheLuceneUtilConstants__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100070498();
    }

    if (OrgApacheLuceneUtilConstants_JRE_IS_64BIT_ == 1)
    {
      if (v8 == 1)
      {
        return v13 & 0x7FFFFFF8;
      }

      v14 = (v12 + 3) & 0x7FFFFFFC;
      v15 = (v12 + 1) & 0x7FFFFFFE;
      if (v8 != 4)
      {
        v15 = v12;
      }

      v16 = v8 == 2;
    }

    else
    {
      v14 = (v12 + 3) & 0x7FFFFFFC;
      v15 = (v12 + 1) & 0x7FFFFFFE;
      if (v8 != 2)
      {
        v15 = v12;
      }

      v16 = v8 == 1;
    }

    if (v16)
    {
      return v14;
    }

    else
    {
      return v15;
    }
  }

  return result;
}

uint64_t OrgApacheLuceneUtilArrayUtil_getShrinkSizeWithInt_withInt_withInt_(unsigned int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10000B068();
  }

  LODWORD(result) = OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(a2, a3, a3, a4, a5, a6, a7, a8);
  if (result >= a1 / 2)
  {
    return a1;
  }

  else
  {
    return result;
  }
}

IOSObjectArray *OrgApacheLuceneUtilArrayUtil_growWithNSObjectArray_withInt_(_DWORD *a1, signed int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_11:
    JreThrowNullPointerException();
  }

  sub_10000B068();
  if (!a1)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (a1[2] >= a2)
  {
    return a1;
  }

  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000120A8();
  }

  v10 = OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(a2, OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF_, a3, a4, a5, a6, a7, a8);

  return JavaUtilArrays_copyOfWithNSObjectArray_withInt_(a1, v10);
}

unsigned int *OrgApacheLuceneUtilArrayUtil_growWithShortArray_withInt_(unsigned int *a1, signed int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  if (atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_10000B068();
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v9[2] < a2)
  {
    v10 = [IOSShortArray arrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(a2, 2, a3, a4, a5, a6, a7, a8)];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v9, 0, v10, 0, v9[2]);
    return v10;
  }

  return v9;
}

unsigned int *OrgApacheLuceneUtilArrayUtil_growWithShortArray_(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_10000B068();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v9 = a1[2] + 1;

  return OrgApacheLuceneUtilArrayUtil_growWithShortArray_withInt_(a1, v9, a3, a4, a5, a6, a7, a8);
}

unsigned int *OrgApacheLuceneUtilArrayUtil_growWithFloatArray_withInt_(unsigned int *a1, signed int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  if (atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_10000B068();
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v9[2] < a2)
  {
    v10 = [IOSFloatArray arrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(a2, 4, a3, a4, a5, a6, a7, a8)];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v9, 0, v10, 0, v9[2]);
    return v10;
  }

  return v9;
}

unsigned int *OrgApacheLuceneUtilArrayUtil_growWithFloatArray_(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_10000B068();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v9 = a1[2] + 1;

  return OrgApacheLuceneUtilArrayUtil_growWithFloatArray_withInt_(a1, v9, a3, a4, a5, a6, a7, a8);
}

unsigned int *OrgApacheLuceneUtilArrayUtil_growWithDoubleArray_withInt_(unsigned int *a1, signed int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  if (atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_10000B068();
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v9[2] < a2)
  {
    v10 = [IOSDoubleArray arrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(a2, 8, a3, a4, a5, a6, a7, a8)];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v9, 0, v10, 0, v9[2]);
    return v10;
  }

  return v9;
}

unsigned int *OrgApacheLuceneUtilArrayUtil_growWithDoubleArray_(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_10000B068();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v9 = a1[2] + 1;

  return OrgApacheLuceneUtilArrayUtil_growWithDoubleArray_withInt_(a1, v9, a3, a4, a5, a6, a7, a8);
}

unsigned int *OrgApacheLuceneUtilArrayUtil_shrinkWithShortArray_withInt_(unsigned int *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  if (atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_10000B068();
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_3:
  ShrinkSizeWithInt_withInt_withInt = OrgApacheLuceneUtilArrayUtil_getShrinkSizeWithInt_withInt_withInt_(v9[2], a2, 2, a4, a5, a6, a7, a8);
  if (ShrinkSizeWithInt_withInt_withInt != v9[2])
  {
    v11 = ShrinkSizeWithInt_withInt_withInt;
    v12 = [IOSShortArray arrayWithLength:ShrinkSizeWithInt_withInt_withInt];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v9, 0, v12, 0, v11);
    return v12;
  }

  return v9;
}

unsigned int *OrgApacheLuceneUtilArrayUtil_growWithIntArray_withInt_(unsigned int *a1, signed int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  if (atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_10000B068();
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v9[2] < a2)
  {
    v10 = [IOSIntArray arrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(a2, 4, a3, a4, a5, a6, a7, a8)];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v9, 0, v10, 0, v9[2]);
    return v10;
  }

  return v9;
}

unsigned int *OrgApacheLuceneUtilArrayUtil_growWithIntArray_(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_10000B068();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v9 = a1[2] + 1;

  return OrgApacheLuceneUtilArrayUtil_growWithIntArray_withInt_(a1, v9, a3, a4, a5, a6, a7, a8);
}

unsigned int *OrgApacheLuceneUtilArrayUtil_shrinkWithIntArray_withInt_(unsigned int *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  if (atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_10000B068();
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_3:
  ShrinkSizeWithInt_withInt_withInt = OrgApacheLuceneUtilArrayUtil_getShrinkSizeWithInt_withInt_withInt_(v9[2], a2, 4, a4, a5, a6, a7, a8);
  if (ShrinkSizeWithInt_withInt_withInt != v9[2])
  {
    v11 = ShrinkSizeWithInt_withInt_withInt;
    v12 = [IOSIntArray arrayWithLength:ShrinkSizeWithInt_withInt_withInt];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v9, 0, v12, 0, v11);
    return v12;
  }

  return v9;
}

unsigned int *OrgApacheLuceneUtilArrayUtil_growWithLongArray_withInt_(unsigned int *a1, signed int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  if (atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_10000B068();
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v9[2] < a2)
  {
    v10 = [IOSLongArray arrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(a2, 8, a3, a4, a5, a6, a7, a8)];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v9, 0, v10, 0, v9[2]);
    return v10;
  }

  return v9;
}

unsigned int *OrgApacheLuceneUtilArrayUtil_growWithLongArray_(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_10000B068();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v9 = a1[2] + 1;

  return OrgApacheLuceneUtilArrayUtil_growWithLongArray_withInt_(a1, v9, a3, a4, a5, a6, a7, a8);
}

unsigned int *OrgApacheLuceneUtilArrayUtil_shrinkWithLongArray_withInt_(unsigned int *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  if (atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_10000B068();
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_3:
  ShrinkSizeWithInt_withInt_withInt = OrgApacheLuceneUtilArrayUtil_getShrinkSizeWithInt_withInt_withInt_(v9[2], a2, 8, a4, a5, a6, a7, a8);
  if (ShrinkSizeWithInt_withInt_withInt != v9[2])
  {
    v11 = ShrinkSizeWithInt_withInt_withInt;
    v12 = [IOSLongArray arrayWithLength:ShrinkSizeWithInt_withInt_withInt];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v9, 0, v12, 0, v11);
    return v12;
  }

  return v9;
}

unsigned int *OrgApacheLuceneUtilArrayUtil_growWithByteArray_withInt_(unsigned int *a1, signed int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  if (atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_10000B068();
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v9[2] < a2)
  {
    v10 = [IOSByteArray arrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(a2, 1, a3, a4, a5, a6, a7, a8)];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v9, 0, v10, 0, v9[2]);
    return v10;
  }

  return v9;
}

unsigned int *OrgApacheLuceneUtilArrayUtil_growWithByteArray_(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_10000B068();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v9 = a1[2] + 1;

  return OrgApacheLuceneUtilArrayUtil_growWithByteArray_withInt_(a1, v9, a3, a4, a5, a6, a7, a8);
}

unsigned int *OrgApacheLuceneUtilArrayUtil_shrinkWithByteArray_withInt_(unsigned int *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  if (atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_10000B068();
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_3:
  ShrinkSizeWithInt_withInt_withInt = OrgApacheLuceneUtilArrayUtil_getShrinkSizeWithInt_withInt_withInt_(v9[2], a2, 1, a4, a5, a6, a7, a8);
  if (ShrinkSizeWithInt_withInt_withInt != v9[2])
  {
    v11 = ShrinkSizeWithInt_withInt_withInt;
    v12 = [IOSByteArray arrayWithLength:ShrinkSizeWithInt_withInt_withInt];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v9, 0, v12, 0, v11);
    return v12;
  }

  return v9;
}

unsigned int *OrgApacheLuceneUtilArrayUtil_growWithBooleanArray_withInt_(unsigned int *a1, signed int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  if (atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_10000B068();
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v9[2] < a2)
  {
    v10 = [IOSBooleanArray arrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(a2, 1, a3, a4, a5, a6, a7, a8)];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v9, 0, v10, 0, v9[2]);
    return v10;
  }

  return v9;
}

unsigned int *OrgApacheLuceneUtilArrayUtil_growWithBooleanArray_(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_10000B068();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v9 = a1[2] + 1;

  return OrgApacheLuceneUtilArrayUtil_growWithBooleanArray_withInt_(a1, v9, a3, a4, a5, a6, a7, a8);
}

unsigned int *OrgApacheLuceneUtilArrayUtil_shrinkWithBooleanArray_withInt_(unsigned int *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  if (atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_10000B068();
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_3:
  ShrinkSizeWithInt_withInt_withInt = OrgApacheLuceneUtilArrayUtil_getShrinkSizeWithInt_withInt_withInt_(v9[2], a2, 1, a4, a5, a6, a7, a8);
  if (ShrinkSizeWithInt_withInt_withInt != v9[2])
  {
    v11 = ShrinkSizeWithInt_withInt_withInt;
    v12 = [IOSBooleanArray arrayWithLength:ShrinkSizeWithInt_withInt_withInt];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v9, 0, v12, 0, v11);
    return v12;
  }

  return v9;
}

unsigned int *OrgApacheLuceneUtilArrayUtil_growWithCharArray_withInt_(unsigned int *a1, signed int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  if (atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_10000B068();
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v9[2] < a2)
  {
    v10 = [IOSCharArray arrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(a2, 2, a3, a4, a5, a6, a7, a8)];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v9, 0, v10, 0, v9[2]);
    return v10;
  }

  return v9;
}

unsigned int *OrgApacheLuceneUtilArrayUtil_growWithCharArray_(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_10000B068();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v9 = a1[2] + 1;

  return OrgApacheLuceneUtilArrayUtil_growWithCharArray_withInt_(a1, v9, a3, a4, a5, a6, a7, a8);
}

unsigned int *OrgApacheLuceneUtilArrayUtil_shrinkWithCharArray_withInt_(unsigned int *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  if (atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_10000B068();
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_3:
  ShrinkSizeWithInt_withInt_withInt = OrgApacheLuceneUtilArrayUtil_getShrinkSizeWithInt_withInt_withInt_(v9[2], a2, 2, a4, a5, a6, a7, a8);
  if (ShrinkSizeWithInt_withInt_withInt != v9[2])
  {
    v11 = ShrinkSizeWithInt_withInt_withInt;
    v12 = [IOSCharArray arrayWithLength:ShrinkSizeWithInt_withInt_withInt];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v9, 0, v12, 0, v11);
    return v12;
  }

  return v9;
}

unsigned int *OrgApacheLuceneUtilArrayUtil_growWithIntArray2_withInt_(unsigned int *a1, signed int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  if (atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_9:
    JreThrowNullPointerException();
  }

  sub_10000B068();
  if (!v9)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v9[2] < a2)
  {
    if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1000120A8();
    }

    v10 = OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(a2, OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF_, a3, a4, a5, a6, a7, a8);
    v11 = +[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", v10, IOSClass_arrayType(+[IOSClass intClass], 1u));
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v9, 0, v11, 0, v9[2]);
    return v11;
  }

  return v9;
}

unsigned int *OrgApacheLuceneUtilArrayUtil_growWithIntArray2_(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_10000B068();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v9 = a1[2] + 1;

  return OrgApacheLuceneUtilArrayUtil_growWithIntArray2_withInt_(a1, v9, a3, a4, a5, a6, a7, a8);
}

IOSObjectArray *OrgApacheLuceneUtilArrayUtil_shrinkWithIntArray2_withInt_(_DWORD *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  if (atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_9:
    JreThrowNullPointerException();
  }

  sub_10000B068();
  if (!v9)
  {
    goto LABEL_9;
  }

LABEL_3:
  v10 = v9[2];
  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000120A8();
  }

  ShrinkSizeWithInt_withInt_withInt = OrgApacheLuceneUtilArrayUtil_getShrinkSizeWithInt_withInt_withInt_(v10, a2, OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF_, a4, a5, a6, a7, a8);
  if (ShrinkSizeWithInt_withInt_withInt != v9[2])
  {
    v12 = ShrinkSizeWithInt_withInt_withInt;
    v13 = +[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", ShrinkSizeWithInt_withInt_withInt, IOSClass_arrayType(+[IOSClass intClass], 1u));
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v9, 0, v13, 0, v12);
    return v13;
  }

  return v9;
}

unsigned int *OrgApacheLuceneUtilArrayUtil_growWithFloatArray2_withInt_(unsigned int *a1, signed int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  if (atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_9:
    JreThrowNullPointerException();
  }

  sub_10000B068();
  if (!v9)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v9[2] < a2)
  {
    if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1000120A8();
    }

    v10 = OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(a2, OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF_, a3, a4, a5, a6, a7, a8);
    v11 = +[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", v10, IOSClass_arrayType(+[IOSClass floatClass], 1u));
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v9, 0, v11, 0, v9[2]);
    return v11;
  }

  return v9;
}

unsigned int *OrgApacheLuceneUtilArrayUtil_growWithFloatArray2_(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_10000B068();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v9 = a1[2] + 1;

  return OrgApacheLuceneUtilArrayUtil_growWithFloatArray2_withInt_(a1, v9, a3, a4, a5, a6, a7, a8);
}

IOSObjectArray *OrgApacheLuceneUtilArrayUtil_shrinkWithFloatArray2_withInt_(_DWORD *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  if (atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_9:
    JreThrowNullPointerException();
  }

  sub_10000B068();
  if (!v9)
  {
    goto LABEL_9;
  }

LABEL_3:
  v10 = v9[2];
  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000120A8();
  }

  ShrinkSizeWithInt_withInt_withInt = OrgApacheLuceneUtilArrayUtil_getShrinkSizeWithInt_withInt_withInt_(v10, a2, OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF_, a4, a5, a6, a7, a8);
  if (ShrinkSizeWithInt_withInt_withInt != v9[2])
  {
    v12 = ShrinkSizeWithInt_withInt_withInt;
    v13 = +[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", ShrinkSizeWithInt_withInt_withInt, IOSClass_arrayType(+[IOSClass floatClass], 1u));
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v9, 0, v13, 0, v12);
    return v13;
  }

  return v9;
}

uint64_t OrgApacheLuceneUtilArrayUtil_hashCodeWithCharArray_withInt_withInt_(uint64_t a1, int a2, int a3)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10000B068();
  }

  v6 = a3 - 1;
  if (a3 - 1 < a2)
  {
    return 0;
  }

  if (!a1)
  {
    JreThrowNullPointerException();
  }

  LODWORD(v7) = 0;
  do
  {
    v9 = *(a1 + 8);
    if (v6 < 0 || v6 >= v9)
    {
      IOSArray_throwOutOfBoundsWithMsg(v9, v6);
    }

    v7 = 31 * v7 + *(a1 + 12 + 2 * v6--);
  }

  while (v6 >= a2);
  return v7;
}

uint64_t OrgApacheLuceneUtilArrayUtil_hashCodeWithByteArray_withInt_withInt_(uint64_t a1, int a2, int a3)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10000B068();
  }

  v6 = a3 - 1;
  if (a3 - 1 < a2)
  {
    return 0;
  }

  if (!a1)
  {
    JreThrowNullPointerException();
  }

  LODWORD(v7) = 0;
  do
  {
    v9 = *(a1 + 8);
    if (v6 < 0 || v6 >= v9)
    {
      IOSArray_throwOutOfBoundsWithMsg(v9, v6);
    }

    v7 = (31 * v7 + *(a1 + 12 + v6--));
  }

  while (v6 >= a2);
  return v7;
}

BOOL OrgApacheLuceneUtilArrayUtil_equalsWithCharArray_withInt_withCharArray_withInt_withInt_(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  if (atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_23;
    }
  }

  else
  {
    sub_10000B068();
    if (!a1)
    {
      goto LABEL_23;
    }
  }

  if (a5 + a2 > *(a1 + 8))
  {
    return 0;
  }

  if (!a3)
  {
LABEL_23:
    JreThrowNullPointerException();
  }

  if (a5 + a4 > *(a3 + 8))
  {
    return 0;
  }

  if (a5 < 1)
  {
    return 1;
  }

  v11 = a5 - 1;
  do
  {
    v12 = a2;
    v13 = *(a1 + 8);
    if (a2 < 0 || a2 >= v13)
    {
      IOSArray_throwOutOfBoundsWithMsg(v13, a2);
    }

    v14 = *(a1 + 12 + 2 * a2);
    v15 = *(a3 + 8);
    if ((a4 & 0x80000000) != 0 || a4 >= v15)
    {
      IOSArray_throwOutOfBoundsWithMsg(v15, a4);
    }

    v16 = *(a3 + 12 + 2 * a4);
    result = v14 == v16;
    v17 = v14 != v16 || v11-- == 0;
    a4 = (a4 + 1);
    a2 = v12 + 1;
  }

  while (!v17);
  return result;
}

BOOL OrgApacheLuceneUtilArrayUtil_equalsWithByteArray_withInt_withByteArray_withInt_withInt_(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  if (atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_23;
    }
  }

  else
  {
    sub_10000B068();
    if (!a1)
    {
      goto LABEL_23;
    }
  }

  if (a5 + a2 > *(a1 + 8))
  {
    return 0;
  }

  if (!a3)
  {
LABEL_23:
    JreThrowNullPointerException();
  }

  if (a5 + a4 > *(a3 + 8))
  {
    return 0;
  }

  if (a5 < 1)
  {
    return 1;
  }

  v11 = a5 - 1;
  do
  {
    v12 = a2;
    v13 = *(a1 + 8);
    if (a2 < 0 || a2 >= v13)
    {
      IOSArray_throwOutOfBoundsWithMsg(v13, a2);
    }

    v14 = *(a1 + 12 + a2);
    v15 = *(a3 + 8);
    if ((a4 & 0x80000000) != 0 || a4 >= v15)
    {
      IOSArray_throwOutOfBoundsWithMsg(v15, a4);
    }

    v16 = *(a3 + 12 + a4);
    result = v14 == v16;
    v17 = v14 != v16 || v11-- == 0;
    a4 = (a4 + 1);
    a2 = v12 + 1;
  }

  while (!v17);
  return result;
}

BOOL OrgApacheLuceneUtilArrayUtil_equalsWithIntArray_withInt_withIntArray_withInt_withInt_(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  if (atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_23;
    }
  }

  else
  {
    sub_10000B068();
    if (!a1)
    {
      goto LABEL_23;
    }
  }

  if (a5 + a2 > *(a1 + 8))
  {
    return 0;
  }

  if (!a3)
  {
LABEL_23:
    JreThrowNullPointerException();
  }

  if (a5 + a4 > *(a3 + 8))
  {
    return 0;
  }

  if (a5 < 1)
  {
    return 1;
  }

  v11 = a5 - 1;
  do
  {
    v12 = a2;
    v13 = *(a1 + 8);
    if (a2 < 0 || a2 >= v13)
    {
      IOSArray_throwOutOfBoundsWithMsg(v13, a2);
    }

    v14 = *(a1 + 12 + 4 * a2);
    v15 = *(a3 + 8);
    if ((a4 & 0x80000000) != 0 || a4 >= v15)
    {
      IOSArray_throwOutOfBoundsWithMsg(v15, a4);
    }

    v16 = *(a3 + 12 + 4 * a4);
    result = v14 == v16;
    v17 = v14 != v16 || v11-- == 0;
    a4 = (a4 + 1);
    a2 = v12 + 1;
  }

  while (!v17);
  return result;
}

IOSIntArray *OrgApacheLuceneUtilArrayUtil_toIntArrayWithJavaUtilCollection_(void *a1)
{
  if (atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_17:
    JreThrowNullPointerException();
  }

  sub_10000B068();
  if (!a1)
  {
    goto LABEL_17;
  }

LABEL_3:
  v2 = +[IOSIntArray arrayWithLength:](IOSIntArray, "arrayWithLength:", [a1 size]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(a1);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        if (!v8)
        {
          goto LABEL_17;
        }

        v9 = [v8 intValue];
        size = v2->super.size_;
        if ((v5 & 0x80000000) != 0 || v5 >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v5);
        }

        *(&v2->super.size_ + v5 + 1) = v9;
        v7 = v7 + 1;
        v5 = (v5 + 1);
      }

      while (v4 != v7);
      v11 = [a1 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v4 = v11;
    }

    while (v11);
  }

  return v2;
}

void *OrgApacheLuceneUtilArrayUtil_swapWithNSObjectArray_withInt_withInt_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10000B068();
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_11:
    JreThrowNullPointerException();
  }

  if (!a1)
  {
    goto LABEL_11;
  }

LABEL_3:
  v6 = a2;
  v7 = *(a1 + 8);
  if ((a2 & 0x80000000) != 0 || v7 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, a2);
  }

  v8 = *(a1 + 24 + 8 * a2);
  if ((a3 & 0x80000000) != 0 || v7 <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, a3);
  }

  IOSObjectArray_Set(a1, v6, *(a1 + 24 + 8 * a3));

  return IOSObjectArray_Set(a1, a3, v8);
}

id OrgApacheLuceneUtilArrayUtil_introSortWithNSObjectArray_withInt_withInt_withJavaUtilComparator_(id result, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = result;
  if ((atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    result = sub_10000B068();
  }

  if (a3 - a2 >= 2)
  {
    v8 = new_OrgApacheLuceneUtilArrayIntroSorter_initWithNSObjectArray_withJavaUtilComparator_(v7, a4);

    return [(OrgApacheLuceneUtilIntroSorter *)v8 sortWithInt:a2 withInt:a3];
  }

  return result;
}

id OrgApacheLuceneUtilArrayUtil_introSortWithNSObjectArray_withJavaUtilComparator_(unsigned int *a1, void *a2)
{
  if (atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_10000B068();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v4 = a1[2];

  return OrgApacheLuceneUtilArrayUtil_introSortWithNSObjectArray_withInt_withInt_withJavaUtilComparator_(a1, 0, v4, a2);
}

id OrgApacheLuceneUtilArrayUtil_introSortWithJavaLangComparableArray_withInt_withInt_(id result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  if ((atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    result = sub_10000B068();
  }

  if (a3 - a2 >= 2)
  {
    v6 = OrgApacheLuceneUtilArrayUtil_naturalComparator();

    return OrgApacheLuceneUtilArrayUtil_introSortWithNSObjectArray_withInt_withInt_withJavaUtilComparator_(v5, a2, a3, v6);
  }

  return result;
}

id OrgApacheLuceneUtilArrayUtil_introSortWithJavaLangComparableArray_(unsigned int *a1)
{
  if (atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_10000B068();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = a1[2];

  return OrgApacheLuceneUtilArrayUtil_introSortWithJavaLangComparableArray_withInt_withInt_(a1, 0, v2);
}

_DWORD *OrgApacheLuceneUtilArrayUtil_timSortWithNSObjectArray_withInt_withInt_withJavaUtilComparator_(_DWORD *result, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = result;
  if ((atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    result = sub_10000B068();
  }

  if (a3 - a2 >= 2)
  {
    if (!v7)
    {
      JreThrowNullPointerException();
    }

    v8 = new_OrgApacheLuceneUtilArrayTimSorter_initWithNSObjectArray_withJavaUtilComparator_withInt_(v7, a4, (v7[2] / 64));

    return [(OrgApacheLuceneUtilTimSorter *)v8 sortWithInt:a2 withInt:a3];
  }

  return result;
}

_DWORD *OrgApacheLuceneUtilArrayUtil_timSortWithNSObjectArray_withJavaUtilComparator_(_DWORD *a1, void *a2)
{
  if (atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_10000B068();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v4 = a1[2];

  return OrgApacheLuceneUtilArrayUtil_timSortWithNSObjectArray_withInt_withInt_withJavaUtilComparator_(a1, 0, v4, a2);
}

_DWORD *OrgApacheLuceneUtilArrayUtil_timSortWithJavaLangComparableArray_withInt_withInt_(_DWORD *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  if ((atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    result = sub_10000B068();
  }

  if (a3 - a2 >= 2)
  {
    v6 = OrgApacheLuceneUtilArrayUtil_naturalComparator();

    return OrgApacheLuceneUtilArrayUtil_timSortWithNSObjectArray_withInt_withInt_withJavaUtilComparator_(v5, a2, a3, v6);
  }

  return result;
}

_DWORD *OrgApacheLuceneUtilArrayUtil_timSortWithJavaLangComparableArray_(_DWORD *a1)
{
  if (atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_10000B068();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = a1[2];

  return OrgApacheLuceneUtilArrayUtil_timSortWithJavaLangComparableArray_withInt_withInt_(a1, 0, v2);
}

uint64_t OrgApacheLuceneUtilArrayUtil_naturalComparator()
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10000B068();
  }

  v0 = qword_1005543F8;
  v1 = JavaUtilComparator_class_();
  if (v0 && ([v1 isInstance:v0] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v0;
}

id OrgApacheLuceneCodecsCompressingCompressingTermVectorsFormat_initWithNSString_withNSString_withOrgApacheLuceneCodecsCompressingCompressionMode_withInt_withInt_(uint64_t a1, void *a2, void *a3, void *a4, int a5, int a6)
{
  OrgApacheLuceneCodecsTermVectorsFormat_init();
  JreStrongAssign((a1 + 8), a2);
  JreStrongAssign((a1 + 16), a3);
  result = JreStrongAssign((a1 + 24), a4);
  if (a5 <= 0)
  {
    v13 = @"chunkSize must be >= 1";
    goto LABEL_6;
  }

  *(a1 + 32) = a5;
  if (a6 <= 0)
  {
    v13 = @"blockSize must be >= 1";
LABEL_6:
    v14 = new_JavaLangIllegalArgumentException_initWithNSString_(v13);
    objc_exception_throw(v14);
  }

  *(a1 + 36) = a6;
  return result;
}

void *OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_init(uint64_t a1)
{
  OrgApacheLuceneUtilAttributeImpl_init();
  v8 = [IOSCharArray newArrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(0xAu, 2, v2, v3, v4, v5, v6, v7)];
  JreStrongAssignAndConsume((a1 + 16), v8);
  *(a1 + 24) = 0;
  v9 = new_OrgApacheLuceneUtilBytesRefBuilder_init();

  return JreStrongAssignAndConsume((a1 + 8), v9);
}

id *sub_1000BB7C8(id *result, signed int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result[2];
  if (!v8)
  {
    JreThrowNullPointerException();
  }

  if (v8[2] < a2)
  {
    v9 = result;
    v10 = [IOSCharArray newArrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(a2, 2, a3, a4, a5, a6, a7, a8)];

    return JreStrongAssignAndConsume(v9 + 2, v10);
  }

  return result;
}

uint64_t sub_1000BB87C(uint64_t a1, signed int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = *(a1 + 16);
  if (!result)
  {
    JreThrowNullPointerException();
  }

  if (*(result + 8) < a2)
  {
    v10 = [IOSCharArray arrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(a2, 2, a3, a4, a5, a6, a7, a8)];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(a1 + 16), 0, v10, 0, *(*(a1 + 16) + 8));
    JreStrongAssign((a1 + 16), v10);
    return *(a1 + 16);
  }

  return result;
}

uint64_t sub_1000BBD28(uint64_t a1, __CFString *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = @"null";
  }

  v8 = (a4 - a3);
  v36 = v7;
  v9 = [(__CFString *)v7 length];
  if ((v8 & 0x80000000) != 0 || (v9 >= v5 ? (v16 = v9 < a4) : (v16 = 1), v16))
  {
    v35 = new_JavaLangIndexOutOfBoundsException_init();
    objc_exception_throw(v35);
  }

  if (a4 != v5)
  {
    sub_1000BB87C(a1, *(a1 + 24) + v8, v10, v11, v12, v13, v14, v15);
    if (v8 > 4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(__CFString *)v36 getChars:v5 sourceEnd:a4 destination:*(a1 + 16) destinationBegin:*(a1 + 24)];
LABEL_28:
          *(a1 + 24) += v8;
          return a1;
        }

        goto LABEL_44;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_22:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(__CFString *)v36 getCharsWithInt:v5 withInt:a4 withCharArray:*(a1 + 16) withInt:*(a1 + 24)];
          goto LABEL_28;
        }

LABEL_44:
        JreThrowClassCastException();
      }

      if ([OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_() isInstance:v36])
      {
        if (([OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_() isInstance:v36] & 1) == 0)
        {
          goto LABEL_44;
        }

        v22 = [(__CFString *)v36 buffer];
        v23 = *(a1 + 16);
        v24 = *(a1 + 24);
        v25 = v5;
        goto LABEL_27;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_44;
        }

        if ([(__CFString *)v36 hasArray])
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_44;
          }

          v27 = [(__CFString *)v36 array];
          v28 = [(__CFString *)v36 arrayOffset];
          v29 = [(__CFString *)v36 position];
          v23 = *(a1 + 16);
          v24 = *(a1 + 24);
          v25 = v28 + v5 + v29;
          v22 = v27;
LABEL_27:
          JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v22, v25, v23, v24, v8);
          goto LABEL_28;
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_22;
      }

      if (a4 <= v5)
      {
        return a1;
      }

      while (1)
      {
        v30 = [(__CFString *)v36 charAtWithInt:v5];
        v31 = *(a1 + 16);
        if (!v31)
        {
          break;
        }

        v32 = v30;
        v33 = *(a1 + 24);
        *(a1 + 24) = v33 + 1;
        v34 = *(v31 + 8);
        if (v33 < 0 || v33 >= v34)
        {
          IOSArray_throwOutOfBoundsWithMsg(v34, v33);
        }

        v5 = (v5 + 1);
        *(v31 + 12 + 2 * v33) = v32;
        if (a4 == v5)
        {
          return a1;
        }
      }

LABEL_43:
      JreThrowNullPointerException();
    }

    if (a4 > v5)
    {
      while (1)
      {
        v17 = [(__CFString *)v36 charAtWithInt:v5];
        v18 = *(a1 + 16);
        if (!v18)
        {
          break;
        }

        v19 = v17;
        v20 = *(a1 + 24);
        *(a1 + 24) = v20 + 1;
        v21 = *(v18 + 8);
        if (v20 < 0 || v20 >= v21)
        {
          IOSArray_throwOutOfBoundsWithMsg(v21, v20);
        }

        v5 = (v5 + 1);
        *(v18 + 12 + 2 * v20) = v19;
        if (a4 == v5)
        {
          return a1;
        }
      }

      goto LABEL_43;
    }
  }

  return a1;
}

OrgApacheLuceneStoreSimpleFSDirectory *new_OrgApacheLuceneStoreSimpleFSDirectory_initWithOrgLukhnosPortmobileFilePath_withOrgApacheLuceneStoreLockFactory_(void *a1, void *a2)
{
  v4 = [OrgApacheLuceneStoreSimpleFSDirectory alloc];
  OrgApacheLuceneStoreFSDirectory_initWithOrgLukhnosPortmobileFilePath_withOrgApacheLuceneStoreLockFactory_(v4, a1, a2);
  return v4;
}

id OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_initWithNSString_withJavaNioChannelsSeekableByteChannel_withOrgApacheLuceneStoreIOContext_(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  OrgApacheLuceneStoreBufferedIndexInput_initWithNSString_withOrgApacheLuceneStoreIOContext_(a1, a2, a4);
  *(a1 + 64) = 0;
  JreStrongAssign((a1 + 56), a3);
  *(a1 + 72) = 0;
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  result = [a3 size];
  *(a1 + 80) = result;
  return result;
}

id OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_initWithNSString_withJavaNioChannelsSeekableByteChannel_withLong_withLong_withInt_(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OrgApacheLuceneStoreBufferedIndexInput_initWithNSString_withInt_(a1, a2, a6);
  *(a1 + 64) = 0;
  result = JreStrongAssign((a1 + 56), a3);
  *(a1 + 72) = a4;
  *(a1 + 80) = a5 + a4;
  *(a1 + 64) = 1;
  return result;
}

uint64_t OrgApacheLuceneIndexSortedNumericDocValues_class_()
{
  if (qword_100554408 != -1)
  {
    sub_1000BD01C();
  }

  return qword_100554400;
}

OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer *OrgApacheLuceneAnalysisUtilCharacterUtils_newCharacterBufferWithInt_(int a1)
{
  if ((atomic_load_explicit(&OrgApacheLuceneAnalysisUtilCharacterUtils__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000BD9B0();
  }

  if (a1 <= 1)
  {
    v5 = new_JavaLangIllegalArgumentException_initWithNSString_(@"buffersize must be >= 2");
    objc_exception_throw(v5);
  }

  v2 = [IOSCharArray arrayWithLength:a1];
  v3 = [OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer alloc];
  JreStrongAssign(&v3->buffer_, v2);
  *&v3->offset_ = 0;

  return v3;
}

uint64_t OrgApacheLuceneAnalysisUtilCharacterUtils_readFullyWithJavaIoReader_withCharArray_withInt_withInt_(void *a1, uint64_t a2, int a3, int a4)
{
  if ((atomic_load_explicit(&OrgApacheLuceneAnalysisUtilCharacterUtils__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000BD9B0();
  }

  v8 = 0;
  do
  {
    v9 = v8;
    if (a4 <= v8)
    {
      break;
    }

    if (!a1)
    {
      JreThrowNullPointerException();
    }

    v10 = [a1 readWithCharArray:a2 withInt:(v8 + a3) withInt:(a4 - v8)];
    v8 = v10 + v9;
  }

  while (v10 != -1);
  return v9;
}

uint64_t OrgApacheLuceneAnalysisUtilCharacterUtils_getInstance()
{
  if ((atomic_load_explicit(&OrgApacheLuceneAnalysisUtilCharacterUtils__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000BD9B0();
  }

  return qword_100554418;
}

id OrgApacheLuceneUtilPackedDirectPackedReader_initWithInt_withInt_withOrgApacheLuceneStoreIndexInput_(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  OrgApacheLuceneUtilPackedPackedInts_ReaderImpl_initWithInt_(a1, a3);
  JreStrongAssign((a1 + 16), a4);
  *(a1 + 24) = a2;
  if (!a4)
  {
    JreThrowNullPointerException();
  }

  result = [a4 getFilePointer];
  *(a1 + 32) = result;
  v8 = -1;
  if (a2 != 64)
  {
    v8 = ~(-1 << a2);
  }

  *(a1 + 40) = v8;
  return result;
}

void sub_1000BDCA0(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = new_JavaLangRuntimeException_initWithJavaLangThrowable_(v2);
    objc_exception_throw(v3);
  }

  _Unwind_Resume(exception_object);
}

OrgApacheLuceneUtilPackedDirectPackedReader *new_OrgApacheLuceneUtilPackedDirectPackedReader_initWithInt_withInt_withOrgApacheLuceneStoreIndexInput_(int a1, uint64_t a2, void *a3)
{
  v6 = [OrgApacheLuceneUtilPackedDirectPackedReader alloc];
  OrgApacheLuceneUtilPackedDirectPackedReader_initWithInt_withInt_withOrgApacheLuceneStoreIndexInput_(v6, a1, a2, a3);
  return v6;
}

OrgApacheLuceneStoreInputStreamDataInput *new_OrgApacheLuceneStoreInputStreamDataInput_initWithJavaIoInputStream_(void *a1)
{
  v2 = [OrgApacheLuceneStoreInputStreamDataInput alloc];
  OrgApacheLuceneStoreDataInput_init(v2, v3);
  JreStrongAssign(&v2->is_, a1);
  return v2;
}

OrgApacheLuceneStoreOutputStreamDataOutput *new_OrgApacheLuceneStoreOutputStreamDataOutput_initWithJavaIoOutputStream_(void *a1)
{
  v2 = [OrgApacheLuceneStoreOutputStreamDataOutput alloc];
  OrgApacheLuceneStoreDataOutput_init(v2, v3);
  JreStrongAssign(&v2->os_, a1);
  return v2;
}

uint64_t OrgApacheLuceneIndexCompositeReader_init(uint64_t a1)
{
  result = OrgApacheLuceneIndexIndexReader_init(a1);
  atomic_store(0, (a1 + 40));
  return result;
}

OrgApacheLuceneUtilPackedBulkOperationPacked16 *new_OrgApacheLuceneUtilPackedBulkOperationPacked16_init()
{
  v0 = [OrgApacheLuceneUtilPackedBulkOperationPacked16 alloc];
  OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(v0, 16);
  return v0;
}

id ComAppleContextkitCategoriesConstellation_initWithDirectory_titlesFile_qidToCategoryIdTreasureMap_(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  *(a1 + 64) = 0;
  if (!a2 || (JreStrongAssign((a1 + 16), [a2 openInputWithNSString:@"categories-ancestors.dat" withOrgApacheLuceneStoreIOContext:0]), (v8 = *(a1 + 16)) == 0))
  {
    JreThrowNullPointerException();
  }

  if ([v8 readInt] != 267728720 || (v9 = objc_msgSend(*(a1 + 16), "readInt"), *(a1 + 8) = v9 + 1, objc_msgSend(*(a1 + 16), "skipBytesWithLong:", (4 * v9)), objc_msgSend(*(a1 + 16), "readInt") != 1203990688))
  {
    v13 = new_JavaIoIOException_initWithNSString_(@"Unsupported file format for categories-ancestors.dat");
    objc_exception_throw(v13);
  }

  sub_1000BE998(a1, a2);
  v10 = new_ComAppleContextkitCategoriesCatIdTitleMap_initWithOrgApacheLuceneStoreIndexInput_([a2 openInputWithNSString:a3 withOrgApacheLuceneStoreIOContext:0]);
  JreStrongAssignAndConsume((a1 + 24), v10);
  v11 = new_ComAppleContextkitCategoriesCatIdTitleMap_initWithOrgApacheLuceneStoreIndexInput_([a2 openInputWithNSString:@"categories-qids.dat" withOrgApacheLuceneStoreIOContext:0]);
  JreStrongAssignAndConsume((a1 + 40), v11);

  return JreStrongAssign((a1 + 32), a4);
}

char *sub_1000BE998(uint64_t a1, void *a2)
{
  if (!a2 || (result = [a2 listAll]) == 0)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  v5 = (result + 24);
  v6 = &result[8 * *(result + 2) + 24];
  while (v5 < v6)
  {
    v7 = *v5;
    if (!*v5)
    {
      goto LABEL_11;
    }

    ++v5;
    result = [v7 equalsIgnoreCase:@"newstopics.dat"];
    if (result)
    {
      *(a1 + 64) = 1;
      v8 = [a2 openInputWithNSString:@"newstopics.dat" withOrgApacheLuceneStoreIOContext:0];

      return JreStrongAssign((a1 + 56), v8);
    }
  }

  return result;
}

void *sub_1000BF870(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7)
{
  JreStrongAssign((a1 + 64), a2);
  JreStrongAssign((a1 + 8), 0);
  *(a1 + 72) = 0;
  *(a1 + 52) = a7;
  *(a1 + 56) = a3;
  *(a1 + 40) = a4;
  *(a1 + 44) = a5;
  *(a1 + 48) = a6;
  v14 = *(a2 + 16);
  if (!v14)
  {
    JreThrowNullPointerException();
  }

  JreStrongAssign((a1 + 80), [v14 clone]);
  JreStrongAssignAndConsume((a1 + 16), [IOSIntArray newArrayWithLength:*(a2 + 8)]);
  JreStrongAssignAndConsume((a1 + 32), [IOSIntArray newArrayWithLength:*(a2 + 8)]);
  v15 = [IOSIntArray newArrayWithLength:*(a2 + 8)];

  return JreStrongAssignAndConsume((a1 + 24), v15);
}

ComAppleContextkitCategoriesConstellation_Request_QIDCountPQ *new_ComAppleContextkitCategoriesConstellation_Request_QIDCountPQ_initWithComAppleContextkitCategoriesConstellation_Request_withInt_(void *a1, uint64_t a2)
{
  v4 = [ComAppleContextkitCategoriesConstellation_Request_QIDCountPQ alloc];
  JreStrongAssign(&v4->this$0_, a1);
  OrgApacheLuceneUtilPriorityQueue_initWithInt_(v4, a2, v5, v6, v7, v8, v9, v10);
  return v4;
}

uint64_t sub_1000BFD30(void *a1, uint64_t a2, int a3, void *a4)
{
  result = a1[8];
  if (*(result + 8) > a2)
  {
    result = [result isIgnoredCategoryWithInt:a2];
    if ((result & 1) == 0)
    {
      if (!a4)
      {
        goto LABEL_13;
      }

      result = [a4 addWithId:JavaLangInteger_valueOfWithInt_(a2)];
      if (!result)
      {
        return result;
      }

      v9 = a1[4];
      if (!v9)
      {
        goto LABEL_13;
      }

      v10 = *(v9 + 8);
      if ((a2 & 0x80000000) != 0 || v10 <= a2)
      {
        v12 = a1[4];
        IOSArray_throwOutOfBoundsWithMsg(v10, a2);
      }

      ++*(v9 + 12 + 4 * a2);
      v11 = a1[3];
      if (!v11)
      {
LABEL_13:
        JreThrowNullPointerException();
      }

      result = *(v11 + 8);
      if ((a2 & 0x80000000) != 0 || result <= a2)
      {
        IOSArray_throwOutOfBoundsWithMsg(result, a2);
      }

      *(v11 + 12 + 4 * a2) += a3;
    }
  }

  return result;
}

ComAppleContextkitCategoriesConstellation_Request_CategoryCountPQ *sub_1000BFF80(void *a1, uint64_t a2)
{
  v4 = [ComAppleContextkitCategoriesConstellation_Request_CategoryCountPQ alloc];
  JreStrongAssign(&v4->this$0_, a1);
  OrgApacheLuceneUtilPriorityQueue_initWithInt_(v4, a2, v5, v6, v7, v8, v9, v10);
  return v4;
}

uint64_t sub_1000C0114(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_8;
  }

  v4 = *(v2 + 8);
  if ((a2 & 0x80000000) != 0 || v4 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v4, a2);
  }

  *(v2 + 12 + 4 * a2) = 0;
  v5 = *(a1 + 24);
  if (!v5)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  result = *(v5 + 8);
  if ((a2 & 0x80000000) != 0 || result <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, a2);
  }

  *(v5 + 12 + 4 * a2) = 0;
  return result;
}

id sub_1000C01E4(uint64_t a1, int a2)
{
  if (a2 < 1 || *(*(a1 + 64) + 8) <= a2)
  {
    return 0;
  }

  v3 = *(a1 + 80);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  [v3 seekWithLong:4 * a2 + 4];
  v4 = *(a1 + 80);

  return [v4 readInt];
}

BOOL sub_1000C0C88(void *a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    goto LABEL_8;
  }

  v6 = [a1 getWithId:a2];
  if (v6)
  {
    v7 = v6;
    goto LABEL_5;
  }

  v7 = new_JavaUtilArrayList_init();
  [a1 putWithId:a2 withId:v7];
  if (!v7)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

LABEL_5:
  v8 = JavaLangInteger_valueOfWithInt_(a3);

  return [(JavaUtilArrayList *)v7 addWithId:v8];
}

id sub_1000C0D14(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 32);
  v3 = *(a1 + 32);
  if (!v3)
  {
    v5 = new_JavaUtilArrayList_init();
    JreStrongAssignAndConsume(v4, v5);
    v3 = *v4;
    if (!*v4)
    {
      JreThrowNullPointerException();
    }
  }

  return [v3 addWithId:a2];
}

uint64_t sub_1000C0E60(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    goto LABEL_10;
  }

  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 > v3)
  {
    return 1;
  }

  if (v2 != v3)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  return [v5 compareToWithId:*(a2 + 8)] >> 31;
}

BOOL sub_1000C1034(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (!a2 || !a3)
  {
    goto LABEL_18;
  }

  v3 = a2[5];
  v4 = a3[5];
  if (v3 > v4 || v3 == v4 && a2[3] > a3[3])
  {
    return 1;
  }

  v5 = a2[4];
  v6 = a3[4];
  if (v5 > v6)
  {
    return 1;
  }

  if (v5 == v6)
  {
    v8 = *(*(a1 + 24) + 16);
    if (v8)
    {
      v9 = a2[2];
      v10 = *(v8 + 8);
      if (v9 < 0 || v9 >= v10)
      {
        v14 = *(*(a1 + 24) + 16);
        IOSArray_throwOutOfBoundsWithMsg(*(v8 + 8), v9);
      }

      v11 = *(v8 + 12 + 4 * v9);
      v12 = a3[2];
      if (v12 < 0 || v12 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v12);
      }

      v13 = *(*(*(a1 + 24) + 16) + 12 + 4 * v12);
      return v11 < v13 || v11 == v13 && a2[2] < a3[2];
    }

LABEL_18:
    JreThrowNullPointerException();
  }

  return 0;
}

uint64_t sub_1000C15D4(uint64_t a1, uint64_t a2, int a3)
{
  if ((atomic_load_explicit(ComAppleContextkitCategoriesConstellation__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000C2DAC();
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_9:
    JreThrowNullPointerException();
  }

  if (!a1)
  {
    goto LABEL_9;
  }

LABEL_3:
  v6 = *(a1 + 8);
  if ((a2 & 0x80000000) != 0 || v6 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v6, a2);
  }

  v7 = *(a1 + 12 + 4 * a2);
  if ((a2 & 0x80000000) != 0 || v6 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v6, a2);
  }

  *(a1 + 12 + 4 * a2) = (v7 - a3) & ~((v7 - a3) >> 31);
  return v7;
}

unint64_t ComAppleContextkitCategoriesConstellation_CategoryCount_initWithInt_withInt_withInt_(uint64_t a1, int a2, int a3, int a4)
{
  JreStrongAssign((a1 + 32), 0);
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = a4;
  v8 = JavaLangMath_logWithDouble_(a4);
  result = JavaLangMath_roundWithDouble_(v8);
  *(a1 + 20) = result;
  return result;
}

ComAppleContextkitCategoriesConstellation_NewsCategory *new_ComAppleContextkitCategoriesConstellation_NewsCategory_initWithNSString_withNSString_(void *a1, void *a2)
{
  v4 = [ComAppleContextkitCategoriesConstellation_NewsCategory alloc];
  JreStrongAssign(&v4->title_, a1);
  JreStrongAssign(&v4->qid_, a2);
  return v4;
}

id sub_1000C1C3C(uint64_t a1, void *a2, void *a3, void *a4)
{
  JreStrongAssign((a1 + 8), a2);
  v7 = JavaUtilCollections_singletonListWithId_(@"en");
  JreStrongAssign((a1 + 40), v7);
  JreStrongAssign((a1 + 48), 0);
  JreStrongAssign((a1 + 56), 0);
  JreStrongAssignAndConsume((a1 + 64), [ComAppleContextkitCategoriesConstellation_GroupingRequest__1 alloc]);
  JreStrongAssignAndConsume((a1 + 72), [ComAppleContextkitCategoriesConstellation_GroupingRequest__2 alloc]);
  *(a1 + 80) = 0xA0000000ALL;
  v8 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume((a1 + 48), v8);
  v9 = new_JavaUtilHashSet_init();
  JreStrongAssignAndConsume((a1 + 56), v9);
  if (!a3)
  {
    goto LABEL_21;
  }

  v10 = [a3 readVInt];
  if (v10 >= 1)
  {
    v11 = v10;
    while (1)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = [a3 readString];
      v14 = [a3 readString];
      if (!v13)
      {
        break;
      }

      v15 = v14;
      v16 = [v13 split:@":"];
      if (!v16)
      {
        break;
      }

      v17 = v16;
      v18 = v16[2];
      if (v18 < 1)
      {
        IOSArray_throwOutOfBoundsWithMsg(v18, 0);
      }

      v19 = *(v17 + 3);
      if (v18 <= 1)
      {
        IOSArray_throwOutOfBoundsWithMsg(v18, 1);
      }

      v20 = *(v17 + 4);
      [*(a1 + 56) addWithId:v19];
      if (!a4)
      {
        break;
      }

      if ([a4 containsWithId:v20])
      {
        [*(a1 + 48) putWithId:v13 withId:v15];
      }

      objc_autoreleasePoolPop(v12);
      if (!--v11)
      {
        goto LABEL_15;
      }
    }

LABEL_21:
    JreThrowNullPointerException();
  }

LABEL_15:
  v21 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume((a1 + 16), v21);
  v22 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume((a1 + 24), v22);
  v23 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume((a1 + 32), v23);
  if (!a4)
  {
    goto LABEL_21;
  }

  result = [a4 size];
  if (result > 0)
  {

    return JreStrongAssign((a1 + 40), a4);
  }

  return result;
}

id sub_1000C25E4(void *a1, void *a2)
{
  if (!a2)
  {
    goto LABEL_20;
  }

  if ([a2 size])
  {
    JavaUtilCollections_sortWithJavaUtilList_withJavaUtilComparator_(a2, a1[8]);
    v4 = [a2 getWithInt:0];
    if (v4)
    {
      v5 = [v4 getValue];
      if (v5)
      {
        v6 = [v5 size];
        v7 = new_JavaUtilHashMap_init();
        v8 = new_JavaUtilHashMap_init();
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v9 = [a2 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v21;
          do
          {
            v12 = 0;
            do
            {
              if (*v21 != v11)
              {
                objc_enumerationMutation(a2);
              }

              v13 = *(*(&v20 + 1) + 8 * v12);
              if (!v13)
              {
                goto LABEL_20;
              }

              v14 = [*(*(&v20 + 1) + 8 * v12) getValue];
              if (!v14)
              {
                goto LABEL_20;
              }

              if ([v14 size] < v6)
              {
                goto LABEL_16;
              }

              v15 = [v13 getKey];
              v16 = a1[4];
              if (!v16)
              {
                goto LABEL_20;
              }

              -[JavaUtilHashMap putWithId:withId:](v7, "putWithId:withId:", v15, [v16 getWithId:v15]);
              [(JavaUtilHashMap *)v8 putWithId:v15 withId:v13];
              v12 = v12 + 1;
            }

            while (v10 != v12);
            v10 = [a2 countByEnumeratingWithState:&v20 objects:v24 count:16];
          }

          while (v10);
        }

LABEL_16:
        v17 = new_JavaUtilArrayList_initWithJavaUtilCollection_([(JavaUtilHashMap *)v7 entrySet]);
        JavaUtilCollections_sortWithJavaUtilList_withJavaUtilComparator_(v17, a1[9]);
        v18 = [(JavaUtilArrayList *)v17 getWithInt:0];
        if (v18)
        {
          return -[JavaUtilHashMap getWithId:](v8, "getWithId:", [v18 getKey]);
        }
      }
    }

LABEL_20:
    JreThrowNullPointerException();
  }

  return 0;
}

id sub_1000C27CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((atomic_load_explicit(ComAppleContextkitCategoriesConstellation__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000C2DAC();
  }

  v10 = JreStrcat("$$$", a2, a3, a4, a5, a6, a7, a8, a2);
  v11 = *(a1 + 48);
  if (!v11)
  {
    JreThrowNullPointerException();
  }

  if (![v11 containsKeyWithId:v10])
  {
    return 0;
  }

  v12 = *(a1 + 48);

  return [v12 getWithId:v10];
}

uint64_t OrgApacheLuceneUtilLongValues_class_()
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilLongValues__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000C2EFC();
  }

  if (qword_100554450 != -1)
  {
    sub_1000C2F08();
  }

  return qword_100554448;
}

OrgApacheLuceneIndexIndexNotFoundException *new_OrgApacheLuceneIndexIndexNotFoundException_initWithNSString_(uint64_t a1)
{
  v2 = [OrgApacheLuceneIndexIndexNotFoundException alloc];
  JavaIoFileNotFoundException_initWithNSString_(v2, a1);
  return v2;
}

OrgApacheLuceneIndexMappedMultiFields *new_OrgApacheLuceneIndexMappedMultiFields_initWithOrgApacheLuceneIndexMergeState_withOrgApacheLuceneIndexMultiFields_(void *a1, void *a2)
{
  v4 = [OrgApacheLuceneIndexMappedMultiFields alloc];
  OrgApacheLuceneIndexFilterLeafReader_FilterFields_initWithOrgApacheLuceneIndexFields_(v4, a2);
  JreStrongAssign(&v4->mergeState_, a1);
  return v4;
}

id sub_1000C3180(uint64_t a1, void *a2, void *a3, void *a4)
{
  OrgApacheLuceneIndexFilterLeafReader_FilterTerms_initWithOrgApacheLuceneIndexTerms_(a1, a4);
  JreStrongAssign((a1 + 24), a2);

  return JreStrongAssign((a1 + 16), a3);
}

id sub_1000C33EC(uint64_t a1, void *a2, void *a3, void *a4)
{
  OrgApacheLuceneIndexFilterLeafReader_FilterTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_(a1, a4);
  JreStrongAssign((a1 + 32), a2);

  return JreStrongAssign((a1 + 24), a3);
}

id OrgApacheLuceneSearchSloppyPhraseScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchPhraseQuery_PostingsAndFreqArray_withInt_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_withBoolean_(uint64_t a1, void *a2, uint64_t a3, int a4, void *a5, char a6)
{
  OrgApacheLuceneSearchScorer_initWithOrgApacheLuceneSearchWeight_(a1, a2);
  JreStrongAssign((a1 + 48), a5);
  *(a1 + 16) = a6;
  *(a1 + 56) = a4;
  if (!a3)
  {
    *(a1 + 60) = 0;
    JreThrowNullPointerException();
  }

  *(a1 + 60) = *(a3 + 8);
  v11 = new_OrgApacheLuceneSearchPhraseQueue_initWithInt_(*(a3 + 8));
  JreStrongAssignAndConsume((a1 + 64), v11);
  v12 = [IOSObjectArray arrayWithLength:*(a3 + 8) type:OrgApacheLuceneSearchDocIdSetIterator_class_()];
  v13 = [IOSObjectArray newArrayWithLength:*(a3 + 8) type:OrgApacheLuceneSearchPhrasePositions_class_()];
  JreStrongAssignAndConsume((a1 + 32), v13);
  if (*(a3 + 8) >= 1)
  {
    v14 = 0;
    do
    {
      v15 = *(a3 + 24 + 8 * v14);
      if (!v15)
      {
        goto LABEL_14;
      }

      IOSObjectArray_Set(v12, v14, *(v15 + 8));
      v16 = *(a1 + 32);
      v17 = *(a3 + 8);
      if (v14 >= v17)
      {
        IOSArray_throwOutOfBoundsWithMsg(v17, v14);
      }

      v18 = *(a3 + 24 + 8 * v14);
      if (!v18)
      {
LABEL_14:
        JreThrowNullPointerException();
      }

      v19 = *(a3 + 8);
      if (v14 >= v19)
      {
        IOSArray_throwOutOfBoundsWithMsg(v19, v14);
      }

      v20 = *(a3 + 8);
      if (v14 >= v20)
      {
        IOSArray_throwOutOfBoundsWithMsg(v20, v14);
      }

      v21 = new_OrgApacheLuceneSearchPhrasePositions_initWithOrgApacheLuceneIndexPostingsEnum_withInt_withInt_withOrgApacheLuceneIndexTermArray_(*(v18 + 8), *(v18 + 16), v14, *(v18 + 24));
      IOSObjectArray_SetAndConsume(v16, v14++, v21);
    }

    while (v14 < *(a3 + 8));
  }

  v22 = JavaUtilArrays_asListWithNSObjectArray_(v12);
  v23 = OrgApacheLuceneSearchConjunctionDISI_intersectWithJavaUtilList_(v22);

  return JreStrongAssign((a1 + 24), v23);
}

float sub_1000C38E8(uint64_t a1)
{
  v2 = 0.0;
  if (sub_1000C3FE8(a1))
  {
    *(a1 + 96) = 0;
    v3 = *(a1 + 64);
    if (!v3)
    {
      goto LABEL_25;
    }

    v4 = [v3 pop];
    if (!v4)
    {
      goto LABEL_25;
    }

    v5 = v4;
    v6 = *(a1 + 72);
    v7 = v4[2];
    v8 = [*(a1 + 64) top];
    if (!v8)
    {
      goto LABEL_25;
    }

    v9 = (v6 - v7);
    v10 = v8[2];
    if ([v5 nextPosition])
    {
      do
      {
        v11 = v5[2];
        if (v11 > *(a1 + 72))
        {
          *(a1 + 72) = v11;
        }

        if (*(a1 + 76) == 1 && !sub_1000C3B68(a1, v5))
        {
          break;
        }

        v12 = v5[2];
        if (v12 <= v10)
        {
          v16 = *(a1 + 72) - v12;
          if (v16 >= v9)
          {
            v9 = v9;
          }

          else
          {
            v9 = v16;
          }
        }

        else
        {
          if (v9 <= *(a1 + 56))
          {
            v13 = *(a1 + 48);
            if (!v13)
            {
              goto LABEL_25;
            }

            [v13 computeSlopFactorWithInt:v9];
            v2 = v2 + v14;
            ++*(a1 + 96);
            if (*(a1 + 16) != 1)
            {
              return v2;
            }
          }

          [*(a1 + 64) addWithId:v5];
          v5 = [*(a1 + 64) pop];
          v15 = [*(a1 + 64) top];
          if (!v15 || !v5)
          {
            goto LABEL_25;
          }

          v10 = v15[2];
          v9 = (*(a1 + 72) - v5[2]);
        }
      }

      while (([v5 nextPosition] & 1) != 0);
    }

    if (v9 <= *(a1 + 56))
    {
      v17 = *(a1 + 48);
      if (v17)
      {
        [v17 computeSlopFactorWithInt:v9];
        v2 = v2 + v18;
        ++*(a1 + 96);
        return v2;
      }

LABEL_25:
      JreThrowNullPointerException();
    }
  }

  return v2;
}

uint64_t sub_1000C3B68(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    goto LABEL_43;
  }

  v2 = a2;
  v3 = a2[10];
  if ((v3 & 0x80000000) == 0)
  {
    v5 = *(a1 + 80);
    if (!v5)
    {
      goto LABEL_43;
    }

    v6 = *(v5 + 8);
    if (v3 >= v6)
    {
      IOSArray_throwOutOfBoundsWithMsg(v6, a2[10]);
    }

    v7 = *(v5 + 24 + 8 * v3);
    if (!v7)
    {
      goto LABEL_43;
    }

    v8 = new_OrgApacheLuceneUtilFixedBitSet_initWithInt_(*(v7 + 8));
    v9 = v2[11];
    v10 = sub_1000C3EB4(a1, v2);
    if ((v10 & 0x80000000) == 0)
    {
      while (1)
      {
        v11 = v10;
        if (v10 >= *(v7 + 8))
        {
          IOSArray_throwOutOfBoundsWithMsg(*(v7 + 8), v10);
        }

        v12 = *(v7 + 24 + 8 * v10);
        if (!v12)
        {
          break;
        }

        v13 = v2[2];
        v14 = *(v12 + 8);
        if (v13 >= v14 && (v13 != v14 || v2[4] >= *(v12 + 16)))
        {
          v2 = *(v7 + 24 + 8 * v10);
        }

        result = [v2 nextPosition];
        if (!result)
        {
          return result;
        }

        v16 = v2[2];
        if (v16 > *(a1 + 72))
        {
          *(a1 + 72) = v16;
        }

        if (v11 != v9)
        {
          v17 = OrgApacheLuceneUtilFixedBitSet_ensureCapacityWithOrgApacheLuceneUtilFixedBitSet_withInt_(v8, v11);
          if (!v17)
          {
            break;
          }

          v8 = v17;
          [(OrgApacheLuceneUtilFixedBitSet *)v17 setWithInt:v11];
        }

        v10 = sub_1000C3EB4(a1, v2);
        if ((v10 & 0x80000000) != 0)
        {
          goto LABEL_22;
        }
      }

LABEL_43:
      JreThrowNullPointerException();
    }

LABEL_22:
    if (!v8)
    {
      goto LABEL_43;
    }

    v18 = [(OrgApacheLuceneUtilFixedBitSet *)v8 length];
    if ([(OrgApacheLuceneUtilFixedBitSet *)v8 cardinality]>= 1)
    {
      LODWORD(v19) = -1;
      do
      {
        v20 = *(a1 + 64);
        if (!v20)
        {
          goto LABEL_43;
        }

        v21 = [v20 pop];
        v22 = *(a1 + 88);
        if (!v22)
        {
          goto LABEL_43;
        }

        IOSObjectArray_Set(v22, v19 + 1, v21);
        if (!v21)
        {
          goto LABEL_43;
        }

        if ((v21[10] & 0x80000000) == 0 && v21[11] < v18 && [(OrgApacheLuceneUtilFixedBitSet *)v8 getWithInt:?])
        {
          [(OrgApacheLuceneUtilFixedBitSet *)v8 clearWithInt:v21[11]];
        }

        v19 = (v19 + 1);
      }

      while ([(OrgApacheLuceneUtilFixedBitSet *)v8 cardinality]> 0);
      if ((v19 & 0x80000000) == 0)
      {
        while (1)
        {
          v23 = *(a1 + 64);
          if (!v23)
          {
            break;
          }

          v24 = *(a1 + 88);
          if (!v24)
          {
            break;
          }

          v25 = *(v24 + 8);
          if (v19 >= v25)
          {
            IOSArray_throwOutOfBoundsWithMsg(v25, v19);
          }

          [v23 addWithId:*(v24 + 24 + 8 * v19)];
          if (v19-- <= 0)
          {
            return 1;
          }
        }

        goto LABEL_43;
      }
    }
  }

  return 1;
}

uint64_t sub_1000C3EB4(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    goto LABEL_14;
  }

  v2 = *(a1 + 80);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = a2[10];
  v4 = *(v2 + 8);
  if (v3 < 0 || v3 >= v4)
  {
    IOSArray_throwOutOfBoundsWithMsg(v4, v3);
  }

  v5 = *(v2 + 24 + 8 * v3);
  if (!v5)
  {
LABEL_14:
    JreThrowNullPointerException();
  }

  v6 = *(v5 + 8);
  if (v6 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6 & ~(v6 >> 31);
  for (i = (v5 + 24); ; ++i)
  {
    v9 = *i;
    if (*i != a2)
    {
      if (!v9)
      {
        goto LABEL_14;
      }

      if (v9[4] + v9[2] == a2[4] + a2[2])
      {
        break;
      }
    }

    if (!--v7)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v9[11];
}

uint64_t sub_1000C3FE8(uint64_t a1)
{
  *(a1 + 72) = 0x80000000;
  if (*(a1 + 77))
  {
    if (*(a1 + 76))
    {

      return sub_1000C4138(a1);
    }

    else
    {
      sub_1000C4058(a1);
      return 1;
    }
  }

  else
  {

    return sub_1000C4528(a1);
  }
}

id sub_1000C4058(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    goto LABEL_9;
  }

  result = [v2 clear];
  v4 = *(a1 + 32);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = (v4 + 24);
  v6 = v4 + 24 + 8 * *(v4 + 8);
  if (v4 + 24 < v6)
  {
    while (1)
    {
      v8 = *v5++;
      v7 = v8;
      if (!v8)
      {
        break;
      }

      [v7 firstPosition];
      v9 = v7[2];
      if (v9 > *(a1 + 72))
      {
        *(a1 + 72) = v9;
      }

      result = [*(a1 + 64) addWithId:v7];
      if (v5 >= v6)
      {
        return result;
      }
    }

LABEL_9:
    JreThrowNullPointerException();
  }

  return result;
}

uint64_t sub_1000C4138(void *a1)
{
  sub_1000C417C(a1);
  v2 = sub_1000C42BC(a1);
  if (v2)
  {
    sub_1000C41F0(a1);
  }

  return v2;
}

void *sub_1000C417C(void *result)
{
  v1 = result[4];
  if (!v1)
  {
LABEL_7:
    JreThrowNullPointerException();
  }

  v2 = (v1 + 24);
  v3 = v1 + 24 + 8 * *(v1 + 8);
  while (v2 < v3)
  {
    v4 = *v2;
    if (!*v2)
    {
      goto LABEL_7;
    }

    ++v2;
    result = [v4 firstPosition];
  }

  return result;
}

id sub_1000C41F0(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    goto LABEL_9;
  }

  result = [v2 clear];
  v4 = *(a1 + 32);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = (v4 + 24);
  v6 = v4 + 24 + 8 * *(v4 + 8);
  if (v4 + 24 < v6)
  {
    while (1)
    {
      v8 = *v5++;
      v7 = v8;
      if (!v8)
      {
        break;
      }

      v9 = *(v7 + 8);
      if (v9 > *(a1 + 72))
      {
        *(a1 + 72) = v9;
      }

      result = [*(a1 + 64) addWithId:?];
      if (v5 >= v6)
      {
        return result;
      }
    }

LABEL_9:
    JreThrowNullPointerException();
  }

  return result;
}

uint64_t sub_1000C42BC(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    goto LABEL_44;
  }

  v2 = (v1 + 24);
  v3 = v1 + 24 + 8 * *(v1 + 8);
  if (v1 + 24 >= v3)
  {
    return 1;
  }

  v5 = &OBJC_IVAR___OrgApacheLuceneCodecsDocValuesConsumer__6__1_docIDUpto_;
  v26 = v3;
  while (1)
  {
    v7 = *v2++;
    v6 = v7;
    if ((*(a1 + v5[872]) & 1) == 0)
    {
      break;
    }

    if (!v6)
    {
      goto LABEL_44;
    }

    v8 = *(v6 + 8);
    if (v8 >= 1)
    {
      v9 = 0;
      do
      {
        v10 = v9;
        if (v9 < 0)
        {
          IOSArray_throwOutOfBoundsWithMsg(v8, v9);
        }

        v11 = *(v6 + 24 + 8 * v9);
        while (1)
        {
          v12 = sub_1000C3EB4(a1, v11);
          if ((v12 & 0x80000000) != 0)
          {
            break;
          }

          v13 = v12;
          v14 = *(v6 + 8);
          if (v13 >= v14)
          {
            IOSArray_throwOutOfBoundsWithMsg(v14, v13);
          }

          if (!v11)
          {
            goto LABEL_44;
          }

          v15 = *(v6 + 24 + 8 * v13);
          if (!v15)
          {
            goto LABEL_44;
          }

          v16 = v11[2];
          v17 = v15[2];
          v18 = v11;
          if (v16 >= v17)
          {
            if (v16 != v17 || (v18 = v11, v11[4] >= v15[4]))
            {
              v18 = v15;
            }
          }

          result = [v18 nextPosition];
          if (!result)
          {
            return result;
          }

          v20 = v18[2];
          if (v20 > *(a1 + 72))
          {
            *(a1 + 72) = v20;
          }

          if (v18[11] < v10)
          {
            v21 = 0;
            goto LABEL_25;
          }
        }

        v21 = 1;
LABEL_25:
        v9 = v21 + v10;
        v8 = *(v6 + 8);
      }

      while (v9 < v8);
    }

LABEL_39:
    result = 1;
    v5 = &OBJC_IVAR___OrgApacheLuceneCodecsDocValuesConsumer__6__1_docIDUpto_;
    if (v2 >= v26)
    {
      return result;
    }
  }

  if (!v6)
  {
LABEL_44:
    JreThrowNullPointerException();
  }

  if (*(v6 + 8) < 2)
  {
    goto LABEL_39;
  }

  v22 = 1;
LABEL_31:
  v23 = v22;
  while (1)
  {
    v24 = *(v6 + 8);
    if (v22 >= v24)
    {
      IOSArray_throwOutOfBoundsWithMsg(v24, v22);
    }

    v25 = *(v6 + 8 * v22 + 24);
    if (!v25)
    {
      goto LABEL_44;
    }

    if (([v25 nextPosition] & 1) == 0)
    {
      return 0;
    }

    if (!--v23)
    {
      if (++v22 >= *(v6 + 8))
      {
        goto LABEL_39;
      }

      goto LABEL_31;
    }
  }
}

uint64_t sub_1000C4528(uint64_t a1)
{
  *(a1 + 77) = 1;
  sub_1000C417C(a1);
  v2 = sub_1000C4C84(a1);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  v3 = v2;
  *(a1 + 76) = ![(JavaUtilHashMap *)v2 isEmpty];
  if (*(a1 + 76) != 1 || (v4 = [IOSObjectArray newArrayWithLength:*(a1 + 60) type:OrgApacheLuceneSearchPhrasePositions_class_()], JreStrongAssignAndConsume((a1 + 88), v4), v5 = sub_1000C47B0(a1, v3), sub_1000C4618(a1, v5), result = sub_1000C42BC(a1), result))
  {
    sub_1000C41F0(a1);
    return 1;
  }

  return result;
}

OrgApacheLuceneSearchSloppyPhraseScorer_$1 *sub_1000C4618(uint64_t a1, void *a2)
{
  if (!a2)
  {
    goto LABEL_12;
  }

  v4 = [a2 size];
  v5 = OrgApacheLuceneSearchPhrasePositions_class_();
  v6 = [IOSObjectArray newArrayWithLength:v4 type:IOSClass_arrayType(v5, 1u)];
  JreStrongAssignAndConsume((a1 + 80), v6);
  result = [OrgApacheLuceneSearchSloppyPhraseScorer__1 alloc];
  if (*(*(a1 + 80) + 8) >= 1)
  {
    v8 = result;
    v9 = 0;
    while (1)
    {
      v10 = [a2 getWithInt:v9];
      if (!v10)
      {
        goto LABEL_12;
      }

      v11 = [v10 toArrayWithNSObjectArray:{+[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", 0, OrgApacheLuceneSearchPhrasePositions_class_())}];
      JavaUtilArrays_sortWithNSObjectArray_withJavaUtilComparator_(v11, v8);
      result = IOSObjectArray_Set(*(a1 + 80), v9, v11);
      if (!v11)
      {
        goto LABEL_12;
      }

      if (v11[2] >= 1)
      {
        break;
      }

LABEL_10:
      if (++v9 >= *(*(a1 + 80) + 8))
      {
        return result;
      }
    }

    v12 = 0;
    while (1)
    {
      v13 = *&v11[2 * v12 + 6];
      if (!v13)
      {
        break;
      }

      *(v13 + 44) = v12++;
      if (v12 >= v11[2])
      {
        goto LABEL_10;
      }
    }

LABEL_12:
    JreThrowNullPointerException();
  }

  return result;
}

JavaUtilArrayList *sub_1000C47B0(uint64_t a1, void *a2)
{
  v4 = sub_1000C4DE0(a1, a2);
  v5 = new_JavaUtilArrayList_init();
  if (*(a1 + 78))
  {
    v6 = new_JavaUtilArrayList_init();
    v7 = sub_1000C4F48(v4, a2);
    sub_1000C5068(v7);
    v8 = sub_1000C5178(a2, v7);
    if (!v8)
    {
      goto LABEL_48;
    }

    v9 = v8;
    v10 = new_JavaUtilHashSet_initWithJavaUtilCollection_([(JavaUtilHashMap *)v8 values]);
    if ([(JavaUtilHashSet *)v10 size]>= 1)
    {
      v11 = 0;
      do
      {
        [(JavaUtilArrayList *)v6 addWithId:new_JavaUtilHashSet_init()];
        ++v11;
      }

      while (v11 < [(JavaUtilHashSet *)v10 size]);
    }

    if (!v4)
    {
      goto LABEL_48;
    }

    v12 = v4 + 3;
    v43 = &v4[*(v4 + 2) + 3];
    if ((v4 + 3) < v43)
    {
      while (1)
      {
        v14 = *v12++;
        v13 = v14;
        if (!v14)
        {
          goto LABEL_48;
        }

        v15 = *(v13 + 48);
        if (!v15)
        {
          goto LABEL_48;
        }

        v16 = (v15 + 24);
        v17 = v15 + 24 + 8 * *(v15 + 8);
        if (v15 + 24 < v17)
        {
          break;
        }

LABEL_17:
        if (v12 >= v43)
        {
          goto LABEL_18;
        }
      }

      if (a2)
      {
        while (1)
        {
          v19 = *v16++;
          v18 = v19;
          if ([a2 containsKeyWithId:v19])
          {
            v20 = [(JavaUtilHashMap *)v9 getWithId:v18];
            if (!v20)
            {
              goto LABEL_48;
            }

            v21 = [v20 intValue];
            v22 = [(JavaUtilArrayList *)v6 getWithInt:v21];
            if (!v22)
            {
              goto LABEL_48;
            }

            [v22 addWithId:v13];
            *(v13 + 40) = v21;
          }

          if (v16 >= v17)
          {
            goto LABEL_17;
          }
        }
      }

      goto LABEL_48;
    }

LABEL_18:
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v23 = [(JavaUtilArrayList *)v6 countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v46;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v46 != v25)
          {
            objc_enumerationMutation(v6);
          }

          [(JavaUtilArrayList *)v5 addWithId:new_JavaUtilArrayList_initWithJavaUtilCollection_(*(*(&v45 + 1) + 8 * i))];
        }

        v24 = [(JavaUtilArrayList *)v6 countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v24);
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_48;
    }

    if (*(v4 + 2) >= 1)
    {
      v27 = 0;
      v28 = 1;
      v29 = 1;
      while (1)
      {
        v30 = v4[v27 + 3];
        if (!v30)
        {
          break;
        }

        if ((v30[10] & 0x80000000) != 0)
        {
          v31 = v27 + 1;
          v32 = *(v4 + 2);
          if (v27 + 1 < v32)
          {
            v42 = v27 + 1;
            v33 = &v4[v29];
            v34 = v30[4] + v30[2];
            v44 = v34;
            do
            {
              v35 = v27;
              v27 = v28;
              if (v35 <= -2)
              {
                IOSArray_throwOutOfBoundsWithMsg(v32, v28);
              }

              v36 = *(v33 + 3);
              if (!v36)
              {
                goto LABEL_48;
              }

              if ((v36[10] & 0x80000000) != 0)
              {
                v37 = v36[4];
                if (v37 != v30[4] && v36[2] + v37 == v34)
                {
                  v38 = v30[10];
                  if ((v38 & 0x80000000) != 0)
                  {
                    v38 = [(JavaUtilArrayList *)v5 size];
                    v30[10] = v38;
                    v39 = new_JavaUtilArrayList_initWithInt_(2);
                    [(JavaUtilArrayList *)v39 addWithId:v30];
                    [(JavaUtilArrayList *)v5 addWithId:v39];
                  }

                  v36[10] = v38;
                  v40 = [(JavaUtilArrayList *)v5 getWithInt:v38];
                  if (!v40)
                  {
                    goto LABEL_48;
                  }

                  [v40 addWithId:v36];
                  v34 = v44;
                }
              }

              ++v28;
              v32 = *(v4 + 2);
              v33 += 8;
            }

            while (v28 < v32);
            v31 = v42;
          }
        }

        else
        {
          v31 = v27 + 1;
        }

        v28 = ++v29;
        v27 = v31;
        if (v31 >= *(v4 + 2))
        {
          return v5;
        }
      }

LABEL_48:
      JreThrowNullPointerException();
    }
  }

  return v5;
}

JavaUtilLinkedHashMap *sub_1000C4C84(uint64_t a1)
{
  v2 = new_JavaUtilLinkedHashMap_init();
  v3 = new_JavaUtilHashMap_init();
  v4 = *(a1 + 32);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = (v4 + 24);
  v6 = v4 + 24 + 8 * *(v4 + 8);
  if (v4 + 24 < v6)
  {
    v7 = v3;
    while (1)
    {
      v9 = *v5++;
      v8 = v9;
      if (!v9)
      {
        break;
      }

      v10 = *(v8 + 48);
      if (!v10)
      {
        break;
      }

      v11 = (v10 + 24);
      v12 = v10 + 24 + 8 * *(v10 + 8);
      while (v11 < v12)
      {
        v14 = *v11++;
        v13 = v14;
        v15 = [(JavaUtilHashMap *)v7 getWithId:v14];
        if (v15)
        {
          v16 = [v15 intValue] + 1;
        }

        else
        {
          v16 = 1;
        }

        v17 = new_JavaLangInteger_initWithInt_(v16);
        [(JavaUtilHashMap *)v7 putWithId:v13 withId:v17];
        if ([(JavaLangInteger *)v17 intValue]== 2)
        {
          [(JavaUtilHashMap *)v2 putWithId:v13 withId:JavaLangInteger_valueOfWithInt_([(JavaUtilHashMap *)v2 size])];
        }
      }

      if (v5 >= v6)
      {
        return v2;
      }
    }

LABEL_15:
    JreThrowNullPointerException();
  }

  return v2;
}

id sub_1000C4DE0(uint64_t a1, void *a2)
{
  v16 = new_JavaUtilArrayList_init();
  v4 = *(a1 + 32);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = (v4 + 24);
  v6 = v4 + 24 + 8 * *(v4 + 8);
  if (v4 + 24 < v6)
  {
    while (1)
    {
      v8 = *v5++;
      v7 = v8;
      if (!v8)
      {
        break;
      }

      v9 = *(v7 + 48);
      if (!v9)
      {
        break;
      }

      v10 = (v9 + 24);
      v11 = v9 + 24 + 8 * *(v9 + 8);
      do
      {
        if (v10 >= v11)
        {
          goto LABEL_11;
        }

        if (!a2)
        {
          goto LABEL_15;
        }

        v12 = *v10++;
      }

      while (![a2 containsKeyWithId:v12]);
      [(JavaUtilArrayList *)v16 addWithId:v7];
      v13 = *(v7 + 48);
      if (!v13)
      {
        break;
      }

      *(a1 + 78) |= *(v13 + 8) > 1;
LABEL_11:
      if (v5 >= v6)
      {
        goto LABEL_12;
      }
    }

LABEL_15:
    JreThrowNullPointerException();
  }

LABEL_12:
  v14 = [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchPhrasePositions_class_()];

  return [(JavaUtilArrayList *)v16 toArrayWithNSObjectArray:v14];
}

JavaUtilArrayList *sub_1000C4F48(uint64_t a1, void *a2)
{
  if (!a1)
  {
    goto LABEL_12;
  }

  v4 = new_JavaUtilArrayList_initWithInt_(*(a1 + 8));
  v5 = (a1 + 24);
  v6 = a1 + 24 + 8 * *(a1 + 8);
  if (a1 + 24 < v6)
  {
    if (a2)
    {
      while (1)
      {
        v8 = *v5++;
        v7 = v8;
        v9 = new_OrgApacheLuceneUtilFixedBitSet_initWithInt_([a2 size]);
        if (!v8)
        {
          break;
        }

        v10 = *(v7 + 48);
        if (!v10)
        {
          break;
        }

        v11 = v9;
        v12 = (v10 + 24);
        v13 = v10 + 24 + 8 * *(v10 + 8);
        while (v12 < v13)
        {
          v14 = *v12++;
          v15 = [a2 getWithId:v14];
          if (v15)
          {
            -[OrgApacheLuceneUtilFixedBitSet setWithInt:](v11, "setWithInt:", [v15 intValue]);
          }
        }

        [(JavaUtilArrayList *)v4 addWithId:v11];
        if (v5 >= v6)
        {
          return v4;
        }
      }
    }

LABEL_12:
    JreThrowNullPointerException();
  }

  return v4;
}

id sub_1000C5068(void *a1)
{
  if (!a1)
  {
LABEL_15:
    JreThrowNullPointerException();
  }

  result = [a1 size];
  if (result - 1 >= 1)
  {
    v3 = 0;
    do
    {
      v4 = (v3 + 1);
      if (v4 < [a1 size])
      {
        v5 = 1;
        do
        {
          v6 = [a1 getWithInt:v3];
          if (!v6)
          {
            goto LABEL_15;
          }

          if ([v6 intersectsWithOrgApacheLuceneUtilFixedBitSet:{objc_msgSend(a1, "getWithInt:", v4)}])
          {
            v7 = [a1 getWithInt:v3];
            if (!v7)
            {
              goto LABEL_15;
            }

            [v7 or__WithOrgApacheLuceneUtilFixedBitSet:{objc_msgSend(a1, "getWithInt:", v4)}];
            [a1 removeWithInt:v4];
            v5 = 0;
          }

          else
          {
            v4 = (v4 + 1);
          }
        }

        while (v4 < [a1 size]);
        v4 = (v5 + v3);
      }

      result = [a1 size];
      v3 = v4;
    }

    while (v4 < result - 1);
  }

  return result;
}

JavaUtilHashMap *sub_1000C5178(void *a1, void *a2)
{
  v4 = new_JavaUtilHashMap_init();
  if (!a1)
  {
    goto LABEL_18;
  }

  v5 = v4;
  v6 = [a1 keySet];
  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = [v6 toArrayWithNSObjectArray:{+[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", 0, OrgApacheLuceneIndexTerm_class_())}];
  if (!a2)
  {
    goto LABEL_18;
  }

  v8 = v7;
  if ([a2 size] >= 1)
  {
    v9 = 0;
    while (1)
    {
      v10 = [a2 getWithInt:v9];
      if (!v10)
      {
        break;
      }

      v11 = v10;
      v12 = [v10 nextSetBitWithInt:0];
      if (v12 != 0x7FFFFFFF)
      {
        if (!v8)
        {
          break;
        }

        do
        {
          v13 = v12;
          if (v12 < 0 || v12 >= v8[2])
          {
            IOSArray_throwOutOfBoundsWithMsg(v8[2], v12);
          }

          [(JavaUtilHashMap *)v5 putWithId:*&v8[2 * v12 + 6] withId:JavaLangInteger_valueOfWithInt_(v9)];
          v14 = (v13 + 1);
          if (v14 >= [v11 length])
          {
            break;
          }

          v12 = [v11 nextSetBitWithInt:v14];
        }

        while (v12 != 0x7FFFFFFF);
      }

      v9 = (v9 + 1);
      if (v9 >= [a2 size])
      {
        return v5;
      }
    }

LABEL_18:
    JreThrowNullPointerException();
  }

  return v5;
}

OrgApacheLuceneSearchSloppyPhraseScorer *new_OrgApacheLuceneSearchSloppyPhraseScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchPhraseQuery_PostingsAndFreqArray_withInt_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_withBoolean_(void *a1, uint64_t a2, int a3, void *a4, char a5)
{
  v10 = [OrgApacheLuceneSearchSloppyPhraseScorer alloc];
  OrgApacheLuceneSearchSloppyPhraseScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchPhraseQuery_PostingsAndFreqArray_withInt_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_withBoolean_(v10, a1, a2, a3, a4, a5);
  return v10;
}

id OrgApacheLuceneIndexSegmentReader_initWithOrgApacheLuceneIndexSegmentCommitInfo_withOrgApacheLuceneStoreIOContext_(uint64_t a1, id *a2, void *a3)
{
  OrgApacheLuceneIndexCodecReader_init(a1);
  JreStrongAssign((a1 + 104), a2);
  if (!a2 || (v6 = a2[1]) == 0)
  {
    JreThrowNullPointerException();
  }

  v7 = new_OrgApacheLuceneIndexSegmentCoreReaders_initWithOrgApacheLuceneIndexSegmentReader_withOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentCommitInfo_withOrgApacheLuceneStoreIOContext_(a1, v6[2], a2, a3);
  JreStrongAssignAndConsume((a1 + 72), v7);
  v8 = new_OrgApacheLuceneIndexSegmentDocValues_init();
  JreStrongAssignAndConsume((a1 + 80), v8);
  v9 = [a2[1] getCodec];
  if ([a2 hasDeletions])
  {
    if (!v9 || (v10 = [v9 liveDocsFormat]) == 0)
    {
      JreThrowNullPointerException();
    }

    v11 = [a1 directory];
    if ((atomic_load_explicit(OrgApacheLuceneStoreIOContext__initialized, memory_order_acquire) & 1) == 0)
    {
      objc_opt_class();
    }

    v12 = [v10 readLiveDocsWithOrgApacheLuceneStoreDirectory:v11 withOrgApacheLuceneIndexSegmentCommitInfo:a2 withOrgApacheLuceneStoreIOContext:OrgApacheLuceneStoreIOContext_READONCE_];
  }

  else
  {
    v12 = 0;
  }

  JreStrongAssign((a1 + 112), v12);
  v13 = [a2[1] maxDoc];
  *(a1 + 120) = v13 - [a2 getDelCount];
  v14 = sub_1000C5EF8(a1);
  JreStrongAssign((a1 + 96), v14);
  v15 = sub_1000C5D88(a1);
  return JreStrongAssign((a1 + 88), v15);
}

void sub_1000C5A1C(void *a1)
{
  objc_begin_catch(a1);
  [v1 doClose];
  objc_exception_rethrow();
}

id OrgApacheLuceneIndexSegmentReader_initWithOrgApacheLuceneIndexSegmentCommitInfo_withOrgApacheLuceneIndexSegmentReader_(uint64_t a1, id *a2, uint64_t a3)
{
  if (!a2 || (v5 = a2[1]) == 0 || (v7 = [v5 getCodec]) == 0 || (v8 = objc_msgSend(v7, "liveDocsFormat")) == 0)
  {
    JreThrowNullPointerException();
  }

  v9 = v8;
  v10 = *(a2[1] + 2);
  if ((atomic_load_explicit(OrgApacheLuceneStoreIOContext__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100019888();
  }

  v11 = [v9 readLiveDocsWithOrgApacheLuceneStoreDirectory:v10 withOrgApacheLuceneIndexSegmentCommitInfo:a2 withOrgApacheLuceneStoreIOContext:OrgApacheLuceneStoreIOContext_READONCE_];
  v12 = [a2[1] maxDoc];
  v13 = v12 - [a2 getDelCount];

  return OrgApacheLuceneIndexSegmentReader_initWithOrgApacheLuceneIndexSegmentCommitInfo_withOrgApacheLuceneIndexSegmentReader_withOrgApacheLuceneUtilBits_withInt_(a1, a2, a3, v11, v13);
}

id OrgApacheLuceneIndexSegmentReader_initWithOrgApacheLuceneIndexSegmentCommitInfo_withOrgApacheLuceneIndexSegmentReader_withOrgApacheLuceneUtilBits_withInt_(uint64_t a1, id *a2, uint64_t a3, void *a4, int a5)
{
  OrgApacheLuceneIndexCodecReader_init(a1);
  if (!a2 || (v10 = a2[1]) == 0)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  if ([v10 maxDoc] < a5)
  {
    [a2[1] maxDoc];
    v23 = @"numDocs=";
    goto LABEL_12;
  }

  if (a4)
  {
    v11 = [a4 length];
    if (v11 != [a2[1] maxDoc])
    {
      [a2[1] maxDoc];
      [a4 length];
      v23 = @"maxDoc=";
LABEL_12:
      v24 = JreStrcat("$I$I", v16, v17, v18, v19, v20, v21, v22, v23);
      v25 = new_JavaLangIllegalArgumentException_initWithNSString_(v24);
      objc_exception_throw(v25);
    }
  }

  JreStrongAssign((a1 + 104), a2);
  JreStrongAssign((a1 + 112), a4);
  *(a1 + 120) = a5;
  if (!a3)
  {
    goto LABEL_9;
  }

  JreStrongAssign((a1 + 72), *(a3 + 72));
  v12 = *(a1 + 72);
  if (!v12)
  {
    goto LABEL_9;
  }

  [v12 incRef];
  JreStrongAssign((a1 + 80), *(a3 + 80));
  v13 = sub_1000C5EF8(a1);
  JreStrongAssign((a1 + 96), v13);
  v14 = sub_1000C5D88(a1);
  return JreStrongAssign((a1 + 88), v14);
}

void sub_1000C5D5C(void *a1)
{
  objc_begin_catch(a1);
  [v1 doClose];
  objc_exception_rethrow();
}

OrgApacheLuceneIndexSegmentDocValuesProducer *sub_1000C5D88(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (!v1)
  {
    goto LABEL_18;
  }

  v3 = *(v1 + 40);
  if (!v3)
  {
    v4 = *(a1 + 104);
    if (!v4)
    {
      goto LABEL_18;
    }

    v5 = *(v4 + 8);
    if (!v5)
    {
      goto LABEL_18;
    }

    v3 = *(v5 + 16);
  }

  v6 = *(a1 + 96);
  if (!v6)
  {
    goto LABEL_18;
  }

  if (![v6 hasDocValues])
  {
    return 0;
  }

  v7 = *(a1 + 104);
  if (!v7)
  {
    goto LABEL_18;
  }

  if ([v7 hasFieldUpdates])
  {
    v8 = new_OrgApacheLuceneIndexSegmentDocValuesProducer_initWithOrgApacheLuceneIndexSegmentCommitInfo_withOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexFieldInfos_withOrgApacheLuceneIndexFieldInfos_withOrgApacheLuceneIndexSegmentDocValues_(*(a1 + 104), v3, *(*(a1 + 72) + 48), *(a1 + 96), *(a1 + 80));

    return v8;
  }

  v10 = *(a1 + 80);
  if (!v10)
  {
LABEL_18:
    JreThrowNullPointerException();
  }

  v11 = *(a1 + 104);
  v12 = *(a1 + 96);

  return [v10 getDocValuesProducerWithLong:-1 withOrgApacheLuceneIndexSegmentCommitInfo:v11 withOrgApacheLuceneStoreDirectory:v3 withOrgApacheLuceneIndexFieldInfos:v12];
}

id sub_1000C5EF8(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (!v2)
  {
    goto LABEL_13;
  }

  if (([v2 hasFieldUpdates] & 1) == 0)
  {
    v12 = *(a1 + 72);
    if (v12)
    {
      return *(v12 + 48);
    }

LABEL_13:
    JreThrowNullPointerException();
  }

  v3 = *(*(a1 + 104) + 8);
  if (!v3)
  {
    goto LABEL_13;
  }

  v4 = [v3 getCodec];
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = [v4 fieldInfosFormat];
  v6 = JavaLangLong_toStringWithLong_withInt_([*(a1 + 104) getFieldInfosGen], 36);
  if (!v5)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = *(*(a1 + 104) + 8);
  v9 = *(v8 + 16);
  if ((atomic_load_explicit(OrgApacheLuceneStoreIOContext__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100019888();
  }

  v10 = OrgApacheLuceneStoreIOContext_READONCE_;

  return [v5 readWithOrgApacheLuceneStoreDirectory:v9 withOrgApacheLuceneIndexSegmentInfo:v8 withNSString:v7 withOrgApacheLuceneStoreIOContext:v10];
}

OrgApacheLuceneIndexSegmentReader *new_OrgApacheLuceneIndexSegmentReader_initWithOrgApacheLuceneIndexSegmentCommitInfo_withOrgApacheLuceneStoreIOContext_(id *a1, void *a2)
{
  v4 = [OrgApacheLuceneIndexSegmentReader alloc];
  OrgApacheLuceneIndexSegmentReader_initWithOrgApacheLuceneIndexSegmentCommitInfo_withOrgApacheLuceneStoreIOContext_(v4, a1, a2);
  return v4;
}

OrgApacheLuceneIndexSegmentReader *new_OrgApacheLuceneIndexSegmentReader_initWithOrgApacheLuceneIndexSegmentCommitInfo_withOrgApacheLuceneIndexSegmentReader_(id *a1, uint64_t a2)
{
  v4 = [OrgApacheLuceneIndexSegmentReader alloc];
  OrgApacheLuceneIndexSegmentReader_initWithOrgApacheLuceneIndexSegmentCommitInfo_withOrgApacheLuceneIndexSegmentReader_(v4, a1, a2);
  return v4;
}

OrgApacheLuceneIndexSegmentReader *new_OrgApacheLuceneIndexSegmentReader_initWithOrgApacheLuceneIndexSegmentCommitInfo_withOrgApacheLuceneIndexSegmentReader_withOrgApacheLuceneUtilBits_withInt_(id *a1, uint64_t a2, void *a3, int a4)
{
  v8 = [OrgApacheLuceneIndexSegmentReader alloc];
  OrgApacheLuceneIndexSegmentReader_initWithOrgApacheLuceneIndexSegmentCommitInfo_withOrgApacheLuceneIndexSegmentReader_withOrgApacheLuceneUtilBits_withInt_(v8, a1, a2, a3, a4);
  return v8;
}

uint64_t OrgApacheLuceneIndexSegmentReader_class_()
{
  if (qword_100554460 != -1)
  {
    sub_1000C67CC();
  }

  return qword_100554458;
}

void *OrgApacheLuceneIndexMultiPostingsEnum_initWithOrgApacheLuceneIndexMultiTermsEnum_withInt_(uint64_t a1, void *a2, int a3)
{
  OrgApacheLuceneIndexPostingsEnum_init(a1, a2);
  *(a1 + 44) = -1;
  JreStrongAssign((a1 + 48), a2);
  v6 = [IOSObjectArray newArrayWithLength:a3 type:OrgApacheLuceneIndexPostingsEnum_class_()];
  JreStrongAssignAndConsume((a1 + 16), v6);
  if (qword_100554470 != -1)
  {
    sub_1000C7228();
  }

  result = JreStrongAssignAndConsume((a1 + 56), [IOSObjectArray newArrayWithLength:a3 type:qword_100554468]);
  v8 = *(a1 + 56);
  if (*(v8 + 8) >= 1)
  {
    v9 = 0;
    do
    {
      result = IOSObjectArray_SetAndConsume(v8, v9++, [OrgApacheLuceneIndexMultiPostingsEnum_EnumWithSlice alloc]);
      v8 = *(a1 + 56);
    }

    while (v9 < *(v8 + 8));
  }

  return result;
}

OrgApacheLuceneIndexMultiPostingsEnum *new_OrgApacheLuceneIndexMultiPostingsEnum_initWithOrgApacheLuceneIndexMultiTermsEnum_withInt_(void *a1, int a2)
{
  v4 = [OrgApacheLuceneIndexMultiPostingsEnum alloc];
  OrgApacheLuceneIndexMultiPostingsEnum_initWithOrgApacheLuceneIndexMultiTermsEnum_withInt_(v4, a1, a2);
  return v4;
}

uint64_t OrgApacheLuceneIndexMultiPostingsEnum_EnumWithSlice_class_()
{
  if (qword_100554470 != -1)
  {
    sub_1000C7228();
  }

  return qword_100554468;
}

id OrgApacheLuceneUtilAttributeFactory_findAttributeImplCtorWithIOSClass_(uint64_t a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilAttributeFactory__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100049134();
  }

  if (!qword_100554478 || (v2 = [qword_100554478 findConstructorWithIOSClass:a1 withOrgLukhnosPortmobileInvokeMethodType:qword_100554480]) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v2 asTypeWithOrgLukhnosPortmobileInvokeMethodType:qword_100554488];
}

OrgApacheLuceneUtilAttributeFactory_$1 *OrgApacheLuceneUtilAttributeFactory_getStaticImplementationWithOrgApacheLuceneUtilAttributeFactory_withIOSClass_(void *a1, void *a2)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilAttributeFactory__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100049134();
  }

  AttributeImplCtorWithIOSClass = OrgApacheLuceneUtilAttributeFactory_findAttributeImplCtorWithIOSClass_(a2);
  v5 = [OrgApacheLuceneUtilAttributeFactory__1 alloc];
  JreStrongAssign(&v5->val$constr_, AttributeImplCtorWithIOSClass);
  JreStrongAssign(&v5->super.delegate_, a1);
  JreStrongAssign(&v5->super.clazz_, a2);

  return v5;
}

void OrgApacheLuceneUtilAttributeFactory_rethrowWithJavaLangThrowable_(uint64_t a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilAttributeFactory__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if ((atomic_load_explicit(OrgApacheLuceneUtilAttributeFactory__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  objc_opt_class();
  v2 = sub_1000B60C8(a1);
  objc_exception_throw(v2);
}

void *sub_1000C75EC(id *a1)
{
  v2 = [OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory__1 alloc];
  JreStrongAssign(&v2->this$0_, a1);
  OrgLukhnosPortmobileLangClassValue_init(v2);

  return JreStrongAssignAndConsume(a1 + 1, v2);
}

id sub_1000C7704(void *a1)
{
  if (!a1 || (v2 = [a1 getName], v10 = JreStrcat("$$", v3, v4, v5, v6, v7, v8, v9, v2), (v11 = IOSClass_forName_initialize_classLoader_(v10, 1, objc_msgSend(a1, "getClassLoader"))) == 0))
  {
    JreThrowNullPointerException();
  }

  return [v11 asSubclass:OrgApacheLuceneUtilAttributeImpl_class_()];
}

id OrgApacheLuceneUtilRefCount_initWithId_(uint64_t a1, void *a2)
{
  v4 = new_JavaUtilConcurrentAtomicAtomicInteger_initWithInt_(1u);
  JreStrongAssignAndConsume((a1 + 16), v4);

  return JreStrongAssign((a1 + 8), a2);
}

void sub_1000C7DC4(void *a1)
{
  objc_begin_catch(a1);
  [*(v1 + 16) incrementAndGet];
  objc_exception_rethrow();
}

void *OrgApacheLuceneUtilLSBRadixSorter_init(uint64_t a1)
{
  JreStrongAssignAndConsume((a1 + 8), [IOSIntArray newArrayWithLength:256]);
  v2 = [IOSIntArray newArrayWithLength:0];

  return JreStrongAssignAndConsume((a1 + 16), v2);
}

OrgApacheLuceneUtilLSBRadixSorter *new_OrgApacheLuceneUtilLSBRadixSorter_init()
{
  v0 = [OrgApacheLuceneUtilLSBRadixSorter alloc];
  OrgApacheLuceneUtilLSBRadixSorter_init(v0);
  return v0;
}

const __CFString *OrgApacheLuceneUtilToStringUtils_boostWithFloat_(float a1)
{
  if ((atomic_load_explicit(&OrgApacheLuceneUtilToStringUtils__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000C88D4();
  }

  if (a1 == 1.0)
  {
    return &stru_100484358;
  }

  JavaLangFloat_toStringWithFloat_(a1);
  return JreStrcat("C$", v2, v3, v4, v5, v6, v7, v8, 94);
}

id OrgApacheLuceneUtilToStringUtils_byteArrayWithJavaLangStringBuilder_withByteArray_(id result, uint64_t a2)
{
  v3 = result;
  if (atomic_load_explicit(&OrgApacheLuceneUtilToStringUtils__initialized, memory_order_acquire))
  {
    if (!a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    result = sub_1000C88D4();
    if (!a2)
    {
      goto LABEL_17;
    }
  }

  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    while (v3)
    {
      v5 = [v3 appendWithNSString:@"b["];
      if (!v5)
      {
        break;
      }

      v6 = [v5 appendWithInt:v4];
      if (!v6)
      {
        break;
      }

      v7 = [v6 appendWithNSString:@"]="];
      if (!v7)
      {
        break;
      }

      v8 = v7;
      v9 = *(a2 + 8);
      if (v4 >= v9)
      {
        IOSArray_throwOutOfBoundsWithMsg(v9, v4);
      }

      result = [v8 appendWithInt:*(a2 + 12 + v4)];
      if (v4 < *(a2 + 8) - 1)
      {
        result = [v3 appendWithChar:44];
      }

      if (++v4 >= *(a2 + 8))
      {
        return result;
      }
    }

LABEL_17:
    JreThrowNullPointerException();
  }

  return result;
}

const __CFString *OrgApacheLuceneUtilToStringUtils_longHexWithLong_(unint64_t a1)
{
  if ((atomic_load_explicit(&OrgApacheLuceneUtilToStringUtils__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000C88D4();
  }

  v2 = [IOSCharArray arrayWithLength:16];
  v3 = 15;
  do
  {
    if (!qword_100554490)
    {
      JreThrowNullPointerException();
    }

    v4 = *(qword_100554490 + 8);
    if (v4 <= (a1 & 0xF))
    {
      IOSArray_throwOutOfBoundsWithMsg(v4, a1 & 0xF);
    }

    size = v2->super.size_;
    if (v3 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v3);
    }

    *(&v2->super.size_ + v3 + 2) = *(qword_100554490 + 12 + 2 * (a1 & 0xF));
    a1 >>= 4;
  }

  while (v3-- > 0);
  [NSString stringWithCharacters:v2];
  return JreStrcat("$$", v7, v8, v9, v10, v11, v12, v13, @"0x");
}

OrgApacheLuceneUtilFstForwardBytesReader *new_OrgApacheLuceneUtilFstForwardBytesReader_initWithByteArray_(void *a1)
{
  v2 = [OrgApacheLuceneUtilFstForwardBytesReader alloc];
  OrgApacheLuceneUtilFstFST_BytesReader_init(v2, v3);
  JreStrongAssign(&v2->bytes_, a1);
  return v2;
}

uint64_t OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_getFullSegmentSuffixWithNSString_withNSString_withNSString_(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  if ([a2 length])
  {
    v12 = JreStrcat("$$$", v4, v5, v6, v7, v8, v9, v10, @"cannot embed PerFieldPostingsFormat inside itself (field ");
    v13 = new_JavaLangIllegalStateException_initWithNSString_(v12);
    objc_exception_throw(v13);
  }

  return a3;
}

id sub_1000C8D2C(id *a1, void *a2, void *a3)
{
  JreStrongAssign(a1 + 1, a2);
  OrgApacheLuceneCodecsFieldsConsumer_init(a1);
  v5 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume(a1 + 3, v5);

  return JreStrongAssign(a1 + 2, a3);
}

void sub_1000C931C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaLangIterable_(*(v2 + 24));
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C9370(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x1000C937CLL);
}

id sub_1000C9520(id *a1, uint64_t a2)
{
  OrgApacheLuceneCodecsFieldsProducer_init();
  v4 = new_JavaUtilTreeMap_init();
  JreStrongAssignAndConsume(a1 + 1, v4);
  v5 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume(a1 + 2, v5);
  v6 = new_JavaUtilIdentityHashMap_init();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  if (!a2)
  {
    goto LABEL_22;
  }

  v7 = v6;
  v8 = [*(a2 + 16) entrySet];
  if (!v8)
  {
    goto LABEL_22;
  }

  v9 = v8;
  v25 = a2;
  v10 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        if (!v14)
        {
          goto LABEL_22;
        }

        v15 = [*(*(&v30 + 1) + 8 * i) getValue];
        if (!v15)
        {
          goto LABEL_22;
        }

        v16 = [v15 getMergeInstance];
        [a1[2] putWithId:objc_msgSend(v14 withId:{"getKey"), v16}];
        -[JavaUtilIdentityHashMap putWithId:withId:](v7, "putWithId:withId:", [v14 getValue], v16);
      }

      v11 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v11);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v17 = [*(v25 + 8) entrySet];
  if (!v17)
  {
LABEL_22:
    JreThrowNullPointerException();
  }

  v18 = v17;
  v19 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v26 + 1) + 8 * j);
        if (!v23)
        {
          goto LABEL_22;
        }

        [a1[1] putWithId:objc_msgSend(v23 withId:{"getKey"), -[JavaUtilIdentityHashMap getWithId:](v7, "getWithId:", objc_msgSend(*(*(&v26 + 1) + 8 * j), "getValue"))}];
      }

      v20 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v20);
  }

  return JreStrongAssign(a1 + 3, *(v25 + 24));
}

id sub_1000C97D4(id *a1, uint64_t a2)
{
  OrgApacheLuceneCodecsFieldsProducer_init();
  v4 = new_JavaUtilTreeMap_init();
  JreStrongAssignAndConsume(a1 + 1, v4);
  v5 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume(a1 + 2, v5);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v33 = a2;
  if (!a2 || (obj = *(a2 + 24)) == 0)
  {
LABEL_22:
    JreThrowNullPointerException();
  }

  v6 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v6)
  {
    v7 = *v36;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v36 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v35 + 1) + 8 * i);
        if (!v9)
        {
          goto LABEL_22;
        }

        v10 = [*(*(&v35 + 1) + 8 * i) getIndexOptions];
        if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
        {
          objc_opt_class();
        }

        if (v10 != OrgApacheLuceneIndexIndexOptionsEnum_values_[0])
        {
          v11 = v9[1];
          v12 = [v9 getAttributeWithNSString:OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_PER_FIELD_FORMAT_KEY_];
          if (v12)
          {
            if (![v9 getAttributeWithNSString:OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_PER_FIELD_SUFFIX_KEY_])
            {
              v31 = JreStrcat("$$$$", v13, v14, v15, v16, v17, v18, v19, @"missing attribute: ");
              v32 = new_JavaLangIllegalStateException_initWithNSString_(v31);
              objc_exception_throw(v32);
            }

            v20 = OrgApacheLuceneCodecsPostingsFormat_forNameWithNSString_(v12);
            v28 = JreStrcat("$C$", v21, v22, v23, v24, v25, v26, v27, v12);
            if (([a1[2] containsKeyWithId:v28] & 1) == 0)
            {
              if (!v20)
              {
                JreThrowNullPointerException();
              }

              [a1[2] putWithId:v28 withId:{objc_msgSend(v20, "fieldsProducerWithOrgApacheLuceneIndexSegmentReadState:", new_OrgApacheLuceneIndexSegmentReadState_initWithOrgApacheLuceneIndexSegmentReadState_withNSString_(v33, v28))}];
            }

            [a1[1] putWithId:v11 withId:{objc_msgSend(a1[2], "getWithId:", v28)}];
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v6);
  }

  v29 = *(v33 + 16);
  if (!v29)
  {
    JreThrowNullPointerException();
  }

  return JreStrongAssign(a1 + 3, *(v29 + 8));
}

void sub_1000C9AE0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaLangIterable_([*(v2 + 16) values]);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C9B3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1000C9B40);
  }

  objc_terminate();
}

uint64_t OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_FieldsReader_class_()
{
  if ((atomic_load_explicit(&OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_FieldsReader__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000CA11C();
  }

  if (qword_1005544A8 != -1)
  {
    sub_1000CA128();
  }

  return qword_1005544A0;
}

OrgApacheLuceneUtilPackedPackedLongValues_Builder *OrgApacheLuceneUtilPackedPackedLongValues_packedBuilderWithInt_withFloat_(signed int a1, float a2)
{
  if ((atomic_load_explicit(&OrgApacheLuceneUtilPackedPackedLongValues__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000CB1D4();
  }

  v4 = [OrgApacheLuceneUtilPackedPackedLongValues_Builder alloc];
  OrgApacheLuceneUtilPackedPackedLongValues_Builder_initWithInt_withFloat_(v4, a1, a2, v5, v6, v7, v8, v9, v10);

  return v4;
}

OrgApacheLuceneUtilPackedPackedLongValues_Builder *OrgApacheLuceneUtilPackedPackedLongValues_packedBuilderWithFloat_(float a1)
{
  if ((atomic_load_explicit(&OrgApacheLuceneUtilPackedPackedLongValues__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000CB1D4();
  }

  return OrgApacheLuceneUtilPackedPackedLongValues_packedBuilderWithInt_withFloat_(1024, a1);
}

OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder *OrgApacheLuceneUtilPackedPackedLongValues_deltaPackedBuilderWithInt_withFloat_(signed int a1, float a2)
{
  if ((atomic_load_explicit(&OrgApacheLuceneUtilPackedPackedLongValues__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000CB1D4();
  }

  v4 = new_OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder_initWithInt_withFloat_(a1, a2);

  return v4;
}

OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder *OrgApacheLuceneUtilPackedPackedLongValues_deltaPackedBuilderWithFloat_(float a1)
{
  if ((atomic_load_explicit(&OrgApacheLuceneUtilPackedPackedLongValues__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000CB1D4();
  }

  return OrgApacheLuceneUtilPackedPackedLongValues_deltaPackedBuilderWithInt_withFloat_(1024, a1);
}

OrgApacheLuceneUtilPackedMonotonicLongValues_Builder *OrgApacheLuceneUtilPackedPackedLongValues_monotonicBuilderWithInt_withFloat_(signed int a1, float a2)
{
  if ((atomic_load_explicit(&OrgApacheLuceneUtilPackedPackedLongValues__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000CB1D4();
  }

  v4 = new_OrgApacheLuceneUtilPackedMonotonicLongValues_Builder_initWithInt_withFloat_(a1, a2);

  return v4;
}

OrgApacheLuceneUtilPackedMonotonicLongValues_Builder *OrgApacheLuceneUtilPackedPackedLongValues_monotonicBuilderWithFloat_(float a1)
{
  if ((atomic_load_explicit(&OrgApacheLuceneUtilPackedPackedLongValues__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000CB1D4();
  }

  return OrgApacheLuceneUtilPackedPackedLongValues_monotonicBuilderWithInt_withFloat_(1024, a1);
}

id OrgApacheLuceneUtilPackedPackedLongValues_initWithInt_withInt_withOrgApacheLuceneUtilPackedPackedInts_ReaderArray_withLong_withLong_(uint64_t a1, int a2, int a3, void *a4, uint64_t a5, uint64_t a6)
{
  OrgApacheLuceneUtilLongValues_init();
  *(a1 + 16) = a2;
  *(a1 + 20) = a3;
  result = JreStrongAssign((a1 + 8), a4);
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  return result;
}

OrgApacheLuceneUtilPackedPackedLongValues *new_OrgApacheLuceneUtilPackedPackedLongValues_initWithInt_withInt_withOrgApacheLuceneUtilPackedPackedInts_ReaderArray_withLong_withLong_(int a1, int a2, void *a3, int64_t a4, int64_t a5)
{
  v10 = [OrgApacheLuceneUtilPackedPackedLongValues alloc];
  OrgApacheLuceneUtilLongValues_init(v10);
  v10->pageShift_ = a1;
  v10->pageMask_ = a2;
  JreStrongAssign(&v10->values_, a3);
  v10->size_ = a4;
  v10->ramBytesUsed_ = a5;
  return v10;
}

uint64_t OrgApacheLuceneUtilPackedPackedLongValues_class_()
{
  if ((atomic_load_explicit(&OrgApacheLuceneUtilPackedPackedLongValues__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000CB1D4();
  }

  if (qword_1005544C0 != -1)
  {
    sub_1000CB1E0();
  }

  return qword_1005544B8;
}

id OrgApacheLuceneUtilPackedPackedLongValues_Iterator_initWithOrgApacheLuceneUtilPackedPackedLongValues_(uint64_t a1, _DWORD *a2)
{
  JreStrongAssign((a1 + 32), a2);
  JreStrongAssignAndConsume((a1 + 8), [IOSLongArray newArrayWithLength:a2[5] + 1]);
  *(a1 + 16) = 0;

  return sub_1000CA8E8(a1);
}

id sub_1000CA8E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[1];
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  v4 = *(a1 + 16);
  if (v4 == *(v3 + 8))
  {
    result = 0;
  }

  else
  {
    result = [v2 decodeBlockWithInt:v4 withLongArray:*(a1 + 8)];
  }

  *(a1 + 24) = result;
  return result;
}

uint64_t OrgApacheLuceneUtilPackedPackedLongValues_Builder_initWithInt_withFloat_(uint64_t a1, signed int a2, float a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(a1 + 8) = OrgApacheLuceneUtilPackedPackedInts_checkBlockSizeWithInt_withInt_withInt_(a2, 64, 0x100000, a5, a6, a7, a8, a9);
  *(a1 + 12) = a2 - 1;
  *(a1 + 16) = a3;
  v12 = [IOSObjectArray newArrayWithLength:16 type:OrgApacheLuceneUtilPackedPackedInts_Reader_class_()];
  JreStrongAssignAndConsume((a1 + 40), v12);
  JreStrongAssignAndConsume((a1 + 24), [IOSLongArray newArrayWithLength:a2]);
  *(a1 + 56) = 0;
  *(a1 + 32) = 0;
  v13 = [a1 baseRamBytesUsed];
  v14 = &v13[OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithLongArray_(*(a1 + 24))];
  result = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithNSObjectArray_(*(a1 + 40));
  *(a1 + 48) = &v14[result];
  return result;
}

void sub_1000CB024()
{
  v3 = *(v0 + *v1);
  v4 = *(v0 + *v2);
  if (v3 < 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v3, 0);
  }

  JUMPOUT(0x1000CAE98);
}

uint64_t OrgApacheLuceneUtilPackedPackedLongValues_Builder_class_()
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedLongValues_Builder__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000CB1F4();
  }

  if (qword_1005544D8 != -1)
  {
    sub_1000CB200();
  }

  return qword_1005544D0;
}

id OrgApacheLuceneCodecsLucene50Lucene50TermVectorsFormat_init(uint64_t a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneCodecsCompressingCompressionMode__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10005CD10();
  }

  v2 = OrgApacheLuceneCodecsCompressingCompressionMode_FAST_;

  return OrgApacheLuceneCodecsCompressingCompressingTermVectorsFormat_initWithNSString_withNSString_withOrgApacheLuceneCodecsCompressingCompressionMode_withInt_withInt_(a1, @"Lucene50TermVectors", &stru_100484358, v2, 4096, 1024);
}

OrgApacheLuceneCodecsLucene50Lucene50TermVectorsFormat *new_OrgApacheLuceneCodecsLucene50Lucene50TermVectorsFormat_init()
{
  v0 = [OrgApacheLuceneCodecsLucene50Lucene50TermVectorsFormat alloc];
  OrgApacheLuceneCodecsLucene50Lucene50TermVectorsFormat_init(v0);
  return v0;
}

OrgApacheLuceneUtilPackedPagedGrowableWriter *new_OrgApacheLuceneUtilPackedPagedGrowableWriter_initWithLong_withInt_withInt_withFloat_(uint64_t a1, signed int a2, int a3, float a4)
{
  v8 = [OrgApacheLuceneUtilPackedPagedGrowableWriter alloc];
  OrgApacheLuceneUtilPackedAbstractPagedMutable_initWithInt_withLong_withInt_(v8, a3, a1, a2);
  *(&v8->super.bitsPerValue_ + 1) = a4;
  [(OrgApacheLuceneUtilPackedAbstractPagedMutable *)v8 fillPages];
  return v8;
}

uint64_t sub_1000CB7AC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  objc_sync_enter(a1);
  [a1 checkAbort];
  v6 = *(a1 + 16);
  v7 = vcvtd_n_f64_s64(a2, 0xAuLL) * 0.0009765625 / v6 * 1000000000.0;
  v8 = v7;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  if (v7 < 0.0)
  {
    v9 = 0x8000000000000000;
  }

  if (v8 == 0x8000000000000000)
  {
    v8 = v9;
  }

  v10 = *(a1 + 48) - a3 + v8;
  if (v10 > 2000000)
  {
    if (v10 >= 0xEE6B280)
    {
      v10 = 250000000;
    }

    [a1 waitWithLong:(281474977 * v10) >> 48 withInt:v10 - 1000000 * (((281474977 * v10) >> 32) >> 16)];
    if (v6 == 0.0)
    {
      v11 = &qword_100557988;
    }

    else
    {
      v11 = &qword_100557990;
    }

    if ((atomic_load_explicit(OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      objc_opt_class();
    }
  }

  else
  {
    if ((atomic_load_explicit(OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      objc_opt_class();
    }

    v11 = &OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_values_;
  }

  v12 = *v11;
  objc_sync_exit(a1);
  return v12;
}

OrgApacheLuceneIndexMergeRateLimiter *new_OrgApacheLuceneIndexMergeRateLimiter_initWithOrgApacheLuceneIndexMergePolicy_OneMerge_(void *a1)
{
  v2 = [OrgApacheLuceneIndexMergeRateLimiter alloc];
  OrgApacheLuceneStoreRateLimiter_init();
  JreStrongAssign(&v2->merge_, a1);
  [(OrgApacheLuceneIndexMergeRateLimiter *)v2 setMBPerSecWithDouble:INFINITY];
  return v2;
}

IOSObjectArray *OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_values()
{
  if ((atomic_load_explicit(OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000CBE40();
  }

  v0 = OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_class_();

  return [IOSObjectArray arrayWithObjects:&OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_values_ count:3 type:v0];
}

void *OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_valueOfWithNSString_(void *a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000CBE40();
  }

  v2 = 0;
  while (1)
  {
    v3 = OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_values_[v2];
    if ([a1 isEqual:{objc_msgSend(v3, "name")}])
    {
      break;
    }

    if (++v2 == 3)
    {
      objc_exception_throw([[JavaLangIllegalArgumentException alloc] initWithNSString:a1]);
    }
  }

  return v3;
}

uint64_t OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum_class_()
{
  if ((atomic_load_explicit(OrgApacheLuceneIndexMergeRateLimiter_PauseResultEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000CBE40();
  }

  if (qword_1005544E8 != -1)
  {
    sub_1000CBE4C();
  }

  return qword_1005544E0;
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonOperations_concatenateWithOrgApacheLuceneUtilAutomatonAutomaton_withOrgApacheLuceneUtilAutomatonAutomaton_(uint64_t a1, uint64_t a2)
{
  v5[0] = a1;
  v5[1] = a2;
  v2 = [IOSObjectArray arrayWithObjects:v5 count:2 type:OrgApacheLuceneUtilAutomatonAutomaton_class_()];
  v3 = JavaUtilArrays_asListWithNSObjectArray_(v2);
  return OrgApacheLuceneUtilAutomatonOperations_concatenateWithJavaUtilList_(v3);
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonOperations_concatenateWithJavaUtilList_(void *a1)
{
  v2 = new_OrgApacheLuceneUtilAutomatonAutomaton_init();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  if (!a1)
  {
    goto LABEL_38;
  }

  v3 = v2;
  v4 = [a1 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v31;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(a1);
        }

        v8 = *(*(&v30 + 1) + 8 * i);
        if (!v8)
        {
          goto LABEL_38;
        }

        if (![*(*(&v30 + 1) + 8 * i) getNumStates])
        {
          goto LABEL_37;
        }

        v9 = [v8 getNumStates];
        if (v9 >= 1)
        {
          do
          {
            [(OrgApacheLuceneUtilAutomatonAutomaton *)v3 createState];
            --v9;
          }

          while (v9);
        }
      }

      v5 = [a1 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v5);
  }

  v10 = new_OrgApacheLuceneUtilAutomatonTransition_init();
  if ([a1 size] >= 1)
  {
    v11 = 0;
    v12 = 0;
    v26 = a1;
    while (1)
    {
      v13 = [a1 getWithInt:v11];
      if (!v13)
      {
        break;
      }

      v14 = v13;
      v25 = [v13 getNumStates];
      if (v11 == [a1 size] - 1)
      {
        v24 = 0;
      }

      else
      {
        v24 = [a1 getWithInt:(v11 + 1)];
      }

      if (v25 >= 1)
      {
        v15 = 0;
        v27 = v14;
        do
        {
          v16 = [v14 initTransitionWithInt:v15 withOrgApacheLuceneUtilAutomatonTransition:v10];
          if (v16 >= 1)
          {
            v17 = v16;
            do
            {
              [v14 getNextTransitionWithOrgApacheLuceneUtilAutomatonTransition:v10];
              [(OrgApacheLuceneUtilAutomatonAutomaton *)v3 addTransitionWithInt:(v15 + v12) withInt:(v10->dest_ + v12) withInt:v10->min_ withInt:v10->max_];
              --v17;
            }

            while (v17);
          }

          if ([v14 isAcceptWithInt:v15])
          {
            v18 = v11;
            v29 = v12;
            v19 = v24;
            if (v24)
            {
              while (1)
              {
                v28 = v18;
                v20 = [v19 initTransitionWithInt:0 withOrgApacheLuceneUtilAutomatonTransition:v10];
                if (v20 >= 1)
                {
                  v21 = v20;
                  do
                  {
                    [v19 getNextTransitionWithOrgApacheLuceneUtilAutomatonTransition:v10];
                    [(OrgApacheLuceneUtilAutomatonAutomaton *)v3 addTransitionWithInt:(v15 + v12) withInt:(v29 + v25 + v10->dest_) withInt:v10->min_ withInt:v10->max_];
                    --v21;
                  }

                  while (v21);
                }

                a1 = v26;
                v14 = v27;
                if (([v19 isAcceptWithInt:0] & 1) == 0)
                {
                  break;
                }

                v22 = [v19 getNumStates];
                if (v18 != [v26 size] - 2)
                {
                  ++v18;
                  v29 += v22;
                  v19 = [v26 getWithInt:(v28 + 2)];
                  if (v19)
                  {
                    continue;
                  }
                }

                goto LABEL_32;
              }
            }

            else
            {
LABEL_32:
              [(OrgApacheLuceneUtilAutomatonAutomaton *)v3 setAcceptWithInt:(v15 + v12) withBoolean:1];
            }
          }

          v15 = (v15 + 1);
        }

        while (v15 != v25);
      }

      v12 += v25;
      v11 = (v11 + 1);
      if (v11 >= [a1 size])
      {
        goto LABEL_35;
      }
    }

LABEL_38:
    JreThrowNullPointerException();
  }

LABEL_35:
  if (![(OrgApacheLuceneUtilAutomatonAutomaton *)v3 getNumStates])
  {
    [(OrgApacheLuceneUtilAutomatonAutomaton *)v3 createState];
  }

LABEL_37:
  [(OrgApacheLuceneUtilAutomatonAutomaton *)v3 finishState];
  return v3;
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonOperations_optionalWithOrgApacheLuceneUtilAutomatonAutomaton_(void *a1)
{
  v2 = new_OrgApacheLuceneUtilAutomatonAutomaton_init();
  [(OrgApacheLuceneUtilAutomatonAutomaton *)v2 createState];
  [(OrgApacheLuceneUtilAutomatonAutomaton *)v2 setAcceptWithInt:0 withBoolean:1];
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  if ([a1 getNumStates] >= 1)
  {
    [(OrgApacheLuceneUtilAutomatonAutomaton *)v2 copy__WithOrgApacheLuceneUtilAutomatonAutomaton:a1];
    [(OrgApacheLuceneUtilAutomatonAutomaton *)v2 addEpsilonWithInt:0 withInt:1];
  }

  [(OrgApacheLuceneUtilAutomatonAutomaton *)v2 finishState];
  return v2;
}

id OrgApacheLuceneUtilAutomatonOperations_repeatWithOrgApacheLuceneUtilAutomatonAutomaton_(void *a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  if (![a1 getNumStates])
  {
    return a1;
  }

  v2 = new_OrgApacheLuceneUtilAutomatonAutomaton_Builder_init();
  [(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)v2 createState];
  [(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)v2 setAcceptWithInt:0 withBoolean:1];
  [(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)v2 copy__WithOrgApacheLuceneUtilAutomatonAutomaton:a1];
  v3 = new_OrgApacheLuceneUtilAutomatonTransition_init();
  v4 = [a1 initTransitionWithInt:0 withOrgApacheLuceneUtilAutomatonTransition:v3];
  if (v4 >= 1)
  {
    v5 = v4;
    do
    {
      [a1 getNextTransitionWithOrgApacheLuceneUtilAutomatonTransition:v3];
      [(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)v2 addTransitionWithInt:0 withInt:(v3->dest_ + 1) withInt:v3->min_ withInt:v3->max_];
      --v5;
    }

    while (v5);
  }

  v6 = [a1 getNumStates];
  if (v6 >= 1)
  {
    v7 = v6;
    v8 = 0;
    do
    {
      if ([a1 isAcceptWithInt:v8])
      {
        v9 = [a1 initTransitionWithInt:0 withOrgApacheLuceneUtilAutomatonTransition:v3];
        if (v9 >= 1)
        {
          v10 = v9;
          do
          {
            [a1 getNextTransitionWithOrgApacheLuceneUtilAutomatonTransition:v3];
            [(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)v2 addTransitionWithInt:(v8 + 1) withInt:(v3->dest_ + 1) withInt:v3->min_ withInt:v3->max_];
            --v10;
          }

          while (v10);
        }
      }

      v8 = (v8 + 1);
    }

    while (v8 != v7);
  }

  return [(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)v2 finish];
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonOperations_repeatWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(void *a1, int a2)
{
  if (a2)
  {
    v4 = new_JavaUtilArrayList_init();
    if (a2 >= 1)
    {
      v5 = a2 + 1;
      do
      {
        [(JavaUtilArrayList *)v4 addWithId:a1];
        --v5;
      }

      while (v5 > 1);
    }

    [(JavaUtilArrayList *)v4 addWithId:OrgApacheLuceneUtilAutomatonOperations_repeatWithOrgApacheLuceneUtilAutomatonAutomaton_(a1)];

    return OrgApacheLuceneUtilAutomatonOperations_concatenateWithJavaUtilList_(v4);
  }

  else
  {

    return OrgApacheLuceneUtilAutomatonOperations_repeatWithOrgApacheLuceneUtilAutomatonAutomaton_(a1);
  }
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonOperations_repeatWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_withInt_(void *a1, int a2, int a3)
{
  if (a2 <= a3)
  {
    v5 = a2;
    if (a2 == 1)
    {
      v8 = new_OrgApacheLuceneUtilAutomatonAutomaton_init();
      [(OrgApacheLuceneUtilAutomatonAutomaton *)v8 copy__WithOrgApacheLuceneUtilAutomatonAutomaton:a1];
    }

    else
    {
      if (a2)
      {
        v9 = new_JavaUtilArrayList_init();
        if (v5 >= 1)
        {
          v10 = v5;
          do
          {
            [(JavaUtilArrayList *)v9 addWithId:a1];
            --v10;
          }

          while (v10);
        }

        EmptyString = OrgApacheLuceneUtilAutomatonOperations_concatenateWithJavaUtilList_(v9);
      }

      else
      {
        EmptyString = OrgApacheLuceneUtilAutomatonAutomata_makeEmptyString();
      }

      v8 = EmptyString;
    }

    v11 = sub_1000CFC6C(v8, 0);
    v12 = new_OrgApacheLuceneUtilAutomatonAutomaton_Builder_init();
    [(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)v12 copy__WithOrgApacheLuceneUtilAutomatonAutomaton:v8];
    if (v5 < a3)
    {
      do
      {
        v13 = [(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)v12 getNumStates];
        [(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)v12 copy__WithOrgApacheLuceneUtilAutomatonAutomaton:a1];
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        if (!v11)
        {
LABEL_26:
          JreThrowNullPointerException();
        }

        v14 = [(JavaUtilHashSet *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v20;
          do
          {
            for (i = 0; i != v15; i = i + 1)
            {
              if (*v20 != v16)
              {
                objc_enumerationMutation(v11);
              }

              v18 = *(*(&v19 + 1) + 8 * i);
              if (!v18)
              {
                goto LABEL_26;
              }

              -[OrgApacheLuceneUtilAutomatonAutomaton_Builder addEpsilonWithInt:withInt:](v12, "addEpsilonWithInt:withInt:", [v18 intValue], v13);
            }

            v15 = [(JavaUtilHashSet *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
          }

          while (v15);
        }

        v11 = sub_1000CFC6C(a1, v13);
        ++v5;
      }

      while (v5 != a3);
    }

    return [(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)v12 finish];
  }

  else
  {

    return OrgApacheLuceneUtilAutomatonAutomata_makeEmpty();
  }
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonOperations_complementWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(void *a1, int a2)
{
  v2 = OrgApacheLuceneUtilAutomatonOperations_determinizeWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(a1, a2);
  v3 = OrgApacheLuceneUtilAutomatonOperations_totalizeWithOrgApacheLuceneUtilAutomatonAutomaton_(v2);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  v4 = v3;
  v5 = [(OrgApacheLuceneUtilAutomatonAutomaton *)v3 getNumStates];
  if (v5 >= 1)
  {
    v6 = v5;
    v7 = 0;
    do
    {
      [(OrgApacheLuceneUtilAutomatonAutomaton *)v4 setAcceptWithInt:v7 withBoolean:[(OrgApacheLuceneUtilAutomatonAutomaton *)v4 isAcceptWithInt:v7]^ 1];
      v7 = (v7 + 1);
    }

    while (v6 != v7);
  }

  return OrgApacheLuceneUtilAutomatonOperations_removeDeadStatesWithOrgApacheLuceneUtilAutomatonAutomaton_(v4);
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonOperations_minusWithOrgApacheLuceneUtilAutomatonAutomaton_withOrgApacheLuceneUtilAutomatonAutomaton_withInt_(void *a1, void *a2, int a3)
{
  isEmptyWithOrgApacheLuceneUtilAutomatonAutomaton = OrgApacheLuceneUtilAutomatonOperations_isEmptyWithOrgApacheLuceneUtilAutomatonAutomaton_(a1);
  if (a1 == a2 || isEmptyWithOrgApacheLuceneUtilAutomatonAutomaton)
  {

    return OrgApacheLuceneUtilAutomatonAutomata_makeEmpty();
  }

  else if (OrgApacheLuceneUtilAutomatonOperations_isEmptyWithOrgApacheLuceneUtilAutomatonAutomaton_(a2))
  {
    return a1;
  }

  else
  {
    v8 = OrgApacheLuceneUtilAutomatonOperations_complementWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(a2, a3);

    return OrgApacheLuceneUtilAutomatonOperations_intersectionWithOrgApacheLuceneUtilAutomatonAutomaton_withOrgApacheLuceneUtilAutomatonAutomaton_(a1, v8);
  }
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonOperations_intersectionWithOrgApacheLuceneUtilAutomatonAutomaton_withOrgApacheLuceneUtilAutomatonAutomaton_(void *a1, void *a2)
{
  v2 = a1;
  if (a1 == a2)
  {
    return v2;
  }

  if (!a1)
  {
    goto LABEL_99;
  }

  v3 = a2;
  if (![a1 getNumStates])
  {
    return v2;
  }

  if (!v3)
  {
    goto LABEL_99;
  }

  if (![v3 getNumStates])
  {
    return v3;
  }

  v4 = [v2 getSortedTransitions];
  v5 = [v3 getSortedTransitions];
  v61 = new_OrgApacheLuceneUtilAutomatonAutomaton_init();
  [(OrgApacheLuceneUtilAutomatonAutomaton *)v61 createState];
  v6 = new_JavaUtilLinkedList_init();
  v7 = new_JavaUtilHashMap_init();
  v8 = new_OrgApacheLuceneUtilAutomatonStatePair_initWithInt_withInt_withInt_(0, 0, 0);
  [(JavaUtilLinkedList *)v6 addWithId:v8];
  [(JavaUtilHashMap *)v7 putWithId:v8 withId:v8];
  if ([(JavaUtilLinkedList *)v6 size]>= 1)
  {
    v56 = v3;
    v57 = v2;
    v55 = v4;
    v58 = v5;
    v59 = v6;
    while (1)
    {
      v9 = [(JavaUtilLinkedList *)v6 removeFirst:v55];
      if (!v9)
      {
        goto LABEL_99;
      }

      v10 = v9[2];
      v11 = v9;
      v60 = v9;
      v12 = [v2 isAcceptWithInt:v9[3]] ? objc_msgSend(v3, "isAcceptWithInt:", v11[4]) : 0;
      [(OrgApacheLuceneUtilAutomatonAutomaton *)v61 setAcceptWithInt:v10 withBoolean:v12];
      if (!v4)
      {
        goto LABEL_99;
      }

      v13 = v60[3];
      v14 = *(v4 + 2);
      if (v13 < 0 || v13 >= v14)
      {
        IOSArray_throwOutOfBoundsWithMsg(v14, v13);
      }

      if (!v5)
      {
        goto LABEL_99;
      }

      v15 = v4[v13 + 3];
      v16 = v60[4];
      v17 = v5[2];
      if (v16 < 0 || v16 >= v17)
      {
        IOSArray_throwOutOfBoundsWithMsg(v17, v16);
      }

      if (!v15)
      {
        goto LABEL_99;
      }

      if (*(v15 + 8) >= 1)
      {
        break;
      }

LABEL_95:
      v6 = v59;
      v3 = v56;
      v2 = v57;
      v4 = v55;
      v5 = v58;
      if ([(JavaUtilLinkedList *)v59 size]< 1)
      {
        goto LABEL_102;
      }
    }

    LODWORD(v18) = 0;
    v19 = 0;
    v20 = *&v58[2 * v16 + 6];
    while (1)
    {
      if (!v20)
      {
        goto LABEL_99;
      }

      v21 = v15 + 8 * v19;
      v22 = *(v20 + 8);
      if (v18 >= v22)
      {
        v26 = v18;
        v18 = v18;
      }

      else
      {
        v18 = v18;
        while (1)
        {
          if (v18 < 0)
          {
            IOSArray_throwOutOfBoundsWithMsg(v22, v18);
          }

          v23 = *(v20 + 24 + 8 * v18);
          if (!v23)
          {
            goto LABEL_99;
          }

          v24 = *(v15 + 8);
          if (v19 >= v24)
          {
            IOSArray_throwOutOfBoundsWithMsg(v24, v19);
          }

          v25 = *(v21 + 24);
          if (!v25)
          {
            goto LABEL_99;
          }

          if (*(v23 + 20) >= *(v25 + 16))
          {
            break;
          }

          ++v18;
          v22 = *(v20 + 8);
          if (v18 >= v22)
          {
            goto LABEL_35;
          }
        }

        LODWORD(v22) = *(v20 + 8);
LABEL_35:
        v26 = v18;
      }

      if (v22 > v26)
      {
        break;
      }

LABEL_94:
      if (++v19 >= *(v15 + 8))
      {
        goto LABEL_95;
      }
    }

    v27 = v18;
    while (1)
    {
      v28 = *(v15 + 8);
      if (v19 >= v28)
      {
        IOSArray_throwOutOfBoundsWithMsg(v28, v19);
      }

      v29 = *(v21 + 24);
      if (!v29)
      {
        break;
      }

      v30 = *(v20 + 8);
      if (v27 < 0 || v27 >= v30)
      {
        IOSArray_throwOutOfBoundsWithMsg(v30, v27);
      }

      v31 = *(v20 + 24 + 8 * v27);
      if (!v31)
      {
        break;
      }

      if (*(v29 + 20) < *(v31 + 16))
      {
        goto LABEL_94;
      }

      v32 = *(v20 + 8);
      if (v27 < 0 || v27 >= v32)
      {
        IOSArray_throwOutOfBoundsWithMsg(v32, v27);
      }

      v33 = *(v15 + 8);
      if (v19 >= v33)
      {
        IOSArray_throwOutOfBoundsWithMsg(v33, v19);
      }

      v34 = *(v21 + 24);
      if (!v34)
      {
        break;
      }

      if (*(v31 + 20) >= *(v34 + 16))
      {
        v35 = *(v15 + 8);
        if (v19 >= v35)
        {
          IOSArray_throwOutOfBoundsWithMsg(v35, v19);
        }

        v36 = *(v20 + 8);
        if (v27 < 0 || v27 >= v36)
        {
          IOSArray_throwOutOfBoundsWithMsg(v36, v27);
        }

        v37 = *(v20 + 24 + 8 * v27);
        if (!v37)
        {
          break;
        }

        v38 = new_OrgApacheLuceneUtilAutomatonStatePair_initWithInt_withInt_(*(v34 + 12), *(v37 + 12));
        v39 = [(JavaUtilHashMap *)v7 getWithId:v38];
        if (!v39)
        {
          v38->s_ = [(OrgApacheLuceneUtilAutomatonAutomaton *)v61 createState];
          [(JavaUtilLinkedList *)v59 addWithId:v38];
          [(JavaUtilHashMap *)v7 putWithId:v38 withId:v38];
          v39 = v38;
        }

        v40 = *(v15 + 8);
        if (v19 >= v40)
        {
          IOSArray_throwOutOfBoundsWithMsg(v40, v19);
        }

        v41 = *(v21 + 24);
        if (!v41)
        {
          break;
        }

        v42 = *(v41 + 16);
        v43 = *(v20 + 8);
        if (v27 < 0 || v27 >= v43)
        {
          IOSArray_throwOutOfBoundsWithMsg(v43, v27);
        }

        v44 = *(v20 + 24 + 8 * v27);
        if (!v44)
        {
          break;
        }

        if (v42 <= *(v44 + 16))
        {
          v46 = *(v20 + 8);
          if (v27 < 0 || v27 >= v46)
          {
            IOSArray_throwOutOfBoundsWithMsg(v46, v27);
          }
        }

        else
        {
          v45 = *(v15 + 8);
          if (v19 >= v45)
          {
            IOSArray_throwOutOfBoundsWithMsg(v45, v19);
          }

          v44 = *(v21 + 24);
          if (!v44)
          {
            break;
          }
        }

        v47 = *(v44 + 16);
        v48 = *(v15 + 8);
        if (v19 >= v48)
        {
          IOSArray_throwOutOfBoundsWithMsg(v48, v19);
        }

        v49 = *(v21 + 24);
        if (!v49)
        {
          break;
        }

        v50 = *(v20 + 8);
        if (v27 < 0 || v27 >= v50)
        {
          IOSArray_throwOutOfBoundsWithMsg(v50, v27);
        }

        v51 = *(v20 + 24 + 8 * v27);
        if (!v51)
        {
          break;
        }

        if (*(v49 + 20) >= *(v51 + 20))
        {
          v53 = *(v20 + 8);
          if (v27 < 0 || v27 >= v53)
          {
            IOSArray_throwOutOfBoundsWithMsg(v53, v27);
          }
        }

        else
        {
          v52 = *(v15 + 8);
          if (v19 >= v52)
          {
            IOSArray_throwOutOfBoundsWithMsg(v52, v19);
          }

          v51 = *(v21 + 24);
          if (!v51)
          {
            break;
          }
        }

        [(OrgApacheLuceneUtilAutomatonAutomaton *)v61 addTransitionWithInt:v60[2] withInt:v39->s_ withInt:v47 withInt:*(v51 + 20)];
      }

      if (++v27 >= *(v20 + 8))
      {
        goto LABEL_94;
      }
    }

LABEL_99:
    JreThrowNullPointerException();
  }

LABEL_102:
  [(OrgApacheLuceneUtilAutomatonAutomaton *)v61 finishState];

  return OrgApacheLuceneUtilAutomatonOperations_removeDeadStatesWithOrgApacheLuceneUtilAutomatonAutomaton_(v61);
}

uint64_t OrgApacheLuceneUtilAutomatonOperations_sameLanguageWithOrgApacheLuceneUtilAutomatonAutomaton_withOrgApacheLuceneUtilAutomatonAutomaton_(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = OrgApacheLuceneUtilAutomatonOperations_subsetOfWithOrgApacheLuceneUtilAutomatonAutomaton_withOrgApacheLuceneUtilAutomatonAutomaton_(a2, a1);
  if (result)
  {

    return OrgApacheLuceneUtilAutomatonOperations_subsetOfWithOrgApacheLuceneUtilAutomatonAutomaton_withOrgApacheLuceneUtilAutomatonAutomaton_(a1, a2);
  }

  return result;
}

BOOL OrgApacheLuceneUtilAutomatonOperations_hasDeadStatesWithOrgApacheLuceneUtilAutomatonAutomaton_(void *a1)
{
  v2 = sub_1000CFD10(a1);
  if (!v2 || (v3 = [(JavaUtilBitSet *)v2 cardinality], !a1))
  {
    JreThrowNullPointerException();
  }

  return v3 < [a1 getNumStates];
}

uint64_t OrgApacheLuceneUtilAutomatonOperations_hasDeadStatesFromInitialWithOrgApacheLuceneUtilAutomatonAutomaton_(void *a1)
{
  v2 = sub_1000CFD58(a1);
  v3 = sub_1000CFE80(a1);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilBitSet *)v2 andNotWithJavaUtilBitSet:v3];
  return [(JavaUtilBitSet *)v2 isEmpty]^ 1;
}

uint64_t OrgApacheLuceneUtilAutomatonOperations_hasDeadStatesToAcceptWithOrgApacheLuceneUtilAutomatonAutomaton_(void *a1)
{
  v2 = sub_1000CFD58(a1);
  v3 = sub_1000CFE80(a1);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  v4 = v3;
  [(JavaUtilBitSet *)v3 andNotWithJavaUtilBitSet:v2];
  return [(JavaUtilBitSet *)v4 isEmpty]^ 1;
}

uint64_t OrgApacheLuceneUtilAutomatonOperations_subsetOfWithOrgApacheLuceneUtilAutomatonAutomaton_withOrgApacheLuceneUtilAutomatonAutomaton_(void *a1, void *a2)
{
  if (!a1)
  {
    goto LABEL_81;
  }

  v3 = a1;
  if (([a1 isDeterministic] & 1) == 0)
  {
    v46 = @"a1 must be deterministic";
    goto LABEL_90;
  }

  if (!a2)
  {
    goto LABEL_81;
  }

  if (([a2 isDeterministic] & 1) == 0)
  {
    v46 = @"a2 must be deterministic";
LABEL_90:
    v47 = new_JavaLangIllegalArgumentException_initWithNSString_(v46);
    objc_exception_throw(v47);
  }

  if (![v3 getNumStates])
  {
    return 1;
  }

  if ([a2 getNumStates])
  {
    v4 = [v3 getSortedTransitions];
    v5 = [a2 getSortedTransitions];
    v6 = new_JavaUtilLinkedList_init();
    v7 = new_JavaUtilHashSet_init();
    v8 = new_OrgApacheLuceneUtilAutomatonStatePair_initWithInt_withInt_(0, 0);
    [(JavaUtilLinkedList *)v6 addWithId:v8];
    [(JavaUtilHashSet *)v7 addWithId:v8];
    if ([(JavaUtilLinkedList *)v6 size]>= 1)
    {
      v50 = v3;
      v51 = v5;
      v48 = v4;
      v49 = a2;
      v52 = v6;
      while (1)
      {
        v9 = [(JavaUtilLinkedList *)v6 removeFirst];
        if (!v9)
        {
          goto LABEL_81;
        }

        v10 = v9;
        if ([v3 isAcceptWithInt:v9[3]])
        {
          result = [a2 isAcceptWithInt:v10[4]];
          if (!result)
          {
            return result;
          }
        }

        if (!v4)
        {
          goto LABEL_81;
        }

        v12 = v10[3];
        v13 = *(v4 + 2);
        if (v12 < 0 || v12 >= v13)
        {
          IOSArray_throwOutOfBoundsWithMsg(v13, v12);
        }

        if (!v5)
        {
          goto LABEL_81;
        }

        v14 = v4[v12 + 3];
        v15 = v10[4];
        v16 = *(v5 + 2);
        if (v15 < 0 || v15 >= v16)
        {
          IOSArray_throwOutOfBoundsWithMsg(v16, v15);
        }

        if (!v14)
        {
          goto LABEL_81;
        }

        if (*(v14 + 8) >= 1)
        {
          break;
        }

LABEL_77:
        v6 = v52;
        v45 = [(JavaUtilLinkedList *)v52 size];
        result = 1;
        a2 = v49;
        v3 = v50;
        v4 = v48;
        if (v45 <= 0)
        {
          return result;
        }
      }

      v17 = 0;
      LODWORD(v18) = 0;
      v19 = v5[v15 + 3];
      while (1)
      {
        if (!v19)
        {
          goto LABEL_81;
        }

        v20 = v14 + 8 * v17;
        if (v18 >= *(v19 + 8))
        {
          v25 = v18;
          v18 = v18;
        }

        else
        {
          v21 = *(v19 + 8);
          v18 = v18;
          do
          {
            if (v18 < 0)
            {
              IOSArray_throwOutOfBoundsWithMsg(v21, v18);
            }

            v22 = *(v19 + 24 + 8 * v18);
            if (v22)
            {
              v23 = *(v14 + 8);
              if (v17 >= v23)
              {
                IOSArray_throwOutOfBoundsWithMsg(v23, v17);
              }

              v24 = *(v20 + 24);
              if (v24)
              {
                goto LABEL_28;
              }
            }

            goto LABEL_81;
LABEL_28:
            if (*(v22 + 20) >= *(v24 + 16))
            {
              break;
            }

            ++v18;
            v21 = *(v19 + 8);
          }

          while (v18 < v21);
          v25 = v18;
        }

        v26 = *(v14 + 8);
        if (v17 >= v26)
        {
          IOSArray_throwOutOfBoundsWithMsg(v26, v17);
        }

        v27 = *(v14 + 24 + 8 * v17);
        if (!v27)
        {
          goto LABEL_81;
        }

        v28 = *(v27 + 16);
        v29 = *(v14 + 8);
        if (v17 >= v29)
        {
          IOSArray_throwOutOfBoundsWithMsg(v29, v17);
        }

        v53 = *(v27 + 20);
        if (*(v19 + 8) > v25)
        {
          break;
        }

LABEL_72:
        if (v28 <= v53)
        {
          return 0;
        }

        v17 = (v17 + 1);
        v5 = v51;
        if (v17 >= *(v14 + 8))
        {
          goto LABEL_77;
        }
      }

      v30 = v19 + 8 * v18;
      v31 = v18;
      while (1)
      {
        v32 = *(v14 + 8);
        if (v17 >= v32)
        {
          IOSArray_throwOutOfBoundsWithMsg(v32, v17);
        }

        v33 = *(v20 + 24);
        if (!v33)
        {
          break;
        }

        v34 = *(v33 + 20);
        v35 = *(v19 + 8);
        if (v31 < 0 || v31 >= v35)
        {
          IOSArray_throwOutOfBoundsWithMsg(v35, v31);
        }

        v36 = *(v30 + 24);
        if (!v36)
        {
          break;
        }

        if (v34 < *(v36 + 16))
        {
          goto LABEL_72;
        }

        v37 = *(v19 + 8);
        if (v31 < 0 || v31 >= v37)
        {
          IOSArray_throwOutOfBoundsWithMsg(v37, v31);
        }

        if (*(v36 + 16) > v28)
        {
          return 0;
        }

        v38 = *(v19 + 8);
        if (v31 < 0 || v31 >= v38)
        {
          IOSArray_throwOutOfBoundsWithMsg(v38, v31);
        }

        if (*(v36 + 20) >= 1114111)
        {
          v53 = 0;
          v28 = 1114111;
        }

        else
        {
          v39 = *(v19 + 8);
          if (v31 < 0 || v31 >= v39)
          {
            IOSArray_throwOutOfBoundsWithMsg(v39, v31);
          }

          v28 = *(v36 + 20) + 1;
        }

        v40 = *(v14 + 8);
        if (v17 >= v40)
        {
          IOSArray_throwOutOfBoundsWithMsg(v40, v17);
        }

        v41 = *(v20 + 24);
        if (!v41)
        {
          break;
        }

        v42 = *(v19 + 8);
        if (v31 < 0 || v31 >= v42)
        {
          IOSArray_throwOutOfBoundsWithMsg(v42, v31);
        }

        v43 = *(v30 + 24);
        if (!v43)
        {
          break;
        }

        v44 = new_OrgApacheLuceneUtilAutomatonStatePair_initWithInt_withInt_(*(v41 + 12), *(v43 + 12));
        if (![(JavaUtilHashSet *)v7 containsWithId:v44])
        {
          [(JavaUtilLinkedList *)v52 addWithId:v44];
          [(JavaUtilHashSet *)v7 addWithId:v44];
        }

        ++v31;
        v30 += 8;
        if (v31 >= *(v19 + 8))
        {
          goto LABEL_72;
        }
      }

LABEL_81:
      JreThrowNullPointerException();
    }

    return 1;
  }

  return OrgApacheLuceneUtilAutomatonOperations_isEmptyWithOrgApacheLuceneUtilAutomatonAutomaton_(v3);
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonOperations_union__WithOrgApacheLuceneUtilAutomatonAutomaton_withOrgApacheLuceneUtilAutomatonAutomaton_(uint64_t a1, uint64_t a2)
{
  v5[0] = a1;
  v5[1] = a2;
  v2 = [IOSObjectArray arrayWithObjects:v5 count:2 type:OrgApacheLuceneUtilAutomatonAutomaton_class_()];
  v3 = JavaUtilArrays_asListWithNSObjectArray_(v2);
  return OrgApacheLuceneUtilAutomatonOperations_union__WithJavaUtilCollection_(v3);
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonOperations_union__WithJavaUtilCollection_(void *a1)
{
  v2 = new_OrgApacheLuceneUtilAutomatonAutomaton_init();
  [(OrgApacheLuceneUtilAutomatonAutomaton *)v2 createState];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  if (!a1)
  {
LABEL_20:
    JreThrowNullPointerException();
  }

  v3 = [a1 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(a1);
        }

        [(OrgApacheLuceneUtilAutomatonAutomaton *)v2 copy__WithOrgApacheLuceneUtilAutomatonAutomaton:*(*(&v18 + 1) + 8 * i)];
      }

      v4 = [a1 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [a1 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    v10 = 1;
    do
    {
      for (j = 0; j != v8; j = j + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(a1);
        }

        v12 = *(*(&v14 + 1) + 8 * j);
        if (!v12)
        {
          goto LABEL_20;
        }

        if ([*(*(&v14 + 1) + 8 * j) getNumStates])
        {
          [(OrgApacheLuceneUtilAutomatonAutomaton *)v2 addEpsilonWithInt:0 withInt:v10];
          v10 = [v12 getNumStates] + v10;
        }
      }

      v8 = [a1 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v8);
  }

  [(OrgApacheLuceneUtilAutomatonAutomaton *)v2 finishState];
  return OrgApacheLuceneUtilAutomatonOperations_removeDeadStatesWithOrgApacheLuceneUtilAutomatonAutomaton_(v2);
}

id OrgApacheLuceneUtilAutomatonOperations_determinizeWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(void *a1, int a2)
{
  if (!a1)
  {
    goto LABEL_70;
  }

  if (([a1 isDeterministic] & 1) != 0 || objc_msgSend(a1, "getNumStates") < 2)
  {
    return a1;
  }

  v4 = new_OrgApacheLuceneUtilAutomatonAutomaton_Builder_init();
  v5 = new_OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet_initWithInt_withInt_(0, 0);
  [(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)v4 createState];
  v6 = new_JavaUtilLinkedList_init();
  v7 = new_JavaUtilHashMap_init();
  [(JavaUtilLinkedList *)v6 addWithId:v5];
  -[OrgApacheLuceneUtilAutomatonAutomaton_Builder setAcceptWithInt:withBoolean:](v4, "setAcceptWithInt:withBoolean:", 0, [a1 isAcceptWithInt:0]);
  v62 = v7;
  [(JavaUtilHashMap *)v7 putWithId:v5 withId:JavaLangInteger_valueOfWithInt_(0)];
  v8 = [OrgApacheLuceneUtilAutomatonOperations_PointTransitionSet alloc];
  sub_1000D0D54(v8);
  v9 = v8;
  v10 = new_OrgApacheLuceneUtilAutomatonSortedIntSet_initWithInt_(5);
  v11 = new_OrgApacheLuceneUtilAutomatonTransition_init();
  if ([(JavaUtilLinkedList *)v6 size]>= 1)
  {
    v63 = v4;
    v59 = v6;
    do
    {
      v12 = [(JavaUtilLinkedList *)v6 removeFirst];
      if (!v12)
      {
        goto LABEL_70;
      }

      v13 = v12;
      v14 = v12[1];
      if (!v14)
      {
        goto LABEL_70;
      }

      v15 = 0;
      while (v15 < *(v14 + 8))
      {
        v16 = *(v14 + 12 + 4 * v15);
        v17 = [a1 getNumTransitionsWithInt:v16];
        [a1 initTransitionWithInt:v16 withOrgApacheLuceneUtilAutomatonTransition:v11];
        if (v17 >= 1)
        {
          do
          {
            [a1 getNextTransitionWithOrgApacheLuceneUtilAutomatonTransition:v11];
            [(OrgApacheLuceneUtilAutomatonOperations_PointTransitionSet *)v9 addWithOrgApacheLuceneUtilAutomatonTransition:v11];
            --v17;
          }

          while (v17);
        }

        ++v15;
        v14 = v13[1];
        if (!v14)
        {
          goto LABEL_70;
        }
      }

      if (v9->count_)
      {
        [(OrgApacheLuceneUtilAutomatonOperations_PointTransitionSet *)v9 sort];
        if (v9->count_ >= 1)
        {
          v18 = 0;
          v19 = 0;
          v61 = *(v13 + 5);
          v20 = 0xFFFFFFFFLL;
          while (1)
          {
            points = v9->points_;
            if (!points)
            {
              break;
            }

            size = points->super.size_;
            if (v18 >= size)
            {
              IOSArray_throwOutOfBoundsWithMsg(size, v18);
            }

            v23 = (&points->elementType_)[v18];
            if (!v23)
            {
              break;
            }

            isa = v23[1].super.isa;
            if (v10->upto_ >= 1)
            {
              [(OrgApacheLuceneUtilAutomatonSortedIntSet *)v10 computeHash];
              v25 = [(JavaUtilHashMap *)v62 getWithId:v10];
              if (!v25)
              {
                v25 = JavaLangInteger_valueOfWithInt_([(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)v4 createState]);
                if ([(JavaLangInteger *)v25 intValue]>= a2)
                {
                  v58 = new_OrgApacheLuceneUtilAutomatonTooComplexToDeterminizeException_initWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(a1, a2);
                  objc_exception_throw(v58);
                }

                v64 = [(OrgApacheLuceneUtilAutomatonSortedIntSet *)v10 freezeWithInt:[(JavaLangInteger *)v25 intValue]];
                [(JavaUtilLinkedList *)v59 addWithId:v64];
                [(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)v4 setAcceptWithInt:[(JavaLangInteger *)v25 intValue] withBoolean:v19 > 0];
                [(JavaUtilHashMap *)v62 putWithId:v64 withId:v25];
                if (!v25)
                {
                  break;
                }
              }

              [(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)v4 addTransitionWithInt:v61 withInt:[(JavaLangInteger *)v25 intValue] withInt:v20 withInt:isa - 1];
            }

            v26 = v9->points_;
            v27 = v26->super.size_;
            if (v18 >= v27)
            {
              IOSArray_throwOutOfBoundsWithMsg(v27, v18);
            }

            v28 = (&v26->elementType_)[v18];
            if (!v28)
            {
              break;
            }

            v29 = v28[2].super.isa;
            if (!v29)
            {
              break;
            }

            v30 = *(v29 + 1);
            v31 = v9->points_;
            v32 = v31->super.size_;
            if (v18 >= v32)
            {
              IOSArray_throwOutOfBoundsWithMsg(v32, v18);
            }

            v33 = (&v31->elementType_)[v18];
            if (!v33)
            {
              break;
            }

            v65 = isa;
            v34 = *(v33[2].super.isa + 4);
            if (v34 >= 1)
            {
              if (!v30)
              {
                break;
              }

              v35 = 0;
              do
              {
                v36 = v35;
                v37 = *(v30 + 8);
                if (v35 < 0 || v35 >= v37)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v37, v35);
                }

                v38 = *(v30 + 12 + 4 * v35);
                [(OrgApacheLuceneUtilAutomatonSortedIntSet *)v10 decrWithInt:v38];
                v19 -= [a1 isAcceptWithInt:v38];
                v35 = v36 + 3;
              }

              while (v36 + 3 < v34);
            }

            v39 = v9->points_;
            v40 = v39->super.size_;
            if (v18 >= v40)
            {
              IOSArray_throwOutOfBoundsWithMsg(v40, v18);
            }

            v41 = (&v39->elementType_)[v18];
            if (!v41)
            {
              break;
            }

            *(v41[2].super.isa + 4) = 0;
            v42 = v9->points_;
            v43 = v42->super.size_;
            if (v18 >= v43)
            {
              IOSArray_throwOutOfBoundsWithMsg(v43, v18);
            }

            v44 = (&v42->elementType_)[v18];
            if (!v44)
            {
              break;
            }

            v45 = v44[3].super.isa;
            if (!v45)
            {
              break;
            }

            v46 = *(v45 + 1);
            v47 = v9->points_;
            v48 = v47->super.size_;
            if (v18 >= v48)
            {
              IOSArray_throwOutOfBoundsWithMsg(v48, v18);
            }

            v49 = (&v47->elementType_)[v18];
            if (!v49)
            {
              break;
            }

            v50 = *(v49[3].super.isa + 4);
            if (v50 >= 1)
            {
              if (!v46)
              {
                break;
              }

              v51 = 0;
              do
              {
                v52 = v51;
                v53 = *(v46 + 8);
                if (v51 < 0 || v51 >= v53)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v53, v51);
                }

                v54 = *(v46 + 12 + 4 * v51);
                [(OrgApacheLuceneUtilAutomatonSortedIntSet *)v10 incrWithInt:v54];
                v19 += [a1 isAcceptWithInt:v54];
                v51 = v52 + 3;
              }

              while (v52 + 3 < v50);
            }

            v55 = v9->points_;
            v56 = v55->super.size_;
            if (v18 >= v56)
            {
              IOSArray_throwOutOfBoundsWithMsg(v56, v18);
            }

            v57 = (&v55->elementType_)[v18];
            v4 = v63;
            v20 = v65;
            if (!v57)
            {
              break;
            }

            *(v57[3].super.isa + 4) = 0;
            v18 = (v18 + 1);
            if (v18 >= v9->count_)
            {
              goto LABEL_65;
            }
          }

LABEL_70:
          JreThrowNullPointerException();
        }

LABEL_65:
        [(OrgApacheLuceneUtilAutomatonOperations_PointTransitionSet *)v9 reset];
        v6 = v59;
      }
    }

    while ([(JavaUtilLinkedList *)v6 size]> 0);
  }

  return [(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)v4 finish];
}

uint64_t OrgApacheLuceneUtilAutomatonOperations_isEmptyWithOrgApacheLuceneUtilAutomatonAutomaton_(void *a1)
{
  if (!a1)
  {
LABEL_18:
    JreThrowNullPointerException();
  }

  if (![a1 getNumStates] || (objc_msgSend(a1, "isAcceptWithInt:", 0) & 1) == 0 && !objc_msgSend(a1, "getNumTransitionsWithInt:", 0))
  {
    return 1;
  }

  v2 = [a1 isAcceptWithInt:0];
  result = 0;
  if (v2)
  {
    return result;
  }

  v4 = new_JavaUtilLinkedList_init();
  v5 = new_JavaUtilBitSet_initWithInt_([a1 getNumStates]);
  [(JavaUtilLinkedList *)v4 addWithId:JavaLangInteger_valueOfWithInt_(0)];
  [(JavaUtilBitSet *)v5 setWithInt:0];
  v6 = new_OrgApacheLuceneUtilAutomatonTransition_init();
  if ([(JavaUtilAbstractCollection *)v4 isEmpty])
  {
    return 1;
  }

  do
  {
    v7 = [(JavaUtilLinkedList *)v4 removeFirst];
    if (!v7)
    {
      goto LABEL_18;
    }

    v8 = [v7 intValue];
    v9 = [a1 isAcceptWithInt:v8];
    if (v9)
    {
      break;
    }

    v10 = [a1 initTransitionWithInt:v8 withOrgApacheLuceneUtilAutomatonTransition:v6];
    if (v10 >= 1)
    {
      v11 = v10;
      do
      {
        [a1 getNextTransitionWithOrgApacheLuceneUtilAutomatonTransition:v6];
        if (![(JavaUtilBitSet *)v5 getWithInt:v6->dest_])
        {
          [(JavaUtilLinkedList *)v4 addWithId:JavaLangInteger_valueOfWithInt_(v6->dest_)];
          [(JavaUtilBitSet *)v5 setWithInt:v6->dest_];
        }

        --v11;
      }

      while (v11);
    }
  }

  while (![(JavaUtilAbstractCollection *)v4 isEmpty]);
  return v9 ^ 1;
}

id OrgApacheLuceneUtilAutomatonOperations_isTotalWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_withInt_(void *a1, int a2, int a3)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  result = [a1 isAcceptWithInt:0];
  if (result)
  {
    if ([a1 getNumTransitionsWithInt:0] == 1 && (v7 = new_OrgApacheLuceneUtilAutomatonTransition_init(), objc_msgSend(a1, "getTransitionWithInt:withInt:withOrgApacheLuceneUtilAutomatonTransition:", 0, 0, v7), !v7->dest_) && v7->min_ == a2)
    {
      return (v7->max_ == a3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id OrgApacheLuceneUtilAutomatonOperations_runWithOrgApacheLuceneUtilAutomatonAutomaton_withNSString_(void *a1, void *a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  if ([a2 length] < 1)
  {
    v4 = 0;
LABEL_8:

    return [a1 isAcceptWithInt:v4];
  }

  else
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v6 = [a2 codePointAt:v5];
      v7 = [a1 stepWithInt:v4 withInt:v6];
      if (v7 == -1)
      {
        return 0;
      }

      v4 = v7;
      v5 = JavaLangCharacter_charCountWithInt_(v6) + v5;
      if (v5 >= [a2 length])
      {
        goto LABEL_8;
      }
    }
  }
}

id OrgApacheLuceneUtilAutomatonOperations_runWithOrgApacheLuceneUtilAutomatonAutomaton_withOrgApacheLuceneUtilIntsRef_(void *a1, uint64_t a2)
{
  if (!a2)
  {
LABEL_16:
    JreThrowNullPointerException();
  }

  if (*(a2 + 20) < 1)
  {
    v4 = 0;
LABEL_12:

    return [a1 isAcceptWithInt:v4];
  }

  else
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v6 = *(a2 + 8);
      if (!v6)
      {
        goto LABEL_16;
      }

      v7 = *(v6 + 8);
      v8 = v5 + *(a2 + 16);
      if (v8 < 0 || v8 >= v7)
      {
        IOSArray_throwOutOfBoundsWithMsg(v7, v8);
      }

      v9 = [a1 stepWithInt:v4 withInt:*(v6 + 12 + 4 * v8)];
      if (v9 == -1)
      {
        return 0;
      }

      v4 = v9;
      if (++v5 >= *(a2 + 20))
      {
        goto LABEL_12;
      }
    }
  }
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonOperations_removeDeadStatesWithOrgApacheLuceneUtilAutomatonAutomaton_(void *a1)
{
  if (!a1)
  {
    goto LABEL_30;
  }

  v2 = [a1 getNumStates];
  v3 = sub_1000CFD10(a1);
  v4 = [IOSIntArray arrayWithLength:v2];
  v19 = new_OrgApacheLuceneUtilAutomatonAutomaton_init();
  if (v2 >= 1)
  {
    if (!v3)
    {
      goto LABEL_30;
    }

    v5 = 0;
    v6 = v4;
    do
    {
      if ([(JavaUtilBitSet *)v3 getWithInt:v5])
      {
        v7 = [(OrgApacheLuceneUtilAutomatonAutomaton *)v19 createState];
        size = v4->super.size_;
        if (v5 >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v5);
        }

        *(&v6->super.size_ + 1) = v7;
        v9 = v4->super.size_;
        if (v5 >= v9)
        {
          IOSArray_throwOutOfBoundsWithMsg(v9, v5);
        }

        -[OrgApacheLuceneUtilAutomatonAutomaton setAcceptWithInt:withBoolean:](v19, "setAcceptWithInt:withBoolean:", *(&v6->super.size_ + 1), [a1 isAcceptWithInt:v5]);
      }

      ++v5;
      v6 = (v6 + 4);
    }

    while (v2 != v5);
  }

  v10 = new_OrgApacheLuceneUtilAutomatonTransition_init();
  if (v2 < 1)
  {
    goto LABEL_29;
  }

  if (!v3)
  {
LABEL_30:
    JreThrowNullPointerException();
  }

  v11 = v10;
  v12 = 0;
  v18 = v2;
  do
  {
    if ([(JavaUtilBitSet *)v3 getWithInt:v12, v18])
    {
      v13 = [a1 initTransitionWithInt:v12 withOrgApacheLuceneUtilAutomatonTransition:v11];
      if (v13 >= 1)
      {
        v14 = v13;
        do
        {
          [a1 getNextTransitionWithOrgApacheLuceneUtilAutomatonTransition:v11];
          if ([(JavaUtilBitSet *)v3 getWithInt:v11->dest_])
          {
            v15 = v4->super.size_;
            if (v12 >= v15)
            {
              IOSArray_throwOutOfBoundsWithMsg(v15, v12);
            }

            dest = v11->dest_;
            if (dest < 0 || dest >= v15)
            {
              IOSArray_throwOutOfBoundsWithMsg(v15, dest);
            }

            [(OrgApacheLuceneUtilAutomatonAutomaton *)v19 addTransitionWithInt:*(&v4->super.size_ + v12 + 1) withInt:*(&v4->super.size_ + dest + 1) withInt:v11->min_ withInt:v11->max_];
          }

          --v14;
        }

        while (v14);
      }
    }

    ++v12;
  }

  while (v12 != v18);
LABEL_29:
  [(OrgApacheLuceneUtilAutomatonAutomaton *)v19 finishState];
  return v19;
}

uint64_t OrgApacheLuceneUtilAutomatonOperations_findIndexWithInt_withIntArray_(int a1, uint64_t a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v2 = *(a2 + 8);
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      v5 = (v2 + v4) >> 1;
      v6 = *(a2 + 8);
      if (v5 >= v6)
      {
        IOSArray_throwOutOfBoundsWithMsg(v6, (v2 + v4) >> 1);
      }

      v7 = *(a2 + 12 + 4 * v5);
      if (v7 <= a1)
      {
        v8 = *(a2 + 8);
        if (v5 >= v8)
        {
          IOSArray_throwOutOfBoundsWithMsg(v8, (v2 + v4) >> 1);
        }

        v4 = (v2 + v4) >> 1;
        if (v7 >= a1)
        {
          return v5;
        }
      }

      else
      {
        v2 = (v2 + v4) >> 1;
        v5 = v4;
      }

      if (v2 - v4 <= 1)
      {
        return v5;
      }
    }
  }

  return 0;
}

BOOL OrgApacheLuceneUtilAutomatonOperations_isFiniteWithOrgApacheLuceneUtilAutomatonAutomaton_(void *a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  if (![a1 getNumStates])
  {
    return 1;
  }

  v2 = new_OrgApacheLuceneUtilAutomatonTransition_init();
  v3 = new_JavaUtilBitSet_initWithInt_([a1 getNumStates]);
  v4 = new_JavaUtilBitSet_initWithInt_([a1 getNumStates]);

  return sub_1000D00B4(v2, a1, 0, v3, v4);
}

NSString *OrgApacheLuceneUtilAutomatonOperations_getCommonPrefixWithOrgApacheLuceneUtilAutomatonAutomaton_(void *a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  if (([a1 isDeterministic] & 1) == 0)
  {
    v7 = new_JavaLangIllegalArgumentException_initWithNSString_(@"input automaton must be deterministic");
    objc_exception_throw(v7);
  }

  v2 = new_JavaLangStringBuilder_init();
  v3 = new_JavaUtilHashSet_init();
  v4 = new_OrgApacheLuceneUtilAutomatonTransition_init();
  [(JavaUtilHashSet *)v3 addWithId:JavaLangInteger_valueOfWithInt_(0)];
  if (([a1 isAcceptWithInt:0] & 1) == 0)
  {
    dest = 0;
    do
    {
      if ([a1 getNumTransitionsWithInt:dest] != 1)
      {
        break;
      }

      [a1 getTransitionWithInt:dest withInt:0 withOrgApacheLuceneUtilAutomatonTransition:v4];
      if (v4->min_ != v4->max_)
      {
        break;
      }

      if ([(JavaUtilHashSet *)v3 containsWithId:JavaLangInteger_valueOfWithInt_(v4->dest_)])
      {
        break;
      }

      [(JavaLangStringBuilder *)v2 appendCodePointWithInt:v4->min_];
      dest = v4->dest_;
      [(JavaUtilHashSet *)v3 addWithId:JavaLangInteger_valueOfWithInt_(v4->dest_)];
    }

    while (![a1 isAcceptWithInt:dest]);
  }

  return [(JavaLangStringBuilder *)v2 description];
}

id OrgApacheLuceneUtilAutomatonOperations_getCommonPrefixBytesRefWithOrgApacheLuceneUtilAutomatonAutomaton_(void *a1)
{
  v2 = new_OrgApacheLuceneUtilBytesRefBuilder_init();
  v3 = new_JavaUtilHashSet_init();
  v4 = new_OrgApacheLuceneUtilAutomatonTransition_init();
  [(JavaUtilHashSet *)v3 addWithId:JavaLangInteger_valueOfWithInt_(0)];
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  if (([a1 isAcceptWithInt:0] & 1) == 0)
  {
    dest = 0;
    do
    {
      if ([a1 getNumTransitionsWithInt:dest] != 1)
      {
        break;
      }

      [a1 getTransitionWithInt:dest withInt:0 withOrgApacheLuceneUtilAutomatonTransition:v4];
      if (v4->min_ != v4->max_)
      {
        break;
      }

      if ([(JavaUtilHashSet *)v3 containsWithId:JavaLangInteger_valueOfWithInt_(v4->dest_)])
      {
        break;
      }

      [(OrgApacheLuceneUtilBytesRefBuilder *)v2 appendWithByte:SLOBYTE(v4->min_)];
      dest = v4->dest_;
      [(JavaUtilHashSet *)v3 addWithId:JavaLangInteger_valueOfWithInt_(v4->dest_)];
    }

    while (![a1 isAcceptWithInt:dest]);
  }

  return [(OrgApacheLuceneUtilBytesRefBuilder *)v2 get];
}

id OrgApacheLuceneUtilAutomatonOperations_getSingletonWithOrgApacheLuceneUtilAutomatonAutomaton_(void *a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  if (([a1 isDeterministic] & 1) == 0)
  {
    v7 = new_JavaLangIllegalArgumentException_initWithNSString_(@"input automaton must be deterministic");
    objc_exception_throw(v7);
  }

  v2 = new_OrgApacheLuceneUtilIntsRefBuilder_init();
  v3 = new_JavaUtilHashSet_init();
  v4 = new_OrgApacheLuceneUtilAutomatonTransition_init();
  [(JavaUtilHashSet *)v3 addWithId:JavaLangInteger_valueOfWithInt_(0)];
  dest = 0;
  if (([a1 isAcceptWithInt:0] & 1) == 0)
  {
    dest = 0;
    while ([a1 getNumTransitionsWithInt:dest] == 1)
    {
      [a1 getTransitionWithInt:dest withInt:0 withOrgApacheLuceneUtilAutomatonTransition:v4];
      if (v4->min_ != v4->max_ || [(JavaUtilHashSet *)v3 containsWithId:JavaLangInteger_valueOfWithInt_(v4->dest_)])
      {
        break;
      }

      [(OrgApacheLuceneUtilIntsRefBuilder *)v2 appendWithInt:v4->min_];
      dest = v4->dest_;
      [(JavaUtilHashSet *)v3 addWithId:JavaLangInteger_valueOfWithInt_(v4->dest_)];
      if ([a1 isAcceptWithInt:dest])
      {
        goto LABEL_4;
      }
    }

    return 0;
  }

LABEL_4:
  if ([a1 getNumTransitionsWithInt:dest])
  {
    return 0;
  }

  return [(OrgApacheLuceneUtilIntsRefBuilder *)v2 get];
}

int *OrgApacheLuceneUtilAutomatonOperations_getCommonSuffixBytesRefWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(void *a1, int a2)
{
  v3 = OrgApacheLuceneUtilAutomatonOperations_reverseWithOrgApacheLuceneUtilAutomatonAutomaton_withJavaUtilSet_(a1, 0);
  v4 = OrgApacheLuceneUtilAutomatonOperations_determinizeWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(v3, a2);
  CommonPrefixBytesRefWithOrgApacheLuceneUtilAutomatonAutomaton = OrgApacheLuceneUtilAutomatonOperations_getCommonPrefixBytesRefWithOrgApacheLuceneUtilAutomatonAutomaton_(v4);
  if (!CommonPrefixBytesRefWithOrgApacheLuceneUtilAutomatonAutomaton)
  {
    goto LABEL_21;
  }

  v6 = CommonPrefixBytesRefWithOrgApacheLuceneUtilAutomatonAutomaton;
  v7 = CommonPrefixBytesRefWithOrgApacheLuceneUtilAutomatonAutomaton[5];
  if (v7 >= 2)
  {
    v8 = CommonPrefixBytesRefWithOrgApacheLuceneUtilAutomatonAutomaton[4];
    if (v8 < (v8 + (v7 >> 1)))
    {
      for (i = ~v8; ; --i)
      {
        v10 = *(v6 + 1);
        if (!v10)
        {
          break;
        }

        v11 = *(v10 + 8);
        if (v8 < 0 || v8 >= v11)
        {
          IOSArray_throwOutOfBoundsWithMsg(v11, v8);
        }

        v12 = *(v10 + 12 + v8);
        v13 = i + v6[5] + 2 * v6[4];
        if (v13 < 0 || v13 >= v11)
        {
          IOSArray_throwOutOfBoundsWithMsg(v11, v13);
        }

        if (v8 < 0 || v8 >= v11)
        {
          IOSArray_throwOutOfBoundsWithMsg(v11, v8);
        }

        *(*(v6 + 1) + 12 + v8) = *(*(v6 + 1) + 12 + v13);
        v14 = *(v6 + 1);
        v15 = *(v14 + 8);
        v16 = i + v6[5] + 2 * v6[4];
        if (v16 < 0 || v16 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, v16);
        }

        *(v14 + 12 + v16) = v12;
        if (++v8 >= (v6[4] + (v7 >> 1)))
        {
          return v6;
        }
      }

LABEL_21:
      JreThrowNullPointerException();
    }
  }

  return v6;
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonOperations_reverseWithOrgApacheLuceneUtilAutomatonAutomaton_withJavaUtilSet_(void *a1, void *a2)
{
  if (!OrgApacheLuceneUtilAutomatonOperations_isEmptyWithOrgApacheLuceneUtilAutomatonAutomaton_(a1))
  {
    if (!a1)
    {
      goto LABEL_25;
    }

    v6 = [a1 getNumStates];
    v7 = new_OrgApacheLuceneUtilAutomatonAutomaton_Builder_init();
    [(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)v7 createState];
    if (v6 >= 1)
    {
      v8 = v6;
      do
      {
        [(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)v7 createState];
        --v8;
      }

      while (v8);
    }

    [(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)v7 setAcceptWithInt:1 withBoolean:1];
    v9 = new_OrgApacheLuceneUtilAutomatonTransition_init();
    if (v6 >= 1)
    {
      v10 = v9;
      v11 = 0;
      do
      {
        v12 = [a1 getNumTransitionsWithInt:v11];
        [a1 initTransitionWithInt:v11 withOrgApacheLuceneUtilAutomatonTransition:v10];
        v11 = (v11 + 1);
        if (v12 >= 1)
        {
          do
          {
            [a1 getNextTransitionWithOrgApacheLuceneUtilAutomatonTransition:v10];
            [(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)v7 addTransitionWithInt:(v10->dest_ + 1) withInt:v11 withInt:v10->min_ withInt:v10->max_];
            --v12;
          }

          while (v12);
        }
      }

      while (v11 != v6);
    }

    v13 = [(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)v7 finish];
    v14 = [a1 getAcceptStates];
    if (v6 >= 1)
    {
      v15 = v14;
      if (!v14)
      {
        goto LABEL_25;
      }

      v16 = 0;
      while (1)
      {
        v17 = [v15 nextSetBitWithInt:v16];
        if (v17 == -1)
        {
          break;
        }

        if (!v13)
        {
          goto LABEL_25;
        }

        v16 = v17 + 1;
        [v13 addEpsilonWithInt:0 withInt:v16];
        if (a2)
        {
          [a2 addWithId:JavaLangInteger_valueOfWithInt_(v16)];
        }

        if (v16 >= v6)
        {
          goto LABEL_24;
        }
      }
    }

    if (v13)
    {
LABEL_24:
      [v13 finishState];
      return v13;
    }

LABEL_25:
    JreThrowNullPointerException();
  }

  v4 = new_OrgApacheLuceneUtilAutomatonAutomaton_init();

  return v4;
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonOperations_totalizeWithOrgApacheLuceneUtilAutomatonAutomaton_(void *a1)
{
  v2 = new_OrgApacheLuceneUtilAutomatonAutomaton_init();
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v3 = v2;
  v4 = [a1 getNumStates];
  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      [(OrgApacheLuceneUtilAutomatonAutomaton *)v3 createState];
      -[OrgApacheLuceneUtilAutomatonAutomaton setAcceptWithInt:withBoolean:](v3, "setAcceptWithInt:withBoolean:", v5, [a1 isAcceptWithInt:v5]);
      v5 = (v5 + 1);
    }

    while (v4 != v5);
  }

  v6 = [(OrgApacheLuceneUtilAutomatonAutomaton *)v3 createState];
  [(OrgApacheLuceneUtilAutomatonAutomaton *)v3 addTransitionWithInt:v6 withInt:v6 withInt:0 withInt:1114111];
  v7 = new_OrgApacheLuceneUtilAutomatonTransition_init();
  if (v4 >= 1)
  {
    v8 = v7;
    v9 = 0;
    v16 = v4;
    do
    {
      v10 = [a1 initTransitionWithInt:v9 withOrgApacheLuceneUtilAutomatonTransition:v8];
      if (v10 < 1)
      {
        v12 = 0;
      }

      else
      {
        v11 = v10;
        v12 = 0;
        do
        {
          [a1 getNextTransitionWithOrgApacheLuceneUtilAutomatonTransition:v8];
          [(OrgApacheLuceneUtilAutomatonAutomaton *)v3 addTransitionWithInt:v9 withInt:v8[3] withInt:v8[4] withInt:v8[5]];
          v13 = v8[4];
          if (v13 > v12)
          {
            [(OrgApacheLuceneUtilAutomatonAutomaton *)v3 addTransitionWithInt:v9 withInt:v6 withInt:v12 withInt:(v13 - 1)];
          }

          v14 = v8[5];
          if ((v14 + 1) > v12)
          {
            v12 = v14 + 1;
          }

          else
          {
            v12 = v12;
          }

          --v11;
        }

        while (v11);
        if (v12 >= 1114112)
        {
          goto LABEL_19;
        }
      }

      [(OrgApacheLuceneUtilAutomatonAutomaton *)v3 addTransitionWithInt:v9 withInt:v6 withInt:v12 withInt:1114111];
LABEL_19:
      v9 = (v9 + 1);
    }

    while (v9 != v16);
  }

  [(OrgApacheLuceneUtilAutomatonAutomaton *)v3 finishState];
  return v3;
}

IOSIntArray *OrgApacheLuceneUtilAutomatonOperations_topoSortStatesWithOrgApacheLuceneUtilAutomatonAutomaton_(void *a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  if ([a1 getNumStates])
  {
    v2 = [a1 getNumStates];
    v3 = [IOSIntArray arrayWithLength:v2];
    v4 = new_JavaUtilBitSet_initWithInt_(v2);
    v5 = sub_1000D01F0(a1, v4, v3, 0, 0);
    size = v3->super.size_;
    if (v5 < size)
    {
      v7 = [IOSIntArray arrayWithLength:v5];
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v3, 0, v7, 0, v5);
      size = v7->super.size_;
      v3 = v7;
    }

    if (size >= 2)
    {
      v9 = 0;
      v10 = -1;
      do
      {
        if (v9 >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v9);
        }

        v11 = *(&v3->super.size_ + v9 + 1);
        v12 = v3->super.size_;
        v13 = v10 + v12;
        if (v10 + v12 < 0 || v13 >= v12)
        {
          IOSArray_throwOutOfBoundsWithMsg(v12, v13);
        }

        if (v9 >= v12)
        {
          IOSArray_throwOutOfBoundsWithMsg(v12, v9);
        }

        *(&v3->super.size_ + v9 + 1) = *(&v3->super.size_ + v10 + v12 + 1);
        v14 = v3->super.size_;
        v15 = v10 + v14;
        if (v10 + v14 < 0 || v15 >= v14)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, v15);
        }

        *(&v3->super.size_ + v15 + 1) = v11;
        ++v9;
        size = v3->super.size_;
        --v10;
      }

      while (v9 < size / 2);
    }

    return v3;
  }

  else
  {

    return [IOSIntArray arrayWithLength:0];
  }
}

JavaUtilHashSet *sub_1000CFC6C(void *a1, int a2)
{
  if (!a1)
  {
    goto LABEL_8;
  }

  v4 = [a1 getNumStates];
  v5 = [a1 getAcceptStates];
  v6 = new_JavaUtilHashSet_init();
  if (v4 < 1)
  {
    return v6;
  }

  if (!v5)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  v7 = 0;
  do
  {
    v8 = [v5 nextSetBitWithInt:v7];
    if (v8 == -1)
    {
      break;
    }

    v9 = v8;
    [(JavaUtilHashSet *)v6 addWithId:JavaLangInteger_valueOfWithInt_(v8 + a2)];
    v7 = v9 + 1;
  }

  while (v7 < v4);
  return v6;
}

JavaUtilBitSet *sub_1000CFD10(void *a1)
{
  v2 = sub_1000CFD58(a1);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  v3 = v2;
  [(JavaUtilBitSet *)v2 and__WithJavaUtilBitSet:sub_1000CFE80(a1)];
  return v3;
}

JavaUtilBitSet *sub_1000CFD58(void *a1)
{
  if (!a1)
  {
    goto LABEL_12;
  }

  v2 = [a1 getNumStates];
  v3 = new_JavaUtilBitSet_initWithInt_(v2);
  if (v2)
  {
    v4 = new_JavaUtilLinkedList_init();
    [(JavaUtilBitSet *)v3 setWithInt:0];
    [(JavaUtilLinkedList *)v4 addWithId:JavaLangInteger_valueOfWithInt_(0)];
    v5 = new_OrgApacheLuceneUtilAutomatonTransition_init();
    if (![(JavaUtilAbstractCollection *)v4 isEmpty])
    {
      while (1)
      {
        v6 = [(JavaUtilLinkedList *)v4 removeFirst];
        if (!v6)
        {
          break;
        }

        v7 = [a1 initTransitionWithInt:objc_msgSend(v6 withOrgApacheLuceneUtilAutomatonTransition:{"intValue"), v5}];
        if (v7 >= 1)
        {
          v8 = v7;
          do
          {
            [a1 getNextTransitionWithOrgApacheLuceneUtilAutomatonTransition:v5];
            if (![(JavaUtilBitSet *)v3 getWithInt:v5->dest_])
            {
              [(JavaUtilBitSet *)v3 setWithInt:v5->dest_];
              [(JavaUtilLinkedList *)v4 addWithId:JavaLangInteger_valueOfWithInt_(v5->dest_)];
            }

            --v8;
          }

          while (v8);
        }

        if ([(JavaUtilAbstractCollection *)v4 isEmpty])
        {
          return v3;
        }
      }

LABEL_12:
      JreThrowNullPointerException();
    }
  }

  return v3;
}

JavaUtilBitSet *sub_1000CFE80(void *a1)
{
  v2 = new_OrgApacheLuceneUtilAutomatonAutomaton_Builder_init();
  v3 = new_OrgApacheLuceneUtilAutomatonTransition_init();
  if (!a1)
  {
    goto LABEL_25;
  }

  v4 = v3;
  v5 = [a1 getNumStates];
  v6 = v5;
  if (v5 >= 1)
  {
    v7 = v5;
    do
    {
      [(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)v2 createState];
      --v7;
    }

    while (v7);
    if (v6 >= 1)
    {
      v8 = 0;
      do
      {
        v9 = [a1 initTransitionWithInt:v8 withOrgApacheLuceneUtilAutomatonTransition:v4];
        if (v9 >= 1)
        {
          do
          {
            [a1 getNextTransitionWithOrgApacheLuceneUtilAutomatonTransition:v4];
            [(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)v2 addTransitionWithInt:v4->dest_ withInt:v8 withInt:v4->min_ withInt:v4->max_];
            --v9;
          }

          while (v9);
        }

        v8 = (v8 + 1);
      }

      while (v8 != v6);
    }
  }

  v10 = [(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)v2 finish];
  v11 = new_JavaUtilLinkedList_init();
  v12 = new_JavaUtilBitSet_initWithInt_(v6);
  v13 = [a1 getAcceptStates];
  if (v6 >= 1)
  {
    v14 = v13;
    if (!v13)
    {
      goto LABEL_25;
    }

    v15 = 0;
    do
    {
      v16 = [v14 nextSetBitWithInt:v15];
      if (v16 == -1)
      {
        break;
      }

      v17 = v16;
      [(JavaUtilBitSet *)v12 setWithInt:v16];
      [(JavaUtilLinkedList *)v11 addWithId:JavaLangInteger_valueOfWithInt_(v17)];
      v15 = (v17 + 1);
    }

    while (v15 < v6);
  }

  if (![(JavaUtilAbstractCollection *)v11 isEmpty])
  {
    while (1)
    {
      v18 = [(JavaUtilLinkedList *)v11 removeFirst];
      if (!v18)
      {
        break;
      }

      v19 = [v18 intValue];
      if (!v10)
      {
        break;
      }

      v20 = [v10 initTransitionWithInt:v19 withOrgApacheLuceneUtilAutomatonTransition:v4];
      if (v20 >= 1)
      {
        v21 = v20;
        do
        {
          [v10 getNextTransitionWithOrgApacheLuceneUtilAutomatonTransition:v4];
          if (![(JavaUtilBitSet *)v12 getWithInt:v4->dest_])
          {
            [(JavaUtilBitSet *)v12 setWithInt:v4->dest_];
            [(JavaUtilLinkedList *)v11 addWithId:JavaLangInteger_valueOfWithInt_(v4->dest_)];
          }

          --v21;
        }

        while (v21);
      }

      if ([(JavaUtilAbstractCollection *)v11 isEmpty])
      {
        return v12;
      }
    }

LABEL_25:
    JreThrowNullPointerException();
  }

  return v12;
}

BOOL sub_1000D00B4(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  if (!a4)
  {
    goto LABEL_16;
  }

  [a4 setWithInt:?];
  if (!a2)
  {
    goto LABEL_16;
  }

  v10 = [a2 initTransitionWithInt:a3 withOrgApacheLuceneUtilAutomatonTransition:a1];
  if (v10 < 1)
  {
    [a4 clearWithInt:a3];
    if (a5)
    {
      v12 = 1;
      goto LABEL_14;
    }

LABEL_16:
    JreThrowNullPointerException();
  }

  v11 = v10;
  v12 = 0;
  v13 = 0;
  do
  {
    [a2 getTransitionWithInt:a3 withInt:v13 withOrgApacheLuceneUtilAutomatonTransition:a1];
    if (!a1)
    {
      goto LABEL_16;
    }

    if ([a4 getWithInt:*(a1 + 12)])
    {
      return v12;
    }

    if (!a5)
    {
      goto LABEL_16;
    }

    if (([a5 getWithInt:*(a1 + 12)] & 1) == 0 && !sub_1000D00B4(a1, a2, *(a1 + 12), a4, a5))
    {
      return v12;
    }

    v13 = (v13 + 1);
    v12 = v13 >= v11;
  }

  while (v11 != v13);
  [a4 clearWithInt:a3];
LABEL_14:
  [a5 setWithInt:a3];
  return v12;
}

uint64_t sub_1000D01F0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = new_OrgApacheLuceneUtilAutomatonTransition_init();
  if (!a1)
  {
    goto LABEL_12;
  }

  v11 = v10;
  v12 = [a1 initTransitionWithInt:a5 withOrgApacheLuceneUtilAutomatonTransition:v10];
  if (v12 >= 1)
  {
    v13 = v12;
    while (1)
    {
      [a1 getNextTransitionWithOrgApacheLuceneUtilAutomatonTransition:v11];
      if (!a2)
      {
        break;
      }

      if (([a2 getWithInt:v11->dest_] & 1) == 0)
      {
        [a2 setWithInt:v11->dest_];
        a4 = sub_1000D01F0(a1, a2, a3, a4, v11->dest_);
      }

      if (!--v13)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    JreThrowNullPointerException();
  }

LABEL_8:
  if (!a3)
  {
    goto LABEL_12;
  }

  v14 = *(a3 + 8);
  if ((a4 & 0x80000000) != 0 || a4 >= v14)
  {
    IOSArray_throwOutOfBoundsWithMsg(v14, a4);
  }

  *(a3 + 12 + 4 * a4) = a5;
  return (a4 + 1);
}

void *sub_1000D0628(uint64_t a1)
{
  v2 = sub_1000D0E1C();
  JreStrongAssignAndConsume((a1 + 16), v2);
  v3 = sub_1000D0E1C();

  return JreStrongAssignAndConsume((a1 + 24), v3);
}

id sub_1000D06FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = (a1 + 16);
  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_13;
  }

  v12 = *(a1 + 8);
  v13 = *(v9 + 8);
  if (v12 == v13)
  {
    if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1000120A8();
    }

    v14 = OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(v12 + 1, OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF_, a3, a4, a5, a6, a7, a8);
    if (qword_1005544F8 != -1)
    {
      sub_1000D0E68();
    }

    v15 = [IOSObjectArray arrayWithLength:v14 type:qword_1005544F0];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(a1 + 16), 0, v15, 0, *(a1 + 8));
    JreStrongAssign(v8, v15);
    v9 = *(a1 + 16);
    v12 = *(a1 + 8);
    v13 = *(v9 + 8);
  }

  if (v12 < 0 || v12 >= v13)
  {
    IOSArray_throwOutOfBoundsWithMsg(v13, v12);
  }

  v16 = *(v9 + 24 + 8 * v12);
  if (!v16)
  {
    v17 = *(a1 + 16);
    v18 = *(a1 + 8);
    v19 = [OrgApacheLuceneUtilAutomatonOperations_PointTransitions alloc];
    sub_1000D0628(v19);
    v16 = IOSObjectArray_SetAndConsume(v17, v18, v19);
    if (!v16)
    {
LABEL_13:
      JreThrowNullPointerException();
    }
  }

  [v16 resetWithInt:a2];
  ++*(a1 + 8);
  return v16;
}

id sub_1000D0884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 32))
  {
    v10 = JavaLangInteger_valueOfWithInt_(a2);
    v11 = *(a1 + 24);
    if (!v11)
    {
LABEL_27:
      JreThrowNullPointerException();
    }

    v18 = [v11 getWithId:v10];
    if (!v18)
    {
      v18 = sub_1000D06FC(a1, a2, v12, v13, v14, v15, v16, v17);
      [*(a1 + 24) putWithId:v10 withId:v18];
    }
  }

  else if (*(a1 + 8) < 1)
  {
LABEL_14:
    v18 = sub_1000D06FC(a1, a2, a3, a4, a5, a6, a7, a8);
    if (*(a1 + 8) == 30)
    {
      v23 = 0;
      do
      {
        v24 = *(a1 + 16);
        if (!v24)
        {
          goto LABEL_27;
        }

        v25 = *(a1 + 24);
        v26 = *(v24 + 8);
        if (v23 >= v26)
        {
          IOSArray_throwOutOfBoundsWithMsg(v26, v23);
        }

        v27 = *(v24 + 24 + 8 * v23);
        if (!v27)
        {
          goto LABEL_27;
        }

        v28 = JavaLangInteger_valueOfWithInt_(*(v27 + 8));
        v29 = *(a1 + 16);
        v30 = *(v29 + 8);
        if (v23 >= v30)
        {
          IOSArray_throwOutOfBoundsWithMsg(v30, v23);
        }

        [v25 putWithId:v28 withId:*(v29 + 24 + 8 * v23++)];
      }

      while (v23 < *(a1 + 8));
      *(a1 + 32) = 1;
    }
  }

  else
  {
    v19 = 0;
    while (1)
    {
      v20 = *(a1 + 16);
      if (!v20)
      {
        goto LABEL_27;
      }

      v21 = *(v20 + 8);
      if (v19 >= v21)
      {
        IOSArray_throwOutOfBoundsWithMsg(v21, v19);
      }

      v22 = *(v20 + 24 + 8 * v19);
      if (!v22)
      {
        goto LABEL_27;
      }

      if (*(v22 + 8) == a2)
      {
        break;
      }

      if (++v19 >= *(a1 + 8))
      {
        goto LABEL_14;
      }
    }

    v31 = *(a1 + 16);
    v32 = *(v31 + 8);
    if (v19 >= v32)
    {
      IOSArray_throwOutOfBoundsWithMsg(v32, v19);
    }

    return *(v31 + 24 + 8 * v19);
  }

  return v18;
}

void *sub_1000D0D54(uint64_t a1)
{
  if (qword_1005544F8 != -1)
  {
    sub_1000D0E68();
  }

  JreStrongAssignAndConsume((a1 + 16), [IOSObjectArray newArrayWithLength:5 type:qword_1005544F0]);
  v2 = new_JavaUtilHashMap_init();
  result = JreStrongAssignAndConsume((a1 + 24), v2);
  *(a1 + 32) = 0;
  return result;
}

OrgApacheLuceneUtilAutomatonOperations_TransitionList *sub_1000D0E1C()
{
  v0 = [OrgApacheLuceneUtilAutomatonOperations_TransitionList alloc];
  JreStrongAssignAndConsume(&v0->transitions_, [IOSIntArray newArrayWithLength:3]);
  return v0;
}

OrgApacheLuceneUtilPackedBulkOperationPacked10 *new_OrgApacheLuceneUtilPackedBulkOperationPacked10_init()
{
  v0 = [OrgApacheLuceneUtilPackedBulkOperationPacked10 alloc];
  OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(v0, 10);
  return v0;
}

void *OrgApacheLuceneUtilFstBytesStore_initWithInt_(uint64_t a1, int a2)
{
  OrgApacheLuceneStoreDataOutput_init();
  v4 = new_JavaUtilArrayList_init();
  result = JreStrongAssignAndConsume((a1 + 16), v4);
  *(a1 + 28) = a2;
  *(a1 + 24) = 1 << a2;
  *(a1 + 32) = *(a1 + 24) - 1;
  *(a1 + 48) = *(a1 + 24);
  return result;
}

_DWORD *OrgApacheLuceneUtilFstBytesStore_initWithOrgApacheLuceneStoreDataInput_withLong_withInt_(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  OrgApacheLuceneStoreDataOutput_init();
  v8 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume((a1 + 16), v8);
  v9 = 2;
  v10 = 2;
  v11 = 1;
  if (a4 >= 3 && a3 >= 3)
  {
    v10 = 2;
    do
    {
      v10 *= 2;
      ++v11;
      v9 = v10;
    }

    while (v10 < a4 && v10 < a3);
  }

  *(a1 + 28) = v11;
  *(a1 + 24) = v10;
  *(a1 + 32) = v10 - 1;
  if (a3 >= 1)
  {
    while (1)
    {
      v12 = JavaLangMath_minWithLong_withLong_(v9, a3);
      v13 = [IOSByteArray arrayWithLength:v12];
      if (!a2)
      {
        break;
      }

      v14 = v13;
      [a2 readBytesWithByteArray:v13 withInt:0 withInt:v13->super.size_];
      [*(a1 + 16) addWithId:v14];
      a3 -= v12;
      if (a3 <= 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    JreThrowNullPointerException();
  }

LABEL_9:
  result = [*(a1 + 16) getWithInt:{objc_msgSend(*(a1 + 16), "size") - 1}];
  if (!result)
  {
    goto LABEL_11;
  }

  *(a1 + 48) = result[2];
  return result;
}

OrgApacheLuceneUtilFstBytesStore *new_OrgApacheLuceneUtilFstBytesStore_initWithInt_(int a1)
{
  v2 = [OrgApacheLuceneUtilFstBytesStore alloc];
  OrgApacheLuceneUtilFstBytesStore_initWithInt_(v2, a1);
  return v2;
}

OrgApacheLuceneUtilFstBytesStore *new_OrgApacheLuceneUtilFstBytesStore_initWithOrgApacheLuceneStoreDataInput_withLong_withInt_(void *a1, uint64_t a2, int a3)
{
  v6 = [OrgApacheLuceneUtilFstBytesStore alloc];
  OrgApacheLuceneUtilFstBytesStore_initWithOrgApacheLuceneStoreDataInput_withLong_withInt_(v6, a1, a2, a3);
  return v6;
}

uint64_t OrgApacheLuceneUtilFstBytesStore_class_()
{
  if ((atomic_load_explicit(&OrgApacheLuceneUtilFstBytesStore__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000D45C4();
  }

  if (qword_100554510 != -1)
  {
    sub_1000D45D0();
  }

  return qword_100554508;
}

id sub_1000D44B8(uint64_t a1, id *a2)
{
  JreStrongAssign((a1 + 16), a2);
  OrgApacheLuceneUtilFstFST_BytesReader_init(a1, v4);
  v5 = a2[2];
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  if ([v5 size])
  {
    v6 = [a2[2] getWithInt:0];
  }

  else
  {
    v6 = 0;
  }

  result = JreStrongAssign((a1 + 24), v6);
  *(a1 + 32) = -1;
  *(a1 + 36) = 0;
  return result;
}

OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor *new_OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor_initWithOrgApacheLuceneCodecsStoredFieldsWriter_withOrgApacheLuceneIndexMergeState_withInt_(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor alloc];
  OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor_initWithOrgApacheLuceneCodecsStoredFieldsWriter_withOrgApacheLuceneIndexMergeState_withInt_(v6, a1, a2, a3);
  return v6;
}

id OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor_initWithOrgApacheLuceneCodecsStoredFieldsWriter_withOrgApacheLuceneIndexMergeState_withInt_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  JreStrongAssign((a1 + 56), a2);
  OrgApacheLuceneIndexStoredFieldVisitor_init(a1);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  if (!a3)
  {
    goto LABEL_21;
  }

  v7 = *(a3 + 56);
  if (!v7)
  {
    goto LABEL_21;
  }

  v8 = *(v7 + 8);
  if ((a4 & 0x80000000) != 0 || v8 <= a4)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, a4);
  }

  v9 = *(v7 + 24 + 8 * a4);
  if (!v9)
  {
LABEL_21:
    JreThrowNullPointerException();
  }

  result = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (result)
  {
    v11 = result;
    v12 = *v19;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(a3 + 16);
        if (!v14)
        {
          goto LABEL_21;
        }

        v15 = *(*(&v18 + 1) + 8 * v13);
        if (!v15)
        {
          goto LABEL_21;
        }

        v16 = [v14 fieldInfoWithInt:{*(v15 + 16), v18}];
        if (!v16)
        {
          return JreStrongAssign((a1 + 48), *(a3 + 16));
        }

        v17 = v16[1];
        if (!v17)
        {
          goto LABEL_21;
        }

        if (([v17 isEqual:*(v15 + 8)] & 1) == 0)
        {
          return JreStrongAssign((a1 + 48), *(a3 + 16));
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      result = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v11 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t OrgApacheLuceneSearchLeafFieldComparator_class_()
{
  if (qword_100554520 != -1)
  {
    sub_1000D4FE4();
  }

  return qword_100554518;
}

id OrgApacheLuceneIndexLeafReader_init(id *a1)
{
  OrgApacheLuceneIndexIndexReader_init(a1);
  v2 = new_OrgApacheLuceneIndexLeafReaderContext_initWithOrgApacheLuceneIndexLeafReader_(a1);
  JreStrongAssignAndConsume(a1 + 5, v2);
  v3 = [OrgApacheLuceneIndexLeafReader_LeafReaderClosedListener alloc];
  v4 = new_JavaLangRefWeakReference_initWithId_(a1);
  JreStrongAssignAndConsume(&v3->weakRef_, v4);
  v5 = v3;

  return [a1 addReaderClosedListenerWithOrgApacheLuceneIndexIndexReader_ReaderClosedListener:v5];
}

id OrgApacheLuceneIndexLeafReader_addCoreClosedListenerAsReaderClosedListenerWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneIndexLeafReader_CoreClosedListener_(void *a1, void *a2)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v4 = [OrgApacheLuceneIndexLeafReader_CoreClosedListenerWrapper alloc];
  JreStrongAssign(&v4->listener_, a2);
  v5 = v4;

  return [a1 addReaderClosedListenerWithOrgApacheLuceneIndexIndexReader_ReaderClosedListener:v5];
}
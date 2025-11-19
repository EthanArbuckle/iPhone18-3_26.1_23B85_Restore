uint64_t sub_10011EC60(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithNSObjectArray_(a2);
  v5 = (a2 + 24);
  v6 = a2 + 24 + 8 * *(a2 + 8);
  while (v5 < v6)
  {
    v8 = *v5++;
    v7 = v8;
    if (v8)
    {
      v4 += qword_100554758;
      v9 = *(v7 + 16);
      if (v9)
      {
        v10 = *(a1 + 40);
        if (!v10)
        {
          goto LABEL_16;
        }

        if (v9 != [v10 getNoOutput])
        {
          v4 += [*(a1 + 40) ramBytesUsedWithId:*(v7 + 16)];
        }
      }

      v11 = *(v7 + 48);
      if (v11)
      {
        v12 = *(a1 + 40);
        if (!v12)
        {
LABEL_16:
          JreThrowNullPointerException();
        }

        if (v11 != [v12 getNoOutput])
        {
          v4 += [*(a1 + 40) ramBytesUsedWithId:*(v7 + 48)];
        }
      }
    }
  }

  return v4;
}

void sub_10011F6A0(_Unwind_Exception *a1)
{
  objc_end_catch();
  objc_end_catch();
  _Unwind_Resume(a1);
}

OrgApacheLuceneUtilFstFST *OrgApacheLuceneUtilFstFST_readWithOrgLukhnosPortmobileFilePath_withOrgApacheLuceneUtilFstOutputs_(void *a1, void *a2)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilFstFST__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100122538();
  }

  v4 = OrgLukhnosPortmobileFileFiles_newInputStreamWithOrgLukhnosPortmobileFilePath_(a1);
  v5 = new_JavaIoBufferedInputStream_initWithJavaIoInputStream_(v4);
  v6 = new_OrgApacheLuceneStoreInputStreamDataInput_initWithJavaIoInputStream_(v5);
  v7 = [OrgApacheLuceneUtilFstFST alloc];
  OrgApacheLuceneUtilFstFST_initWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneUtilFstOutputs_withInt_(v7, v6, a2, OrgApacheLuceneUtilFstFST_DEFAULT_MAX_BLOCK_BITS_);
  v8 = v7;
  if (v4)
  {
    [(JavaIoFileInputStream *)v4 close];
  }

  return v8;
}

void sub_10011F800(_Unwind_Exception *a1)
{
  objc_end_catch();
  objc_end_catch();
  _Unwind_Resume(a1);
}

id sub_10011F82C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if ((atomic_load_explicit(OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100122558();
  }

  if (v6 == OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum_values_)
  {
    if (!a2)
    {
      goto LABEL_19;
    }

    return [a2 writeByteWithByte:a3];
  }

  else
  {
    v7 = *(a1 + 8);
    if ((atomic_load_explicit(OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100122558();
    }

    if (v7 != qword_100557B78)
    {
      if (a2)
      {

        return [a2 writeVIntWithInt:a3];
      }

LABEL_19:
      JreThrowNullPointerException();
    }

    if (!a2)
    {
      goto LABEL_19;
    }

    return [a2 writeShortWithShort:a3];
  }
}

BOOL OrgApacheLuceneUtilFstFST_targetHasArcsWithOrgApacheLuceneUtilFstFST_Arc_(uint64_t a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilFstFST__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100122538();
    if (a1)
    {
      return *(a1 + 32) > 0;
    }

LABEL_5:
    JreThrowNullPointerException();
  }

  if (!a1)
  {
    goto LABEL_5;
  }

  return *(a1 + 32) > 0;
}

id sub_100120BBC(uint64_t a1, void *a2)
{
  if (!a2)
  {
LABEL_30:
    JreThrowNullPointerException();
  }

  do
  {
    while (1)
    {
      v4 = [a2 readByte];
      result = [a1 readLabelWithOrgApacheLuceneStoreDataInput:a2];
      if ((atomic_load_explicit(OrgApacheLuceneUtilFstFST__initialized, memory_order_acquire) & 1) == 0)
      {
        result = sub_100122538();
      }

      if ((v4 & 0x10) != 0)
      {
        v6 = *(a1 + 40);
        if (!v6)
        {
          goto LABEL_30;
        }

        result = [v6 skipOutputWithOrgApacheLuceneStoreDataInput:a2];
      }

      if (atomic_load_explicit(OrgApacheLuceneUtilFstFST__initialized, memory_order_acquire))
      {
        if ((v4 & 0x20) == 0)
        {
          goto LABEL_11;
        }
      }

      else
      {
        result = sub_100122538();
        if ((v4 & 0x20) == 0)
        {
          goto LABEL_11;
        }
      }

      v7 = *(a1 + 40);
      if (!v7)
      {
        goto LABEL_30;
      }

      result = [v7 skipFinalOutputWithOrgApacheLuceneStoreDataInput:a2];
LABEL_11:
      if (atomic_load_explicit(OrgApacheLuceneUtilFstFST__initialized, memory_order_acquire))
      {
        if ((v4 & 8) != 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        result = sub_100122538();
        if ((v4 & 8) != 0)
        {
          goto LABEL_19;
        }
      }

      if (atomic_load_explicit(OrgApacheLuceneUtilFstFST__initialized, memory_order_acquire))
      {
        if ((v4 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        result = sub_100122538();
        if ((v4 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

      result = *(a1 + 56) == 1 || *(a1 + 96) > 3 ? [a2 readVLong] : objc_msgSend(a2, "readInt");
LABEL_19:
      if ((atomic_load_explicit(OrgApacheLuceneUtilFstFST__initialized, memory_order_acquire) & 1) == 0)
      {
        break;
      }

      if ((v4 & 2) != 0)
      {
        return result;
      }
    }

    result = sub_100122538();
  }

  while ((v4 & 2) == 0);
  return result;
}

id sub_100120D64(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, int a6)
{
  v6 = a4;
  if (a2 == -1)
  {
    if (!a3)
    {
      goto LABEL_49;
    }

    if ([a3 isFinal])
    {
      if (*(a3 + 32) <= 0)
      {
        if (!v6)
        {
          goto LABEL_49;
        }

        *(v6 + 40) = 2;
      }

      else
      {
        if (!v6)
        {
          goto LABEL_49;
        }

        *(v6 + 40) = 0;
        v16 = *(a3 + 32);
        *(v6 + 7) = v16;
        *(v6 + 3) = v16;
      }

      JreStrongAssign(v6 + 2, *(a3 + 48));
      *(v6 + 2) = -1;
      return v6;
    }

    return 0;
  }

  v9 = a2;
  if (a6)
  {
    v11 = *(a1 + 72);
    if (v11)
    {
      if (!a3)
      {
        goto LABEL_49;
      }

      if (*(a3 + 32) == *(a1 + 48))
      {
        v12 = *(v11 + 8);
        if (v12 > a2)
        {
          if ((a2 & 0x80000000) != 0)
          {
            IOSArray_throwOutOfBoundsWithMsg(v12, a2);
          }

          if (*(v11 + 24 + 8 * a2))
          {
            if (a4)
            {
              [a4 copyFromWithOrgApacheLuceneUtilFstFST_Arc:?];
              return v6;
            }

LABEL_49:
            JreThrowNullPointerException();
          }

          return 0;
        }
      }
    }
  }

  if (atomic_load_explicit(OrgApacheLuceneUtilFstFST__initialized, memory_order_acquire))
  {
    if (!a3)
    {
      goto LABEL_49;
    }
  }

  else
  {
    sub_100122538();
    if (!a3)
    {
      goto LABEL_49;
    }
  }

  v13 = *(a3 + 32);
  if (v13 < 1)
  {
    return 0;
  }

  if (!a5)
  {
    goto LABEL_49;
  }

  v14 = *(a1 + 80);
  if (v14)
  {
    v13 = [v14 getWithInt:?];
  }

  [a5 setPositionWithLong:v13];
  if (!v6)
  {
    goto LABEL_49;
  }

  *(v6 + 3) = *(a3 + 32);
  if ([a5 readByte] != 32)
  {
    [a1 readFirstRealTargetArcWithLong:*(a3 + 32) withOrgApacheLuceneUtilFstFST_Arc:v6 withOrgApacheLuceneUtilFstFST_BytesReader:a5];
    while (1)
    {
      v17 = *(v6 + 2);
      if (v17 == v9)
      {
        break;
      }

      if (v17 > v9 || ([v6 isLast] & 1) != 0)
      {
        return 0;
      }

      [a1 readNextRealArcWithOrgApacheLuceneUtilFstFST_Arc:v6 withOrgApacheLuceneUtilFstFST_BytesReader:a5];
    }

    return v6;
  }

  *(v6 + 20) = [a5 readVInt];
  if ((*(a1 + 56) & 1) != 0 || *(a1 + 96) >= 4)
  {
    v15 = [a5 readVInt];
  }

  else
  {
    v15 = [a5 readInt];
  }

  *(v6 + 18) = v15;
  *(v6 + 8) = [a5 getPosition];
  v18 = *(v6 + 20) - 1;
  if (v18 < 0)
  {
    return 0;
  }

  v19 = 0;
  while (1)
  {
    v20 = (v19 + v18) >> 1;
    [a5 setPositionWithLong:*(v6 + 8)];
    [a5 skipBytesWithLong:(*(v6 + 18) * v20 + 1)];
    v21 = [a1 readLabelWithOrgApacheLuceneStoreDataInput:a5];
    if ((v21 - v9) < 0)
    {
      v19 = v20 + 1;
      goto LABEL_42;
    }

    v18 = v20 - 1;
    if (v21 == v9)
    {
      break;
    }

LABEL_42:
    if (v19 > v18)
    {
      return 0;
    }
  }

  *(v6 + 19) = v18;

  return [a1 readNextRealArcWithOrgApacheLuceneUtilFstFST_Arc:v6 withOrgApacheLuceneUtilFstFST_BytesReader:a5];
}

id sub_100121180(uint64_t a1, void *a2, void *a3, int a4)
{
  *(a1 + 48) = -1;
  *(a1 + 96) = 5;
  *(a1 + 56) = 1;
  JreStrongAssign((a1 + 8), a2);
  JreStrongAssign((a1 + 32), 0);
  v7 = new_OrgApacheLuceneUtilFstBytesStore_initWithInt_(a4);
  JreStrongAssignAndConsume((a1 + 24), v7);

  return JreStrongAssign((a1 + 40), a3);
}

OrgApacheLuceneUtilFstFST *new_OrgApacheLuceneUtilFstFST_initWithOrgApacheLuceneUtilFstFST_INPUT_TYPEEnum_withOrgApacheLuceneUtilFstOutputs_withBoolean_withFloat_withInt_(void *a1, void *a2, int a3, int a4, float a5)
{
  v10 = [OrgApacheLuceneUtilFstFST alloc];
  OrgApacheLuceneUtilFstFST_initWithOrgApacheLuceneUtilFstFST_INPUT_TYPEEnum_withOrgApacheLuceneUtilFstOutputs_withBoolean_withFloat_withInt_(v10, a1, a2, a3, a4, a5);
  return v10;
}

OrgApacheLuceneUtilFstFST *new_OrgApacheLuceneUtilFstFST_initWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneUtilFstOutputs_(void *a1, void *a2)
{
  v4 = [OrgApacheLuceneUtilFstFST alloc];
  OrgApacheLuceneUtilFstFST_initWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneUtilFstOutputs_withInt_(v4, a1, a2, OrgApacheLuceneUtilFstFST_DEFAULT_MAX_BLOCK_BITS_);
  return v4;
}

uint64_t OrgApacheLuceneUtilFstFST_class_()
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilFstFST__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100122538();
  }

  if (qword_100554768 != -1)
  {
    sub_100122564();
  }

  return qword_100554760;
}

IOSObjectArray *OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum_values()
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100122558();
  }

  v0 = OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum_class_();

  return [IOSObjectArray arrayWithObjects:&OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum_values_ count:3 type:v0];
}

void *OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum_valueOfWithNSString_(void *a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100122558();
  }

  v2 = 0;
  while (1)
  {
    v3 = OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum_values_[v2];
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

uint64_t OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum_class_()
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100122558();
  }

  if (qword_100554778 != -1)
  {
    sub_100122578();
  }

  return qword_100554770;
}

uint64_t OrgApacheLuceneUtilFstFST_Arc_class_()
{
  if (qword_100554788 != -1)
  {
    sub_100122544();
  }

  return qword_100554780;
}

id ComAppleProactiveLuceneCRFTokenizer_init(uint64_t a1)
{
  OrgApacheLuceneAnalysisTokenizer_init(a1);
  v2 = [a1 addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()];
  JreStrongAssign((a1 + 56), v2);
  v3 = [a1 addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_()];
  JreStrongAssign((a1 + 64), v3);
  v4 = [a1 addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_()];
  result = JreStrongAssign((a1 + 72), v4);
  *(a1 + 104) = 1;
  return result;
}

id ComAppleProactiveLuceneCRFTokenizer_initWithNSString_(uint64_t a1, void *a2)
{
  OrgApacheLuceneAnalysisTokenizer_init(a1);
  v4 = [a1 addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()];
  JreStrongAssign((a1 + 56), v4);
  v5 = [a1 addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_()];
  JreStrongAssign((a1 + 64), v5);
  v6 = [a1 addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_()];
  JreStrongAssign((a1 + 72), v6);
  *(a1 + 104) = 1;

  return JreStrongAssign((a1 + 112), a2);
}

void sub_10012275C(uint64_t a1, __CFString *a2)
{
  v4 = [NSLocale localeWithLocaleIdentifier:*(a1 + 112)];
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetLetter);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v6 = [(NSLocale *)v4 copy];
  v21.location = 0;
  v21.length = 0;
  v20 = CFStringTokenizerCreate(kCFAllocatorDefault, 0, v21, 0, v6);
  v7 = v18[3];
  v22.length = [(__CFString *)a2 length];
  v22.location = 0;
  CFStringTokenizerSetString(v7, a2, v22);
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = -1;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v9 = sub_100122E1C;
  v10 = &unk_1003EA5D8;
  v13 = &v17;
  v14 = v16;
  v11 = a1;
  v12 = a2;
  v15 = Predefined;
    ;
  }

  CFRelease(v18[3]);
  _Block_object_dispose(v16, 8);
  _Block_object_dispose(&v17, 8);
}

void sub_1001228E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

ComAppleProactiveLuceneCRFTokenizer *new_ComAppleProactiveLuceneCRFTokenizer_initWithNSString_(void *a1)
{
  v2 = [ComAppleProactiveLuceneCRFTokenizer alloc];
  ComAppleProactiveLuceneCRFTokenizer_initWithNSString_(v2, a1);
  return v2;
}

uint64_t sub_100122E1C(uint64_t a1)
{
  CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(*(*(*(a1 + 48) + 8) + 24));
  location = CurrentTokenRange.location;
  v4 = *(*(*(a1 + 48) + 8) + 24);
  if (![*(a1 + 32) filterOnPartOfSpeechWithInt:_CFStringTokenizerGetCurrentTokenPartOfSpeech()])
  {
    return 1;
  }

  result = 1;
  if ((CurrentTokenRange.location & 0x8000000000000000) == 0 && CurrentTokenRange.length >= 1)
  {
    v6 = *(*(a1 + 56) + 8);
    if (*(v6 + 24) != CurrentTokenRange.location)
    {
      *(v6 + 24) = CurrentTokenRange.location;
      v7 = CurrentTokenRange.location + CurrentTokenRange.length;
      v8 = 1;
      v9 = CurrentTokenRange.location;
      do
      {
        while (CFCharacterSetIsCharacterMember(*(a1 + 64), [*(a1 + 40) characterAtIndex:location]))
        {
          v8 = 0;
          if (++location >= v7)
          {
            goto LABEL_14;
          }
        }

        if (v9 < location)
        {
          result = [*(a1 + 32) addToChunksWithInt:v9 withInt:(location - v9)];
          if (!result)
          {
            return result;
          }
        }

        v9 = ++location;
      }

      while (location < v7);
      v9 = location;
      if (v8)
      {
        return 1;
      }

LABEL_14:
      if (v7 <= v9)
      {
        return 1;
      }

      result = [*(a1 + 32) addToChunksWithInt:v9 withInt:(v7 - v9)];
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

OrgApacheLuceneDocumentDocument *new_OrgApacheLuceneDocumentDocument_init()
{
  v0 = [OrgApacheLuceneDocumentDocument alloc];
  v1 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume(&v0->fields_, v1);
  return v0;
}

OrgLukhnosPortmobileFilePath *new_OrgLukhnosPortmobileFilePath_initWithNSString_(void *a1)
{
  v2 = [OrgLukhnosPortmobileFilePath alloc];
  v3 = new_JavaIoFile_initWithNSString_(a1);
  JreStrongAssignAndConsume(&v2->file_, v3);
  return v2;
}

OrgLukhnosPortmobileFilePath *new_OrgLukhnosPortmobileFilePath_initWithJavaIoFile_(void *a1)
{
  v2 = [OrgLukhnosPortmobileFilePath alloc];
  JreStrongAssign(&v2->file_, a1);
  return v2;
}

OrgApacheLuceneUtilPackedBulkOperationPacked9 *new_OrgApacheLuceneUtilPackedBulkOperationPacked9_init()
{
  v0 = [OrgApacheLuceneUtilPackedBulkOperationPacked9 alloc];
  OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(v0, 9);
  return v0;
}

OrgApacheLuceneStoreByteBufferIndexInput_SingleBufferImpl *OrgApacheLuceneStoreByteBufferIndexInput_newInstanceWithNSString_withJavaNioByteBufferArray_withLong_withInt_withOrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner_withBoolean_(void *a1, uint64_t a2, uint64_t a3, int a4, void *a5, int a6)
{
  if (a6)
  {
    v11 = OrgApacheLuceneUtilWeakIdentityMap_newConcurrentHashMap();
  }

  else
  {
    v11 = 0;
  }

  if (!a2)
  {
    JreThrowNullPointerException();
  }

  if (*(a2 + 8) == 1)
  {
    v12 = *(a2 + 24);
    v13 = [OrgApacheLuceneStoreByteBufferIndexInput_SingleBufferImpl alloc];
    OrgApacheLuceneStoreByteBufferIndexInput_SingleBufferImpl_initWithNSString_withJavaNioByteBuffer_withLong_withInt_withOrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner_withOrgApacheLuceneUtilWeakIdentityMap_(v13, a1, v12, a3, a4, a5, v11);
  }

  else
  {
    v13 = [OrgApacheLuceneStoreByteBufferIndexInput_MultiBufferImpl alloc];
    OrgApacheLuceneStoreByteBufferIndexInput_MultiBufferImpl_initWithNSString_withJavaNioByteBufferArray_withInt_withLong_withInt_withOrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner_withOrgApacheLuceneUtilWeakIdentityMap_(v13, a1, a2, 0, a3, a4, a5, v11);
  }

  return v13;
}

id OrgApacheLuceneStoreByteBufferIndexInput_initWithNSString_withJavaNioByteBufferArray_withLong_withInt_withOrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner_withOrgApacheLuceneUtilWeakIdentityMap_(uint64_t a1, void *a2, void *a3, uint64_t a4, int a5, void *a6, void *a7)
{
  OrgApacheLuceneStoreIndexInput_initWithNSString_(a1, a2);
  *(a1 + 64) = -1;
  *(a1 + 80) = 0;
  JreStrongAssign((a1 + 56), a3);
  *(a1 + 32) = a4;
  *(a1 + 48) = a5;
  *(a1 + 40) = ~(-1 << a5);
  JreStrongAssign((a1 + 88), a7);

  return JreStrongAssign((a1 + 24), a6);
}

id sub_100128100(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a1 + 56);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = a3;
  v6 = *(v4 + 8);
  if ((a3 & 0x80000000) != 0 || v6 <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v6, a3);
  }

  v7 = *(v4 + 24 + 8 * a3);
  if (!v7)
  {
LABEL_6:
    JreThrowNullPointerException();
  }

  [v7 positionWithInt:*(a1 + 40) & a2];
  *(a1 + 64) = v5;
  return JreStrongAssign((a1 + 72), v7);
}

IOSObjectArray *sub_1001288C8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = a4 + a3;
  v7 = *(a1 + 48);
  v8 = a3 >> v7;
  v9 = [IOSObjectArray arrayWithLength:(((a4 + a3) >> v7) - (a3 >> v7) + 1) type:JavaNioByteBuffer_class_()];
  size = v9->super.size_;
  if (size <= 0)
  {
    v14 = (size - 1);
    goto LABEL_13;
  }

  if (!a2)
  {
    goto LABEL_16;
  }

  for (i = 0; i < size; ++i)
  {
    v12 = *(a2 + 8);
    if ((v8 & 0x80000000) != 0 || v8 >= v12)
    {
      IOSArray_throwOutOfBoundsWithMsg(v12, v8);
    }

    v13 = *(a2 + 24 + 8 * v8);
    if (!v13)
    {
      goto LABEL_16;
    }

    IOSObjectArray_Set(v9, i, [v13 duplicate]);
    size = v9->super.size_;
    LODWORD(v8) = v8 + 1;
  }

  v14 = (size - 1);
  if (size <= 0)
  {
LABEL_13:
    IOSArray_throwOutOfBoundsWithMsg(size, v14);
  }

  v15 = (&v9->elementType_)[v14];
  if (!v15)
  {
LABEL_16:
    JreThrowNullPointerException();
  }

  [(IOSClass *)v15 limitWithInt:*(a1 + 40) & v6];
  return v9;
}

id OrgApacheLuceneStoreByteBufferIndexInput_SingleBufferImpl_initWithNSString_withJavaNioByteBuffer_withLong_withInt_withOrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner_withOrgApacheLuceneUtilWeakIdentityMap_(uint64_t a1, void *a2, void *a3, uint64_t a4, int a5, void *a6, void *a7)
{
  v16 = a3;
  v14 = [IOSObjectArray arrayWithObjects:&v16 count:1 type:JavaNioByteBuffer_class_()];
  OrgApacheLuceneStoreByteBufferIndexInput_initWithNSString_withJavaNioByteBufferArray_withLong_withInt_withOrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner_withOrgApacheLuceneUtilWeakIdentityMap_(a1, a2, v14, a4, a5, a6, a7);
  *(a1 + 64) = 0;
  JreStrongAssign((a1 + 72), a3);
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  return [a3 positionWithInt:{0, v16}];
}

id OrgApacheLuceneStoreByteBufferIndexInput_MultiBufferImpl_initWithNSString_withJavaNioByteBufferArray_withInt_withLong_withInt_withOrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner_withOrgApacheLuceneUtilWeakIdentityMap_(_DWORD *a1, void *a2, void *a3, int a4, uint64_t a5, int a6, void *a7, void *a8)
{
  OrgApacheLuceneStoreByteBufferIndexInput_initWithNSString_withJavaNioByteBufferArray_withLong_withInt_withOrgApacheLuceneStoreByteBufferIndexInput_BufferCleaner_withOrgApacheLuceneUtilWeakIdentityMap_(a1, a2, a3, a5, a6, a7, a8);
  a1[24] = a4;
  return [a1 seekWithLong:0];
}

OrgApacheLuceneUtilAutomatonTransition *new_OrgApacheLuceneUtilAutomatonTransition_init()
{
  result = [OrgApacheLuceneUtilAutomatonTransition alloc];
  result->transitionUpto_ = -1;
  return result;
}

uint64_t OrgApacheLuceneUtilAutomatonTransition_class_()
{
  if (qword_1005547A0 != -1)
  {
    sub_100129920();
  }

  return qword_100554798;
}

OrgApacheLuceneCodecsLucene53Lucene53NormsFormat *new_OrgApacheLuceneCodecsLucene53Lucene53NormsFormat_init()
{
  v0 = [OrgApacheLuceneCodecsLucene53Lucene53NormsFormat alloc];
  OrgApacheLuceneCodecsNormsFormat_init(v0, v1);
  return v0;
}

id OrgApacheLuceneSearchBooleanClause_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchBooleanClause_OccurEnum_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_withNSString_(a2, @"Query must not be null");
  JreStrongAssign((a1 + 8), v5);
  v6 = OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_withNSString_(a3, @"Occur must not be null");

  return JreStrongAssign((a1 + 16), v6);
}

OrgApacheLuceneSearchBooleanClause *new_OrgApacheLuceneSearchBooleanClause_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchBooleanClause_OccurEnum_(uint64_t a1, uint64_t a2)
{
  v4 = [OrgApacheLuceneSearchBooleanClause alloc];
  OrgApacheLuceneSearchBooleanClause_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchBooleanClause_OccurEnum_(v4, a1, a2);
  return v4;
}

uint64_t OrgApacheLuceneSearchBooleanClause_class_()
{
  if (qword_1005547B0 != -1)
  {
    sub_10012A274();
  }

  return qword_1005547A8;
}

IOSObjectArray *OrgApacheLuceneSearchBooleanClause_OccurEnum_values()
{
  if ((atomic_load_explicit(OrgApacheLuceneSearchBooleanClause_OccurEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100026EB0();
  }

  v0 = OrgApacheLuceneSearchBooleanClause_OccurEnum_class_();

  return [IOSObjectArray arrayWithObjects:&OrgApacheLuceneSearchBooleanClause_OccurEnum_values_ count:4 type:v0];
}

void *OrgApacheLuceneSearchBooleanClause_OccurEnum_valueOfWithNSString_(void *a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneSearchBooleanClause_OccurEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100026EB0();
  }

  v2 = 0;
  while (1)
  {
    v3 = OrgApacheLuceneSearchBooleanClause_OccurEnum_values_[v2];
    if ([a1 isEqual:{objc_msgSend(v3, "name")}])
    {
      break;
    }

    if (++v2 == 4)
    {
      objc_exception_throw([[JavaLangIllegalArgumentException alloc] initWithNSString:a1]);
    }
  }

  return v3;
}

uint64_t OrgApacheLuceneSearchBooleanClause_OccurEnum_class_()
{
  if ((atomic_load_explicit(OrgApacheLuceneSearchBooleanClause_OccurEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100026EB0();
  }

  if (qword_1005547C0 != -1)
  {
    sub_10012A288();
  }

  return qword_1005547B8;
}

id OrgApacheLuceneUtilBytesRefHash_init(uint64_t a1)
{
  v2 = new_OrgApacheLuceneUtilByteBlockPool_DirectAllocator_init();
  v3 = new_OrgApacheLuceneUtilByteBlockPool_initWithOrgApacheLuceneUtilByteBlockPool_Allocator_(v2);

  return OrgApacheLuceneUtilBytesRefHash_initWithOrgApacheLuceneUtilByteBlockPool_(a1, v3);
}

id OrgApacheLuceneUtilBytesRefHash_initWithOrgApacheLuceneUtilByteBlockPool_(uint64_t a1, void *a2)
{
  v4 = [OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray alloc];
  v5 = OrgApacheLuceneUtilCounter_newCounter();
  JreStrongAssign(&v4->bytesUsed_, v5);
  v4->initSize_ = 16;
  v6 = v4;

  return OrgApacheLuceneUtilBytesRefHash_initWithOrgApacheLuceneUtilByteBlockPool_withInt_withOrgApacheLuceneUtilBytesRefHash_BytesStartArray_(a1, a2, 16, v6);
}

id OrgApacheLuceneUtilBytesRefHash_initWithOrgApacheLuceneUtilByteBlockPool_withInt_withOrgApacheLuceneUtilBytesRefHash_BytesStartArray_(uint64_t a1, void *a2, int a3, void *a4)
{
  v8 = new_OrgApacheLuceneUtilBytesRef_init();
  JreStrongAssignAndConsume((a1 + 24), v8);
  *(a1 + 48) = -1;
  *(a1 + 32) = a3;
  *(a1 + 36) = a3 >> 1;
  *(a1 + 40) = a3 - 1;
  JreStrongAssign((a1 + 8), a2);
  JreStrongAssignAndConsume((a1 + 56), [IOSIntArray newArrayWithLength:*(a1 + 32)]);
  JavaUtilArrays_fillWithIntArray_withInt_(*(a1 + 56), -1);
  JreStrongAssign((a1 + 64), a4);
  if (!a4)
  {
    JreThrowNullPointerException();
  }

  JreStrongAssign((a1 + 16), [a4 init]);
  if ([a4 bytesUsed])
  {
    v9 = [a4 bytesUsed];
  }

  else
  {
    v9 = OrgApacheLuceneUtilCounter_newCounter();
  }

  JreStrongAssign((a1 + 72), v9);
  v10 = *(a1 + 72);
  v11 = 4 * *(a1 + 32);

  return [v10 addAndGetWithLong:v11];
}

id sub_10012A754(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_9;
  }

  v5 = a1[2];
  if (!v5)
  {
    goto LABEL_9;
  }

  v7 = *(v5 + 8);
  if ((a2 & 0x80000000) != 0 || v7 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, a2);
  }

  [v3 setBytesRefWithOrgApacheLuceneUtilBytesRef:a1[3] withInt:*(v5 + 12 + 4 * a2)];
  v8 = a1[3];
  if (!v8)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  return [v8 bytesEqualsWithOrgApacheLuceneUtilBytesRef:a3];
}

BOOL sub_10012A810(uint64_t a1, signed int a2)
{
  v3 = *(a1 + 32);
  v4 = v3;
  do
  {
    v5 = v4;
    if (v4 < 8)
    {
      break;
    }

    v6 = v4 >> 2;
    v4 = v4 >> 1;
  }

  while (v6 > a2);
  if (v5 != v3)
  {
    v7 = *(a1 + 72);
    if (!v7)
    {
      JreThrowNullPointerException();
    }

    [v7 addAndGetWithLong:4 * (v5 - v3)];
    *(a1 + 32) = v5;
    JreStrongAssignAndConsume((a1 + 56), [IOSIntArray newArrayWithLength:v5]);
    JavaUtilArrays_fillWithIntArray_withInt_(*(a1 + 56), -1);
    *(a1 + 36) = v5 / 2;
    *(a1 + 40) = v5 - 1;
  }

  return v5 != v3;
}

uint64_t sub_10012AD28(uint64_t a1, uint64_t a2)
{
  if (!a2 || (v4 = sub_10012B588(*(a2 + 8), *(a2 + 16), *(a2 + 20)), (v5 = *(a1 + 56)) == 0))
  {
    JreThrowNullPointerException();
  }

  v6 = v4;
  v7 = *(a1 + 40) & v4;
  v8 = *(v5 + 8);
  if ((v7 & 0x80000000) != 0 || v7 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v7);
  }

  v9 = *(v5 + 12 + 4 * v7);
  if (v9 != -1 && (sub_10012A754(a1, v9, a2) & 1) == 0)
  {
    v11 = v6 + 1;
    do
    {
      v7 = v11 & *(a1 + 40);
      v12 = *(a1 + 56);
      v13 = *(v12 + 8);
      if (((v11 & *(a1 + 40) & 0x80000000) != 0) != v10 || v7 >= v13)
      {
        IOSArray_throwOutOfBoundsWithMsg(v13, v11 & *(a1 + 40));
      }

      v15 = *(v12 + 12 + 4 * v7);
      if (v15 == -1)
      {
        break;
      }

      ++v11;
    }

    while (!sub_10012A754(a1, v15, a2));
  }

  return v7;
}

OrgApacheLuceneUtilBytesRefHash_MaxBytesLengthExceededException *new_OrgApacheLuceneUtilBytesRefHash_MaxBytesLengthExceededException_initWithNSString_(uint64_t a1)
{
  v2 = [OrgApacheLuceneUtilBytesRefHash_MaxBytesLengthExceededException alloc];
  JavaLangRuntimeException_initWithNSString_(v2, a1);
  return v2;
}

id sub_10012AEA0(uint64_t a1, int a2, int a3)
{
  v4 = *(a1 + 72);
  if (!v4)
  {
    goto LABEL_57;
  }

  v6 = a2 - 1;
  [v4 addAndGetWithLong:4 * a2];
  v7 = [IOSIntArray arrayWithLength:a2];
  JavaUtilArrays_fillWithIntArray_withInt_(v7, -1);
  v8 = v6;
  if (*(a1 + 32) >= 1)
  {
    v9 = 0;
    v10 = v6;
    v41 = v6;
    while (1)
    {
      v11 = *(a1 + 56);
      if (!v11)
      {
        break;
      }

      v12 = *(v11 + 8);
      if (v9 >= v12)
      {
        IOSArray_throwOutOfBoundsWithMsg(v12, v9);
      }

      v13 = *(v11 + 12 + 4 * v9);
      if (v13 != -1)
      {
        v14 = *(a1 + 16);
        if (a3)
        {
          if (!v14)
          {
            break;
          }

          v15 = *(v14 + 8);
          if (v13 < 0 || v13 >= v15)
          {
            IOSArray_throwOutOfBoundsWithMsg(v15, *(v11 + 12 + 4 * v9));
          }

          v16 = *(a1 + 8);
          if (!v16)
          {
            break;
          }

          v17 = *(v16 + 8);
          if (!v17)
          {
            break;
          }

          v18 = *(v14 + 12 + 4 * v13);
          v19 = *(v17 + 8);
          if (v18 >> 15 < 0 || v18 >> 15 >= v19)
          {
            IOSArray_throwOutOfBoundsWithMsg(v19, v18 >> 15);
          }

          v20 = *(v17 + 24 + 8 * (v18 >> 15));
          if (!v20)
          {
            break;
          }

          v21 = v18 & 0x7FFF;
          v22 = *(v20 + 8);
          if (v21 >= v22)
          {
            IOSArray_throwOutOfBoundsWithMsg(v22, v21);
          }

          v23 = *(v20 + 12 + v21);
          v24 = *(v20 + 8);
          if (v23 < 0)
          {
            if (v21 >= v24)
            {
              IOSArray_throwOutOfBoundsWithMsg(v24, v21);
            }

            v30 = v21 + 1;
            if (v30 >= v24)
            {
              IOSArray_throwOutOfBoundsWithMsg(v24, v21 + 1);
            }

            v25 = v23 & 0x7F | (*(v20 + 12 + v30) << 7);
            v26 = 2;
          }

          else
          {
            if (v21 >= v24)
            {
              IOSArray_throwOutOfBoundsWithMsg(v24, v21);
            }

            v25 = v23;
            v26 = 1;
          }

          v29 = sub_10012B588(v20, v21 + v26, v25);
          v8 = v41;
        }

        else
        {
          if (!v14)
          {
            break;
          }

          v27 = *(v14 + 8);
          if (v13 < 0 || (v28 = __OFSUB__(v13, v27), v13 >= v27))
          {
            IOSArray_throwOutOfBoundsWithMsg(v27, *(v11 + 12 + 4 * v9));
          }

          v29 = *(v14 + 12 + 4 * v13);
        }

        v31 = v29 & v8;
        size = v7->super.size_;
        if (((v29 & v8 & 0x80000000) != 0) != v28 || v31 >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v29 & v8);
        }

        v34 = v31;
        if (*(&v7->super.size_ + v31 + 1) == -1)
        {
          v36 = v29 & v8;
        }

        else
        {
          v35 = v29 + 1;
          do
          {
            v36 = v35 & v10;
            v37 = v7->super.size_;
            if ((v36 & 0x80000000) != 0 || v36 >= v37)
            {
              IOSArray_throwOutOfBoundsWithMsg(v37, v35 & v10);
            }

            ++v35;
            v34 = v36;
          }

          while (*(&v7->super.size_ + v36 + 1) != -1);
        }

        v38 = v7->super.size_;
        if ((v36 & 0x80000000) != 0 || v36 >= v38)
        {
          IOSArray_throwOutOfBoundsWithMsg(v38, v36);
        }

        *(&v7->super.size_ + v34 + 1) = v13;
      }

      if (++v9 >= *(a1 + 32))
      {
        goto LABEL_55;
      }
    }

LABEL_57:
    JreThrowNullPointerException();
  }

LABEL_55:
  v39 = *(a1 + 56);
  *(a1 + 40) = v8;
  if (!v39)
  {
    goto LABEL_57;
  }

  [*(a1 + 72) addAndGetWithLong:-4 * *(v39 + 8)];
  result = JreStrongAssign((a1 + 56), v7);
  *(a1 + 32) = a2;
  *(a1 + 36) = a2 / 2;
  return result;
}

uint64_t sub_10012B588(uint64_t a1, int a2, unsigned int a3)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilStringHelper__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100005258();
  }

  v6 = OrgApacheLuceneUtilStringHelper_GOOD_FAST_HASH_SEED_;

  return OrgApacheLuceneUtilStringHelper_murmurhash3_x86_32WithByteArray_withInt_withInt_withInt_(a1, a2, a3, v6);
}

OrgApacheLuceneUtilBytesRefHash *new_OrgApacheLuceneUtilBytesRefHash_initWithOrgApacheLuceneUtilByteBlockPool_withInt_withOrgApacheLuceneUtilBytesRefHash_BytesStartArray_(void *a1, int a2, void *a3)
{
  v6 = [OrgApacheLuceneUtilBytesRefHash alloc];
  OrgApacheLuceneUtilBytesRefHash_initWithOrgApacheLuceneUtilByteBlockPool_withInt_withOrgApacheLuceneUtilBytesRefHash_BytesStartArray_(v6, a1, a2, a3);
  return v6;
}

id OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray_initWithInt_(uint64_t a1, int a2)
{
  v4 = OrgApacheLuceneUtilCounter_newCounter();
  result = JreStrongAssign((a1 + 24), v4);
  *(a1 + 8) = a2;
  return result;
}

void *sub_10012BF34(id *a1, void *a2, void *a3, void *a4)
{
  JreStrongAssign(a1 + 1, a2);
  JreStrongAssign(a1 + 5, a3);
  JreStrongAssign(a1 + 6, a4);
  OrgApacheLuceneUtilIntroSorter_init(a1);
  v7 = new_OrgApacheLuceneUtilBytesRef_init();
  JreStrongAssignAndConsume(a1 + 2, v7);
  v8 = new_OrgApacheLuceneUtilBytesRef_init();
  JreStrongAssignAndConsume(a1 + 3, v8);
  v9 = new_OrgApacheLuceneUtilBytesRef_init();

  return JreStrongAssignAndConsume(a1 + 4, v9);
}

uint64_t OrgApacheLuceneUtilUnicodeUtil_UTF16toUTF8WithCharArray_withInt_withInt_withByteArray_(uint64_t a1, int a2, int a3, uint64_t a4)
{
  LODWORD(v6) = a2;
  if ((atomic_load_explicit(OrgApacheLuceneUtilUnicodeUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10012DE44();
  }

  v8 = a3 + v6;
  if (a3 + v6 > v6)
  {
    if (!a1)
    {
LABEL_68:
      JreThrowNullPointerException();
    }

    v9 = 0;
    while (1)
    {
      v10 = v6;
      v11 = *(a1 + 8);
      if ((v6 & 0x80000000) != 0 || v6 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, v6);
      }

      v6 = v6 + 1;
      v12 = *(a1 + 12 + 2 * v10);
      if (v12 <= 0x7F)
      {
        if (!a4)
        {
          goto LABEL_68;
        }

        v13 = *(a1 + 12 + 2 * v10);
        v14 = (v9 + 1);
        v15 = *(a4 + 8);
        if ((v9 & 0x80000000) != 0 || v9 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, v9);
        }

        goto LABEL_52;
      }

      if (v12 > 0x7FF)
      {
        if (v12 - 57344 > 0xFFFFF7FF)
        {
          if (v6 < v8 && v12 >> 10 <= 0x36)
          {
            v22 = *(a1 + 8);
            if (v10 < -1 || v6 >= v22)
            {
              IOSArray_throwOutOfBoundsWithMsg(v22, v10 + 1);
            }

            v23 = *(a1 + 12 + 2 * v6);
            if ((v23 & 0xFC00) == 0xDC00)
            {
              if (!a4)
              {
                goto LABEL_68;
              }

              v24 = *(a4 + 8);
              if ((v9 & 0x80000000) != 0 || v9 >= v24)
              {
                IOSArray_throwOutOfBoundsWithMsg(v24, v9);
              }

              v25 = v23 + (v12 << 10) - 56613888;
              v26 = v9 + 1;
              *(a4 + 12 + v9) = (v25 >> 18) | 0xF0;
              v27 = *(a4 + 8);
              if (v9 + 1 < 0 || v26 >= v27)
              {
                IOSArray_throwOutOfBoundsWithMsg(v27, (v9 + 1));
              }

              v28 = v9 + 2;
              *(a4 + 12 + v26) = (v25 >> 12) & 0x3F | 0x80;
              v29 = *(a4 + 8);
              if (v9 + 2 < 0 || v28 >= v29)
              {
                IOSArray_throwOutOfBoundsWithMsg(v29, (v9 + 2));
              }

              LODWORD(v6) = v10 + 2;
              v30 = (v9 + 3);
              *(a4 + 12 + v28) = (v25 >> 6) & 0x3F | 0x80;
              v13 = v23 & 0x3F | 0x80;
              v14 = (v9 + 4);
              v31 = *(a4 + 8);
              if ((v30 & 0x80000000) != 0 || v30 >= v31)
              {
                IOSArray_throwOutOfBoundsWithMsg(v31, v30);
              }

              LODWORD(v9) = v9 + 3;
              goto LABEL_52;
            }
          }

          if (!a4)
          {
            goto LABEL_68;
          }

          v32 = *(a4 + 8);
          if ((v9 & 0x80000000) != 0 || v9 >= v32)
          {
            IOSArray_throwOutOfBoundsWithMsg(v32, v9);
          }

          v33 = v9 + 1;
          *(a4 + 12 + v9) = -17;
          v34 = *(a4 + 8);
          if (v9 + 1 < 0 || v33 >= v34)
          {
            IOSArray_throwOutOfBoundsWithMsg(v34, (v9 + 1));
          }

          LODWORD(v17) = v9 + 2;
          *(a4 + 12 + v33) = -65;
          v14 = (v9 + 3);
          v35 = *(a4 + 8);
          if (v9 + 2 < 0 || v17 >= v35)
          {
            IOSArray_throwOutOfBoundsWithMsg(v35, (v9 + 2));
          }

          v13 = -67;
          goto LABEL_51;
        }

        if (!a4)
        {
          goto LABEL_68;
        }

        v18 = *(a4 + 8);
        if ((v9 & 0x80000000) != 0 || v9 >= v18)
        {
          IOSArray_throwOutOfBoundsWithMsg(v18, v9);
        }

        v19 = v9 + 1;
        *(a4 + 12 + v9) = (v12 >> 12) | 0xE0;
        v20 = *(a4 + 8);
        if (v9 + 1 < 0 || v19 >= v20)
        {
          IOSArray_throwOutOfBoundsWithMsg(v20, (v9 + 1));
        }

        v17 = (v9 + 2);
        *(a4 + 12 + v19) = (v12 >> 6) & 0x3F | 0x80;
        v13 = v12 & 0x3F | 0x80;
        v14 = (v9 + 3);
      }

      else
      {
        if (!a4)
        {
          goto LABEL_68;
        }

        v16 = *(a4 + 8);
        if ((v9 & 0x80000000) != 0 || v9 >= v16)
        {
          IOSArray_throwOutOfBoundsWithMsg(v16, v9);
        }

        v17 = (v9 + 1);
        *(a4 + 12 + v9) = (v12 >> 6) | 0xC0;
        v13 = v12 & 0x3F | 0x80;
        v14 = (v9 + 2);
      }

      v21 = *(a4 + 8);
      if ((v17 & 0x80000000) != 0 || v17 >= v21)
      {
        IOSArray_throwOutOfBoundsWithMsg(v21, v17);
      }

LABEL_51:
      LODWORD(v9) = v17;
LABEL_52:
      *(a4 + 12 + v9) = v13;
      v9 = v14;
      if (v6 >= v8)
      {
        return v14;
      }
    }
  }

  return 0;
}

uint64_t OrgApacheLuceneUtilUnicodeUtil_UTF16toUTF8WithJavaLangCharSequence_withInt_withInt_withByteArray_(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilUnicodeUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10012DE44();
  }

  return OrgApacheLuceneUtilUnicodeUtil_UTF16toUTF8WithJavaLangCharSequence_withInt_withInt_withByteArray_withInt_(a1, a2, a3, a4, 0);
}

uint64_t OrgApacheLuceneUtilUnicodeUtil_UTF16toUTF8WithJavaLangCharSequence_withInt_withInt_withByteArray_withInt_(void *a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  LODWORD(v5) = a5;
  if ((atomic_load_explicit(OrgApacheLuceneUtilUnicodeUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10012DE44();
  }

  v10 = a3 + a2;
  v38 = v5;
  if (a3 + a2 > a2)
  {
    if (!a1)
    {
LABEL_63:
      JreThrowNullPointerException();
    }

    v11 = v5;
    do
    {
      v12 = [a1 charAtWithInt:a2];
      v13 = v12;
      if (v12 >= 0x80)
      {
        if (v12 > 0x7FF)
        {
          if (v12 - 57344 <= 0xFFFFF7FF)
          {
            if (!a4)
            {
              goto LABEL_63;
            }

            v19 = *(a4 + 8);
            if ((v11 & 0x80000000) != 0 || v11 >= v19)
            {
              IOSArray_throwOutOfBoundsWithMsg(v19, v11);
            }

            v20 = v11 + 1;
            *(a4 + 12 + v11) = (v13 >> 12) | 0xE0;
            v21 = *(a4 + 8);
            if (v11 + 1 < 0 || v20 >= v21)
            {
              IOSArray_throwOutOfBoundsWithMsg(v21, (v11 + 1));
            }

            *(a4 + 12 + v20) = (v13 >> 6) & 0x3F | 0x80;
            v14 = v13 & 0x3F | 0x80;
            v5 = (v11 + 3);
            v22 = *(a4 + 8);
            if (v11 + 2 < 0 || v11 + 2 >= v22)
            {
              IOSArray_throwOutOfBoundsWithMsg(v22, (v11 + 2));
            }

            LODWORD(v11) = v11 + 2;
            goto LABEL_49;
          }

          if (a2 < v10 - 1 && v12 >> 10 <= 0x36)
          {
            v23 = a2 + 1;
            v24 = [a1 charAtWithInt:(a2 + 1)];
            if ((v24 & 0xFC00) == 0xDC00)
            {
              if (!a4)
              {
                goto LABEL_63;
              }

              v25 = v24;
              v26 = *(a4 + 8);
              if ((v11 & 0x80000000) != 0 || v11 >= v26)
              {
                IOSArray_throwOutOfBoundsWithMsg(v26, v11);
              }

              v27 = v25 + (v13 << 10) - 56613888;
              v28 = v11 + 1;
              *(a4 + 12 + v11) = (v27 >> 18) | 0xF0;
              v29 = *(a4 + 8);
              if (v11 + 1 < 0 || v28 >= v29)
              {
                IOSArray_throwOutOfBoundsWithMsg(v29, (v11 + 1));
              }

              v30 = v11 + 2;
              *(a4 + 12 + v28) = (v27 >> 12) & 0x3F | 0x80;
              v31 = *(a4 + 8);
              if (v11 + 2 < 0 || v30 >= v31)
              {
                IOSArray_throwOutOfBoundsWithMsg(v31, (v11 + 2));
              }

              *(a4 + 12 + v30) = (v27 >> 6) & 0x3F | 0x80;
              v14 = v25 & 0x3F | 0x80;
              v5 = (v11 + 4);
              v32 = *(a4 + 8);
              if (v11 + 3 < 0 || v11 + 3 >= v32)
              {
                IOSArray_throwOutOfBoundsWithMsg(v32, (v11 + 3));
              }

              LODWORD(v11) = v11 + 3;
              LODWORD(a2) = v23;
              goto LABEL_49;
            }
          }

          if (!a4)
          {
            goto LABEL_63;
          }

          v33 = *(a4 + 8);
          if ((v11 & 0x80000000) != 0 || v11 >= v33)
          {
            IOSArray_throwOutOfBoundsWithMsg(v33, v11);
          }

          v34 = v11 + 1;
          *(a4 + 12 + v11) = -17;
          v35 = *(a4 + 8);
          if (v11 + 1 < 0 || v34 >= v35)
          {
            IOSArray_throwOutOfBoundsWithMsg(v35, (v11 + 1));
          }

          v17 = v11 + 2;
          *(a4 + 12 + v34) = -65;
          v5 = (v11 + 3);
          v36 = *(a4 + 8);
          if (v11 + 2 < 0 || v17 >= v36)
          {
            IOSArray_throwOutOfBoundsWithMsg(v36, (v11 + 2));
          }

          v14 = -67;
        }

        else
        {
          if (!a4)
          {
            goto LABEL_63;
          }

          v16 = *(a4 + 8);
          if ((v11 & 0x80000000) != 0 || v11 >= v16)
          {
            IOSArray_throwOutOfBoundsWithMsg(v16, v11);
          }

          v17 = v11 + 1;
          *(a4 + 12 + v11) = (v13 >> 6) | 0xC0;
          v14 = v13 & 0x3F | 0x80;
          v5 = (v11 + 2);
          v18 = *(a4 + 8);
          if (v11 + 1 < 0 || v17 >= v18)
          {
            IOSArray_throwOutOfBoundsWithMsg(v18, (v11 + 1));
          }
        }

        LODWORD(v11) = v17;
      }

      else
      {
        if (!a4)
        {
          goto LABEL_63;
        }

        v14 = v12;
        v5 = (v11 + 1);
        v15 = *(a4 + 8);
        if ((v11 & 0x80000000) != 0 || v11 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, v11);
        }
      }

LABEL_49:
      *(a4 + 12 + v11) = v14;
      a2 = (a2 + 1);
      v11 = v5;
    }

    while (a2 < v10);
  }

  return (v5 - v38);
}

uint64_t OrgApacheLuceneUtilUnicodeUtil_validUTF16StringWithJavaLangCharSequence_(void *a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilUnicodeUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10012DE44();
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_14:
    JreThrowNullPointerException();
  }

  if (!a1)
  {
    goto LABEL_14;
  }

LABEL_3:
  v2 = [a1 length];
  v3 = v2 - 1;
  if (v2 < 1)
  {
    return 1;
  }

  v4 = v2;
  v5 = 0;
  while (1)
  {
    v6 = [a1 charAtWithInt:v5] & 0xFC00;
    if (v6 == 55296)
    {
      break;
    }

    if (v6 == 56320)
    {
      return 0;
    }

LABEL_10:
    v5 = (v5 + 1);
    if (v5 >= v4)
    {
      return 1;
    }
  }

  if (v5 < v3)
  {
    v5 = (v5 + 1);
    if (([a1 charAtWithInt:v5] & 0xFC00) == 0xDC00)
    {
      goto LABEL_10;
    }
  }

  return 0;
}

uint64_t OrgApacheLuceneUtilUnicodeUtil_validUTF16StringWithCharArray_withInt_(uint64_t a1, int a2)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilUnicodeUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10012DE44();
  }

  if (a2 < 1)
  {
    return 1;
  }

  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v4 = 0;
  while (1)
  {
    v5 = *(a1 + 8);
    if ((v4 & 0x80000000) != 0 || v4 >= v5)
    {
      IOSArray_throwOutOfBoundsWithMsg(v5, v4);
    }

    v6 = *(a1 + 12 + 2 * v4) & 0xFC00;
    if (v6 == 55296)
    {
      break;
    }

    LODWORD(v7) = v4;
    if (v6 == 56320)
    {
      return 0;
    }

LABEL_15:
    v4 = (v7 + 1);
    if (v4 >= a2)
    {
      return 1;
    }
  }

  if (v4 < a2 - 1)
  {
    v7 = v4 + 1;
    v8 = *(a1 + 8);
    if (v4 < -1 || v7 >= v8)
    {
      IOSArray_throwOutOfBoundsWithMsg(v8, v4 + 1);
    }

    if ((*(a1 + 12 + 2 * v7) & 0xFC00) == 0xDC00)
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t OrgApacheLuceneUtilUnicodeUtil_codePointCountWithOrgApacheLuceneUtilBytesRef_(uint64_t a1)
{
  if (atomic_load_explicit(OrgApacheLuceneUtilUnicodeUtil__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_24;
    }
  }

  else
  {
    sub_10012DE44();
    if (!a1)
    {
      goto LABEL_24;
    }
  }

  v2 = *(a1 + 16);
  v3 = *(a1 + 20) + v2;
  if (v2 >= v3)
  {
    v5 = 0;
    goto LABEL_21;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_24:
    JreThrowNullPointerException();
  }

  LODWORD(v5) = 0;
  do
  {
    v6 = v2;
    v7 = *(v4 + 8);
    if (v2 < 0 || v2 >= v7)
    {
      IOSArray_throwOutOfBoundsWithMsg(v7, v2);
    }

    v8 = *(v4 + 12 + v2);
    if (v8 < 0)
    {
      if (v8 < 0xC0u)
      {
        goto LABEL_25;
      }

      if (v8 >= 0xE0u)
      {
        if (v8 >= 0xF0u)
        {
          if (v8 >= 0xF8u)
          {
            goto LABEL_25;
          }

          v9 = 4;
        }

        else
        {
          v9 = 3;
        }
      }

      else
      {
        v9 = 2;
      }
    }

    else
    {
      v9 = 1;
    }

    v2 = v6 + v9;
    v5 = (v5 + 1);
  }

  while (v2 < v3);
LABEL_21:
  if (v2 > v3)
  {
LABEL_25:
    v11 = new_JavaLangIllegalArgumentException_init();
    objc_exception_throw(v11);
  }

  return v5;
}

uint64_t OrgApacheLuceneUtilUnicodeUtil_UTF8toUTF32WithOrgApacheLuceneUtilBytesRef_withIntArray_(uint64_t a1, uint64_t a2)
{
  if (atomic_load_explicit(OrgApacheLuceneUtilUnicodeUtil__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_46:
    JreThrowNullPointerException();
  }

  sub_10012DE44();
  if (!a1)
  {
    goto LABEL_46;
  }

LABEL_3:
  v4 = *(a1 + 16);
  v5 = *(a1 + 20) + v4;
  if (v4 < v5)
  {
    v6 = 0;
    v7 = *(a1 + 8);
    while (1)
    {
      if (!OrgApacheLuceneUtilUnicodeUtil_utf8CodeLength_ || !v7)
      {
        goto LABEL_46;
      }

      v8 = *(v7 + 8);
      if ((v4 & 0x80000000) != 0 || v4 >= v8)
      {
        IOSArray_throwOutOfBoundsWithMsg(v8, v4);
      }

      v9 = *(OrgApacheLuceneUtilUnicodeUtil_utf8CodeLength_ + 8);
      if (v9 <= *(v7 + 12 + v4))
      {
        IOSArray_throwOutOfBoundsWithMsg(v9, *(v7 + 12 + v4));
      }

      v10 = *(OrgApacheLuceneUtilUnicodeUtil_utf8CodeLength_ + 12 + 4 * *(v7 + 12 + v4));
      if (v10 > 2)
      {
        if (v10 == 3)
        {
          v11 = *(v7 + 8);
          v12 = 15;
          if ((v4 & 0x80000000) != 0)
          {
            goto LABEL_41;
          }
        }

        else
        {
          if (v10 != 4)
          {
LABEL_47:
            v23 = new_JavaLangIllegalArgumentException_initWithNSString_(@"invalid utf8");
            objc_exception_throw(v23);
          }

          v11 = *(v7 + 8);
          v12 = 7;
          if ((v4 & 0x80000000) != 0)
          {
LABEL_41:
            IOSArray_throwOutOfBoundsWithMsg(v11, v4);
          }
        }
      }

      else
      {
        if (v10 == 1)
        {
          v13 = *(v7 + 8);
          if ((v4 & 0x80000000) != 0 || v4 >= v13)
          {
            IOSArray_throwOutOfBoundsWithMsg(v13, v4);
          }

          if (!a2)
          {
            goto LABEL_46;
          }

          v14 = (v4 + 1);
          v15 = *(v7 + 12 + v4);
          v16 = v6;
          goto LABEL_34;
        }

        if (v10 != 2)
        {
          goto LABEL_47;
        }

        v11 = *(v7 + 8);
        v12 = 31;
        if ((v4 & 0x80000000) != 0)
        {
          goto LABEL_41;
        }
      }

      if (v4 >= v11)
      {
        goto LABEL_41;
      }

      v15 = (*(v7 + 12 + v4) & v12);
      v17 = (v10 + v4);
      v14 = v4 + 1;
      if (v4 + 1 < v17)
      {
        v18 = v7 + v14;
        v19 = v10 - 1;
        do
        {
          v20 = *(v7 + 8);
          if (v4 < -1 || v14 >= v20)
          {
            IOSArray_throwOutOfBoundsWithMsg(v20, (v4 + 1));
          }

          v15 = (v15 << 6) | *(v18 + 12) & 0x3F;
          ++v14;
          ++v18;
          LODWORD(v4) = v4 + 1;
          --v19;
        }

        while (v19);
        v14 = v17;
      }

      if (!a2)
      {
        goto LABEL_46;
      }

      v16 = v6;
LABEL_34:
      v21 = *(a2 + 8);
      if ((v6 & 0x80000000) != 0 || v6 >= v21)
      {
        IOSArray_throwOutOfBoundsWithMsg(v21, v6);
      }

      *(a2 + 12 + 4 * v16) = v15;
      v6 = (v6 + 1);
      v4 = v14;
      if (v14 >= v5)
      {
        return v6;
      }
    }
  }

  return 0;
}

NSString *OrgApacheLuceneUtilUnicodeUtil_newStringWithIntArray_withInt_withInt_(uint64_t a1, int a2, unsigned int a3)
{
  if (atomic_load_explicit(OrgApacheLuceneUtilUnicodeUtil__initialized, memory_order_acquire))
  {
    if ((a3 & 0x80000000) != 0)
    {
      goto LABEL_33;
    }
  }

  else
  {
    sub_10012DE44();
    if ((a3 & 0x80000000) != 0)
    {
      goto LABEL_33;
    }
  }

  v5 = [IOSCharArray arrayWithLength:a3];
  v18 = a3 + a2;
  if ((a3 + a2) > a2)
  {
    if (!a1)
    {
      JreThrowNullPointerException();
    }

    v6 = 0;
    v7 = a2;
    while (1)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v7 < 0 || v7 >= v9)
      {
        IOSArray_throwOutOfBoundsWithMsg(v9, v7);
      }

      v10 = *(a1 + 12 + 4 * v7);
      if (HIWORD(v10) > 0x10u)
      {
        break;
      }

      v11 = (v6 + 1);
      size = v5->super.size_;
      v14 = v6 < 0 || v6 >= size;
      if (HIWORD(v10))
      {
        if (v14)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v6);
        }

        *(&v5->super.size_ + v6 + 2) = (v10 >> 10) - 10304;
        v15 = v5->super.size_;
        if ((v11 & 0x80000000) != 0 || v11 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, (v6 + 1));
        }

        *(&v5->super.size_ + v11 + 2) = v10 & 0x3FF | 0xDC00;
        v11 = (v6 + 2);
      }

      else
      {
        if (v14)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v6);
        }

        *(&v5->super.size_ + v6 + 2) = v10;
      }

      v7 = v8 + 1;
      v6 = v11;
      if (v8 + 1 == v18)
      {
        goto LABEL_29;
      }
    }

LABEL_33:
    v17 = new_JavaLangIllegalArgumentException_init();
    objc_exception_throw(v17);
  }

  v11 = 0;
LABEL_29:

  return [NSString stringWithCharacters:v5 offset:0 length:v11];
}

NSString *OrgApacheLuceneUtilUnicodeUtil_toHexStringWithNSString_(void *a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilUnicodeUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10012DE44();
  }

  v2 = new_JavaLangStringBuilder_init();
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v3 = v2;
  if ([a1 length] >= 1)
  {
    v4 = 0;
    while (1)
    {
      v5 = [a1 charAtWithInt:v4];
      if (v4)
      {
        [(JavaLangStringBuilder *)v3 appendWithChar:32];
      }

      if (v5 > 0x7F)
      {
        break;
      }

      [(JavaLangStringBuilder *)v3 appendWithChar:v5];
LABEL_20:
      v4 = (v4 + 1);
      if (v4 >= [a1 length])
      {
        goto LABEL_21;
      }
    }

    if ((v5 & 0xFC00) == 0xD800)
    {
      v6 = @"H:";
    }

    else if ((v5 & 0xFC00) == 0xDC00)
    {
      v6 = @"L:";
    }

    else
    {
      if (v5 < 0xE000)
      {
LABEL_19:
        JavaLangInteger_toHexStringWithInt_(v5);
        [(JavaLangStringBuilder *)v3 appendWithNSString:JreStrcat("$$", v7, v8, v9, v10, v11, v12, v13, @"0x")];
        goto LABEL_20;
      }

      if (v5 == 0xFFFF)
      {
        v6 = @"F:";
      }

      else
      {
        v6 = @"E:";
      }
    }

    [(JavaLangStringBuilder *)v3 appendWithNSString:v6];
    goto LABEL_19;
  }

LABEL_21:

  return [(JavaLangStringBuilder *)v3 description];
}

uint64_t OrgApacheLuceneUtilUnicodeUtil_UTF8toUTF16WithByteArray_withInt_withInt_withCharArray_(uint64_t a1, int a2, int a3, uint64_t a4)
{
  LODWORD(v6) = a2;
  if ((atomic_load_explicit(OrgApacheLuceneUtilUnicodeUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10012DE44();
  }

  v8 = a3 + v6;
  if (a3 + v6 > v6)
  {
    if (!a1)
    {
LABEL_59:
      JreThrowNullPointerException();
    }

    v9 = 0;
    while (1)
    {
      v10 = v6;
      v11 = *(a1 + 8);
      if ((v6 & 0x80000000) != 0 || v6 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, v6);
      }

      v6 = v6 + 1;
      v12 = *(a1 + 12 + v10);
      if (v12 <= 0xBF)
      {
LABEL_9:
        if (!a4)
        {
          goto LABEL_59;
        }

        v13 = *(a4 + 8);
        if ((v9 & 0x80000000) != 0 || v9 >= v13)
        {
          IOSArray_throwOutOfBoundsWithMsg(v13, v9);
        }

        *(a4 + 12 + 2 * v9) = v12;
        v9 = (v9 + 1);
        goto LABEL_30;
      }

      if (v12 <= 0xDF)
      {
        break;
      }

      if (v12 <= 0xEF)
      {
        v18 = *(a1 + 8);
        if (v10 < -1 || v6 >= v18)
        {
          IOSArray_throwOutOfBoundsWithMsg(v18, v10 + 1);
        }

        v19 = *(a1 + 12 + v6);
        v20 = v10 + 2;
        if (v10 + 2 < 0 || v20 >= v18)
        {
          IOSArray_throwOutOfBoundsWithMsg(v18, v20);
        }

        if (!a4)
        {
          goto LABEL_59;
        }

        v21 = *(a1 + 12 + v20);
        v22 = *(a4 + 8);
        if ((v9 & 0x80000000) != 0 || v9 >= v22)
        {
          IOSArray_throwOutOfBoundsWithMsg(v22, v9);
        }

        v17 = (v9 + 1);
        *(a4 + 12 + 2 * v9) = (v12 << 12) | ((v19 & 0x3F) << 6) | v21 & 0x3F;
        LODWORD(v6) = v10 + 3;
        goto LABEL_29;
      }

      v23 = *(a1 + 8);
      if (v10 < -1 || v6 >= v23)
      {
        IOSArray_throwOutOfBoundsWithMsg(v23, v10 + 1);
      }

      v24 = v10 + 2;
      if (v10 + 2 < 0 || v24 >= v23)
      {
        IOSArray_throwOutOfBoundsWithMsg(v23, v24);
      }

      v25 = *(a1 + 12 + v24);
      v26 = v10 + 3;
      if (v10 + 3 < 0 || v26 >= v23)
      {
        IOSArray_throwOutOfBoundsWithMsg(v23, v26);
      }

      v27 = ((v12 & 7) << 18) | ((*(a1 + 12 + v6) & 0x3F) << 12) | ((v25 & 0x3F) << 6);
      v12 = v27 | *(a1 + 12 + v26) & 0x3F;
      LODWORD(v6) = v10 + 4;
      if (v12 <= 0xFFFE)
      {
        goto LABEL_9;
      }

      if (!a4)
      {
        goto LABEL_59;
      }

      v28 = *(a4 + 8);
      if ((v9 & 0x80000000) != 0 || v9 >= v28)
      {
        IOSArray_throwOutOfBoundsWithMsg(v28, v9);
      }

      v29 = v9 + 1;
      *(a4 + 12 + 2 * v9) = ((v27 + 67043328) >> 10) - 10240;
      v30 = *(a4 + 8);
      if (v9 + 1 < 0 || v29 >= v30)
      {
        IOSArray_throwOutOfBoundsWithMsg(v30, (v9 + 1));
      }

      v9 = (v9 + 2);
      *(a4 + 12 + 2 * v29) = v12 & 0x3FF | 0xDC00;
LABEL_30:
      if (v6 >= v8)
      {
        return v9;
      }
    }

    v14 = *(a1 + 8);
    if (v10 < -1 || v6 >= v14)
    {
      IOSArray_throwOutOfBoundsWithMsg(v14, v10 + 1);
    }

    if (!a4)
    {
      goto LABEL_59;
    }

    v15 = *(a1 + 12 + v6);
    v16 = *(a4 + 8);
    if ((v9 & 0x80000000) != 0 || v9 >= v16)
    {
      IOSArray_throwOutOfBoundsWithMsg(v16, v9);
    }

    LODWORD(v6) = v10 + 2;
    v17 = (v9 + 1);
    *(a4 + 12 + 2 * v9) = ((v12 & 0x1F) << 6) | v15 & 0x3F;
LABEL_29:
    v9 = v17;
    goto LABEL_30;
  }

  return 0;
}

uint64_t OrgApacheLuceneUtilUnicodeUtil_UTF8toUTF16WithOrgApacheLuceneUtilBytesRef_withCharArray_(uint64_t a1, uint64_t a2)
{
  if (atomic_load_explicit(OrgApacheLuceneUtilUnicodeUtil__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_10012DE44();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 20);

  return OrgApacheLuceneUtilUnicodeUtil_UTF8toUTF16WithByteArray_withInt_withInt_withCharArray_(v4, v5, v6, a2);
}

id OrgApacheLuceneIndexMergeState_initWithJavaUtilList_withOrgApacheLuceneIndexSegmentInfo_withOrgApacheLuceneUtilInfoStream_(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    goto LABEL_43;
  }

  v8 = [a2 size];
  v46 = a4;
  if (qword_1005547D0 != -1)
  {
    sub_10012E944();
  }

  JreStrongAssignAndConsume((a1 + 72), [IOSObjectArray newArrayWithLength:v8 type:qword_1005547C8, a3]);
  JreStrongAssignAndConsume((a1 + 88), [IOSIntArray newArrayWithLength:v8]);
  JreStrongAssignAndConsume((a1 + 96), [IOSIntArray newArrayWithLength:v8]);
  v9 = [IOSObjectArray newArrayWithLength:v8 type:OrgApacheLuceneCodecsFieldsProducer_class_()];
  JreStrongAssignAndConsume((a1 + 80), v9);
  v10 = [IOSObjectArray newArrayWithLength:v8 type:OrgApacheLuceneCodecsNormsProducer_class_()];
  JreStrongAssignAndConsume((a1 + 40), v10);
  v11 = [IOSObjectArray newArrayWithLength:v8 type:OrgApacheLuceneCodecsStoredFieldsReader_class_()];
  JreStrongAssignAndConsume((a1 + 24), v11);
  v12 = [IOSObjectArray newArrayWithLength:v8 type:OrgApacheLuceneCodecsTermVectorsReader_class_()];
  JreStrongAssignAndConsume((a1 + 32), v12);
  v13 = [IOSObjectArray newArrayWithLength:v8 type:OrgApacheLuceneCodecsDocValuesProducer_class_()];
  JreStrongAssignAndConsume((a1 + 48), v13);
  v14 = [IOSObjectArray newArrayWithLength:v8 type:OrgApacheLuceneIndexFieldInfos_class_()];
  JreStrongAssignAndConsume((a1 + 56), v14);
  v15 = [IOSObjectArray newArrayWithLength:v8 type:OrgApacheLuceneUtilBits_class_()];
  JreStrongAssignAndConsume((a1 + 64), v15);
  if (v8 >= 1)
  {
    v16 = 0;
    while (1)
    {
      v17 = [a2 getWithInt:v16];
      if (!v17)
      {
        break;
      }

      v18 = v17;
      v19 = [v17 maxDoc];
      v20 = *(a1 + 96);
      v21 = *(v20 + 8);
      if (v16 >= v21)
      {
        IOSArray_throwOutOfBoundsWithMsg(v21, v16);
      }

      *(v20 + 12 + 4 * v16) = v19;
      IOSObjectArray_Set(*(a1 + 64), v16, [v18 getLiveDocs]);
      IOSObjectArray_Set(*(a1 + 56), v16, [v18 getFieldInfos]);
      IOSObjectArray_Set(*(a1 + 40), v16, [v18 getNormsReader]);
      v22 = *(a1 + 40);
      v23 = *(v22 + 8);
      if (v16 >= v23)
      {
        IOSArray_throwOutOfBoundsWithMsg(v23, v16);
      }

      if (*(v22 + 24 + 8 * v16))
      {
        v24 = *(a1 + 40);
        v25 = *(v24 + 8);
        if (v16 >= v25)
        {
          IOSArray_throwOutOfBoundsWithMsg(v25, v16);
        }

        v26 = *(v24 + 24 + 8 * v16);
        if (!v26)
        {
          break;
        }

        IOSObjectArray_Set(v24, v16, [v26 getMergeInstance]);
      }

      IOSObjectArray_Set(*(a1 + 48), v16, [v18 getDocValuesReader]);
      v27 = *(a1 + 48);
      v28 = *(v27 + 8);
      if (v16 >= v28)
      {
        IOSArray_throwOutOfBoundsWithMsg(v28, v16);
      }

      if (*(v27 + 24 + 8 * v16))
      {
        v29 = *(a1 + 48);
        v30 = *(v29 + 8);
        if (v16 >= v30)
        {
          IOSArray_throwOutOfBoundsWithMsg(v30, v16);
        }

        v31 = *(v29 + 24 + 8 * v16);
        if (!v31)
        {
          break;
        }

        IOSObjectArray_Set(v29, v16, [v31 getMergeInstance]);
      }

      IOSObjectArray_Set(*(a1 + 24), v16, [v18 getFieldsReader]);
      v32 = *(a1 + 24);
      v33 = *(v32 + 8);
      if (v16 >= v33)
      {
        IOSArray_throwOutOfBoundsWithMsg(v33, v16);
      }

      if (*(v32 + 24 + 8 * v16))
      {
        v34 = *(a1 + 24);
        v35 = *(v34 + 8);
        if (v16 >= v35)
        {
          IOSArray_throwOutOfBoundsWithMsg(v35, v16);
        }

        v36 = *(v34 + 24 + 8 * v16);
        if (!v36)
        {
          break;
        }

        IOSObjectArray_Set(v34, v16, [v36 getMergeInstance]);
      }

      IOSObjectArray_Set(*(a1 + 32), v16, [v18 getTermVectorsReader]);
      v37 = *(a1 + 32);
      v38 = *(v37 + 8);
      if (v16 >= v38)
      {
        IOSArray_throwOutOfBoundsWithMsg(v38, v16);
      }

      if (*(v37 + 24 + 8 * v16))
      {
        v39 = *(a1 + 32);
        v40 = *(v39 + 8);
        if (v16 >= v40)
        {
          IOSArray_throwOutOfBoundsWithMsg(v40, v16);
        }

        v41 = *(v39 + 24 + 8 * v16);
        if (!v41)
        {
          break;
        }

        IOSObjectArray_Set(v39, v16, [v41 getMergeInstance]);
      }

      v42 = *(a1 + 80);
      v43 = [v18 getPostingsReader];
      if (!v43)
      {
        break;
      }

      IOSObjectArray_Set(v42, v16++, [v43 getMergeInstance]);
      if (v8 == v16)
      {
        goto LABEL_40;
      }
    }

LABEL_43:
    JreThrowNullPointerException();
  }

LABEL_40:
  JreStrongAssign((a1 + 8), v45);
  JreStrongAssign((a1 + 104), v46);

  return sub_10012E3B0(a1, a2);
}

id sub_10012E3B0(void *a1, void *a2)
{
  v2 = a1[12];
  if (!v2)
  {
    goto LABEL_17;
  }

  v4 = *(v2 + 8);
  if (v4 >= 1)
  {
    if (a2)
    {
      v6 = 0;
      LODWORD(v7) = 0;
      while (1)
      {
        v8 = [a2 getWithInt:v6];
        v9 = a1[11];
        if (!v9)
        {
          break;
        }

        v10 = v8;
        v11 = *(v9 + 8);
        if (v6 >= v11)
        {
          IOSArray_throwOutOfBoundsWithMsg(v11, v6);
        }

        *(v9 + 12 + 4 * v6) = v7;
        v12 = OrgApacheLuceneIndexMergeState_DocMap_buildWithOrgApacheLuceneIndexCodecReader_(v10);
        v13 = a1[9];
        if (!v13)
        {
          break;
        }

        IOSObjectArray_Set(v13, v6, v12);
        if (!v12)
        {
          break;
        }

        v14 = [(OrgApacheLuceneIndexMergeState_DocMap_$1 *)v12 maxDoc];
        v7 = v14 + v7 - [(OrgApacheLuceneIndexMergeState_DocMap_$1 *)v12 numDeletedDocs];
        if (v4 == ++v6)
        {
          goto LABEL_13;
        }
      }
    }

LABEL_17:
    JreThrowNullPointerException();
  }

  v7 = 0;
LABEL_13:
  v15 = a1[1];
  if (!v15)
  {
    goto LABEL_17;
  }

  return [v15 setMaxDocWithInt:v7];
}

OrgApacheLuceneIndexMergeState_DocMap_$1 *OrgApacheLuceneIndexMergeState_DocMap_buildWithOrgApacheLuceneIndexCodecReader_(void *a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v2 = [a1 maxDoc];
  if ([a1 hasDeletions])
  {
    v3 = [a1 getLiveDocs];

    return OrgApacheLuceneIndexMergeState_DocMap_buildWithInt_withOrgApacheLuceneUtilBits_(v2, v3);
  }

  else
  {
    v5 = [OrgApacheLuceneIndexMergeState_NoDelDocMap alloc];
    v5->maxDoc_ = v2;

    return v5;
  }
}

OrgApacheLuceneIndexMergeState_DocMap_$1 *OrgApacheLuceneIndexMergeState_DocMap_buildWithInt_withOrgApacheLuceneUtilBits_(int a1, void *a2)
{
  v4 = OrgApacheLuceneUtilPackedPackedLongValues_monotonicBuilderWithFloat_(0.0);
  v5 = v4;
  if (a1 < 1)
  {
    v6 = 0;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_11:
    JreThrowNullPointerException();
  }

  if (!v4)
  {
    goto LABEL_11;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    [(OrgApacheLuceneUtilPackedPackedLongValues_Builder *)v5 addWithLong:v7 - v6];
    if (!a2)
    {
      goto LABEL_11;
    }

    v6 += [a2 getWithInt:v7] ^ 1;
    v7 = (v7 + 1);
  }

  while (a1 != v7);
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_7:
  v8 = [(OrgApacheLuceneUtilPackedMonotonicLongValues_Builder *)v5 build];
  v9 = [OrgApacheLuceneIndexMergeState_DocMap__1 alloc];
  JreStrongAssign(&v9->val$liveDocs_, a2);
  JreStrongAssign(&v9->val$docMap_, v8);
  v9->val$maxDoc_ = a1;
  v9->val$numDeletedDocs_ = v6;

  return v9;
}

id OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexReader_initWithOrgApacheLuceneStoreIndexInput_withOrgApacheLuceneIndexSegmentInfo_(uint64_t a1, void *a2, void *a3)
{
  if (!a3 || (*(a1 + 8) = [a3 maxDoc], v5 = +[IOSIntArray arrayWithLength:](IOSIntArray, "arrayWithLength:", 16), v6 = +[IOSLongArray arrayWithLength:](IOSLongArray, "arrayWithLength:", 16), v7 = +[IOSIntArray arrayWithLength:](IOSIntArray, "arrayWithLength:", 16), v8 = +[IOSLongArray arrayWithLength:](IOSLongArray, "arrayWithLength:", 16), v56 = +[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", 16, OrgApacheLuceneUtilPackedPackedInts_Reader_class_()), v9 = +[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", 16, OrgApacheLuceneUtilPackedPackedInts_Reader_class_()), !a2))
  {
LABEL_38:
    JreThrowNullPointerException();
  }

  v10 = v9;
  v54 = a1;
  v55 = [a2 readVInt];
  v11 = [a2 readVInt];
  if (v11)
  {
    v18 = v11;
    v19 = 0;
    while (1)
    {
      if (v19 == v5->super.size_)
      {
        v20 = OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(v19 + 1, 8, v12, v13, v14, v15, v16, v17);
        v5 = JavaUtilArrays_copyOfWithIntArray_withInt_(v5, v20);
        v6 = JavaUtilArrays_copyOfWithLongArray_withInt_(v6, v20);
        v7 = JavaUtilArrays_copyOfWithIntArray_withInt_(v7, v20);
        v8 = JavaUtilArrays_copyOfWithLongArray_withInt_(v8, v20);
        v56 = JavaUtilArrays_copyOfWithNSObjectArray_withInt_(v56, v20);
        v10 = JavaUtilArrays_copyOfWithNSObjectArray_withInt_(v10, v20);
        v21 = [a2 readVInt];
        if (!v5)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v21 = [a2 readVInt];
      }

      v22 = v21;
      size = v5->super.size_;
      if ((v19 & 0x80000000) != 0 || v19 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v19);
      }

      *(&v5->super.size_ + v19 + 1) = v22;
      v24 = [a2 readVInt];
      if (!v7)
      {
        goto LABEL_38;
      }

      v25 = v24;
      v26 = v7->super.size_;
      if ((v19 & 0x80000000) != 0 || v19 >= v26)
      {
        IOSArray_throwOutOfBoundsWithMsg(v26, v19);
      }

      *(&v7->super.size_ + v19 + 1) = v25;
      v34 = [a2 readVInt];
      if (v34 >= 33)
      {
        break;
      }

      if (!v56)
      {
        goto LABEL_38;
      }

      if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100003648();
      }

      ReaderNoHeaderWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt = OrgApacheLuceneUtilPackedPackedInts_getReaderNoHeaderWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt_(a2, OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_, v55, v18, v34, v31, v32, v33);
      IOSObjectArray_Set(v56, v19, ReaderNoHeaderWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt);
      v36 = [a2 readVLong];
      if (!v6)
      {
        goto LABEL_38;
      }

      v37 = v36;
      v38 = v6->super.size_;
      if ((v19 & 0x80000000) != 0 || v19 >= v38)
      {
        IOSArray_throwOutOfBoundsWithMsg(v38, v19);
      }

      v6->buffer_[v19] = v37;
      v39 = [a2 readVLong];
      if (!v8)
      {
        goto LABEL_38;
      }

      v40 = v39;
      v41 = v8->super.size_;
      if ((v19 & 0x80000000) != 0 || v19 >= v41)
      {
        IOSArray_throwOutOfBoundsWithMsg(v41, v19);
      }

      v8->buffer_[v19] = v40;
      v42 = [a2 readVInt];
      if (v42 >= 65)
      {
        v51 = @"Corrupted bitsPerStartPointer: ";
LABEL_41:
        v52 = JreStrcat("$I", v27, v28, v29, v30, v31, v32, v33, v51);
        v53 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v52, a2);
        objc_exception_throw(v53);
      }

      if (!v10)
      {
        goto LABEL_38;
      }

      if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100003648();
      }

      v43 = OrgApacheLuceneUtilPackedPackedInts_getReaderNoHeaderWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt_(a2, OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_, v55, v18, v42, v31, v32, v33);
      IOSObjectArray_Set(v10, v19, v43);
      v19 = (v19 + 1);
      v18 = [a2 readVInt];
      if (!v18)
      {
        goto LABEL_35;
      }
    }

    v51 = @"Corrupted bitsPerDocBase: ";
    goto LABEL_41;
  }

  LODWORD(v19) = 0;
LABEL_35:
  v44 = JavaUtilArrays_copyOfWithIntArray_withInt_(v5, v19);
  JreStrongAssign(v54 + 2, v44);
  v45 = JavaUtilArrays_copyOfWithLongArray_withInt_(v6, v19);
  JreStrongAssign(v54 + 3, v45);
  v46 = JavaUtilArrays_copyOfWithIntArray_withInt_(v7, v19);
  JreStrongAssign(v54 + 4, v46);
  v47 = JavaUtilArrays_copyOfWithLongArray_withInt_(v8, v19);
  JreStrongAssign(v54 + 5, v47);
  v48 = JavaUtilArrays_copyOfWithNSObjectArray_withInt_(v56, v19);
  JreStrongAssign(v54 + 6, v48);
  v49 = JavaUtilArrays_copyOfWithNSObjectArray_withInt_(v10, v19);

  return JreStrongAssign(v54 + 7, v49);
}

uint64_t sub_10012EE18(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  v3 = *(v2 + 8);
  LODWORD(v4) = v3 - 1;
  if (v3 - 1 < 0)
  {
    return (v3 - 1);
  }

  v6 = 0;
  do
  {
    v7 = (v6 + v4) >> 1;
    v8 = *(a1 + 16);
    v9 = *(v8 + 8);
    if (v7 >= v9)
    {
      IOSArray_throwOutOfBoundsWithMsg(v9, (v6 + v4) >> 1);
    }

    v10 = *(v8 + 12 + 4 * v7);
    if (v10 == a2)
    {
      break;
    }

    v4 = v10 >= a2 ? (v7 - 1) : v4;
    if (v10 < a2)
    {
      v6 = v7 + 1;
    }

    v7 = v4;
  }

  while (v6 <= v4);
  return v7;
}

uint64_t sub_10012EEF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    goto LABEL_9;
  }

  v5 = *(v3 + 8);
  if ((a2 & 0x80000000) != 0 || v5 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v5, a2);
  }

  v6 = *(a1 + 48);
  if (!v6)
  {
    goto LABEL_9;
  }

  v8 = *(v6 + 8);
  if ((a2 & 0x80000000) != 0 || v8 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, a2);
  }

  v9 = *(v6 + 24 + 8 * a2);
  if (!v9)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  v7 = *(v3 + 12 + 4 * a2);
  return OrgApacheLuceneUtilBitUtil_zigZagDecodeWithLong_([v9 getWithInt:a3]) + v7 * a3;
}

unint64_t sub_10012EFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  if (!v3)
  {
    goto LABEL_9;
  }

  v5 = *(v3 + 8);
  if ((a2 & 0x80000000) != 0 || v5 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v5, a2);
  }

  v6 = *(a1 + 56);
  if (!v6)
  {
    goto LABEL_9;
  }

  v8 = *(v6 + 8);
  if ((a2 & 0x80000000) != 0 || v8 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, a2);
  }

  v9 = *(v6 + 24 + 8 * a2);
  if (!v9)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  v7 = *(v3 + 16 + 8 * a2);
  return OrgApacheLuceneUtilBitUtil_zigZagDecodeWithLong_([v9 getWithInt:a3]) + v7 * a3;
}

uint64_t sub_10012F0B0(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 48);
  if (!v3)
  {
    goto LABEL_17;
  }

  v7 = *(v3 + 8);
  if ((a2 & 0x80000000) != 0 || v7 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, a2);
  }

  v8 = *(v3 + 24 + 8 * a2);
  if (!v8)
  {
LABEL_17:
    JreThrowNullPointerException();
  }

  v9 = [v8 size];
  v10 = v9 - 1;
  if ((v9 - 1) >= 0)
  {
    v11 = 0;
    while (1)
    {
      v12 = (v11 + v10) >> 1;
      v13 = sub_10012EEF4(a1, a2, v12);
      if (v13 == a3)
      {
        break;
      }

      if (v13 >= a3)
      {
        v10 = v12 - 1;
      }

      else
      {
        v10 = v10;
      }

      if (v13 < a3)
      {
        v11 = v12 + 1;
      }

      if (v11 > v10)
      {
        return v10;
      }
    }

    return (v11 + v10) >> 1;
  }

  return v10;
}

OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexReader *new_OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexReader_initWithOrgApacheLuceneStoreIndexInput_withOrgApacheLuceneIndexSegmentInfo_(void *a1, void *a2)
{
  v4 = [OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexReader alloc];
  OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexReader_initWithOrgApacheLuceneStoreIndexInput_withOrgApacheLuceneIndexSegmentInfo_(v4, a1, a2);
  return v4;
}

uint64_t OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexReader_class_()
{
  if ((atomic_load_explicit(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexReader__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10012F728();
  }

  if (qword_1005547E8 != -1)
  {
    sub_10012F734();
  }

  return qword_1005547E0;
}

id OrgApacheLuceneDocumentTextField_initWithNSString_withNSString_withOrgApacheLuceneDocumentField_StoreEnum_(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if ((atomic_load_explicit(&OrgApacheLuceneDocumentField_StoreEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000666F8();
  }

  if (OrgApacheLuceneDocumentField_StoreEnum_values_[0] == a4)
  {
    v8 = &OrgApacheLuceneDocumentTextField_TYPE_STORED_;
  }

  else
  {
    v8 = &OrgApacheLuceneDocumentTextField_TYPE_NOT_STORED_;
  }

  v9 = *v8;

  return OrgApacheLuceneDocumentField_initWithNSString_withNSString_withOrgApacheLuceneDocumentFieldType_(a1, a2, a3, v9);
}

OrgLukhnosPortmobileInvokeMethodHandle_NoArgsConstructor *new_OrgLukhnosPortmobileInvokeMethodHandle_NoArgsConstructor_initWithIOSClass_(void *a1)
{
  v2 = [OrgLukhnosPortmobileInvokeMethodHandle_NoArgsConstructor alloc];
  JreStrongAssign(&v2->clazz_, a1);
  return v2;
}

uint64_t OrgApacheLuceneCodecsBlockTermState_init(uint64_t a1, uint64_t a2)
{
  result = OrgApacheLuceneIndexOrdTermState_init(a1, a2);
  *(a1 + 48) = 1;
  return result;
}

void *OrgApacheLuceneIndexTermContext_initWithOrgApacheLuceneIndexIndexReaderContext_(uint64_t a1, void *a2)
{
  JreStrongAssign((a1 + 8), a2);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (!a2)
  {
    goto LABEL_9;
  }

  if ([a2 leaves])
  {
    v4 = [a2 leaves];
    if (v4)
    {
      v5 = [v4 size];
      goto LABEL_6;
    }

LABEL_9:
    JreThrowNullPointerException();
  }

  v5 = 1;
LABEL_6:
  v6 = [IOSObjectArray newArrayWithLength:v5 type:OrgApacheLuceneIndexTermState_class_()];

  return JreStrongAssignAndConsume((a1 + 16), v6);
}

OrgApacheLuceneIndexTermContext *OrgApacheLuceneIndexTermContext_buildWithOrgApacheLuceneIndexIndexReaderContext_withOrgApacheLuceneIndexTerm_(void *a1, void *a2)
{
  if (!a2)
  {
    goto LABEL_18;
  }

  v4 = [a2 field];
  v5 = [a2 bytes];
  v6 = [OrgApacheLuceneIndexTermContext alloc];
  OrgApacheLuceneIndexTermContext_initWithOrgApacheLuceneIndexIndexReaderContext_(v6, a1);
  v19 = v6;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  if (!a1 || (v7 = [a1 leaves]) == 0)
  {
LABEL_18:
    JreThrowNullPointerException();
  }

  v8 = v7;
  v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if (!v13)
        {
          goto LABEL_18;
        }

        v14 = [*(*(&v20 + 1) + 8 * i) reader];
        if (!v14)
        {
          goto LABEL_18;
        }

        v15 = [v14 termsWithNSString:v4];
        if (v15)
        {
          v16 = [v15 iterator];
          if (!v16)
          {
            goto LABEL_18;
          }

          v17 = v16;
          if ([v16 seekExactWithOrgApacheLuceneUtilBytesRef:v5])
          {
            -[OrgApacheLuceneIndexTermContext register__WithOrgApacheLuceneIndexTermState:withInt:withInt:withLong:](v19, "register__WithOrgApacheLuceneIndexTermState:withInt:withInt:withLong:", [v17 termState], *(v13 + 28), objc_msgSend(v17, "docFreq"), objc_msgSend(v17, "totalTermFreq"));
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  return v19;
}

OrgApacheLuceneIndexTermContext *new_OrgApacheLuceneIndexTermContext_initWithOrgApacheLuceneIndexIndexReaderContext_(void *a1)
{
  v2 = [OrgApacheLuceneIndexTermContext alloc];
  OrgApacheLuceneIndexTermContext_initWithOrgApacheLuceneIndexIndexReaderContext_(v2, a1);
  return v2;
}

OrgApacheLuceneIndexTermContext *new_OrgApacheLuceneIndexTermContext_initWithOrgApacheLuceneIndexIndexReaderContext_withOrgApacheLuceneIndexTermState_withInt_withInt_withLong_(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [OrgApacheLuceneIndexTermContext alloc];
  OrgApacheLuceneIndexTermContext_initWithOrgApacheLuceneIndexIndexReaderContext_(v10, a1);
  [(OrgApacheLuceneIndexTermContext *)v10 register__WithOrgApacheLuceneIndexTermState:a2 withInt:a3 withInt:a4 withLong:a5];
  return v10;
}

uint64_t OrgApacheLuceneIndexTermContext_class_()
{
  if (qword_1005547F8 != -1)
  {
    sub_100130358();
  }

  return qword_1005547F0;
}

OrgApacheLuceneIndexMultiFields *OrgApacheLuceneIndexMultiFields_getFieldsWithOrgApacheLuceneIndexIndexReader_(void *a1)
{
  if (!a1)
  {
    goto LABEL_25;
  }

  v1 = [a1 leaves];
  if (!v1)
  {
    goto LABEL_25;
  }

  v2 = v1;
  if ([v1 size] == 1)
  {
    v3 = [v2 getWithInt:0];
    if (v3)
    {
      v4 = [v3 reader];
      if (v4)
      {

        return [v4 fields];
      }
    }

LABEL_25:
    JreThrowNullPointerException();
  }

  v6 = new_JavaUtilArrayList_init();
  v7 = new_JavaUtilArrayList_init();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v2);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if (!v12)
        {
          goto LABEL_25;
        }

        v13 = [*(*(&v18 + 1) + 8 * i) reader];
        if (!v13)
        {
          goto LABEL_25;
        }

        v14 = v13;
        -[JavaUtilArrayList addWithId:](v6, "addWithId:", [v13 fields]);
        -[JavaUtilArrayList addWithId:](v7, "addWithId:", new_OrgApacheLuceneIndexReaderSlice_initWithInt_withInt_withInt_(*(v12 + 32), [v14 maxDoc], -[JavaUtilArrayList size](v6, "size") - 1));
      }

      v9 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  if ([(JavaUtilArrayList *)v6 size]== 1)
  {
    return [(JavaUtilArrayList *)v6 getWithInt:0];
  }

  if ((atomic_load_explicit(OrgApacheLuceneIndexFields__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001310FC();
  }

  v15 = [(JavaUtilArrayList *)v6 toArrayWithNSObjectArray:OrgApacheLuceneIndexFields_EMPTY_ARRAY_];
  if ((atomic_load_explicit(OrgApacheLuceneIndexReaderSlice__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10013111C();
  }

  v16 = [(JavaUtilArrayList *)v7 toArrayWithNSObjectArray:OrgApacheLuceneIndexReaderSlice_EMPTY_ARRAY_];
  v17 = [OrgApacheLuceneIndexMultiFields alloc];
  OrgApacheLuceneIndexMultiFields_initWithOrgApacheLuceneIndexFieldsArray_withOrgApacheLuceneIndexReaderSliceArray_(&v17->super.super.isa, v15, v16);
  return v17;
}

OrgApacheLuceneIndexMultiBits *OrgApacheLuceneIndexMultiFields_getLiveDocsWithOrgApacheLuceneIndexIndexReader_(void *a1)
{
  if (!a1)
  {
    goto LABEL_24;
  }

  if (![a1 hasDeletions])
  {
    return 0;
  }

  v2 = [a1 leaves];
  if (!v2)
  {
    goto LABEL_24;
  }

  v3 = v2;
  v4 = [v2 size];
  if (v4 == 1)
  {
    v5 = [v3 getWithInt:0];
    if (v5)
    {
      v6 = [v5 reader];
      if (v6)
      {

        return [v6 getLiveDocs];
      }
    }

LABEL_24:
    JreThrowNullPointerException();
  }

  v8 = v4;
  v20 = v4;
  v9 = [IOSObjectArray arrayWithLength:v4 type:OrgApacheLuceneUtilBits_class_()];
  v10 = [IOSIntArray arrayWithLength:v8 + 1];
  if (v8 >= 1)
  {
    v11 = 0;
    do
    {
      v12 = [v3 getWithInt:v11];
      if (!v12)
      {
        goto LABEL_24;
      }

      v13 = v12;
      v14 = [v12 reader];
      if (!v14)
      {
        goto LABEL_24;
      }

      IOSObjectArray_Set(v9, v11, [v14 getLiveDocs]);
      v15 = v13[8];
      size = v10->super.size_;
      if (v11 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v11);
      }

      *(&v10->super.size_ + ++v11) = v15;
    }

    while (v8 != v11);
  }

  v17 = [a1 maxDoc];
  v18 = v10->super.size_;
  if ((v8 & 0x80000000) != 0 || v8 >= v18)
  {
    IOSArray_throwOutOfBoundsWithMsg(v18, v8);
  }

  *(&v10->super.size_ + v20 + 1) = v17;
  v19 = new_OrgApacheLuceneIndexMultiBits_initWithOrgApacheLuceneUtilBitsArray_withIntArray_withBoolean_(v9, v10, 1);

  return v19;
}

id OrgApacheLuceneIndexMultiFields_getTermsWithOrgApacheLuceneIndexIndexReader_withNSString_(void *a1, uint64_t a2)
{
  FieldsWithOrgApacheLuceneIndexIndexReader = OrgApacheLuceneIndexMultiFields_getFieldsWithOrgApacheLuceneIndexIndexReader_(a1);
  if (!FieldsWithOrgApacheLuceneIndexIndexReader)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexMultiFields *)FieldsWithOrgApacheLuceneIndexIndexReader termsWithNSString:a2];
}

id OrgApacheLuceneIndexMultiFields_getTermDocsEnumWithOrgApacheLuceneIndexIndexReader_withNSString_withOrgApacheLuceneUtilBytesRef_withInt_(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FieldsWithOrgApacheLuceneIndexIndexReader = OrgApacheLuceneIndexMultiFields_getFieldsWithOrgApacheLuceneIndexIndexReader_(a1);
  if (!FieldsWithOrgApacheLuceneIndexIndexReader)
  {
    goto LABEL_9;
  }

  v8 = [(OrgApacheLuceneIndexMultiFields *)FieldsWithOrgApacheLuceneIndexIndexReader termsWithNSString:a2];
  if (!v8)
  {
    return 0;
  }

  v9 = [v8 iterator];
  if (!v9)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  v10 = v9;
  if (![v9 seekExactWithOrgApacheLuceneUtilBytesRef:a3])
  {
    return 0;
  }

  return [v10 postingsWithOrgApacheLuceneIndexPostingsEnum:0 withInt:a4];
}

id OrgApacheLuceneIndexMultiFields_getTermPositionsEnumWithOrgApacheLuceneIndexIndexReader_withNSString_withOrgApacheLuceneUtilBytesRef_withInt_(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FieldsWithOrgApacheLuceneIndexIndexReader = OrgApacheLuceneIndexMultiFields_getFieldsWithOrgApacheLuceneIndexIndexReader_(a1);
  if (!FieldsWithOrgApacheLuceneIndexIndexReader)
  {
    goto LABEL_9;
  }

  v8 = [(OrgApacheLuceneIndexMultiFields *)FieldsWithOrgApacheLuceneIndexIndexReader termsWithNSString:a2];
  if (!v8)
  {
    return 0;
  }

  v9 = [v8 iterator];
  if (!v9)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  v10 = v9;
  if (![v9 seekExactWithOrgApacheLuceneUtilBytesRef:a3])
  {
    return 0;
  }

  return [v10 postingsWithOrgApacheLuceneIndexPostingsEnum:0 withInt:a4];
}

id OrgApacheLuceneIndexMultiFields_initWithOrgApacheLuceneIndexFieldsArray_withOrgApacheLuceneIndexReaderSliceArray_(id *a1, void *a2, void *a3)
{
  OrgApacheLuceneIndexFields_init(a1, a2);
  v6 = new_JavaUtilConcurrentConcurrentHashMap_init();
  JreStrongAssignAndConsume(a1 + 3, v6);
  JreStrongAssign(a1 + 1, a2);

  return JreStrongAssign(a1 + 2, a3);
}

id OrgApacheLuceneIndexMultiFields_getMergedFieldInfosWithOrgApacheLuceneIndexIndexReader_(void *a1)
{
  v2 = new_OrgApacheLuceneIndexFieldInfos_Builder_init();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  if (!a1 || (v3 = v2, (v4 = [a1 leaves]) == 0))
  {
LABEL_13:
    JreThrowNullPointerException();
  }

  v5 = v4;
  v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (!v10)
        {
          goto LABEL_13;
        }

        v11 = [v10 reader];
        if (!v11)
        {
          goto LABEL_13;
        }

        -[OrgApacheLuceneIndexFieldInfos_Builder addWithOrgApacheLuceneIndexFieldInfos:](v3, "addWithOrgApacheLuceneIndexFieldInfos:", [v11 getFieldInfos]);
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return [(OrgApacheLuceneIndexFieldInfos_Builder *)v3 finish];
}

JavaUtilHashSet *OrgApacheLuceneIndexMultiFields_getIndexedFieldsWithOrgApacheLuceneIndexIndexReader_(void *a1)
{
  v2 = new_JavaUtilHashSet_init();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  MergedFieldInfosWithOrgApacheLuceneIndexIndexReader = OrgApacheLuceneIndexMultiFields_getMergedFieldInfosWithOrgApacheLuceneIndexIndexReader_(a1);
  if (!MergedFieldInfosWithOrgApacheLuceneIndexIndexReader)
  {
LABEL_15:
    JreThrowNullPointerException();
  }

  v4 = MergedFieldInfosWithOrgApacheLuceneIndexIndexReader;
  v5 = [MergedFieldInfosWithOrgApacheLuceneIndexIndexReader countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        if (!v9)
        {
          goto LABEL_15;
        }

        v10 = [*(*(&v12 + 1) + 8 * v8) getIndexOptions];
        if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_100131154();
        }

        if (v10 != OrgApacheLuceneIndexIndexOptionsEnum_values_[0])
        {
          [(JavaUtilHashSet *)v2 addWithId:*(v9 + 8)];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v2;
}

OrgApacheLuceneIndexMultiFields *new_OrgApacheLuceneIndexMultiFields_initWithOrgApacheLuceneIndexFieldsArray_withOrgApacheLuceneIndexReaderSliceArray_(void *a1, void *a2)
{
  v4 = [OrgApacheLuceneIndexMultiFields alloc];
  OrgApacheLuceneIndexMultiFields_initWithOrgApacheLuceneIndexFieldsArray_withOrgApacheLuceneIndexReaderSliceArray_(&v4->super.super.isa, a1, a2);
  return v4;
}

uint64_t OrgApacheLuceneUtilPagedBytes_initWithInt_(uint64_t a1, int a2)
{
  v4 = +[IOSObjectArray newArrayWithLength:type:](IOSObjectArray, "newArrayWithLength:type:", 16, IOSClass_arrayType(+[IOSClass byteClass], 1u));
  JreStrongAssignAndConsume((a1 + 8), v4);
  *(a1 + 20) = 1 << a2;
  *(a1 + 24) = a2;
  *(a1 + 28) = (1 << a2) - 1;
  *(a1 + 36) = 1 << a2;
  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000120A8();
  }

  result = OrgApacheLuceneUtilRamUsageEstimator_alignObjectSizeWithLong_(OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_ARRAY_HEADER_ + (1 << a2));
  *(a1 + 48) = result;
  *(a1 + 16) = 0;
  return result;
}

void *sub_100131BE0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (a1 + 8);
  v8 = *(a1 + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v12 = v8[2];
  if (v12 == *(a1 + 16))
  {
    if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1000120A8();
    }

    v13 = OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(v12, OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF_, a3, a4, a5, a6, a7, a8);
    v14 = JavaUtilArrays_copyOfWithNSObjectArray_withInt_(v8, v13);
    JreStrongAssign(v9, v14);
    v8 = *v9;
    if (!*v9)
    {
LABEL_9:
      JreThrowNullPointerException();
    }
  }

  v15 = *(a1 + 16);
  *(a1 + 16) = v15 + 1;

  return IOSObjectArray_Set(v8, v15, a2);
}

OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput *new_OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput_initWithOrgApacheLuceneUtilPagedBytes_(void *a1)
{
  v2 = [OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput alloc];
  JreStrongAssign(&v2->this$0_, a1);
  OrgApacheLuceneStoreDataOutput_init(v2, v3);
  return v2;
}

OrgApacheLuceneUtilPagedBytes *new_OrgApacheLuceneUtilPagedBytes_initWithInt_(int a1)
{
  v2 = [OrgApacheLuceneUtilPagedBytes alloc];
  OrgApacheLuceneUtilPagedBytes_initWithInt_(v2, a1);
  return v2;
}

uint64_t OrgApacheLuceneUtilPagedBytes_class_()
{
  if ((atomic_load_explicit(&OrgApacheLuceneUtilPagedBytes__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10013331C();
  }

  if (qword_100554818 != -1)
  {
    sub_100133328();
  }

  return qword_100554810;
}

id sub_1001325A4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v4 = JavaUtilArrays_copyOfWithNSObjectArray_withInt_(*(a2 + 8), *(a2 + 16));
  result = JreStrongAssign((a1 + 8), v4);
  *(a1 + 16) = *(a2 + 24);
  *(a1 + 20) = *(a2 + 28);
  *(a1 + 24) = *(a2 + 20);
  *(a1 + 32) = *(a2 + 48);
  return result;
}

uint64_t OrgApacheLuceneUtilPagedBytes_Reader_class_()
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilPagedBytes_Reader__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10013333C();
  }

  if (qword_100554830 != -1)
  {
    sub_100133348();
  }

  return qword_100554828;
}

id OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput_initWithOrgApacheLuceneUtilPagedBytes_(uint64_t a1, void *a2)
{
  JreStrongAssign((a1 + 16), a2);
  OrgApacheLuceneStoreDataInput_init(a1, v4);
  v5 = a2[1];
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  v6 = *(v5 + 8);
  if (v6 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v6, 0);
  }

  v7 = *(v5 + 24);

  return JreStrongAssign((a1 + 32), v7);
}

id OrgApacheLuceneCodecsBlocktreeIntersectTermsEnum_initWithOrgApacheLuceneCodecsBlocktreeFieldReader_withOrgApacheLuceneUtilAutomatonAutomaton_withOrgApacheLuceneUtilAutomatonRunAutomaton_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_withInt_(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, int a7)
{
  OrgApacheLuceneIndexTermsEnum_init(a1);
  v13 = [IOSObjectArray newArrayWithLength:5 type:OrgApacheLuceneUtilFstFST_Arc_class_()];
  JreStrongAssignAndConsume((a1 + 64), v13);
  v14 = new_OrgApacheLuceneUtilBytesRef_init();
  JreStrongAssignAndConsume((a1 + 88), v14);
  v15 = new_OrgApacheLuceneUtilAutomatonTransition_init();
  JreStrongAssignAndConsume((a1 + 128), v15);
  JreStrongAssign((a1 + 56), a2);
  *(a1 + 108) = a7;
  JreStrongAssign((a1 + 32), a4);
  *(a1 + 104) = a7 != -1;
  JreStrongAssign((a1 + 40), a3);
  JreStrongAssign((a1 + 48), a5);
  if (!a2)
  {
    goto LABEL_22;
  }

  Weak = objc_loadWeak((a2 + 96));
  if (!Weak)
  {
    goto LABEL_22;
  }

  v17 = Weak[1];
  if (!v17)
  {
    goto LABEL_22;
  }

  JreStrongAssign((a1 + 16), [v17 clone]);
  v18 = [IOSObjectArray newArrayWithLength:5 type:OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame_class_()];
  JreStrongAssignAndConsume((a1 + 24), v18);
  v19 = *(a1 + 24);
  if (*(v19 + 8) >= 1)
  {
    v20 = 0;
    do
    {
      v21 = new_OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame_initWithOrgApacheLuceneCodecsBlocktreeIntersectTermsEnum_withInt_(a1, v20);
      IOSObjectArray_SetAndConsume(v19, v20++, v21);
      v19 = *(a1 + 24);
    }

    while (v20 < *(v19 + 8));
  }

  v22 = *(a1 + 64);
  if (*(v22 + 8) >= 1)
  {
    v23 = 0;
    do
    {
      v24 = new_OrgApacheLuceneUtilFstFST_Arc_init();
      IOSObjectArray_SetAndConsume(v22, v23++, v24);
      v22 = *(a1 + 64);
    }

    while (v23 < *(v22 + 8));
  }

  v25 = *(a2 + 104);
  v26 = v25 ? [v25 getBytesReader] : 0;
  JreStrongAssign((a1 + 96), v26);
  if (!*(a2 + 104))
  {
    goto LABEL_22;
  }

  v27 = *(a1 + 64);
  v28 = *(v27 + 8);
  if (v28 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v28, 0);
  }

  v29 = [*(a2 + 104) getFirstArcWithOrgApacheLuceneUtilFstFST_Arc:*(v27 + 24)];
  v30 = *(a1 + 24);
  v31 = *(v30 + 8);
  if (v31 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v31, 0);
  }

  v32 = *(v30 + 24);
  v33 = *(a2 + 56);
  *(v32 + 24) = v33;
  *(v32 + 16) = v33;
  *(v32 + 112) = 0;
  if (!a4)
  {
LABEL_22:
    JreThrowNullPointerException();
  }

  [v32 setStateWithInt:{objc_msgSend(a4, "getInitialState")}];
  JreStrongAssign((v32 + 160), v29);
  JreStrongAssign((v32 + 200), v29[2]);
  [v32 load__WithOrgApacheLuceneUtilBytesRef:*(a2 + 64)];
  JreStrongAssign((a1 + 72), v32);
  if (a6)
  {
    sub_10013409C(a1, a6, v34, v35, v36, v37, v38, v39);
  }

  v40 = *(*(a1 + 72) + 136);

  return JreStrongAssign((a1 + 80), v40);
}

uint64_t sub_100133850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 24);
  if (!v8)
  {
    JreThrowNullPointerException();
  }

  v11 = *(v8 + 8);
  if (v11 <= a2)
  {
    if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1000120A8();
    }

    v12 = OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(a2 + 1, OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF_, a3, a4, a5, a6, a7, a8);
    v13 = [IOSObjectArray arrayWithLength:v12 type:OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame_class_()];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(a1 + 24), 0, v13, 0, *(*(a1 + 24) + 8));
    v14 = *(*(a1 + 24) + 8);
    if (v14 < v13->super.size_)
    {
      do
      {
        v15 = new_OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame_initWithOrgApacheLuceneCodecsBlocktreeIntersectTermsEnum_withInt_(a1, v14);
        IOSObjectArray_SetAndConsume(v13, v14++, v15);
      }

      while (v14 < v13->super.size_);
    }

    JreStrongAssign((a1 + 24), v13);
    v8 = *(a1 + 24);
    v11 = *(v8 + 8);
  }

  if ((a2 & 0x80000000) != 0 || v11 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v11, a2);
  }

  return *(v8 + 24 + 8 * a2);
}

uint64_t sub_1001339C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 64);
  if (!v8)
  {
    JreThrowNullPointerException();
  }

  v11 = *(v8 + 8);
  if (v11 <= a2)
  {
    if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1000120A8();
    }

    v12 = OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(a2 + 1, OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF_, a3, a4, a5, a6, a7, a8);
    v13 = [IOSObjectArray arrayWithLength:v12 type:OrgApacheLuceneUtilFstFST_Arc_class_()];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(a1 + 64), 0, v13, 0, *(*(a1 + 64) + 8));
    v14 = *(*(a1 + 64) + 8);
    if (v14 < v13->super.size_)
    {
      do
      {
        v15 = new_OrgApacheLuceneUtilFstFST_Arc_init();
        IOSObjectArray_SetAndConsume(v13, v14++, v15);
      }

      while (v14 < v13->super.size_);
    }

    JreStrongAssign((a1 + 64), v13);
    v8 = *(a1 + 64);
    v11 = *(v8 + 8);
  }

  if ((a2 & 0x80000000) != 0 || v11 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v11, a2);
  }

  return *(v8 + 24 + 8 * a2);
}

uint64_t sub_100133B28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1[9];
  if (v10)
  {
    v11 = (*(v10 + 8) + 1);
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_100133850(a1, v11, a3, a4, a5, a6, a7, a8);
  v13 = a1[9];
  if (!v13)
  {
    goto LABEL_19;
  }

  v14 = v12;
  v15 = *(v13 + 40);
  *(v12 + 24) = v15;
  *(v12 + 16) = v15;
  *(v12 + 112) = *(a1[9] + 212) + *(a1[9] + 112);
  [v12 setStateWithInt:a2];
  v22 = a1[9];
  v23 = *(v22 + 160);
  v24 = *(v22 + 112);
  v25 = *(v22 + 200);
  if (v24 < *(v14 + 112))
  {
    while (1)
    {
      v26 = a1[11];
      if (!v26)
      {
        break;
      }

      v27 = *(v26 + 8);
      if (!v27)
      {
        break;
      }

      v28 = *(v27 + 8);
      if (v24 < 0 || v24 >= v28)
      {
        IOSArray_throwOutOfBoundsWithMsg(v28, v24);
      }

      v29 = a1[7];
      if (!v29)
      {
        break;
      }

      v30 = *(v29 + 104);
      if (!v30)
      {
        break;
      }

      v23 = [v30 findTargetArcWithInt:*(v27 + 12 + v24) withOrgApacheLuceneUtilFstFST_Arc:v23 withOrgApacheLuceneUtilFstFST_Arc:sub_1001339C0(a1 withOrgApacheLuceneUtilFstFST_BytesReader:{(v24 + 1), v16, v17, v18, v19, v20, v21), a1[12]}];
      if (!OrgApacheLuceneCodecsBlocktreeIntersectTermsEnum_fstOutputs_ || !v23)
      {
        break;
      }

      ++v24;
      v25 = [OrgApacheLuceneCodecsBlocktreeIntersectTermsEnum_fstOutputs_ addWithId:v25 withId:v23[2]];
      if (v24 >= *(v14 + 112))
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    JreThrowNullPointerException();
  }

LABEL_17:
  JreStrongAssign((v14 + 160), v23);
  JreStrongAssign((v14 + 200), v25);
  if (!OrgApacheLuceneCodecsBlocktreeIntersectTermsEnum_fstOutputs_)
  {
    goto LABEL_19;
  }

  [v14 load__WithOrgApacheLuceneUtilBytesRef:{objc_msgSend(OrgApacheLuceneCodecsBlocktreeIntersectTermsEnum_fstOutputs_, "addWithId:withId:", v25, v23[6])}];
  return v14;
}

id sub_100133F5C(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (!v1)
  {
    goto LABEL_12;
  }

  v2 = *(v1 + 48);
  if (*(v1 + 212) >= 1)
  {
    v4 = 0;
    while (*(a1 + 32))
    {
      v5 = *(v1 + 64);
      if (!v5)
      {
        break;
      }

      v6 = *(v5 + 8);
      v7 = v4 + *(v1 + 208);
      if (v7 < 0 || v7 >= v6)
      {
        IOSArray_throwOutOfBoundsWithMsg(v6, v7);
      }

      v2 = [*(a1 + 32) stepWithInt:v2 withInt:*(v5 + 12 + v7)];
      ++v4;
      v1 = *(a1 + 72);
      if (v4 >= *(v1 + 212))
      {
        return v2;
      }
    }

LABEL_12:
    JreThrowNullPointerException();
  }

  return v2;
}

uint64_t sub_10013409C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = &OBJC_IVAR___OrgApacheLuceneSearchDisjunctionMaxScorer_tieBreakerMultiplier_;
  v9 = *(a1 + 88);
  if (!v9 || !a2)
  {
    goto LABEL_34;
  }

  v12 = *(a2 + 20);
  if (*(v9 + 20) < v12)
  {
    v13 = OrgApacheLuceneUtilArrayUtil_growWithByteArray_withInt_(*(v9 + 8), v12, a3, a4, a5, a6, a7, a8);
    JreStrongAssign((v9 + 8), v13);
  }

  v14 = *(a1 + 64);
  if (!v14)
  {
    goto LABEL_34;
  }

  result = *(v14 + 8);
  if (result <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, 0);
  }

  if ((*(a2 + 20) & 0x80000000) == 0)
  {
    v46 = 0;
    while (1)
    {
      v16 = *(a1 + 72);
      v17 = *(v16 + 72);
      if (!v17)
      {
        break;
      }

      v18 = (v16 + 120);
      while (1)
      {
        v19 = *v18;
        v20 = [v17 getPosition];
        v21 = *(a1 + 72);
        v22 = *(v21 + 168);
        if (!v22)
        {
          goto LABEL_34;
        }

        v51 = v20;
        v23 = *(v21 + 208);
        v47 = *(v21 + 208);
        v48 = *(v21 + 212);
        v24 = *(v21 + 40);
        v49 = *(v22 + 32);
        v50 = *(v21 + 224);
        v25 = [v21 next];
        *(*(a1 + v8[578]) + 20) = *(*(a1 + 72) + 212) + *(*(a1 + 72) + 112);
        v31 = v8;
        v32 = *(a1 + v8[578]);
        v33 = *(v32 + 8);
        if (!v33)
        {
          goto LABEL_34;
        }

        v34 = v25;
        v35 = *(v32 + 20);
        if (v33[2] >= v35)
        {
          v8 = v31;
        }

        else
        {
          v36 = OrgApacheLuceneUtilArrayUtil_growWithByteArray_withInt_(*(v32 + 8), v35, v33, v26, v27, v28, v29, v30);
          JreStrongAssign((v32 + 8), v36);
          v8 = v31;
          v33 = *(*(a1 + v31[578]) + 8);
        }

        JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(*(a1 + 72) + 64), *(*(a1 + 72) + 208), v33, *(*(a1 + 72) + 112), *(*(a1 + 72) + 212));
        if (v34)
        {
          if (OrgApacheLuceneUtilStringHelper_startsWithWithOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_(a2, *(a1 + v8[578])))
          {
            break;
          }
        }

        result = [*(a1 + v8[578]) compareToWithId:a2];
        if ((result & 0x80000000) != 0)
        {
          result = *(a1 + 72);
          if (*(result + 120) == *(result + 116))
          {
            if (*(result + 124))
            {
              return result;
            }

            [result loadNextFloorBlock];
            result = *(a1 + 72);
          }
        }

        else
        {
          v37 = *(a1 + 104);
          if (result)
          {
            result = *(a1 + 72);
            if ((*(a1 + 104) & 1) != 0 || (*(result + 224) & 1) == 0)
            {
              *(result + 120) = v19;
              *(*(a1 + 72) + 40) = v24;
              *(*(a1 + 72) + 208) = v47;
              *(*(a1 + 72) + 212) = v48;
              [*(*(a1 + 72) + 72) setPositionWithInt:v51];
              *(*(*(a1 + 72) + 168) + 32) = v49;
              *(*(a1 + 72) + 224) = v50;
              result = JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(*(a1 + 72) + 64), *(*(a1 + 72) + 208), *(*(a1 + v8[578]) + 8), *(*(a1 + 72) + 112), *(*(a1 + 72) + 212));
              *(*(a1 + v8[578]) + 20) = *(*(a1 + 72) + 212) + *(*(a1 + 72) + 112);
              return result;
            }
          }

          else
          {
            if (*(a1 + 104))
            {
              return result;
            }

            result = *(a1 + 72);
            if ((*(result + 224) & 1) == 0)
            {
              return result;
            }
          }
        }

        v18 = (result + 120);
        v17 = *(result + 72);
        if (!v17)
        {
          goto LABEL_34;
        }
      }

      v38 = sub_100133F5C(a1);
      v45 = sub_100133B28(a1, v38, v39, v40, v41, v42, v43, v44);
      result = JreStrongAssign((a1 + 72), v45);
      if (++v46 > *(a2 + 20))
      {
        return result;
      }
    }

LABEL_34:
    JreThrowNullPointerException();
  }

  return result;
}

id sub_1001345E0(uint64_t a1)
{
  v2 = (a1 + 72);
  v3 = *(a1 + 72);
  if (!v3)
  {
    goto LABEL_18;
  }

  if (*(v3 + 120) == *(v3 + 116))
  {
    while ((*(v3 + 124) & 1) != 0)
    {
      v4 = *(v3 + 8);
      if (!v4)
      {
        if ((atomic_load_explicit(&OrgApacheLuceneCodecsBlocktreeIntersectTermsEnum_NoMoreTermsException__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_100135EA4();
        }

        objc_exception_throw(qword_100554838);
      }

      v5 = *(a1 + 24);
      if (!v5)
      {
        goto LABEL_18;
      }

      v6 = *(v5 + 8);
      v7 = v4 - 1;
      if (v7 < 0 || v7 >= v6)
      {
        IOSArray_throwOutOfBoundsWithMsg(v6, v7);
      }

      JreStrongAssign(v2, *(v5 + 24 + 8 * v7));
      v8 = *(a1 + 72);
      if (!v8)
      {
        goto LABEL_18;
      }

      JreStrongAssign((a1 + 80), *(v8 + 136));
      v2 = (a1 + 72);
      v3 = *(a1 + 72);
      if (!v3)
      {
        goto LABEL_18;
      }

      if (*(v3 + 120) != *(v3 + 116))
      {
        goto LABEL_14;
      }
    }

    [v3 loadNextFloorBlock];
  }

LABEL_14:
  v9 = *(a1 + 72);
  if (!v9)
  {
LABEL_18:
    JreThrowNullPointerException();
  }

  return [v9 next];
}

id sub_100134788(uint64_t a1)
{
  *(a1 + 120) = 0;
  v1 = *(*(a1 + 72) + 168);
  if (!v1)
  {
    goto LABEL_81;
  }

  *(v1 + 48) = 1;
  v3 = (a1 + 72);
  v4 = *(a1 + 72);
  v5 = *(*v3 + 28);
  v6 = *(*v3 + 53);
  v56 = *(*v3 + 55);
  if (v56 == -1)
  {
    if (v6)
    {
      while (1)
      {
        if (*(v4 + 120) == *(v4 + 116))
        {
          if (*(v4 + 124))
          {
            v55 = *(v4 + 8);
            if (v55)
            {
              v44 = *(a1 + 24);
              if (!v44)
              {
                goto LABEL_81;
              }

              v3 = (a1 + 72);
              v45 = *(v44 + 8);
              v47 = v55 - 1;
              v46 = v55 - 1 < 0;
              goto LABEL_66;
            }

            if ((atomic_load_explicit(&OrgApacheLuceneCodecsBlocktreeIntersectTermsEnum_NoMoreTermsException__initialized, memory_order_acquire) & 1) == 0)
            {
              goto LABEL_88;
            }

            goto LABEL_89;
          }

          [v4 loadNextFloorBlock];
          v4 = *(a1 + 72);
          if (!v4)
          {
            goto LABEL_81;
          }
        }

        v8 = [v4 next];
        if (v6 >= 1)
        {
          v9 = v8;
          for (i = 0; i != v6; ++i)
          {
            v11 = *(a1 + 88);
            if (!v11)
            {
              goto LABEL_81;
            }

            v12 = *(v11 + 8);
            if (!v12)
            {
              goto LABEL_81;
            }

            v13 = v5 + i;
            v14 = *(v12 + 8);
            if (v5 + i < 0 || v13 >= v14)
            {
              IOSArray_throwOutOfBoundsWithMsg(v14, v5 + i);
            }

            v15 = *(a1 + 72);
            v16 = *(v15 + 64);
            if (!v16)
            {
              goto LABEL_81;
            }

            v17 = *(v12 + 12 + v13);
            v18 = i + *(v15 + 208);
            v19 = *(v16 + 8);
            if ((v18 & 0x80000000) != 0 || v18 >= v19)
            {
              IOSArray_throwOutOfBoundsWithMsg(v19, v18);
            }

            if (v17 != *(v16 + 12 + v18))
            {
              return v9;
            }
          }
        }

        v4 = *(a1 + 72);
      }
    }

    v43 = *(v4 + 8);
    if (v43)
    {
      v44 = *(a1 + 24);
      if (!v44)
      {
        goto LABEL_81;
      }

      v45 = *(v44 + 8);
      v47 = v43 - 1;
      v46 = v47 < 0;
LABEL_66:
      if (v46 || v47 >= v45)
      {
        IOSArray_throwOutOfBoundsWithMsg(v45, v47);
      }

      v48 = *(v44 + 24 + 8 * v47);
      v49 = v3;
      goto LABEL_69;
    }

    if ((atomic_load_explicit(&OrgApacheLuceneCodecsBlocktreeIntersectTermsEnum_NoMoreTermsException__initialized, memory_order_acquire) & 1) == 0)
    {
LABEL_88:
      sub_100135EA4();
    }

LABEL_89:
    objc_exception_throw(qword_100554838);
  }

  if (*(v4 + 216) == -1)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = *(*v3 + 53);
  }

  if (!v7)
  {
    v20 = *(v4 + 8);
    if (!v20)
    {
      if ((atomic_load_explicit(&OrgApacheLuceneCodecsBlocktreeIntersectTermsEnum_NoMoreTermsException__initialized, memory_order_acquire) & 1) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_89;
    }

    v21 = *(a1 + 24);
    if (!v21)
    {
      goto LABEL_81;
    }

    v22 = *(v21 + 8);
    v23 = v20 - 1;
    if (v23 < 0 || v23 >= v22)
    {
      IOSArray_throwOutOfBoundsWithMsg(v22, v23);
    }

    JreStrongAssign(v3, *(v21 + 24 + 8 * v23));
    v24 = *(a1 + 72);
    if (!v24)
    {
      goto LABEL_81;
    }

    JreStrongAssign((a1 + 80), *(v24 + 136));
    v25 = *(a1 + 88);
    if (!v25)
    {
      goto LABEL_81;
    }

    v4 = *(a1 + 72);
    LODWORD(v5) = *(v4 + 112);
    v7 = *(v25 + 20) - v5;
  }

  v26 = (v7 - 1);
  v57 = v7;
  while (1)
  {
    if (*(v4 + 120) != *(v4 + 116))
    {
      goto LABEL_38;
    }

    if (*(v4 + 124))
    {
      break;
    }

    [v4 loadNextFloorBlock];
LABEL_38:
    v27 = *(a1 + 72);
    if (!v27)
    {
      goto LABEL_81;
    }

    v9 = [v27 next];
    if (v26 >= 1)
    {
      v28 = 0;
      while (1)
      {
        v29 = *(a1 + 88);
        if (!v29)
        {
          break;
        }

        v30 = *(v29 + 8);
        if (!v30)
        {
          break;
        }

        v31 = v5 + v28;
        v32 = *(v30 + 8);
        if (v5 + v28 < 0 || v31 >= v32)
        {
          IOSArray_throwOutOfBoundsWithMsg(v32, v5 + v28);
        }

        v33 = *(a1 + 72);
        v34 = *(v33 + 64);
        if (!v34)
        {
          break;
        }

        v35 = *(v30 + 12 + v31);
        v36 = v28 + *(v33 + 208);
        v37 = *(v34 + 8);
        if ((v36 & 0x80000000) != 0 || v36 >= v37)
        {
          IOSArray_throwOutOfBoundsWithMsg(v37, v36);
        }

        if (v35 != *(v34 + 12 + v36))
        {
          return v9;
        }

        if (v26 == ++v28)
        {
          goto LABEL_53;
        }
      }

LABEL_81:
      JreThrowNullPointerException();
    }

LABEL_53:
    v4 = *(a1 + 72);
    if (*(v4 + 212) >= v57)
    {
      v38 = *(v4 + 64);
      if (!v38)
      {
        goto LABEL_81;
      }

      v39 = *(v4 + 208);
      v40 = *(v38 + 8);
      v41 = v26 + v39;
      if (v41 < 0 || v41 >= v40)
      {
        IOSArray_throwOutOfBoundsWithMsg(v40, v41);
      }

      if (v56 < *(v38 + 12 + v41))
      {
        return v9;
      }

      v4 = *(a1 + 72);
    }

    if (!v4)
    {
      goto LABEL_81;
    }
  }

  v51 = *(v4 + 8);
  if (!v51)
  {
    if ((atomic_load_explicit(&OrgApacheLuceneCodecsBlocktreeIntersectTermsEnum_NoMoreTermsException__initialized, memory_order_acquire) & 1) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_89;
  }

  v52 = *(a1 + 24);
  if (!v52)
  {
    goto LABEL_81;
  }

  v53 = *(v52 + 8);
  v54 = v51 - 1;
  if (v54 < 0 || v54 >= v53)
  {
    IOSArray_throwOutOfBoundsWithMsg(v53, v54);
  }

  v48 = *(v52 + 24 + 8 * v54);
  v49 = (a1 + 72);
LABEL_69:
  JreStrongAssign(v49, v48);
  v50 = *(a1 + 72);
  if (!v50)
  {
    goto LABEL_81;
  }

  JreStrongAssign((a1 + 80), *(v50 + 136));

  return sub_1001345E0(a1);
}

BOOL sub_1001358BC(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v5 = *(a1 + 40);
  if (!v5)
  {
    goto LABEL_12;
  }

  v8 = [v5 initTransitionWithInt:a2 withOrgApacheLuceneUtilAutomatonTransition:*(a1 + 128)];
  if (v8 >= 1)
  {
    v9 = v8;
    v10 = *(a1 + 128);
    v11 = 1;
    v12 = v8;
    v13 = 1;
    while (1)
    {
      [*(a1 + 40) getNextTransitionWithOrgApacheLuceneUtilAutomatonTransition:v10];
      v10 = *(a1 + 128);
      if (!v10)
      {
        break;
      }

      if (v10[4] > a3 || v10[5] < a4 || v10[3] != *(a1 + 108))
      {
        v13 = v11++ < v9;
        if (--v12)
        {
          continue;
        }
      }

      return v13;
    }

LABEL_12:
    JreThrowNullPointerException();
  }

  return 0;
}

const __CFString *OrgApacheLuceneCodecsBlocktreeIntersectTermsEnum_brToStringWithOrgApacheLuceneUtilBytesRef_(void *a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneCodecsBlocktreeIntersectTermsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100135EB0();
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    JreThrowNullPointerException();
  }

  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v2 = [a1 utf8ToString];
  return JreStrcat("$C@", v3, v4, v5, v6, v7, v8, v9, v2);
}

id sub_100135A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 72);
  if (!v8 || (v10 = *(a1 + 88)) == 0 || (v11 = *(v10 + 8)) == 0)
  {
    JreThrowNullPointerException();
  }

  v12 = *(v8 + 112);
  v13 = *(v8 + 212);
  v14 = v13 + v12;
  if (v11[2] < v13 + v12)
  {
    v15 = OrgApacheLuceneUtilArrayUtil_growWithByteArray_withInt_(*(v10 + 8), v13 + v12, v11, v12, v13, a6, a7, a8);
    JreStrongAssign((v10 + 8), v15);
    v8 = *(a1 + 72);
    v11 = *(*(a1 + 88) + 8);
    v12 = *(v8 + 112);
    v13 = *(v8 + 212);
  }

  result = JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(v8 + 64), *(v8 + 208), v11, v12, v13);
  *(*(a1 + 88) + 20) = v14;
  return result;
}

OrgApacheLuceneCodecsBlocktreeIntersectTermsEnum *new_OrgApacheLuceneCodecsBlocktreeIntersectTermsEnum_initWithOrgApacheLuceneCodecsBlocktreeFieldReader_withOrgApacheLuceneUtilAutomatonAutomaton_withOrgApacheLuceneUtilAutomatonRunAutomaton_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_withInt_(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, int a6)
{
  v12 = [OrgApacheLuceneCodecsBlocktreeIntersectTermsEnum alloc];
  OrgApacheLuceneCodecsBlocktreeIntersectTermsEnum_initWithOrgApacheLuceneCodecsBlocktreeFieldReader_withOrgApacheLuceneUtilAutomatonAutomaton_withOrgApacheLuceneUtilAutomatonRunAutomaton_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_withInt_(v12, a1, a2, a3, a4, a5, a6);
  return v12;
}

unint64_t OrgApacheLuceneCodecsLucene50Lucene50CompoundReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withOrgApacheLuceneStoreIOContext_(uint64_t a1, void *a2, void **a3, uint64_t a4)
{
  OrgApacheLuceneStoreDirectory_init();
  JreStrongAssign((a1 + 8), a2);
  if (!a3 || (JreStrongAssign((a1 + 16), a3[1]), v8 = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(*(a1 + 16), &stru_100484358, OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_DATA_EXTENSION_), v9 = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(*(a1 + 16), &stru_100484358, OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_ENTRIES_EXTENSION_), v10 = sub_100136114(a1, [a3 getId], a2, v9), JreStrongAssign((a1 + 24), v10), !a2))
  {
    JreThrowNullPointerException();
  }

  JreStrongAssign((a1 + 32), [a2 openInputWithNSString:v8 withOrgApacheLuceneStoreIOContext:a4]);
  OrgApacheLuceneCodecsCodecUtil_checkIndexHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_withByteArray_withNSString_(*(a1 + 32), OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_DATA_CODEC_, *(a1 + 40), *(a1 + 40), [a3 getId], &stru_100484358);
  return OrgApacheLuceneCodecsCodecUtil_retrieveChecksumWithOrgApacheLuceneStoreIndexInput_(*(a1 + 32));
}

void sub_10013609C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    a9 = *(v9 + *(v10 + 2372));
    v11 = [IOSObjectArray arrayWithObjects:&a9 count:1 type:JavaIoCloseable_class_()];
    OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_(v11);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

JavaUtilCollections_UnmodifiableMap *sub_100136114(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if ((atomic_load_explicit(OrgApacheLuceneStoreIOContext__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100019888();
  }

  v8 = [a3 openChecksumInputWithNSString:a4 withOrgApacheLuceneStoreIOContext:OrgApacheLuceneStoreIOContext_READONCE_];
  *(a1 + 40) = OrgApacheLuceneCodecsCodecUtil_checkIndexHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_withByteArray_withNSString_(v8, OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_ENTRY_CODEC_, 0, 0, a2, &stru_100484358);
  if (!v8)
  {
    JreThrowNullPointerException();
  }

  v9 = [v8 readVInt];
  v10 = v9;
  v11 = new_JavaUtilHashMap_initWithInt_(v9);
  if (v10 >= 1)
  {
    do
    {
      v12 = [OrgApacheLuceneCodecsLucene50Lucene50CompoundReader_FileEntry alloc];
      if (-[JavaUtilHashMap putWithId:withId:](v11, "putWithId:withId:", [v8 readString], v12))
      {
        v21 = JreStrcat("$$$", v13, v14, v15, v16, v17, v18, v19, @"Duplicate cfs entry id=");
        v22 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v21, v8);
        objc_exception_throw(v22);
      }

      v12->offset_ = [v8 readLong];
      v12->length_ = [v8 readLong];
      --v10;
    }

    while (v10);
  }

  OrgApacheLuceneCodecsCodecUtil_checkFooterWithOrgApacheLuceneStoreChecksumIndexInput_withJavaLangThrowable_(v8, 0);
  [v8 close];

  return JavaUtilCollections_unmodifiableMapWithJavaUtilMap_(v11);
}

void sub_100136368(_Unwind_Exception *a1)
{
  objc_end_catch();
  objc_end_catch();
  _Unwind_Resume(a1);
}

void sub_100136388(void *a1, int a2)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {
    objc_end_catch();
  }

  JUMPOUT(0x100136220);
}

OrgApacheLuceneCodecsLucene50Lucene50CompoundReader *new_OrgApacheLuceneCodecsLucene50Lucene50CompoundReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withOrgApacheLuceneStoreIOContext_(void *a1, void **a2, uint64_t a3)
{
  v6 = [OrgApacheLuceneCodecsLucene50Lucene50CompoundReader alloc];
  OrgApacheLuceneCodecsLucene50Lucene50CompoundReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withOrgApacheLuceneStoreIOContext_(v6, a1, a2, a3);
  return v6;
}

id OrgApacheLuceneUtilFstBuilder_initWithOrgApacheLuceneUtilFstFST_INPUT_TYPEEnum_withInt_withInt_withBoolean_withBoolean_withInt_withOrgApacheLuceneUtilFstOutputs_withBoolean_withFloat_withBoolean_withInt_(uint64_t a1, void *a2, int a3, int a4, int a5, char a6, int a7, void *a8, float a9, unsigned __int8 a10, char a11, int a12)
{
  v20 = new_OrgApacheLuceneUtilIntsRefBuilder_init();
  JreStrongAssignAndConsume((a1 + 96), v20);
  JreStrongAssignAndConsume((a1 + 24), [IOSIntArray newArrayWithLength:4]);
  *(a1 + 80) = a3;
  *(a1 + 84) = a4;
  *(a1 + 88) = a6;
  *(a1 + 92) = a7;
  *(a1 + 104) = a10;
  *(a1 + 108) = a9;
  *(a1 + 48) = a11;
  v21 = new_OrgApacheLuceneUtilFstFST_initWithOrgApacheLuceneUtilFstFST_INPUT_TYPEEnum_withOrgApacheLuceneUtilFstOutputs_withBoolean_withFloat_withInt_(a2, a8, a10, a12, a9);
  JreStrongAssignAndConsume((a1 + 8), v21);
  JreStrongAssign((a1 + 56), *(*(a1 + 8) + 24));
  if (a5)
  {
    v22 = *(a1 + 56);
    if (!v22)
    {
      goto LABEL_14;
    }

    v23 = new_OrgApacheLuceneUtilFstNodeHash_initWithOrgApacheLuceneUtilFstFST_withOrgApacheLuceneUtilFstFST_BytesReader_(*(a1 + 8), [v22 getReverseReaderWithBoolean:0]);
    JreStrongAssignAndConsume((a1 + 64), v23);
  }

  else
  {
    JreStrongAssign((a1 + 64), 0);
  }

  if (!a8)
  {
LABEL_14:
    JreThrowNullPointerException();
  }

  JreStrongAssign((a1 + 72), [a8 getNoOutput]);
  if (qword_100554858 != -1)
  {
    sub_100138550();
  }

  v24 = [IOSObjectArray arrayWithLength:10 type:qword_100554850];
  objc_opt_class();
  if (v24 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  result = JreStrongAssign((a1 + 112), v24);
  v26 = *(a1 + 112);
  if (*(v26 + 8) >= 1)
  {
    v27 = 0;
    do
    {
      v28 = [OrgApacheLuceneUtilFstBuilder_UnCompiledNode alloc];
      OrgApacheLuceneUtilFstBuilder_UnCompiledNode_initWithOrgApacheLuceneUtilFstBuilder_withInt_(v28, a1, v27);
      result = IOSObjectArray_SetAndConsume(v26, v27++, v28);
      v26 = *(a1 + 112);
    }

    while (v27 < *(v26 + 8));
  }

  return result;
}

OrgApacheLuceneUtilFstBuilder_CompiledNode *sub_100136BF0(uint64_t a1, int *a2, int a3)
{
  v4 = *(a1 + 56);
  if (!v4)
  {
    goto LABEL_19;
  }

  v7 = [v4 getPosition];
  v8 = *(a1 + 64);
  if (!v8)
  {
    goto LABEL_7;
  }

  if ((*(a1 + 88) & 1) == 0)
  {
    if (!a2)
    {
      goto LABEL_19;
    }

    if (a2[4] > 1)
    {
      goto LABEL_7;
    }
  }

  if (*(a1 + 92) < a3)
  {
LABEL_7:
    v9 = *(a1 + 8);
    if (!v9)
    {
      goto LABEL_19;
    }

    v10 = [v9 addNodeWithOrgApacheLuceneUtilFstBuilder:a1 withOrgApacheLuceneUtilFstBuilder_UnCompiledNode:a2];
    goto LABEL_9;
  }

  if (!a2)
  {
    goto LABEL_19;
  }

  if (a2[4])
  {
    v10 = [v8 addWithOrgApacheLuceneUtilFstBuilder:a1 withOrgApacheLuceneUtilFstBuilder_UnCompiledNode:a2];
LABEL_9:
    v11 = v10;
    goto LABEL_10;
  }

  v13 = *(a1 + 8);
  if (!v13)
  {
    goto LABEL_19;
  }

  v11 = [v13 addNodeWithOrgApacheLuceneUtilFstBuilder:a1 withOrgApacheLuceneUtilFstBuilder_UnCompiledNode:a2];
  *(a1 + 16) = v11;
LABEL_10:
  if ([*(a1 + 56) getPosition] != v7)
  {
    *(a1 + 16) = v11;
  }

  if (!a2)
  {
LABEL_19:
    JreThrowNullPointerException();
  }

  [a2 clear];
  result = [OrgApacheLuceneUtilFstBuilder_CompiledNode alloc];
  result->node_ = v11;
  return result;
}

id sub_100136CF0(uint64_t a1, int a2)
{
  LODWORD(v26) = a2;
  v3 = JavaLangMath_maxWithInt_withInt_(1, a2);
  v4 = *(a1 + 96);
  if (!v4)
  {
    goto LABEL_57;
  }

  result = [v4 length];
  if (result >= v3)
  {
    v6 = result;
    HIDWORD(v26) = v3;
    while (1)
    {
      v7 = v6;
      v8 = *(a1 + 112);
      if (!v8)
      {
        goto LABEL_57;
      }

      v9 = *(v8 + 8);
      if ((v7 & 0x80000000) != 0 || v7 >= v9)
      {
        IOSArray_throwOutOfBoundsWithMsg(v9, v7);
      }

      v10 = *(v8 + 24 + 8 * v7);
      v6 = (v7 - 1);
      if (v7 - 1 < 0 || v6 >= v9)
      {
        IOSArray_throwOutOfBoundsWithMsg(v9, (v7 - 1));
      }

      if (!v10)
      {
        goto LABEL_57;
      }

      v11 = *(*(a1 + 112) + 24 + 8 * v6);
      v12 = *(v10 + 48);
      v28 = v11;
      if (v12 < *(a1 + 80))
      {
        break;
      }

      if (v7 <= v26)
      {
        v14 = 0;
        LODWORD(v13) = *(a1 + 84);
        v16 = v13 == 0;
        goto LABEL_24;
      }

      if (!v11)
      {
        goto LABEL_57;
      }

      v15 = v11[6];
      v13 = *(a1 + 84);
      if (v15 < v13)
      {
        goto LABEL_12;
      }

      if (v13 != 1)
      {
        v14 = 0;
LABEL_23:
        v16 = 1;
LABEL_24:
        v27 = v16;
        goto LABEL_25;
      }

      v14 = 0;
      LODWORD(v13) = 1;
      if (v7 < 2)
      {
        goto LABEL_23;
      }

      v27 = 1;
      if (v15 == 1)
      {
        v27 = 1;
        v14 = 1;
        if (v12 < 1)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }

LABEL_25:
      if (v12 < v13)
      {
        goto LABEL_29;
      }

      if (v13 != 1)
      {
        goto LABEL_42;
      }

LABEL_27:
      if (v7 < 2 || v12 != 1)
      {
LABEL_42:
        if (!v14)
        {
          goto LABEL_43;
        }

        goto LABEL_40;
      }

LABEL_29:
      if (*(v10 + 16) >= 1)
      {
        v17 = 0;
        while (1)
        {
          v18 = *(v10 + 24);
          if (!v18)
          {
            break;
          }

          v19 = *(v18 + 8);
          if (v17 >= v19)
          {
            IOSArray_throwOutOfBoundsWithMsg(v19, v17);
          }

          v20 = *(v18 + 24 + 8 * v17);
          if (!v20)
          {
            break;
          }

          Weak = objc_loadWeak((v20 + 16));
          objc_opt_class();
          if (!Weak)
          {
            break;
          }

          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            JreThrowClassCastException();
          }

          [Weak clear];
          if (++v17 >= *(v10 + 16))
          {
            goto LABEL_39;
          }
        }

LABEL_57:
        JreThrowNullPointerException();
      }

LABEL_39:
      *(v10 + 16) = 0;
      if ((v14 & 1) == 0)
      {
LABEL_43:
        if (*(a1 + 84))
        {
          sub_100137B5C(a1, v10, [*(a1 + 96) length] - v7);
        }

        v22 = *(v10 + 32);
        v23 = (*(v10 + 40) & 1) != 0 || *(v10 + 16) == 0;
        if (v27)
        {
          if (!v28)
          {
            goto LABEL_57;
          }

          result = [v28 replaceLastWithInt:objc_msgSend(*(a1 + 96) withOrgApacheLuceneUtilFstBuilder_Node:"intAtWithInt:" withId:(v7 - 1)) withBoolean:{sub_100136BF0(a1, v10, objc_msgSend(*(a1 + 96), "length") - v7 + 1), v22, v23}];
        }

        else
        {
          if (!v28)
          {
            goto LABEL_57;
          }

          [v28 replaceLastWithInt:objc_msgSend(*(a1 + 96) withOrgApacheLuceneUtilFstBuilder_Node:"intAtWithInt:" withId:(v7 - 1)) withBoolean:{v10, v22, v23}];
          v24 = *(a1 + 112);
          v25 = [OrgApacheLuceneUtilFstBuilder_UnCompiledNode alloc];
          OrgApacheLuceneUtilFstBuilder_UnCompiledNode_initWithOrgApacheLuceneUtilFstBuilder_withInt_(v25, a1, v7);
          result = IOSObjectArray_SetAndConsume(v24, v7, v25);
        }

        goto LABEL_53;
      }

LABEL_40:
      [v10 clear];
      if (!v28)
      {
        goto LABEL_57;
      }

      result = [v28 deleteLastWithInt:objc_msgSend(*(a1 + 96) withOrgApacheLuceneUtilFstBuilder_Node:{"intAtWithInt:", v6), v10}];
LABEL_53:
      if (v6 < SHIDWORD(v26))
      {
        return result;
      }
    }

    LODWORD(v13) = *(a1 + 84);
LABEL_12:
    v27 = 1;
    v14 = 1;
    goto LABEL_25;
  }

  return result;
}

id sub_100137B5C(id result, uint64_t a2, int a3)
{
  if (!a2)
  {
    goto LABEL_18;
  }

  if (*(a2 + 16) >= 1)
  {
    v4 = result;
    v5 = 0;
    v6 = a3 - 1;
    while (1)
    {
      v7 = *(a2 + 24);
      if (!v7)
      {
        break;
      }

      v8 = *(v7 + 8);
      if (v5 >= v8)
      {
        IOSArray_throwOutOfBoundsWithMsg(v8, v5);
      }

      v9 = *(v7 + 24 + 8 * v5);
      if (!v9)
      {
        break;
      }

      Weak = objc_loadWeak((v9 + 16));
      if (!Weak)
      {
        break;
      }

      result = [Weak isCompiled];
      if ((result & 1) == 0)
      {
        v11 = objc_loadWeak((v9 + 16));
        objc_opt_class();
        if (v11 && (objc_opt_isKindOfClass() & 1) == 0)
        {
          JreThrowClassCastException();
        }

        if (!*(v11 + 4))
        {
          v11[40] = 1;
          *(v9 + 24) = 1;
        }

        v12 = sub_100136BF0(v4, v11, v6);
        result = objc_storeWeak((v9 + 16), v12);
      }

      if (++v5 >= *(a2 + 16))
      {
        return result;
      }
    }

LABEL_18:
    JreThrowNullPointerException();
  }

  return result;
}

id OrgApacheLuceneUtilFstBuilder_UnCompiledNode_initWithOrgApacheLuceneUtilFstBuilder_withInt_(uint64_t a1, void **a2, int a3)
{
  objc_storeWeak((a1 + 8), a2);
  if (qword_100554848 != -1)
  {
    sub_100138564();
  }

  v6 = [IOSObjectArray arrayWithLength:1 type:qword_100554840];
  objc_opt_class();
  if (v6 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  JreStrongAssign((a1 + 24), v6);
  IOSObjectArray_SetAndConsume(*(a1 + 24), 0, [OrgApacheLuceneUtilFstBuilder_Arc alloc]);
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  result = JreStrongAssign((a1 + 32), a2[9]);
  *(a1 + 56) = a3;
  return result;
}

void sub_100138BB8(_Unwind_Exception *a1)
{
  objc_end_catch();
  objc_end_catch();
  _Unwind_Resume(a1);
}

void sub_100138BD8(void *a1, int a2)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {
    objc_end_catch();
  }

  JUMPOUT(0x1001389E4);
}

void sub_100139084()
{
  objc_end_catch();
  objc_end_catch();
  JUMPOUT(0x1001390B0);
}

void sub_100139090(_Unwind_Exception *a1)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(a1);
}

void sub_1001390A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1001390B0);
  }

  objc_terminate();
}

OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat *new_OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_init()
{
  v0 = [OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat alloc];
  OrgApacheLuceneCodecsFieldInfosFormat_init(v0, v1);
  return v0;
}

void *OrgApacheLuceneUtilPackedPackedReaderIterator_initWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt_withOrgApacheLuceneStoreDataInput_withInt_(uint64_t a1, void *a2, int a3, int a4, int a5, void *a6, uint64_t a7)
{
  OrgApacheLuceneUtilPackedPackedInts_ReaderIteratorImpl_initWithInt_withInt_withOrgApacheLuceneStoreDataInput_(a1, a4, a5, a6);
  JreStrongAssign((a1 + 32), a2);
  *(a1 + 24) = a3;
  v12 = OrgApacheLuceneUtilPackedBulkOperation_ofWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_(a2, a5);
  JreStrongAssign((a1 + 40), v12);
  *(a1 + 64) = sub_100139304(a1, a7);
  v13 = *(a1 + 40);
  if (!v13 || (JreStrongAssignAndConsume((a1 + 48), +[IOSByteArray newArrayWithLength:](IOSByteArray, "newArrayWithLength:", ([v13 byteBlockCount] * *(a1 + 64)))), v14 = new_OrgApacheLuceneUtilLongsRef_initWithLongArray_withInt_withInt_(+[IOSLongArray arrayWithLength:](IOSLongArray, "arrayWithLength:", (objc_msgSend(*(a1 + 40), "byteValueCount") * *(a1 + 64))), 0, 0), result = JreStrongAssignAndConsume((a1 + 56), v14), v16 = *(a1 + 56), (v17 = *(v16 + 8)) == 0))
  {
    JreThrowNullPointerException();
  }

  *(v16 + 16) = *(v17 + 8);
  *(a1 + 68) = -1;
  return result;
}

uint64_t sub_100139304(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  LODWORD(result) = [v3 computeIterationsWithInt:*(a1 + 20) withInt:a2];
  if (*(a1 + 24) >= 1)
  {
    return result;
  }

  else
  {
    return (result + 7) & 0xFFFFFFF8;
  }
}

OrgApacheLuceneUtilPackedPackedReaderIterator *new_OrgApacheLuceneUtilPackedPackedReaderIterator_initWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt_withOrgApacheLuceneStoreDataInput_withInt_(void *a1, int a2, int a3, int a4, void *a5, uint64_t a6)
{
  v12 = [OrgApacheLuceneUtilPackedPackedReaderIterator alloc];
  OrgApacheLuceneUtilPackedPackedReaderIterator_initWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt_withOrgApacheLuceneStoreDataInput_withInt_(v12, a1, a2, a3, a4, a5, a6);
  return v12;
}

void sub_10013982C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    v9 = [IOSObjectArray arrayWithObjects:&a9 count:1 type:JavaIoCloseable_class_()];
    OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_(v9);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

OrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly *new_OrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly_init()
{
  v0 = [OrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly alloc];
  OrgApacheLuceneCodecsPostingsFormat_initWithNSString_(v0, @"AAPL50");
  v0->minTermBlockSize_ = 25;
  v0->maxTermBlockSize_ = 48;
  return v0;
}

OrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly_IntBlockTermState *new_OrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly_IntBlockTermState_init()
{
  v0 = [OrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly_IntBlockTermState alloc];
  OrgApacheLuceneCodecsBlockTermState_init(v0, v1);
  v0->docStartFP_ = 0;
  v0->posStartFP_ = 0;
  v0->payStartFP_ = 0;
  v0->skipOffset_ = -1;
  v0->lastPosBlockOffset_ = -1;
  v0->singletonDocID_ = -1;
  return v0;
}

id OrgApacheLuceneUtilMergedIterator_initWithBoolean_withJavaUtilIteratorArray_(uint64_t a1, char a2, uint64_t a3)
{
  *(a1 + 32) = a2;
  if (!a3)
  {
    goto LABEL_11;
  }

  v5 = *(a3 + 8);
  v6 = [OrgApacheLuceneUtilMergedIterator_TermMergeQueue alloc];
  OrgApacheLuceneUtilPriorityQueue_initWithInt_(v6, v5, v7, v8, v9, v10, v11, v12);
  JreStrongAssignAndConsume((a1 + 16), v6);
  v13 = *(a3 + 8);
  if (qword_100554868 != -1)
  {
    sub_10013A34C();
  }

  result = JreStrongAssignAndConsume((a1 + 24), [IOSObjectArray newArrayWithLength:v13 type:qword_100554860]);
  v15 = (a3 + 24);
  v16 = a3 + 24 + 8 * *(a3 + 8);
  if (a3 + 24 < v16)
  {
    v17 = 0;
    while (1)
    {
      v19 = *v15++;
      v18 = v19;
      if (!v19)
      {
        break;
      }

      result = [v18 hasNext];
      if (result)
      {
        v20 = [OrgApacheLuceneUtilMergedIterator_SubIterator alloc];
        JreStrongAssign(&v20->current_, [v18 next]);
        JreStrongAssign(&v20->iterator_, v18);
        v20->index_ = v17;
        result = [*(a1 + 16) addWithId:v20];
        ++v17;
      }

      if (v15 >= v16)
      {
        return result;
      }
    }

LABEL_11:
    JreThrowNullPointerException();
  }

  return result;
}

OrgApacheLuceneUtilMergedIterator *new_OrgApacheLuceneUtilMergedIterator_initWithJavaUtilIteratorArray_(uint64_t a1)
{
  v2 = [OrgApacheLuceneUtilMergedIterator alloc];
  OrgApacheLuceneUtilMergedIterator_initWithBoolean_withJavaUtilIteratorArray_(v2, 1, a1);
  return v2;
}

id OrgApacheLuceneStoreIndexInput_initWithNSString_(uint64_t a1, void *a2)
{
  OrgApacheLuceneStoreDataInput_init(a1, a2);
  if (!a2)
  {
    v5 = new_JavaLangIllegalArgumentException_initWithNSString_(@"resourceDescription must not be null");
    objc_exception_throw(v5);
  }

  return JreStrongAssign((a1 + 16), a2);
}

uint64_t OrgApacheLuceneStoreIndexInput_class_()
{
  if (qword_100554878 != -1)
  {
    sub_10013A798();
  }

  return qword_100554870;
}

id OrgApacheLuceneUtilNamedSPILoader_checkServiceNameWithNSString_(void *a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  if ([a1 length] >= 128)
  {
    goto LABEL_12;
  }

  result = [a1 length];
  v10 = result;
  if (result >= 1)
  {
    v11 = 0;
    while (1)
    {
      result = [a1 charAtWithInt:v11];
      if ((result - 48) >= 0xA && (result & 0xFFFFFFDF) - 65 >= 0x1A)
      {
        break;
      }

      v11 = (v11 + 1);
      if (v10 == v11)
      {
        return result;
      }
    }

LABEL_12:
    v13 = JreStrcat("$$$", v2, v3, v4, v5, v6, v7, v8, @"Illegal service name: '");
    v14 = new_JavaLangIllegalArgumentException_initWithNSString_(v13);
    objc_exception_throw(v14);
  }

  return result;
}

OrgApacheLuceneUtilNamedSPILoader *new_OrgApacheLuceneUtilNamedSPILoader_initWithIOSClass_(void *a1)
{
  v2 = [OrgApacheLuceneUtilNamedSPILoader alloc];
  v3 = JavaUtilCollections_emptyMap();
  JreVolatileStrongAssign(&v2->services_, v3);
  JreStrongAssign(&v2->clazz_, a1);
  [(OrgApacheLuceneUtilNamedSPILoader *)v2 reloadWithJavaLangClassLoader:0];
  return v2;
}

uint64_t OrgApacheLuceneIndexBinaryDocValues_class_()
{
  if (qword_100554898 != -1)
  {
    sub_10013AF3C();
  }

  return qword_100554890;
}

id OrgApacheLuceneSearchTwoPhaseIterator_initWithOrgApacheLuceneSearchDocIdSetIterator_(uint64_t a1, uint64_t a2)
{
  v3 = OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(a2);

  return JreStrongAssign((a1 + 8), v3);
}

OrgApacheLuceneSearchTwoPhaseIterator_$1 *OrgApacheLuceneSearchTwoPhaseIterator_asDocIdSetIteratorWithOrgApacheLuceneSearchTwoPhaseIterator_(void *a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v2 = [a1 approximation];
  v3 = [OrgApacheLuceneSearchTwoPhaseIterator__1 alloc];
  sub_10013B358(v3, v2, a1);

  return v3;
}

id OrgApacheLuceneSearchTwoPhaseIterator_asTwoPhaseIteratorWithOrgApacheLuceneSearchDocIdSetIterator_(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }
  }

  objc_opt_class();
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return [a1 asTwoPhaseIterator];
}

uint64_t OrgApacheLuceneSearchTwoPhaseIterator_class_()
{
  if (qword_1005548A8 != -1)
  {
    sub_10013B418();
  }

  return qword_1005548A0;
}

uint64_t sub_10013B220(uint64_t a1, uint64_t a2)
{
  v2 = 0x7FFFFFFFLL;
  if (a2 != 0x7FFFFFFF)
  {
    v2 = a2;
    do
    {
      v4 = *(a1 + 16);
      if (!v4)
      {
        goto LABEL_9;
      }

      if ([v4 matches])
      {
        return v2;
      }

      v5 = *(a1 + 8);
      if (!v5)
      {
LABEL_9:
        JreThrowNullPointerException();
      }

      v2 = [v5 nextDoc];
    }

    while (v2 != 0x7FFFFFFF);
    return 0x7FFFFFFFLL;
  }

  return v2;
}

uint64_t sub_10013B358(uint64_t a1, void *a2, void *a3)
{
  JreStrongAssign((a1 + 8), a2);
  JreStrongAssign((a1 + 16), a3);

  return OrgApacheLuceneSearchDocIdSetIterator_init(a1, v5);
}

uint64_t OrgApacheLuceneStoreFSLockFactory_getDefault()
{
  if ((atomic_load_explicit(OrgApacheLuceneStoreNativeFSLockFactory__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100117E88();
  }

  return OrgApacheLuceneStoreNativeFSLockFactory_INSTANCE_;
}

OrgApacheLuceneIndexMultiDocValues_$1 *OrgApacheLuceneIndexMultiDocValues_getNormValuesWithOrgApacheLuceneIndexIndexReader_withNSString_(void *a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_29;
  }

  v4 = [a1 leaves];
  if (!v4)
  {
    goto LABEL_29;
  }

  v5 = v4;
  v6 = [v4 size];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (v6 == 1)
  {
    v8 = [v5 getWithInt:0];
    if (v8)
    {
      v9 = [v8 reader];
      if (v9)
      {

        return [v9 getNormValuesWithNSString:a2];
      }
    }

LABEL_29:
    JreThrowNullPointerException();
  }

  MergedFieldInfosWithOrgApacheLuceneIndexIndexReader = OrgApacheLuceneIndexMultiFields_getMergedFieldInfosWithOrgApacheLuceneIndexIndexReader_(a1);
  if (!MergedFieldInfosWithOrgApacheLuceneIndexIndexReader)
  {
    goto LABEL_29;
  }

  v12 = [MergedFieldInfosWithOrgApacheLuceneIndexIndexReader fieldInfoWithNSString:a2];
  if (!v12 || ![v12 hasNorms])
  {
    return 0;
  }

  v13 = [IOSObjectArray arrayWithLength:v7 type:OrgApacheLuceneIndexNumericDocValues_class_()];
  v14 = [IOSIntArray arrayWithLength:v7 + 1];
  if (v7 >= 1)
  {
    v15 = 0;
    do
    {
      v16 = [v5 getWithInt:v15];
      if (!v16)
      {
        goto LABEL_29;
      }

      v17 = v16;
      v18 = [v16 reader];
      if (!v18)
      {
        goto LABEL_29;
      }

      v19 = [v18 getNormValuesWithNSString:a2];
      if (!v19)
      {
        v19 = OrgApacheLuceneIndexDocValues_emptyNumeric();
      }

      IOSObjectArray_Set(v13, v15, v19);
      v20 = v17[8];
      size = v14->super.size_;
      if (v15 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v15);
      }

      *(&v14->super.size_ + ++v15) = v20;
    }

    while (v7 != v15);
  }

  v22 = [a1 maxDoc];
  v23 = v14->super.size_;
  if ((v7 & 0x80000000) != 0 || v7 >= v23)
  {
    IOSArray_throwOutOfBoundsWithMsg(v23, v7);
  }

  *(&v14->super.size_ + v7 + 1) = v22;
  v24 = [OrgApacheLuceneIndexMultiDocValues__1 alloc];
  sub_10013E9EC(v24, v14, v13);

  return v24;
}

OrgApacheLuceneIndexMultiDocValues_$2 *OrgApacheLuceneIndexMultiDocValues_getNumericValuesWithOrgApacheLuceneIndexIndexReader_withNSString_(void *a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_29;
  }

  v4 = [a1 leaves];
  if (!v4)
  {
    goto LABEL_29;
  }

  v5 = v4;
  v6 = [v4 size];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (v6 == 1)
  {
    v8 = [v5 getWithInt:0];
    if (v8)
    {
      v9 = [v8 reader];
      if (v9)
      {

        return [v9 getNumericDocValuesWithNSString:a2];
      }
    }

LABEL_29:
    JreThrowNullPointerException();
  }

  v11 = [IOSObjectArray arrayWithLength:v6 type:OrgApacheLuceneIndexNumericDocValues_class_()];
  v12 = [IOSIntArray arrayWithLength:v7 + 1];
  if (v7 >= 1)
  {
    v13 = 0;
    v14 = 0;
    while (1)
    {
      v15 = [v5 getWithInt:v13];
      if (!v15)
      {
        goto LABEL_29;
      }

      v16 = v15;
      v17 = [v15 reader];
      if (!v17)
      {
        goto LABEL_29;
      }

      v18 = [v17 getNumericDocValuesWithNSString:a2];
      if (v18)
      {
        v19 = v18;
        v14 = 1;
      }

      else
      {
        v19 = OrgApacheLuceneIndexDocValues_emptyNumeric();
      }

      IOSObjectArray_Set(v11, v13, v19);
      v20 = v16[8];
      size = v12->super.size_;
      if (v13 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v13);
      }

      *(&v12->super.size_ + ++v13) = v20;
      if (v7 == v13)
      {
        goto LABEL_22;
      }
    }
  }

  v14 = 0;
LABEL_22:
  v22 = [a1 maxDoc];
  v23 = v12->super.size_;
  if ((v7 & 0x80000000) != 0 || v7 >= v23)
  {
    IOSArray_throwOutOfBoundsWithMsg(v23, v7);
  }

  *(&v12->super.size_ + v7 + 1) = v22;
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v24 = [OrgApacheLuceneIndexMultiDocValues__2 alloc];
  sub_10013EBD0(v24, v12, v11);

  return v24;
}

id OrgApacheLuceneIndexMultiDocValues_getDocsWithFieldWithOrgApacheLuceneIndexIndexReader_withNSString_(void *a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_33;
  }

  v4 = [a1 leaves];
  if (!v4)
  {
    goto LABEL_33;
  }

  v5 = v4;
  v6 = [v4 size];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (v6 == 1)
  {
    v8 = [v5 getWithInt:0];
    if (v8)
    {
      v9 = [v8 reader];
      if (v9)
      {

        return [v9 getDocsWithFieldWithNSString:a2];
      }
    }

LABEL_33:
    JreThrowNullPointerException();
  }

  v28 = a1;
  v27 = v6;
  v11 = [IOSObjectArray arrayWithLength:v6 type:OrgApacheLuceneUtilBits_class_()];
  v12 = [IOSIntArray arrayWithLength:v7 + 1];
  if (v7 >= 1)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v16 = [v5 getWithInt:v13];
      if (!v16)
      {
        goto LABEL_33;
      }

      v17 = v16;
      v18 = [v16 reader];
      if (!v18)
      {
        goto LABEL_33;
      }

      v19 = [v18 getDocsWithFieldWithNSString:a2];
      if (v19)
      {
        v20 = v19;
        objc_opt_class();
        v15 |= objc_opt_isKindOfClass() ^ 1;
        v14 = 1;
      }

      else
      {
        v21 = [v17 reader];
        if (!v21)
        {
          goto LABEL_33;
        }

        v20 = new_OrgApacheLuceneUtilBits_MatchNoBits_initWithInt_([v21 maxDoc]);
        v15 = 1;
      }

      IOSObjectArray_Set(v11, v13, v20);
      v22 = v17[8];
      size = v12->super.size_;
      if (v13 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v13);
      }

      *(&v12->super.size_ + ++v13) = v22;
      if (v7 == v13)
      {
        goto LABEL_23;
      }
    }
  }

  LOBYTE(v15) = 0;
  v14 = 0;
LABEL_23:
  v24 = [v28 maxDoc];
  v25 = v12->super.size_;
  if ((v7 & 0x80000000) != 0 || v7 >= v25)
  {
    IOSArray_throwOutOfBoundsWithMsg(v25, v7);
  }

  *(&v12->super.size_ + v27 + 1) = v24;
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  if (v15)
  {
    matched = new_OrgApacheLuceneIndexMultiBits_initWithOrgApacheLuceneUtilBitsArray_withIntArray_withBoolean_(v11, v12, 0);
  }

  else
  {
    matched = new_OrgApacheLuceneUtilBits_MatchAllBits_initWithInt_([v28 maxDoc]);
  }

  return matched;
}

OrgApacheLuceneIndexMultiDocValues_$3 *OrgApacheLuceneIndexMultiDocValues_getBinaryValuesWithOrgApacheLuceneIndexIndexReader_withNSString_(void *a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_29;
  }

  v4 = [a1 leaves];
  if (!v4)
  {
    goto LABEL_29;
  }

  v5 = v4;
  v6 = [v4 size];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (v6 == 1)
  {
    v8 = [v5 getWithInt:0];
    if (v8)
    {
      v9 = [v8 reader];
      if (v9)
      {

        return [v9 getBinaryDocValuesWithNSString:a2];
      }
    }

LABEL_29:
    JreThrowNullPointerException();
  }

  v11 = [IOSObjectArray arrayWithLength:v6 type:OrgApacheLuceneIndexBinaryDocValues_class_()];
  v12 = [IOSIntArray arrayWithLength:v7 + 1];
  if (v7 >= 1)
  {
    v13 = 0;
    v14 = 0;
    while (1)
    {
      v15 = [v5 getWithInt:v13];
      if (!v15)
      {
        goto LABEL_29;
      }

      v16 = v15;
      v17 = [v15 reader];
      if (!v17)
      {
        goto LABEL_29;
      }

      v18 = [v17 getBinaryDocValuesWithNSString:a2];
      if (v18)
      {
        v19 = v18;
        v14 = 1;
      }

      else
      {
        v19 = OrgApacheLuceneIndexDocValues_emptyBinary();
      }

      IOSObjectArray_Set(v11, v13, v19);
      v20 = v16[8];
      size = v12->super.size_;
      if (v13 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v13);
      }

      *(&v12->super.size_ + ++v13) = v20;
      if (v7 == v13)
      {
        goto LABEL_22;
      }
    }
  }

  v14 = 0;
LABEL_22:
  v22 = [a1 maxDoc];
  v23 = v12->super.size_;
  if ((v7 & 0x80000000) != 0 || v7 >= v23)
  {
    IOSArray_throwOutOfBoundsWithMsg(v23, v7);
  }

  *(&v12->super.size_ + v7 + 1) = v22;
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v24 = [OrgApacheLuceneIndexMultiDocValues__3 alloc];
  sub_10013EDB4(v24, v12, v11);

  return v24;
}

OrgApacheLuceneIndexMultiDocValues_$4 *OrgApacheLuceneIndexMultiDocValues_getSortedNumericValuesWithOrgApacheLuceneIndexIndexReader_withNSString_(void *a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_30;
  }

  v4 = [a1 leaves];
  if (!v4)
  {
    goto LABEL_30;
  }

  v5 = v4;
  v6 = [v4 size];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (v6 == 1)
  {
    v8 = [v5 getWithInt:0];
    if (v8)
    {
      v9 = [v8 reader];
      if (v9)
      {

        return [v9 getSortedNumericDocValuesWithNSString:a2];
      }
    }

LABEL_30:
    JreThrowNullPointerException();
  }

  v11 = [IOSObjectArray arrayWithLength:v6 type:OrgApacheLuceneIndexSortedNumericDocValues_class_()];
  v12 = [IOSIntArray arrayWithLength:v7 + 1];
  if (v7 >= 1)
  {
    v13 = 0;
    v14 = 0;
    while (1)
    {
      v15 = [v5 getWithInt:v13];
      if (!v15)
      {
        goto LABEL_30;
      }

      v16 = v15;
      v17 = [v15 reader];
      if (!v17)
      {
        goto LABEL_30;
      }

      v18 = [v17 getSortedNumericDocValuesWithNSString:a2];
      if (v18)
      {
        v19 = v18;
        v14 = 1;
      }

      else
      {
        v20 = [v16 reader];
        if (!v20)
        {
          goto LABEL_30;
        }

        v19 = OrgApacheLuceneIndexDocValues_emptySortedNumericWithInt_([v20 maxDoc]);
      }

      IOSObjectArray_Set(v11, v13, v19);
      v21 = v16[8];
      size = v12->super.size_;
      if (v13 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v13);
      }

      *(&v12->super.size_ + ++v13) = v21;
      if (v7 == v13)
      {
        goto LABEL_23;
      }
    }
  }

  v14 = 0;
LABEL_23:
  v23 = [a1 maxDoc];
  v24 = v12->super.size_;
  if ((v7 & 0x80000000) != 0 || v7 >= v24)
  {
    IOSArray_throwOutOfBoundsWithMsg(v24, v7);
  }

  *(&v12->super.size_ + v7 + 1) = v23;
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v25 = [OrgApacheLuceneIndexMultiDocValues__4 alloc];
  sub_10013F014(v25, v12, v11);

  return v25;
}

OrgApacheLuceneIndexMultiDocValues_MultiSortedDocValues *OrgApacheLuceneIndexMultiDocValues_getSortedValuesWithOrgApacheLuceneIndexIndexReader_withNSString_(void *a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_29;
  }

  v4 = [a1 leaves];
  if (!v4)
  {
    goto LABEL_29;
  }

  v5 = v4;
  v6 = [v4 size];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (v6 == 1)
  {
    v8 = [v5 getWithInt:0];
    if (v8)
    {
      v9 = [v8 reader];
      if (v9)
      {

        return [v9 getSortedDocValuesWithNSString:a2];
      }
    }

LABEL_29:
    JreThrowNullPointerException();
  }

  v26 = v6;
  v11 = [IOSObjectArray arrayWithLength:v6 type:OrgApacheLuceneIndexSortedDocValues_class_()];
  v12 = [IOSIntArray arrayWithLength:v7 + 1];
  if (v7 >= 1)
  {
    v13 = 0;
    v14 = 0;
    while (1)
    {
      v15 = [v5 getWithInt:v13];
      if (!v15)
      {
        goto LABEL_29;
      }

      v16 = v15;
      v17 = [v15 reader];
      if (!v17)
      {
        goto LABEL_29;
      }

      v18 = [v17 getSortedDocValuesWithNSString:a2];
      if (v18)
      {
        v19 = v18;
        v14 = 1;
      }

      else
      {
        v19 = OrgApacheLuceneIndexDocValues_emptySorted();
      }

      IOSObjectArray_Set(v11, v13, v19);
      v20 = v16[8];
      size = v12->super.size_;
      if (v13 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v13);
      }

      *(&v12->super.size_ + ++v13) = v20;
      if (v7 == v13)
      {
        goto LABEL_22;
      }
    }
  }

  v14 = 0;
LABEL_22:
  v22 = [a1 maxDoc];
  v23 = v12->super.size_;
  if ((v7 & 0x80000000) != 0 || v7 >= v23)
  {
    IOSArray_throwOutOfBoundsWithMsg(v23, v7);
  }

  *(&v12->super.size_ + v26 + 1) = v22;
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v24 = OrgApacheLuceneIndexMultiDocValues_OrdinalMap_buildWithId_withOrgApacheLuceneIndexSortedDocValuesArray_withFloat_([a1 getCoreCacheKey], v11, 0.25);
  v25 = [OrgApacheLuceneIndexMultiDocValues_MultiSortedDocValues alloc];
  OrgApacheLuceneIndexMultiDocValues_MultiSortedDocValues_initWithOrgApacheLuceneIndexSortedDocValuesArray_withIntArray_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_(&v25->super.super.super.isa, v11, v12, v24);

  return v25;
}

OrgApacheLuceneIndexMultiDocValues_MultiSortedSetDocValues *OrgApacheLuceneIndexMultiDocValues_getSortedSetValuesWithOrgApacheLuceneIndexIndexReader_withNSString_(void *a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_29;
  }

  v4 = [a1 leaves];
  if (!v4)
  {
    goto LABEL_29;
  }

  v5 = v4;
  v6 = [v4 size];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (v6 == 1)
  {
    v8 = [v5 getWithInt:0];
    if (v8)
    {
      v9 = [v8 reader];
      if (v9)
      {

        return [v9 getSortedSetDocValuesWithNSString:a2];
      }
    }

LABEL_29:
    JreThrowNullPointerException();
  }

  v26 = v6;
  v11 = [IOSObjectArray arrayWithLength:v6 type:OrgApacheLuceneIndexSortedSetDocValues_class_()];
  v12 = [IOSIntArray arrayWithLength:v7 + 1];
  if (v7 >= 1)
  {
    v13 = 0;
    v14 = 0;
    while (1)
    {
      v15 = [v5 getWithInt:v13];
      if (!v15)
      {
        goto LABEL_29;
      }

      v16 = v15;
      v17 = [v15 reader];
      if (!v17)
      {
        goto LABEL_29;
      }

      v18 = [v17 getSortedSetDocValuesWithNSString:a2];
      if (v18)
      {
        v19 = v18;
        v14 = 1;
      }

      else
      {
        v19 = OrgApacheLuceneIndexDocValues_emptySortedSet();
      }

      IOSObjectArray_Set(v11, v13, v19);
      v20 = v16[8];
      size = v12->super.size_;
      if (v13 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v13);
      }

      *(&v12->super.size_ + ++v13) = v20;
      if (v7 == v13)
      {
        goto LABEL_22;
      }
    }
  }

  v14 = 0;
LABEL_22:
  v22 = [a1 maxDoc];
  v23 = v12->super.size_;
  if ((v7 & 0x80000000) != 0 || v7 >= v23)
  {
    IOSArray_throwOutOfBoundsWithMsg(v23, v7);
  }

  *(&v12->super.size_ + v26 + 1) = v22;
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v24 = OrgApacheLuceneIndexMultiDocValues_OrdinalMap_buildWithId_withOrgApacheLuceneIndexSortedSetDocValuesArray_withFloat_([a1 getCoreCacheKey], v11, 0.25);
  v25 = [OrgApacheLuceneIndexMultiDocValues_MultiSortedSetDocValues alloc];
  OrgApacheLuceneIndexMultiDocValues_MultiSortedSetDocValues_initWithOrgApacheLuceneIndexSortedSetDocValuesArray_withIntArray_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_(&v25->super.super.isa, v11, v12, v24);

  return v25;
}

OrgApacheLuceneIndexMultiDocValues_OrdinalMap *OrgApacheLuceneIndexMultiDocValues_OrdinalMap_buildWithId_withOrgApacheLuceneIndexSortedDocValuesArray_withFloat_(void *a1, uint64_t a2, float a3)
{
  if (atomic_load_explicit(&OrgApacheLuceneIndexMultiDocValues_OrdinalMap__initialized, memory_order_acquire))
  {
    if (!a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    sub_10013F0E4();
    if (!a2)
    {
      goto LABEL_17;
    }
  }

  v6 = [IOSObjectArray arrayWithLength:*(a2 + 8) type:OrgApacheLuceneIndexTermsEnum_class_()];
  v7 = [IOSLongArray arrayWithLength:*(a2 + 8)];
  if (*(a2 + 8) >= 1)
  {
    v8 = 0;
    while (1)
    {
      v9 = *(a2 + 24 + 8 * v8);
      if (!v9)
      {
        break;
      }

      IOSObjectArray_Set(v6, v8, [v9 termsEnum]);
      v10 = *(a2 + 8);
      if (v8 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v8);
      }

      v11 = *(a2 + 24 + 8 * v8);
      if (!v11)
      {
        break;
      }

      v12 = [v11 getValueCount];
      size = v7->super.size_;
      if (v8 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v8);
      }

      v7->buffer_[v8++] = v12;
      if (v8 >= *(a2 + 8))
      {
        goto LABEL_13;
      }
    }

LABEL_17:
    JreThrowNullPointerException();
  }

LABEL_13:

  return OrgApacheLuceneIndexMultiDocValues_OrdinalMap_buildWithId_withOrgApacheLuceneIndexTermsEnumArray_withLongArray_withFloat_(a1, v6, v7, a3);
}

OrgApacheLuceneIndexMultiDocValues_OrdinalMap *OrgApacheLuceneIndexMultiDocValues_OrdinalMap_buildWithId_withOrgApacheLuceneIndexSortedSetDocValuesArray_withFloat_(void *a1, uint64_t a2, float a3)
{
  if (atomic_load_explicit(&OrgApacheLuceneIndexMultiDocValues_OrdinalMap__initialized, memory_order_acquire))
  {
    if (!a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    sub_10013F0E4();
    if (!a2)
    {
      goto LABEL_17;
    }
  }

  v6 = [IOSObjectArray arrayWithLength:*(a2 + 8) type:OrgApacheLuceneIndexTermsEnum_class_()];
  v7 = [IOSLongArray arrayWithLength:*(a2 + 8)];
  if (*(a2 + 8) >= 1)
  {
    v8 = 0;
    while (1)
    {
      v9 = *(a2 + 24 + 8 * v8);
      if (!v9)
      {
        break;
      }

      IOSObjectArray_Set(v6, v8, [v9 termsEnum]);
      v10 = *(a2 + 8);
      if (v8 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v8);
      }

      v11 = *(a2 + 24 + 8 * v8);
      if (!v11)
      {
        break;
      }

      v12 = [v11 getValueCount];
      size = v7->super.size_;
      if (v8 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v8);
      }

      v7->buffer_[v8++] = v12;
      if (v8 >= *(a2 + 8))
      {
        goto LABEL_13;
      }
    }

LABEL_17:
    JreThrowNullPointerException();
  }

LABEL_13:

  return OrgApacheLuceneIndexMultiDocValues_OrdinalMap_buildWithId_withOrgApacheLuceneIndexTermsEnumArray_withLongArray_withFloat_(a1, v6, v7, a3);
}

OrgApacheLuceneIndexMultiDocValues_OrdinalMap *OrgApacheLuceneIndexMultiDocValues_OrdinalMap_buildWithId_withOrgApacheLuceneIndexTermsEnumArray_withLongArray_withFloat_(void *a1, uint64_t a2, int *a3, float a4)
{
  if (atomic_load_explicit(&OrgApacheLuceneIndexMultiDocValues_OrdinalMap__initialized, memory_order_acquire))
  {
    if (!a2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_10013F0E4();
    if (!a2)
    {
LABEL_9:
      JreThrowNullPointerException();
    }
  }

  if (!a3)
  {
    goto LABEL_9;
  }

  if (*(a2 + 8) != a3[2])
  {
    v12 = new_JavaLangIllegalArgumentException_initWithNSString_(@"subs and weights must have the same length");
    objc_exception_throw(v12);
  }

  v8 = [OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap alloc];
  OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap_initWithLongArray_(v8, a3);
  v9 = v8;
  v10 = [OrgApacheLuceneIndexMultiDocValues_OrdinalMap alloc];
  OrgApacheLuceneIndexMultiDocValues_OrdinalMap_initWithId_withOrgApacheLuceneIndexTermsEnumArray_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap_withFloat_(v10, a1, a2, v9, a4);

  return v10;
}

unint64_t OrgApacheLuceneIndexMultiDocValues_OrdinalMap_initWithId_withOrgApacheLuceneIndexTermsEnumArray_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap_withFloat_(uint64_t a1, void *a2, uint64_t a3, void *a4, float a5)
{
  JreStrongAssign((a1 + 8), a2);
  JreStrongAssign((a1 + 40), a4);
  v93 = OrgApacheLuceneUtilPackedPackedLongValues_monotonicBuilderWithFloat_(0.0);
  v9 = OrgApacheLuceneUtilPackedPackedLongValues_packedBuilderWithFloat_(0.0);
  if (!a3)
  {
    goto LABEL_86;
  }

  v94 = v9;
  v96 = a3;
  v10 = [IOSObjectArray arrayWithLength:*(a3 + 8) type:OrgApacheLuceneUtilPackedPackedLongValues_Builder_class_()];
  v95 = a1;
  if (v10->super.size_ >= 1)
  {
    v11 = 0;
    do
    {
      v12 = OrgApacheLuceneUtilPackedPackedLongValues_monotonicBuilderWithFloat_(a5);
      IOSObjectArray_Set(v10, v11++, v12);
    }

    while (v11 < v10->super.size_);
  }

  v13 = [IOSLongArray arrayWithLength:*(v96 + 8)];
  v14 = [IOSLongArray arrayWithLength:*(v96 + 8)];
  v15 = [IOSObjectArray arrayWithLength:*(v96 + 8) type:OrgApacheLuceneIndexReaderSlice_class_()];
  v16 = [IOSObjectArray arrayWithLength:v15->super.size_ type:OrgApacheLuceneIndexMultiTermsEnum_TermsEnumIndex_class_()];
  v17 = &OBJC_IVAR___IOSObjectArray_buffer_;
  if (v15->super.size_ >= 1)
  {
    v18 = 0;
    do
    {
      v19 = new_OrgApacheLuceneIndexReaderSlice_initWithInt_withInt_withInt_(0, 0, v18);
      IOSObjectArray_SetAndConsume(v15, v18, v19);
      if (!a4)
      {
        goto LABEL_86;
      }

      v20 = [a4 newToOldWithInt:v18];
      v21 = *(v96 + 8);
      if (v20 < 0 || v20 >= v21)
      {
        IOSArray_throwOutOfBoundsWithMsg(v21, v20);
      }

      v22 = new_OrgApacheLuceneIndexMultiTermsEnum_TermsEnumIndex_initWithOrgApacheLuceneIndexTermsEnum_withInt_(*(v96 + 24 + 8 * v20), v18);
      IOSObjectArray_SetAndConsume(v16, v18++, v22);
    }

    while (v18 < v15->super.size_);
  }

  v91 = a4;
  v23 = new_OrgApacheLuceneIndexMultiTermsEnum_initWithOrgApacheLuceneIndexReaderSliceArray_(v15);
  [(OrgApacheLuceneIndexMultiTermsEnum *)v23 resetWithOrgApacheLuceneIndexMultiTermsEnum_TermsEnumIndexArray:v16];
  v103 = v10;
  if ([(OrgApacheLuceneIndexMultiTermsEnum *)v23 next])
  {
    v99 = 0;
    v24 = v93;
    v97 = v23;
    while (1)
    {
      v25 = [(OrgApacheLuceneIndexMultiTermsEnum *)v23 getMatchArray];
      if ([(OrgApacheLuceneIndexMultiTermsEnum *)v23 getMatchCount]< 1)
      {
        v102 = 0x7FFFFFFFFFFFFFFFLL;
        v48 = 0x7FFFFFFFLL;
      }

      else
      {
        if (!v25)
        {
          goto LABEL_86;
        }

        v26 = 0;
        v101 = 0x7FFFFFFF;
        v102 = 0x7FFFFFFFFFFFFFFFLL;
        v98 = v25;
        do
        {
          v27 = v26;
          v28 = v25[2];
          if (v26 >= v28)
          {
            IOSArray_throwOutOfBoundsWithMsg(v28, v26);
          }

          v29 = *(&v25[2 * v26] + *v17);
          if (!v29)
          {
            goto LABEL_86;
          }

          v30 = *(v29 + 24);
          v31 = v25[2];
          if (v27 >= v31)
          {
            IOSArray_throwOutOfBoundsWithMsg(v31, v27);
          }

          v32 = *(v29 + 8);
          if (!v32)
          {
            goto LABEL_86;
          }

          v100 = v27;
          v33 = v17;
          v34 = [v32 ord];
          v35 = v34;
          v36 = &v14->super.super.isa + v30;
          v37 = v99 - v34;
          v38 = v102;
          if (v30 >= v101)
          {
            v39 = v101;
          }

          else
          {
            v38 = v99 - v34;
            v39 = v30;
          }

          v101 = v39;
          v102 = v38;
          v40 = v13;
          v41 = &v13->super.super.isa + v30;
          v42 = &v10->super.super.isa + v30;
          while (1)
          {
            size = v14->super.size_;
            if ((v30 & 0x80000000) != 0 || v30 >= size)
            {
              IOSArray_throwOutOfBoundsWithMsg(size, v30);
            }

            if (v36[2] > v35)
            {
              break;
            }

            v44 = v40->super.size_;
            if ((v30 & 0x80000000) != 0 || v30 >= v44)
            {
              IOSArray_throwOutOfBoundsWithMsg(v44, v30);
            }

            v41[2] = (v41[2] | v37);
            v45 = v103->super.size_;
            if ((v30 & 0x80000000) != 0 || v30 >= v45)
            {
              IOSArray_throwOutOfBoundsWithMsg(v45, v30);
            }

            v46 = *(v42 + *v33);
            if (!v46)
            {
              goto LABEL_86;
            }

            [v46 addWithLong:v37];
            v47 = v14->super.size_;
            if ((v30 & 0x80000000) != 0 || v30 >= v47)
            {
              IOSArray_throwOutOfBoundsWithMsg(v47, v30);
            }

            v36[2] = (v36[2] + 1);
          }

          v26 = v100 + 1;
          v23 = v97;
          v10 = v103;
          v13 = v40;
          v17 = v33;
          v25 = v98;
        }

        while (v100 + 1 < [(OrgApacheLuceneIndexMultiTermsEnum *)v97 getMatchCount]);
        v48 = v101;
        v24 = v93;
      }

      if (!v94)
      {
        goto LABEL_86;
      }

      [(OrgApacheLuceneUtilPackedPackedLongValues_Builder *)v94 addWithLong:v48];
      if (!v24)
      {
        goto LABEL_86;
      }

      [(OrgApacheLuceneUtilPackedPackedLongValues_Builder *)v24 addWithLong:v102];
      ++v99;
      if (![(OrgApacheLuceneIndexMultiTermsEnum *)v23 next])
      {
        goto LABEL_51;
      }
    }
  }

  v24 = v93;
  if (!v94)
  {
    goto LABEL_86;
  }

LABEL_51:
  JreStrongAssign((v95 + 24), [(OrgApacheLuceneUtilPackedPackedLongValues_Builder *)v94 build]);
  if (!v24)
  {
    goto LABEL_86;
  }

  JreStrongAssign((v95 + 16), [(OrgApacheLuceneUtilPackedMonotonicLongValues_Builder *)v24 build]);
  v49 = [IOSObjectArray newArrayWithLength:*(v96 + 8) type:OrgApacheLuceneUtilLongValues_class_()];
  JreStrongAssignAndConsume((v95 + 32), v49);
  v50 = *(v95 + 16);
  if (!v50 || (v51 = qword_1005548B0, v52 = [v50 ramBytesUsed], (v53 = *(v95 + 24)) == 0) || (v54 = objc_msgSend(v53, "ramBytesUsed"), v55 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithNSObjectArray_(*(v95 + 32)), !v92))
  {
LABEL_86:
    JreThrowNullPointerException();
  }

  result = [v92 ramBytesUsed];
  v58 = &v54[v52 + v51 + v55 + result];
  v59 = v103;
  if (v103->super.size_ >= 1)
  {
    v60 = 0;
    LODWORD(v57) = 1.0;
    do
    {
      v61 = *(&v59->super.super.isa + 8 * v60 + *v17);
      if (!v61)
      {
        goto LABEL_86;
      }

      v62 = v60;
      v70 = [v61 build];
      v71 = v13->super.size_;
      if (v62 >= v71)
      {
        IOSArray_throwOutOfBoundsWithMsg(v71, v62);
      }

      v72 = v13->buffer_[v62];
      if (v72)
      {
        if (v62 >= v13->super.size_)
        {
          IOSArray_throwOutOfBoundsWithMsg(v13->super.size_, v62);
        }

        if ((v72 & 0x8000000000000000) != 0)
        {
          v73 = 64;
          if (!v70)
          {
            goto LABEL_86;
          }
        }

        else
        {
          if (v62 >= v13->super.size_)
          {
            IOSArray_throwOutOfBoundsWithMsg(v13->super.size_, v62);
          }

          v73 = OrgApacheLuceneUtilPackedPackedInts_bitsRequiredWithLong_(v72, v63, v64, v65, v66, v67, v68, v69);
          if (!v70)
          {
            goto LABEL_86;
          }
        }

        v75 = [v70 ramBytesUsed];
        v76 = [v70 size];
        if ([v70 size] <= 0x7FFFFFFF && ((a5 + 1.0) * (8 * v75)) >= (v76 * v73))
        {
          v81 = [v70 size];
          v82 = v81;
          MutableWithInt_withInt_withFloat = OrgApacheLuceneUtilPackedPackedInts_getMutableWithInt_withInt_withFloat_(v81, v73, a5);
          v83 = [v70 iterator];
          if (v82 >= 1)
          {
            if (!MutableWithInt_withInt_withFloat)
            {
              goto LABEL_86;
            }

            v84 = v83;
            if (!v83)
            {
              goto LABEL_86;
            }

            v85 = 0;
            do
            {
              [MutableWithInt_withInt_withFloat setWithInt:v85 withLong:{objc_msgSend(v84, "next")}];
              v85 = (v85 + 1);
            }

            while (v82 != v85);
          }

          v77 = v95;
          v86 = *(v95 + 32);
          v87 = [OrgApacheLuceneIndexMultiDocValues_OrdinalMap__1 alloc];
          JreStrongAssign(&v87->val$newDeltas_, MutableWithInt_withInt_withFloat);
          OrgApacheLuceneUtilLongValues_init(v87);
          IOSObjectArray_SetAndConsume(v86, v62, v87);
          if (!MutableWithInt_withInt_withFloat)
          {
            goto LABEL_86;
          }
        }

        else
        {
          v77 = v95;
          v78 = *(v95 + 32);
          v79 = [OrgApacheLuceneIndexMultiDocValues_OrdinalMap__2 alloc];
          JreStrongAssign(&v79->val$deltas_, v70);
          OrgApacheLuceneUtilLongValues_init(v79);
          IOSObjectArray_SetAndConsume(v78, v62, v79);
          MutableWithInt_withInt_withFloat = v70;
        }

        v88 = [MutableWithInt_withInt_withFloat ramBytesUsed];
        v89 = *(v77 + 32);
        v90 = *(v89 + 8);
        if (v62 >= v90)
        {
          IOSArray_throwOutOfBoundsWithMsg(v90, v62);
        }

        result = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithId_(*(v89 + *v17 + 8 * v62));
        v58 = &v58[v88 + result];
        v59 = v103;
      }

      else
      {
        v74 = *(v95 + 32);
        if ((atomic_load_explicit(OrgApacheLuceneUtilLongValues__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_10013F0F0();
        }

        result = IOSObjectArray_Set(v74, v62, OrgApacheLuceneUtilLongValues_IDENTITY_);
      }

      v60 = v62 + 1;
    }

    while (v62 + 1 < v59->super.size_);
  }

  *(v95 + 48) = v58;
  return result;
}

uint64_t OrgApacheLuceneIndexMultiDocValues_OrdinalMap_class_()
{
  if ((atomic_load_explicit(&OrgApacheLuceneIndexMultiDocValues_OrdinalMap__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10013F0E4();
  }

  if (qword_1005548C0 != -1)
  {
    sub_10013F0FC();
  }

  return qword_1005548B8;
}

id OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap_initWithLongArray_(uint64_t a1, int *a2)
{
  if (atomic_load_explicit(OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap__initialized, memory_order_acquire))
  {
    if (!a2)
    {
      goto LABEL_24;
    }
  }

  else
  {
    sub_10013F110();
    if (!a2)
    {
      goto LABEL_24;
    }
  }

  v4 = [IOSIntArray arrayWithLength:a2[2]];
  if (a2[2] >= 1)
  {
    v5 = 0;
    do
    {
      size = v4->super.size_;
      if (v5 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v5);
      }

      *(&v4->super.size_ + v5 + 1) = v5;
      ++v5;
    }

    while (v5 < a2[2]);
  }

  v7 = [OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap__1 alloc];
  sub_10013DF04(v7, v4, a2);
  [(OrgApacheLuceneUtilInPlaceMergeSorter *)v7 sortWithInt:0 withInt:a2[2]];
  JreStrongAssign((a1 + 8), v4);
  v8 = *(a1 + 8);
  if (atomic_load_explicit(OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap__initialized, memory_order_acquire))
  {
    if (v8)
    {
      goto LABEL_11;
    }

LABEL_24:
    JreThrowNullPointerException();
  }

  sub_10013F110();
  if (!v8)
  {
    goto LABEL_24;
  }

LABEL_11:
  v9 = [IOSIntArray arrayWithLength:*(v8 + 8)];
  if (*(v8 + 8) >= 1)
  {
    v10 = 0;
    do
    {
      v11 = *(v8 + 12 + 4 * v10);
      v12 = v9->super.size_;
      if (v11 < 0 || v11 >= v12)
      {
        IOSArray_throwOutOfBoundsWithMsg(v12, v11);
      }

      *(&v9->super.size_ + v11 + 1) = v10++;
    }

    while (v10 < *(v8 + 8));
  }

  return JreStrongAssign((a1 + 16), v9);
}

uint64_t OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap_class_()
{
  if ((atomic_load_explicit(OrgApacheLuceneIndexMultiDocValues_OrdinalMap_SegmentMap__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10013F110();
  }

  if (qword_1005548D8 != -1)
  {
    sub_10013F11C();
  }

  return qword_1005548D0;
}

uint64_t sub_10013DF04(uint64_t a1, void *a2, void *a3)
{
  JreStrongAssign((a1 + 8), a2);
  JreStrongAssign((a1 + 16), a3);

  return OrgApacheLuceneUtilInPlaceMergeSorter_init(a1);
}

id OrgApacheLuceneIndexMultiDocValues_MultiSortedDocValues_initWithOrgApacheLuceneIndexSortedDocValuesArray_withIntArray_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_(id *a1, void *a2, void *a3, void *a4)
{
  OrgApacheLuceneIndexSortedDocValues_init(a1, a2);
  JreStrongAssign(a1 + 3, a2);
  JreStrongAssign(a1 + 2, a3);

  return JreStrongAssign(a1 + 4, a4);
}

id OrgApacheLuceneIndexMultiDocValues_MultiSortedSetDocValues_initWithOrgApacheLuceneIndexSortedSetDocValuesArray_withIntArray_withOrgApacheLuceneIndexMultiDocValues_OrdinalMap_(id *a1, void *a2, void *a3, void *a4)
{
  OrgApacheLuceneIndexSortedSetDocValues_init(a1, a2);
  JreStrongAssign(a1 + 2, a2);
  JreStrongAssign(a1 + 1, a3);

  return JreStrongAssign(a1 + 3, a4);
}

uint64_t sub_10013E9EC(uint64_t a1, void *a2, void *a3)
{
  JreStrongAssign((a1 + 8), a2);
  JreStrongAssign((a1 + 16), a3);

  return OrgApacheLuceneIndexNumericDocValues_init(a1, v5);
}

uint64_t sub_10013EBD0(uint64_t a1, void *a2, void *a3)
{
  JreStrongAssign((a1 + 8), a2);
  JreStrongAssign((a1 + 16), a3);

  return OrgApacheLuceneIndexNumericDocValues_init(a1, v5);
}

uint64_t sub_10013EDB4(uint64_t a1, void *a2, void *a3)
{
  JreStrongAssign((a1 + 8), a2);
  JreStrongAssign((a1 + 16), a3);

  return OrgApacheLuceneIndexBinaryDocValues_init(a1, v5);
}

uint64_t sub_10013F014(uint64_t a1, void *a2, void *a3)
{
  JreStrongAssign((a1 + 16), a2);
  JreStrongAssign((a1 + 24), a3);

  return OrgApacheLuceneIndexSortedNumericDocValues_init(a1);
}

id OrgApacheLuceneStoreBaseDirectory_initWithOrgApacheLuceneStoreLockFactory_(uint64_t a1, void *a2)
{
  OrgApacheLuceneStoreDirectory_init();
  atomic_store(1u, (a1 + 8));
  if (!a2)
  {
    v5 = new_JavaLangNullPointerException_initWithNSString_(@"LockFactory cannot be null, use an explicit instance!");
    objc_exception_throw(v5);
  }

  return JreStrongAssign((a1 + 16), a2);
}

uint64_t ComAppleContextkitUtilSpindleArray_initWithOrgApacheLuceneStoreDirectory_withNSString_(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a2 || (JreStrongAssign((a1 + 8), [a2 openInputWithNSString:a3 withOrgApacheLuceneStoreIOContext:0]), (v6 = *(a1 + 8)) == 0))
  {
    JreThrowNullPointerException();
  }

  if ([v6 readInt] != 1410389808)
  {
    v28 = @"Illegal magic header";
    goto LABEL_25;
  }

  v7 = [*(a1 + 8) readInt];
  if ([a2 fileLengthWithNSString:a3] != v7)
  {
    v28 = @"Unexpected endOffset";
    goto LABEL_25;
  }

  v8 = [*(a1 + 8) readInt];
  *(a1 + 20) = v8;
  if (v8 <= 15)
  {
    v29 = @"Illegal value for entriesOffset: ";
LABEL_24:
    v28 = JreStrcat("$I", v9, v10, v11, v12, v13, v14, v15, v29);
    goto LABEL_25;
  }

  v16 = [*(a1 + 8) readInt];
  *(a1 + 16) = v16;
  if (v16 <= 0)
  {
    v29 = @"Illegal value for numEntries: ";
    goto LABEL_24;
  }

  v17 = *(a1 + 20);
  v18 = v17 - [*(a1 + 8) getFilePointer];
  JreStrongAssignAndConsume((a1 + 24), [IOSIntArray newArrayWithLength:(v18 + (v18 < 0 ? 3 : 0)) >> 2]);
  v19 = 0;
  do
  {
    result = [*(a1 + 8) getFilePointer];
    if (result >= *(a1 + 20))
    {
      return result;
    }

    v21 = [*(a1 + 8) readInt];
    v22 = [*(a1 + 8) readInt];
    v23 = *(a1 + 20);
    v24 = *(a1 + 24);
    v25 = *(v24 + 8);
    if ((v19 & 0x80000000) != 0 || v19 >= v25)
    {
      IOSArray_throwOutOfBoundsWithMsg(v25, v19);
    }

    v26 = v19 + 1;
    *(v24 + 12 + 4 * v19) = v21;
    v27 = *(a1 + 24);
    result = *(v27 + 8);
    if ((v19 & 0x80000000) != 0 || v26 >= result)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, (v19 + 1));
    }

    *(v27 + 12 + 4 * v26) = v23 + v22;
    v19 = (v19 + 2);
  }

  while (v23 + v22 != v7);
  if (v18 / 4 != v19)
  {
    v28 = @"Offsets inconsistency";
LABEL_25:
    v30 = new_JavaIoIOException_initWithNSString_(v28);
    objc_exception_throw(v30);
  }

  return result;
}

void sub_10013F908(_Unwind_Exception *a1)
{
  objc_end_catch();
  objc_end_catch();
  _Unwind_Resume(a1);
}

NSString *sub_10013F928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (a2)
    {
      v5 = [IOSByteArray arrayWithLength:*(a2 + 36) + *(a3 + 36)];
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(a3 + 8), *(a3 + 32), v5, 0, *(a3 + 36));
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(a2 + 8), *(a2 + 32), v5, *(a3 + 36), *(a2 + 36));
      v6 = 0;
      p_size = &v5->super.size_;
      goto LABEL_7;
    }

LABEL_12:
    JreThrowNullPointerException();
  }

  if (!a1 || !a2)
  {
    goto LABEL_12;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 32);
  p_size = (a2 + 36);
LABEL_7:
  v8 = *p_size;
  if ((atomic_load_explicit(JavaNioCharsetStandardCharsets__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100140190();
  }

  v9 = JavaNioCharsetStandardCharsets_UTF_8_;

  return [NSString stringWithBytes:v5 offset:v6 length:v8 charset:v9];
}

id ComAppleContextkitUtilSpindleArray_State_init(uint64_t a1)
{
  JreStrongAssign((a1 + 8), 0);

  return JreStrongAssign((a1 + 16), 0);
}

_DWORD *sub_10013FB38(uint64_t a1, int a2)
{
  v3 = (a1 + 8);
  result = *(a1 + 8);
  if (!result || result[2] < a2)
  {
    v4 = JavaLangMath_floorWithDouble_(a2 * 1.1);
    v5 = v4;
    if (v4 < 0.0)
    {
      v6 = 0x80000000;
    }

    else
    {
      v6 = 0x7FFFFFFF;
    }

    if (v5 == 0x80000000)
    {
      v5 = v6;
    }

    JreStrongAssignAndConsume(v3, [IOSByteArray newArrayWithLength:v5]);
    return *v3;
  }

  return result;
}

_DWORD *sub_10013FBD0(uint64_t a1, int a2)
{
  v3 = (a1 + 16);
  result = *(a1 + 16);
  if (!result || result[2] < a2)
  {
    JreStrongAssignAndConsume(v3, [IOSByteArray newArrayWithLength:a2]);
    return *v3;
  }

  return result;
}

uint64_t sub_10013FCC0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 20) = 0;
  *(a1 + 32) = 0;
  if (!a4)
  {
    goto LABEL_23;
  }

  v8 = a6;
  v12 = *(a4 + 8);
  if ((a5 & 0x80000000) != 0 || v12 <= a5)
  {
    IOSArray_throwOutOfBoundsWithMsg(v12, a5);
  }

  *(a1 + 16) = *(a4 + 12 + 4 * a5);
  v13 = *(a4 + 8);
  v14 = a5 + 1;
  if (a5 + 1 < 0 || v14 >= v13)
  {
    IOSArray_throwOutOfBoundsWithMsg(v13, v14);
  }

  v15 = *(a4 + 12 + 4 * v14);
  v16 = a5 + 3;
  if (a5 + 3 < 0 || v16 >= v13)
  {
    IOSArray_throwOutOfBoundsWithMsg(v13, v16);
  }

  v17 = *(a4 + 12 + 4 * v16);
  *(a1 + 24) = *(a1 + 16);
  if ((atomic_load_explicit(JavaLangSystem__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014019C();
  }

  if (!JavaLangSystem_out_)
  {
    goto LABEL_23;
  }

  [JavaLangSystem_out_ printlnWithNSString:{JreStrcat("$I", a2, a3, a4, a5, a6, a7, a8, @"NEW BUCKET "}];
  if (!a3)
  {
    goto LABEL_23;
  }

  [a3 seekWithLong:v15];
  v25 = [a3 readInt];
  if ((v25 - 524289) <= 0xFFF7FFFF)
  {
    v34 = JreStrcat("$I", v18, v19, v20, v21, v22, v23, v24, @"Illegal blocksize: ");
    goto LABEL_29;
  }

  if (!a2)
  {
    goto LABEL_23;
  }

  v26 = (v17 - v15 - 4);
  v27 = sub_10013FB38(a2, v17 - v15 - 4);
  [a3 readBytesWithByteArray:v27 withInt:0 withInt:v26];
  v28 = sub_10013FBD0(a2, v25);
  JreStrongAssign((a1 + 8), v28);
  result = [a2 decodeWithInt:v25 withByteArray:v27 withByteArray:*(a1 + 8)];
  *(a1 + 28) = result;
  if (result != v25)
  {
    v34 = @"Uncompressed bytes mismatch";
LABEL_29:
    v35 = new_JavaIoIOException_initWithNSString_(v34);
    objc_exception_throw(v35);
  }

  if (v8)
  {
    while (1)
    {
      v30 = *(a1 + 8);
      if (!v30)
      {
        break;
      }

      v31 = *(a1 + 20);
      *(a1 + 20) = v31 + 1;
      v32 = v31;
      result = *(v30 + 8);
      if (v31 < 0 || v31 >= result)
      {
        IOSArray_throwOutOfBoundsWithMsg(result, v31);
      }

      v33 = *(v30 + 12 + v31);
      if (!*(v30 + 12 + v32))
      {
        return result;
      }
    }

LABEL_23:
    JreThrowNullPointerException();
  }

  return result;
}

uint64_t OrgApacheLuceneIndexBaseCompositeReader_initWithOrgApacheLuceneIndexIndexReaderArray_(uint64_t a1, _DWORD *a2)
{
  OrgApacheLuceneIndexCompositeReader_init(a1);
  JreStrongAssign((a1 + 48), a2);
  v4 = JavaUtilArrays_asListWithNSObjectArray_(a2);
  v5 = JavaUtilCollections_unmodifiableListWithJavaUtilList_(v4);
  JreStrongAssign((a1 + 72), v5);
  if (!a2)
  {
    goto LABEL_16;
  }

  JreStrongAssignAndConsume((a1 + 56), [IOSIntArray newArrayWithLength:a2[2] + 1]);
  if (a2[2] >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = *(a1 + 56);
      v10 = *(v9 + 8);
      if (v6 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v6);
      }

      *(v9 + 12 + 4 * v6) = v7;
      v11 = a2[2];
      if (v6 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, v6);
      }

      v12 = *&a2[2 * v6 + 6];
      if (!v12)
      {
        break;
      }

      v7 += [*&a2[2 * v6 + 6] maxDoc];
      v8 += [v12 numDocs];
      [v12 registerParentReaderWithOrgApacheLuceneIndexIndexReader:a1];
      if (++v6 >= a2[2])
      {
        goto LABEL_12;
      }
    }

LABEL_16:
    JreThrowNullPointerException();
  }

  v8 = 0;
  v7 = 0;
LABEL_12:
  if (v7 > OrgApacheLuceneIndexIndexWriter_getActualMaxDocs())
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    OrgApacheLuceneIndexIndexWriter_getActualMaxDocs();
    if (isKindOfClass)
    {
      v24 = JreStrcat("$I$J", v17, v18, v19, v20, v21, v22, v23, @"Too many documents: an index cannot exceed ");
      v25 = JavaUtilArrays_toStringWithNSObjectArray_(a2);
      v26 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withNSString_(v24, v25);
    }

    else
    {
      v27 = JreStrcat("$I$J", v17, v18, v19, v20, v21, v22, v23, @"Too many documents: composite IndexReaders cannot exceed ");
      v26 = new_JavaLangIllegalArgumentException_initWithNSString_(v27);
    }

    objc_exception_throw(v26);
  }

  *(a1 + 64) = v7;
  v13 = *(a1 + 56);
  v14 = a2[2];
  result = *(v13 + 8);
  if (v14 < 0 || v14 >= result)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, v14);
  }

  *(v13 + 12 + 4 * v14) = *(a1 + 64);
  *(a1 + 68) = v8;
  return result;
}

uint64_t sub_10014054C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a2 & 0x80000000) != 0 || *(a1 + 64) <= a2)
  {
    v13 = *(a1 + 64);
    v11 = JreStrcat("$I$IC", a2, a3, a4, a5, a6, a7, a8, @"docID must be >= 0 and < maxDoc=");
    v12 = new_JavaLangIllegalArgumentException_initWithNSString_(v11);
    objc_exception_throw(v12);
  }

  v9 = *(a1 + 56);

  return OrgApacheLuceneIndexReaderUtil_subIndexWithInt_withIntArray_(a2, v9);
}

id OrgApacheLuceneCodecsPostingsFormat_initWithNSString_(uint64_t a1, void *a2)
{
  OrgApacheLuceneUtilNamedSPILoader_checkServiceNameWithNSString_(a2);

  return JreStrongAssign((a1 + 8), a2);
}

id OrgApacheLuceneCodecsPostingsFormat_forNameWithNSString_(uint64_t a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneCodecsPostingsFormat__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100140EE8();
  }

  v2 = sub_100140E9C();

  return [v2 lookupWithNSString:a1];
}

id OrgApacheLuceneCodecsPostingsFormat_reloadPostingsFormatsWithJavaLangClassLoader_(uint64_t a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneCodecsPostingsFormat__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100140EE8();
  }

  v2 = sub_100140E9C();

  return [v2 reloadWithJavaLangClassLoader:a1];
}

id OrgApacheLuceneCodecsPostingsFormat_availablePostingsFormats()
{
  if ((atomic_load_explicit(OrgApacheLuceneCodecsPostingsFormat__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100140EE8();
  }

  v0 = sub_100140E9C();

  return [v0 availableServices];
}

uint64_t OrgApacheLuceneCodecsPostingsFormat_class_()
{
  if ((atomic_load_explicit(OrgApacheLuceneCodecsPostingsFormat__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100140EE8();
  }

  if (qword_1005548E8 != -1)
  {
    sub_100140EF4();
  }

  return qword_1005548E0;
}

uint64_t sub_100140E9C()
{
  if ((atomic_load_explicit(OrgApacheLuceneCodecsPostingsFormat_Holder__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100140F08();
  }

  result = qword_1005548F0;
  if (!qword_1005548F0)
  {
    v1 = new_JavaLangIllegalStateException_initWithNSString_(@"You tried to lookup a PostingsFormat by name before all formats could be initialized. This likely happens if you call PostingsFormat#forName from a PostingsFormat's ctor.");
    objc_exception_throw(v1);
  }

  return result;
}

uint64_t sub_100140FB8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = a2;
  v6 = *(a1 + 16) & a2;
  v7 = *(a3 + 8);
  if ((a4 & 0x80000000) != 0 || v7 <= a4)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, a4);
  }

  *(a3 + 16 + 8 * a4) = v6;
  result = (a4 + 1);
  if (*(a1 + 12) >= 2)
  {
    v9 = 1;
    do
    {
      if ((result & 0x80000000) != 0 || result >= *(a3 + 8))
      {
        IOSArray_throwOutOfBoundsWithMsg(*(a3 + 8), result);
      }

      v4 >>= *(a1 + 8);
      *(a3 + 16 + 8 * result) = v4 & *(a1 + 16);
      ++v9;
      result = (result + 1);
    }

    while (v9 < *(a1 + 12));
  }

  return result;
}

uint64_t sub_100141108(_DWORD *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = a2;
  v6 = a1[4] & a2;
  v7 = *(a3 + 8);
  if ((a4 & 0x80000000) != 0 || v7 <= a4)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, a4);
  }

  *(a3 + 12 + 4 * a4) = v6;
  result = (a4 + 1);
  if (a1[3] >= 2)
  {
    v9 = 1;
    do
    {
      if ((result & 0x80000000) != 0 || result >= *(a3 + 8))
      {
        IOSArray_throwOutOfBoundsWithMsg(*(a3 + 8), result);
      }

      v4 >>= a1[2];
      *(a3 + 12 + 4 * result) = v4 & a1[4];
      ++v9;
      result = (result + 1);
    }

    while (v9 < a1[3]);
  }

  return result;
}

uint64_t sub_100141258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v4 = *(a2 + 8);
  if ((a3 & 0x80000000) != 0 || v4 <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v4, a3);
  }

  v5 = *(a2 + 16 + 8 * a3);
  if (*(a1 + 12) >= 2)
  {
    v6 = 1;
    do
    {
      v7 = *(a2 + 8);
      v8 = a3 + v6;
      if (a3 + v6 < 0 || v8 >= v7)
      {
        IOSArray_throwOutOfBoundsWithMsg(v7, v8);
      }

      v9 = (*(a1 + 8) * v6);
      v5 |= *(a2 + 16 + 8 * v8) << (*(a1 + 8) * v6++);
    }

    while (v6 < *(a1 + 12));
  }

  return v5;
}

uint64_t sub_100141374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v4 = *(a2 + 8);
  if ((a3 & 0x80000000) != 0 || v4 <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v4, a3);
  }

  v5 = *(a2 + 12 + 4 * a3);
  if (*(a1 + 12) >= 2)
  {
    v6 = 1;
    do
    {
      v7 = *(a2 + 8);
      v8 = a3 + v6;
      if (a3 + v6 < 0 || v8 >= v7)
      {
        IOSArray_throwOutOfBoundsWithMsg(v7, v8);
      }

      v9 = (*(a1 + 8) * v6);
      v5 |= *(a2 + 12 + 4 * v8) << (*(a1 + 8) * v6++);
    }

    while (v6 < *(a1 + 12));
  }

  return v5;
}

unint64_t sub_1001415C0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v3 = a2 + 1;
  v4 = a2 + 2;
  v5 = *(a1 + 8);
  if ((a2 & 0x80000000) != 0 || v5 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v5, a2);
  }

  v6 = a2 + 3;
  if (v3 < 0 || v3 >= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(v5, (a2 + 1));
  }

  v7 = a2 + 4;
  v8 = *(a1 + 12 + v3);
  if (v4 < 0 || v4 >= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(v5, (a2 + 2));
  }

  v9 = (a2 + 5);
  v10 = *(a1 + 12 + v4);
  if (v6 < 0 || v6 >= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(v5, (a2 + 3));
  }

  v11 = (a2 + 6);
  v12 = *(a1 + 12 + v6);
  if (v7 < 0 || v7 >= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(v5, (a2 + 4));
  }

  v13 = (a2 + 7);
  v14 = *(a1 + 12 + v7);
  if ((v9 & 0x80000000) != 0 || v9 >= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(v5, v9);
  }

  v15 = *(a1 + 12 + v9);
  if ((v11 & 0x80000000) != 0 || v11 >= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(v5, v11);
  }

  v16 = *(a1 + 12 + v11);
  if ((v13 & 0x80000000) != 0 || v13 >= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(v5, v13);
  }

  return (*(a1 + 12 + a2) << 56) | (v8 << 48) | (v10 << 40) | (v12 << 32) | (v14 << 24) | (v15 << 16) | (v16 << 8) | *(a1 + 12 + v13);
}

OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock *new_OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_initWithInt_(int a1)
{
  v2 = [OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock alloc];
  OrgApacheLuceneUtilPackedBulkOperation_init(v2, v3);
  v2->bitsPerValue_ = a1;
  v2->valueCount_ = 64 / a1;
  v2->mask_ = ~(-1 << a1);
  return v2;
}

id OrgApacheLuceneIndexPostingsEnum_init(uint64_t a1, uint64_t a2)
{
  OrgApacheLuceneSearchDocIdSetIterator_init(a1, a2);

  return JreStrongAssign((a1 + 8), 0);
}

uint64_t OrgApacheLuceneIndexPostingsEnum_class_()
{
  if (qword_100554900 != -1)
  {
    sub_100141E98();
  }

  return qword_1005548F8;
}

OrgApacheLuceneUtilPackedBulkOperationPacked24 *new_OrgApacheLuceneUtilPackedBulkOperationPacked24_init()
{
  v0 = [OrgApacheLuceneUtilPackedBulkOperationPacked24 alloc];
  OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(v0, 24);
  return v0;
}

id JavaUtilFormatter_initWithJavaLangAppendable_withJavaUtilLocale_(uint64_t a1, void *a2, void *a3)
{
  *(a1 + 32) = 0;
  if (a2)
  {
    JreStrongAssign((a1 + 8), a2);
  }

  else
  {
    v5 = new_JavaLangStringBuilder_init();
    JreStrongAssignAndConsume((a1 + 8), v5);
  }

  return JreStrongAssign((a1 + 16), a3);
}

id JavaUtilFormatter_initWithNSString_(uint64_t a1, void *a2)
{
  v3 = new_JavaIoFile_initWithNSString_(a2);
  v4 = new_JavaIoFileOutputStream_initWithJavaIoFile_(v3);

  return JavaUtilFormatter_initWithJavaIoOutputStream_(a1, v4);
}

id JavaUtilFormatter_initWithNSString_withNSString_(uint64_t a1, void *a2, __CFString *a3)
{
  v5 = new_JavaIoFile_initWithNSString_(a2);
  Default = JavaUtilLocale_getDefault();

  return JavaUtilFormatter_initWithJavaIoFile_withNSString_withJavaUtilLocale_(a1, v5, a3, Default);
}

id JavaUtilFormatter_initWithJavaIoFile_withNSString_withJavaUtilLocale_(uint64_t a1, void *a2, __CFString *a3, void *a4)
{
  *(a1 + 32) = 0;
  v7 = new_JavaIoFileOutputStream_initWithJavaIoFile_(a2);
  v8 = new_JavaIoOutputStreamWriter_initWithJavaIoOutputStream_withNSString_(v7, a3);
  v9 = new_JavaIoBufferedWriter_initWithJavaIoWriter_(v8);
  JreStrongAssignAndConsume((a1 + 8), v9);

  return JreStrongAssign((a1 + 16), a4);
}

id JavaUtilFormatter_initWithJavaIoOutputStream_(uint64_t a1, void *a2)
{
  *(a1 + 32) = 0;
  v4 = JavaNioCharsetCharset_defaultCharset();
  v5 = new_JavaIoOutputStreamWriter_initWithJavaIoOutputStream_withJavaNioCharsetCharset_(a2, v4);
  v6 = new_JavaIoBufferedWriter_initWithJavaIoWriter_(v5);
  JreStrongAssignAndConsume((a1 + 8), v6);
  Default = JavaUtilLocale_getDefault();

  return JreStrongAssign((a1 + 16), Default);
}

id JavaUtilFormatter_initWithJavaIoOutputStream_withNSString_withJavaUtilLocale_(uint64_t a1, void *a2, __CFString *a3, void *a4)
{
  *(a1 + 32) = 0;
  v6 = new_JavaIoOutputStreamWriter_initWithJavaIoOutputStream_withNSString_(a2, a3);
  v7 = new_JavaIoBufferedWriter_initWithJavaIoWriter_(v6);
  JreStrongAssignAndConsume((a1 + 8), v7);

  return JreStrongAssign((a1 + 16), a4);
}

id JavaUtilFormatter_initWithJavaIoPrintStream_(uint64_t a1, void *a2)
{
  *(a1 + 32) = 0;
  if (!a2)
  {
    v5 = new_JavaLangNullPointerException_initWithNSString_(@"ps == null");
    objc_exception_throw(v5);
  }

  JreStrongAssign((a1 + 8), a2);
  Default = JavaUtilLocale_getDefault();

  return JreStrongAssign((a1 + 16), Default);
}

uint64_t sub_100142F58(uint64_t result)
{
  if (*(result + 32) == 1)
  {
    v1 = new_JavaUtilFormatterClosedException_init();
    objc_exception_throw(v1);
  }

  return result;
}

id sub_100143280(uint64_t a1, void *a2, uint64_t a3)
{
  sub_100142F58(a1);
  v6 = [JavaUtilFormatter_FormatSpecifierParser alloc];
  JreStrongAssign(&v6->format_, a2);
  if (!a2)
  {
LABEL_22:
    JreThrowNullPointerException();
  }

  v6->length_ = [a2 length];
  v7 = v6;
  result = [a2 length];
  v9 = result;
  if (result >= 1)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      result = [a2 indexOf:37 fromIndex:v13];
      if (result == -1)
      {
        v14 = v9;
      }

      else
      {
        v14 = result;
      }

      if (v14 > v13)
      {
        result = sub_100143434(a1, a2, v13, v14);
      }

      if (v14 < v9)
      {
        v15 = [v7 parseFormatTokenWithInt:(v14 + 1)];
        if (!v15)
        {
          goto LABEL_22;
        }

        v16 = v15;
        if ([v15 requireArgument])
        {
          if ([v16 getArgIndex] == -1)
          {
            v17 = (v10 + 1);
          }

          else
          {
            v17 = v10;
            v10 = [v16 getArgIndex];
          }

          v18 = sub_1001434D8(a3, v10, v7, v11, v12 & 1);
          v12 = 1;
          v11 = v18;
          v10 = v17;
        }

        else
        {
          v18 = 0;
        }

        result = sub_100143590(a1, v16, v18);
        if (result)
        {
          result = sub_100143434(a1, result, 0, [result length]);
        }

        v14 = v7[6];
      }

      v13 = v14;
    }

    while (v14 < v9);
  }

  return result;
}

id sub_100143434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  return [v4 appendWithJavaLangCharSequence:a2 withInt:a3 withInt:a4];
}

uint64_t sub_1001434D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  if (a2 == -2 && (a5 & 1) == 0)
  {
    v8 = @"<";
    goto LABEL_14;
  }

  if (!a1)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  if (v6 <= a2)
  {
    if (!a3)
    {
      JreThrowNullPointerException();
    }

    v8 = [a3 getFormatSpecifierText];
LABEL_14:
    v9 = new_JavaUtilMissingFormatArgumentException_initWithNSString_(v8);
    objc_exception_throw(v9);
  }

  if (a2 != -2)
  {
    if ((a2 & 0x80000000) != 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v6, a2);
    }

    return *(a1 + 24 + 8 * a2);
  }

  return a4;
}

JavaLangStringBuilder *sub_100143590(uint64_t a1, void *a2, void *a3)
{
  JreStrongAssign((a1 + 40), a2);
  JreStrongAssign((a1 + 24), a3);
  if (!a2)
  {
    goto LABEL_61;
  }

  if (![a2 isDefault])
  {
    goto LABEL_7;
  }

  v6 = [a2 getConversionType];
  if (v6 == 100)
  {
    v10 = *(a1 + 56);
    if (!v10)
    {
      goto LABEL_61;
    }

    v11 = *(v10 + 224);
    v12 = *(a1 + 8);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && v11 == 48)
    {
      v13 = *(a1 + 24);
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (v14 = *(a1 + 24), objc_opt_class(), (objc_opt_isKindOfClass()) || (v15 = *(a1 + 24), objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v16 = *(a1 + 8);
        objc_opt_class();
        if (!v16 || (objc_opt_isKindOfClass() & 1) != 0)
        {
          v17 = *(a1 + 24);
          objc_opt_class();
          if (!v17)
          {
            goto LABEL_61;
          }

          if (objc_opt_isKindOfClass())
          {
            JavaLangIntegralToString_appendIntWithJavaLangAbstractStringBuilder_withInt_(v16, [v17 intValue]);
            return 0;
          }
        }

        goto LABEL_62;
      }

      v23 = *(a1 + 24);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = *(a1 + 8);
        objc_opt_class();
        if (!v24 || (objc_opt_isKindOfClass() & 1) != 0)
        {
          v25 = *(a1 + 24);
          objc_opt_class();
          if (!v25)
          {
            goto LABEL_61;
          }

          if (objc_opt_isKindOfClass())
          {
            JavaLangIntegralToString_appendLongWithJavaLangAbstractStringBuilder_withLong_(v24, [v25 longLongValue]);
            return 0;
          }
        }

LABEL_62:
        JreThrowClassCastException();
      }
    }

    v26 = *(a1 + 24);
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (v27 = *(a1 + 24), objc_opt_class(), (objc_opt_isKindOfClass()) || (v28 = *(a1 + 24), objc_opt_class(), (objc_opt_isKindOfClass()) || (v29 = *(a1 + 24), objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v30 = *(a1 + 24);
      if (!v30)
      {
        goto LABEL_61;
      }

      v18 = [v30 description];
      if (v11 != 48)
      {

        return sub_100143B24(a1, v18);
      }

      return v18;
    }

LABEL_7:
    v7 = *(a1 + 40);
    if (v7)
    {
      [v7 checkFlagsWithId:*(a1 + 24)];
      v8 = [a2 getConversionType];
      switch(v8)
      {
        case 'A':
        case 'E':
        case 'G':
        case 'a':
        case 'e':
        case 'f':
        case 'g':
          v9 = sub_1001455EC(a1);
          goto LABEL_39;
        case 'B':
        case 'b':
          v9 = sub_100143D2C(a1);
          goto LABEL_39;
        case 'C':
        case 'c':
          v9 = sub_100143F18(a1);
          goto LABEL_39;
        case 'D':
        case 'F':
        case 'I':
        case 'J':
        case 'K':
        case 'L':
        case 'M':
        case 'N':
        case 'O':
        case 'P':
        case 'Q':
        case 'R':
        case 'U':
        case 'V':
        case 'W':
        case 'Y':
        case 'Z':
        case '[':
        case '\\':
        case ']':
        case '^':
        case '_':
        case 'i':
        case 'j':
        case 'k':
        case 'l':
        case 'm':
        case 'p':
        case 'q':
        case 'r':
          goto LABEL_63;
        case 'H':
        case 'h':
          v9 = sub_100143DBC(a1);
          goto LABEL_39;
        case 'S':
        case 's':
          v9 = sub_100143E18(a1);
          goto LABEL_39;
        case 'T':
        case 't':
          v9 = sub_100144980(a1);
          goto LABEL_39;
        case 'X':
        case 'd':
        case 'o':
          goto LABEL_24;
        case 'n':
          v9 = JavaLangSystem_lineSeparator();
          goto LABEL_39;
        default:
          if (v8 == 37)
          {
            v9 = sub_100144084(a1, @"%", 0);
          }

          else
          {
            if (v8 != 120)
            {
LABEL_63:
              objc_exception_throw([a2 unknownFormatConversionException]);
            }

LABEL_24:
            if (*(a1 + 24) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              v9 = sub_1001443C0(a1);
            }

            else
            {
              v9 = sub_10014470C(a1);
            }
          }

LABEL_39:
          v18 = v9;
          if (!JavaLangCharacter_isUpperCaseWithChar_([a2 getConversionType]) || !v18)
          {
            return v18;
          }

          v21 = [v18 description];
          if (!v21)
          {
            goto LABEL_61;
          }

          v22 = *(a1 + 16);

          result = [v21 uppercaseStringWithJRELocale:v22];
          break;
      }

      return result;
    }

LABEL_61:
    JreThrowNullPointerException();
  }

  if (v6 != 115)
  {
    goto LABEL_7;
  }

  if (!*(a1 + 24))
  {
    return @"null";
  }

  if ([JavaUtilFormattable_class_() isInstance:*(a1 + 24)])
  {
    goto LABEL_7;
  }

  v19 = *(a1 + 24);

  return [v19 description];
}

void sub_100143AD4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [v2 getConversionType];
    v4 = *(a1 + 24);
    if (v4)
    {
      v5 = new_JavaUtilIllegalFormatConversionException_initWithChar_withIOSClass_(v3, [v4 getClass]);
      objc_exception_throw(v5);
    }
  }

  JreThrowNullPointerException();
}

JavaLangStringBuilder *sub_100143B24(uint64_t a1, void *a2)
{
  if (!a2 || (v4 = [a2 length], (v5 = *(a1 + 56)) == 0))
  {
    JreThrowNullPointerException();
  }

  v6 = v4;
  v7 = *(v5 + 224);
  v8 = new_JavaLangStringBuilder_initWithInt_(v4);
  if (v6 >= 1)
  {
    v9 = 0;
    v10 = v7 - 48;
    do
    {
      v11 = [a2 charAtWithInt:v9];
      if (v11 - 48 >= 0xA)
      {
        v12 = 0;
      }

      else
      {
        v12 = v10;
      }

      [(JavaLangStringBuilder *)v8 appendWithChar:(v12 + v11)];
      v9 = (v9 + 1);
    }

    while (v6 != v9);
  }

  return v8;
}

JavaLangStringBuilder *sub_100143BE0(uint64_t a1, void *a2)
{
  if (!a2)
  {
    goto LABEL_11;
  }

  v4 = new_JavaLangStringBuilder_initWithInt_([a2 length] / 3 + objc_msgSend(a2, "length"));
  v5 = [a2 length];
  if ([a2 charAtWithInt:0] == 45)
  {
    --v5;
    [(JavaLangStringBuilder *)v4 appendWithChar:45];
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = v5 % 3;
  if (!(v5 % 3))
  {
    v7 = 3;
  }

  v8 = (v7 + v6);
  [JavaLangStringBuilder appendWithJavaLangCharSequence:v4 withInt:"appendWithJavaLangCharSequence:withInt:withInt:" withInt:a2];
  if (v8 < [a2 length])
  {
    while (1)
    {
      v9 = *(a1 + 56);
      if (!v9)
      {
        break;
      }

      [(JavaLangStringBuilder *)v4 appendWithChar:*(v9 + 228)];
      v10 = v8 + 3;
      [(JavaLangStringBuilder *)v4 appendWithJavaLangCharSequence:a2 withInt:v8 withInt:(v8 + 3)];
      v8 = (v8 + 3);
      if (v10 >= [a2 length])
      {
        return v4;
      }
    }

LABEL_11:
    JreThrowNullPointerException();
  }

  return v4;
}

JavaLangStringBuilder *sub_100143D2C(uint64_t a1)
{
  v2 = *(a1 + 24);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = *(a1 + 24);
  if (isKindOfClass)
  {
    if (!v4)
    {
      JreThrowNullPointerException();
    }

    v5 = [v4 description];
  }

  else if (v4)
  {
    v5 = @"true";
  }

  else
  {
    v5 = @"false";
  }

  return sub_100144084(a1, v5, 0);
}

JavaLangStringBuilder *sub_100143DBC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = JavaLangInteger_toHexStringWithInt_([v2 hash]);
  }

  else
  {
    v3 = @"null";
  }

  return sub_100144084(a1, v3, 0);
}

JavaLangStringBuilder *sub_100143E18(uint64_t a1)
{
  if ([JavaUtilFormattable_class_() isInstance:*(a1 + 24)])
  {
    v2 = *(a1 + 40);
    if (!v2 || (!v2[16] ? (LODWORD(v3) = v2[13]) : (LODWORD(v3) = v2[13] | 4), !JavaLangCharacter_isUpperCaseWithChar_([v2 getConversionType]) ? (v3 = v3) : (v3 = v3 | 2), v4 = *(a1 + 24), v5 = JavaUtilFormattable_class_(), !v4))
    {
      JreThrowNullPointerException();
    }

    if (([v5 isInstance:v4] & 1) == 0)
    {
      JreThrowClassCastException();
    }

    [v4 formatToWithJavaUtilFormatter:a1 withInt:v3 withInt:objc_msgSend(*(a1 + 40) withInt:{"getWidth"), objc_msgSend(*(a1 + 40), "getPrecision")}];
    return 0;
  }

  else
  {
    v7 = *(a1 + 24);
    if (v7)
    {
      v8 = [v7 description];
    }

    else
    {
      v8 = @"null";
    }

    return sub_100144084(a1, v8, 0);
  }
}

JavaLangStringBuilder *sub_100143F18(uint64_t a1)
{
  if (*(a1 + 24))
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v3 = *(a1 + 24);
    if (isKindOfClass)
    {
      v4 = NSString_valueOf_(*(a1 + 24));
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 = *(a1 + 24);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v7 = *(a1 + 24);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            sub_100143AD4(a1);
          }
        }
      }

      v8 = *(a1 + 24);
      objc_opt_class();
      if (!v8)
      {
        JreThrowNullPointerException();
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }

      v9 = [v8 intValue];
      if (!JavaLangCharacter_isValidCodePointWithInt_(v9))
      {
        v19 = new_JavaUtilIllegalFormatCodePointException_initWithInt_(v9);
        objc_exception_throw(v19);
      }

      if (v9 >= 0x10000)
      {
        v17 = JavaLangCharacter_toCharsWithInt_(v9, v10, v11, v12, v13, v14, v15, v16);
        v4 = NSString_valueOfChars_(v17);
      }

      else
      {
        v4 = NSString_valueOfChar_(v9);
      }
    }

    v5 = v4;
  }

  else
  {
    v5 = @"null";
  }

  return sub_100144084(a1, v5, 0);
}

JavaLangStringBuilder *sub_100144084(uint64_t a1, JavaLangStringBuilder *a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (!v4)
  {
    goto LABEL_24;
  }

  v7 = [v4 getWidth];
  v8 = [*(a1 + 40) getPrecision];
  if (!a2)
  {
    goto LABEL_24;
  }

  v9 = v8;
  v10 = [(JavaLangStringBuilder *)a2 length];
  LODWORD(v11) = v10;
  if ((v9 & 0x80000000) == 0)
  {
    v11 = JavaLangMath_minWithInt_withInt_(v10, v9);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }

      [(JavaLangAbstractStringBuilder *)a2 setLengthWithInt:v11];
    }

    else
    {
      a2 = [(JavaLangStringBuilder *)a2 subSequenceFrom:0 to:v11];
    }
  }

  if (v7 >= 1)
  {
    if (!a2)
    {
      goto LABEL_24;
    }

    v7 = JavaLangMath_maxWithInt_withInt_([(JavaLangStringBuilder *)a2 length], v7);
  }

  v12 = __OFSUB__(v7, v11);
  v13 = v7 - v11;
  if (!((v13 < 0) ^ v12 | (v13 == 0)))
  {
    v14 = *(a1 + 40);
    if (v14[18] == 1)
    {
      if ([v14 getConversionType] == 100)
      {
        v15 = *(a1 + 56);
        if (!v15)
        {
          goto LABEL_24;
        }

        v16 = *(v15 + 224);
      }

      else
      {
        v16 = 48;
      }
    }

    else
    {
      a3 = 0;
      v16 = 32;
    }

    v17 = [IOSCharArray arrayWithLength:v13];
    JavaUtilArrays_fillWithCharArray_withChar_(v17, v16);
    v18 = *(*(a1 + 40) + 13);
    v19 = sub_100144238(a2);
    a2 = v19;
    if (v18 == 1)
    {
      if (v19)
      {
        [(JavaLangStringBuilder *)v19 appendWithCharArray:v17];
        return a2;
      }
    }

    else if (v19)
    {
      [(JavaLangStringBuilder *)v19 insertWithInt:a3 withCharArray:v17];
      return a2;
    }

LABEL_24:
    JreThrowNullPointerException();
  }

  return a2;
}

JavaLangStringBuilder *sub_100144238(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (a1)
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }
    }

    return a1;
  }

  else
  {
    v3 = new_JavaLangStringBuilder_initWithJavaLangCharSequence_(a1);

    return v3;
  }
}

JavaLangStringBuilder *sub_1001442C4(uint64_t a1, JavaLangStringBuilder *a2)
{
  if (!a2)
  {
    goto LABEL_10;
  }

  [(JavaLangAbstractStringBuilder *)a2 setCharAtWithInt:0 withChar:40];
  v4 = *(a1 + 40);
  if (!v4)
  {
    goto LABEL_10;
  }

  if (v4[18] == 1)
  {
    [v4 setWidthWithInt:{objc_msgSend(*(a1 + 40), "getWidth") - 1}];
    v5 = sub_100144084(a1, a2, 1);
    objc_opt_class();
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        [(JavaLangStringBuilder *)v5 appendWithChar:41];
        return v5;
      }

LABEL_11:
      JreThrowClassCastException();
    }

LABEL_10:
    JreThrowNullPointerException();
  }

  [(JavaLangStringBuilder *)a2 appendWithChar:41];
  v5 = sub_100144084(a1, a2, 0);
  objc_opt_class();
  if (v5 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  return v5;
}

JavaLangStringBuilder *sub_1001443C0(void *a1)
{
  v2 = new_JavaLangStringBuilder_init();
  v3 = a1[5];
  if (!v3)
  {
    goto LABEL_45;
  }

  v4 = [v3 getConversionType];
  v5 = a1[3];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = a1[3];
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    v8 = objc_opt_isKindOfClass();
    v7 = a1[3];
    if ((v8 & 1) == 0)
    {
      objc_opt_class();
      v9 = objc_opt_isKindOfClass();
      v7 = a1[3];
      if ((v9 & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_100143AD4(a1);
        }

        v7 = a1[3];
      }
    }
  }

  objc_opt_class();
  if (!v7)
  {
    goto LABEL_45;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v10 = [v7 longLongValue];
  if (*(a1[5] + 16) == 1)
  {
    if (v4 == 111)
    {
      [(JavaLangStringBuilder *)v2 appendWithNSString:@"0"];
      v11 = 1;
LABEL_23:
      v17 = a1[3];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v10;
      }

      else
      {
        v19 = a1[3];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = v10;
        }

        else
        {
          v20 = a1[3];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = v10;
          }

          else
          {
            v18 = v10;
          }
        }
      }

      if (v4 == 111)
      {
        v21 = JavaLangLong_toOctalStringWithLong_(v18);
      }

      else
      {
        v21 = JavaLangLong_toHexStringWithLong_(v18);
      }

      [(JavaLangStringBuilder *)v2 appendWithNSString:v21];
      goto LABEL_42;
    }

    [(JavaLangStringBuilder *)v2 appendWithNSString:@"0x"];
    v11 = 2;
  }

  else
  {
    v11 = 0;
  }

  if (v4 != 100)
  {
    goto LABEL_23;
  }

  v12 = JavaLangLong_toStringWithLong_(v10);
  if (*(a1[5] + 12) == 1)
  {
    v12 = sub_100143BE0(a1, v12);
  }

  v13 = a1[7];
  if (!v13)
  {
LABEL_45:
    JreThrowNullPointerException();
  }

  if (*(v13 + 224) != 48)
  {
    v12 = sub_100143B24(a1, v12);
  }

  [(JavaLangStringBuilder *)v2 appendWithJavaLangCharSequence:v12];
  v14 = a1[5];
  if ((v10 & 0x8000000000000000) == 0)
  {
    if (v14[15] == 1)
    {
      v15 = v2;
      v16 = 43;
    }

    else
    {
      if (v14[17] != 1)
      {
LABEL_42:

        return sub_100144084(a1, v2, v11);
      }

      v15 = v2;
      v16 = 32;
    }

    [(JavaLangStringBuilder *)v15 insertWithInt:0 withChar:v16];
    v11 = v11 | 1;
    goto LABEL_42;
  }

  if ((v14[14] & 1) == 0)
  {
    v11 = v11 | v14[18];
    goto LABEL_42;
  }

  return sub_1001442C4(a1, v2);
}

JavaLangStringBuilder *sub_10014470C(uint64_t a1)
{
  v2 = new_JavaLangStringBuilder_init();
  v3 = *(a1 + 24);
  objc_opt_class();
  if (!v3)
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      [v9 getConversionType];
      v10 = *(a1 + 40);
      if (v10)
      {
        *(v10 + 18) = 0;
        v11 = @"null";
        v12 = a1;
        v13 = 0;
LABEL_33:

        return sub_100144084(v12, v11, v13);
      }
    }

LABEL_36:
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v4 = *(a1 + 40);
  if (!v4)
  {
    goto LABEL_36;
  }

  v5 = [v4 getConversionType];
  if ((atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100147554();
  }

  v6 = [v3 compareToWithId:JavaMathBigInteger_ZERO_];
  if (v5 == 111)
  {
    -[JavaLangStringBuilder appendWithNSString:](v2, "appendWithNSString:", [v3 toStringWithInt:8]);
    if (*(*(a1 + 40) + 16))
    {
      [(JavaLangStringBuilder *)v2 insertWithInt:v6 >> 31 withNSString:@"0"];
      v8 = (v6 >> 31) + 1;
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v5 == 100)
  {
    v7 = [v3 toStringWithInt:10];
    if (*(*(a1 + 40) + 12) == 1)
    {
      v7 = sub_100143BE0(a1, v7);
    }

    [(JavaLangStringBuilder *)v2 appendWithJavaLangCharSequence:v7];
    if (*(*(a1 + 40) + 16))
    {
      v8 = v6 >> 31;
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_22;
  }

  -[JavaLangStringBuilder appendWithNSString:](v2, "appendWithNSString:", [v3 toStringWithInt:16]);
  if ((*(*(a1 + 40) + 16) & 1) == 0)
  {
LABEL_21:
    v8 = 0;
    goto LABEL_22;
  }

  v8 = v6 >> 31;
  if ((v5 & 0xFFFFFFDF) == 0x58)
  {
    [(JavaLangStringBuilder *)v2 insertWithInt:v6 >> 31 withNSString:@"0x"];
    v8 = v8 | 2;
  }

LABEL_22:
  v14 = *(a1 + 40);
  if ((v6 & 0x80000000) == 0)
  {
    if (v14[15] == 1)
    {
      [(JavaLangStringBuilder *)v2 insertWithInt:0 withChar:43];
      v8 = (v8 + 1);
      v14 = *(a1 + 40);
    }

    if (v14[17] == 1)
    {
      [(JavaLangStringBuilder *)v2 insertWithInt:0 withChar:32];
      v8 = (v8 + 1);
    }

    goto LABEL_32;
  }

  if (v14[14] != 1)
  {
    v8 = v8 + v14[18];
LABEL_32:
    v12 = a1;
    v11 = v2;
    v13 = v8;
    goto LABEL_33;
  }

  return sub_1001442C4(a1, v2);
}

JavaLangStringBuilder *sub_100144980(uint64_t a1)
{
  v1 = a1;
  if (!*(a1 + 24))
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      *(v4 + 18) = 0;
      v5 = @"null";
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v3 = *(v1 + 24);
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    v6 = objc_opt_isKindOfClass();
    v7 = *(v1 + 24);
    if (v6)
    {
      objc_opt_class();
      if (!v7)
      {
        goto LABEL_23;
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_24;
      }

      v8 = new_JavaUtilDate_initWithLong_([v7 longLongValue]);
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_100143AD4(v1);
      }

      v8 = *(v1 + 24);
      objc_opt_class();
      if (v8 && (objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_24:
        JreThrowClassCastException();
      }
    }

    InstanceWithJavaUtilLocale = JavaUtilCalendar_getInstanceWithJavaUtilLocale_(*(v1 + 16));
    if (InstanceWithJavaUtilLocale)
    {
      v3 = InstanceWithJavaUtilLocale;
      [(JavaUtilCalendar *)InstanceWithJavaUtilLocale setTimeWithJavaUtilDate:v8];
      goto LABEL_17;
    }

LABEL_23:
    JreThrowNullPointerException();
  }

  objc_opt_class();
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_17:
  v10 = new_JavaLangStringBuilder_init();
  v11 = *(v1 + 40);
  if (!v11)
  {
    goto LABEL_23;
  }

  if ((sub_100144B2C(v1, v10, [v11 getDateSuffix], v3) & 1) == 0)
  {
    objc_exception_throw([*(v1 + 40) unknownFormatConversionException]);
  }

  a1 = v1;
  v5 = v10;
LABEL_20:

  return sub_100144084(a1, v5, 0);
}

uint64_t sub_100144B2C(uint64_t a1, void *a2, int a3, void *a4)
{
  v4 = 0;
  switch(a3)
  {
    case 'A':
      if (!a2)
      {
        goto LABEL_117;
      }

      v19 = *(a1 + 56);
      if (!v19)
      {
        goto LABEL_117;
      }

      v20 = &OBJC_IVAR___LibcoreIcuLocaleData_longWeekdayNames_;
      goto LABEL_89;
    case 'B':
      if (!a2)
      {
        goto LABEL_117;
      }

      v8 = *(a1 + 56);
      if (!v8)
      {
        goto LABEL_117;
      }

      v9 = &OBJC_IVAR___LibcoreIcuLocaleData_longMonthNames_;
      goto LABEL_47;
    case 'C':
      if (!a4)
      {
        goto LABEL_117;
      }

      v4 = 1;
      v18 = [a4 getWithInt:1] / 100;
      goto LABEL_68;
    case 'D':
      if (!a4)
      {
        goto LABEL_117;
      }

      sub_1001453CC(a1, a2, ([a4 getWithInt:2] + 1), 2);
      if (!a2)
      {
        goto LABEL_117;
      }

      [a2 appendWithChar:47];
      sub_1001453CC(a1, a2, [a4 getWithInt:5], 2);
      [a2 appendWithChar:47];
LABEL_67:
      v4 = 1;
      v18 = [a4 getWithInt:1] % 100;
LABEL_68:
      v30 = v18;
      v31 = a1;
      v32 = a2;
      v33 = 2;
      goto LABEL_69;
    case 'F':
      if (!a4)
      {
        goto LABEL_117;
      }

      sub_1001453CC(a1, a2, [a4 getWithInt:1], 4);
      if (!a2)
      {
        goto LABEL_117;
      }

      [a2 appendWithChar:45];
      sub_1001453CC(a1, a2, ([a4 getWithInt:2] + 1), 2);
      [a2 appendWithChar:45];
LABEL_93:
      v14 = a4;
      v15 = 5;
      goto LABEL_94;
    case 'H':
      if (!a4)
      {
        goto LABEL_117;
      }

      v14 = a4;
      v15 = 11;
      goto LABEL_94;
    case 'I':
      if (!a4)
      {
        goto LABEL_117;
      }

      v29 = [a4 getWithInt:10];
      if (v29)
      {
        v12 = v29;
      }

      else
      {
        v12 = 12;
      }

      goto LABEL_54;
    case 'L':
      if (!a4)
      {
        goto LABEL_117;
      }

      v16 = a4;
      v17 = 14;
      goto LABEL_57;
    case 'M':
      if (a4)
      {
        goto LABEL_85;
      }

      goto LABEL_117;
    case 'N':
      if (!a4)
      {
        goto LABEL_117;
      }

      v13 = 1000000 * [a4 getWithInt:14];
      v23 = a1;
      v24 = a2;
      v25 = 9;
      goto LABEL_96;
    case 'Q':
      if (!a4)
      {
        goto LABEL_117;
      }

      v13 = [a4 getTimeInMillis];
      goto LABEL_43;
    case 'R':
      if (!a4)
      {
        goto LABEL_117;
      }

      sub_1001453CC(a1, a2, [a4 getWithInt:11], 2);
      if (!a2)
      {
        goto LABEL_117;
      }

      [a2 appendWithChar:58];
LABEL_85:
      v14 = a4;
      v15 = 12;
      goto LABEL_94;
    case 'S':
      if (a4)
      {
        goto LABEL_20;
      }

      goto LABEL_117;
    case 'T':
      if (!a4)
      {
        goto LABEL_117;
      }

      sub_1001453CC(a1, a2, [a4 getWithInt:11], 2);
      if (!a2)
      {
        goto LABEL_117;
      }

      [a2 appendWithChar:58];
      sub_1001453CC(a1, a2, [a4 getWithInt:12], 2);
      [a2 appendWithChar:58];
LABEL_20:
      v14 = a4;
      v15 = 13;
LABEL_94:
      v13 = [v14 getWithInt:v15];
      goto LABEL_95;
    case 'Y':
      if (a4)
      {
        goto LABEL_59;
      }

      goto LABEL_117;
    case 'Z':
      if (!a4)
      {
        goto LABEL_117;
      }

      v34 = [a4 getTimeZone];
      if (!a2 || !v34)
      {
        goto LABEL_117;
      }

      v35 = [v34 getDisplayNameWithBoolean:objc_msgSend(v34 withInt:"inDaylightTimeWithJavaUtilDate:" withJavaUtilLocale:{objc_msgSend(a4, "getTime")), 0, *(a1 + 16)}];
      goto LABEL_113;
    case 'a':
      if (!a2)
      {
        goto LABEL_117;
      }

      v19 = *(a1 + 56);
      if (!v19)
      {
        goto LABEL_117;
      }

      v20 = &OBJC_IVAR___LibcoreIcuLocaleData_shortWeekdayNames_;
LABEL_89:
      v26 = *(v19 + *v20);
      if (!v26 || !a4)
      {
        goto LABEL_117;
      }

      v27 = a4;
      v28 = 7;
      goto LABEL_102;
    case 'b':
    case 'h':
      if (!a2)
      {
        goto LABEL_117;
      }

      v8 = *(a1 + 56);
      if (!v8)
      {
        goto LABEL_117;
      }

      v9 = &OBJC_IVAR___LibcoreIcuLocaleData_shortMonthNames_;
LABEL_47:
      v26 = *(v8 + *v9);
      if (!v26 || !a4)
      {
LABEL_117:
        JreThrowNullPointerException();
      }

      v27 = a4;
      v28 = 2;
      goto LABEL_102;
    case 'c':
      sub_100144B2C(a1, a2, 97, a4);
      if (!a2)
      {
        goto LABEL_117;
      }

      [a2 appendWithChar:32];
      sub_100144B2C(a1, a2, 98, a4);
      [a2 appendWithChar:32];
      if (!a4)
      {
        goto LABEL_117;
      }

      sub_1001453CC(a1, a2, [a4 getWithInt:5], 2);
      [a2 appendWithChar:32];
      sub_100144B2C(a1, a2, 84, a4);
      [a2 appendWithChar:32];
      sub_100144B2C(a1, a2, 90, a4);
      [a2 appendWithChar:32];
LABEL_59:
      v4 = 1;
      v30 = [a4 getWithInt:1];
      v31 = a1;
      v32 = a2;
      v33 = 4;
LABEL_69:
      sub_1001453CC(v31, v32, v30, v33);
      return v4;
    case 'd':
      if (a4)
      {
        goto LABEL_93;
      }

      goto LABEL_117;
    case 'e':
      if (!a4)
      {
        goto LABEL_117;
      }

      v10 = a4;
      v11 = 5;
      goto LABEL_16;
    case 'j':
      if (!a4)
      {
        goto LABEL_117;
      }

      v16 = a4;
      v17 = 6;
LABEL_57:
      v13 = [v16 getWithInt:v17];
      v23 = a1;
      v24 = a2;
      v25 = 3;
      goto LABEL_96;
    case 'k':
      if (!a4)
      {
        goto LABEL_117;
      }

      v10 = a4;
      v11 = 11;
LABEL_16:
      v13 = [v10 getWithInt:v11];
      goto LABEL_43;
    case 'l':
      if (!a4)
      {
        goto LABEL_117;
      }

      v21 = [a4 getWithInt:10];
      if (v21)
      {
        v22 = v21;
      }

      else
      {
        v22 = 12;
      }

      v13 = v22;
      goto LABEL_43;
    case 'm':
      if (!a4)
      {
        goto LABEL_117;
      }

      v12 = [a4 getWithInt:2] + 1;
LABEL_54:
      v13 = v12;
      goto LABEL_95;
    case 'p':
      if (!a2)
      {
        goto LABEL_117;
      }

      v45 = *(a1 + 56);
      if (!v45)
      {
        goto LABEL_117;
      }

      v46 = *(v45 + 24);
      if (!v46 || !a4)
      {
        goto LABEL_117;
      }

      v47 = [a4 getWithInt:9];
      v48 = *(v46 + 8);
      if (v47 < 0 || v47 >= v48)
      {
        IOSArray_throwOutOfBoundsWithMsg(v48, v47);
      }

      v49 = *(v46 + 24 + 8 * v47);
      if (!v49)
      {
        goto LABEL_117;
      }

      v35 = [v49 lowercaseStringWithJRELocale:*(a1 + 16)];
LABEL_113:
      v44 = v35;
      goto LABEL_114;
    case 'r':
      sub_100144B2C(a1, a2, 73, a4);
      if (!a2)
      {
        goto LABEL_117;
      }

      [a2 appendWithChar:58];
      if (!a4)
      {
        goto LABEL_117;
      }

      sub_1001453CC(a1, a2, [a4 getWithInt:12], 2);
      [a2 appendWithChar:58];
      sub_1001453CC(a1, a2, [a4 getWithInt:13], 2);
      [a2 appendWithChar:32];
      v41 = *(a1 + 56);
      if (!v41)
      {
        goto LABEL_117;
      }

      v26 = *(v41 + 24);
      if (!v26)
      {
        goto LABEL_117;
      }

      v27 = a4;
      v28 = 9;
LABEL_102:
      v42 = [v27 getWithInt:v28];
      v43 = *(v26 + 8);
      if (v42 < 0 || v42 >= v43)
      {
        IOSArray_throwOutOfBoundsWithMsg(v43, v42);
      }

      v44 = *(v26 + 24 + 8 * v42);
LABEL_114:
      [a2 appendWithNSString:v44];
      return 1;
    case 's':
      if (!a4)
      {
        goto LABEL_117;
      }

      v13 = [a4 getTimeInMillis] / 1000;
LABEL_43:
      v23 = a1;
      v24 = a2;
      v25 = 0;
      goto LABEL_96;
    case 'y':
      if (!a4)
      {
        goto LABEL_117;
      }

      goto LABEL_67;
    case 'z':
      if (!a4)
      {
        goto LABEL_117;
      }

      v36 = [a4 getWithInt:15];
      v37 = [a4 getWithInt:16];
      if (!a2)
      {
        goto LABEL_117;
      }

      v38 = (v37 + v36) < 0;
      if ((v37 + v36) >= 0)
      {
        v39 = v37 + v36;
      }

      else
      {
        v39 = -(v37 + v36);
      }

      if (v38)
      {
        v40 = 45;
      }

      else
      {
        v40 = 43;
      }

      [a2 appendWithChar:v40];
      sub_1001453CC(a1, a2, v39 / 0x36EE80uLL, 2);
      v13 = v39 % 0x36EE80 / 0xEA60uLL;
LABEL_95:
      v23 = a1;
      v24 = a2;
      v25 = 2;
LABEL_96:
      sub_1001453CC(v23, v24, v13, v25);
      return 1;
    default:
      return v4;
  }
}
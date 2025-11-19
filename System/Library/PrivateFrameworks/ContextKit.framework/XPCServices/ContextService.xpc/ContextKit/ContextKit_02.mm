unsigned int *sub_10006EAA8(unsigned int *result)
{
  v1 = result;
  v2 = result[57];
  v3 = result[54];
  v4 = v2 - v3;
  v5 = result[42];
  v6 = v2 - v3 - (128 - v5);
  if ((v2 - v3) >= 128 - v5)
  {
    if (v6 >= 128)
    {
      v9 = v2 + v5 - v3;
      v10 = &OBJC_IVAR___OrgApacheLuceneCodecsDocValuesConsumer__6__1_docIDUpto_;
      do
      {
        v11 = *(*(v1 + 64) + 8);
        if (!v11)
        {
LABEL_31:
          JreThrowNullPointerException();
        }

        [v11 skipBlockWithOrgApacheLuceneStoreIndexInput:*(v1 + 32)];
        if (*(v1 + v10[182]) == 1)
        {
          [*(*(v1 + 64) + 8) skipBlockWithOrgApacheLuceneStoreIndexInput:*(v1 + 40)];
          v12 = *(v1 + 40);
          if (!v12)
          {
            goto LABEL_31;
          }

          v13 = [v12 readVInt];
          v14 = v10;
          v15 = *(v1 + 40);
          v16 = [v15 getFilePointer] + v13;
          v17 = v15;
          v10 = v14;
          [v17 seekWithLong:v16];
        }

        if (*(v1 + 56) == 1)
        {
          [*(*(v1 + 64) + 8) skipBlockWithOrgApacheLuceneStoreIndexInput:*(v1 + 40)];
          [*(*(v1 + 64) + 8) skipBlockWithOrgApacheLuceneStoreIndexInput:*(v1 + 40)];
        }

        v9 -= 128;
      }

      while (v9 > 255);
      v6 = v9 - 128;
    }

    result = sub_10006DE94(v1);
    *(v1 + 144) = 0;
    *(v1 + 168) = 0;
    for (i = *(v1 + 168); i < v6; i = *(v1 + 168))
    {
      if (*(v1 + 57) == 1)
      {
        v19 = *(v1 + 112);
        if (!v19)
        {
          goto LABEL_31;
        }

        result = *(v19 + 8);
        if ((i & 0x80000000) != 0 || i >= result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, i);
        }

        *(v1 + 144) += *(v19 + 12 + 4 * i);
      }

      ++*(v1 + 168);
    }
  }

  else
  {
    for (j = v5 + v4; v5 < j; v5 = *(v1 + 168))
    {
      if (*(v1 + 57) == 1)
      {
        v8 = *(v1 + 112);
        if (!v8)
        {
          goto LABEL_31;
        }

        result = *(v8 + 8);
        if ((v5 & 0x80000000) != 0 || v5 >= result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, v5);
        }

        *(v1 + 144) += *(v8 + 12 + 4 * v5);
      }

      ++*(v1 + 168);
    }
  }

  *(v1 + 224) = 2147483519;
  *(v1 + 220) = 0;
  *(v1 + 152) = 0;
  return result;
}

OrgApacheLuceneUtilPackedBulkOperationPacked4 *new_OrgApacheLuceneUtilPackedBulkOperationPacked4_init()
{
  v0 = [OrgApacheLuceneUtilPackedBulkOperationPacked4 alloc];
  OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(v0, 4);
  return v0;
}

uint64_t OrgApacheLuceneStoreMMapDirectory_initWithOrgLukhnosPortmobileFilePath_withOrgApacheLuceneStoreLockFactory_withInt_(uint64_t a1, void *a2, void *a3, int a4)
{
  OrgApacheLuceneStoreFSDirectory_initWithOrgLukhnosPortmobileFilePath_withOrgApacheLuceneStoreLockFactory_(a1, a2, a3);
  *(a1 + 36) = OrgApacheLuceneStoreMMapDirectory_UNMAP_SUPPORTED_;
  if (a4 <= 0)
  {
    v7 = new_JavaLangIllegalArgumentException_initWithNSString_(@"Maximum chunk size for mmap must be >0");
    objc_exception_throw(v7);
  }

  result = JavaLangInteger_numberOfLeadingZerosWithInt_(a4);
  *(a1 + 32) = 31 - result;
  return result;
}

void sub_10006FC44(_Unwind_Exception *a1)
{
  objc_end_catch();
  objc_end_catch();
  _Unwind_Resume(a1);
}

void sub_10006FC60(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x10006FBA4);
}

IOSObjectArray *sub_10006FC68(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  v9 = a5 >> v8;
  if ((a5 >> v8) >= 0x7FFFFFFF)
  {
    v21 = JreStrcat("$$", a2, a3, a4, a5, a6, a7, a8, @"RandomAccessFile too big for chunk size: ");
    v22 = new_JavaLangIllegalArgumentException_initWithNSString_(v21);
    objc_exception_throw(v22);
  }

  v12 = (v9 + 1);
  v13 = [IOSObjectArray arrayWithLength:v12 type:JavaNioByteBuffer_class_()];
  if (v9 <= 0x7FFFFFFE)
  {
    v14 = 0;
    v15 = 0;
    v16 = 1 << (v8 & 0x3F);
    do
    {
      if (v15 + v16 >= a5)
      {
        v17 = a5 - v15;
      }

      else
      {
        v17 = v16;
      }

      if (!a3)
      {
        JreThrowNullPointerException();
      }

      if ((atomic_load_explicit(JavaNioChannelsFileChannel_MapMode__initialized, memory_order_acquire) & 1) == 0)
      {
        objc_opt_class();
      }

      v18 = [a3 mapWithJavaNioChannelsFileChannel_MapMode:JavaNioChannelsFileChannel_MapMode_READ_ONLY_ withLong:v15 + a4 withLong:v17];
      v19 = v18;
      if (*(a1 + 37) == 1)
      {
        if (!v18)
        {
          JreThrowNullPointerException();
        }

        [v18 load];
      }

      IOSObjectArray_Set(v13, v14, v19);
      v15 += v17;
      ++v14;
    }

    while (v12 != v14);
  }

  return v13;
}

void sub_10006FDFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2 == 1)
  {
    v13 = objc_begin_catch(exception_object);
    v14 = sub_10006FE5C(v13, a12, v12);
    objc_exception_throw(v14);
  }

  _Unwind_Resume(exception_object);
}

JavaIoIOException *sub_10006FE5C(void *a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  [a1 getCause];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = 0;
    v7 = @"Map failed";
  }

  else
  {
    v7 = [a1 getMessage];
    v6 = [a1 getCause];
  }

  if ((atomic_load_explicit(OrgApacheLuceneUtilConstants__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100070498();
  }

  if (OrgApacheLuceneUtilConstants_JRE_IS_64BIT_ == 1)
  {
    if ((atomic_load_explicit(OrgApacheLuceneUtilConstants__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100070498();
    }

    if (OrgApacheLuceneUtilConstants_WINDOWS_)
    {
      v8 = @"Windows is unfortunately very limited on virtual address space. If your index size is several hundred Gigabytes, consider changing to Linux. ";
    }

    else
    {
      if ((atomic_load_explicit(OrgApacheLuceneUtilConstants__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100070498();
      }

      if (OrgApacheLuceneUtilConstants_LINUX_)
      {
        v8 = @"Please review 'ulimit -v', 'ulimit -m' (both should return 'unlimited'), and 'sysctl vm.max_map_count'. ";
      }

      else
      {
        v8 = @"Please review 'ulimit -v', 'ulimit -m' (both should return 'unlimited'). ";
      }
    }
  }

  else
  {
    v8 = @"MMapDirectory should only be used on 64bit platforms, because the address space on 32bit operating systems is too small. ";
  }

  if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000458CC();
  }

  v9 = JavaUtilLocale_ENGLISH_;
  v14[0] = v7;
  v14[1] = a2;
  v14[2] = JavaLangInteger_valueOfWithInt_(a3);
  v14[3] = v8;
  v10 = [IOSObjectArray arrayWithObjects:v14 count:4 type:NSObject_class_()];
  v11 = NSString_formatWithJavaUtilLocale_withNSString_withNSObjectArray_(v9, @"%s: %s [this may be caused by lack of enough unfragmented virtual address space or too restrictive virtual memory limits enforced by the operating system, preventing us to map a chunk of %d bytes. %sMore information: http://blog.thetaphi.de/2012/07/use-lucenes-mmapdirectory-on-64bit.html]", v10);
  v12 = new_JavaIoIOException_initWithNSString_withJavaLangThrowable_(v11, v6);
  -[JavaLangThrowable setStackTraceWithJavaLangStackTraceElementArray:](v12, "setStackTraceWithJavaLangStackTraceElementArray:", [a1 getStackTrace]);
  return v12;
}

OrgApacheLuceneStoreMMapDirectory *new_OrgApacheLuceneStoreMMapDirectory_initWithOrgLukhnosPortmobileFilePath_withOrgApacheLuceneStoreLockFactory_(void *a1, void *a2)
{
  v4 = [OrgApacheLuceneStoreMMapDirectory alloc];
  OrgApacheLuceneStoreMMapDirectory_initWithOrgLukhnosPortmobileFilePath_withOrgApacheLuceneStoreLockFactory_withInt_(v4, a1, a2, OrgApacheLuceneStoreMMapDirectory_DEFAULT_MAX_CHUNK_SIZE_);
  return v4;
}

void sub_1000701E8(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    JavaLangBoolean_valueOfWithBoolean_(0);
    objc_end_catch();
    JUMPOUT(0x1000701D0);
  }

  _Unwind_Resume(exception_object);
}

IOSObjectArray *OrgApacheLuceneIndexStoredFieldVisitor_StatusEnum_values()
{
  if ((atomic_load_explicit(OrgApacheLuceneIndexStoredFieldVisitor_StatusEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000708E8();
  }

  v0 = OrgApacheLuceneIndexStoredFieldVisitor_StatusEnum_class_();

  return [IOSObjectArray arrayWithObjects:&OrgApacheLuceneIndexStoredFieldVisitor_StatusEnum_values_ count:3 type:v0];
}

void *OrgApacheLuceneIndexStoredFieldVisitor_StatusEnum_valueOfWithNSString_(void *a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneIndexStoredFieldVisitor_StatusEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000708E8();
  }

  v2 = 0;
  while (1)
  {
    v3 = OrgApacheLuceneIndexStoredFieldVisitor_StatusEnum_values_[v2];
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

uint64_t OrgApacheLuceneIndexStoredFieldVisitor_StatusEnum_class_()
{
  if ((atomic_load_explicit(OrgApacheLuceneIndexStoredFieldVisitor_StatusEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000708E8();
  }

  if (qword_100554148 != -1)
  {
    sub_1000708F4();
  }

  return qword_100554140;
}

uint64_t OrgApacheLuceneSearchUsageTrackingQueryCachingPolicy_isCostlyWithOrgApacheLuceneSearchQuery_()
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

void *OrgApacheLuceneSearchUsageTrackingQueryCachingPolicy_init(uint64_t a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneSearchQueryCachingPolicy_CacheOnLargeSegments__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100070D94();
  }

  v2 = OrgApacheLuceneSearchQueryCachingPolicy_CacheOnLargeSegments_DEFAULT_;

  return sub_100070AAC(a1, v2, 256);
}

void *sub_100070AAC(uint64_t a1, void *a2, int a3)
{
  JreStrongAssign((a1 + 8), a2);
  v5 = new_OrgApacheLuceneUtilFrequencyTrackingRingBuffer_initWithInt_withInt_(a3, 0x80000000);

  return JreStrongAssignAndConsume((a1 + 16), v5);
}

void *sub_100070BD8(void *a1)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  v1 = a1;
  [a1 getBoost];
  if (v2 != 1.0)
  {
    v3 = [v1 clone];
    if (v3)
    {
      v1 = v3;
      LODWORD(v4) = 1.0;
      [v3 setBoostWithFloat:v4];
      return v1;
    }

LABEL_6:
    JreThrowNullPointerException();
  }

  return v1;
}

OrgApacheLuceneSearchUsageTrackingQueryCachingPolicy *new_OrgApacheLuceneSearchUsageTrackingQueryCachingPolicy_init()
{
  v0 = [OrgApacheLuceneSearchUsageTrackingQueryCachingPolicy alloc];
  OrgApacheLuceneSearchUsageTrackingQueryCachingPolicy_init(v0);
  return v0;
}

id OrgApacheLuceneUtilBitSet_ofWithOrgApacheLuceneSearchDocIdSetIterator_withInt_(void *a1, unsigned int a2)
{
  if (!a1 || ([a1 cost] >= a2 >> 7 ? (v4 = new_OrgApacheLuceneUtilFixedBitSet_initWithInt_(a2)) : (v4 = new_OrgApacheLuceneUtilSparseFixedBitSet_initWithInt_(a2)), (v5 = v4) == 0))
  {
    JreThrowNullPointerException();
  }

  v6 = v5;
  [v5 or__WithOrgApacheLuceneSearchDocIdSetIterator:a1];
  return v6;
}

id sub_100070E20(void *a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  result = [a1 docID];
  if (result != -1)
  {
    [a1 docID];
    v10 = JreStrcat("$I", v3, v4, v5, v6, v7, v8, v9, @"This operation only works with an unpositioned iterator, got current position = ");
    v11 = new_JavaLangIllegalStateException_initWithNSString_(v10);
    objc_exception_throw(v11);
  }

  return result;
}

id sub_100070F04(void *a1, void *a2, void *a3)
{
  v6 = [a1 length];
  if (!a2)
  {
    goto LABEL_15;
  }

  v7 = v6;
  v8 = [a2 nextDoc];
  if (v8 < v7)
  {
    v9 = v8;
    v10 = 0xFFFFFFFFLL;
    do
    {
      if (v10 < v9)
      {
        v10 = [a1 nextSetBitWithInt:v9];
      }

      if (v10 == v9)
      {
        if (!a3)
        {
          goto LABEL_15;
        }

        [a3 onMatchWithInt:v9];
        v11 = [a2 nextDoc];
      }

      else
      {
        v11 = [a2 advanceWithInt:v10];
      }

      v9 = v11;
    }

    while (v11 < v7);
  }

  if (!a3)
  {
LABEL_15:
    JreThrowNullPointerException();
  }

  return [a3 finish];
}

OrgApacheLuceneUtilPackedBulkOperationPacked23 *new_OrgApacheLuceneUtilPackedBulkOperationPacked23_init()
{
  v0 = [OrgApacheLuceneUtilPackedBulkOperationPacked23 alloc];
  OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(v0, 23);
  return v0;
}

OrgApacheLuceneIndexSingletonSortedSetDocValues *new_OrgApacheLuceneIndexSingletonSortedSetDocValues_initWithOrgApacheLuceneIndexSortedDocValues_(void *a1)
{
  v2 = [OrgApacheLuceneIndexSingletonSortedSetDocValues alloc];
  OrgApacheLuceneIndexRandomAccessOrds_init();
  JreStrongAssign(&v2->in_, a1);
  return v2;
}

uint64_t OrgApacheLuceneIndexReaderUtil_getTopLevelContextWithOrgApacheLuceneIndexIndexReaderContext_(uint64_t a1)
{
  do
  {
    if (!a1)
    {
      JreThrowNullPointerException();
    }

    result = a1;
    a1 = *(a1 + 8);
  }

  while (a1);
  return result;
}

uint64_t OrgApacheLuceneIndexReaderUtil_subIndexWithInt_withIntArray_(int a1, uint64_t a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v2 = *(a2 + 8);
  v3 = (v2 - 1);
  if (v2 - 1 >= 0)
  {
    v5 = 0;
    do
    {
      v6 = (v3 + v5) >> 1;
      v7 = *(a2 + 8);
      if (v6 >= v7)
      {
        IOSArray_throwOutOfBoundsWithMsg(v7, (v3 + v5) >> 1);
      }

      v8 = *(a2 + 12 + 4 * v6);
      if (v8 <= a1)
      {
        if (v8 >= a1)
        {
          do
          {
            v3 = v6;
            v6 = (v6 + 1);
            if (v6 >= v2)
            {
              break;
            }

            v9 = *(a2 + 8);
            if ((v6 & 0x80000000) != 0 || v6 >= v9)
            {
              IOSArray_throwOutOfBoundsWithMsg(v9, v6);
            }
          }

          while (*(a2 + 12 + 4 * v6) == v8);
          return v3;
        }

        v5 = v6 + 1;
      }

      else
      {
        v3 = (v6 - 1);
      }
    }

    while (v3 >= v5);
  }

  return v3;
}

uint64_t OrgApacheLuceneIndexReaderUtil_subIndexWithInt_withJavaUtilList_(int a1, void *a2)
{
  if (!a2)
  {
LABEL_15:
    JreThrowNullPointerException();
  }

  v4 = [a2 size];
  v5 = v4 - 1;
  if ((v4 - 1) >= 0)
  {
    v6 = v4;
    v7 = 0;
    do
    {
      v8 = (v5 + v7) >> 1;
      v9 = [a2 getWithInt:v8];
      if (!v9)
      {
        goto LABEL_15;
      }

      v10 = v9[8];
      if (v10 <= a1)
      {
        if (v10 >= a1)
        {
          do
          {
            v5 = v8;
            v8 = (v8 + 1);
            if (v8 >= v6)
            {
              break;
            }

            v11 = [a2 getWithInt:v8];
            if (!v11)
            {
              goto LABEL_15;
            }
          }

          while (v11[8] == v10);
          return v5;
        }

        v7 = v8 + 1;
      }

      else
      {
        v5 = (v8 - 1);
      }
    }

    while (v5 >= v7);
  }

  return v5;
}

uint64_t OrgApacheLuceneSearchBoostAttribute_class_()
{
  if (qword_100554158 != -1)
  {
    sub_1000762D4();
  }

  return qword_100554150;
}

ComAppleContextkitUtilKeylessMapBase *ComAppleContextkitUtilKeylessMapBase_openWithOrgApacheLuceneStoreDirectory_withNSString_(void *a1, uint64_t a2)
{
  NSObject_class_();
  DefaultInstance = ComAppleContextkitUtilValueMarshalling_getDefaultInstance();
  v5 = [ComAppleContextkitUtilKeylessMapBase alloc];
  ComAppleContextkitUtilKeylessMapBase_initWithOrgApacheLuceneStoreDirectory_withNSString_withIOSClass_withComAppleContextkitUtilValueMarshalling_(v5, a1, a2, v6, DefaultInstance);

  return v5;
}

id ComAppleContextkitUtilKeylessMapBase_initWithOrgApacheLuceneStoreDirectory_withNSString_withIOSClass_withComAppleContextkitUtilValueMarshalling_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(a1 + 72) = 0;
  JreStrongAssign((a1 + 64), a2);
  JreStrongAssign((a1 + 40), a5);
  if (!a2 || (JreStrongAssign((a1 + 16), [a2 openInputWithNSString:a3 withOrgApacheLuceneStoreIOContext:0]), (v9 = *(a1 + 16)) == 0))
  {
    JreThrowNullPointerException();
  }

  if ([v9 readInt] != -1224722517)
  {
    v12 = @"Invalid format";
    goto LABEL_9;
  }

  *(a1 + 60) = [*(a1 + 16) readInt];
  if ([*(a1 + 16) readInt])
  {
    v12 = @"Reserved value is not 0";
LABEL_9:
    v13 = new_JavaIoIOException_initWithNSString_(v12);
    objc_exception_throw(v13);
  }

  *(a1 + 24) = [*(a1 + 16) readInt];
  *(a1 + 8) = [*(a1 + 16) readInt];
  v10 = [*(a1 + 16) readInt];
  *(a1 + 12) = v10;
  *(a1 + 56) = v10 < 0;
  *(a1 + 32) = [*(a1 + 16) readInt];
  JreStrongAssign((a1 + 48), [a1 valueConverterForCodeWithInt:{objc_msgSend(*(a1 + 16), "readInt")}]);
  result = [*(a1 + 16) getFilePointer];
  *(a1 + 28) = result;
  return result;
}

JavaUtilHashMap *sub_100076A3C(uint64_t a1, uint64_t a2)
{
  v14 = new_JavaUtilHashMap_init();
  v4 = *(a1 + 16);
  if (!v4 || !a2)
  {
    JreThrowNullPointerException();
  }

  [v4 seekWithLong:*(a2 + 8)];
  v5 = 0;
  do
  {
    v6 = [*(a1 + 16) readVInt];
    v7 = v6 & 7;
    if ((v6 & 7) == 0)
    {
      v7 = [*(a1 + 16) readVInt];
    }

    v8 = [IOSIntArray arrayWithLength:v7];
    if (v7 >= 1)
    {
      v9 = 0;
      v10 = v7;
      do
      {
        v11 = [*(a1 + 16) readInt];
        size = v8->super.size_;
        if (v9 >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v9);
        }

        *(&v8->super.size_ + ++v9) = v11;
      }

      while (v10 != v9);
    }

    v5 += v6 >> 3;
    [(JavaUtilHashMap *)v14 putWithId:JavaLangInteger_valueOfWithInt_(v5) withId:v8];
  }

  while ([*(a1 + 16) getFilePointer] < *(a2 + 12));
  return v14;
}

uint64_t OrgApacheLuceneIndexTermState_class_()
{
  if (qword_100554178 != -1)
  {
    sub_100076EF8();
  }

  return qword_100554170;
}

uint64_t OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute_class_()
{
  if (qword_100554188 != -1)
  {
    sub_100076F6C();
  }

  return qword_100554180;
}

OrgApacheLuceneUtilWeakIdentityMap *OrgApacheLuceneUtilWeakIdentityMap_newHashMapWithBoolean_(BOOL a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilWeakIdentityMap__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100077954();
  }

  v2 = new_JavaUtilHashMap_init();
  v3 = sub_100077598(v2, a1);

  return v3;
}

OrgApacheLuceneUtilWeakIdentityMap *OrgApacheLuceneUtilWeakIdentityMap_newConcurrentHashMapWithBoolean_(BOOL a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilWeakIdentityMap__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100077954();
  }

  v2 = new_JavaUtilConcurrentConcurrentHashMap_init();
  v3 = sub_100077598(v2, a1);

  return v3;
}

OrgApacheLuceneUtilWeakIdentityMap *OrgApacheLuceneUtilWeakIdentityMap_newHashMap()
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilWeakIdentityMap__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100077954();
  }

  return OrgApacheLuceneUtilWeakIdentityMap_newHashMapWithBoolean_(1);
}

OrgApacheLuceneUtilWeakIdentityMap *sub_100077598(void *a1, BOOL a2)
{
  v4 = [OrgApacheLuceneUtilWeakIdentityMap alloc];
  v5 = new_JavaLangRefReferenceQueue_init();
  JreStrongAssignAndConsume(&v4->queue_, v5);
  JreStrongAssign(&v4->backingStore_, a1);
  v4->reapOnRead_ = a2;
  return v4;
}

OrgApacheLuceneUtilWeakIdentityMap *OrgApacheLuceneUtilWeakIdentityMap_newConcurrentHashMap()
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilWeakIdentityMap__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100077954();
  }

  return OrgApacheLuceneUtilWeakIdentityMap_newConcurrentHashMapWithBoolean_(1);
}

uint64_t sub_100077668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if (!a2)
  {
    if ((atomic_load_explicit(OrgApacheLuceneUtilWeakIdentityMap__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100077954();
    }

    a2 = OrgApacheLuceneUtilWeakIdentityMap_NULL__;
  }

  JavaLangRefWeakReference_initWithId_withJavaLangRefReferenceQueue_(a1, a2, a3);
  result = JavaLangSystem_identityHashCodeWithId_(v4);
  *(a1 + 40) = result;
  return result;
}

id OrgApacheLuceneIndexFieldInfo_initWithNSString_withInt_withBoolean_withBoolean_withBoolean_withOrgApacheLuceneIndexIndexOptionsEnum_withOrgApacheLuceneIndexDocValuesTypeEnum_withLong_withJavaUtilMap_(uint64_t a1, uint64_t a2, int a3, char a4, char a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10001B990();
  }

  JreStrongAssign((a1 + 24), OrgApacheLuceneIndexDocValuesTypeEnum_values_);
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  JreStrongAssign((a1 + 40), OrgApacheLuceneIndexIndexOptionsEnum_values_[0]);
  v17 = OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(a2);
  JreStrongAssign((a1 + 8), v17);
  *(a1 + 16) = a3;
  v25 = JreStrcat("$$$", v18, v19, v20, v21, v22, v23, v24, @"DocValuesType cannot be null (field: ");
  v26 = OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_withNSString_(a8, v25);
  JreStrongAssign((a1 + 24), v26);
  v34 = JreStrcat("$$$", v27, v28, v29, v30, v31, v32, v33, @"IndexOptions cannot be null (field: ");
  v35 = OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_withNSString_(a7, v34);
  JreStrongAssign((a1 + 40), v35);
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  v36 = OrgApacheLuceneIndexIndexOptionsEnum_values_[0] == a7;
  if (OrgApacheLuceneIndexIndexOptionsEnum_values_[0] == a7)
  {
    v37 = 0;
  }

  else
  {
    v37 = a4;
  }

  if (OrgApacheLuceneIndexIndexOptionsEnum_values_[0] == a7)
  {
    v38 = 0;
  }

  else
  {
    v38 = a6;
  }

  *(a1 + 32) = v37;
  v39 = a5;
  if (v36)
  {
    v39 = 0;
  }

  *(a1 + 48) = v38;
  *(a1 + 33) = v39;
  *(a1 + 64) = a9;
  v40 = OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(a10);

  return JreStrongAssign((a1 + 56), v40);
}

OrgApacheLuceneIndexFieldInfo *new_OrgApacheLuceneIndexFieldInfo_initWithNSString_withInt_withBoolean_withBoolean_withBoolean_withOrgApacheLuceneIndexIndexOptionsEnum_withOrgApacheLuceneIndexDocValuesTypeEnum_withLong_withJavaUtilMap_(uint64_t a1, int a2, char a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = [OrgApacheLuceneIndexFieldInfo alloc];
  OrgApacheLuceneIndexFieldInfo_initWithNSString_withInt_withBoolean_withBoolean_withBoolean_withOrgApacheLuceneIndexIndexOptionsEnum_withOrgApacheLuceneIndexDocValuesTypeEnum_withLong_withJavaUtilMap_(v17, a1, a2, a3, a4, a5, a6, a7, a8, a9);
  return v17;
}

uint64_t OrgApacheLuceneIndexFieldInfo_class_()
{
  if (qword_100554198 != -1)
  {
    sub_100078440();
  }

  return qword_100554190;
}

id OrgApacheLuceneUtilPackedDirectReader_getInstanceWithOrgApacheLuceneStoreRandomAccessInput_withInt_(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 > 23)
  {
    if (a2 <= 39)
    {
      switch(a2)
      {
        case 0x18:
          v8 = new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader24_initWithOrgApacheLuceneStoreRandomAccessInput_(a1);
          break;
        case 0x1C:
          v8 = new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader28_initWithOrgApacheLuceneStoreRandomAccessInput_(a1);
          break;
        case 0x20:
          v8 = new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader32_initWithOrgApacheLuceneStoreRandomAccessInput_(a1);
          break;
        default:
          goto LABEL_37;
      }
    }

    else if (a2 > 55)
    {
      if (a2 == 56)
      {
        v8 = new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader56_initWithOrgApacheLuceneStoreRandomAccessInput_(a1);
      }

      else
      {
        if (a2 != 64)
        {
          goto LABEL_37;
        }

        v8 = new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader64_initWithOrgApacheLuceneStoreRandomAccessInput_(a1);
      }
    }

    else if (a2 == 40)
    {
      v8 = new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader40_initWithOrgApacheLuceneStoreRandomAccessInput_(a1);
    }

    else
    {
      if (a2 != 48)
      {
        goto LABEL_37;
      }

      v8 = new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader48_initWithOrgApacheLuceneStoreRandomAccessInput_(a1);
    }
  }

  else if (a2 <= 7)
  {
    switch(a2)
    {
      case 1:
        v8 = new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader1_initWithOrgApacheLuceneStoreRandomAccessInput_(a1);
        break;
      case 2:
        v8 = new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader2_initWithOrgApacheLuceneStoreRandomAccessInput_(a1);
        break;
      case 4:
        v8 = new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader4_initWithOrgApacheLuceneStoreRandomAccessInput_(a1);
        break;
      default:
        goto LABEL_37;
    }
  }

  else if (a2 > 15)
  {
    if (a2 == 16)
    {
      v8 = new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader16_initWithOrgApacheLuceneStoreRandomAccessInput_(a1);
    }

    else
    {
      if (a2 != 20)
      {
        goto LABEL_37;
      }

      v8 = new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader20_initWithOrgApacheLuceneStoreRandomAccessInput_(a1);
    }
  }

  else
  {
    if (a2 != 8)
    {
      if (a2 == 12)
      {
        v8 = new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader12_initWithOrgApacheLuceneStoreRandomAccessInput_(a1);
        goto LABEL_34;
      }

LABEL_37:
      v10 = JreStrcat("$I", a2, a3, a4, a5, a6, a7, a8, @"unsupported bitsPerValue: ");
      v11 = new_JavaLangIllegalArgumentException_initWithNSString_(v10);
      objc_exception_throw(v11);
    }

    v8 = new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader8_initWithOrgApacheLuceneStoreRandomAccessInput_(a1);
  }

LABEL_34:

  return v8;
}

OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader1 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader1_initWithOrgApacheLuceneStoreRandomAccessInput_(void *a1)
{
  v2 = [OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader1 alloc];
  OrgApacheLuceneUtilLongValues_init(v2);
  JreStrongAssign(&v2->in_, a1);
  return v2;
}

OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader2 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader2_initWithOrgApacheLuceneStoreRandomAccessInput_(void *a1)
{
  v2 = [OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader2 alloc];
  OrgApacheLuceneUtilLongValues_init(v2);
  JreStrongAssign(&v2->in_, a1);
  return v2;
}

OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader4 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader4_initWithOrgApacheLuceneStoreRandomAccessInput_(void *a1)
{
  v2 = [OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader4 alloc];
  OrgApacheLuceneUtilLongValues_init(v2);
  JreStrongAssign(&v2->in_, a1);
  return v2;
}

OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader8 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader8_initWithOrgApacheLuceneStoreRandomAccessInput_(void *a1)
{
  v2 = [OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader8 alloc];
  OrgApacheLuceneUtilLongValues_init(v2);
  JreStrongAssign(&v2->in_, a1);
  return v2;
}

OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader12 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader12_initWithOrgApacheLuceneStoreRandomAccessInput_(void *a1)
{
  v2 = [OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader12 alloc];
  OrgApacheLuceneUtilLongValues_init(v2);
  JreStrongAssign(&v2->in_, a1);
  return v2;
}

OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader16 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader16_initWithOrgApacheLuceneStoreRandomAccessInput_(void *a1)
{
  v2 = [OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader16 alloc];
  OrgApacheLuceneUtilLongValues_init(v2);
  JreStrongAssign(&v2->in_, a1);
  return v2;
}

OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader20 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader20_initWithOrgApacheLuceneStoreRandomAccessInput_(void *a1)
{
  v2 = [OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader20 alloc];
  OrgApacheLuceneUtilLongValues_init(v2);
  JreStrongAssign(&v2->in_, a1);
  return v2;
}

OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader24 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader24_initWithOrgApacheLuceneStoreRandomAccessInput_(void *a1)
{
  v2 = [OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader24 alloc];
  OrgApacheLuceneUtilLongValues_init(v2);
  JreStrongAssign(&v2->in_, a1);
  return v2;
}

OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader28 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader28_initWithOrgApacheLuceneStoreRandomAccessInput_(void *a1)
{
  v2 = [OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader28 alloc];
  OrgApacheLuceneUtilLongValues_init(v2);
  JreStrongAssign(&v2->in_, a1);
  return v2;
}

OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader32 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader32_initWithOrgApacheLuceneStoreRandomAccessInput_(void *a1)
{
  v2 = [OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader32 alloc];
  OrgApacheLuceneUtilLongValues_init(v2);
  JreStrongAssign(&v2->in_, a1);
  return v2;
}

OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader40 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader40_initWithOrgApacheLuceneStoreRandomAccessInput_(void *a1)
{
  v2 = [OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader40 alloc];
  OrgApacheLuceneUtilLongValues_init(v2);
  JreStrongAssign(&v2->in_, a1);
  return v2;
}

OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader48 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader48_initWithOrgApacheLuceneStoreRandomAccessInput_(void *a1)
{
  v2 = [OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader48 alloc];
  OrgApacheLuceneUtilLongValues_init(v2);
  JreStrongAssign(&v2->in_, a1);
  return v2;
}

OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader56 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader56_initWithOrgApacheLuceneStoreRandomAccessInput_(void *a1)
{
  v2 = [OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader56 alloc];
  OrgApacheLuceneUtilLongValues_init(v2);
  JreStrongAssign(&v2->in_, a1);
  return v2;
}

OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader64 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader64_initWithOrgApacheLuceneStoreRandomAccessInput_(void *a1)
{
  v2 = [OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader64 alloc];
  OrgApacheLuceneUtilLongValues_init(v2);
  JreStrongAssign(&v2->in_, a1);
  return v2;
}

id OrgApacheLuceneSearchTermScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneIndexPostingsEnum_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_(uint64_t a1, void *a2, void *a3, void *a4)
{
  OrgApacheLuceneSearchScorer_initWithOrgApacheLuceneSearchWeight_(a1, a2);
  JreStrongAssign((a1 + 24), a4);

  return JreStrongAssign((a1 + 16), a3);
}

OrgApacheLuceneSearchTermScorer *new_OrgApacheLuceneSearchTermScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneIndexPostingsEnum_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_(void *a1, void *a2, void *a3)
{
  v6 = [OrgApacheLuceneSearchTermScorer alloc];
  OrgApacheLuceneSearchTermScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneIndexPostingsEnum_withOrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_(v6, a1, a2, a3);
  return v6;
}

OrgApacheLuceneSearchWeight_DefaultBulkScorer *new_OrgApacheLuceneSearchWeight_DefaultBulkScorer_initWithOrgApacheLuceneSearchScorer_(void *a1)
{
  v2 = [OrgApacheLuceneSearchWeight_DefaultBulkScorer alloc];
  OrgApacheLuceneSearchWeight_DefaultBulkScorer_initWithOrgApacheLuceneSearchScorer_(v2, a1);
  return v2;
}

id OrgApacheLuceneSearchWeight_DefaultBulkScorer_initWithOrgApacheLuceneSearchScorer_(uint64_t a1, void *a2)
{
  OrgApacheLuceneSearchBulkScorer_init();
  if (!a2)
  {
    v5 = new_JavaLangNullPointerException_init();
    objc_exception_throw(v5);
  }

  return JreStrongAssign((a1 + 8), a2);
}

id OrgApacheLuceneSearchWeight_DefaultBulkScorer_scoreAllWithOrgApacheLuceneSearchLeafCollector_withOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchTwoPhaseIterator_withOrgApacheLuceneUtilBits_(void *a1, void *a2, void *a3, void *a4)
{
  if (a3)
  {
    v7 = [a3 approximation];
    if (v7)
    {
      v8 = v7;
      result = [v7 nextDoc];
      if (result != 0x7FFFFFFF)
      {
        v10 = result;
        do
        {
          if ((!a4 || [a4 getWithInt:v10]) && objc_msgSend(a3, "matches"))
          {
            if (!a1)
            {
              goto LABEL_21;
            }

            [a1 collectWithInt:v10];
          }

          result = [v8 nextDoc];
          v10 = result;
        }

        while (result != 0x7FFFFFFF);
      }

      return result;
    }

LABEL_21:
    JreThrowNullPointerException();
  }

  if (!a2)
  {
    goto LABEL_21;
  }

  result = [a2 nextDoc];
  if (result != 0x7FFFFFFF)
  {
    v12 = result;
    do
    {
      if (!a4 || [a4 getWithInt:v12])
      {
        if (!a1)
        {
          goto LABEL_21;
        }

        [a1 collectWithInt:v12];
      }

      result = [a2 nextDoc];
      v12 = result;
    }

    while (result != 0x7FFFFFFF);
  }

  return result;
}

id OrgApacheLuceneSearchWeight_DefaultBulkScorer_scoreRangeWithOrgApacheLuceneSearchLeafCollector_withOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchTwoPhaseIterator_withOrgApacheLuceneUtilBits_withInt_withInt_(void *a1, void *a2, void *a3, void *a4, void *a5, int a6)
{
  v7 = a5;
  if (a3)
  {
    v11 = [a3 approximation];
    if (v7 < a6)
    {
      v12 = v11;
      while (1)
      {
        if ((!a4 || [a4 getWithInt:v7]) && objc_msgSend(a3, "matches"))
        {
          if (!a1)
          {
            goto LABEL_20;
          }

          [a1 collectWithInt:v7];
        }

        if (!v12)
        {
          goto LABEL_20;
        }

        v7 = [v12 nextDoc];
        if (v7 >= a6)
        {
          return v7;
        }
      }
    }
  }

  else if (a5 < a6)
  {
    while (1)
    {
      if (!a4 || [a4 getWithInt:v7])
      {
        if (!a1)
        {
          break;
        }

        [a1 collectWithInt:v7];
      }

      if (!a2)
      {
        break;
      }

      v7 = [a2 nextDoc];
      if (v7 >= a6)
      {
        return v7;
      }
    }

LABEL_20:
    JreThrowNullPointerException();
  }

  return v7;
}

void *OrgApacheLuceneUtilAutomatonAutomaton_initWithInt_withInt_(uint64_t a1, unsigned int a2, int a3)
{
  *(a1 + 16) = -1;
  *(a1 + 48) = 1;
  v6 = new_OrgApacheLuceneUtilAutomatonAutomaton_DestMinMaxSorter_initWithOrgApacheLuceneUtilAutomatonAutomaton_(a1);
  JreStrongAssignAndConsume((a1 + 56), v6);
  v7 = new_OrgApacheLuceneUtilAutomatonAutomaton_MinMaxDestSorter_initWithOrgApacheLuceneUtilAutomatonAutomaton_(a1);
  JreStrongAssignAndConsume((a1 + 64), v7);
  JreStrongAssignAndConsume((a1 + 24), [IOSIntArray newArrayWithLength:(2 * a2)]);
  v8 = new_JavaUtilBitSet_initWithInt_(a2);
  JreStrongAssignAndConsume((a1 + 32), v8);
  v9 = [IOSIntArray newArrayWithLength:3 * a3];

  return JreStrongAssignAndConsume((a1 + 40), v9);
}

id OrgApacheLuceneUtilAutomatonAutomaton_appendCharStringWithInt_withJavaLangStringBuilder_(uint64_t a1, void *a2)
{
  v3 = a1;
  if ((a1 - 33) > 0x5D || a1 == 34 || a1 == 92)
  {
    if (a2)
    {
      [a2 appendWithNSString:@"\\\\U"];
      v4 = JavaLangInteger_toHexStringWithInt_(v3);
      if (v3 > 15)
      {
        if (v3 > 0xFF)
        {
          if (v3 > 0xFFF)
          {
            if (HIWORD(v3))
            {
              if (v3 >> 20)
              {
                if (HIBYTE(v3))
                {
                  if (v3 >> 28)
                  {
                    v7 = a2;
                    goto LABEL_24;
                  }

                  v5 = @"0";
                }

                else
                {
                  v5 = @"00";
                }
              }

              else
              {
                v5 = @"000";
              }
            }

            else
            {
              v5 = @"0000";
            }
          }

          else
          {
            v5 = @"00000";
          }
        }

        else
        {
          v5 = @"000000";
        }
      }

      else
      {
        v5 = @"0000000";
      }

      v7 = [a2 appendWithNSString:v5];
      if (v7)
      {
LABEL_24:

        return [v7 appendWithNSString:v4];
      }
    }

LABEL_28:
    JreThrowNullPointerException();
  }

  if (!a2)
  {
    goto LABEL_28;
  }

  return [a2 appendCodePointWithInt:a1];
}

OrgApacheLuceneUtilAutomatonAutomaton *new_OrgApacheLuceneUtilAutomatonAutomaton_init()
{
  v0 = [OrgApacheLuceneUtilAutomatonAutomaton alloc];
  OrgApacheLuceneUtilAutomatonAutomaton_initWithInt_withInt_(v0, 2u, 2);
  return v0;
}

OrgApacheLuceneUtilAutomatonAutomaton_DestMinMaxSorter *new_OrgApacheLuceneUtilAutomatonAutomaton_DestMinMaxSorter_initWithOrgApacheLuceneUtilAutomatonAutomaton_(void *a1)
{
  v2 = [OrgApacheLuceneUtilAutomatonAutomaton_DestMinMaxSorter alloc];
  objc_storeWeak(&v2->this$0_, a1);
  OrgApacheLuceneUtilInPlaceMergeSorter_init(v2);
  return v2;
}

OrgApacheLuceneUtilAutomatonAutomaton_MinMaxDestSorter *new_OrgApacheLuceneUtilAutomatonAutomaton_MinMaxDestSorter_initWithOrgApacheLuceneUtilAutomatonAutomaton_(void *a1)
{
  v2 = [OrgApacheLuceneUtilAutomatonAutomaton_MinMaxDestSorter alloc];
  objc_storeWeak(&v2->this$0_, a1);
  OrgApacheLuceneUtilInPlaceMergeSorter_init(v2);
  return v2;
}

uint64_t OrgApacheLuceneUtilAutomatonAutomaton_class_()
{
  if (qword_1005541A8 != -1)
  {
    sub_10007DDFC();
  }

  return qword_1005541A0;
}

uint64_t sub_10007C5CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(objc_loadWeak((a1 + 8)) + 5);
  if (!v6)
  {
    JreThrowNullPointerException();
  }

  v7 = *(v6 + 8);
  if ((a2 & 0x80000000) != 0 || v7 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, a2);
  }

  v8 = *(v6 + 12 + 4 * a2);
  v9 = *(objc_loadWeak((a1 + 8)) + 5);
  v10 = *(v9 + 8);
  if ((a3 & 0x80000000) != 0 || v10 <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, a3);
  }

  v11 = *(v9 + 12 + 4 * a3);
  v12 = *(objc_loadWeak((a1 + 8)) + 5);
  v13 = *(v12 + 8);
  if ((a2 & 0x80000000) != 0 || v13 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v13, a2);
  }

  *(v12 + 12 + 4 * a2) = v11;
  v14 = *(objc_loadWeak((a1 + 8)) + 5);
  result = *(v14 + 8);
  if ((a3 & 0x80000000) != 0 || result <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, a3);
  }

  *(v14 + 12 + 4 * a3) = v8;
  return result;
}

uint64_t sub_10007CA68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(objc_loadWeak((a1 + 8)) + 5);
  if (!v6)
  {
    JreThrowNullPointerException();
  }

  v7 = *(v6 + 8);
  if ((a2 & 0x80000000) != 0 || v7 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, a2);
  }

  v8 = *(v6 + 12 + 4 * a2);
  v9 = *(objc_loadWeak((a1 + 8)) + 5);
  v10 = *(v9 + 8);
  if ((a3 & 0x80000000) != 0 || v10 <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, a3);
  }

  v11 = *(v9 + 12 + 4 * a3);
  v12 = *(objc_loadWeak((a1 + 8)) + 5);
  v13 = *(v12 + 8);
  if ((a2 & 0x80000000) != 0 || v13 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v13, a2);
  }

  *(v12 + 12 + 4 * a2) = v11;
  v14 = *(objc_loadWeak((a1 + 8)) + 5);
  result = *(v14 + 8);
  if ((a3 & 0x80000000) != 0 || result <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, a3);
  }

  *(v14 + 12 + 4 * a3) = v8;
  return result;
}

void *OrgApacheLuceneUtilAutomatonAutomaton_Builder_initWithInt_withInt_(uint64_t a1, unsigned int a2, int a3)
{
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  v6 = new_OrgApacheLuceneUtilAutomatonAutomaton_Builder_OurSorter_initWithOrgApacheLuceneUtilAutomatonAutomaton_Builder_(a1);
  JreStrongAssignAndConsume((a1 + 40), v6);
  v7 = new_JavaUtilBitSet_initWithInt_(a2);
  JreStrongAssignAndConsume((a1 + 16), v7);
  v8 = [IOSIntArray newArrayWithLength:4 * a3];

  return JreStrongAssignAndConsume((a1 + 24), v8);
}

OrgApacheLuceneUtilAutomatonAutomaton_Builder *new_OrgApacheLuceneUtilAutomatonAutomaton_Builder_init()
{
  v0 = [OrgApacheLuceneUtilAutomatonAutomaton_Builder alloc];
  OrgApacheLuceneUtilAutomatonAutomaton_Builder_initWithInt_withInt_(v0, 0x10u, 16);
  return v0;
}

OrgApacheLuceneUtilAutomatonAutomaton_Builder_OurSorter *new_OrgApacheLuceneUtilAutomatonAutomaton_Builder_OurSorter_initWithOrgApacheLuceneUtilAutomatonAutomaton_Builder_(void *a1)
{
  v2 = [OrgApacheLuceneUtilAutomatonAutomaton_Builder_OurSorter alloc];
  objc_storeWeak(&v2->this$0_, a1);
  OrgApacheLuceneUtilInPlaceMergeSorter_init(v2);
  return v2;
}

uint64_t sub_10007D8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(objc_loadWeak((a1 + 8)) + 3);
  if (!v6)
  {
    JreThrowNullPointerException();
  }

  v7 = *(v6 + 8);
  if ((a2 & 0x80000000) != 0 || v7 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, a2);
  }

  v8 = *(v6 + 12 + 4 * a2);
  v9 = *(objc_loadWeak((a1 + 8)) + 3);
  v10 = *(v9 + 8);
  if ((a3 & 0x80000000) != 0 || v10 <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, a3);
  }

  v11 = *(v9 + 12 + 4 * a3);
  v12 = *(objc_loadWeak((a1 + 8)) + 3);
  v13 = *(v12 + 8);
  if ((a2 & 0x80000000) != 0 || v13 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v13, a2);
  }

  *(v12 + 12 + 4 * a2) = v11;
  v14 = *(objc_loadWeak((a1 + 8)) + 3);
  result = *(v14 + 8);
  if ((a3 & 0x80000000) != 0 || result <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, a3);
  }

  *(v14 + 12 + 4 * a3) = v8;
  return result;
}

uint64_t OrgApacheLuceneCodecsCompressingLZ4_decompressWithOrgApacheLuceneStoreDataInput_withInt_withByteArray_withInt_(void *a1, int a2, _DWORD *a3, uint64_t a4)
{
  if (!a3 || !a1)
  {
    JreThrowNullPointerException();
  }

  v7 = a2;
  v8 = a3[2];
  v30 = v8;
  do
  {
    v9 = [a1 readByte];
    v10 = v9 >> 4;
    if (v9 >> 4)
    {
      if (v10 == 15)
      {
        v11 = -240;
        do
        {
          v12 = [a1 readByte];
          v11 += 255;
        }

        while (v12 == -1);
        v10 = v11 + v12;
      }

      [a1 readBytesWithByteArray:a3 withInt:a4 withInt:v10];
      a4 = (v10 + a4);
    }

    if (a4 >= v7)
    {
      break;
    }

    v13 = v9;
    v14 = [a1 readByte];
    v15 = [a1 readByte];
    v16 = v13 & 0xF;
    if (v16 == 15)
    {
      v17 = -240;
      do
      {
        v18 = [a1 readByte];
        v17 += 255;
      }

      while (v18 == -1);
      v16 = v17 + v18;
    }

    v19 = v14 | (v15 << 8);
    v20 = v16 + 4;
    v21 = (v16 + 11) & 0xFFFFFFF8;
    if (v19 >= v16 + 4 && v21 + a4 <= v8)
    {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(a3, (a4 - v19), a3, a4, v21);
      a4 = (v20 + a4);
    }

    else if (a4 < v20 + a4)
    {
      v23 = v15 << 8;
      v24 = a4;
      v25 = a3 + a4;
      v26 = v16 + 4;
      do
      {
        v27 = a3[2];
        v28 = v24 - (v14 + v23);
        if (v28 < 0 || v28 >= v27)
        {
          IOSArray_throwOutOfBoundsWithMsg(v27, v28);
        }

        if (v24 < 0 || v24 >= v27)
        {
          IOSArray_throwOutOfBoundsWithMsg(v27, v24);
        }

        v25[12] = *(a3 + (v24++ - (v14 + v23)) + 12);
        ++v25;
        --v26;
      }

      while (v26);
      a4 = (v20 + a4);
      v8 = v30;
      v7 = a2;
    }
  }

  while (a4 < v7);
  return a4;
}

id OrgApacheLuceneCodecsCompressingLZ4_compressWithByteArray_withInt_withInt_withOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneCodecsCompressingLZ4_HashTable_(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5)
{
  v6 = a2;
  v8 = a3 + a2;
  if (a3 >= 10)
  {
    if (!a5)
    {
LABEL_19:
      JreThrowNullPointerException();
    }

    LODWORD(v10) = a2 + 1;
    [a5 resetWithInt:?];
    if (v10 <= v8 - 5)
    {
      v30 = v8 - 5;
      v32 = v8;
      v11 = v8 - 9;
      v35 = -*(a5 + 8) & 0x1F;
      v12 = *(a5 + 16);
      v13 = v8 - 9;
      v14 = -v6;
      v15 = v6;
      v33 = a4;
      v28 = v13;
      v29 = v8 - 9;
      while (v10 < v11)
      {
        v34 = v15;
        v16 = 0;
        v17 = v14 + v10;
        v31 = v10;
        v18 = v13 - v10;
        while (1)
        {
          v19 = sub_10007E80C(a1, (v10 + v16));
          if (!v12)
          {
            goto LABEL_19;
          }

          v20 = v19;
          v21 = (-1640531535 * v19) >> v35;
          v22 = [v12 getWithInt:v21];
          [v12 setWithInt:v21 withLong:v17 + v16];
          if ((v17 + v16 - v22) < 0x10000)
          {
            v23 = v22 + v6;
            if (sub_10007E80C(a1, v23) == v20)
            {
              break;
            }
          }

          if (v18 == ++v16)
          {
            v6 = v34;
            a4 = v33;
            goto LABEL_14;
          }
        }

        v24 = sub_10007E934(a1, v23 + 4, v10 + v16 + 4, v30);
        a4 = v33;
        sub_10007EA50(a1, v34, v23, v10 + v16, v24 + 4, v33);
        v10 = (v10 + v16 + 4 + v24);
        v15 = v10;
        v13 = v28;
        v11 = v29;
        v14 = -v6;
        if (v10 > v30)
        {
          v6 = (v24 + v31 + v16 + 4);
          goto LABEL_14;
        }
      }

      v6 = v15;
LABEL_14:
      v8 = v32;
    }
  }

  v25 = (v8 - v6);
  v26 = 16 * JavaLangMath_minWithInt_withInt_(v25, 15);

  return sub_10007F748(a1, v26, v6, v25, a4);
}

id OrgApacheLuceneCodecsCompressingLZ4_compressHCWithByteArray_withInt_withInt_withOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneCodecsCompressingLZ4_HCHashTable_(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5)
{
  if (!a5)
  {
LABEL_57:
    JreThrowNullPointerException();
  }

  v8 = a3 + a2;
  v9 = a3 + a2 - 9;
  v10 = (a2 + 1);
  *(a5 + 8) = a2;
  *(a5 + 12) = a2;
  JavaUtilArrays_fillWithIntArray_withInt_(*(a5 + 16), -1);
  JavaUtilArrays_fillWithShortArray_withShort_(*(a5 + 24), 0);
  v11 = [OrgApacheLuceneCodecsCompressingLZ4_Match alloc];
  v12 = [OrgApacheLuceneCodecsCompressingLZ4_Match alloc];
  v13 = [OrgApacheLuceneCodecsCompressingLZ4_Match alloc];
  v48 = [OrgApacheLuceneCodecsCompressingLZ4_Match alloc];
  v46 = v8;
  if (v10 > v9)
  {
    v10 = a2;
    v14 = a4;
    goto LABEL_54;
  }

  v50 = a2;
  v15 = v11;
  v16 = (v8 - 5);
  p_len = &v12->len_;
  p_start = &v12->start_;
  v44 = &v15->len_;
  v45 = &v15->start_;
  v42 = v15;
  p_ref = &v15->ref_;
  v14 = a4;
  v17 = v48;
  do
  {
    while (![a5 insertAndFindBestMatchWithByteArray:a1 withInt:v10 withInt:v16 withOrgApacheLuceneCodecsCompressingLZ4_Match:v12])
    {
      v10 = (v10 + 1);
      if (v10 > v9)
      {
        v10 = v50;
        goto LABEL_54;
      }
    }

    if (!v12 || !v42)
    {
      goto LABEL_57;
    }

    *v44 = v12->len_;
    *v45 = v12->start_;
    *p_ref = v12->ref_;
LABEL_11:
    if (-[OrgApacheLuceneCodecsCompressingLZ4_Match end](v12, "end") < v9 && [a5 insertAndFindWiderMatchWithByteArray:a1 withInt:-[OrgApacheLuceneCodecsCompressingLZ4_Match end](v12 withInt:"end") - 2 withInt:(v12->start_ + 1) withInt:v16 withOrgApacheLuceneCodecsCompressingLZ4_Match:{v12->len_, v13}])
    {
      v18 = *p_start;
      start = v13->start_;
      if (*v45 < *p_start && start < *v44 + v18)
      {
        *p_len = *v44;
        v18 = *v45;
        *p_start = *v45;
        v12->ref_ = *p_ref;
        start = v13->start_;
      }

      if (start - v18 < 3)
      {
        v20 = &v12->len_;
        v21 = &v12->start_;
        v22 = &v12->ref_;
        goto LABEL_18;
      }

      while (1)
      {
        if (start - v18 <= 17)
        {
          if (*p_len >= 18)
          {
            v23 = 18;
          }

          else
          {
            v23 = *p_len;
          }

          v24 = v23 + v18;
          v25 = [(OrgApacheLuceneCodecsCompressingLZ4_Match *)v13 end];
          start = v13->start_;
          v26 = *p_start;
          if (v24 > (v25 - 4))
          {
            v23 = start - v26 + v13->len_ - 4;
          }

          if (v26 - start + v23 >= 1)
          {
            [(OrgApacheLuceneCodecsCompressingLZ4_Match *)v13 fixWithInt:?];
            start = v13->start_;
          }

          v17 = v48;
        }

        if (v13->len_ + start >= v9)
        {
          goto LABEL_49;
        }

        if (([a5 insertAndFindWiderMatchWithByteArray:a1 withInt:-[OrgApacheLuceneCodecsCompressingLZ4_Match end](v13 withInt:"end") - 3 withInt:v13->start_ withInt:v16 withOrgApacheLuceneCodecsCompressingLZ4_Match:{v13->len_, v17}] & 1) == 0)
        {
          start = v13->start_;
LABEL_49:
          v37 = [(OrgApacheLuceneCodecsCompressingLZ4_Match *)v12 end];
          v38 = v12->start_;
          if (start >= v37)
          {
            v39 = *p_len;
          }

          else
          {
            v39 = v13->start_ - v38;
            *p_len = v39;
          }

          sub_10007EA50(a1, v50, v12->ref_, v38, v39, a4);
          v36 = [(OrgApacheLuceneCodecsCompressingLZ4_Match *)v12 end];
          v35 = v13;
          goto LABEL_53;
        }

        v27 = v17->start_;
        if (v27 >= [(OrgApacheLuceneCodecsCompressingLZ4_Match *)v12 end]+ 3)
        {
          v29 = v13->start_;
          v30 = [(OrgApacheLuceneCodecsCompressingLZ4_Match *)v12 end];
          v31 = v12->start_;
          if (v29 < v30)
          {
            v32 = v13->start_ - v31;
            if (v32 > 14)
            {
              *p_len = v32;
            }

            else
            {
              if (*p_len >= 19)
              {
                *p_len = 18;
              }

              v33 = [(OrgApacheLuceneCodecsCompressingLZ4_Match *)v12 end];
              if (v33 > [(OrgApacheLuceneCodecsCompressingLZ4_Match *)v13 end]- 4)
              {
                *p_len = [(OrgApacheLuceneCodecsCompressingLZ4_Match *)v13 end]- *p_start - 4;
              }

              [(OrgApacheLuceneCodecsCompressingLZ4_Match *)v13 fixWithInt:[(OrgApacheLuceneCodecsCompressingLZ4_Match *)v12 end]- v13->start_];
              v31 = v12->start_;
            }
          }

          sub_10007EA50(a1, v50, v12->ref_, v31, v12->len_, a4);
          v50 = [(OrgApacheLuceneCodecsCompressingLZ4_Match *)v12 end];
          v12->len_ = v13->len_;
          v12->start_ = v13->start_;
          v12->ref_ = v13->ref_;
        }

        else
        {
          v28 = v17->start_;
          if (v28 >= [(OrgApacheLuceneCodecsCompressingLZ4_Match *)v12 end])
          {
            v34 = v13->start_;
            if (v34 < [(OrgApacheLuceneCodecsCompressingLZ4_Match *)v12 end])
            {
              [(OrgApacheLuceneCodecsCompressingLZ4_Match *)v13 fixWithInt:[(OrgApacheLuceneCodecsCompressingLZ4_Match *)v12 end]- v13->start_];
              if (v13->len_ <= 3)
              {
                v13->len_ = v17->len_;
                v13->start_ = v17->start_;
                v13->ref_ = v17->ref_;
              }
            }

            sub_10007EA50(a1, v50, v12->ref_, v12->start_, v12->len_, a4);
            v50 = [(OrgApacheLuceneCodecsCompressingLZ4_Match *)v12 end];
            v12->len_ = v17->len_;
            v12->start_ = v17->start_;
            v12->ref_ = v17->ref_;
            v20 = v44;
            v21 = v45;
            v22 = p_ref;
LABEL_18:
            *v20 = v13->len_;
            *v21 = v13->start_;
            *v22 = v13->ref_;
            goto LABEL_11;
          }
        }

        v13->len_ = v17->len_;
        start = v17->start_;
        v13->start_ = start;
        v13->ref_ = v17->ref_;
        v18 = *p_start;
      }
    }

    v35 = v12;
    v36 = v50;
LABEL_53:
    sub_10007EA50(a1, v36, v35[3], v35[2], v35[4], a4);
    v10 = [v35 end];
    v50 = v10;
  }

  while (v10 <= v9);
LABEL_54:
  v40 = 16 * JavaLangMath_minWithInt_withInt_((v46 - v10), 15);

  return sub_10007F748(a1, v40, v10, (v46 - v10), v14);
}

uint64_t sub_10007E80C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v3 = *(a1 + 8);
  if ((a2 & 0x80000000) != 0 || v3 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v3, a2);
  }

  v4 = a2 + 1;
  if (a2 + 1 < 0 || v4 >= v3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v3, v4);
  }

  v5 = *(a1 + 12 + v4);
  v6 = a2 + 2;
  if (a2 + 2 < 0 || v6 >= v3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v3, v6);
  }

  v7 = (a2 + 3);
  if (v7 < 0 || v7 >= v3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v3, v7);
  }

  return (*(a1 + 12 + a2) << 24) | (v5 << 16) | (*(a1 + 12 + a2 + 2) << 8) | *(a1 + 12 + v7);
}

uint64_t sub_10007E934(uint64_t a1, int a2, int a3, int a4)
{
  if (a4 <= a3)
  {
    return 0;
  }

  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v5 = 0;
  v6 = a3;
  for (i = a1 + a3; ; ++i)
  {
    v8 = *(a1 + 8);
    v9 = a2 + v5;
    if (a2 + v5 < 0 || v9 >= v8)
    {
      IOSArray_throwOutOfBoundsWithMsg(v8, v9);
    }

    if (v6 < 0 || v6 >= v8)
    {
      IOSArray_throwOutOfBoundsWithMsg(v8, (a3 + v5));
    }

    if (*(a1 + 12 + a2 + v5) != *(i + 12))
    {
      break;
    }

    ++v6;
    v5 = (v5 + 1);
    if (!(a3 - a4 + v5))
    {
      return (a4 - a3);
    }
  }

  return v5;
}

unint64_t sub_10007EA50(uint64_t a1, uint64_t a2, __int16 a3, int a4, int a5, void *a6)
{
  v8 = a4;
  v12 = (a4 - a2);
  v13 = JavaLangMath_minWithInt_withInt_(v12, 15);
  v14 = JavaLangMath_minWithInt_withInt_((a5 - 4), 15);
  sub_10007F748(a1, v14 | (16 * v13), a2, v12, a6);
  if (!a6)
  {
    JreThrowNullPointerException();
  }

  v15 = v8 - a3;
  [a6 writeByteWithByte:v15];
  [a6 writeByteWithByte:(v15 >> 8)];
  result = (a5 - 19);
  if (a5 >= 19)
  {

    return sub_10007F7C0(result, a6);
  }

  return result;
}

void *OrgApacheLuceneCodecsCompressingLZ4_HCHashTable_init(uint64_t a1)
{
  JreStrongAssignAndConsume((a1 + 16), [IOSIntArray newArrayWithLength:0x8000]);
  v2 = [IOSShortArray newArrayWithLength:0x10000];

  return JreStrongAssignAndConsume((a1 + 24), v2);
}

uint64_t sub_10007ED6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10007E80C(a2, a3);
  v5 = *(a1 + 16);
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  v6 = (-1640531535 * v4) >> 17;
  v7 = *(v5 + 8);
  if (v6 >= v7)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, v6);
  }

  return *(v5 + 12 + 4 * v6);
}

uint64_t sub_10007EDF4(uint64_t a1, int a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  v3 = *(v2 + 8);
  if (a2 >= v3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v3, a2);
  }

  return a2 - *(v2 + 12 + 2 * a2);
}

uint64_t sub_10007EE74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = sub_10007E80C(a2, a3);
  v6 = *(a1 + 16);
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = (-1640531535 * v5) >> 17;
  v8 = *(v6 + 8);
  if (v7 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v7);
  }

  v9 = v3 - *(v6 + 12 + 4 * v7) >= 0xFFFF ? -1 : v3 - *(v6 + 12 + 4 * v7);
  v10 = *(a1 + 24);
  if (!v10)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  v11 = *(v10 + 8);
  if (v3 >= v11)
  {
    IOSArray_throwOutOfBoundsWithMsg(v11, v3);
  }

  *(v10 + 12 + 2 * v3) = v9;
  v12 = *(a1 + 16);
  result = *(v12 + 8);
  if (v7 >= result)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, v7);
  }

  *(v12 + 12 + 4 * v7) = v3;
  return result;
}

OrgApacheLuceneCodecsCompressingLZ4_HCHashTable *new_OrgApacheLuceneCodecsCompressingLZ4_HCHashTable_init()
{
  v0 = [OrgApacheLuceneCodecsCompressingLZ4_HCHashTable alloc];
  OrgApacheLuceneCodecsCompressingLZ4_HCHashTable_init(v0);
  return v0;
}

id sub_10007F748(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a5)
  {
    JreThrowNullPointerException();
  }

  [a5 writeByteWithByte:a2];
  if (a4 >= 15)
  {
    sub_10007F7C0(a4 - 15, a5);
  }

  return [a5 writeBytesWithByteArray:a1 withInt:a3 withInt:a4];
}

id sub_10007F7C0(int a1, void *a2)
{
  v3 = a1;
  if (a1 < 255)
  {
    v4 = a1;
  }

  else
  {
    if (!a2)
    {
      goto LABEL_10;
    }

    do
    {
      [a2 writeByteWithByte:0xFFFFFFFFLL];
      v4 = v3 + 1;
      v5 = v3 > 0x1FD;
      v3 -= 255;
    }

    while (v5);
  }

  if (!a2)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  return [a2 writeByteWithByte:v4];
}

void *sub_10007F860(uint64_t a1, uint64_t a2)
{
  OrgApacheLuceneCodecsTermVectorsReader_init();
  if (!a2)
  {
    goto LABEL_6;
  }

  JreStrongAssign((a1 + 24), *(a2 + 24));
  v4 = *(a2 + 16);
  if (!v4 || (JreStrongAssign((a1 + 16), [v4 clone]), (v5 = *(a2 + 8)) == 0) || (JreStrongAssign((a1 + 8), objc_msgSend(v5, "clone")), *(a1 + 36) = *(a2 + 36), JreStrongAssign((a1 + 40), *(a2 + 40)), (v6 = *(a2 + 48)) == 0))
  {
LABEL_6:
    JreThrowNullPointerException();
  }

  JreStrongAssign((a1 + 48), [v6 clone]);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  v7 = new_OrgApacheLuceneUtilPackedBlockPackedReaderIterator_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_withLong_(*(a1 + 16), *(a1 + 36), 64, 0);
  result = JreStrongAssignAndConsume((a1 + 72), v7);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = 0;
  return result;
}

void *OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withNSString_withOrgApacheLuceneIndexFieldInfos_withOrgApacheLuceneStoreIOContext_withNSString_withOrgApacheLuceneCodecsCompressingCompressionMode_(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  OrgApacheLuceneCodecsTermVectorsReader_init();
  JreStrongAssign((a1 + 40), a8);
  if (!a3 || (v16 = a3[1], JreStrongAssign((a1 + 24), a5), *(a1 + 60) = [a3 maxDoc], v17 = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(v16, a4, OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_VECTORS_INDEX_EXTENSION_), !a2))
  {
    JreThrowNullPointerException();
  }

  v61 = v16;
  v60 = a8;
  v18 = [a2 openChecksumInputWithNSString:v17 withOrgApacheLuceneStoreIOContext:a6];
  v26 = JreStrcat("$$", v19, v20, v21, v22, v23, v24, v25, a7);
  v27 = OrgApacheLuceneCodecsCodecUtil_checkIndexHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_withByteArray_withNSString_(v18, v26, 0, 1, [a3 getId], a4);
  v28 = new_OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexReader_initWithOrgApacheLuceneStoreIndexInput_withOrgApacheLuceneIndexSegmentInfo_(v18, a3);
  v62 = [v18 readVLong];
  OrgApacheLuceneCodecsCodecUtil_checkFooterWithOrgApacheLuceneStoreChecksumIndexInput_withJavaLangThrowable_(v18, 0);
  if (v18)
  {
    [v18 close];
  }

  *(a1 + 32) = v27;
  JreStrongAssign((a1 + 8), v28);
  *(a1 + 96) = v62;
  v29 = [a2 openInputWithNSString:OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(v61 withOrgApacheLuceneStoreIOContext:{a4, OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_VECTORS_EXTENSION_), a6}];
  JreStrongAssign((a1 + 16), v29);
  v37 = JreStrcat("$$", v30, v31, v32, v33, v34, v35, v36, a7);
  if (v27 != OrgApacheLuceneCodecsCodecUtil_checkIndexHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_withByteArray_withNSString_(*(a1 + 16), v37, 0, 1, [a3 getId], a4))
  {
    v58 = JreStrcat("$I$I", v38, v39, v40, v41, v42, v43, v44, @"Version mismatch between stored fields index and data: ");
    v59 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v58, *(a1 + 16));
    objc_exception_throw(v59);
  }

  v45 = [*(a1 + 16) getFilePointer];
  if (v27 < 1)
  {
    *(a1 + 88) = -1;
    *(a1 + 80) = -1;
  }

  else
  {
    [*(a1 + 16) seekWithLong:v62];
    *(a1 + 80) = [*(a1 + 16) readVLong];
    v46 = [*(a1 + 16) readVLong];
    *(a1 + 88) = v46;
    if (v46 > *(a1 + 80))
    {
      v54 = JreStrcat("$J$J", v47, v48, v49, v50, v51, v52, v53, @"invalid chunk counts: dirty=");
      v55 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v54, *(a1 + 16));
      objc_exception_throw(v55);
    }
  }

  OrgApacheLuceneCodecsCodecUtil_retrieveChecksumWithOrgApacheLuceneStoreIndexInput_(*(a1 + 16));
  [*(a1 + 16) seekWithLong:v45];
  *(a1 + 36) = [*(a1 + 16) readVInt];
  *(a1 + 56) = [*(a1 + 16) readVInt];
  if (!v60)
  {
    JreThrowNullPointerException();
  }

  JreStrongAssign((a1 + 48), [v60 newDecompressor]);
  v56 = new_OrgApacheLuceneUtilPackedBlockPackedReaderIterator_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_withLong_(*(a1 + 16), *(a1 + 36), 64, 0);
  return JreStrongAssignAndConsume((a1 + 72), v56);
}

void sub_10007FF28(_Unwind_Exception *a1)
{
  objc_end_catch();
  objc_end_catch();
  _Unwind_Resume(a1);
}

void sub_10007FF48(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    if (a2 == 2)
    {
      objc_end_catch();
    }

    JUMPOUT(0x10007FBACLL);
  }

  _Unwind_Resume(exc_buf);
}

void sub_10007FF90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    v19 = [IOSObjectArray arrayWithObjects:&a19 count:1 type:JavaIoCloseable_class_()];
    OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_(v19);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_10007FFDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x10007FFE4);
  }

  objc_terminate();
}

uint64_t sub_100080084(uint64_t result)
{
  if (*(result + 64) == 1)
  {
    v1 = new_OrgApacheLuceneStoreAlreadyClosedException_initWithNSString_(@"this FieldsReader is closed");
    objc_exception_throw(v1);
  }

  return result;
}

IOSObjectArray *sub_1000828C8(int a1, int a2, void *a3, uint64_t a4)
{
  v7 = +[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", a2, IOSClass_arrayType(+[IOSClass intClass], 1u));
  if (a1 < 1)
  {
    v8 = 0;
  }

  else
  {
    if (!a3)
    {
      goto LABEL_30;
    }

    v8 = 0;
    v9 = 0;
    do
    {
      v8 += [a3 getWithInt:v9];
      v9 = (v9 + 1);
    }

    while (a1 != v9);
  }

  if (a2 >= 1)
  {
    if (a3)
    {
      v10 = 0;
      v29 = a2;
      v31 = a3;
      v30 = a1;
      while (1)
      {
        v33 = v8;
        v11 = [a3 getWithInt:(v10 + a1)];
        IOSObjectArray_SetAndConsume(v7, v10, [IOSIntArray newArrayWithLength:v11 + 1]);
        v12 = v11;
        if (v11 > 0)
        {
          break;
        }

LABEL_28:
        v8 = v33 + v12;
        ++v10;
        a3 = v31;
        a1 = v30;
        if (v10 == v29)
        {
          return v7;
        }
      }

      if (a4)
      {
        v13 = 0;
        v14 = &v7->super.super.isa + v10;
        v15 = v11 & 0x7FFFFFFF;
        v16 = v8;
        while (1)
        {
          v17 = v16 + v13;
          v18 = *(a4 + 8);
          if (((v16 + v13) & 0x80000000) != 0 || v17 >= v18)
          {
            IOSArray_throwOutOfBoundsWithMsg(v18, v33 + v13);
          }

          v19 = *(a4 + 12 + 4 * v17);
          size = v7->super.size_;
          if (v10 >= size)
          {
            IOSArray_throwOutOfBoundsWithMsg(size, v10);
          }

          v21 = v14[3];
          if (!v21)
          {
            break;
          }

          v22 = *(v21 + 2);
          if (v13 >= v22)
          {
            IOSArray_throwOutOfBoundsWithMsg(v22, v13);
          }

          v23 = *(v21 + v13 + 3);
          v24 = v7->super.size_;
          if (v10 >= v24)
          {
            IOSArray_throwOutOfBoundsWithMsg(v24, v10);
          }

          v25 = v14[3];
          if (!v25)
          {
            break;
          }

          v26 = v13 + 1;
          v27 = *(v25 + 2);
          if (v13 + 1 >= v27)
          {
            IOSArray_throwOutOfBoundsWithMsg(v27, (v13 + 1));
          }

          *(v25 + v13++ + 4) = v23 + v19;
          if (v15 == v26)
          {
            goto LABEL_28;
          }
        }
      }
    }

LABEL_30:
    JreThrowNullPointerException();
  }

  return v7;
}

IOSObjectArray *sub_100082BE0(uint64_t a1, int a2, int a3, void *a4, void *a5, uint64_t a6, int a7, int a8, uint64_t a9)
{
  v50 = +[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", a3, IOSClass_arrayType(+[IOSClass intClass], 1u));
  v16 = *(a1 + 72);
  if (!v16)
  {
    goto LABEL_47;
  }

  [v16 resetWithOrgApacheLuceneStoreDataInput:*(a1 + 16) withLong:a8];
  v53 = a2;
  v51 = a7;
  v56 = a1;
  v48 = a8;
  if (a2 < 1)
  {
    v27 = a2;
    v28 = 0;
  }

  else
  {
    if (!a4)
    {
      goto LABEL_47;
    }

    v17 = 0;
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = [a4 getWithInt:v19];
      if (!a5)
      {
        goto LABEL_47;
      }

      v21 = v20;
      v22 = [a5 getWithInt:v19];
      v23 = v22;
      if ((v21 & a7) != 0 && v22 >= 1)
      {
        if (!a6)
        {
          goto LABEL_47;
        }

        v24 = v22 & 0x7FFFFFFF;
        v25 = v18;
        do
        {
          v26 = *(a6 + 8);
          if (v25 < 0 || v25 >= v26)
          {
            IOSArray_throwOutOfBoundsWithMsg(v26, v25);
          }

          v17 += *(a6 + 12 + 4 * v25++);
          --v24;
        }

        while (v24);
      }

      v18 += v23;
      v19 = (v19 + 1);
      v27 = v53;
    }

    while (v19 != v53);
    v28 = v17;
    a1 = v56;
  }

  [*(a1 + 72) skipWithLong:v28];
  if (a3 >= 1)
  {
    if (a4)
    {
      v29 = 0;
      v49 = a3;
      while (1)
      {
        v30 = [a4 getWithInt:(v29 + v27)];
        if (!a5)
        {
          goto LABEL_47;
        }

        v52 = v29;
        v31 = [a5 getWithInt:(v29 + v27)];
        if ((v30 & v51) != 0)
        {
          if (!a9)
          {
            goto LABEL_47;
          }

          v32 = v31;
          v33 = *(a9 + 8);
          if (v29 >= v33)
          {
            IOSArray_throwOutOfBoundsWithMsg(v33, v29);
          }

          v34 = *(a9 + 24 + 8 * v29);
          if (!v34)
          {
            goto LABEL_47;
          }

          v35 = *(v34 + 8);
          if ((v32 & 0x80000000) != 0 || v35 <= v32)
          {
            IOSArray_throwOutOfBoundsWithMsg(v35, v32);
          }

          v36 = *(v34 + 12 + 4 * v32);
          v37 = [IOSIntArray arrayWithLength:v36];
          IOSObjectArray_Set(v50, v52, v37);
          if (v36 >= 1)
          {
            break;
          }
        }

LABEL_43:
        v29 = v52 + 1;
        v27 = v53;
        if (v52 + 1 == v49)
        {
          goto LABEL_48;
        }
      }

      v38 = 0;
      v55 = v36;
      while (1)
      {
        v39 = [*(v56 + 72) nextWithInt:(v36 - v38)];
        if (!v39)
        {
          goto LABEL_47;
        }

        v40 = v39;
        if (v39[5] >= 1)
        {
          break;
        }

LABEL_42:
        v36 = v55;
        if (v38 >= v55)
        {
          goto LABEL_43;
        }
      }

      v41 = 0;
      while (1)
      {
        v42 = *(v40 + 1);
        if (!v42)
        {
          break;
        }

        v43 = *(v42 + 8);
        v44 = v41 + v40[4];
        if (v44 < 0 || v44 >= v43)
        {
          IOSArray_throwOutOfBoundsWithMsg(v43, v44);
        }

        v45 = *(v42 + 16 + 8 * v44);
        size = v37->super.size_;
        if ((v38 & 0x80000000) != 0 || v38 >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v38);
        }

        *(&v37->super.size_ + v38 + 1) = v45;
        ++v41;
        v38 = (v38 + 1);
        if (v41 >= v40[5])
        {
          goto LABEL_42;
        }
      }
    }

LABEL_47:
    JreThrowNullPointerException();
  }

LABEL_48:
  [*(v56 + 72) skipWithLong:{v48 - objc_msgSend(*(v56 + 72), "ord")}];
  return v50;
}

OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader *new_OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withNSString_withOrgApacheLuceneIndexFieldInfos_withOrgApacheLuceneStoreIOContext_withNSString_withOrgApacheLuceneCodecsCompressingCompressionMode_(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v14 = [OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader alloc];
  OrgApacheLuceneCodecsCompressingCompressingTermVectorsReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withNSString_withOrgApacheLuceneIndexFieldInfos_withOrgApacheLuceneStoreIOContext_withNSString_withOrgApacheLuceneCodecsCompressingCompressionMode_(v14, a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

id sub_1000832F4(id *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17)
{
  JreStrongAssign(a1 + 1, a2);
  OrgApacheLuceneIndexFields_init(a1, v24);
  JreStrongAssign(a1 + 2, a3);
  JreStrongAssign(a1 + 3, a4);
  JreStrongAssign(a1 + 4, a5);
  JreStrongAssign(a1 + 5, a6);
  JreStrongAssign(a1 + 6, a7);
  JreStrongAssign(a1 + 7, a8);
  JreStrongAssign(a1 + 8, a9);
  JreStrongAssign(a1 + 9, a10);
  JreStrongAssign(a1 + 10, a11);
  JreStrongAssign(a1 + 11, a12);
  JreStrongAssign(a1 + 12, a13);
  JreStrongAssign(a1 + 13, a14);
  JreStrongAssign(a1 + 16, a15);
  JreStrongAssign(a1 + 14, a16);

  return JreStrongAssign(a1 + 15, a17);
}

id sub_100083F24(uint64_t a1, int a2, int a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13)
{
  OrgApacheLuceneIndexTerms_init();
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  JreStrongAssign((a1 + 16), a4);
  JreStrongAssign((a1 + 24), a5);
  JreStrongAssign((a1 + 32), a6);
  JreStrongAssign((a1 + 40), a7);
  JreStrongAssign((a1 + 48), a8);
  JreStrongAssign((a1 + 56), a9);
  JreStrongAssign((a1 + 64), a10);
  JreStrongAssign((a1 + 72), a11);
  JreStrongAssign((a1 + 88), a12);

  return JreStrongAssign((a1 + 80), a13);
}

void *sub_100084384(uint64_t a1)
{
  OrgApacheLuceneIndexTermsEnum_init(a1);
  v2 = new_OrgApacheLuceneUtilBytesRef_initWithInt_(16);

  return JreStrongAssignAndConsume((a1 + 112), v2);
}

uint64_t sub_100084DF0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 == -1)
  {
    v2 = @"DocsEnum not started";
    goto LABEL_6;
  }

  if (v1 == 0x7FFFFFFF)
  {
    v2 = @"DocsEnum exhausted";
LABEL_6:
    v3 = new_JavaLangIllegalStateException_initWithNSString_(v2);
    objc_exception_throw(v3);
  }

  return result;
}

uint64_t sub_100084E48(uint64_t a1)
{
  result = sub_100084DF0(a1);
  v3 = *(a1 + 76);
  if (v3 < 0)
  {
    v4 = @"Position enum not started";
    goto LABEL_6;
  }

  if (v3 >= *(a1 + 20))
  {
    v4 = @"Read past last position";
LABEL_6:
    v5 = new_JavaLangIllegalStateException_initWithNSString_(v4);
    objc_exception_throw(v5);
  }

  return result;
}

uint64_t OrgApacheLuceneUtilRamUsageEstimator_alignObjectSizeWithLong_(uint64_t a1)
{
  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000120A8();
  }

  return (a1 + OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_ - 1) / OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_ * OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_;
}

uint64_t OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithJavaLangLong_(void *a1)
{
  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000120A8();
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_8:
    JreThrowNullPointerException();
  }

  if (!a1)
  {
    goto LABEL_8;
  }

LABEL_3:
  v2 = [a1 longLongValue];
  if (v2 >= OrgApacheLuceneUtilRamUsageEstimator_LONG_CACHE_MIN_VALUE_ && (v3 = [a1 longLongValue], v3 <= OrgApacheLuceneUtilRamUsageEstimator_LONG_CACHE_MAX_VALUE_))
  {
    return 0;
  }

  else
  {
    return OrgApacheLuceneUtilRamUsageEstimator_LONG_SIZE_;
  }
}

uint64_t OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithByteArray_(uint64_t a1)
{
  if (atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_1000120A8();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_ARRAY_HEADER_;
  v3 = *(a1 + 8);
  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000120A8();
  }

  return (v2 + v3 + OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_ - 1) / OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_ * OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_;
}

uint64_t OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithBooleanArray_(uint64_t a1)
{
  if (atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_1000120A8();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_ARRAY_HEADER_;
  v3 = *(a1 + 8);
  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000120A8();
  }

  return (v2 + v3 + OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_ - 1) / OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_ * OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_;
}

uint64_t OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithCharArray_(uint64_t a1)
{
  if (atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_1000120A8();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_ARRAY_HEADER_;
  v3 = *(a1 + 8);
  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000120A8();
  }

  return (v2 + 2 * v3 + OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_ - 1) / OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_ * OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_;
}

uint64_t OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithShortArray_(uint64_t a1)
{
  if (atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_1000120A8();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_ARRAY_HEADER_;
  v3 = *(a1 + 8);
  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000120A8();
  }

  return (v2 + 2 * v3 + OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_ - 1) / OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_ * OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_;
}

uint64_t OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithIntArray_(uint64_t a1)
{
  if (atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_1000120A8();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_ARRAY_HEADER_;
  v3 = *(a1 + 8);
  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000120A8();
  }

  return (v2 + 4 * v3 + OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_ - 1) / OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_ * OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_;
}

uint64_t OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithFloatArray_(uint64_t a1)
{
  if (atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_1000120A8();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_ARRAY_HEADER_;
  v3 = *(a1 + 8);
  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000120A8();
  }

  return (v2 + 4 * v3 + OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_ - 1) / OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_ * OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_;
}

uint64_t OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithLongArray_(uint64_t a1)
{
  if (atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_1000120A8();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_ARRAY_HEADER_;
  v3 = *(a1 + 8);
  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000120A8();
  }

  return (v2 + 8 * v3 + OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_ - 1) / OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_ * OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_;
}

uint64_t OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithDoubleArray_(uint64_t a1)
{
  if (atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_1000120A8();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_ARRAY_HEADER_;
  v3 = *(a1 + 8);
  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000120A8();
  }

  return (v2 + 8 * v3 + OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_ - 1) / OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_ * OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_;
}

uint64_t OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithNSObjectArray_(uint64_t a1)
{
  if (atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_1000120A8();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF_;
  v3 = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_ARRAY_HEADER_;
  v4 = *(a1 + 8);
  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000120A8();
  }

  return (v3 + v4 * v2 + OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_ - 1) / OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_ * OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_;
}

uint64_t OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithId_(void *a1)
{
  if (atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  sub_1000120A8();
  if (!a1)
  {
    return 0;
  }

LABEL_3:
  v2 = [a1 getClass];
  if ([v2 isArray])
  {
    if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1000120A8();
    }

    v3 = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_ARRAY_HEADER_;
    LengthWithId = JavaLangReflectArray_getLengthWithId_(a1);
    if (LengthWithId < 1)
    {
      goto LABEL_17;
    }

    v5 = LengthWithId;
    v6 = [objc_msgSend(a1 "getClass")];
    if (v6)
    {
      v7 = v6;
      if (![v6 isPrimitive])
      {
        v9 = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF_ * v5;
        goto LABEL_16;
      }

      if (qword_1005541B0)
      {
        v8 = [qword_1005541B0 getWithId:v7];
        if (v8)
        {
          v9 = [v8 intValue] * v5;
LABEL_16:
          v3 += v9;
LABEL_17:
          if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
          {
            sub_1000120A8();
          }

          return (v3 + OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_ - 1) / OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_ * OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_;
        }
      }
    }

    JreThrowNullPointerException();
  }

  return OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v2);
}

uint64_t OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(void *a1)
{
  v1 = a1;
  if (atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    sub_1000120A8();
    if (!v1)
    {
      goto LABEL_22;
    }
  }

  if ([v1 isArray])
  {
    v10 = new_JavaLangIllegalArgumentException_initWithNSString_(@"This method does not work with array classes.");
    objc_exception_throw(v10);
  }

  if ([v1 isPrimitive])
  {
    if (qword_1005541B0)
    {
      v2 = [qword_1005541B0 getWithId:v1];
      if (v2)
      {
        return [v2 intValue];
      }
    }

LABEL_22:
    JreThrowNullPointerException();
  }

  v4 = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_HEADER_;
  do
  {
    v5 = [v1 getDeclaredFields];
    if (!v5)
    {
      goto LABEL_22;
    }

    v6 = (v5 + 24);
    v7 = &v5[8 * *(v5 + 2) + 24];
    while (v6 < v7)
    {
      v9 = *v6++;
      v8 = v9;
      if (!v9)
      {
        goto LABEL_22;
      }

      if ((JavaLangReflectModifier_isStaticWithInt_([v8 getModifiers]) & 1) == 0)
      {
        if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_1000120A8();
        }

        v4 += OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF_;
      }
    }

    v1 = [v1 getSuperclass];
  }

  while (v1);
  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000120A8();
  }

  return (v4 + OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_ - 1) / OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_ * OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_;
}

const __CFString *OrgApacheLuceneUtilRamUsageEstimator_humanReadableUnitsWithLong_(uint64_t a1)
{
  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000120A8();
  }

  if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000458CC();
  }

  InstanceWithJavaUtilLocale = JavaTextDecimalFormatSymbols_getInstanceWithJavaUtilLocale_(JavaUtilLocale_ROOT_);
  v3 = new_JavaTextDecimalFormat_initWithNSString_withJavaTextDecimalFormatSymbols_(@"0.#", InstanceWithJavaUtilLocale);

  return OrgApacheLuceneUtilRamUsageEstimator_humanReadableUnitsWithLong_withJavaTextDecimalFormat_(a1, v3, v4, v5, v6, v7, v8, v9);
}

const __CFString *OrgApacheLuceneUtilRamUsageEstimator_humanReadableUnitsWithLong_withJavaTextDecimalFormat_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000120A8();
  }

  if (a1 >= 0x40000000)
  {
    if (a2)
    {
      v10 = [a2 formatWithDouble:{vcvts_n_f32_u64(a1, 0x1EuLL)}];
      return JreStrcat("$$", v11, v12, v13, v14, v15, v16, v17, v10);
    }

    goto LABEL_14;
  }

  if (a1 >= 0x100000)
  {
    if (a2)
    {
      v10 = [a2 formatWithDouble:{vcvts_n_f32_u64(a1, 0x14uLL)}];
      return JreStrcat("$$", v11, v12, v13, v14, v15, v16, v17, v10);
    }

LABEL_14:
    JreThrowNullPointerException();
  }

  if (a1 >= 1024)
  {
    if (a2)
    {
      v10 = [a2 formatWithDouble:{vcvts_n_f32_u64(a1, 0xAuLL)}];
      return JreStrcat("$$", v11, v12, v13, v14, v15, v16, v17, v10);
    }

    goto LABEL_14;
  }

  return JreStrcat("J$", a2, a3, a4, a5, a6, a7, a8, a1);
}

uint64_t OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithOrgApacheLuceneUtilAccountableArray_(uint64_t a1)
{
  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000120A8();
  }

  v2 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithNSObjectArray_(a1);
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v3 = v2;
  v4 = (a1 + 24);
  v5 = a1 + 24 + 8 * *(a1 + 8);
  while (v4 < v5)
  {
    v7 = *v4++;
    v6 = v7;
    if (v7)
    {
      v3 += [v6 ramBytesUsed];
    }
  }

  return v3;
}

void sub_100086550(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    OrgApacheLuceneUtilRamUsageEstimator_JVM_IS_HOTSPOT_64BIT_ = 0;
    OrgApacheLuceneUtilRamUsageEstimator_COMPRESSED_REFS_ENABLED_ = 0;
    OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT_ = 8;
    JUMPOUT(0x100086418);
  }

  _Unwind_Resume(a1);
}

OrgApacheLuceneUtilPackedBulkOperationPacked21 *new_OrgApacheLuceneUtilPackedBulkOperationPacked21_init()
{
  v0 = [OrgApacheLuceneUtilPackedBulkOperationPacked21 alloc];
  OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(v0, 21);
  return v0;
}

OrgApacheLuceneUtilBytesRefBuilder *new_OrgApacheLuceneUtilBytesRefBuilder_init()
{
  v0 = [OrgApacheLuceneUtilBytesRefBuilder alloc];
  v1 = new_OrgApacheLuceneUtilBytesRef_init();
  JreStrongAssignAndConsume(&v0->ref_, v1);
  return v0;
}

uint64_t OrgApacheLuceneUtilBytesRefBuilder_class_()
{
  if (qword_1005541C0 != -1)
  {
    sub_10008B338();
  }

  return qword_1005541B8;
}

uint64_t OrgApacheLuceneStoreFilterDirectory_unwrapWithOrgApacheLuceneStoreDirectory_(uint64_t a1)
{
  objc_opt_class();
  while ((objc_opt_isKindOfClass() & 1) != 0)
  {
    objc_opt_class();
    if (!a1)
    {
      JreThrowNullPointerException();
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    a1 = *(a1 + 8);
    objc_opt_class();
  }

  return a1;
}

id OrgApacheLuceneStoreFilterDirectory_initWithOrgApacheLuceneStoreDirectory_(uint64_t a1, void *a2)
{
  OrgApacheLuceneStoreDirectory_init(a1, a2);

  return JreStrongAssign((a1 + 8), a2);
}

id OrgApacheLuceneSearchScorer_initWithOrgApacheLuceneSearchWeight_(uint64_t a1, void *a2)
{
  OrgApacheLuceneSearchDocIdSetIterator_init(a1, a2);

  return JreStrongAssign((a1 + 8), a2);
}

uint64_t OrgApacheLuceneSearchScorer_class_()
{
  if (qword_1005541D0 != -1)
  {
    sub_10008B930();
  }

  return qword_1005541C8;
}

OrgApacheLuceneSearchScorer_ChildScorer *new_OrgApacheLuceneSearchScorer_ChildScorer_initWithOrgApacheLuceneSearchScorer_withNSString_(void *a1, void *a2)
{
  v4 = [OrgApacheLuceneSearchScorer_ChildScorer alloc];
  JreStrongAssign(&v4->child_, a1);
  JreStrongAssign(&v4->relationship_, a2);
  return v4;
}

void *ComAppleProactiveOrgApacheLuceneUtilOpenBitSet_initWithLong_(uint64_t a1, uint64_t a2)
{
  OrgApacheLuceneSearchDocIdSet_init(a1, a2);
  *(a1 + 24) = a2;
  if ((atomic_load_explicit(ComAppleProactiveOrgApacheLuceneUtilOpenBitSet__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10008E30C();
  }

  result = JreStrongAssignAndConsume((a1 + 8), [IOSLongArray newArrayWithLength:((a2 << 26) + 4227858432) >> 32]);
  *(a1 + 16) = *(*(a1 + 8) + 8);
  return result;
}

id ComAppleProactiveOrgApacheLuceneUtilOpenBitSet_initWithLongArray_withInt_(uint64_t a1, _DWORD *a2, int a3)
{
  OrgApacheLuceneSearchDocIdSet_init(a1, a2);
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  if (a2[2] < a3)
  {
    v7 = new_JavaLangIllegalArgumentException_initWithNSString_(@"numWords cannot exceed bits.length");
    objc_exception_throw(v7);
  }

  result = JreStrongAssign((a1 + 8), a2);
  *(a1 + 16) = a3;
  *(a1 + 24) = (*(a1 + 16) << 6);
  return result;
}

uint64_t ComAppleProactiveOrgApacheLuceneUtilOpenBitSet_intersectionCountWithComAppleProactiveOrgApacheLuceneUtilOpenBitSet_withComAppleProactiveOrgApacheLuceneUtilOpenBitSet_(uint64_t a1, uint64_t a2)
{
  if (atomic_load_explicit(ComAppleProactiveOrgApacheLuceneUtilOpenBitSet__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_10008E30C();
    if (!a1)
    {
LABEL_8:
      JreThrowNullPointerException();
    }
  }

  if (!a2)
  {
    goto LABEL_8;
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  v6 = JavaLangMath_minWithInt_withInt_(*(a1 + 16), *(a2 + 16));

  return OrgApacheLuceneUtilBitUtil_pop_intersectWithLongArray_withLongArray_withInt_withInt_(v4, v5, 0, v6);
}

uint64_t ComAppleProactiveOrgApacheLuceneUtilOpenBitSet_unionCountWithComAppleProactiveOrgApacheLuceneUtilOpenBitSet_withComAppleProactiveOrgApacheLuceneUtilOpenBitSet_(uint64_t a1, uint64_t a2)
{
  if (atomic_load_explicit(ComAppleProactiveOrgApacheLuceneUtilOpenBitSet__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_10008E30C();
    if (!a1)
    {
LABEL_11:
      JreThrowNullPointerException();
    }
  }

  if (!a2)
  {
    goto LABEL_11;
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  v6 = JavaLangMath_minWithInt_withInt_(*(a1 + 16), *(a2 + 16));
  v7 = OrgApacheLuceneUtilBitUtil_pop_unionWithLongArray_withLongArray_withInt_withInt_(v4, v5, 0, v6);
  v8 = *(a1 + 16);
  v9 = *(a2 + 16);
  v10 = v8 - v9;
  if (v8 < v9)
  {
    v11 = *(a2 + 8);
    v10 = v9 - v8;
    v9 = *(a1 + 16);
LABEL_8:
    v7 += OrgApacheLuceneUtilBitUtil_pop_arrayWithLongArray_withInt_withInt_(v11, v9, v10);
    return v7;
  }

  if (v8 > v9)
  {
    v11 = *(a1 + 8);
    goto LABEL_8;
  }

  return v7;
}

uint64_t ComAppleProactiveOrgApacheLuceneUtilOpenBitSet_andNotCountWithComAppleProactiveOrgApacheLuceneUtilOpenBitSet_withComAppleProactiveOrgApacheLuceneUtilOpenBitSet_(uint64_t a1, uint64_t a2)
{
  if (atomic_load_explicit(ComAppleProactiveOrgApacheLuceneUtilOpenBitSet__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_10008E30C();
    if (!a1)
    {
LABEL_8:
      JreThrowNullPointerException();
    }
  }

  if (!a2)
  {
    goto LABEL_8;
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  v6 = JavaLangMath_minWithInt_withInt_(*(a1 + 16), *(a2 + 16));
  v7 = OrgApacheLuceneUtilBitUtil_pop_andnotWithLongArray_withLongArray_withInt_withInt_(v4, v5, 0, v6);
  v8 = *(a1 + 16);
  v9 = *(a2 + 16);
  if (v8 > v9)
  {
    v7 += OrgApacheLuceneUtilBitUtil_pop_arrayWithLongArray_withInt_withInt_(*(a1 + 8), v9, v8 - v9);
  }

  return v7;
}

uint64_t ComAppleProactiveOrgApacheLuceneUtilOpenBitSet_xorCountWithComAppleProactiveOrgApacheLuceneUtilOpenBitSet_withComAppleProactiveOrgApacheLuceneUtilOpenBitSet_(uint64_t a1, uint64_t a2)
{
  if (atomic_load_explicit(ComAppleProactiveOrgApacheLuceneUtilOpenBitSet__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_10008E30C();
    if (!a1)
    {
LABEL_11:
      JreThrowNullPointerException();
    }
  }

  if (!a2)
  {
    goto LABEL_11;
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  v6 = JavaLangMath_minWithInt_withInt_(*(a1 + 16), *(a2 + 16));
  v7 = OrgApacheLuceneUtilBitUtil_pop_xorWithLongArray_withLongArray_withInt_withInt_(v4, v5, 0, v6);
  v8 = *(a1 + 16);
  v9 = *(a2 + 16);
  v10 = v8 - v9;
  if (v8 < v9)
  {
    v11 = *(a2 + 8);
    v10 = v9 - v8;
    v9 = *(a1 + 16);
LABEL_8:
    v7 += OrgApacheLuceneUtilBitUtil_pop_arrayWithLongArray_withInt_withInt_(v11, v9, v10);
    return v7;
  }

  if (v8 > v9)
  {
    v11 = *(a1 + 8);
    goto LABEL_8;
  }

  return v7;
}

ComAppleProactiveOrgApacheLuceneUtilOpenBitSet *new_ComAppleProactiveOrgApacheLuceneUtilOpenBitSet_init()
{
  v0 = [ComAppleProactiveOrgApacheLuceneUtilOpenBitSet alloc];
  ComAppleProactiveOrgApacheLuceneUtilOpenBitSet_initWithLong_(v0, 64);
  return v0;
}

uint64_t ComAppleProactiveOrgApacheLuceneUtilOpenBitSet_class_()
{
  if ((atomic_load_explicit(ComAppleProactiveOrgApacheLuceneUtilOpenBitSet__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10008E30C();
  }

  if (qword_1005541E8 != -1)
  {
    sub_10008E318();
  }

  return qword_1005541E0;
}

const __CFString *OrgApacheLuceneCodecsPerfieldPerFieldDocValuesFormat_getFullSegmentSuffixWithNSString_withNSString_(void *a1, uint64_t a2)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  if ([a1 length])
  {
    return JreStrcat("$C$", v4, v5, v6, v7, v8, v9, v10, a1);
  }

  else
  {
    return a2;
  }
}

id sub_10008E564(id *a1, void *a2, void *a3)
{
  JreStrongAssign(a1 + 1, a2);
  OrgApacheLuceneCodecsDocValuesConsumer_init(a1);
  v5 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume(a1 + 2, v5);
  v6 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume(a1 + 3, v6);

  return JreStrongAssign(a1 + 4, a3);
}

OrgApacheLuceneCodecsDocValuesConsumer *sub_10008E644(uint64_t a1, void *a2)
{
  if (!a2)
  {
    goto LABEL_26;
  }

  if ([a2 getDocValuesGen] == -1 || (v4 = objc_msgSend(a2, "getAttributeWithNSString:", OrgApacheLuceneCodecsPerfieldPerFieldDocValuesFormat_PER_FIELD_FORMAT_KEY_)) == 0 || (v5 = OrgApacheLuceneCodecsDocValuesFormat_forNameWithNSString_(v4)) == 0)
  {
    v5 = [*(a1 + 8) getDocValuesFormatForFieldWithNSString:a2[1]];
    if (!v5)
    {
      v55 = a2[1];
      v53 = JreStrcat("$$C", v6, v7, v8, v9, v10, v11, v12, @"invalid null DocValuesFormat for field=");
LABEL_31:
      v54 = new_JavaLangIllegalStateException_initWithNSString_(v53);
      objc_exception_throw(v54);
    }
  }

  v13 = v5;
  v14 = [v5 getName];
  v15 = [a2 putAttributeWithNSString:OrgApacheLuceneCodecsPerfieldPerFieldDocValuesFormat_PER_FIELD_FORMAT_KEY_ withNSString:v14];
  if ([a2 getDocValuesGen] == -1 && v15)
  {
    v56 = a2[1];
    v52 = "$$$$$$$$";
LABEL_29:
    v53 = JreStrcat(v52, v16, v17, v18, v19, v20, v21, v22, @"found existing value for ");
    goto LABEL_31;
  }

  v23 = *(a1 + 16);
  if (!v23)
  {
    goto LABEL_26;
  }

  v24 = [v23 getWithId:v13];
  if (!v24)
  {
    if ([a2 getDocValuesGen] == -1 || (v27 = objc_msgSend(a2, "getAttributeWithNSString:", OrgApacheLuceneCodecsPerfieldPerFieldDocValuesFormat_PER_FIELD_SUFFIX_KEY_)) == 0 || (v26 = JavaLangInteger_valueOfWithNSString_(v27, v28, v29, v30, v31, v32, v33, v34)) == 0)
    {
      v35 = *(a1 + 24);
      if (!v35)
      {
        goto LABEL_26;
      }

      v36 = [v35 getWithId:v14];
      if (v36)
      {
        LODWORD(v36) = [v36 intValue] + 1;
      }

      v26 = JavaLangInteger_valueOfWithInt_(v36);
    }

    v37 = *(a1 + 24);
    if (v37)
    {
      [v37 putWithId:v14 withId:v26];
      v38 = *(a1 + 32);
      if (v38)
      {
        if (v26)
        {
          v39 = *(v38 + 64);
          JavaLangInteger_toStringWithInt_([(JavaLangInteger *)v26 intValue]);
          v47 = JreStrcat("$C$", v40, v41, v42, v43, v44, v45, v46, v14);
          FullSegmentSuffixWithNSString_withNSString = OrgApacheLuceneCodecsPerfieldPerFieldDocValuesFormat_getFullSegmentSuffixWithNSString_withNSString_(v39, v47);
          v25 = [OrgApacheLuceneCodecsPerfieldPerFieldDocValuesFormat_ConsumerAndSuffix alloc];
          v49 = [v13 fieldsConsumerWithOrgApacheLuceneIndexSegmentWriteState:{new_OrgApacheLuceneIndexSegmentWriteState_initWithOrgApacheLuceneIndexSegmentWriteState_withNSString_(*(a1 + 32), FullSegmentSuffixWithNSString_withNSString)}];
          JreStrongAssign(&v25->consumer_, v49);
          v25->suffix_ = [(JavaLangInteger *)v26 intValue];
          [*(a1 + 16) putWithId:v13 withId:v25];
          goto LABEL_23;
        }
      }
    }

LABEL_26:
    JreThrowNullPointerException();
  }

  v25 = v24;
  v26 = JavaLangInteger_valueOfWithInt_(v24->suffix_);
  if (!v26)
  {
    goto LABEL_26;
  }

LABEL_23:
  v50 = [a2 putAttributeWithNSString:OrgApacheLuceneCodecsPerfieldPerFieldDocValuesFormat_PER_FIELD_SUFFIX_KEY_ withNSString:{JavaLangInteger_toStringWithInt_(-[JavaLangInteger intValue](v26, "intValue"))}];
  if ([a2 getDocValuesGen] == -1 && v50)
  {
    v57 = a2[1];
    v52 = "$$$$$$$@";
    goto LABEL_29;
  }

  return v25->consumer_;
}

id sub_10008EBE8(id *a1, void *a2, uint64_t a3)
{
  JreStrongAssign(a1 + 1, a2);
  OrgApacheLuceneCodecsDocValuesProducer_init(a1);
  v5 = new_JavaUtilTreeMap_init();
  JreStrongAssignAndConsume(a1 + 2, v5);
  v6 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume(a1 + 3, v6);
  v7 = new_JavaUtilIdentityHashMap_init();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  if (!a3)
  {
    goto LABEL_22;
  }

  v8 = v7;
  v9 = [*(a3 + 24) entrySet];
  if (!v9)
  {
    goto LABEL_22;
  }

  v10 = v9;
  v25 = a3;
  v11 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v31;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        if (!v15)
        {
          goto LABEL_22;
        }

        v16 = [*(*(&v30 + 1) + 8 * i) getValue];
        if (!v16)
        {
          goto LABEL_22;
        }

        v17 = [v16 getMergeInstance];
        [a1[3] putWithId:objc_msgSend(v15 withId:{"getKey"), v17}];
        -[JavaUtilIdentityHashMap putWithId:withId:](v8, "putWithId:withId:", [v15 getValue], v17);
      }

      v12 = [v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v12);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = [*(v25 + 16) entrySet];
  if (!v18)
  {
LABEL_22:
    JreThrowNullPointerException();
  }

  v19 = v18;
  result = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (result)
  {
    v21 = result;
    v22 = *v27;
    do
    {
      v23 = 0;
      do
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v26 + 1) + 8 * v23);
        if (!v24)
        {
          goto LABEL_22;
        }

        [a1[2] putWithId:objc_msgSend(v24 withId:{"getKey"), -[JavaUtilIdentityHashMap getWithId:](v8, "getWithId:", objc_msgSend(*(*(&v26 + 1) + 8 * v23), "getValue"))}];
        v23 = v23 + 1;
      }

      while (v21 != v23);
      result = [v19 countByEnumeratingWithState:&v26 objects:v34 count:16];
      v21 = result;
    }

    while (result);
  }

  return result;
}

id sub_10008EE9C(id *a1, void *a2, uint64_t a3)
{
  JreStrongAssign(a1 + 1, a2);
  OrgApacheLuceneCodecsDocValuesProducer_init(a1);
  v5 = new_JavaUtilTreeMap_init();
  JreStrongAssignAndConsume(a1 + 2, v5);
  v6 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume(a1 + 3, v6);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  if (!a3 || (v7 = a3, (obj = *(a3 + 24)) == 0))
  {
LABEL_21:
    JreThrowNullPointerException();
  }

  result = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  v9 = result;
  if (result)
  {
    v10 = *v38;
    do
    {
      v11 = 0;
      do
      {
        if (*v38 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v37 + 1) + 8 * v11);
        if (!v12)
        {
          goto LABEL_21;
        }

        v13 = [*(*(&v37 + 1) + 8 * v11) getDocValuesType];
        if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
        {
          objc_opt_class();
        }

        if (v13 != OrgApacheLuceneIndexDocValuesTypeEnum_values_)
        {
          v14 = v12[1];
          v15 = [v12 getAttributeWithNSString:OrgApacheLuceneCodecsPerfieldPerFieldDocValuesFormat_PER_FIELD_FORMAT_KEY_];
          if (v15)
          {
            if (![v12 getAttributeWithNSString:OrgApacheLuceneCodecsPerfieldPerFieldDocValuesFormat_PER_FIELD_SUFFIX_KEY_])
            {
              v34 = JreStrcat("$$$$", v16, v17, v18, v19, v20, v21, v22, @"missing attribute: ");
              v35 = new_JavaLangIllegalStateException_initWithNSString_(v34);
              objc_exception_throw(v35);
            }

            v23 = OrgApacheLuceneCodecsDocValuesFormat_forNameWithNSString_(v15);
            v24 = *(v7 + 40);
            v32 = JreStrcat("$C$", v25, v26, v27, v28, v29, v30, v31, v15);
            FullSegmentSuffixWithNSString_withNSString = OrgApacheLuceneCodecsPerfieldPerFieldDocValuesFormat_getFullSegmentSuffixWithNSString_withNSString_(v24, v32);
            if (([a1[3] containsKeyWithId:FullSegmentSuffixWithNSString_withNSString] & 1) == 0)
            {
              if (!v23)
              {
                JreThrowNullPointerException();
              }

              [a1[3] putWithId:FullSegmentSuffixWithNSString_withNSString withId:{objc_msgSend(v23, "fieldsProducerWithOrgApacheLuceneIndexSegmentReadState:", new_OrgApacheLuceneIndexSegmentReadState_initWithOrgApacheLuceneIndexSegmentReadState_withNSString_(v7, FullSegmentSuffixWithNSString_withNSString))}];
            }

            [a1[2] putWithId:v14 withId:{objc_msgSend(a1[3], "getWithId:", FullSegmentSuffixWithNSString_withNSString)}];
          }
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      result = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      v9 = result;
    }

    while (result);
  }

  return result;
}

void sub_10008F194(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaLangIterable_([*(v2 + 24) values]);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_10008F1EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x10008F1F4);
  }

  objc_terminate();
}

id sub_10008F870(void *a1, uint64_t a2, void *a3)
{
  v32 = [a1 getTopLevelBuilder];
  v6 = [OrgApacheLuceneSearchScoringRewrite_ParallelArraysTermCollector alloc];
  OrgApacheLuceneSearchScoringRewrite_ParallelArraysTermCollector_initWithOrgApacheLuceneSearchScoringRewrite_(&v6->super.super.isa, a1);
  v7 = v6;
  [a1 collectTermsWithOrgApacheLuceneIndexIndexReader:a2 withOrgApacheLuceneSearchMultiTermQuery:a3 withOrgApacheLuceneSearchTermCollectingRewrite_TermCollector:v7];
  v31 = v7;
  terms = v7->terms_;
  if (!terms)
  {
    goto LABEL_25;
  }

  v9 = [(OrgApacheLuceneUtilBytesRefHash *)terms size];
  if (v9 >= 1)
  {
    v10 = v9;
    v11 = [(OrgApacheLuceneUtilBytesRefHash *)v7->terms_ sortWithJavaUtilComparator:OrgApacheLuceneUtilBytesRef_getUTF8SortedAsUnicodeComparator()];
    array = v7->array_;
    if (array)
    {
      v13 = v11;
      if (v11)
      {
        v14 = 0;
        boost = array->boost_;
        termState = array->termState_;
        v30 = v10;
        v17 = v11;
        while (1)
        {
          v18 = v13[2];
          if (v14 >= v18)
          {
            IOSArray_throwOutOfBoundsWithMsg(v18, v14);
          }

          if (!a3)
          {
            break;
          }

          v19 = v17[3];
          v20 = [a3 getField];
          v21 = [(OrgApacheLuceneUtilBytesRefHash *)v31->terms_ getWithInt:v19 withOrgApacheLuceneUtilBytesRef:new_OrgApacheLuceneUtilBytesRef_init()];
          v22 = new_OrgApacheLuceneIndexTerm_initWithNSString_withOrgApacheLuceneUtilBytesRef_(v20, v21);
          size = termState->super.size_;
          if ((v19 & 0x80000000) != 0 || v19 >= size)
          {
            IOSArray_throwOutOfBoundsWithMsg(size, v19);
          }

          v24 = (&termState->elementType_)[v19];
          if (!v24)
          {
            break;
          }

          v25 = [(IOSClass *)v24 docFreq];
          [a3 getBoost];
          if (!boost)
          {
            break;
          }

          v27 = boost->super.size_;
          if ((v19 & 0x80000000) != 0 || v19 >= v27)
          {
            IOSArray_throwOutOfBoundsWithMsg(v27, v19);
          }

          v28 = termState->super.size_;
          if ((v19 & 0x80000000) != 0 || v19 >= v28)
          {
            IOSArray_throwOutOfBoundsWithMsg(v28, v19);
          }

          *&v26 = *&v26 * *(&boost->super.size_ + v19 + 1);
          [a1 addClauseWithId:v32 withOrgApacheLuceneIndexTerm:v22 withInt:v25 withFloat:(&termState->elementType_)[v19] withOrgApacheLuceneIndexTermContext:v26];
          ++v14;
          ++v17;
          if (v30 == v14)
          {
            goto LABEL_22;
          }
        }
      }
    }

LABEL_25:
    JreThrowNullPointerException();
  }

LABEL_22:

  return [a1 buildWithId:v32];
}

void *OrgApacheLuceneSearchScoringRewrite_ParallelArraysTermCollector_initWithOrgApacheLuceneSearchScoringRewrite_(id *a1, void *a2)
{
  JreStrongAssign(a1 + 7, a2);
  OrgApacheLuceneSearchTermCollectingRewrite_TermCollector_init(a1);
  v3 = [OrgApacheLuceneSearchScoringRewrite_TermFreqBoostByteStart alloc];
  OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray_initWithInt_(v3, 16);
  JreStrongAssignAndConsume(a1 + 4, v3);
  v4 = new_OrgApacheLuceneUtilByteBlockPool_DirectAllocator_init();
  v5 = new_OrgApacheLuceneUtilByteBlockPool_initWithOrgApacheLuceneUtilByteBlockPool_Allocator_(v4);
  started = new_OrgApacheLuceneUtilBytesRefHash_initWithOrgApacheLuceneUtilByteBlockPool_withInt_withOrgApacheLuceneUtilBytesRefHash_BytesStartArray_(v5, 16, a1[4]);

  return JreStrongAssignAndConsume(a1 + 5, started);
}

uint64_t OrgApacheLuceneIndexFields_class_()
{
  if ((atomic_load_explicit(OrgApacheLuceneIndexFields__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100090628();
  }

  if (qword_1005541F8 != -1)
  {
    sub_100090634();
  }

  return qword_1005541F0;
}

id OrgApacheLuceneIndexMultiTerms_initWithOrgApacheLuceneIndexTermsArray_withOrgApacheLuceneIndexReaderSliceArray_(uint64_t a1, int *a2, void *a3)
{
  OrgApacheLuceneIndexTerms_init();
  JreStrongAssign((a1 + 8), a2);
  v22 = a1;
  result = JreStrongAssign((a1 + 16), a3);
  if (a2[2] < 1)
  {
    LOBYTE(v8) = 0;
    v11 = 1;
    v10 = 1;
    v9 = 1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 1;
    v10 = 1;
    v11 = 1;
    do
    {
      v12 = *&a2[2 * v7 + 6];
      if (!v12)
      {
        goto LABEL_17;
      }

      v13 = [v12 hasFreqs];
      v14 = a2[2];
      if (v7 >= v14)
      {
        IOSArray_throwOutOfBoundsWithMsg(v14, v7);
      }

      v15 = *&a2[2 * v7 + 6];
      if (!v15)
      {
        goto LABEL_17;
      }

      v23 = v8;
      v16 = [v15 hasOffsets];
      v17 = a2[2];
      if (v7 >= v17)
      {
        IOSArray_throwOutOfBoundsWithMsg(v17, v7);
      }

      v18 = *&a2[2 * v7 + 6];
      if (!v18)
      {
        goto LABEL_17;
      }

      v19 = [v18 hasPositions];
      v20 = a2[2];
      if (v7 >= v20)
      {
        IOSArray_throwOutOfBoundsWithMsg(v20, v7);
      }

      v21 = *&a2[2 * v7 + 6];
      if (!v21)
      {
LABEL_17:
        JreThrowNullPointerException();
      }

      v11 &= v13;
      v10 &= v16;
      v9 &= v19;
      result = [v21 hasPayloads];
      v8 = v23 | result;
      ++v7;
    }

    while (v7 < a2[2]);
  }

  v22[24] = v11;
  v22[25] = v10;
  v22[26] = v9;
  v22[27] = v22[26] & v8;
  return result;
}

OrgApacheLuceneIndexMultiTerms *new_OrgApacheLuceneIndexMultiTerms_initWithOrgApacheLuceneIndexTermsArray_withOrgApacheLuceneIndexReaderSliceArray_(int *a1, void *a2)
{
  v4 = [OrgApacheLuceneIndexMultiTerms alloc];
  OrgApacheLuceneIndexMultiTerms_initWithOrgApacheLuceneIndexTermsArray_withOrgApacheLuceneIndexReaderSliceArray_(v4, a1, a2);
  return v4;
}

double OrgApacheLuceneSearchDisiWrapper_initWithOrgApacheLuceneSearchDocIdSetIterator_(uint64_t a1, void *a2)
{
  JreStrongAssign((a1 + 8), a2);
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  *(a1 + 16) = [a2 cost];
  *(a1 + 24) = -1;
  v4 = OrgApacheLuceneSearchTwoPhaseIterator_asTwoPhaseIteratorWithOrgApacheLuceneSearchDocIdSetIterator_(a2);
  JreStrongAssign((a1 + 48), v4);
  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = [v5 approximation];
    v7 = (a1 + 40);
  }

  else
  {
    v7 = (a1 + 40);
    v6 = a2;
  }

  JreStrongAssign(v7, v6);
  *&result = 0x100000001;
  *(a1 + 56) = 0x100000001;
  return result;
}

OrgApacheLuceneSearchDisiWrapper *new_OrgApacheLuceneSearchDisiWrapper_initWithOrgApacheLuceneSearchDocIdSetIterator_(void *a1)
{
  v2 = [OrgApacheLuceneSearchDisiWrapper alloc];
  OrgApacheLuceneSearchDisiWrapper_initWithOrgApacheLuceneSearchDocIdSetIterator_(v2, a1);
  return v2;
}

uint64_t OrgApacheLuceneSearchDisiWrapper_class_()
{
  if (qword_100554208 != -1)
  {
    sub_1000910EC();
  }

  return qword_100554200;
}

uint64_t OrgApacheLuceneIndexTerms_class_()
{
  if ((atomic_load_explicit(OrgApacheLuceneIndexTerms__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000918B8();
  }

  if (qword_100554218 != -1)
  {
    sub_1000918C4();
  }

  return qword_100554210;
}

OrgApacheLuceneUtilIntsRef *OrgApacheLuceneUtilIntsRef_deepCopyOfWithOrgApacheLuceneUtilIntsRef_(uint64_t a1)
{
  if (atomic_load_explicit(OrgApacheLuceneUtilIntsRef__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_1000921B4();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = JavaUtilArrays_copyOfRangeWithIntArray_withInt_withInt_(*(a1 + 8), *(a1 + 16), *(a1 + 20) + *(a1 + 16));
  v3 = *(a1 + 20);
  v4 = [OrgApacheLuceneUtilIntsRef alloc];
  JreStrongAssign(&v4->ints_, v2);
  v4->offset_ = 0;
  v4->length_ = v3;

  return v4;
}

OrgApacheLuceneUtilIntsRef *new_OrgApacheLuceneUtilIntsRef_init()
{
  v0 = [OrgApacheLuceneUtilIntsRef alloc];
  JreStrongAssign(&v0->ints_, OrgApacheLuceneUtilIntsRef_EMPTY_INTS_);
  return v0;
}

id OrgApacheLuceneIndexTerm_initWithNSString_withNSString_(uint64_t a1, void *a2, void *a3)
{
  v5 = new_OrgApacheLuceneUtilBytesRef_initWithJavaLangCharSequence_(a3);
  JreStrongAssign((a1 + 8), a2);

  return JreStrongAssign((a1 + 16), v5);
}

id OrgApacheLuceneIndexTerm_initWithNSString_(uint64_t a1, void *a2)
{
  v4 = new_OrgApacheLuceneUtilBytesRef_init();
  JreStrongAssign((a1 + 8), a2);

  return JreStrongAssign((a1 + 16), v4);
}

id OrgApacheLuceneIndexTerm_toStringWithOrgApacheLuceneUtilBytesRef_(uint64_t a1)
{
  if ((atomic_load_explicit(OrgLukhnosPortmobileCharsetStandardCharsets__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10003A2FC();
  }

  if (!OrgLukhnosPortmobileCharsetStandardCharsets_UTF_8_)
  {
    goto LABEL_16;
  }

  v2 = [OrgLukhnosPortmobileCharsetStandardCharsets_UTF_8_ newDecoder];
  if (!v2)
  {
    goto LABEL_16;
  }

  v3 = v2;
  if ((atomic_load_explicit(JavaNioCharsetCodingErrorAction__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100092814();
  }

  v4 = [v3 onMalformedInputWithJavaNioCharsetCodingErrorAction:JavaNioCharsetCodingErrorAction_REPORT_];
  if (!v4)
  {
LABEL_16:
    JreThrowNullPointerException();
  }

  v5 = v4;
  if ((atomic_load_explicit(JavaNioCharsetCodingErrorAction__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100092814();
  }

  v6 = [v5 onUnmappableCharacterWithJavaNioCharsetCodingErrorAction:JavaNioCharsetCodingErrorAction_REPORT_];
  if (v6)
  {
    v7 = a1 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || (v8 = [v6 decodeWithJavaNioByteBuffer:{JavaNioByteBuffer_wrapWithByteArray_withInt_withInt_(*(a1 + 8), *(a1 + 16), *(a1 + 20))}]) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v8 description];
}

OrgApacheLuceneIndexTerm *new_OrgApacheLuceneIndexTerm_initWithNSString_withOrgApacheLuceneUtilBytesRef_(void *a1, void *a2)
{
  v4 = [OrgApacheLuceneIndexTerm alloc];
  JreStrongAssign(&v4->field_, a1);
  JreStrongAssign(&v4->bytes_, a2);
  return v4;
}

OrgApacheLuceneIndexTerm *new_OrgApacheLuceneIndexTerm_initWithNSString_withNSString_(void *a1, void *a2)
{
  v4 = [OrgApacheLuceneIndexTerm alloc];
  OrgApacheLuceneIndexTerm_initWithNSString_withNSString_(v4, a1, a2);
  return v4;
}

uint64_t OrgApacheLuceneIndexTerm_class_()
{
  if (qword_100554228 != -1)
  {
    sub_100092820();
  }

  return qword_100554220;
}

void *OrgApacheLuceneIndexMergePolicy_OneMerge_initWithJavaUtilList_(uint64_t a1, void *a2)
{
  *(a1 + 36) = -1;
  atomic_store(0xFFFFFFFFFFFFFFFFLL, (a1 + 80));
  if (!a2)
  {
LABEL_15:
    JreThrowNullPointerException();
  }

  if (![a2 size])
  {
    v14 = new_JavaLangRuntimeException_initWithNSString_(@"segments must include at least one segment");
    objc_exception_throw(v14);
  }

  v4 = new_JavaUtilArrayList_initWithJavaUtilCollection_(a2);
  JreStrongAssignAndConsume((a1 + 64), v4);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [a2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(a2);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if (!v10)
        {
          goto LABEL_15;
        }

        v11 = *(v10 + 8);
        if (!v11)
        {
          goto LABEL_15;
        }

        v7 += [v11 maxDoc];
      }

      v6 = [a2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 88) = v7;
  v12 = new_OrgApacheLuceneIndexMergeRateLimiter_initWithOrgApacheLuceneIndexMergePolicy_OneMerge_(a1);
  return JreStrongAssignAndConsume((a1 + 72), v12);
}

OrgApacheLuceneIndexMergePolicy_MergeAbortedException *new_OrgApacheLuceneIndexMergePolicy_MergeAbortedException_initWithNSString_(uint64_t a1)
{
  v2 = [OrgApacheLuceneIndexMergePolicy_MergeAbortedException alloc];
  JavaIoIOException_initWithNSString_(v2, a1);
  return v2;
}

id OrgApacheLuceneIndexSegmentInfo_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneUtilVersion_withNSString_withInt_withBoolean_withOrgApacheLuceneCodecsCodec_withJavaUtilMap_withByteArray_withJavaUtilMap_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char a6, void *a7, uint64_t a8, _DWORD *a9, uint64_t a10)
{
  v17 = OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(a2);
  JreStrongAssign((a1 + 16), v17);
  v18 = OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(a3);
  JreStrongAssign((a1 + 64), v18);
  v19 = OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(a4);
  JreStrongAssign((a1 + 8), v19);
  *(a1 + 24) = a5;
  *(a1 + 28) = a6;
  JreStrongAssign((a1 + 40), a7);
  v20 = OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(a8);
  JreStrongAssign((a1 + 48), v20);
  JreStrongAssign((a1 + 32), a9);
  if (a9 && a9[2] != 16)
  {
    JavaUtilArrays_toStringWithByteArray_(a9);
    v30 = JreStrcat("$$", v23, v24, v25, v26, v27, v28, v29, @"invalid id: ");
    v31 = new_JavaLangIllegalArgumentException_initWithNSString_(v30);
    objc_exception_throw(v31);
  }

  v21 = OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(a10);

  return JreStrongAssign((a1 + 56), v21);
}

id sub_100093DF8(void *a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexFileNames__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10005F0B4();
  }

  if (!OrgApacheLuceneIndexIndexFileNames_CODEC_FILE_PATTERN_ || (v2 = [OrgApacheLuceneIndexIndexFileNames_CODEC_FILE_PATTERN_ matcherWithJavaLangCharSequence:&stru_100484358], v17 = 0u, v18 = 0u, v19 = 0u, v20 = 0u, !a1))
  {
LABEL_15:
    JreThrowNullPointerException();
  }

  v3 = v2;
  result = [a1 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(a1);
        }

        if (!v3)
        {
          goto LABEL_15;
        }

        [v3 resetWithJavaLangCharSequence:*(*(&v17 + 1) + 8 * v7)];
        if (([v3 matches] & 1) == 0)
        {
          if ((atomic_load_explicit(OrgApacheLuceneIndexIndexFileNames__initialized, memory_order_acquire) & 1) == 0)
          {
            sub_1000941B8();
          }

          [OrgApacheLuceneIndexIndexFileNames_CODEC_FILE_PATTERN_ pattern];
          v15 = JreStrcat("$$$$", v8, v9, v10, v11, v12, v13, v14, @"invalid codec filename '");
          v16 = new_JavaLangIllegalArgumentException_initWithNSString_(v15);
          objc_exception_throw(v16);
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      result = [a1 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

OrgApacheLuceneIndexSegmentInfo *new_OrgApacheLuceneIndexSegmentInfo_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneUtilVersion_withNSString_withInt_withBoolean_withOrgApacheLuceneCodecsCodec_withJavaUtilMap_withByteArray_withJavaUtilMap_(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, void *a6, uint64_t a7, _DWORD *a8, uint64_t a9)
{
  v17 = [OrgApacheLuceneIndexSegmentInfo alloc];
  OrgApacheLuceneIndexSegmentInfo_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneUtilVersion_withNSString_withInt_withBoolean_withOrgApacheLuceneCodecsCodec_withJavaUtilMap_withByteArray_withJavaUtilMap_(v17, a1, a2, a3, a4, a5, a6, a7, a8, a9);
  return v17;
}

id OrgApacheLuceneUtilAutomatonTooComplexToDeterminizeException_initWithOrgApacheLuceneUtilAutomatonRegExp_withOrgApacheLuceneUtilAutomatonTooComplexToDeterminizeException_(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a2 || ([a2 getOriginalString], !a3))
  {
    JreThrowNullPointerException();
  }

  v15 = *(a3 + 104);
  v13 = JreStrcat("$$$I$", v6, v7, v8, v9, v10, v11, v12, @"Determinizing ");
  JavaLangRuntimeException_initWithNSString_withJavaLangThrowable_(a1, v13, a3);
  JreStrongAssign((a1 + 96), a2);
  result = JreStrongAssign((a1 + 88), *(a3 + 88));
  *(a1 + 104) = *(a3 + 104);
  return result;
}

id OrgApacheLuceneUtilAutomatonTooComplexToDeterminizeException_initWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(uint64_t a1, void *a2, int a3)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  [a2 getNumStates];
  [a2 getNumTransitions];
  v13 = JreStrcat("$I$I$I$", v6, v7, v8, v9, v10, v11, v12, @"Determinizing automaton with ");
  JavaLangRuntimeException_initWithNSString_(a1, v13);
  JreStrongAssign((a1 + 88), a2);
  result = JreStrongAssign((a1 + 96), 0);
  *(a1 + 104) = a3;
  return result;
}

OrgApacheLuceneUtilAutomatonTooComplexToDeterminizeException *new_OrgApacheLuceneUtilAutomatonTooComplexToDeterminizeException_initWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(void *a1, int a2)
{
  v4 = [OrgApacheLuceneUtilAutomatonTooComplexToDeterminizeException alloc];
  OrgApacheLuceneUtilAutomatonTooComplexToDeterminizeException_initWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(v4, a1, a2);
  return v4;
}

id sub_1000944EC(uint64_t a1, void *a2, int a3, char a4, char a5)
{
  OrgApacheLuceneSearchTopDocsCollector_initWithOrgApacheLuceneUtilPriorityQueue_(a1, a2);
  *(a1 + 20) = 2143289344;
  result = JreStrongAssign((a1 + 32), 0);
  *(a1 + 48) = a5;
  *(a1 + 24) = a3;
  *(a1 + 49) = a4;
  return result;
}

OrgApacheLuceneSearchTopFieldCollector_NonScoringCollector *OrgApacheLuceneSearchTopFieldCollector_createWithOrgApacheLuceneSearchSort_withInt_withBoolean_withBoolean_withBoolean_(void *a1, uint64_t a2, char a3, int a4, int a5)
{
  if ((atomic_load_explicit(&OrgApacheLuceneSearchTopFieldCollector__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100096E48();
  }

  return OrgApacheLuceneSearchTopFieldCollector_createWithOrgApacheLuceneSearchSort_withInt_withOrgApacheLuceneSearchFieldDoc_withBoolean_withBoolean_withBoolean_(a1, a2, 0, a3, a4, a5);
}

OrgApacheLuceneSearchTopFieldCollector_NonScoringCollector *OrgApacheLuceneSearchTopFieldCollector_createWithOrgApacheLuceneSearchSort_withInt_withOrgApacheLuceneSearchFieldDoc_withBoolean_withBoolean_withBoolean_(void *a1, uint64_t a2, void *a3, char a4, int a5, int a6)
{
  if (atomic_load_explicit(&OrgApacheLuceneSearchTopFieldCollector__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_20;
    }
  }

  else
  {
    sub_100096E48();
    if (!a1)
    {
      goto LABEL_20;
    }
  }

  v12 = a1[1];
  if (!v12)
  {
    goto LABEL_20;
  }

  if (!v12[2])
  {
    v19 = @"Sort must contain at least one field";
    goto LABEL_26;
  }

  if (a2 <= 0)
  {
    v19 = @"numHits must be > 0; please use TotalHitCountCollector if you just need the total hit count";
    goto LABEL_26;
  }

  v13 = OrgApacheLuceneSearchFieldValueHitQueue_createWithOrgApacheLuceneSearchSortFieldArray_withInt_(v12, a2);
  if (a3)
  {
    v14 = a3[3];
    if (!v14)
    {
      v19 = @"after.fields wasn't set; you must pass fillFields=true for the previous search";
      goto LABEL_26;
    }

    v15 = *(v14 + 8);
    v16 = [a1 getSort];
    if (v16)
    {
      if (v15 == v16[2])
      {
        v17 = [OrgApacheLuceneSearchTopFieldCollector_PagingFieldCollector alloc];
        sub_100096794(v17, a1, v13, a3, a2, a4, a5, a6);
        goto LABEL_16;
      }

      v20 = *(a3[3] + 8);
      v21 = [a1 getSort];
      if (v21)
      {
        v30 = v21[2];
        v19 = JreStrcat("$I$I", v22, v23, v24, v25, v26, v27, v28, @"after.fields has ");
LABEL_26:
        v29 = new_JavaLangIllegalArgumentException_initWithNSString_(v19);
        objc_exception_throw(v29);
      }
    }

LABEL_20:
    JreThrowNullPointerException();
  }

  if (a6)
  {
    v17 = [OrgApacheLuceneSearchTopFieldCollector_ScoringMaxScoreCollector alloc];
    sub_1000944EC(v17, v13, a2, a4, 1);
    JreStrongAssign(&v17->queue_, v13);
    *(&v17->super.super.totalHits_ + 1) = 0x800000;
  }

  else if (a5)
  {
    v17 = [OrgApacheLuceneSearchTopFieldCollector_ScoringNoMaxScoreCollector alloc];
    sub_1000944EC(v17, v13, a2, a4, 1);
    JreStrongAssign(&v17->queue_, v13);
  }

  else
  {
    v17 = [OrgApacheLuceneSearchTopFieldCollector_NonScoringCollector alloc];
    sub_1000953EC(v17, a1, v13, a2, a4);
  }

LABEL_16:

  return v17;
}

id sub_1000948A0(uint64_t a1, int a2, int a3, float a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  v6 = [v4 addWithId:{new_OrgApacheLuceneSearchFieldValueHitQueue_Entry_initWithInt_withInt_withFloat_(a2, *(a1 + 44) + a3, a4)}];
  result = JreStrongAssign((a1 + 32), v6);
  *(a1 + 40) = *(a1 + 16) == *(a1 + 24);
  return result;
}

id sub_100094958(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (!v2 || (*(v2 + 12) = *(a1 + 44) + a2, (v4 = *(a1 + 8)) == 0))
  {
    JreThrowNullPointerException();
  }

  v5 = [v4 updateTop];

  return JreStrongAssign((a1 + 32), v5);
}

id sub_1000949E8(uint64_t a1, int a2, float a3)
{
  v3 = *(a1 + 32);
  if (!v3 || (*(v3 + 12) = *(a1 + 44) + a2, *(*(a1 + 32) + 8) = a3, (v5 = *(a1 + 8)) == 0))
  {
    JreThrowNullPointerException();
  }

  v6 = [v5 updateTop];

  return JreStrongAssign((a1 + 32), v6);
}

uint64_t sub_100094EC0(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  JreStrongAssign((a1 + 8), a2);
  JreStrongAssign((a1 + 16), a3);
  if (!a2)
  {
    goto LABEL_6;
  }

  v6 = *(a2 + 8);
  if (v6 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v6, 0);
  }

  JreStrongAssign((a1 + 24), *(a2 + 24));
  if (!a3)
  {
LABEL_6:
    JreThrowNullPointerException();
  }

  result = a3[2];
  if (result <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, 0);
  }

  *(a1 + 32) = a3[3];
  return result;
}

uint64_t sub_100094F84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    goto LABEL_17;
  }

  v5 = *(a1 + 32);
  result = [v3 compareBottomWithInt:a2] * v5;
  if (result)
  {
    return result;
  }

  v7 = *(a1 + 8);
  if (!v7)
  {
LABEL_17:
    JreThrowNullPointerException();
  }

  v8 = 1;
  while (1)
  {
    v9 = *(v7 + 8);
    if (v8 >= v9)
    {
      return 0;
    }

    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = *(v10 + 8);
      if (v8 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, v8);
      }

      v12 = *(v10 + 12 + 4 * v8);
      if (v8 >= v9)
      {
        IOSArray_throwOutOfBoundsWithMsg(v9, v8);
      }

      v13 = *(v7 + 24 + 8 * v8);
      if (v13)
      {
        result = [v13 compareBottomWithInt:a2] * v12;
        if (result)
        {
          return result;
        }

        v7 = *(a1 + 8);
        ++v8;
        if (v7)
        {
          continue;
        }
      }
    }

    goto LABEL_17;
  }
}

void *sub_1000950A4(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = (v3 + 24);
  v5 = v3 + 24 + 8 * *(v3 + 8);
  if (v3 + 24 < v5)
  {
    while (1)
    {
      v8 = *v4;
      if (!*v4)
      {
        break;
      }

      ++v4;
      result = [v8 copy__WithInt:a2 withInt:a3];
      if (v4 >= v5)
      {
        return result;
      }
    }

LABEL_6:
    JreThrowNullPointerException();
  }

  return result;
}

void *sub_100095130(void *result, uint64_t a2)
{
  v2 = result[1];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = (v2 + 24);
  v4 = v2 + 24 + 8 * *(v2 + 8);
  if (v2 + 24 < v4)
  {
    while (1)
    {
      v6 = *v3;
      if (!*v3)
      {
        break;
      }

      ++v3;
      result = [v6 setBottomWithInt:a2];
      if (v3 >= v4)
      {
        return result;
      }
    }

LABEL_6:
    JreThrowNullPointerException();
  }

  return result;
}

uint64_t sub_1000951B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    goto LABEL_17;
  }

  v5 = *(a1 + 32);
  result = [v3 compareTopWithInt:a2] * v5;
  if (result)
  {
    return result;
  }

  v7 = *(a1 + 8);
  if (!v7)
  {
LABEL_17:
    JreThrowNullPointerException();
  }

  v8 = 1;
  while (1)
  {
    v9 = *(v7 + 8);
    if (v8 >= v9)
    {
      return 0;
    }

    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = *(v10 + 8);
      if (v8 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, v8);
      }

      v12 = *(v10 + 12 + 4 * v8);
      if (v8 >= v9)
      {
        IOSArray_throwOutOfBoundsWithMsg(v9, v8);
      }

      v13 = *(v7 + 24 + 8 * v8);
      if (v13)
      {
        result = [v13 compareTopWithInt:a2] * v12;
        if (result)
        {
          return result;
        }

        v7 = *(a1 + 8);
        ++v8;
        if (v7)
        {
          continue;
        }
      }
    }

    goto LABEL_17;
  }
}

id sub_1000953EC(uint64_t a1, void *a2, void *a3, int a4, char a5)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  sub_1000944EC(a1, a3, a4, a5, [a2 needsScores]);

  return JreStrongAssign((a1 + 56), a3);
}

id sub_100096794(uint64_t a1, void *a2, void *a3, void *a4, int a5, char a6, char a7, char a8)
{
  v15 = 1;
  if ((a7 & 1) == 0 && (a8 & 1) == 0)
  {
    if (!a2)
    {
      goto LABEL_18;
    }

    v15 = [a2 needsScores];
  }

  sub_1000944EC(a1, a3, a5, a6, v15);
  JreStrongAssign((a1 + 56), a3);
  *(a1 + 64) = a7;
  *(a1 + 65) = a8;
  result = JreStrongAssign((a1 + 72), a4);
  *(a1 + 20) = -8388608;
  if (!a3 || (v17 = a3[4]) == 0)
  {
LABEL_18:
    JreThrowNullPointerException();
  }

  if (*(v17 + 8) >= 1)
  {
    v18 = 0;
    while (1)
    {
      v19 = *(v17 + 24 + 8 * v18);
      objc_opt_class();
      if (!v19)
      {
        break;
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }

      if (!a4)
      {
        break;
      }

      v20 = a4[3];
      if (!v20)
      {
        break;
      }

      v21 = *(v20 + 8);
      if (v18 >= v21)
      {
        IOSArray_throwOutOfBoundsWithMsg(v21, v18);
      }

      result = [v19 setTopValueWithId:*(v20 + 24 + 8 * v18++)];
      if (v18 >= *(v17 + 8))
      {
        return result;
      }
    }

    goto LABEL_18;
  }

  return result;
}

id ComAppleContextkitUtilBytesRefPool_initWithInt_(uint64_t a1, int a2)
{
  if (a2 >= 1)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0x8000;
  }

  v4 = [ComAppleContextkitUtilBytesRefPool_DirectAllocator alloc];
  v4->super.blockSize_ = v3;
  v5 = v4;

  return ComAppleContextkitUtilBytesRefPool_initWithComAppleContextkitUtilBytesRefPool_Allocator_(a1, v5);
}

id ComAppleContextkitUtilBytesRefPool_initWithComAppleContextkitUtilBytesRefPool_Allocator_(uint64_t a1, _DWORD *a2)
{
  v4 = +[IOSObjectArray newArrayWithLength:type:](IOSObjectArray, "newArrayWithLength:type:", 10, IOSClass_arrayType(+[IOSClass byteClass], 1u));
  JreStrongAssignAndConsume((a1 + 8), v4);
  *(a1 + 16) = -1;
  result = JreStrongAssign((a1 + 40), a2);
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v6 = a2[2];
  *(a1 + 48) = v6;
  *(a1 + 20) = v6;
  *(a1 + 32) = -v6;
  return result;
}

uint64_t OrgApacheLuceneIndexFilterLeafReader_unwrapWithOrgApacheLuceneIndexLeafReader_(uint64_t a1)
{
  objc_opt_class();
  while ((objc_opt_isKindOfClass() & 1) != 0)
  {
    objc_opt_class();
    if (!a1)
    {
      JreThrowNullPointerException();
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    a1 = *(a1 + 48);
    objc_opt_class();
  }

  return a1;
}

id OrgApacheLuceneIndexFilterLeafReader_initWithOrgApacheLuceneIndexLeafReader_(id *a1, void *a2)
{
  OrgApacheLuceneIndexLeafReader_init(a1);
  if (!a2)
  {
    v5 = new_JavaLangNullPointerException_initWithNSString_(@"incoming LeafReader cannot be null");
    objc_exception_throw(v5);
  }

  JreStrongAssign(a1 + 6, a2);

  return [a2 registerParentReaderWithOrgApacheLuceneIndexIndexReader:a1];
}

OrgApacheLuceneIndexFilterLeafReader_CoreClosedListenerWrapper *sub_100097D60(OrgApacheLuceneIndexFilterLeafReader_CoreClosedListenerWrapper *result, void *a2, void *a3)
{
  v3 = result;
  if (a2 != a3)
  {
    v6 = [OrgApacheLuceneIndexFilterLeafReader_CoreClosedListenerWrapper alloc];
    JreStrongAssign(&v6->in_, v3);
    JreStrongAssign(&v6->thisCoreKey_, a2);
    JreStrongAssign(&v6->inCoreKey_, a3);

    return v6;
  }

  return result;
}

id OrgApacheLuceneIndexFilterLeafReader_FilterFields_initWithOrgApacheLuceneIndexFields_(uint64_t a1, void *a2)
{
  OrgApacheLuceneIndexFields_init(a1, a2);
  if (!a2)
  {
    v5 = new_JavaLangNullPointerException_initWithNSString_(@"incoming Fields cannot be null");
    objc_exception_throw(v5);
  }

  return JreStrongAssign((a1 + 8), a2);
}

id OrgApacheLuceneIndexFilterLeafReader_FilterTerms_initWithOrgApacheLuceneIndexTerms_(uint64_t a1, void *a2)
{
  OrgApacheLuceneIndexTerms_init();
  if (!a2)
  {
    v5 = new_JavaLangNullPointerException_initWithNSString_(@"incoming Terms cannot be null");
    objc_exception_throw(v5);
  }

  return JreStrongAssign((a1 + 8), a2);
}

id OrgApacheLuceneIndexFilterLeafReader_FilterTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_(uint64_t a1, void *a2)
{
  OrgApacheLuceneIndexTermsEnum_init(a1);
  if (!a2)
  {
    v5 = new_JavaLangNullPointerException_initWithNSString_(@"incoming TermsEnum cannot be null");
    objc_exception_throw(v5);
  }

  return JreStrongAssign((a1 + 16), a2);
}

id OrgApacheLuceneIndexFilterLeafReader_FilterPostingsEnum_initWithOrgApacheLuceneIndexPostingsEnum_(uint64_t a1, void *a2)
{
  OrgApacheLuceneIndexPostingsEnum_init(a1, a2);
  if (!a2)
  {
    v5 = new_JavaLangNullPointerException_initWithNSString_(@"incoming PostingsEnum cannot be null");
    objc_exception_throw(v5);
  }

  return JreStrongAssign((a1 + 16), a2);
}

id OrgApacheLuceneCodecsCodec_initWithNSString_(uint64_t a1, void *a2)
{
  OrgApacheLuceneUtilNamedSPILoader_checkServiceNameWithNSString_(a2);

  return JreStrongAssign((a1 + 8), a2);
}

id OrgApacheLuceneCodecsCodec_forNameWithNSString_(uint64_t a1)
{
  v2 = sub_100099314();

  return [v2 lookupWithNSString:a1];
}

id OrgApacheLuceneCodecsCodec_setDefaultWithOrgApacheLuceneCodecsCodec_(uint64_t a1)
{
  if ((atomic_load_explicit(&OrgApacheLuceneCodecsCodec_Holder__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100099360();
  }

  v2 = OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(a1);

  return JreStrongAssign(&qword_100554250, v2);
}

uint64_t OrgApacheLuceneCodecsCodec_getDefault()
{
  if ((atomic_load_explicit(&OrgApacheLuceneCodecsCodec_Holder__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100099360();
  }

  if (!qword_100554250)
  {
    v1 = new_JavaLangIllegalStateException_initWithNSString_(@"You tried to lookup the default Codec before all Codecs could be initialized. This likely happens if you try to get it from a Codec's ctor.");
    objc_exception_throw(v1);
  }

  if ((atomic_load_explicit(&OrgApacheLuceneCodecsCodec_Holder__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100099360();
  }

  return qword_100554250;
}

uint64_t OrgApacheLuceneCodecsCodec_class_()
{
  if (qword_100554260 != -1)
  {
    sub_10009936C();
  }

  return qword_100554258;
}

uint64_t sub_100099314()
{
  if ((atomic_load_explicit(&OrgApacheLuceneCodecsCodec_Holder__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100099360();
  }

  result = qword_100554268;
  if (!qword_100554268)
  {
    v1 = new_JavaLangIllegalStateException_initWithNSString_(@"You tried to lookup a Codec by name before all Codecs could be initialized. This likely happens if you call Codec#forName from a Codec's ctor.");
    objc_exception_throw(v1);
  }

  return result;
}

id OrgApacheLuceneIndexCompositeReaderContext_createWithOrgApacheLuceneIndexCompositeReader_(void *a1)
{
  v2 = [OrgApacheLuceneIndexCompositeReaderContext_Builder alloc];
  v3 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume(&v2->leaves_, v3);
  v2->leafDocBase_ = 0;
  JreStrongAssign(&v2->reader_, a1);
  v4 = v2;

  return [(OrgApacheLuceneIndexCompositeReaderContext_Builder *)v4 build];
}

id sub_1000994AC(id *a1, void *a2, void *a3, int a4, int a5, void *a6, void *a7)
{
  OrgApacheLuceneIndexIndexReaderContext_initWithOrgApacheLuceneIndexCompositeReaderContext_withInt_withInt_(a1, a2, a4, a5);
  v11 = JavaUtilCollections_unmodifiableListWithJavaUtilList_(a6);
  JreStrongAssign(a1 + 4, v11);
  if (a7)
  {
    v12 = JavaUtilCollections_unmodifiableListWithJavaUtilList_(a7);
  }

  else
  {
    v12 = 0;
  }

  JreStrongAssign(a1 + 5, v12);

  return JreStrongAssign(a1 + 6, a3);
}

OrgApacheLuceneIndexLeafReaderContext *sub_1000996D4(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (!a3 || (objc_opt_isKindOfClass() & 1) != 0)
    {
      v10 = *(a1 + 16);
      if (v10)
      {
        v11 = new_OrgApacheLuceneIndexLeafReaderContext_initWithOrgApacheLuceneIndexCompositeReaderContext_withOrgApacheLuceneIndexLeafReader_withInt_withInt_withInt_withInt_(a2, a3, a4, a5, [v10 size], *(a1 + 24));
        [*(a1 + 16) addWithId:v11];
        if (a3)
        {
          *(a1 + 24) += [a3 maxDoc];
          return v11;
        }
      }

LABEL_19:
      JreThrowNullPointerException();
    }

LABEL_20:
    JreThrowClassCastException();
  }

  objc_opt_class();
  if (!a3)
  {
    goto LABEL_19;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_20;
  }

  v12 = [a3 getSequentialSubReaders];
  if (!v12)
  {
    goto LABEL_19;
  }

  v13 = v12;
  v14 = +[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", [v12 size], OrgApacheLuceneIndexIndexReaderContext_class_());
  v15 = JavaUtilArrays_asListWithNSObjectArray_(v14);
  if (a2)
  {
    v16 = [OrgApacheLuceneIndexCompositeReaderContext alloc];
    v17 = v16;
    v18 = a2;
    v19 = a3;
    v20 = a4;
    v21 = a5;
    v22 = v15;
    v23 = 0;
  }

  else
  {
    v24 = *(a1 + 16);
    v16 = [OrgApacheLuceneIndexCompositeReaderContext alloc];
    v17 = v16;
    v18 = 0;
    v19 = a3;
    v20 = 0;
    v21 = 0;
    v22 = v15;
    v23 = v24;
  }

  sub_1000994AC(&v16->super.super.isa, v18, v19, v20, v21, v22, v23);
  v11 = v17;
  v25 = [v13 size];
  if (v25 >= 1)
  {
    v26 = v25;
    v27 = 0;
    v28 = 0;
    while (1)
    {
      v29 = [v13 getWithInt:v27];
      if (!v15)
      {
        break;
      }

      v30 = v29;
      [(JavaUtilArrays_ArrayList *)v15 setWithInt:v27 withId:sub_1000996D4(a1, v11, v29, v27, v28)];
      if (!v30)
      {
        break;
      }

      v28 = [v30 maxDoc] + v28;
      v27 = (v27 + 1);
      if (v26 == v27)
      {
        return v11;
      }
    }

    goto LABEL_19;
  }

  return v11;
}

uint64_t OrgApacheLuceneUtilSparseFixedBitSet_initWithInt_(uint64_t a1, int a2)
{
  OrgApacheLuceneUtilBitSet_init();
  if (a2 <= 0)
  {
    v10 = new_JavaLangIllegalArgumentException_initWithNSString_(@"length needs to be >= 1");
    objc_exception_throw(v10);
  }

  *(a1 + 24) = a2;
  if ((atomic_load_explicit(OrgApacheLuceneUtilSparseFixedBitSet__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10009BB04();
  }

  v4 = a2 >> 12;
  if ((a2 & 0xFFF) != 0)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = v4;
  }

  JreStrongAssignAndConsume((a1 + 8), [IOSLongArray newArrayWithLength:v5]);
  v6 = +[IOSObjectArray newArrayWithLength:type:](IOSObjectArray, "newArrayWithLength:type:", v5, IOSClass_arrayType(+[IOSClass longClass], 1u));
  JreStrongAssignAndConsume((a1 + 16), v6);
  v7 = qword_100554270;
  v8 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithId_(*(a1 + 8)) + v7;
  result = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithNSObjectArray_(*(a1 + 16));
  *(a1 + 32) = v8 + result;
  return result;
}

id sub_100099EC0(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  v6 = *(v4 + 8);
  if ((a2 & 0x80000000) != 0 || v6 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v6, a2);
  }

  *(v4 + 16 + 8 * a2) = 1 << a3;
  v7 = *(a1 + 16);
  v9 = 1 << a4;
  result = IOSObjectArray_SetAndConsume(v7, a2, [IOSLongArray newArrayWithLongs:&v9 count:1]);
  ++*(a1 + 28);
  *(a1 + 32) += qword_100554278;
  return result;
}

uint64_t sub_100099FF4(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    goto LABEL_21;
  }

  v9 = 1 << a3;
  v10 = a2;
  v11 = *(v5 + 8);
  if ((a2 & 0x80000000) != 0 || v11 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v11, a2);
  }

  *(v5 + 16 + 8 * a2) |= v9;
  v12 = JavaLangLong_bitCountWithLong_((v9 - 1) & a5);
  v13 = *(a1 + 16);
  if (!v13)
  {
    goto LABEL_21;
  }

  v14 = v12;
  v15 = *(v13 + 8);
  if ((a2 & 0x80000000) != 0 || v15 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v15, a2);
  }

  v16 = *(v13 + 24 + 8 * v10);
  if (!v16)
  {
LABEL_21:
    JreThrowNullPointerException();
  }

  v17 = v16[2];
  v18 = v17 - 1;
  if (v17 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v17, v18);
  }

  if (*&v16[2 * v18 + 4])
  {
    v19 = v16[2] + 1;
    if ((atomic_load_explicit(OrgApacheLuceneUtilSparseFixedBitSet__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10009BB04();
    }

    v20 = v19 + (v19 >> 1);
    if (v20 > 50)
    {
      v20 = 64;
    }

    v21 = [IOSLongArray arrayWithLength:v20];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v16, 0, v21, 0, v14);
    v22 = 1 << a4;
    size = v21->super.size_;
    if ((v14 & 0x80000000) != 0 || v14 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v14);
    }

    v21->buffer_[v14] = v22;
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v16, v14, v21, (v14 + 1), v16[2] - v14);
    IOSObjectArray_Set(*(a1 + 16), v10, v21);
    v24 = OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithLongArray_(v21);
    result = OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithLongArray_(v16);
    *(a1 + 32) += v24 - result;
  }

  else
  {
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v16, v14, v16, (v14 + 1), v16[2] + ~v14);
    result = v16[2];
    if ((v14 & 0x80000000) != 0 || v14 >= result)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, v14);
    }

    *&v16[2 * v14 + 4] = 1 << a4;
  }

  ++*(a1 + 28);
  return result;
}

uint64_t sub_10009A2D8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_22;
  }

  result = *(v4 + 8);
  if ((a2 & 0x80000000) != 0 || result <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, a2);
  }

  v10 = *(v4 + 16 + 8 * a2);
  if ((v10 & (1 << a3)) != 0)
  {
    v11 = JavaLangLong_bitCountWithLong_(v10 & ((1 << a3) - 1));
    v12 = *(a1 + 16);
    if (!v12)
    {
      goto LABEL_22;
    }

    v13 = v11;
    v14 = *(v12 + 8);
    if ((a2 & 0x80000000) != 0 || v14 <= a2)
    {
      IOSArray_throwOutOfBoundsWithMsg(v14, a2);
    }

    v15 = *(v12 + 24 + 8 * a2);
    if (!v15)
    {
      goto LABEL_22;
    }

    v16 = *(v15 + 8);
    if ((v13 & 0x80000000) != 0 || v13 >= v16)
    {
      IOSArray_throwOutOfBoundsWithMsg(v16, v13);
    }

    v17 = *(v15 + 16 + 8 * v13) & a4;
    if (v17)
    {
      v18 = *(a1 + 16);
      v19 = *(v18 + 8);
      if ((a2 & 0x80000000) != 0 || v19 <= a2)
      {
        IOSArray_throwOutOfBoundsWithMsg(v19, a2);
      }

      v20 = *(v18 + 24 + 8 * a2);
      if (v20)
      {
        result = *(v20 + 8);
        if ((v13 & 0x80000000) != 0 || v13 >= result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, v13);
        }

        *(v20 + 16 + 8 * v13) = v17;
        return result;
      }

LABEL_22:
      JreThrowNullPointerException();
    }

    return sub_10009A4E4(a1, a2, a3, v10, v13);
  }

  return result;
}

uint64_t sub_10009A4E4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    goto LABEL_15;
  }

  v9 = a4 & ~(1 << a3);
  v10 = a2;
  v11 = *(v5 + 8);
  if ((a2 & 0x80000000) != 0 || v11 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v11, a2);
  }

  *(v5 + 16 + 8 * a2) = v9;
  if (!v9)
  {
    v18 = *(a1 + 16);
    if (v18)
    {
      result = IOSObjectArray_Set(v18, a2, 0);
      goto LABEL_14;
    }

LABEL_15:
    JreThrowNullPointerException();
  }

  v12 = JavaLangLong_bitCountWithLong_(a4 & ~(1 << a3));
  v13 = *(a1 + 16);
  if (!v13)
  {
    goto LABEL_15;
  }

  v14 = v12;
  v15 = *(v13 + 8);
  if ((a2 & 0x80000000) != 0 || v15 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v15, a2);
  }

  v16 = *(v13 + 24 + 8 * v10);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v16, (a5 + 1), v16, a5, (v14 - a5));
  if (!v16)
  {
    goto LABEL_15;
  }

  result = v16[2];
  if ((v14 & 0x80000000) != 0 || v14 >= result)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, v14);
  }

  *&v16[2 * v14 + 4] = 0;
LABEL_14:
  --*(a1 + 28);
  return result;
}

uint64_t sub_10009A7DC(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v4 = a4;
  v5 = a3;
  v8 = a3 >> 6;
  explicit = atomic_load_explicit(OrgApacheLuceneUtilSparseFixedBitSet__initialized, memory_order_acquire);
  if (a3 >> 6 != a4 >> 6)
  {
    v10 = a4 >> 6;
    if ((explicit & 1) == 0)
    {
      sub_10009BB04();
    }

    sub_10009A2D8(a1, a2, v4 >> 6, -2 << v4);
    for (i = v10 - 1; i > v8; --i)
    {
      sub_10009A2D8(a1, a2, i, 0);
    }

    explicit = atomic_load_explicit(OrgApacheLuceneUtilSparseFixedBitSet__initialized, memory_order_acquire);
    LOBYTE(v4) = 63;
  }

  if ((explicit & 1) == 0)
  {
    objc_opt_class();
  }

  return sub_10009A2D8(a1, a2, v8, ~(((2 << (v4 - v5)) - 1) << v5));
}

uint64_t sub_10009A8F0(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_16;
  }

  v4 = a2;
  v5 = a2 << 12;
  while (1)
  {
    v6 = *(v2 + 8);
    if (v4 >= v6)
    {
      return 0x7FFFFFFFLL;
    }

    if (v4 < 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v6, v4);
    }

    v7 = *(v2 + 16 + 8 * v4);
    if (v7)
    {
      break;
    }

    ++v4;
    v2 = *(a1 + 8);
    v5 += 4096;
    if (!v2)
    {
      goto LABEL_16;
    }
  }

  v9 = JavaLangLong_numberOfTrailingZerosWithLong_(v7);
  v10 = *(a1 + 16);
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = v9;
  v12 = *(v10 + 8);
  if (v4 < 0 || v12 <= v4)
  {
    IOSArray_throwOutOfBoundsWithMsg(v12, v4);
  }

  v13 = *(v10 + 24 + 8 * v4);
  if (!v13)
  {
LABEL_16:
    JreThrowNullPointerException();
  }

  v14 = *(v13 + 8);
  if (v14 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v14, 0);
  }

  return v5 | (v11 << 6) | JavaLangLong_numberOfTrailingZerosWithLong_(*(v13 + 16));
}

uint64_t sub_10009AC00(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = a2;
  v4 = a2 << 12;
  while (1)
  {
    v5 = *(a1 + 8);
    if (!v5)
    {
      goto LABEL_17;
    }

    v6 = *(v5 + 8);
    if (v2 >= v6)
    {
      IOSArray_throwOutOfBoundsWithMsg(v6, v2);
    }

    v7 = v5 + 16;
    v8 = *(v5 + 16 + 8 * v2);
    if (v8)
    {
      break;
    }

    v4 -= 4096;
    v9 = v2 <= 0;
    v2 = (v2 - 1);
    if (v9)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v11 = JavaLangLong_numberOfLeadingZerosWithLong_(*(v7 + 8 * v2));
  v12 = *(a1 + 16);
  if (!v12)
  {
    goto LABEL_17;
  }

  v13 = v11;
  v14 = *(v12 + 8);
  if (v2 >= v14)
  {
    IOSArray_throwOutOfBoundsWithMsg(v14, v2);
  }

  v15 = *(v12 + 24 + 8 * v2);
  if (!v15)
  {
LABEL_17:
    JreThrowNullPointerException();
  }

  v16 = JavaLangLong_bitCountWithLong_(v8);
  v17 = *(v15 + 8);
  v18 = v16 - 1;
  if (v18 < 0 || v18 >= v17)
  {
    IOSArray_throwOutOfBoundsWithMsg(v17, v18);
  }

  return (4032 - (v13 << 6)) | v4 | (63 - JavaLangLong_numberOfLeadingZerosWithLong_(*(v15 + 16 + 8 * v18)));
}

uint64_t sub_10009AF68(uint64_t a1, uint64_t a2, char a3)
{
  if (((1 << a3) & a1) == 0)
  {
    return 0;
  }

  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v4 = JavaLangLong_bitCountWithLong_(((1 << a3) - 1) & a1);
  v5 = *(a2 + 8);
  if (v4 < 0 || v4 >= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(v5, v4);
  }

  return *(a2 + 16 + 8 * v4);
}

uint64_t sub_10009B00C(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, unsigned int a5)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    goto LABEL_30;
  }

  v10 = a2;
  v11 = *(v5 + 8);
  if ((a2 & 0x80000000) != 0 || v11 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v11, a2);
  }

  v12 = *(v5 + 16 + 8 * a2);
  if (v12)
  {
    v13 = *(a1 + 16);
    if (!v13)
    {
      goto LABEL_30;
    }

    v14 = *(v13 + 8);
    if ((a2 & 0x80000000) != 0 || v14 <= a2)
    {
      IOSArray_throwOutOfBoundsWithMsg(v14, a2);
    }

    v15 = *(v13 + 24 + 8 * a2);
    v16 = v12 | a3;
    v17 = JavaLangLong_bitCountWithLong_(v12 | a3);
    if (!v15)
    {
      goto LABEL_30;
    }

    v18 = v17;
    v35 = a2;
    v36 = a5;
    v37 = a1;
    v19 = v15;
    if (*(v15 + 8) < v17)
    {
      if ((atomic_load_explicit(OrgApacheLuceneUtilSparseFixedBitSet__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_10009BB04();
      }

      v20 = v18 + (v18 >> 1);
      if (v20 > 50)
      {
        v20 = 64;
      }

      v19 = [IOSLongArray arrayWithLength:v20];
    }

    v21 = JavaLangLong_numberOfLeadingZerosWithLong_(v12 | a3);
    v22 = JavaLangLong_bitCountWithLong_(v12 | a3);
    if (v21 <= 63)
    {
      v23 = (v22 - 1);
      while (1)
      {
        v24 = sub_10009AF68(v12, v15, 63 - v21);
        v25 = sub_10009AF68(a3, a4, 63 - v21);
        if (!v19)
        {
          break;
        }

        v26 = v25;
        size = v19->super.size_;
        if ((v23 & 0x80000000) != 0 || v23 >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v23);
        }

        v19->buffer_[v23] = v26 | v24;
        v21 += 1 + JavaLangLong_numberOfLeadingZerosWithLong_(v16 << (v21 + 1));
        v23 = (v23 - 1);
        if (v21 >= 64)
        {
          goto LABEL_23;
        }
      }

LABEL_30:
      JreThrowNullPointerException();
    }

LABEL_23:
    v28 = *(v37 + 8);
    v29 = *(v28 + 8);
    if ((v35 & 0x80000000) != 0 || v29 <= v35)
    {
      IOSArray_throwOutOfBoundsWithMsg(v29, v35);
    }

    *(v28 + 16 + 8 * v10) = v16;
    IOSObjectArray_Set(*(v37 + 16), v10, v19);
    result = JavaLangLong_bitCountWithLong_(v12 & a3);
    *(v37 + 28) += v36 - result;
  }

  else
  {
    v31 = *(a1 + 8);
    v32 = *(v31 + 8);
    if ((a2 & 0x80000000) != 0 || v32 <= a2)
    {
      IOSArray_throwOutOfBoundsWithMsg(v32, a2);
    }

    *(v31 + 16 + 8 * a2) = a3;
    v33 = *(a1 + 16);
    if (!v33)
    {
      goto LABEL_30;
    }

    v34 = JavaUtilArrays_copyOfWithLongArray_withInt_(a4, a5);
    result = IOSObjectArray_Set(v33, v10, v34);
    *(a1 + 28) += a5;
  }

  return result;
}

uint64_t sub_10009B354(uint64_t result, uint64_t a2)
{
  if (!a2 || (v3 = *(a2 + 8)) == 0)
  {
LABEL_13:
    JreThrowNullPointerException();
  }

  v4 = result;
  v5 = 0;
  while (v5 < *(v3 + 8))
  {
    v6 = v3 + 16;
    v7 = *(v6 + 8 * v5);
    if (v7)
    {
      v8 = *(a2 + 16);
      if (!v8)
      {
        goto LABEL_13;
      }

      v9 = *(v8 + 8);
      if (v5 >= v9)
      {
        IOSArray_throwOutOfBoundsWithMsg(v9, v5);
      }

      v10 = *(v8 + 24 + 8 * v5);
      v11 = JavaLangLong_bitCountWithLong_(*(v6 + 8 * v5));
      result = sub_10009B00C(v4, v5, v7, v10, v11);
    }

    ++v5;
    v3 = *(a2 + 8);
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  return result;
}

uint64_t sub_10009B45C(void *a1, void *a2)
{
  [a1 assertUnpositionedWithOrgApacheLuceneSearchDocIdSetIterator:a2];
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  result = [a2 nextDoc];
  if (result != 0x7FFFFFFF)
  {
    v4 = result >> 12;
    v5 = result >> 6;
    v6 = 1 << (result >> 6);
    v7 = 1 << result;
    v8 = [IOSLongArray arrayWithLength:64];
    v9 = [a2 nextDoc];
    if (v9 == 0x7FFFFFFF)
    {
      LODWORD(v10) = 0;
    }

    else
    {
      v12 = v9;
      v10 = 0;
      do
      {
        v13 = v12 >> 6;
        if (v12 >> 6 == v5)
        {
          v7 |= 1 << v12;
        }

        else
        {
          size = v8->super.size_;
          if ((v10 & 0x80000000) != 0 || v10 >= size)
          {
            IOSArray_throwOutOfBoundsWithMsg(size, v10);
          }

          v15 = (v10 + 1);
          v8->buffer_[v10] = v7;
          if (v12 >> 12 == v4)
          {
            v6 |= 1 << v13;
          }

          else
          {
            sub_10009B00C(a1, v4, v6, v8, v15);
            v15 = 0;
            v6 = 1 << v13;
            v4 = v12 >> 12;
          }

          v7 = 1 << v12;
          v5 = v12 >> 6;
          v10 = v15;
        }

        v12 = [a2 nextDoc];
      }

      while (v12 != 0x7FFFFFFF);
    }

    v11 = v8->super.size_;
    if ((v10 & 0x80000000) != 0 || v10 >= v11)
    {
      IOSArray_throwOutOfBoundsWithMsg(v11, v10);
    }

    v8->buffer_[v10] = v7;

    return sub_10009B00C(a1, v4, v6, v8, v10 + 1);
  }

  return result;
}

OrgApacheLuceneUtilSparseFixedBitSet *new_OrgApacheLuceneUtilSparseFixedBitSet_initWithInt_(int a1)
{
  v2 = [OrgApacheLuceneUtilSparseFixedBitSet alloc];
  OrgApacheLuceneUtilSparseFixedBitSet_initWithInt_(v2, a1);
  return v2;
}

uint64_t OrgApacheLuceneUtilSparseFixedBitSet_class_()
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilSparseFixedBitSet__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10009BB04();
  }

  if (qword_100554288 != -1)
  {
    sub_10009BB10();
  }

  return qword_100554280;
}

void *sub_10009BD7C(uint64_t a1, uint64_t a2)
{
  OrgApacheLuceneCodecsCompressingDecompressor_init(a1, a2);
  v3 = new_JavaUtilZipInflater_initWithBoolean_(1);
  JreStrongAssignAndConsume((a1 + 8), v3);
  v4 = [IOSByteArray newArrayWithLength:0];

  return JreStrongAssignAndConsume((a1 + 16), v4);
}

void *sub_10009C124(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  OrgApacheLuceneCodecsCompressingCompressor_init(a1, a2);
  v4 = new_JavaUtilZipDeflater_initWithInt_withBoolean_(v2, 1);
  JreStrongAssignAndConsume((a1 + 8), v4);
  v5 = [IOSByteArray newArrayWithLength:64];

  return JreStrongAssignAndConsume((a1 + 16), v5);
}

void *OrgApacheLuceneStoreOutputStreamIndexOutput_initWithNSString_withJavaIoOutputStream_withInt_(uint64_t a1, void *a2, void *a3, int a4)
{
  OrgApacheLuceneStoreIndexOutput_initWithNSString_(a1, a2);
  v7 = new_JavaUtilZipCRC32_init();
  JreStrongAssignAndConsume((a1 + 24), v7);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v8 = new_JavaUtilZipCheckedOutputStream_initWithJavaIoOutputStream_withJavaUtilZipChecksum_(a3, *(a1 + 24));
  v9 = new_JavaIoBufferedOutputStream_initWithJavaIoOutputStream_withInt_(v8, a4);

  return JreStrongAssignAndConsume((a1 + 32), v9);
}

uint64_t OrgApacheLuceneUtilMathUtil_logWithLong_withInt_(uint64_t a1, unsigned int a2)
{
  if (a2 < 2)
  {
    v4 = new_JavaLangIllegalArgumentException_initWithNSString_(@"base must be > 1");
    objc_exception_throw(v4);
  }

  if (a2 > a1)
  {
    return 0;
  }

  LODWORD(v2) = 0;
  do
  {
    a1 /= a2;
    v2 = (v2 + 1);
  }

  while (a1 >= a2);
  return v2;
}

unint64_t OrgApacheLuceneUtilMathUtil_gcdWithLong_withLong_(uint64_t a1, uint64_t a2)
{
  v3 = JavaLangMath_absWithLong_(a1);
  v4 = JavaLangMath_absWithLong_(a2);
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = JavaLangLong_numberOfTrailingZerosWithLong_(v4 | v3);
      v7 = v3 >> JavaLangLong_numberOfTrailingZerosWithLong_(v3);
      v8 = v5 >> JavaLangLong_numberOfTrailingZerosWithLong_(v5);
      if (v7 == v8)
      {
        v9 = v7;
      }

      else
      {
        do
        {
          v11 = v7 == 0x8000000000000000 || v7 > v8;
          if (v11)
          {
            v9 = v8;
          }

          else
          {
            v9 = v7;
          }

          if (v9 == 1)
          {
            break;
          }

          if (v11)
          {
            v8 = v7;
          }

          v8 = (v8 - v9) >> JavaLangLong_numberOfTrailingZerosWithLong_(v8 - v9);
          v7 = v9;
        }

        while (v9 != v8);
      }

      return v9 << v6;
    }

    else
    {
      return v3;
    }
  }

  return v5;
}

long double OrgApacheLuceneUtilMathUtil_asinhWithDouble_(double a1)
{
  v1 = a1;
  if (JavaLangDouble_doubleToRawLongBitsWithDouble_(a1) < 0)
  {
    v1 = JavaLangMath_absWithDouble_(v1);
    v2 = -1.0;
  }

  else
  {
    v2 = 1.0;
  }

  v3 = JavaLangMath_sqrtWithDouble_(v1 * v1 + 1.0);
  return v2 * JavaLangMath_logWithDouble_(v1 + v3);
}

long double OrgApacheLuceneUtilMathUtil_atanhWithDouble_(double a1)
{
  v1 = a1;
  v2 = 0.5;
  if (JavaLangDouble_doubleToRawLongBitsWithDouble_(a1) < 0)
  {
    v1 = JavaLangMath_absWithDouble_(v1);
    v2 = -0.5;
  }

  return v2 * JavaLangMath_logWithDouble_((v1 + 1.0) / (1.0 - v1));
}

OrgApacheLuceneIndexMultiBits *new_OrgApacheLuceneIndexMultiBits_initWithOrgApacheLuceneUtilBitsArray_withIntArray_withBoolean_(void *a1, void *a2, BOOL a3)
{
  v6 = [OrgApacheLuceneIndexMultiBits alloc];
  JreStrongAssign(&v6->subs_, a1);
  JreStrongAssign(&v6->starts_, a2);
  v6->defaultValue_ = a3;
  return v6;
}

_BYTE *OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame_initWithOrgApacheLuceneCodecsBlocktreeIntersectTermsEnum_withInt_(uint64_t a1, void *a2, int a3)
{
  JreStrongAssignAndConsume((a1 + 64), [IOSByteArray newArrayWithLength:128]);
  v6 = new_OrgApacheLuceneStoreByteArrayDataInput_init();
  JreStrongAssignAndConsume((a1 + 72), v6);
  JreStrongAssignAndConsume((a1 + 80), [IOSByteArray newArrayWithLength:64]);
  v7 = new_OrgApacheLuceneStoreByteArrayDataInput_init();
  JreStrongAssignAndConsume((a1 + 88), v7);
  JreStrongAssignAndConsume((a1 + 96), [IOSByteArray newArrayWithLength:32]);
  v8 = new_OrgApacheLuceneStoreByteArrayDataInput_init();
  JreStrongAssignAndConsume((a1 + 104), v8);
  v9 = new_OrgApacheLuceneUtilAutomatonTransition_init();
  JreStrongAssignAndConsume((a1 + 136), v9);
  JreStrongAssignAndConsume((a1 + 184), [IOSByteArray newArrayWithLength:32]);
  v10 = new_OrgApacheLuceneStoreByteArrayDataInput_init();
  JreStrongAssignAndConsume((a1 + 192), v10);
  objc_storeWeak((a1 + 232), a2);
  *(a1 + 8) = a3;
  if (!a2 || (v11 = a2[7]) == 0 || (Weak = objc_loadWeak((v11 + 96))) == 0 || (v13 = Weak[2]) == 0 || (JreStrongAssign((a1 + 168), [v13 newTermState]), (v14 = *(a1 + 168)) == 0))
  {
    JreThrowNullPointerException();
  }

  *(v14 + 24) = -1;
  JreStrongAssignAndConsume((a1 + 176), [IOSLongArray newArrayWithLength:*(a2[7] + 88)]);
  result = objc_loadWeak((a2[7] + 96));
  *(a1 + 152) = result[36];
  return result;
}

OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame *new_OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame_initWithOrgApacheLuceneCodecsBlocktreeIntersectTermsEnum_withInt_(void *a1, int a2)
{
  v4 = [OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame alloc];
  OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame_initWithOrgApacheLuceneCodecsBlocktreeIntersectTermsEnum_withInt_(v4, a1, a2);
  return v4;
}

uint64_t OrgApacheLuceneCodecsBlocktreeIntersectTermsEnumFrame_class_()
{
  if (qword_1005542A0 != -1)
  {
    sub_10009E284();
  }

  return qword_100554298;
}

id ComAppleProactiveLuceneCachingWeight_initWithOrgApacheLuceneSearchWeight_(uint64_t a1, void *a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  OrgApacheLuceneSearchWeight_initWithOrgApacheLuceneSearchQuery_(a1, [a2 getQuery]);
  JreStrongAssign((a1 + 24), 0);
  *(a1 + 32) = 2143289344;

  return JreStrongAssign((a1 + 16), a2);
}

ComAppleProactiveLuceneCachingWeight *new_ComAppleProactiveLuceneCachingWeight_initWithOrgApacheLuceneSearchWeight_(void *a1)
{
  v2 = [ComAppleProactiveLuceneCachingWeight alloc];
  ComAppleProactiveLuceneCachingWeight_initWithOrgApacheLuceneSearchWeight_(v2, a1);
  return v2;
}

id OrgApacheLuceneIndexSegmentReadState_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withOrgApacheLuceneIndexFieldInfos_withOrgApacheLuceneStoreIOContext_withNSString_(id *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  JreStrongAssign(a1 + 1, a2);
  JreStrongAssign(a1 + 2, a3);
  JreStrongAssign(a1 + 3, a4);
  JreStrongAssign(a1 + 4, a5);

  return JreStrongAssign(a1 + 5, a6);
}

id OrgApacheLuceneIndexSegmentReadState_initWithOrgApacheLuceneIndexSegmentReadState_withNSString_(id *a1, void **a2, void *a3)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  JreStrongAssign(a1 + 1, a2[1]);
  JreStrongAssign(a1 + 2, a2[2]);
  JreStrongAssign(a1 + 3, a2[3]);
  JreStrongAssign(a1 + 4, a2[4]);

  return JreStrongAssign(a1 + 5, a3);
}

OrgApacheLuceneIndexSegmentReadState *new_OrgApacheLuceneIndexSegmentReadState_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withOrgApacheLuceneIndexFieldInfos_withOrgApacheLuceneStoreIOContext_(void *a1, void *a2, void *a3, void *a4)
{
  v8 = [OrgApacheLuceneIndexSegmentReadState alloc];
  OrgApacheLuceneIndexSegmentReadState_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withOrgApacheLuceneIndexFieldInfos_withOrgApacheLuceneStoreIOContext_withNSString_(&v8->super.isa, a1, a2, a3, a4, &stru_100484358);
  return v8;
}

OrgApacheLuceneIndexSegmentReadState *new_OrgApacheLuceneIndexSegmentReadState_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withOrgApacheLuceneIndexFieldInfos_withOrgApacheLuceneStoreIOContext_withNSString_(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = [OrgApacheLuceneIndexSegmentReadState alloc];
  OrgApacheLuceneIndexSegmentReadState_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withOrgApacheLuceneIndexFieldInfos_withOrgApacheLuceneStoreIOContext_withNSString_(&v10->super.isa, a1, a2, a3, a4, a5);
  return v10;
}

OrgApacheLuceneIndexSegmentReadState *new_OrgApacheLuceneIndexSegmentReadState_initWithOrgApacheLuceneIndexSegmentReadState_withNSString_(void **a1, void *a2)
{
  v4 = [OrgApacheLuceneIndexSegmentReadState alloc];
  OrgApacheLuceneIndexSegmentReadState_initWithOrgApacheLuceneIndexSegmentReadState_withNSString_(&v4->super.isa, a1, a2);
  return v4;
}

id OrgApacheLuceneSearchConstantScoreQuery_initWithOrgApacheLuceneSearchQuery_(uint64_t a1, uint64_t a2)
{
  OrgApacheLuceneSearchQuery_init(a1);
  v4 = OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_withNSString_(a2, @"Query must not be null");

  return JreStrongAssign((a1 + 12), v4);
}

OrgApacheLuceneSearchConstantScoreQuery *new_OrgApacheLuceneSearchConstantScoreQuery_initWithOrgApacheLuceneSearchQuery_(uint64_t a1)
{
  v2 = [OrgApacheLuceneSearchConstantScoreQuery alloc];
  OrgApacheLuceneSearchConstantScoreQuery_initWithOrgApacheLuceneSearchQuery_(v2, a1);
  return v2;
}

id OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_initWithOrgApacheLuceneSearchConstantScoreQuery_withOrgApacheLuceneSearchBulkScorer_withOrgApacheLuceneSearchWeight_withFloat_(uint64_t a1, float a2, uint64_t a3, void *a4, void *a5)
{
  OrgApacheLuceneSearchBulkScorer_init();
  JreStrongAssign((a1 + 8), a4);
  result = JreStrongAssign((a1 + 16), a5);
  *(a1 + 24) = a2;
  return result;
}

OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer_$1 *sub_10009EE0C(void *a1, void *a2)
{
  v4 = [OrgApacheLuceneSearchConstantScoreQuery_ConstantBulkScorer__1 alloc];
  JreStrongAssign(&v4->this$0_, a1);
  OrgApacheLuceneSearchFilterLeafCollector_initWithOrgApacheLuceneSearchLeafCollector_(v4, a2);

  return v4;
}

id sub_10009F2A0(uint64_t a1, void *a2, void *a3, void *a4)
{
  JreStrongAssign((a1 + 24), a2);
  JreStrongAssign((a1 + 32), a3);

  return OrgApacheLuceneSearchConstantScoreWeight_initWithOrgApacheLuceneSearchQuery_(a1, a4);
}

id OrgApacheLuceneIndexFilteredTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_(uint64_t a1, void *a2)
{
  OrgApacheLuceneIndexTermsEnum_init(a1);
  result = JreStrongAssign((a1 + 24), a2);
  *(a1 + 40) = 1;
  return result;
}

id OrgApacheLuceneIndexFilteredTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_withBoolean_(uint64_t a1, void *a2, char a3)
{
  OrgApacheLuceneIndexTermsEnum_init(a1);
  result = JreStrongAssign((a1 + 24), a2);
  *(a1 + 40) = a3;
  return result;
}

IOSObjectArray *OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatusEnum_values()
{
  if ((atomic_load_explicit(OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatusEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000169CC();
  }

  v0 = OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatusEnum_class_();

  return [IOSObjectArray arrayWithObjects:&OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatusEnum_values_ count:5 type:v0];
}

void *OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatusEnum_valueOfWithNSString_(void *a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatusEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000169CC();
  }

  v2 = 0;
  while (1)
  {
    v3 = OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatusEnum_values_[v2];
    if ([a1 isEqual:{objc_msgSend(v3, "name")}])
    {
      break;
    }

    if (++v2 == 5)
    {
      objc_exception_throw([[JavaLangIllegalArgumentException alloc] initWithNSString:a1]);
    }
  }

  return v3;
}

uint64_t OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatusEnum_class_()
{
  if ((atomic_load_explicit(OrgApacheLuceneIndexFilteredTermsEnum_AcceptStatusEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000169CC();
  }

  if (qword_1005542B0 != -1)
  {
    sub_10009FCB8();
  }

  return qword_1005542A8;
}

id OrgApacheLuceneUtilCollectionUtil_introSortWithJavaUtilList_withJavaUtilComparator_(void *a1, void *a2)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  result = [a1 size];
  if (result >= 2)
  {
    v5 = result;
    v6 = [OrgApacheLuceneUtilCollectionUtil_ListIntroSorter alloc];
    sub_10009FF28(v6, a1, a2);
    v7 = v6;

    return [(OrgApacheLuceneUtilIntroSorter *)v7 sortWithInt:0 withInt:v5];
  }

  return result;
}

id OrgApacheLuceneUtilCollectionUtil_introSortWithJavaUtilList_(void *a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  result = [a1 size];
  if (result >= 2)
  {
    v3 = OrgApacheLuceneUtilArrayUtil_naturalComparator();

    return OrgApacheLuceneUtilCollectionUtil_introSortWithJavaUtilList_withJavaUtilComparator_(a1, v3);
  }

  return result;
}

id OrgApacheLuceneUtilCollectionUtil_timSortWithJavaUtilList_withJavaUtilComparator_(void *a1, void *a2)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  result = [a1 size];
  if (result >= 2)
  {
    v5 = result;
    v6 = ([a1 size] / 64);
    v7 = [OrgApacheLuceneUtilCollectionUtil_ListTimSorter alloc];
    sub_1000A01C4(&v7->super.super.super.isa, a1, a2, v6);
    v8 = v7;

    return [(OrgApacheLuceneUtilTimSorter *)v8 sortWithInt:0 withInt:v5];
  }

  return result;
}

id OrgApacheLuceneUtilCollectionUtil_timSortWithJavaUtilList_(void *a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  result = [a1 size];
  if (result >= 2)
  {
    v3 = OrgApacheLuceneUtilArrayUtil_naturalComparator();

    return OrgApacheLuceneUtilCollectionUtil_timSortWithJavaUtilList_withJavaUtilComparator_(a1, v3);
  }

  return result;
}

id sub_10009FF28(uint64_t a1, void *a2, void *a3)
{
  OrgApacheLuceneUtilIntroSorter_init();
  if (([JavaUtilRandomAccess_class_() isInstance:a2] & 1) == 0)
  {
    v7 = new_JavaLangIllegalArgumentException_initWithNSString_(@"CollectionUtil can only sort random access lists in-place.");
    objc_exception_throw(v7);
  }

  JreStrongAssign((a1 + 16), a2);

  return JreStrongAssign((a1 + 24), a3);
}

id sub_1000A01C4(id *a1, void *a2, void *a3, uint64_t a4)
{
  v4 = a4;
  OrgApacheLuceneUtilTimSorter_initWithInt_(a1, a4);
  if (([JavaUtilRandomAccess_class_() isInstance:a2] & 1) == 0)
  {
    v10 = new_JavaLangIllegalArgumentException_initWithNSString_(@"CollectionUtil can only sort random access lists in-place.");
    objc_exception_throw(v10);
  }

  JreStrongAssign(a1 + 4, a2);
  JreStrongAssign(a1 + 5, a3);
  if (v4 < 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = [IOSObjectArray arrayWithLength:v4 type:NSObject_class_()];
    objc_opt_class();
    if (v8 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }
  }

  return JreStrongAssign(a1 + 6, v8);
}

uint64_t OrgApacheLuceneCodecsFieldsProducer_class_()
{
  if (qword_1005542C0 != -1)
  {
    sub_1000A06DC();
  }

  return qword_1005542B8;
}

void *OrgApacheLuceneIndexSortedDocValues_init(uint64_t a1, uint64_t a2)
{
  OrgApacheLuceneIndexBinaryDocValues_init(a1, a2);
  v3 = new_OrgApacheLuceneUtilBytesRef_init();

  return JreStrongAssignAndConsume((a1 + 8), v3);
}

uint64_t OrgApacheLuceneIndexSortedDocValues_class_()
{
  if (qword_1005542D0 != -1)
  {
    sub_1000A0950();
  }

  return qword_1005542C8;
}

id OrgApacheLuceneCodecsBlocktreeStats_initWithNSString_withNSString_(id *a1, void *a2, void *a3)
{
  JreStrongAssignAndConsume(a1 + 8, [IOSIntArray newArrayWithLength:10]);
  JreStrongAssign(a1 + 12, a2);

  return JreStrongAssign(a1 + 13, a3);
}

OrgApacheLuceneCodecsBlocktreeStats *new_OrgApacheLuceneCodecsBlocktreeStats_initWithNSString_withNSString_(void *a1, void *a2)
{
  v4 = [OrgApacheLuceneCodecsBlocktreeStats alloc];
  OrgApacheLuceneCodecsBlocktreeStats_initWithNSString_withNSString_(&v4->super.isa, a1, a2);
  return v4;
}

uint64_t OrgApacheLuceneUtilBytesRef_initWithJavaLangCharSequence_(uint64_t a1, void *a2)
{
  if (!a2 || (v4 = +[IOSByteArray arrayWithLength:](IOSByteArray, "arrayWithLength:", (3 * [a2 length]))) == 0)
  {
    JreThrowNullPointerException();
  }

  size = v4->super.size_;
  JreStrongAssign((a1 + 8), v4);
  *(a1 + 16) = 0;
  *(a1 + 20) = size;
  result = OrgApacheLuceneUtilUnicodeUtil_UTF16toUTF8WithJavaLangCharSequence_withInt_withInt_withByteArray_(a2, 0, [a2 length], *(a1 + 8));
  *(a1 + 20) = result;
  return result;
}

OrgApacheLuceneUtilBytesRef *new_OrgApacheLuceneUtilBytesRef_initWithByteArray_withInt_withInt_(void *a1, int a2, int a3)
{
  v6 = [OrgApacheLuceneUtilBytesRef alloc];
  JreStrongAssign(&v6->bytes_, a1);
  v6->offset_ = a2;
  v6->length_ = a3;
  return v6;
}

OrgApacheLuceneUtilBytesRef *OrgApacheLuceneUtilBytesRef_deepCopyOfWithOrgApacheLuceneUtilBytesRef_(uint64_t a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilBytesRef__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000A23D0();
  }

  v2 = new_OrgApacheLuceneUtilBytesRef_init();
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v3 = v2;
  v4 = JavaUtilArrays_copyOfRangeWithByteArray_withInt_withInt_(*(a1 + 8), *(a1 + 16), *(a1 + 20) + *(a1 + 16));
  JreStrongAssign(&v3->bytes_, v4);
  v3->offset_ = 0;
  v3->length_ = *(a1 + 20);
  return v3;
}

OrgApacheLuceneUtilBytesRef *new_OrgApacheLuceneUtilBytesRef_init()
{
  v0 = [OrgApacheLuceneUtilBytesRef alloc];
  if (!OrgApacheLuceneUtilBytesRef_EMPTY_BYTES_)
  {
    JreThrowNullPointerException();
  }

  v1 = v0;
  v2 = *(OrgApacheLuceneUtilBytesRef_EMPTY_BYTES_ + 8);
  JreStrongAssign(&v0->bytes_, OrgApacheLuceneUtilBytesRef_EMPTY_BYTES_);
  v1->offset_ = 0;
  v1->length_ = v2;
  return v1;
}

OrgApacheLuceneUtilBytesRef *new_OrgApacheLuceneUtilBytesRef_initWithByteArray_(_DWORD *a1)
{
  v2 = [OrgApacheLuceneUtilBytesRef alloc];
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v3 = v2;
  v4 = a1[2];
  JreStrongAssign(&v2->bytes_, a1);
  v3->offset_ = 0;
  v3->length_ = v4;
  return v3;
}

OrgApacheLuceneUtilBytesRef *new_OrgApacheLuceneUtilBytesRef_initWithInt_(int a1)
{
  v2 = [OrgApacheLuceneUtilBytesRef alloc];
  JreStrongAssignAndConsume(&v2->bytes_, [IOSByteArray newArrayWithLength:a1]);
  return v2;
}

OrgApacheLuceneUtilBytesRef *new_OrgApacheLuceneUtilBytesRef_initWithJavaLangCharSequence_(void *a1)
{
  v2 = [OrgApacheLuceneUtilBytesRef alloc];
  OrgApacheLuceneUtilBytesRef_initWithJavaLangCharSequence_(v2, a1);
  return v2;
}

uint64_t OrgApacheLuceneUtilBytesRef_getUTF8SortedAsUnicodeComparator()
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilBytesRef__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000A23D0();
  }

  return qword_1005542D8;
}

uint64_t OrgApacheLuceneUtilBytesRef_class_()
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilBytesRef__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000A23D0();
  }

  if (qword_1005542F0 != -1)
  {
    sub_1000A23DC();
  }

  return qword_1005542E8;
}

OrgLukhnosPortmobileFileAttributeBasicFileAttributes *new_OrgLukhnosPortmobileFileAttributeBasicFileAttributes_initWithJavaIoFile_(void *a1)
{
  v2 = [OrgLukhnosPortmobileFileAttributeBasicFileAttributes alloc];
  JreStrongAssign(&v2->file_, a1);
  return v2;
}

uint64_t OrgLukhnosPortmobileFileAttributeBasicFileAttributes_class_()
{
  if (qword_100554300 != -1)
  {
    sub_1000A2574();
  }

  return qword_1005542F8;
}

void *sub_1000A269C(uint64_t a1)
{
  *(a1 + 24) = malloc_type_malloc(0x40000uLL, 0xF16B9B46uLL);
  v2 = compression_decode_scratch_buffer_size(COMPRESSION_LZFSE);
  result = malloc_type_malloc(v2, 0x3DCAFB94uLL);
  *(a1 + 32) = result;
  return result;
}

uint64_t OrgApacheLuceneUtilAutomatonRunAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_withBoolean_withInt_(uint64_t a1, void *a2, int a3, char a4, int a5)
{
  *(a1 + 16) = a3;
  v8 = OrgApacheLuceneUtilAutomatonOperations_determinizeWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(a2, a5);
  JreStrongAssign((a1 + 8), v8);
  if (!v8 || (JreStrongAssign((a1 + 48), [v8 getStartPoints]), *(a1 + 32) = 0, v9 = JavaLangMath_maxWithInt_withInt_(1, objc_msgSend(v8, "getNumStates")), *(a1 + 20) = v9, JreStrongAssignAndConsume((a1 + 24), +[IOSBooleanArray newArrayWithLength:](IOSBooleanArray, "newArrayWithLength:", v9)), (v10 = *(a1 + 48)) == 0))
  {
    JreThrowNullPointerException();
  }

  v29 = a3;
  v30 = a4;
  JreStrongAssignAndConsume((a1 + 40), [IOSIntArray newArrayWithLength:*(v10 + 8) * *(a1 + 20)]);
  JavaUtilArrays_fillWithIntArray_withInt_(*(a1 + 40), -1);
  if (*(a1 + 20) >= 1)
  {
    v11 = 0;
    do
    {
      v12 = [v8 isAcceptWithInt:v11];
      v13 = *(a1 + 24);
      v14 = *(v13 + 8);
      if (v11 >= v14)
      {
        IOSArray_throwOutOfBoundsWithMsg(v14, v11);
      }

      *(v13 + 12 + v11) = v12;
      v15 = *(a1 + 48);
      if (*(v15 + 8) >= 1)
      {
        v16 = 0;
        do
        {
          v17 = [v8 stepWithInt:v11 withInt:*(v15 + 12 + 4 * v16)];
          v18 = *(a1 + 40);
          v19 = (v11 * *(*(a1 + 48) + 8));
          v20 = v16 + v19;
          v21 = *(v18 + 8);
          if (v16 + v19 < 0 || v20 >= v21)
          {
            IOSArray_throwOutOfBoundsWithMsg(v21, v16 + v19);
          }

          *(v18 + 12 + 4 * v20) = v17;
          ++v16;
          v15 = *(a1 + 48);
        }

        while (v16 < *(v15 + 8));
      }

      ++v11;
    }

    while (v11 < *(a1 + 20));
  }

  if (v30)
  {
    result = JreStrongAssignAndConsume((a1 + 56), [IOSIntArray newArrayWithLength:v29 + 1]);
    if ((v29 & 0x80000000) == 0)
    {
      v23 = 0;
      v24 = 0;
      do
      {
        v25 = v24 + 1;
        v26 = *(a1 + 48);
        v27 = *(v26 + 8);
        if (v24 + 1 < v27)
        {
          if (v25 < 0)
          {
            IOSArray_throwOutOfBoundsWithMsg(v27, (v24 + 1));
          }

          if (v23 == *(v26 + 12 + 4 * v25))
          {
            ++v24;
          }
        }

        v28 = *(a1 + 56);
        result = *(v28 + 8);
        if ((v23 & 0x80000000) != 0 || v23 >= result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, v23);
        }

        *(v28 + 12 + 4 * v23) = v24;
        v23 = (v23 + 1);
      }

      while (v23 <= v29);
    }
  }

  else
  {

    return JreStrongAssign((a1 + 56), 0);
  }

  return result;
}

OrgApacheLuceneIndexOrdTermState *new_OrgApacheLuceneIndexOrdTermState_init()
{
  v0 = [OrgApacheLuceneIndexOrdTermState alloc];
  OrgApacheLuceneIndexTermState_init(v0, v1);
  return v0;
}

void *sub_1000A3510(uint64_t a1, uint64_t a2, char a3)
{
  OrgApacheLuceneCodecsStoredFieldsReader_init();
  if (!a2)
  {
    goto LABEL_6;
  }

  *(a1 + 8) = *(a2 + 8);
  JreStrongAssign((a1 + 16), *(a2 + 16));
  v6 = *(a2 + 40);
  if (!v6)
  {
    goto LABEL_6;
  }

  JreStrongAssign((a1 + 40), [v6 clone]);
  v7 = *(a2 + 24);
  if (!v7 || (JreStrongAssign((a1 + 24), [v7 clone]), *(a1 + 32) = *(a2 + 32), *(a1 + 48) = *(a2 + 48), *(a1 + 52) = *(a2 + 52), JreStrongAssign((a1 + 56), *(a2 + 56)), (v8 = *(a2 + 64)) == 0))
  {
LABEL_6:
    JreThrowNullPointerException();
  }

  JreStrongAssign((a1 + 64), [v8 clone]);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 76) = a3;
  v9 = [OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_BlockState alloc];
  sub_1000A53EC(&v9->super.isa, a1);
  result = JreStrongAssignAndConsume((a1 + 80), v9);
  *(a1 + 104) = 0;
  return result;
}

unint64_t OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withNSString_withOrgApacheLuceneIndexFieldInfos_withOrgApacheLuceneStoreIOContext_withNSString_withOrgApacheLuceneCodecsCompressingCompressionMode_(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  OrgApacheLuceneCodecsStoredFieldsReader_init();
  JreStrongAssign((a1 + 56), a8);
  if (!a3 || (v16 = a3[1], JreStrongAssign((a1 + 16), a5), *(a1 + 72) = [a3 maxDoc], v17 = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(v16, a4, OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter_FIELDS_INDEX_EXTENSION_), !a2))
  {
    JreThrowNullPointerException();
  }

  v59 = a2;
  v60 = a8;
  v61 = a4;
  v18 = [a2 openChecksumInputWithNSString:v17 withOrgApacheLuceneStoreIOContext:a6];
  v58 = a7;
  v26 = JreStrcat("$$", v19, v20, v21, v22, v23, v24, v25, a7);
  v27 = OrgApacheLuceneCodecsCodecUtil_checkIndexHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_withByteArray_withNSString_(v18, v26, 0, 1, [a3 getId], a4);
  v28 = new_OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexReader_initWithOrgApacheLuceneStoreIndexInput_withOrgApacheLuceneIndexSegmentInfo_(v18, a3);
  v29 = [v18 readVLong];
  OrgApacheLuceneCodecsCodecUtil_checkFooterWithOrgApacheLuceneStoreChecksumIndexInput_withJavaLangThrowable_(v18, 0);
  if (v18)
  {
    [v18 close];
  }

  *(a1 + 8) = v27;
  *(a1 + 32) = v29;
  JreStrongAssign((a1 + 24), v28);
  v30 = [v59 openInputWithNSString:OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(v16 withOrgApacheLuceneStoreIOContext:{v61, OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter_FIELDS_EXTENSION_), a6}];
  JreStrongAssign((a1 + 40), v30);
  v38 = JreStrcat("$$", v31, v32, v33, v34, v35, v36, v37, v58);
  if (v27 != OrgApacheLuceneCodecsCodecUtil_checkIndexHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_withByteArray_withNSString_(*(a1 + 40), v38, 0, 1, [a3 getId], v61))
  {
    v55 = JreStrcat("$I$I", v39, v40, v41, v42, v43, v44, v45, @"Version mismatch between stored fields index and data: ");
LABEL_15:
    v57 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v55, *(a1 + 40));
    objc_exception_throw(v57);
  }

  *(a1 + 48) = [*(a1 + 40) readVInt];
  *(a1 + 52) = [*(a1 + 40) readVInt];
  if (!v60)
  {
    JreThrowNullPointerException();
  }

  JreStrongAssign((a1 + 64), [v60 newDecompressor]);
  *(a1 + 76) = 0;
  v46 = [OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_BlockState alloc];
  sub_1000A53EC(&v46->super.isa, a1);
  JreStrongAssignAndConsume((a1 + 80), v46);
  if (v27 < 1)
  {
    *(a1 + 96) = -1;
    *(a1 + 88) = -1;
  }

  else
  {
    [*(a1 + 40) seekWithLong:v29];
    *(a1 + 88) = [*(a1 + 40) readVLong];
    v47 = [*(a1 + 40) readVLong];
    *(a1 + 96) = v47;
    if (v47 > *(a1 + 88))
    {
      v55 = JreStrcat("$J$J", v48, v49, v50, v51, v52, v53, v54, @"invalid chunk counts: dirty=");
      goto LABEL_15;
    }
  }

  return OrgApacheLuceneCodecsCodecUtil_retrieveChecksumWithOrgApacheLuceneStoreIndexInput_(*(a1 + 40));
}

void sub_1000A3BD0(_Unwind_Exception *a1)
{
  objc_end_catch();
  objc_end_catch();
  _Unwind_Resume(a1);
}

void sub_1000A3BEC(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    if (a2 == 2)
    {
      objc_end_catch();
    }

    JUMPOUT(0x1000A3860);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1000A3C2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    v19 = [IOSObjectArray arrayWithObjects:&a19 count:1 type:JavaIoCloseable_class_()];
    OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_(v19);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1000A3C78(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1000A3C80);
  }

  objc_terminate();
}

uint64_t sub_1000A3C90(uint64_t result)
{
  if (*(result + 104) == 1)
  {
    v1 = new_OrgApacheLuceneStoreAlreadyClosedException_initWithNSString_(@"this FieldsReader is closed");
    objc_exception_throw(v1);
  }

  return result;
}

float OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_readZFloatWithOrgApacheLuceneStoreDataInput_(void *a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v2 = [a1 readByte];
  if (v2 == -1)
  {
    v4 = [a1 readInt];
  }

  else
  {
    if ((v2 & 0x80) != 0)
    {
      return ((v2 & 0x7F) - 1);
    }

    v3 = (v2 << 24) | ([a1 readShort] << 8);
    v4 = v3 & 0xFFFFFF00 | [a1 readByte];
  }

  return JavaLangFloat_intBitsToFloatWithInt_(v4);
}

double OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_readZDoubleWithOrgApacheLuceneStoreDataInput_(void *a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v2 = [a1 readByte];
  if (v2 == -2)
  {
    return JavaLangFloat_intBitsToFloatWithInt_([a1 readInt]);
  }

  if (v2 == 255)
  {
    v3 = [a1 readLong];
  }

  else
  {
    if ((v2 & 0x80000000) != 0)
    {
      return ((v2 & 0x7F) - 1);
    }

    v5 = (v2 << 56) | ([a1 readInt] << 24);
    v6 = v5 & 0xFFFFFFFFFF0000FFLL | ([a1 readShort] << 8);
    v3 = (v6 & 0xFFFFFFFFFFFFFF00 | [a1 readByte]);
  }

  return JavaLangDouble_longBitsToDoubleWithLong_(v3);
}

uint64_t OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_readTLongWithOrgApacheLuceneStoreDataInput_(void *a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v2 = [a1 readByte];
  v3 = v2;
  v4 = v2 & 0x1F;
  if ((v2 & 0x20) != 0)
  {
    v4 |= 32 * [a1 readVLong];
  }

  v5 = OrgApacheLuceneUtilBitUtil_zigZagDecodeWithLong_(v4);
  v6 = 3600000 * v5;
  if (v3 >> 6 != 2)
  {
    v6 = 86400000 * v5;
  }

  v7 = 1000 * v5;
  if (!(v3 >> 6))
  {
    v7 = v5;
  }

  if (v3 >> 6 <= 1)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader *new_OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withNSString_withOrgApacheLuceneIndexFieldInfos_withOrgApacheLuceneStoreIOContext_withNSString_withOrgApacheLuceneCodecsCompressingCompressionMode_(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v14 = [OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader alloc];
  OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withNSString_withOrgApacheLuceneIndexFieldInfos_withOrgApacheLuceneStoreIOContext_withNSString_withOrgApacheLuceneCodecsCompressingCompressionMode_(v14, a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

void sub_1000A4780(void *a1)
{
  objc_begin_catch(a1);
  *(v1 + 20) = 0;
  objc_exception_rethrow();
}

uint64_t sub_1000A47A4(uint64_t a1, uint64_t a2)
{
  v4 = *(objc_loadWeak((a1 + 8)) + 5);
  if (!v4)
  {
    goto LABEL_79;
  }

  *(a1 + 16) = [v4 readVInt];
  v5 = [*(objc_loadWeak((a1 + 8)) + 5) readVInt];
  v6 = v5;
  *(a1 + 20) = v5 >> 1;
  if (![a1 containsWithInt:a2] || (v7 = *(a1 + 20) + *(a1 + 16), v7 > *(objc_loadWeak((a1 + 8)) + 18)))
  {
    v132 = *(a1 + 16);
    v133 = *(a1 + 20);
    v142 = *(objc_loadWeak((a1 + 8)) + 18);
    v129 = JreStrcat("$I$I$I$I", v134, v135, v136, v137, v138, v139, v140, @"Corrupted: docID=");
    Weak = objc_loadWeak((a1 + 8));
    goto LABEL_84;
  }

  *(a1 + 24) = v6 & 1;
  v14 = (a1 + 32);
  v15 = OrgApacheLuceneUtilArrayUtil_growWithIntArray_withInt_(*(a1 + 32), *(a1 + 20) + 1, v8, v9, v10, v11, v12, v13);
  JreStrongAssign((a1 + 32), v15);
  v16 = (a1 + 40);
  v23 = OrgApacheLuceneUtilArrayUtil_growWithIntArray_withInt_(*(a1 + 40), *(a1 + 20), v17, v18, v19, v20, v21, v22);
  JreStrongAssign((a1 + 40), v23);
  v24 = *(a1 + 20);
  v25 = [*(objc_loadWeak((a1 + 8)) + 5) readVInt];
  v33 = v25;
  if (v24 != 1)
  {
    if (v25)
    {
      if (v25 >= 32)
      {
        v141 = @"bitsPerStoredFields=";
        goto LABEL_89;
      }

      v65 = *(objc_loadWeak((a1 + 8)) + 5);
      if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100003648();
      }

      v66 = OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_;
      v67 = objc_loadWeak((a1 + 8));
      ReaderIteratorNoHeaderWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt_withInt = OrgApacheLuceneUtilPackedPackedInts_getReaderIteratorNoHeaderWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt_withInt_(v65, v66, v67[13], *(a1 + 20), v33, 1, v68, v69);
      if (*(a1 + 20) >= 1)
      {
        v71 = ReaderIteratorNoHeaderWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt_withInt;
        if (ReaderIteratorNoHeaderWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt_withInt)
        {
          v72 = 0;
          while (1)
          {
            v73 = [(OrgApacheLuceneUtilPackedPackedInts_ReaderIteratorImpl *)v71 next];
            v74 = *v16;
            if (!*v16)
            {
              break;
            }

            v75 = v73;
            v76 = *(v74 + 8);
            if (v72 >= v76)
            {
              IOSArray_throwOutOfBoundsWithMsg(v76, v72);
            }

            *(v74 + 12 + 4 * v72++) = v75;
            if (v72 >= *(a1 + 20))
            {
              goto LABEL_40;
            }
          }
        }

LABEL_79:
        JreThrowNullPointerException();
      }
    }

    else
    {
      v79 = *(a1 + 40);
      v80 = *(a1 + 20);
      v81 = [*(objc_loadWeak((a1 + 8)) + 5) readVInt];
      JavaUtilArrays_fillWithIntArray_withInt_withInt_withInt_(v79, 0, v80, v81, v82, v83, v84, v85);
    }

LABEL_40:
    v86 = [*(objc_loadWeak((a1 + 8)) + 5) readVInt];
    if (!v86)
    {
      v114 = [*(objc_loadWeak((a1 + 8)) + 5) readVInt];
      if (*(a1 + 20) >= 1)
      {
        v115 = v114;
        v116 = 1;
        v117 = v114;
        while (1)
        {
          v118 = *v14;
          if (!*v14)
          {
            goto LABEL_79;
          }

          v119 = *(v118 + 8);
          if (v116 >= v119)
          {
            IOSArray_throwOutOfBoundsWithMsg(v119, v116);
          }

          *(v118 + 12 + 4 * v116) = v117;
          v117 += v115;
          v108 = v116++ < *(a1 + 20);
          if (!v108)
          {
            goto LABEL_67;
          }
        }
      }

      goto LABEL_67;
    }

    v87 = v86;
    if (v33 < 32)
    {
      v88 = *(objc_loadWeak((a1 + 8)) + 5);
      if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100003648();
      }

      v89 = OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_;
      v90 = objc_loadWeak((a1 + 8));
      v93 = OrgApacheLuceneUtilPackedPackedInts_getReaderIteratorNoHeaderWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt_withInt_(v88, v89, v90[13], *(a1 + 20), v87, 1, v91, v92);
      if (*(a1 + 20) >= 1)
      {
        v101 = v93;
        if (!v93)
        {
          goto LABEL_79;
        }

        v102 = 1;
        do
        {
          v103 = [(OrgApacheLuceneUtilPackedPackedInts_ReaderIteratorImpl *)v101 next];
          v104 = *v14;
          if (!*v14)
          {
            goto LABEL_79;
          }

          v105 = v103;
          v106 = *(v104 + 8);
          if (v102 >= v106)
          {
            IOSArray_throwOutOfBoundsWithMsg(v106, v102);
          }

          *(v104 + 12 + 4 * v102) = v105;
          v107 = *(a1 + 20);
          v108 = v102++ < v107;
        }

        while (v108);
        if (v107 >= 1)
        {
          v109 = 0;
          do
          {
            v110 = *(*v14 + 8);
            v111 = *v14;
            if (v109 >= v110)
            {
              IOSArray_throwOutOfBoundsWithMsg(v110, v109);
            }

            v112 = v109 + 1;
            v113 = *(v111 + 8);
            if (v109 + 1 >= v113)
            {
              IOSArray_throwOutOfBoundsWithMsg(v113, (v109 + 1));
            }

            *(v111 + 12 + 4 * v109 + 4) += *(*v14 + 12 + 4 * v109);
            ++v109;
          }

          while (v112 < *(a1 + 20));
        }
      }

LABEL_67:
      v120 = 0;
      do
      {
        if (v120 >= *(a1 + 20))
        {
          goto LABEL_10;
        }

        v121 = *v14;
        if (!*v14)
        {
          goto LABEL_79;
        }

        v122 = *(v121 + 8);
        if (v120 + 1 >= v122)
        {
          IOSArray_throwOutOfBoundsWithMsg(v122, (v120 + 1));
        }

        v123 = *(v121 + 12 + 4 * v120 + 4);
        if (v120 >= v122)
        {
          IOSArray_throwOutOfBoundsWithMsg(v122, v120);
        }

        v124 = *v16;
        if (!*v16)
        {
          goto LABEL_79;
        }

        v125 = *(*v14 + 12 + 4 * v120);
        v126 = *(v124 + 8);
        if (v120 >= v126)
        {
          IOSArray_throwOutOfBoundsWithMsg(v126, v120);
        }

        v127 = *(v124 + 12 + 4 * v120++);
      }

      while ((v123 == v125) != (v127 != 0));
      v128 = JreStrcat("$I$I", v94, v95, v96, v97, v98, v99, v100, @"length=");
      goto LABEL_83;
    }

    v141 = @"bitsPerLength=";
LABEL_89:
    v128 = JreStrcat("$I", v26, v27, v28, v29, v30, v31, v32, v141);
LABEL_83:
    v129 = v128;
    Weak = objc_loadWeak((a1 + 8));
    goto LABEL_84;
  }

  v34 = *v16;
  if (!v34)
  {
    goto LABEL_79;
  }

  v35 = *(v34 + 8);
  if (v35 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v35, 0);
  }

  *(v34 + 12) = v33;
  v36 = [*(objc_loadWeak((a1 + 8)) + 5) readVInt];
  v37 = *v14;
  if (!*v14)
  {
    goto LABEL_79;
  }

  v38 = v36;
  v39 = *(v37 + 8);
  if (v39 <= 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v39, 1);
  }

  *(v37 + 16) = v38;
LABEL_10:
  *(a1 + 48) = [*(objc_loadWeak((a1 + 8)) + 5) getFilePointer];
  result = objc_loadWeak((a1 + 8));
  if (*(result + 76) == 1)
  {
    v48 = *v14;
    if (!*v14)
    {
      goto LABEL_79;
    }

    v49 = *(a1 + 20);
    result = *(v48 + 8);
    if (v49 < 0 || v49 >= result)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, v49);
    }

    v50 = *(v48 + 12 + 4 * v49);
    if (*(a1 + 24) == 1)
    {
      *(*(a1 + 64) + 20) = 0;
      v51 = *(a1 + 64);
      if (!v51)
      {
        goto LABEL_79;
      }

      *(v51 + 16) = 0;
      if (v50 >= 1)
      {
        v52 = 0;
        do
        {
          v53 = objc_loadWeak((a1 + 8));
          v54 = JavaLangMath_minWithInt_withInt_((v50 - v52), v53[12]);
          v55 = *(objc_loadWeak((a1 + 8)) + 8);
          if (!v55)
          {
            goto LABEL_79;
          }

          [v55 decompressWithOrgApacheLuceneStoreDataInput:*(objc_loadWeak((a1 + 8)) + 5) withInt:v54 withInt:0 withInt:v54 withOrgApacheLuceneUtilBytesRef:*(a1 + 56)];
          v62 = *(a1 + 56);
          if (!v62)
          {
            goto LABEL_79;
          }

          v63 = *(a1 + 64);
          v64 = OrgApacheLuceneUtilArrayUtil_growWithByteArray_withInt_(*(v63 + 8), *(v62 + 20) + *(v63 + 20), v56, v57, v58, v59, v60, v61);
          JreStrongAssign((v63 + 8), v64);
          result = JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(*(a1 + 56) + 8), *(*(a1 + 56) + 16), *(*(a1 + 64) + 8), *(*(a1 + 64) + 20), *(*(a1 + 56) + 20));
          *(*(a1 + 64) + 20) += *(*(a1 + 56) + 20);
          v52 += v54;
        }

        while (v52 < v50);
      }
    }

    else
    {
      v77 = *(objc_loadWeak((a1 + 8)) + 8);
      if (!v77)
      {
        goto LABEL_79;
      }

      result = [v77 decompressWithOrgApacheLuceneStoreDataInput:*(objc_loadWeak((a1 + 8)) + 5) withInt:v50 withInt:0 withInt:v50 withOrgApacheLuceneUtilBytesRef:*(a1 + 64)];
    }

    v78 = *(a1 + 64);
    if (!v78)
    {
      goto LABEL_79;
    }

    if (*(v78 + 20) != v50)
    {
      v129 = JreStrcat("$I$I", v41, v42, v43, v44, v45, v46, v47, @"Corrupted: expected chunk size = ");
      Weak = objc_loadWeak((a1 + 8));
LABEL_84:
      v131 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v129, Weak[5]);
      objc_exception_throw(v131);
    }
  }

  return result;
}

void *sub_1000A53EC(id *a1, void *a2)
{
  objc_storeWeak(a1 + 1, a2);
  if ((atomic_load_explicit(OrgApacheLuceneUtilIntsRef__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000921B4();
  }

  JreStrongAssign(a1 + 4, OrgApacheLuceneUtilIntsRef_EMPTY_INTS_);
  if ((atomic_load_explicit(OrgApacheLuceneUtilIntsRef__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000921B4();
  }

  JreStrongAssign(a1 + 5, OrgApacheLuceneUtilIntsRef_EMPTY_INTS_);
  v3 = new_OrgApacheLuceneUtilBytesRef_init();
  JreStrongAssignAndConsume(a1 + 7, v3);
  v4 = new_OrgApacheLuceneUtilBytesRef_init();

  return JreStrongAssignAndConsume(a1 + 8, v4);
}

uint64_t sub_1000A5858(uint64_t a1, void *a2, int a3)
{
  JreStrongAssign((a1 + 16), a2);
  *(a1 + 28) = a3;
  result = OrgApacheLuceneStoreDataInput_init(a1, v6);
  v8 = a2[8];
  if (!v8)
  {
    JreThrowNullPointerException();
  }

  *(a1 + 24) = *(v8 + 20);
  return result;
}

uint64_t OrgApacheLuceneUtilPackedPackedInts_checkVersionWithInt_(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((result & 0x80000000) != 0)
  {
    v8 = JreStrcat("$I$IC", a2, a3, a4, a5, a6, a7, a8, @"Version is too old, should be at least ");
    goto LABEL_6;
  }

  if (result >= 3)
  {
    v8 = JreStrcat("$I$IC", a2, a3, a4, a5, a6, a7, a8, @"Version is too new, should be at most ");
LABEL_6:
    v9 = new_JavaLangIllegalArgumentException_initWithNSString_(v8);
    objc_exception_throw(v9);
  }

  return result;
}

OrgApacheLuceneUtilPackedPackedInts_FormatAndBits *OrgApacheLuceneUtilPackedPackedInts_fastestFormatAndBitsWithInt_withInt_withFloat_(int a1, uint64_t a2, float a3)
{
  JavaLangMath_maxWithFloat_withFloat_(0.0, a3);
  v6 = JavaLangMath_minWithFloat_withFloat_(7.0, v5) * a2;
  if (v6 < 0.0)
  {
    v7 = 0x80000000;
  }

  else
  {
    v7 = 0x7FFFFFFF;
  }

  if (v6 == 0x80000000)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100003648();
  }

  v9 = v8 + a2;
  v10 = OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_;
  if (a2 > 8 || v9 <= 7)
  {
    if (a2 > 16 || v9 <= 15)
    {
      if (a2 > 32 || v9 <= 31)
      {
        if (a2 > 64 || v9 <= 63)
        {
          v13 = a1 != -1 && a1 < 715827883;
          if (v13 && a2 <= 24 && v9 > 23)
          {
            LODWORD(v11) = 24;
          }

          else
          {
            v14 = !v13;
            if (a2 > 48)
            {
              v14 = 1;
            }

            if ((v14 & 1) != 0 || v9 <= 47)
            {
              if (v9 < a2)
              {
                goto LABEL_37;
              }

              v11 = a2;
              while (1)
              {
                if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
                {
                  sub_100003648();
                }

                if (!qword_100557918)
                {
                  JreThrowNullPointerException();
                }

                if ([qword_100557918 isSupportedWithInt:v11])
                {
                  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
                  {
                    sub_100003648();
                  }

                  [qword_100557918 overheadPerValueWithInt:v11];
                  if (v17 <= ((v6 + a2) - v11))
                  {
                    break;
                  }
                }

                v11 = (v11 + 1);
                if (v11 > v9)
                {
                  goto LABEL_37;
                }
              }

              if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
              {
                sub_100003648();
              }

              v10 = qword_100557918;
              if ((v11 & 0x80000000) != 0)
              {
LABEL_37:
                LODWORD(v11) = a2;
              }
            }

            else
            {
              LODWORD(v11) = 48;
            }
          }
        }

        else
        {
          LODWORD(v11) = 64;
        }
      }

      else
      {
        LODWORD(v11) = 32;
      }
    }

    else
    {
      LODWORD(v11) = 16;
    }
  }

  else
  {
    LODWORD(v11) = 8;
  }

  v15 = [OrgApacheLuceneUtilPackedPackedInts_FormatAndBits alloc];
  JreStrongAssign(&v15->format_, v10);
  v15->bitsPerValue_ = v11;

  return v15;
}

uint64_t OrgApacheLuceneUtilPackedPackedInts_getDecoderWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  OrgApacheLuceneUtilPackedPackedInts_checkVersionWithInt_(a2, a2, a3, a4, a5, a6, a7, a8);

  return OrgApacheLuceneUtilPackedBulkOperation_ofWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_(a1, v8);
}

uint64_t OrgApacheLuceneUtilPackedPackedInts_getEncoderWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  OrgApacheLuceneUtilPackedPackedInts_checkVersionWithInt_(a2, a2, a3, a4, a5, a6, a7, a8);

  return OrgApacheLuceneUtilPackedBulkOperation_ofWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_(a1, v8);
}

void *OrgApacheLuceneUtilPackedPackedInts_getReaderNoHeaderWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt_(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OrgApacheLuceneUtilPackedPackedInts_checkVersionWithInt_(a3, a2, a3, a4, a5, a6, a7, a8);
  v13 = [a2 ordinal];
  if (v13)
  {
    if (v13 != 1)
    {
      v25 = JreStrcat("$@", v14, v15, v16, v17, v18, v19, v20, @"Unknown Writer format: ");
      v26 = new_JavaLangAssertionError_initWithId_(v25);
      objc_exception_throw(v26);
    }

    return OrgApacheLuceneUtilPackedPacked64SingleBlock_createWithOrgApacheLuceneStoreDataInput_withInt_withInt_(a1, a4, a5);
  }

  HIDWORD(v23) = a5 - 8;
  LODWORD(v23) = a5 - 8;
  v22 = v23 >> 3;
  if (v22 > 2)
  {
    switch(v22)
    {
      case 3:
        v24 = new_OrgApacheLuceneUtilPackedDirect32_initWithInt_withOrgApacheLuceneStoreDataInput_withInt_(a3, a1, a4);
        goto LABEL_22;
      case 5:
        if (a4 < 715827883)
        {
          v24 = new_OrgApacheLuceneUtilPackedPacked16ThreeBlocks_initWithInt_withOrgApacheLuceneStoreDataInput_withInt_(a3, a1, a4);
          goto LABEL_22;
        }

        break;
      case 7:
        v24 = new_OrgApacheLuceneUtilPackedDirect64_initWithInt_withOrgApacheLuceneStoreDataInput_withInt_(a3, a1, a4);
        goto LABEL_22;
    }

LABEL_21:
    v24 = new_OrgApacheLuceneUtilPackedPacked64_initWithInt_withOrgApacheLuceneStoreDataInput_withInt_withInt_(a3, a1, a4, a5);
    goto LABEL_22;
  }

  if (!v22)
  {
    v24 = new_OrgApacheLuceneUtilPackedDirect8_initWithInt_withOrgApacheLuceneStoreDataInput_withInt_(a3, a1, a4);
    goto LABEL_22;
  }

  if (v22 == 1)
  {
    v24 = new_OrgApacheLuceneUtilPackedDirect16_initWithInt_withOrgApacheLuceneStoreDataInput_withInt_(a3, a1, a4);
    goto LABEL_22;
  }

  if (v22 != 2 || a4 >= 715827883)
  {
    goto LABEL_21;
  }

  v24 = new_OrgApacheLuceneUtilPackedPacked8ThreeBlocks_initWithInt_withOrgApacheLuceneStoreDataInput_withInt_(a3, a1, a4);
LABEL_22:

  return v24;
}

void *OrgApacheLuceneUtilPackedPackedInts_getReaderWithOrgApacheLuceneStoreDataInput_(void *a1)
{
  v2 = OrgApacheLuceneCodecsCodecUtil_checkHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_(a1, OrgApacheLuceneUtilPackedPackedInts_CODEC_NAME_, 0, 2);
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v3 = v2;
  v4 = [a1 readVInt];
  v5 = [a1 readVInt];
  v6 = OrgApacheLuceneUtilPackedPackedInts_FormatEnum_byIdWithInt_([a1 readVInt]);

  return OrgApacheLuceneUtilPackedPackedInts_getReaderNoHeaderWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt_(a1, v6, v3, v5, v4, v7, v8, v9);
}

OrgApacheLuceneUtilPackedPackedReaderIterator *OrgApacheLuceneUtilPackedPackedInts_getReaderIteratorNoHeaderWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt_withInt_(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  OrgApacheLuceneUtilPackedPackedInts_checkVersionWithInt_(a3, a2, a3, a4, a5, a6, a7, a8);
  v14 = new_OrgApacheLuceneUtilPackedPackedReaderIterator_initWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt_withOrgApacheLuceneStoreDataInput_withInt_(a2, v11, v10, v9, a1, a6);

  return v14;
}

OrgApacheLuceneUtilPackedPackedReaderIterator *OrgApacheLuceneUtilPackedPackedInts_getReaderIteratorWithOrgApacheLuceneStoreDataInput_withInt_(void *a1, uint64_t a2)
{
  v4 = OrgApacheLuceneCodecsCodecUtil_checkHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_(a1, OrgApacheLuceneUtilPackedPackedInts_CODEC_NAME_, 0, 2);
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v5 = v4;
  v6 = [a1 readVInt];
  v7 = [a1 readVInt];
  v8 = OrgApacheLuceneUtilPackedPackedInts_FormatEnum_byIdWithInt_([a1 readVInt]);
  OrgApacheLuceneUtilPackedPackedInts_checkVersionWithInt_(v5, v9, v10, v11, v12, v13, v14, v15);
  v16 = new_OrgApacheLuceneUtilPackedPackedReaderIterator_initWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt_withOrgApacheLuceneStoreDataInput_withInt_(v8, v5, v7, v6, a1, a2);

  return v16;
}

OrgApacheLuceneUtilPackedPackedInts_$1 *OrgApacheLuceneUtilPackedPackedInts_getDirectReaderNoHeaderWithOrgApacheLuceneStoreIndexInput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt_(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OrgApacheLuceneUtilPackedPackedInts_checkVersionWithInt_(a3, a2, a3, a4, a5, a6, a7, a8);
  v13 = [a2 ordinal];
  if (v13 == 1)
  {
    v22 = new_OrgApacheLuceneUtilPackedDirectPacked64SingleBlockReader_initWithInt_withInt_withOrgApacheLuceneStoreIndexInput_(a5, a4, a1);
    goto LABEL_7;
  }

  if (v13)
  {
    v26 = JreStrcat("$@", v14, v15, v16, v17, v18, v19, v20, @"Unknwown format: ");
    v27 = new_JavaLangAssertionError_initWithId_(v26);
    objc_exception_throw(v27);
  }

  if (!a2)
  {
    goto LABEL_13;
  }

  v21 = [a2 byteCountWithInt:a3 withInt:a4 withInt:a5];
  if (v21 == [a2 byteCountWithInt:2 withInt:a4 withInt:a5])
  {
    v22 = new_OrgApacheLuceneUtilPackedDirectPackedReader_initWithInt_withInt_withOrgApacheLuceneStoreIndexInput_(a5, a4, a1);
LABEL_7:
    v23 = v22;
    goto LABEL_10;
  }

  if (!a1)
  {
LABEL_13:
    JreThrowNullPointerException();
  }

  v24 = &v21[[a1 getFilePointer]];
  v23 = [OrgApacheLuceneUtilPackedPackedInts__1 alloc];
  v23->val$endPointer_ = v24;
  OrgApacheLuceneUtilPackedDirectPackedReader_initWithInt_withInt_withOrgApacheLuceneStoreIndexInput_(v23, a5, a4, a1);
LABEL_10:

  return v23;
}

OrgApacheLuceneUtilPackedPackedInts_$1 *OrgApacheLuceneUtilPackedPackedInts_getDirectReaderWithOrgApacheLuceneStoreIndexInput_(void *a1)
{
  v2 = OrgApacheLuceneCodecsCodecUtil_checkHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_(a1, OrgApacheLuceneUtilPackedPackedInts_CODEC_NAME_, 0, 2);
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v3 = v2;
  v4 = [a1 readVInt];
  v5 = [a1 readVInt];
  v6 = OrgApacheLuceneUtilPackedPackedInts_FormatEnum_byIdWithInt_([a1 readVInt]);

  return OrgApacheLuceneUtilPackedPackedInts_getDirectReaderNoHeaderWithOrgApacheLuceneStoreIndexInput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt_(a1, v6, v3, v5, v4, v7, v8, v9);
}

id OrgApacheLuceneUtilPackedPackedInts_getMutableWithInt_withInt_withFloat_(uint64_t a1, uint64_t a2, float a3)
{
  v4 = OrgApacheLuceneUtilPackedPackedInts_fastestFormatAndBitsWithInt_withInt_withFloat_(a1, a2, a3);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  bitsPerValue = v4->bitsPerValue_;
  format = v4->format_;

  return OrgApacheLuceneUtilPackedPackedInts_getMutableWithInt_withInt_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_(a1, bitsPerValue, format);
}

id OrgApacheLuceneUtilPackedPackedInts_getMutableWithInt_withInt_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 ordinal];
  if (v5)
  {
    if (v5 != 1)
    {
      v10 = new_JavaLangAssertionError_init();
      objc_exception_throw(v10);
    }

    return OrgApacheLuceneUtilPackedPacked64SingleBlock_createWithInt_withInt_(a1, a2);
  }

  HIDWORD(v8) = a2 - 8;
  LODWORD(v8) = a2 - 8;
  v7 = v8 >> 3;
  if (v7 > 2)
  {
    switch(v7)
    {
      case 3:
        v9 = new_OrgApacheLuceneUtilPackedDirect32_initWithInt_(a1);
        goto LABEL_22;
      case 5:
        if (a1 < 715827883)
        {
          v9 = new_OrgApacheLuceneUtilPackedPacked16ThreeBlocks_initWithInt_(a1);
          goto LABEL_22;
        }

        break;
      case 7:
        v9 = new_OrgApacheLuceneUtilPackedDirect64_initWithInt_(a1);
        goto LABEL_22;
    }

LABEL_21:
    v9 = new_OrgApacheLuceneUtilPackedPacked64_initWithInt_withInt_(a1, a2);
    goto LABEL_22;
  }

  if (!v7)
  {
    v9 = new_OrgApacheLuceneUtilPackedDirect8_initWithInt_(a1);
    goto LABEL_22;
  }

  if (v7 == 1)
  {
    v9 = new_OrgApacheLuceneUtilPackedDirect16_initWithInt_(a1);
    goto LABEL_22;
  }

  if (v7 != 2 || a1 >= 715827883)
  {
    goto LABEL_21;
  }

  v9 = new_OrgApacheLuceneUtilPackedPacked8ThreeBlocks_initWithInt_(a1);
LABEL_22:

  return v9;
}

OrgApacheLuceneUtilPackedPackedWriter *OrgApacheLuceneUtilPackedPackedInts_getWriterNoHeaderWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt_(void *a1, void *a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = new_OrgApacheLuceneUtilPackedPackedWriter_initWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withOrgApacheLuceneStoreDataOutput_withInt_withInt_withInt_(a2, a1, a3, a4, a5);

  return v5;
}

OrgApacheLuceneUtilPackedPackedWriter *OrgApacheLuceneUtilPackedPackedInts_getWriterWithOrgApacheLuceneStoreDataOutput_withInt_withInt_withFloat_(void *a1, uint64_t a2, uint64_t a3, float a4)
{
  v6 = OrgApacheLuceneUtilPackedPackedInts_fastestFormatAndBitsWithInt_withInt_withFloat_(a2, a3, a4);
  if (!v6 || (v7 = new_OrgApacheLuceneUtilPackedPackedWriter_initWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withOrgApacheLuceneStoreDataOutput_withInt_withInt_withInt_(v6->format_, a1, a2, v6->bitsPerValue_, 1024)) == 0)
  {
    JreThrowNullPointerException();
  }

  v8 = v7;
  [(OrgApacheLuceneUtilPackedPackedInts_Writer *)v7 writeHeader];
  return v8;
}

uint64_t OrgApacheLuceneUtilPackedPackedInts_bitsRequiredWithLong_(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    v10 = JreStrcat("$JC", a2, a3, a4, a5, a6, a7, a8, @"maxValue must be non-negative (got: ");
    v11 = new_JavaLangIllegalArgumentException_initWithNSString_(v10);
    objc_exception_throw(v11);
  }

  v8 = 64 - JavaLangLong_numberOfLeadingZerosWithLong_(a1);

  return JavaLangMath_maxWithInt_withInt_(1, v8);
}

uint64_t OrgApacheLuceneUtilPackedPackedInts_unsignedBitsRequiredWithLong_(unint64_t a1)
{
  v1 = 64 - JavaLangLong_numberOfLeadingZerosWithLong_(a1);

  return JavaLangMath_maxWithInt_withInt_(1, v1);
}

uint64_t OrgApacheLuceneUtilPackedPackedInts_maxValueWithInt_(int a1)
{
  if (a1 == 64)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return ~(-1 << a1);
  }
}

id OrgApacheLuceneUtilPackedPackedInts_copy__WithOrgApacheLuceneUtilPackedPackedInts_Reader_withInt_withOrgApacheLuceneUtilPackedPackedInts_Mutable_withInt_withInt_withInt_(id result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v6 = a5;
  v10 = result;
  if (a6 > 7)
  {
    if (a5 >= 1)
    {
      v11 = [IOSLongArray arrayWithLength:JavaLangMath_minWithInt_withInt_(a6 >> 3, a5)];

      return OrgApacheLuceneUtilPackedPackedInts_copy__WithOrgApacheLuceneUtilPackedPackedInts_Reader_withInt_withOrgApacheLuceneUtilPackedPackedInts_Mutable_withInt_withInt_withLongArray_(v10, a2, a3, a4, v6, v11);
    }
  }

  else if (a5 >= 1)
  {
    do
    {
      result = [a3 setWithInt:a4 withLong:{objc_msgSend(v10, "getWithInt:", a2)}];
      a2 = (a2 + 1);
      a4 = (a4 + 1);
      LODWORD(v6) = v6 - 1;
    }

    while (v6);
  }

  return result;
}

id OrgApacheLuceneUtilPackedPackedInts_copy__WithOrgApacheLuceneUtilPackedPackedInts_Reader_withInt_withOrgApacheLuceneUtilPackedPackedInts_Mutable_withInt_withInt_withLongArray_(id result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  if (a5 >= 1)
  {
    v6 = result;
    if (!result)
    {
LABEL_11:
      JreThrowNullPointerException();
    }

    v8 = a5;
    v12 = 0;
    do
    {
      v13 = [v6 getWithInt:a2 withLongArray:a6 withInt:v12 withInt:{JavaLangMath_minWithInt_withInt_(v8, a6[2] - v12)}];
      if (!a3)
      {
        goto LABEL_11;
      }

      v14 = v13;
      v15 = v13 + v12;
      result = [a3 setWithInt:a4 withLongArray:a6 withInt:0 withInt:v15];
      v16 = result;
      v17 = __OFSUB__(v15, result);
      v12 = (v15 - result);
      if (!((v12 < 0) ^ v17 | (v12 == 0)))
      {
        result = JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(a6, result, a6, 0, v12);
      }

      a2 = v14 + a2;
      v8 = v8 - v14;
      a4 = (v16 + a4);
    }

    while (v8 > 0);
    if (v12 >= 1)
    {
      do
      {
        v18 = [a3 setWithInt:a4 withLongArray:a6 withInt:0 withInt:v12];
        a4 = (v18 + a4);
        v12 = (v12 - v18);
        result = JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(a6, v18, a6, 0, v12);
      }

      while (v12 > 0);
    }
  }

  return result;
}

uint64_t OrgApacheLuceneUtilPackedPackedInts_checkBlockSizeWithInt_withInt_withInt_(signed int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 < a2 || a1 > a3)
  {
    v9 = JreStrcat("$I$I$I", a2, a3, a4, a5, a6, a7, a8, @"blockSize must be >= ");
    goto LABEL_9;
  }

  if ((a1 & (a1 - 1)) != 0)
  {
    v9 = JreStrcat("$I", a2, a3, a4, a5, a6, a7, a8, @"blockSize must be a power of two, got ");
LABEL_9:
    v10 = new_JavaLangIllegalArgumentException_initWithNSString_(v9);
    objc_exception_throw(v10);
  }

  return JavaLangInteger_numberOfTrailingZerosWithInt_(a1);
}

uint64_t OrgApacheLuceneUtilPackedPackedInts_numBlocksWithLong_withInt_(uint64_t a1, int a2)
{
  v3 = a1 / a2;
  if (a1 % a2)
  {
    result = (v3 + 1);
  }

  else
  {
    result = v3;
  }

  if (result * a2 < a1)
  {
    v5 = new_JavaLangIllegalArgumentException_initWithNSString_(@"size is too large for this block size");
    objc_exception_throw(v5);
  }

  return result;
}

void *OrgApacheLuceneUtilPackedPackedInts_FormatEnum_byIdWithInt_(int a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100003648();
  }

  v2 = OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values();
  if (!v2)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  p_elementType = &v2->elementType_;
  v11 = &(&v2->elementType_)[v2->super.size_];
  do
  {
    if (p_elementType >= v11)
    {
      v14 = JreStrcat("$I", v3, v4, v5, v6, v7, v8, v9, @"Unknown format id: ");
      v15 = new_JavaLangIllegalArgumentException_initWithNSString_(v14);
      objc_exception_throw(v15);
    }

    v12 = *p_elementType;
    if (!*p_elementType)
    {
      goto LABEL_9;
    }

    ++p_elementType;
  }

  while ([v12 getId] != a1);
  return v12;
}

IOSObjectArray *OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values()
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100003648();
  }

  v0 = OrgApacheLuceneUtilPackedPackedInts_FormatEnum_class_();

  return [IOSObjectArray arrayWithObjects:&OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_ count:2 type:v0];
}

void *OrgApacheLuceneUtilPackedPackedInts_FormatEnum_valueOfWithNSString_(void *a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100003648();
  }

  v2 = 0;
  for (i = 1; ; i = 0)
  {
    v4 = i;
    v5 = OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_[v2];
    if ([a1 isEqual:{objc_msgSend(v5, "name")}])
    {
      break;
    }

    v2 = 1;
    if ((v4 & 1) == 0)
    {
      objc_exception_throw([[JavaLangIllegalArgumentException alloc] initWithNSString:a1]);
    }
  }

  return v5;
}

uint64_t OrgApacheLuceneUtilPackedPackedInts_FormatEnum_class_()
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100003648();
  }

  if (qword_100554310 != -1)
  {
    sub_1000A7C54();
  }

  return qword_100554308;
}

uint64_t OrgApacheLuceneUtilPackedPackedInts_Decoder_class_()
{
  if (qword_100554320 != -1)
  {
    sub_1000A7C68();
  }

  return qword_100554318;
}

uint64_t OrgApacheLuceneUtilPackedPackedInts_Encoder_class_()
{
  if (qword_100554330 != -1)
  {
    sub_1000A7C7C();
  }

  return qword_100554328;
}

uint64_t OrgApacheLuceneUtilPackedPackedInts_Reader_class_()
{
  if (qword_100554340 != -1)
  {
    sub_1000A7C90();
  }

  return qword_100554338;
}

id OrgApacheLuceneUtilPackedPackedInts_ReaderIteratorImpl_initWithInt_withInt_withOrgApacheLuceneStoreDataInput_(uint64_t a1, int a2, int a3, void *a4)
{
  result = JreStrongAssign((a1 + 8), a4);
  *(a1 + 16) = a3;
  *(a1 + 20) = a2;
  return result;
}

uint64_t OrgApacheLuceneUtilPackedPackedInts_Mutable_class_()
{
  if (qword_100554350 != -1)
  {
    sub_1000A7CA4();
  }

  return qword_100554348;
}

uint64_t OrgApacheLuceneUtilPackedPackedInts_ReaderImpl_initWithInt_(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  result = OrgApacheLuceneIndexNumericDocValues_init(a1, a2);
  *(a1 + 8) = v2;
  return result;
}

uint64_t OrgApacheLuceneUtilPackedPackedInts_MutableImpl_initWithInt_withInt_(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  result = OrgApacheLuceneIndexNumericDocValues_init(a1, a2);
  *(a1 + 8) = v4;
  *(a1 + 12) = a3;
  return result;
}

OrgApacheLuceneUtilPackedPackedInts_NullReader *new_OrgApacheLuceneUtilPackedPackedInts_NullReader_initWithInt_(int a1)
{
  v2 = [OrgApacheLuceneUtilPackedPackedInts_NullReader alloc];
  OrgApacheLuceneIndexNumericDocValues_init(v2, v3);
  v2->valueCount_ = a1;
  return v2;
}

id OrgApacheLuceneUtilPackedPackedInts_Writer_initWithOrgApacheLuceneStoreDataOutput_withInt_withInt_(uint64_t a1, void *a2, int a3, int a4)
{
  result = JreStrongAssign((a1 + 8), a2);
  *(a1 + 16) = a3;
  *(a1 + 20) = a4;
  return result;
}

id ComAppleProactiveLuceneCachingQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchIndexSearcher_(uint64_t a1, uint64_t a2, void *a3)
{
  OrgApacheLuceneSearchQuery_init(a1);
  JreStrongAssign((a1 + 28), 0);
  JreStrongAssign((a1 + 36), 0);
  JreStrongAssign((a1 + 20), a3);
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v6 = [a3 rewriteWithOrgApacheLuceneSearchQuery:a2];

  return JreStrongAssign((a1 + 12), v6);
}

id OrgApacheLuceneSearchDisjunctionMaxQuery_initWithJavaUtilCollection_withFloat_(uint64_t a1, uint64_t a2, float a3)
{
  OrgApacheLuceneSearchQuery_init(a1);
  v6 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume((a1 + 12), v6);
  *(a1 + 20) = 0;
  OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_withNSString_(a2, @"Collection of Querys must not be null");
  *(a1 + 20) = a3;

  return [a1 addWithJavaUtilCollection:a2];
}

OrgApacheLuceneSearchDisjunctionMaxQuery *new_OrgApacheLuceneSearchDisjunctionMaxQuery_initWithJavaUtilCollection_withFloat_(uint64_t a1, float a2)
{
  v4 = [OrgApacheLuceneSearchDisjunctionMaxQuery alloc];
  OrgApacheLuceneSearchDisjunctionMaxQuery_initWithJavaUtilCollection_withFloat_(v4, a1, a2);
  return v4;
}

id OrgApacheLuceneSearchDisjunctionMaxQuery_DisjunctionMaxWeight_initWithOrgApacheLuceneSearchDisjunctionMaxQuery_withOrgApacheLuceneSearchIndexSearcher_withBoolean_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  JreStrongAssign((a1 + 24), a2);
  OrgApacheLuceneSearchWeight_initWithOrgApacheLuceneSearchQuery_(a1, a2);
  v8 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume((a1 + 16), v8);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = *(a2 + 12);
  if (!v9)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  result = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (result)
  {
    v11 = result;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * v13);
        if (!v14)
        {
          goto LABEL_11;
        }

        [*(a1 + 16) addWithId:{objc_msgSend(v14, "createWeightWithOrgApacheLuceneSearchIndexSearcher:withBoolean:", a3, a4, v15)}];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      result = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v11 = result;
    }

    while (result);
  }

  *(a1 + 32) = a4;
  return result;
}

OrgApacheLuceneUtilPackedBulkOperationPacked3 *new_OrgApacheLuceneUtilPackedBulkOperationPacked3_init()
{
  v0 = [OrgApacheLuceneUtilPackedBulkOperationPacked3 alloc];
  OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(v0, 3);
  return v0;
}

OrgApacheLuceneSearchPhrasePositions *new_OrgApacheLuceneSearchPhrasePositions_initWithOrgApacheLuceneIndexPostingsEnum_withInt_withInt_withOrgApacheLuceneIndexTermArray_(void *a1, int a2, int a3, void *a4)
{
  v8 = [OrgApacheLuceneSearchPhrasePositions alloc];
  v8->rptGroup_ = -1;
  JreStrongAssign(&v8->postings_, a1);
  v8->offset_ = a2;
  v8->ord_ = a3;
  JreStrongAssign(&v8->terms_, a4);
  return v8;
}

uint64_t OrgApacheLuceneSearchPhrasePositions_class_()
{
  if (qword_100554360 != -1)
  {
    sub_1000AC2EC();
  }

  return qword_100554358;
}

id sub_1000AC334(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  OrgApacheLuceneSearchQuery_init(a1);
  if (!a3 || !a4)
  {
    goto LABEL_34;
  }

  v15 = *(a3 + 8);
  if (v15 != *(a4 + 8))
  {
    v36 = @"Must have as many terms as positions";
    goto LABEL_42;
  }

  if (a2 < 0)
  {
    v35 = @"Slop must be >= 0, got ";
LABEL_37:
    v36 = JreStrcat("$I", v8, v9, v10, v11, v12, v13, v14, v35);
    goto LABEL_42;
  }

  if (v15 >= 2)
  {
    v16 = 0;
    while (1)
    {
      v17 = *(a3 + 24 + 8 * v16);
      if (!v17)
      {
        goto LABEL_34;
      }

      v18 = [v17 field];
      if (!v18)
      {
        goto LABEL_34;
      }

      v19 = v18;
      v20 = *(a3 + 8);
      if (v16 + 1 >= v20)
      {
        IOSArray_throwOutOfBoundsWithMsg(v20, (v16 + 1));
      }

      v21 = *(a3 + 24 + 8 * v16 + 8);
      if (!v21)
      {
        goto LABEL_34;
      }

      if (([v19 isEqual:{objc_msgSend(v21, "field")}] & 1) == 0)
      {
        break;
      }

      v22 = v16 + 2;
      ++v16;
      if (v22 >= *(a3 + 8))
      {
        v15 = *(a4 + 8);
        goto LABEL_15;
      }
    }

    v36 = @"All terms should have the same field";
LABEL_42:
    v38 = new_JavaLangIllegalArgumentException_initWithNSString_(v36);
    objc_exception_throw(v38);
  }

LABEL_15:
  for (i = (a4 + 12); i < a4 + 12 + 4 * v15; ++i)
  {
    if ((*i & 0x80000000) != 0)
    {
      v35 = @"Positions must be >= 0, got ";
      goto LABEL_37;
    }
  }

  if (v15 >= 2)
  {
    v24 = 0;
    while (1)
    {
      if (v24 + 1 > v15)
      {
        IOSArray_throwOutOfBoundsWithMsg(v15, v24);
      }

      v15 = *(a4 + 8);
      if (*(a4 + 12 + 4 * v24 + 4) < *(a4 + 12 + 4 * v24))
      {
        break;
      }

      v25 = v24 + 2;
      ++v24;
      if (v25 >= v15)
      {
        goto LABEL_26;
      }
    }

    if (v15 < v24 + 1)
    {
      IOSArray_throwOutOfBoundsWithMsg(v15, v24);
    }

    v37 = *(a4 + 12 + 4 * v24);
    if (v15 <= v24 + 1)
    {
      IOSArray_throwOutOfBoundsWithMsg(v15, v24 + 1);
    }

    v39 = *(a4 + 12 + 4 * v24 + 4);
    v36 = JreStrcat("$I$I", v8, v9, v10, v11, v12, v13, v14, @"Positions should not go backwards, got ");
    goto LABEL_42;
  }

LABEL_26:
  *(a1 + 16) = a2;
  v26 = JavaUtilArrays_asListWithNSObjectArray_(a3);
  JreStrongAssign((a1 + 28), v26);
  v27 = new_JavaUtilArrayList_initWithInt_(*(a4 + 8));
  JreStrongAssignAndConsume((a1 + 36), v27);
  v28 = (a4 + 12);
  v29 = a4 + 12 + 4 * *(a4 + 8);
  if (a4 + 12 < v29)
  {
    do
    {
      v30 = *v28++;
      [*(a1 + 36) addWithId:JavaLangInteger_valueOfWithInt_(v30)];
    }

    while (v28 < v29);
  }

  v31 = *(a3 + 8);
  if (!v31)
  {
    v33 = 0;
    goto LABEL_33;
  }

  if (v31 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v31, 0);
  }

  v32 = *(a3 + 24);
  if (!v32)
  {
LABEL_34:
    JreThrowNullPointerException();
  }

  v33 = [v32 field];
LABEL_33:
  result = JreStrongAssign((a1 + 20), v33);
  *(a1 + 12) = 0;
  return result;
}

id OrgApacheLuceneSearchPhraseQuery_initWithInt_withNSString_withNSStringArray_(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  if (!a4)
  {
    JreThrowNullPointerException();
  }

  v8 = [IOSObjectArray arrayWithLength:*(a4 + 8) type:OrgApacheLuceneIndexTerm_class_()];
  if (v8->super.size_ >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(a4 + 8);
      if (v9 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v9);
      }

      v11 = new_OrgApacheLuceneIndexTerm_initWithNSString_withNSString_(a3, *(a4 + 24 + 8 * v9));
      IOSObjectArray_SetAndConsume(v8, v9++, v11);
    }

    while (v9 < v8->super.size_);
  }

  v12 = sub_1000AD5B0(*(a4 + 8));

  return sub_1000AC334(a1, a2, v8, v12);
}

id OrgApacheLuceneSearchPhraseQuery_initWithInt_withNSString_withOrgApacheLuceneUtilBytesRefArray_(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  if (!a4)
  {
    JreThrowNullPointerException();
  }

  v8 = [IOSObjectArray arrayWithLength:*(a4 + 8) type:OrgApacheLuceneIndexTerm_class_()];
  if (v8->super.size_ >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(a4 + 8);
      if (v9 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v9);
      }

      v11 = OrgApacheLuceneUtilBytesRef_deepCopyOfWithOrgApacheLuceneUtilBytesRef_(*(a4 + 24 + 8 * v9));
      v12 = new_OrgApacheLuceneIndexTerm_initWithNSString_withOrgApacheLuceneUtilBytesRef_(a3, v11);
      IOSObjectArray_SetAndConsume(v8, v9++, v12);
    }

    while (v9 < v8->super.size_);
  }

  v13 = sub_1000AD5B0(*(a4 + 8));

  return sub_1000AC334(a1, a2, v8, v13);
}

void *OrgApacheLuceneSearchPhraseQuery_init(uint64_t a1)
{
  OrgApacheLuceneSearchQuery_init(a1);
  v2 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume((a1 + 28), v2);
  v3 = new_JavaUtilArrayList_init();
  result = JreStrongAssignAndConsume((a1 + 36), v3);
  *(a1 + 12) = 1;
  return result;
}

uint64_t sub_1000AD270(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(result + 12) & 1) == 0)
  {
    v8 = JreStrcat("$$$", a2, a3, a4, a5, a6, a7, a8, @"This PhraseQuery has been created with the new PhraseQuery.Builder API. It must not be modified afterwards. The ");
    v9 = new_JavaLangIllegalStateException_initWithNSString_(v8);
    objc_exception_throw(v9);
  }

  return result;
}

IOSIntArray *sub_1000AD5B0(int a1)
{
  v2 = [IOSIntArray arrayWithLength:a1];
  if (a1 >= 1)
  {
    v3 = 0;
    do
    {
      size = v2->super.size_;
      if (v3 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v3);
      }

      *(&v2->super.size_ + v3 + 1) = v3;
      ++v3;
    }

    while (a1 != v3);
  }

  return v2;
}

id OrgApacheLuceneSearchPhraseQuery_PostingsAndFreq_initWithOrgApacheLuceneIndexPostingsEnum_withInt_withOrgApacheLuceneIndexTermArray_(uint64_t a1, void *a2, int a3, unsigned int *a4)
{
  JreStrongAssign((a1 + 8), a2);
  *(a1 + 16) = a3;
  if (!a4)
  {
    *(a1 + 32) = 0;
    goto LABEL_6;
  }

  v7 = a4[2];
  *(a1 + 32) = v7;
  if (v7 < 1)
  {
LABEL_6:
    v8 = (a1 + 24);
    v9 = 0;
    goto LABEL_8;
  }

  if (v7 == 1)
  {
    v8 = (a1 + 24);
    v9 = a4;
  }

  else
  {
    v10 = [IOSObjectArray arrayWithLength:v7 type:OrgApacheLuceneIndexTerm_class_()];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(a4, 0, v10, 0, a4[2]);
    JavaUtilArrays_sortWithNSObjectArray_(v10);
    v8 = (a1 + 24);
    v9 = v10;
  }

LABEL_8:

  return JreStrongAssign(v8, v9);
}

id sub_1000ADEC4(uint64_t a1, char *a2, void *a3, uint64_t a4)
{
  JreStrongAssign((a1 + 16), a2);
  OrgApacheLuceneSearchWeight_initWithOrgApacheLuceneSearchQuery_(a1, a2);
  JreStrongAssign((a1 + 56), [a2 getTerms]);
  JreStrongAssign((a1 + 64), [a2 getPositions]);
  v8 = [a2 getPositions];
  if (!v8)
  {
    goto LABEL_16;
  }

  if (v8[2] <= 1)
  {
    v28 = @"PhraseWeight does not support less than 2 terms, call rewrite first";
    goto LABEL_19;
  }

  if (v8[3])
  {
    v28 = @"PhraseWeight requires that the first position is 0, call rewrite first";
LABEL_19:
    v29 = new_JavaLangIllegalStateException_initWithNSString_(v28);
    objc_exception_throw(v29);
  }

  *(a1 + 40) = a4;
  if (!a3)
  {
    goto LABEL_16;
  }

  JreStrongAssign((a1 + 24), [a3 getSimilarityWithBoolean:a4]);
  v9 = [a3 getTopReaderContext];
  v10 = *(a1 + 56);
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = v9;
  v30 = a2;
  v12 = [IOSObjectArray newArrayWithLength:*(v10 + 8) type:OrgApacheLuceneIndexTermContext_class_()];
  JreStrongAssignAndConsume((a1 + 48), v12);
  v13 = [IOSObjectArray arrayWithLength:*(*(a1 + 56) + 8) type:OrgApacheLuceneSearchTermStatistics_class_()];
  v14 = *(a1 + 56);
  if (*(v14 + 8) >= 1)
  {
    v15 = 0;
    do
    {
      v16 = *(v14 + 24 + 8 * v15);
      v17 = *(a1 + 48);
      v18 = OrgApacheLuceneIndexTermContext_buildWithOrgApacheLuceneIndexIndexReaderContext_withOrgApacheLuceneIndexTerm_(v11, v16);
      IOSObjectArray_Set(v17, v15, v18);
      v19 = *(a1 + 48);
      v20 = *(v19 + 8);
      if (v15 >= v20)
      {
        IOSArray_throwOutOfBoundsWithMsg(v20, v15);
      }

      IOSObjectArray_Set(v13, v15, [a3 termStatisticsWithOrgApacheLuceneIndexTerm:v16 withOrgApacheLuceneIndexTermContext:*(v19 + 24 + 8 * v15)]);
      ++v15;
      v14 = *(a1 + 56);
    }

    while (v15 < *(v14 + 8));
  }

  v21 = *(a1 + 24);
  if (!v21)
  {
LABEL_16:
    JreThrowNullPointerException();
  }

  [v30 getBoost];
  v23 = v22;
  v24 = [a3 collectionStatisticsWithNSString:*(v30 + 20)];
  LODWORD(v25) = v23;
  v26 = [v21 computeWeightWithFloat:v24 withOrgApacheLuceneSearchCollectionStatistics:v13 withOrgApacheLuceneSearchTermStatisticsArray:v25];

  return JreStrongAssign((a1 + 32), v26);
}

id OrgApacheLuceneStoreTrackingDirectoryWrapper_initWithOrgApacheLuceneStoreDirectory_(uint64_t a1, void *a2)
{
  OrgApacheLuceneStoreFilterDirectory_initWithOrgApacheLuceneStoreDirectory_(a1, a2);
  v3 = new_JavaUtilHashSet_init();
  v4 = JavaUtilCollections_synchronizedSetWithJavaUtilSet_(v3);

  return JreStrongAssign((a1 + 16), v4);
}

id OrgApacheLuceneSearchIndexSearcher_setDefaultQueryCacheWithOrgApacheLuceneSearchQueryCache_(void *a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneSearchIndexSearcher__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000B0DC4();
  }

  return JreStrongAssign(&qword_100554380, a1);
}

id OrgApacheLuceneSearchIndexSearcher_setDefaultQueryCachingPolicyWithOrgApacheLuceneSearchQueryCachingPolicy_(void *a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneSearchIndexSearcher__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000B0DC4();
  }

  return JreStrongAssign(&qword_100554388, a1);
}

id OrgApacheLuceneSearchIndexSearcher_initWithOrgApacheLuceneIndexIndexReaderContext_withJavaUtilConcurrentExecutorService_(id *a1, void *a2, void *a3)
{
  JreStrongAssign(a1 + 6, qword_100554380);
  JreStrongAssign(a1 + 7, qword_100554388);
  JreStrongAssign(a1 + 8, qword_100554390);
  JreStrongAssign(a1 + 1, [a2 reader]);
  JreStrongAssign(a1 + 5, a3);
  JreStrongAssign(a1 + 2, a2);
  JreStrongAssign(a1 + 3, [a2 leaves]);
  if (a3)
  {
    v6 = [a1 slicesWithJavaUtilList:a1[3]];
  }

  else
  {
    v6 = 0;
  }

  return JreStrongAssign(a1 + 4, v6);
}

id sub_1000AF678(void *a1, unsigned int *a2, uint64_t a3, uint64_t a4, void *a5, BOOL a6, BOOL a7)
{
  v8 = a1[1];
  if (!v8)
  {
    JreThrowNullPointerException();
  }

  v15 = JavaLangMath_maxWithInt_withInt_(1, [v8 maxDoc]);
  if (a2 && a2[3] >= v15)
  {
    v28 = a2[3];
    v26 = JreStrcat("$I$I", v15, v16, v17, v18, v19, v20, v21, @"after.doc exceeds the number of documents in the reader: after.doc=");
    v27 = new_JavaLangIllegalArgumentException_initWithNSString_(v26);
    objc_exception_throw(v27);
  }

  v22 = JavaLangMath_minWithInt_withInt_(a4, v15);
  v23 = [OrgApacheLuceneSearchIndexSearcher__4 alloc];
  JreStrongAssign(&v23->val$sort_, a5);
  v23->val$cappedNumHits_ = v22;
  JreStrongAssign(&v23->val$after_, a2);
  v23->val$doDocScores_ = a6;
  v23->val$doMaxScore_ = a7;
  v24 = v23;

  return [a1 searchWithOrgApacheLuceneSearchQuery:a3 withOrgApacheLuceneSearchCollectorManager:v24];
}

id sub_1000AF7C0(void *a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, BOOL a7, BOOL a8)
{
  objc_opt_class();
  if (a2)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v25 = JreStrcat("$@", v16, v17, v18, v19, v20, v21, v22, @"after must be a FieldDoc; got ");
      v26 = new_JavaLangIllegalArgumentException_initWithNSString_(v25);
      objc_exception_throw(v26);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }
  }

  v23 = [a1 wrapFilterWithOrgApacheLuceneSearchQuery:a3 withOrgApacheLuceneSearchFilter:a4];

  return sub_1000AF678(a1, a2, v23, a5, a6, a7, a8);
}

void sub_1000AFDB0(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 2)
  {
    v2 = objc_begin_catch(exc_buf);
    v3 = new_OrgApacheLuceneUtilThreadInterruptedException_initWithJavaLangInterruptedException_(v2);
    objc_exception_throw(v3);
  }

  if (a2 == 1)
  {
    v4 = objc_begin_catch(exc_buf);
    v5 = new_JavaLangRuntimeException_initWithJavaLangThrowable_(v4);
    objc_exception_throw(v5);
  }

  _Unwind_Resume(exc_buf);
}

id sub_1000B0CF4(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  JreStrongAssign(a1 + 1, a2);
  JreStrongAssign(a1 + 2, a3);
  JreStrongAssign(a1 + 3, a4);

  return JreStrongAssign(a1 + 4, a5);
}

id OrgApacheLuceneSearchReqExclScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_(id *a1, void **a2, void *a3)
{
  if (!a2)
  {
    goto LABEL_12;
  }

  OrgApacheLuceneSearchScorer_initWithOrgApacheLuceneSearchWeight_(a1, a2[1]);
  JreStrongAssign(a1 + 2, a2);
  JreStrongAssign(a1 + 5, [a2 asTwoPhaseIterator]);
  v6 = a1[5];
  if (v6)
  {
    v7 = [v6 approximation];
    v8 = a1 + 3;
  }

  else
  {
    v8 = a1 + 3;
    v7 = a2;
  }

  JreStrongAssign(v8, v7);
  if (!a3)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  JreStrongAssign(a1 + 6, [a3 asTwoPhaseIterator]);
  v9 = a1[6];
  if (v9)
  {
    v10 = [v9 approximation];
    v11 = a1 + 4;
  }

  else
  {
    v11 = a1 + 4;
    v10 = a3;
  }

  return JreStrongAssign(v11, v10);
}

uint64_t sub_1000B0F74(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
LABEL_15:
    JreThrowNullPointerException();
  }

  v5 = [v3 docID];
  v6 = 0x7FFFFFFFLL;
  if (a2 != 0x7FFFFFFF)
  {
    v7 = v5;
    v6 = a2;
    while (1)
    {
      if (v7 < v6)
      {
        v7 = [*(a1 + 32) advanceWithInt:v6];
      }

      v8 = *(a1 + 40);
      if (v6 != v7 || (v9 = *(a1 + 48)) != 0 && ([v9 matches] & 1) == 0) && (!v8 || (objc_msgSend(v8, "matches")))
      {
        break;
      }

      v10 = *(a1 + 24);
      if (!v10)
      {
        goto LABEL_15;
      }

      v6 = [v10 nextDoc];
      if (v6 == 0x7FFFFFFF)
      {
        return 0x7FFFFFFFLL;
      }
    }
  }

  return v6;
}

OrgApacheLuceneSearchReqExclScorer *new_OrgApacheLuceneSearchReqExclScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_(void **a1, void *a2)
{
  v4 = [OrgApacheLuceneSearchReqExclScorer alloc];
  OrgApacheLuceneSearchReqExclScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_(&v4->super.super.super.isa, a1, a2);
  return v4;
}

OrgApacheLuceneStoreLockObtainFailedException *new_OrgApacheLuceneStoreLockObtainFailedException_initWithNSString_(uint64_t a1)
{
  v2 = [OrgApacheLuceneStoreLockObtainFailedException alloc];
  JavaIoIOException_initWithNSString_(v2, a1);
  return v2;
}

id OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer_initWithOrgApacheLuceneIndexSegmentWriteState_withNSString_withNSString_withNSString_withNSString_(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  OrgApacheLuceneCodecsDocValuesConsumer_init(a1);
  if (!a2 || (v11 = *(a2 + 24)) == 0 || (v12 = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(*(v11 + 8), *(a2 + 64), a4), (v13 = *(a2 + 16)) == 0))
  {
    JreThrowNullPointerException();
  }

  JreStrongAssign((a1 + 8), [v13 createOutputWithNSString:v12 withOrgApacheLuceneStoreIOContext:*(a2 + 72)]);
  OrgApacheLuceneCodecsCodecUtil_writeIndexHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_withByteArray_withNSString_(*(a1 + 8), a3, 1, [*(a2 + 24) getId], *(a2 + 64));
  v14 = [*(a2 + 16) createOutputWithNSString:OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(*(*(a2 + 24) + 8) withOrgApacheLuceneStoreIOContext:{*(a2 + 64), a6), *(a2 + 72)}];
  JreStrongAssign((a1 + 16), v14);
  OrgApacheLuceneCodecsCodecUtil_writeIndexHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_withByteArray_withNSString_(*(a1 + 16), a5, 1, [*(a2 + 24) getId], *(a2 + 64));
  result = [*(a2 + 24) maxDoc];
  *(a1 + 24) = result;
  return result;
}

void sub_1000B1760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    v11 = [IOSObjectArray arrayWithObjects:&a11 count:1 type:JavaIoCloseable_class_()];
    OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_(v11);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1000B17B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1000B17B8);
  }

  objc_terminate();
}

id sub_1000B2644(id *a1, uint64_t a2, void *a3)
{
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  if (!a3)
  {
    goto LABEL_37;
  }

  v3 = a3;
  v5 = [a3 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (!v5)
  {
    return [a1 addBinaryFieldWithOrgApacheLuceneIndexFieldInfo:a2 withJavaLangIterable:v3];
  }

  v6 = v5;
  v7 = 0;
  v8 = *v49;
  v9 = 0x7FFFFFFFLL;
  v10 = 0x80000000;
  do
  {
    v11 = 0;
    v7 += v6;
    do
    {
      if (*v49 != v8)
      {
        objc_enumerationMutation(v3);
      }

      v12 = *(*(&v48 + 1) + 8 * v11);
      if (!v12)
      {
        goto LABEL_37;
      }

      v9 = JavaLangMath_minWithInt_withInt_(v9, *(v12 + 20));
      v10 = JavaLangMath_maxWithInt_withInt_(v10, *(v12 + 20));
      v11 = v11 + 1;
    }

    while (v6 != v11);
    v6 = [v3 countByEnumeratingWithState:&v48 objects:v53 count:16];
  }

  while (v6);
  if (v9 == v10 || v7 <= 1023)
  {
    return [a1 addBinaryFieldWithOrgApacheLuceneIndexFieldInfo:a2 withJavaLangIterable:v3];
  }

  v14 = &OBJC_IVAR___OrgApacheLuceneCodecsDocValuesConsumer__6__1_docIDUpto_;
  v15 = a1[2];
  if (!v15 || !a2 || ([v15 writeVIntWithInt:*(a2 + 16)], objc_msgSend(a1[2], "writeByteWithByte:", 1), objc_msgSend(a1[2], "writeVIntWithInt:", 2), objc_msgSend(a1[2], "writeLongWithLong:", -1), (v16 = a1[1]) == 0))
  {
LABEL_37:
    JreThrowNullPointerException();
  }

  v35 = [v16 getFilePointer];
  v33 = new_OrgApacheLuceneStoreRAMOutputStream_init();
  v34 = new_OrgApacheLuceneUtilPackedMonotonicBlockPackedWriter_initWithOrgApacheLuceneStoreDataOutput_withInt_(v33, 0x4000);
  v17 = new_OrgApacheLuceneStoreRAMOutputStream_init();
  v37 = new_OrgApacheLuceneStoreRAMOutputStream_init();
  v41 = new_OrgApacheLuceneUtilBytesRefBuilder_init();
  [(OrgApacheLuceneUtilBytesRefBuilder *)v41 growWithInt:v10];
  v18 = [IOSIntArray arrayWithLength:16];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v42 = [v3 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v42)
  {
    v19 = 0;
    v39 = *v45;
    v40 = v17;
    do
    {
      v20 = 0;
      v36 = v19;
      do
      {
        if (*v45 != v39)
        {
          objc_enumerationMutation(v3);
        }

        v21 = *(*(&v44 + 1) + 8 * v20);
        if (((v19 + v20) & 0xF) != 0)
        {
          v43 = (v19 + v20) & 0xF;
          v22 = OrgApacheLuceneUtilStringHelper_bytesDifferenceWithOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_([(OrgApacheLuceneUtilBytesRefBuilder *)v41 get], v21);
          v23 = JavaLangMath_minWithInt_withInt_(255, v22);
          [(OrgApacheLuceneStoreRAMOutputStream *)v40 writeByteWithByte:v23];
          if (!v21)
          {
            goto LABEL_37;
          }

          [(OrgApacheLuceneStoreRAMOutputStream *)v40 writeBytesWithByteArray:*(v21 + 8) withInt:(*(v21 + 16) + v23) withInt:(*(v21 + 20) - v23)];
          v24 = *(v21 + 20);
          size = v18->super.size_;
          if (size <= v43)
          {
            IOSArray_throwOutOfBoundsWithMsg(size, v43);
          }

          *(&v18->super.size_ + v43 + 1) = v24 + ~v23;
          v19 = v36;
          v26 = v3;
        }

        else
        {
          -[OrgApacheLuceneUtilPackedMonotonicBlockPackedWriter addWithLong:](v34, "addWithLong:", [a1[1] getFilePointer] - v35);
          if (!v21)
          {
            goto LABEL_37;
          }

          v26 = v3;
          [(OrgApacheLuceneStoreDataOutput *)v37 writeVIntWithInt:*(v21 + 20)];
          [(OrgApacheLuceneStoreRAMOutputStream *)v37 writeBytesWithByteArray:*(v21 + 8) withInt:*(v21 + 16) withInt:*(v21 + 20)];
          [(OrgApacheLuceneUtilBytesRefBuilder *)v41 copyBytesWithOrgApacheLuceneUtilBytesRef:v21];
        }

        if (((v19 + v20 + 1) & 0xF) == 0)
        {
          sub_1000B2BA8(a1, v37, v40, v18);
        }

        v20 = v20 + 1;
        v3 = v26;
      }

      while (v42 != v20);
      v27 = [v26 countByEnumeratingWithState:&v44 objects:v52 count:16];
      v19 += v20;
      v42 = v27;
    }

    while (v27);
    if ((v19 & 0xF) != 0)
    {
      JavaUtilArrays_fillWithIntArray_withInt_withInt_withInt_(v18, v19 & 0xF, v18->super.size_, 0, v28, v29, v30, v31);
      sub_1000B2BA8(a1, v37, v40, v18);
    }

    v14 = &OBJC_IVAR___OrgApacheLuceneCodecsDocValuesConsumer__6__1_docIDUpto_;
  }

  else
  {
    v19 = 0;
  }

  v32 = [a1[1] getFilePointer];
  [(OrgApacheLuceneUtilPackedAbstractBlockPackedWriter *)v34 finish];
  [(OrgApacheLuceneStoreRAMOutputStream *)v33 writeToWithOrgApacheLuceneStoreDataOutput:a1[1]];
  [*(a1 + v14[740]) writeVIntWithInt:v9];
  [*(a1 + v14[740]) writeVIntWithInt:v10];
  [*(a1 + v14[740]) writeVLongWithLong:v19];
  [*(a1 + v14[740]) writeLongWithLong:v35];
  [*(a1 + v14[740]) writeLongWithLong:v32];
  [*(a1 + v14[740]) writeVIntWithInt:2];
  [*(a1 + v14[740]) writeVIntWithInt:0x4000];
  return sub_1000B2D38(a1, v3, v10);
}

id sub_1000B2BA8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (!a4)
  {
LABEL_23:
    JreThrowNullPointerException();
  }

  v8 = *(a4 + 8);
  if (v8 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  if (v8 < 2)
  {
    goto LABEL_14;
  }

  v10 = 0;
  v11 = v9 - 1;
  v12 = (a4 + 16);
  do
  {
    v13 = *v12++;
    v10 |= v13 > 254;
    --v11;
  }

  while (v11);
  if (v10)
  {
    if (!a2)
    {
      goto LABEL_23;
    }

    [a2 writeByteWithByte:0xFFFFFFFFLL];
    if (*(a4 + 8) < 2)
    {
      goto LABEL_19;
    }

    v14 = a4 + 4;
    v15 = 1;
    do
    {
      [a2 writeShortWithShort:*(v14 + 12)];
      ++v15;
      v14 += 4;
    }

    while (v15 < *(a4 + 8));
  }

  else
  {
LABEL_14:
    if (v8 >= 2)
    {
      if (!a2)
      {
        goto LABEL_23;
      }

      v16 = a4 + 4;
      v17 = 1;
      do
      {
        [a2 writeByteWithByte:*(v16 + 12)];
        ++v17;
        v16 += 4;
      }

      while (v17 < *(a4 + 8));
    }
  }

  if (!a2)
  {
    goto LABEL_23;
  }

LABEL_19:
  [a2 writeToWithOrgApacheLuceneStoreDataOutput:*(a1 + 8)];
  [a2 reset];
  if (!a3)
  {
    goto LABEL_23;
  }

  [a3 writeToWithOrgApacheLuceneStoreDataOutput:*(a1 + 8)];

  return [a3 reset];
}

id sub_1000B2D38(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = new_OrgApacheLuceneUtilBytesRefBuilder_init();
  [(OrgApacheLuceneUtilBytesRefBuilder *)v6 growWithInt:a3];
  v7 = new_OrgApacheLuceneUtilBytesRef_init();
  v8 = *(a1 + 8);
  if (!v8)
  {
    goto LABEL_17;
  }

  v9 = [v8 getFilePointer];
  v27 = new_OrgApacheLuceneUtilPagedBytes_initWithInt_(15);
  v10 = new_OrgApacheLuceneUtilPackedMonotonicBlockPackedWriter_initWithOrgApacheLuceneStoreDataOutput_withInt_(*(a1 + 8), 0x4000);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  if (!a2)
  {
    goto LABEL_17;
  }

  v11 = v10;
  v24 = v9;
  v25 = a1;
  v12 = [a2 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v29;
    do
    {
      v16 = 0;
      v26 = v14 + v13;
      do
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(a2);
        }

        v17 = *(*(&v28 + 1) + 8 * v16);
        if ((v14 & 0x3FF) == 0x3FF)
        {
          [(OrgApacheLuceneUtilBytesRefBuilder *)v6 copyBytesWithOrgApacheLuceneUtilBytesRef:*(*(&v28 + 1) + 8 * v16)];
        }

        else if ((v14 & 0x3FF) == 0)
        {
          v18 = OrgApacheLuceneUtilStringHelper_sortKeyLengthWithOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_([(OrgApacheLuceneUtilBytesRefBuilder *)v6 get], v17);
          if (!v17)
          {
            goto LABEL_17;
          }

          v19 = v18;
          JreStrongAssign(&v7->bytes_, *(v17 + 8));
          v7->offset_ = *(v17 + 16);
          v7->length_ = v19;
          [(OrgApacheLuceneUtilPackedMonotonicBlockPackedWriter *)v11 addWithLong:[(OrgApacheLuceneUtilPagedBytes *)v27 copyUsingLengthPrefixWithOrgApacheLuceneUtilBytesRef:v7]];
        }

        LOWORD(v14) = v14 + 1;
        v16 = v16 + 1;
      }

      while (v13 != v16);
      v13 = [a2 countByEnumeratingWithState:&v28 objects:v32 count:16];
      v14 = v26;
    }

    while (v13);
  }

  [(OrgApacheLuceneUtilPackedAbstractBlockPackedWriter *)v11 finish];
  v20 = [(OrgApacheLuceneUtilPagedBytes *)v27 getPointer];
  [(OrgApacheLuceneUtilPagedBytes *)v27 freezeWithBoolean:1];
  v21 = [(OrgApacheLuceneUtilPagedBytes *)v27 getDataInput];
  v22 = *(v25 + 16);
  if (!v22)
  {
LABEL_17:
    JreThrowNullPointerException();
  }

  [v22 writeLongWithLong:v24];
  [*(v25 + 8) writeVLongWithLong:v20];
  return [*(v25 + 8) copyBytesWithOrgApacheLuceneStoreDataInput:v21 withLong:v20];
}

JavaUtilTreeSet *sub_1000B31C8(void *a1, void *a2)
{
  v23 = new_JavaUtilHashSet_init();
  v4 = new_OrgApacheLuceneUtilLongsRef_initWithInt_(256);
  if (!a1)
  {
    goto LABEL_24;
  }

  v5 = v4;
  v6 = [a1 iterator];
  if (!a2)
  {
    goto LABEL_24;
  }

  v7 = v6;
  v8 = [a2 iterator];
  if (!v7)
  {
    goto LABEL_24;
  }

  v9 = v8;
  v22 = 0;
  while (([v7 hasNext] & 1) != 0)
  {
    v10 = [v7 next];
    if (!v10)
    {
      goto LABEL_24;
    }

    v5->length_ = [v10 intValue];
    length = v5->length_;
    if (length > 256)
    {
      return 0;
    }

    if (length >= 1)
    {
      if (v9)
      {
        v12 = 0;
        while (1)
        {
          v13 = [v9 next];
          if (!v13)
          {
            break;
          }

          v14 = [v13 longLongValue];
          longs = v5->longs_;
          if (!longs)
          {
            break;
          }

          v16 = v14;
          size = longs->super.size_;
          if (v12 >= size)
          {
            IOSArray_throwOutOfBoundsWithMsg(size, v12);
          }

          longs->buffer_[v12++] = v16;
          if (v12 >= v5->length_)
          {
            goto LABEL_17;
          }
        }
      }

LABEL_24:
      JreThrowNullPointerException();
    }

LABEL_17:
    if (![(JavaUtilHashSet *)v23 containsWithId:v5])
    {
      v18 = v5->length_;
      v22 += v18;
      if (v22 > 256)
      {
        return 0;
      }

      v19 = JavaUtilArrays_copyOfWithLongArray_withInt_(v5->longs_, v18);
      [(JavaUtilHashSet *)v23 addWithId:new_OrgApacheLuceneUtilLongsRef_initWithLongArray_withInt_withInt_(v19, 0, v5->length_)];
    }
  }

  v20 = new_JavaUtilTreeSet_initWithJavaUtilCollection_(v23);

  return v20;
}
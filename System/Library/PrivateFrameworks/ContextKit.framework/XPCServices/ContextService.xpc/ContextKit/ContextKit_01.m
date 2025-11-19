OrgApacheLuceneSearchConstantScoreScorer *sub_100025D88(void *a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = [a2 iterator];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  [a1 score];
  v6 = new_OrgApacheLuceneSearchConstantScoreScorer_initWithOrgApacheLuceneSearchWeight_withFloat_withOrgApacheLuceneSearchDocIdSetIterator_(a1, v4, v5);

  return v6;
}

id sub_100025F30(uint64_t a1, void *a2, void *a3, char a4, void *a5)
{
  JreStrongAssign((a1 + 24), a2);
  JreStrongAssign((a1 + 32), a3);
  *(a1 + 40) = a4;

  return OrgApacheLuceneSearchConstantScoreWeight_initWithOrgApacheLuceneSearchQuery_(a1, a5);
}

OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet *sub_100026010(void *a1)
{
  v2 = [OrgApacheLuceneSearchMultiTermQueryConstantScoreWrapper_WeightOrDocIdSet alloc];
  JreStrongAssign(&v2->set_, a1);
  JreStrongAssign(&v2->weight_, 0);
  return v2;
}

id OrgApacheLuceneSearchFilteredQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchFilteredQuery_FilterStrategy_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OrgApacheLuceneSearchQuery_init(a1);
  v8 = OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_withNSString_(a4, @"FilterStrategy must not be null");
  JreStrongAssign((a1 + 28), v8);
  v9 = OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_withNSString_(a2, @"Query must not be null");
  JreStrongAssign((a1 + 12), v9);
  v10 = OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_withNSString_(a3, @"Filter must not be null");

  return JreStrongAssign((a1 + 20), v10);
}

OrgApacheLuceneSearchFilteredQuery *new_OrgApacheLuceneSearchFilteredQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchFilter_(uint64_t a1, uint64_t a2)
{
  v4 = [OrgApacheLuceneSearchFilteredQuery alloc];
  OrgApacheLuceneSearchFilteredQuery_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchFilteredQuery_FilterStrategy_(v4, a1, a2, OrgApacheLuceneSearchFilteredQuery_RANDOM_ACCESS_FILTER_STRATEGY_);
  return v4;
}

id sub_1000267A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OrgApacheLuceneSearchQuery_init(a1);
  v6 = OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(a2);
  JreStrongAssign((a1 + 12), v6);
  v7 = OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(a3);

  return JreStrongAssign((a1 + 20), v7);
}

void *sub_100026EEC(id *a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OrgApacheLuceneUtilPriorityQueue_initWithInt_(a1, a3, a3, a4, a5, a6, a7, a8);
  JreStrongAssign(a1 + 3, a2);
  if (!a2)
  {
    goto LABEL_15;
  }

  v11 = a2[2];
  v12 = [IOSObjectArray newArrayWithLength:v11 type:OrgApacheLuceneSearchFieldComparator_class_()];
  JreStrongAssignAndConsume(a1 + 4, v12);
  result = JreStrongAssignAndConsume(a1 + 5, [IOSIntArray newArrayWithLength:v11]);
  if (v11 >= 1)
  {
    v14 = 0;
    while (1)
    {
      v15 = a2[2];
      if (v14 >= v15)
      {
        IOSArray_throwOutOfBoundsWithMsg(v15, v14);
      }

      v16 = *&a2[2 * v14 + 6];
      if (!v16)
      {
        break;
      }

      if (v16[8])
      {
        v17 = -1;
      }

      else
      {
        v17 = 1;
      }

      v18 = a1[5];
      v19 = v18[2];
      if (v14 >= v19)
      {
        IOSArray_throwOutOfBoundsWithMsg(v19, v14);
      }

      v18[v14 + 3] = v17;
      result = IOSObjectArray_Set(a1[4], v14, [v16 getComparatorWithInt:a3 withInt:v14]);
      if (v11 == ++v14)
      {
        return result;
      }
    }

LABEL_15:
    JreThrowNullPointerException();
  }

  return result;
}

OrgApacheLuceneSearchFieldValueHitQueue_OneComparatorFieldValueHitQueue *OrgApacheLuceneSearchFieldValueHitQueue_createWithOrgApacheLuceneSearchSortFieldArray_withInt_(int *a1, uint64_t a2)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v4 = a1[2];
  if (v4 == 1)
  {
    v5 = [OrgApacheLuceneSearchFieldValueHitQueue_OneComparatorFieldValueHitQueue alloc];
    sub_100027568(v5, a1, a2, v11, v12, v13, v14, v15);
  }

  else
  {
    if (!v4)
    {
      v17 = new_JavaLangIllegalArgumentException_initWithNSString_(@"Sort must contain at least one field");
      objc_exception_throw(v17);
    }

    v5 = [OrgApacheLuceneSearchFieldValueHitQueue_MultiComparatorsFieldValueHitQueue alloc];
    sub_100026EEC(&v5->super.super.super.isa, a1, a2, v6, v7, v8, v9, v10);
  }

  return v5;
}

OrgApacheLuceneSearchFieldValueHitQueue_Entry *new_OrgApacheLuceneSearchFieldValueHitQueue_Entry_initWithInt_withInt_withFloat_(int a1, int a2, float a3)
{
  v6 = [OrgApacheLuceneSearchFieldValueHitQueue_Entry alloc];
  OrgApacheLuceneSearchScoreDoc_initWithInt_withFloat_(v6, a2, a3);
  *(&v6->super.shardIndex_ + 1) = a1;
  return v6;
}

uint64_t sub_100027568(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100026EEC(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = *(a1 + 32);
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = *(v9 + 8);
  if (v10 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, 0);
  }

  JreStrongAssign((a1 + 56), *(v9 + 24));
  v11 = *(a1 + 40);
  if (!v11)
  {
LABEL_6:
    JreThrowNullPointerException();
  }

  result = *(v11 + 8);
  if (result <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, 0);
  }

  *(a1 + 48) = *(v11 + 12);
  return result;
}

OrgApacheLuceneStoreNIOFSDirectory *new_OrgApacheLuceneStoreNIOFSDirectory_initWithOrgLukhnosPortmobileFilePath_withOrgApacheLuceneStoreLockFactory_(void *a1, void *a2)
{
  v4 = [OrgApacheLuceneStoreNIOFSDirectory alloc];
  OrgApacheLuceneStoreFSDirectory_initWithOrgLukhnosPortmobileFilePath_withOrgApacheLuceneStoreLockFactory_(v4, a1, a2);
  return v4;
}

id OrgApacheLuceneStoreNIOFSDirectory_NIOFSIndexInput_initWithNSString_withJavaNioChannelsFileChannel_withOrgApacheLuceneStoreIOContext_(uint64_t a1, void *a2, void *a3, uint64_t a4)
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

id OrgApacheLuceneStoreNIOFSDirectory_NIOFSIndexInput_initWithNSString_withJavaNioChannelsFileChannel_withLong_withLong_withInt_(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OrgApacheLuceneStoreBufferedIndexInput_initWithNSString_withInt_(a1, a2, a6);
  *(a1 + 64) = 0;
  result = JreStrongAssign((a1 + 56), a3);
  *(a1 + 72) = a4;
  *(a1 + 80) = a5 + a4;
  *(a1 + 64) = 1;
  return result;
}

OrgApacheLuceneUtilPackedBulkOperationPacked5 *new_OrgApacheLuceneUtilPackedBulkOperationPacked5_init()
{
  v0 = [OrgApacheLuceneUtilPackedBulkOperationPacked5 alloc];
  OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(v0, 5);
  return v0;
}

OrgApacheLuceneStoreSingleInstanceLockFactory *new_OrgApacheLuceneStoreSingleInstanceLockFactory_init()
{
  v0 = [OrgApacheLuceneStoreSingleInstanceLockFactory alloc];
  OrgApacheLuceneStoreLockFactory_init(v0, v1);
  v2 = new_JavaUtilHashSet_init();
  JreStrongAssignAndConsume(&v0->locks_, v2);
  return v0;
}

id sub_10002B594(uint64_t a1, void *a2, void *a3)
{
  JreStrongAssign((a1 + 8), a2);
  OrgApacheLuceneStoreLock_init(a1);

  return JreStrongAssign((a1 + 16), a3);
}

void sub_10002B7E0(void *a1)
{
  objc_sync_exit(v2);
  objc_begin_catch(a1);
  atomic_store(1u, (v1 + v3));
  objc_exception_rethrow();
}

void sub_10002B808(_Unwind_Exception *a1)
{
  objc_end_catch();
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

id OrgApacheLuceneStoreRAMInputStream_initWithNSString_withOrgApacheLuceneStoreRAMFile_withLong_(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = JreStrcat("$$C", a2, a3, a4, a5, a6, a7, a8, @"RAMInputStream(name=");
  OrgApacheLuceneStoreIndexInput_initWithNSString_(a1, v11);
  JreStrongAssign((a1 + 24), a3);
  *(a1 + 32) = a4;
  if (a4 >= 0x1FFFFFFFC00)
  {
    v20 = JreStrcat("$J$$", v12, v13, v14, v15, v16, v17, v18, @"RAMInputStream too large length=");
    v21 = new_JavaIoIOException_initWithNSString_(v20);
    objc_exception_throw(v21);
  }

  *(a1 + 48) = -1;

  return JreStrongAssign((a1 + 40), 0);
}

id *sub_10002BB44(id *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v9 = result;
  v10 = *(result + 12);
  result[7] = (v10 << 10);
  if (v10 << 10 > result[4])
  {
    goto LABEL_7;
  }

  v11 = result[3];
  if (!v11)
  {
    JreThrowNullPointerException();
  }

  result = [v11 numBuffers];
  if (v10 >= result)
  {
LABEL_7:
    if (v8)
    {
      v14 = JreStrcat("$@", a2, a3, a4, a5, a6, a7, a8, @"read past EOF: ");
      v15 = new_JavaIoEOFException_initWithNSString_(v14);
      objc_exception_throw(v15);
    }

    --*(v9 + 12);
    LODWORD(v12) = 1024;
    v13 = &OBJC_IVAR___OrgApacheLuceneStoreRAMInputStream_bufferPosition_;
  }

  else
  {
    result = JreStrongAssign(v9 + 5, [v9[3] getBufferWithInt:*(v9 + 12)]);
    *(v9 + 13) = 0;
    v12 = v9[4] - v9[7];
    if (v12 >= 1024)
    {
      LODWORD(v12) = 1024;
    }

    v13 = &OBJC_IVAR___OrgApacheLuceneStoreRAMInputStream_bufferLength_;
  }

  *(v9 + *v13) = v12;
  return result;
}

OrgApacheLuceneStoreRAMInputStream *new_OrgApacheLuceneStoreRAMInputStream_initWithNSString_withOrgApacheLuceneStoreRAMFile_(uint64_t a1, uint64_t *a2)
{
  v4 = [OrgApacheLuceneStoreRAMInputStream alloc];
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v9 = v4;
  OrgApacheLuceneStoreRAMInputStream_initWithNSString_withOrgApacheLuceneStoreRAMFile_withLong_(v4, a1, a2, a2[2], v5, v6, v7, v8);
  return v9;
}

OrgApacheLuceneUtilPackedMonotonicLongValues *new_OrgApacheLuceneUtilPackedMonotonicLongValues_initWithInt_withInt_withOrgApacheLuceneUtilPackedPackedInts_ReaderArray_withLongArray_withFloatArray_withLong_withLong_(int a1, int a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v14 = [OrgApacheLuceneUtilPackedMonotonicLongValues alloc];
  OrgApacheLuceneUtilPackedDeltaPackedLongValues_initWithInt_withInt_withOrgApacheLuceneUtilPackedPackedInts_ReaderArray_withLongArray_withLong_withLong_(v14, a1, a2, a3, a4, a6, a7);
  JreStrongAssign(&v14->averages_, a5);
  return v14;
}

uint64_t OrgApacheLuceneUtilPackedMonotonicLongValues_class_()
{
  if ((atomic_load_explicit(&OrgApacheLuceneUtilPackedMonotonicLongValues__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10002CC18();
  }

  if (qword_100553ED8 != -1)
  {
    sub_10002CC24();
  }

  return qword_100553ED0;
}

uint64_t OrgApacheLuceneUtilPackedMonotonicLongValues_Builder_initWithInt_withFloat_(uint64_t a1, signed int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9)
{
  OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder_initWithInt_withFloat_(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  v10 = *(a1 + 40);
  if (!v10)
  {
    JreThrowNullPointerException();
  }

  JreStrongAssignAndConsume((a1 + 72), [IOSFloatArray newArrayWithLength:*(v10 + 8)]);
  result = OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithFloatArray_(*(a1 + 72));
  *(a1 + 48) += result;
  return result;
}

OrgApacheLuceneUtilPackedMonotonicLongValues_Builder *new_OrgApacheLuceneUtilPackedMonotonicLongValues_Builder_initWithInt_withFloat_(signed int a1, float a2)
{
  v4 = [OrgApacheLuceneUtilPackedMonotonicLongValues_Builder alloc];
  OrgApacheLuceneUtilPackedMonotonicLongValues_Builder_initWithInt_withFloat_(v4, a1, v5, v6, v7, v8, v9, v10, a2);
  return v4;
}

uint64_t OrgApacheLuceneUtilPackedMonotonicLongValues_Builder_class_()
{
  if ((atomic_load_explicit(&OrgApacheLuceneUtilPackedMonotonicLongValues_Builder__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10002CC38();
  }

  if (qword_100553EF0 != -1)
  {
    sub_10002CC44();
  }

  return qword_100553EE8;
}

id OrgApacheLuceneAnalysisTokenizer_init(id *a1)
{
  OrgApacheLuceneAnalysisTokenStream_init(a1);
  JreStrongAssign(a1 + 5, qword_100553EF8);
  v2 = qword_100553EF8;

  return JreStrongAssign(a1 + 6, v2);
}

id OrgApacheLuceneAnalysisTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_(uint64_t a1)
{
  OrgApacheLuceneAnalysisTokenStream_initWithOrgApacheLuceneUtilAttributeFactory_();
  JreStrongAssign((a1 + 40), qword_100553EF8);
  v2 = qword_100553EF8;

  return JreStrongAssign((a1 + 48), v2);
}

id OrgApacheLuceneUtilByteBlockPool_initWithOrgApacheLuceneUtilByteBlockPool_Allocator_(uint64_t a1, void *a2)
{
  v4 = +[IOSObjectArray newArrayWithLength:type:](IOSObjectArray, "newArrayWithLength:type:", 10, IOSClass_arrayType(+[IOSClass byteClass], 1u));
  JreStrongAssignAndConsume((a1 + 8), v4);
  *(a1 + 16) = 0x8000;
  *(a1 + 32) = -32768;

  return JreStrongAssign((a1 + 40), a2);
}

OrgApacheLuceneUtilByteBlockPool *new_OrgApacheLuceneUtilByteBlockPool_initWithOrgApacheLuceneUtilByteBlockPool_Allocator_(void *a1)
{
  v2 = [OrgApacheLuceneUtilByteBlockPool alloc];
  OrgApacheLuceneUtilByteBlockPool_initWithOrgApacheLuceneUtilByteBlockPool_Allocator_(v2, a1);
  return v2;
}

OrgApacheLuceneUtilByteBlockPool_DirectAllocator *new_OrgApacheLuceneUtilByteBlockPool_DirectAllocator_init()
{
  result = [OrgApacheLuceneUtilByteBlockPool_DirectAllocator alloc];
  result->super.blockSize_ = 0x8000;
  return result;
}

id OrgApacheLuceneUtilFstUtil_getWithOrgApacheLuceneUtilFstFST_withOrgApacheLuceneUtilIntsRef_(id *a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_20;
  }

  v4 = [a1 getFirstArcWithOrgApacheLuceneUtilFstFST_Arc:new_OrgApacheLuceneUtilFstFST_Arc_init()];
  v5 = [a1 getBytesReader];
  v6 = a1[5];
  if (!v6)
  {
    goto LABEL_20;
  }

  v7 = [v6 getNoOutput];
  if (!a2)
  {
    goto LABEL_20;
  }

  v8 = v7;
  if (*(a2 + 20) >= 1)
  {
    v9 = 0;
    while (1)
    {
      v10 = *(a2 + 8);
      if (!v10)
      {
        break;
      }

      v11 = *(v10 + 8);
      v12 = v9 + *(a2 + 16);
      if (v12 < 0 || v12 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, v12);
      }

      if (![a1 findTargetArcWithInt:*(v10 + 12 + 4 * v12) withOrgApacheLuceneUtilFstFST_Arc:v4 withOrgApacheLuceneUtilFstFST_Arc:v4 withOrgApacheLuceneUtilFstFST_BytesReader:v5])
      {
        return 0;
      }

      if (!v4)
      {
        break;
      }

      v8 = [a1[5] addWithId:v8 withId:v4[2]];
      if (++v9 >= *(a2 + 20))
      {
        goto LABEL_14;
      }
    }

LABEL_20:
    JreThrowNullPointerException();
  }

LABEL_14:
  if (!v4)
  {
    goto LABEL_20;
  }

  if (![v4 isFinal])
  {
    return 0;
  }

  v13 = a1[5];
  v14 = v4[6];

  return [v13 addWithId:v8 withId:v14];
}

id OrgApacheLuceneUtilFstUtil_getWithOrgApacheLuceneUtilFstFST_withOrgApacheLuceneUtilBytesRef_(id *a1, uint64_t a2)
{
  v4 = [a1 getBytesReader];
  v5 = [a1 getFirstArcWithOrgApacheLuceneUtilFstFST_Arc:new_OrgApacheLuceneUtilFstFST_Arc_init()];
  v6 = a1[5];
  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = [v6 getNoOutput];
  if (!a2)
  {
    goto LABEL_19;
  }

  v8 = v7;
  if (*(a2 + 20) >= 1)
  {
    v9 = 0;
    while (1)
    {
      v10 = *(a2 + 8);
      if (!v10)
      {
        break;
      }

      v11 = *(v10 + 8);
      v12 = v9 + *(a2 + 16);
      if (v12 < 0 || v12 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, v12);
      }

      if (![a1 findTargetArcWithInt:*(v10 + 12 + v12) withOrgApacheLuceneUtilFstFST_Arc:v5 withOrgApacheLuceneUtilFstFST_Arc:v5 withOrgApacheLuceneUtilFstFST_BytesReader:v4])
      {
        return 0;
      }

      if (!v5)
      {
        break;
      }

      v8 = [a1[5] addWithId:v8 withId:v5[2]];
      if (++v9 >= *(a2 + 20))
      {
        goto LABEL_13;
      }
    }

LABEL_19:
    JreThrowNullPointerException();
  }

LABEL_13:
  if (!v5)
  {
    goto LABEL_19;
  }

  if (![v5 isFinal])
  {
    return 0;
  }

  v13 = a1[5];
  v14 = v5[6];

  return [v13 addWithId:v8 withId:v14];
}

id OrgApacheLuceneUtilFstUtil_getByOutputWithOrgApacheLuceneUtilFstFST_withLong_(void *a1, char *a2)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v4 = [a1 getBytesReader];
  v5 = [a1 getFirstArcWithOrgApacheLuceneUtilFstFST_Arc:new_OrgApacheLuceneUtilFstFST_Arc_init()];
  v6 = new_OrgApacheLuceneUtilFstFST_Arc_init();
  v7 = new_OrgApacheLuceneUtilIntsRefBuilder_init();

  return OrgApacheLuceneUtilFstUtil_getByOutputWithOrgApacheLuceneUtilFstFST_withLong_withOrgApacheLuceneUtilFstFST_BytesReader_withOrgApacheLuceneUtilFstFST_Arc_withOrgApacheLuceneUtilFstFST_Arc_withOrgApacheLuceneUtilIntsRefBuilder_(a1, a2, v4, v5, v6, v7);
}

id OrgApacheLuceneUtilFstUtil_getByOutputWithOrgApacheLuceneUtilFstFST_withLong_withOrgApacheLuceneUtilFstFST_BytesReader_withOrgApacheLuceneUtilFstFST_Arc_withOrgApacheLuceneUtilFstFST_Arc_withOrgApacheLuceneUtilIntsRefBuilder_(void *a1, char *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  if (!a4)
  {
    goto LABEL_50;
  }

  v8 = *(a4 + 16);
  if (!v8)
  {
    goto LABEL_50;
  }

  v13 = [v8 longLongValue];
  v14 = 0;
  v33 = a5;
  v34 = a6;
  while (1)
  {
LABEL_4:
    if ([a4 isFinal])
    {
      v15 = *(a4 + 48);
      if (!v15)
      {
        goto LABEL_50;
      }

      v16 = [v15 longLongValue];
      if (&v13[v16] == a2)
      {
        if (a6)
        {
          [a6 setLengthWithInt:v14];

          return [a6 get];
        }

LABEL_50:
        JreThrowNullPointerException();
      }

      if (&v13[v16] > a2)
      {
        return 0;
      }
    }

    if (!OrgApacheLuceneUtilFstFST_targetHasArcsWithOrgApacheLuceneUtilFstFST_Arc_(a4))
    {
      return 0;
    }

    if (!a6)
    {
      goto LABEL_50;
    }

    v17 = (v14 + 1);
    [a6 growWithInt:v17];
    if (!a1)
    {
      goto LABEL_50;
    }

    v35 = v14;
    [a1 readFirstRealTargetArcWithLong:*(a4 + 32) withOrgApacheLuceneUtilFstFST_Arc:a4 withOrgApacheLuceneUtilFstFST_BytesReader:a3];
    if (*(a4 + 72))
    {
      break;
    }

    v26 = [*(a4 + 16) longLongValue];
    v27 = &v13[v26];
    if (&v13[v26] == a2)
    {
LABEL_26:
      [a6 setIntAtWithInt:v35 withInt:*(a4 + 8)];
      v14 = v17;
      v13 = a2;
    }

    else
    {
      if (&v13[v26] > a2)
      {
        v30 = 0;
        goto LABEL_42;
      }

      do
      {
        if ([a4 isLast])
        {
          [a6 setIntAtWithInt:v35 withInt:*(a4 + 8)];
          v13 = v27;
          v14 = v17;
          goto LABEL_4;
        }

        if (!a5)
        {
          goto LABEL_50;
        }

        [a5 copyFromWithOrgApacheLuceneUtilFstFST_Arc:a4];
        [a1 readNextRealArcWithOrgApacheLuceneUtilFstFST_Arc:a4 withOrgApacheLuceneUtilFstFST_BytesReader:a3];
        v31 = [*(a4 + 16) longLongValue];
        v27 = &v13[v31];
        if (&v13[v31] == a2)
        {
          goto LABEL_26;
        }
      }

      while (&v13[v31] <= a2);
      v30 = a5;
LABEL_42:
      v29 = v35;
      if (!v30)
      {
        return 0;
      }

      [a4 copyFromWithOrgApacheLuceneUtilFstFST_Arc:?];
LABEL_34:
      [a6 setIntAtWithInt:v29 withInt:*(a4 + 8)];
      v13 = &v13[[*(a4 + 16) longLongValue]];
      v14 = v17;
    }
  }

  v18 = *(a4 + 80) - 1;
  if (v18 < 0)
  {
    v25 = -2;
LABEL_28:
    v28 = v18 == -1;
    v29 = v35;
    if (!v28)
    {
      goto LABEL_33;
    }

    return 0;
  }

  if (!a3)
  {
    goto LABEL_50;
  }

  v19 = 0;
  while (1)
  {
    v20 = (v18 + v19) >> 1;
    [a3 setPositionWithLong:*(a4 + 64)];
    [a3 skipBytesWithLong:(*(a4 + 72) * v20)];
    v21 = [a3 readByte];
    [a1 readLabelWithOrgApacheLuceneStoreDataInput:a3];
    v22 = v13;
    if ((v21 & 0x10) != 0)
    {
      v23 = a1[5];
      if (!v23)
      {
        goto LABEL_50;
      }

      v24 = [v23 readWithOrgApacheLuceneStoreDataInput:a3];
      if (!v24)
      {
        goto LABEL_50;
      }

      v22 = &v13[[v24 longLongValue]];
    }

    if (v22 == a2)
    {
      break;
    }

    if (v22 >= a2)
    {
      v18 = v20 - 1;
    }

    else
    {
      v19 = v20 + 1;
    }

    if (v19 > v18)
    {
      v25 = v19 - 2;
      a5 = v33;
      a6 = v34;
      goto LABEL_28;
    }
  }

  v28 = v18 == -1;
  a5 = v33;
  a6 = v34;
  v29 = v35;
  if (!v28)
  {
    v25 = v20 - 1;
LABEL_33:
    *(a4 + 76) = v25;
    [a1 readNextRealArcWithOrgApacheLuceneUtilFstFST_Arc:a4 withOrgApacheLuceneUtilFstFST_BytesReader:a3];
    goto LABEL_34;
  }

  return 0;
}

id OrgApacheLuceneUtilFstUtil_shortestPathsWithOrgApacheLuceneUtilFstFST_withOrgApacheLuceneUtilFstFST_Arc_withId_withJavaUtilComparator_withInt_withBoolean_(void *a1, uint64_t a2, uint64_t a3, void *a4, int a5, uint64_t a6)
{
  v12 = [OrgApacheLuceneUtilFstUtil_TopNSearcher alloc];
  OrgApacheLuceneUtilFstUtil_TopNSearcher_initWithOrgApacheLuceneUtilFstFST_withInt_withInt_withJavaUtilComparator_(v12, a1, a5, a5, a4);
  v13 = v12;
  [(OrgApacheLuceneUtilFstUtil_TopNSearcher *)v13 addStartPathsWithOrgApacheLuceneUtilFstFST_Arc:a2 withId:a3 withBoolean:a6 withOrgApacheLuceneUtilIntsRefBuilder:new_OrgApacheLuceneUtilIntsRefBuilder_init()];

  return [(OrgApacheLuceneUtilFstUtil_TopNSearcher *)v13 search];
}

id OrgApacheLuceneUtilFstUtil_toDotWithOrgApacheLuceneUtilFstFST_withJavaIoWriter_withBoolean_withBoolean_(id *a1, void *a2, int a3, char a4)
{
  if (!a1)
  {
    goto LABEL_63;
  }

  v7 = [a1 getFirstArcWithOrgApacheLuceneUtilFstFST_Arc:new_OrgApacheLuceneUtilFstFST_Arc_init()];
  v8 = new_JavaUtilArrayList_init();
  v99 = new_JavaUtilArrayList_init();
  [(JavaUtilArrayList *)v99 addWithId:v7];
  obj = new_JavaUtilArrayList_init();
  v9 = new_JavaUtilBitSet_init();
  if (!v7)
  {
    goto LABEL_63;
  }

  v10 = v9;
  [(JavaUtilBitSet *)v9 setWithInt:*(v7 + 8)];
  if (!a2)
  {
    goto LABEL_63;
  }

  [a2 writeWithNSString:@"digraph FST {\n"];
  [a2 writeWithNSString:@"  rankdir = LR; splines=true; concentrate=true; ordering=out; ranksep=2.5; \n"];
  if ((a4 & 1) == 0)
  {
    [a2 writeWithNSString:{@"  node [shape=circle, width=.2, height=.2, style=filled]\n"}];
  }

  sub_10002FAC0(a2, @"initial", @"point", @"white", &stru_100484358, v11, v12, v13);
  v14 = a1[5];
  if (!v14)
  {
LABEL_63:
    JreThrowNullPointerException();
  }

  v15 = [v14 getNoOutput];
  v102 = [a1 getBytesReader];
  if ([a1 isExpandedTargetWithOrgApacheLuceneUtilFstFST_Arc:v7 withOrgApacheLuceneUtilFstFST_BytesReader:?])
  {
    v16 = @"blue";
  }

  else
  {
    v16 = 0;
  }

  v101 = v10;
  v17 = v8;
  if ([v7 isFinal])
  {
    if (v7[6] == v15)
    {
      v18 = 0;
    }

    else
    {
      v18 = v7[6];
    }

    v19 = @"doublecircle";
  }

  else
  {
    v18 = 0;
    v19 = @"circle";
  }

  v23 = JavaLangLong_toStringWithLong_(v7[4]);
  v24 = &stru_100484358;
  if (v18)
  {
    v24 = [a1[5] outputToStringWithId:v18];
  }

  sub_10002FAC0(a2, v23, v19, v16, v24, v20, v21, v22);
  v95 = v7[4];
  [a2 writeWithNSString:{JreStrcat("$JC", v25, v26, v27, v28, v29, v30, v31, @"  initial -> "}];
  v32 = v99;
  if (![(JavaUtilArrayList *)v99 isEmpty])
  {
    v33 = 0;
    v98 = v17;
    do
    {
      [(JavaUtilArrayList *)v17 addAllWithJavaUtilCollection:v32];
      [(JavaUtilArrayList *)v32 clear];
      v97 = v33 + 1;
      [a2 writeWithNSString:{JreStrcat("$IC", v34, v35, v36, v37, v38, v39, v40, @"\n  // Transitions and states at level: "}];
      if (![(JavaUtilArrayList *)v17 isEmpty])
      {
        do
        {
          v41 = [(JavaUtilArrayList *)v17 removeWithInt:[(JavaUtilArrayList *)v17 size]- 1];
          if (OrgApacheLuceneUtilFstFST_targetHasArcsWithOrgApacheLuceneUtilFstFST_Arc_(v41))
          {
            if (!v41)
            {
              goto LABEL_63;
            }

            [a1 readFirstRealTargetArcWithLong:*(v41 + 4) withOrgApacheLuceneUtilFstFST_Arc:v41 withOrgApacheLuceneUtilFstFST_BytesReader:v102];
            while (1)
            {
              if ((*(v41 + 4) & 0x8000000000000000) == 0 && ![(JavaUtilBitSet *)v101 getWithInt:?])
              {
                if ([a1 isExpandedTargetWithOrgApacheLuceneUtilFstFST_Arc:v41 withOrgApacheLuceneUtilFstFST_BytesReader:v102])
                {
                  v42 = @"blue";
                }

                else
                {
                  v42 = 0;
                }

                v43 = *(v41 + 6);
                if (v43)
                {
                  v44 = v43 == v15;
                }

                else
                {
                  v44 = 1;
                }

                v45 = &stru_100484358;
                if (!v44)
                {
                  v45 = [a1[5] outputToStringWithId:?];
                }

                v46 = JavaLangLong_toStringWithLong_(*(v41 + 4));
                sub_10002FAC0(a2, v46, @"circle", v42, v45, v47, v48, v49);
                [(JavaUtilBitSet *)v101 setWithInt:v41[8]];
                [(JavaUtilArrayList *)v99 addWithId:[new_OrgApacheLuceneUtilFstFST_Arc_init() copyFromWithOrgApacheLuceneUtilFstFST_Arc:v41]];
                [(JavaUtilArrayList *)obj addWithId:JavaLangInteger_valueOfWithInt_(v41[8])];
              }

              if (*(v41 + 2) == v15)
              {
                v57 = &stru_100484358;
              }

              else
              {
                [a1[5] outputToStringWithId:?];
                v57 = JreStrcat("C$", v50, v51, v52, v53, v54, v55, v56, 47);
              }

              if (!OrgApacheLuceneUtilFstFST_targetHasArcsWithOrgApacheLuceneUtilFstFST_Arc_(v41) && [v41 isFinal] && *(v41 + 6) != v15)
              {
                [a1[5] outputToStringWithId:?];
                JreStrcat("$$$C", v58, v59, v60, v61, v62, v63, v64, v57);
              }

              [v41 flagWithInt:4];
              v65 = *(v41 + 4);
              v66 = v41[2];
              if (v66 - 32 > 0x5D || v66 == 34 || v66 == 92)
              {
                JavaLangInteger_toHexStringWithInt_(v66);
                JreStrcat("$$", v67, v68, v69, v70, v71, v72, v73, @"0x");
              }

              else
              {
                JavaLangCharacter_toStringWithChar_(v66);
              }

              [v41 isFinal];
              [a2 writeWithNSString:{JreStrcat("$J$J$$$C$$$$", v74, v75, v76, v77, v78, v79, v80, @"  "}];
              if ([v41 isLast])
              {
                break;
              }

              [a1 readNextRealArcWithOrgApacheLuceneUtilFstFST_Arc:v41 withOrgApacheLuceneUtilFstFST_BytesReader:v102];
            }
          }

          v17 = v98;
        }

        while (![(JavaUtilArrayList *)v98 isEmpty]);
      }

      if (a3 && [(JavaUtilArrayList *)obj size]>= 2)
      {
        [a2 writeWithNSString:@"  {rank=same; "];
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v81 = [(JavaUtilArrayList *)obj countByEnumeratingWithState:&v103 objects:v107 count:16];
        if (v81)
        {
          v82 = v81;
          v83 = *v104;
          do
          {
            for (i = 0; i != v82; i = i + 1)
            {
              if (*v104 != v83)
              {
                objc_enumerationMutation(obj);
              }

              v85 = *(*(&v103 + 1) + 8 * i);
              if (!v85)
              {
                goto LABEL_63;
              }

              v86 = [v85 intValue];
              [a2 writeWithNSString:{JreStrcat("I$", v87, v88, v89, v90, v91, v92, v93, v86)}];
            }

            v82 = [(JavaUtilArrayList *)obj countByEnumeratingWithState:&v103 objects:v107 count:16];
          }

          while (v82);
        }

        [a2 writeWithNSString:@" }\n"];
      }

      [(JavaUtilArrayList *)obj clear];
      v32 = v99;
      v33 = v97;
    }

    while (![(JavaUtilArrayList *)v99 isEmpty]);
  }

  [a2 writeWithNSString:{@"  -1 [style=filled, color=black, shape=doublecircle, label=]\n\n"}];
  [a2 writeWithNSString:@"  {rank=sink; -1 }\n"];
  [a2 writeWithNSString:@"}\n"];
  return [a2 flush];
}

id OrgApacheLuceneUtilFstUtil_toUTF16WithJavaLangCharSequence_withOrgApacheLuceneUtilIntsRefBuilder_(void *a1, void *a2)
{
  if (!a1 || (v4 = [a1 length], !a2))
  {
    JreThrowNullPointerException();
  }

  v5 = v4;
  [a2 setLengthWithInt:v4];
  [a2 growWithInt:v5];
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      [a2 setIntAtWithInt:v6 withInt:{objc_msgSend(a1, "charAtWithInt:", v6)}];
      v6 = (v6 + 1);
    }

    while (v5 != v6);
  }

  return [a2 get];
}

id OrgApacheLuceneUtilFstUtil_toUTF32WithJavaLangCharSequence_withOrgApacheLuceneUtilIntsRefBuilder_(void *a1, void *a2)
{
  if (!a1)
  {
    goto LABEL_10;
  }

  v4 = [a1 length];
  if (v4 < 1)
  {
    v8 = 0;
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_10:
    JreThrowNullPointerException();
  }

  if (!a2)
  {
    goto LABEL_10;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  do
  {
    v8 = (v7 + 1);
    [a2 growWithInt:v8];
    v9 = JavaLangCharacter_codePointAtWithJavaLangCharSequence_withInt_(a1, v6);
    [a2 setIntAtWithInt:v7 withInt:v9];
    v6 = JavaLangCharacter_charCountWithInt_(v9) + v6;
    v7 = v8;
  }

  while (v6 < v5);
LABEL_6:
  [a2 setLengthWithInt:v8];

  return [a2 get];
}

id OrgApacheLuceneUtilFstUtil_toUTF32WithCharArray_withInt_withInt_withOrgApacheLuceneUtilIntsRefBuilder_(uint64_t a1, int a2, int a3, void *a4)
{
  v5 = a3 + a2;
  if (a3 + a2 <= a2)
  {
    v9 = 0;
  }

  else
  {
    if (!a4)
    {
      goto LABEL_11;
    }

    v6 = a2;
    v8 = 0;
    do
    {
      v9 = (v8 + 1);
      [a4 growWithInt:v9];
      v10 = JavaLangCharacter_codePointAtWithCharArray_withInt_withInt_(a1, v6, v5);
      [a4 setIntAtWithInt:v8 withInt:v10];
      v6 += JavaLangCharacter_charCountWithInt_(v10);
      v8 = v9;
    }

    while (v6 < v5);
  }

  if (!a4)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  [a4 setLengthWithInt:v9];

  return [a4 get];
}

id OrgApacheLuceneUtilFstUtil_toIntsRefWithOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilIntsRefBuilder_(uint64_t a1, void *a2)
{
  if (!a2)
  {
    goto LABEL_14;
  }

  [a2 clear];
  if (!a1)
  {
    goto LABEL_14;
  }

  if (*(a1 + 20) >= 1)
  {
    v4 = 0;
    while (1)
    {
      v5 = *(a1 + 8);
      if (!v5)
      {
        break;
      }

      v6 = *(v5 + 8);
      v7 = v4 + *(a1 + 16);
      if (v7 < 0 || v7 >= v6)
      {
        IOSArray_throwOutOfBoundsWithMsg(v6, v7);
      }

      [a2 appendWithInt:*(v5 + 12 + v7)];
      if (++v4 >= *(a1 + 20))
      {
        goto LABEL_11;
      }
    }

LABEL_14:
    JreThrowNullPointerException();
  }

LABEL_11:

  return [a2 get];
}

id OrgApacheLuceneUtilFstUtil_toBytesRefWithOrgApacheLuceneUtilIntsRef_withOrgApacheLuceneUtilBytesRefBuilder_(uint64_t a1, void *a2)
{
  if (!a2 || !a1)
  {
    goto LABEL_14;
  }

  [a2 growWithInt:*(a1 + 20)];
  if (*(a1 + 20) >= 1)
  {
    v4 = 0;
    while (1)
    {
      v5 = *(a1 + 8);
      if (!v5)
      {
        break;
      }

      v6 = *(v5 + 8);
      v7 = v4 + *(a1 + 16);
      if (v7 < 0 || v7 >= v6)
      {
        IOSArray_throwOutOfBoundsWithMsg(v6, v7);
      }

      [a2 setByteAtWithInt:v4 withByte:*(v5 + 12 + 4 * v7)];
      v4 = (v4 + 1);
      if (v4 >= *(a1 + 20))
      {
        goto LABEL_11;
      }
    }

LABEL_14:
    JreThrowNullPointerException();
  }

LABEL_11:
  [a2 setLengthWithInt:?];

  return [a2 get];
}

id OrgApacheLuceneUtilFstUtil_readCeilArcWithInt_withOrgApacheLuceneUtilFstFST_withOrgApacheLuceneUtilFstFST_Arc_withOrgApacheLuceneUtilFstFST_Arc_withOrgApacheLuceneUtilFstFST_BytesReader_(int a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 == -1)
  {
    if (!a3)
    {
      goto LABEL_35;
    }

    if (![a3 isFinal])
    {
      return 0;
    }

    if (*(a3 + 32) <= 0)
    {
      if (!a4)
      {
        goto LABEL_35;
      }

      *(a4 + 40) = 2;
    }

    else
    {
      if (!a4)
      {
        goto LABEL_35;
      }

      *(a4 + 40) = 0;
      *(a4 + 56) = *(a3 + 32);
      *(a4 + 24) = *(a3 + 32);
    }

    JreStrongAssign((a4 + 16), *(a3 + 48));
    *(a4 + 8) = -1;
    return a4;
  }

  if (!OrgApacheLuceneUtilFstFST_targetHasArcsWithOrgApacheLuceneUtilFstFST_Arc_(a3))
  {
    return 0;
  }

  if (!a2)
  {
    goto LABEL_35;
  }

  [a2 readFirstTargetArcWithOrgApacheLuceneUtilFstFST_Arc:a3 withOrgApacheLuceneUtilFstFST_Arc:a4 withOrgApacheLuceneUtilFstFST_BytesReader:a5];
  if (!a4)
  {
    goto LABEL_35;
  }

  if (!*(a4 + 72) || *(a4 + 8) == -1)
  {
    if (a3)
    {
      [a2 readFirstRealTargetArcWithLong:*(a3 + 32) withOrgApacheLuceneUtilFstFST_Arc:a4 withOrgApacheLuceneUtilFstFST_BytesReader:a5];
      while (*(a4 + 8) < a1)
      {
        if ([a4 isLast])
        {
          return 0;
        }

        [a2 readNextRealArcWithOrgApacheLuceneUtilFstFST_Arc:a4 withOrgApacheLuceneUtilFstFST_BytesReader:a5];
      }

      return a4;
    }

    goto LABEL_35;
  }

  v10 = *(a4 + 76);
  v11 = *(a4 + 80);
  v12 = v11 - 1;
  if (v10 > v11 - 1)
  {
    goto LABEL_15;
  }

  if (!a5)
  {
LABEL_35:
    JreThrowNullPointerException();
  }

  do
  {
    v13 = (v10 + v12) >> 1;
    [a5 setPositionWithLong:*(a4 + 64)];
    [a5 skipBytesWithLong:(*(a4 + 72) * v13 + 1)];
    v14 = [a2 readLabelWithOrgApacheLuceneStoreDataInput:a5];
    if ((v14 - a1) < 0)
    {
      v10 = v13 + 1;
    }

    else
    {
      v12 = v13 - 1;
      if (v14 == a1)
      {
        goto LABEL_32;
      }
    }
  }

  while (v10 <= v12);
  v11 = *(a4 + 80);
LABEL_15:
  if (v10 == v11)
  {
    return 0;
  }

LABEL_32:
  *(a4 + 76) = v12;

  return [a2 readNextRealArcWithOrgApacheLuceneUtilFstFST_Arc:a4 withOrgApacheLuceneUtilFstFST_BytesReader:a5];
}

id sub_10002FAC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  if (a3)
  {
    JreStrcat("$$", a2, a3, a4, a5, a6, a7, a8, @"shape=");
    if (a4)
    {
      goto LABEL_4;
    }
  }

  else if (a4)
  {
LABEL_4:
    JreStrcat("$$", a2, a3, a4, a5, a6, a7, a8, @"color=");
    if (!a5)
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  if (a5)
  {
LABEL_5:
    JreStrcat("$$C", a2, a3, a4, a5, a6, a7, a8, @"label=");
  }

LABEL_8:
  v11 = JreStrcat("$$$$C$C$$", a2, a3, a4, a5, a6, a7, a8, @"  ");

  return [a1 writeWithNSString:v11];
}

id OrgApacheLuceneUtilFstUtil_FSTPath_initWithId_withOrgApacheLuceneUtilFstFST_Arc_withOrgApacheLuceneUtilIntsRefBuilder_withFloat_withJavaLangCharSequence_(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, float a6)
{
  v11 = [new_OrgApacheLuceneUtilFstFST_Arc_init() copyFromWithOrgApacheLuceneUtilFstFST_Arc:a3];
  JreStrongAssign((a1 + 8), v11);
  JreStrongAssign((a1 + 16), a2);
  JreStrongAssign((a1 + 24), a4);
  *(a1 + 32) = a6;

  return JreStrongAssign((a1 + 40), a5);
}

void *OrgApacheLuceneUtilFstUtil_TopNSearcher_initWithOrgApacheLuceneUtilFstFST_withInt_withInt_withJavaUtilComparator_(uint64_t a1, void *a2, int a3, int a4, void *a5)
{
  v10 = [OrgApacheLuceneUtilFstUtil_TieBreakByInputComparator alloc];
  JreStrongAssign(&v10->comparator_, a5);
  v11 = v10;

  return OrgApacheLuceneUtilFstUtil_TopNSearcher_initWithOrgApacheLuceneUtilFstFST_withInt_withInt_withJavaUtilComparator_withJavaUtilComparator_(a1, a2, a3, a4, a5, v11);
}

void *OrgApacheLuceneUtilFstUtil_TopNSearcher_initWithOrgApacheLuceneUtilFstFST_withInt_withInt_withJavaUtilComparator_withJavaUtilComparator_(uint64_t a1, void *a2, int a3, int a4, void *a5, void *a6)
{
  v12 = new_OrgApacheLuceneUtilFstFST_Arc_init();
  JreStrongAssignAndConsume((a1 + 40), v12);
  JreStrongAssign((a1 + 8), 0);
  JreStrongAssign((a1 + 16), a2);
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  JreStrongAssign((a1 + 24), [a2 getBytesReader]);
  *(a1 + 32) = a3;
  *(a1 + 36) = a4;
  JreStrongAssign((a1 + 48), a5);
  JreStrongAssign((a1 + 56), a6);
  v13 = new_JavaUtilTreeSet_initWithJavaUtilComparator_(a6);

  return JreStrongAssignAndConsume((a1 + 8), v13);
}

OrgApacheLuceneUtilFstUtil_Result *new_OrgApacheLuceneUtilFstUtil_Result_initWithOrgApacheLuceneUtilIntsRef_withId_(void *a1, void *a2)
{
  v4 = [OrgApacheLuceneUtilFstUtil_Result alloc];
  JreStrongAssign(&v4->input_, a1);
  JreStrongAssign(&v4->output_, a2);
  return v4;
}

uint64_t OrgApacheLuceneAnalysisTokenattributesTypeAttribute_class_()
{
  if (qword_100553F08 != -1)
  {
    sub_100030A54();
  }

  return qword_100553F00;
}

uint64_t OrgApacheLuceneUtilBitUtil_bitCountWithByte_(unsigned __int8 a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilBitUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100032370();
  }

  if (!qword_100553F10)
  {
    JreThrowNullPointerException();
  }

  v2 = *(qword_100553F10 + 8);
  if (v2 <= a1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v2, a1);
  }

  return *(qword_100553F10 + 12 + a1);
}

uint64_t OrgApacheLuceneUtilBitUtil_bitListWithByte_(unsigned __int8 a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilBitUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100032370();
  }

  if (!qword_100553F18)
  {
    JreThrowNullPointerException();
  }

  v2 = *(qword_100553F18 + 8);
  if (v2 <= a1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v2, a1);
  }

  return *(qword_100553F18 + 12 + 4 * a1);
}

uint64_t OrgApacheLuceneUtilBitUtil_pop_arrayWithLongArray_withInt_withInt_(uint64_t a1, int a2, int a3)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilBitUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100032370();
  }

  if (a3 + a2 <= a2)
  {
    return 0;
  }

  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v6 = 0;
  v7 = a2;
  v8 = a1 + 8 * a2;
  do
  {
    v9 = *(a1 + 8);
    if (v7 < 0 || v7 >= v9)
    {
      IOSArray_throwOutOfBoundsWithMsg(v9, v7);
    }

    v6 += JavaLangLong_bitCountWithLong_(*(v8 + 16));
    ++v7;
    v8 += 8;
    --a3;
  }

  while (a3);
  return v6;
}

uint64_t OrgApacheLuceneUtilBitUtil_pop_intersectWithLongArray_withLongArray_withInt_withInt_(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilBitUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100032370();
  }

  v8 = a4 + a3;
  if (a4 + a3 > a3)
  {
    if (a1)
    {
      v9 = 0;
      v10 = a3;
      v11 = v8;
      v12 = a2 + 8 * a3;
      for (i = a1 + 8 * a3; ; i += 8)
      {
        v14 = *(a1 + 8);
        if (v10 < 0 || v10 >= v14)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, v10);
        }

        if (!a2)
        {
          break;
        }

        v15 = *(a2 + 8);
        if (v10 < 0 || v10 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, v10);
        }

        v9 += JavaLangLong_bitCountWithLong_(*(v12 + 16) & *(i + 16));
        ++v10;
        v12 += 8;
        if (v11 == v10)
        {
          return v9;
        }
      }
    }

    JreThrowNullPointerException();
  }

  return 0;
}

uint64_t OrgApacheLuceneUtilBitUtil_pop_unionWithLongArray_withLongArray_withInt_withInt_(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilBitUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100032370();
  }

  v8 = a4 + a3;
  if (a4 + a3 > a3)
  {
    if (a1)
    {
      v9 = 0;
      v10 = a3;
      v11 = v8;
      v12 = a2 + 8 * a3;
      for (i = a1 + 8 * a3; ; i += 8)
      {
        v14 = *(a1 + 8);
        if (v10 < 0 || v10 >= v14)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, v10);
        }

        if (!a2)
        {
          break;
        }

        v15 = *(a2 + 8);
        if (v10 < 0 || v10 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, v10);
        }

        v9 += JavaLangLong_bitCountWithLong_(*(v12 + 16) | *(i + 16));
        ++v10;
        v12 += 8;
        if (v11 == v10)
        {
          return v9;
        }
      }
    }

    JreThrowNullPointerException();
  }

  return 0;
}

uint64_t OrgApacheLuceneUtilBitUtil_pop_andnotWithLongArray_withLongArray_withInt_withInt_(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilBitUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100032370();
  }

  v8 = a4 + a3;
  if (a4 + a3 > a3)
  {
    if (a1)
    {
      v9 = 0;
      v10 = a3;
      v11 = v8;
      v12 = a2 + 8 * a3;
      for (i = a1 + 8 * a3; ; i += 8)
      {
        v14 = *(a1 + 8);
        if (v10 < 0 || v10 >= v14)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, v10);
        }

        if (!a2)
        {
          break;
        }

        v15 = *(a2 + 8);
        if (v10 < 0 || v10 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, v10);
        }

        v9 += JavaLangLong_bitCountWithLong_(*(i + 16) & ~*(v12 + 16));
        ++v10;
        v12 += 8;
        if (v11 == v10)
        {
          return v9;
        }
      }
    }

    JreThrowNullPointerException();
  }

  return 0;
}

uint64_t OrgApacheLuceneUtilBitUtil_pop_xorWithLongArray_withLongArray_withInt_withInt_(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilBitUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100032370();
  }

  v8 = a4 + a3;
  if (a4 + a3 > a3)
  {
    if (a1)
    {
      v9 = 0;
      v10 = a3;
      v11 = v8;
      v12 = a2 + 8 * a3;
      for (i = a1 + 8 * a3; ; i += 8)
      {
        v14 = *(a1 + 8);
        if (v10 < 0 || v10 >= v14)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, v10);
        }

        if (!a2)
        {
          break;
        }

        v15 = *(a2 + 8);
        if (v10 < 0 || v10 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, v10);
        }

        v9 += JavaLangLong_bitCountWithLong_(*(v12 + 16) ^ *(i + 16));
        ++v10;
        v12 += 8;
        if (v11 == v10)
        {
          return v9;
        }
      }
    }

    JreThrowNullPointerException();
  }

  return 0;
}

uint64_t OrgApacheLuceneUtilBitUtil_nextHighestPowerOfTwoWithInt_(int a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilBitUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100032370();
  }

  v2 = (a1 - 1) | ((a1 - 1) >> 1) | (((a1 - 1) | ((a1 - 1) >> 1)) >> 2);
  v3 = v2 | (v2 >> 4) | ((v2 | (v2 >> 4)) >> 8);
  return (v3 | (v3 >> 16)) + 1;
}

uint64_t OrgApacheLuceneUtilBitUtil_nextHighestPowerOfTwoWithLong_(uint64_t a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilBitUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100032370();
  }

  v2 = (a1 - 1) | ((a1 - 1) >> 1) | (((a1 - 1) | ((a1 - 1) >> 1)) >> 2);
  v3 = v2 | (v2 >> 4) | ((v2 | (v2 >> 4)) >> 8);
  return (v3 | (v3 >> 16) | ((v3 | (v3 >> 16)) >> 32)) + 1;
}

uint64_t OrgApacheLuceneUtilBitUtil_interleaveWithLong_withLong_(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((atomic_load_explicit(OrgApacheLuceneUtilBitUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    v29 = a2;
    sub_100032370();
    a2 = v29;
    v2 = a1;
  }

  if (!qword_100553F28)
  {
    goto LABEL_26;
  }

  v3 = *(qword_100553F28 + 8);
  if (v3 <= 4)
  {
    IOSArray_throwOutOfBoundsWithMsg(v3, 4);
  }

  if (!qword_100553F20)
  {
LABEL_26:
    JreThrowNullPointerException();
  }

  v4 = *(qword_100553F20 + 8);
  if (v4 <= 4)
  {
    IOSArray_throwOutOfBoundsWithMsg(v4, 4);
  }

  v5 = *(qword_100553F28 + 8);
  if (v5 < 4)
  {
    IOSArray_throwOutOfBoundsWithMsg(v5, 3);
  }

  v6 = *(qword_100553F20 + 8);
  if (v6 <= 3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v6, 3);
  }

  v7 = *(qword_100553F28 + 8);
  if (v7 < 3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, 2);
  }

  v8 = *(qword_100553F20 + 8);
  if (v8 <= 2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, 2);
  }

  v9 = *(qword_100553F28 + 8);
  if (v9 < 2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v9, 1);
  }

  v10 = *(qword_100553F20 + 8);
  if (v10 <= 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, 1);
  }

  v11 = *(qword_100553F28 + 8);
  if (v11 < 1)
  {
    v40 = *(qword_100553F20 + 48);
    IOSArray_throwOutOfBoundsWithMsg(v11, 0);
  }

  v12 = *(qword_100553F20 + 8);
  if (v12 <= 0)
  {
    v41 = *(qword_100553F20 + 48);
    IOSArray_throwOutOfBoundsWithMsg(v12, 0);
  }

  v13 = *(qword_100553F28 + 8);
  if (v13 <= 4)
  {
    v30 = *(qword_100553F28 + 20);
    v42 = *(qword_100553F20 + 48);
    IOSArray_throwOutOfBoundsWithMsg(v13, 4);
  }

  v14 = *(qword_100553F20 + 8);
  if (v14 <= 4)
  {
    v31 = *(qword_100553F28 + 20);
    v43 = *(qword_100553F20 + 48);
    IOSArray_throwOutOfBoundsWithMsg(v14, 4);
  }

  v15 = *(qword_100553F28 + 8);
  if (v15 < 4)
  {
    v32 = *(qword_100553F28 + 20);
    v44 = *(qword_100553F20 + 48);
    IOSArray_throwOutOfBoundsWithMsg(v15, 3);
  }

  v16 = *(qword_100553F20 + 8);
  if (v16 <= 3)
  {
    v33 = *(qword_100553F28 + 20);
    v45 = *(qword_100553F20 + 48);
    IOSArray_throwOutOfBoundsWithMsg(v16, 3);
  }

  v17 = *(qword_100553F28 + 8);
  if (v17 < 3)
  {
    v34 = *(qword_100553F28 + 20);
    v46 = *(qword_100553F20 + 48);
    IOSArray_throwOutOfBoundsWithMsg(v17, 2);
  }

  v18 = *(qword_100553F20 + 8);
  if (v18 <= 2)
  {
    v35 = *(qword_100553F28 + 20);
    v47 = *(qword_100553F20 + 48);
    IOSArray_throwOutOfBoundsWithMsg(v18, 2);
  }

  v19 = *(qword_100553F28 + 8);
  if (v19 < 2)
  {
    v36 = *(qword_100553F28 + 20);
    v48 = *(qword_100553F20 + 48);
    IOSArray_throwOutOfBoundsWithMsg(v19, 1);
  }

  v20 = *(qword_100553F20 + 8);
  if (v20 <= 1)
  {
    v37 = *(qword_100553F28 + 20);
    v49 = *(qword_100553F20 + 48);
    IOSArray_throwOutOfBoundsWithMsg(v20, 1);
  }

  v21 = *(qword_100553F28 + 8);
  if (v21 < 1)
  {
    v38 = *(qword_100553F28 + 20);
    v50 = *(qword_100553F20 + 48);
    IOSArray_throwOutOfBoundsWithMsg(v21, 0);
  }

  v22 = *(qword_100553F20 + 8);
  if (v22 <= 0)
  {
    v39 = *(qword_100553F28 + 20);
    v51 = *(qword_100553F20 + 48);
    IOSArray_throwOutOfBoundsWithMsg(v22, 0);
  }

  v23 = *(qword_100553F20 + 40) & (((*(qword_100553F20 + 48) & ((a2 << *(qword_100553F28 + 20)) | a2)) << *(qword_100553F28 + 18)) | *(qword_100553F20 + 48) & ((a2 << *(qword_100553F28 + 20)) | a2));
  v24 = *(qword_100553F20 + 24) & (((*(qword_100553F20 + 32) & ((v23 << *(qword_100553F28 + 16)) | v23)) << *(qword_100553F28 + 14)) | *(qword_100553F20 + 32) & ((v23 << *(qword_100553F28 + 16)) | v23));
  v25 = *(qword_100553F20 + 40) & (((*(qword_100553F20 + 48) & ((v2 << *(qword_100553F28 + 20)) | v2)) << *(qword_100553F28 + 18)) | *(qword_100553F20 + 48) & ((v2 << *(qword_100553F28 + 20)) | v2));
  v26 = *(qword_100553F20 + 24) & (((*(qword_100553F20 + 32) & ((v25 << *(qword_100553F28 + 16)) | v25)) << *(qword_100553F28 + 14)) | *(qword_100553F20 + 32) & ((v25 << *(qword_100553F28 + 16)) | v25));
  return *(qword_100553F20 + 16) & ((v26 << *(qword_100553F28 + 12)) | v26) | (2 * (*(qword_100553F20 + 16) & ((v24 << *(qword_100553F28 + 12)) | v24)));
}

unint64_t OrgApacheLuceneUtilBitUtil_deinterleaveWithLong_(unint64_t a1)
{
  v1 = a1;
  if ((atomic_load_explicit(OrgApacheLuceneUtilBitUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100032370();
    v1 = a1;
  }

  if (!qword_100553F20)
  {
    goto LABEL_17;
  }

  v2 = *(qword_100553F20 + 8);
  if (v2 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v2, 0);
  }

  if (!qword_100553F28)
  {
LABEL_17:
    JreThrowNullPointerException();
  }

  v3 = *(qword_100553F28 + 8);
  if (v3 < 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v3, 0);
  }

  v4 = *(qword_100553F20 + 8);
  if (v4 <= 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v4, 1);
  }

  v5 = *(qword_100553F28 + 8);
  if (v5 < 2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v5, 1);
  }

  v6 = *(qword_100553F20 + 8);
  if (v6 <= 2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v6, 2);
  }

  v7 = *(qword_100553F28 + 8);
  if (v7 < 3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, 2);
  }

  v8 = *(qword_100553F20 + 8);
  if (v8 <= 3)
  {
    v19 = *(qword_100553F28 + 12);
    IOSArray_throwOutOfBoundsWithMsg(v8, 3);
  }

  v9 = *(qword_100553F28 + 8);
  if (v9 < 4)
  {
    v20 = *(qword_100553F28 + 12);
    IOSArray_throwOutOfBoundsWithMsg(v9, 3);
  }

  v10 = *(qword_100553F20 + 8);
  if (v10 <= 4)
  {
    v21 = *(qword_100553F28 + 12);
    v17 = *(qword_100553F20 + 16);
    IOSArray_throwOutOfBoundsWithMsg(v10, 4);
  }

  v11 = *(qword_100553F28 + 8);
  if (v11 < 5)
  {
    v22 = *(qword_100553F28 + 12);
    v18 = *(qword_100553F20 + 16);
    IOSArray_throwOutOfBoundsWithMsg(v11, 4);
  }

  v12 = *(qword_100553F20 + 8);
  if (v12 <= 5)
  {
    v23 = *(qword_100553F28 + 12);
    IOSArray_throwOutOfBoundsWithMsg(v12, 5);
  }

  v13 = *(qword_100553F20 + 24) & (((*(qword_100553F20 + 16) & v1) >> *(qword_100553F28 + 12)) ^ *(qword_100553F20 + 16) & v1);
  v14 = *(qword_100553F20 + 40) & (((*(qword_100553F20 + 32) & ((v13 >> *(qword_100553F28 + 14)) ^ v13)) >> *(qword_100553F28 + 16)) ^ *(qword_100553F20 + 32) & ((v13 >> *(qword_100553F28 + 14)) ^ v13));
  return *(qword_100553F20 + 56) & (((*(qword_100553F20 + 48) & ((v14 >> *(qword_100553F28 + 18)) ^ v14)) >> *(qword_100553F28 + 20)) ^ *(qword_100553F20 + 48) & ((v14 >> *(qword_100553F28 + 18)) ^ v14));
}

uint64_t OrgApacheLuceneUtilBitUtil_flipFlopWithLong_(unint64_t a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilBitUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100032370();
  }

  if (!qword_100553F20)
  {
    JreThrowNullPointerException();
  }

  sub_10003237C(qword_100553F20, a1, &v3);
  return v3;
}

uint64_t OrgApacheLuceneUtilBitUtil_zigZagEncodeWithInt_(int a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilBitUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100032370();
  }

  return (a1 >> 31) ^ (2 * a1);
}

uint64_t OrgApacheLuceneUtilBitUtil_zigZagEncodeWithLong_(uint64_t a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilBitUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100032370();
  }

  return (a1 >> 63) ^ (2 * a1);
}

uint64_t OrgApacheLuceneUtilBitUtil_zigZagDecodeWithInt_(unsigned int a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilBitUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100032370();
  }

  return -(a1 & 1) ^ (a1 >> 1);
}

unint64_t OrgApacheLuceneUtilBitUtil_zigZagDecodeWithLong_(unint64_t a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilBitUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100032370();
  }

  return -(a1 & 1) ^ (a1 >> 1);
}

uint64_t sub_10003237C(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  result = *(a1 + 8);
  if (result < 7)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, 6);
  }

  *a3 = (2 * (*(a1 + 16) & a2)) | ((*(a1 + 64) & a2) >> 1);
  return result;
}

void sub_100032400()
{
  v2 = *(qword_100553F20 + *v1);
  v3 = *(v0 + 64);
  if (v2 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v2, 0);
  }

  JUMPOUT(0x1000323CCLL);
}

OrgApacheLuceneUtilPackedBulkOperationPacked14 *new_OrgApacheLuceneUtilPackedBulkOperationPacked14_init()
{
  v0 = [OrgApacheLuceneUtilPackedBulkOperationPacked14 alloc];
  OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(v0, 14);
  return v0;
}

void *OrgApacheLuceneUtilPackedPacked8ThreeBlocks_initWithInt_(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  OrgApacheLuceneUtilPackedPackedInts_MutableImpl_initWithInt_withInt_(a1, a2, 24);
  if (v2 >= 715827883)
  {
    v6 = new_JavaLangArrayIndexOutOfBoundsException_initWithNSString_(@"MAX_SIZE exceeded");
    objc_exception_throw(v6);
  }

  v4 = [IOSByteArray newArrayWithLength:3 * v2];

  return JreStrongAssignAndConsume((a1 + 16), v4);
}

id OrgApacheLuceneUtilPackedPacked8ThreeBlocks_initWithInt_withOrgApacheLuceneStoreDataInput_withInt_(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  OrgApacheLuceneUtilPackedPacked8ThreeBlocks_initWithInt_(a1, a4);
  if (!a3)
  {
    goto LABEL_8;
  }

  [a3 readBytesWithByteArray:*(a1 + 16) withInt:0 withInt:(3 * a4)];
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100003648();
  }

  if (!OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  result = [OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_ byteCountWithInt:a2 withInt:a4 withInt:24];
  v9 = result - 3 * a4;
  if (v9 >= 1)
  {
    do
    {
      result = [a3 readByte];
      --v9;
    }

    while (v9);
  }

  return result;
}

OrgApacheLuceneUtilPackedPacked8ThreeBlocks *new_OrgApacheLuceneUtilPackedPacked8ThreeBlocks_initWithInt_(uint64_t a1)
{
  v2 = [OrgApacheLuceneUtilPackedPacked8ThreeBlocks alloc];
  OrgApacheLuceneUtilPackedPacked8ThreeBlocks_initWithInt_(v2, a1);
  return v2;
}

OrgApacheLuceneUtilPackedPacked8ThreeBlocks *new_OrgApacheLuceneUtilPackedPacked8ThreeBlocks_initWithInt_withOrgApacheLuceneStoreDataInput_withInt_(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [OrgApacheLuceneUtilPackedPacked8ThreeBlocks alloc];
  OrgApacheLuceneUtilPackedPacked8ThreeBlocks_initWithInt_withOrgApacheLuceneStoreDataInput_withInt_(v6, a1, a2, a3);
  return v6;
}

id sub_100034E74(uint64_t a1, unsigned int *a2, void *a3, void *a4, void *a5)
{
  OrgApacheLuceneSearchQuery_init(a1);
  JreStrongAssign((a1 + 12), a2);
  JreStrongAssign((a1 + 20), a3);
  JreStrongAssign((a1 + 28), a4);
  JreStrongAssign((a1 + 36), a5);
  v10 = [OrgApacheLuceneSearchBlendedTermQuery__2 alloc];
  sub_100036100(&v10->super.super.super.isa, a2, a4, a3);
  v11 = v10;
  v12 = a2[2];

  return [(OrgApacheLuceneUtilInPlaceMergeSorter *)v11 sortWithInt:0 withInt:v12];
}

id OrgApacheLuceneSearchBlendedTermQuery_Builder_init(uint64_t a1)
{
  *(a1 + 8) = 0;
  v2 = [IOSObjectArray newArrayWithLength:0 type:OrgApacheLuceneIndexTerm_class_()];
  JreStrongAssignAndConsume((a1 + 16), v2);
  JreStrongAssignAndConsume((a1 + 24), [IOSFloatArray newArrayWithLength:0]);
  v3 = [IOSObjectArray newArrayWithLength:0 type:OrgApacheLuceneIndexTermContext_class_()];
  JreStrongAssignAndConsume((a1 + 32), v3);
  if ((atomic_load_explicit(OrgApacheLuceneSearchBlendedTermQuery__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000361F0();
  }

  v4 = OrgApacheLuceneSearchBlendedTermQuery_DISJUNCTION_MAX_REWRITE_;

  return JreStrongAssign((a1 + 40), v4);
}

OrgApacheLuceneSearchBlendedTermQuery_Builder *new_OrgApacheLuceneSearchBlendedTermQuery_Builder_init()
{
  v0 = [OrgApacheLuceneSearchBlendedTermQuery_Builder alloc];
  OrgApacheLuceneSearchBlendedTermQuery_Builder_init(v0);
  return v0;
}

uint64_t sub_100036100(id *a1, void *a2, void *a3, void *a4)
{
  JreStrongAssign(a1 + 1, a2);
  JreStrongAssign(a1 + 2, a3);
  JreStrongAssign(a1 + 3, a4);

  return OrgApacheLuceneUtilInPlaceMergeSorter_init(a1);
}

uint64_t OrgApacheLuceneCodecsDocValuesProducer_class_()
{
  if (qword_100553F38 != -1)
  {
    sub_10003626C();
  }

  return qword_100553F30;
}

id OrgApacheLuceneStoreFileSwitchDirectory_initWithJavaUtilSet_withOrgApacheLuceneStoreDirectory_withOrgApacheLuceneStoreDirectory_withBoolean_(uint64_t a1, void *a2, void *a3, void *a4, char a5)
{
  OrgApacheLuceneStoreDirectory_init();
  JreStrongAssign((a1 + 24), a2);
  JreStrongAssign((a1 + 16), a3);
  result = JreStrongAssign((a1 + 8), a4);
  *(a1 + 32) = a5;
  return result;
}

uint64_t sub_1000363A8(uint64_t a1, void *a2)
{
  ExtensionWithNSString = OrgApacheLuceneStoreFileSwitchDirectory_getExtensionWithNSString_(a2);
  v4 = *(a1 + 24);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  v5 = [v4 containsWithId:ExtensionWithNSString];
  v6 = &OBJC_IVAR___OrgApacheLuceneStoreFileSwitchDirectory_secondaryDir_;
  if (v5)
  {
    v6 = &OBJC_IVAR___OrgApacheLuceneStoreFileSwitchDirectory_primaryDir_;
  }

  return *(a1 + *v6);
}

void sub_100036618(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v4 = objc_begin_catch(exception_object);
    if (!v3)
    {
      v5 = v4;
      if (![v2 isEmpty])
      {
        objc_end_catch();
        JUMPOUT(0x10003659CLL);
      }

      objc_exception_throw(v5);
    }

    objc_exception_throw(v3);
  }

  _Unwind_Resume(exception_object);
}

const __CFString *OrgApacheLuceneStoreFileSwitchDirectory_getExtensionWithNSString_(void *a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v2 = [a1 lastIndexOf:46];
  if (v2 == -1)
  {
    return &stru_100484358;
  }

  v3 = v2;
  v4 = [a1 length];

  return [a1 substring:v3 + 1 endIndex:v4];
}

OrgApacheLuceneStoreBufferedChecksum *new_OrgApacheLuceneStoreBufferedChecksum_initWithJavaUtilZipChecksum_(void *a1)
{
  v2 = [OrgApacheLuceneStoreBufferedChecksum alloc];
  JreStrongAssign(&v2->in_, a1);
  JreStrongAssignAndConsume(&v2->buffer_, [IOSByteArray newArrayWithLength:256]);
  return v2;
}

void *OrgApacheLuceneCodecsLucene53AAPL53Codec_init(id *a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_ModeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000040DC();
  }

  v2 = OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_ModeEnum_values_;

  return OrgApacheLuceneCodecsLucene53AAPL53Codec_initWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_ModeEnum_(a1, v2);
}

void *OrgApacheLuceneCodecsLucene53AAPL53Codec_initWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_ModeEnum_(id *a1, uint64_t a2)
{
  OrgApacheLuceneCodecsCodec_initWithNSString_(a1, @"AAPL53");
  v4 = new_OrgApacheLuceneCodecsLucene50Lucene50TermVectorsFormat_init();
  JreStrongAssignAndConsume(a1 + 2, v4);
  v5 = new_OrgApacheLuceneCodecsLucene50Lucene50FieldInfosFormat_init();
  JreStrongAssignAndConsume(a1 + 3, v5);
  v6 = new_OrgApacheLuceneCodecsLucene50Lucene50SegmentInfoFormat_init();
  JreStrongAssignAndConsume(a1 + 4, v6);
  v7 = new_OrgApacheLuceneCodecsLucene50Lucene50LiveDocsFormat_init();
  JreStrongAssignAndConsume(a1 + 5, v7);
  v8 = new_OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_init();
  JreStrongAssignAndConsume(a1 + 6, v8);
  v9 = [OrgApacheLuceneCodecsLucene53AAPL53Codec__1 alloc];
  JreStrongAssign(&v9->this$0_, a1);
  OrgApacheLuceneCodecsPerfieldPerFieldPostingsFormat_init(v9);
  JreStrongAssignAndConsume(a1 + 7, v9);
  v10 = [OrgApacheLuceneCodecsLucene53AAPL53Codec__2 alloc];
  JreStrongAssign(&v10->this$0_, a1);
  OrgApacheLuceneCodecsPerfieldPerFieldDocValuesFormat_init(v10);
  JreStrongAssignAndConsume(a1 + 8, v10);
  v11 = OrgApacheLuceneCodecsPostingsFormat_forNameWithNSString_(@"AAPL50");
  JreStrongAssign(a1 + 10, v11);
  v12 = OrgApacheLuceneCodecsDocValuesFormat_forNameWithNSString_(@"Lucene50");
  JreStrongAssign(a1 + 11, v12);
  v13 = new_OrgApacheLuceneCodecsLucene53Lucene53NormsFormat_init();
  JreStrongAssignAndConsume(a1 + 12, v13);
  v14 = JavaUtilObjects_requireNonNullWithId_(a2);
  v15 = new_OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_initWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_ModeEnum_(v14);

  return JreStrongAssignAndConsume(a1 + 9, v15);
}

OrgApacheLuceneCodecsLucene53AAPL53Codec *new_OrgApacheLuceneCodecsLucene53AAPL53Codec_init()
{
  v0 = [OrgApacheLuceneCodecsLucene53AAPL53Codec alloc];
  OrgApacheLuceneCodecsLucene53AAPL53Codec_init(&v0->super.super.isa);
  return v0;
}

OrgLukhnosPortmobileInvokeMethodType *OrgLukhnosPortmobileInvokeMethodType_methodTypeWithIOSClass_(void *a1)
{
  v2 = [OrgLukhnosPortmobileInvokeMethodType alloc];
  JreStrongAssign(&v2->clazz_, a1);

  return v2;
}

OrgApacheLuceneUtilPackedBulkOperationPacked18 *new_OrgApacheLuceneUtilPackedBulkOperationPacked18_init()
{
  v0 = [OrgApacheLuceneUtilPackedBulkOperationPacked18 alloc];
  OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(v0, 18);
  return v0;
}

IOSObjectArray *OrgLukhnosPortmobileFileStandardOpenOptionEnum_values()
{
  if ((atomic_load_explicit(OrgLukhnosPortmobileFileStandardOpenOptionEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000280F8();
  }

  v0 = OrgLukhnosPortmobileFileStandardOpenOptionEnum_class_();

  return [IOSObjectArray arrayWithObjects:&OrgLukhnosPortmobileFileStandardOpenOptionEnum_values_ count:3 type:v0];
}

void *OrgLukhnosPortmobileFileStandardOpenOptionEnum_valueOfWithNSString_(void *a1)
{
  if ((atomic_load_explicit(OrgLukhnosPortmobileFileStandardOpenOptionEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000280F8();
  }

  v2 = 0;
  while (1)
  {
    v3 = OrgLukhnosPortmobileFileStandardOpenOptionEnum_values_[v2];
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

uint64_t OrgLukhnosPortmobileFileStandardOpenOptionEnum_class_()
{
  if ((atomic_load_explicit(OrgLukhnosPortmobileFileStandardOpenOptionEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000280F8();
  }

  if (qword_100553F48 != -1)
  {
    sub_100039ADC();
  }

  return qword_100553F40;
}

unint64_t sub_100039C6C(void *a1, int a2)
{
  v4 = [a1 readByte];
  if ((v4 & 0x80000000) == 0)
  {
    return v4;
  }

  v6 = v4 & 0x7F;
  v7 = [a1 readByte];
  v5 = v6 & 0xFFFFFFFFFFFFC07FLL | ((v7 & 0x7F) << 7);
  if ((v7 & 0x80000000) != 0)
  {
    v8 = [a1 readByte];
    v5 = v5 & 0xFFFFFFFFFFE03FFFLL | ((v8 & 0x7F) << 14);
    if ((v8 & 0x80000000) != 0)
    {
      v9 = [a1 readByte];
      v5 = v5 & 0xFFFFFFFFF01FFFFFLL | ((v9 & 0x7F) << 21);
      if ((v9 & 0x80000000) != 0)
      {
        v10 = [a1 readByte];
        v5 = v5 & 0xFFFFFFF80FFFFFFFLL | ((v10 & 0x7F) << 28);
        if ((v10 & 0x80000000) != 0)
        {
          v11 = [a1 readByte];
          v5 |= (v11 & 0x7F) << 35;
          if ((v11 & 0x80000000) != 0)
          {
            v12 = [a1 readByte];
            v5 |= (v12 & 0x7F) << 42;
            if ((v12 & 0x80000000) != 0)
            {
              v13 = [a1 readByte];
              v5 |= (v13 & 0x7F) << 49;
              if ((v13 & 0x80000000) != 0)
              {
                v14 = [a1 readByte];
                v5 |= (v14 & 0x7F) << 56;
                if ((v14 & 0x80000000) != 0)
                {
                  if (a2)
                  {
                    v15 = [a1 readByte];
                    if (v15 <= 1)
                    {
                      v5 |= v15 << 63;
                      return v5;
                    }

                    v17 = @"Invalid vLong detected (more than 64 bits)";
                  }

                  else
                  {
                    v17 = @"Invalid vLong detected (negative values disallowed)";
                  }

                  v18 = new_JavaIoIOException_initWithNSString_(v17);
                  objc_exception_throw(v18);
                }
              }
            }
          }
        }
      }
    }
  }

  return v5;
}

OrgApacheLuceneUtilLongBitSet *OrgApacheLuceneUtilLongBitSet_ensureCapacityWithOrgApacheLuceneUtilLongBitSet_withLong_(OrgApacheLuceneUtilLongBitSet *result, int64_t a2)
{
  if (!result)
  {
    goto LABEL_10;
  }

  if (result->numBits_ > a2)
  {
    return result;
  }

  v3 = [(OrgApacheLuceneUtilLongBitSet *)result getBits];
  if (!v3)
  {
    goto LABEL_10;
  }

  v10 = v3;
  v11 = (a2 - 1) >> 6;
  v12 = v3[2];
  if (v11 + 1 >= v12)
  {
    v13 = OrgApacheLuceneUtilArrayUtil_growWithLongArray_withInt_(v3, v11 + 2, v4, v5, v6, v7, v8, v9);
    if (v13)
    {
      v10 = v13;
      v12 = v13[2];
      goto LABEL_7;
    }

LABEL_10:
    JreThrowNullPointerException();
  }

LABEL_7:
  v14 = v12 << 6;
  v15 = [OrgApacheLuceneUtilLongBitSet alloc];
  OrgApacheLuceneUtilLongBitSet_initWithLongArray_withLong_(v15, v10, v14, v16, v17, v18, v19, v20);

  return v15;
}

id OrgApacheLuceneUtilLongBitSet_initWithLongArray_withLong_(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = ((a3 - 1) >> 6) + 1;
  *(a1 + 24) = v8;
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  if (v8 > a2[2])
  {
    v11 = JreStrcat("$J$", a2, a3, a4, a5, a6, a7, a8, @"The given long array is too small  to hold ");
    v12 = new_JavaLangIllegalArgumentException_initWithNSString_(v11);
    objc_exception_throw(v12);
  }

  *(a1 + 16) = a3;
  v9 = (a1 + 8);

  return JreStrongAssign(v9, a2);
}

OrgApacheLuceneUtilLongBitSet *new_OrgApacheLuceneUtilLongBitSet_initWithLong_(int64_t a1)
{
  v2 = [OrgApacheLuceneUtilLongBitSet alloc];
  v2->numBits_ = a1;
  JreStrongAssignAndConsume(&v2->bits_, [IOSLongArray newArrayWithLength:((a1 << 26) + 4227858432) >> 32]);
  v2->numWords_ = v2->bits_->super.size_;
  return v2;
}

void *OrgApacheLuceneStoreRAMDirectory_initWithOrgApacheLuceneStoreLockFactory_(uint64_t a1, void *a2)
{
  OrgApacheLuceneStoreBaseDirectory_initWithOrgApacheLuceneStoreLockFactory_(a1, a2);
  v3 = new_JavaUtilConcurrentConcurrentHashMap_init();
  JreStrongAssignAndConsume((a1 + 24), v3);
  v4 = new_JavaUtilConcurrentAtomicAtomicLong_init();

  return JreStrongAssignAndConsume((a1 + 32), v4);
}

char *sub_10003B94C(void *a1, void *a2, int a3, uint64_t a4)
{
  v8 = new_OrgApacheLuceneStoreSingleInstanceLockFactory_init();
  OrgApacheLuceneStoreRAMDirectory_initWithOrgApacheLuceneStoreLockFactory_(a1, v8);
  if (!a2 || (result = [a2 listAll]) == 0)
  {
LABEL_13:
    JreThrowNullPointerException();
  }

  v10 = (result + 24);
  v11 = &result[8 * *(result + 2) + 24];
  while (v10 < v11)
  {
    v13 = *v10++;
    v12 = v13;
    v14 = [a2 getDirectory];
    if (!v14)
    {
      goto LABEL_13;
    }

    result = OrgLukhnosPortmobileFileFiles_isDirectoryWithOrgLukhnosPortmobileFilePath_([v14 resolveWithNSString:v12]);
    if ((result & 1) == 0)
    {
      result = [a1 copyFromWithOrgApacheLuceneStoreDirectory:a2 withNSString:v12 withNSString:v12 withOrgApacheLuceneStoreIOContext:a4];
    }
  }

  if (a3)
  {

    return [a2 close];
  }

  return result;
}

OrgApacheLuceneAnalysisCoreLowerCaseTokenizer *new_OrgApacheLuceneAnalysisCoreLowerCaseTokenizer_init()
{
  v0 = [OrgApacheLuceneAnalysisCoreLowerCaseTokenizer alloc];
  OrgApacheLuceneAnalysisCoreLetterTokenizer_init(v0, v1);
  return v0;
}

id OrgApacheLuceneIndexFieldInfos_initWithOrgApacheLuceneIndexFieldInfoArray_(uint64_t a1, uint64_t a2)
{
  v4 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume((a1 + 32), v4);
  v5 = new_JavaUtilTreeMap_init();
  if (!a2)
  {
    goto LABEL_41;
  }

  v13 = v5;
  v14 = (a2 + 24);
  v77 = a2 + 24 + 8 * *(a2 + 8);
  if (a2 + 24 < v77)
  {
    v81 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v75 = v5;
    v76 = a1;
    while (1)
    {
      v21 = *v14++;
      v20 = v21;
      if (!v21)
      {
        goto LABEL_41;
      }

      v22 = *(v20 + 16);
      if (v22 < 0)
      {
        break;
      }

      v23 = [(JavaUtilTreeMap *)v13 putWithId:JavaLangInteger_valueOfWithInt_(v22) withId:v20];
      if (v23)
      {
        v74 = *(v20 + 16);
        v71 = *(v20 + 8);
        v68 = v23[1];
        v65 = JreStrcat("$$$$$I", v24, v25, v26, v27, v28, v29, v30, @"duplicate field numbers: ");
        goto LABEL_45;
      }

      v80 = v15;
      v31 = v17;
      v32 = [*(a1 + 32) putWithId:*(v20 + 8) withId:v20];
      if (v32)
      {
        v73 = *(v20 + 8);
        v70 = *(v20 + 16);
        v67 = v32[4];
        v65 = JreStrcat("$I$I$$", v33, v34, v35, v36, v37, v38, v39, @"duplicate field names: ");
        goto LABEL_45;
      }

      v40 = [v20 hasVectors];
      v41 = [v20 getIndexOptions];
      if (!v41)
      {
        goto LABEL_41;
      }

      v42 = v41;
      if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100015608();
      }

      v79 = v19;
      v78 = [v42 compareToWithId:qword_100557388] >= 0;
      v43 = [v20 getIndexOptions];
      if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100015608();
      }

      v44 = v43 != qword_100557378;
      v45 = [v20 getIndexOptions];
      if (!v45)
      {
        goto LABEL_41;
      }

      v46 = v45;
      if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100015608();
      }

      v47 = [v46 compareToWithId:qword_100557390] >= 0;
      v48 = [v20 hasNorms];
      v49 = [v20 getDocValuesType];
      if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_10001B990();
      }

      LOBYTE(v81) = v81 | v40;
      BYTE4(v81) |= v78;
      v17 = v31 | v44;
      v16 |= v47;
      v18 |= v48;
      v19 = v79 | (v49 != OrgApacheLuceneIndexDocValuesTypeEnum_values_);
      v15 = v80 | [v20 hasPayloads];
      a1 = v76;
      v13 = v75;
      if (v14 >= v77)
      {
        goto LABEL_21;
      }
    }

    v72 = *(v20 + 8);
    v69 = *(v20 + 16);
    v65 = JreStrcat("$I$$", v6, v7, v8, v9, v10, v11, v12, @"illegal field number: ");
LABEL_45:
    v66 = new_JavaLangIllegalArgumentException_initWithNSString_(v65);
    objc_exception_throw(v66);
  }

  LOBYTE(v19) = 0;
  v18 = 0;
  LOBYTE(v17) = 0;
  v16 = 0;
  LOBYTE(v15) = 0;
  v81 = 0;
LABEL_21:
  *(a1 + 12) = v81 & 1;
  *(a1 + 9) = BYTE4(v81) & 1;
  *(a1 + 10) = v15 & 1;
  *(a1 + 11) = v16 & 1;
  *(a1 + 8) = v17 & 1;
  *(a1 + 13) = v18 & 1;
  *(a1 + 14) = v19 & 1;
  v50 = JavaUtilCollections_unmodifiableCollectionWithJavaUtilCollection_([(JavaUtilTreeMap *)v13 values]);
  JreStrongAssign((a1 + 40), v50);
  if ([(JavaUtilTreeMap *)v13 isEmpty])
  {
    goto LABEL_38;
  }

  v51 = JavaUtilCollections_maxWithJavaUtilCollection_([(JavaUtilTreeMap *)v13 keySet]);
  if (!v51)
  {
    goto LABEL_38;
  }

  v52 = v51;
  v53 = [v51 intValue];
  if ((atomic_load_explicit(OrgApacheLuceneUtilArrayUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10000B068();
  }

  if (v53 >= OrgApacheLuceneUtilArrayUtil_MAX_ARRAY_LENGTH_ || (v54 = [v52 intValue], v54 >= 16 * -[JavaUtilTreeMap size](v13, "size")))
  {
LABEL_38:
    JreStrongAssign((a1 + 24), v13);

    return JreStrongAssign((a1 + 16), 0);
  }

  JreStrongAssign((a1 + 24), 0);
  v55 = +[IOSObjectArray newArrayWithLength:type:](IOSObjectArray, "newArrayWithLength:type:", ([v52 intValue] + 1), OrgApacheLuceneIndexFieldInfo_class_());
  JreStrongAssignAndConsume((a1 + 16), v55);
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v56 = [(JavaUtilTreeMap *)v13 entrySet];
  if (!v56)
  {
LABEL_41:
    JreThrowNullPointerException();
  }

  v57 = v56;
  result = [v56 countByEnumeratingWithState:&v82 objects:v86 count:16];
  if (result)
  {
    v59 = result;
    v60 = *v83;
    do
    {
      v61 = 0;
      do
      {
        if (*v83 != v60)
        {
          objc_enumerationMutation(v57);
        }

        v62 = *(*(&v82 + 1) + 8 * v61);
        if (!v62)
        {
          goto LABEL_41;
        }

        v63 = *(a1 + 16);
        v64 = [*(*(&v82 + 1) + 8 * v61) getKey];
        if (!v64)
        {
          goto LABEL_41;
        }

        IOSObjectArray_Set(v63, [v64 intValue], objc_msgSend(v62, "getValue"));
        v61 = v61 + 1;
      }

      while (v59 != v61);
      result = [v57 countByEnumeratingWithState:&v82 objects:v86 count:16];
      v59 = result;
    }

    while (result);
  }

  return result;
}

OrgApacheLuceneIndexFieldInfos *new_OrgApacheLuceneIndexFieldInfos_initWithOrgApacheLuceneIndexFieldInfoArray_(uint64_t a1)
{
  v2 = [OrgApacheLuceneIndexFieldInfos alloc];
  OrgApacheLuceneIndexFieldInfos_initWithOrgApacheLuceneIndexFieldInfoArray_(v2, a1);
  return v2;
}

uint64_t OrgApacheLuceneIndexFieldInfos_class_()
{
  if (qword_100553F58 != -1)
  {
    sub_10003D740();
  }

  return qword_100553F50;
}

void *OrgApacheLuceneIndexFieldInfos_FieldNumbers_init(uint64_t a1)
{
  *(a1 + 32) = -1;
  v2 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume((a1 + 16), v2);
  v3 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume((a1 + 8), v3);
  v4 = new_JavaUtilHashMap_init();

  return JreStrongAssignAndConsume((a1 + 24), v4);
}

id OrgApacheLuceneIndexFieldInfos_Builder_init(uint64_t a1)
{
  v2 = [OrgApacheLuceneIndexFieldInfos_FieldNumbers alloc];
  OrgApacheLuceneIndexFieldInfos_FieldNumbers_init(v2);
  v3 = v2;
  v4 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume((a1 + 16), v4);

  return JreStrongAssign((a1 + 8), v3);
}

OrgApacheLuceneIndexFieldInfo *sub_10003D340(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a8)
  {
    v24 = new_JavaLangNullPointerException_initWithNSString_(@"DocValuesType cannot be null");
    objc_exception_throw(v24);
  }

  v16 = [a1 fieldInfoWithNSString:a2];
  if (!v16)
  {
    v20 = a1[1];
    if (v20)
    {
      v21 = [v20 addOrGetWithNSString:a2 withInt:a3 withOrgApacheLuceneIndexDocValuesTypeEnum:a8];
      v22 = new_JavaUtilHashMap_init();
      v17 = new_OrgApacheLuceneIndexFieldInfo_initWithNSString_withInt_withBoolean_withBoolean_withBoolean_withOrgApacheLuceneIndexIndexOptionsEnum_withOrgApacheLuceneIndexDocValuesTypeEnum_withLong_withJavaUtilMap_(a2, v21, a4, a5, a6, a7, a8, -1, v22);
      [a1[1] verifyConsistentWithJavaLangInteger:JavaLangInteger_valueOfWithInt_(v17->number_) withNSString:v17->name_ withOrgApacheLuceneIndexDocValuesTypeEnum:{-[OrgApacheLuceneIndexFieldInfo getDocValuesType](v17, "getDocValuesType")}];
      [a1[2] putWithId:v17->name_ withId:v17];
      return v17;
    }

    goto LABEL_15;
  }

  v17 = v16;
  [(OrgApacheLuceneIndexFieldInfo *)v16 updateWithBoolean:a4 withBoolean:a5 withBoolean:a6 withOrgApacheLuceneIndexIndexOptionsEnum:a7];
  if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10001B990();
  }

  if (OrgApacheLuceneIndexDocValuesTypeEnum_values_ != a8)
  {
    v18 = [(OrgApacheLuceneIndexFieldInfo *)v17 getDocValuesType];
    if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10001B990();
    }

    if (v18 != OrgApacheLuceneIndexDocValuesTypeEnum_values_)
    {
      goto LABEL_11;
    }

    v19 = a1[1];
    if (v19)
    {
      [v19 setDocValuesTypeWithInt:v17->number_ withNSString:a2 withOrgApacheLuceneIndexDocValuesTypeEnum:a8];
LABEL_11:
      [(OrgApacheLuceneIndexFieldInfo *)v17 setDocValuesTypeWithOrgApacheLuceneIndexDocValuesTypeEnum:a8];
      return v17;
    }

LABEL_15:
    JreThrowNullPointerException();
  }

  return v17;
}

OrgApacheLuceneIndexFieldInfos_Builder *new_OrgApacheLuceneIndexFieldInfos_Builder_init()
{
  v0 = [OrgApacheLuceneIndexFieldInfos_Builder alloc];
  OrgApacheLuceneIndexFieldInfos_Builder_init(v0);
  return v0;
}

uint64_t OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_()
{
  if (qword_100553F68 != -1)
  {
    sub_10003D7B4();
  }

  return qword_100553F60;
}

id OrgApacheLuceneDocumentDocumentStoredFieldVisitor_initWithJavaUtilSet_(uint64_t a1, void *a2)
{
  OrgApacheLuceneIndexStoredFieldVisitor_init();
  v4 = new_OrgApacheLuceneDocumentDocument_init();
  JreStrongAssignAndConsume((a1 + 16), v4);

  return JreStrongAssign((a1 + 24), a2);
}

id OrgApacheLuceneDocumentDocumentStoredFieldVisitor_initWithNSStringArray_(uint64_t a1, uint64_t a2)
{
  OrgApacheLuceneIndexStoredFieldVisitor_init();
  v4 = new_OrgApacheLuceneDocumentDocument_init();
  JreStrongAssignAndConsume((a1 + 16), v4);
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v5 = new_JavaUtilHashSet_initWithInt_(*(a2 + 8));
  result = JreStrongAssignAndConsume((a1 + 24), v5);
  v7 = (a2 + 24);
  v8 = a2 + 24 + 8 * *(a2 + 8);
  while (v7 < v8)
  {
    v9 = *v7++;
    result = [*(a1 + 24) addWithId:v9];
  }

  return result;
}

id OrgApacheLuceneDocumentDocumentStoredFieldVisitor_init(uint64_t a1)
{
  OrgApacheLuceneIndexStoredFieldVisitor_init();
  v2 = new_OrgApacheLuceneDocumentDocument_init();
  JreStrongAssignAndConsume((a1 + 16), v2);

  return JreStrongAssign((a1 + 24), 0);
}

OrgApacheLuceneDocumentDocumentStoredFieldVisitor *new_OrgApacheLuceneDocumentDocumentStoredFieldVisitor_initWithJavaUtilSet_(void *a1)
{
  v2 = [OrgApacheLuceneDocumentDocumentStoredFieldVisitor alloc];
  OrgApacheLuceneDocumentDocumentStoredFieldVisitor_initWithJavaUtilSet_(v2, a1);
  return v2;
}

OrgApacheLuceneDocumentDocumentStoredFieldVisitor *new_OrgApacheLuceneDocumentDocumentStoredFieldVisitor_init()
{
  v0 = [OrgApacheLuceneDocumentDocumentStoredFieldVisitor alloc];
  OrgApacheLuceneDocumentDocumentStoredFieldVisitor_init(v0);
  return v0;
}

id OrgApacheLuceneUtilFrequencyTrackingRingBuffer_initWithInt_withInt_(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 <= 1)
  {
    v8 = new_JavaLangIllegalArgumentException_initWithNSString_(@"maxSize must be at least 2");
    objc_exception_throw(v8);
  }

  v4 = a2;
  *(a1 + 8) = a2;
  JreStrongAssignAndConsume((a1 + 16), [IOSIntArray newArrayWithLength:a2]);
  *(a1 + 24) = 0;
  v6 = [OrgApacheLuceneUtilFrequencyTrackingRingBuffer_IntBag alloc];
  sub_10003E328(v6, v4);
  JreStrongAssignAndConsume((a1 + 32), v6);
  JavaUtilArrays_fillWithIntArray_withInt_(*(a1 + 16), a3);
  do
  {
    result = [*(a1 + 32) addWithInt:a3];
    --v4;
  }

  while (v4);
  return result;
}

OrgApacheLuceneUtilFrequencyTrackingRingBuffer *new_OrgApacheLuceneUtilFrequencyTrackingRingBuffer_initWithInt_withInt_(int a1, uint64_t a2)
{
  v4 = [OrgApacheLuceneUtilFrequencyTrackingRingBuffer alloc];
  OrgApacheLuceneUtilFrequencyTrackingRingBuffer_initWithInt_withInt_(v4, a1, a2);
  return v4;
}

uint64_t OrgApacheLuceneUtilFrequencyTrackingRingBuffer_class_()
{
  if ((atomic_load_explicit(&OrgApacheLuceneUtilFrequencyTrackingRingBuffer__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10003EBE4();
  }

  if (qword_100553F80 != -1)
  {
    sub_10003EBF0();
  }

  return qword_100553F78;
}

void *sub_10003E328(uint64_t a1, int a2)
{
  v3 = JavaLangMath_maxWithInt_withInt_(2, 3 * a2 / 2);
  v4 = 2 * JavaLangInteger_highestOneBitWithInt_(v3 - 1);
  JreStrongAssignAndConsume((a1 + 8), [IOSIntArray newArrayWithLength:v4]);
  result = JreStrongAssignAndConsume((a1 + 16), [IOSIntArray newArrayWithLength:v4]);
  *(a1 + 24) = v4 - 1;
  return result;
}

uint64_t sub_10003E7C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
LABEL_32:
    JreThrowNullPointerException();
  }

  v3 = a2;
  v5 = *(a1 + 24) & (a2 + 1);
  while (1)
  {
    result = *(v2 + 8);
    if ((v5 & 0x80000000) != 0 || v5 >= result)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, v5);
    }

    v7 = *(v2 + 12 + 4 * v5);
    if (!v7)
    {
      return result;
    }

    v8 = *(a1 + 8);
    if (!v8)
    {
      goto LABEL_32;
    }

    v9 = *(v8 + 8);
    if ((v5 & 0x80000000) != 0 || v5 >= v9)
    {
      IOSArray_throwOutOfBoundsWithMsg(v9, v5);
    }

    v10 = *(v8 + 12 + 4 * v5);
    v11 = *(a1 + 24);
    if ((atomic_load_explicit(OrgApacheLuceneUtilFrequencyTrackingRingBuffer_IntBag__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10003EC04();
    }

    v12 = v11 & v10;
    if ((v11 & v10) <= v5)
    {
      if (v3 <= v5 && v12 <= v3)
      {
LABEL_17:
        v13 = *(a1 + 8);
        v14 = *(v13 + 8);
        if ((v3 & 0x80000000) != 0 || v3 >= v14)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, v3);
        }

        *(v13 + 12 + 4 * v3) = v10;
        v15 = *(a1 + 16);
        v16 = *(v15 + 8);
        if ((v3 & 0x80000000) != 0 || v3 >= v16)
        {
          IOSArray_throwOutOfBoundsWithMsg(v16, v3);
        }

        *(v15 + 12 + 4 * v3) = v7;
        v17 = *(a1 + 16);
        v18 = *(v17 + 8);
        if ((v5 & 0x80000000) != 0 || v5 >= v18)
        {
          IOSArray_throwOutOfBoundsWithMsg(v18, v5);
        }

        *(v17 + 12 + 4 * v5) = 0;
        v3 = v5;
      }
    }

    else if (v3 <= v5 || v3 >= v12)
    {
      goto LABEL_17;
    }

    v5 = *(a1 + 24) & (v5 + 1);
    v2 = *(a1 + 16);
    if (!v2)
    {
      goto LABEL_32;
    }
  }
}

uint64_t OrgApacheLuceneUtilFrequencyTrackingRingBuffer_IntBag_class_()
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilFrequencyTrackingRingBuffer_IntBag__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10003EC04();
  }

  if (qword_100553F98 != -1)
  {
    sub_10003EC10();
  }

  return qword_100553F90;
}

id OrgApacheLuceneIndexSegmentCoreReaders_initWithOrgApacheLuceneIndexSegmentReader_withOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentCommitInfo_withOrgApacheLuceneStoreIOContext_(id *a1, uint64_t a2, id a3, uint64_t a4, void *a5)
{
  v9 = new_JavaUtilConcurrentAtomicAtomicInteger_initWithInt_(1u);
  JreStrongAssignAndConsume(a1 + 9, v9);
  v10 = new_OrgApacheLuceneIndexSegmentCoreReaders_FieldsReaderLocal_initWithOrgApacheLuceneIndexSegmentCoreReaders_(a1);
  JreStrongAssignAndConsume(a1 + 7, v10);
  v11 = new_OrgApacheLuceneIndexSegmentCoreReaders_TermVectorsLocal_initWithOrgApacheLuceneIndexSegmentCoreReaders_(a1);
  JreStrongAssignAndConsume(a1 + 8, v11);
  v12 = new_JavaUtilLinkedHashSet_init();
  v13 = JavaUtilCollections_synchronizedSetWithJavaUtilSet_(v12);
  JreStrongAssign(a1 + 10, v13);
  if (!a4 || (v14 = *(a4 + 8)) == 0)
  {
    JreThrowNullPointerException();
  }

  v15 = [v14 getCodec];
  if ([*(a4 + 8) getUseCompoundFile])
  {
    if (!v15 || (v16 = [v15 compoundFormat]) == 0)
    {
LABEL_24:
      JreThrowNullPointerException();
    }

    a3 = JreStrongAssign(a1 + 5, [v16 getCompoundReaderWithOrgApacheLuceneStoreDirectory:a3 withOrgApacheLuceneIndexSegmentInfo:*(a4 + 8) withOrgApacheLuceneStoreIOContext:a5]);
  }

  else
  {
    JreStrongAssign(a1 + 5, 0);
    if (!v15)
    {
      goto LABEL_24;
    }
  }

  v17 = [v15 fieldInfosFormat];
  if (!v17)
  {
    goto LABEL_24;
  }

  JreStrongAssign(a1 + 6, [v17 readWithOrgApacheLuceneStoreDirectory:a3 withOrgApacheLuceneIndexSegmentInfo:*(a4 + 8) withNSString:&stru_100484358 withOrgApacheLuceneStoreIOContext:a5]);
  v18 = new_OrgApacheLuceneIndexSegmentReadState_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withOrgApacheLuceneIndexFieldInfos_withOrgApacheLuceneStoreIOContext_(a3, *(a4 + 8), a1[6], a5);
  v19 = [v15 postingsFormat];
  if (!v19)
  {
    goto LABEL_23;
  }

  JreStrongAssign(a1 + 1, [v19 fieldsProducerWithOrgApacheLuceneIndexSegmentReadState:v18]);
  v20 = a1[6];
  if (!v20)
  {
    goto LABEL_23;
  }

  if ([v20 hasNorms])
  {
    v21 = [v15 normsFormat];
    if (!v21)
    {
      goto LABEL_23;
    }

    v22 = [v21 normsProducerWithOrgApacheLuceneIndexSegmentReadState:v18];
  }

  else
  {
    v22 = 0;
  }

  JreStrongAssign(a1 + 2, v22);
  v23 = [*(a4 + 8) getCodec];
  if (!v23)
  {
    goto LABEL_23;
  }

  v24 = [v23 storedFieldsFormat];
  if (!v24)
  {
    goto LABEL_23;
  }

  JreStrongAssign(a1 + 3, [v24 fieldsReaderWithOrgApacheLuceneStoreDirectory:a3 withOrgApacheLuceneIndexSegmentInfo:*(a4 + 8) withOrgApacheLuceneIndexFieldInfos:a1[6] withOrgApacheLuceneStoreIOContext:a5]);
  if (![a1[6] hasVectors])
  {
    v27 = 0;
    return JreStrongAssign(a1 + 4, v27);
  }

  v25 = [*(a4 + 8) getCodec];
  if (!v25 || (v26 = [v25 termVectorsFormat]) == 0)
  {
LABEL_23:
    JreThrowNullPointerException();
  }

  v27 = [v26 vectorsReaderWithOrgApacheLuceneStoreDirectory:a3 withOrgApacheLuceneIndexSegmentInfo:*(a4 + 8) withOrgApacheLuceneIndexFieldInfos:a1[6] withOrgApacheLuceneStoreIOContext:a5];
  return JreStrongAssign(a1 + 4, v27);
}

void sub_10003EEB4(void *a1)
{
  objc_begin_catch(a1);
  [v1 decRef];
  objc_exception_rethrow();
}

void sub_10003F074(void *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    if (a2 == 2)
    {
      objc_end_catch();
    }

    JUMPOUT(0x10003EFFCLL);
  }

  JUMPOUT(0x10003F068);
}

uint64_t sub_10003F0AC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 80);
  objc_sync_enter(v4);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = *(a1 + 80);
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  v6 = [*(a1 + 80) countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        if (!v9)
        {
          JreThrowNullPointerException();
        }

        [v9 onCloseWithId:{a1, v12}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v10 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v6 = v10;
    }

    while (v10);
  }

  OrgApacheLuceneUtilIOUtils_reThrowUncheckedWithJavaLangThrowable_(a2);
  return objc_sync_exit(v4);
}

void sub_10003F218(_Unwind_Exception *a1)
{
  objc_end_catch();
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

OrgApacheLuceneIndexSegmentCoreReaders_FieldsReaderLocal *new_OrgApacheLuceneIndexSegmentCoreReaders_FieldsReaderLocal_initWithOrgApacheLuceneIndexSegmentCoreReaders_(void *a1)
{
  v2 = [OrgApacheLuceneIndexSegmentCoreReaders_FieldsReaderLocal alloc];
  objc_storeWeak(&v2->this$0_, a1);
  OrgApacheLuceneUtilCloseableThreadLocal_init(&v2->super.super.isa);
  return v2;
}

OrgApacheLuceneIndexSegmentCoreReaders_TermVectorsLocal *new_OrgApacheLuceneIndexSegmentCoreReaders_TermVectorsLocal_initWithOrgApacheLuceneIndexSegmentCoreReaders_(void *a1)
{
  v2 = [OrgApacheLuceneIndexSegmentCoreReaders_TermVectorsLocal alloc];
  objc_storeWeak(&v2->this$0_, a1);
  OrgApacheLuceneUtilCloseableThreadLocal_init(&v2->super.super.isa);
  return v2;
}

OrgApacheLuceneIndexSegmentCoreReaders *new_OrgApacheLuceneIndexSegmentCoreReaders_initWithOrgApacheLuceneIndexSegmentReader_withOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentCommitInfo_withOrgApacheLuceneStoreIOContext_(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = [OrgApacheLuceneIndexSegmentCoreReaders alloc];
  OrgApacheLuceneIndexSegmentCoreReaders_initWithOrgApacheLuceneIndexSegmentReader_withOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentCommitInfo_withOrgApacheLuceneStoreIOContext_(&v7->super.isa, v8, a2, a3, a4);
  return v7;
}

id OrgApacheLuceneCodecsCompressingCompressingStoredFieldsFormat_initWithNSString_withNSString_withOrgApacheLuceneCodecsCompressingCompressionMode_withInt_withInt_withInt_(uint64_t a1, void *a2, void *a3, void *a4, int a5, int a6, int a7)
{
  OrgApacheLuceneCodecsStoredFieldsFormat_init();
  JreStrongAssign((a1 + 8), a2);
  JreStrongAssign((a1 + 16), a3);
  result = JreStrongAssign((a1 + 24), a4);
  if (a5 <= 0)
  {
    v15 = @"chunkSize must be >= 1";
    goto LABEL_8;
  }

  *(a1 + 32) = a5;
  if (a6 <= 0)
  {
    v15 = @"maxDocsPerChunk must be >= 1";
    goto LABEL_8;
  }

  *(a1 + 36) = a6;
  if (a7 <= 0)
  {
    v15 = @"blockSize must be >= 1";
LABEL_8:
    v16 = new_JavaLangIllegalArgumentException_initWithNSString_(v15);
    objc_exception_throw(v16);
  }

  *(a1 + 40) = a7;
  return result;
}

OrgApacheLuceneCodecsCompressingCompressingStoredFieldsFormat *new_OrgApacheLuceneCodecsCompressingCompressingStoredFieldsFormat_initWithNSString_withOrgApacheLuceneCodecsCompressingCompressionMode_withInt_withInt_withInt_(void *a1, void *a2, int a3, int a4, int a5)
{
  v10 = [OrgApacheLuceneCodecsCompressingCompressingStoredFieldsFormat alloc];
  OrgApacheLuceneCodecsCompressingCompressingStoredFieldsFormat_initWithNSString_withNSString_withOrgApacheLuceneCodecsCompressingCompressionMode_withInt_withInt_withInt_(v10, a1, &stru_100484358, a2, a3, a4, a5);
  return v10;
}

OrgApacheLuceneSearchTermStatistics *new_OrgApacheLuceneSearchTermStatistics_initWithOrgApacheLuceneUtilBytesRef_withLong_withLong_(void *a1, int64_t a2, int64_t a3)
{
  v6 = [OrgApacheLuceneSearchTermStatistics alloc];
  JreStrongAssign(&v6->term_, a1);
  v6->docFreq_ = a2;
  v6->totalTermFreq_ = a3;
  return v6;
}

uint64_t OrgApacheLuceneSearchTermStatistics_class_()
{
  if (qword_100553FA8 != -1)
  {
    sub_10003FDA4();
  }

  return qword_100553FA0;
}

id OrgApacheLuceneCodecsLucene50ForUtil_initWithFloat_withOrgApacheLuceneStoreDataOutput_(id *a1, void *a2, float a3)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  [a2 writeVIntWithInt:2];
  JreStrongAssignAndConsume(a1 + 1, [IOSIntArray newArrayWithLength:33]);
  v6 = [IOSObjectArray newArrayWithLength:33 type:OrgApacheLuceneUtilPackedPackedInts_Encoder_class_()];
  JreStrongAssignAndConsume(a1 + 2, v6);
  v7 = [IOSObjectArray newArrayWithLength:33 type:OrgApacheLuceneUtilPackedPackedInts_Decoder_class_()];
  JreStrongAssignAndConsume(a1 + 3, v7);
  JreStrongAssignAndConsume(a1 + 4, [IOSIntArray newArrayWithLength:33]);
  for (i = 1; i != 33; ++i)
  {
    v9 = OrgApacheLuceneUtilPackedPackedInts_fastestFormatAndBitsWithInt_withInt_withFloat_(128, i, a3);
    v15 = sub_100040970(v9->format_, 2, v9->bitsPerValue_);
    v16 = a1[1];
    v17 = v16[2];
    if (i >= v17)
    {
      IOSArray_throwOutOfBoundsWithMsg(v17, i);
    }

    v16[i + 3] = v15;
    v18 = a1[2];
    EncoderWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt = OrgApacheLuceneUtilPackedPackedInts_getEncoderWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_(v9->format_, 2, v9->bitsPerValue_, v10, v11, v12, v13, v14);
    IOSObjectArray_Set(v18, i, EncoderWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt);
    v20 = a1[3];
    DecoderWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt = OrgApacheLuceneUtilPackedPackedInts_getDecoderWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_(v9->format_, 2, v9->bitsPerValue_, v21, v22, v23, v24, v25);
    IOSObjectArray_Set(v20, i, DecoderWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt);
    v27 = a1[3];
    v28 = *(v27 + 2);
    if (i >= v28)
    {
      IOSArray_throwOutOfBoundsWithMsg(v28, i);
    }

    v29 = sub_1000408F8(v27[i + 3]);
    v30 = a1[4];
    v31 = v30[2];
    if (i >= v31)
    {
      IOSArray_throwOutOfBoundsWithMsg(v31, i);
    }

    v30[i + 3] = v29;
    result = [a2 writeVIntWithInt:{(v9->bitsPerValue_ - 1) | (32 * -[OrgApacheLuceneUtilPackedPackedInts_FormatEnum getId](v9->format_, "getId"))}];
  }

  return result;
}

uint64_t OrgApacheLuceneCodecsLucene50ForUtil_initWithOrgApacheLuceneStoreDataInput_(id *a1, void *a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v4 = [a2 readVInt];
  OrgApacheLuceneUtilPackedPackedInts_checkVersionWithInt_(v4, v5, v6, v7, v8, v9, v10, v11);
  JreStrongAssignAndConsume(a1 + 1, [IOSIntArray newArrayWithLength:33]);
  v12 = [IOSObjectArray newArrayWithLength:33 type:OrgApacheLuceneUtilPackedPackedInts_Encoder_class_()];
  JreStrongAssignAndConsume(a1 + 2, v12);
  v13 = [IOSObjectArray newArrayWithLength:33 type:OrgApacheLuceneUtilPackedPackedInts_Decoder_class_()];
  JreStrongAssignAndConsume(a1 + 3, v13);
  JreStrongAssignAndConsume(a1 + 4, [IOSIntArray newArrayWithLength:33]);
  for (i = 1; i != 33; ++i)
  {
    v15 = [a2 readVInt];
    v16 = v15 & 0x1F;
    v17 = OrgApacheLuceneUtilPackedPackedInts_FormatEnum_byIdWithInt_(v15 >> 5);
    v23 = sub_100040970(v17, v4, (v16 + 1));
    v24 = a1[1];
    v25 = v24[2];
    if (i >= v25)
    {
      IOSArray_throwOutOfBoundsWithMsg(v25, i);
    }

    v24[i + 3] = v23;
    v26 = a1[2];
    EncoderWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt = OrgApacheLuceneUtilPackedPackedInts_getEncoderWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_(v17, v4, (v16 + 1), v18, v19, v20, v21, v22);
    IOSObjectArray_Set(v26, i, EncoderWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt);
    v28 = a1[3];
    DecoderWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt = OrgApacheLuceneUtilPackedPackedInts_getDecoderWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_(v17, v4, (v16 + 1), v29, v30, v31, v32, v33);
    IOSObjectArray_Set(v28, i, DecoderWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt);
    v35 = a1[3];
    v36 = *(v35 + 2);
    if (i >= v36)
    {
      IOSArray_throwOutOfBoundsWithMsg(v36, i);
    }

    v37 = sub_1000408F8(v35[i + 3]);
    v38 = a1[4];
    result = v38[2];
    if (i >= result)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, i);
    }

    v38[i + 3] = v37;
  }

  return result;
}

uint64_t sub_1000408F8(void *a1)
{
  if (atomic_load_explicit(OrgApacheLuceneCodecsLucene50ForUtil__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_10:
    JreThrowNullPointerException();
  }

  sub_100040A10();
  if (!a1)
  {
    goto LABEL_10;
  }

LABEL_3:
  v2 = JavaLangMath_ceilWithDouble_((128.0 / [a1 byteValueCount]));
  v3 = v2;
  if (v2 < 0.0)
  {
    v4 = 0x80000000;
  }

  else
  {
    v4 = 0x7FFFFFFF;
  }

  if (v3 == 0x80000000)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

id sub_100040970(void *a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(OrgApacheLuceneCodecsLucene50ForUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100040A10();
    if (a1)
    {
      return [a1 byteCountWithInt:a2 withInt:128 withInt:a3];
    }

LABEL_5:
    JreThrowNullPointerException();
  }

  if (!a1)
  {
    goto LABEL_5;
  }

  return [a1 byteCountWithInt:a2 withInt:128 withInt:a3];
}

OrgApacheLuceneCodecsLucene50ForUtil *new_OrgApacheLuceneCodecsLucene50ForUtil_initWithOrgApacheLuceneStoreDataInput_(void *a1)
{
  v2 = [OrgApacheLuceneCodecsLucene50ForUtil alloc];
  OrgApacheLuceneCodecsLucene50ForUtil_initWithOrgApacheLuceneStoreDataInput_(&v2->super.isa, a1);
  return v2;
}

id ComAppleProactiveLuceneNSDataDirectory_initWithOrgLukhnosPortmobileFilePath_withInt_withBoolean_withBoolean_withInt_(uint64_t a1, void *a2, int a3, char a4, char a5, int a6)
{
  Default = OrgApacheLuceneStoreFSLockFactory_getDefault();
  OrgApacheLuceneStoreFSDirectory_initWithOrgLukhnosPortmobileFilePath_withOrgApacheLuceneStoreLockFactory_(a1, a2, Default);
  *(a1 + 40) = a3;
  *(a1 + 44) = a4;
  *(a1 + 45) = a5;
  v13 = *(a1 + 24);
  if (!v13 || (v14 = [v13 toFile]) == 0)
  {
    JreThrowNullPointerException();
  }

  result = JreStrongAssign((a1 + 32), [v14 getAbsolutePath]);
  if (a6 >= 1)
  {
    v16 = a6;
  }

  else
  {
    v16 = 1024;
  }

  *(a1 + 48) = v16;
  return result;
}

id sub_100040CF4(uint64_t a1, uint64_t a2, void *a3)
{
  JreStrongAssign((a1 + 24), a2);
  OrgApacheLuceneStoreIndexInput_initWithNSString_(a1, a3);
  *(a1 + 56) = 0;
  JreStrongAssign((a1 + 32), a3);
  v6 = *(a2 + 32);
  if (*(a2 + 44) == 1)
  {
    v7 = sub_100042124(v6, a3);
  }

  else
  {
    v7 = sub_1000422C8(v6, a3);
  }

  JreStrongAssign((a1 + 48), v7);
  result = [*(a1 + 48) length];
  *(a1 + 40) = result;
  return result;
}

id sub_100041024(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    if (a3)
    {
      v17 = [a3 description];
      goto LABEL_6;
    }

LABEL_9:
    JreThrowNullPointerException();
  }

  if (!a3)
  {
    goto LABEL_9;
  }

  v9 = [a3 description];
  v17 = JreStrcat("$$$C", v10, v11, v12, v13, v14, v15, v16, v9);
LABEL_6:
  OrgApacheLuceneStoreBufferedIndexInput_initWithNSString_withInt_(a1, v17, 1024);
  if ((a5 | a4) < 0 || a5 + a4 > [a3 length])
  {
    v26 = JreStrcat("$$$@", v18, v19, v20, v21, v22, v23, v24, @"slice() ");
    v27 = new_JavaLangIllegalArgumentException_initWithNSString_(v26);
    objc_exception_throw(v27);
  }

  result = JreStrongAssign((a1 + 56), [a3 clone]);
  *(a1 + 64) = a4;
  *(a1 + 72) = a5;
  return result;
}

id sub_100041398(uint64_t a1, uint64_t a2, void *a3)
{
  JreStrongAssign((a1 + 24), a2);
  OrgApacheLuceneStoreIndexInput_initWithNSString_(a1, a3);
  JreStrongAssign((a1 + 32), a3);
  v6 = *(a2 + 32);
  if (*(a2 + 44) == 1)
  {
    v7 = sub_100042124(v6, a3);
  }

  else
  {
    v7 = sub_1000422C8(v6, a3);
  }

  JreStrongAssign((a1 + 56), v7);
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  result = [*(a1 + 56) length];
  *(a1 + 40) = result;
  return result;
}

id sub_1000414B0(uint64_t a1, void *a2, void *a3, void *a4, int a5, uint64_t a6)
{
  JreStrongAssign((a1 + 24), a2);
  OrgApacheLuceneStoreIndexInput_initWithNSString_(a1, a3);
  JreStrongAssign((a1 + 32), a3);
  result = JreStrongAssign((a1 + 56), a4);
  *(a1 + 48) = a5;
  *(a1 + 52) = 0;
  *(a1 + 40) = a6;
  return result;
}

unint64_t sub_100041A74(uint64_t a1, int a2)
{
  v10 = 0;
  [*(a1 + 56) getBytes:&v10 range:{*(a1 + 52) + *(a1 + 48), 8}];
  v4 = v10;
  if ((v10 & 0x8000000000000000) != 0)
  {
    v4 = v10 & 0x7F | ((SBYTE1(v10) & 0x7F) << 7);
    if ((SBYTE1(v10) & 0x80000000) == 0)
    {
LABEL_4:
      v5 = *(a1 + 52) + 2;
      goto LABEL_15;
    }

    v4 |= (SBYTE2(v10) & 0x7F) << 14;
    if ((SBYTE2(v10) & 0x80000000) == 0)
    {
      v5 = *(a1 + 52) + 3;
      goto LABEL_15;
    }

    v4 |= (SBYTE3(v10) & 0x7F) << 21;
    if ((SBYTE3(v10) & 0x80000000) == 0)
    {
      v5 = *(a1 + 52) + 4;
      goto LABEL_15;
    }

    v4 |= (SBYTE4(v10) & 0x7F) << 28;
    if ((SBYTE4(v10) & 0x80000000) == 0)
    {
      v5 = *(a1 + 52) + 5;
      goto LABEL_15;
    }

    v4 |= (SBYTE5(v10) & 0x7F) << 35;
    if ((SBYTE5(v10) & 0x80000000) == 0)
    {
      v5 = *(a1 + 52) + 6;
      goto LABEL_15;
    }

    v4 |= (SBYTE6(v10) & 0x7F) << 42;
    if ((SBYTE6(v10) & 0x80000000) == 0)
    {
      v5 = *(a1 + 52) + 7;
      goto LABEL_15;
    }

    v7 = SHIBYTE(v10);
    v4 |= (SHIBYTE(v10) & 0x7F) << 49;
    *(a1 + 52) += 8;
    if ((v7 & 0x80000000) == 0)
    {
      return v4;
    }

    [*(a1 + 56) getBytes:&v10 range:{*(a1 + 52) + *(a1 + 48), 8}];
    v4 |= (v10 & 0x7F) << 56;
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_2;
    }

    if (a2)
    {
      if (BYTE1(v10) <= 1uLL)
      {
        v4 |= BYTE1(v10) << 63;
        goto LABEL_4;
      }

      v8 = @"Invalid vLong detected (more than 64 bits)";
    }

    else
    {
      v8 = @"Invalid vLong detected (negative values disallowed)";
    }

    v9 = new_JavaIoIOException_initWithNSString_(v8);
    objc_exception_throw(v9);
  }

LABEL_2:
  v5 = *(a1 + 52) + 1;
LABEL_15:
  *(a1 + 52) = v5;
  return v4;
}

id sub_100041D34(uint64_t a1, uint64_t a2, __CFString *a3)
{
  OrgApacheLuceneStoreBufferedIndexInput_initWithNSString_withInt_(a1, a3, *(a2 + 48));
  *(a1 + 72) = 0;
  v6 = new_JavaIoFile_initWithNSString_withNSString_(*(a2 + 32), a3);
  v7 = new_JavaIoRandomAccessFile_initWithJavaIoFile_withNSString_(v6, @"r");
  JreStrongAssignAndConsume((a1 + 56), v7);
  *(a1 + 64) = [*(a1 + 56) length];
  objc_storeWeak((a1 + 80), a1);

  return objc_storeWeak((a1 + 88), a1);
}

id sub_100042124(void *a1, uint64_t a2)
{
  v2 = [a1 stringByAppendingPathComponent:a2];
  v3 = open([v2 UTF8String], 0);
  v4 = *__error();
  if (v3 < 0)
  {
LABEL_6:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v11.st_dev = 138412546;
      *&v11.st_mode = v2;
      WORD2(v11.st_ino) = 1024;
      *(&v11.st_ino + 6) = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "NSDataDirectory: Error while opening %@ for mmap, errno=%i", &v11, 0x12u);
    }

    v10 = new_JavaIoIOException_initWithNSString_([NSString stringWithFormat:@"Could not mmap %@ errno=%i", v2, v4]);
    objc_exception_throw(v10);
  }

  memset(&v11, 0, sizeof(v11));
  fstat(v3, &v11);
  st_size = v11.st_size;
  v6 = mmap(0, v11.st_size, 1, 2, v3, 0);
  if (v6 == -1)
  {
    v4 = *__error();
    close(v3);
    goto LABEL_6;
  }

  v7 = v6;
  madvise(v6, st_size, 3);
  v8 = [[NSData alloc] initWithBytesNoCopy:v7 length:st_size deallocator:&stru_1003E9930];
  close(v3);
  if (!v8)
  {
    goto LABEL_6;
  }

  return v8;
}

NSData *sub_1000422C8(void *a1, uint64_t a2)
{
  v6 = 0;
  result = +[NSData dataWithContentsOfFile:options:error:](NSData, "dataWithContentsOfFile:options:error:", [a1 stringByAppendingPathComponent:a2], 8, &v6);
  if (v6)
  {
    v3 = result == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v5 = v6;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Error while opening NSDataDirectory: %@", buf, 0xCu);
      v5 = v6;
    }

    v4 = new_JavaIoIOException_initWithNSString_([v5 description]);
    objc_exception_throw(v4);
  }

  return result;
}

id OrgApacheLuceneIndexIndexFormatTooNewException_initWithNSString_withInt_withInt_withInt_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v13 = JreStrcat("$$$I$I$IC", a2, a3, a4, a5, a6, a7, a8, @"Format version is not supported (resource ");
  JavaIoIOException_initWithNSString_(a1, v13);
  result = JreStrongAssign((a1 + 88), a2);
  *(a1 + 96) = v10;
  *(a1 + 100) = v9;
  *(a1 + 104) = v8;
  return result;
}

OrgApacheLuceneIndexIndexFormatTooNewException *new_OrgApacheLuceneIndexIndexFormatTooNewException_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_withInt_(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [OrgApacheLuceneIndexIndexFormatTooNewException alloc];
  v9 = OrgLukhnosPortmobileUtilObjects_toStringWithId_(a1);
  OrgApacheLuceneIndexIndexFormatTooNewException_initWithNSString_withInt_withInt_withInt_(v8, v9, a2, a3, a4, v10, v11, v12);
  return v8;
}

id OrgApacheLuceneSearchMinShouldMatchSumScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilCollection_withInt_withFloatArray_(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  OrgApacheLuceneSearchScorer_initWithOrgApacheLuceneSearchWeight_(a1, a2);
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if ([a3 size] < a4)
  {
    v37 = @"minShouldMatch should be <= the number of scorers";
    goto LABEL_31;
  }

  if (a4 <= 0)
  {
    v37 = @"minShouldMatch should be >= 1";
LABEL_31:
    v38 = new_JavaLangIllegalArgumentException_initWithNSString_(v37);
    objc_exception_throw(v38);
  }

  *(a1 + 16) = a4;
  JreStrongAssign((a1 + 24), a5);
  *(a1 + 40) = -1;
  v9 = new_OrgApacheLuceneSearchDisiPriorityQueue_initWithInt_([a3 size] - a4 + 1);
  JreStrongAssignAndConsume((a1 + 48), v9);
  v10 = [IOSObjectArray newArrayWithLength:(a4 - 1) type:OrgApacheLuceneSearchDisiWrapper_class_()];
  JreStrongAssignAndConsume((a1 + 56), v10);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v11 = [a3 countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v44;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v44 != v13)
        {
          objc_enumerationMutation(a3);
        }

        v15 = new_OrgApacheLuceneSearchDisiWrapper_initWithOrgApacheLuceneSearchDocIdSetIterator_(*(*(&v43 + 1) + 8 * i));
        sub_100042F2C(a1, &v15->super.isa);
      }

      v12 = [a3 countByEnumeratingWithState:&v43 objects:v52 count:16];
    }

    while (v12);
  }

  v16 = new_JavaUtilArrayList_init();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v17 = [a3 countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v40;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v40 != v19)
        {
          objc_enumerationMutation(a3);
        }

        [(JavaUtilArrayList *)v16 addWithId:new_OrgApacheLuceneSearchScorer_ChildScorer_initWithOrgApacheLuceneSearchScorer_withNSString_(*(*(&v39 + 1) + 8 * j), @"SHOULD")];
      }

      v18 = [a3 countByEnumeratingWithState:&v39 objects:v51 count:16];
    }

    while (v18);
  }

  v21 = JavaUtilCollections_unmodifiableCollectionWithJavaUtilCollection_(v16);
  JreStrongAssign((a1 + 72), v21);
  v22 = [a3 size] - a4;
  v23 = [OrgApacheLuceneSearchMinShouldMatchSumScorer__1 alloc];
  OrgApacheLuceneUtilPriorityQueue_initWithInt_(v23, v22 + 1, v24, v25, v26, v27, v28, v29);
  v30 = v23;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v31 = [a3 countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v48;
    do
    {
      for (k = 0; k != v32; k = k + 1)
      {
        if (*v48 != v33)
        {
          objc_enumerationMutation(a3);
        }

        [(OrgApacheLuceneUtilPriorityQueue *)v30 insertWithOverflowWithId:*(*(&v47 + 1) + 8 * k)];
      }

      v32 = [a3 countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v32);
  }

  result = [(OrgApacheLuceneUtilPriorityQueue *)v30 pop];
  for (m = 0; result; result = [(OrgApacheLuceneUtilPriorityQueue *)v30 pop])
  {
    m += [result cost];
  }

  *(a1 + 80) = m;
  return result;
}

void *sub_100042B08(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56);
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = *(v3 + 8);
  if (*(a1 + 64) >= v4)
  {
    if (v4 < 1)
    {
      return a2;
    }

    v5 = *(v3 + 24);
    if (v5 && a2)
    {
      if (*(v5 + 16) < a2[2])
      {
        IOSObjectArray_Set(v3, 0, a2);
        sub_1000436F8(*(a1 + 56), *(a1 + 64));
        return v5;
      }

      return a2;
    }

LABEL_11:
    JreThrowNullPointerException();
  }

  sub_10004330C(a1, a2);
  return 0;
}

id sub_100042F2C(uint64_t a1, id *a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  JreStrongAssign(a2 + 4, *(a1 + 32));
  result = JreStrongAssign((a1 + 32), a2);
  ++*(a1 + 44);
  return result;
}

id sub_100043004(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (!v3)
  {
    goto LABEL_10;
  }

  *(a2 + 24) = [v3 advanceWithInt:*(a1 + 40)];
  if (*(a2 + 24) == *(a1 + 40))
  {

    return sub_100042F2C(a1, a2);
  }

  v6 = *(a1 + 48);
  if (!v6)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  return [v6 addWithOrgApacheLuceneSearchDisiWrapper:a2];
}

_DWORD *sub_100043114(_DWORD *result)
{
  v1 = result;
  v2 = result[16];
  v3 = (v2 - 1);
  if (v2 - 1 >= 0)
  {
    do
    {
      v4 = *(v1 + 56);
      if (!v4)
      {
        JreThrowNullPointerException();
      }

      v5 = *(v4 + 8);
      if (v3 >= v5)
      {
        IOSArray_throwOutOfBoundsWithMsg(v5, v3);
      }

      result = sub_100043004(v1, *(v4 + 24 + 8 * v3));
    }

    while (v3-- > 0);
  }

  *(v1 + 64) = 0;
  return result;
}

void *sub_10004330C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56);
  if (!v3)
  {
    goto LABEL_18;
  }

  IOSObjectArray_Set(v3, *(a1 + 64), a2);
  v4 = *(a1 + 56);
  if (!v4)
  {
    goto LABEL_18;
  }

  v5 = *(a1 + 64);
  v6 = v5;
  v7 = *(v4 + 8);
  if (v5 < 0 || v7 <= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, *(a1 + 64));
  }

  v8 = *(v4 + 24 + 8 * v5);
  if (!v8)
  {
LABEL_18:
    JreThrowNullPointerException();
  }

  v9 = v8[2];
  v10 = OrgApacheLuceneSearchDisiPriorityQueue_parentNodeWithInt_(*(a1 + 64));
  if ((v10 & 0x80000000) == 0)
  {
    while (1)
    {
      v6 = v10;
      v11 = *(v4 + 8);
      if (v6 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, v6);
      }

      v12 = *(v4 + 24 + 8 * v6);
      if (!v12)
      {
        goto LABEL_18;
      }

      if (v9 >= v12[2])
      {
        break;
      }

      v13 = *(v4 + 8);
      if (v6 >= v13)
      {
        IOSArray_throwOutOfBoundsWithMsg(v13, v6);
      }

      IOSObjectArray_Set(v4, v5, v12);
      v10 = OrgApacheLuceneSearchDisiPriorityQueue_parentNodeWithInt_(v6);
      v5 = v6;
      if ((v10 & 0x80000000) != 0)
      {
        goto LABEL_16;
      }
    }

    LODWORD(v6) = v5;
LABEL_16:
    v6 = v6;
  }

  result = IOSObjectArray_Set(v4, v6, v8);
  ++*(a1 + 64);
  return result;
}

uint64_t sub_10004349C(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (!v1)
  {
    JreThrowNullPointerException();
  }

  v3 = *(v1 + 8);
  v4 = v1;
  if (v3 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v3, 0);
  }

  v5 = *(v1 + 24);
  v6 = *(a1 + 64);
  v7 = v6 - 1;
  *(a1 + 64) = v6 - 1;
  v8 = *(v4 + 8);
  if (v6 - 1 < 0 || v7 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, (v6 - 1));
  }

  IOSObjectArray_Set(v4, 0, *(v4 + 24 + 8 * v7));
  sub_1000436F8(*(a1 + 56), *(a1 + 64));
  return v5;
}

OrgApacheLuceneSearchMinShouldMatchSumScorer *new_OrgApacheLuceneSearchMinShouldMatchSumScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilCollection_withInt_withFloatArray_(void *a1, void *a2, int a3, void *a4)
{
  v8 = [OrgApacheLuceneSearchMinShouldMatchSumScorer alloc];
  OrgApacheLuceneSearchMinShouldMatchSumScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilCollection_withInt_withFloatArray_(v8, a1, a2, a3, a4);
  return v8;
}

uint64_t sub_1000436F8(uint64_t a1, int a2)
{
  if (!a1)
  {
    goto LABEL_46;
  }

  v4 = *(a1 + 8);
  if (v4 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v4, 0);
  }

  v5 = *(a1 + 24);
  result = OrgApacheLuceneSearchDisiPriorityQueue_leftNodeWithInt_(0);
  if (result >= a2)
  {
    return result;
  }

  v7 = result;
  v8 = OrgApacheLuceneSearchDisiPriorityQueue_rightNodeWithInt_(result);
  if (v8 < a2)
  {
    v9 = v8;
    v10 = *(a1 + 8);
    if ((v9 & 0x80000000) != 0 || v9 >= v10)
    {
      IOSArray_throwOutOfBoundsWithMsg(v10, v9);
    }

    v11 = *(a1 + 24 + 8 * v9);
    if (!v11)
    {
      goto LABEL_46;
    }

    v12 = *(a1 + 8);
    if ((v7 & 0x80000000) != 0 || v7 >= v12)
    {
      IOSArray_throwOutOfBoundsWithMsg(v12, v7);
    }

    v13 = *(a1 + 24 + 8 * v7);
    if (!v13)
    {
LABEL_46:
      JreThrowNullPointerException();
    }

    if (*(v11 + 16) >= *(v13 + 16))
    {
      v7 = v7;
    }

    else
    {
      v7 = v9;
    }
  }

  result = *(a1 + 8);
  if ((v7 & 0x80000000) != 0 || v7 >= result)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, v7);
  }

  v14 = *(a1 + 24 + 8 * v7);
  if (!v14 || !v5)
  {
    goto LABEL_46;
  }

  if (*(v14 + 16) < v5[2])
  {
    v15 = 0;
    v16 = v7;
    do
    {
      v17 = v16;
      v18 = *(a1 + 8);
      if (v16 < 0 || v16 >= v18)
      {
        IOSArray_throwOutOfBoundsWithMsg(v18, v16);
      }

      IOSObjectArray_Set(a1, v15, *(a1 + 24 + 8 * v16));
      v19 = OrgApacheLuceneSearchDisiPriorityQueue_leftNodeWithInt_(v16);
      v20 = OrgApacheLuceneSearchDisiPriorityQueue_rightNodeWithInt_(v19);
      if (v20 < a2)
      {
        v21 = v20;
        v22 = *(a1 + 8);
        if ((v21 & 0x80000000) != 0 || v21 >= v22)
        {
          IOSArray_throwOutOfBoundsWithMsg(v22, v21);
        }

        v23 = *(a1 + 24 + 8 * v21);
        if (!v23)
        {
          goto LABEL_46;
        }

        v24 = *(a1 + 8);
        if ((v19 & 0x80000000) != 0 || v19 >= v24)
        {
          IOSArray_throwOutOfBoundsWithMsg(v24, v19);
        }

        v25 = *(a1 + 24 + 8 * v19);
        if (!v25)
        {
          goto LABEL_46;
        }

        if (*(v23 + 16) >= *(v25 + 16))
        {
          v19 = v19;
        }

        else
        {
          v19 = v21;
        }
      }

      if (v19 >= a2)
      {
        break;
      }

      v26 = *(a1 + 8);
      if ((v19 & 0x80000000) != 0 || v19 >= v26)
      {
        IOSArray_throwOutOfBoundsWithMsg(v26, v19);
      }

      v27 = *(a1 + 24 + 8 * v19);
      if (!v27)
      {
        goto LABEL_46;
      }

      v15 = v16;
      v16 = v19;
    }

    while (*(v27 + 16) < v5[2]);

    return IOSObjectArray_Set(a1, v17, v5);
  }

  return result;
}

void *OrgApacheLuceneIndexSortedDocValuesTermsEnum_initWithOrgApacheLuceneIndexSortedDocValues_(uint64_t a1, void *a2)
{
  OrgApacheLuceneIndexTermsEnum_init(a1);
  *(a1 + 24) = -1;
  JreStrongAssign((a1 + 16), a2);
  v4 = new_OrgApacheLuceneUtilBytesRefBuilder_init();

  return JreStrongAssignAndConsume((a1 + 32), v4);
}

OrgApacheLuceneIndexSortedDocValuesTermsEnum *new_OrgApacheLuceneIndexSortedDocValuesTermsEnum_initWithOrgApacheLuceneIndexSortedDocValues_(void *a1)
{
  v2 = [OrgApacheLuceneIndexSortedDocValuesTermsEnum alloc];
  OrgApacheLuceneIndexSortedDocValuesTermsEnum_initWithOrgApacheLuceneIndexSortedDocValues_(v2, a1);
  return v2;
}

void *OrgApacheLuceneUtilGrowableByteArrayDataOutput_initWithInt_(uint64_t a1, unsigned int a2)
{
  OrgApacheLuceneStoreDataOutput_init();
  v10 = [IOSByteArray newArrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(a2, 1, v4, v5, v6, v7, v8, v9)];
  result = JreStrongAssignAndConsume((a1 + 16), v10);
  *(a1 + 24) = 0;
  return result;
}

OrgApacheLuceneUtilGrowableByteArrayDataOutput *new_OrgApacheLuceneUtilGrowableByteArrayDataOutput_initWithInt_(unsigned int a1)
{
  v2 = [OrgApacheLuceneUtilGrowableByteArrayDataOutput alloc];
  OrgApacheLuceneUtilGrowableByteArrayDataOutput_initWithInt_(v2, a1);
  return v2;
}

id OrgApacheLuceneIndexSingletonSortedNumericDocValues_initWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_(uint64_t a1, void *a2, void *a3)
{
  OrgApacheLuceneIndexSortedNumericDocValues_init();
  JreStrongAssign((a1 + 8), a2);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = 0;
  }

  else
  {
    v6 = a3;
  }

  return JreStrongAssign((a1 + 16), v6);
}

OrgApacheLuceneIndexSingletonSortedNumericDocValues *new_OrgApacheLuceneIndexSingletonSortedNumericDocValues_initWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_(void *a1, void *a2)
{
  v4 = [OrgApacheLuceneIndexSingletonSortedNumericDocValues alloc];
  OrgApacheLuceneIndexSingletonSortedNumericDocValues_initWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_(v4, a1, a2);
  return v4;
}

id OrgApacheLuceneSearchFilterScorer_initWithOrgApacheLuceneSearchScorer_(uint64_t a1, void **a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  OrgApacheLuceneSearchScorer_initWithOrgApacheLuceneSearchWeight_(a1, a2[1]);

  return JreStrongAssign((a1 + 16), a2);
}

id OrgApacheLuceneSearchFilterScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchWeight_(uint64_t a1, void *a2, void *a3)
{
  OrgApacheLuceneSearchScorer_initWithOrgApacheLuceneSearchWeight_(a1, a3);
  if (!a2)
  {
    v6 = new_JavaLangNullPointerException_initWithNSString_(@"wrapped Scorer must not be null");
    objc_exception_throw(v6);
  }

  return JreStrongAssign((a1 + 16), a2);
}

id ComAppleContextkitCategoriesCatIdTitleMap_initWithOrgApacheLuceneStoreIndexInput_(uint64_t a1, void *a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  if ([a2 readInt] != 1903636735)
  {
    v5 = new_JavaIoIOException_initWithNSString_(@"Unsupported file format for categories-titles.dat");
    objc_exception_throw(v5);
  }

  JreStrongAssign((a1 + 16), a2);
  result = [a2 readInt];
  *(a1 + 8) = result + 1;
  return result;
}

ComAppleContextkitCategoriesCatIdTitleMap *new_ComAppleContextkitCategoriesCatIdTitleMap_initWithOrgApacheLuceneStoreIndexInput_(void *a1)
{
  v2 = [ComAppleContextkitCategoriesCatIdTitleMap alloc];
  ComAppleContextkitCategoriesCatIdTitleMap_initWithOrgApacheLuceneStoreIndexInput_(v2, a1);
  return v2;
}

OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_parseWithNSString_(void *a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilVersion__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100010B48();
  }

  v2 = new_OrgApacheLuceneUtilStrictStringTokenizer_initWithNSString_withChar_(a1, 0x2Eu);
  if (![(OrgApacheLuceneUtilStrictStringTokenizer *)v2 hasMoreTokens])
  {
    goto LABEL_9;
  }

  v10 = [(OrgApacheLuceneUtilStrictStringTokenizer *)v2 nextToken];
  v18 = JavaLangInteger_parseIntWithNSString_(v10, v11, v12, v13, v14, v15, v16, v17);
  if (![(OrgApacheLuceneUtilStrictStringTokenizer *)v2 hasMoreTokens])
  {
    goto LABEL_9;
  }

  v19 = [(OrgApacheLuceneUtilStrictStringTokenizer *)v2 nextToken];
  v27 = JavaLangInteger_parseIntWithNSString_(v19, v20, v21, v22, v23, v24, v25, v26);
  if (![(OrgApacheLuceneUtilStrictStringTokenizer *)v2 hasMoreTokens])
  {
    v36 = 0;
    goto LABEL_12;
  }

  v28 = [(OrgApacheLuceneUtilStrictStringTokenizer *)v2 nextToken];
  v36 = JavaLangInteger_parseIntWithNSString_(v28, v29, v30, v31, v32, v33, v34, v35);
  if (![(OrgApacheLuceneUtilStrictStringTokenizer *)v2 hasMoreTokens])
  {
LABEL_12:
    v52 = 0;
    goto LABEL_13;
  }

  v37 = [(OrgApacheLuceneUtilStrictStringTokenizer *)v2 nextToken];
  v52 = JavaLangInteger_parseIntWithNSString_(v37, v38, v39, v40, v41, v42, v43, v44);
  if (!v52)
  {
    v53 = JreStrcat("$I$$C", v45, v46, v47, v48, v49, v50, v51, @"Invalid value ");
LABEL_10:
    v54 = new_JavaTextParseException_initWithNSString_withInt_(v53, 0);
    objc_exception_throw(v54);
  }

  if ([(OrgApacheLuceneUtilStrictStringTokenizer *)v2 hasMoreTokens])
  {
LABEL_9:
    v53 = JreStrcat("$$C", v3, v4, v5, v6, v7, v8, v9, @"Version is not in form major.minor.bugfix(.prerelease) (got: ");
    goto LABEL_10;
  }

LABEL_13:
  v55 = [OrgApacheLuceneUtilVersion alloc];
  sub_100045020(v55, v18, v27, v36, v52, v56, v57, v58);
  return v55;
}

OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_parseLenientlyWithNSString_(void *a1)
{
  if (atomic_load_explicit(OrgApacheLuceneUtilVersion__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_19;
    }
  }

  else
  {
    sub_100010B48();
    if (!a1)
    {
      goto LABEL_19;
    }
  }

  if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000458CC();
  }

  v2 = [a1 uppercaseStringWithJRELocale:JavaUtilLocale_ROOT_];
  v3 = [[NSArray indexOfObject:@"LATEST" arrayWithObjects:@"LUCENE_4_0_0", @"LUCENE_4_0_0_ALPHA", @"LUCENE_4_0_0_BETA", 0], "indexOfObject:", v2];
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      return OrgApacheLuceneUtilVersion_LUCENE_4_0_0_ALPHA_;
    }

    if (v3 == 4)
    {
      return OrgApacheLuceneUtilVersion_LUCENE_4_0_0_BETA_;
    }
  }

  else
  {
    if (v3 < 2)
    {
      return OrgApacheLuceneUtilVersion_LATEST_;
    }

    if (v3 == 2)
    {
      return OrgApacheLuceneUtilVersion_LUCENE_4_0_0_;
    }
  }

  if (!v2 || (v5 = [v2 replaceFirst:@"^LUCENE_(\\d+)_(\\d+)_(\\d+)$" withReplacement:@"$1.$2.$3"]) == 0 || (v6 = objc_msgSend(v5, "replaceFirst:withReplacement:", @"^LUCENE_(\\d+)_(\\d+)$", @"$1.$2.0")) == 0)
  {
LABEL_19:
    JreThrowNullPointerException();
  }

  return OrgApacheLuceneUtilVersion_parseWithNSString_([v6 replaceFirst:@"^LUCENE_(\\d)(\\d)$" withReplacement:@"$1.$2.0"]);
}

OrgApacheLuceneUtilVersion *OrgApacheLuceneUtilVersion_fromBitsWithInt_withInt_withInt_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilVersion__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100010B48();
  }

  v6 = [OrgApacheLuceneUtilVersion alloc];
  sub_100045020(v6, a1, a2, a3, 0, v7, v8, v9);

  return v6;
}

_DWORD *sub_100045020(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  result[5] = a5;
  if (a2 >= 0x100)
  {
    v8 = @"Illegal major version: ";
LABEL_12:
    v9 = JreStrcat("$I", a2, a3, a4, a5, a6, a7, a8, v8);
    goto LABEL_13;
  }

  if (a3 >= 0x100)
  {
    v8 = @"Illegal minor version: ";
    goto LABEL_12;
  }

  if (a4 >= 0x100)
  {
    v8 = @"Illegal bugfix version: ";
    goto LABEL_12;
  }

  if (a5 >= 3)
  {
    v8 = @"Illegal prerelease version: ";
    goto LABEL_12;
  }

  if (a5 && a4 | a3)
  {
    v9 = JreStrcat("$I$I$IC", a2, a3, a4, a5, a6, a7, a8, @"Prerelease version only supported with major release (got prerelease: ");
LABEL_13:
    v10 = new_JavaLangIllegalArgumentException_initWithNSString_(v9);
    objc_exception_throw(v10);
  }

  result[6] = (a3 << 10) | (a2 << 18) | (4 * a4) | a5;
  return result;
}

uint64_t OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()
{
  if (qword_100553FB8 != -1)
  {
    sub_100045938();
  }

  return qword_100553FB0;
}

uint64_t OrgApacheLuceneIndexIndexableField_class_()
{
  if (qword_100553FC8 != -1)
  {
    sub_1000459AC();
  }

  return qword_100553FC0;
}

void *OrgApacheLuceneStoreBufferedChecksumIndexInput_initWithOrgApacheLuceneStoreIndexInput_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = JreStrcat("$@C", a2, a3, a4, a5, a6, a7, a8, @"BufferedChecksumIndexInput(");
  OrgApacheLuceneStoreChecksumIndexInput_initWithNSString_(a1, v10);
  JreStrongAssign((a1 + 24), a2);
  v11 = new_JavaUtilZipCRC32_init();
  v12 = new_OrgApacheLuceneStoreBufferedChecksum_initWithJavaUtilZipChecksum_(v11);

  return JreStrongAssignAndConsume((a1 + 32), v12);
}

OrgApacheLuceneStoreBufferedChecksumIndexInput *new_OrgApacheLuceneStoreBufferedChecksumIndexInput_initWithOrgApacheLuceneStoreIndexInput_(void *a1)
{
  v2 = [OrgApacheLuceneStoreBufferedChecksumIndexInput alloc];
  OrgApacheLuceneStoreBufferedChecksumIndexInput_initWithOrgApacheLuceneStoreIndexInput_(v2, a1, v3, v4, v5, v6, v7, v8);
  return v2;
}

id OrgApacheLuceneIndexLeafReaderContext_initWithOrgApacheLuceneIndexCompositeReaderContext_withOrgApacheLuceneIndexLeafReader_withInt_withInt_withInt_withInt_(uint64_t a1, void *a2, void *a3, int a4, int a5, int a6, int a7)
{
  OrgApacheLuceneIndexIndexReaderContext_initWithOrgApacheLuceneIndexCompositeReaderContext_withInt_withInt_(a1, a2, a4, a5);
  *(a1 + 28) = a6;
  *(a1 + 32) = a7;
  objc_storeWeak((a1 + 40), a3);
  if (*(a1 + 16) == 1)
  {
    v11 = [OrgApacheLuceneIndexLeafReaderContext_WeakSingletonList alloc];
    JavaUtilAbstractList_init(v11, v12);
    objc_storeWeak(&v11->element_, a1);
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  return JreStrongAssign((a1 + 48), v13);
}

OrgApacheLuceneIndexLeafReaderContext *new_OrgApacheLuceneIndexLeafReaderContext_initWithOrgApacheLuceneIndexCompositeReaderContext_withOrgApacheLuceneIndexLeafReader_withInt_withInt_withInt_withInt_(void *a1, void *a2, int a3, int a4, int a5, int a6)
{
  v12 = [OrgApacheLuceneIndexLeafReaderContext alloc];
  OrgApacheLuceneIndexLeafReaderContext_initWithOrgApacheLuceneIndexCompositeReaderContext_withOrgApacheLuceneIndexLeafReader_withInt_withInt_withInt_withInt_(v12, a1, a2, a3, a4, a5, a6);
  return v12;
}

OrgApacheLuceneIndexLeafReaderContext *new_OrgApacheLuceneIndexLeafReaderContext_initWithOrgApacheLuceneIndexLeafReader_(void *a1)
{
  v2 = [OrgApacheLuceneIndexLeafReaderContext alloc];
  OrgApacheLuceneIndexLeafReaderContext_initWithOrgApacheLuceneIndexCompositeReaderContext_withOrgApacheLuceneIndexLeafReader_withInt_withInt_withInt_withInt_(v2, 0, a1, 0, 0, 0, 0);
  return v2;
}

uint64_t OrgApacheLuceneIndexLeafReaderContext_class_()
{
  if (qword_100553FD8 != -1)
  {
    sub_10004627C();
  }

  return qword_100553FD0;
}

id OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_initWithOrgApacheLuceneCodecsPostingsReaderBase_withOrgApacheLuceneIndexSegmentReadState_(uint64_t a1, void *a2, uint64_t a3)
{
  OrgApacheLuceneCodecsFieldsProducer_init();
  v6 = new_JavaUtilTreeMap_init();
  JreStrongAssignAndConsume((a1 + 40), v6);
  v124 = a1;
  JreStrongAssign((a1 + 16), a2);
  if (!a3 || (v7 = *(a3 + 16)) == 0)
  {
    JreThrowNullPointerException();
  }

  JreStrongAssign((a1 + 24), *(v7 + 8));
  v8 = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(*(a1 + 24), *(a3 + 40), OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_TERMS_EXTENSION_);
  v9 = *(a3 + 8);
  if (!v9)
  {
    JreThrowNullPointerException();
  }

  v123 = a3;
  JreStrongAssign((a1 + 8), [v9 openInputWithNSString:v8 withOrgApacheLuceneStoreIOContext:*(a3 + 32)]);
  *(a1 + 32) = OrgApacheLuceneCodecsCodecUtil_checkIndexHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_withByteArray_withNSString_(*(a1 + 8), OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_TERMS_CODEC_NAME_, 0, 2, [*(a3 + 16) getId], *(a3 + 40));
  v10 = *(a1 + 32);
  if (v10 < 1)
  {
    LOBYTE(v11) = 0;
  }

  else if (v10 == 1)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    v12 = *(a1 + 8);
    if (!v12)
    {
      JreThrowNullPointerException();
    }

    v11 = [v12 readByte];
    if (v11 >= 2)
    {
      v118 = JreStrcat("$B", v13, v14, v15, v16, v17, v18, v19, @"invalid anyAutoPrefixTerms: expected 0 or 1 but got ");
      v119 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v118, *(a1 + 8));
      objc_exception_throw(v119);
    }
  }

  *(a1 + 36) = v11;
  v20 = [*(a3 + 8) openInputWithNSString:OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(*(a1 + 24) withOrgApacheLuceneStoreIOContext:{*(a3 + 40), OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_TERMS_INDEX_EXTENSION_), *(a3 + 32)}];
  OrgApacheLuceneCodecsCodecUtil_checkIndexHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_withByteArray_withNSString_(v20, OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_TERMS_INDEX_CODEC_NAME_, *(a1 + 32), *(a1 + 32), [*(a3 + 16) getId], *(a3 + 40));
  OrgApacheLuceneCodecsCodecUtil_checksumEntireFileWithOrgApacheLuceneStoreIndexInput_(v20);
  v122 = v20;
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  [a2 init__WithOrgApacheLuceneStoreIndexInput:*(a1 + 8) withOrgApacheLuceneIndexSegmentReadState:a3];
  OrgApacheLuceneCodecsCodecUtil_retrieveChecksumWithOrgApacheLuceneStoreIndexInput_(*(a1 + 8));
  sub_100046BDC(*(a1 + 8));
  sub_100046BDC(v20);
  v21 = &selRef_lastIndexOfWithId_withNSObjectArray_withInt_withInt_;
  v22 = a1;
  v23 = *(a1 + 8);
  v24 = v20;
  if (!v23)
  {
    goto LABEL_38;
  }

  v25 = [v23 readVInt];
  v33 = v25;
  if ((v25 & 0x80000000) != 0)
  {
    v116 = JreStrcat("$I", v26, v27, v28, v29, v30, v31, v32, @"invalid numFields: ");
    v117 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v116, *(a1 + 8));
    objc_exception_throw(v117);
  }

  if (v25)
  {
    while (1)
    {
      v34 = [*(v22 + *(v21 + 870)) readVInt];
      v42 = [*(v22 + *(v21 + 870)) readVLong];
      if (v42 <= 0)
      {
        v107 = JreStrcat("$I", v35, v36, v37, v38, v39, v40, v41, @"Illegal numTerms for field number: ");
        v108 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v107, v124[1]);
        objc_exception_throw(v108);
      }

      v43 = [*(v22 + *(v21 + 870)) readVInt];
      v51 = v43;
      if ((v43 & 0x80000000) != 0)
      {
        v105 = JreStrcat("$I$I", v44, v45, v46, v47, v48, v49, v50, @"invalid rootCode for field number: ");
        v106 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v105, v124[1]);
        objc_exception_throw(v106);
      }

      v52 = new_OrgApacheLuceneUtilBytesRef_initWithByteArray_([IOSByteArray arrayWithLength:v43]);
      [*(v22 + *(v21 + 870)) readBytesWithByteArray:v52->bytes_ withInt:0 withInt:v51];
      v52->length_ = v51;
      v53 = *(a3 + 24);
      if (!v53)
      {
        JreThrowNullPointerException();
      }

      v54 = v52;
      v55 = [v53 fieldInfoWithInt:v34];
      v63 = v55;
      if (!v55)
      {
        v110 = JreStrcat("$I", v56, v57, v58, v59, v60, v61, v62, @"invalid field number: ");
        v111 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v110, v22[1]);
        objc_exception_throw(v111);
      }

      v64 = [v55 getIndexOptions];
      if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
      {
        objc_opt_class();
      }

      v125 = v33;
      if (v64 == qword_100557378)
      {
        v127 = -1;
      }

      else
      {
        v127 = [*(v22 + *(v21 + 870)) readVLong];
      }

      v126 = v42;
      v65 = [*(v22 + *(v21 + 870)) readVLong];
      v66 = v54;
      v67 = [*(v22 + *(v21 + 870)) readVInt];
      v75 = [*(v22 + *(v21 + 870)) readVInt];
      if (v75 < 0)
      {
        v120 = v63[1];
        v112 = JreStrcat("$$$I", v68, v69, v70, v71, v72, v73, v74, @"invalid longsSize for field: ");
        v113 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v112, v124[1]);
        objc_exception_throw(v113);
      }

      v76 = sub_100047208(*(v22 + *(v21 + 870)));
      v77 = v21;
      v78 = v76;
      v79 = sub_100047208(*(v22 + *(v77 + 870)));
      if (v67 < 0 || (v80 = v79, v67 > [*(a3 + 16) maxDoc]))
      {
        [*(a3 + 16) maxDoc];
        v104 = JreStrcat("$I$I", v97, v98, v99, v100, v101, v102, v103, @"invalid docCount: ");
        goto LABEL_47;
      }

      if (v65 < v67)
      {
        break;
      }

      if (v127 != -1 && v127 < v65)
      {
        v104 = JreStrcat("$J$J", v81, v82, v83, v84, v85, v86, v87, @"invalid sumTotalTermFreq: ");
LABEL_47:
        v109 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v104, v124[1]);
        objc_exception_throw(v109);
      }

      if (!v24)
      {
        JreThrowNullPointerException();
      }

      v88 = [v22[5] putWithId:v63[1] withId:{new_OrgApacheLuceneCodecsBlocktreeFieldReader_initWithOrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_withOrgApacheLuceneIndexFieldInfo_withLong_withOrgApacheLuceneUtilBytesRef_withLong_withLong_withInt_withLong_withInt_withOrgApacheLuceneStoreIndexInput_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_(v22, v63, v126, v66, v127, v65, v67, objc_msgSend(v24, "readVLong"), v75, v24, v78, v80)}];
      v21 = &selRef_lastIndexOfWithId_withNSObjectArray_withInt_withInt_;
      if (v88)
      {
        v121 = v63[1];
        v114 = JreStrcat("$$", v89, v90, v91, v92, v93, v94, v95, @"duplicate field: ");
        v115 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v114, v124[1]);
        objc_exception_throw(v115);
      }

      v33 = v125 - 1;
      a3 = v123;
      v22 = v124;
      v24 = v122;
      if (v125 == 1)
      {
        return [v24 close];
      }
    }

    v104 = JreStrcat("$J$I", v81, v82, v83, v84, v85, v86, v87, @"invalid sumDocFreq: ");
    goto LABEL_47;
  }

  if (!v20)
  {
LABEL_38:
    JreThrowNullPointerException();
  }

  return [v24 close];
}

void sub_100046AE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    a20 = a14;
    a21 = a16;
    v21 = [IOSObjectArray arrayWithObjects:&a20 count:2 type:JavaIoCloseable_class_()];
    OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_(v21);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_100046BC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x100046BC8);
  }

  objc_terminate();
}

id sub_100046BDC(void *a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  [a1 seekWithLong:{objc_msgSend(a1, "length") - OrgApacheLuceneCodecsCodecUtil_footerLength() - 8}];
  v2 = [a1 readLong];

  return [a1 seekWithLong:v2];
}

OrgApacheLuceneUtilBytesRef *sub_100047208(void *a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100047314();
  }

  v2 = new_OrgApacheLuceneUtilBytesRef_init();
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v3 = v2;
  v2->length_ = [a1 readVInt];
  JreStrongAssignAndConsume(&v3->bytes_, [IOSByteArray newArrayWithLength:v3->length_]);
  [a1 readBytesWithByteArray:v3->bytes_ withInt:0 withInt:v3->length_];
  return v3;
}

OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader *new_OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_initWithOrgApacheLuceneCodecsPostingsReaderBase_withOrgApacheLuceneIndexSegmentReadState_(void *a1, uint64_t a2)
{
  v4 = [OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader alloc];
  OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_initWithOrgApacheLuceneCodecsPostingsReaderBase_withOrgApacheLuceneIndexSegmentReadState_(v4, a1, a2);
  return v4;
}

OrgApacheLuceneAnalysisReusableStringReader *new_OrgApacheLuceneAnalysisReusableStringReader_init()
{
  v0 = [OrgApacheLuceneAnalysisReusableStringReader alloc];
  JavaIoReader_init(v0);
  v0->pos_ = 0;
  v0->size_ = 0;
  JreStrongAssign(&v0->s_, 0);
  return v0;
}

OrgApacheLuceneSearchExplanation *sub_1000479FC(uint64_t a1)
{
  v2 = new_JavaUtilArrayList_init();
  if (!a1)
  {
    goto LABEL_10;
  }

  v3 = v2;
  v4 = *(a1 + 32);
  v5 = [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_()];
  v6 = OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_(@"boost", v5, v4);
  if (*(a1 + 32) != 1.0)
  {
    [(JavaUtilArrayList *)v3 addWithId:v6];
  }

  [(JavaUtilArrayList *)v3 addWithId:*(a1 + 16)];
  v7 = *(a1 + 24);
  v8 = [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_()];
  v9 = OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_(@"queryNorm", v8, v7);
  [(JavaUtilArrayList *)v3 addWithId:v9];
  if (!v6 || (-[OrgApacheLuceneSearchExplanation getValue](v6, "getValue"), (v11 = *(a1 + 16)) == 0) || (v12 = v10, [v11 getValue], !v9))
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  v14 = v12 * v13;
  [(OrgApacheLuceneSearchExplanation *)v9 getValue];
  v16 = v14 * v15;

  return OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withJavaUtilCollection_(@"queryWeight, product of:", v3, v16);
}

OrgApacheLuceneSearchExplanation *sub_100047B68(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (!a3)
  {
    goto LABEL_10;
  }

  [a3 getValue];
  [a1 tfWithFloat:?];
  v11 = v10;
  [a3 getValue];
  v19 = JreStrcat("$F$", v12, v13, v14, v15, v16, v17, v18, @"tf(freq=");
  v54 = a3;
  v20 = [IOSObjectArray arrayWithObjects:&v54 count:1 type:OrgApacheLuceneSearchExplanation_class_()];
  v28 = OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_(v19, v20, v11);
  if (a5)
  {
    [a1 decodeNormValueWithLong:{objc_msgSend(a5, "getWithInt:", a2)}];
    v30 = v29;
  }

  else
  {
    v30 = 1.0;
  }

  v31 = JreStrcat("$IC", v21, v22, v23, v24, v25, v26, v27, @"fieldNorm(doc=");
  v32 = [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_()];
  v33 = OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_(v31, v32, v30);
  if (!v28 || (v34 = v33, -[OrgApacheLuceneSearchExplanation getValue](v28, "getValue"), !a4) || (v36 = *(a4 + 16)) == 0 || (v37 = v35, [v36 getValue], !v34))
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  v39 = v37 * v38;
  [(OrgApacheLuceneSearchExplanation *)v34 getValue];
  v41 = v39 * v40;
  v49 = JreStrcat("$I$", v42, v43, v44, v45, v46, v47, v48, @"fieldWeight in ");
  v50 = *(a4 + 16);
  v53[0] = v28;
  v53[1] = v50;
  v53[2] = v34;
  v51 = [IOSObjectArray arrayWithObjects:v53 count:3 type:OrgApacheLuceneSearchExplanation_class_()];
  return OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_(v49, v51, v41);
}

OrgApacheLuceneSearchExplanation *sub_100047DA4(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v10 = sub_1000479FC(a4);
  v11 = sub_100047B68(a1, a2, a3, a4, a5);
  if (!v10)
  {
    goto LABEL_7;
  }

  v12 = v11;
  [(OrgApacheLuceneSearchExplanation *)v10 getValue];
  if (v13 != 1.0)
  {
    [(OrgApacheLuceneSearchExplanation *)v10 getValue];
    if (v12)
    {
      v15 = v14;
      [(OrgApacheLuceneSearchExplanation *)v12 getValue];
      if (a3)
      {
        v17 = v15 * v16;
        [a3 getValue];
        v25 = JreStrcat("$I$F$", v18, v19, v20, v21, v22, v23, v24, @"score(doc=");
        v28[0] = v10;
        v28[1] = v12;
        v26 = [IOSObjectArray arrayWithObjects:v28 count:2 type:OrgApacheLuceneSearchExplanation_class_()];
        return OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_(v25, v26, v17);
      }
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  return v12;
}

id sub_100047F38(uint64_t a1, void *a2, _DWORD *a3, void *a4)
{
  JreStrongAssign((a1 + 8), a2);
  OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_init(a1, v7);
  JreStrongAssign((a1 + 16), a3);
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  *(a1 + 24) = a3[9];

  return JreStrongAssign((a1 + 32), a4);
}

float sub_100048154(uint64_t a1, void *a2, void *a3, float a4)
{
  OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight_init(a1, a2);
  JreStrongAssign((a1 + 8), a2);
  JreStrongAssign((a1 + 16), a3);
  *(a1 + 32) = a4;
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  [a3 getValue];
  result = v8 * a4;
  *(a1 + 28) = result;
  return result;
}

id OrgApacheLuceneAnalysisNumericTokenStream_init(uint64_t a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilAttributeFactory__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100049134();
  }

  v2 = OrgApacheLuceneUtilAttributeFactory_DEFAULT_ATTRIBUTE_FACTORY_;

  return OrgApacheLuceneAnalysisNumericTokenStream_initWithOrgApacheLuceneUtilAttributeFactory_withInt_(a1, v2, 16);
}

id OrgApacheLuceneAnalysisNumericTokenStream_initWithInt_(uint64_t a1, int a2)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilAttributeFactory__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100049134();
  }

  v4 = OrgApacheLuceneUtilAttributeFactory_DEFAULT_ATTRIBUTE_FACTORY_;

  return OrgApacheLuceneAnalysisNumericTokenStream_initWithOrgApacheLuceneUtilAttributeFactory_withInt_(a1, v4, a2);
}

id OrgApacheLuceneAnalysisNumericTokenStream_initWithOrgApacheLuceneUtilAttributeFactory_withInt_(uint64_t a1, void *a2, int a3)
{
  v6 = [OrgApacheLuceneAnalysisNumericTokenStream_NumericAttributeFactory alloc];
  OrgApacheLuceneUtilAttributeFactory_init();
  JreStrongAssign(&v6->delegate_, a2);
  OrgApacheLuceneAnalysisTokenStream_initWithOrgApacheLuceneUtilAttributeFactory_(a1, v6);
  if (qword_100553FE8 != -1)
  {
    sub_100049140();
  }

  JreStrongAssign((a1 + 40), [a1 addAttributeWithIOSClass:qword_100553FE0]);
  v7 = [a1 addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesTypeAttribute_class_()];
  JreStrongAssign((a1 + 48), v7);
  v8 = [a1 addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_()];
  JreStrongAssign((a1 + 56), v8);
  *(a1 + 64) = 0;
  if (a3 <= 0)
  {
    v10 = new_JavaLangIllegalArgumentException_initWithNSString_(@"precisionStep must be >=1");
    objc_exception_throw(v10);
  }

  *(a1 + 68) = a3;
  v9 = *(a1 + 40);
  if (!v9)
  {
    JreThrowNullPointerException();
  }

  return [v9 setShiftWithInt:-a3];
}

OrgApacheLuceneAnalysisNumericTokenStream *new_OrgApacheLuceneAnalysisNumericTokenStream_initWithInt_(int a1)
{
  v2 = [OrgApacheLuceneAnalysisNumericTokenStream alloc];
  OrgApacheLuceneAnalysisNumericTokenStream_initWithInt_(v2, a1);
  return v2;
}

void *OrgApacheLuceneAnalysisNumericTokenStream_NumericTermAttributeImpl_init(uint64_t a1)
{
  OrgApacheLuceneUtilAttributeImpl_init();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  v2 = new_OrgApacheLuceneUtilBytesRefBuilder_init();

  return JreStrongAssignAndConsume((a1 + 32), v2);
}

id ComAppleProactiveLuceneScoreInterceptWeight_initWithOrgApacheLuceneSearchWeight_withComAppleProactiveLuceneScoreInterceptTarget_(uint64_t a1, void *a2, void *a3)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  OrgApacheLuceneSearchWeight_initWithOrgApacheLuceneSearchQuery_(a1, [a2 getQuery]);
  JreStrongAssign((a1 + 16), a2);

  return JreStrongAssign((a1 + 24), a3);
}

ComAppleProactiveLuceneScoreInterceptWeight *new_ComAppleProactiveLuceneScoreInterceptWeight_initWithOrgApacheLuceneSearchWeight_withComAppleProactiveLuceneScoreInterceptTarget_(void *a1, void *a2)
{
  v4 = [ComAppleProactiveLuceneScoreInterceptWeight alloc];
  ComAppleProactiveLuceneScoreInterceptWeight_initWithOrgApacheLuceneSearchWeight_withComAppleProactiveLuceneScoreInterceptTarget_(v4, a1, a2);
  return v4;
}

id sub_1000494CC(id *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  JreStrongAssign(a1 + 3, a2);
  JreStrongAssign(a1 + 4, a3);
  JreStrongAssign(a1 + 5, a4);

  return OrgApacheLuceneSearchFilterScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchWeight_(a1, a5, a6);
}

id sub_100049900(void *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v5 = a2;
    v6 = [a2 size];
    if (v6 == -1)
    {
      v7 = [v5 iterator];
      if (!v7)
      {
LABEL_33:
        JreThrowNullPointerException();
      }

      v8 = v7;
      v6 = 0;
      if ([v7 hasNext])
      {
        do
        {
          [v8 next];
          v6 = (v6 + 1);
        }

        while (([v8 hasNext] & 1) != 0);
      }
    }

    [a1 startDocumentWithInt:v6];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = [v5 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v31)
    {
      v9 = 0;
      v29 = a3;
      v30 = *v33;
      v28 = v5;
      do
      {
        for (i = 0; i != v31; i = i + 1)
        {
          if (*v33 != v30)
          {
            objc_enumerationMutation(v5);
          }

          if (!a3)
          {
            goto LABEL_33;
          }

          v11 = *(a3 + 16);
          if (!v11)
          {
            goto LABEL_33;
          }

          v12 = *(*(&v32 + 1) + 8 * i);
          v13 = [v11 fieldInfoWithNSString:v12];
          v14 = [v5 termsWithNSString:v12];
          if (v14)
          {
            v15 = v14;
            v16 = [v14 hasPositions];
            v17 = [v15 hasOffsets];
            v18 = [v15 hasPayloads];
            v19 = [v15 size];
            if (v19 == -1)
            {
              v20 = [v15 iterator];
              if (!v20)
              {
                goto LABEL_33;
              }

              v21 = v20;
              LODWORD(v19) = -1;
              do
              {
                v19 = (v19 + 1);
              }

              while ([v21 next]);
            }

            [a1 startFieldWithOrgApacheLuceneIndexFieldInfo:v13 withInt:v19 withBoolean:v16 withBoolean:v17 withBoolean:{v18, v28, v29}];
            v22 = [v15 iterator];
            if (!v22)
            {
              goto LABEL_33;
            }

            v23 = v22;
            v24 = v16 | v17;
            while ([v23 next])
            {
              v25 = [v23 totalTermFreq];
              [a1 startTermWithOrgApacheLuceneUtilBytesRef:objc_msgSend(v23 withInt:{"term"), v25}];
              if (v24)
              {
                v26 = [v23 postingsWithOrgApacheLuceneIndexPostingsEnum:v9 withInt:120];
                if (!v26)
                {
                  goto LABEL_33;
                }

                v9 = v26;
                [v26 nextDoc];
                if (v25 >= 1)
                {
                  do
                  {
                    [a1 addPositionWithInt:objc_msgSend(v9 withInt:"nextPosition") withInt:objc_msgSend(v9 withOrgApacheLuceneUtilBytesRef:{"startOffset"), objc_msgSend(v9, "endOffset"), objc_msgSend(v9, "getPayload")}];
                    LODWORD(v25) = v25 - 1;
                  }

                  while (v25);
                }
              }

              [a1 finishTerm];
            }

            [a1 finishField];
            v5 = v28;
            a3 = v29;
          }
        }

        v31 = [v5 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v31);
    }

    return [a1 finishDocument];
  }

  else
  {
    [a1 startDocumentWithInt:0];

    return [a1 finishDocument];
  }
}

OrgLukhnosPortmobileFileAttributeFileTime *new_OrgLukhnosPortmobileFileAttributeFileTime_initWithLong_(int64_t a1)
{
  result = [OrgLukhnosPortmobileFileAttributeFileTime alloc];
  result->time_ = a1;
  return result;
}

unint64_t OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_initWithOrgApacheLuceneIndexSegmentReadState_withNSString_withNSString_withNSString_withNSString_(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  OrgApacheLuceneCodecsNormsProducer_init();
  v12 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume((a1 + 8), v12);
  if (!a2)
  {
    goto LABEL_9;
  }

  v13 = *(a2 + 16);
  if (!v13)
  {
    goto LABEL_9;
  }

  *(a1 + 24) = [v13 maxDoc];
  v14 = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(*(*(a2 + 16) + 8), *(a2 + 40), a6);
  v15 = *(a2 + 8);
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = [v15 openChecksumInputWithNSString:v14 withOrgApacheLuceneStoreIOContext:*(a2 + 32)];
  v17 = OrgApacheLuceneCodecsCodecUtil_checkIndexHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_withByteArray_withNSString_(v16, a5, 0, 0, [*(a2 + 16) getId], *(a2 + 40));
  sub_10004A20C(a1, v16, *(a2 + 24));
  OrgApacheLuceneCodecsCodecUtil_checkFooterWithOrgApacheLuceneStoreChecksumIndexInput_withJavaLangThrowable_(v16, 0);
  if (v16)
  {
    [v16 close];
  }

  v18 = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(*(*(a2 + 16) + 8), *(a2 + 40), a4);
  v19 = *(a2 + 8);
  if (!v19)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  JreStrongAssign((a1 + 16), [v19 openInputWithNSString:v18 withOrgApacheLuceneStoreIOContext:*(a2 + 32)]);
  if (v17 != OrgApacheLuceneCodecsCodecUtil_checkIndexHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_withByteArray_withNSString_(*(a1 + 16), a3, 0, 0, [*(a2 + 16) getId], *(a2 + 40)))
  {
    v28 = JreStrcat("$I$I", v20, v21, v22, v23, v24, v25, v26, @"Format versions mismatch: meta=");
    v29 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v28, *(a1 + 16));
    objc_exception_throw(v29);
  }

  return OrgApacheLuceneCodecsCodecUtil_retrieveChecksumWithOrgApacheLuceneStoreIndexInput_(*(a1 + 16));
}

void sub_10004A144()
{
  objc_end_catch();
  objc_end_catch();
  JUMPOUT(0x10004A1F4);
}

void sub_10004A15C(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    if (a2 == 2)
    {
      objc_end_catch();
    }

    JUMPOUT(0x100049F40);
  }

  _Unwind_Resume(exc_buf);
}

void sub_10004A198(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    a15 = *(v15 + *(v16 + 3644));
    v17 = [IOSObjectArray arrayWithObjects:&a15 count:1 type:JavaIoCloseable_class_()];
    OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_(v17);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exc_buf);
}

void sub_10004A1EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x10004A1F4);
  }

  objc_terminate();
}

id sub_10004A20C(uint64_t a1, void *a2, void *a3)
{
  if (!a2)
  {
    goto LABEL_12;
  }

  result = [a2 readVInt];
  if (result != -1)
  {
    if (a3)
    {
      v7 = result;
      while (1)
      {
        v8 = [a3 fieldInfoWithInt:v7];
        if (!v8)
        {
          break;
        }

        v16 = v8;
        if (([v8 hasNorms] & 1) == 0)
        {
          v36 = *(v16 + 1);
          v34 = JreStrcat("$$", v17, v18, v19, v20, v21, v22, v23, @"Invalid field: ");
          goto LABEL_15;
        }

        v24 = [OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_NormsEntry alloc];
        v25 = [a2 readByte];
        v24->bytesPerValue_ = v25;
        if (v25 > 8 || ((1 << v25) & 0x117) == 0)
        {
          v37 = *(v16 + 1);
          v34 = JreStrcat("$B$$", v26, v27, v28, v29, v30, v31, v32, @"Invalid bytesPerValue: ");
LABEL_15:
          v35 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v34, a2);
          objc_exception_throw(v35);
        }

        v24->offset_ = [a2 readLong];
        v33 = *(a1 + 8);
        if (!v33)
        {
          goto LABEL_12;
        }

        [v33 putWithId:JavaLangInteger_valueOfWithInt_(*(v16 + 4)) withId:v24];
        result = [a2 readVInt];
        v7 = result;
        if (result == -1)
        {
          return result;
        }
      }

      v34 = JreStrcat("$I", v9, v10, v11, v12, v13, v14, v15, @"Invalid field number: ");
      goto LABEL_15;
    }

LABEL_12:
    JreThrowNullPointerException();
  }

  return result;
}

OrgApacheLuceneCodecsLucene53Lucene53NormsProducer *new_OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_initWithOrgApacheLuceneIndexSegmentReadState_withNSString_withNSString_withNSString_withNSString_(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v10 = [OrgApacheLuceneCodecsLucene53Lucene53NormsProducer alloc];
  OrgApacheLuceneCodecsLucene53Lucene53NormsProducer_initWithOrgApacheLuceneIndexSegmentReadState_withNSString_withNSString_withNSString_withNSString_(v10, a1, a2, a3, a4, a5);
  return v10;
}

uint64_t OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(uint64_t result)
{
  if (!result)
  {
    v1 = new_JavaLangNullPointerException_init();
    objc_exception_throw(v1);
  }

  return result;
}

uint64_t OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_withNSString_(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v2 = new_JavaLangNullPointerException_initWithNSString_(a2);
    objc_exception_throw(v2);
  }

  return result;
}

const __CFString *OrgLukhnosPortmobileUtilObjects_toStringWithId_(void *a1)
{
  if (a1)
  {
    return [a1 description];
  }

  else
  {
    return @"null";
  }
}

void *OrgApacheLuceneUtilPackedAbstractPagedMutable_initWithInt_withLong_withInt_(uint64_t a1, int a2, uint64_t a3, signed int a4)
{
  OrgApacheLuceneUtilLongValues_init();
  *(a1 + 32) = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = OrgApacheLuceneUtilPackedPackedInts_checkBlockSizeWithInt_withInt_withInt_(a4, 64, 0x40000000, v8, v9, v10, v11, v12);
  *(a1 + 20) = a4 - 1;
  v13 = OrgApacheLuceneUtilPackedPackedInts_numBlocksWithLong_withInt_(a3, a4);
  v14 = [IOSObjectArray newArrayWithLength:v13 type:OrgApacheLuceneUtilPackedPackedInts_Mutable_class_()];

  return JreStrongAssignAndConsume((a1 + 24), v14);
}

void *sub_10004B1EC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = [a1 newUnfilledCopyWithLong:a2];
  if (!v4 || (v5 = v4, (v6 = v4[3]) == 0))
  {
LABEL_28:
    JreThrowNullPointerException();
  }

  v7 = JavaLangMath_minWithInt_withInt_(*(v6 + 8), *(*(a1 + 24) + 8));
  v29 = [IOSLongArray arrayWithLength:1024];
  LODWORD(v8) = *(v5[3] + 8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = v7;
    do
    {
      v11 = *(a1 + 20);
      v12 = (v8 - 1);
      v13 = v11 & v2;
      if ((v11 & v2) == 0)
      {
        v13 = v11 + 1;
      }

      if (v9 == v12)
      {
        v14 = v13;
      }

      else
      {
        v14 = (v11 + 1);
      }

      if (v9 >= v10)
      {
        v18 = *(a1 + 32);
      }

      else
      {
        v15 = *(a1 + 24);
        v16 = *(v15 + 8);
        if (v9 >= v16)
        {
          IOSArray_throwOutOfBoundsWithMsg(v16, v9);
        }

        v17 = *(v15 + 24 + 8 * v9);
        if (!v17)
        {
          goto LABEL_28;
        }

        v18 = [v17 getBitsPerValue];
      }

      IOSObjectArray_Set(v5[3], v9, [a1 newMutableWithInt:v14 withInt:v18]);
      if (v9 < v10)
      {
        v19 = *(a1 + 24);
        v20 = *(v19 + 8);
        if (v9 >= v20)
        {
          IOSArray_throwOutOfBoundsWithMsg(v20, v9);
        }

        v21 = *(v19 + 24 + 8 * v9);
        if (!v21)
        {
          goto LABEL_28;
        }

        v22 = JavaLangMath_minWithInt_withInt_(v14, [v21 size]);
        v23 = *(a1 + 24);
        v24 = *(v23 + 8);
        if (v9 >= v24)
        {
          IOSArray_throwOutOfBoundsWithMsg(v24, v9);
        }

        v25 = *(v23 + 24 + 8 * v9);
        v26 = v5[3];
        v27 = *(v26 + 8);
        if (v9 >= v27)
        {
          IOSArray_throwOutOfBoundsWithMsg(v27, v9);
        }

        OrgApacheLuceneUtilPackedPackedInts_copy__WithOrgApacheLuceneUtilPackedPackedInts_Reader_withInt_withOrgApacheLuceneUtilPackedPackedInts_Mutable_withInt_withInt_withLongArray_(v25, 0, *(v26 + 24 + 8 * v9), 0, v22, v29);
      }

      ++v9;
      v8 = *(v5[3] + 8);
    }

    while (v9 < v8);
  }

  return v5;
}

void *sub_10004B45C(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) >= a2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    return a1;
  }

  else
  {
    v3 = a2 >> 3;
    if (a2 >> 3 <= 3)
    {
      v3 = 3;
    }

    v4 = v3 + a2;

    return sub_10004B1EC(a1, v4);
  }
}

uint64_t OrgLukhnosPortmobileFileStandardCopyOption_class_()
{
  if ((atomic_load_explicit(OrgLukhnosPortmobileFileStandardCopyOption__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10004B6A0();
  }

  if (qword_100553FF8 != -1)
  {
    sub_10004B6AC();
  }

  return qword_100553FF0;
}

uint64_t OrgApacheLuceneIndexIndexWriter_setMaxDocsWithInt_(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result > 2147483519)
  {
    v8 = JreStrcat("$I$I", a2, a3, a4, a5, a6, a7, a8, @"maxDocs must be <= IndexWriter.MAX_DOCS=");
    v9 = new_JavaLangIllegalArgumentException_initWithNSString_(v8);
    objc_exception_throw(v9);
  }

  dword_10054E4D0 = result;
  return result;
}

void OrgApacheLuceneIndexIndexWriter_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexIndexWriterConfig_(uint64_t a1)
{
  JreStrongAssign((a1 + 8), 0);
  JreStrongAssign((a1 + 16), 0);
  JreStrongAssign((a1 + 24), 0);
  v2 = new_JavaUtilConcurrentAtomicAtomicLong_init();
  JreStrongAssignAndConsume((a1 + 32), v2);
  v3 = new_OrgApacheLuceneIndexIndexWriter_ReaderPool_initWithOrgApacheLuceneIndexIndexWriter_();
  JreStrongAssignAndConsume((a1 + 48), v3);
  *(a1 + 56) = 0;
  v4 = new_JavaIoIOException_initWithNSString_(@"Unsupported");
  objc_exception_throw(v4);
}

OrgApacheLuceneIndexIndexWriter_ReaderPool *new_OrgApacheLuceneIndexIndexWriter_ReaderPool_initWithOrgApacheLuceneIndexIndexWriter_()
{
  v0 = [OrgApacheLuceneIndexIndexWriter_ReaderPool alloc];
  v1 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume(&v0->readerMap_, v1);
  return v0;
}

id ComAppleContextkitUtilValueMarshalling_init(id *a1)
{
  v2 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume(a1 + 1, v2);
  v3 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume(a1 + 2, v3);
  [a1 registerValueConverterWithIOSClass:JavaLangCharSequence_class_() withComAppleContextkitUtilValueMarshalling_ValueConverter:ComAppleContextkitUtilValueMarshalling_VALUES_CHARSEQUENCE_];
  [a1 registerValueConverterWithIOSClass:NSString_class_() withComAppleContextkitUtilValueMarshalling_ValueConverter:ComAppleContextkitUtilValueMarshalling_VALUES_CHARSEQUENCE_];
  v4 = JavaLangInteger_class_();
  v5 = ComAppleContextkitUtilValueMarshalling_VALUES_INTEGER_;

  return [a1 registerValueConverterWithIOSClass:v4 withComAppleContextkitUtilValueMarshalling_ValueConverter:v5];
}

id ComAppleContextkitUtilValueMarshalling_findImplementationClassWithIOSClass_withJavaUtilMap_(id a1, void *a2)
{
  if (atomic_load_explicit(ComAppleContextkitUtilValueMarshalling__initialized, memory_order_acquire))
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_9:
    JreThrowNullPointerException();
  }

  sub_10004C170();
  if (!a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  while (1)
  {
    result = [a2 getWithId:a1];
    if (result)
    {
      return result;
    }

    if (a1 == NSObject_class_())
    {
      v12 = JreStrcat("$@", v5, v6, v7, v8, v9, v10, v11, @"Could not find converter for class ");
      v13 = new_JavaIoIOException_initWithNSString_(v12);
      objc_exception_throw(v13);
    }

    if (!a1)
    {
      goto LABEL_9;
    }

    a1 = [a1 getSuperclass];
  }
}

uint64_t ComAppleContextkitUtilValueMarshalling_getDefaultInstance()
{
  if ((atomic_load_explicit(ComAppleContextkitUtilValueMarshalling__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10004C170();
  }

  return qword_100554000;
}

OrgApacheLuceneSearchExplanation *OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withJavaUtilCollection_(uint64_t a1, void *a2, float a3)
{
  v6 = [OrgApacheLuceneSearchExplanation alloc];
  sub_10004C398(v6, 1, a1, a2, a3);

  return v6;
}

OrgApacheLuceneSearchExplanation *OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_(uint64_t a1, void *a2, float a3)
{
  v5 = JavaUtilArrays_asListWithNSObjectArray_(a2);
  v6 = [OrgApacheLuceneSearchExplanation alloc];
  sub_10004C398(v6, 1, a1, v5, a3);

  return v6;
}

OrgApacheLuceneSearchExplanation *OrgApacheLuceneSearchExplanation_noMatchWithNSString_withJavaUtilCollection_(uint64_t a1, void *a2)
{
  v4 = [OrgApacheLuceneSearchExplanation alloc];
  sub_10004C398(v4, 0, a1, a2, 0.0);

  return v4;
}

OrgApacheLuceneSearchExplanation *OrgApacheLuceneSearchExplanation_noMatchWithNSString_withOrgApacheLuceneSearchExplanationArray_(uint64_t a1, void *a2)
{
  v3 = JavaUtilArrays_asListWithNSObjectArray_(a2);
  v4 = [OrgApacheLuceneSearchExplanation alloc];
  sub_10004C398(v4, 0, a1, v3, 0.0);

  return v4;
}

id sub_10004C398(uint64_t a1, char a2, uint64_t a3, void *a4, float a5)
{
  *(a1 + 8) = a2;
  *(a1 + 12) = a5;
  v7 = OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(a3);
  JreStrongAssign((a1 + 16), v7);
  v8 = new_JavaUtilArrayList_initWithJavaUtilCollection_(a4);
  v9 = JavaUtilCollections_unmodifiableListWithJavaUtilList_(v8);
  JreStrongAssign((a1 + 24), v9);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  if (!a4)
  {
    JreThrowNullPointerException();
  }

  result = [a4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (result)
  {
    v11 = result;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(a4);
        }

        OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(*(*(&v14 + 1) + 8 * v13));
        v13 = v13 + 1;
      }

      while (v11 != v13);
      result = [a4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v11 = result;
    }

    while (result);
  }

  return result;
}

NSString *sub_10004C5B0(void *a1, int a2)
{
  v4 = new_JavaLangStringBuilder_init();
  if (a2 >= 1)
  {
    v5 = a2;
    do
    {
      [(JavaLangStringBuilder *)v4 appendWithNSString:@"  "];
      --v5;
    }

    while (v5);
  }

  [a1 getValue];
  *&v7 = v6;
  [a1 getDescription];
  [(JavaLangStringBuilder *)v4 appendWithNSString:JreStrcat("F$$", v8, v9, v10, v11, v12, v13, v14, v7)];
  [(JavaLangStringBuilder *)v4 appendWithNSString:@"\n"];
  v15 = [a1 getDetails];
  if (!v15)
  {
    goto LABEL_12;
  }

  v16 = v15;
  if (v15[2] >= 1)
  {
    v17 = 0;
    while (1)
    {
      v18 = *&v16[2 * v17 + 6];
      if (!v18)
      {
        break;
      }

      [(JavaLangStringBuilder *)v4 appendWithNSString:sub_10004C5B0(v18, (a2 + 1))];
      if (++v17 >= v16[2])
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    JreThrowNullPointerException();
  }

LABEL_9:

  return [(JavaLangStringBuilder *)v4 description];
}

uint64_t OrgApacheLuceneSearchExplanation_class_()
{
  if (qword_100554010 != -1)
  {
    sub_10004C90C();
  }

  return qword_100554008;
}

OrgApacheLuceneUtilPackedBulkOperationPacked13 *new_OrgApacheLuceneUtilPackedBulkOperationPacked13_init()
{
  v0 = [OrgApacheLuceneUtilPackedBulkOperationPacked13 alloc];
  OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(v0, 13);
  return v0;
}

OrgApacheLuceneUtilPackedBulkOperationPacked11 *new_OrgApacheLuceneUtilPackedBulkOperationPacked11_init()
{
  v0 = [OrgApacheLuceneUtilPackedBulkOperationPacked11 alloc];
  OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(v0, 11);
  return v0;
}

OrgApacheLuceneSearchSimilaritiesDefaultSimilarity *new_OrgApacheLuceneSearchSimilaritiesDefaultSimilarity_init()
{
  v0 = [OrgApacheLuceneSearchSimilaritiesDefaultSimilarity alloc];
  OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity_init(v0, v1);
  v0->discountOverlaps_ = 1;
  return v0;
}

id OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchSortField_TypeEnum_(uint64_t a1, void *a2, void *a3)
{
  *(a1 + 8) = 0;
  JreStrongAssign((a1 + 16), 0);
  UTF8SortedAsUnicodeComparator = OrgApacheLuceneUtilBytesRef_getUTF8SortedAsUnicodeComparator();
  JreStrongAssign((a1 + 48), UTF8SortedAsUnicodeComparator);

  return sub_10005480C(a1, a2, a3);
}

id OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchSortField_TypeEnum_withBoolean_(uint64_t a1, void *a2, void *a3, char a4)
{
  *(a1 + 8) = 0;
  JreStrongAssign((a1 + 16), 0);
  UTF8SortedAsUnicodeComparator = OrgApacheLuceneUtilBytesRef_getUTF8SortedAsUnicodeComparator();
  JreStrongAssign((a1 + 48), UTF8SortedAsUnicodeComparator);
  result = sub_10005480C(a1, a2, a3);
  *(a1 + 8) = a4;
  return result;
}

id OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchFieldComparatorSource_(uint64_t a1, void *a2, void *a3)
{
  *(a1 + 8) = 0;
  JreStrongAssign((a1 + 16), 0);
  UTF8SortedAsUnicodeComparator = OrgApacheLuceneUtilBytesRef_getUTF8SortedAsUnicodeComparator();
  JreStrongAssign((a1 + 48), UTF8SortedAsUnicodeComparator);
  if ((atomic_load_explicit(OrgApacheLuceneSearchSortField_TypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100055468();
  }

  sub_10005480C(a1, a2, qword_1005576B8);

  return JreStrongAssign((a1 + 40), a3);
}

id OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchFieldComparatorSource_withBoolean_(uint64_t a1, void *a2, void *a3, char a4)
{
  *(a1 + 8) = 0;
  JreStrongAssign((a1 + 16), 0);
  UTF8SortedAsUnicodeComparator = OrgApacheLuceneUtilBytesRef_getUTF8SortedAsUnicodeComparator();
  JreStrongAssign((a1 + 48), UTF8SortedAsUnicodeComparator);
  if ((atomic_load_explicit(OrgApacheLuceneSearchSortField_TypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100055468();
  }

  sub_10005480C(a1, a2, qword_1005576B8);
  *(a1 + 8) = a4;

  return JreStrongAssign((a1 + 40), a3);
}

id sub_10005480C(uint64_t a1, void *a2, void *a3)
{
  result = JreStrongAssign((a1 + 32), a3);
  if (a2)
  {

    return JreStrongAssign((a1 + 24), a2);
  }

  else
  {
    if ((atomic_load_explicit(OrgApacheLuceneSearchSortField_TypeEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      result = sub_100055468();
    }

    if (OrgApacheLuceneSearchSortField_TypeEnum_values_ != a3)
    {
      if ((atomic_load_explicit(OrgApacheLuceneSearchSortField_TypeEnum__initialized, memory_order_acquire) & 1) == 0)
      {
        result = sub_100055468();
      }

      if (qword_100557688 != a3)
      {
        v7 = new_JavaLangIllegalArgumentException_initWithNSString_(@"field can only be null when type is SCORE or DOC");
        objc_exception_throw(v7);
      }
    }
  }

  return result;
}

uint64_t OrgApacheLuceneSearchSortField_class_()
{
  if ((atomic_load_explicit(OrgApacheLuceneSearchSortField__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000114A0();
  }

  if (qword_100554028 != -1)
  {
    sub_100055474();
  }

  return qword_100554020;
}

IOSObjectArray *OrgApacheLuceneSearchSortField_TypeEnum_values()
{
  if ((atomic_load_explicit(OrgApacheLuceneSearchSortField_TypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100055468();
  }

  v0 = OrgApacheLuceneSearchSortField_TypeEnum_class_();

  return [IOSObjectArray arrayWithObjects:&OrgApacheLuceneSearchSortField_TypeEnum_values_ count:11 type:v0];
}

void *OrgApacheLuceneSearchSortField_TypeEnum_valueOfWithNSString_(void *a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneSearchSortField_TypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100055468();
  }

  v2 = 0;
  while (1)
  {
    v3 = OrgApacheLuceneSearchSortField_TypeEnum_values_[v2];
    if ([a1 isEqual:{objc_msgSend(v3, "name")}])
    {
      break;
    }

    if (++v2 == 11)
    {
      objc_exception_throw([[JavaLangIllegalArgumentException alloc] initWithNSString:a1]);
    }
  }

  return v3;
}

uint64_t OrgApacheLuceneSearchSortField_TypeEnum_class_()
{
  if ((atomic_load_explicit(OrgApacheLuceneSearchSortField_TypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100055468();
  }

  if (qword_100554038 != -1)
  {
    sub_100055488();
  }

  return qword_100554030;
}

void *OrgApacheLuceneIndexMultiTermsEnum_initWithOrgApacheLuceneIndexReaderSliceArray_(id *a1, uint64_t a2)
{
  OrgApacheLuceneIndexTermsEnum_init(a1);
  v4 = new_OrgApacheLuceneUtilBytesRefBuilder_init();
  JreStrongAssignAndConsume(a1 + 9, v4);
  if (!a2)
  {
LABEL_20:
    JreThrowNullPointerException();
  }

  v5 = *(a2 + 8);
  v6 = [OrgApacheLuceneIndexMultiTermsEnum_TermMergeQueue alloc];
  sub_100056D88(v6, v5, v7, v8, v9, v10, v11, v12);
  JreStrongAssignAndConsume(a1 + 2, v6);
  v13 = *(a2 + 8);
  if (qword_100554060 != -1)
  {
    sub_100057138();
  }

  JreStrongAssignAndConsume(a1 + 5, [IOSObjectArray newArrayWithLength:v13 type:qword_100554058]);
  v14 = *(a2 + 8);
  if (qword_100554060 != -1)
  {
    sub_100057138();
  }

  JreStrongAssignAndConsume(a1 + 3, [IOSObjectArray newArrayWithLength:v14 type:qword_100554058]);
  v15 = [IOSObjectArray newArrayWithLength:*(a2 + 8) type:OrgApacheLuceneIndexMultiPostingsEnum_EnumWithSlice_class_()];
  JreStrongAssignAndConsume(a1 + 6, v15);
  v16 = *(a2 + 8);
  if (v16 >= 1)
  {
    v17 = 0;
    do
    {
      v18 = a1[3];
      v19 = *(a2 + 24 + 8 * v17);
      v20 = [OrgApacheLuceneIndexMultiTermsEnum_TermsEnumWithSlice alloc];
      JreStrongAssign(&v20->subSlice_, v19);
      v20->index_ = v17;
      IOSObjectArray_SetAndConsume(v18, v17, v20);
      v21 = a1[6];
      v22 = new_OrgApacheLuceneIndexMultiPostingsEnum_EnumWithSlice_init();
      IOSObjectArray_SetAndConsume(v21, v17, v22);
      v23 = a1[6];
      v24 = v23[2];
      if (v17 >= v24)
      {
        IOSArray_throwOutOfBoundsWithMsg(v24, v17);
      }

      v25 = *&v23[2 * v17 + 6];
      if (!v25)
      {
        goto LABEL_20;
      }

      v26 = *(a2 + 8);
      if (v17 >= v26)
      {
        IOSArray_throwOutOfBoundsWithMsg(v26, v17);
      }

      JreStrongAssign((v25 + 16), *(a2 + 24 + 8 * v17++));
    }

    while (v17 < *(a2 + 8));
    v16 = *(a2 + 8);
  }

  if (qword_100554060 != -1)
  {
    sub_100057138();
  }

  v27 = [IOSObjectArray newArrayWithLength:v16 type:qword_100554058];

  return JreStrongAssignAndConsume(a1 + 4, v27);
}

int *sub_1000562E4(int *result)
{
  v1 = result;
  if (result[20] >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(v1 + 2);
      if (!v3 || (v4 = [v3 top]) == 0 || (v5 = v4, (v6 = v4[1]) == 0))
      {
        JreThrowNullPointerException();
      }

      JreStrongAssign(v5 + 2, [v6 next]);
      v7 = *(v1 + 2);
      if (v5[2])
      {
        result = [v7 updateTop];
      }

      else
      {
        result = [v7 pop];
      }

      ++v2;
    }

    while (v2 < v1[20]);
  }

  v1[20] = 0;
  return result;
}

OrgApacheLuceneIndexMultiTermsEnum *new_OrgApacheLuceneIndexMultiTermsEnum_initWithOrgApacheLuceneIndexReaderSliceArray_(uint64_t a1)
{
  v2 = [OrgApacheLuceneIndexMultiTermsEnum alloc];
  OrgApacheLuceneIndexMultiTermsEnum_initWithOrgApacheLuceneIndexReaderSliceArray_(&v2->super.super.isa, a1);
  return v2;
}

OrgApacheLuceneIndexMultiTermsEnum_TermsEnumIndex *new_OrgApacheLuceneIndexMultiTermsEnum_TermsEnumIndex_initWithOrgApacheLuceneIndexTermsEnum_withInt_(void *a1, int a2)
{
  v4 = [OrgApacheLuceneIndexMultiTermsEnum_TermsEnumIndex alloc];
  JreStrongAssign(&v4->termsEnum_, a1);
  v4->subIndex_ = a2;
  return v4;
}

uint64_t OrgApacheLuceneIndexMultiTermsEnum_TermsEnumIndex_class_()
{
  if ((atomic_load_explicit(OrgApacheLuceneIndexMultiTermsEnum_TermsEnumIndex__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100057158();
  }

  if (qword_100554050 != -1)
  {
    sub_100057164();
  }

  return qword_100554048;
}

void *sub_100056D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  OrgApacheLuceneUtilPriorityQueue_initWithInt_(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = [IOSIntArray newArrayWithLength:v8];

  return JreStrongAssignAndConsume((a1 + 24), v10);
}

uint64_t sub_100057018(void *a1, uint64_t a2)
{
  v3 = [a1 getHeapArray];
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  v4 = v3;
  v5 = v3[2];
  if ((a2 & 0x80000000) != 0 || v5 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v5, a2);
  }

  v6 = *&v4[2 * a2 + 6];
  objc_opt_class();
  if (v6 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v6;
}

id OrgApacheLuceneDocumentStoredField_initWithNSString_withInt_(uint64_t a1, void *a2, int a3)
{
  OrgApacheLuceneDocumentField_initWithNSString_withOrgApacheLuceneDocumentFieldType_(a1, a2, OrgApacheLuceneDocumentStoredField_TYPE_);
  v5 = JavaLangInteger_valueOfWithInt_(a3);

  return JreStrongAssign((a1 + 24), v5);
}

id OrgApacheLuceneDocumentStoredField_initWithNSString_withFloat_(uint64_t a1, void *a2, float a3)
{
  OrgApacheLuceneDocumentField_initWithNSString_withOrgApacheLuceneDocumentFieldType_(a1, a2, OrgApacheLuceneDocumentStoredField_TYPE_);
  v5 = JavaLangFloat_valueOfWithFloat_(a3);

  return JreStrongAssign((a1 + 24), v5);
}

id OrgApacheLuceneDocumentStoredField_initWithNSString_withLong_(uint64_t a1, void *a2, int64_t a3)
{
  OrgApacheLuceneDocumentField_initWithNSString_withOrgApacheLuceneDocumentFieldType_(a1, a2, OrgApacheLuceneDocumentStoredField_TYPE_);
  v5 = JavaLangLong_valueOfWithLong_(a3);

  return JreStrongAssign((a1 + 24), v5);
}

id OrgApacheLuceneDocumentStoredField_initWithNSString_withDouble_(uint64_t a1, void *a2, double a3)
{
  OrgApacheLuceneDocumentField_initWithNSString_withOrgApacheLuceneDocumentFieldType_(a1, a2, OrgApacheLuceneDocumentStoredField_TYPE_);
  v5 = JavaLangDouble_valueOfWithDouble_(a3);

  return JreStrongAssign((a1 + 24), v5);
}

OrgApacheLuceneDocumentStoredField *new_OrgApacheLuceneDocumentStoredField_initWithNSString_withByteArray_(void *a1, int *a2)
{
  v4 = [OrgApacheLuceneDocumentStoredField alloc];
  OrgApacheLuceneDocumentField_initWithNSString_withByteArray_withOrgApacheLuceneDocumentFieldType_(v4, a1, a2, OrgApacheLuceneDocumentStoredField_TYPE_);
  return v4;
}

OrgApacheLuceneDocumentStoredField *new_OrgApacheLuceneDocumentStoredField_initWithNSString_withInt_(void *a1, int a2)
{
  v4 = [OrgApacheLuceneDocumentStoredField alloc];
  OrgApacheLuceneDocumentStoredField_initWithNSString_withInt_(v4, a1, a2);
  return v4;
}

OrgApacheLuceneDocumentStoredField *new_OrgApacheLuceneDocumentStoredField_initWithNSString_withFloat_(void *a1, float a2)
{
  v4 = [OrgApacheLuceneDocumentStoredField alloc];
  OrgApacheLuceneDocumentStoredField_initWithNSString_withFloat_(v4, a1, a2);
  return v4;
}

OrgApacheLuceneDocumentStoredField *new_OrgApacheLuceneDocumentStoredField_initWithNSString_withLong_(void *a1, int64_t a2)
{
  v4 = [OrgApacheLuceneDocumentStoredField alloc];
  OrgApacheLuceneDocumentStoredField_initWithNSString_withLong_(v4, a1, a2);
  return v4;
}

OrgApacheLuceneDocumentStoredField *new_OrgApacheLuceneDocumentStoredField_initWithNSString_withDouble_(void *a1, double a2)
{
  v4 = [OrgApacheLuceneDocumentStoredField alloc];
  OrgApacheLuceneDocumentStoredField_initWithNSString_withDouble_(v4, a1, a2);
  return v4;
}

uint64_t OrgApacheLuceneSearchScoreDoc_initWithInt_withFloat_(uint64_t result, int a2, float a3)
{
  *(result + 8) = a3;
  *(result + 12) = a2;
  *(result + 16) = -1;
  return result;
}

uint64_t OrgApacheLuceneSearchScoreDoc_initWithInt_withFloat_withInt_(uint64_t result, int a2, int a3, float a4)
{
  *(result + 8) = a4;
  *(result + 12) = a2;
  *(result + 16) = a3;
  return result;
}

OrgApacheLuceneSearchScoreDoc *new_OrgApacheLuceneSearchScoreDoc_initWithInt_withFloat_(int a1, float a2)
{
  result = [OrgApacheLuceneSearchScoreDoc alloc];
  result->score_ = a2;
  result->doc_ = a1;
  result->shardIndex_ = -1;
  return result;
}

uint64_t OrgApacheLuceneSearchScoreDoc_class_()
{
  if (qword_100554070 != -1)
  {
    sub_1000577E8();
  }

  return qword_100554068;
}

OrgApacheLuceneCodecsDocValuesConsumer_BitsFilteredTermsEnum *new_OrgApacheLuceneCodecsDocValuesConsumer_BitsFilteredTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_withOrgApacheLuceneUtilLongBitSet_(void *a1, void *a2)
{
  v4 = [OrgApacheLuceneCodecsDocValuesConsumer_BitsFilteredTermsEnum alloc];
  OrgApacheLuceneIndexFilteredTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_withBoolean_(v4, a1, 0);
  JreStrongAssign((&v4->super.doSeek_ + 1), a2);
  return v4;
}

uint64_t OrgApacheLuceneCodecsDocValuesConsumer_isSingleValuedWithJavaLangIterable_(void *a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  if (!a1)
  {
LABEL_14:
    JreThrowNullPointerException();
  }

  v2 = [a1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(a1);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if (!v6)
        {
          goto LABEL_14;
        }

        if ([v6 longLongValue] > 1)
        {
          return 0;
        }
      }

      v3 = [a1 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

OrgApacheLuceneCodecsDocValuesConsumer_$10 *OrgApacheLuceneCodecsDocValuesConsumer_singletonViewWithJavaLangIterable_withJavaLangIterable_withNSNumber_(void *a1, void *a2, void *a3)
{
  v6 = [OrgApacheLuceneCodecsDocValuesConsumer__10 alloc];
  JreStrongAssign(&v6->val$docToValueCount_, a1);
  JreStrongAssign(&v6->val$values_, a2);
  JreStrongAssign(&v6->val$missingValue_, a3);

  return v6;
}

void sub_10005BC08(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x10005BC10);
  }

  objc_terminate();
}

OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat *new_OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat_init()
{
  v0 = [OrgApacheLuceneCodecsLucene50Lucene50CompoundFormat alloc];
  OrgApacheLuceneCodecsCompoundFormat_init(v0, v1);
  return v0;
}

id OrgApacheLuceneSearchConstantScoreScorer_initWithOrgApacheLuceneSearchWeight_withFloat_withOrgApacheLuceneSearchDocIdSetIterator_(uint64_t a1, void *a2, void *a3, float a4)
{
  OrgApacheLuceneSearchScorer_initWithOrgApacheLuceneSearchWeight_(a1, a2);
  *(a1 + 16) = a4;
  JreStrongAssign((a1 + 24), 0);

  return JreStrongAssign((a1 + 32), a3);
}

id OrgApacheLuceneSearchConstantScoreScorer_initWithOrgApacheLuceneSearchWeight_withFloat_withOrgApacheLuceneSearchTwoPhaseIterator_(uint64_t a1, void *a2, void *a3, float a4)
{
  OrgApacheLuceneSearchScorer_initWithOrgApacheLuceneSearchWeight_(a1, a2);
  *(a1 + 16) = a4;
  JreStrongAssign((a1 + 24), a3);
  v7 = OrgApacheLuceneSearchTwoPhaseIterator_asDocIdSetIteratorWithOrgApacheLuceneSearchTwoPhaseIterator_(a3);

  return JreStrongAssign((a1 + 32), v7);
}

OrgApacheLuceneSearchConstantScoreScorer *new_OrgApacheLuceneSearchConstantScoreScorer_initWithOrgApacheLuceneSearchWeight_withFloat_withOrgApacheLuceneSearchDocIdSetIterator_(void *a1, void *a2, float a3)
{
  v6 = [OrgApacheLuceneSearchConstantScoreScorer alloc];
  OrgApacheLuceneSearchConstantScoreScorer_initWithOrgApacheLuceneSearchWeight_withFloat_withOrgApacheLuceneSearchDocIdSetIterator_(v6, a1, a2, a3);
  return v6;
}

OrgApacheLuceneSearchConstantScoreScorer *new_OrgApacheLuceneSearchConstantScoreScorer_initWithOrgApacheLuceneSearchWeight_withFloat_withOrgApacheLuceneSearchTwoPhaseIterator_(void *a1, void *a2, float a3)
{
  v6 = [OrgApacheLuceneSearchConstantScoreScorer alloc];
  OrgApacheLuceneSearchConstantScoreScorer_initWithOrgApacheLuceneSearchWeight_withFloat_withOrgApacheLuceneSearchTwoPhaseIterator_(v6, a1, a2, a3);
  return v6;
}

id OrgApacheLuceneUtilBitDocIdSet_initWithOrgApacheLuceneUtilBitSet_(uint64_t a1, void *a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v4 = [a2 approximateCardinality];
  OrgApacheLuceneSearchDocIdSet_init(a1, v5);
  result = JreStrongAssign((a1 + 8), a2);
  *(a1 + 16) = v4;
  return result;
}

OrgApacheLuceneUtilBitDocIdSet *new_OrgApacheLuceneUtilBitDocIdSet_initWithOrgApacheLuceneUtilBitSet_withLong_(void *a1, int64_t a2)
{
  v4 = [OrgApacheLuceneUtilBitDocIdSet alloc];
  OrgApacheLuceneSearchDocIdSet_init(v4, v5);
  JreStrongAssign(&v4->set_, a1);
  v4->cost_ = a2;
  return v4;
}

OrgApacheLuceneUtilBitDocIdSet *new_OrgApacheLuceneUtilBitDocIdSet_initWithOrgApacheLuceneUtilBitSet_(void *a1)
{
  v2 = [OrgApacheLuceneUtilBitDocIdSet alloc];
  OrgApacheLuceneUtilBitDocIdSet_initWithOrgApacheLuceneUtilBitSet_(v2, a1);
  return v2;
}

uint64_t OrgApacheLuceneUtilBitDocIdSet_class_()
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilBitDocIdSet__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10005C664();
  }

  if (qword_100554088 != -1)
  {
    sub_10005C670();
  }

  return qword_100554080;
}

id *OrgApacheLuceneUtilBitDocIdSet_Builder_initWithInt_withBoolean_(id *result, uint64_t a2, int a3)
{
  *(result + 2) = a2;
  *(result + 3) = a2 >> 10;
  if (a3)
  {
    v4 = result;
    v5 = new_OrgApacheLuceneUtilFixedBitSet_initWithInt_(a2);
    JreStrongAssignAndConsume(v4 + 3, v5);
    v6 = v4[3];

    return [v6 setWithInt:0 withInt:a2];
  }

  return result;
}

id OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_init(uint64_t a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_ModeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000040DC();
  }

  v2 = OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_ModeEnum_values_;

  return OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_initWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_ModeEnum_(a1, v2);
}

id OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_initWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_ModeEnum_(uint64_t a1, uint64_t a2)
{
  OrgApacheLuceneCodecsStoredFieldsFormat_init();
  v4 = OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(a2);

  return JreStrongAssign((a1 + 8), v4);
}

void *OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_ModeEnum_valueOfWithNSString_(void *a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_ModeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000040DC();
  }

  v2 = 0;
  for (i = 1; ; i = 0)
  {
    v4 = i;
    v5 = OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_ModeEnum_values_[v2];
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

OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat *new_OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_initWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_ModeEnum_(uint64_t a1)
{
  v2 = [OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat alloc];
  OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_initWithOrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_ModeEnum_(v2, a1);
  return v2;
}

IOSObjectArray *OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_ModeEnum_values()
{
  if ((atomic_load_explicit(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_ModeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000040DC();
  }

  v0 = OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_ModeEnum_class_();

  return [IOSObjectArray arrayWithObjects:OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_ModeEnum_values_ count:2 type:v0];
}

uint64_t OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_ModeEnum_class_()
{
  if ((atomic_load_explicit(OrgApacheLuceneCodecsLucene50Lucene50StoredFieldsFormat_ModeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000040DC();
  }

  if (qword_100554098 != -1)
  {
    sub_10005CD1C();
  }

  return qword_100554090;
}

void *OrgApacheLuceneCodecsMultiLevelSkipListReader_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withInt_(uint64_t a1, void *a2, int a3, int a4, int a5)
{
  *(a1 + 28) = 1;
  v10 = a3;
  v11 = [IOSObjectArray newArrayWithLength:a3 type:OrgApacheLuceneStoreIndexInput_class_()];
  JreStrongAssignAndConsume((a1 + 40), v11);
  JreStrongAssignAndConsume((a1 + 48), [IOSLongArray newArrayWithLength:v10]);
  JreStrongAssignAndConsume((a1 + 80), [IOSLongArray newArrayWithLength:v10]);
  JreStrongAssignAndConsume((a1 + 64), [IOSIntArray newArrayWithLength:v10]);
  *(a1 + 8) = a3;
  JreStrongAssignAndConsume((a1 + 56), [IOSIntArray newArrayWithLength:v10]);
  *(a1 + 100) = a5;
  IOSObjectArray_Set(*(a1 + 40), 0, a2);
  objc_opt_class();
  *(a1 + 96) = objc_opt_isKindOfClass() & 1;
  v12 = *(a1 + 56);
  v13 = *(v12 + 8);
  if (v13 < 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v13, 0);
  }

  *(v12 + 12) = a4;
  if (a3 > 1)
  {
    v14 = 0;
    v15 = a3 - 1;
    do
    {
      v16 = *(a1 + 56);
      v17 = *(v16 + 8);
      if (v14 + 1 > v17)
      {
        IOSArray_throwOutOfBoundsWithMsg(v17, v14);
      }

      v18 = *(v16 + 12 + 4 * v14);
      if (v14 + 1 >= v17)
      {
        IOSArray_throwOutOfBoundsWithMsg(v17, (v14 + 1));
      }

      *(*(a1 + 56) + 12 + 4 * v14++ + 4) = v18 * a5;
    }

    while (v15 != v14);
  }

  v19 = [IOSIntArray newArrayWithLength:v10];

  return JreStrongAssignAndConsume((a1 + 16), v19);
}

BOOL sub_10005D18C(uint64_t a1, uint64_t a2)
{
  [a1 setLastSkipDataWithInt:a2];
  v4 = *(a1 + 56);
  if (!v4)
  {
    goto LABEL_33;
  }

  v5 = *(v4 + 8);
  if ((a2 & 0x80000000) != 0 || v5 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v5, a2);
  }

  v6 = *(a1 + 64);
  if (!v6)
  {
    goto LABEL_33;
  }

  v7 = *(v4 + 12 + 4 * a2);
  v8 = *(v6 + 8);
  if ((a2 & 0x80000000) != 0 || v8 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, a2);
  }

  *(v6 + 12 + 4 * a2) += v7;
  v9 = *(a1 + 64);
  v10 = *(v9 + 8);
  if ((a2 & 0x80000000) != 0 || v10 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, a2);
  }

  v11 = *(v9 + 12 + 4 * a2);
  v12 = *(a1 + 32);
  if (v11 > v12)
  {
    v30 = *(a1 + 16);
    if (!v30)
    {
      goto LABEL_33;
    }

    v31 = *(v30 + 8);
    if ((a2 & 0x80000000) != 0 || v31 <= a2)
    {
      IOSArray_throwOutOfBoundsWithMsg(v31, a2);
    }

    *(v30 + 12 + 4 * a2) = 0x7FFFFFFF;
    if (*(a1 + 24) > a2)
    {
      *(a1 + 24) = a2;
    }
  }

  else
  {
    v13 = *(a1 + 40);
    if (!v13)
    {
      goto LABEL_33;
    }

    v14 = *(v13 + 8);
    if ((a2 & 0x80000000) != 0 || v14 <= a2)
    {
      IOSArray_throwOutOfBoundsWithMsg(v14, a2);
    }

    v15 = [a1 readSkipDataWithInt:a2 withOrgApacheLuceneStoreIndexInput:*(v13 + 24 + 8 * a2)];
    v16 = *(a1 + 16);
    if (!v16)
    {
      goto LABEL_33;
    }

    v17 = v15;
    v18 = *(v16 + 8);
    if ((a2 & 0x80000000) != 0 || v18 <= a2)
    {
      IOSArray_throwOutOfBoundsWithMsg(v18, a2);
    }

    *(v16 + 12 + 4 * a2) += v17;
    if (a2)
    {
      v19 = *(a1 + 40);
      v20 = *(v19 + 8);
      if ((a2 & 0x80000000) != 0 || v20 <= a2)
      {
        IOSArray_throwOutOfBoundsWithMsg(v20, a2);
      }

      v21 = *(v19 + 24 + 8 * a2);
      if (v21)
      {
        v22 = [v21 readVLong];
        v23 = *(a1 + 48);
        if (v23)
        {
          v24 = v22;
          v25 = *(v23 + 8);
          v26 = a2 - 1;
          if (a2 - 1 < 0 || v26 >= v25)
          {
            IOSArray_throwOutOfBoundsWithMsg(v25, v26);
          }

          v27 = *(a1 + 80);
          if (v27)
          {
            v28 = &v24[*(v23 + 16 + 8 * (a2 - 1))];
            v29 = *(v27 + 8);
            if ((a2 & 0x80000000) != 0 || v29 <= a2)
            {
              IOSArray_throwOutOfBoundsWithMsg(v29, a2);
            }

            *(v27 + 16 + 8 * a2) = v28;
            return v11 <= v12;
          }
        }
      }

LABEL_33:
      JreThrowNullPointerException();
    }
  }

  return v11 <= v12;
}

id sub_10005DCFC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = JreStrcat("$@", a2, a3, a4, a5, a6, a7, a8, @"SkipBuffer on ");
  OrgApacheLuceneStoreIndexInput_initWithNSString_(a1, v11);
  JreStrongAssignAndConsume((a1 + 24), [IOSByteArray newArrayWithLength:a3]);
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  *(a1 + 32) = [a2 getFilePointer];
  v12 = *(a1 + 24);

  return [a2 readBytesWithByteArray:v12 withInt:0 withInt:a3];
}

_DWORD *sub_10005E1E4(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  LODWORD(v4) = a4;
  v8 = [a1 getHeapWithInt:a4];
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = v8;
  while (1)
  {
    if (!a2)
    {
      goto LABEL_7;
    }

    if (*(v9 + 6) != a2[6])
    {
      return a2;
    }

    JreStrongAssign(v9 + 4, a2);
    v10 = (2 * v4) | 1u;
    v4 = (2 * v4 + 2);
    if (v4 >= a3)
    {
      break;
    }

    a2 = sub_10005E1E4(a1, v9, a3, v10);
    v9 = [a1 getHeapWithInt:v4];
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  if (v10 >= a3)
  {
    return v9;
  }

  v11 = [a1 getHeapWithInt:v10];
  if (!v11)
  {
    goto LABEL_7;
  }

  if (v11[6] != *(v9 + 6))
  {
    return v9;
  }

  v12 = [a1 getHeapWithInt:v10];
  if (!v12)
  {
LABEL_7:
    JreThrowNullPointerException();
  }

  a2 = v12;
  JreStrongAssign(v12 + 4, v9);
  return a2;
}

OrgApacheLuceneSearchDisiPriorityQueue *new_OrgApacheLuceneSearchDisiPriorityQueue_initWithInt_(uint64_t a1)
{
  v2 = [OrgApacheLuceneSearchDisiPriorityQueue alloc];
  [(OrgApacheLuceneSearchDisiPriorityQueue *)v2 initHeapWithInt:a1];
  v2->size_ = 0;
  return v2;
}

OrgApacheLuceneSearchHitQueue *new_OrgApacheLuceneSearchHitQueue_initWithInt_withBoolean_(uint64_t a1, uint64_t a2)
{
  v4 = [OrgApacheLuceneSearchHitQueue alloc];
  OrgApacheLuceneUtilPriorityQueue_initWithInt_withBoolean_(v4, a1, a2, v5, v6, v7, v8, v9);
  return v4;
}

NSString *OrgApacheLuceneIndexIndexFileNames_fileNameFromGenerationWithNSString_withNSString_withLong_(void *a1, void *a2, uint64_t a3)
{
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexFileNames__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10005F0B4();
  }

  if (a3 == -1)
  {
    return 0;
  }

  if (!a3)
  {

    return OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(a1, &stru_100484358, a2);
  }

  if (!a1)
  {
    goto LABEL_21;
  }

  v7 = [a1 length];
  if (!a2)
  {
    goto LABEL_21;
  }

  v8 = -[JavaLangStringBuilder appendWithNSString:](new_JavaLangStringBuilder_initWithInt_(v7 + [a2 length] + 6), "appendWithNSString:", a1);
  if (!v8)
  {
    goto LABEL_21;
  }

  v9 = [v8 appendWithChar:95];
  if (!v9)
  {
    goto LABEL_21;
  }

  v10 = [v9 appendWithNSString:{JavaLangLong_toStringWithLong_withInt_(a3, 36)}];
  if ([a2 length] < 1)
  {
    if (v10)
    {
      goto LABEL_18;
    }

LABEL_21:
    JreThrowNullPointerException();
  }

  if (!v10)
  {
    goto LABEL_21;
  }

  v11 = [v10 appendWithChar:46];
  if (!v11)
  {
    goto LABEL_21;
  }

  [v11 appendWithNSString:a2];
LABEL_18:

  return [v10 description];
}

NSString *OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(void *a1, void *a2, void *a3)
{
  if (atomic_load_explicit(OrgApacheLuceneIndexIndexFileNames__initialized, memory_order_acquire))
  {
    if (!a3)
    {
      goto LABEL_19;
    }
  }

  else
  {
    sub_10005F0B4();
    if (!a3)
    {
      goto LABEL_19;
    }
  }

  if ([a3 length] <= 0)
  {
    if (!a2)
    {
      goto LABEL_19;
    }

    if ([a2 length] < 1)
    {
      return a1;
    }
  }

  if (!a1 || (v6 = [a1 length], !a2))
  {
LABEL_19:
    JreThrowNullPointerException();
  }

  v7 = new_JavaLangStringBuilder_initWithInt_(v6 + [a2 length] + objc_msgSend(a3, "length") + 2);
  [(JavaLangStringBuilder *)v7 appendWithNSString:a1];
  if ([a2 length] >= 1)
  {
    v8 = [(JavaLangStringBuilder *)v7 appendWithChar:95];
    if (!v8)
    {
      goto LABEL_19;
    }

    [v8 appendWithNSString:a2];
  }

  if ([a3 length] >= 1)
  {
    v9 = [(JavaLangStringBuilder *)v7 appendWithChar:46];
    if (v9)
    {
      [v9 appendWithNSString:a3];
      goto LABEL_14;
    }

    goto LABEL_19;
  }

LABEL_14:

  return [(JavaLangStringBuilder *)v7 description];
}

id OrgApacheLuceneIndexIndexFileNames_matchesExtensionWithNSString_withNSString_(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load_explicit(OrgApacheLuceneIndexIndexFileNames__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_10005F0B4();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v9 = JreStrcat("C$", a2, a3, a4, a5, a6, a7, a8, 46);

  return [a1 hasSuffix:v9];
}

id OrgApacheLuceneIndexIndexFileNames_stripSegmentNameWithNSString_(void *a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexFileNames__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10005F0B4();
  }

  v2 = sub_10005F038(a1);
  if (v2 == -1)
  {
    return a1;
  }

  if (!a1)
  {
    JreThrowNullPointerException();
  }

  return [a1 substring:v2];
}

uint64_t OrgApacheLuceneIndexIndexFileNames_parseGenerationWithNSString_(void *a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexFileNames__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10005F0B4();
  }

  v2 = OrgApacheLuceneIndexIndexFileNames_stripExtensionWithNSString_(a1);
  if (!v2 || (v3 = [v2 substring:1]) == 0 || (v4 = objc_msgSend(v3, "split:", @"_")) == 0)
  {
    JreThrowNullPointerException();
  }

  v11 = v4[2];
  if (v11 != 4 && v11 != 2)
  {
    return 0;
  }

  v13 = *(v4 + 4);

  return JavaLangLong_parseLongWithNSString_withInt_(v13, 36, v5, v6, v7, v8, v9, v10);
}

id OrgApacheLuceneIndexIndexFileNames_parseSegmentNameWithNSString_(void *a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexFileNames__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10005F0B4();
  }

  v2 = sub_10005F038(a1);
  if (v2 == -1)
  {
    return a1;
  }

  if (!a1)
  {
    JreThrowNullPointerException();
  }

  return [a1 substring:0 endIndex:v2];
}

id OrgApacheLuceneIndexIndexFileNames_stripExtensionWithNSString_(void *a1)
{
  if (atomic_load_explicit(OrgApacheLuceneIndexIndexFileNames__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_9:
    JreThrowNullPointerException();
  }

  sub_10005F0B4();
  if (!a1)
  {
    goto LABEL_9;
  }

LABEL_3:
  v2 = [a1 indexOf:46];
  if (v2 == -1)
  {
    return a1;
  }

  return [a1 substring:0 endIndex:v2];
}

id OrgApacheLuceneIndexIndexFileNames_getExtensionWithNSString_(void *a1)
{
  if (atomic_load_explicit(OrgApacheLuceneIndexIndexFileNames__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_9:
    JreThrowNullPointerException();
  }

  sub_10005F0B4();
  if (!a1)
  {
    goto LABEL_9;
  }

LABEL_3:
  v2 = [a1 indexOf:46];
  if (v2 == -1)
  {
    return 0;
  }

  v3 = v2;
  v4 = [a1 length];

  return [a1 substring:v3 + 1 endIndex:v4];
}

id sub_10005F038(void *a1)
{
  if (atomic_load_explicit(OrgApacheLuceneIndexIndexFileNames__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_8:
    JreThrowNullPointerException();
  }

  sub_10005F0B4();
  if (!a1)
  {
    goto LABEL_8;
  }

LABEL_3:
  result = [a1 indexOf:95 fromIndex:1];
  if (result == -1)
  {

    return [a1 indexOf:46];
  }

  return result;
}

id OrgApacheLuceneStoreRAMOutputStream_initWithNSString_withOrgApacheLuceneStoreRAMFile_withBoolean_(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v11 = JreStrcat("$$$", a2, a3, a4, a5, a6, a7, a8, @"RAMOutputStream(name=");
  OrgApacheLuceneStoreIndexOutput_initWithNSString_(a1, v11);
  JreStrongAssign((a1 + 24), a3);
  *(a1 + 40) = -1;
  JreStrongAssign((a1 + 32), 0);
  if (v8)
  {
    v12 = new_JavaUtilZipCRC32_init();
    v13 = new_OrgApacheLuceneStoreBufferedChecksum_initWithJavaUtilZipChecksum_(v12);

    return JreStrongAssignAndConsume((a1 + 64), v13);
  }

  else
  {

    return JreStrongAssign((a1 + 64), 0);
  }
}

OrgApacheLuceneStoreRAMOutputStream *new_OrgApacheLuceneStoreRAMOutputStream_init()
{
  v0 = [OrgApacheLuceneStoreRAMOutputStream alloc];
  v1 = new_OrgApacheLuceneStoreRAMFile_init();
  OrgApacheLuceneStoreRAMOutputStream_initWithNSString_withOrgApacheLuceneStoreRAMFile_withBoolean_(v0, @"noname", v1, 0, v2, v3, v4, v5);
  return v0;
}

OrgApacheLuceneStoreRAMOutputStream *new_OrgApacheLuceneStoreRAMOutputStream_initWithNSString_withOrgApacheLuceneStoreRAMFile_withBoolean_(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [OrgApacheLuceneStoreRAMOutputStream alloc];
  OrgApacheLuceneStoreRAMOutputStream_initWithNSString_withOrgApacheLuceneStoreRAMFile_withBoolean_(v6, a1, a2, a3, v7, v8, v9, v10);
  return v6;
}

uint64_t OrgApacheLuceneCodecsNormsProducer_class_()
{
  if (qword_1005540A8 != -1)
  {
    sub_10005FA54();
  }

  return qword_1005540A0;
}

uint64_t OrgApacheLuceneUtilBits_class_()
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilBits__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10005FBDC();
  }

  if (qword_1005540B8 != -1)
  {
    sub_10005FBE8();
  }

  return qword_1005540B0;
}

OrgApacheLuceneUtilBits_MatchAllBits *new_OrgApacheLuceneUtilBits_MatchAllBits_initWithInt_(int a1)
{
  result = [OrgApacheLuceneUtilBits_MatchAllBits alloc];
  result->len_ = a1;
  return result;
}

OrgApacheLuceneUtilBits_MatchNoBits *new_OrgApacheLuceneUtilBits_MatchNoBits_initWithInt_(int a1)
{
  result = [OrgApacheLuceneUtilBits_MatchNoBits alloc];
  result->len_ = a1;
  return result;
}

OrgApacheLuceneUtilLongsRef *new_OrgApacheLuceneUtilLongsRef_initWithLongArray_withInt_withInt_(void *a1, int a2, int a3)
{
  v6 = [OrgApacheLuceneUtilLongsRef alloc];
  JreStrongAssign(&v6->longs_, a1);
  v6->offset_ = a2;
  v6->length_ = a3;
  return v6;
}

OrgApacheLuceneUtilLongsRef *OrgApacheLuceneUtilLongsRef_deepCopyOfWithOrgApacheLuceneUtilLongsRef_(uint64_t a1)
{
  if (atomic_load_explicit(OrgApacheLuceneUtilLongsRef__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_10006057C();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = JavaUtilArrays_copyOfRangeWithLongArray_withInt_withInt_(*(a1 + 8), *(a1 + 16), *(a1 + 20) + *(a1 + 16));
  v3 = *(a1 + 20);
  v4 = [OrgApacheLuceneUtilLongsRef alloc];
  JreStrongAssign(&v4->longs_, v2);
  v4->offset_ = 0;
  v4->length_ = v3;

  return v4;
}

OrgApacheLuceneUtilLongsRef *new_OrgApacheLuceneUtilLongsRef_initWithInt_(int a1)
{
  v2 = [OrgApacheLuceneUtilLongsRef alloc];
  JreStrongAssignAndConsume(&v2->longs_, [IOSLongArray newArrayWithLength:a1]);
  return v2;
}

JavaUtilArrayList *OrgApacheLuceneIndexDirectoryReader_listCommitsWithOrgApacheLuceneStoreDirectory_(void *a1)
{
  if (!a1)
  {
    goto LABEL_14;
  }

  v2 = [a1 listAll];
  v3 = new_JavaUtilArrayList_init();
  LatestCommitWithOrgApacheLuceneStoreDirectory = OrgApacheLuceneIndexSegmentInfos_readLatestCommitWithOrgApacheLuceneStoreDirectory_(a1);
  if (!LatestCommitWithOrgApacheLuceneStoreDirectory)
  {
    goto LABEL_14;
  }

  v5 = LatestCommitWithOrgApacheLuceneStoreDirectory;
  v6 = [LatestCommitWithOrgApacheLuceneStoreDirectory getGeneration];
  [(JavaUtilArrayList *)v3 addWithId:new_OrgApacheLuceneIndexStandardDirectoryReader_ReaderCommit_initWithOrgApacheLuceneIndexStandardDirectoryReader_withOrgApacheLuceneIndexSegmentInfos_withOrgApacheLuceneStoreDirectory_(0, v5, a1)];
  if (!v2)
  {
    goto LABEL_14;
  }

  if (v2[2] >= 1)
  {
    v7 = 0;
    while (1)
    {
      v8 = *&v2[2 * v7 + 6];
      if (!v8)
      {
        break;
      }

      if ([*&v2[2 * v7 + 6] hasPrefix:OrgApacheLuceneIndexIndexFileNames_SEGMENTS_])
      {
        if (([v8 isEqual:OrgApacheLuceneIndexIndexFileNames_OLD_SEGMENTS_GEN_] & 1) == 0 && OrgApacheLuceneIndexSegmentInfos_generationFromSegmentsFileNameWithNSString_(v8) < v6)
        {
          CommitWithOrgApacheLuceneStoreDirectory_withNSString = OrgApacheLuceneIndexSegmentInfos_readCommitWithOrgApacheLuceneStoreDirectory_withNSString_(a1, v8);
          if (CommitWithOrgApacheLuceneStoreDirectory_withNSString)
          {
            [(JavaUtilArrayList *)v3 addWithId:new_OrgApacheLuceneIndexStandardDirectoryReader_ReaderCommit_initWithOrgApacheLuceneIndexStandardDirectoryReader_withOrgApacheLuceneIndexSegmentInfos_withOrgApacheLuceneStoreDirectory_(0, CommitWithOrgApacheLuceneStoreDirectory_withNSString, a1)];
          }
        }
      }

      if (++v7 >= v2[2])
      {
        goto LABEL_13;
      }
    }

LABEL_14:
    JreThrowNullPointerException();
  }

LABEL_13:
  JavaUtilCollections_sortWithJavaUtilList_(v3);
  return v3;
}

BOOL OrgApacheLuceneIndexDirectoryReader_indexExistsWithOrgApacheLuceneStoreDirectory_(void *a1)
{
  if (!a1 || (v1 = [a1 listAll], v9 = JreStrcat("$C", v2, v3, v4, v5, v6, v7, v8, OrgApacheLuceneIndexIndexFileNames_SEGMENTS_), !v1))
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  v10 = v9;
  v11 = (v1 + 24);
  v12 = &v1[8 * *(v1 + 2) + 24];
  do
  {
    v13 = v11;
    if (v11 >= v12)
    {
      break;
    }

    v14 = *v11;
    if (!*v11)
    {
      goto LABEL_8;
    }

    ++v11;
  }

  while (![v14 hasPrefix:v10]);
  return v13 < v12;
}

id OrgApacheLuceneIndexDirectoryReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexLeafReaderArray_(uint64_t a1, void *a2, _DWORD *a3)
{
  OrgApacheLuceneIndexBaseCompositeReader_initWithOrgApacheLuceneIndexIndexReaderArray_(a1, a3);

  return JreStrongAssign((a1 + 80), a2);
}

OrgApacheLuceneSearchConjunctionDISI_TwoPhase *OrgApacheLuceneSearchConjunctionDISI_intersectWithJavaUtilList_(void *a1)
{
  if (!a1)
  {
LABEL_36:
    JreThrowNullPointerException();
  }

  if ([a1 size] <= 1)
  {
    v19 = new_JavaLangIllegalArgumentException_initWithNSString_(@"Cannot make a ConjunctionDISI of less than 2 iterators");
    objc_exception_throw(v19);
  }

  v2 = new_JavaUtilArrayList_init();
  v3 = new_JavaUtilArrayList_init();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [a1 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      v7 = 0;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(a1);
        }

        v8 = *(*(&v20 + 1) + 8 * v7);
        if (!v8)
        {
          goto LABEL_36;
        }

        v9 = [*(*(&v20 + 1) + 8 * v7) getClass];
        if (qword_1005540C8 != -1)
        {
          sub_1000613F8();
        }

        if (v9 == qword_1005540C0)
        {
          goto LABEL_19;
        }

        v10 = [v8 getClass];
        if (qword_1005540D8 != -1)
        {
          sub_100061420();
        }

        if (v10 == qword_1005540D0)
        {
LABEL_19:
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_37;
          }

          if (!v2)
          {
            goto LABEL_36;
          }

          [(JavaUtilArrayList *)v2 addWithId:v8[1]];
          JavaUtilCollections_addAllWithJavaUtilCollection_withNSObjectArray_(v2, v8[2]);
          v15 = [v8 getClass];
          if (qword_1005540D8 != -1)
          {
            sub_100061420();
          }

          if (v15 == qword_1005540D0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
LABEL_37:
              JreThrowClassCastException();
            }

            v16 = v8[3];
            if (!v16)
            {
              goto LABEL_36;
            }

            JavaUtilCollections_addAllWithJavaUtilCollection_withNSObjectArray_(v3, *(v16 + 16));
          }
        }

        else
        {
          v11 = OrgApacheLuceneSearchTwoPhaseIterator_asTwoPhaseIteratorWithOrgApacheLuceneSearchDocIdSetIterator_(v8);
          if (v11)
          {
            if (!v2)
            {
              goto LABEL_36;
            }

            v12 = v11;
            -[JavaUtilArrayList addWithId:](v2, "addWithId:", [v11 approximation]);
            if (!v3)
            {
              goto LABEL_36;
            }

            v13 = v3;
            v14 = v12;
          }

          else
          {
            if (!v2)
            {
              goto LABEL_36;
            }

            v13 = v2;
            v14 = v8;
          }

          [(JavaUtilArrayList *)v13 addWithId:v14];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [a1 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  if ([(JavaUtilArrayList *)v3 isEmpty])
  {
    v17 = [OrgApacheLuceneSearchConjunctionDISI alloc];
    OrgApacheLuceneSearchConjunctionDISI_initWithJavaUtilList_(v17, v2);
  }

  else
  {
    v17 = [OrgApacheLuceneSearchConjunctionDISI_TwoPhase alloc];
    sub_100061264(v17, v2, v3);
  }

  return v17;
}

id OrgApacheLuceneSearchConjunctionDISI_initWithJavaUtilList_(uint64_t a1, void *a2)
{
  OrgApacheLuceneSearchDocIdSetIterator_init(a1, a2);
  OrgApacheLuceneUtilCollectionUtil_timSortWithJavaUtilList_withJavaUtilComparator_(a2, [OrgApacheLuceneSearchConjunctionDISI__1 alloc]);
  JreStrongAssign((a1 + 8), [a2 getWithInt:0]);
  v4 = [a2 subListWithInt:1 withInt:{objc_msgSend(a2, "size")}];
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  v5 = [v4 toArrayWithNSObjectArray:{+[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", 0, OrgApacheLuceneSearchDocIdSetIterator_class_())}];

  return JreStrongAssign((a1 + 16), v5);
}

uint64_t sub_100060DD8(void *a1, uint64_t a2)
{
  v2 = 0x7FFFFFFFLL;
  if (a2 != 0x7FFFFFFF)
  {
    v2 = a2;
    while (1)
    {
      v4 = a1[2];
      if (!v4)
      {
        goto LABEL_17;
      }

      v5 = (v4 + 24);
      v6 = v4 + 24 + 8 * *(v4 + 8);
      while (v5 < v6)
      {
        v8 = *v5++;
        v7 = v8;
        if (!v8)
        {
          goto LABEL_17;
        }

        if ([v7 docID] < v2)
        {
          v9 = [v7 advanceWithInt:v2];
          if (v9 > v2)
          {
            v10 = v9;
            v11 = a1[1];
            if (v11)
            {
              v12 = [v11 advanceWithInt:v10];
              goto LABEL_14;
            }

LABEL_17:
            JreThrowNullPointerException();
          }
        }
      }

      if ([a1 matches])
      {
        break;
      }

      v13 = a1[1];
      if (!v13)
      {
        goto LABEL_17;
      }

      v12 = [v13 nextDoc];
LABEL_14:
      v2 = v12;
      if (v12 == 0x7FFFFFFF)
      {
        return 0x7FFFFFFFLL;
      }
    }
  }

  return v2;
}

id sub_1000610A4(uint64_t a1, void *a2, void *a3)
{
  v6 = [OrgApacheLuceneSearchConjunctionDISI alloc];
  OrgApacheLuceneSearchConjunctionDISI_initWithJavaUtilList_(v6, a2);
  OrgApacheLuceneSearchTwoPhaseIterator_initWithOrgApacheLuceneSearchDocIdSetIterator_(a1, v6);
  v7 = [a3 toArrayWithNSObjectArray:{+[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", objc_msgSend(a3, "size"), OrgApacheLuceneSearchTwoPhaseIterator_class_())}];

  return JreStrongAssign((a1 + 16), v7);
}

void *sub_100061264(uint64_t a1, void *a2, void *a3)
{
  OrgApacheLuceneSearchConjunctionDISI_initWithJavaUtilList_(a1, a2);
  v6 = [OrgApacheLuceneSearchConjunctionDISI_TwoPhaseConjunctionDISI alloc];
  sub_1000610A4(v6, a2, a3);

  return JreStrongAssignAndConsume((a1 + 24), v6);
}

void *OrgApacheLuceneUtilPackedDirect8_initWithInt_(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  OrgApacheLuceneUtilPackedPackedInts_MutableImpl_initWithInt_withInt_(a1, a2, 8);
  v4 = [IOSByteArray newArrayWithLength:v2];

  return JreStrongAssignAndConsume((a1 + 16), v4);
}

id OrgApacheLuceneUtilPackedDirect8_initWithInt_withOrgApacheLuceneStoreDataInput_withInt_(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  OrgApacheLuceneUtilPackedDirect8_initWithInt_(a1, a4);
  if (!a3)
  {
    goto LABEL_8;
  }

  [a3 readBytesWithByteArray:*(a1 + 16) withInt:0 withInt:a4];
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100003648();
  }

  if (!OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  result = [OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_ byteCountWithInt:a2 withInt:a4 withInt:8];
  v9 = result - a4;
  if (v9 >= 1)
  {
    do
    {
      result = [a3 readByte];
      --v9;
    }

    while (v9);
  }

  return result;
}

OrgApacheLuceneUtilPackedDirect8 *new_OrgApacheLuceneUtilPackedDirect8_initWithInt_(uint64_t a1)
{
  v2 = [OrgApacheLuceneUtilPackedDirect8 alloc];
  OrgApacheLuceneUtilPackedDirect8_initWithInt_(v2, a1);
  return v2;
}

OrgApacheLuceneUtilPackedDirect8 *new_OrgApacheLuceneUtilPackedDirect8_initWithInt_withOrgApacheLuceneStoreDataInput_withInt_(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [OrgApacheLuceneUtilPackedDirect8 alloc];
  OrgApacheLuceneUtilPackedDirect8_initWithInt_withOrgApacheLuceneStoreDataInput_withInt_(v6, a1, a2, a3);
  return v6;
}

uint64_t sub_100061C88(uint64_t a1)
{
  v2 = *(a1 + 16);
  objc_sync_enter(v2);
  v3 = *(a1 + 16);
  if (!v3 || (v4 = [v3 keySet]) == 0 || (v5 = objc_msgSend(v4, "iterator")) == 0)
  {
    JreThrowNullPointerException();
  }

  v6 = 0;
  while (([v5 hasNext] & 1) != 0)
  {
    v7 = [v5 next];
    if (!v7)
    {
      JreThrowNullPointerException();
    }

    if ([v7 isAlive])
    {
      ++v6;
    }

    else
    {
      [v5 remove];
    }
  }

  v8 = *(a1 + 24);
  if (!v8)
  {
    JreThrowNullPointerException();
  }

  v9 = 20 * v6 + 20;
  if (v9 >= 1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1000000;
  }

  [v8 setWithInt:v10];

  return objc_sync_exit(v2);
}

void *OrgApacheLuceneUtilCloseableThreadLocal_init(id *a1)
{
  v2 = new_JavaLangThreadLocal_init();
  JreStrongAssignAndConsume(a1 + 1, v2);
  v3 = new_JavaUtilWeakHashMap_init();
  JreStrongAssignAndConsume(a1 + 2, v3);
  v4 = new_JavaUtilConcurrentAtomicAtomicInteger_initWithInt_(0x14u);

  return JreStrongAssignAndConsume(a1 + 3, v4);
}

OrgApacheLuceneUtilCloseableThreadLocal *new_OrgApacheLuceneUtilCloseableThreadLocal_init()
{
  v0 = [OrgApacheLuceneUtilCloseableThreadLocal alloc];
  OrgApacheLuceneUtilCloseableThreadLocal_init(&v0->super.isa);
  return v0;
}

uint64_t OrgApacheLuceneStoreRandomAccessInput_class_()
{
  if (qword_1005540E8 != -1)
  {
    sub_100061F50();
  }

  return qword_1005540E0;
}

void *OrgApacheLuceneUtilTimSorter_initWithInt_(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  OrgApacheLuceneUtilSorter_init(a1, a2);
  result = JreStrongAssignAndConsume((a1 + 24), [IOSIntArray newArrayWithLength:50]);
  *(a1 + 8) = v2;
  return result;
}

id OrgApacheLuceneSearchMultiTermQuery_initWithNSString_(uint64_t a1, uint64_t a2)
{
  OrgApacheLuceneSearchQuery_init(a1);
  JreStrongAssign((a1 + 20), OrgApacheLuceneSearchMultiTermQuery_CONSTANT_SCORE_REWRITE_);
  v4 = OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_withNSString_(a2, @"field must not be null");

  return JreStrongAssign((a1 + 12), v4);
}

id OrgApacheLuceneDocumentField_initWithNSString_withOrgApacheLuceneDocumentFieldType_(uint64_t a1, void *a2, void *a3)
{
  *(a1 + 40) = 1065353216;
  if (!a2)
  {
    v6 = @"name cannot be null";
    goto LABEL_8;
  }

  JreStrongAssign((a1 + 16), a2);
  if (!a3)
  {
    v6 = @"type cannot be null";
LABEL_8:
    v7 = new_JavaLangIllegalArgumentException_initWithNSString_(v6);
    objc_exception_throw(v7);
  }

  return JreStrongAssign((a1 + 8), a3);
}

id OrgApacheLuceneDocumentField_initWithNSString_withJavaIoReader_withOrgApacheLuceneDocumentFieldType_(uint64_t a1, void *a2, void *a3, void *a4)
{
  *(a1 + 40) = 1065353216;
  if (!a2)
  {
    v10 = @"name cannot be null";
LABEL_17:
    v11 = new_JavaLangIllegalArgumentException_initWithNSString_(v10);
LABEL_18:
    objc_exception_throw(v11);
  }

  if (!a4)
  {
    v10 = @"type cannot be null";
    goto LABEL_17;
  }

  if (!a3)
  {
    v11 = new_JavaLangNullPointerException_initWithNSString_(@"reader cannot be null");
    goto LABEL_18;
  }

  if ([a4 stored])
  {
    v10 = @"fields with a Reader value cannot be stored";
    goto LABEL_17;
  }

  v8 = [a4 indexOptions];
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  if (v8 != OrgApacheLuceneIndexIndexOptionsEnum_values_[0] && ([a4 tokenized] & 1) == 0)
  {
    v10 = @"non-tokenized fields must use String values";
    goto LABEL_17;
  }

  JreStrongAssign((a1 + 16), a2);
  JreStrongAssign((a1 + 24), a3);

  return JreStrongAssign((a1 + 8), a4);
}

id OrgApacheLuceneDocumentField_initWithNSString_withOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneDocumentFieldType_(uint64_t a1, void *a2, void *a3, void *a4)
{
  *(a1 + 40) = 1065353216;
  if (!a2)
  {
    v10 = @"name cannot be null";
    goto LABEL_17;
  }

  if (!a3)
  {
    v11 = new_JavaLangNullPointerException_initWithNSString_(@"tokenStream cannot be null");
    goto LABEL_18;
  }

  if (!a4)
  {
    JreThrowNullPointerException();
  }

  v8 = [a4 indexOptions];
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  if (v8 == OrgApacheLuceneIndexIndexOptionsEnum_values_[0] || ([a4 tokenized] & 1) == 0)
  {
    v10 = @"TokenStream fields must be indexed and tokenized";
LABEL_17:
    v11 = new_JavaLangIllegalArgumentException_initWithNSString_(v10);
LABEL_18:
    objc_exception_throw(v11);
  }

  if ([a4 stored])
  {
    v10 = @"TokenStream fields cannot be stored";
    goto LABEL_17;
  }

  JreStrongAssign((a1 + 16), a2);
  JreStrongAssign((a1 + 24), 0);
  JreStrongAssign((a1 + 32), a3);

  return JreStrongAssign((a1 + 8), a4);
}

id OrgApacheLuceneDocumentField_initWithNSString_withByteArray_withOrgApacheLuceneDocumentFieldType_(uint64_t a1, void *a2, int *a3, void *a4)
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v7 = new_OrgApacheLuceneUtilBytesRef_initWithByteArray_withInt_withInt_(a3, 0, a3[2]);

  return OrgApacheLuceneDocumentField_initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneDocumentFieldType_(a1, a2, v7, a4);
}

id OrgApacheLuceneDocumentField_initWithNSString_withByteArray_withInt_withInt_withOrgApacheLuceneDocumentFieldType_(uint64_t a1, void *a2, void *a3, int a4, int a5, void *a6)
{
  v9 = new_OrgApacheLuceneUtilBytesRef_initWithByteArray_withInt_withInt_(a3, a4, a5);

  return OrgApacheLuceneDocumentField_initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneDocumentFieldType_(a1, a2, v9, a6);
}

id OrgApacheLuceneDocumentField_initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneDocumentFieldType_(uint64_t a1, void *a2, void *a3, void *a4)
{
  *(a1 + 40) = 1065353216;
  if (!a2)
  {
    v8 = @"name cannot be null";
    goto LABEL_8;
  }

  if (!a3)
  {
    v8 = @"bytes cannot be null";
LABEL_8:
    v9 = new_JavaLangIllegalArgumentException_initWithNSString_(v8);
    objc_exception_throw(v9);
  }

  JreStrongAssign((a1 + 24), a3);
  JreStrongAssign((a1 + 8), a4);

  return JreStrongAssign((a1 + 16), a2);
}

id OrgApacheLuceneDocumentField_initWithNSString_withNSString_withOrgApacheLuceneDocumentFieldType_(uint64_t a1, void *a2, void *a3, void *a4)
{
  *(a1 + 40) = 1065353216;
  if (!a2)
  {
    v10 = @"name cannot be null";
    goto LABEL_15;
  }

  if (!a3)
  {
    v10 = @"value cannot be null";
    goto LABEL_15;
  }

  if (!a4)
  {
    JreThrowNullPointerException();
  }

  if (([a4 stored] & 1) == 0)
  {
    v8 = [a4 indexOptions];
    if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100015608();
    }

    if (v8 == OrgApacheLuceneIndexIndexOptionsEnum_values_[0])
    {
      v10 = @"it doesn't make sense to have a field that is neither indexed nor stored";
LABEL_15:
      v11 = new_JavaLangIllegalArgumentException_initWithNSString_(v10);
      objc_exception_throw(v11);
    }
  }

  JreStrongAssign((a1 + 8), a4);
  JreStrongAssign((a1 + 16), a2);

  return JreStrongAssign((a1 + 24), a3);
}

OrgApacheLuceneDocumentFieldType *OrgApacheLuceneDocumentField_translateFieldTypeWithOrgApacheLuceneDocumentField_StoreEnum_withOrgApacheLuceneDocumentField_IndexEnum_withOrgApacheLuceneDocumentField_TermVectorEnum_(uint64_t a1, void *a2, void *a3)
{
  v6 = new_OrgApacheLuceneDocumentFieldType_init();
  if ((atomic_load_explicit(&OrgApacheLuceneDocumentField_StoreEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000666F8();
  }

  [(OrgApacheLuceneDocumentFieldType *)v6 setStoredWithBoolean:OrgApacheLuceneDocumentField_StoreEnum_values_ == a1];
  v7 = [a2 ordinal];
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100015608();
      }

      [(OrgApacheLuceneDocumentFieldType *)v6 setIndexOptionsWithOrgApacheLuceneIndexIndexOptionsEnum:qword_100557388];
      v10 = v6;
      v11 = 0;
    }

    else
    {
      if (v7 != 4)
      {
        goto LABEL_22;
      }

      if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100015608();
      }

      [(OrgApacheLuceneDocumentFieldType *)v6 setIndexOptionsWithOrgApacheLuceneIndexIndexOptionsEnum:qword_100557388];
      v10 = v6;
      v11 = 1;
    }

    [(OrgApacheLuceneDocumentFieldType *)v10 setTokenizedWithBoolean:v11];
    [(OrgApacheLuceneDocumentFieldType *)v6 setOmitNormsWithBoolean:1];
  }

  else
  {
    if (v7 == 1)
    {
      if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100015608();
      }

      [(OrgApacheLuceneDocumentFieldType *)v6 setIndexOptionsWithOrgApacheLuceneIndexIndexOptionsEnum:qword_100557388];
      v8 = v6;
      v9 = 1;
    }

    else
    {
      if (v7 != 2)
      {
        goto LABEL_22;
      }

      if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100015608();
      }

      [(OrgApacheLuceneDocumentFieldType *)v6 setIndexOptionsWithOrgApacheLuceneIndexIndexOptionsEnum:qword_100557388];
      v8 = v6;
      v9 = 0;
    }

    [(OrgApacheLuceneDocumentFieldType *)v8 setTokenizedWithBoolean:v9];
  }

LABEL_22:
  v12 = [a3 ordinal];
  if (v12 > 2)
  {
    if (v12 == 3)
    {
      [(OrgApacheLuceneDocumentFieldType *)v6 setStoreTermVectorsWithBoolean:1];
    }

    else
    {
      if (v12 != 4)
      {
        goto LABEL_32;
      }

      [(OrgApacheLuceneDocumentFieldType *)v6 setStoreTermVectorsWithBoolean:1];
      [(OrgApacheLuceneDocumentFieldType *)v6 setStoreTermVectorPositionsWithBoolean:1];
    }

    [(OrgApacheLuceneDocumentFieldType *)v6 setStoreTermVectorOffsetsWithBoolean:1];
    goto LABEL_32;
  }

  if (v12 == 1)
  {
    [(OrgApacheLuceneDocumentFieldType *)v6 setStoreTermVectorsWithBoolean:1];
  }

  else if (v12 == 2)
  {
    [(OrgApacheLuceneDocumentFieldType *)v6 setStoreTermVectorsWithBoolean:1];
    [(OrgApacheLuceneDocumentFieldType *)v6 setStoreTermVectorPositionsWithBoolean:1];
  }

LABEL_32:
  [(OrgApacheLuceneDocumentFieldType *)v6 freeze];
  return v6;
}

id OrgApacheLuceneDocumentField_initWithNSString_withNSString_withOrgApacheLuceneDocumentField_StoreEnum_withOrgApacheLuceneDocumentField_IndexEnum_(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if ((atomic_load_explicit(OrgApacheLuceneDocumentField_TermVectorEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100066704();
  }

  v10 = OrgApacheLuceneDocumentField_translateFieldTypeWithOrgApacheLuceneDocumentField_StoreEnum_withOrgApacheLuceneDocumentField_IndexEnum_withOrgApacheLuceneDocumentField_TermVectorEnum_(a4, a5, OrgApacheLuceneDocumentField_TermVectorEnum_values_);

  return OrgApacheLuceneDocumentField_initWithNSString_withNSString_withOrgApacheLuceneDocumentFieldType_(a1, a2, a3, v10);
}

id OrgApacheLuceneDocumentField_initWithNSString_withJavaIoReader_(uint64_t a1, void *a2, void *a3)
{
  if ((atomic_load_explicit(OrgApacheLuceneDocumentField_TermVectorEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100066704();
  }

  v6 = OrgApacheLuceneDocumentField_TermVectorEnum_values_;

  return OrgApacheLuceneDocumentField_initWithNSString_withJavaIoReader_withOrgApacheLuceneDocumentField_TermVectorEnum_(a1, a2, a3, v6);
}

id OrgApacheLuceneDocumentField_initWithNSString_withJavaIoReader_withOrgApacheLuceneDocumentField_TermVectorEnum_(uint64_t a1, void *a2, void *a3, void *a4)
{
  if ((atomic_load_explicit(&OrgApacheLuceneDocumentField_StoreEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000666F8();
  }

  v8 = qword_100557790;
  if ((atomic_load_explicit(&OrgApacheLuceneDocumentField_IndexEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100066710();
  }

  v9 = OrgApacheLuceneDocumentField_translateFieldTypeWithOrgApacheLuceneDocumentField_StoreEnum_withOrgApacheLuceneDocumentField_IndexEnum_withOrgApacheLuceneDocumentField_TermVectorEnum_(v8, qword_1005577A0, a4);

  return OrgApacheLuceneDocumentField_initWithNSString_withJavaIoReader_withOrgApacheLuceneDocumentFieldType_(a1, a2, a3, v9);
}

id OrgApacheLuceneDocumentField_initWithNSString_withOrgApacheLuceneAnalysisTokenStream_(uint64_t a1, void *a2, void *a3)
{
  if ((atomic_load_explicit(OrgApacheLuceneDocumentField_TermVectorEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100066704();
  }

  v6 = OrgApacheLuceneDocumentField_TermVectorEnum_values_;

  return OrgApacheLuceneDocumentField_initWithNSString_withOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneDocumentField_TermVectorEnum_(a1, a2, a3, v6);
}

id OrgApacheLuceneDocumentField_initWithNSString_withOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneDocumentField_TermVectorEnum_(uint64_t a1, void *a2, void *a3, void *a4)
{
  if ((atomic_load_explicit(&OrgApacheLuceneDocumentField_StoreEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000666F8();
  }

  v8 = qword_100557790;
  if ((atomic_load_explicit(&OrgApacheLuceneDocumentField_IndexEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100066710();
  }

  v9 = OrgApacheLuceneDocumentField_translateFieldTypeWithOrgApacheLuceneDocumentField_StoreEnum_withOrgApacheLuceneDocumentField_IndexEnum_withOrgApacheLuceneDocumentField_TermVectorEnum_(v8, qword_1005577A0, a4);

  return OrgApacheLuceneDocumentField_initWithNSString_withOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneDocumentFieldType_(a1, a2, a3, v9);
}

id OrgApacheLuceneDocumentField_initWithNSString_withByteArray_(uint64_t a1, void *a2, int *a3)
{
  if ((atomic_load_explicit(&OrgApacheLuceneDocumentField_StoreEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000666F8();
  }

  v6 = OrgApacheLuceneDocumentField_StoreEnum_values_;
  if ((atomic_load_explicit(&OrgApacheLuceneDocumentField_IndexEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100066710();
  }

  v7 = OrgApacheLuceneDocumentField_IndexEnum_values_;
  if ((atomic_load_explicit(OrgApacheLuceneDocumentField_TermVectorEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100066704();
  }

  v8 = OrgApacheLuceneDocumentField_translateFieldTypeWithOrgApacheLuceneDocumentField_StoreEnum_withOrgApacheLuceneDocumentField_IndexEnum_withOrgApacheLuceneDocumentField_TermVectorEnum_(v6, v7, OrgApacheLuceneDocumentField_TermVectorEnum_values_);

  return OrgApacheLuceneDocumentField_initWithNSString_withByteArray_withOrgApacheLuceneDocumentFieldType_(a1, a2, a3, v8);
}

id OrgApacheLuceneDocumentField_initWithNSString_withByteArray_withInt_withInt_(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  if ((atomic_load_explicit(&OrgApacheLuceneDocumentField_StoreEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000666F8();
  }

  v10 = OrgApacheLuceneDocumentField_StoreEnum_values_;
  if ((atomic_load_explicit(&OrgApacheLuceneDocumentField_IndexEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100066710();
  }

  v11 = OrgApacheLuceneDocumentField_IndexEnum_values_;
  if ((atomic_load_explicit(OrgApacheLuceneDocumentField_TermVectorEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100066704();
  }

  v12 = OrgApacheLuceneDocumentField_translateFieldTypeWithOrgApacheLuceneDocumentField_StoreEnum_withOrgApacheLuceneDocumentField_IndexEnum_withOrgApacheLuceneDocumentField_TermVectorEnum_(v10, v11, OrgApacheLuceneDocumentField_TermVectorEnum_values_);
  v13 = new_OrgApacheLuceneUtilBytesRef_initWithByteArray_withInt_withInt_(a3, a4, a5);

  return OrgApacheLuceneDocumentField_initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneDocumentFieldType_(a1, a2, v13, v12);
}

OrgApacheLuceneDocumentField *new_OrgApacheLuceneDocumentField_initWithNSString_withNSString_withOrgApacheLuceneDocumentFieldType_(void *a1, void *a2, void *a3)
{
  v6 = [OrgApacheLuceneDocumentField alloc];
  OrgApacheLuceneDocumentField_initWithNSString_withNSString_withOrgApacheLuceneDocumentFieldType_(v6, a1, a2, a3);
  return v6;
}

id sub_1000656E8(uint64_t a1)
{
  OrgApacheLuceneAnalysisTokenStream_init(a1);
  v2 = [a1 addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesBytesTermAttribute_class_()];
  result = JreStrongAssign((a1 + 40), v2);
  *(a1 + 48) = 1;
  return result;
}

id sub_100065870(uint64_t a1)
{
  OrgApacheLuceneAnalysisTokenStream_init(a1);
  v2 = [a1 addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()];
  JreStrongAssign((a1 + 40), v2);
  v3 = [a1 addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_()];
  JreStrongAssign((a1 + 48), v3);
  *(a1 + 56) = 1;

  return JreStrongAssign((a1 + 64), 0);
}

IOSObjectArray *OrgApacheLuceneDocumentField_StoreEnum_values()
{
  if ((atomic_load_explicit(&OrgApacheLuceneDocumentField_StoreEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000666F8();
  }

  v0 = OrgApacheLuceneDocumentField_StoreEnum_class_();

  return [IOSObjectArray arrayWithObjects:&OrgApacheLuceneDocumentField_StoreEnum_values_ count:2 type:v0];
}

void *OrgApacheLuceneDocumentField_StoreEnum_valueOfWithNSString_(void *a1)
{
  if ((atomic_load_explicit(&OrgApacheLuceneDocumentField_StoreEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000666F8();
  }

  v2 = 0;
  for (i = 1; ; i = 0)
  {
    v4 = i;
    v5 = OrgApacheLuceneDocumentField_StoreEnum_values_[v2];
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

uint64_t OrgApacheLuceneDocumentField_StoreEnum_class_()
{
  if ((atomic_load_explicit(&OrgApacheLuceneDocumentField_StoreEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000666F8();
  }

  if (qword_1005540F8 != -1)
  {
    sub_10006671C();
  }

  return qword_1005540F0;
}

uint64_t OrgApacheLuceneDocumentField_IndexEnum_toIndexWithBoolean_withBoolean_(int a1, int a2)
{
  if ((atomic_load_explicit(&OrgApacheLuceneDocumentField_IndexEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100066710();
  }

  if ((atomic_load_explicit(&OrgApacheLuceneDocumentField_IndexEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100066710();
  }

  v4 = 2;
  if (a2)
  {
    v4 = 1;
  }

  if (!a1)
  {
    v4 = 0;
  }

  return OrgApacheLuceneDocumentField_IndexEnum_values_[v4];
}

IOSObjectArray *OrgApacheLuceneDocumentField_IndexEnum_values()
{
  if ((atomic_load_explicit(&OrgApacheLuceneDocumentField_IndexEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100066710();
  }

  v0 = OrgApacheLuceneDocumentField_IndexEnum_class_();

  return [IOSObjectArray arrayWithObjects:OrgApacheLuceneDocumentField_IndexEnum_values_ count:5 type:v0];
}

void *OrgApacheLuceneDocumentField_IndexEnum_valueOfWithNSString_(void *a1)
{
  if ((atomic_load_explicit(&OrgApacheLuceneDocumentField_IndexEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100066710();
  }

  v2 = 0;
  while (1)
  {
    v3 = OrgApacheLuceneDocumentField_IndexEnum_values_[v2];
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

uint64_t OrgApacheLuceneDocumentField_IndexEnum_class_()
{
  if ((atomic_load_explicit(&OrgApacheLuceneDocumentField_IndexEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100066710();
  }

  if (qword_100554108 != -1)
  {
    sub_100066730();
  }

  return qword_100554100;
}

IOSObjectArray *OrgApacheLuceneDocumentField_TermVectorEnum_values()
{
  if ((atomic_load_explicit(OrgApacheLuceneDocumentField_TermVectorEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100066704();
  }

  v0 = OrgApacheLuceneDocumentField_TermVectorEnum_class_();

  return [IOSObjectArray arrayWithObjects:OrgApacheLuceneDocumentField_TermVectorEnum_values_ count:5 type:v0];
}

void *OrgApacheLuceneDocumentField_TermVectorEnum_valueOfWithNSString_(void *a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneDocumentField_TermVectorEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100066704();
  }

  v2 = 0;
  while (1)
  {
    v3 = OrgApacheLuceneDocumentField_TermVectorEnum_values_[v2];
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

uint64_t OrgApacheLuceneDocumentField_TermVectorEnum_class_()
{
  if ((atomic_load_explicit(OrgApacheLuceneDocumentField_TermVectorEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100066704();
  }

  if (qword_100554118 != -1)
  {
    sub_100066744();
  }

  return qword_100554110;
}

OrgApacheLuceneUtilPackedMonotonicBlockPackedWriter *new_OrgApacheLuceneUtilPackedMonotonicBlockPackedWriter_initWithOrgApacheLuceneStoreDataOutput_withInt_(uint64_t a1, signed int a2)
{
  v4 = [OrgApacheLuceneUtilPackedMonotonicBlockPackedWriter alloc];
  OrgApacheLuceneUtilPackedAbstractBlockPackedWriter_initWithOrgApacheLuceneStoreDataOutput_withInt_(&v4->super.super.isa, a1, a2, v5, v6, v7, v8, v9);
  return v4;
}

OrgApacheLuceneUtilPackedBulkOperationPacked7 *new_OrgApacheLuceneUtilPackedBulkOperationPacked7_init()
{
  v0 = [OrgApacheLuceneUtilPackedBulkOperationPacked7 alloc];
  OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(v0, 7);
  return v0;
}

uint64_t OrgApacheLuceneUtilSmallFloat_floatToByteWithFloat_withInt_withInt_(char a1, int a2, float a3)
{
  v4 = (63 - a2) << a1;
  v5 = JavaLangFloat_floatToRawIntBitsWithFloat_(a3);
  v6 = v5 >> (24 - a1);
  if (v6 < v4 + 256)
  {
    v7 = v6 - v4;
  }

  else
  {
    v7 = -1;
  }

  if (v6 <= v4)
  {
    return v5 > 0;
  }

  else
  {
    return v7;
  }
}

BOOL OrgApacheLuceneUtilSmallFloat_floatToByte315WithFloat_(float a1)
{
  v1 = JavaLangFloat_floatToRawIntBitsWithFloat_(a1);
  if ((v1 >> 21) <= 0x27F)
  {
    v2 = (v1 >> 21) ^ 0xFFFFFF80;
  }

  else
  {
    LOBYTE(v2) = -1;
  }

  if (v1 >> 21 <= 384)
  {
    return v1 > 0;
  }

  else
  {
    return v2;
  }
}

double OrgApacheLuceneUtilSmallFloat_byte315ToFloatWithByte_(int a1)
{
  if (!a1)
  {
    return 0.0;
  }

  *&result = JavaLangFloat_intBitsToFloatWithInt_((a1 << 21) + 805306368);
  return result;
}

id OrgApacheLuceneCodecsLucene50AAPL50PostingsReader_initWithOrgApacheLuceneIndexSegmentReadState_(uint64_t a1, uint64_t a2)
{
  OrgApacheLuceneCodecsPostingsReaderBase_init();
  if (!a2 || (v4 = *(a2 + 16)) == 0)
  {
    JreThrowNullPointerException();
  }

  v5 = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(*(v4 + 8), *(a2 + 40), OrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly_DOC_EXTENSION_);
  v6 = *(a2 + 8);
  if (!v6)
  {
    JreThrowNullPointerException();
  }

  v7 = [v6 openInputWithNSString:v5 withOrgApacheLuceneStoreIOContext:*(a2 + 32)];
  *(a1 + 40) = OrgApacheLuceneCodecsCodecUtil_checkIndexHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_withByteArray_withNSString_(v7, OrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly_DOC_CODEC_, 0, 0, [*(a2 + 16) getId], *(a2 + 40));
  v8 = new_OrgApacheLuceneCodecsLucene50ForUtil_initWithOrgApacheLuceneStoreDataInput_(v7);
  JreStrongAssignAndConsume((a1 + 8), v8);
  OrgApacheLuceneCodecsCodecUtil_retrieveChecksumWithOrgApacheLuceneStoreIndexInput_(v7);
  v9 = *(a2 + 24);
  if (!v9)
  {
    JreThrowNullPointerException();
  }

  if ([v9 hasProx])
  {
    v10 = [*(a2 + 8) openInputWithNSString:OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(*(*(a2 + 16) + 8) withOrgApacheLuceneStoreIOContext:{*(a2 + 40), OrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly_POS_EXTENSION_), *(a2 + 32)}];
    OrgApacheLuceneCodecsCodecUtil_checkIndexHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_withByteArray_withNSString_(v10, OrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly_POS_CODEC_, *(a1 + 40), *(a1 + 40), [*(a2 + 16) getId], *(a2 + 40));
    OrgApacheLuceneCodecsCodecUtil_retrieveChecksumWithOrgApacheLuceneStoreIndexInput_(v10);
    if (([*(a2 + 24) hasPayloads] & 1) != 0 || objc_msgSend(*(a2 + 24), "hasOffsets"))
    {
      v11 = [*(a2 + 8) openInputWithNSString:OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(*(*(a2 + 16) + 8) withOrgApacheLuceneStoreIOContext:{*(a2 + 40), OrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly_PAY_EXTENSION_), *(a2 + 32)}];
      OrgApacheLuceneCodecsCodecUtil_checkIndexHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_withByteArray_withNSString_(v11, OrgApacheLuceneCodecsLucene50AAPL50PostingsFormatReadOnly_PAY_CODEC_, *(a1 + 40), *(a1 + 40), [*(a2 + 16) getId], *(a2 + 40));
      OrgApacheLuceneCodecsCodecUtil_retrieveChecksumWithOrgApacheLuceneStoreIndexInput_(v11);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  JreStrongAssign((a1 + 16), v7);
  JreStrongAssign((a1 + 24), v10);
  return JreStrongAssign((a1 + 32), v11);
}

void sub_10006A590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    v11 = [IOSObjectArray arrayWithObjects:&a9 count:3 type:JavaIoCloseable_class_()];
    OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_(v11);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_10006A604(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x10006A60CLL);
  }

  objc_terminate();
}

uint64_t OrgApacheLuceneCodecsLucene50AAPL50PostingsReader_readVIntBlockWithOrgApacheLuceneStoreIndexInput_withIntArray_withIntArray_withIntArray_withInt_withBoolean_(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char a6)
{
  v11 = result;
  if ((atomic_load_explicit(OrgApacheLuceneCodecsLucene50AAPL50PostingsReader__initialized, memory_order_acquire) & 1) == 0)
  {
    result = sub_10006F2C8();
  }

  if (a6)
  {
    if (a5 >= 1)
    {
      if (v11)
      {
        v12 = 0;
        v13 = a5;
        while (1)
        {
          v14 = [v11 readVInt];
          if (!a2)
          {
            break;
          }

          v15 = v14;
          v16 = *(a2 + 8);
          if (v12 >= v16)
          {
            IOSArray_throwOutOfBoundsWithMsg(v16, v12);
          }

          *(a2 + 12 + 4 * v12) = v15 >> 1;
          v17 = [v11 readVInt];
          if (!a3)
          {
            break;
          }

          v18 = v17;
          v19 = *(a3 + 8);
          if (v12 >= v19)
          {
            IOSArray_throwOutOfBoundsWithMsg(v19, v12);
          }

          *(a3 + 12 + 4 * v12) = v18;
          if (v15)
          {
            if (!a4)
            {
              goto LABEL_31;
            }

            v21 = 0;
            result = *(a4 + 8);
            if (v12 >= result)
            {
LABEL_21:
              IOSArray_throwOutOfBoundsWithMsg(result, v12);
            }
          }

          else
          {
            v20 = [v11 readVInt];
            if (!a4)
            {
              goto LABEL_31;
            }

            v21 = v20;
            result = *(a4 + 8);
            if (v12 >= result)
            {
              goto LABEL_21;
            }
          }

          *(a4 + 12 + 4 * v12++) = v21;
          if (v13 == v12)
          {
            return result;
          }
        }
      }

      goto LABEL_31;
    }
  }

  else if (a5 >= 1)
  {
    if (v11)
    {
      v22 = 0;
      for (i = a2; ; i += 4)
      {
        v24 = [v11 readVInt];
        if (!a2)
        {
          break;
        }

        v25 = v24;
        result = *(a2 + 8);
        if (v22 >= result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, v22);
        }

        *(i + 12) = v25;
        if (a5 == ++v22)
        {
          return result;
        }
      }
    }

LABEL_31:
    JreThrowNullPointerException();
  }

  return result;
}

OrgApacheLuceneCodecsLucene50AAPL50PostingsReader_EverythingEnum *new_OrgApacheLuceneCodecsLucene50AAPL50PostingsReader_EverythingEnum_initWithOrgApacheLuceneCodecsLucene50AAPL50PostingsReader_withOrgApacheLuceneIndexFieldInfo_(uint64_t a1, void *a2)
{
  v4 = [OrgApacheLuceneCodecsLucene50AAPL50PostingsReader_EverythingEnum alloc];
  OrgApacheLuceneCodecsLucene50AAPL50PostingsReader_EverythingEnum_initWithOrgApacheLuceneCodecsLucene50AAPL50PostingsReader_withOrgApacheLuceneIndexFieldInfo_(v4, a1, a2);
  return v4;
}

OrgApacheLuceneCodecsLucene50AAPL50PostingsReader *new_OrgApacheLuceneCodecsLucene50AAPL50PostingsReader_initWithOrgApacheLuceneIndexSegmentReadState_(uint64_t a1)
{
  v2 = [OrgApacheLuceneCodecsLucene50AAPL50PostingsReader alloc];
  OrgApacheLuceneCodecsLucene50AAPL50PostingsReader_initWithOrgApacheLuceneIndexSegmentReadState_(v2, a1);
  return v2;
}

uint64_t OrgApacheLuceneCodecsLucene50AAPL50PostingsReader_class_()
{
  if ((atomic_load_explicit(OrgApacheLuceneCodecsLucene50AAPL50PostingsReader__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10006F2C8();
  }

  if (qword_100554130 != -1)
  {
    sub_10006F2D4();
  }

  return qword_100554128;
}

void *OrgApacheLuceneCodecsLucene50AAPL50PostingsReader_BlockDocsEnum_initWithOrgApacheLuceneCodecsLucene50AAPL50PostingsReader_withOrgApacheLuceneIndexFieldInfo_(uint64_t a1, void **a2, void *a3)
{
  JreStrongAssign((a1 + 40), a2);
  OrgApacheLuceneIndexPostingsEnum_init(a1, v6);
  if ((atomic_load_explicit(OrgApacheLuceneCodecsLucene50ForUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100040A10();
  }

  JreStrongAssignAndConsume((a1 + 56), [IOSIntArray newArrayWithLength:OrgApacheLuceneCodecsLucene50ForUtil_MAX_DATA_SIZE_]);
  if ((atomic_load_explicit(OrgApacheLuceneCodecsLucene50ForUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100040A10();
  }

  JreStrongAssignAndConsume((a1 + 64), [IOSIntArray newArrayWithLength:OrgApacheLuceneCodecsLucene50ForUtil_MAX_DATA_SIZE_]);
  if ((atomic_load_explicit(OrgApacheLuceneCodecsLucene50ForUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100040A10();
  }

  JreStrongAssignAndConsume((a1 + 72), [IOSIntArray newArrayWithLength:OrgApacheLuceneCodecsLucene50ForUtil_MAX_DATA_SIZE_]);
  *(a1 + 164) = 0;
  JreStrongAssign((a1 + 16), a2[2]);
  JreStrongAssign((a1 + 24), 0);
  if (!a3)
  {
    goto LABEL_20;
  }

  v7 = [a3 getIndexOptions];
  if (!v7)
  {
    goto LABEL_20;
  }

  v8 = v7;
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  *(a1 + 32) = [v8 compareToWithId:qword_100557380] >= 0;
  v9 = [a3 getIndexOptions];
  if (!v9)
  {
    goto LABEL_20;
  }

  v10 = v9;
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  *(a1 + 33) = [v10 compareToWithId:qword_100557388] >= 0;
  v11 = [a3 getIndexOptions];
  if (!v11)
  {
LABEL_20:
    JreThrowNullPointerException();
  }

  v12 = v11;
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  *(a1 + 34) = [v12 compareToWithId:qword_100557390] >= 0;
  *(a1 + 35) = [a3 hasPayloads];
  v13 = [IOSByteArray newArrayWithLength:512];

  return JreStrongAssignAndConsume((a1 + 48), v13);
}

uint64_t sub_10006B8A0(uint64_t a1)
{
  v2 = *(a1 + 100);
  v3 = v2 - *(a1 + 112);
  if (v3 >= 128)
  {
    v4 = *(*(a1 + 40) + 8);
    if (v4)
    {
      result = [v4 readBlockWithOrgApacheLuceneStoreIndexInput:*(a1 + 24) withByteArray:*(a1 + 48) withIntArray:*(a1 + 56)];
      if (*(a1 + 32) == 1)
      {
        v6 = *(*(a1 + 40) + 8);
        v7 = *(a1 + 24);
        if (*(a1 + 156) == 1)
        {
          [v6 readBlockWithOrgApacheLuceneStoreIndexInput:v7 withByteArray:*(a1 + 48) withIntArray:*(a1 + 64)];
          result = [*(*(a1 + 40) + 8) readBlockWithOrgApacheLuceneStoreIndexInput:*(a1 + 24) withByteArray:*(a1 + 48) withIntArray:*(a1 + 72)];
        }

        else
        {
          [v6 skipBlockWithOrgApacheLuceneStoreIndexInput:v7];
          result = [*(*(a1 + 40) + 8) skipBlockWithOrgApacheLuceneStoreIndexInput:*(a1 + 24)];
        }
      }

      goto LABEL_16;
    }

LABEL_17:
    JreThrowNullPointerException();
  }

  v8 = *(a1 + 56);
  if (v2 != 1)
  {
    result = OrgApacheLuceneCodecsLucene50AAPL50PostingsReader_readVIntBlockWithOrgApacheLuceneStoreIndexInput_withIntArray_withIntArray_withIntArray_withInt_withBoolean_(*(a1 + 24), v8, *(a1 + 64), *(a1 + 72), v3, *(a1 + 32));
    goto LABEL_16;
  }

  if (!v8)
  {
    goto LABEL_17;
  }

  v9 = *(a1 + 160);
  v10 = *(v8 + 8);
  if (v10 <= 0)
  {
    v14 = *(a1 + 56);
    IOSArray_throwOutOfBoundsWithMsg(v10, 0);
  }

  *(v8 + 12) = v9;
  v11 = *(a1 + 64);
  if (!v11)
  {
    goto LABEL_17;
  }

  v12 = *(v11 + 8);
  if (v12 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v12, 0);
  }

  *(v11 + 12) = *(a1 + 104);
  v13 = *(a1 + 72);
  if (!v13)
  {
    goto LABEL_17;
  }

  result = *(v13 + 8);
  if (result <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, 0);
  }

  *(v13 + 12) = 0;
LABEL_16:
  *(a1 + 80) = 0;
  return result;
}

id OrgApacheLuceneCodecsLucene50AAPL50PostingsReader_BlockPostingsEnum_initWithOrgApacheLuceneCodecsLucene50AAPL50PostingsReader_withOrgApacheLuceneIndexFieldInfo_(uint64_t a1, uint64_t a2, void *a3)
{
  JreStrongAssign((a1 + 48), a2);
  OrgApacheLuceneIndexPostingsEnum_init(a1, v6);
  if ((atomic_load_explicit(OrgApacheLuceneCodecsLucene50ForUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100040A10();
  }

  JreStrongAssignAndConsume((a1 + 64), [IOSIntArray newArrayWithLength:OrgApacheLuceneCodecsLucene50ForUtil_MAX_DATA_SIZE_]);
  if ((atomic_load_explicit(OrgApacheLuceneCodecsLucene50ForUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100040A10();
  }

  JreStrongAssignAndConsume((a1 + 72), [IOSIntArray newArrayWithLength:OrgApacheLuceneCodecsLucene50ForUtil_MAX_DATA_SIZE_]);
  if ((atomic_load_explicit(OrgApacheLuceneCodecsLucene50ForUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100040A10();
  }

  JreStrongAssignAndConsume((a1 + 80), [IOSIntArray newArrayWithLength:OrgApacheLuceneCodecsLucene50ForUtil_MAX_DATA_SIZE_]);
  if ((atomic_load_explicit(OrgApacheLuceneCodecsLucene50ForUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100040A10();
  }

  JreStrongAssignAndConsume((a1 + 88), [IOSIntArray newArrayWithLength:OrgApacheLuceneCodecsLucene50ForUtil_MAX_DATA_SIZE_]);
  *(a1 + 152) = 2147483519;
  *(a1 + 216) = 0;
  JreStrongAssign((a1 + 16), *(a2 + 16));
  JreStrongAssign((a1 + 24), 0);
  v7 = *(a2 + 24);
  if (!v7 || (JreStrongAssign((a1 + 32), [v7 clone]), JreStrongAssignAndConsume((a1 + 56), +[IOSByteArray newArrayWithLength:](IOSByteArray, "newArrayWithLength:", 512)), !a3) || (v8 = objc_msgSend(a3, "getIndexOptions")) == 0)
  {
    JreThrowNullPointerException();
  }

  v9 = v8;
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  *(a1 + 40) = [v9 compareToWithId:qword_100557390] >= 0;
  result = [a3 hasPayloads];
  *(a1 + 41) = result;
  return result;
}

uint64_t sub_10006C678(uint64_t a1)
{
  v2 = *(a1 + 116);
  v3 = v2 - *(a1 + 128);
  if (v3 >= 128)
  {
    v4 = *(*(a1 + 48) + 8);
    if (v4)
    {
      [v4 readBlockWithOrgApacheLuceneStoreIndexInput:*(a1 + 24) withByteArray:*(a1 + 56) withIntArray:*(a1 + 64)];
      [*(*(a1 + 48) + 8) readBlockWithOrgApacheLuceneStoreIndexInput:*(a1 + 24) withByteArray:*(a1 + 56) withIntArray:*(a1 + 72)];
      result = [*(*(a1 + 48) + 8) readBlockWithOrgApacheLuceneStoreIndexInput:*(a1 + 24) withByteArray:*(a1 + 56) withIntArray:*(a1 + 80)];
      goto LABEL_13;
    }

LABEL_14:
    JreThrowNullPointerException();
  }

  v6 = *(a1 + 64);
  if (v2 != 1)
  {
    result = OrgApacheLuceneCodecsLucene50AAPL50PostingsReader_readVIntBlockWithOrgApacheLuceneStoreIndexInput_withIntArray_withIntArray_withIntArray_withInt_withBoolean_(*(a1 + 24), v6, *(a1 + 72), *(a1 + 80), v3, 1);
    goto LABEL_13;
  }

  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = *(a1 + 212);
  v8 = *(v6 + 8);
  if (v8 <= 0)
  {
    v13 = *(a1 + 64);
    IOSArray_throwOutOfBoundsWithMsg(v8, 0);
  }

  *(v6 + 12) = v7;
  v9 = *(a1 + 72);
  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = *(v9 + 8);
  if (v10 <= 0)
  {
    v14 = *(a1 + 72);
    IOSArray_throwOutOfBoundsWithMsg(v10, 0);
  }

  *(v9 + 12) = *(a1 + 120);
  v11 = *(a1 + 80);
  if (!v11)
  {
    goto LABEL_14;
  }

  result = *(v11 + 8);
  if (result <= 0)
  {
    v12 = *(a1 + 80);
    IOSArray_throwOutOfBoundsWithMsg(result, 0);
  }

  *(v11 + 12) = 0;
LABEL_13:
  *(a1 + 96) = 0;
  return result;
}

uint64_t sub_10006C8B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_30;
  }

  result = [v2 getFilePointer];
  if (result != *(a1 + 192))
  {
    v11 = *(*(a1 + 48) + 8);
    if (v11)
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 56);
      v14 = *(a1 + 88);

      return [v11 readBlockWithOrgApacheLuceneStoreIndexInput:v12 withByteArray:v13 withIntArray:v14];
    }

LABEL_30:
    JreThrowNullPointerException();
  }

  if (*(a1 + 120) <= 0)
  {
    v4 = -(-*(a1 + 120) & 0x7F);
  }

  else
  {
    v4 = *(a1 + 120) & 0x7FLL;
  }

  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = [*(a1 + 32) readVInt];
      v8 = v7;
      if (*(a1 + 41) == 1)
      {
        if (v7)
        {
          v6 = [*(a1 + 32) readVInt];
        }

        v9 = *(a1 + 88);
        if (!v9)
        {
          goto LABEL_30;
        }

        result = *(v9 + 8);
        if (v5 >= result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, v5);
        }

        *(v9 + 12 + 4 * v5) = v8 >> 1;
        if (v6)
        {
          result = [*(a1 + 32) seekWithLong:{objc_msgSend(*(a1 + 32), "getFilePointer") + v6}];
        }
      }

      else
      {
        v10 = *(a1 + 88);
        if (!v10)
        {
          goto LABEL_30;
        }

        result = *(v10 + 8);
        if (v5 >= result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, v5);
        }

        *(v10 + 12 + 4 * v5) = v8;
      }

      if (*(a1 + 40) == 1)
      {
        result = [*(a1 + 32) readVInt];
        if (result)
        {
          result = [*(a1 + 32) readVInt];
        }
      }

      ++v5;
    }

    while (v4 != v5);
  }

  return result;
}

_DWORD *sub_10006D15C(_DWORD *result)
{
  v1 = result;
  v2 = result[39];
  v3 = result[36];
  v4 = result[25];
  v5 = v2 - v3 - (128 - v4);
  if (v2 - v3 >= 128 - v4)
  {
    if (v5 >= 128)
    {
      v6 = v2 + v4 - v3;
      do
      {
        v7 = *(*(v1 + 48) + 8);
        if (!v7)
        {
          JreThrowNullPointerException();
        }

        [v7 skipBlockWithOrgApacheLuceneStoreIndexInput:*(v1 + 32)];
        v6 -= 128;
      }

      while (v6 > 255);
      v5 = v6 - 128;
    }

    result = sub_10006C8B4(v1);
    *(v1 + 100) = v5;
  }

  else
  {
    result[25] = v4 + v2 - v3;
  }

  *(v1 + 152) = 2147483519;
  *(v1 + 148) = 0;
  return result;
}

id OrgApacheLuceneCodecsLucene50AAPL50PostingsReader_EverythingEnum_initWithOrgApacheLuceneCodecsLucene50AAPL50PostingsReader_withOrgApacheLuceneIndexFieldInfo_(uint64_t a1, uint64_t a2, void *a3)
{
  JreStrongAssign((a1 + 64), a2);
  OrgApacheLuceneIndexPostingsEnum_init(a1, v6);
  if ((atomic_load_explicit(OrgApacheLuceneCodecsLucene50ForUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100040A10();
  }

  JreStrongAssignAndConsume((a1 + 80), [IOSIntArray newArrayWithLength:OrgApacheLuceneCodecsLucene50ForUtil_MAX_DATA_SIZE_]);
  if ((atomic_load_explicit(OrgApacheLuceneCodecsLucene50ForUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100040A10();
  }

  JreStrongAssignAndConsume((a1 + 88), [IOSIntArray newArrayWithLength:OrgApacheLuceneCodecsLucene50ForUtil_MAX_DATA_SIZE_]);
  if ((atomic_load_explicit(OrgApacheLuceneCodecsLucene50ForUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100040A10();
  }

  JreStrongAssignAndConsume((a1 + 96), [IOSIntArray newArrayWithLength:OrgApacheLuceneCodecsLucene50ForUtil_MAX_DATA_SIZE_]);
  if ((atomic_load_explicit(OrgApacheLuceneCodecsLucene50ForUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100040A10();
  }

  JreStrongAssignAndConsume((a1 + 104), [IOSIntArray newArrayWithLength:OrgApacheLuceneCodecsLucene50ForUtil_MAX_DATA_SIZE_]);
  *(a1 + 224) = 2147483519;
  *(a1 + 300) = 0;
  JreStrongAssign((a1 + 16), *(a2 + 16));
  JreStrongAssign((a1 + 24), 0);
  v7 = *(a2 + 24);
  if (!v7 || (JreStrongAssign((a1 + 32), [v7 clone]), (v8 = *(a2 + 32)) == 0) || (JreStrongAssign((a1 + 40), objc_msgSend(v8, "clone")), JreStrongAssignAndConsume((a1 + 72), +[IOSByteArray newArrayWithLength:](IOSByteArray, "newArrayWithLength:", 512)), !a3) || (v9 = objc_msgSend(a3, "getIndexOptions")) == 0)
  {
    JreThrowNullPointerException();
  }

  v10 = v9;
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  *(a1 + 56) = [v10 compareToWithId:qword_100557390] >= 0;
  if (*(a1 + 56) == 1)
  {
    if ((atomic_load_explicit(OrgApacheLuceneCodecsLucene50ForUtil__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100040A10();
    }

    JreStrongAssignAndConsume((a1 + 120), [IOSIntArray newArrayWithLength:OrgApacheLuceneCodecsLucene50ForUtil_MAX_DATA_SIZE_]);
    if ((atomic_load_explicit(OrgApacheLuceneCodecsLucene50ForUtil__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100040A10();
    }

    JreStrongAssignAndConsume((a1 + 128), [IOSIntArray newArrayWithLength:OrgApacheLuceneCodecsLucene50ForUtil_MAX_DATA_SIZE_]);
  }

  else
  {
    JreStrongAssign((a1 + 120), 0);
    JreStrongAssign((a1 + 128), 0);
    *(a1 + 156) = -1;
    *(a1 + 160) = -1;
  }

  *(a1 + 57) = [a3 hasPayloads];
  if (*(a1 + 57) == 1)
  {
    if ((atomic_load_explicit(OrgApacheLuceneCodecsLucene50ForUtil__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100040A10();
    }

    JreStrongAssignAndConsume((a1 + 112), [IOSIntArray newArrayWithLength:OrgApacheLuceneCodecsLucene50ForUtil_MAX_DATA_SIZE_]);
    JreStrongAssignAndConsume((a1 + 136), [IOSByteArray newArrayWithLength:128]);
    v11 = new_OrgApacheLuceneUtilBytesRef_init();

    return JreStrongAssignAndConsume((a1 + 48), v11);
  }

  else
  {
    JreStrongAssign((a1 + 112), 0);
    JreStrongAssign((a1 + 136), 0);

    return JreStrongAssign((a1 + 48), 0);
  }
}

uint64_t sub_10006DC58(uint64_t a1)
{
  v2 = *(a1 + 188);
  v3 = v2 - *(a1 + 200);
  if (v3 >= 128)
  {
    v4 = *(*(a1 + 64) + 8);
    if (v4)
    {
      [v4 readBlockWithOrgApacheLuceneStoreIndexInput:*(a1 + 24) withByteArray:*(a1 + 72) withIntArray:*(a1 + 80)];
      [*(*(a1 + 64) + 8) readBlockWithOrgApacheLuceneStoreIndexInput:*(a1 + 24) withByteArray:*(a1 + 72) withIntArray:*(a1 + 88)];
      result = [*(*(a1 + 64) + 8) readBlockWithOrgApacheLuceneStoreIndexInput:*(a1 + 24) withByteArray:*(a1 + 72) withIntArray:*(a1 + 96)];
      goto LABEL_13;
    }

LABEL_14:
    JreThrowNullPointerException();
  }

  v6 = *(a1 + 80);
  if (v2 != 1)
  {
    result = OrgApacheLuceneCodecsLucene50AAPL50PostingsReader_readVIntBlockWithOrgApacheLuceneStoreIndexInput_withIntArray_withIntArray_withIntArray_withInt_withBoolean_(*(a1 + 24), v6, *(a1 + 88), *(a1 + 96), v3, 1);
    goto LABEL_13;
  }

  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = *(a1 + 296);
  v8 = *(v6 + 8);
  if (v8 <= 0)
  {
    v13 = *(a1 + 80);
    IOSArray_throwOutOfBoundsWithMsg(v8, 0);
  }

  *(v6 + 12) = v7;
  v9 = *(a1 + 88);
  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = *(v9 + 8);
  if (v10 <= 0)
  {
    v14 = *(a1 + 88);
    IOSArray_throwOutOfBoundsWithMsg(v10, 0);
  }

  *(v9 + 12) = *(a1 + 192);
  v11 = *(a1 + 96);
  if (!v11)
  {
    goto LABEL_14;
  }

  result = *(v11 + 8);
  if (result <= 0)
  {
    v12 = *(a1 + 96);
    IOSArray_throwOutOfBoundsWithMsg(result, 0);
  }

  *(v11 + 12) = 0;
LABEL_13:
  *(a1 + 164) = 0;
  return result;
}

uint64_t sub_10006DE94(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_59;
  }

  result = [v2 getFilePointer];
  if (result != *(a1 + 272))
  {
    v24 = *(*(a1 + 64) + 8);
    if (v24)
    {
      result = [v24 readBlockWithOrgApacheLuceneStoreIndexInput:*(a1 + 32) withByteArray:*(a1 + 72) withIntArray:*(a1 + 104)];
      if (*(a1 + 57) != 1)
      {
        goto LABEL_50;
      }

      v25 = *(*(a1 + 64) + 8);
      v26 = *(a1 + 40);
      if (*(a1 + 293) == 1)
      {
        [v25 readBlockWithOrgApacheLuceneStoreIndexInput:v26 withByteArray:*(a1 + 72) withIntArray:*(a1 + 112)];
        v27 = *(a1 + 40);
        if (v27)
        {
          v28 = [v27 readVInt];
          v34 = *(a1 + 136);
          if (v34)
          {
            v35 = v28;
            if (v28 > *(v34 + 8))
            {
              v36 = OrgApacheLuceneUtilArrayUtil_growWithByteArray_withInt_(*(a1 + 136), v28, v34, v29, v30, v31, v32, v33);
              JreStrongAssign((a1 + 136), v36);
              v34 = *(a1 + 136);
            }

            result = [*(a1 + 40) readBytesWithByteArray:v34 withInt:0 withInt:v35];
            goto LABEL_49;
          }
        }
      }

      else
      {
        [v25 skipBlockWithOrgApacheLuceneStoreIndexInput:v26];
        v37 = *(a1 + 40);
        if (v37)
        {
          result = [*(a1 + 40) seekWithLong:{objc_msgSend(*(a1 + 40), "getFilePointer") + objc_msgSend(v37, "readVInt")}];
LABEL_49:
          *(a1 + 144) = 0;
LABEL_50:
          if (*(a1 + 56) == 1)
          {
            v38 = *(*(a1 + 64) + 8);
            v39 = *(a1 + 40);
            if (*(a1 + 292) == 1)
            {
              [v38 readBlockWithOrgApacheLuceneStoreIndexInput:v39 withByteArray:*(a1 + 72) withIntArray:*(a1 + 120)];
              v40 = *(*(a1 + 64) + 8);
              v41 = *(a1 + 40);
              v42 = *(a1 + 72);
              v43 = *(a1 + 128);

              return [v40 readBlockWithOrgApacheLuceneStoreIndexInput:v41 withByteArray:v42 withIntArray:v43];
            }

            else
            {
              [v38 skipBlockWithOrgApacheLuceneStoreIndexInput:v39];
              v44 = *(*(a1 + 64) + 8);
              v45 = *(a1 + 40);

              return [v44 skipBlockWithOrgApacheLuceneStoreIndexInput:v45];
            }
          }

          return result;
        }
      }
    }

LABEL_59:
    JreThrowNullPointerException();
  }

  if (*(a1 + 192) <= 0)
  {
    v4 = -(-*(a1 + 192) & 0x7F);
  }

  else
  {
    v4 = *(a1 + 192) & 0x7FLL;
  }

  *(a1 + 144) = 0;
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 0;
    v46 = 0;
    do
    {
      v7 = [*(a1 + 32) readVInt];
      v12 = v7;
      if (*(a1 + 57) == 1)
      {
        if (v7)
        {
          v6 = [*(a1 + 32) readVInt];
        }

        v13 = *(a1 + 112);
        if (!v13)
        {
          goto LABEL_59;
        }

        v14 = *(v13 + 8);
        if (v5 >= v14)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, v5);
        }

        *(v13 + 12 + 4 * v5) = v6;
        v15 = *(a1 + 104);
        if (!v15)
        {
          goto LABEL_59;
        }

        result = *(v15 + 8);
        if (v5 >= result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, v5);
        }

        *(v15 + 12 + 4 * v5) = v12 >> 1;
        if (v6)
        {
          v16 = *(a1 + 136);
          if (!v16)
          {
            goto LABEL_59;
          }

          v17 = *(a1 + 144);
          if (v17 + v6 > *(v16 + 8))
          {
            v18 = OrgApacheLuceneUtilArrayUtil_growWithByteArray_withInt_(*(a1 + 136), v17 + v6, v16, v17, v8, v9, v10, v11);
            JreStrongAssign((a1 + 136), v18);
            v16 = *(a1 + 136);
            v17 = *(a1 + 144);
          }

          result = [*(a1 + 32) readBytesWithByteArray:v16 withInt:v17 withInt:v6];
          *(a1 + 144) += v6;
        }
      }

      else
      {
        v19 = *(a1 + 104);
        if (!v19)
        {
          goto LABEL_59;
        }

        result = *(v19 + 8);
        if (v5 >= result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, v5);
        }

        *(v19 + 12 + 4 * v5) = v12;
      }

      if (*(a1 + 56) == 1)
      {
        v20 = [*(a1 + 32) readVInt];
        if (v20)
        {
          v46 = [*(a1 + 32) readVInt];
        }

        v21 = *(a1 + 120);
        if (!v21)
        {
          goto LABEL_59;
        }

        v22 = *(v21 + 8);
        if (v5 >= v22)
        {
          IOSArray_throwOutOfBoundsWithMsg(v22, v5);
        }

        *(v21 + 12 + 4 * v5) = v20 >> 1;
        v23 = *(a1 + 128);
        if (!v23)
        {
          goto LABEL_59;
        }

        result = *(v23 + 8);
        if (v5 >= result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, v5);
        }

        *(v23 + 12 + 4 * v5) = v46;
      }

      ++v5;
    }

    while (v4 != v5);
  }

  *(a1 + 144) = 0;
  return result;
}
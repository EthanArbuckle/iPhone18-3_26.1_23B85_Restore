@interface OrgApacheLuceneUtilFstByteSequenceOutputs
+ (id)getSingleton;
+ (void)initialize;
- (id)addWithId:(id)a3 withId:(id)a4;
- (id)commonWithId:(id)a3 withId:(id)a4;
- (id)outputToStringWithId:(id)a3;
- (id)readWithOrgApacheLuceneStoreDataInput:(id)a3;
- (id)subtractWithId:(id)a3 withId:(id)a4;
- (int64_t)ramBytesUsedWithId:(id)a3;
- (void)skipOutputWithOrgApacheLuceneStoreDataInput:(id)a3;
- (void)writeWithId:(id)a3 withOrgApacheLuceneStoreDataOutput:(id)a4;
@end

@implementation OrgApacheLuceneUtilFstByteSequenceOutputs

+ (id)getSingleton
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilFstByteSequenceOutputs__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000E4050();
  }

  return qword_100554568;
}

- (id)commonWithId:(id)a3 withId:(id)a4
{
  if (!a3 || (v4 = a4) == 0)
  {
LABEL_26:
    JreThrowNullPointerException();
  }

  LODWORD(v6) = *(a3 + 4);
  v7 = *(a4 + 4);
  v8 = JavaLangMath_minWithInt_withInt_(*(a3 + 5), *(a4 + 5));
  v9 = v8 + v6;
  if (v6 >= v8 + v6)
  {
    v9 = v6;
  }

  else
  {
    v6 = v6;
    while (1)
    {
      v10 = *(a3 + 1);
      if (!v10)
      {
        goto LABEL_26;
      }

      v11 = *(v10 + 8);
      if (v6 < 0 || v6 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, v6);
      }

      v12 = *(v10 + 12 + v6);
      v13 = v4[1];
      v14 = *(v13 + 8);
      if ((v7 & 0x80000000) != 0 || v7 >= v14)
      {
        IOSArray_throwOutOfBoundsWithMsg(v14, v7);
      }

      if (v12 != *(v13 + 12 + v7))
      {
        break;
      }

      ++v6;
      v7 = (v7 + 1);
      if (v9 == v6)
      {
        goto LABEL_17;
      }
    }

    v9 = v6;
  }

LABEL_17:
  v15 = *(a3 + 4);
  if (v9 == v15)
  {
    return qword_100554558;
  }

  if (v9 == *(a3 + 5) + v15)
  {
    return a3;
  }

  if (v7 == *(v4 + 5) + *(v4 + 4))
  {
    return v4;
  }

  v17 = new_OrgApacheLuceneUtilBytesRef_initWithByteArray_withInt_withInt_(*(a3 + 1), v15, v9 - v15);

  return v17;
}

- (id)subtractWithId:(id)a3 withId:(id)a4
{
  result = qword_100554558;
  if (qword_100554558 == a4)
  {
    return a3;
  }

  if (!a4 || !a3)
  {
    JreThrowNullPointerException();
  }

  v5 = *(a4 + 5);
  v6 = *(a3 + 5) - v5;
  if (v6)
  {
    v7 = new_OrgApacheLuceneUtilBytesRef_initWithByteArray_withInt_withInt_(*(a3 + 1), *(a3 + 4) + v5, v6);

    return v7;
  }

  return result;
}

- (id)addWithId:(id)a3 withId:(id)a4
{
  v4 = a4;
  if (qword_100554558 != a3)
  {
    if (qword_100554558 == a4)
    {
      return a3;
    }

    else
    {
      v6 = new_OrgApacheLuceneUtilBytesRef_initWithInt_(*(a4 + 5) + *(a3 + 5));
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(a3 + 1), *(a3 + 4), v6->bytes_, 0, *(a3 + 5));
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v4[1], *(v4 + 4), v6->bytes_, *(a3 + 5), *(v4 + 5));
      v6->length_ = *(v4 + 5) + *(a3 + 5);
      return v6;
    }
  }

  return v4;
}

- (void)writeWithId:(id)a3 withOrgApacheLuceneStoreDataOutput:(id)a4
{
  if (!a4 || !a3)
  {
    JreThrowNullPointerException();
  }

  [a4 writeVIntWithInt:*(a3 + 5)];
  v6 = *(a3 + 1);
  v7 = *(a3 + 4);
  v8 = *(a3 + 5);

  [a4 writeBytesWithByteArray:v6 withInt:v7 withInt:v8];
}

- (id)readWithOrgApacheLuceneStoreDataInput:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = [a3 readVInt];
  if (!v4)
  {
    return qword_100554558;
  }

  v5 = v4;
  v6 = new_OrgApacheLuceneUtilBytesRef_initWithInt_(v4);
  [a3 readBytesWithByteArray:v6->bytes_ withInt:0 withInt:v5];
  v6->length_ = v5;
  return v6;
}

- (void)skipOutputWithOrgApacheLuceneStoreDataInput:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = [a3 readVInt];
  if (v4)
  {

    [a3 skipBytesWithLong:v4];
  }
}

- (id)outputToStringWithId:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  return [a3 description];
}

- (int64_t)ramBytesUsedWithId:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v3 = qword_100554560;
  return OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithByteArray_(*(a3 + 1)) + v3;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = new_OrgApacheLuceneUtilBytesRef_init();
    JreStrongAssignAndConsume(&qword_100554558, v2);
    v3 = [OrgApacheLuceneUtilFstByteSequenceOutputs alloc];
    OrgApacheLuceneUtilFstOutputs_init(v3, v4);
    JreStrongAssignAndConsume(&qword_100554568, v3);
    qword_100554560 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithId_(qword_100554558);
    atomic_store(1u, OrgApacheLuceneUtilFstByteSequenceOutputs__initialized);
  }
}

@end
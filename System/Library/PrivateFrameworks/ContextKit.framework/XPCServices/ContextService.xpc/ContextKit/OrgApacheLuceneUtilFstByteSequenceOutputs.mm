@interface OrgApacheLuceneUtilFstByteSequenceOutputs
+ (id)getSingleton;
+ (void)initialize;
- (id)addWithId:(id)id withId:(id)withId;
- (id)commonWithId:(id)id withId:(id)withId;
- (id)outputToStringWithId:(id)id;
- (id)readWithOrgApacheLuceneStoreDataInput:(id)input;
- (id)subtractWithId:(id)id withId:(id)withId;
- (int64_t)ramBytesUsedWithId:(id)id;
- (void)skipOutputWithOrgApacheLuceneStoreDataInput:(id)input;
- (void)writeWithId:(id)id withOrgApacheLuceneStoreDataOutput:(id)output;
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

- (id)commonWithId:(id)id withId:(id)withId
{
  if (!id || (v4 = withId) == 0)
  {
LABEL_26:
    JreThrowNullPointerException();
  }

  LODWORD(v6) = *(id + 4);
  v7 = *(withId + 4);
  v8 = JavaLangMath_minWithInt_withInt_(*(id + 5), *(withId + 5));
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
      v10 = *(id + 1);
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
  v15 = *(id + 4);
  if (v9 == v15)
  {
    return qword_100554558;
  }

  if (v9 == *(id + 5) + v15)
  {
    return id;
  }

  if (v7 == *(v4 + 5) + *(v4 + 4))
  {
    return v4;
  }

  v17 = new_OrgApacheLuceneUtilBytesRef_initWithByteArray_withInt_withInt_(*(id + 1), v15, v9 - v15);

  return v17;
}

- (id)subtractWithId:(id)id withId:(id)withId
{
  result = qword_100554558;
  if (qword_100554558 == withId)
  {
    return id;
  }

  if (!withId || !id)
  {
    JreThrowNullPointerException();
  }

  v5 = *(withId + 5);
  v6 = *(id + 5) - v5;
  if (v6)
  {
    v7 = new_OrgApacheLuceneUtilBytesRef_initWithByteArray_withInt_withInt_(*(id + 1), *(id + 4) + v5, v6);

    return v7;
  }

  return result;
}

- (id)addWithId:(id)id withId:(id)withId
{
  withIdCopy = withId;
  if (qword_100554558 != id)
  {
    if (qword_100554558 == withId)
    {
      return id;
    }

    else
    {
      v6 = new_OrgApacheLuceneUtilBytesRef_initWithInt_(*(withId + 5) + *(id + 5));
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(id + 1), *(id + 4), v6->bytes_, 0, *(id + 5));
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(withIdCopy[1], *(withIdCopy + 4), v6->bytes_, *(id + 5), *(withIdCopy + 5));
      v6->length_ = *(withIdCopy + 5) + *(id + 5);
      return v6;
    }
  }

  return withIdCopy;
}

- (void)writeWithId:(id)id withOrgApacheLuceneStoreDataOutput:(id)output
{
  if (!output || !id)
  {
    JreThrowNullPointerException();
  }

  [output writeVIntWithInt:*(id + 5)];
  v6 = *(id + 1);
  v7 = *(id + 4);
  v8 = *(id + 5);

  [output writeBytesWithByteArray:v6 withInt:v7 withInt:v8];
}

- (id)readWithOrgApacheLuceneStoreDataInput:(id)input
{
  if (!input)
  {
    JreThrowNullPointerException();
  }

  readVInt = [input readVInt];
  if (!readVInt)
  {
    return qword_100554558;
  }

  v5 = readVInt;
  v6 = new_OrgApacheLuceneUtilBytesRef_initWithInt_(readVInt);
  [input readBytesWithByteArray:v6->bytes_ withInt:0 withInt:v5];
  v6->length_ = v5;
  return v6;
}

- (void)skipOutputWithOrgApacheLuceneStoreDataInput:(id)input
{
  if (!input)
  {
    JreThrowNullPointerException();
  }

  readVInt = [input readVInt];
  if (readVInt)
  {

    [input skipBytesWithLong:readVInt];
  }
}

- (id)outputToStringWithId:(id)id
{
  if (!id)
  {
    JreThrowNullPointerException();
  }

  return [id description];
}

- (int64_t)ramBytesUsedWithId:(id)id
{
  if (!id)
  {
    JreThrowNullPointerException();
  }

  v3 = qword_100554560;
  return OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithByteArray_(*(id + 1)) + v3;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
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
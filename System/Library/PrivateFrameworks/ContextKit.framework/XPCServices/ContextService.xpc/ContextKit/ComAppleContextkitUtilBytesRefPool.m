@interface ComAppleContextkitUtilBytesRefPool
+ (void)initialize;
- (BOOL)reclaimSpaceWithOrgApacheLuceneUtilBytesRef:(id)a3;
- (id)tryAppendWithJavaLangCharSequence:(id)a3;
- (id)tryAppendWithJavaLangCharSequence:(id)a3 withChar:(unsigned __int16)a4 withJavaLangCharSequence:(id)a5;
- (id)tryAppendWithOrgApacheLuceneUtilBytesRef:(id)a3;
- (void)dealloc;
- (void)nextBuffer;
@end

@implementation ComAppleContextkitUtilBytesRefPool

- (void)nextBuffer
{
  p_buffers = &self->buffers_;
  buffers = self->buffers_;
  if (!buffers)
  {
    goto LABEL_8;
  }

  bufferUpto = self->bufferUpto_;
  if (bufferUpto + 1 == buffers->super.size_)
  {
    if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1000120A8();
    }

    v12 = OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(bufferUpto + 2, OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF_, v2, v3, v4, v5, v6, v7);
    v13 = +[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", v12, IOSClass_arrayType(+[IOSClass byteClass], 1u));
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*p_buffers, 0, v13, 0, (*p_buffers)->super.size_);
    JreStrongAssign(p_buffers, v13);
  }

  allocator = self->allocator_;
  if (!allocator)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  v15 = IOSObjectArray_Set(self->buffers_, self->bufferUpto_ + 1, [(ComAppleContextkitUtilBytesRefPool_Allocator *)allocator getByteBlock]);
  JreStrongAssign(&self->buffer_, v15);
  ++self->bufferUpto_;
  self->byteUpto_ = 0;
  self->byteOffset_ += self->blockSize_;
}

- (id)tryAppendWithOrgApacheLuceneUtilBytesRef:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = *(a3 + 5);
  if (!v4)
  {
    return qword_100554238;
  }

  blockSize = self->blockSize_;
  v7 = __OFSUB__(v4, blockSize);
  v8 = v4 - blockSize;
  if ((v8 < 0) ^ v7 | (v8 == 0) && ((v9 = *(a3 + 4), byteUpto = self->byteUpto_, v8 + byteUpto < 1) || ([(ComAppleContextkitUtilBytesRefPool *)self nextBuffer], byteUpto = self->byteUpto_, byteUpto + v4 - self->blockSize_ < 1)))
  {
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(a3 + 1), v9, self->buffer_, byteUpto, v4);
    result = new_OrgApacheLuceneUtilBytesRef_initWithByteArray_withInt_withInt_(self->buffer_, self->byteUpto_, v4);
    self->byteUpto_ += v4;
  }

  else
  {

    return OrgApacheLuceneUtilBytesRef_deepCopyOfWithOrgApacheLuceneUtilBytesRef_(a3);
  }

  return result;
}

- (id)tryAppendWithJavaLangCharSequence:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v3 = a3;
  v5 = [a3 length];
  if (!v5)
  {
    return qword_100554238;
  }

  v6 = 3 * v5;
  blockSize = self->blockSize_;
  if ((self->byteUpto_ + 3 * v5 - blockSize) < 1 || v6 <= blockSize && ([(ComAppleContextkitUtilBytesRefPool *)self nextBuffer], self->byteUpto_ + v6 - self->blockSize_ < 1) || (result = new_OrgApacheLuceneUtilBytesRef_initWithJavaLangCharSequence_(v3)) == 0)
  {
    LODWORD(v3) = OrgApacheLuceneUtilUnicodeUtil_UTF16toUTF8WithJavaLangCharSequence_withInt_withInt_withByteArray_withInt_(v3, 0, [v3 length], self->buffer_, self->byteUpto_);
    goto LABEL_10;
  }

  v3 = *(result + 5);
  byteUpto = self->byteUpto_;
  if (byteUpto + v3 - self->blockSize_ <= 0)
  {
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(result + 1), 0, self->buffer_, byteUpto, v3);
LABEL_10:
    result = new_OrgApacheLuceneUtilBytesRef_initWithByteArray_withInt_withInt_(self->buffer_, self->byteUpto_, v3);
    self->byteUpto_ += v3;
  }

  return result;
}

- (id)tryAppendWithJavaLangCharSequence:(id)a3 withChar:(unsigned __int16)a4 withJavaLangCharSequence:(id)a5
{
  if (!a3)
  {
    goto LABEL_24;
  }

  v9 = [a3 length];
  if (!a5)
  {
    goto LABEL_24;
  }

  v10 = 3 * ([a5 length] + v9) + 3;
  byteUpto = self->byteUpto_;
  blockSize = self->blockSize_;
  v13 = self->byteUpto_;
  if (byteUpto - blockSize + v10 >= 1)
  {
    if (v10 > blockSize || ([(ComAppleContextkitUtilBytesRefPool *)self nextBuffer], v13 = self->byteUpto_, v13 + v10 - self->blockSize_ >= 1))
    {
      v14 = new_OrgApacheLuceneUtilBytesRef_initWithInt_(v10);
      if (v14)
      {
        v15 = v14;
        v16 = 0;
        v13 = 0;
        p_bytes = &v14->bytes_;
        goto LABEL_10;
      }

      v13 = self->byteUpto_;
    }
  }

  v15 = 0;
  p_bytes = &self->buffer_;
  v16 = 1;
LABEL_10:
  v18 = *p_bytes;
  v19 = OrgApacheLuceneUtilUnicodeUtil_UTF16toUTF8WithJavaLangCharSequence_withInt_withInt_withByteArray_withInt_(a3, 0, [a3 length], *p_bytes, v13);
  if ((a4 - 127) <= 0xFF81u)
  {
    v20 = JavaLangCharacter_toStringWithChar_(a4);
    if (v20)
    {
      v21 = OrgApacheLuceneUtilUnicodeUtil_UTF16toUTF8WithJavaLangCharSequence_withInt_withInt_withByteArray_withInt_(v20, 0, [(NSString *)v20 length], v18, v19 + v13);
      goto LABEL_17;
    }

LABEL_24:
    JreThrowNullPointerException();
  }

  if (!v18)
  {
    goto LABEL_24;
  }

  v22 = *(v18 + 8);
  v23 = v19 + v13;
  if (v19 + v13 < 0 || v23 >= v22)
  {
    IOSArray_throwOutOfBoundsWithMsg(v22, v23);
  }

  *(v18 + 12 + v19 + v13) = a4;
  v21 = 1;
LABEL_17:
  v24 = OrgApacheLuceneUtilUnicodeUtil_UTF16toUTF8WithJavaLangCharSequence_withInt_withInt_withByteArray_withInt_(a5, 0, [a5 length], v18, v21 + v19 + v13) + v21 + v19;
  if ((v16 & 1) == 0)
  {
    v15->length_ = v24;
    if (self->byteUpto_ + v24 - self->blockSize_ > 0)
    {
      return v15;
    }

    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v15->bytes_, 0, self->buffer_, byteUpto, v24);
  }

  self->byteUpto_ += v24;
  v26 = new_OrgApacheLuceneUtilBytesRef_initWithByteArray_withInt_withInt_(self->buffer_, byteUpto, v24);

  return v26;
}

- (BOOL)reclaimSpaceWithOrgApacheLuceneUtilBytesRef:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if (*(a3 + 1) == self->buffer_ && (v4 = *(a3 + 5), byteUpto = self->byteUpto_, byteUpto == *(a3 + 4) + v4))
  {
    v6 = byteUpto - v4;
    v7 = v6 >= 0;
    if (v6 >= 0)
    {
      byteUpto = v6;
    }

    self->byteUpto_ = byteUpto;
  }

  else
  {
    v7 = 0;
  }

  JreStrongAssign(a3 + 1, 0);
  *(a3 + 5) = 0;
  *(a3 + 4) = 0;
  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleContextkitUtilBytesRefPool;
  [(ComAppleContextkitUtilBytesRefPool *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = new_OrgApacheLuceneUtilBytesRef_initWithInt_(0);
    JreStrongAssignAndConsume(&qword_100554238, v2);
    atomic_store(1u, &ComAppleContextkitUtilBytesRefPool__initialized);
  }
}

@end
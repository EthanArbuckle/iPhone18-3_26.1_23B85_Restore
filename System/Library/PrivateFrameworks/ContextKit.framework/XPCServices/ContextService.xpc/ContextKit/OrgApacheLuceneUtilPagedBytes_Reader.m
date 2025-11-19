@interface OrgApacheLuceneUtilPagedBytes_Reader
+ (void)initialize;
- (int64_t)ramBytesUsed;
- (void)dealloc;
- (void)fillSliceWithOrgApacheLuceneUtilBytesRef:(id)a3 withLong:(int64_t)a4 withInt:(int)a5;
- (void)fillWithOrgApacheLuceneUtilBytesRef:(id)a3 withLong:(int64_t)a4;
@end

@implementation OrgApacheLuceneUtilPagedBytes_Reader

- (void)fillSliceWithOrgApacheLuceneUtilBytesRef:(id)a3 withLong:(int64_t)a4 withInt:(int)a5
{
  if (!a3)
  {
    goto LABEL_17;
  }

  *(a3 + 5) = a5;
  if (!a5)
  {
    return;
  }

  v8 = a4 >> self->blockBits_;
  v9 = self->blockMask_ & a4;
  if (self->blockSize_ - v9 < a5)
  {
    JreStrongAssignAndConsume(a3 + 1, [IOSByteArray newArrayWithLength:a5]);
    *(a3 + 4) = 0;
    blocks = self->blocks_;
    if (blocks)
    {
      size = blocks->super.size_;
      if ((v8 & 0x80000000) != 0 || size <= v8)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v8);
      }

      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_((&blocks->elementType_)[v8], v9, *(a3 + 1), 0, (self->blockSize_ - v9));
      v13 = self->blocks_;
      v11 = v8 << 32;
      v14 = (&_mh_execute_header + (v8 << 32)) >> 32;
      v15 = v13->super.size_;
      if (v14 < 0 || v15 <= v14)
      {
        IOSArray_throwOutOfBoundsWithMsg(v15, (&_mh_execute_header + v11) >> 32);
      }

      v16 = (&v13->elementType_)[v14];
      v17 = *(a3 + 1);
      v18 = (self->blockSize_ - v9);

      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v16, 0, v17, v18, (a5 - v18));
      return;
    }

LABEL_17:
    JreThrowNullPointerException();
  }

  v19 = self->blocks_;
  if (!v19)
  {
    goto LABEL_17;
  }

  v20 = v19->super.size_;
  if ((v8 & 0x80000000) != 0 || v20 <= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v20, v8);
  }

  JreStrongAssign(a3 + 1, (&v19->elementType_)[v8]);
  *(a3 + 4) = v9;
}

- (void)fillWithOrgApacheLuceneUtilBytesRef:(id)a3 withLong:(int64_t)a4
{
  if (!a3 || (blocks = self->blocks_) == 0)
  {
    JreThrowNullPointerException();
  }

  v6 = a4 >> self->blockBits_;
  v7 = self->blockMask_ & a4;
  size = blocks->super.size_;
  if ((v6 & 0x80000000) != 0 || size <= v6)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v6);
  }

  v9 = JreStrongAssign(a3 + 1, (&blocks->elementType_)[v6]);
  v10 = v9[2];
  if ((v7 & 0x80000000) != 0 || v7 >= v10)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, v7);
  }

  v11 = *(v9 + v7 + 12);
  v12 = v9[2];
  v14 = v7 < 0 || v7 >= v12;
  if (v11 < 0)
  {
    if (v14)
    {
      IOSArray_throwOutOfBoundsWithMsg(v12, v7);
    }

    v17 = (v11 & 0x7F) << 8;
    v18 = v7 + 1;
    if (v7 + 1 < 0 || v18 >= v12)
    {
      IOSArray_throwOutOfBoundsWithMsg(v12, v18);
    }

    v15 = v17 | *(v9 + v18 + 12);
    v16 = 2;
  }

  else
  {
    if (v14)
    {
      IOSArray_throwOutOfBoundsWithMsg(v12, v7);
    }

    v15 = v11;
    v16 = 1;
  }

  *(a3 + 5) = v15;
  *(a3 + 4) = v7 + v16;
}

- (int64_t)ramBytesUsed
{
  v3 = qword_100554820;
  v4 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithNSObjectArray_(self->blocks_);
  blocks = self->blocks_;
  if (!blocks)
  {
    JreThrowNullPointerException();
  }

  result = v4 + v3;
  size = blocks->super.size_;
  v8 = __OFSUB__(size, 1);
  v9 = (size - 1);
  if (v9 < 0 == v8)
  {
    v10 = result + self->bytesUsedPerBlock_ * v9;
    return v10 + OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithByteArray_((&blocks->elementType_)[v9]);
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPagedBytes_Reader;
  [(OrgApacheLuceneUtilPagedBytes_Reader *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = OrgApacheLuceneUtilPagedBytes_Reader_class_();
    qword_100554820 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v2);
    atomic_store(1u, OrgApacheLuceneUtilPagedBytes_Reader__initialized);
  }
}

@end
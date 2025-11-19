@interface OrgApacheLuceneUtilPagedBytes
+ (void)initialize;
- (id)getDataInput;
- (id)getDataOutput;
- (int64_t)copyUsingLengthPrefixWithOrgApacheLuceneUtilBytesRef:(id)a3;
- (int64_t)getPointer;
- (int64_t)ramBytesUsed;
- (void)copy__WithOrgApacheLuceneStoreIndexInput:(id)a3 withLong:(int64_t)a4;
- (void)copy__WithOrgApacheLuceneUtilBytesRef:(id)a3 withOrgApacheLuceneUtilBytesRef:(id)a4;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilPagedBytes

- (void)copy__WithOrgApacheLuceneStoreIndexInput:(id)a3 withLong:(int64_t)a4
{
  if (a4 >= 1)
  {
    v8 = a4;
    blockSize = self->blockSize_;
    upto = self->upto_;
    while (1)
    {
      v13 = blockSize - upto;
      if (blockSize == upto)
      {
        currentBlock = self->currentBlock_;
        if (currentBlock)
        {
          sub_100131BE0(self, currentBlock, a3, upto, v4, v5, v6, v7);
          blockSize = self->blockSize_;
        }

        JreStrongAssignAndConsume(&self->currentBlock_, [IOSByteArray newArrayWithLength:blockSize]);
        upto = 0;
        self->upto_ = 0;
        v13 = self->blockSize_;
      }

      if (v8 <= v13)
      {
        break;
      }

      if (!a3)
      {
        goto LABEL_14;
      }

      v15 = v13;
      [a3 readBytesWithByteArray:self->currentBlock_ withInt:upto withInt:v13 withBoolean:0];
      upto = self->blockSize_;
      self->upto_ = upto;
      v8 -= v15;
      blockSize = upto;
      if (v8 <= 0)
      {
        return;
      }
    }

    if (!a3)
    {
LABEL_14:
      JreThrowNullPointerException();
    }

    [a3 readBytesWithByteArray:self->currentBlock_ withInt:upto withInt:v8 withBoolean:0];
    self->upto_ += v8;
  }
}

- (void)copy__WithOrgApacheLuceneUtilBytesRef:(id)a3 withOrgApacheLuceneUtilBytesRef:(id)a4
{
  if (!a3)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  p_currentBlock = &self->currentBlock_;
  currentBlock = self->currentBlock_;
  blockSize = self->blockSize_;
  if (*(a3 + 5) <= blockSize - self->upto_)
  {
    if (currentBlock)
    {
      goto LABEL_7;
    }
  }

  else if (currentBlock)
  {
    sub_100131BE0(self, currentBlock, a3, a4, v4, v5, v6, v7);
    self->didSkipBytes_ = 1;
    blockSize = self->blockSize_;
  }

  JreStrongAssignAndConsume(p_currentBlock, [IOSByteArray newArrayWithLength:blockSize]);
  self->upto_ = 0;
LABEL_7:
  if (!a4)
  {
    goto LABEL_9;
  }

  JreStrongAssign(a4 + 1, self->currentBlock_);
  *(a4 + 4) = self->upto_;
  *(a4 + 5) = *(a3 + 5);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(a3 + 1), *(a3 + 4), self->currentBlock_, self->upto_, *(a3 + 5));
  self->upto_ += *(a3 + 5);
}

- (int64_t)getPointer
{
  if (self->currentBlock_)
  {
    return self->upto_ + self->blockSize_ * self->numBlocks_;
  }

  else
  {
    return 0;
  }
}

- (int64_t)ramBytesUsed
{
  v3 = qword_100554808;
  v4 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithNSObjectArray_(self->blocks_) + v3;
  numBlocks = self->numBlocks_;
  v6 = (numBlocks - 1);
  if (numBlocks >= 1)
  {
    blocks = self->blocks_;
    if (!blocks)
    {
      JreThrowNullPointerException();
    }

    v8 = v4 + self->bytesUsedPerBlock_ * v6;
    size = blocks->super.size_;
    if (numBlocks > size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, (numBlocks - 1));
    }

    v4 = v8 + OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithByteArray_((&blocks->elementType_)[v6]);
  }

  currentBlock = self->currentBlock_;
  if (currentBlock)
  {
    v4 += OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithByteArray_(currentBlock);
  }

  return v4;
}

- (int64_t)copyUsingLengthPrefixWithOrgApacheLuceneUtilBytesRef:(id)a3
{
  if (!a3)
  {
    goto LABEL_18;
  }

  v9 = *(a3 + 5);
  if (v9 >= 0x8000)
  {
    v25 = *(a3 + 5);
    v23 = JreStrcat("$IC", a2, a3, v3, v4, v5, v6, v7, @"max length is 32767 (got ");
    goto LABEL_23;
  }

  blockSize = self->blockSize_;
  if (v9 + 2 + self->upto_ <= blockSize)
  {
    goto LABEL_8;
  }

  if (v9 + 2 > blockSize)
  {
    v27 = *(a3 + 5);
    v26 = self->blockSize_;
    v23 = JreStrcat("$I$I$", a2, a3, v3, v4, v5, v6, v7, @"block size ");
LABEL_23:
    v24 = new_JavaLangIllegalArgumentException_initWithNSString_(v23);
    objc_exception_throw(v24);
  }

  currentBlock = self->currentBlock_;
  if (currentBlock)
  {
    sub_100131BE0(self, currentBlock, a3, v3, v4, v5, v6, v7);
    blockSize = self->blockSize_;
  }

  JreStrongAssignAndConsume(&self->currentBlock_, [IOSByteArray newArrayWithLength:blockSize]);
  self->upto_ = 0;
LABEL_8:
  v13 = [(OrgApacheLuceneUtilPagedBytes *)self getPointer];
  v14 = *(a3 + 5);
  if (v14 <= 127)
  {
    v15 = self->currentBlock_;
    if (v15)
    {
      upto = self->upto_;
      self->upto_ = upto + 1;
      goto LABEL_15;
    }

LABEL_18:
    JreThrowNullPointerException();
  }

  v17 = self->currentBlock_;
  if (!v17)
  {
    goto LABEL_18;
  }

  v18 = (v14 >> 8) | 0xFFFFFF80;
  v19 = self->upto_;
  self->upto_ = v19 + 1;
  size = v17->super.size_;
  if (v19 < 0 || v19 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v19);
  }

  *(&v17->super.size_ + v19 + 4) = v18;
  v14 = *(a3 + 5);
  v15 = self->currentBlock_;
  upto = self->upto_;
  self->upto_ = upto + 1;
LABEL_15:
  v21 = v15->super.size_;
  if ((upto & 0x80000000) != 0 || upto >= v21)
  {
    IOSArray_throwOutOfBoundsWithMsg(v21, upto);
  }

  *(&v15->super.size_ + upto + 4) = v14;
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(a3 + 1), *(a3 + 4), self->currentBlock_, self->upto_, *(a3 + 5));
  self->upto_ += *(a3 + 5);
  return v13;
}

- (id)getDataInput
{
  if (!self->frozen_)
  {
    v5 = new_JavaLangIllegalStateException_initWithNSString_(@"must call freeze() before getDataInput");
    objc_exception_throw(v5);
  }

  v3 = [OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput alloc];
  OrgApacheLuceneUtilPagedBytes_PagedBytesDataInput_initWithOrgApacheLuceneUtilPagedBytes_(v3, self);

  return v3;
}

- (id)getDataOutput
{
  if (self->frozen_)
  {
    v4 = new_JavaLangIllegalStateException_initWithNSString_(@"cannot get DataOutput after freeze()");
    objc_exception_throw(v4);
  }

  v2 = new_OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput_initWithOrgApacheLuceneUtilPagedBytes_(self);

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPagedBytes;
  [(OrgApacheLuceneUtilPagedBytes *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = OrgApacheLuceneUtilPagedBytes_class_();
    qword_100554808 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v2);
    JreStrongAssignAndConsume(&qword_100554800, [IOSByteArray newArrayWithLength:0]);
    atomic_store(1u, &OrgApacheLuceneUtilPagedBytes__initialized);
  }
}

@end
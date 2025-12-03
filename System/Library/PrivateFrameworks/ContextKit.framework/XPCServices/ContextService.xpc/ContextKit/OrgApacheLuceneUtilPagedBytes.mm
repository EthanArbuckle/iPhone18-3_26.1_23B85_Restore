@interface OrgApacheLuceneUtilPagedBytes
+ (void)initialize;
- (id)getDataInput;
- (id)getDataOutput;
- (int64_t)copyUsingLengthPrefixWithOrgApacheLuceneUtilBytesRef:(id)ref;
- (int64_t)getPointer;
- (int64_t)ramBytesUsed;
- (void)copy__WithOrgApacheLuceneStoreIndexInput:(id)input withLong:(int64_t)long;
- (void)copy__WithOrgApacheLuceneUtilBytesRef:(id)ref withOrgApacheLuceneUtilBytesRef:(id)bytesRef;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilPagedBytes

- (void)copy__WithOrgApacheLuceneStoreIndexInput:(id)input withLong:(int64_t)long
{
  if (long >= 1)
  {
    longCopy = long;
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
          sub_100131BE0(self, currentBlock, input, upto, v4, v5, v6, v7);
          blockSize = self->blockSize_;
        }

        JreStrongAssignAndConsume(&self->currentBlock_, [IOSByteArray newArrayWithLength:blockSize]);
        upto = 0;
        self->upto_ = 0;
        v13 = self->blockSize_;
      }

      if (longCopy <= v13)
      {
        break;
      }

      if (!input)
      {
        goto LABEL_14;
      }

      v15 = v13;
      [input readBytesWithByteArray:self->currentBlock_ withInt:upto withInt:v13 withBoolean:0];
      upto = self->blockSize_;
      self->upto_ = upto;
      longCopy -= v15;
      blockSize = upto;
      if (longCopy <= 0)
      {
        return;
      }
    }

    if (!input)
    {
LABEL_14:
      JreThrowNullPointerException();
    }

    [input readBytesWithByteArray:self->currentBlock_ withInt:upto withInt:longCopy withBoolean:0];
    self->upto_ += longCopy;
  }
}

- (void)copy__WithOrgApacheLuceneUtilBytesRef:(id)ref withOrgApacheLuceneUtilBytesRef:(id)bytesRef
{
  if (!ref)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  p_currentBlock = &self->currentBlock_;
  currentBlock = self->currentBlock_;
  blockSize = self->blockSize_;
  if (*(ref + 5) <= blockSize - self->upto_)
  {
    if (currentBlock)
    {
      goto LABEL_7;
    }
  }

  else if (currentBlock)
  {
    sub_100131BE0(self, currentBlock, ref, bytesRef, v4, v5, v6, v7);
    self->didSkipBytes_ = 1;
    blockSize = self->blockSize_;
  }

  JreStrongAssignAndConsume(p_currentBlock, [IOSByteArray newArrayWithLength:blockSize]);
  self->upto_ = 0;
LABEL_7:
  if (!bytesRef)
  {
    goto LABEL_9;
  }

  JreStrongAssign(bytesRef + 1, self->currentBlock_);
  *(bytesRef + 4) = self->upto_;
  *(bytesRef + 5) = *(ref + 5);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(ref + 1), *(ref + 4), self->currentBlock_, self->upto_, *(ref + 5));
  self->upto_ += *(ref + 5);
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

- (int64_t)copyUsingLengthPrefixWithOrgApacheLuceneUtilBytesRef:(id)ref
{
  if (!ref)
  {
    goto LABEL_18;
  }

  v9 = *(ref + 5);
  if (v9 >= 0x8000)
  {
    v25 = *(ref + 5);
    v23 = JreStrcat("$IC", a2, ref, v3, v4, v5, v6, v7, @"max length is 32767 (got ");
    goto LABEL_23;
  }

  blockSize = self->blockSize_;
  if (v9 + 2 + self->upto_ <= blockSize)
  {
    goto LABEL_8;
  }

  if (v9 + 2 > blockSize)
  {
    v27 = *(ref + 5);
    v26 = self->blockSize_;
    v23 = JreStrcat("$I$I$", a2, ref, v3, v4, v5, v6, v7, @"block size ");
LABEL_23:
    v24 = new_JavaLangIllegalArgumentException_initWithNSString_(v23);
    objc_exception_throw(v24);
  }

  currentBlock = self->currentBlock_;
  if (currentBlock)
  {
    sub_100131BE0(self, currentBlock, ref, v3, v4, v5, v6, v7);
    blockSize = self->blockSize_;
  }

  JreStrongAssignAndConsume(&self->currentBlock_, [IOSByteArray newArrayWithLength:blockSize]);
  self->upto_ = 0;
LABEL_8:
  getPointer = [(OrgApacheLuceneUtilPagedBytes *)self getPointer];
  v14 = *(ref + 5);
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
  v14 = *(ref + 5);
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
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(ref + 1), *(ref + 4), self->currentBlock_, self->upto_, *(ref + 5));
  self->upto_ += *(ref + 5);
  return getPointer;
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
  if (objc_opt_class() == self)
  {
    v2 = OrgApacheLuceneUtilPagedBytes_class_();
    qword_100554808 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v2);
    JreStrongAssignAndConsume(&qword_100554800, [IOSByteArray newArrayWithLength:0]);
    atomic_store(1u, &OrgApacheLuceneUtilPagedBytes__initialized);
  }
}

@end
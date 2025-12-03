@interface OrgApacheLuceneUtilBytesRefHash
- (id)compact;
- (id)sortWithJavaUtilComparator:(id)comparator;
- (int)addByPoolOffsetWithInt:(int)int;
- (int)addWithOrgApacheLuceneUtilBytesRef:(id)ref;
- (int)findWithOrgApacheLuceneUtilBytesRef:(id)ref;
- (void)clearWithBoolean:(BOOL)boolean;
- (void)close;
- (void)dealloc;
- (void)reinit;
@end

@implementation OrgApacheLuceneUtilBytesRefHash

- (id)compact
{
  if (self->hashSize_ >= 1)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      ids = self->ids_;
      if (!ids)
      {
        JreThrowNullPointerException();
      }

      size = ids->super.size_;
      if (v3 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v3);
      }

      if (*(&ids->super.size_ + v3 + 1) != -1)
      {
        if (v3 > v4)
        {
          v7 = self->ids_;
          v8 = v7->super.size_;
          if (v3 >= v8)
          {
            IOSArray_throwOutOfBoundsWithMsg(v8, v3);
          }

          v9 = *(&v7->super.size_ + v3 + 1);
          if ((v4 & 0x80000000) != 0 || v4 >= v8)
          {
            IOSArray_throwOutOfBoundsWithMsg(v8, v4);
          }

          *(&self->ids_->super.size_ + v4 + 1) = v9;
          v10 = self->ids_;
          v11 = v10->super.size_;
          if (v3 >= v11)
          {
            IOSArray_throwOutOfBoundsWithMsg(v11, v3);
          }

          *(&v10->super.size_ + v3 + 1) = -1;
        }

        v4 = (v4 + 1);
      }

      ++v3;
    }

    while (v3 < self->hashSize_);
  }

  self->lastCount_ = self->count_;
  return self->ids_;
}

- (id)sortWithJavaUtilComparator:(id)comparator
{
  compact = [(OrgApacheLuceneUtilBytesRefHash *)self compact];
  v6 = [OrgApacheLuceneUtilBytesRefHash__1 alloc];
  sub_10012BF34(&v6->super.super.super.isa, self, compact, comparator);
  [(OrgApacheLuceneUtilIntroSorter *)v6 sortWithInt:0 withInt:self->count_];
  return compact;
}

- (void)clearWithBoolean:(BOOL)boolean
{
  count = self->count_;
  self->count_ = 0;
  self->lastCount_ = count;
  if (boolean)
  {
    pool = self->pool_;
    if (!pool)
    {
      goto LABEL_10;
    }

    [(OrgApacheLuceneUtilByteBlockPool *)pool resetWithBoolean:0 withBoolean:0];
  }

  bytesStartArray = self->bytesStartArray_;
  if (!bytesStartArray)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  JreStrongAssign(&self->bytesStart_, [(OrgApacheLuceneUtilBytesRefHash_BytesStartArray *)bytesStartArray clear]);
  lastCount = self->lastCount_;
  if (lastCount == -1 || !sub_10012A810(self, lastCount))
  {
    ids = self->ids_;

    JavaUtilArrays_fillWithIntArray_withInt_(ids, -1);
  }
}

- (void)close
{
  [(OrgApacheLuceneUtilBytesRefHash *)self clearWithBoolean:1];
  JreStrongAssign(&self->ids_, 0);
  bytesUsed = self->bytesUsed_;
  if (!bytesUsed)
  {
    JreThrowNullPointerException();
  }

  v4 = -4 * self->hashSize_;

  [(OrgApacheLuceneUtilCounter *)bytesUsed addAndGetWithLong:v4];
}

- (int)addWithOrgApacheLuceneUtilBytesRef:(id)ref
{
  if (!ref)
  {
    goto LABEL_35;
  }

  v5 = *(ref + 5);
  v6 = sub_10012AD28(self, ref);
  ids = self->ids_;
  if (!ids)
  {
    goto LABEL_35;
  }

  v15 = v6;
  size = ids->super.size_;
  if ((v15 & 0x80000000) != 0 || v15 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v15);
  }

  v17 = *(&ids->super.size_ + v15 + 1);
  if (v17 != -1)
  {
    LODWORD(count) = ~v17;
    return count;
  }

  pool = self->pool_;
  if (!pool)
  {
    goto LABEL_35;
  }

  v20 = *(ref + 5);
  byteUpto = pool->byteUpto_;
  if (byteUpto + v20 + 2 > 0x8000)
  {
    if (v20 + 2 > 0x8000)
    {
      v39 = *(ref + 5);
      v37 = JreStrcat("$I$I", v7, v8, v9, v10, v11, v12, v13, @"bytes can be at most ");
      v38 = new_OrgApacheLuceneUtilBytesRefHash_MaxBytesLengthExceededException_initWithNSString_(v37);
      objc_exception_throw(v38);
    }

    [(OrgApacheLuceneUtilByteBlockPool *)pool nextBuffer];
    pool = self->pool_;
    byteUpto = pool->byteUpto_;
  }

  bytesStart = self->bytesStart_;
  if (!bytesStart)
  {
    goto LABEL_35;
  }

  buffer = pool->buffer_;
  count = self->count_;
  if (count >= bytesStart->super.size_)
  {
    bytesStartArray = self->bytesStartArray_;
    if (!bytesStartArray)
    {
      goto LABEL_35;
    }

    JreStrongAssign(&self->bytesStart_, [(OrgApacheLuceneUtilBytesRefHash_BytesStartArray *)bytesStartArray grow]);
    count = self->count_;
    v26 = self->pool_;
    bytesStart = self->bytesStart_;
    self->count_ = count + 1;
    if (!bytesStart)
    {
      goto LABEL_35;
    }

    p_byteOffset = &v26->byteOffset_;
  }

  else
  {
    self->count_ = count + 1;
    p_byteOffset = &pool->byteOffset_;
  }

  v27 = bytesStart->super.size_;
  if ((count & 0x80000000) != 0 || count >= v27)
  {
    IOSArray_throwOutOfBoundsWithMsg(v27, count);
  }

  *(&bytesStart->super.size_ + count + 1) = *p_byteOffset + byteUpto;
  if (v5 > 127)
  {
    if (buffer)
    {
      v32 = buffer[2];
      if ((byteUpto & 0x80000000) != 0 || byteUpto >= v32)
      {
        IOSArray_throwOutOfBoundsWithMsg(v32, byteUpto);
      }

      *(buffer + byteUpto + 12) = v5 | 0x80;
      v31 = v5 >> 7;
      v33 = buffer[2];
      v30 = byteUpto + 1;
      if (byteUpto + 1 < 0 || v30 >= v33)
      {
        IOSArray_throwOutOfBoundsWithMsg(v33, v30);
      }

      v29 = 2;
      goto LABEL_30;
    }

LABEL_35:
    JreThrowNullPointerException();
  }

  if (!buffer)
  {
    goto LABEL_35;
  }

  v28 = buffer[2];
  if ((byteUpto & 0x80000000) != 0 || byteUpto >= v28)
  {
    IOSArray_throwOutOfBoundsWithMsg(v28, byteUpto);
  }

  v29 = 1;
  v30 = byteUpto;
  LOBYTE(v31) = v5;
LABEL_30:
  *(buffer + v30 + 12) = v31;
  self->pool_->byteUpto_ += v5 + v29;
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(ref + 1), *(ref + 4), buffer, (byteUpto + v29), v5);
  v34 = self->ids_;
  v35 = v34->super.size_;
  if ((v15 & 0x80000000) != 0 || v15 >= v35)
  {
    IOSArray_throwOutOfBoundsWithMsg(v35, v15);
  }

  *(&v34->super.size_ + v15 + 1) = count;
  if (self->count_ == self->hashHalfSize_)
  {
    sub_10012AEA0(self, 2 * self->hashSize_, 1);
  }

  return count;
}

- (int)findWithOrgApacheLuceneUtilBytesRef:(id)ref
{
  ids = self->ids_;
  if (!ids)
  {
    JreThrowNullPointerException();
  }

  v4 = sub_10012AD28(self, ref);
  size = ids->super.size_;
  if ((v4 & 0x80000000) != 0 || v4 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v4);
  }

  return *(&ids->super.size_ + v4 + 1);
}

- (int)addByPoolOffsetWithInt:(int)int
{
  ids = self->ids_;
  if (!ids)
  {
    goto LABEL_34;
  }

  v6 = self->hashMask_ & int;
  size = ids->super.size_;
  if ((v6 & 0x80000000) != 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v6);
  }

  count = *(&ids->super.size_ + v6 + 1);
  if (count != -1)
  {
    bytesStart = self->bytesStart_;
    if (!bytesStart)
    {
      goto LABEL_34;
    }

    v10 = bytesStart->super.size_;
    if ((count & 0x80000000) != 0 || count >= v10)
    {
      IOSArray_throwOutOfBoundsWithMsg(v10, count);
    }

    v11 = *(&bytesStart->super.size_ + count + 1);
    v12 = __OFSUB__(v11, int);
    if (v11 == int)
    {
LABEL_9:
      LODWORD(count) = ~count;
      return count;
    }

    v13 = int + 1;
    while (1)
    {
      hashMask = self->hashMask_;
      v6 = v13 & hashMask;
      v15 = self->ids_;
      v16 = v15->super.size_;
      if ((v13 & hashMask) < 0 != v12 || v6 >= v16)
      {
        IOSArray_throwOutOfBoundsWithMsg(v16, v13 & hashMask);
      }

      count = *(&v15->super.size_ + v6 + 1);
      if (count == -1)
      {
        break;
      }

      v18 = self->bytesStart_;
      v19 = v18->super.size_;
      if ((count & 0x80000000) != 0 || count >= v19)
      {
        IOSArray_throwOutOfBoundsWithMsg(v19, count);
      }

      v20 = *(&v18->super.size_ + count + 1);
      ++v13;
      v12 = __OFSUB__(v20, int);
      if (v20 == int)
      {
        goto LABEL_9;
      }
    }
  }

  v21 = self->bytesStart_;
  if (!v21)
  {
LABEL_34:
    JreThrowNullPointerException();
  }

  count = self->count_;
  if (count >= v21->super.size_)
  {
    bytesStartArray = self->bytesStartArray_;
    if (bytesStartArray)
    {
      JreStrongAssign(&self->bytesStart_, [(OrgApacheLuceneUtilBytesRefHash_BytesStartArray *)bytesStartArray grow]);
      count = self->count_;
      v21 = self->bytesStart_;
      self->count_ = count + 1;
      if (v21)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_34;
  }

  self->count_ = count + 1;
LABEL_27:
  v23 = v21->super.size_;
  if ((count & 0x80000000) != 0 || count >= v23)
  {
    IOSArray_throwOutOfBoundsWithMsg(v23, count);
  }

  *(&v21->super.size_ + count + 1) = int;
  v24 = self->ids_;
  v25 = v24->super.size_;
  if ((v6 & 0x80000000) != 0 || v6 >= v25)
  {
    IOSArray_throwOutOfBoundsWithMsg(v25, v6);
  }

  *(&v24->super.size_ + v6 + 1) = count;
  if (self->count_ == self->hashHalfSize_)
  {
    sub_10012AEA0(self, 2 * self->hashSize_, 0);
  }

  return count;
}

- (void)reinit
{
  p_bytesStart = &self->bytesStart_;
  if (!self->bytesStart_)
  {
    bytesStartArray = self->bytesStartArray_;
    if (!bytesStartArray)
    {
      goto LABEL_9;
    }

    JreStrongAssign(p_bytesStart, [(OrgApacheLuceneUtilBytesRefHash_BytesStartArray *)bytesStartArray init]);
  }

  if (self->ids_)
  {
    return;
  }

  JreStrongAssignAndConsume(&self->ids_, [IOSIntArray newArrayWithLength:self->hashSize_]);
  bytesUsed = self->bytesUsed_;
  if (!bytesUsed)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  v6 = 4 * self->hashSize_;

  [(OrgApacheLuceneUtilCounter *)bytesUsed addAndGetWithLong:v6];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilBytesRefHash;
  [(OrgApacheLuceneUtilBytesRefHash *)&v3 dealloc];
}

@end
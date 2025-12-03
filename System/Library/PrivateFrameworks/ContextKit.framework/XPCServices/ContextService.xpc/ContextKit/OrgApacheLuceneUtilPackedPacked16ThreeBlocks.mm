@interface OrgApacheLuceneUtilPackedPacked16ThreeBlocks
- (id)description;
- (int)setWithInt:(int)int withLongArray:(id)array withInt:(int)withInt withInt:(int)a6;
- (int64_t)getWithInt:(int)int;
- (int64_t)ramBytesUsed;
- (void)dealloc;
- (void)fillWithInt:(int)int withInt:(int)withInt withLong:(int64_t)long;
- (void)setWithInt:(int)int withLong:(int64_t)long;
@end

@implementation OrgApacheLuceneUtilPackedPacked16ThreeBlocks

- (int64_t)getWithInt:(int)int
{
  blocks = self->blocks_;
  if (!blocks)
  {
    JreThrowNullPointerException();
  }

  v4 = 3 * int;
  size = blocks->super.size_;
  if (3 * int < 0 || v4 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (3 * int));
  }

  v6 = blocks;
  v7 = *(&blocks->super.size_ + v4 + 2);
  v8 = v4 + 1;
  if (v4 + 1 < 0 || v8 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v8);
  }

  v9 = *(&blocks->super.size_ + v4 + 3);
  v10 = (v4 + 2);
  if (v10 < 0 || v10 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v10);
  }

  return (v7 << 32) | (v9 << 16) | *(&v6->super.size_ + v10 + 2);
}

- (void)setWithInt:(int)int withLong:(int64_t)long
{
  blocks = self->blocks_;
  if (!blocks)
  {
    JreThrowNullPointerException();
  }

  v6 = 3 * int;
  size = blocks->super.size_;
  if (3 * int < 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (3 * int));
  }

  *(&blocks->super.size_ + v6 + 2) = WORD2(long);
  v8 = self->blocks_;
  v9 = v8->super.size_;
  v10 = v6 + 1;
  if (v6 + 1 < 0 || v10 >= v9)
  {
    IOSArray_throwOutOfBoundsWithMsg(v9, v10);
  }

  *(&v8->super.size_ + v10 + 2) = WORD1(long);
  v11 = self->blocks_;
  v12 = v11->super.size_;
  v13 = v6 + 2;
  if (v6 + 2 < 0 || v13 >= v12)
  {
    IOSArray_throwOutOfBoundsWithMsg(v12, (v6 + 2));
  }

  *(&v11->super.size_ + v13 + 2) = long;
}

- (int)setWithInt:(int)int withLongArray:(id)array withInt:(int)withInt withInt:(int)a6
{
  v10 = JavaLangMath_minWithInt_withInt_((self->super.valueCount_ - int), a6);
  v11 = v10 + withInt;
  if (v10 + withInt > withInt)
  {
    arrayCopy = array;
    withIntCopy = withInt;
    v14 = (3 * int);
    v15 = array + 8 * withInt;
    do
    {
      v16 = arrayCopy[2];
      if (withIntCopy < 0 || withIntCopy >= v16)
      {
        IOSArray_throwOutOfBoundsWithMsg(v16, withIntCopy);
      }

      blocks = self->blocks_;
      if (!blocks)
      {
        JreThrowNullPointerException();
      }

      v18 = *(v15 + 2);
      size = blocks->super.size_;
      if ((v14 & 0x80000000) != 0 || v14 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v14);
      }

      *(&blocks->super.size_ + v14 + 2) = WORD2(v18);
      v20 = v14 + 1;
      v21 = self->blocks_;
      v22 = v21->super.size_;
      if (v14 + 1 < 0 || v20 >= v22)
      {
        IOSArray_throwOutOfBoundsWithMsg(v22, (v14 + 1));
      }

      *(&v21->super.size_ + v20 + 2) = WORD1(v18);
      v23 = v14 + 2;
      v24 = self->blocks_;
      v25 = v24->super.size_;
      if (v14 + 2 < 0 || v23 >= v25)
      {
        IOSArray_throwOutOfBoundsWithMsg(v25, (v14 + 2));
      }

      *(&v24->super.size_ + v23 + 2) = v18;
      ++withIntCopy;
      v15 += 8;
      v14 = (v14 + 3);
    }

    while (v11 != withIntCopy);
  }

  return v10;
}

- (void)fillWithInt:(int)int withInt:(int)withInt withLong:(int64_t)long
{
  for (i = (3 * int); i < 3 * withInt; i = (i + 3))
  {
    blocks = self->blocks_;
    if (!blocks)
    {
      JreThrowNullPointerException();
    }

    size = blocks->super.size_;
    if ((i & 0x80000000) != 0 || i >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, i);
    }

    *(&blocks->super.size_ + i + 2) = WORD2(long);
    v9 = self->blocks_;
    v10 = i + 1;
    v11 = v9->super.size_;
    if (i < -1 || v10 >= v11)
    {
      IOSArray_throwOutOfBoundsWithMsg(v11, v10);
    }

    *(&v9->super.size_ + v10 + 2) = WORD1(long);
    v12 = self->blocks_;
    v13 = v12->super.size_;
    v14 = i + 2;
    if (i + 2 < 0 || v14 >= v13)
    {
      IOSArray_throwOutOfBoundsWithMsg(v13, v14);
    }

    v12->buffer_[i] = long;
  }
}

- (int64_t)ramBytesUsed
{
  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000120A8();
  }

  v3 = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_HEADER_;
  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000120A8();
  }

  v4 = OrgApacheLuceneUtilRamUsageEstimator_alignObjectSizeWithLong_(v3 + OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF_ + 8);
  return OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithShortArray_(self->blocks_) + v4;
}

- (id)description
{
  v3 = [-[OrgApacheLuceneUtilPackedPacked16ThreeBlocks getClass](self "getClass")];
  bitsPerValue = self->super.bitsPerValue_;
  [(OrgApacheLuceneUtilPackedPackedInts_MutableImpl *)self size];
  blocks = self->blocks_;
  if (!blocks)
  {
    JreThrowNullPointerException();
  }

  size = blocks->super.size_;
  return JreStrcat("$$I$I$IC", v5, v6, v7, v8, v9, v10, v11, v3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedPacked16ThreeBlocks;
  [(OrgApacheLuceneUtilPackedPacked16ThreeBlocks *)&v3 dealloc];
}

@end
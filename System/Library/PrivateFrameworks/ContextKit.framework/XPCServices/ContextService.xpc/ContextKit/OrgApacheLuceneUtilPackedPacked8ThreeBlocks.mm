@interface OrgApacheLuceneUtilPackedPacked8ThreeBlocks
- (id)description;
- (int)setWithInt:(int)a3 withLongArray:(id)a4 withInt:(int)a5 withInt:(int)a6;
- (int64_t)getWithInt:(int)a3;
- (int64_t)ramBytesUsed;
- (void)dealloc;
- (void)fillWithInt:(int)a3 withInt:(int)a4 withLong:(int64_t)a5;
- (void)setWithInt:(int)a3 withLong:(int64_t)a4;
@end

@implementation OrgApacheLuceneUtilPackedPacked8ThreeBlocks

- (int64_t)getWithInt:(int)a3
{
  blocks = self->blocks_;
  if (!blocks)
  {
    JreThrowNullPointerException();
  }

  v4 = 3 * a3;
  size = blocks->super.size_;
  if (3 * a3 < 0 || v4 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (3 * a3));
  }

  v6 = blocks;
  v7 = *(&blocks->super.size_ + v4 + 4);
  v8 = v4 + 1;
  if (v4 + 1 < 0 || v8 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v8);
  }

  v9 = *(&blocks->super.size_ + v4 + 5);
  v10 = (v4 + 2);
  if (v10 < 0 || v10 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v10);
  }

  return (v7 << 16) | (v9 << 8) | *(&v6->super.size_ + v10 + 4);
}

- (void)setWithInt:(int)a3 withLong:(int64_t)a4
{
  blocks = self->blocks_;
  if (!blocks)
  {
    JreThrowNullPointerException();
  }

  v6 = 3 * a3;
  size = blocks->super.size_;
  if (3 * a3 < 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (3 * a3));
  }

  *(&blocks->super.size_ + v6 + 4) = BYTE2(a4);
  v8 = self->blocks_;
  v9 = v8->super.size_;
  v10 = v6 + 1;
  if (v6 + 1 < 0 || v10 >= v9)
  {
    IOSArray_throwOutOfBoundsWithMsg(v9, v10);
  }

  *(&v8->super.size_ + v10 + 4) = BYTE1(a4);
  v11 = self->blocks_;
  v12 = v11->super.size_;
  v13 = v6 + 2;
  if (v6 + 2 < 0 || v13 >= v12)
  {
    IOSArray_throwOutOfBoundsWithMsg(v12, (v6 + 2));
  }

  *(&v11->super.size_ + v13 + 4) = a4;
}

- (int)setWithInt:(int)a3 withLongArray:(id)a4 withInt:(int)a5 withInt:(int)a6
{
  v10 = JavaLangMath_minWithInt_withInt_((self->super.valueCount_ - a3), a6);
  v11 = v10 + a5;
  if (v10 + a5 > a5)
  {
    v12 = a4;
    v13 = a5;
    v14 = (3 * a3);
    v15 = a4 + 8 * a5;
    do
    {
      v16 = v12[2];
      if (v13 < 0 || v13 >= v16)
      {
        IOSArray_throwOutOfBoundsWithMsg(v16, v13);
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

      *(&blocks->super.size_ + v14 + 4) = BYTE2(v18);
      v20 = v14 + 1;
      v21 = self->blocks_;
      v22 = v21->super.size_;
      if (v14 + 1 < 0 || v20 >= v22)
      {
        IOSArray_throwOutOfBoundsWithMsg(v22, (v14 + 1));
      }

      *(&v21->super.size_ + v20 + 4) = BYTE1(v18);
      v23 = v14 + 2;
      v24 = self->blocks_;
      v25 = v24->super.size_;
      if (v14 + 2 < 0 || v23 >= v25)
      {
        IOSArray_throwOutOfBoundsWithMsg(v25, (v14 + 2));
      }

      *(&v24->super.size_ + v23 + 4) = v18;
      ++v13;
      v15 += 8;
      v14 = (v14 + 3);
    }

    while (v11 != v13);
  }

  return v10;
}

- (void)fillWithInt:(int)a3 withInt:(int)a4 withLong:(int64_t)a5
{
  for (i = (3 * a3); i < 3 * a4; i = (i + 3))
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

    *(&blocks->super.size_ + i + 4) = BYTE2(a5);
    v9 = self->blocks_;
    v10 = i + 1;
    v11 = v9->super.size_;
    if (i < -1 || v10 >= v11)
    {
      IOSArray_throwOutOfBoundsWithMsg(v11, v10);
    }

    *(&v9->super.size_ + v10 + 4) = BYTE1(a5);
    v12 = self->blocks_;
    v13 = v12->super.size_;
    v14 = i + 2;
    if (i + 2 < 0 || v14 >= v13)
    {
      IOSArray_throwOutOfBoundsWithMsg(v13, v14);
    }

    *(&v12->super.size_ + i + 6) = a5;
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
  return OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithByteArray_(self->blocks_) + v4;
}

- (id)description
{
  v3 = [-[OrgApacheLuceneUtilPackedPacked8ThreeBlocks getClass](self "getClass")];
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
  v3.super_class = OrgApacheLuceneUtilPackedPacked8ThreeBlocks;
  [(OrgApacheLuceneUtilPackedPacked8ThreeBlocks *)&v3 dealloc];
}

@end
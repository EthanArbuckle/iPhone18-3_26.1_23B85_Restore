@interface OrgApacheLuceneUtilPackedPacked64
- (id)description;
- (int64_t)getWithInt:(int)int;
- (int64_t)ramBytesUsed;
- (void)dealloc;
- (void)setWithInt:(int)int withLong:(int64_t)long;
@end

@implementation OrgApacheLuceneUtilPackedPacked64

- (int64_t)getWithInt:(int)int
{
  v4 = self->super.bitsPerValue_ * int;
  v5 = v4 >> 6;
  bpvMinusBlockSize = self->bpvMinusBlockSize_;
  v7 = v4 & 0x3F;
  blocks = self->blocks_;
  v9 = v7 + bpvMinusBlockSize;
  if (!(((v7 + bpvMinusBlockSize) < 0) ^ __OFADD__(v7, bpvMinusBlockSize) | (v7 + bpvMinusBlockSize == 0)))
  {
    if (blocks)
    {
      v10 = v5 << 32;
      size = blocks->super.size_;
      if ((v5 & 0x80000000) != 0 || size <= v5)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v5);
      }

      v12 = blocks;
      v13 = blocks->buffer_[v5] << v9;
      v14 = (&_mh_execute_header + v10) >> 32;
      if (v14 < 0 || size <= v14)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, (&_mh_execute_header + v10) >> 32);
      }

      return ((v12->buffer_[v14] >> -v9) | v13) & self->maskRight_;
    }

LABEL_12:
    JreThrowNullPointerException();
  }

  if (!blocks)
  {
    goto LABEL_12;
  }

  v16 = blocks->super.size_;
  if ((v5 & 0x80000000) != 0 || v16 <= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(v16, v5);
  }

  return self->maskRight_ & (blocks->buffer_[v5] >> -v9);
}

- (void)setWithInt:(int)int withLong:(int64_t)long
{
  v5 = self->super.bitsPerValue_ * int;
  v6 = v5 >> 6;
  blocks = self->blocks_;
  v8 = (v5 & 0x3F) + self->bpvMinusBlockSize_;
  v9 = (v5 >> 6);
  size = blocks->super.size_;
  v12 = ((v5 >> 6) & 0x80000000) != 0 || size <= v6;
  if (v8 > 0)
  {
    if (v12)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v6);
    }

    if (blocks)
    {
      v14 = blocks->super.size_;
      if ((v6 & 0x80000000) != 0 || v14 <= v6)
      {
        IOSArray_throwOutOfBoundsWithMsg(v14, v6);
      }

      blocks->buffer_[v9] = blocks->buffer_[v9] & ~(self->maskRight_ >> v8) | (long >> v8);
      v15 = self->blocks_;
      v13 = v6 << 32;
      v16 = (&_mh_execute_header + (v6 << 32)) >> 32;
      v17 = v15->super.size_;
      if (v16 < 0 || v17 <= v16)
      {
        IOSArray_throwOutOfBoundsWithMsg(v17, (&_mh_execute_header + v13) >> 32);
      }

      v18 = self->blocks_;
      if (v16 < 0 || v17 <= v16)
      {
        IOSArray_throwOutOfBoundsWithMsg(v17, (&_mh_execute_header + v13) >> 32);
      }

      v15->buffer_[v16] = v15->buffer_[v16] & (0xFFFFFFFFFFFFFFFFLL >> (v8 & 0x3F)) | (long << -v8);
      return;
    }

LABEL_27:
    JreThrowNullPointerException();
  }

  if (v12)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v6);
  }

  if (!blocks)
  {
    goto LABEL_27;
  }

  v19 = blocks->super.size_;
  if ((v6 & 0x80000000) != 0 || v19 <= v6)
  {
    IOSArray_throwOutOfBoundsWithMsg(v19, v6);
  }

  blocks->buffer_[v9] = blocks->buffer_[v9] & ~(self->maskRight_ << -v8) | (long << -v8);
}

- (id)description
{
  bitsPerValue = self->super.bitsPerValue_;
  [(OrgApacheLuceneUtilPackedPackedInts_MutableImpl *)self size];
  blocks = self->blocks_;
  if (!blocks)
  {
    JreThrowNullPointerException();
  }

  size = blocks->super.size_;
  return JreStrcat("$I$I$IC", v4, v5, v6, v7, v8, v9, v10, @"Packed64(bitsPerValue=");
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

  v4 = OrgApacheLuceneUtilRamUsageEstimator_alignObjectSizeWithLong_(v3 + OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF_ + 20);
  return OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithLongArray_(self->blocks_) + v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedPacked64;
  [(OrgApacheLuceneUtilPackedPacked64 *)&v3 dealloc];
}

@end
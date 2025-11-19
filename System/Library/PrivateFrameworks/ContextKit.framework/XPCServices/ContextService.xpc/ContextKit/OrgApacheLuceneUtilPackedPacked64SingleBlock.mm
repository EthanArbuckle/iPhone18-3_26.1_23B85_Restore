@interface OrgApacheLuceneUtilPackedPacked64SingleBlock
+ (void)initialize;
- (id)description;
- (id)getFormat;
- (int64_t)ramBytesUsed;
- (void)dealloc;
- (void)fillWithInt:(int)a3 withInt:(int)a4 withLong:(int64_t)a5;
@end

@implementation OrgApacheLuceneUtilPackedPacked64SingleBlock

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
  return OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithLongArray_(self->blocks_) + v4;
}

- (void)fillWithInt:(int)a3 withInt:(int)a4 withLong:(int64_t)a5
{
  v11 = 64 / self->super.bitsPerValue_;
  if (a4 - a3 <= 2 * v11)
  {
    v30.receiver = self;
    v30.super_class = OrgApacheLuceneUtilPackedPacked64SingleBlock;
    [OrgApacheLuceneUtilPackedPackedInts_Mutable fillWithInt:"fillWithInt:withInt:withLong:" withInt:? withLong:?];
  }

  else
  {
    v12 = a3 % v11;
    if (!(a3 % v11) || v11 < 0)
    {
      v13 = a3;
    }

    else
    {
      do
      {
        v13 = a3 + 1;
        [OrgApacheLuceneUtilPackedPacked64SingleBlock setWithInt:"setWithInt:withLong:" withLong:?];
        ++v12;
        a3 = v13;
      }

      while (v12 < v11);
    }

    if (v11 < 1)
    {
      v28 = 0;
    }

    else
    {
      p_bitsPerValue = &self->super.bitsPerValue_;
      v15 = (v11 + 1) & 0x7FFFFFFE;
      v16 = vdup_n_s32(v11 - 1);
      v17 = vld1_dup_f32(p_bitsPerValue);
      v18 = &_mh_execute_header;
      v19 = vdupq_n_s64(a5);
      v20 = 0uLL;
      do
      {
        v21 = v20;
        v22 = v18;
        v23 = vand_s8(vmul_s32(v17, v18), 0x3F0000003FLL);
        v24.i64[0] = v23.u32[0];
        v24.i64[1] = v23.u32[1];
        v20 = vorrq_s8(vshlq_u64(v19, v24), v21);
        v18 = vadd_s32(v18, 0x200000002);
        v15 -= 2;
      }

      while (v15);
      v25 = vcgt_u32(v22, v16);
      v26.i64[0] = v25.i32[0];
      v26.i64[1] = v25.i32[1];
      v27 = vbslq_s8(v26, v21, v20);
      v28 = vorr_s8(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
    }

    JavaUtilArrays_fillWithLongArray_withInt_withInt_withLong_(self->blocks_, (v13 / v11), (a4 / v11), v28, a5, v5, v6, v7);
    v29 = (a4 / v11 * v11);
    if (v29 < a4)
    {
      do
      {
        [(OrgApacheLuceneUtilPackedPacked64SingleBlock *)self setWithInt:v29 withLong:a5];
        v29 = (v29 + 1);
      }

      while (a4 != v29);
    }
  }
}

- (id)getFormat
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100003648();
  }

  return qword_100557918;
}

- (id)description
{
  v3 = [-[OrgApacheLuceneUtilPackedPacked64SingleBlock getClass](self "getClass")];
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
  v3.super_class = OrgApacheLuceneUtilPackedPacked64SingleBlock;
  [(OrgApacheLuceneUtilPackedPacked64SingleBlock *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v3 = 0x2000000015;
    v2[0] = xmmword_1003140A8;
    v2[1] = unk_1003140B8;
    v2[2] = xmmword_1003140C8;
    JreStrongAssignAndConsume(&qword_100553EA8, [IOSIntArray newArrayWithInts:v2 count:14]);
    atomic_store(1u, &OrgApacheLuceneUtilPackedPacked64SingleBlock__initialized);
  }
}

@end
@interface OrgApacheLuceneUtilPackedDirect8
- (int)setWithInt:(int)int withLongArray:(id)array withInt:(int)withInt withInt:(int)a6;
- (int64_t)ramBytesUsed;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilPackedDirect8

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
  return OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithByteArray_(self->values_) + v4;
}

- (int)setWithInt:(int)int withLongArray:(id)array withInt:(int)withInt withInt:(int)a6
{
  LODWORD(v8) = int;
  v10 = JavaLangMath_minWithInt_withInt_((self->super.valueCount_ - int), a6);
  v11 = v10 + v8;
  if (v10 + v8 > v8)
  {
    v8 = v8;
    do
    {
      withIntCopy = withInt;
      v13 = *(array + 2);
      if (withInt < 0 || withInt >= v13)
      {
        IOSArray_throwOutOfBoundsWithMsg(v13, withInt);
      }

      values = self->values_;
      if (!values)
      {
        JreThrowNullPointerException();
      }

      size = values->super.size_;
      if (v8 < 0 || v8 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v8);
      }

      *(&values->super.size_ + v8++ + 4) = *(array + withIntCopy + 2);
      withInt = withIntCopy + 1;
    }

    while (v11 != v8);
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedDirect8;
  [(OrgApacheLuceneUtilPackedDirect8 *)&v3 dealloc];
}

@end
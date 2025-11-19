@interface OrgApacheLuceneUtilPackedPackedLongValues_Builder
+ (void)initialize;
- (id)addWithLong:(int64_t)a3;
- (id)build;
- (id)pack;
- (void)dealloc;
- (void)finish;
- (void)growWithInt:(int)a3;
@end

@implementation OrgApacheLuceneUtilPackedPackedLongValues_Builder

- (id)build
{
  [OrgApacheLuceneUtilPackedPackedLongValues_Builder finish]_0(self, v2);
  JreStrongAssign(&self->pending_, 0);
  v4 = JavaUtilArrays_copyOfWithNSObjectArray_withInt_(self->values_, self->valuesOff_);
  if ((atomic_load_explicit(&OrgApacheLuceneUtilPackedPackedLongValues__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000CB1D4();
  }

  v5 = qword_1005544B0;
  v6 = OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithOrgApacheLuceneUtilAccountableArray_(v4);
  v7 = new_OrgApacheLuceneUtilPackedPackedLongValues_initWithInt_withInt_withOrgApacheLuceneUtilPackedPackedInts_ReaderArray_withLong_withLong_(self->pageShift_, self->pageMask_, v4, self->size_, v6 + v5);

  return v7;
}

- (void)finish
{
  if (*(result + 15) >= 1)
  {
    v2 = result;
    v3 = result[5];
    if (!v3)
    {
      JreThrowNullPointerException();
    }

    v4 = *(v3 + 8);
    if (v4 == *(result + 14))
    {
      [result growWithInt:(v4 + 1)];
    }

    return [OrgApacheLuceneUtilPackedPackedLongValues_Builder pack]_0(v2, a2);
  }

  return result;
}

- (id)addWithLong:(int64_t)a3
{
  pending = self->pending_;
  if (!pending)
  {
    v17 = new_JavaLangIllegalStateException_initWithNSString_(@"Cannot be reused after build()");
    objc_exception_throw(v17);
  }

  pendingOff = self->pendingOff_;
  if (pendingOff == pending->super.size_)
  {
    values = self->values_;
    if (!values)
    {
      JreThrowNullPointerException();
    }

    size = values->super.size_;
    if (size == self->valuesOff_)
    {
      [(OrgApacheLuceneUtilPackedPackedLongValues_Builder *)self growWithInt:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(size + 1, 8, a3, v3, v4, v5, v6, v7)];
    }

    [OrgApacheLuceneUtilPackedPackedLongValues_Builder pack]_0(self, v8);
    pending = self->pending_;
    pendingOff = self->pendingOff_;
  }

  self->pendingOff_ = pendingOff + 1;
  v15 = pending->super.size_;
  if ((pendingOff & 0x80000000) != 0 || pendingOff >= v15)
  {
    IOSArray_throwOutOfBoundsWithMsg(v15, pendingOff);
  }

  pending->buffer_[pendingOff] = a3;
  ++self->size_;
  return self;
}

- (id)pack
{
  LODWORD(a2) = *(a1 + 16);
  [a1 packWithLongArray:*(a1 + 24) withInt:*(a1 + 60) withInt:*(a1 + 56) withFloat:a2];
  v3 = *(a1 + 40);
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = *(a1 + 56);
  v5 = *(v3 + 8);
  if (v4 < 0 || v4 >= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(v5, v4);
  }

  v6 = *(v3 + 24 + 8 * v4);
  if (!v6)
  {
LABEL_6:
    JreThrowNullPointerException();
  }

  result = [v6 ramBytesUsed];
  *(a1 + 48) += result;
  *(a1 + 56) = (*(a1 + 56) + 1);
  return result;
}

- (void)growWithInt:(int)a3
{
  p_values = &self->values_;
  v5 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithNSObjectArray_(self->values_);
  v6 = *p_values;
  p_values[1] = (p_values[1] - v5);
  v7 = JavaUtilArrays_copyOfWithNSObjectArray_withInt_(v6, a3);
  JreStrongAssign(p_values, v7);
  p_values[1] = (p_values[1] + OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithNSObjectArray_(*p_values));
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedPackedLongValues_Builder;
  [(OrgApacheLuceneUtilPackedPackedLongValues_Builder *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = OrgApacheLuceneUtilPackedPackedLongValues_Builder_class_();
    qword_1005544C8 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v2);
    atomic_store(1u, OrgApacheLuceneUtilPackedPackedLongValues_Builder__initialized);
  }
}

@end
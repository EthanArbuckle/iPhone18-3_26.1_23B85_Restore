@interface OrgApacheLuceneUtilPackedAbstractPagedMutable
- (NSString)description;
- (int)lastPageSizeWithLong:(int64_t)a3;
- (int64_t)baseRamBytesUsed;
- (int64_t)getWithLong:(int64_t)a3;
- (int64_t)ramBytesUsed;
- (void)dealloc;
- (void)fillPages;
- (void)setWithLong:(int64_t)a3 withLong:(int64_t)a4;
@end

@implementation OrgApacheLuceneUtilPackedAbstractPagedMutable

- (void)fillPages
{
  v3 = OrgApacheLuceneUtilPackedPackedInts_numBlocksWithLong_withInt_(self->size_, self->pageMask_ + 1);
  v4 = (v3 - 1);
  if (v3 >= 1)
  {
    v5 = 0;
    v6 = v3;
    do
    {
      if (v4 == v5)
      {
        pageMask = self->pageMask_;
        if ((pageMask & self->size_) != 0)
        {
          v8 = pageMask & self->size_;
        }

        else
        {
          v8 = (pageMask + 1);
        }
      }

      else
      {
        v8 = (self->pageMask_ + 1);
      }

      subMutables = self->subMutables_;
      if (!subMutables)
      {
        JreThrowNullPointerException();
      }

      IOSObjectArray_Set(subMutables, v5++, [(OrgApacheLuceneUtilPackedAbstractPagedMutable *)self newMutableWithInt:v8 withInt:self->bitsPerValue_]);
    }

    while (v6 != v5);
  }
}

- (int)lastPageSizeWithLong:(int64_t)a3
{
  pageMask = self->pageMask_;
  if ((pageMask & a3) != 0)
  {
    return pageMask & a3;
  }

  else
  {
    return pageMask + 1;
  }
}

- (int64_t)getWithLong:(int64_t)a3
{
  subMutables = self->subMutables_;
  if (!subMutables)
  {
    goto LABEL_8;
  }

  pageMask = self->pageMask_;
  v5 = a3 >> self->pageShift_;
  size = subMutables->super.size_;
  if ((v5 & 0x80000000) != 0 || size <= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v5);
  }

  v7 = (&subMutables->elementType_)[v5];
  if (!v7)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  v8 = pageMask & a3;

  return [(IOSClass *)v7 getWithInt:v8];
}

- (void)setWithLong:(int64_t)a3 withLong:(int64_t)a4
{
  subMutables = self->subMutables_;
  if (!subMutables)
  {
    goto LABEL_8;
  }

  pageMask = self->pageMask_;
  v6 = a3 >> self->pageShift_;
  size = subMutables->super.size_;
  if ((v6 & 0x80000000) != 0 || size <= v6)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v6);
  }

  v8 = (&subMutables->elementType_)[v6];
  if (!v8)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  v9 = pageMask & a3;

  [(IOSClass *)v8 setWithInt:v9 withLong:a4];
}

- (int64_t)baseRamBytesUsed
{
  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000120A8();
  }

  v2 = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_HEADER_;
  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000120A8();
  }

  return v2 + OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF_ + 20;
}

- (int64_t)ramBytesUsed
{
  v3 = OrgApacheLuceneUtilRamUsageEstimator_alignObjectSizeWithLong_([(OrgApacheLuceneUtilPackedAbstractPagedMutable *)self baseRamBytesUsed]);
  v4 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithNSObjectArray_(self->subMutables_);
  v5 = OrgApacheLuceneUtilRamUsageEstimator_alignObjectSizeWithLong_(v4);
  subMutables = self->subMutables_;
  if (!subMutables)
  {
LABEL_7:
    JreThrowNullPointerException();
  }

  v7 = v5 + v3;
  p_elementType = &subMutables->elementType_;
  v9 = &(&subMutables->elementType_)[subMutables->super.size_];
  while (p_elementType < v9)
  {
    v10 = *p_elementType;
    if (!*p_elementType)
    {
      goto LABEL_7;
    }

    ++p_elementType;
    v7 += [v10 ramBytesUsed];
  }

  return v7;
}

- (NSString)description
{
  v3 = [-[OrgApacheLuceneUtilPackedAbstractPagedMutable getClass](self "getClass")];
  v13 = (self->pageMask_ + 1);
  size = self->size_;
  return JreStrcat("$$J$IC", v4, v5, v6, v7, v8, v9, v10, v3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedAbstractPagedMutable;
  [(OrgApacheLuceneUtilPackedAbstractPagedMutable *)&v3 dealloc];
}

@end
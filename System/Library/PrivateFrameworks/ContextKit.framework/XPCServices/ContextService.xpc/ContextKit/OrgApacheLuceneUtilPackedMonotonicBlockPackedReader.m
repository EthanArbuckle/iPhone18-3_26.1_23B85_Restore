@interface OrgApacheLuceneUtilPackedMonotonicBlockPackedReader
+ (int64_t)expectedWithLong:(int64_t)a3 withFloat:(float)a4 withInt:(int)a5;
- (NSString)description;
- (int64_t)getWithLong:(int64_t)a3;
- (int64_t)ramBytesUsed;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilPackedMonotonicBlockPackedReader

+ (int64_t)expectedWithLong:(int64_t)a3 withFloat:(float)a4 withInt:(int)a5
{
  v5 = a5 * a4;
  v6 = v5;
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (v5 < 0.0)
  {
    v7 = 0x8000000000000000;
  }

  if (v6 == 0x8000000000000000)
  {
    v6 = v7;
  }

  return v6 + a3;
}

- (int64_t)getWithLong:(int64_t)a3
{
  minValues = self->minValues_;
  if (!minValues)
  {
    goto LABEL_17;
  }

  blockMask = self->blockMask_;
  v6 = a3 >> self->blockShift_;
  size = minValues->super.size_;
  if ((v6 & 0x80000000) != 0 || size <= v6)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v6);
  }

  averages = self->averages_;
  if (!averages)
  {
    goto LABEL_17;
  }

  v9 = minValues->buffer_[v6];
  v10 = averages->super.size_;
  if ((v6 & 0x80000000) != 0 || v10 <= v6)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, v6);
  }

  subReaders = self->subReaders_;
  if (!subReaders)
  {
    goto LABEL_17;
  }

  v12 = subReaders->super.size_;
  if ((v6 & 0x80000000) != 0 || v12 <= v6)
  {
    IOSArray_throwOutOfBoundsWithMsg(v12, v6);
  }

  v13 = (&subReaders->elementType_)[v6];
  if (!v13)
  {
LABEL_17:
    JreThrowNullPointerException();
  }

  v14 = *(&averages->super.size_ + v6 + 1) * (blockMask & a3);
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  if (v14 < 0.0)
  {
    v15 = 0x8000000000000000;
  }

  if (v14 == 0x8000000000000000)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  return [(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader *)self decodeDeltaWithLong:[(IOSClass *)v13 getWithInt:?]]+ v9 + v16;
}

- (int64_t)ramBytesUsed
{
  v3 = OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithLongArray_(self->minValues_);
  v4 = OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithFloatArray_(self->averages_);
  subReaders = self->subReaders_;
  if (!subReaders)
  {
LABEL_7:
    JreThrowNullPointerException();
  }

  v6 = v4 + v3;
  p_elementType = &subReaders->elementType_;
  v8 = &(&subReaders->elementType_)[subReaders->super.size_];
  while (p_elementType < v8)
  {
    v9 = *p_elementType;
    if (!*p_elementType)
    {
      goto LABEL_7;
    }

    ++p_elementType;
    v6 += [v9 ramBytesUsed];
  }

  return v6;
}

- (NSString)description
{
  subReaders = self->subReaders_;
  if (!subReaders)
  {
    JreThrowNullPointerException();
  }

  size = subReaders->super.size_;
  if (size)
  {
    v5 = self->sumBPV_ / size;
  }

  v6 = [-[OrgApacheLuceneUtilPackedMonotonicBlockPackedReader getClass](self "getClass")];
  valueCount = self->valueCount_;
  v15 = (1 << self->blockShift_);
  return JreStrcat("$$I$J$JC", v7, v8, v9, v10, v11, v12, v13, v6);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedMonotonicBlockPackedReader;
  [(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader *)&v3 dealloc];
}

@end
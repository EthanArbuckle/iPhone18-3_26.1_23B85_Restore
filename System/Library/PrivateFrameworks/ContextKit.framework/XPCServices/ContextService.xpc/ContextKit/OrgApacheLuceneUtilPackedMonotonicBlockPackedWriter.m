@interface OrgApacheLuceneUtilPackedMonotonicBlockPackedWriter
- (void)addWithLong:(int64_t)a3;
- (void)flush;
@end

@implementation OrgApacheLuceneUtilPackedMonotonicBlockPackedWriter

- (void)addWithLong:(int64_t)a3
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedMonotonicBlockPackedWriter;
  [(OrgApacheLuceneUtilPackedAbstractBlockPackedWriter *)&v3 addWithLong:a3];
}

- (void)flush
{
  off = self->super.off_;
  if (off == 1)
  {
    v4 = 0.0;
    LODWORD(v5) = 1;
  }

  else
  {
    values = self->super.values_;
    if (!values)
    {
      goto LABEL_34;
    }

    size = values->super.size_;
    v8 = off - 1;
    if (v8 < 0 || v8 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v8);
    }

    v9 = self->super.values_;
    v10 = values->buffer_[v8];
    if (size <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, 0);
    }

    LODWORD(v5) = self->super.off_;
    v4 = (v10 - values->buffer_[0]) / (v5 - 1);
  }

  v11 = self->super.values_;
  if (!v11)
  {
    goto LABEL_34;
  }

  v12 = v11->super.size_;
  if (v12 < 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v12, 0);
  }

  v13 = v11->buffer_[0];
  if (v5 > 1)
  {
    v14 = 1;
    do
    {
      v15 = self->super.values_;
      v16 = v15->super.size_;
      if (v14 >= v16)
      {
        IOSArray_throwOutOfBoundsWithMsg(v16, v14);
      }

      v17 = v15->buffer_[v14];
      v18 = OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_expectedWithLong_withFloat_withInt_(v13, v14, v4);
      v19 = v17 - v18;
      if (v17 >= v18)
      {
        v19 = 0;
      }

      v13 += v19;
      ++v14;
      v5 = self->super.off_;
    }

    while (v14 < v5);
  }

  if (v5 < 1)
  {
    v21 = 0;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    do
    {
      v22 = self->super.values_;
      v23 = v22->super.size_;
      if (v20 >= v23)
      {
        IOSArray_throwOutOfBoundsWithMsg(v23, v20);
      }

      v24 = v22->buffer_[v20];
      v25 = OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_expectedWithLong_withFloat_withInt_(v13, v20, v4);
      v26 = self->super.values_;
      v27 = v26->super.size_;
      if (v20 >= v27)
      {
        IOSArray_throwOutOfBoundsWithMsg(v27, v20);
      }

      v26->buffer_[v20] = v24 - v25;
      v28 = self->super.values_;
      v29 = v28->super.size_;
      if (v20 >= v29)
      {
        IOSArray_throwOutOfBoundsWithMsg(v29, v20);
      }

      v21 = JavaLangMath_maxWithLong_withLong_(v21, v28->buffer_[v20++]);
    }

    while (v20 < self->super.off_);
  }

  out = self->super.out_;
  if (!out)
  {
LABEL_34:
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreDataOutput *)out writeZLongWithLong:v13];
  [(OrgApacheLuceneStoreDataOutput *)self->super.out_ writeIntWithInt:JavaLangFloat_floatToIntBitsWithFloat_(v4)];
  if (v21)
  {
    v38 = OrgApacheLuceneUtilPackedPackedInts_bitsRequiredWithLong_(v21, v31, v32, v33, v34, v35, v36, v37);
    [(OrgApacheLuceneStoreDataOutput *)self->super.out_ writeVIntWithInt:v38];
    [(OrgApacheLuceneUtilPackedAbstractBlockPackedWriter *)self writeValuesWithInt:v38];
  }

  else
  {
    [(OrgApacheLuceneStoreDataOutput *)self->super.out_ writeVIntWithInt:0];
  }

  self->super.off_ = 0;
}

@end
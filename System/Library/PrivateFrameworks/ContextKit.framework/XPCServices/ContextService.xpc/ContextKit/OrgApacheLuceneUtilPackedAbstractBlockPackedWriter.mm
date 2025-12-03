@interface OrgApacheLuceneUtilPackedAbstractBlockPackedWriter
- (void)addBlockOfZeros;
- (void)addWithLong:(int64_t)long;
- (void)dealloc;
- (void)finish;
- (void)resetWithOrgApacheLuceneStoreDataOutput:(id)output;
@end

@implementation OrgApacheLuceneUtilPackedAbstractBlockPackedWriter

- (void)resetWithOrgApacheLuceneStoreDataOutput:(id)output
{
  JreStrongAssign(&self->out_, output);
  self->off_ = 0;
  self->ord_ = 0;
  self->finished_ = 0;
}

- (void)addWithLong:(int64_t)long
{
  sub_10000D034(self);
  values = self->values_;
  if (!values)
  {
    JreThrowNullPointerException();
  }

  off = self->off_;
  if (off == values->super.size_)
  {
    [(OrgApacheLuceneUtilPackedAbstractBlockPackedWriter *)self flush];
    values = self->values_;
    off = self->off_;
  }

  self->off_ = off + 1;
  size = values->super.size_;
  if ((off & 0x80000000) != 0 || off >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, off);
  }

  values->buffer_[off] = long;
  ++self->ord_;
}

- (void)addBlockOfZeros
{
  sub_10000D034(self);
  off = self->off_;
  values = self->values_;
  if (!off)
  {
    if (values)
    {
      goto LABEL_6;
    }

LABEL_9:
    JreThrowNullPointerException();
  }

  if (!values)
  {
    goto LABEL_9;
  }

  if (off != values->super.size_)
  {
    v12 = JreStrcat("I", v3, v4, v5, v6, v7, v8, v9, self->off_);
    v13 = new_JavaLangIllegalStateException_initWithNSString_(v12);
    objc_exception_throw(v13);
  }

LABEL_6:
  if (off == values->super.size_)
  {
    [(OrgApacheLuceneUtilPackedAbstractBlockPackedWriter *)self flush];
    values = self->values_;
  }

  JavaUtilArrays_fillWithLongArray_withLong_(values, 0);
  size = self->values_->super.size_;
  self->off_ = size;
  self->ord_ += size;
}

- (void)finish
{
  sub_10000D034(self);
  if (self->off_ >= 1)
  {
    [(OrgApacheLuceneUtilPackedAbstractBlockPackedWriter *)self flush];
  }

  self->finished_ = 1;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedAbstractBlockPackedWriter;
  [(OrgApacheLuceneUtilPackedAbstractBlockPackedWriter *)&v3 dealloc];
}

@end
@interface OrgApacheLuceneUtilPackedPackedLongValues_Iterator
- (int64_t)next;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilPackedPackedLongValues_Iterator

- (int64_t)next
{
  currentValues = self->currentValues_;
  if (!currentValues)
  {
    JreThrowNullPointerException();
  }

  pOff = self->pOff_;
  self->pOff_ = pOff + 1;
  size = currentValues->super.size_;
  if (pOff < 0 || pOff >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, pOff);
  }

  v6 = currentValues->buffer_[pOff];
  if (pOff + 1 == self->currentCount_)
  {
    *&self->vOff_ = (self->vOff_ + 1);
    sub_1000CA8E8(self);
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedPackedLongValues_Iterator;
  [(OrgApacheLuceneUtilPackedPackedLongValues_Iterator *)&v3 dealloc];
}

@end
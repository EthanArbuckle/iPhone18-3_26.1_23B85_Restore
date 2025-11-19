@interface OrgApacheLuceneUtilIntsRefBuilder
- (OrgApacheLuceneUtilIntsRefBuilder)init;
- (id)ints;
- (id)toIntsRef;
- (int)length;
- (void)appendWithInt:(int)a3;
- (void)copyIntsWithOrgApacheLuceneUtilIntsRef:(id)a3;
- (void)copyUTF8BytesWithOrgApacheLuceneUtilBytesRef:(id)a3;
- (void)dealloc;
- (void)setLengthWithInt:(int)a3;
@end

@implementation OrgApacheLuceneUtilIntsRefBuilder

- (OrgApacheLuceneUtilIntsRefBuilder)init
{
  v3 = new_OrgApacheLuceneUtilIntsRef_init();
  JreStrongAssignAndConsume(&self->ref_, v3);
  return self;
}

- (id)ints
{
  ref = self->ref_;
  if (!ref)
  {
    JreThrowNullPointerException();
  }

  return ref->ints_;
}

- (int)length
{
  ref = self->ref_;
  if (!ref)
  {
    JreThrowNullPointerException();
  }

  return ref->length_;
}

- (void)setLengthWithInt:(int)a3
{
  ref = self->ref_;
  if (!ref)
  {
    JreThrowNullPointerException();
  }

  ref->length_ = a3;
}

- (void)appendWithInt:(int)a3
{
  ref = self->ref_;
  if (!ref || ([(OrgApacheLuceneUtilIntsRefBuilder *)self growWithInt:(ref->length_ + 1)], v6 = self->ref_, (ints = v6->ints_) == 0))
  {
    JreThrowNullPointerException();
  }

  length = v6->length_;
  v6->length_ = length + 1;
  size = ints->super.size_;
  if (length < 0 || length >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, length);
  }

  *(&ints->super.size_ + length + 1) = a3;
}

- (void)copyIntsWithOrgApacheLuceneUtilIntsRef:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = *(a3 + 4);
  v5 = *(a3 + 5);
  v6 = *(a3 + 1);

  [(OrgApacheLuceneUtilIntsRefBuilder *)self copyIntsWithIntArray:v6 withInt:v4 withInt:v5];
}

- (void)copyUTF8BytesWithOrgApacheLuceneUtilBytesRef:(id)a3
{
  if (!a3 || ([(OrgApacheLuceneUtilIntsRefBuilder *)self growWithInt:*(a3 + 5)], v5 = OrgApacheLuceneUtilUnicodeUtil_UTF8toUTF32WithOrgApacheLuceneUtilBytesRef_withIntArray_(a3, self->ref_->ints_), (ref = self->ref_) == 0))
  {
    JreThrowNullPointerException();
  }

  ref->length_ = v5;
}

- (id)toIntsRef
{
  v2 = [(OrgApacheLuceneUtilIntsRefBuilder *)self get];

  return OrgApacheLuceneUtilIntsRef_deepCopyOfWithOrgApacheLuceneUtilIntsRef_(v2);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilIntsRefBuilder;
  [(OrgApacheLuceneUtilIntsRefBuilder *)&v3 dealloc];
}

@end
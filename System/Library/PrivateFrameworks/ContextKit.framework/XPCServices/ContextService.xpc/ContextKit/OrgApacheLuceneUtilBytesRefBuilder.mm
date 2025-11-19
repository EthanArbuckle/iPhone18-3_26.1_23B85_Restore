@interface OrgApacheLuceneUtilBytesRefBuilder
- (OrgApacheLuceneUtilBytesRefBuilder)init;
- (id)bytes;
- (id)toBytesRef;
- (int)length;
- (void)appendWithByte:(char)a3;
- (void)appendWithOrgApacheLuceneUtilBytesRef:(id)a3;
- (void)appendWithOrgApacheLuceneUtilBytesRefBuilder:(id)a3;
- (void)copyBytesWithOrgApacheLuceneUtilBytesRef:(id)a3;
- (void)copyBytesWithOrgApacheLuceneUtilBytesRefBuilder:(id)a3;
- (void)copyCharsWithCharArray:(id)a3 withInt:(int)a4 withInt:(int)a5;
- (void)copyCharsWithJavaLangCharSequence:(id)a3;
- (void)dealloc;
- (void)setLengthWithInt:(int)a3;
@end

@implementation OrgApacheLuceneUtilBytesRefBuilder

- (OrgApacheLuceneUtilBytesRefBuilder)init
{
  v3 = new_OrgApacheLuceneUtilBytesRef_init();
  JreStrongAssignAndConsume(&self->ref_, v3);
  return self;
}

- (id)bytes
{
  ref = self->ref_;
  if (!ref)
  {
    JreThrowNullPointerException();
  }

  return ref->bytes_;
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

- (void)appendWithByte:(char)a3
{
  ref = self->ref_;
  if (!ref || ([(OrgApacheLuceneUtilBytesRefBuilder *)self growWithInt:(ref->length_ + 1)], v6 = self->ref_, (bytes = v6->bytes_) == 0))
  {
    JreThrowNullPointerException();
  }

  length = v6->length_;
  v6->length_ = length + 1;
  size = bytes->super.size_;
  if (length < 0 || length >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, length);
  }

  *(&bytes->super.size_ + length + 4) = a3;
}

- (void)appendWithOrgApacheLuceneUtilBytesRef:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = *(a3 + 4);
  v5 = *(a3 + 5);
  v6 = *(a3 + 1);

  [(OrgApacheLuceneUtilBytesRefBuilder *)self appendWithByteArray:v6 withInt:v4 withInt:v5];
}

- (void)appendWithOrgApacheLuceneUtilBytesRefBuilder:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = [a3 get];

  [(OrgApacheLuceneUtilBytesRefBuilder *)self appendWithOrgApacheLuceneUtilBytesRef:v4];
}

- (void)copyBytesWithOrgApacheLuceneUtilBytesRef:(id)a3
{
  [(OrgApacheLuceneUtilBytesRefBuilder *)self clear];

  [(OrgApacheLuceneUtilBytesRefBuilder *)self appendWithOrgApacheLuceneUtilBytesRef:a3];
}

- (void)copyBytesWithOrgApacheLuceneUtilBytesRefBuilder:(id)a3
{
  [(OrgApacheLuceneUtilBytesRefBuilder *)self clear];

  [(OrgApacheLuceneUtilBytesRefBuilder *)self appendWithOrgApacheLuceneUtilBytesRefBuilder:a3];
}

- (void)copyCharsWithJavaLangCharSequence:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = [a3 length];

  [(OrgApacheLuceneUtilBytesRefBuilder *)self copyCharsWithJavaLangCharSequence:a3 withInt:0 withInt:v5];
}

- (void)copyCharsWithCharArray:(id)a3 withInt:(int)a4 withInt:(int)a5
{
  [(OrgApacheLuceneUtilBytesRefBuilder *)self growWithInt:(3 * a5)];
  v9 = OrgApacheLuceneUtilUnicodeUtil_UTF16toUTF8WithCharArray_withInt_withInt_withByteArray_(a3, a4, a5, self->ref_->bytes_);
  ref = self->ref_;
  if (!ref)
  {
    JreThrowNullPointerException();
  }

  ref->length_ = v9;
}

- (id)toBytesRef
{
  ref = self->ref_;
  if (!ref)
  {
    JreThrowNullPointerException();
  }

  v3 = JavaUtilArrays_copyOfWithByteArray_withInt_(ref->bytes_, ref->length_);
  v4 = new_OrgApacheLuceneUtilBytesRef_initWithByteArray_(v3);

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilBytesRefBuilder;
  [(OrgApacheLuceneUtilBytesRefBuilder *)&v3 dealloc];
}

@end
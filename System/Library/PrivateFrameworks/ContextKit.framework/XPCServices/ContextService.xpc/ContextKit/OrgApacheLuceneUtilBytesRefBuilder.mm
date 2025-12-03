@interface OrgApacheLuceneUtilBytesRefBuilder
- (OrgApacheLuceneUtilBytesRefBuilder)init;
- (id)bytes;
- (id)toBytesRef;
- (int)length;
- (void)appendWithByte:(char)byte;
- (void)appendWithOrgApacheLuceneUtilBytesRef:(id)ref;
- (void)appendWithOrgApacheLuceneUtilBytesRefBuilder:(id)builder;
- (void)copyBytesWithOrgApacheLuceneUtilBytesRef:(id)ref;
- (void)copyBytesWithOrgApacheLuceneUtilBytesRefBuilder:(id)builder;
- (void)copyCharsWithCharArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)copyCharsWithJavaLangCharSequence:(id)sequence;
- (void)dealloc;
- (void)setLengthWithInt:(int)int;
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

- (void)setLengthWithInt:(int)int
{
  ref = self->ref_;
  if (!ref)
  {
    JreThrowNullPointerException();
  }

  ref->length_ = int;
}

- (void)appendWithByte:(char)byte
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

  *(&bytes->super.size_ + length + 4) = byte;
}

- (void)appendWithOrgApacheLuceneUtilBytesRef:(id)ref
{
  if (!ref)
  {
    JreThrowNullPointerException();
  }

  v4 = *(ref + 4);
  v5 = *(ref + 5);
  v6 = *(ref + 1);

  [(OrgApacheLuceneUtilBytesRefBuilder *)self appendWithByteArray:v6 withInt:v4 withInt:v5];
}

- (void)appendWithOrgApacheLuceneUtilBytesRefBuilder:(id)builder
{
  if (!builder)
  {
    JreThrowNullPointerException();
  }

  v4 = [builder get];

  [(OrgApacheLuceneUtilBytesRefBuilder *)self appendWithOrgApacheLuceneUtilBytesRef:v4];
}

- (void)copyBytesWithOrgApacheLuceneUtilBytesRef:(id)ref
{
  [(OrgApacheLuceneUtilBytesRefBuilder *)self clear];

  [(OrgApacheLuceneUtilBytesRefBuilder *)self appendWithOrgApacheLuceneUtilBytesRef:ref];
}

- (void)copyBytesWithOrgApacheLuceneUtilBytesRefBuilder:(id)builder
{
  [(OrgApacheLuceneUtilBytesRefBuilder *)self clear];

  [(OrgApacheLuceneUtilBytesRefBuilder *)self appendWithOrgApacheLuceneUtilBytesRefBuilder:builder];
}

- (void)copyCharsWithJavaLangCharSequence:(id)sequence
{
  if (!sequence)
  {
    JreThrowNullPointerException();
  }

  v5 = [sequence length];

  [(OrgApacheLuceneUtilBytesRefBuilder *)self copyCharsWithJavaLangCharSequence:sequence withInt:0 withInt:v5];
}

- (void)copyCharsWithCharArray:(id)array withInt:(int)int withInt:(int)withInt
{
  [(OrgApacheLuceneUtilBytesRefBuilder *)self growWithInt:(3 * withInt)];
  v9 = OrgApacheLuceneUtilUnicodeUtil_UTF16toUTF8WithCharArray_withInt_withInt_withByteArray_(array, int, withInt, self->ref_->bytes_);
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
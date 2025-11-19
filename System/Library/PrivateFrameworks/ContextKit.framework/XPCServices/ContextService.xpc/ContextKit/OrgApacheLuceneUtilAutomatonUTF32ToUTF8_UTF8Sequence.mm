@interface OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence
- (id)description;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence

- (id)description
{
  v3 = new_JavaLangStringBuilder_init();
  if (self->len_ >= 1)
  {
    v4 = 0;
    do
    {
      if (v4)
      {
        [(JavaLangStringBuilder *)v3 appendWithChar:32];
      }

      bytes = self->bytes_;
      if (!bytes)
      {
        goto LABEL_14;
      }

      size = bytes->super.size_;
      if (v4 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v4);
      }

      v7 = (&bytes->elementType_)[v4];
      if (!v7)
      {
LABEL_14:
        JreThrowNullPointerException();
      }

      [(JavaLangStringBuilder *)v3 appendWithNSString:JavaLangInteger_toBinaryStringWithInt_(v7[1].super.isa)];
      ++v4;
    }

    while (v4 < self->len_);
  }

  return [(JavaLangStringBuilder *)v3 description];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence;
  [(OrgApacheLuceneUtilAutomatonUTF32ToUTF8_UTF8Sequence *)&v3 dealloc];
}

@end
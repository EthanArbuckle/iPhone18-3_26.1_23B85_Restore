@interface OrgApacheLuceneCodecsMultiLevelSkipListReader_SkipBuffer
- (char)readByte;
- (int64_t)length;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsMultiLevelSkipListReader_SkipBuffer

- (int64_t)length
{
  data = self->data_;
  if (!data)
  {
    JreThrowNullPointerException();
  }

  return data->super.size_;
}

- (char)readByte
{
  data = self->data_;
  if (!data)
  {
    JreThrowNullPointerException();
  }

  pos = self->pos_;
  self->pos_ = pos + 1;
  size = data->super.size_;
  if (pos < 0 || pos >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, pos);
  }

  return *(&data->super.size_ + pos + 4);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsMultiLevelSkipListReader_SkipBuffer;
  [(OrgApacheLuceneStoreIndexInput *)&v3 dealloc];
}

@end
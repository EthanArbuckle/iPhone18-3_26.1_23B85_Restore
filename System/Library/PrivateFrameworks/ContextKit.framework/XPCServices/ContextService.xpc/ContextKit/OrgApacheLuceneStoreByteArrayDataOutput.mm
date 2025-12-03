@interface OrgApacheLuceneStoreByteArrayDataOutput
- (OrgApacheLuceneStoreByteArrayDataOutput)initWithByteArray:(id)array;
- (void)dealloc;
- (void)resetWithByteArray:(id)array;
- (void)resetWithByteArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)writeByteWithByte:(char)byte;
@end

@implementation OrgApacheLuceneStoreByteArrayDataOutput

- (OrgApacheLuceneStoreByteArrayDataOutput)initWithByteArray:(id)array
{
  OrgApacheLuceneStoreDataOutput_init(self, a2);
  [(OrgApacheLuceneStoreByteArrayDataOutput *)self resetWithByteArray:array];
  return self;
}

- (void)resetWithByteArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v4 = *(array + 2);

  [(OrgApacheLuceneStoreByteArrayDataOutput *)self resetWithByteArray:array withInt:0 withInt:v4];
}

- (void)resetWithByteArray:(id)array withInt:(int)int withInt:(int)withInt
{
  JreStrongAssign(&self->bytes_, array);
  self->pos_ = int;
  self->limit_ = withInt + int;
}

- (void)writeByteWithByte:(char)byte
{
  bytes = self->bytes_;
  if (!bytes)
  {
    JreThrowNullPointerException();
  }

  pos = self->pos_;
  self->pos_ = pos + 1;
  size = bytes->super.size_;
  if (pos < 0 || pos >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, pos);
  }

  *(&bytes->super.size_ + pos + 4) = byte;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreByteArrayDataOutput;
  [(OrgApacheLuceneStoreDataOutput *)&v3 dealloc];
}

@end
@interface OrgApacheLuceneStoreByteArrayDataOutput
- (OrgApacheLuceneStoreByteArrayDataOutput)initWithByteArray:(id)a3;
- (void)dealloc;
- (void)resetWithByteArray:(id)a3;
- (void)resetWithByteArray:(id)a3 withInt:(int)a4 withInt:(int)a5;
- (void)writeByteWithByte:(char)a3;
@end

@implementation OrgApacheLuceneStoreByteArrayDataOutput

- (OrgApacheLuceneStoreByteArrayDataOutput)initWithByteArray:(id)a3
{
  OrgApacheLuceneStoreDataOutput_init(self, a2);
  [(OrgApacheLuceneStoreByteArrayDataOutput *)self resetWithByteArray:a3];
  return self;
}

- (void)resetWithByteArray:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = *(a3 + 2);

  [(OrgApacheLuceneStoreByteArrayDataOutput *)self resetWithByteArray:a3 withInt:0 withInt:v4];
}

- (void)resetWithByteArray:(id)a3 withInt:(int)a4 withInt:(int)a5
{
  JreStrongAssign(&self->bytes_, a3);
  self->pos_ = a4;
  self->limit_ = a5 + a4;
}

- (void)writeByteWithByte:(char)a3
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

  *(&bytes->super.size_ + pos + 4) = a3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreByteArrayDataOutput;
  [(OrgApacheLuceneStoreDataOutput *)&v3 dealloc];
}

@end
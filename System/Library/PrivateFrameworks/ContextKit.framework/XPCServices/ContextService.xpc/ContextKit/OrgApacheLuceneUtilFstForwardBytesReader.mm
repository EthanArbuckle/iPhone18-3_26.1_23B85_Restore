@interface OrgApacheLuceneUtilFstForwardBytesReader
- (OrgApacheLuceneUtilFstForwardBytesReader)initWithByteArray:(id)a3;
- (char)readByte;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilFstForwardBytesReader

- (OrgApacheLuceneUtilFstForwardBytesReader)initWithByteArray:(id)a3
{
  OrgApacheLuceneUtilFstFST_BytesReader_init(self, a2);
  JreStrongAssign(&self->bytes_, a3);
  return self;
}

- (char)readByte
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

  return *(&bytes->super.size_ + pos + 4);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilFstForwardBytesReader;
  [(OrgApacheLuceneStoreDataInput *)&v3 dealloc];
}

@end
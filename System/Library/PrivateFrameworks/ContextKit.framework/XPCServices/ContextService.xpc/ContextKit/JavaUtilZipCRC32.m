@interface JavaUtilZipCRC32
- (JavaUtilZipCRC32)init;
- (void)updateWithByteArray:(id)a3;
- (void)updateWithByteArray:(id)a3 withInt:(int)a4 withInt:(int)a5;
- (void)updateWithInt:(int)a3;
@end

@implementation JavaUtilZipCRC32

- (void)updateWithInt:(int)a3
{
  crc = self->crc_;
  buf = a3;
  self->crc_ = crc32(crc, &buf, 1u);
}

- (void)updateWithByteArray:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = *(a3 + 2);

  [(JavaUtilZipCRC32 *)self updateWithByteArray:a3 withInt:0 withInt:v4];
}

- (void)updateWithByteArray:(id)a3 withInt:(int)a4 withInt:(int)a5
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(a3 + 2), a4, a5);
  crc = self->crc_;
  self->tbytes_ += a5;
  self->crc_ = crc32(crc, a3 + a4 + 12, a5);
}

- (JavaUtilZipCRC32)init
{
  self->tbytes_ = 0;
  self->crc_ = 0;
  return self;
}

@end
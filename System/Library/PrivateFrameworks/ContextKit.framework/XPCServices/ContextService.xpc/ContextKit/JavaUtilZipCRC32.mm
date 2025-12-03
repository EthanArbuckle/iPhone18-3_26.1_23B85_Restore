@interface JavaUtilZipCRC32
- (JavaUtilZipCRC32)init;
- (void)updateWithByteArray:(id)array;
- (void)updateWithByteArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)updateWithInt:(int)int;
@end

@implementation JavaUtilZipCRC32

- (void)updateWithInt:(int)int
{
  crc = self->crc_;
  buf = int;
  self->crc_ = crc32(crc, &buf, 1u);
}

- (void)updateWithByteArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v4 = *(array + 2);

  [(JavaUtilZipCRC32 *)self updateWithByteArray:array withInt:0 withInt:v4];
}

- (void)updateWithByteArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(array + 2), int, withInt);
  crc = self->crc_;
  self->tbytes_ += withInt;
  self->crc_ = crc32(crc, array + int + 12, withInt);
}

- (JavaUtilZipCRC32)init
{
  self->tbytes_ = 0;
  self->crc_ = 0;
  return self;
}

@end
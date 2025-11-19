@interface ComAppleProactiveLuceneNSDataDirectory_NSDataIndexInputOld
- (char)readByte;
- (char)readByteWithLong:(int64_t)a3;
- (id)sliceWithNSString:(id)a3 withLong:(int64_t)a4 withLong:(int64_t)a5;
- (int)readInt;
- (int)readIntWithLong:(int64_t)a3;
- (int)readVInt;
- (int64_t)readLong;
- (int64_t)readLongWithLong:(int64_t)a3;
- (int64_t)readZLong;
- (signed)readShort;
- (signed)readShortWithLong:(int64_t)a3;
- (void)dealloc;
@end

@implementation ComAppleProactiveLuceneNSDataDirectory_NSDataIndexInputOld

- (id)sliceWithNSString:(id)a3 withLong:(int64_t)a4 withLong:(int64_t)a5
{
  v6 = a4;
  v8 = self->this$0_;
  if (v8->useMadvise_)
  {
    madvise([self->nsData_ bytes] + a4, a5, 3);
    v8 = self->this$0_;
  }

  name = self->name_;
  nsData = self->nsData_;
  v11 = [ComAppleProactiveLuceneNSDataDirectory_NSDataIndexInputOld alloc];
  sub_1000414B0(v11, v8, name, nsData, v6, a5);

  return v11;
}

- (char)readByte
{
  v4 = 0;
  [self->nsData_ getBytes:&v4 range:{self->pos_ + self->sliceOffset_, 1}];
  ++self->pos_;
  return v4;
}

- (signed)readShort
{
  result = [(ComAppleProactiveLuceneNSDataDirectory_NSDataIndexInputOld *)self readShortWithLong:self->pos_];
  self->pos_ += 2;
  return result;
}

- (int)readInt
{
  result = [(ComAppleProactiveLuceneNSDataDirectory_NSDataIndexInputOld *)self readIntWithLong:self->pos_];
  self->pos_ += 4;
  return result;
}

- (int64_t)readLong
{
  result = [(ComAppleProactiveLuceneNSDataDirectory_NSDataIndexInputOld *)self readLongWithLong:self->pos_];
  self->pos_ += 8;
  return result;
}

- (char)readByteWithLong:(int64_t)a3
{
  v4 = 0;
  [self->nsData_ getBytes:&v4 range:{self->sliceOffset_ + a3, 1}];
  return v4;
}

- (signed)readShortWithLong:(int64_t)a3
{
  v5 = 0;
  [self->nsData_ getBytes:&v5 range:{self->sliceOffset_ + a3, 2}];
  return bswap32(v5) >> 16;
}

- (int)readIntWithLong:(int64_t)a3
{
  v4 = 0;
  [self->nsData_ getBytes:&v4 range:{self->sliceOffset_ + a3, 4}];
  return bswap32(v4);
}

- (int64_t)readLongWithLong:(int64_t)a3
{
  v4 = 0;
  [self->nsData_ getBytes:&v4 range:{self->sliceOffset_ + a3, 8}];
  return bswap64(v4);
}

- (int)readVInt
{
  v6 = 0;
  [self->nsData_ getBytes:&v6 range:{self->pos_ + self->sliceOffset_, 8}];
  result = v6;
  if (v6 < 0)
  {
    result = v6 & 0x7F | ((SBYTE1(v6) & 0x7F) << 7);
    if (SBYTE1(v6) < 0)
    {
      result = v6 & 0x7F | ((SBYTE1(v6) & 0x7F) << 7) & 0x3FFF | ((SBYTE2(v6) & 0x7F) << 14);
      if (SBYTE2(v6) < 0)
      {
        result = v6 & 0x7F | ((SBYTE1(v6) & 0x7F) << 7) & 0x3FFF | ((SBYTE2(v6) & 0x7F) << 14) & 0xF01FFFFF | ((SBYTE3(v6) & 0x7F) << 21);
        if (SBYTE3(v6) < 0)
        {
          if (BYTE4(v6) > 0xFu)
          {
            v5 = new_JavaIoIOException_initWithNSString_(@"Invalid vInt detected (too many bits)");
            objc_exception_throw(v5);
          }

          result |= BYTE4(v6) << 28;
          v4 = 5;
        }

        else
        {
          v4 = 4;
        }
      }

      else
      {
        v4 = 3;
      }
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 1;
  }

  self->pos_ += v4;
  return result;
}

- (int64_t)readZLong
{
  v2 = sub_100041A74(self, 1);

  return OrgApacheLuceneUtilBitUtil_zigZagDecodeWithLong_(v2);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleProactiveLuceneNSDataDirectory_NSDataIndexInputOld;
  [(OrgApacheLuceneStoreIndexInput *)&v3 dealloc];
}

@end
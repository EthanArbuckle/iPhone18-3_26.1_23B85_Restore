@interface JavaIoRandomAccessFile
- (BOOL)readBoolean;
- (JavaIoRandomAccessFile)initWithNSString:(id)a3 withNSString:(id)a4;
- (char)readByte;
- (double)readDouble;
- (float)readFloat;
- (id)getChannel;
- (id)readLine;
- (id)readUTF;
- (int)read;
- (int)readUnsignedByte;
- (int)readWithByteArray:(id)a3;
- (int)skipBytesWithInt:(int)a3;
- (int64_t)getFilePointer;
- (int64_t)length;
- (uint64_t)readInt;
- (uint64_t)readShort;
- (unint64_t)readLong;
- (void)close;
- (void)dealloc;
- (void)readFullyWithByteArray:(id)a3;
- (void)seekWithLong:(int64_t)a3;
- (void)setLengthWithLong:(int64_t)a3;
- (void)writeBytesWithNSString:(id)a3;
- (void)writeCharsWithNSString:(id)a3;
- (void)writeDoubleWithDouble:(double)a3;
- (void)writeFloatWithFloat:(float)a3;
- (void)writeUTFWithNSString:(id)a3;
- (void)writeWithByteArray:(id)a3;
- (void)writeWithInt:(int)a3;
@end

@implementation JavaIoRandomAccessFile

- (JavaIoRandomAccessFile)initWithNSString:(id)a3 withNSString:(id)a4
{
  v6 = new_JavaIoFile_initWithNSString_(a3);
  JavaIoRandomAccessFile_initWithJavaIoFile_withNSString_(self, v6, a4);
  return self;
}

- (void)close
{
  guard = self->guard_;
  if (!guard)
  {
    JreThrowNullPointerException();
  }

  [(DalvikSystemCloseGuard *)guard close];
  objc_sync_enter(self);
  channel = self->channel_;
  if (channel && [(JavaNioChannelsSpiAbstractInterruptibleChannel *)channel isOpen])
  {
    [(JavaNioChannelsSpiAbstractInterruptibleChannel *)self->channel_ close];
    JreStrongAssign(&self->channel_, 0);
  }

  LibcoreIoIoUtils_closeWithJavaIoFileDescriptor_(self->fd_);

  objc_sync_exit(self);
}

- (void)dealloc
{
  guard = self->guard_;
  if (guard)
  {
    [(DalvikSystemCloseGuard *)guard warnIfOpen];
  }

  [(JavaIoRandomAccessFile *)self close];

  v4.receiver = self;
  v4.super_class = JavaIoRandomAccessFile;
  [(JavaIoRandomAccessFile *)&v4 dealloc];
}

- (id)getChannel
{
  objc_sync_enter(self);
  channel = self->channel_;
  if (!channel)
  {
    v4 = JavaNioNioUtils_newFileChannelWithId_withJavaIoFileDescriptor_withInt_(self, self->fd_, self->mode_);
    JreStrongAssign(&self->channel_, v4);
    channel = self->channel_;
  }

  objc_sync_exit(self);
  return channel;
}

- (int64_t)getFilePointer
{
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  return [LibcoreIoLibcore_os_ lseekWithJavaIoFileDescriptor:self->fd_ withLong:0 withInt:1];
}

- (int64_t)length
{
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_ || (v3 = [LibcoreIoLibcore_os_ fstatWithJavaIoFileDescriptor:self->fd_]) == 0)
  {
    JreThrowNullPointerException();
  }

  return v3[7];
}

- (int)read
{
  result = [(JavaIoRandomAccessFile *)self readWithByteArray:self->scratch_ withInt:0 withInt:1];
  if (result != -1)
  {
    scratch = self->scratch_;
    if (!scratch)
    {
      JreThrowNullPointerException();
    }

    size = scratch->super.size_;
    if (size <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, 0);
    }

    return *(&scratch->super.size_ + 4);
  }

  return result;
}

- (int)readWithByteArray:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = *(a3 + 2);

  return [(JavaIoRandomAccessFile *)self readWithByteArray:a3 withInt:0 withInt:v4];
}

- (BOOL)readBoolean
{
  v2 = [(JavaIoRandomAccessFile *)self read];
  if ((v2 & 0x80000000) != 0)
  {
    v4 = new_JavaIoEOFException_init();
    objc_exception_throw(v4);
  }

  return v2 != 0;
}

- (char)readByte
{
  v2 = [(JavaIoRandomAccessFile *)self read];
  if ((v2 & 0x80000000) != 0)
  {
    v3 = new_JavaIoEOFException_init();
    objc_exception_throw(v3);
  }

  return v2;
}

- (uint64_t)readShort
{
  sub_1001B92D8(a1, a1[6], 0, 2);
  v2 = a1[6];
  if ((atomic_load_explicit(JavaNioByteOrder__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014A090();
  }

  v3 = JavaNioByteOrder_BIG_ENDIAN__;

  return LibcoreIoMemory_peekShortWithByteArray_withInt_withJavaNioByteOrder_(v2, 0, v3);
}

- (double)readDouble
{
  v2 = [JavaIoRandomAccessFile readLong]_0(self);

  return JavaLangDouble_longBitsToDoubleWithLong_(v2);
}

- (unint64_t)readLong
{
  sub_1001B92D8(a1, a1[6], 0, 8);
  v2 = a1[6];
  if ((atomic_load_explicit(JavaNioByteOrder__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014A090();
  }

  v3 = JavaNioByteOrder_BIG_ENDIAN__;

  return LibcoreIoMemory_peekLongWithByteArray_withInt_withJavaNioByteOrder_(v2, 0, v3);
}

- (float)readFloat
{
  v2 = [JavaIoRandomAccessFile readInt]_0(self);

  return JavaLangFloat_intBitsToFloatWithInt_(v2);
}

- (uint64_t)readInt
{
  sub_1001B92D8(a1, a1[6], 0, 4);
  v2 = a1[6];
  if ((atomic_load_explicit(JavaNioByteOrder__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014A090();
  }

  v3 = JavaNioByteOrder_BIG_ENDIAN__;

  return LibcoreIoMemory_peekIntWithByteArray_withInt_withJavaNioByteOrder_(v2, 0, v3);
}

- (void)readFullyWithByteArray:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = *(a3 + 2);

  sub_1001B92D8(self, a3, 0, v4);
}

- (id)readLine
{
  v3 = new_JavaLangStringBuilder_initWithInt_(0x50u);
  v4 = 0;
  v5 = 0;
  while (1)
  {
    while (1)
    {
      v6 = [(JavaIoRandomAccessFile *)self read];
      if (v6 != 13)
      {
        break;
      }

      if (v4)
      {
LABEL_11:
        [(JavaIoRandomAccessFile *)self seekWithLong:v5];
        goto LABEL_12;
      }

      v5 = [(JavaIoRandomAccessFile *)self getFilePointer];
      v4 = 1;
    }

    if (v6 == 10)
    {
      goto LABEL_12;
    }

    if (v6 == -1)
    {
      break;
    }

    if (v4)
    {
      goto LABEL_11;
    }

    [(JavaLangStringBuilder *)v3 appendWithChar:v6];
    v4 = 0;
  }

  if (![(JavaLangStringBuilder *)v3 length])
  {
    return 0;
  }

LABEL_12:

  return [(JavaLangStringBuilder *)v3 description];
}

- (int)readUnsignedByte
{
  result = [(JavaIoRandomAccessFile *)self read];
  if (result < 0)
  {
    v3 = new_JavaIoEOFException_init();
    objc_exception_throw(v3);
  }

  return result;
}

- (id)readUTF
{
  v3 = [JavaIoRandomAccessFile readShort]_0(self);
  if (!v3)
  {
    return &stru_100484358;
  }

  v4 = v3;
  v5 = [IOSByteArray arrayWithLength:v3];
  if ([(JavaIoRandomAccessFile *)self readWithByteArray:v5 withInt:0 withInt:v5->super.size_]!= v5->super.size_)
  {
    v12 = new_JavaIoEOFException_init();
    objc_exception_throw(v12);
  }

  v6 = [IOSCharArray arrayWithLength:v4];

  return JavaNioCharsetModifiedUtf8_decodeWithByteArray_withCharArray_withInt_withInt_(v5, v6, 0, v4, v7, v8, v9, v10);
}

- (void)seekWithLong:(int64_t)a3
{
  if (a3 < 0)
  {
    v10 = JreStrcat("$J", a2, a3, v3, v4, v5, v6, v7, @"offset < 0: ");
    v11 = new_JavaIoIOException_initWithNSString_(v10);
    objc_exception_throw(v11);
  }

  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  [LibcoreIoLibcore_os_ lseekWithJavaIoFileDescriptor:self->fd_ withLong:a3 withInt:0];
}

- (void)setLengthWithLong:(int64_t)a3
{
  if (a3 < 0)
  {
    v6 = new_JavaLangIllegalArgumentException_initWithNSString_(@"newLength < 0");
    objc_exception_throw(v6);
  }

  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  [LibcoreIoLibcore_os_ ftruncateWithJavaIoFileDescriptor:self->fd_ withLong:a3];
  if ([(JavaIoRandomAccessFile *)self getFilePointer]> a3)
  {
    [(JavaIoRandomAccessFile *)self seekWithLong:a3];
  }

  if (self->syncMetadata_)
  {
    fd = self->fd_;
    if (!fd)
    {
      JreThrowNullPointerException();
    }

    [(JavaIoFileDescriptor *)fd sync];
  }
}

- (int)skipBytesWithInt:(int)a3
{
  if (a3 < 1)
  {
    return 0;
  }

  v3 = a3;
  v5 = [(JavaIoRandomAccessFile *)self getFilePointer];
  v6 = [(JavaIoRandomAccessFile *)self length];
  if (v5 + v3 > v6)
  {
    v3 = v6 - v5;
  }

  [(JavaIoRandomAccessFile *)self seekWithLong:v5 + v3];
  return v3;
}

- (void)writeWithByteArray:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = *(a3 + 2);

  [(JavaIoRandomAccessFile *)self writeWithByteArray:a3 withInt:0 withInt:v4];
}

- (void)writeWithInt:(int)a3
{
  scratch = self->scratch_;
  if (!scratch)
  {
    JreThrowNullPointerException();
  }

  size = scratch->super.size_;
  if (size <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, 0);
  }

  *(&scratch->super.size_ + 4) = a3;
  v6 = self->scratch_;

  [(JavaIoRandomAccessFile *)self writeWithByteArray:v6 withInt:0 withInt:1];
}

- (void)writeBytesWithNSString:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = +[IOSByteArray arrayWithLength:](IOSByteArray, "arrayWithLength:", [a3 length]);
  if ([a3 length] >= 1)
  {
    v6 = 0;
    do
    {
      v7 = [a3 charAtWithInt:v6];
      size = v5->super.size_;
      if (v6 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v6);
      }

      *(&v5->super.size_ + v6++ + 4) = v7;
    }

    while (v6 < [a3 length]);
  }

  [(JavaIoRandomAccessFile *)self writeWithByteArray:v5];
}

- (void)writeCharsWithNSString:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = [a3 getBytesWithCharsetName:@"UTF-16BE"];

  [(JavaIoRandomAccessFile *)self writeWithByteArray:v4];
}

- (void)writeDoubleWithDouble:(double)a3
{
  v4 = JavaLangDouble_doubleToLongBitsWithDouble_(a3);

  sub_1001B9AFC(self, v4);
}

- (void)writeFloatWithFloat:(float)a3
{
  v4 = JavaLangFloat_floatToIntBitsWithFloat_(a3);

  sub_1001B9BBC(self, v4);
}

- (void)writeUTFWithNSString:(id)a3
{
  v4 = JavaNioCharsetModifiedUtf8_encodeWithNSString_(a3);

  [(JavaIoRandomAccessFile *)self writeWithByteArray:v4];
}

@end
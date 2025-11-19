@interface JavaNetSocks4Message
- (JavaNetSocks4Message)init;
- (id)description;
- (id)getErrorStringWithInt:(int)a3;
- (int)getCommandOrResult;
- (int)getIP;
- (int)getLength;
- (int)getPort;
- (uint64_t)getVersionNumber;
- (void)dealloc;
- (void)setCommandOrResultWithInt:(int)a3;
- (void)setIPWithByteArray:(id)a3;
- (void)setPortWithInt:(int)a3;
@end

@implementation JavaNetSocks4Message

- (JavaNetSocks4Message)init
{
  JreStrongAssignAndConsume(&self->buffer_, [IOSByteArray newArrayWithLength:256]);
  sub_10021CAD0(self, 4);
  return self;
}

- (int)getCommandOrResult
{
  buffer = self->buffer_;
  if (!buffer)
  {
    JreThrowNullPointerException();
  }

  size = buffer->super.size_;
  if (size <= 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, 1);
  }

  return *(&buffer->super.size_ + 5);
}

- (void)setCommandOrResultWithInt:(int)a3
{
  buffer = self->buffer_;
  if (!buffer)
  {
    JreThrowNullPointerException();
  }

  size = buffer->super.size_;
  if (size <= 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, 1);
  }

  *(&buffer->super.size_ + 5) = a3;
}

- (int)getPort
{
  buffer = self->buffer_;
  if ((atomic_load_explicit(JavaNioByteOrder__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014A090();
  }

  return LibcoreIoMemory_peekShortWithByteArray_withInt_withJavaNioByteOrder_(buffer, 2, JavaNioByteOrder_BIG_ENDIAN__);
}

- (void)setPortWithInt:(int)a3
{
  v3 = a3;
  buffer = self->buffer_;
  if ((atomic_load_explicit(JavaNioByteOrder__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014A090();
  }

  v5 = JavaNioByteOrder_BIG_ENDIAN__;

  LibcoreIoMemory_pokeShortWithByteArray_withInt_withShort_withJavaNioByteOrder_(buffer, 2, v3, v5);
}

- (int)getIP
{
  buffer = self->buffer_;
  if ((atomic_load_explicit(JavaNioByteOrder__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014A090();
  }

  v3 = JavaNioByteOrder_BIG_ENDIAN__;

  return LibcoreIoMemory_peekIntWithByteArray_withInt_withJavaNioByteOrder_(buffer, 4, v3);
}

- (void)setIPWithByteArray:(id)a3
{
  if (!a3)
  {
    goto LABEL_12;
  }

  v4 = *(a3 + 2);
  if (v4 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v4, 0);
  }

  buffer = self->buffer_;
  if (!buffer)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  size = buffer->super.size_;
  if (size <= 4)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, 4);
  }

  buffer->buffer_[0] = *(a3 + 12);
  v7 = *(a3 + 2);
  if (v7 <= 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, 1);
  }

  v8 = self->buffer_;
  v9 = v8->super.size_;
  if (v9 <= 5)
  {
    IOSArray_throwOutOfBoundsWithMsg(v9, 5);
  }

  v8->buffer_[1] = *(a3 + 13);
  v10 = *(a3 + 2);
  if (v10 <= 2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, 2);
  }

  v11 = self->buffer_;
  v12 = v11->super.size_;
  if (v12 <= 6)
  {
    IOSArray_throwOutOfBoundsWithMsg(v12, 6);
  }

  v11->buffer_[2] = *(a3 + 14);
  v13 = *(a3 + 2);
  if (v13 <= 3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v13, 3);
  }

  v14 = self->buffer_;
  v15 = v14->super.size_;
  if (v15 <= 7)
  {
    IOSArray_throwOutOfBoundsWithMsg(v15, 7);
  }

  v14->buffer_[3] = *(a3 + 15);
}

- (id)description
{
  v3 = new_JavaLangStringBuilder_initWithInt_(0x32u);
  [(JavaLangStringBuilder *)v3 appendWithNSString:@"Version: "];
  v4 = [JavaNetSocks4Message getVersionNumber]_0(self);
  [(JavaLangStringBuilder *)v3 appendWithNSString:JavaLangInteger_toHexStringWithInt_(v4)];
  [(JavaLangStringBuilder *)v3 appendWithNSString:@" Command: "];
  [(JavaLangStringBuilder *)v3 appendWithNSString:JavaLangInteger_toHexStringWithInt_([(JavaNetSocks4Message *)self getCommandOrResult])];
  [(JavaLangStringBuilder *)v3 appendWithNSString:@" Port: "];
  [(JavaLangStringBuilder *)v3 appendWithInt:[(JavaNetSocks4Message *)self getPort]];
  [(JavaLangStringBuilder *)v3 appendWithNSString:@" IP: "];
  [(JavaLangStringBuilder *)v3 appendWithNSString:JavaLangInteger_toHexStringWithInt_([(JavaNetSocks4Message *)self getIP])];
  [(JavaLangStringBuilder *)v3 appendWithNSString:@" User ID: "];
  [(JavaLangStringBuilder *)v3 appendWithNSString:[(JavaNetSocks4Message *)self getUserId]];

  return [(JavaLangStringBuilder *)v3 description];
}

- (uint64_t)getVersionNumber
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    JreThrowNullPointerException();
  }

  v2 = *(v1 + 8);
  if (v2 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v2, 0);
  }

  return *(v1 + 12);
}

- (int)getLength
{
  buffer = self->buffer_;
  if (!buffer)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  v4 = 9;
  while (1)
  {
    size = buffer->super.size_;
    v6 = v4 - 1;
    if (v4 - 1 < 0 || v6 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v6);
    }

    v7 = *(&buffer->super.size_ + v6 + 4);
    if (!*(&buffer->super.size_ + v4 + 3))
    {
      return v4;
    }

    buffer = self->buffer_;
    ++v4;
    if (!buffer)
    {
      goto LABEL_10;
    }
  }
}

- (id)getErrorStringWithInt:(int)a3
{
  if ((a3 - 91) > 2)
  {
    return @"Success";
  }

  else
  {
    return *(&off_100449B90 + (a3 - 91));
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNetSocks4Message;
  [(JavaNetSocks4Message *)&v3 dealloc];
}

@end
@interface JavaNioCharsetIOSCharsetDecoder
- (id)decodeLoopWithJavaNioByteBuffer:(id)buffer withJavaNioCharBuffer:(id)charBuffer;
- (id)decodeWithJavaNioByteBuffer:(id)buffer;
- (int)available;
- (void)dealloc;
@end

@implementation JavaNioCharsetIOSCharsetDecoder

- (id)decodeLoopWithJavaNioByteBuffer:(id)buffer withJavaNioCharBuffer:(id)charBuffer
{
  if (*(&self->inBuffer_ + 4))
  {
    if (charBuffer)
    {
      if ([charBuffer hasRemaining])
      {
        while (1)
        {
          charBuffer_high = HIDWORD(self->charBuffer_);
          v7 = *(&self->inBuffer_ + 4);
          size = *(v7 + 8);
          if (charBuffer_high >= size)
          {
            break;
          }

          HIDWORD(self->charBuffer_) = charBuffer_high + 1;
          v9 = *(v7 + 8);
          if ((charBuffer_high & 0x80000000) != 0 || charBuffer_high >= v9)
          {
            IOSArray_throwOutOfBoundsWithMsg(v9, charBuffer_high);
          }

          [charBuffer putWithChar:*(v7 + 12 + 2 * charBuffer_high)];
          if (([charBuffer hasRemaining] & 1) == 0)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
LABEL_10:
        LODWORD(charBuffer_high) = HIDWORD(self->charBuffer_);
        size = (*(&self->inBuffer_ + 4))->super.size_;
      }

      if (charBuffer_high == size)
      {
        JreStrongAssign((&self->inBuffer_ + 4), 0);
      }

LABEL_25:
      if ((atomic_load_explicit(JavaNioCharsetCoderResult__initialized, memory_order_acquire) & 1) == 0)
      {
LABEL_26:
        sub_100188000();
      }

      return JavaNioCharsetCoderResult_UNDERFLOW__;
    }

LABEL_28:
    JreThrowNullPointerException();
  }

  if (!buffer)
  {
    goto LABEL_28;
  }

  if (![buffer hasRemaining])
  {
    goto LABEL_25;
  }

  v11 = sub_1002449F0(self, buffer);
  if (!v11)
  {
    goto LABEL_28;
  }

  v12 = v11;
  if ([(__CFString *)v11 isEmpty])
  {
    if ((atomic_load_explicit(JavaNioCharsetCoderResult__initialized, memory_order_acquire) & 1) == 0)
    {
      goto LABEL_26;
    }

    return JavaNioCharsetCoderResult_UNDERFLOW__;
  }

  if (!charBuffer)
  {
    goto LABEL_28;
  }

  remaining = [charBuffer remaining];
  if (remaining >= [(__CFString *)v12 length])
  {
    [charBuffer putWithNSString:v12];
    goto LABEL_25;
  }

  JreStrongAssign((&self->inBuffer_ + 4), [(__CFString *)v12 toCharArray]);
  HIDWORD(self->charBuffer_) = 0;

  return [(JavaNioCharsetIOSCharsetDecoder *)self decodeLoopWithJavaNioByteBuffer:buffer withJavaNioCharBuffer:charBuffer];
}

- (id)decodeWithJavaNioByteBuffer:(id)buffer
{
  v3 = sub_1002449F0(self, buffer);

  return JavaNioCharBuffer_wrapWithJavaLangCharSequence_(v3);
}

- (int)available
{
  v2 = *(&self->inBuffer_ + 4);
  if (v2)
  {
    return *(v2 + 8) - HIDWORD(self->charBuffer_);
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioCharsetIOSCharsetDecoder;
  [(JavaNioCharsetCharsetDecoder *)&v3 dealloc];
}

@end
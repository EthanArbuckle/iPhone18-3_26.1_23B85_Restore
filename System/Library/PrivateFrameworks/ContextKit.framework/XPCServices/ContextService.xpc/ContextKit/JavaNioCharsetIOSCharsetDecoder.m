@interface JavaNioCharsetIOSCharsetDecoder
- (id)decodeLoopWithJavaNioByteBuffer:(id)a3 withJavaNioCharBuffer:(id)a4;
- (id)decodeWithJavaNioByteBuffer:(id)a3;
- (int)available;
- (void)dealloc;
@end

@implementation JavaNioCharsetIOSCharsetDecoder

- (id)decodeLoopWithJavaNioByteBuffer:(id)a3 withJavaNioCharBuffer:(id)a4
{
  if (*(&self->inBuffer_ + 4))
  {
    if (a4)
    {
      if ([a4 hasRemaining])
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

          [a4 putWithChar:*(v7 + 12 + 2 * charBuffer_high)];
          if (([a4 hasRemaining] & 1) == 0)
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

  if (!a3)
  {
    goto LABEL_28;
  }

  if (![a3 hasRemaining])
  {
    goto LABEL_25;
  }

  v11 = sub_1002449F0(self, a3);
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

  if (!a4)
  {
    goto LABEL_28;
  }

  v13 = [a4 remaining];
  if (v13 >= [(__CFString *)v12 length])
  {
    [a4 putWithNSString:v12];
    goto LABEL_25;
  }

  JreStrongAssign((&self->inBuffer_ + 4), [(__CFString *)v12 toCharArray]);
  HIDWORD(self->charBuffer_) = 0;

  return [(JavaNioCharsetIOSCharsetDecoder *)self decodeLoopWithJavaNioByteBuffer:a3 withJavaNioCharBuffer:a4];
}

- (id)decodeWithJavaNioByteBuffer:(id)a3
{
  v3 = sub_1002449F0(self, a3);

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
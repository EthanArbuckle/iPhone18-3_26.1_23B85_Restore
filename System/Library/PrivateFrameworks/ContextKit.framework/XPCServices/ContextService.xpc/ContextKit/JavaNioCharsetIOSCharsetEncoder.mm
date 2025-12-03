@interface JavaNioCharsetIOSCharsetEncoder
- (JavaNioCharsetIOSCharsetEncoder)initWithJavaNioCharsetCharset:(id)charset withFloat:(float)float;
- (id)encodeLoopWithJavaNioCharBuffer:(id)buffer withJavaNioByteBuffer:(id)byteBuffer;
- (id)encodeWithJavaNioCharBuffer:(id)buffer;
- (void)dealloc;
@end

@implementation JavaNioCharsetIOSCharsetEncoder

- (JavaNioCharsetIOSCharsetEncoder)initWithJavaNioCharsetCharset:(id)charset withFloat:(float)float
{
  v6 = 63;
  JavaNioCharsetCharsetEncoder_initWithJavaNioCharsetCharset_withFloat_withFloat_withByteArray_(self, charset, [IOSByteArray arrayWithBytes:&v6 count:1], float, float);
  return self;
}

- (id)encodeWithJavaNioCharBuffer:(id)buffer
{
  v3 = sub_1001AD280(&self->super.super.isa, buffer);

  return JavaNioByteBuffer_wrapWithByteArray_(v3);
}

- (id)encodeLoopWithJavaNioCharBuffer:(id)buffer withJavaNioByteBuffer:(id)byteBuffer
{
  if (self->byteBuffer_)
  {
    if (byteBuffer)
    {
      if ([byteBuffer hasRemaining])
      {
        while (1)
        {
          outIndex = self->outIndex_;
          byteBuffer = self->byteBuffer_;
          size = byteBuffer->super.size_;
          if (outIndex >= size)
          {
            break;
          }

          self->outIndex_ = outIndex + 1;
          v9 = byteBuffer->super.size_;
          if ((outIndex & 0x80000000) != 0 || outIndex >= v9)
          {
            IOSArray_throwOutOfBoundsWithMsg(v9, outIndex);
          }

          [byteBuffer putWithByte:*(&byteBuffer->super.size_ + outIndex + 4)];
          if (([byteBuffer hasRemaining] & 1) == 0)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
LABEL_10:
        LODWORD(outIndex) = self->outIndex_;
        size = self->byteBuffer_->super.size_;
      }

      if (outIndex != size)
      {
        if ((atomic_load_explicit(JavaNioCharsetCoderResult__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_100188000();
        }

        v14 = &JavaNioCharsetCoderResult_OVERFLOW__;
        return *v14;
      }

      JreStrongAssign(&self->byteBuffer_, 0);
      if ((atomic_load_explicit(JavaNioCharsetCoderResult__initialized, memory_order_acquire) & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_31:
      v14 = &JavaNioCharsetCoderResult_UNDERFLOW__;
      return *v14;
    }

LABEL_33:
    JreThrowNullPointerException();
  }

  if (!buffer)
  {
    goto LABEL_33;
  }

  if (![buffer hasRemaining])
  {
    goto LABEL_29;
  }

  v11 = sub_1001AD280(&self->super.super.isa, buffer);
  if (!v11)
  {
    goto LABEL_33;
  }

  v12 = v11;
  if (!v11->super.size_)
  {
    if (atomic_load_explicit(JavaNioCharsetCoderResult__initialized, memory_order_acquire))
    {
      goto LABEL_31;
    }

LABEL_30:
    sub_100188000();
    goto LABEL_31;
  }

  if (!byteBuffer)
  {
    goto LABEL_33;
  }

  if ([byteBuffer remaining] >= v11->super.size_)
  {
    [byteBuffer putWithByteArray:v12];
LABEL_29:
    if (atomic_load_explicit(JavaNioCharsetCoderResult__initialized, memory_order_acquire))
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  JreStrongAssign(&self->byteBuffer_, v12);
  self->outIndex_ = 0;

  return [(JavaNioCharsetIOSCharsetEncoder *)self encodeLoopWithJavaNioCharBuffer:buffer withJavaNioByteBuffer:byteBuffer];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioCharsetIOSCharsetEncoder;
  [(JavaNioCharsetCharsetEncoder *)&v3 dealloc];
}

@end
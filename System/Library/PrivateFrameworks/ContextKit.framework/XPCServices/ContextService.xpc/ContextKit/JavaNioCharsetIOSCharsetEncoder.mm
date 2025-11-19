@interface JavaNioCharsetIOSCharsetEncoder
- (JavaNioCharsetIOSCharsetEncoder)initWithJavaNioCharsetCharset:(id)a3 withFloat:(float)a4;
- (id)encodeLoopWithJavaNioCharBuffer:(id)a3 withJavaNioByteBuffer:(id)a4;
- (id)encodeWithJavaNioCharBuffer:(id)a3;
- (void)dealloc;
@end

@implementation JavaNioCharsetIOSCharsetEncoder

- (JavaNioCharsetIOSCharsetEncoder)initWithJavaNioCharsetCharset:(id)a3 withFloat:(float)a4
{
  v6 = 63;
  JavaNioCharsetCharsetEncoder_initWithJavaNioCharsetCharset_withFloat_withFloat_withByteArray_(self, a3, [IOSByteArray arrayWithBytes:&v6 count:1], a4, a4);
  return self;
}

- (id)encodeWithJavaNioCharBuffer:(id)a3
{
  v3 = sub_1001AD280(&self->super.super.isa, a3);

  return JavaNioByteBuffer_wrapWithByteArray_(v3);
}

- (id)encodeLoopWithJavaNioCharBuffer:(id)a3 withJavaNioByteBuffer:(id)a4
{
  if (self->byteBuffer_)
  {
    if (a4)
    {
      if ([a4 hasRemaining])
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

          [a4 putWithByte:*(&byteBuffer->super.size_ + outIndex + 4)];
          if (([a4 hasRemaining] & 1) == 0)
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

  if (!a3)
  {
    goto LABEL_33;
  }

  if (![a3 hasRemaining])
  {
    goto LABEL_29;
  }

  v11 = sub_1001AD280(&self->super.super.isa, a3);
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

  if (!a4)
  {
    goto LABEL_33;
  }

  if ([a4 remaining] >= v11->super.size_)
  {
    [a4 putWithByteArray:v12];
LABEL_29:
    if (atomic_load_explicit(JavaNioCharsetCoderResult__initialized, memory_order_acquire))
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  JreStrongAssign(&self->byteBuffer_, v12);
  self->outIndex_ = 0;

  return [(JavaNioCharsetIOSCharsetEncoder *)self encodeLoopWithJavaNioCharBuffer:a3 withJavaNioByteBuffer:a4];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioCharsetIOSCharsetEncoder;
  [(JavaNioCharsetCharsetEncoder *)&v3 dealloc];
}

@end
@interface JavaIoInputStreamReader
- (BOOL)ready;
- (JavaIoInputStreamReader)initWithJavaIoInputStream:(id)stream;
- (id)getEncoding;
- (int)read;
- (int)readWithCharArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)close;
- (void)dealloc;
@end

@implementation JavaIoInputStreamReader

- (JavaIoInputStreamReader)initWithJavaIoInputStream:(id)stream
{
  v5 = JavaNioCharsetCharset_defaultCharset();
  JavaIoInputStreamReader_initWithJavaIoInputStream_withJavaNioCharsetCharset_(self, stream, v5);
  return self;
}

- (void)close
{
  lock = self->super.lock_;
  objc_sync_enter(lock);
  decoder = self->decoder_;
  if (decoder)
  {
    [(JavaNioCharsetCharsetDecoder *)decoder reset];
  }

  JreStrongAssign(&self->decoder_, 0);
  in = self->in_;
  if (in)
  {
    [(JavaIoInputStream *)in close];
    JreStrongAssign(&self->in_, 0);
  }

  objc_sync_exit(lock);
}

- (id)getEncoding
{
  if (!self->in_)
  {
    return 0;
  }

  decoder = self->decoder_;
  if (!decoder || (v3 = [(JavaNioCharsetCharsetDecoder *)decoder charset]) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v3 name];
}

- (int)read
{
  lock = self->super.lock_;
  objc_sync_enter(lock);
  if (!self->in_)
  {
    v8 = new_JavaIoIOException_initWithNSString_(@"InputStreamReader is closed");
    objc_exception_throw(v8);
  }

  v4 = [IOSCharArray arrayWithLength:1];
  if ([(JavaIoInputStreamReader *)self readWithCharArray:v4 withInt:0 withInt:1]== -1)
  {
    v6 = -1;
  }

  else
  {
    size = v4->super.size_;
    if (size <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, 0);
    }

    v6 = *(&v4->super.size_ + 2);
  }

  objc_sync_exit(lock);
  return v6;
}

- (int)readWithCharArray:(id)array withInt:(int)int withInt:(int)withInt
{
  obj = self->super.lock_;
  objc_sync_enter(obj);
  if (!self->in_)
  {
    v26 = new_JavaIoIOException_initWithNSString_(@"InputStreamReader is closed");
    objc_exception_throw(v26);
  }

  if (!array)
  {
    JreThrowNullPointerException();
  }

  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(array + 2), int, withInt);
  if (!withInt)
  {
    v23 = 0;
    goto LABEL_43;
  }

  v8 = JavaNioCharBuffer_wrapWithCharArray_withInt_withInt_(array, int, withInt);
  if ((atomic_load_explicit(JavaNioCharsetCoderResult__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  bytes = self->bytes_;
  if (!bytes)
  {
    goto LABEL_44;
  }

  v10 = JavaNioCharsetCoderResult_UNDERFLOW__;
  hasRemaining = [(JavaNioBuffer *)bytes hasRemaining];
  if (!v8)
  {
    goto LABEL_44;
  }

  v12 = hasRemaining ^ 1;
  while ([(JavaNioBuffer *)v8 hasRemaining])
  {
    if (v12)
    {
      in = self->in_;
      if (!in)
      {
        JreThrowNullPointerException();
      }

      if (![(JavaIoInputStream *)in available]&& [(JavaNioBuffer *)v8 position]> int)
      {
        break;
      }

      capacity = [(JavaNioBuffer *)self->bytes_ capacity];
      limit = [(JavaNioBuffer *)self->bytes_ limit];
      arrayOffset = [(JavaNioByteBuffer *)self->bytes_ arrayOffset];
      limit2 = [(JavaNioBuffer *)self->bytes_ limit];
      v18 = self->in_;
      if (!v18)
      {
        JreThrowNullPointerException();
      }

      v19 = [(JavaIoInputStream *)v18 readWithByteArray:[(JavaNioByteBuffer *)self->bytes_ array] withInt:limit2 + arrayOffset withInt:capacity - limit];
      if (!v19)
      {
        break;
      }

      if (v19 == -1)
      {
        self->endOfInput_ = 1;
        break;
      }

      [(JavaNioBuffer *)self->bytes_ limitWithInt:[(JavaNioBuffer *)self->bytes_ limit]+ v19];
    }

    decoder = self->decoder_;
    if (!decoder)
    {
      goto LABEL_44;
    }

    v21 = [(JavaNioCharsetCharsetDecoder *)decoder decodeWithJavaNioByteBuffer:self->bytes_ withJavaNioCharBuffer:v8 withBoolean:0];
    v10 = v21;
    if (!v21)
    {
      goto LABEL_44;
    }

    if (![v21 isUnderflow])
    {
      break;
    }

    limit3 = [(JavaNioBuffer *)self->bytes_ limit];
    v12 = 1;
    if (limit3 == [(JavaNioBuffer *)self->bytes_ capacity])
    {
      [(JavaNioByteBuffer *)self->bytes_ compact];
      [(JavaNioBuffer *)self->bytes_ limitWithInt:[(JavaNioBuffer *)self->bytes_ position]];
      [(JavaNioBuffer *)self->bytes_ positionWithInt:0];
    }
  }

  if ((atomic_load_explicit(JavaNioCharsetCoderResult__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (v10 == JavaNioCharsetCoderResult_UNDERFLOW__ && self->endOfInput_)
  {
    v24 = self->decoder_;
    if (!v24)
    {
      goto LABEL_44;
    }

    v10 = [(JavaNioCharsetCharsetDecoder *)v24 decodeWithJavaNioByteBuffer:self->bytes_ withJavaNioCharBuffer:v8 withBoolean:1];
    if ((atomic_load_explicit(JavaNioCharsetCoderResult__initialized, memory_order_acquire) & 1) == 0)
    {
      objc_opt_class();
    }

    if (v10 == JavaNioCharsetCoderResult_UNDERFLOW__)
    {
      v10 = [(JavaNioCharsetCharsetDecoder *)self->decoder_ flushWithJavaNioCharBuffer:v8];
    }

    [(JavaNioCharsetCharsetDecoder *)self->decoder_ reset];
  }

  if (!v10)
  {
LABEL_44:
    JreThrowNullPointerException();
  }

  if (([v10 isMalformed] & 1) != 0 || objc_msgSend(v10, "isUnmappable"))
  {
    [v10 throwException];
  }

  if ([(JavaNioBuffer *)v8 position]== int)
  {
    v23 = -1;
  }

  else
  {
    v23 = [(JavaNioBuffer *)v8 position]- int;
  }

LABEL_43:
  objc_sync_exit(obj);
  return v23;
}

- (BOOL)ready
{
  lock = self->super.lock_;
  objc_sync_enter(lock);
  if (!self->in_)
  {
    v8 = new_JavaIoIOException_initWithNSString_(@"InputStreamReader is closed");
    objc_exception_throw(v8);
  }

  bytes = self->bytes_;
  if (!bytes)
  {
    goto LABEL_8;
  }

  if (![(JavaNioBuffer *)bytes hasRemaining])
  {
    in = self->in_;
    if (in)
    {
      v5 = [(JavaIoInputStream *)in available]> 0;
      goto LABEL_7;
    }

LABEL_8:
    JreThrowNullPointerException();
  }

  v5 = 1;
LABEL_7:
  objc_sync_exit(lock);
  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaIoInputStreamReader;
  [(JavaIoReader *)&v3 dealloc];
}

@end
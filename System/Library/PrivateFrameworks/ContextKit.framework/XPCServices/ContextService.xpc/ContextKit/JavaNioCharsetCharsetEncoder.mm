@interface JavaNioCharsetCharsetEncoder
- (BOOL)canEncodeWithChar:(unsigned __int16)a3;
- (BOOL)canEncodeWithJavaLangCharSequence:(id)a3;
- (JavaNioCharsetCharsetEncoder)initWithJavaNioCharsetCharset:(id)a3 withFloat:(float)a4 withFloat:(float)a5;
- (id)flushWithJavaNioByteBuffer:(id)a3;
- (id)replaceWithWithByteArray:(id)a3;
- (void)dealloc;
@end

@implementation JavaNioCharsetCharsetEncoder

- (JavaNioCharsetCharsetEncoder)initWithJavaNioCharsetCharset:(id)a3 withFloat:(float)a4 withFloat:(float)a5
{
  v7 = 63;
  JavaNioCharsetCharsetEncoder_initWithJavaNioCharsetCharset_withFloat_withFloat_withByteArray_(self, a3, [IOSByteArray arrayWithBytes:&v7 count:1], a4, a5);
  return self;
}

- (BOOL)canEncodeWithChar:(unsigned __int16)a3
{
  v6 = a3;
  v4 = JavaNioCharBuffer_wrapWithCharArray_([IOSCharArray arrayWithChars:&v6 count:1]);
  return sub_100187B90(self, v4);
}

- (BOOL)canEncodeWithJavaLangCharSequence:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (!a3)
    {
      JreThrowNullPointerException();
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    v5 = [a3 duplicate];
  }

  else
  {
    v5 = JavaNioCharBuffer_wrapWithJavaLangCharSequence_(a3);
  }

  return sub_100187B90(self, v5);
}

- (id)flushWithJavaNioByteBuffer:(id)a3
{
  if ((atomic_load_explicit(JavaNioCharsetCoderResult__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100188000();
  }

  return JavaNioCharsetCoderResult_UNDERFLOW__;
}

- (id)replaceWithWithByteArray:(id)a3
{
  if (!a3)
  {
    v11 = @"replacement == null";
    goto LABEL_8;
  }

  v8 = *(a3 + 2);
  if (!v8)
  {
    v11 = @"replacement.length == 0";
    goto LABEL_8;
  }

  if (self->maxBytesPerChar_ < v8)
  {
    v13 = *(a3 + 2);
    v11 = JreStrcat("$I$F", a2, a3, v3, v4, v5, v6, v7, @"replacement.length > maxBytesPerChar: ");
LABEL_8:
    v12 = new_JavaLangIllegalArgumentException_initWithNSString_(v11);
    objc_exception_throw(v12);
  }

  JreStrongAssign(&self->replacementBytes_, a3);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioCharsetCharsetEncoder;
  [(JavaNioCharsetCharsetEncoder *)&v3 dealloc];
}

@end
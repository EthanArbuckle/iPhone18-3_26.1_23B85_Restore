@interface JavaNioCharsetCharsetEncoder
- (BOOL)canEncodeWithChar:(unsigned __int16)char;
- (BOOL)canEncodeWithJavaLangCharSequence:(id)sequence;
- (JavaNioCharsetCharsetEncoder)initWithJavaNioCharsetCharset:(id)charset withFloat:(float)float withFloat:(float)withFloat;
- (id)flushWithJavaNioByteBuffer:(id)buffer;
- (id)replaceWithWithByteArray:(id)array;
- (void)dealloc;
@end

@implementation JavaNioCharsetCharsetEncoder

- (JavaNioCharsetCharsetEncoder)initWithJavaNioCharsetCharset:(id)charset withFloat:(float)float withFloat:(float)withFloat
{
  v7 = 63;
  JavaNioCharsetCharsetEncoder_initWithJavaNioCharsetCharset_withFloat_withFloat_withByteArray_(self, charset, [IOSByteArray arrayWithBytes:&v7 count:1], float, withFloat);
  return self;
}

- (BOOL)canEncodeWithChar:(unsigned __int16)char
{
  charCopy = char;
  v4 = JavaNioCharBuffer_wrapWithCharArray_([IOSCharArray arrayWithChars:&charCopy count:1]);
  return sub_100187B90(self, v4);
}

- (BOOL)canEncodeWithJavaLangCharSequence:(id)sequence
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (!sequence)
    {
      JreThrowNullPointerException();
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    duplicate = [sequence duplicate];
  }

  else
  {
    duplicate = JavaNioCharBuffer_wrapWithJavaLangCharSequence_(sequence);
  }

  return sub_100187B90(self, duplicate);
}

- (id)flushWithJavaNioByteBuffer:(id)buffer
{
  if ((atomic_load_explicit(JavaNioCharsetCoderResult__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100188000();
  }

  return JavaNioCharsetCoderResult_UNDERFLOW__;
}

- (id)replaceWithWithByteArray:(id)array
{
  if (!array)
  {
    v11 = @"replacement == null";
    goto LABEL_8;
  }

  v8 = *(array + 2);
  if (!v8)
  {
    v11 = @"replacement.length == 0";
    goto LABEL_8;
  }

  if (self->maxBytesPerChar_ < v8)
  {
    v13 = *(array + 2);
    v11 = JreStrcat("$I$F", a2, array, v3, v4, v5, v6, v7, @"replacement.length > maxBytesPerChar: ");
LABEL_8:
    v12 = new_JavaLangIllegalArgumentException_initWithNSString_(v11);
    objc_exception_throw(v12);
  }

  JreStrongAssign(&self->replacementBytes_, array);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioCharsetCharsetEncoder;
  [(JavaNioCharsetCharsetEncoder *)&v3 dealloc];
}

@end
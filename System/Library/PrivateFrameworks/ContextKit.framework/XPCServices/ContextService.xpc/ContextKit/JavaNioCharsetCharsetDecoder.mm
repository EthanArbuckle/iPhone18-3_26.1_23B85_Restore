@interface JavaNioCharsetCharsetDecoder
- (id)flushWithJavaNioCharBuffer:(id)buffer;
- (id)replaceWithWithNSString:(id)string;
- (void)dealloc;
@end

@implementation JavaNioCharsetCharsetDecoder

- (id)flushWithJavaNioCharBuffer:(id)buffer
{
  if ((atomic_load_explicit(JavaNioCharsetCoderResult__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100188000();
  }

  return JavaNioCharsetCoderResult_UNDERFLOW__;
}

- (id)replaceWithWithNSString:(id)string
{
  if (!string)
  {
    v6 = @"replacement == null";
    goto LABEL_6;
  }

  if ([string isEmpty])
  {
    v6 = @"replacement.isEmpty()";
LABEL_6:
    v7 = new_JavaLangIllegalArgumentException_initWithNSString_(v6);
    objc_exception_throw(v7);
  }

  JreStrongAssign(&self->replacementChars_, string);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioCharsetCharsetDecoder;
  [(JavaNioCharsetCharsetDecoder *)&v3 dealloc];
}

@end
@interface JavaNioCharsetCharsetDecoder
- (id)flushWithJavaNioCharBuffer:(id)a3;
- (id)replaceWithWithNSString:(id)a3;
- (void)dealloc;
@end

@implementation JavaNioCharsetCharsetDecoder

- (id)flushWithJavaNioCharBuffer:(id)a3
{
  if ((atomic_load_explicit(JavaNioCharsetCoderResult__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100188000();
  }

  return JavaNioCharsetCoderResult_UNDERFLOW__;
}

- (id)replaceWithWithNSString:(id)a3
{
  if (!a3)
  {
    v6 = @"replacement == null";
    goto LABEL_6;
  }

  if ([a3 isEmpty])
  {
    v6 = @"replacement.isEmpty()";
LABEL_6:
    v7 = new_JavaLangIllegalArgumentException_initWithNSString_(v6);
    objc_exception_throw(v7);
  }

  JreStrongAssign(&self->replacementChars_, a3);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioCharsetCharsetDecoder;
  [(JavaNioCharsetCharsetDecoder *)&v3 dealloc];
}

@end
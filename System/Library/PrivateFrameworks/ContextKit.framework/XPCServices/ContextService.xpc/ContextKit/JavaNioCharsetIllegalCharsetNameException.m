@interface JavaNioCharsetIllegalCharsetNameException
- (JavaNioCharsetIllegalCharsetNameException)initWithNSString:(id)a3;
- (void)dealloc;
@end

@implementation JavaNioCharsetIllegalCharsetNameException

- (JavaNioCharsetIllegalCharsetNameException)initWithNSString:(id)a3
{
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = @"null";
  }

  JavaLangIllegalArgumentException_initWithNSString_(self, v5);
  JreStrongAssign(&self->charsetName_, a3);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioCharsetIllegalCharsetNameException;
  [(JavaLangThrowable *)&v3 dealloc];
}

@end
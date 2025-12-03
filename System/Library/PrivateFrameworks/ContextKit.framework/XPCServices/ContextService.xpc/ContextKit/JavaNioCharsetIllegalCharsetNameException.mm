@interface JavaNioCharsetIllegalCharsetNameException
- (JavaNioCharsetIllegalCharsetNameException)initWithNSString:(id)string;
- (void)dealloc;
@end

@implementation JavaNioCharsetIllegalCharsetNameException

- (JavaNioCharsetIllegalCharsetNameException)initWithNSString:(id)string
{
  if (string)
  {
    stringCopy = string;
  }

  else
  {
    stringCopy = @"null";
  }

  JavaLangIllegalArgumentException_initWithNSString_(self, stringCopy);
  JreStrongAssign(&self->charsetName_, string);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioCharsetIllegalCharsetNameException;
  [(JavaLangThrowable *)&v3 dealloc];
}

@end
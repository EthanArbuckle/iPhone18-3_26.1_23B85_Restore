@interface JavaUtilFormatFlagsConversionMismatchException
- (id)getMessage;
- (void)dealloc;
@end

@implementation JavaUtilFormatFlagsConversionMismatchException

- (id)getMessage
{
  f = self->f_;
  c = self->c_;
  return JreStrcat("CC$$C", a2, v2, v3, v4, v5, v6, v7, 37);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilFormatFlagsConversionMismatchException;
  [(JavaLangThrowable *)&v3 dealloc];
}

@end
@interface JavaUtilIllegalFormatConversionException
- (id)getMessage;
- (void)dealloc;
@end

@implementation JavaUtilIllegalFormatConversionException

- (id)getMessage
{
  if (!*&self->c_)
  {
    JreThrowNullPointerException();
  }

  v2 = *(&self->super.super.super.super.super.rawFrameCount + 2);
  [*&self->c_ getName];
  return JreStrcat("CC$$$", v3, v4, v5, v6, v7, v8, v9, 37);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilIllegalFormatConversionException;
  [(JavaLangThrowable *)&v3 dealloc];
}

@end
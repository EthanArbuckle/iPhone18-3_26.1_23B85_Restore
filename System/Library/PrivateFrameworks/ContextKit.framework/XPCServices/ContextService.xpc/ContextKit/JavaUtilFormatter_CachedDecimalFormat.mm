@interface JavaUtilFormatter_CachedDecimalFormat
- (id)updateWithLibcoreIcuLocaleData:(id)a3 withNSString:(id)a4;
- (void)dealloc;
@end

@implementation JavaUtilFormatter_CachedDecimalFormat

- (id)updateWithLibcoreIcuLocaleData:(id)a3 withNSString:(id)a4
{
  p_decimalFormat = &self->decimalFormat_;
  if (!self->decimalFormat_)
  {
    JreStrongAssign(&self->currentPattern_, a4);
    JreStrongAssign(&self->currentLocaleData_, a3);
    v8 = new_LibcoreIcuNativeDecimalFormat_initWithNSString_withLibcoreIcuLocaleData_(self->currentPattern_, self->currentLocaleData_);
    JreStrongAssignAndConsume(p_decimalFormat, v8);
  }

  if (!a4)
  {
    goto LABEL_11;
  }

  if (([a4 isEqual:self->currentPattern_] & 1) == 0)
  {
    if (!*p_decimalFormat)
    {
      goto LABEL_11;
    }

    [(LibcoreIcuNativeDecimalFormat *)*p_decimalFormat applyPatternWithNSString:a4];
    JreStrongAssign(&self->currentPattern_, a4);
  }

  currentLocaleData = self->currentLocaleData_;
  p_currentLocaleData = &self->currentLocaleData_;
  if (currentLocaleData != a3)
  {
    if (*p_decimalFormat)
    {
      [(LibcoreIcuNativeDecimalFormat *)*p_decimalFormat setDecimalFormatSymbolsWithLibcoreIcuLocaleData:a3];
      JreStrongAssign(p_currentLocaleData, a3);
      return *p_decimalFormat;
    }

LABEL_11:
    JreThrowNullPointerException();
  }

  return *p_decimalFormat;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilFormatter_CachedDecimalFormat;
  [(JavaUtilFormatter_CachedDecimalFormat *)&v3 dealloc];
}

@end
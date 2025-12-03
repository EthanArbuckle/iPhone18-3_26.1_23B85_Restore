@interface JavaUtilFormatter_CachedDecimalFormat
- (id)updateWithLibcoreIcuLocaleData:(id)data withNSString:(id)string;
- (void)dealloc;
@end

@implementation JavaUtilFormatter_CachedDecimalFormat

- (id)updateWithLibcoreIcuLocaleData:(id)data withNSString:(id)string
{
  p_decimalFormat = &self->decimalFormat_;
  if (!self->decimalFormat_)
  {
    JreStrongAssign(&self->currentPattern_, string);
    JreStrongAssign(&self->currentLocaleData_, data);
    v8 = new_LibcoreIcuNativeDecimalFormat_initWithNSString_withLibcoreIcuLocaleData_(self->currentPattern_, self->currentLocaleData_);
    JreStrongAssignAndConsume(p_decimalFormat, v8);
  }

  if (!string)
  {
    goto LABEL_11;
  }

  if (([string isEqual:self->currentPattern_] & 1) == 0)
  {
    if (!*p_decimalFormat)
    {
      goto LABEL_11;
    }

    [(LibcoreIcuNativeDecimalFormat *)*p_decimalFormat applyPatternWithNSString:string];
    JreStrongAssign(&self->currentPattern_, string);
  }

  currentLocaleData = self->currentLocaleData_;
  p_currentLocaleData = &self->currentLocaleData_;
  if (currentLocaleData != data)
  {
    if (*p_decimalFormat)
    {
      [(LibcoreIcuNativeDecimalFormat *)*p_decimalFormat setDecimalFormatSymbolsWithLibcoreIcuLocaleData:data];
      JreStrongAssign(p_currentLocaleData, data);
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
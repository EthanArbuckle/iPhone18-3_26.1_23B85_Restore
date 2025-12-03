@interface JavaUtilCurrency
+ (void)initialize;
- (id)getSymbol;
- (id)getSymbolWithJavaUtilLocale:(id)locale;
- (int)getDefaultFractionDigits;
- (void)dealloc;
@end

@implementation JavaUtilCurrency

- (id)getSymbol
{
  Default = JavaUtilLocale_getDefault();

  return [(JavaUtilCurrency *)self getSymbolWithJavaUtilLocale:Default];
}

- (id)getSymbolWithJavaUtilLocale:(id)locale
{
  if (!locale)
  {
    goto LABEL_12;
  }

  getCountry = [locale getCountry];
  if (!getCountry)
  {
    goto LABEL_12;
  }

  if (![getCountry length])
  {
    p_currencyCode = &self->currencyCode_;
    return *p_currencyCode;
  }

  v6 = LibcoreIcuLocaleData_getWithJavaUtilLocale_(locale);
  if (!v6 || (v7 = v6, (internationalCurrencySymbol = v6->internationalCurrencySymbol_) == 0))
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  currencyCode = self->currencyCode_;
  p_currencyCode = &self->currencyCode_;
  if ([(NSString *)internationalCurrencySymbol isEqual:currencyCode])
  {
    p_currencyCode = &v7->currencySymbol_;
  }

  else
  {
    result = LibcoreIcuICU_getCurrencySymbolWithNSString_([locale description]);
    if (result)
    {
      return result;
    }
  }

  return *p_currencyCode;
}

- (int)getDefaultFractionDigits
{
  currencyCode = self->currencyCode_;
  if (!currencyCode)
  {
    JreThrowNullPointerException();
  }

  if (([(NSString *)currencyCode isEqual:@"XXX"]& 1) != 0)
  {
    return -1;
  }

  v5 = self->currencyCode_;

  return LibcoreIcuICU_getCurrencyFractionDigitsWithNSString_(v5);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCurrency;
  [(JavaUtilCurrency *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = new_JavaUtilHashMap_init();
    JreStrongAssignAndConsume(&qword_100554E10, v2);
    v3 = new_JavaUtilHashMap_init();
    JreStrongAssignAndConsume(&qword_100554E18, v3);
    atomic_store(1u, &JavaUtilCurrency__initialized);
  }
}

@end
@interface LibcoreIcuLocaleData
+ (BOOL)initLocaleDataImplWithNSString:(id)a3 withLibcoreIcuLocaleData:(id)a4;
+ (void)initialize;
- (id)getDateFormatWithInt:(int)a3;
- (id)getTimeFormatWithInt:(int)a3;
- (void)dealloc;
@end

@implementation LibcoreIcuLocaleData

- (id)getDateFormatWithInt:(int)a3
{
  if (a3 >= 4)
  {
    v4 = new_JavaLangAssertionError_init();
    objc_exception_throw(v4);
  }

  return *(&self->fullDateFormat_ + (8 * a3));
}

- (id)getTimeFormatWithInt:(int)a3
{
  if (a3 >= 4)
  {
    v4 = new_JavaLangAssertionError_init();
    objc_exception_throw(v4);
  }

  return *(&self->fullTimeFormat_ + (8 * a3));
}

+ (BOOL)initLocaleDataImplWithNSString:(id)a3 withLibcoreIcuLocaleData:(id)a4
{
  if ((atomic_load_explicit(LibcoreIcuLocaleData__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001792E0();
  }

  [IOSLocaleData initLocaleDataImplWithNSString:a3 withLibcoreIcuLocaleData:a4];
  return 1;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = LibcoreIcuLocaleData;
  [(LibcoreIcuLocaleData *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = new_JavaUtilHashMap_init();
    JreStrongAssignAndConsume(&qword_100554B40, v2);
    if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1000458CC();
    }

    LibcoreIcuLocaleData_getWithJavaUtilLocale_(JavaUtilLocale_ROOT_);
    if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1000458CC();
    }

    LibcoreIcuLocaleData_getWithJavaUtilLocale_(JavaUtilLocale_US_);
    Default = JavaUtilLocale_getDefault();
    LibcoreIcuLocaleData_getWithJavaUtilLocale_(Default);
    atomic_store(1u, LibcoreIcuLocaleData__initialized);
  }
}

@end
@interface LibcoreIcuLocaleData
+ (BOOL)initLocaleDataImplWithNSString:(id)string withLibcoreIcuLocaleData:(id)data;
+ (void)initialize;
- (id)getDateFormatWithInt:(int)int;
- (id)getTimeFormatWithInt:(int)int;
- (void)dealloc;
@end

@implementation LibcoreIcuLocaleData

- (id)getDateFormatWithInt:(int)int
{
  if (int >= 4)
  {
    v4 = new_JavaLangAssertionError_init();
    objc_exception_throw(v4);
  }

  return *(&self->fullDateFormat_ + (8 * int));
}

- (id)getTimeFormatWithInt:(int)int
{
  if (int >= 4)
  {
    v4 = new_JavaLangAssertionError_init();
    objc_exception_throw(v4);
  }

  return *(&self->fullTimeFormat_ + (8 * int));
}

+ (BOOL)initLocaleDataImplWithNSString:(id)string withLibcoreIcuLocaleData:(id)data
{
  if ((atomic_load_explicit(LibcoreIcuLocaleData__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001792E0();
  }

  [IOSLocaleData initLocaleDataImplWithNSString:string withLibcoreIcuLocaleData:data];
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
  if (objc_opt_class() == self)
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
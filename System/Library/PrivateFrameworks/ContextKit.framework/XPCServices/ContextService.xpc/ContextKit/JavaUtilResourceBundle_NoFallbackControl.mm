@interface JavaUtilResourceBundle_NoFallbackControl
+ (void)initialize;
- (JavaUtilResourceBundle_NoFallbackControl)initWithJavaUtilList:(id)a3;
- (id)getFallbackLocaleWithNSString:(id)a3 withJavaUtilLocale:(id)a4;
@end

@implementation JavaUtilResourceBundle_NoFallbackControl

- (JavaUtilResourceBundle_NoFallbackControl)initWithJavaUtilList:(id)a3
{
  JavaUtilResourceBundle_Control_init(self);
  JreStrongAssign(&self->super.format_, a3);
  return self;
}

- (id)getFallbackLocaleWithNSString:(id)a3 withJavaUtilLocale:(id)a4
{
  if (!a3)
  {
    v5 = @"baseName == null";
    goto LABEL_6;
  }

  if (!a4)
  {
    v5 = @"locale == null";
LABEL_6:
    v6 = new_JavaLangNullPointerException_initWithNSString_(v5);
    objc_exception_throw(v6);
  }

  return 0;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    if ((atomic_load_explicit(JavaUtilResourceBundle_Control__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100247064();
    }

    v2 = JavaUtilResourceBundle_Control_JAVAPROPERTIES_;
    v3 = [JavaUtilResourceBundle_NoFallbackControl alloc];
    sub_100246D90(v3, v2);
    JreStrongAssignAndConsume(&qword_1005553C0, v3);
    if ((atomic_load_explicit(JavaUtilResourceBundle_Control__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100247064();
    }

    v4 = JavaUtilResourceBundle_Control_JAVACLASS_;
    v5 = [JavaUtilResourceBundle_NoFallbackControl alloc];
    sub_100246D90(v5, v4);
    JreStrongAssignAndConsume(&qword_1005553B8, v5);
    if ((atomic_load_explicit(JavaUtilResourceBundle_Control__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100247064();
    }

    v6 = JavaUtilResourceBundle_Control_listDefault_;
    v7 = [JavaUtilResourceBundle_NoFallbackControl alloc];
    JavaUtilResourceBundle_Control_init(v7);
    JreStrongAssign(&v7->super.format_, v6);
    JreStrongAssignAndConsume(&qword_1005553C8, v7);
    atomic_store(1u, &JavaUtilResourceBundle_NoFallbackControl__initialized);
  }
}

@end
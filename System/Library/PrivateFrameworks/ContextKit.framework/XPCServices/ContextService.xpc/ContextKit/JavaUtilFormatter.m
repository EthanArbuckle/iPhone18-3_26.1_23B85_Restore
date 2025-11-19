@interface JavaUtilFormatter
+ (void)initialize;
- (JavaUtilFormatter)init;
- (JavaUtilFormatter)initWithJavaIoFile:(id)a3;
- (JavaUtilFormatter)initWithJavaIoFile:(id)a3 withNSString:(id)a4;
- (JavaUtilFormatter)initWithJavaIoOutputStream:(id)a3 withNSString:(id)a4;
- (JavaUtilFormatter)initWithJavaLangAppendable:(id)a3;
- (JavaUtilFormatter)initWithJavaUtilLocale:(id)a3;
- (JavaUtilFormatter)initWithNSString:(id)a3 withNSString:(id)a4 withJavaUtilLocale:(id)a5;
- (NSString)description;
- (id)formatWithJavaUtilLocale:(id)a3 withNSString:(id)a4 withNSObjectArray:(id)a5;
- (id)getDecimalFormatWithNSString:(id)a3;
- (id)transformFromNull;
- (int)to12HourWithInt:(int)a3;
- (void)close;
- (void)dealloc;
- (void)flush;
@end

@implementation JavaUtilFormatter

- (id)getDecimalFormatWithNSString:(id)a3
{
  if (!qword_100554910 || (v5 = [qword_100554910 get]) == 0)
  {
    JreThrowNullPointerException();
  }

  localeData = self->localeData_;

  return [v5 updateWithLibcoreIcuLocaleData:localeData withNSString:a3];
}

- (JavaUtilFormatter)init
{
  v3 = new_JavaLangStringBuilder_init();
  Default = JavaUtilLocale_getDefault();
  JavaUtilFormatter_initWithJavaLangAppendable_withJavaUtilLocale_(self, v3, Default);
  return self;
}

- (JavaUtilFormatter)initWithJavaLangAppendable:(id)a3
{
  Default = JavaUtilLocale_getDefault();
  JavaUtilFormatter_initWithJavaLangAppendable_withJavaUtilLocale_(self, a3, Default);
  return self;
}

- (JavaUtilFormatter)initWithJavaUtilLocale:(id)a3
{
  v5 = new_JavaLangStringBuilder_init();
  JavaUtilFormatter_initWithJavaLangAppendable_withJavaUtilLocale_(self, v5, a3);
  return self;
}

- (JavaUtilFormatter)initWithNSString:(id)a3 withNSString:(id)a4 withJavaUtilLocale:(id)a5
{
  v8 = new_JavaIoFile_initWithNSString_(a3);
  JavaUtilFormatter_initWithJavaIoFile_withNSString_withJavaUtilLocale_(self, v8, a4, a5);
  return self;
}

- (JavaUtilFormatter)initWithJavaIoFile:(id)a3
{
  v4 = new_JavaIoFileOutputStream_initWithJavaIoFile_(a3);
  JavaUtilFormatter_initWithJavaIoOutputStream_(self, v4);
  return self;
}

- (JavaUtilFormatter)initWithJavaIoFile:(id)a3 withNSString:(id)a4
{
  Default = JavaUtilLocale_getDefault();
  JavaUtilFormatter_initWithJavaIoFile_withNSString_withJavaUtilLocale_(self, a3, a4, Default);
  return self;
}

- (JavaUtilFormatter)initWithJavaIoOutputStream:(id)a3 withNSString:(id)a4
{
  Default = JavaUtilLocale_getDefault();
  JavaUtilFormatter_initWithJavaIoOutputStream_withNSString_withJavaUtilLocale_(self, a3, a4, Default);
  return self;
}

- (NSString)description
{
  sub_100142F58(self);
  out = self->out_;
  if (!out)
  {
    JreThrowNullPointerException();
  }

  return [(JavaLangAppendable *)out description];
}

- (void)flush
{
  sub_100142F58(self);
  if ([JavaIoFlushable_class_() isInstance:self->out_])
  {
    out = self->out_;
    v4 = JavaIoFlushable_class_();
    if (!out)
    {
      JreThrowNullPointerException();
    }

    if (([v4 isInstance:out] & 1) == 0)
    {
      JreThrowClassCastException();
    }

    [(JavaLangAppendable *)out flush];
  }
}

- (void)close
{
  if (!self->closed_)
  {
    self->closed_ = 1;
    if ([JavaIoCloseable_class_() isInstance:self->out_])
    {
      out = self->out_;
      v4 = JavaIoCloseable_class_();
      if (!out)
      {
        JreThrowNullPointerException();
      }

      if (([v4 isInstance:out] & 1) == 0)
      {
        JreThrowClassCastException();
      }

      [(JavaLangAppendable *)out close];
    }
  }
}

- (id)formatWithJavaUtilLocale:(id)a3 withNSString:(id)a4 withNSObjectArray:(id)a5
{
  v7 = a3;
  p_locale = &self->locale_;
  locale = self->locale_;
  if (!a3)
  {
    if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
    {
      objc_opt_class();
    }

    v7 = JavaUtilLocale_US_;
  }

  JreStrongAssign(p_locale, v7);
  v11 = LibcoreIcuLocaleData_getWithJavaUtilLocale_(*p_locale);
  JreStrongAssign(&self->localeData_, v11);
  sub_100143280(self, a4, a5);
  JreStrongAssign(p_locale, locale);
  return self;
}

- (id)transformFromNull
{
  formatToken = self->formatToken_;
  if (!formatToken)
  {
    JreThrowNullPointerException();
  }

  formatToken->flagZero_ = 0;

  return sub_100144084(self, @"null", 0);
}

- (int)to12HourWithInt:(int)a3
{
  if (a3)
  {
    return a3;
  }

  else
  {
    return 12;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilFormatter;
  [(JavaUtilFormatter *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v4 = 48;
    v3 = *L"000000000";
    JreStrongAssignAndConsume(&qword_100554908, [IOSCharArray newArrayWithChars:&v3 count:9]);
    v2 = [JavaUtilFormatter__1 alloc];
    JavaLangThreadLocal_init(v2);
    JreStrongAssignAndConsume(&qword_100554910, v2);
    atomic_store(1u, &JavaUtilFormatter__initialized);
  }
}

@end
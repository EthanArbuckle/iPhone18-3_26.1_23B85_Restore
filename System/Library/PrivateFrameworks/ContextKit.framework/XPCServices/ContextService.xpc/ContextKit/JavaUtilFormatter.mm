@interface JavaUtilFormatter
+ (void)initialize;
- (JavaUtilFormatter)init;
- (JavaUtilFormatter)initWithJavaIoFile:(id)file;
- (JavaUtilFormatter)initWithJavaIoFile:(id)file withNSString:(id)string;
- (JavaUtilFormatter)initWithJavaIoOutputStream:(id)stream withNSString:(id)string;
- (JavaUtilFormatter)initWithJavaLangAppendable:(id)appendable;
- (JavaUtilFormatter)initWithJavaUtilLocale:(id)locale;
- (JavaUtilFormatter)initWithNSString:(id)string withNSString:(id)sString withJavaUtilLocale:(id)locale;
- (NSString)description;
- (id)formatWithJavaUtilLocale:(id)locale withNSString:(id)string withNSObjectArray:(id)array;
- (id)getDecimalFormatWithNSString:(id)string;
- (id)transformFromNull;
- (int)to12HourWithInt:(int)int;
- (void)close;
- (void)dealloc;
- (void)flush;
@end

@implementation JavaUtilFormatter

- (id)getDecimalFormatWithNSString:(id)string
{
  if (!qword_100554910 || (v5 = [qword_100554910 get]) == 0)
  {
    JreThrowNullPointerException();
  }

  localeData = self->localeData_;

  return [v5 updateWithLibcoreIcuLocaleData:localeData withNSString:string];
}

- (JavaUtilFormatter)init
{
  v3 = new_JavaLangStringBuilder_init();
  Default = JavaUtilLocale_getDefault();
  JavaUtilFormatter_initWithJavaLangAppendable_withJavaUtilLocale_(self, v3, Default);
  return self;
}

- (JavaUtilFormatter)initWithJavaLangAppendable:(id)appendable
{
  Default = JavaUtilLocale_getDefault();
  JavaUtilFormatter_initWithJavaLangAppendable_withJavaUtilLocale_(self, appendable, Default);
  return self;
}

- (JavaUtilFormatter)initWithJavaUtilLocale:(id)locale
{
  v5 = new_JavaLangStringBuilder_init();
  JavaUtilFormatter_initWithJavaLangAppendable_withJavaUtilLocale_(self, v5, locale);
  return self;
}

- (JavaUtilFormatter)initWithNSString:(id)string withNSString:(id)sString withJavaUtilLocale:(id)locale
{
  v8 = new_JavaIoFile_initWithNSString_(string);
  JavaUtilFormatter_initWithJavaIoFile_withNSString_withJavaUtilLocale_(self, v8, sString, locale);
  return self;
}

- (JavaUtilFormatter)initWithJavaIoFile:(id)file
{
  v4 = new_JavaIoFileOutputStream_initWithJavaIoFile_(file);
  JavaUtilFormatter_initWithJavaIoOutputStream_(self, v4);
  return self;
}

- (JavaUtilFormatter)initWithJavaIoFile:(id)file withNSString:(id)string
{
  Default = JavaUtilLocale_getDefault();
  JavaUtilFormatter_initWithJavaIoFile_withNSString_withJavaUtilLocale_(self, file, string, Default);
  return self;
}

- (JavaUtilFormatter)initWithJavaIoOutputStream:(id)stream withNSString:(id)string
{
  Default = JavaUtilLocale_getDefault();
  JavaUtilFormatter_initWithJavaIoOutputStream_withNSString_withJavaUtilLocale_(self, stream, string, Default);
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

- (id)formatWithJavaUtilLocale:(id)locale withNSString:(id)string withNSObjectArray:(id)array
{
  localeCopy = locale;
  p_locale = &self->locale_;
  locale = self->locale_;
  if (!locale)
  {
    if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
    {
      objc_opt_class();
    }

    localeCopy = JavaUtilLocale_US_;
  }

  JreStrongAssign(p_locale, localeCopy);
  v11 = LibcoreIcuLocaleData_getWithJavaUtilLocale_(*p_locale);
  JreStrongAssign(&self->localeData_, v11);
  sub_100143280(self, string, array);
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

- (int)to12HourWithInt:(int)int
{
  if (int)
  {
    return int;
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
  if (objc_opt_class() == self)
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
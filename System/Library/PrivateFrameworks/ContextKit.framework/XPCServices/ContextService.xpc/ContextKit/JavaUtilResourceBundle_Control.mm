@interface JavaUtilResourceBundle_Control
+ (void)initialize;
- (BOOL)needsReloadWithNSString:(id)string withJavaUtilLocale:(id)locale withNSString:(id)sString withJavaLangClassLoader:(id)loader withJavaUtilResourceBundle:(id)bundle withLong:(int64_t)long;
- (id)getCandidateLocalesWithNSString:(id)string withJavaUtilLocale:(id)locale;
- (id)getFallbackLocaleWithNSString:(id)string withJavaUtilLocale:(id)locale;
- (id)getFormatsWithNSString:(id)string;
- (id)newBundleWithNSString:(id)string withJavaUtilLocale:(id)locale withNSString:(id)sString withJavaLangClassLoader:(id)loader withBoolean:(BOOL)boolean;
- (id)toBundleNameWithNSString:(id)string withJavaUtilLocale:(id)locale;
- (int64_t)getTimeToLiveWithNSString:(id)string withJavaUtilLocale:(id)locale;
- (void)dealloc;
@end

@implementation JavaUtilResourceBundle_Control

- (id)getCandidateLocalesWithNSString:(id)string withJavaUtilLocale:(id)locale
{
  if (!string)
  {
    v10 = @"baseName == null";
    goto LABEL_16;
  }

  if (!locale)
  {
    v10 = @"locale == null";
LABEL_16:
    v11 = new_JavaLangNullPointerException_initWithNSString_(v10);
    objc_exception_throw(v11);
  }

  v5 = new_JavaUtilArrayList_init();
  getLanguage = [locale getLanguage];
  getCountry = [locale getCountry];
  getVariant = [locale getVariant];
  if (!off_100552248)
  {
    JreThrowNullPointerException();
  }

  if (([off_100552248 isEqual:getVariant] & 1) == 0)
  {
    [(JavaUtilArrayList *)v5 addWithId:new_JavaUtilLocale_initWithNSString_withNSString_withNSString_(getLanguage, getCountry, getVariant)];
  }

  if (([off_100552248 isEqual:getCountry] & 1) == 0)
  {
    [(JavaUtilArrayList *)v5 addWithId:new_JavaUtilLocale_initWithNSString_withNSString_(getLanguage, getCountry)];
  }

  if (([off_100552248 isEqual:getLanguage] & 1) == 0)
  {
    [(JavaUtilArrayList *)v5 addWithId:new_JavaUtilLocale_initWithNSString_(getLanguage)];
  }

  if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000458CC();
  }

  [(JavaUtilArrayList *)v5 addWithId:JavaUtilLocale_ROOT_];
  return v5;
}

- (id)getFormatsWithNSString:(id)string
{
  if (!string)
  {
    v4 = new_JavaLangNullPointerException_initWithNSString_(@"baseName == null");
    objc_exception_throw(v4);
  }

  return self->format_;
}

- (id)getFallbackLocaleWithNSString:(id)string withJavaUtilLocale:(id)locale
{
  if (!string)
  {
    v5 = @"baseName == null";
    goto LABEL_10;
  }

  if (!locale)
  {
    v5 = @"locale == null";
LABEL_10:
    v6 = new_JavaLangNullPointerException_initWithNSString_(v5);
    objc_exception_throw(v6);
  }

  if (JavaUtilLocale_getDefault() == locale)
  {
    return 0;
  }

  return JavaUtilLocale_getDefault();
}

- (id)newBundleWithNSString:(id)string withJavaUtilLocale:(id)locale withNSString:(id)sString withJavaLangClassLoader:(id)loader withBoolean:(BOOL)boolean
{
  if (!sString)
  {
    v19 = @"format == null";
LABEL_18:
    v20 = new_JavaLangNullPointerException_initWithNSString_(v19);
    goto LABEL_19;
  }

  if (!loader)
  {
    v19 = @"loader == null";
    goto LABEL_18;
  }

  booleanCopy = boolean;
  v11 = [(JavaUtilResourceBundle_Control *)self toBundleNameWithNSString:string withJavaUtilLocale:?];
  if (![sString isEqual:JavaUtilResourceBundle_Control_JAVACLASS_])
  {
    if ([sString isEqual:JavaUtilResourceBundle_Control_JAVAPROPERTIES_])
    {
      v14 = sub_10024684C(v11, @"properties");
      if (booleanCopy)
      {
        v15 = [loader getResourceWithNSString:v14];
        if (!v15)
        {
          return 0;
        }

        v16 = new_JavaIoFileInputStream_initWithNSString_([v15 getFile]);
      }

      else
      {
        v16 = [loader getResourceAsStreamWithNSString:v14];
      }

      v17 = v16;
      if (v16)
      {
        v18 = new_JavaIoInputStreamReader_initWithJavaIoInputStream_(v16);
        newInstance = new_JavaUtilPropertyResourceBundle_initWithJavaIoReader_(v18);
        JreStrongAssign(&newInstance->super.locale_, locale);
        [(JavaIoFileInputStream *)v17 close];
        return newInstance;
      }

      return 0;
    }

    v20 = new_JavaLangIllegalArgumentException_init();
LABEL_19:
    objc_exception_throw(v20);
  }

  v12 = [loader loadClassWithNSString:v11];
  if (!v12)
  {
    return 0;
  }

  newInstance = [v12 newInstance];
  objc_opt_class();
  if (!newInstance)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  JreStrongAssign(&newInstance->super.locale_, locale);
  return newInstance;
}

- (int64_t)getTimeToLiveWithNSString:(id)string withJavaUtilLocale:(id)locale
{
  if (!string)
  {
    v5 = @"baseName == null";
    goto LABEL_6;
  }

  if (!locale)
  {
    v5 = @"locale == null";
LABEL_6:
    v6 = new_JavaLangNullPointerException_initWithNSString_(v5);
    objc_exception_throw(v6);
  }

  return -2;
}

- (BOOL)needsReloadWithNSString:(id)string withJavaUtilLocale:(id)locale withNSString:(id)sString withJavaLangClassLoader:(id)loader withJavaUtilResourceBundle:(id)bundle withLong:(int64_t)long
{
  if (!bundle)
  {
    v18 = new_JavaLangNullPointerException_initWithNSString_(@"bundle == null");
    objc_exception_throw(v18);
  }

  v11 = [(JavaUtilResourceBundle_Control *)self toBundleNameWithNSString:string withJavaUtilLocale:locale];
  if (!sString || ((v12 = v11, ![sString isEqual:JavaUtilResourceBundle_Control_JAVACLASS_]) ? (v13 = sString) : (v13 = @"class"), !objc_msgSend(sString, "isEqual:", JavaUtilResourceBundle_Control_JAVAPROPERTIES_) ? (v14 = v13) : (v14 = @"properties"), v15 = sub_10024684C(v12, v14), !loader))
  {
    JreThrowNullPointerException();
  }

  v16 = [loader getResourceWithNSString:v15];
  return v16 && -[JavaIoFile lastModified](new_JavaIoFile_initWithNSString_([v16 getFile]), "lastModified") > long;
}

- (id)toBundleNameWithNSString:(id)string withJavaUtilLocale:(id)locale
{
  if (!string)
  {
    v16 = new_JavaLangNullPointerException_initWithNSString_(@"baseName == null");
    objc_exception_throw(v16);
  }

  v6 = off_100552248;
  v7 = off_100552240;
  v8 = new_JavaLangStringBuilder_init();
  v9 = new_JavaLangStringBuilder_init();
  [(JavaLangStringBuilder *)v8 appendWithNSString:string];
  if (!locale)
  {
    goto LABEL_17;
  }

  getLanguage = [locale getLanguage];
  if (!getLanguage)
  {
    goto LABEL_17;
  }

  if ([getLanguage isEqual:v6])
  {
    v11 = v9;
    getLanguage2 = v7;
  }

  else
  {
    [(JavaLangStringBuilder *)v8 appendWithNSString:v7];
    getLanguage2 = [locale getLanguage];
    v11 = v8;
  }

  [(JavaLangStringBuilder *)v11 appendWithNSString:getLanguage2];
  getCountry = [locale getCountry];
  if (!getCountry)
  {
    goto LABEL_17;
  }

  if ([getCountry isEqual:v6])
  {
    [(JavaLangStringBuilder *)v9 appendWithNSString:v7];
  }

  else
  {
    [(JavaLangStringBuilder *)v8 appendWithJavaLangCharSequence:v9];
    [(JavaLangStringBuilder *)v8 appendWithNSString:v7];
    -[JavaLangStringBuilder appendWithNSString:](v8, "appendWithNSString:", [locale getCountry]);
    v9 = new_JavaLangStringBuilder_init();
  }

  getVariant = [locale getVariant];
  if (!getVariant)
  {
LABEL_17:
    JreThrowNullPointerException();
  }

  if (([getVariant isEqual:v6] & 1) == 0)
  {
    [(JavaLangStringBuilder *)v8 appendWithJavaLangCharSequence:v9];
    [(JavaLangStringBuilder *)v8 appendWithNSString:v7];
    -[JavaLangStringBuilder appendWithNSString:](v8, "appendWithNSString:", [locale getVariant]);
  }

  return [(JavaLangStringBuilder *)v8 description];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilResourceBundle_Control;
  [(JavaUtilResourceBundle_Control *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = new_JavaUtilArrayList_init();
    JreStrongAssignAndConsume(&JavaUtilResourceBundle_Control_listDefault_, v2);
    v3 = new_JavaUtilArrayList_init();
    JreStrongAssignAndConsume(&JavaUtilResourceBundle_Control_listClass_, v3);
    v4 = new_JavaUtilArrayList_init();
    JreStrongAssignAndConsume(&JavaUtilResourceBundle_Control_listProperties_, v4);
    [JavaUtilResourceBundle_Control_listDefault_ addWithId:JavaUtilResourceBundle_Control_JAVACLASS_];
    [JavaUtilResourceBundle_Control_listDefault_ addWithId:JavaUtilResourceBundle_Control_JAVAPROPERTIES_];
    [JavaUtilResourceBundle_Control_listClass_ addWithId:JavaUtilResourceBundle_Control_JAVACLASS_];
    [JavaUtilResourceBundle_Control_listProperties_ addWithId:JavaUtilResourceBundle_Control_JAVAPROPERTIES_];
    v5 = JavaUtilCollections_unmodifiableListWithJavaUtilList_(JavaUtilResourceBundle_Control_listDefault_);
    JreStrongAssign(&JavaUtilResourceBundle_Control_FORMAT_DEFAULT_, v5);
    v6 = JavaUtilCollections_unmodifiableListWithJavaUtilList_(JavaUtilResourceBundle_Control_listClass_);
    JreStrongAssign(&JavaUtilResourceBundle_Control_FORMAT_CLASS_, v6);
    v7 = JavaUtilCollections_unmodifiableListWithJavaUtilList_(JavaUtilResourceBundle_Control_listProperties_);
    JreStrongAssign(&JavaUtilResourceBundle_Control_FORMAT_PROPERTIES_, v7);
    v8 = JavaUtilResourceBundle_Control_JAVAPROPERTIES_;
    v9 = [JavaUtilResourceBundle_SimpleControl alloc];
    sub_100246D90(v9, v8);
    JreStrongAssignAndConsume(&qword_1005553A0, v9);
    v10 = JavaUtilResourceBundle_Control_JAVACLASS_;
    v11 = [JavaUtilResourceBundle_SimpleControl alloc];
    sub_100246D90(v11, v10);
    JreStrongAssignAndConsume(&qword_1005553A8, v11);
    v12 = [JavaUtilResourceBundle_Control alloc];
    JavaUtilResourceBundle_Control_init(v12);
    JreStrongAssignAndConsume(&qword_1005553B0, v12);
    atomic_store(1u, JavaUtilResourceBundle_Control__initialized);
  }
}

@end
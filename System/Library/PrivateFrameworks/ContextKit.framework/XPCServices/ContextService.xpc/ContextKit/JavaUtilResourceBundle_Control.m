@interface JavaUtilResourceBundle_Control
+ (void)initialize;
- (BOOL)needsReloadWithNSString:(id)a3 withJavaUtilLocale:(id)a4 withNSString:(id)a5 withJavaLangClassLoader:(id)a6 withJavaUtilResourceBundle:(id)a7 withLong:(int64_t)a8;
- (id)getCandidateLocalesWithNSString:(id)a3 withJavaUtilLocale:(id)a4;
- (id)getFallbackLocaleWithNSString:(id)a3 withJavaUtilLocale:(id)a4;
- (id)getFormatsWithNSString:(id)a3;
- (id)newBundleWithNSString:(id)a3 withJavaUtilLocale:(id)a4 withNSString:(id)a5 withJavaLangClassLoader:(id)a6 withBoolean:(BOOL)a7;
- (id)toBundleNameWithNSString:(id)a3 withJavaUtilLocale:(id)a4;
- (int64_t)getTimeToLiveWithNSString:(id)a3 withJavaUtilLocale:(id)a4;
- (void)dealloc;
@end

@implementation JavaUtilResourceBundle_Control

- (id)getCandidateLocalesWithNSString:(id)a3 withJavaUtilLocale:(id)a4
{
  if (!a3)
  {
    v10 = @"baseName == null";
    goto LABEL_16;
  }

  if (!a4)
  {
    v10 = @"locale == null";
LABEL_16:
    v11 = new_JavaLangNullPointerException_initWithNSString_(v10);
    objc_exception_throw(v11);
  }

  v5 = new_JavaUtilArrayList_init();
  v6 = [a4 getLanguage];
  v7 = [a4 getCountry];
  v8 = [a4 getVariant];
  if (!off_100552248)
  {
    JreThrowNullPointerException();
  }

  if (([off_100552248 isEqual:v8] & 1) == 0)
  {
    [(JavaUtilArrayList *)v5 addWithId:new_JavaUtilLocale_initWithNSString_withNSString_withNSString_(v6, v7, v8)];
  }

  if (([off_100552248 isEqual:v7] & 1) == 0)
  {
    [(JavaUtilArrayList *)v5 addWithId:new_JavaUtilLocale_initWithNSString_withNSString_(v6, v7)];
  }

  if (([off_100552248 isEqual:v6] & 1) == 0)
  {
    [(JavaUtilArrayList *)v5 addWithId:new_JavaUtilLocale_initWithNSString_(v6)];
  }

  if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000458CC();
  }

  [(JavaUtilArrayList *)v5 addWithId:JavaUtilLocale_ROOT_];
  return v5;
}

- (id)getFormatsWithNSString:(id)a3
{
  if (!a3)
  {
    v4 = new_JavaLangNullPointerException_initWithNSString_(@"baseName == null");
    objc_exception_throw(v4);
  }

  return self->format_;
}

- (id)getFallbackLocaleWithNSString:(id)a3 withJavaUtilLocale:(id)a4
{
  if (!a3)
  {
    v5 = @"baseName == null";
    goto LABEL_10;
  }

  if (!a4)
  {
    v5 = @"locale == null";
LABEL_10:
    v6 = new_JavaLangNullPointerException_initWithNSString_(v5);
    objc_exception_throw(v6);
  }

  if (JavaUtilLocale_getDefault() == a4)
  {
    return 0;
  }

  return JavaUtilLocale_getDefault();
}

- (id)newBundleWithNSString:(id)a3 withJavaUtilLocale:(id)a4 withNSString:(id)a5 withJavaLangClassLoader:(id)a6 withBoolean:(BOOL)a7
{
  if (!a5)
  {
    v19 = @"format == null";
LABEL_18:
    v20 = new_JavaLangNullPointerException_initWithNSString_(v19);
    goto LABEL_19;
  }

  if (!a6)
  {
    v19 = @"loader == null";
    goto LABEL_18;
  }

  v8 = a7;
  v11 = [(JavaUtilResourceBundle_Control *)self toBundleNameWithNSString:a3 withJavaUtilLocale:?];
  if (![a5 isEqual:JavaUtilResourceBundle_Control_JAVACLASS_])
  {
    if ([a5 isEqual:JavaUtilResourceBundle_Control_JAVAPROPERTIES_])
    {
      v14 = sub_10024684C(v11, @"properties");
      if (v8)
      {
        v15 = [a6 getResourceWithNSString:v14];
        if (!v15)
        {
          return 0;
        }

        v16 = new_JavaIoFileInputStream_initWithNSString_([v15 getFile]);
      }

      else
      {
        v16 = [a6 getResourceAsStreamWithNSString:v14];
      }

      v17 = v16;
      if (v16)
      {
        v18 = new_JavaIoInputStreamReader_initWithJavaIoInputStream_(v16);
        v13 = new_JavaUtilPropertyResourceBundle_initWithJavaIoReader_(v18);
        JreStrongAssign(&v13->super.locale_, a4);
        [(JavaIoFileInputStream *)v17 close];
        return v13;
      }

      return 0;
    }

    v20 = new_JavaLangIllegalArgumentException_init();
LABEL_19:
    objc_exception_throw(v20);
  }

  v12 = [a6 loadClassWithNSString:v11];
  if (!v12)
  {
    return 0;
  }

  v13 = [v12 newInstance];
  objc_opt_class();
  if (!v13)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  JreStrongAssign(&v13->super.locale_, a4);
  return v13;
}

- (int64_t)getTimeToLiveWithNSString:(id)a3 withJavaUtilLocale:(id)a4
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

  return -2;
}

- (BOOL)needsReloadWithNSString:(id)a3 withJavaUtilLocale:(id)a4 withNSString:(id)a5 withJavaLangClassLoader:(id)a6 withJavaUtilResourceBundle:(id)a7 withLong:(int64_t)a8
{
  if (!a7)
  {
    v18 = new_JavaLangNullPointerException_initWithNSString_(@"bundle == null");
    objc_exception_throw(v18);
  }

  v11 = [(JavaUtilResourceBundle_Control *)self toBundleNameWithNSString:a3 withJavaUtilLocale:a4];
  if (!a5 || ((v12 = v11, ![a5 isEqual:JavaUtilResourceBundle_Control_JAVACLASS_]) ? (v13 = a5) : (v13 = @"class"), !objc_msgSend(a5, "isEqual:", JavaUtilResourceBundle_Control_JAVAPROPERTIES_) ? (v14 = v13) : (v14 = @"properties"), v15 = sub_10024684C(v12, v14), !a6))
  {
    JreThrowNullPointerException();
  }

  v16 = [a6 getResourceWithNSString:v15];
  return v16 && -[JavaIoFile lastModified](new_JavaIoFile_initWithNSString_([v16 getFile]), "lastModified") > a8;
}

- (id)toBundleNameWithNSString:(id)a3 withJavaUtilLocale:(id)a4
{
  if (!a3)
  {
    v16 = new_JavaLangNullPointerException_initWithNSString_(@"baseName == null");
    objc_exception_throw(v16);
  }

  v6 = off_100552248;
  v7 = off_100552240;
  v8 = new_JavaLangStringBuilder_init();
  v9 = new_JavaLangStringBuilder_init();
  [(JavaLangStringBuilder *)v8 appendWithNSString:a3];
  if (!a4)
  {
    goto LABEL_17;
  }

  v10 = [a4 getLanguage];
  if (!v10)
  {
    goto LABEL_17;
  }

  if ([v10 isEqual:v6])
  {
    v11 = v9;
    v12 = v7;
  }

  else
  {
    [(JavaLangStringBuilder *)v8 appendWithNSString:v7];
    v12 = [a4 getLanguage];
    v11 = v8;
  }

  [(JavaLangStringBuilder *)v11 appendWithNSString:v12];
  v13 = [a4 getCountry];
  if (!v13)
  {
    goto LABEL_17;
  }

  if ([v13 isEqual:v6])
  {
    [(JavaLangStringBuilder *)v9 appendWithNSString:v7];
  }

  else
  {
    [(JavaLangStringBuilder *)v8 appendWithJavaLangCharSequence:v9];
    [(JavaLangStringBuilder *)v8 appendWithNSString:v7];
    -[JavaLangStringBuilder appendWithNSString:](v8, "appendWithNSString:", [a4 getCountry]);
    v9 = new_JavaLangStringBuilder_init();
  }

  v14 = [a4 getVariant];
  if (!v14)
  {
LABEL_17:
    JreThrowNullPointerException();
  }

  if (([v14 isEqual:v6] & 1) == 0)
  {
    [(JavaLangStringBuilder *)v8 appendWithJavaLangCharSequence:v9];
    [(JavaLangStringBuilder *)v8 appendWithNSString:v7];
    -[JavaLangStringBuilder appendWithNSString:](v8, "appendWithNSString:", [a4 getVariant]);
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
  if (objc_opt_class() == a1)
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
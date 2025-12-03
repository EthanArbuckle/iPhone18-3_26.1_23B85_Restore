@interface JavaUtilLocale
+ (id)getAvailableLocales;
+ (id)getDefault;
+ (id)getISOCountries;
+ (id)getISOLanguages;
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (JavaUtilLocale)initWithBoolean:(BOOL)boolean withNSString:(id)string withNSString:(id)sString;
- (id)clone;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)getDisplayCountry;
- (id)getDisplayCountryWithJavaUtilLocale:(id)locale;
- (id)getDisplayLanguage;
- (id)getDisplayLanguageWithJavaUtilLocale:(id)locale;
- (id)getDisplayName;
- (id)getDisplayNameWithJavaUtilLocale:(id)locale;
- (id)getDisplayVariant;
- (id)getDisplayVariantWithJavaUtilLocale:(id)locale;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation JavaUtilLocale

- (JavaUtilLocale)initWithBoolean:(BOOL)boolean withNSString:(id)string withNSString:(id)sString
{
  JreStrongAssign(&self->languageCode_, string);
  JreStrongAssign(&self->countryCode_, sString);
  JreStrongAssign(&self->variantCode_, &stru_100484358);
  return self;
}

- (id)clone
{
  v3.receiver = self;
  v3.super_class = JavaUtilLocale;
  return [(JavaUtilLocale *)&v3 clone];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      LOBYTE(v6) = 0;
      return v6;
    }

    objc_opt_class();
    if (!equal)
    {
      languageCode = self->languageCode_;
      JreThrowNullPointerException();
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    v5 = self->languageCode_;
    if (!v5)
    {
      goto LABEL_16;
    }

    v6 = [(NSString *)v5 isEqual:*(equal + 2)];
    if (!v6)
    {
      return v6;
    }

    countryCode = self->countryCode_;
    if (!countryCode)
    {
      goto LABEL_16;
    }

    v6 = [(NSString *)countryCode isEqual:*(equal + 1)];
    if (!v6)
    {
      return v6;
    }

    variantCode = self->variantCode_;
    if (!variantCode)
    {
LABEL_16:
      JreThrowNullPointerException();
    }

    v9 = *(equal + 3);

    LOBYTE(v6) = [(NSString *)variantCode isEqual:v9];
  }

  return v6;
}

+ (id)getAvailableLocales
{
  if (atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire))
  {
  }

  else
  {
    sub_1000458CC();
  }

  return LibcoreIcuICU_getAvailableLocales();
}

+ (id)getDefault
{
  if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000458CC();
  }

  return qword_100554B70;
}

- (id)getDisplayCountry
{
  if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000458CC();
  }

  v3 = qword_100554B70;

  return [(JavaUtilLocale *)self getDisplayCountryWithJavaUtilLocale:v3];
}

- (id)getDisplayCountryWithJavaUtilLocale:(id)locale
{
  countryCode = self->countryCode_;
  if (!countryCode)
  {
    goto LABEL_12;
  }

  if ([(NSString *)countryCode isEmpty])
  {
    return &stru_100484358;
  }

  v7 = [JavaUtilLocale description]_0(&self->super.isa);
  if (!locale)
  {
    goto LABEL_12;
  }

  v8 = v7;
  v9 = [JavaUtilLocale description]_0(locale);
  result = LibcoreIcuICU_getDisplayCountryNativeWithNSString_withNSString_(v8, v9);
  if (result)
  {
    return result;
  }

  v10 = [JavaUtilLocale description]_0(&self->super.isa);
  if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000458CC();
  }

  if (!qword_100554B70)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  v11 = [JavaUtilLocale description]_0(qword_100554B70);

  return LibcoreIcuICU_getDisplayCountryNativeWithNSString_withNSString_(v10, v11);
}

- (id)description
{
  v1 = self + 4;
  if (self[4])
  {
    return self[4];
  }

  v3 = sub_100184A34(self[2], self[1], self[3]);

  return JreStrongAssign(v1, v3);
}

- (id)getDisplayLanguage
{
  if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000458CC();
  }

  v3 = qword_100554B70;

  return [(JavaUtilLocale *)self getDisplayLanguageWithJavaUtilLocale:v3];
}

- (id)getDisplayLanguageWithJavaUtilLocale:(id)locale
{
  languageCode = self->languageCode_;
  if (!languageCode)
  {
    goto LABEL_14;
  }

  if ([(NSString *)languageCode isEmpty])
  {
    return &stru_100484358;
  }

  v7 = [JavaUtilLocale description]_0(&self->super.isa);
  if ([(NSString *)self->languageCode_ isEqual:@"tl"])
  {
    v7 = sub_100184A34(@"fil", self->countryCode_, self->variantCode_);
  }

  if (!locale)
  {
    goto LABEL_14;
  }

  v8 = [JavaUtilLocale description]_0(locale);
  result = LibcoreIcuICU_getDisplayLanguageNativeWithNSString_withNSString_(v7, v8);
  if (result)
  {
    return result;
  }

  if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000458CC();
  }

  if (!qword_100554B70)
  {
LABEL_14:
    JreThrowNullPointerException();
  }

  v9 = [JavaUtilLocale description]_0(qword_100554B70);

  return LibcoreIcuICU_getDisplayLanguageNativeWithNSString_withNSString_(v7, v9);
}

- (id)getDisplayName
{
  if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000458CC();
  }

  v3 = qword_100554B70;

  return [(JavaUtilLocale *)self getDisplayNameWithJavaUtilLocale:v3];
}

- (id)getDisplayNameWithJavaUtilLocale:(id)locale
{
  v5 = new_JavaLangStringBuilder_init();
  languageCode = self->languageCode_;
  if (!languageCode)
  {
    goto LABEL_32;
  }

  isEmpty = [(NSString *)languageCode isEmpty];
  if (isEmpty)
  {
    v8 = 0;
  }

  else
  {
    v9 = [(JavaUtilLocale *)self getDisplayLanguageWithJavaUtilLocale:locale];
    if (!v9)
    {
      goto LABEL_32;
    }

    v10 = v9;
    if ([(NSString *)v9 isEmpty])
    {
      v10 = self->languageCode_;
    }

    [(JavaLangStringBuilder *)v5 appendWithNSString:v10];
    v8 = 1;
  }

  countryCode = self->countryCode_;
  if (!countryCode)
  {
    goto LABEL_32;
  }

  if ([(NSString *)countryCode isEmpty])
  {
    goto LABEL_16;
  }

  if ((isEmpty & 1) == 0)
  {
    -[JavaLangStringBuilder appendWithNSString:](v5, "appendWithNSString:", @" (");
  }

  v12 = [(JavaUtilLocale *)self getDisplayCountryWithJavaUtilLocale:locale];
  if (!v12)
  {
LABEL_32:
    JreThrowNullPointerException();
  }

  v13 = v12;
  if ([(NSString *)v12 isEmpty])
  {
    v13 = self->countryCode_;
  }

  [(JavaLangStringBuilder *)v5 appendWithNSString:v13];
  ++v8;
LABEL_16:
  variantCode = self->variantCode_;
  if (!variantCode)
  {
    goto LABEL_32;
  }

  if ([(NSString *)variantCode isEmpty])
  {
    goto LABEL_27;
  }

  if (v8 == 1)
  {
    v15 = CFSTR(" (");
  }

  else
  {
    if (v8 != 2)
    {
      goto LABEL_23;
    }

    v15 = @",";
  }

  [(JavaLangStringBuilder *)v5 appendWithNSString:v15];
LABEL_23:
  v16 = [(JavaUtilLocale *)self getDisplayVariantWithJavaUtilLocale:locale];
  if (!v16)
  {
    goto LABEL_32;
  }

  v17 = v16;
  if ([(NSString *)v16 isEmpty])
  {
    v17 = self->variantCode_;
  }

  [(JavaLangStringBuilder *)v5 appendWithNSString:v17];
  ++v8;
LABEL_27:
  if (v8 >= 2)
  {
    [(JavaLangStringBuilder *)v5 appendWithNSString:@""]);
  }

  return [(JavaLangStringBuilder *)v5 description];
}

- (id)getDisplayVariant
{
  if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000458CC();
  }

  v3 = qword_100554B70;

  return [(JavaUtilLocale *)self getDisplayVariantWithJavaUtilLocale:v3];
}

- (id)getDisplayVariantWithJavaUtilLocale:(id)locale
{
  variantCode = self->variantCode_;
  if (!variantCode)
  {
    goto LABEL_13;
  }

  if (![(NSString *)variantCode length])
  {
    return self->variantCode_;
  }

  v6 = [JavaUtilLocale description]_0(&self->super.isa);
  if (!locale)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [JavaUtilLocale description]_0(locale);
  result = LibcoreIcuICU_getDisplayVariantNativeWithNSString_withNSString_(v7, v8);
  if (result)
  {
    return result;
  }

  v10 = [JavaUtilLocale description]_0(&self->super.isa);
  if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000458CC();
  }

  if (!qword_100554B70)
  {
LABEL_13:
    JreThrowNullPointerException();
  }

  v11 = [JavaUtilLocale description]_0(qword_100554B70);

  return LibcoreIcuICU_getDisplayVariantNativeWithNSString_withNSString_(v10, v11);
}

+ (id)getISOCountries
{
  if (atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire))
  {
  }

  else
  {
    sub_1000458CC();
  }

  return LibcoreIcuICU_getISOCountries();
}

+ (id)getISOLanguages
{
  if (atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire))
  {
  }

  else
  {
    sub_1000458CC();
  }

  return LibcoreIcuICU_getISOLanguages();
}

- (unint64_t)hash
{
  objc_sync_enter(self);
  countryCode = self->countryCode_;
  if (!countryCode || (v4 = [(NSString *)countryCode hash], (languageCode = self->languageCode_) == 0) || (v6 = [(NSString *)languageCode hash], (variantCode = self->variantCode_) == 0))
  {
    JreThrowNullPointerException();
  }

  v8 = (v6 + v4 + [(NSString *)variantCode hash]);
  objc_sync_exit(self);
  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilLocale;
  [(JavaUtilLocale *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  clone = [(JavaUtilLocale *)self clone];

  return clone;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = sub_1001855D0(@"en", @"CA");
    JreStrongAssignAndConsume(&JavaUtilLocale_CANADA_, v2);
    v3 = sub_1001855D0(@"fr", @"CA");
    JreStrongAssignAndConsume(&JavaUtilLocale_CANADA_FRENCH_, v3);
    v4 = sub_1001855D0(@"zh", @"CN");
    JreStrongAssignAndConsume(&JavaUtilLocale_CHINA_, v4);
    v5 = sub_1001855D0(@"zh", &stru_100484358);
    JreStrongAssignAndConsume(&JavaUtilLocale_CHINESE_, v5);
    v6 = sub_1001855D0(@"en", &stru_100484358);
    JreStrongAssignAndConsume(&JavaUtilLocale_ENGLISH_, v6);
    v7 = sub_1001855D0(@"fr", @"FR");
    JreStrongAssignAndConsume(&JavaUtilLocale_FRANCE_, v7);
    v8 = sub_1001855D0(@"fr", &stru_100484358);
    JreStrongAssignAndConsume(&JavaUtilLocale_FRENCH_, v8);
    v9 = sub_1001855D0(@"de", &stru_100484358);
    JreStrongAssignAndConsume(&JavaUtilLocale_GERMAN_, v9);
    v10 = sub_1001855D0(@"de", @"DE");
    JreStrongAssignAndConsume(&JavaUtilLocale_GERMANY_, v10);
    v11 = sub_1001855D0(@"it", &stru_100484358);
    JreStrongAssignAndConsume(&JavaUtilLocale_ITALIAN_, v11);
    v12 = sub_1001855D0(@"it", @"IT");
    JreStrongAssignAndConsume(&JavaUtilLocale_ITALY_, v12);
    v13 = sub_1001855D0(@"ja", @"JP");
    JreStrongAssignAndConsume(&JavaUtilLocale_JAPAN_, v13);
    v14 = sub_1001855D0(@"ja", &stru_100484358);
    JreStrongAssignAndConsume(&JavaUtilLocale_JAPANESE_, v14);
    v15 = sub_1001855D0(@"ko", @"KR");
    JreStrongAssignAndConsume(&JavaUtilLocale_KOREA_, v15);
    v16 = sub_1001855D0(@"ko", &stru_100484358);
    JreStrongAssignAndConsume(&JavaUtilLocale_KOREAN_, v16);
    v17 = sub_1001855D0(@"zh", @"CN");
    JreStrongAssignAndConsume(&JavaUtilLocale_PRC_, v17);
    v18 = sub_1001855D0(&stru_100484358, &stru_100484358);
    JreStrongAssignAndConsume(&JavaUtilLocale_ROOT_, v18);
    v19 = sub_1001855D0(@"zh", @"CN");
    JreStrongAssignAndConsume(&JavaUtilLocale_SIMPLIFIED_CHINESE_, v19);
    v20 = sub_1001855D0(@"zh", @"TW");
    JreStrongAssignAndConsume(&JavaUtilLocale_TAIWAN_, v20);
    v21 = sub_1001855D0(@"zh", @"TW");
    JreStrongAssignAndConsume(&JavaUtilLocale_TRADITIONAL_CHINESE_, v21);
    v22 = sub_1001855D0(@"en", @"GB");
    JreStrongAssignAndConsume(&JavaUtilLocale_UK_, v22);
    v23 = sub_1001855D0(@"en", @"US");
    JreStrongAssignAndConsume(&JavaUtilLocale_US_, v23);
    JreStrongAssign(&qword_100554B70, JavaUtilLocale_US_);
    PropertyWithNSString_withNSString = JavaLangSystem_getPropertyWithNSString_withNSString_(@"user.language", @"en");
    v25 = JavaLangSystem_getPropertyWithNSString_withNSString_(@"user.region", @"US");
    v26 = JavaLangSystem_getPropertyWithNSString_withNSString_(@"user.variant", &stru_100484358);
    v27 = [JavaUtilLocale alloc];
    JavaUtilLocale_initWithNSString_withNSString_withNSString_(&v27->super.isa, PropertyWithNSString_withNSString, v25, v26, v28, v29, v30, v31);
    JreStrongAssignAndConsume(&qword_100554B70, v27);
    atomic_store(1u, JavaUtilLocale__initialized);
  }
}

@end
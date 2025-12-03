@interface JavaTextNumberFormat
+ (id)getCurrencyInstance;
+ (id)getInstance;
+ (id)getInstanceWithNSString:(id)string withJavaUtilLocale:(id)locale;
+ (id)getIntegerInstance;
+ (id)getNumberInstance;
+ (id)getPercentInstance;
- (BOOL)isEqual:(id)equal;
- (JavaTextNumberFormat)formatWithDouble:(double)double;
- (JavaTextNumberFormat)formatWithId:(id)id withJavaLangStringBuffer:(id)buffer withJavaTextFieldPosition:(id)position;
- (JavaTextNumberFormat)formatWithLong:(int64_t)long;
- (JavaTextNumberFormat)init;
- (id)clone;
- (id)parseObjectWithNSString:(id)string withJavaTextParsePosition:(id)position;
- (id)parseWithNSString:(id)string;
- (unint64_t)hash;
- (void)setMaximumFractionDigitsWithInt:(int)int;
- (void)setMaximumIntegerDigitsWithInt:(int)int;
- (void)setMinimumFractionDigitsWithInt:(int)int;
- (void)setMinimumIntegerDigitsWithInt:(int)int;
@end

@implementation JavaTextNumberFormat

- (JavaTextNumberFormat)init
{
  JavaTextFormat_init(self, a2);
  self->groupingUsed_ = 1;
  self->parseIntegerOnly_ = 0;
  self->maximumIntegerDigits_ = 40;
  self->minimumIntegerDigits_ = 1;
  self->maximumFractionDigits_ = 3;
  self->minimumFractionDigits_ = 0;
  return self;
}

- (id)clone
{
  v3.receiver = self;
  v3.super_class = JavaTextNumberFormat;
  return [(JavaTextFormat *)&v3 clone];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if (!equal)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return self->groupingUsed_ == *(equal + 8) && self->parseIntegerOnly_ == *(equal + 9) && self->maximumFractionDigits_ == *(equal + 5) && self->maximumIntegerDigits_ == *(equal + 3) && self->minimumFractionDigits_ == *(equal + 6) && self->minimumIntegerDigits_ == *(equal + 4);
}

- (JavaTextNumberFormat)formatWithDouble:(double)double
{
  v5 = new_JavaLangStringBuffer_init();
  v6 = [(JavaTextNumberFormat *)self formatWithDouble:v5 withJavaLangStringBuffer:new_JavaTextFieldPosition_initWithInt_(0) withJavaTextFieldPosition:double];
  if (!v6)
  {
    JreThrowNullPointerException();
  }

  return [(JavaTextNumberFormat *)v6 description];
}

- (JavaTextNumberFormat)formatWithLong:(int64_t)long
{
  v5 = new_JavaLangStringBuffer_init();
  v6 = [(JavaTextNumberFormat *)self formatWithLong:long withJavaLangStringBuffer:v5 withJavaTextFieldPosition:new_JavaTextFieldPosition_initWithInt_(0)];
  if (!v6)
  {
    JreThrowNullPointerException();
  }

  return [(JavaTextNumberFormat *)v6 description];
}

- (JavaTextNumberFormat)formatWithId:(id)id withJavaLangStringBuffer:(id)buffer withJavaTextFieldPosition:(id)position
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_opt_class();
    if (id)
    {
      goto LABEL_6;
    }

LABEL_24:
    JreThrowNullPointerException();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (!id)
    {
      goto LABEL_24;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_21;
    }

    if ([id bitLength] <= 63)
    {
      objc_opt_class();
LABEL_6:
      if (objc_opt_isKindOfClass())
      {
        longLongValue = [id longLongValue];

        return [(JavaTextNumberFormat *)self formatWithLong:longLongValue withJavaLangStringBuffer:buffer withJavaTextFieldPosition:position];
      }

LABEL_21:
      JreThrowClassCastException();
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (id)
    {
      [id getClass];
      v18 = JreStrcat("$@", v11, v12, v13, v14, v15, v16, v17, @"Bad class: ");
      v19 = new_JavaLangIllegalArgumentException_initWithNSString_(v18);
      objc_exception_throw(v19);
    }

    goto LABEL_24;
  }

  objc_opt_class();
  if (!id)
  {
    goto LABEL_24;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_21;
  }

  [id doubleValue];

  return [(JavaTextNumberFormat *)self formatWithDouble:buffer withJavaLangStringBuffer:position withJavaTextFieldPosition:?];
}

+ (id)getCurrencyInstance
{
  Default = JavaUtilLocale_getDefault();

  return JavaTextNumberFormat_getCurrencyInstanceWithJavaUtilLocale_(Default);
}

+ (id)getIntegerInstance
{
  Default = JavaUtilLocale_getDefault();

  return JavaTextNumberFormat_getIntegerInstanceWithJavaUtilLocale_(Default);
}

+ (id)getInstance
{
  Default = JavaUtilLocale_getDefault();

  return JavaTextNumberFormat_getNumberInstanceWithJavaUtilLocale_(Default);
}

+ (id)getInstanceWithNSString:(id)string withJavaUtilLocale:(id)locale
{
  v4 = new_JavaTextDecimalFormat_initWithNSString_withJavaUtilLocale_(string, locale);

  return v4;
}

+ (id)getNumberInstance
{
  Default = JavaUtilLocale_getDefault();

  return JavaTextNumberFormat_getNumberInstanceWithJavaUtilLocale_(Default);
}

+ (id)getPercentInstance
{
  Default = JavaUtilLocale_getDefault();

  return JavaTextNumberFormat_getPercentInstanceWithJavaUtilLocale_(Default);
}

- (unint64_t)hash
{
  if (self->groupingUsed_)
  {
    v2 = 1231;
  }

  else
  {
    v2 = 1237;
  }

  if (self->parseIntegerOnly_)
  {
    v3 = 1231;
  }

  else
  {
    v3 = 1237;
  }

  return v3 + v2 + self->maximumFractionDigits_ + self->maximumIntegerDigits_ + self->minimumFractionDigits_ + self->minimumIntegerDigits_;
}

- (id)parseWithNSString:(id)string
{
  v5 = new_JavaTextParsePosition_initWithInt_(0);
  v6 = [(JavaTextNumberFormat *)self parseWithNSString:string withJavaTextParsePosition:v5];
  if (![(JavaTextParsePosition *)v5 getIndex])
  {
    v15 = JreStrcat("$$C", v7, v8, v9, v10, v11, v12, v13, @"Unparseable number: ");
    v16 = new_JavaTextParseException_initWithNSString_withInt_(v15, [(JavaTextParsePosition *)v5 getErrorIndex]);
    objc_exception_throw(v16);
  }

  return v6;
}

- (id)parseObjectWithNSString:(id)string withJavaTextParsePosition:(id)position
{
  if (!position)
  {
    v5 = new_JavaLangNullPointerException_initWithNSString_(@"position == null");
    objc_exception_throw(v5);
  }

  return [(JavaTextNumberFormat *)self parseWithNSString:string withJavaTextParsePosition:?];
}

- (void)setMaximumFractionDigitsWithInt:(int)int
{
  v3 = int & ~(int >> 31);
  self->maximumFractionDigits_ = v3;
  if (v3 < self->minimumFractionDigits_)
  {
    self->minimumFractionDigits_ = v3;
  }
}

- (void)setMaximumIntegerDigitsWithInt:(int)int
{
  v3 = int & ~(int >> 31);
  self->maximumIntegerDigits_ = v3;
  if (v3 < self->minimumIntegerDigits_)
  {
    self->minimumIntegerDigits_ = v3;
  }
}

- (void)setMinimumFractionDigitsWithInt:(int)int
{
  v3 = int & ~(int >> 31);
  self->minimumFractionDigits_ = v3;
  if (self->maximumFractionDigits_ < v3)
  {
    self->maximumFractionDigits_ = v3;
  }
}

- (void)setMinimumIntegerDigitsWithInt:(int)int
{
  v3 = int & ~(int >> 31);
  self->minimumIntegerDigits_ = v3;
  if (self->maximumIntegerDigits_ < v3)
  {
    self->maximumIntegerDigits_ = v3;
  }
}

@end
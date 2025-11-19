@interface JavaTextDateFormat
+ (id)getDateInstance;
+ (id)getTimeInstance;
- (BOOL)isEqual:(id)a3;
- (BOOL)isLenient;
- (JavaTextDateFormat)formatWithId:(id)a3 withJavaLangStringBuffer:(id)a4 withJavaTextFieldPosition:(id)a5;
- (JavaTextDateFormat)formatWithJavaUtilDate:(id)a3;
- (id)clone;
- (id)getTimeZone;
- (id)parseWithNSString:(id)a3;
- (unint64_t)hash;
- (void)dealloc;
- (void)setTimeZoneWithJavaUtilTimeZone:(id)a3;
@end

@implementation JavaTextDateFormat

- (id)clone
{
  v9.receiver = self;
  v9.super_class = JavaTextDateFormat;
  v3 = [(JavaTextFormat *)&v9 clone];
  objc_opt_class();
  if (!v3)
  {
    goto LABEL_11;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  calendar = self->calendar_;
  if (!calendar)
  {
    goto LABEL_11;
  }

  v5 = [(JavaUtilCalendar *)calendar clone];
  objc_opt_class();
  if (v5 && (objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_10:
    JreThrowClassCastException();
  }

  JreStrongAssign(v3 + 1, v5);
  numberFormat = self->numberFormat_;
  if (!numberFormat)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  v7 = [(JavaTextNumberFormat *)numberFormat clone];
  objc_opt_class();
  if (v7 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  JreStrongAssign(v3 + 2, v7);
  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_14;
    }

    objc_opt_class();
    if (!a3)
    {
      numberFormat = self->numberFormat_;
      JreThrowNullPointerException();
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    v5 = self->numberFormat_;
    if (!v5)
    {
      goto LABEL_16;
    }

    v6 = [(JavaTextNumberFormat *)v5 isEqual:*(a3 + 2)];
    if (!v6)
    {
      return v6;
    }

    calendar = self->calendar_;
    if (!calendar || (v8 = [(JavaUtilCalendar *)calendar getTimeZone]) == 0)
    {
LABEL_16:
      JreThrowNullPointerException();
    }

    v6 = [v8 isEqual:{objc_msgSend(*(a3 + 1), "getTimeZone")}];
    if (!v6)
    {
      return v6;
    }

    v9 = [(JavaUtilCalendar *)self->calendar_ getFirstDayOfWeek];
    if (v9 != [*(a3 + 1) getFirstDayOfWeek] || (v10 = -[JavaUtilCalendar getMinimalDaysInFirstWeek](self->calendar_, "getMinimalDaysInFirstWeek"), v10 != objc_msgSend(*(a3 + 1), "getMinimalDaysInFirstWeek")))
    {
LABEL_14:
      LOBYTE(v6) = 0;
      return v6;
    }

    v11 = [(JavaUtilCalendar *)self->calendar_ isLenient];
    LOBYTE(v6) = v11 ^ [*(a3 + 1) isLenient] ^ 1;
  }

  return v6;
}

- (JavaTextDateFormat)formatWithId:(id)a3 withJavaLangStringBuffer:(id)a4 withJavaTextFieldPosition:(id)a5
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (a3)
      {
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_12;
        }

        a3 = new_JavaUtilDate_initWithLong_([a3 longLongValue]);
        goto LABEL_9;
      }
    }

    else if (a3)
    {
      [a3 getClass];
      v17 = JreStrcat("$@", v10, v11, v12, v13, v14, v15, v16, @"Bad class: ");
      v18 = new_JavaLangIllegalArgumentException_initWithNSString_(v17);
      objc_exception_throw(v18);
    }

    JreThrowNullPointerException();
  }

  objc_opt_class();
  if (a3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_12:
    JreThrowClassCastException();
  }

LABEL_9:

  return [(JavaTextDateFormat *)self formatWithJavaUtilDate:a3 withJavaLangStringBuffer:a4 withJavaTextFieldPosition:a5];
}

- (JavaTextDateFormat)formatWithJavaUtilDate:(id)a3
{
  v5 = new_JavaLangStringBuffer_init();
  v6 = [(JavaTextDateFormat *)self formatWithJavaUtilDate:a3 withJavaLangStringBuffer:v5 withJavaTextFieldPosition:new_JavaTextFieldPosition_initWithInt_(0)];
  if (!v6)
  {
    JreThrowNullPointerException();
  }

  return [(JavaTextDateFormat *)v6 description];
}

+ (id)getDateInstance
{
  Default = JavaUtilLocale_getDefault();

  return JavaTextDateFormat_getDateInstanceWithInt_withJavaUtilLocale_(2, Default, v3, v4, v5, v6, v7, v8);
}

+ (id)getTimeInstance
{
  Default = JavaUtilLocale_getDefault();

  return JavaTextDateFormat_getTimeInstanceWithInt_withJavaUtilLocale_(2, Default, v3, v4, v5, v6, v7, v8);
}

- (id)getTimeZone
{
  calendar = self->calendar_;
  if (!calendar)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilCalendar *)calendar getTimeZone];
}

- (unint64_t)hash
{
  calendar = self->calendar_;
  if (!calendar || (v4 = -[JavaUtilCalendar getFirstDayOfWeek](calendar, "getFirstDayOfWeek"), v5 = -[JavaUtilCalendar getMinimalDaysInFirstWeek](self->calendar_, "getMinimalDaysInFirstWeek"), (v6 = -[JavaUtilCalendar getTimeZone](self->calendar_, "getTimeZone")) == 0) || (v7 = [v6 hash], v8 = -[JavaUtilCalendar isLenient](self->calendar_, "isLenient"), (numberFormat = self->numberFormat_) == 0))
  {
    JreThrowNullPointerException();
  }

  if (v8)
  {
    v10 = 1231;
  }

  else
  {
    v10 = 1237;
  }

  return (v5 + v4 + v7 + v10 + [(JavaTextNumberFormat *)numberFormat hash]);
}

- (BOOL)isLenient
{
  calendar = self->calendar_;
  if (!calendar)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilCalendar *)calendar isLenient];
}

- (id)parseWithNSString:(id)a3
{
  v5 = new_JavaTextParsePosition_initWithInt_(0);
  v6 = [(JavaTextDateFormat *)self parseWithNSString:a3 withJavaTextParsePosition:v5];
  if (![(JavaTextParsePosition *)v5 getIndex])
  {
    v15 = JreStrcat("$$C", v7, v8, v9, v10, v11, v12, v13, @"Unparseable date: ");
    v16 = new_JavaTextParseException_initWithNSString_withInt_(v15, [(JavaTextParsePosition *)v5 getErrorIndex]);
    objc_exception_throw(v16);
  }

  return v6;
}

- (void)setTimeZoneWithJavaUtilTimeZone:(id)a3
{
  calendar = self->calendar_;
  if (!calendar)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilCalendar *)calendar setTimeZoneWithJavaUtilTimeZone:a3];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaTextDateFormat;
  [(JavaTextDateFormat *)&v3 dealloc];
}

@end
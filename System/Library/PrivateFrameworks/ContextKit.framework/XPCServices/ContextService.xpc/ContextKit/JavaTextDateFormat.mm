@interface JavaTextDateFormat
+ (id)getDateInstance;
+ (id)getTimeInstance;
- (BOOL)isEqual:(id)equal;
- (BOOL)isLenient;
- (JavaTextDateFormat)formatWithId:(id)id withJavaLangStringBuffer:(id)buffer withJavaTextFieldPosition:(id)position;
- (JavaTextDateFormat)formatWithJavaUtilDate:(id)date;
- (id)clone;
- (id)getTimeZone;
- (id)parseWithNSString:(id)string;
- (unint64_t)hash;
- (void)dealloc;
- (void)setTimeZoneWithJavaUtilTimeZone:(id)zone;
@end

@implementation JavaTextDateFormat

- (id)clone
{
  v9.receiver = self;
  v9.super_class = JavaTextDateFormat;
  clone = [(JavaTextFormat *)&v9 clone];
  objc_opt_class();
  if (!clone)
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

  clone2 = [(JavaUtilCalendar *)calendar clone];
  objc_opt_class();
  if (clone2 && (objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_10:
    JreThrowClassCastException();
  }

  JreStrongAssign(clone + 1, clone2);
  numberFormat = self->numberFormat_;
  if (!numberFormat)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  clone3 = [(JavaTextNumberFormat *)numberFormat clone];
  objc_opt_class();
  if (clone3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  JreStrongAssign(clone + 2, clone3);
  return clone;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
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
    if (!equal)
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

    v6 = [(JavaTextNumberFormat *)v5 isEqual:*(equal + 2)];
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

    v6 = [v8 isEqual:{objc_msgSend(*(equal + 1), "getTimeZone")}];
    if (!v6)
    {
      return v6;
    }

    getFirstDayOfWeek = [(JavaUtilCalendar *)self->calendar_ getFirstDayOfWeek];
    if (getFirstDayOfWeek != [*(equal + 1) getFirstDayOfWeek] || (v10 = -[JavaUtilCalendar getMinimalDaysInFirstWeek](self->calendar_, "getMinimalDaysInFirstWeek"), v10 != objc_msgSend(*(equal + 1), "getMinimalDaysInFirstWeek")))
    {
LABEL_14:
      LOBYTE(v6) = 0;
      return v6;
    }

    isLenient = [(JavaUtilCalendar *)self->calendar_ isLenient];
    LOBYTE(v6) = isLenient ^ [*(equal + 1) isLenient] ^ 1;
  }

  return v6;
}

- (JavaTextDateFormat)formatWithId:(id)id withJavaLangStringBuffer:(id)buffer withJavaTextFieldPosition:(id)position
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (id)
      {
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_12;
        }

        id = new_JavaUtilDate_initWithLong_([id longLongValue]);
        goto LABEL_9;
      }
    }

    else if (id)
    {
      [id getClass];
      v17 = JreStrcat("$@", v10, v11, v12, v13, v14, v15, v16, @"Bad class: ");
      v18 = new_JavaLangIllegalArgumentException_initWithNSString_(v17);
      objc_exception_throw(v18);
    }

    JreThrowNullPointerException();
  }

  objc_opt_class();
  if (id && (objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_12:
    JreThrowClassCastException();
  }

LABEL_9:

  return [(JavaTextDateFormat *)self formatWithJavaUtilDate:id withJavaLangStringBuffer:buffer withJavaTextFieldPosition:position];
}

- (JavaTextDateFormat)formatWithJavaUtilDate:(id)date
{
  v5 = new_JavaLangStringBuffer_init();
  v6 = [(JavaTextDateFormat *)self formatWithJavaUtilDate:date withJavaLangStringBuffer:v5 withJavaTextFieldPosition:new_JavaTextFieldPosition_initWithInt_(0)];
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

- (id)parseWithNSString:(id)string
{
  v5 = new_JavaTextParsePosition_initWithInt_(0);
  v6 = [(JavaTextDateFormat *)self parseWithNSString:string withJavaTextParsePosition:v5];
  if (![(JavaTextParsePosition *)v5 getIndex])
  {
    v15 = JreStrcat("$$C", v7, v8, v9, v10, v11, v12, v13, @"Unparseable date: ");
    v16 = new_JavaTextParseException_initWithNSString_withInt_(v15, [(JavaTextParsePosition *)v5 getErrorIndex]);
    objc_exception_throw(v16);
  }

  return v6;
}

- (void)setTimeZoneWithJavaUtilTimeZone:(id)zone
{
  calendar = self->calendar_;
  if (!calendar)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilCalendar *)calendar setTimeZoneWithJavaUtilTimeZone:zone];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaTextDateFormat;
  [(JavaTextDateFormat *)&v3 dealloc];
}

@end
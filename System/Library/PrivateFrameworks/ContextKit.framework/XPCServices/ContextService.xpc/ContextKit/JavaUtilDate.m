@interface JavaUtilDate
+ (void)initialize;
- (BOOL)afterWithJavaUtilDate:(id)a3;
- (BOOL)beforeWithJavaUtilDate:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)clone;
- (id)copyWithZone:(_NSZone *)a3;
- (id)toGMTString;
- (id)toLocaleString;
- (int)compareToWithId:(id)a3;
- (int)getDate;
- (int)getHours;
- (int)getMinutes;
- (int)getMonth;
- (int)getSeconds;
- (int)getTimezoneOffset;
- (void)readObjectWithJavaIoObjectInputStream:(id)a3;
- (void)setYearWithInt:(int)a3;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3;
@end

@implementation JavaUtilDate

- (BOOL)afterWithJavaUtilDate:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  return self->milliseconds_ > *(a3 + 1);
}

- (BOOL)beforeWithJavaUtilDate:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  return self->milliseconds_ < *(a3 + 1);
}

- (id)clone
{
  v3.receiver = self;
  v3.super_class = JavaUtilDate;
  return [(JavaUtilDate *)&v3 clone];
}

- (int)compareToWithId:(id)a3
{
  objc_opt_class();
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  milliseconds = self->milliseconds_;
  v6 = *(a3 + 1);
  v7 = milliseconds < v6;
  v8 = milliseconds != v6;
  if (v7)
  {
    return -1;
  }

  else
  {
    return v8;
  }
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  milliseconds = self->milliseconds_;
  objc_opt_class();
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return milliseconds == *(a3 + 1);
}

- (int)getDate
{
  v2 = new_JavaUtilGregorianCalendar_initWithLong_(self->milliseconds_);

  return [(JavaUtilCalendar *)v2 getWithInt:5];
}

- (int)getHours
{
  v2 = new_JavaUtilGregorianCalendar_initWithLong_(self->milliseconds_);

  return [(JavaUtilCalendar *)v2 getWithInt:11];
}

- (int)getMinutes
{
  v2 = new_JavaUtilGregorianCalendar_initWithLong_(self->milliseconds_);

  return [(JavaUtilCalendar *)v2 getWithInt:12];
}

- (int)getMonth
{
  v2 = new_JavaUtilGregorianCalendar_initWithLong_(self->milliseconds_);

  return [(JavaUtilCalendar *)v2 getWithInt:2];
}

- (int)getSeconds
{
  v2 = new_JavaUtilGregorianCalendar_initWithLong_(self->milliseconds_);

  return [(JavaUtilCalendar *)v2 getWithInt:13];
}

- (int)getTimezoneOffset
{
  v2 = new_JavaUtilGregorianCalendar_initWithLong_(self->milliseconds_);
  v3 = [(JavaUtilCalendar *)v2 getWithInt:15];
  return -(v3 + [(JavaUtilCalendar *)v2 getWithInt:16]) / 60000;
}

- (void)setYearWithInt:(int)a3
{
  v5 = new_JavaUtilGregorianCalendar_initWithLong_(self->milliseconds_);
  [(JavaUtilCalendar *)v5 setWithInt:1 withInt:(a3 + 1900)];
  self->milliseconds_ = [(JavaUtilCalendar *)v5 getTimeInMillis];
}

- (id)toGMTString
{
  if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000458CC();
  }

  v3 = new_JavaTextSimpleDateFormat_initWithNSString_withJavaUtilLocale_(@"d MMM y HH:mm:ss 'GMT'", JavaUtilLocale_US_);
  TimeZoneWithNSString = JavaUtilTimeZone_getTimeZoneWithNSString_(@"GMT");
  [(JavaTextDateFormat *)v3 setTimeZoneWithJavaUtilTimeZone:TimeZoneWithNSString];
  [(JavaUtilCalendar *)new_JavaUtilGregorianCalendar_initWithJavaUtilTimeZone_(TimeZoneWithNSString) setTimeInMillisWithLong:self->milliseconds_];

  return [(JavaTextDateFormat *)v3 formatWithJavaUtilDate:self];
}

- (id)toLocaleString
{
  DateTimeInstance = JavaTextDateFormat_getDateTimeInstance(self, a2, v2, v3, v4, v5, v6, v7);
  if (!DateTimeInstance)
  {
    JreThrowNullPointerException();
  }

  return [(JavaTextDateFormat *)DateTimeInstance formatWithJavaUtilDate:self];
}

- (NSString)description
{
  if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000458CC();
  }

  v3 = LibcoreIcuLocaleData_getWithJavaUtilLocale_(JavaUtilLocale_US_);
  v4 = new_JavaUtilGregorianCalendar_initWithLong_(self->milliseconds_);
  v5 = [(JavaUtilCalendar *)v4 getTimeZone];
  v6 = new_JavaLangStringBuilder_init();
  if (!v3)
  {
    goto LABEL_14;
  }

  shortWeekdayNames = v3->shortWeekdayNames_;
  if (!shortWeekdayNames)
  {
    goto LABEL_14;
  }

  v8 = v6;
  v9 = [(JavaUtilCalendar *)v4 getWithInt:7];
  size = shortWeekdayNames->super.size_;
  if (v9 < 0 || v9 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v9);
  }

  [(JavaLangStringBuilder *)v8 appendWithNSString:(&shortWeekdayNames->elementType_)[v9]];
  [(JavaLangStringBuilder *)v8 appendWithChar:32];
  shortMonthNames = v3->shortMonthNames_;
  if (!shortMonthNames)
  {
    goto LABEL_14;
  }

  v12 = [(JavaUtilCalendar *)v4 getWithInt:2];
  v13 = shortMonthNames->super.size_;
  if (v12 < 0 || v12 >= v13)
  {
    IOSArray_throwOutOfBoundsWithMsg(v13, v12);
  }

  [(JavaLangStringBuilder *)v8 appendWithNSString:(&shortMonthNames->elementType_)[v12]];
  [(JavaLangStringBuilder *)v8 appendWithChar:32];
  sub_100209098(v8, [(JavaUtilCalendar *)v4 getWithInt:5]);
  [(JavaLangStringBuilder *)v8 appendWithChar:32];
  sub_100209098(v8, [(JavaUtilCalendar *)v4 getWithInt:11]);
  [(JavaLangStringBuilder *)v8 appendWithChar:58];
  sub_100209098(v8, [(JavaUtilCalendar *)v4 getWithInt:12]);
  [(JavaLangStringBuilder *)v8 appendWithChar:58];
  sub_100209098(v8, [(JavaUtilCalendar *)v4 getWithInt:13]);
  [(JavaLangStringBuilder *)v8 appendWithChar:32];
  if (!v5)
  {
LABEL_14:
    JreThrowNullPointerException();
  }

  -[JavaLangStringBuilder appendWithNSString:](v8, "appendWithNSString:", [v5 getDisplayNameWithBoolean:objc_msgSend(v5 withInt:{"inDaylightTimeWithJavaUtilDate:", self), 0}]);
  [(JavaLangStringBuilder *)v8 appendWithChar:32];
  [(JavaLangStringBuilder *)v8 appendWithInt:[(JavaUtilCalendar *)v4 getWithInt:1]];

  return [(JavaLangStringBuilder *)v8 description];
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  [a3 defaultWriteObject];
  v5 = [(JavaUtilDate *)self getTime];

  [a3 writeLongWithLong:v5];
}

- (void)readObjectWithJavaIoObjectInputStream:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  [a3 defaultReadObject];
  v5 = [a3 readLong];

  [(JavaUtilDate *)self setTimeWithLong:v5];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(JavaUtilDate *)self clone];

  return v3;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [JavaUtilDate alloc];
    v2->milliseconds_ = JavaLangSystem_currentTimeMillis();
    dword_100555058 = [(JavaUtilDate *)v2 getYear];
    atomic_store(1u, &JavaUtilDate__initialized);
  }
}

@end
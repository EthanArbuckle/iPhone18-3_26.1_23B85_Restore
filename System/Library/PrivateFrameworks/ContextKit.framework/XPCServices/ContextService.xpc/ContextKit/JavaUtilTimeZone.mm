@interface JavaUtilTimeZone
+ (JavaUtilSimpleTimeZone)getDefaultNativeTimeZone;
+ (void)initialize;
- (BOOL)hasSameRulesWithJavaUtilTimeZone:(id)zone;
- (id)clone;
- (id)copyWithZone:(_NSZone *)zone;
- (id)getDisplayName;
- (id)getDisplayNameWithBoolean:(BOOL)boolean withInt:(int)int withJavaUtilLocale:(id)locale;
- (int)getDSTSavings;
- (int)getOffsetWithLong:(int64_t)long;
- (void)dealloc;
- (void)setIDWithNSString:(id)string;
@end

@implementation JavaUtilTimeZone

- (id)clone
{
  v3.receiver = self;
  v3.super_class = JavaUtilTimeZone;
  return [(JavaUtilTimeZone *)&v3 clone];
}

- (id)getDisplayName
{
  Default = JavaUtilLocale_getDefault();

  return [(JavaUtilTimeZone *)self getDisplayNameWithBoolean:0 withInt:1 withJavaUtilLocale:Default];
}

- (id)getDisplayNameWithBoolean:(BOOL)boolean withInt:(int)int withJavaUtilLocale:(id)locale
{
  if (int >= 2)
  {
    v14 = new_JavaLangIllegalArgumentException_init();
    objc_exception_throw(v14);
  }

  if (boolean)
  {
    useDaylightTime = [(JavaUtilTimeZone *)self useDaylightTime];
  }

  else
  {
    useDaylightTime = 0;
  }

  result = sub_100281FC0(self, useDaylightTime, int == 0, locale);
  if (!result)
  {
    getRawOffset = [(JavaUtilTimeZone *)self getRawOffset];
    if (useDaylightTime)
    {
      getRawOffset += [(JavaUtilTimeZone *)self getDSTSavings];
    }

    v11 = getRawOffset / 60000;
    v12 = new_JavaLangStringBuilder_initWithInt_(9u);
    [(JavaLangStringBuilder *)v12 appendWithNSString:@"GMT"];
    if (getRawOffset >= -59999)
    {
      v13 = 43;
    }

    else
    {
      v11 = getRawOffset / -60000;
      v13 = 45;
    }

    [(JavaLangStringBuilder *)v12 appendWithChar:v13];
    sub_1002820D8(v12, 2, v11 / 60);
    [(JavaLangStringBuilder *)v12 appendWithChar:58];
    sub_1002820D8(v12, 2, v11 % 60);

    return [(JavaLangStringBuilder *)v12 description];
  }

  return result;
}

- (int)getDSTSavings
{
  if ([(JavaUtilTimeZone *)self useDaylightTime])
  {
    return 3600000;
  }

  else
  {
    return 0;
  }
}

- (int)getOffsetWithLong:(int64_t)long
{
  v4 = [(JavaUtilTimeZone *)self inDaylightTimeWithJavaUtilDate:new_JavaUtilDate_initWithLong_(long)];
  getRawOffset = [(JavaUtilTimeZone *)self getRawOffset];
  if (v4)
  {
    getRawOffset += [(JavaUtilTimeZone *)self getDSTSavings];
  }

  return getRawOffset;
}

- (BOOL)hasSameRulesWithJavaUtilTimeZone:(id)zone
{
  if (!zone)
  {
    return 0;
  }

  getRawOffset = [(JavaUtilTimeZone *)self getRawOffset];
  return getRawOffset == [zone getRawOffset];
}

- (void)setIDWithNSString:(id)string
{
  if (!string)
  {
    objc_exception_throw(objc_alloc_init(JavaLangNullPointerException));
  }

  JreStrongAssign(&self->ID_, string);
  v5 = [NSTimeZone timeZoneWithAbbreviation:string];
  if (v5 || (v5 = [NSTimeZone timeZoneWithName:string]) != 0)
  {

    JreStrongAssign(&self->nativeTimeZone_, v5);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilTimeZone;
  [(JavaUtilTimeZone *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  clone = [(JavaUtilTimeZone *)self clone];

  return clone;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = JavaUtilRegexPattern_compileWithNSString_(@"^GMT[-+](\\d{1,2})([:.]?(\\d\\d))?$");
    JreStrongAssign(&qword_100557040, v2);
    v3 = new_JavaUtilSimpleTimeZone_initWithInt_withNSString_(0, @"GMT");
    JreStrongAssignAndConsume(&qword_100557048, v3);
    v4 = new_JavaUtilSimpleTimeZone_initWithInt_withNSString_(0, @"UTC");
    JreStrongAssignAndConsume(&qword_100557050, v4);
    v5 = new_AndroidUtilLruCache_initWithInt_(25);
    JreStrongAssignAndConsume(&qword_100557058, v5);
    atomic_store(1u, JavaUtilTimeZone__initialized);
  }
}

+ (JavaUtilSimpleTimeZone)getDefaultNativeTimeZone
{
  if ((atomic_load_explicit(JavaUtilTimeZone__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100282FF8();
  }

  v0 = +[NSTimeZone defaultTimeZone];
  v1 = [[JavaUtilSimpleTimeZone alloc] initWithInt:1000 * [(NSTimeZone *)v0 secondsFromGMT] withNSString:[(NSTimeZone *)v0 name]];

  return v1;
}

@end
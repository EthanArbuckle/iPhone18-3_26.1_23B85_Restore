@interface JavaUtilTimeZone
+ (JavaUtilSimpleTimeZone)getDefaultNativeTimeZone;
+ (void)initialize;
- (BOOL)hasSameRulesWithJavaUtilTimeZone:(id)a3;
- (id)clone;
- (id)copyWithZone:(_NSZone *)a3;
- (id)getDisplayName;
- (id)getDisplayNameWithBoolean:(BOOL)a3 withInt:(int)a4 withJavaUtilLocale:(id)a5;
- (int)getDSTSavings;
- (int)getOffsetWithLong:(int64_t)a3;
- (void)dealloc;
- (void)setIDWithNSString:(id)a3;
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

- (id)getDisplayNameWithBoolean:(BOOL)a3 withInt:(int)a4 withJavaUtilLocale:(id)a5
{
  if (a4 >= 2)
  {
    v14 = new_JavaLangIllegalArgumentException_init();
    objc_exception_throw(v14);
  }

  if (a3)
  {
    v8 = [(JavaUtilTimeZone *)self useDaylightTime];
  }

  else
  {
    v8 = 0;
  }

  result = sub_100281FC0(self, v8, a4 == 0, a5);
  if (!result)
  {
    v10 = [(JavaUtilTimeZone *)self getRawOffset];
    if (v8)
    {
      v10 += [(JavaUtilTimeZone *)self getDSTSavings];
    }

    v11 = v10 / 60000;
    v12 = new_JavaLangStringBuilder_initWithInt_(9u);
    [(JavaLangStringBuilder *)v12 appendWithNSString:@"GMT"];
    if (v10 >= -59999)
    {
      v13 = 43;
    }

    else
    {
      v11 = v10 / -60000;
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

- (int)getOffsetWithLong:(int64_t)a3
{
  v4 = [(JavaUtilTimeZone *)self inDaylightTimeWithJavaUtilDate:new_JavaUtilDate_initWithLong_(a3)];
  v5 = [(JavaUtilTimeZone *)self getRawOffset];
  if (v4)
  {
    v5 += [(JavaUtilTimeZone *)self getDSTSavings];
  }

  return v5;
}

- (BOOL)hasSameRulesWithJavaUtilTimeZone:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [(JavaUtilTimeZone *)self getRawOffset];
  return v4 == [a3 getRawOffset];
}

- (void)setIDWithNSString:(id)a3
{
  if (!a3)
  {
    objc_exception_throw(objc_alloc_init(JavaLangNullPointerException));
  }

  JreStrongAssign(&self->ID_, a3);
  v5 = [NSTimeZone timeZoneWithAbbreviation:a3];
  if (v5 || (v5 = [NSTimeZone timeZoneWithName:a3]) != 0)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(JavaUtilTimeZone *)self clone];

  return v3;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
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
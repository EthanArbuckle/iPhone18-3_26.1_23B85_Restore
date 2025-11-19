@interface JavaUtilCalendar
+ (void)initialize;
- (BOOL)afterWithId:(id)a3;
- (BOOL)beforeWithId:(id)a3;
- (BOOL)isEqual:(id)a3;
- (JavaUtilCalendar)init;
- (NSString)description;
- (id)clone;
- (id)copyWithZone:(_NSZone *)a3;
- (id)getTime;
- (int)compareToWithId:(id)a3;
- (int64_t)getTimeInMillis;
- (unint64_t)hash;
- (void)clear;
- (void)complete;
- (void)dealloc;
- (void)readObjectWithJavaIoObjectInputStream:(id)a3;
- (void)setTimeInMillisWithLong:(int64_t)a3;
- (void)setTimeWithJavaUtilDate:(id)a3;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3;
@end

@implementation JavaUtilCalendar

- (JavaUtilCalendar)init
{
  Default = JavaUtilTimeZone_getDefault();
  v4 = JavaUtilLocale_getDefault();
  JavaUtilCalendar_initWithJavaUtilTimeZone_withJavaUtilLocale_(self, Default, v4);
  return self;
}

- (BOOL)afterWithId:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(JavaUtilCalendar *)self getTimeInMillis];
  objc_opt_class();
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v5 > [a3 getTimeInMillis];
}

- (BOOL)beforeWithId:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(JavaUtilCalendar *)self getTimeInMillis];
  objc_opt_class();
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v5 < [a3 getTimeInMillis];
}

- (void)clear
{
  for (i = 0; i != 17; ++i)
  {
    fields = self->fields_;
    if (!fields)
    {
      goto LABEL_10;
    }

    size = fields->super.size_;
    if (i >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, i);
    }

    *(&fields->super.size_ + i + 1) = 0;
    isSet = self->isSet_;
    if (!isSet)
    {
LABEL_10:
      JreThrowNullPointerException();
    }

    v7 = isSet->super.size_;
    if (i >= v7)
    {
      IOSArray_throwOutOfBoundsWithMsg(v7, i);
    }

    *(&isSet->super.size_ + i + 4) = 0;
  }

  self->isTimeSet_ = 0;
  self->areFieldsSet_ = 0;
}

- (id)clone
{
  v9.receiver = self;
  v9.super_class = JavaUtilCalendar;
  v3 = [(JavaUtilCalendar *)&v9 clone];
  objc_opt_class();
  if (!v3)
  {
    goto LABEL_9;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  fields = self->fields_;
  if (!fields || (JreStrongAssign(v3 + 2, [(IOSArray *)fields clone]), (isSet = self->isSet_) == 0) || (JreStrongAssign(v3 + 3, [(IOSArray *)isSet clone]), (zone = self->zone_) == 0))
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilTimeZone *)zone clone];
  objc_opt_class();
  if (v7 && (objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_10:
    JreThrowClassCastException();
  }

  JreStrongAssign(v3 + 9, v7);
  return v3;
}

- (void)complete
{
  if (!self->isTimeSet_)
  {
    [(JavaUtilCalendar *)self computeTime];
    self->isTimeSet_ = 1;
  }

  if (!self->areFieldsSet_)
  {
    [(JavaUtilCalendar *)self computeFields];
    self->areFieldsSet_ = 1;
  }
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if (!a3)
  {
    [(JavaUtilCalendar *)self getTimeInMillis];
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v5 = [(JavaUtilCalendar *)self getTimeInMillis];
  if (v5 != [a3 getTimeInMillis])
  {
    return 0;
  }

  v6 = [(JavaUtilCalendar *)self isLenient];
  if (v6 != [a3 isLenient])
  {
    return 0;
  }

  v7 = [(JavaUtilCalendar *)self getFirstDayOfWeek];
  if (v7 != [a3 getFirstDayOfWeek])
  {
    return 0;
  }

  v8 = [(JavaUtilCalendar *)self getMinimalDaysInFirstWeek];
  if (v8 != [a3 getMinimalDaysInFirstWeek])
  {
    return 0;
  }

  v9 = [(JavaUtilCalendar *)self getTimeZone];
  if (!v9)
  {
    JreThrowNullPointerException();
  }

  v10 = v9;
  v11 = [a3 getTimeZone];

  return [v10 isEqual:v11];
}

- (id)getTime
{
  v2 = new_JavaUtilDate_initWithLong_([(JavaUtilCalendar *)self getTimeInMillis]);

  return v2;
}

- (int64_t)getTimeInMillis
{
  if (!self->isTimeSet_)
  {
    [(JavaUtilCalendar *)self computeTime];
    self->isTimeSet_ = 1;
  }

  return self->time_;
}

- (unint64_t)hash
{
  v3 = [(JavaUtilCalendar *)self isLenient];
  v4 = [(JavaUtilCalendar *)self getFirstDayOfWeek];
  v5 = [(JavaUtilCalendar *)self getMinimalDaysInFirstWeek];
  v6 = [(JavaUtilCalendar *)self getTimeZone];
  if (!v6)
  {
    JreThrowNullPointerException();
  }

  if (v3)
  {
    v7 = 1237;
  }

  else
  {
    v7 = 1231;
  }

  return (v7 + v4 + v5 + [v6 hash]);
}

- (void)setTimeWithJavaUtilDate:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = [a3 getTime];

  [(JavaUtilCalendar *)self setTimeInMillisWithLong:v4];
}

- (void)setTimeInMillisWithLong:(int64_t)a3
{
  if (!self->isTimeSet_ || !self->areFieldsSet_ || self->time_ != a3)
  {
    self->time_ = a3;
    self->isTimeSet_ = 1;
    self->areFieldsSet_ = 0;
    [(JavaUtilCalendar *)self complete];
  }
}

- (NSString)description
{
  v3 = [-[JavaUtilCalendar getClass](self "getClass")];
  if (self->isTimeSet_)
  {
    NSString_valueOfLong_(self->time_);
  }

  zone = self->zone_;
  if (!zone)
  {
LABEL_22:
    JreThrowNullPointerException();
  }

  lenient = self->lenient_;
  areFieldsSet = self->areFieldsSet_;
  [(JavaUtilTimeZone *)zone getID];
  minimalDaysInFirstWeek = self->minimalDaysInFirstWeek_;
  firstDayOfWeek = self->firstDayOfWeek_;
  v14 = JreStrcat("$$$$Z$Z$$$I$I", v7, v8, v9, v10, v11, v12, v13, v3);
  v15 = new_JavaLangStringBuilder_initWithNSString_(v14);
  for (i = 0; i != 17; ++i)
  {
    [(JavaLangStringBuilder *)v15 appendWithChar:44];
    if (!qword_100555320)
    {
      goto LABEL_22;
    }

    v17 = *(qword_100555320 + 8);
    if (i >= v17)
    {
      IOSArray_throwOutOfBoundsWithMsg(v17, i);
    }

    [(JavaLangStringBuilder *)v15 appendWithNSString:*(qword_100555320 + 24 + 8 * i)];
    [(JavaLangStringBuilder *)v15 appendWithChar:61];
    isSet = self->isSet_;
    if (!isSet)
    {
      goto LABEL_22;
    }

    size = isSet->super.size_;
    if (i >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, i);
    }

    if (*(&isSet->super.size_ + i + 4) == 1)
    {
      fields = self->fields_;
      if (!fields)
      {
        goto LABEL_22;
      }

      v21 = fields->super.size_;
      if (i >= v21)
      {
        IOSArray_throwOutOfBoundsWithMsg(v21, i);
      }

      [(JavaLangStringBuilder *)v15 appendWithInt:*(&fields->super.size_ + i + 1)];
    }

    else
    {
      [(JavaLangStringBuilder *)v15 appendWithChar:63];
    }
  }

  [(JavaLangStringBuilder *)v15 appendWithChar:93];

  return [(JavaLangStringBuilder *)v15 description];
}

- (int)compareToWithId:(id)a3
{
  objc_opt_class();
  if (!a3)
  {
    v9 = new_JavaLangNullPointerException_initWithNSString_(@"anotherCalendar == null");
    objc_exception_throw(v9);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v5 = [(JavaUtilCalendar *)self getTimeInMillis];
  v6 = [a3 getTimeInMillis];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (v5 > v6)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3
{
  [(JavaUtilCalendar *)self complete];
  if (!a3 || (v5 = [a3 putFields]) == 0)
  {
    JreThrowNullPointerException();
  }

  v6 = v5;
  [v5 putWithNSString:@"areFieldsSet" withBoolean:self->areFieldsSet_];
  [v6 putWithNSString:@"fields" withId:self->fields_];
  [v6 putWithNSString:@"firstDayOfWeek" withInt:self->firstDayOfWeek_];
  [v6 putWithNSString:@"isSet" withId:self->isSet_];
  [v6 putWithNSString:@"isTimeSet" withBoolean:self->isTimeSet_];
  [v6 putWithNSString:@"lenient" withBoolean:self->lenient_];
  [v6 putWithNSString:@"minimalDaysInFirstWeek" withInt:self->minimalDaysInFirstWeek_];
  [v6 putWithNSString:@"nextStamp" withInt:2];
  [v6 putWithNSString:@"serialVersionOnStream" withInt:1];
  [v6 putWithNSString:@"time" withLong:self->time_];
  [v6 putWithNSString:@"zone" withId:self->zone_];

  [a3 writeFields];
}

- (void)readObjectWithJavaIoObjectInputStream:(id)a3
{
  if (!a3 || (v4 = [a3 readFields]) == 0)
  {
    JreThrowNullPointerException();
  }

  v5 = v4;
  self->areFieldsSet_ = [v4 getWithNSString:@"areFieldsSet" withBoolean:0];
  v6 = [v5 getWithNSString:@"fields" withId:0];
  objc_opt_class();
  if (v6 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

  JreStrongAssign(&self->fields_, v6);
  self->firstDayOfWeek_ = [v5 getWithNSString:@"firstDayOfWeek" withInt:1];
  v7 = [v5 getWithNSString:@"isSet" withId:0];
  objc_opt_class();
  if (v7)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  JreStrongAssign(&self->isSet_, v7);
  self->isTimeSet_ = [v5 getWithNSString:@"isTimeSet" withBoolean:0];
  self->lenient_ = [v5 getWithNSString:@"lenient" withBoolean:1];
  self->minimalDaysInFirstWeek_ = [v5 getWithNSString:@"minimalDaysInFirstWeek" withInt:1];
  self->time_ = [v5 getWithNSString:@"time" withLong:0];
  v8 = [v5 getWithNSString:@"zone" withId:0];
  objc_opt_class();
  if (v8)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_13:
      JreThrowClassCastException();
    }
  }

  JreStrongAssign(&self->zone_, v8);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCalendar;
  [(JavaUtilCalendar *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(JavaUtilCalendar *)self clone];

  return v3;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v8[5] = off_100456FF0;
    v8[6] = off_100457000;
    v8[7] = off_100457010;
    v9 = @"DST_OFFSET";
    v8[3] = off_100456FD0;
    v8[4] = off_100456FE0;
    v8[1] = off_100456FB0;
    v8[2] = off_100456FC0;
    v8[0] = off_100456FA0;
    v2 = [IOSObjectArray newArrayWithObjects:v8 count:17 type:NSString_class_()];
    JreStrongAssignAndConsume(&qword_100555320, v2);
    v7[0] = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"areFieldsSet", +[IOSClass BOOLeanClass]);
    v3 = IOSClass_arrayType(+[IOSClass intClass], 1u);
    v7[1] = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"fields", v3);
    v7[2] = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"firstDayOfWeek", +[IOSClass intClass]);
    v4 = IOSClass_arrayType(+[IOSClass BOOLeanClass], 1u);
    v7[3] = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"isSet", v4);
    v7[4] = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"isTimeSet", +[IOSClass BOOLeanClass]);
    v7[5] = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"lenient", +[IOSClass BOOLeanClass]);
    v7[6] = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"minimalDaysInFirstWeek", +[IOSClass intClass]);
    v7[7] = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"nextStamp", +[IOSClass intClass]);
    v7[8] = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"serialVersionOnStream", +[IOSClass intClass]);
    v7[9] = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"time", +[IOSClass longClass]);
    v5 = JavaUtilTimeZone_class_();
    v7[10] = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"zone", v5);
    v6 = [IOSObjectArray newArrayWithObjects:v7 count:11 type:JavaIoObjectStreamField_class_()];
    JreStrongAssignAndConsume(&qword_100555328, v6);
    atomic_store(1u, &JavaUtilCalendar__initialized);
  }
}

@end
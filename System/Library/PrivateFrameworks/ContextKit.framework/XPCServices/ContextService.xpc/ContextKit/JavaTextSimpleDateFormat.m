@interface JavaTextSimpleDateFormat
+ (const)defaultPattern;
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (JavaTextSimpleDateFormat)initWithNSString:(id)a3;
- (id)clone;
- (id)formatToCharacterIteratorWithId:(id)a3;
- (id)get2DigitYearStart;
- (id)getDateFormatSymbols;
- (id)parseWithNSString:(id)a3 withJavaTextParsePosition:(id)a4;
- (id)toLocalizedPattern;
- (unint64_t)hash;
- (void)applyLocalizedPatternWithNSString:(id)a3;
- (void)applyPatternWithNSString:(id)a3;
- (void)dealloc;
- (void)readObjectWithJavaIoObjectInputStream:(id)a3;
- (void)set2DigitYearStartWithJavaUtilDate:(id)a3;
- (void)setDateFormatSymbolsWithJavaTextDateFormatSymbols:(id)a3;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3;
@end

@implementation JavaTextSimpleDateFormat

- (JavaTextSimpleDateFormat)initWithNSString:(id)a3
{
  Default = JavaUtilLocale_getDefault();
  JavaTextSimpleDateFormat_initWithNSString_withJavaUtilLocale_(self, a3, Default);
  return self;
}

- (void)applyLocalizedPatternWithNSString:(id)a3
{
  formatData = self->formatData_;
  if (!formatData)
  {
    JreThrowNullPointerException();
  }

  v6 = [(JavaTextDateFormatSymbols *)formatData getLocalPatternChars];
  v7 = sub_1002017F4(a3, v6, JavaTextSimpleDateFormat_PATTERN_CHARS_, 1);

  JreStrongAssign(&self->pattern_, v7);
}

- (void)applyPatternWithNSString:(id)a3
{
  sub_1002012F4(a3);

  JreStrongAssign(&self->pattern_, a3);
}

- (id)clone
{
  v9.receiver = self;
  v9.super_class = JavaTextSimpleDateFormat;
  v3 = [(JavaTextDateFormat *)&v9 clone];
  objc_opt_class();
  if (!v3)
  {
    goto LABEL_8;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  formatData = self->formatData_;
  if (!formatData)
  {
    goto LABEL_8;
  }

  v5 = [(JavaTextDateFormatSymbols *)formatData clone];
  objc_opt_class();
  if (v5)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_9:
      JreThrowClassCastException();
    }
  }

  JreStrongAssign(v3 + 4, v5);
  defaultCenturyStart = self->defaultCenturyStart_;
  if (!defaultCenturyStart)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  v7 = new_JavaUtilDate_initWithLong_([(JavaUtilDate *)defaultCenturyStart getTime]);
  JreStrongAssignAndConsume(v3 + 6, v7);
  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      LOBYTE(v5) = 0;
      return v5;
    }

    objc_opt_class();
    if (a3 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    v9.receiver = self;
    v9.super_class = JavaTextSimpleDateFormat;
    v5 = [(JavaTextDateFormat *)&v9 isEqual:a3];
    if (v5)
    {
      pattern = self->pattern_;
      if (!pattern || !a3)
      {
        goto LABEL_14;
      }

      v5 = [(NSString *)pattern isEqual:*(a3 + 3)];
      if (!v5)
      {
        return v5;
      }

      formatData = self->formatData_;
      if (!formatData)
      {
LABEL_14:
        JreThrowNullPointerException();
      }

      LOBYTE(v5) = [(JavaTextDateFormatSymbols *)formatData isEqual:*(a3 + 4)];
    }
  }

  return v5;
}

- (id)formatToCharacterIteratorWithId:(id)a3
{
  if (!a3)
  {
    v8 = new_JavaLangNullPointerException_initWithNSString_(@"object == null");
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = self;
      v6 = a3;
      goto LABEL_8;
    }

LABEL_11:
    JreThrowClassCastException();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [a3 getClass];
    v16 = JreStrcat("$@", v9, v10, v11, v12, v13, v14, v15, @"Bad class: ");
    v8 = new_JavaLangIllegalArgumentException_initWithNSString_(v16);
LABEL_14:
    objc_exception_throw(v8);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  v6 = new_JavaUtilDate_initWithLong_([a3 longLongValue]);
  v5 = self;
LABEL_8:

  return sub_100201CF4(v5, v6);
}

- (id)get2DigitYearStart
{
  defaultCenturyStart = self->defaultCenturyStart_;
  if (!defaultCenturyStart)
  {
    JreThrowNullPointerException();
  }

  v3 = [(JavaUtilDate *)defaultCenturyStart clone];
  objc_opt_class();
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v3;
}

- (id)getDateFormatSymbols
{
  formatData = self->formatData_;
  if (!formatData)
  {
    JreThrowNullPointerException();
  }

  v3 = [(JavaTextDateFormatSymbols *)formatData clone];
  objc_opt_class();
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v3;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = JavaTextSimpleDateFormat;
  v3 = [(JavaTextDateFormat *)&v7 hash];
  pattern = self->pattern_;
  if (!pattern || (v5 = [(NSString *)pattern hash], !self->formatData_))
  {
    JreThrowNullPointerException();
  }

  return (v5 + v3 + [(JavaTextDateFormatSymbols *)self->formatData_ hash]+ self->creationYear_);
}

- (id)parseWithNSString:(id)a3 withJavaTextParsePosition:(id)a4
{
  if (!a4)
  {
    goto LABEL_47;
  }

  v4 = a4;
  v7 = [a4 getIndex];
  if (!a3)
  {
    goto LABEL_47;
  }

  v8 = v7;
  v29 = [a3 length];
  calendar = self->super.calendar_;
  if (!calendar)
  {
    goto LABEL_47;
  }

  [(JavaUtilCalendar *)calendar clear];
  v10 = [(JavaUtilCalendar *)self->super.calendar_ getTimeZone];
  pattern = self->pattern_;
  if (!pattern)
  {
    goto LABEL_47;
  }

  v12 = [(NSString *)pattern length];
  if (v12 < 1)
  {
    goto LABEL_41;
  }

  v28 = v4;
  v27 = v10;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = -1;
  while (1)
  {
    v17 = [(NSString *)self->pattern_ charAtWithInt:v13, v27];
    if (v17 == 39)
    {
      if (v15 >= 1)
      {
        v8 = sub_1002030E0(self, a3, v8, v16, v15);
        if ((v8 & 0x80000000) != 0)
        {
          goto LABEL_42;
        }

        v15 = 0;
      }

      if (v16 == 39)
      {
        if (v8 >= v29 || [a3 charAtWithInt:v8] != 39)
        {
          goto LABEL_35;
        }

        v8 = (v8 + 1);
        v16 = -1;
      }

      else
      {
        v16 = 39;
      }

      v14 ^= 1u;
      goto LABEL_30;
    }

    v18 = v17;
    if ((v14 & 1) != 0 || (v16 != v17 ? (v19 = (v17 & 0xFFFFFFDF) - 65 > 0x19) : (v19 = 0), v19))
    {
      if (v15 >= 1)
      {
        v8 = sub_1002030E0(self, a3, v8, v16, v15);
        if ((v8 & 0x80000000) != 0)
        {
          goto LABEL_42;
        }

        v15 = 0;
      }

      if (v8 >= v29 || [a3 charAtWithInt:v8] != v18)
      {
LABEL_35:
        v20 = v28;
        v21 = v8;
        goto LABEL_43;
      }

      v8 = (v8 + 1);
      v16 = -1;
      goto LABEL_30;
    }

    if (v16 != v17)
    {
      break;
    }

    v14 = 0;
    ++v15;
LABEL_30:
    v13 = (v13 + 1);
    if (v12 == v13)
    {
      if (v15 < 1)
      {
        v10 = v27;
        v4 = v28;
      }

      else
      {
        v22 = sub_1002030E0(self, a3, v8, v16, v15);
        v8 = v22;
        v10 = v27;
        v4 = v28;
        if ((v22 & 0x80000000) != 0)
        {
          [v28 setErrorIndexWithInt:~v22];
          v23 = self->super.calendar_;
          if (v23)
          {
            v24 = v27;
            goto LABEL_45;
          }

LABEL_47:
          JreThrowNullPointerException();
        }
      }

LABEL_41:
      v25 = [(JavaUtilCalendar *)self->super.calendar_ getTime];
      [v4 setIndexWithInt:v8];
      [(JavaUtilCalendar *)self->super.calendar_ setTimeZoneWithJavaUtilTimeZone:v10];
      return v25;
    }
  }

  if (v15 < 1 || (v8 = sub_1002030E0(self, a3, v8, v16, -v15), (v8 & 0x80000000) == 0))
  {
    v14 = 0;
    v15 = 1;
    v16 = v18;
    goto LABEL_30;
  }

LABEL_42:
  v21 = ~v8;
  v20 = v28;
LABEL_43:
  [v20 setErrorIndexWithInt:v21];
  v23 = self->super.calendar_;
  if (!v23)
  {
    goto LABEL_47;
  }

  v24 = v27;
LABEL_45:
  [(JavaUtilCalendar *)v23 setTimeZoneWithJavaUtilTimeZone:v24];
  return 0;
}

- (void)set2DigitYearStartWithJavaUtilDate:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = [a3 clone];
  objc_opt_class();
  if (v4 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  JreStrongAssign(&self->defaultCenturyStart_, v4);
  v5 = new_JavaUtilGregorianCalendar_init();
  [(JavaUtilCalendar *)v5 setTimeWithJavaUtilDate:self->defaultCenturyStart_];
  self->creationYear_ = [(JavaUtilCalendar *)v5 getWithInt:1];
}

- (void)setDateFormatSymbolsWithJavaTextDateFormatSymbols:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = [a3 clone];
  objc_opt_class();
  if (v4 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  JreStrongAssign(&self->formatData_, v4);
}

- (id)toLocalizedPattern
{
  if (!self->formatData_)
  {
    JreThrowNullPointerException();
  }

  v2 = JavaTextSimpleDateFormat_PATTERN_CHARS_;
  pattern = self->pattern_;
  v4 = [(JavaTextDateFormatSymbols *)self->formatData_ getLocalPatternChars];

  return sub_1002017F4(pattern, v2, v4, 0);
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3
{
  if (!a3 || (v5 = [a3 putFields]) == 0)
  {
    JreThrowNullPointerException();
  }

  v6 = v5;
  [v5 putWithNSString:@"defaultCenturyStart" withId:self->defaultCenturyStart_];
  [v6 putWithNSString:@"formatData" withId:self->formatData_];
  [v6 putWithNSString:@"pattern" withId:self->pattern_];
  [v6 putWithNSString:@"serialVersionOnStream" withInt:1];

  [a3 writeFields];
}

- (void)readObjectWithJavaIoObjectInputStream:(id)a3
{
  if (!a3 || (v4 = [a3 readFields]) == 0)
  {
    JreThrowNullPointerException();
  }

  v5 = v4;
  v6 = [v4 getWithNSString:@"serialVersionOnStream" withInt:0];
  v7 = new_JavaUtilDate_init();
  if (v6 >= 1)
  {
    v7 = [v5 getWithNSString:@"defaultCenturyStart" withId:v7];
    objc_opt_class();
    if (v7)
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  if ((-[JavaTextSimpleDateFormat set2DigitYearStartWithJavaUtilDate:](self, "set2DigitYearStartWithJavaUtilDate:", v7), v8 = [v5 getWithNSString:@"formatData" withId:0], objc_opt_class(), v8) && (objc_opt_isKindOfClass() & 1) == 0 || (JreStrongAssign(&self->formatData_, v8), v9 = objc_msgSend(v5, "getWithNSString:withId:", @"pattern", &stru_100484358), objc_opt_class(), v9) && (objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_14:
    JreThrowClassCastException();
  }

  JreStrongAssign(&self->pattern_, v9);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaTextSimpleDateFormat;
  [(JavaTextDateFormat *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = JavaUtilDate_class_();
    v6[0] = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"defaultCenturyStart", v2);
    v3 = JavaTextDateFormatSymbols_class_();
    v6[1] = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"formatData", v3);
    v4 = NSString_class_();
    v6[2] = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"pattern", v4);
    v6[3] = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"serialVersionOnStream", +[IOSClass intClass]);
    v5 = [IOSObjectArray newArrayWithObjects:v6 count:4 type:JavaIoObjectStreamField_class_()];
    JreStrongAssignAndConsume(&qword_100555020, v5);
    atomic_store(1u, JavaTextSimpleDateFormat__initialized);
  }
}

+ (const)defaultPattern
{
  if ((atomic_load_explicit(JavaTextSimpleDateFormat__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100204B6C();
  }

  Default = JavaUtilLocale_getDefault();
  v1 = LibcoreIcuLocaleData_getWithJavaUtilLocale_(Default);
  if (!v1)
  {
    JreThrowNullPointerException();
  }

  v2 = v1;
  v3 = [(LibcoreIcuLocaleData *)v1 getDateFormatWithInt:3];
  [(LibcoreIcuLocaleData *)v2 getTimeFormatWithInt:3];
  return JreStrcat("$C$", v4, v5, v6, v7, v8, v9, v10, v3);
}

@end
@interface JavaTextSimpleDateFormat
+ (const)defaultPattern;
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (JavaTextSimpleDateFormat)initWithNSString:(id)string;
- (id)clone;
- (id)formatToCharacterIteratorWithId:(id)id;
- (id)get2DigitYearStart;
- (id)getDateFormatSymbols;
- (id)parseWithNSString:(id)string withJavaTextParsePosition:(id)position;
- (id)toLocalizedPattern;
- (unint64_t)hash;
- (void)applyLocalizedPatternWithNSString:(id)string;
- (void)applyPatternWithNSString:(id)string;
- (void)dealloc;
- (void)readObjectWithJavaIoObjectInputStream:(id)stream;
- (void)set2DigitYearStartWithJavaUtilDate:(id)date;
- (void)setDateFormatSymbolsWithJavaTextDateFormatSymbols:(id)symbols;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream;
@end

@implementation JavaTextSimpleDateFormat

- (JavaTextSimpleDateFormat)initWithNSString:(id)string
{
  Default = JavaUtilLocale_getDefault();
  JavaTextSimpleDateFormat_initWithNSString_withJavaUtilLocale_(self, string, Default);
  return self;
}

- (void)applyLocalizedPatternWithNSString:(id)string
{
  formatData = self->formatData_;
  if (!formatData)
  {
    JreThrowNullPointerException();
  }

  getLocalPatternChars = [(JavaTextDateFormatSymbols *)formatData getLocalPatternChars];
  v7 = sub_1002017F4(string, getLocalPatternChars, JavaTextSimpleDateFormat_PATTERN_CHARS_, 1);

  JreStrongAssign(&self->pattern_, v7);
}

- (void)applyPatternWithNSString:(id)string
{
  sub_1002012F4(string);

  JreStrongAssign(&self->pattern_, string);
}

- (id)clone
{
  v9.receiver = self;
  v9.super_class = JavaTextSimpleDateFormat;
  clone = [(JavaTextDateFormat *)&v9 clone];
  objc_opt_class();
  if (!clone)
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

  clone2 = [(JavaTextDateFormatSymbols *)formatData clone];
  objc_opt_class();
  if (clone2)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_9:
      JreThrowClassCastException();
    }
  }

  JreStrongAssign(clone + 4, clone2);
  defaultCenturyStart = self->defaultCenturyStart_;
  if (!defaultCenturyStart)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  v7 = new_JavaUtilDate_initWithLong_([(JavaUtilDate *)defaultCenturyStart getTime]);
  JreStrongAssignAndConsume(clone + 6, v7);
  return clone;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
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
    if (equal && (objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    v9.receiver = self;
    v9.super_class = JavaTextSimpleDateFormat;
    v5 = [(JavaTextDateFormat *)&v9 isEqual:equal];
    if (v5)
    {
      pattern = self->pattern_;
      if (!pattern || !equal)
      {
        goto LABEL_14;
      }

      v5 = [(NSString *)pattern isEqual:*(equal + 3)];
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

      LOBYTE(v5) = [(JavaTextDateFormatSymbols *)formatData isEqual:*(equal + 4)];
    }
  }

  return v5;
}

- (id)formatToCharacterIteratorWithId:(id)id
{
  if (!id)
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
      selfCopy2 = self;
      idCopy = id;
      goto LABEL_8;
    }

LABEL_11:
    JreThrowClassCastException();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [id getClass];
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

  idCopy = new_JavaUtilDate_initWithLong_([id longLongValue]);
  selfCopy2 = self;
LABEL_8:

  return sub_100201CF4(selfCopy2, idCopy);
}

- (id)get2DigitYearStart
{
  defaultCenturyStart = self->defaultCenturyStart_;
  if (!defaultCenturyStart)
  {
    JreThrowNullPointerException();
  }

  clone = [(JavaUtilDate *)defaultCenturyStart clone];
  objc_opt_class();
  if (clone && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return clone;
}

- (id)getDateFormatSymbols
{
  formatData = self->formatData_;
  if (!formatData)
  {
    JreThrowNullPointerException();
  }

  clone = [(JavaTextDateFormatSymbols *)formatData clone];
  objc_opt_class();
  if (clone && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return clone;
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

- (id)parseWithNSString:(id)string withJavaTextParsePosition:(id)position
{
  if (!position)
  {
    goto LABEL_47;
  }

  positionCopy = position;
  getIndex = [position getIndex];
  if (!string)
  {
    goto LABEL_47;
  }

  v8 = getIndex;
  v29 = [string length];
  calendar = self->super.calendar_;
  if (!calendar)
  {
    goto LABEL_47;
  }

  [(JavaUtilCalendar *)calendar clear];
  getTimeZone = [(JavaUtilCalendar *)self->super.calendar_ getTimeZone];
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

  v28 = positionCopy;
  v27 = getTimeZone;
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
        v8 = sub_1002030E0(self, string, v8, v16, v15);
        if ((v8 & 0x80000000) != 0)
        {
          goto LABEL_42;
        }

        v15 = 0;
      }

      if (v16 == 39)
      {
        if (v8 >= v29 || [string charAtWithInt:v8] != 39)
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
        v8 = sub_1002030E0(self, string, v8, v16, v15);
        if ((v8 & 0x80000000) != 0)
        {
          goto LABEL_42;
        }

        v15 = 0;
      }

      if (v8 >= v29 || [string charAtWithInt:v8] != v18)
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
        getTimeZone = v27;
        positionCopy = v28;
      }

      else
      {
        v22 = sub_1002030E0(self, string, v8, v16, v15);
        v8 = v22;
        getTimeZone = v27;
        positionCopy = v28;
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
      getTime = [(JavaUtilCalendar *)self->super.calendar_ getTime];
      [positionCopy setIndexWithInt:v8];
      [(JavaUtilCalendar *)self->super.calendar_ setTimeZoneWithJavaUtilTimeZone:getTimeZone];
      return getTime;
    }
  }

  if (v15 < 1 || (v8 = sub_1002030E0(self, string, v8, v16, -v15), (v8 & 0x80000000) == 0))
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

- (void)set2DigitYearStartWithJavaUtilDate:(id)date
{
  if (!date)
  {
    JreThrowNullPointerException();
  }

  clone = [date clone];
  objc_opt_class();
  if (clone && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  JreStrongAssign(&self->defaultCenturyStart_, clone);
  v5 = new_JavaUtilGregorianCalendar_init();
  [(JavaUtilCalendar *)v5 setTimeWithJavaUtilDate:self->defaultCenturyStart_];
  self->creationYear_ = [(JavaUtilCalendar *)v5 getWithInt:1];
}

- (void)setDateFormatSymbolsWithJavaTextDateFormatSymbols:(id)symbols
{
  if (!symbols)
  {
    JreThrowNullPointerException();
  }

  clone = [symbols clone];
  objc_opt_class();
  if (clone && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  JreStrongAssign(&self->formatData_, clone);
}

- (id)toLocalizedPattern
{
  if (!self->formatData_)
  {
    JreThrowNullPointerException();
  }

  v2 = JavaTextSimpleDateFormat_PATTERN_CHARS_;
  pattern = self->pattern_;
  getLocalPatternChars = [(JavaTextDateFormatSymbols *)self->formatData_ getLocalPatternChars];

  return sub_1002017F4(pattern, v2, getLocalPatternChars, 0);
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream
{
  if (!stream || (v5 = [stream putFields]) == 0)
  {
    JreThrowNullPointerException();
  }

  v6 = v5;
  [v5 putWithNSString:@"defaultCenturyStart" withId:self->defaultCenturyStart_];
  [v6 putWithNSString:@"formatData" withId:self->formatData_];
  [v6 putWithNSString:@"pattern" withId:self->pattern_];
  [v6 putWithNSString:@"serialVersionOnStream" withInt:1];

  [stream writeFields];
}

- (void)readObjectWithJavaIoObjectInputStream:(id)stream
{
  if (!stream || (v4 = [stream readFields]) == 0)
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
  if (objc_opt_class() == self)
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
@interface JavaTextDateFormatSymbols
+ (id)getInstance;
- (BOOL)isEqual:(id)equal;
- (JavaTextDateFormatSymbols)init;
- (NSString)description;
- (id)clone;
- (id)copyWithZone:(_NSZone *)zone;
- (id)getAmPmStrings;
- (id)getEras;
- (id)getMonths;
- (id)getShortMonths;
- (id)getShortWeekdays;
- (id)getWeekdays;
- (id)getZoneStrings;
- (id)internalZoneStrings;
- (unint64_t)hash;
- (void)dealloc;
- (void)readObjectWithJavaIoObjectInputStream:(id)stream;
- (void)setAmPmStringsWithNSStringArray:(id)array;
- (void)setErasWithNSStringArray:(id)array;
- (void)setLocalPatternCharsWithNSString:(id)string;
- (void)setMonthsWithNSStringArray:(id)array;
- (void)setShortMonthsWithNSStringArray:(id)array;
- (void)setShortWeekdaysWithNSStringArray:(id)array;
- (void)setWeekdaysWithNSStringArray:(id)array;
- (void)setZoneStringsWithNSStringArray2:(id)array2;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream;
@end

@implementation JavaTextDateFormatSymbols

- (id)internalZoneStrings
{
  objc_sync_enter(self);
  zoneStrings = self->zoneStrings_;
  if (!zoneStrings)
  {
    ZoneStringsWithJavaUtilLocale = LibcoreIcuTimeZoneNames_getZoneStringsWithJavaUtilLocale_(self->locale_);
    JreStrongAssign(&self->zoneStrings_, ZoneStringsWithJavaUtilLocale);
    zoneStrings = self->zoneStrings_;
  }

  objc_sync_exit(self);
  return zoneStrings;
}

- (JavaTextDateFormatSymbols)init
{
  Default = JavaUtilLocale_getDefault();
  JavaTextDateFormatSymbols_initWithJavaUtilLocale_(&self->super.isa, Default);
  return self;
}

+ (id)getInstance
{
  Default = JavaUtilLocale_getDefault();

  return JavaTextDateFormatSymbols_getInstanceWithJavaUtilLocale_(Default);
}

- (void)readObjectWithJavaIoObjectInputStream:(id)stream
{
  if (!stream)
  {
    JreThrowNullPointerException();
  }

  [stream defaultReadObject];
  v4 = LibcoreIcuLocaleData_getWithJavaUtilLocale_(self->locale_);

  JreStrongAssign(&self->localeData_, v4);
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream
{
  [(JavaTextDateFormatSymbols *)self internalZoneStrings];
  if (!stream)
  {
    JreThrowNullPointerException();
  }

  [stream defaultWriteObject];
}

- (id)clone
{
  v3.receiver = self;
  v3.super_class = JavaTextDateFormatSymbols;
  return [(JavaTextDateFormatSymbols *)&v3 clone];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v6) = 1;
    return v6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LOBYTE(v6) = 0;
    return v6;
  }

  objc_opt_class();
  if (!equal)
  {
    localPatternChars = self->localPatternChars_;
    goto LABEL_21;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v5 = self->localPatternChars_;
  if (!v5)
  {
LABEL_21:
    JreThrowNullPointerException();
  }

  v6 = [(NSString *)v5 isEqual:*(equal + 11)];
  if (v6)
  {
    v6 = JavaUtilArrays_equalsWithNSObjectArray_withNSObjectArray_(self->ampms_, *(equal + 1));
    if (v6)
    {
      v6 = JavaUtilArrays_equalsWithNSObjectArray_withNSObjectArray_(self->eras_, *(equal + 2));
      if (v6)
      {
        v6 = JavaUtilArrays_equalsWithNSObjectArray_withNSObjectArray_(self->months_, *(equal + 3));
        if (v6)
        {
          v6 = JavaUtilArrays_equalsWithNSObjectArray_withNSObjectArray_(self->shortMonths_, *(equal + 4));
          if (v6)
          {
            v6 = JavaUtilArrays_equalsWithNSObjectArray_withNSObjectArray_(self->shortWeekdays_, *(equal + 5));
            if (v6)
            {
              v6 = JavaUtilArrays_equalsWithNSObjectArray_withNSObjectArray_(self->weekdays_, *(equal + 6));
              if (v6)
              {

                LOBYTE(v6) = sub_100291690(self, equal);
              }
            }
          }
        }
      }
    }
  }

  return v6;
}

- (NSString)description
{
  v3 = [-[JavaTextDateFormatSymbols getClass](self "getClass")];
  JavaUtilArrays_toStringWithNSObjectArray_(self->ampms_);
  customZoneStrings = self->customZoneStrings_;
  JavaUtilArrays_toStringWithNSObjectArray_(self->eras_);
  localPatternChars = self->localPatternChars_;
  JavaUtilArrays_toStringWithNSObjectArray_(self->months_);
  JavaUtilArrays_toStringWithNSObjectArray_(self->shortMonths_);
  JavaUtilArrays_toStringWithNSObjectArray_(self->shortWeekdays_);
  JavaUtilArrays_toStringWithNSObjectArray_(self->weekdays_);
  internalZoneStrings = [(JavaTextDateFormatSymbols *)self internalZoneStrings];
  if (!internalZoneStrings)
  {
    JreThrowNullPointerException();
  }

  v7 = internalZoneStrings;
  v8 = internalZoneStrings[2];
  if (v8 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, 0);
  }

  JavaUtilArrays_toStringWithNSObjectArray_(*(v7 + 3));
  return JreStrcat("$$$$Z$$$$$$$$$$$$$$$", v9, v10, v11, v12, v13, v14, v15, v3);
}

- (id)getAmPmStrings
{
  ampms = self->ampms_;
  if (!ampms)
  {
    JreThrowNullPointerException();
  }

  return [(IOSArray *)ampms clone];
}

- (id)getEras
{
  eras = self->eras_;
  if (!eras)
  {
    JreThrowNullPointerException();
  }

  return [(IOSArray *)eras clone];
}

- (id)getMonths
{
  months = self->months_;
  if (!months)
  {
    JreThrowNullPointerException();
  }

  return [(IOSArray *)months clone];
}

- (id)getShortMonths
{
  shortMonths = self->shortMonths_;
  if (!shortMonths)
  {
    JreThrowNullPointerException();
  }

  return [(IOSArray *)shortMonths clone];
}

- (id)getShortWeekdays
{
  shortWeekdays = self->shortWeekdays_;
  if (!shortWeekdays)
  {
    JreThrowNullPointerException();
  }

  return [(IOSArray *)shortWeekdays clone];
}

- (id)getWeekdays
{
  weekdays = self->weekdays_;
  if (!weekdays)
  {
    JreThrowNullPointerException();
  }

  return [(IOSArray *)weekdays clone];
}

- (id)getZoneStrings
{
  v3 = sub_100291BB4([(JavaTextDateFormatSymbols *)self internalZoneStrings]);
  if (!v3)
  {
LABEL_28:
    JreThrowNullPointerException();
  }

  v4 = v3;
  p_elementType = &v3->elementType_;
  v6 = &(&v3->elementType_)[v3->super.size_];
  while (p_elementType < v6)
  {
    v8 = *p_elementType++;
    v7 = v8;
    if (!v8)
    {
      goto LABEL_28;
    }

    v9 = *(v7 + 8);
    if (v9 < 1)
    {
      IOSArray_throwOutOfBoundsWithMsg(v9, 0);
    }

    v10 = *(v7 + 24);
    if (v9 <= 1)
    {
      IOSArray_throwOutOfBoundsWithMsg(v9, 1);
    }

    if (!*(v7 + 32))
    {
      TimeZoneWithNSString = JavaUtilTimeZone_getTimeZoneWithNSString_(v10);
      if (!TimeZoneWithNSString)
      {
        goto LABEL_28;
      }

      IOSObjectArray_Set(v7, 1, [TimeZoneWithNSString getDisplayNameWithBoolean:0 withInt:1 withJavaUtilLocale:self->locale_]);
    }

    v12 = *(v7 + 8);
    if (v12 <= 2)
    {
      IOSArray_throwOutOfBoundsWithMsg(v12, 2);
    }

    if (!*(v7 + 40))
    {
      v13 = JavaUtilTimeZone_getTimeZoneWithNSString_(v10);
      if (!v13)
      {
        goto LABEL_28;
      }

      IOSObjectArray_Set(v7, 2, [v13 getDisplayNameWithBoolean:0 withInt:0 withJavaUtilLocale:self->locale_]);
    }

    v14 = *(v7 + 8);
    if (v14 <= 3)
    {
      IOSArray_throwOutOfBoundsWithMsg(v14, 3);
    }

    if (!*(v7 + 48))
    {
      v15 = JavaUtilTimeZone_getTimeZoneWithNSString_(v10);
      if (!v15)
      {
        goto LABEL_28;
      }

      IOSObjectArray_Set(v7, 3, [v15 getDisplayNameWithBoolean:1 withInt:1 withJavaUtilLocale:self->locale_]);
    }

    v16 = *(v7 + 8);
    if (v16 <= 4)
    {
      IOSArray_throwOutOfBoundsWithMsg(v16, 4);
    }

    if (!*(v7 + 56))
    {
      v17 = JavaUtilTimeZone_getTimeZoneWithNSString_(v10);
      if (!v17)
      {
        goto LABEL_28;
      }

      IOSObjectArray_Set(v7, 4, [v17 getDisplayNameWithBoolean:1 withInt:0 withJavaUtilLocale:self->locale_]);
    }
  }

  return v4;
}

- (unint64_t)hash
{
  internalZoneStrings = [(JavaTextDateFormatSymbols *)self internalZoneStrings];
  localPatternChars = self->localPatternChars_;
  if (!localPatternChars)
  {
    goto LABEL_43;
  }

  v5 = [(NSString *)localPatternChars hash];
  ampms = self->ampms_;
  if (!ampms)
  {
    goto LABEL_43;
  }

  v7 = v5;
  p_elementType = &ampms->elementType_;
  v9 = &(&ampms->elementType_)[ampms->super.size_];
  while (p_elementType < v9)
  {
    v10 = *p_elementType;
    if (!*p_elementType)
    {
      goto LABEL_43;
    }

    ++p_elementType;
    v7 += [v10 hash];
  }

  eras = self->eras_;
  if (!eras)
  {
    goto LABEL_43;
  }

  v12 = &eras->elementType_;
  v13 = &(&eras->elementType_)[eras->super.size_];
  while (v12 < v13)
  {
    v14 = *v12;
    if (!*v12)
    {
      goto LABEL_43;
    }

    ++v12;
    v7 += [v14 hash];
  }

  months = self->months_;
  if (!months)
  {
    goto LABEL_43;
  }

  v16 = &months->elementType_;
  v17 = &(&months->elementType_)[months->super.size_];
  while (v16 < v17)
  {
    v18 = *v16;
    if (!*v16)
    {
      goto LABEL_43;
    }

    ++v16;
    v7 += [v18 hash];
  }

  shortMonths = self->shortMonths_;
  if (!shortMonths)
  {
    goto LABEL_43;
  }

  v20 = &shortMonths->elementType_;
  v21 = &(&shortMonths->elementType_)[shortMonths->super.size_];
  while (v20 < v21)
  {
    v22 = *v20;
    if (!*v20)
    {
      goto LABEL_43;
    }

    ++v20;
    v7 += [v22 hash];
  }

  shortWeekdays = self->shortWeekdays_;
  if (!shortWeekdays)
  {
    goto LABEL_43;
  }

  v24 = &shortWeekdays->elementType_;
  v25 = &(&shortWeekdays->elementType_)[shortWeekdays->super.size_];
  while (v24 < v25)
  {
    v26 = *v24;
    if (!*v24)
    {
      goto LABEL_43;
    }

    ++v24;
    v7 += [v26 hash];
  }

  weekdays = self->weekdays_;
  if (!weekdays)
  {
    goto LABEL_43;
  }

  v28 = &weekdays->elementType_;
  v29 = &(&weekdays->elementType_)[weekdays->super.size_];
  while (v28 < v29)
  {
    v30 = *v28;
    if (!*v28)
    {
      goto LABEL_43;
    }

    ++v28;
    v7 += [v30 hash];
  }

  if (!internalZoneStrings)
  {
LABEL_43:
    JreThrowNullPointerException();
  }

  v31 = (internalZoneStrings + 6);
  v32 = &internalZoneStrings[2 * internalZoneStrings[2] + 6];
  while (v31 < v32)
  {
    v34 = *v31++;
    v33 = v34;
    if (!v34)
    {
      goto LABEL_43;
    }

    if (*(v33 + 8) >= 1)
    {
      v35 = 0;
      do
      {
        v36 = *(v33 + 24 + 8 * v35);
        if (v36)
        {
          v7 += [v36 hash];
        }

        ++v35;
      }

      while (v35 < *(v33 + 8));
    }
  }

  return v7;
}

- (void)setAmPmStringsWithNSStringArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  clone = [array clone];

  JreStrongAssign(&self->ampms_, clone);
}

- (void)setErasWithNSStringArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  clone = [array clone];

  JreStrongAssign(&self->eras_, clone);
}

- (void)setLocalPatternCharsWithNSString:(id)string
{
  if (!string)
  {
    v5 = new_JavaLangNullPointerException_initWithNSString_(@"data == null");
    objc_exception_throw(v5);
  }

  p_localPatternChars = &self->localPatternChars_;

  JreStrongAssign(p_localPatternChars, string);
}

- (void)setMonthsWithNSStringArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  clone = [array clone];

  JreStrongAssign(&self->months_, clone);
}

- (void)setShortMonthsWithNSStringArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  clone = [array clone];

  JreStrongAssign(&self->shortMonths_, clone);
}

- (void)setShortWeekdaysWithNSStringArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  clone = [array clone];

  JreStrongAssign(&self->shortWeekdays_, clone);
}

- (void)setWeekdaysWithNSStringArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  clone = [array clone];

  JreStrongAssign(&self->weekdays_, clone);
}

- (void)setZoneStringsWithNSStringArray2:(id)array2
{
  if (!array2)
  {
    v16 = new_JavaLangNullPointerException_initWithNSString_(@"zoneStrings == null");
LABEL_10:
    objc_exception_throw(v16);
  }

  for (i = (array2 + 24); i < (array2 + 8 * *(array2 + 2) + 24); ++i)
  {
    v5 = *i;
    if (!*i)
    {
      JreThrowNullPointerException();
    }

    if (*(v5 + 8) <= 4)
    {
      v7 = JavaUtilArrays_toStringWithNSObjectArray_(v5);
      v15 = JreStrcat("$$", v8, v9, v10, v11, v12, v13, v14, v7);
      v16 = new_JavaLangIllegalArgumentException_initWithNSString_(v15);
      goto LABEL_10;
    }
  }

  v6 = sub_100291BB4(array2);
  JreStrongAssign(&self->zoneStrings_, v6);
  self->customZoneStrings_ = 1;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaTextDateFormatSymbols;
  [(JavaTextDateFormatSymbols *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  clone = [(JavaTextDateFormatSymbols *)self clone];

  return clone;
}

@end
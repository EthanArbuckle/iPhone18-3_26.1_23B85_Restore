@interface JavaUtilSimpleTimeZone
- (BOOL)hasSameRulesWithJavaUtilTimeZone:(id)a3;
- (BOOL)inDaylightTimeWithJavaUtilDate:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isLeapYearWithInt:(int)a3;
- (JavaUtilSimpleTimeZone)initWithInt:(int)a3 withNSString:(id)a4;
- (id)clone;
- (id)description;
- (int)getDSTSavings;
- (int)getOffsetWithLong:(int64_t)a3;
- (int)mod7WithInt:(int)a3;
- (unint64_t)hash;
- (void)setDSTSavingsWithInt:(int)a3;
@end

@implementation JavaUtilSimpleTimeZone

- (JavaUtilSimpleTimeZone)initWithInt:(int)a3 withNSString:(id)a4
{
  JavaUtilTimeZone_init(self, a2);
  self->dstSavings_ = 3600000;
  [(JavaUtilTimeZone *)self setIDWithNSString:a4];
  self->rawOffset_ = a3;
  return self;
}

- (id)clone
{
  v4.receiver = self;
  v4.super_class = JavaUtilSimpleTimeZone;
  v2 = [(JavaUtilTimeZone *)&v4 clone];
  objc_opt_class();
  if (v2 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_21;
  }

  objc_opt_class();
  if (!a3)
  {
    [(JavaUtilTimeZone *)self getID];
    goto LABEL_26;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v5 = [(JavaUtilTimeZone *)self getID];
  if (!v5)
  {
LABEL_26:
    JreThrowNullPointerException();
  }

  v6 = [v5 isEqual:{objc_msgSend(a3, "getID")}];
  if (!v6)
  {
    return v6;
  }

  if (self->rawOffset_ != *(a3 + 6) || self->useDaylight_ != *(a3 + 72))
  {
    goto LABEL_21;
  }

  if (!self->useDaylight_)
  {
    LOBYTE(v6) = 1;
    return v6;
  }

  if (self->startYear_ != *(a3 + 7) || self->startMonth_ != *(a3 + 8) || self->startDay_ != *(a3 + 9) || self->startMode_ != *(a3 + 16) || self->startDayOfWeek_ != *(a3 + 10) || self->startTime_ != *(a3 + 11) || self->endMonth_ != *(a3 + 12) || self->endDay_ != *(a3 + 13) || self->endDayOfWeek_ != *(a3 + 14) || self->endTime_ != *(a3 + 15) || self->endMode_ != *(a3 + 17))
  {
LABEL_21:
    LOBYTE(v6) = 0;
    return v6;
  }

  LOBYTE(v6) = self->dstSavings_ == *(a3 + 19);
  return v6;
}

- (int)getDSTSavings
{
  if (self->useDaylight_)
  {
    return self->dstSavings_;
  }

  else
  {
    return 0;
  }
}

- (int)getOffsetWithLong:(int64_t)a3
{
  v5 = [(JavaUtilSimpleTimeZone *)self useDaylightTime];
  rawOffset = self->rawOffset_;
  if (v5)
  {
    v7 = JavaUtilGrego_timeToFieldsWithLong_withIntArray_(rawOffset + a3, 0);
    if (!v7)
    {
      JreThrowNullPointerException();
    }

    v8 = v7;
    size = v7->super.size_;
    if (size < 1)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, 0);
    }

    if (size < 2)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, 1);
    }

    if (size < 3)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, 2);
    }

    v11 = v8[5];
    if (size <= 3)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, 3);
    }

    v12 = v8[6];
    if (size <= 5)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, 5);
    }

    v13 = v8[8];
    v14 = v8[3];
    v10 = v8[4];
    v15 = v8[5];
    v16 = v8[6];

    LODWORD(rawOffset) = [(JavaUtilSimpleTimeZone *)self getOffsetWithInt:1 withInt:v14 withInt:v10 withInt:v11 withInt:v12 withInt:v13];
  }

  return rawOffset;
}

- (unint64_t)hash
{
  objc_sync_enter(self);
  v3 = [(JavaUtilTimeZone *)self getID];
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  v4 = self->rawOffset_ + [v3 hash];
  if (self->useDaylight_)
  {
    v4 += self->startYear_ + self->startMonth_ + self->startDay_ + self->startDayOfWeek_ + self->startTime_ + self->startMode_ + self->endMonth_ + self->endDay_ + self->endDayOfWeek_ + self->endTime_ + self->endMode_ + self->dstSavings_;
  }

  v5 = v4;
  objc_sync_exit(self);
  return v5;
}

- (BOOL)hasSameRulesWithJavaUtilTimeZone:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  useDaylight = self->useDaylight_;
  if (useDaylight != *(a3 + 72))
  {
    return 0;
  }

  rawOffset = self->rawOffset_;
  v7 = *(a3 + 6);
  v8 = useDaylight ^ 1;
  if (rawOffset == v7)
  {
    result = v8;
  }

  else
  {
    result = 0;
  }

  if ((v8 & 1) == 0 && rawOffset == v7)
  {
    if (self->dstSavings_ == *(a3 + 19) && self->startYear_ == *(a3 + 7) && self->startMonth_ == *(a3 + 8) && self->startDay_ == *(a3 + 9) && self->startMode_ == *(a3 + 16) && self->startDayOfWeek_ == *(a3 + 10) && self->startTime_ == *(a3 + 11) && self->endMonth_ == *(a3 + 12) && self->endDay_ == *(a3 + 13) && self->endDayOfWeek_ == *(a3 + 14) && self->endTime_ == *(a3 + 15))
    {
      return self->endMode_ == *(a3 + 17);
    }

    return 0;
  }

  return result;
}

- (BOOL)inDaylightTimeWithJavaUtilDate:(id)a3
{
  v5 = [(JavaUtilSimpleTimeZone *)self useDaylightTime];
  if (v5)
  {
    if (!a3)
    {
      JreThrowNullPointerException();
    }

    v6 = -[JavaUtilSimpleTimeZone getOffsetWithLong:](self, "getOffsetWithLong:", [a3 getTime]);
    LOBYTE(v5) = v6 != [(JavaUtilSimpleTimeZone *)self getRawOffset];
  }

  return v5;
}

- (BOOL)isLeapYearWithInt:(int)a3
{
  result = (a3 & 3) == 0 && a3 < 1583;
  if (a3 >= 1583)
  {
    HIDWORD(v5) = -1030792151 * a3;
    LODWORD(v5) = -1030792151 * a3;
    v4 = v5 >> 2;
    HIDWORD(v5) = -1030792151 * a3;
    LODWORD(v5) = -1030792151 * a3;
    v6 = (v5 >> 4) < 0xA3D70B;
    v7 = v4 > 0x28F5C28 || v6;
    if ((a3 & 3) == 0)
    {
      return v7;
    }
  }

  return result;
}

- (int)mod7WithInt:(int)a3
{
  if (((a3 % 7) & a3) < 0 != v3)
  {
    return a3 % 7 + 7;
  }

  else
  {
    return a3 % 7;
  }
}

- (void)setDSTSavingsWithInt:(int)a3
{
  if (a3 < 1)
  {
    v3 = new_JavaLangIllegalArgumentException_init();
    objc_exception_throw(v3);
  }

  self->dstSavings_ = a3;
}

- (id)description
{
  v3 = [-[JavaUtilSimpleTimeZone getClass](self "getClass")];
  [(JavaUtilTimeZone *)self getID];
  if (self->useDaylight_ && self->startMode_ != 1)
  {
    v7 = (self->startDayOfWeek_ + 1);
  }

  if (self->useDaylight_ && self->endMode_ != 1)
  {
    v8 = (self->endDayOfWeek_ + 1);
  }

  endTime = self->endTime_;
  endMode = self->endMode_;
  startTime = self->startTime_;
  startDay = self->startDay_;
  startMonth = self->startMonth_;
  startMode = self->startMode_;
  startYear = self->startYear_;
  useDaylight = self->useDaylight_;
  dstSavings = self->dstSavings_;
  rawOffset = self->rawOffset_;
  return JreStrcat("$$$$I$I$Z$I$I$I$I$I$I$I$I$I$I$IC", @",startTime=", self->endMonth_, self->endDay_, @",endDay=", 93, v4, v5, v3);
}

@end
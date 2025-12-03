@interface JavaUtilSimpleTimeZone
- (BOOL)hasSameRulesWithJavaUtilTimeZone:(id)zone;
- (BOOL)inDaylightTimeWithJavaUtilDate:(id)date;
- (BOOL)isEqual:(id)equal;
- (BOOL)isLeapYearWithInt:(int)int;
- (JavaUtilSimpleTimeZone)initWithInt:(int)int withNSString:(id)string;
- (id)clone;
- (id)description;
- (int)getDSTSavings;
- (int)getOffsetWithLong:(int64_t)long;
- (int)mod7WithInt:(int)int;
- (unint64_t)hash;
- (void)setDSTSavingsWithInt:(int)int;
@end

@implementation JavaUtilSimpleTimeZone

- (JavaUtilSimpleTimeZone)initWithInt:(int)int withNSString:(id)string
{
  JavaUtilTimeZone_init(self, a2);
  self->dstSavings_ = 3600000;
  [(JavaUtilTimeZone *)self setIDWithNSString:string];
  self->rawOffset_ = int;
  return self;
}

- (id)clone
{
  v4.receiver = self;
  v4.super_class = JavaUtilSimpleTimeZone;
  clone = [(JavaUtilTimeZone *)&v4 clone];
  objc_opt_class();
  if (clone && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return clone;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_21;
  }

  objc_opt_class();
  if (!equal)
  {
    [(JavaUtilTimeZone *)self getID];
    goto LABEL_26;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  getID = [(JavaUtilTimeZone *)self getID];
  if (!getID)
  {
LABEL_26:
    JreThrowNullPointerException();
  }

  v6 = [getID isEqual:{objc_msgSend(equal, "getID")}];
  if (!v6)
  {
    return v6;
  }

  if (self->rawOffset_ != *(equal + 6) || self->useDaylight_ != *(equal + 72))
  {
    goto LABEL_21;
  }

  if (!self->useDaylight_)
  {
    LOBYTE(v6) = 1;
    return v6;
  }

  if (self->startYear_ != *(equal + 7) || self->startMonth_ != *(equal + 8) || self->startDay_ != *(equal + 9) || self->startMode_ != *(equal + 16) || self->startDayOfWeek_ != *(equal + 10) || self->startTime_ != *(equal + 11) || self->endMonth_ != *(equal + 12) || self->endDay_ != *(equal + 13) || self->endDayOfWeek_ != *(equal + 14) || self->endTime_ != *(equal + 15) || self->endMode_ != *(equal + 17))
  {
LABEL_21:
    LOBYTE(v6) = 0;
    return v6;
  }

  LOBYTE(v6) = self->dstSavings_ == *(equal + 19);
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

- (int)getOffsetWithLong:(int64_t)long
{
  useDaylightTime = [(JavaUtilSimpleTimeZone *)self useDaylightTime];
  rawOffset = self->rawOffset_;
  if (useDaylightTime)
  {
    v7 = JavaUtilGrego_timeToFieldsWithLong_withIntArray_(rawOffset + long, 0);
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
  getID = [(JavaUtilTimeZone *)self getID];
  if (!getID)
  {
    JreThrowNullPointerException();
  }

  v4 = self->rawOffset_ + [getID hash];
  if (self->useDaylight_)
  {
    v4 += self->startYear_ + self->startMonth_ + self->startDay_ + self->startDayOfWeek_ + self->startTime_ + self->startMode_ + self->endMonth_ + self->endDay_ + self->endDayOfWeek_ + self->endTime_ + self->endMode_ + self->dstSavings_;
  }

  v5 = v4;
  objc_sync_exit(self);
  return v5;
}

- (BOOL)hasSameRulesWithJavaUtilTimeZone:(id)zone
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if (!zone)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  useDaylight = self->useDaylight_;
  if (useDaylight != *(zone + 72))
  {
    return 0;
  }

  rawOffset = self->rawOffset_;
  v7 = *(zone + 6);
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
    if (self->dstSavings_ == *(zone + 19) && self->startYear_ == *(zone + 7) && self->startMonth_ == *(zone + 8) && self->startDay_ == *(zone + 9) && self->startMode_ == *(zone + 16) && self->startDayOfWeek_ == *(zone + 10) && self->startTime_ == *(zone + 11) && self->endMonth_ == *(zone + 12) && self->endDay_ == *(zone + 13) && self->endDayOfWeek_ == *(zone + 14) && self->endTime_ == *(zone + 15))
    {
      return self->endMode_ == *(zone + 17);
    }

    return 0;
  }

  return result;
}

- (BOOL)inDaylightTimeWithJavaUtilDate:(id)date
{
  useDaylightTime = [(JavaUtilSimpleTimeZone *)self useDaylightTime];
  if (useDaylightTime)
  {
    if (!date)
    {
      JreThrowNullPointerException();
    }

    v6 = -[JavaUtilSimpleTimeZone getOffsetWithLong:](self, "getOffsetWithLong:", [date getTime]);
    LOBYTE(useDaylightTime) = v6 != [(JavaUtilSimpleTimeZone *)self getRawOffset];
  }

  return useDaylightTime;
}

- (BOOL)isLeapYearWithInt:(int)int
{
  result = (int & 3) == 0 && int < 1583;
  if (int >= 1583)
  {
    HIDWORD(v5) = -1030792151 * int;
    LODWORD(v5) = -1030792151 * int;
    v4 = v5 >> 2;
    HIDWORD(v5) = -1030792151 * int;
    LODWORD(v5) = -1030792151 * int;
    v6 = (v5 >> 4) < 0xA3D70B;
    v7 = v4 > 0x28F5C28 || v6;
    if ((int & 3) == 0)
    {
      return v7;
    }
  }

  return result;
}

- (int)mod7WithInt:(int)int
{
  if (((int % 7) & int) < 0 != v3)
  {
    return int % 7 + 7;
  }

  else
  {
    return int % 7;
  }
}

- (void)setDSTSavingsWithInt:(int)int
{
  if (int < 1)
  {
    v3 = new_JavaLangIllegalArgumentException_init();
    objc_exception_throw(v3);
  }

  self->dstSavings_ = int;
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
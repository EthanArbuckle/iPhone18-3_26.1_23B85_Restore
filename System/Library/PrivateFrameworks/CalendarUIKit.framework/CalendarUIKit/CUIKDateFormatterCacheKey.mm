@interface CUIKDateFormatterCacheKey
- (BOOL)isEqual:(id)equal;
- (CUIKDateFormatterCacheKey)initWithCalendar:(id)calendar is24HourFormat:(BOOL)format dropDesignator:(BOOL)designator canDropMinutes:(BOOL)minutes designatorRequiresWhitespace:(BOOL)whitespace addDate:(BOOL)date;
- (unint64_t)hash;
@end

@implementation CUIKDateFormatterCacheKey

- (unint64_t)hash
{
  v3 = [(NSCalendar *)self->_calendar hash];
  v4 = 2;
  if (!self->_dropDesignator)
  {
    v4 = 0;
  }

  v5 = v3 ^ self->_is24HourFormat ^ v4;
  v6 = 4;
  if (!self->_canDropMinutes)
  {
    v6 = 0;
  }

  v7 = 8;
  if (!self->_designatorRequiresWhitespace)
  {
    v7 = 0;
  }

  v8 = v5 ^ v6 ^ v7;
  v9 = 16;
  if (!self->_addDate)
  {
    v9 = 0;
  }

  return v8 ^ v9;
}

- (CUIKDateFormatterCacheKey)initWithCalendar:(id)calendar is24HourFormat:(BOOL)format dropDesignator:(BOOL)designator canDropMinutes:(BOOL)minutes designatorRequiresWhitespace:(BOOL)whitespace addDate:(BOOL)date
{
  calendarCopy = calendar;
  v19.receiver = self;
  v19.super_class = CUIKDateFormatterCacheKey;
  v16 = [(CUIKDateFormatterCacheKey *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_calendar, calendar);
    v17->_is24HourFormat = format;
    v17->_dropDesignator = designator;
    v17->_canDropMinutes = minutes;
    v17->_designatorRequiresWhitespace = whitespace;
    v17->_addDate = date;
  }

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (v5 = objc_opt_class(), v5 == objc_opt_class()))
  {
    v7 = equalCopy;
    v6 = [(NSCalendar *)self->_calendar isEqual:v7[2]]&& self->_is24HourFormat == *(v7 + 8) && self->_dropDesignator == *(v7 + 9) && self->_canDropMinutes == *(v7 + 10) && self->_designatorRequiresWhitespace == *(v7 + 11) && self->_addDate == *(v7 + 12);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
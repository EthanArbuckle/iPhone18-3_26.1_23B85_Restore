@interface CUIKDateFormatterCacheKey
- (BOOL)isEqual:(id)a3;
- (CUIKDateFormatterCacheKey)initWithCalendar:(id)a3 is24HourFormat:(BOOL)a4 dropDesignator:(BOOL)a5 canDropMinutes:(BOOL)a6 designatorRequiresWhitespace:(BOOL)a7 addDate:(BOOL)a8;
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

- (CUIKDateFormatterCacheKey)initWithCalendar:(id)a3 is24HourFormat:(BOOL)a4 dropDesignator:(BOOL)a5 canDropMinutes:(BOOL)a6 designatorRequiresWhitespace:(BOOL)a7 addDate:(BOOL)a8
{
  v15 = a3;
  v19.receiver = self;
  v19.super_class = CUIKDateFormatterCacheKey;
  v16 = [(CUIKDateFormatterCacheKey *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_calendar, a3);
    v17->_is24HourFormat = a4;
    v17->_dropDesignator = a5;
    v17->_canDropMinutes = a6;
    v17->_designatorRequiresWhitespace = a7;
    v17->_addDate = a8;
  }

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (v5 = objc_opt_class(), v5 == objc_opt_class()))
  {
    v7 = v4;
    v6 = [(NSCalendar *)self->_calendar isEqual:v7[2]]&& self->_is24HourFormat == *(v7 + 8) && self->_dropDesignator == *(v7 + 9) && self->_canDropMinutes == *(v7 + 10) && self->_designatorRequiresWhitespace == *(v7 + 11) && self->_addDate == *(v7 + 12);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
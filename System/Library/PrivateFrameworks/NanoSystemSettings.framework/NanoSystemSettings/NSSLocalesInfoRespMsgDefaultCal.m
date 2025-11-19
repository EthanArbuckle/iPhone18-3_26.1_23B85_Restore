@interface NSSLocalesInfoRespMsgDefaultCal
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NSSLocalesInfoRespMsgDefaultCal

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NSSLocalesInfoRespMsgDefaultCal;
  v4 = [(NSSLocalesInfoRespMsgDefaultCal *)&v8 description];
  v5 = [(NSSLocalesInfoRespMsgDefaultCal *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  locale = self->_locale;
  if (locale)
  {
    [v3 setObject:locale forKey:@"locale"];
  }

  calendar = self->_calendar;
  if (calendar)
  {
    [v4 setObject:calendar forKey:@"calendar"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  locale = self->_locale;
  v6 = a3;
  PBDataWriterWriteStringField();
  calendar = self->_calendar;
  PBDataWriterWriteStringField();
}

- (void)copyTo:(id)a3
{
  locale = self->_locale;
  v5 = a3;
  [v5 setLocale:locale];
  [v5 setCalendar:self->_calendar];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_locale copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_calendar copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((locale = self->_locale, !(locale | v4[2])) || -[NSString isEqual:](locale, "isEqual:")))
  {
    calendar = self->_calendar;
    if (calendar | v4[1])
    {
      v7 = [(NSString *)calendar isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(NSSLocalesInfoRespMsgDefaultCal *)self setLocale:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(NSSLocalesInfoRespMsgDefaultCal *)self setCalendar:?];
    v4 = v5;
  }
}

@end
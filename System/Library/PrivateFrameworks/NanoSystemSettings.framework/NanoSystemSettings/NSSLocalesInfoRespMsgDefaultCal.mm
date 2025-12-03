@interface NSSLocalesInfoRespMsgDefaultCal
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NSSLocalesInfoRespMsgDefaultCal

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NSSLocalesInfoRespMsgDefaultCal;
  v4 = [(NSSLocalesInfoRespMsgDefaultCal *)&v8 description];
  dictionaryRepresentation = [(NSSLocalesInfoRespMsgDefaultCal *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  locale = self->_locale;
  if (locale)
  {
    [dictionary setObject:locale forKey:@"locale"];
  }

  calendar = self->_calendar;
  if (calendar)
  {
    [v4 setObject:calendar forKey:@"calendar"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  locale = self->_locale;
  toCopy = to;
  PBDataWriterWriteStringField();
  calendar = self->_calendar;
  PBDataWriterWriteStringField();
}

- (void)copyTo:(id)to
{
  locale = self->_locale;
  toCopy = to;
  [toCopy setLocale:locale];
  [toCopy setCalendar:self->_calendar];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_locale copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_calendar copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((locale = self->_locale, !(locale | equalCopy[2])) || -[NSString isEqual:](locale, "isEqual:")))
  {
    calendar = self->_calendar;
    if (calendar | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(NSSLocalesInfoRespMsgDefaultCal *)self setLocale:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(NSSLocalesInfoRespMsgDefaultCal *)self setCalendar:?];
    fromCopy = v5;
  }
}

@end
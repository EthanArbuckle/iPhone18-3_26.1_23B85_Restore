@interface ICSDate(SGCalendarAttachmentDissector)
- (id)gmtOffsetTimeZoneWithCalendar:()SGCalendarAttachmentDissector withEvent:;
- (id)systemTimeZoneWithCalendar:()SGCalendarAttachmentDissector withEvent:withCorrectnessFlag:;
- (id)validatedCompleteDateTime;
- (void)copyDateWithNewComponents:()SGCalendarAttachmentDissector;
@end

@implementation ICSDate(SGCalendarAttachmentDissector)

- (id)systemTimeZoneWithCalendar:()SGCalendarAttachmentDissector withEvent:withCorrectnessFlag:
{
  v8 = a3;
  v9 = a4;
  if ([v8 validate:0])
  {
    v10 = [v8 systemTimeZoneForDate:self];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  if (([self hasFloatingTimeZone] & 1) == 0)
  {
    *a5 = 0;
  }

  v12 = MEMORY[0x277CBEBB0];
  tzid = [self tzid];
  v11 = [v12 systemTimeZoneFromString:tzid];

  if (!v11)
  {
    if (v9)
    {
      v15 = MEMORY[0x277CBEBB0];
      v16 = [v9 firstValueOfPropertyForName:*MEMORY[0x277D7F1D0]];
      v11 = [v15 systemTimeZoneFromString:v16];

      if (v11)
      {
        goto LABEL_7;
      }

      v17 = MEMORY[0x277CBEBB0];
      v18 = [v9 firstValueOfPropertyForName:*MEMORY[0x277D7F1D8]];
      v11 = [v17 systemTimeZoneFromString:v18];
    }

    else
    {
      v11 = 0;
    }

    if (v8 && !v11)
    {
      v19 = MEMORY[0x277CBEBB0];
      x_wr_timezone = [v8 x_wr_timezone];
      v11 = [v19 systemTimeZoneFromString:x_wr_timezone];
    }

    if (!v11)
    {
      v10 = [self gmtOffsetTimeZoneWithCalendar:v8 withEvent:v9];
LABEL_3:
      v11 = v10;
    }
  }

LABEL_7:

  return v11;
}

- (id)gmtOffsetTimeZoneWithCalendar:()SGCalendarAttachmentDissector withEvent:
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x277CBEA80]);
  v9 = [v8 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  components = [self components];
  v11 = [v9 dateFromComponents:components];

  v12 = MEMORY[0x277CBEBB0];
  tzid = [self tzid];
  v14 = [v12 gmtOffsetTimeZoneFromString:tzid forDate:v11];

  if (v7 && !v14)
  {
    v15 = MEMORY[0x277CBEBB0];
    v16 = [v7 firstValueOfPropertyForName:*MEMORY[0x277D7F1D0]];
    v14 = [v15 gmtOffsetTimeZoneFromString:v16 forDate:v11];
  }

  if (v7 && !v14)
  {
    v17 = MEMORY[0x277CBEBB0];
    v18 = [v7 firstValueOfPropertyForName:*MEMORY[0x277D7F1D8]];
    v14 = [v17 gmtOffsetTimeZoneFromString:v18 forDate:v11];
  }

  if (v6 && !v14)
  {
    v19 = MEMORY[0x277CBEBB0];
    x_wr_timezone = [v6 x_wr_timezone];
    v14 = [v19 gmtOffsetTimeZoneFromString:x_wr_timezone forDate:v11];
  }

  return v14;
}

- (id)validatedCompleteDateTime
{
  components = [self components];
  if ([components year] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(components, "month") == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(components, "day") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    if ([components hour] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(components, "minute") == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(components, "second") == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([components hour] == 0x7FFFFFFFFFFFFFFFLL)
      {
        hour = 0;
      }

      else
      {
        hour = [components hour];
      }

      [components setHour:hour];
      if ([components minute] == 0x7FFFFFFFFFFFFFFFLL)
      {
        minute = 0;
      }

      else
      {
        minute = [components minute];
      }

      [components setMinute:minute];
      if ([components second] == 0x7FFFFFFFFFFFFFFFLL)
      {
        second = 0;
      }

      else
      {
        second = [components second];
      }

      [components setSecond:second];
      selfCopy = [self copyDateWithNewComponents:components];
    }

    else
    {
      selfCopy = self;
    }

    v3 = selfCopy;
  }

  return v3;
}

- (void)copyDateWithNewComponents:()SGCalendarAttachmentDissector
{
  v4 = a3;
  tzid = [self tzid];
  [self setTzid:0];
  if ([self hasFloatingTimeZone])
  {
    [v4 timeZone];
  }

  else
  {
    [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
  }
  v6 = ;
  v7 = [objc_alloc(MEMORY[0x277D7F0E8]) initWithYear:objc_msgSend(v4 month:"year") day:objc_msgSend(v4 hour:"month") minute:objc_msgSend(v4 second:"day") timeZone:{objc_msgSend(v4, "hour"), objc_msgSend(v4, "minute"), objc_msgSend(v4, "second"), v6}];
  [self setTzid:tzid];
  [v7 setTzid:tzid];

  return v7;
}

@end
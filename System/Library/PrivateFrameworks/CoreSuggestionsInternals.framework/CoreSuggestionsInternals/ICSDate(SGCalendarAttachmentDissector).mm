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
    v10 = [v8 systemTimeZoneForDate:a1];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  if (([a1 hasFloatingTimeZone] & 1) == 0)
  {
    *a5 = 0;
  }

  v12 = MEMORY[0x277CBEBB0];
  v13 = [a1 tzid];
  v11 = [v12 systemTimeZoneFromString:v13];

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
      v20 = [v8 x_wr_timezone];
      v11 = [v19 systemTimeZoneFromString:v20];
    }

    if (!v11)
    {
      v10 = [a1 gmtOffsetTimeZoneWithCalendar:v8 withEvent:v9];
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
  v10 = [a1 components];
  v11 = [v9 dateFromComponents:v10];

  v12 = MEMORY[0x277CBEBB0];
  v13 = [a1 tzid];
  v14 = [v12 gmtOffsetTimeZoneFromString:v13 forDate:v11];

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
    v20 = [v6 x_wr_timezone];
    v14 = [v19 gmtOffsetTimeZoneFromString:v20 forDate:v11];
  }

  return v14;
}

- (id)validatedCompleteDateTime
{
  v2 = [a1 components];
  if ([v2 year] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v2, "month") == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v2, "day") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    if ([v2 hour] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v2, "minute") == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v2, "second") == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v2 hour] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v5 = 0;
      }

      else
      {
        v5 = [v2 hour];
      }

      [v2 setHour:v5];
      if ([v2 minute] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = 0;
      }

      else
      {
        v6 = [v2 minute];
      }

      [v2 setMinute:v6];
      if ([v2 second] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v7 = 0;
      }

      else
      {
        v7 = [v2 second];
      }

      [v2 setSecond:v7];
      v8 = [a1 copyDateWithNewComponents:v2];
    }

    else
    {
      v8 = a1;
    }

    v3 = v8;
  }

  return v3;
}

- (void)copyDateWithNewComponents:()SGCalendarAttachmentDissector
{
  v4 = a3;
  v5 = [a1 tzid];
  [a1 setTzid:0];
  if ([a1 hasFloatingTimeZone])
  {
    [v4 timeZone];
  }

  else
  {
    [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
  }
  v6 = ;
  v7 = [objc_alloc(MEMORY[0x277D7F0E8]) initWithYear:objc_msgSend(v4 month:"year") day:objc_msgSend(v4 hour:"month") minute:objc_msgSend(v4 second:"day") timeZone:{objc_msgSend(v4, "hour"), objc_msgSend(v4, "minute"), objc_msgSend(v4, "second"), v6}];
  [a1 setTzid:v5];
  [v7 setTzid:v5];

  return v7;
}

@end
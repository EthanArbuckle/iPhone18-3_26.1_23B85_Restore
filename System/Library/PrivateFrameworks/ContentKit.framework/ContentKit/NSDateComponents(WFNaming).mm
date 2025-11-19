@interface NSDateComponents(WFNaming)
- (id)wfName;
- (uint64_t)wf_displayableCalendarUnits;
@end

@implementation NSDateComponents(WFNaming)

- (uint64_t)wf_displayableCalendarUnits
{
  v2 = [a1 valueForComponent:4] != 0x7FFFFFFFFFFFFFFFLL;
  if ([a1 valueForComponent:8] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 4 * v2;
  }

  else
  {
    v3 = (4 * v2) | 8;
  }

  if ([a1 valueForComponent:0x2000] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 |= 0x2000uLL;
  }

  if ([a1 valueForComponent:16] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 |= 0x10uLL;
  }

  if ([a1 valueForComponent:32] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 |= 0x20uLL;
  }

  if ([a1 valueForComponent:64] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 |= 0x40uLL;
  }

  if ([a1 valueForComponent:128] == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v3;
  }

  else
  {
    return v3 | 0x80;
  }
}

- (id)wfName
{
  v2 = [a1 wf_displayableCalendarUnits];
  v3 = [a1 wf_dateFormatterDateStyleForDisplayableCalendarUnits:v2];
  v4 = [a1 wf_dateFormatterTimeStyleForDisplayableCalendarUnits:v2];
  v5 = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [v5 dateFromComponents:a1];

  v7 = [a1 timeZone];
  if (v7 && (v8 = v7, [a1 timeZone], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "abbreviation"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CBEBB0], "localTimeZone"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "abbreviation"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v10, "isEqualToString:", v12), v12, v11, v10, v9, v8, (v13 & 1) == 0))
  {
    v15 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v15 setTimeStyle:v4];
    [v15 setDateStyle:v3];
    v16 = [v15 dateFormat];
    v17 = [v16 localizedCaseInsensitiveContainsString:@"z"];

    if ((v17 & 1) == 0)
    {
      v18 = [v15 dateFormat];
      v19 = [v18 stringByAppendingString:@" z"];
      [v15 setDateFormat:v19];
    }

    v20 = [a1 timeZone];
    [v15 setTimeZone:v20];

    v14 = [v15 stringFromDate:v6];
  }

  else
  {
    v14 = [MEMORY[0x277CCA968] localizedStringFromDate:v6 dateStyle:v3 timeStyle:v4];
  }

  return v14;
}

@end
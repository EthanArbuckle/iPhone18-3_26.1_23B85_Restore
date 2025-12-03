@interface HKMedicalDate(Display)
+ (id)displayStringForDate:()Display form:originalTimeZoneString:;
- (id)displayStringWithPreferredForm:()Display includeTimeZone:;
- (uint64_t)displayString;
- (uint64_t)displayStringWithTimeZone;
@end

@implementation HKMedicalDate(Display)

- (uint64_t)displayString
{
  form = [self form];

  return [self displayStringWithPreferredForm:form includeTimeZone:0];
}

- (uint64_t)displayStringWithTimeZone
{
  form = [self form];

  return [self displayStringWithPreferredForm:form includeTimeZone:1];
}

- (id)displayStringWithPreferredForm:()Display includeTimeZone:
{
  if ([self isCompatibleWithMedicalDateForm:?])
  {
    referenceCalendarWithLocalTimezone = [MEMORY[0x1E696C240] referenceCalendarWithLocalTimezone];
    v8 = [self adjustedDateForCalendar:referenceCalendarWithLocalTimezone];

    v9 = MEMORY[0x1E696C240];
    if (a4)
    {
      originalTimeZoneString = [self originalTimeZoneString];
      v11 = [v9 displayStringForDate:v8 form:a3 originalTimeZoneString:originalTimeZoneString];
    }

    else
    {
      v11 = [MEMORY[0x1E696C240] displayStringForDate:v8 form:a3 originalTimeZoneString:0];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)displayStringForDate:()Display form:originalTimeZoneString:
{
  v8 = a3;
  v9 = a5;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v10 = v8;
      v11 = 6;
    }

    else
    {
      if (a4 != 3)
      {
        goto LABEL_14;
      }

      v10 = v8;
      v11 = 1;
    }

    goto LABEL_11;
  }

  if (!a4)
  {
    v12 = HKLocalizedStringForDateAndTemplate(v8, 33);
    v13 = v12;
    if (v9)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v12, v9];
    }

    else
    {
      v14 = v12;
    }

    v5 = v14;

    goto LABEL_14;
  }

  if (a4 == 1)
  {
    v10 = v8;
    v11 = 10;
LABEL_11:
    v5 = HKLocalizedStringForDateAndTemplate(v10, v11);
  }

LABEL_14:

  return v5;
}

@end
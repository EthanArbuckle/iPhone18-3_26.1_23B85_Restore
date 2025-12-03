@interface SGEvent(Presentation)
+ (id)formatEvents:()Presentation;
+ (uint64_t)sameDayEvents:()Presentation;
- (id)formattedStartDate;
- (id)formattedStartTime;
- (id)timeZoneOrGMT;
@end

@implementation SGEvent(Presentation)

- (id)formattedStartDate
{
  v2 = +[SGUIDateFormatting mediumDateFormatter];
  timeZone = [v2 timeZone];
  timeZoneOrGMT = [self timeZoneOrGMT];
  [v2 setTimeZone:timeZoneOrGMT];

  start = [self start];
  v6 = [v2 stringFromDate:start];

  [v2 setTimeZone:timeZone];

  return v6;
}

- (id)formattedStartTime
{
  v2 = +[SGUIDateFormatting singleDayTimeFormatter];
  timeZone = [v2 timeZone];
  timeZoneOrGMT = [self timeZoneOrGMT];
  [v2 setTimeZone:timeZoneOrGMT];

  start = [self start];
  v6 = [v2 stringFromDate:start];

  [v2 setTimeZone:timeZone];

  return v6;
}

- (id)timeZoneOrGMT
{
  startTimeZone = [self startTimeZone];
  v2 = startTimeZone;
  if (startTimeZone)
  {
    v3 = startTimeZone;
  }

  else
  {
    v3 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  }

  v4 = v3;

  return v4;
}

+ (id)formatEvents:()Presentation
{
  v4 = a3;
  v5 = [v4 count];
  if (!v5)
  {
    v10 = 0;
    goto LABEL_19;
  }

  if (v5 == 2)
  {
    if ([self sameDayEvents:v4])
    {
      v11 = [v4 objectAtIndexedSubscript:0];
      start = [v11 start];
      v13 = [v4 objectAtIndexedSubscript:1];
      start2 = [v13 start];
      v15 = [start isEqual:start2];

      if (v15)
      {
        v6 = +[SGUIDateFormatting fullDayFormatter];
        goto LABEL_5;
      }

      v24 = MEMORY[0x1E696AEC0];
      v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreSuggestionsUI"];
      v8 = [v7 localizedStringForKey:@"SuggestionsBannerTwoEventsSameDayFormat" value:&stru_1F3012140 table:0];
      start3 = [v4 objectAtIndexedSubscript:0];
      formattedStartDate = [start3 formattedStartDate];
      v22 = [v4 objectAtIndexedSubscript:0];
      formattedStartTime = [v22 formattedStartTime];
      v25 = [v4 objectAtIndexedSubscript:1];
      formattedStartTime2 = [v25 formattedStartTime];
      v10 = [v24 localizedStringWithFormat:v8, formattedStartDate, formattedStartTime, formattedStartTime2];
    }

    else
    {
      v20 = MEMORY[0x1E696AEC0];
      v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreSuggestionsUI"];
      v8 = [v7 localizedStringForKey:@"SuggestionsBannerTwoEventsDifferentDayFormat" value:&stru_1F3012140 table:0];
      start3 = [v4 objectAtIndexedSubscript:0];
      formattedStartDate = [start3 formattedStartDate];
      v22 = [v4 objectAtIndexedSubscript:1];
      formattedStartTime = [v22 formattedStartDate];
      v10 = [v20 localizedStringWithFormat:v8, formattedStartDate, formattedStartTime];
    }

LABEL_17:
    goto LABEL_18;
  }

  if (v5 != 1)
  {
    v16 = [self sameDayEvents:v4];
    v17 = MEMORY[0x1E696AEC0];
    v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreSuggestionsUI"];
    v7 = v18;
    if (v16)
    {
      v19 = @"SuggestionsBannerMultiEventsSameDayFormat";
    }

    else
    {
      v19 = @"SuggestionsBannerMultiEventsDifferentDayFormat";
    }

    v8 = [v18 localizedStringForKey:v19 value:&stru_1F3012140 table:0];
    start3 = [v4 objectAtIndexedSubscript:0];
    formattedStartDate = [start3 formattedStartDate];
    v10 = [v17 localizedStringWithFormat:v8, formattedStartDate];
    goto LABEL_17;
  }

  v6 = +[SGUIDateFormatting mediumDateFormatter];
LABEL_5:
  v7 = v6;
  v8 = [v4 objectAtIndexedSubscript:0];
  start3 = [v8 start];
  v10 = [v7 stringFromDate:start3];
LABEL_18:

LABEL_19:

  return v10;
}

+ (uint64_t)sameDayEvents:()Presentation
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count] >= 2)
  {
    firstObject = [v3 firstObject];
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    timeZoneOrGMT = [firstObject timeZoneOrGMT];
    [currentCalendar setTimeZone:timeZoneOrGMT];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v3;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v21 = v3;
      v11 = *v23;
      while (2)
      {
        v12 = 0;
        do
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v22 + 1) + 8 * v12);
          if (v13 != firstObject)
          {
            timeZoneOrGMT2 = [*(*(&v22 + 1) + 8 * v12) timeZoneOrGMT];
            timeZone = [currentCalendar timeZone];
            v16 = [timeZone isEqual:timeZoneOrGMT2];

            if (!v16)
            {

LABEL_16:
              v4 = 0;
              goto LABEL_17;
            }

            start = [firstObject start];
            start2 = [v13 start];
            v19 = [currentCalendar isDate:start inSameDayAsDate:start2];

            if (!v19)
            {
              goto LABEL_16;
            }
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

      v4 = 1;
LABEL_17:
      v3 = v21;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

@end
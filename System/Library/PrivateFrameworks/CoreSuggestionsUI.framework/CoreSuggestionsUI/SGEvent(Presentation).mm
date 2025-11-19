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
  v3 = [v2 timeZone];
  v4 = [a1 timeZoneOrGMT];
  [v2 setTimeZone:v4];

  v5 = [a1 start];
  v6 = [v2 stringFromDate:v5];

  [v2 setTimeZone:v3];

  return v6;
}

- (id)formattedStartTime
{
  v2 = +[SGUIDateFormatting singleDayTimeFormatter];
  v3 = [v2 timeZone];
  v4 = [a1 timeZoneOrGMT];
  [v2 setTimeZone:v4];

  v5 = [a1 start];
  v6 = [v2 stringFromDate:v5];

  [v2 setTimeZone:v3];

  return v6;
}

- (id)timeZoneOrGMT
{
  v1 = [a1 startTimeZone];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
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
    if ([a1 sameDayEvents:v4])
    {
      v11 = [v4 objectAtIndexedSubscript:0];
      v12 = [v11 start];
      v13 = [v4 objectAtIndexedSubscript:1];
      v14 = [v13 start];
      v15 = [v12 isEqual:v14];

      if (v15)
      {
        v6 = +[SGUIDateFormatting fullDayFormatter];
        goto LABEL_5;
      }

      v24 = MEMORY[0x1E696AEC0];
      v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreSuggestionsUI"];
      v8 = [v7 localizedStringForKey:@"SuggestionsBannerTwoEventsSameDayFormat" value:&stru_1F3012140 table:0];
      v9 = [v4 objectAtIndexedSubscript:0];
      v21 = [v9 formattedStartDate];
      v22 = [v4 objectAtIndexedSubscript:0];
      v23 = [v22 formattedStartTime];
      v25 = [v4 objectAtIndexedSubscript:1];
      v26 = [v25 formattedStartTime];
      v10 = [v24 localizedStringWithFormat:v8, v21, v23, v26];
    }

    else
    {
      v20 = MEMORY[0x1E696AEC0];
      v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreSuggestionsUI"];
      v8 = [v7 localizedStringForKey:@"SuggestionsBannerTwoEventsDifferentDayFormat" value:&stru_1F3012140 table:0];
      v9 = [v4 objectAtIndexedSubscript:0];
      v21 = [v9 formattedStartDate];
      v22 = [v4 objectAtIndexedSubscript:1];
      v23 = [v22 formattedStartDate];
      v10 = [v20 localizedStringWithFormat:v8, v21, v23];
    }

LABEL_17:
    goto LABEL_18;
  }

  if (v5 != 1)
  {
    v16 = [a1 sameDayEvents:v4];
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
    v9 = [v4 objectAtIndexedSubscript:0];
    v21 = [v9 formattedStartDate];
    v10 = [v17 localizedStringWithFormat:v8, v21];
    goto LABEL_17;
  }

  v6 = +[SGUIDateFormatting mediumDateFormatter];
LABEL_5:
  v7 = v6;
  v8 = [v4 objectAtIndexedSubscript:0];
  v9 = [v8 start];
  v10 = [v7 stringFromDate:v9];
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
    v5 = [v3 firstObject];
    v6 = [MEMORY[0x1E695DEE8] currentCalendar];
    v7 = [v5 timeZoneOrGMT];
    [v6 setTimeZone:v7];

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
          if (v13 != v5)
          {
            v14 = [*(*(&v22 + 1) + 8 * v12) timeZoneOrGMT];
            v15 = [v6 timeZone];
            v16 = [v15 isEqual:v14];

            if (!v16)
            {

LABEL_16:
              v4 = 0;
              goto LABEL_17;
            }

            v17 = [v5 start];
            v18 = [v13 start];
            v19 = [v6 isDate:v17 inSameDayAsDate:v18];

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
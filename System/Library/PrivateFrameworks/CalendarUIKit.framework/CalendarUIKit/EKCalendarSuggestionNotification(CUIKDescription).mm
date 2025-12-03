@interface EKCalendarSuggestionNotification(CUIKDescription)
- (id)allDescriptionStringsWithOptions:()CUIKDescription;
- (id)descriptionStrings:()CUIKDescription;
- (uint64_t)supportsDisplay;
- (void)supportsDisplay;
@end

@implementation EKCalendarSuggestionNotification(CUIKDescription)

- (uint64_t)supportsDisplay
{
  event = [self event];

  if (!event)
  {
    v4 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(EKCalendarSuggestionNotification(CUIKDescription) *)v4 supportsDisplay];
    }

    goto LABEL_12;
  }

  event2 = [self event];
  v4 = [event2 localCustomObjectForKey:*MEMORY[0x1E6993160]];

  if (!v4)
  {
    v6 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(EKCalendarSuggestionNotification(CUIKDescription) *)self supportsDisplay];
    }

    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(EKCalendarSuggestionNotification(CUIKDescription) *)v4 supportsDisplay];
    }

LABEL_11:

LABEL_12:
    bOOLValue = 0;
    goto LABEL_13;
  }

  bOOLValue = [v4 BOOLValue];
LABEL_13:

  return bOOLValue;
}

- (id)descriptionStrings:()CUIKDescription
{
  v5 = objc_opt_new();
  startDateForNextOccurrence = [self startDateForNextOccurrence];
  if ([self type] == 13)
  {
    v7 = CUIKBundle();
    v8 = [v7 localizedStringForKey:@"Canceled" value:&stru_1F4AA8958 table:0];

    [v5 setObject:v8 forKeyedSubscript:@"Action"];
    v9 = MEMORY[0x1E695E118];
    v10 = @"Cancelled";
    v11 = v5;
LABEL_17:
    [v11 setObject:v9 forKeyedSubscript:v10];
LABEL_18:

    goto LABEL_19;
  }

  if ([self type] == 12)
  {
    originAppName = [self originAppName];
    v8 = [CUIKSuggestionDescriptionGenerator brandedOriginDescriptionStringWithAppName:originAppName];

    if (startDateForNextOccurrence)
    {
      v13 = [startDateForNextOccurrence localizedYearMonthAndDayStringShortened:0];
      if ([self allDay])
      {
        [v5 setObject:v13 forKeyedSubscript:@"Date"];
      }

      else
      {
        v15 = [startDateForNextOccurrence timeStringAlwaysIncludeMinutes:0];
        v16 = MEMORY[0x1E696AEC0];
        v17 = CUIKBundle();
        v18 = [v17 localizedStringForKey:@"%@ at %@" value:&stru_1F4AA8958 table:0];
        v19 = [v16 localizedStringWithFormat:v18, v13, v15];

        [v5 setObject:v19 forKeyedSubscript:@"Date"];
      }
    }

    v10 = @"Action";
    goto LABEL_16;
  }

  v14 = [self _resourceChangeStringWithOptions:a3 dict:v5];
  if ([self type] != 14)
  {
    goto LABEL_19;
  }

  v8 = [v5 objectForKeyedSubscript:@"Date"];
  if (v8 || !startDateForNextOccurrence)
  {
    goto LABEL_18;
  }

  if (([self timeChanged] & 1) != 0 || objc_msgSend(self, "dateChanged"))
  {
    v8 = [startDateForNextOccurrence localizedYearMonthAndDayStringShortened:0];
    v10 = @"Date";
LABEL_16:
    v11 = v5;
    v9 = v8;
    goto LABEL_17;
  }

LABEL_19:

  return v5;
}

- (id)allDescriptionStringsWithOptions:()CUIKDescription
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = [self descriptionStrings:?];
  v2 = [v1 objectForKeyedSubscript:@"Date"];
  v3 = [v1 objectForKeyedSubscript:@"Action"];
  v4 = v3;
  if (v2)
  {
    v11 = v2;
    v12 = v3;
    v5 = MEMORY[0x1E695DEC8];
    v6 = &v11;
    v7 = 2;
  }

  else
  {
    v10 = v3;
    v5 = MEMORY[0x1E695DEC8];
    v6 = &v10;
    v7 = 1;
  }

  v8 = [v5 arrayWithObjects:v6 count:{v7, v10, v11, v12}];

  return v8;
}

- (void)supportsDisplay
{
  v7 = *MEMORY[0x1E69E9840];
  event = [self event];
  uniqueId = [event uniqueId];
  v5 = 138543362;
  v6 = uniqueId;
  _os_log_error_impl(&dword_1CAB19000, a2, OS_LOG_TYPE_ERROR, "Event is missing value for key used to determine if suggested event is eligible for notification, event unique identifier = %{public}@", &v5, 0xCu);
}

@end
@interface CUIKSuggestionDescriptionGenerator
+ (id)brandedOriginDescriptionStringWithAppName:(id)name;
+ (id)coalescedInfoForSuggestionNotifications:(id)notifications;
+ (id)originDescriptionStringWithAppName:(id)name;
@end

@implementation CUIKSuggestionDescriptionGenerator

+ (id)originDescriptionStringWithAppName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    v4 = CUIKBundle();
    nameCopy = [v4 localizedStringForKey:@"Apps" value:&stru_1F4AA8958 table:0];
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = CUIKBundle();
  v7 = [v6 localizedStringForKey:@"Found in %@" value:&stru_1F4AA8958 table:0];
  nameCopy = [v5 localizedStringWithFormat:v7, nameCopy];

  return nameCopy;
}

+ (id)brandedOriginDescriptionStringWithAppName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    v4 = CUIKBundle();
    nameCopy = [v4 localizedStringForKey:@"Apps" value:&stru_1F4AA8958 table:0];
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = CUIKBundle();
  v7 = [v6 localizedStringForKey:@"Siri Found in %@" value:&stru_1F4AA8958 table:0];
  nameCopy = [v5 localizedStringWithFormat:v7, nameCopy];

  return nameCopy;
}

+ (id)coalescedInfoForSuggestionNotifications:(id)notifications
{
  v50 = *MEMORY[0x1E69E9840];
  notificationsCopy = notifications;
  v4 = objc_opt_new();
  firstObject = [notificationsCopy firstObject];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v6 = notificationsCopy;
  v7 = [v6 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v45;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v45 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v44 + 1) + 8 * i);
        startDate = [v11 startDate];
        startDate2 = [firstObject startDate];
        v14 = [startDate compare:startDate2];

        if (v14 == -1)
        {
          v15 = v11;

          firstObject = v15;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v8);
  }

  startDate3 = [firstObject startDate];
  v17 = startDate3;
  if (startDate3)
  {
    v18 = [startDate3 localizedYearMonthAndDayStringShortened:0];
    v19 = MEMORY[0x1E696AEC0];
    v20 = CUIKBundle();
    v21 = [v20 localizedStringForKey:@"Beginning on: %@" value:&stru_1F4AA8958 table:0];
    v22 = [v19 localizedStringWithFormat:v21, v18];
    [v4 addObject:v22];
  }

  firstObject2 = [v6 firstObject];
  originAppName = [firstObject2 originAppName];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v25 = v6;
  v26 = [v25 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v41;
    while (2)
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v41 != v28)
        {
          objc_enumerationMutation(v25);
        }

        originAppName2 = [*(*(&v40 + 1) + 8 * j) originAppName];
        v31 = [originAppName2 isEqualToString:originAppName];

        if ((v31 & 1) == 0)
        {

          originAppName = 0;
          goto LABEL_22;
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v40 objects:v48 count:16];
      if (v27)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:

  v32 = [CUIKSuggestionDescriptionGenerator brandedOriginDescriptionStringWithAppName:originAppName];
  [v4 addObject:v32];

  v33 = MEMORY[0x1E696AEC0];
  v34 = CUIKBundle();
  v35 = [v34 localizedStringForKey:@"%ld Events Found" value:&stru_1F4AA8958 table:0];
  v36 = [v33 localizedStringWithFormat:v35, objc_msgSend(v25, "count")];

  v37 = [v4 componentsJoinedByString:@"\n"];
  v38 = [[CUIKSuggestionCoalescedInfo alloc] initWithTitle:v36 descriptionText:v37 earliestSuggestionNotification:firstObject];

  return v38;
}

@end
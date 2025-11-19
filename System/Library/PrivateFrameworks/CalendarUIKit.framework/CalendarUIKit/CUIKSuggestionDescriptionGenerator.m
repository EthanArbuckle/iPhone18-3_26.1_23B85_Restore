@interface CUIKSuggestionDescriptionGenerator
+ (id)brandedOriginDescriptionStringWithAppName:(id)a3;
+ (id)coalescedInfoForSuggestionNotifications:(id)a3;
+ (id)originDescriptionStringWithAppName:(id)a3;
@end

@implementation CUIKSuggestionDescriptionGenerator

+ (id)originDescriptionStringWithAppName:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v4 = CUIKBundle();
    v3 = [v4 localizedStringForKey:@"Apps" value:&stru_1F4AA8958 table:0];
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = CUIKBundle();
  v7 = [v6 localizedStringForKey:@"Found in %@" value:&stru_1F4AA8958 table:0];
  v8 = [v5 localizedStringWithFormat:v7, v3];

  return v8;
}

+ (id)brandedOriginDescriptionStringWithAppName:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v4 = CUIKBundle();
    v3 = [v4 localizedStringForKey:@"Apps" value:&stru_1F4AA8958 table:0];
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = CUIKBundle();
  v7 = [v6 localizedStringForKey:@"Siri Found in %@" value:&stru_1F4AA8958 table:0];
  v8 = [v5 localizedStringWithFormat:v7, v3];

  return v8;
}

+ (id)coalescedInfoForSuggestionNotifications:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 firstObject];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v6 = v3;
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
        v12 = [v11 startDate];
        v13 = [v5 startDate];
        v14 = [v12 compare:v13];

        if (v14 == -1)
        {
          v15 = v11;

          v5 = v15;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v8);
  }

  v16 = [v5 startDate];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 localizedYearMonthAndDayStringShortened:0];
    v19 = MEMORY[0x1E696AEC0];
    v20 = CUIKBundle();
    v21 = [v20 localizedStringForKey:@"Beginning on: %@" value:&stru_1F4AA8958 table:0];
    v22 = [v19 localizedStringWithFormat:v21, v18];
    [v4 addObject:v22];
  }

  v23 = [v6 firstObject];
  v24 = [v23 originAppName];

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

        v30 = [*(*(&v40 + 1) + 8 * j) originAppName];
        v31 = [v30 isEqualToString:v24];

        if ((v31 & 1) == 0)
        {

          v24 = 0;
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

  v32 = [CUIKSuggestionDescriptionGenerator brandedOriginDescriptionStringWithAppName:v24];
  [v4 addObject:v32];

  v33 = MEMORY[0x1E696AEC0];
  v34 = CUIKBundle();
  v35 = [v34 localizedStringForKey:@"%ld Events Found" value:&stru_1F4AA8958 table:0];
  v36 = [v33 localizedStringWithFormat:v35, objc_msgSend(v25, "count")];

  v37 = [v4 componentsJoinedByString:@"\n"];
  v38 = [[CUIKSuggestionCoalescedInfo alloc] initWithTitle:v36 descriptionText:v37 earliestSuggestionNotification:v5];

  return v38;
}

@end
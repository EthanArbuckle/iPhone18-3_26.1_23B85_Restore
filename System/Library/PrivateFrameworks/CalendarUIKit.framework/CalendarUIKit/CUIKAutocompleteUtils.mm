@interface CUIKAutocompleteUtils
+ (BOOL)shouldShowOtherTimeZoneForResult:(id)a3;
+ (id)_copyAlarmsForAutocompleteFromResult:(id)a3;
+ (id)foundInStringForResult:(id)a3 pasteboardEvent:(BOOL)a4 outGlyphNames:(id *)a5;
+ (id)inviteeStringForResult:(id)a3;
+ (id)locationStringForResult:(id)a3 outGlyphNames:(id *)a4;
+ (id)timeStringForResult:(id)a3 usingTimeZone:(id)a4;
+ (id)titleStringForResult:(id)a3;
+ (void)applyTimeToAutocompleteResults:(id)a3 usingCurrentStartDate:(id)a4 currentEndDate:(id)a5 timeImplicitlySet:(BOOL)a6;
+ (void)modifyCurrentEvent:(id)a3 withAutocompleteResult:(id)a4 isPasteboardResult:(BOOL)a5 calendarToPasteTo:(id)a6 outHasModifiedAttendeesFromSuggestion:(BOOL *)a7;
@end

@implementation CUIKAutocompleteUtils

+ (void)applyTimeToAutocompleteResults:(id)a3 usingCurrentStartDate:(id)a4 currentEndDate:(id)a5 timeImplicitlySet:(BOOL)a6
{
  v6 = a6;
  v47 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [a1 _now];
  v14 = v13;
  v36 = v12;
  if (!v6)
  {
    goto LABEL_5;
  }

  v15 = [v13 dateByAddingTimeInterval:86400.0];
  v16 = [v11 isAfterOrSameDayAsDate:v15 inCalendar:0];

  if (v16)
  {
    v17 = 1;
    goto LABEL_6;
  }

  v18 = [v14 laterDate:v12];

  if (v18 == v14)
  {
    v34 = [MEMORY[0x1E695DF00] dateWithDatePartFromDate:v14 timePartFromDate:v11 inCalendar:0];

    v17 = 0;
    v11 = v34;
  }

  else
  {
LABEL_5:
    v17 = 0;
  }

LABEL_6:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __111__CUIKAutocompleteUtils_applyTimeToAutocompleteResults_usingCurrentStartDate_currentEndDate_timeImplicitlySet___block_invoke;
  aBlock[3] = &unk_1E8399B10;
  v44 = v6;
  v45 = v17;
  v35 = v11;
  v42 = v35;
  v19 = v14;
  v43 = v19;
  v20 = _Block_copy(aBlock);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v21 = v10;
  v22 = [v21 countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v38;
    do
    {
      v25 = 0;
      do
      {
        if (*v38 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v37 + 1) + 8 * v25);
        v27 = [v26 suggestionInfo];

        if (!v27)
        {
          v28 = [v26 pasteboardResults];

          if (v28)
          {
            v29 = [v26 pasteboardResults];
            v30 = [v29 count];

            if (v30 == 1)
            {
              v31 = [v26 pasteboardResults];
              v32 = [v31 firstObject];
              v20[2](v20, v32);
            }
          }

          else
          {
            v20[2](v20, v26);
          }
        }

        ++v25;
      }

      while (v23 != v25);
      v33 = [v21 countByEnumeratingWithState:&v37 objects:v46 count:16];
      v23 = v33;
    }

    while (v33);
  }
}

void __111__CUIKAutocompleteUtils_applyTimeToAutocompleteResults_usingCurrentStartDate_currentEndDate_timeImplicitlySet___block_invoke(uint64_t a1, void *a2)
{
  v19 = a2;
  v3 = [v19 endDate];
  v4 = [v19 startDate];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  if (*(a1 + 48))
  {
    if ((*(a1 + 49) & 1) == 0)
    {
      v7 = MEMORY[0x1E695DF00];
      v8 = *(a1 + 32);
      v9 = [v19 startDate];
      v10 = [v7 dateWithDatePartFromDate:v8 timePartFromDate:v9 inCalendar:0];

      if (([v19 allDay] & 1) == 0)
      {
        v11 = [*(a1 + 40) laterDate:v10];
        v12 = *(a1 + 40);

        if (v11 == v12)
        {
          v13 = CUIKCalendar();
          v14 = [v10 dateByAddingDays:1 inCalendar:v13];

          v10 = v14;
        }
      }

      v15 = [v10 dateByAddingTimeInterval:v6];
      [v19 setStartDate:v10];
      goto LABEL_10;
    }

LABEL_9:
    v16 = MEMORY[0x1E695DF00];
    v17 = *(a1 + 32);
    v18 = [v19 startDate];
    v10 = [v16 dateWithDatePartFromDate:v17 timePartFromDate:v18 inCalendar:0];

    [v19 setStartDate:v10];
    v15 = [v10 dateByAddingTimeInterval:v6];
LABEL_10:
    [v19 setEndDate:v15];

    goto LABEL_11;
  }

  if ((*(a1 + 49) & 1) != 0 || [v19 allDay])
  {
    goto LABEL_9;
  }

  [v19 setStartDate:*(a1 + 32)];
  v10 = [*(a1 + 32) dateByAddingTimeInterval:v6];
  [v19 setEndDate:v10];
LABEL_11:
}

+ (void)modifyCurrentEvent:(id)a3 withAutocompleteResult:(id)a4 isPasteboardResult:(BOOL)a5 calendarToPasteTo:(id)a6 outHasModifiedAttendeesFromSuggestion:(BOOL *)a7
{
  v9 = a5;
  v44 = a3;
  v11 = a4;
  v12 = a6;
  if (v9)
  {
    v13 = [v11 pasteboardResults];
    v14 = [v13 firstObject];

    v11 = v14;
  }

  if ([v44 changingAllDayPropertyIsAllowed])
  {
    [v44 setAllDay:{objc_msgSend(v11, "allDay")}];
  }

  v15 = [v11 title];
  [v44 setTitle:v15];

  v16 = [v11 startDate];
  [v44 setStartDate:v16];

  v17 = [v11 endDate];
  [v44 setEndDateUnadjustedForLegacyClients:v17];

  v18 = [v11 timeZone];
  [v44 setTimeZone:v18];

  if (v9)
  {
    [v11 travelTime];
    [v44 setTravelTime:?];
    v19 = [v11 travelStartLocation];
    [v44 setTravelStartLocation:v19];
  }

  v20 = [v11 displayLocationWithoutPrediction];
  v21 = [v20 length];

  if (v21)
  {
    v22 = [v11 displayLocationWithoutPrediction];
    [v44 setLocation:v22];
  }

  v23 = [v11 preferredLocation];
  if (v23)
  {
    v24 = v23;
    v25 = [v11 preferredLocation];
    v26 = [v25 isPrediction];

    if ((v26 & 1) == 0)
    {
      v27 = [v11 preferredLocation];
      v28 = [v27 duplicate];
      [v44 setStructuredLocation:v28];
    }
  }

  v29 = [objc_opt_class() _copyAlarmsForAutocompleteFromResult:v11];
  [v44 setAlarms:v29];

  v30 = [v11 URL];

  if (v30)
  {
    v31 = [v11 URL];
    [v44 setURL:v31];
  }

  v32 = [v11 notes];

  if (v32)
  {
    v33 = [v11 notes];
    [v44 setNotes:v33];
  }

  if (v9)
  {
    v34 = v12;
  }

  else
  {
    v34 = [v11 calendar];
  }

  v35 = v34;
  v36 = [v44 calendar];
  v37 = [v44 canMoveToCalendar:v35 fromCalendar:v36 error:0];

  if (v37)
  {
    [v44 setCalendar:v35];
  }

  v38 = [v11 suggestionInfo];

  if (v38)
  {
    v39 = [v11 suggestionInfo];
    v40 = [v39 duplicate];
    [v44 setSuggestionInfo:v40];
  }

  v41 = [v11 attendees];
  v42 = [v41 count];

  if (v42)
  {
    v43 = [v11 attendees];
    [v44 setAttendees:v43];

    if (a7)
    {
      *a7 = 1;
    }
  }
}

+ (id)_copyAlarmsForAutocompleteFromResult:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  v5 = [v3 alarms];
  v6 = [v4 initWithCapacity:{objc_msgSend(v5, "count")}];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v3 alarms];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v14 + 1) + 8 * v11) duplicate];
        [v6 addObject:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v6;
}

+ (id)titleStringForResult:(id)a3
{
  v3 = a3;
  v4 = [v3 suggestionInfo];

  if (v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = CUIKBundle();
    v7 = [v6 localizedStringForKey:@"Maybe: %@" value:&stru_1F4AA8958 table:0];
    v8 = [v3 title];
    v9 = [v5 localizedStringWithFormat:v7, v8];
  }

  else
  {
    v9 = [v3 title];
  }

  return v9;
}

+ (id)locationStringForResult:(id)a3 outGlyphNames:(id *)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E69669D0];
  v7 = [v5 notes];
  v8 = [v6 deserializeConference:v7];
  v9 = [v8 conference];

  v10 = [v9 joinMethods];
  v11 = [v10 firstObject];
  v12 = [v11 URL];

  v13 = [MEMORY[0x1E695DF70] array];
  v14 = [v5 displayLocationWithoutPrediction];

  if (v14)
  {
    v15 = [v5 displayLocationWithoutPrediction];
    [v13 addObject:v15];
  }

  v16 = [v5 notes];

  if (v16)
  {
    v17 = [v5 notes];
    [v13 addObject:v17];
  }

  v18 = [v5 URL];

  if (v18)
  {
    v19 = [v5 URL];
    v20 = [v19 absoluteString];
    [v13 addObject:v20];
  }

  v21 = [MEMORY[0x1E6992F40] conferenceURLFromSources:v13];
  v22 = v21;
  if (v12)
  {
    v23 = v12;
  }

  else
  {
    v23 = v21;
  }

  v24 = v23;
  if (a4)
  {
    *a4 = [CUIKLocationDescriptionGenerator glyphNamesForConferenceURL:v24];
  }

  v25 = [v5 displayLocation];
  v26 = [v5 displayLocationWithoutPrediction];
  v27 = [v5 preferredLocation];
  v28 = [CUIKLocationDescriptionGenerator locationStringForLocation:v25 locationWithoutPrediction:v26 preferredLocation:v27 conferenceURL:v24 conferenceURLIsBroadcast:0];

  return v28;
}

+ (id)foundInStringForResult:(id)a3 pasteboardEvent:(BOOL)a4 outGlyphNames:(id *)a5
{
  v6 = a4;
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = [a3 foundInBundleID];
  if (v7)
  {
    v18 = 0;
    v8 = [MEMORY[0x1E6963620] bundleRecordWithBundleIdentifier:v7 allowPlaceholder:1 error:&v18];
    v9 = v18;
    if (!v8)
    {
      v8 = +[CUIKLogSubsystem defaultCategory];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [CUIKAutocompleteUtils foundInStringForResult:v7 pasteboardEvent:v9 outGlyphNames:v8];
      }

      v12 = 0;
      goto LABEL_12;
    }

    v10 = [v8 localizedName];
    v11 = [CUIKSuggestionDescriptionGenerator brandedOriginDescriptionStringWithAppName:v10];
    v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v11];

LABEL_8:
LABEL_12:

    goto LABEL_13;
  }

  if (v6)
  {
    v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"doc.on.clipboard"];
    v8 = [MEMORY[0x1E69DB7F0] cuik_textAttachmentWithImage:v9];
    v10 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v8];
    v13 = objc_alloc(MEMORY[0x1E696AAB0]);
    v14 = CUIKBundle();
    v15 = [v14 localizedStringForKey:@"%@ From clipboard" value:&stru_1F4AA8958 table:0];
    v16 = [v13 initWithString:v15];

    if (a5)
    {
      v19[0] = @"doc.on.clipboard";
      *a5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    }

    v12 = [MEMORY[0x1E696AAB0] localizedAttributedStringWithFormat:v16, v10];

    goto LABEL_8;
  }

  v12 = 0;
LABEL_13:

  return v12;
}

+ (BOOL)shouldShowOtherTimeZoneForResult:(id)a3
{
  v3 = a3;
  if (([v3 allDay] & 1) != 0 || (objc_msgSend(v3, "timeZone"), v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v7 = 0;
  }

  else
  {
    v5 = [v3 timeZone];
    v6 = [v3 startDate];
    if (CUIKShouldShowTimezoneClarification(v5, v6))
    {
      v7 = 1;
    }

    else
    {
      v8 = [v3 timeZone];
      v9 = [v3 endDate];
      v7 = CUIKShouldShowTimezoneClarification(v8, v9);
    }
  }

  return v7;
}

+ (id)timeStringForResult:(id)a3 usingTimeZone:(id)a4
{
  v5 = a4 != 0;
  v6 = a4;
  v7 = a3;
  v8 = +[CUIKDateDescriptionGenerator sharedGenerator];
  v9 = [v7 startDate];
  v10 = [v7 endDate];
  v11 = [v7 allDay];

  v12 = [v8 dateStringForEventInvitationWithStartDate:v9 endDate:v10 timeZone:v6 allDay:v11 withFormat:1 showTimeZone:v5];

  return v12;
}

+ (id)inviteeStringForResult:(id)a3
{
  v3 = [a3 attendees];
  v4 = [CUIKInviteeDescriptionGenerator inviteeStringForAttendees:v3];

  return v4;
}

+ (void)foundInStringForResult:(uint64_t)a1 pasteboardEvent:(uint64_t)a2 outGlyphNames:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1CAB19000, log, OS_LOG_TYPE_ERROR, "Unable to find bundle for id %@, %@", &v3, 0x16u);
}

@end
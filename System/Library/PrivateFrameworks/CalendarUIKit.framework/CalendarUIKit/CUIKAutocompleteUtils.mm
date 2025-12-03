@interface CUIKAutocompleteUtils
+ (BOOL)shouldShowOtherTimeZoneForResult:(id)result;
+ (id)_copyAlarmsForAutocompleteFromResult:(id)result;
+ (id)foundInStringForResult:(id)result pasteboardEvent:(BOOL)event outGlyphNames:(id *)names;
+ (id)inviteeStringForResult:(id)result;
+ (id)locationStringForResult:(id)result outGlyphNames:(id *)names;
+ (id)timeStringForResult:(id)result usingTimeZone:(id)zone;
+ (id)titleStringForResult:(id)result;
+ (void)applyTimeToAutocompleteResults:(id)results usingCurrentStartDate:(id)date currentEndDate:(id)endDate timeImplicitlySet:(BOOL)set;
+ (void)modifyCurrentEvent:(id)event withAutocompleteResult:(id)result isPasteboardResult:(BOOL)pasteboardResult calendarToPasteTo:(id)to outHasModifiedAttendeesFromSuggestion:(BOOL *)suggestion;
@end

@implementation CUIKAutocompleteUtils

+ (void)applyTimeToAutocompleteResults:(id)results usingCurrentStartDate:(id)date currentEndDate:(id)endDate timeImplicitlySet:(BOOL)set
{
  setCopy = set;
  v47 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  dateCopy = date;
  endDateCopy = endDate;
  _now = [self _now];
  v14 = _now;
  v36 = endDateCopy;
  if (!setCopy)
  {
    goto LABEL_5;
  }

  v15 = [_now dateByAddingTimeInterval:86400.0];
  v16 = [dateCopy isAfterOrSameDayAsDate:v15 inCalendar:0];

  if (v16)
  {
    v17 = 1;
    goto LABEL_6;
  }

  v18 = [v14 laterDate:endDateCopy];

  if (v18 == v14)
  {
    v34 = [MEMORY[0x1E695DF00] dateWithDatePartFromDate:v14 timePartFromDate:dateCopy inCalendar:0];

    v17 = 0;
    dateCopy = v34;
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
  v44 = setCopy;
  v45 = v17;
  v35 = dateCopy;
  v42 = v35;
  v19 = v14;
  v43 = v19;
  v20 = _Block_copy(aBlock);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v21 = resultsCopy;
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
        suggestionInfo = [v26 suggestionInfo];

        if (!suggestionInfo)
        {
          pasteboardResults = [v26 pasteboardResults];

          if (pasteboardResults)
          {
            pasteboardResults2 = [v26 pasteboardResults];
            v30 = [pasteboardResults2 count];

            if (v30 == 1)
            {
              pasteboardResults3 = [v26 pasteboardResults];
              firstObject = [pasteboardResults3 firstObject];
              v20[2](v20, firstObject);
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

+ (void)modifyCurrentEvent:(id)event withAutocompleteResult:(id)result isPasteboardResult:(BOOL)pasteboardResult calendarToPasteTo:(id)to outHasModifiedAttendeesFromSuggestion:(BOOL *)suggestion
{
  pasteboardResultCopy = pasteboardResult;
  eventCopy = event;
  resultCopy = result;
  toCopy = to;
  if (pasteboardResultCopy)
  {
    pasteboardResults = [resultCopy pasteboardResults];
    firstObject = [pasteboardResults firstObject];

    resultCopy = firstObject;
  }

  if ([eventCopy changingAllDayPropertyIsAllowed])
  {
    [eventCopy setAllDay:{objc_msgSend(resultCopy, "allDay")}];
  }

  title = [resultCopy title];
  [eventCopy setTitle:title];

  startDate = [resultCopy startDate];
  [eventCopy setStartDate:startDate];

  endDate = [resultCopy endDate];
  [eventCopy setEndDateUnadjustedForLegacyClients:endDate];

  timeZone = [resultCopy timeZone];
  [eventCopy setTimeZone:timeZone];

  if (pasteboardResultCopy)
  {
    [resultCopy travelTime];
    [eventCopy setTravelTime:?];
    travelStartLocation = [resultCopy travelStartLocation];
    [eventCopy setTravelStartLocation:travelStartLocation];
  }

  displayLocationWithoutPrediction = [resultCopy displayLocationWithoutPrediction];
  v21 = [displayLocationWithoutPrediction length];

  if (v21)
  {
    displayLocationWithoutPrediction2 = [resultCopy displayLocationWithoutPrediction];
    [eventCopy setLocation:displayLocationWithoutPrediction2];
  }

  preferredLocation = [resultCopy preferredLocation];
  if (preferredLocation)
  {
    v24 = preferredLocation;
    preferredLocation2 = [resultCopy preferredLocation];
    isPrediction = [preferredLocation2 isPrediction];

    if ((isPrediction & 1) == 0)
    {
      preferredLocation3 = [resultCopy preferredLocation];
      duplicate = [preferredLocation3 duplicate];
      [eventCopy setStructuredLocation:duplicate];
    }
  }

  v29 = [objc_opt_class() _copyAlarmsForAutocompleteFromResult:resultCopy];
  [eventCopy setAlarms:v29];

  v30 = [resultCopy URL];

  if (v30)
  {
    v31 = [resultCopy URL];
    [eventCopy setURL:v31];
  }

  notes = [resultCopy notes];

  if (notes)
  {
    notes2 = [resultCopy notes];
    [eventCopy setNotes:notes2];
  }

  if (pasteboardResultCopy)
  {
    calendar = toCopy;
  }

  else
  {
    calendar = [resultCopy calendar];
  }

  v35 = calendar;
  calendar2 = [eventCopy calendar];
  v37 = [eventCopy canMoveToCalendar:v35 fromCalendar:calendar2 error:0];

  if (v37)
  {
    [eventCopy setCalendar:v35];
  }

  suggestionInfo = [resultCopy suggestionInfo];

  if (suggestionInfo)
  {
    suggestionInfo2 = [resultCopy suggestionInfo];
    duplicate2 = [suggestionInfo2 duplicate];
    [eventCopy setSuggestionInfo:duplicate2];
  }

  attendees = [resultCopy attendees];
  v42 = [attendees count];

  if (v42)
  {
    attendees2 = [resultCopy attendees];
    [eventCopy setAttendees:attendees2];

    if (suggestion)
    {
      *suggestion = 1;
    }
  }
}

+ (id)_copyAlarmsForAutocompleteFromResult:(id)result
{
  v19 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  alarms = [resultCopy alarms];
  v6 = [v4 initWithCapacity:{objc_msgSend(alarms, "count")}];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  alarms2 = [resultCopy alarms];
  v8 = [alarms2 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(alarms2);
        }

        duplicate = [*(*(&v14 + 1) + 8 * v11) duplicate];
        [v6 addObject:duplicate];

        ++v11;
      }

      while (v9 != v11);
      v9 = [alarms2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v6;
}

+ (id)titleStringForResult:(id)result
{
  resultCopy = result;
  suggestionInfo = [resultCopy suggestionInfo];

  if (suggestionInfo)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = CUIKBundle();
    v7 = [v6 localizedStringForKey:@"Maybe: %@" value:&stru_1F4AA8958 table:0];
    title = [resultCopy title];
    title2 = [v5 localizedStringWithFormat:v7, title];
  }

  else
  {
    title2 = [resultCopy title];
  }

  return title2;
}

+ (id)locationStringForResult:(id)result outGlyphNames:(id *)names
{
  resultCopy = result;
  v6 = MEMORY[0x1E69669D0];
  notes = [resultCopy notes];
  v8 = [v6 deserializeConference:notes];
  conference = [v8 conference];

  joinMethods = [conference joinMethods];
  firstObject = [joinMethods firstObject];
  v12 = [firstObject URL];

  array = [MEMORY[0x1E695DF70] array];
  displayLocationWithoutPrediction = [resultCopy displayLocationWithoutPrediction];

  if (displayLocationWithoutPrediction)
  {
    displayLocationWithoutPrediction2 = [resultCopy displayLocationWithoutPrediction];
    [array addObject:displayLocationWithoutPrediction2];
  }

  notes2 = [resultCopy notes];

  if (notes2)
  {
    notes3 = [resultCopy notes];
    [array addObject:notes3];
  }

  v18 = [resultCopy URL];

  if (v18)
  {
    v19 = [resultCopy URL];
    absoluteString = [v19 absoluteString];
    [array addObject:absoluteString];
  }

  v21 = [MEMORY[0x1E6992F40] conferenceURLFromSources:array];
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
  if (names)
  {
    *names = [CUIKLocationDescriptionGenerator glyphNamesForConferenceURL:v24];
  }

  displayLocation = [resultCopy displayLocation];
  displayLocationWithoutPrediction3 = [resultCopy displayLocationWithoutPrediction];
  preferredLocation = [resultCopy preferredLocation];
  v28 = [CUIKLocationDescriptionGenerator locationStringForLocation:displayLocation locationWithoutPrediction:displayLocationWithoutPrediction3 preferredLocation:preferredLocation conferenceURL:v24 conferenceURLIsBroadcast:0];

  return v28;
}

+ (id)foundInStringForResult:(id)result pasteboardEvent:(BOOL)event outGlyphNames:(id *)names
{
  eventCopy = event;
  v19[1] = *MEMORY[0x1E69E9840];
  foundInBundleID = [result foundInBundleID];
  if (foundInBundleID)
  {
    v18 = 0;
    v8 = [MEMORY[0x1E6963620] bundleRecordWithBundleIdentifier:foundInBundleID allowPlaceholder:1 error:&v18];
    v9 = v18;
    if (!v8)
    {
      v8 = +[CUIKLogSubsystem defaultCategory];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [CUIKAutocompleteUtils foundInStringForResult:foundInBundleID pasteboardEvent:v9 outGlyphNames:v8];
      }

      v12 = 0;
      goto LABEL_12;
    }

    localizedName = [v8 localizedName];
    v11 = [CUIKSuggestionDescriptionGenerator brandedOriginDescriptionStringWithAppName:localizedName];
    v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v11];

LABEL_8:
LABEL_12:

    goto LABEL_13;
  }

  if (eventCopy)
  {
    v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"doc.on.clipboard"];
    v8 = [MEMORY[0x1E69DB7F0] cuik_textAttachmentWithImage:v9];
    localizedName = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v8];
    v13 = objc_alloc(MEMORY[0x1E696AAB0]);
    v14 = CUIKBundle();
    v15 = [v14 localizedStringForKey:@"%@ From clipboard" value:&stru_1F4AA8958 table:0];
    v16 = [v13 initWithString:v15];

    if (names)
    {
      v19[0] = @"doc.on.clipboard";
      *names = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    }

    v12 = [MEMORY[0x1E696AAB0] localizedAttributedStringWithFormat:v16, localizedName];

    goto LABEL_8;
  }

  v12 = 0;
LABEL_13:

  return v12;
}

+ (BOOL)shouldShowOtherTimeZoneForResult:(id)result
{
  resultCopy = result;
  if (([resultCopy allDay] & 1) != 0 || (objc_msgSend(resultCopy, "timeZone"), v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v7 = 0;
  }

  else
  {
    timeZone = [resultCopy timeZone];
    startDate = [resultCopy startDate];
    if (CUIKShouldShowTimezoneClarification(timeZone, startDate))
    {
      v7 = 1;
    }

    else
    {
      timeZone2 = [resultCopy timeZone];
      endDate = [resultCopy endDate];
      v7 = CUIKShouldShowTimezoneClarification(timeZone2, endDate);
    }
  }

  return v7;
}

+ (id)timeStringForResult:(id)result usingTimeZone:(id)zone
{
  v5 = zone != 0;
  zoneCopy = zone;
  resultCopy = result;
  v8 = +[CUIKDateDescriptionGenerator sharedGenerator];
  startDate = [resultCopy startDate];
  endDate = [resultCopy endDate];
  allDay = [resultCopy allDay];

  v12 = [v8 dateStringForEventInvitationWithStartDate:startDate endDate:endDate timeZone:zoneCopy allDay:allDay withFormat:1 showTimeZone:v5];

  return v12;
}

+ (id)inviteeStringForResult:(id)result
{
  attendees = [result attendees];
  v4 = [CUIKInviteeDescriptionGenerator inviteeStringForAttendees:attendees];

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
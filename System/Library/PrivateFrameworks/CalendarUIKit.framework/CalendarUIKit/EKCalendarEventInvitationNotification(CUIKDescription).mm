@interface EKCalendarEventInvitationNotification(CUIKDescription)
- (id)_dateString:()CUIKDescription;
- (id)_identityStringWithOptions:()CUIKDescription;
- (id)_locationString:()CUIKDescription;
- (id)_organizerString:()CUIKDescription;
- (id)_recurrenceChangedString;
- (id)allDescriptionStringsWithOptions:()CUIKDescription;
- (id)descriptionStrings:()CUIKDescription;
- (uint64_t)_attendeeReplyStringWithOptions:()CUIKDescription descriptions:;
- (uint64_t)supportsDisplay;
- (void)_populateDescriptionStringsArray:()CUIKDescription dictionary:options:;
@end

@implementation EKCalendarEventInvitationNotification(CUIKDescription)

- (uint64_t)supportsDisplay
{
  if (![self type])
  {
    return 1;
  }

  result = [self type];
  if (result == 1)
  {
    return result;
  }

  return [self type] == 2 || objc_msgSend(self, "type") == 3;
}

- (void)_populateDescriptionStringsArray:()CUIKDescription dictionary:options:
{
  v26 = a3;
  v8 = a4;
  if (![self type] || objc_msgSend(self, "type") == 1 || objc_msgSend(self, "type") == 2)
  {
    if ([self type] == 2)
    {
      [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"Cancelled"];
    }

    v9 = [self _organizerString:a5];
    v10 = v9;
    if ((a5 & 0x200) == 0 && v9)
    {
      [v8 setObject:v9 forKeyedSubscript:@"Person"];
      [v26 addObject:v10];
    }

    if ((a5 & 4) != 0)
    {
      v11 = [self _attendeeString:a5];
      if (v11)
      {
        [v8 setObject:v11 forKeyedSubscript:@"2ndPerson"];
        [v26 addObject:v11];
      }
    }

    v12 = [self _dateString:a5];
    if (v12)
    {
      [v8 setObject:v12 forKeyedSubscript:@"Date"];
      [v26 addObject:v12];
    }

    v13 = [self _locationString:a5];
    if (v13)
    {
      [v8 setObject:v13 forKeyedSubscript:@"Action"];
      [v26 addObject:v13];
    }

    _recurrenceChangedString = [self _recurrenceChangedString];
    if (_recurrenceChangedString)
    {
      [v8 setObject:_recurrenceChangedString forKeyedSubscript:@"Action"];
      [v26 addObject:_recurrenceChangedString];
    }

    goto LABEL_20;
  }

  if ([self type] == 3)
  {
    if ([self expanded] && objc_msgSend(self, "isProposedNewTime"))
    {
      v10 = [self _identityStringWithOptions:a5];
      expandedProposedTimeAttendee = [self expandedProposedTimeAttendee];
      proposedStartDate = [expandedProposedTimeAttendee proposedStartDate];
      v12 = [CUIKAvailabilityDescriptionGenerator attendeeProposedANewTime:proposedStartDate attendeeName:v10];

      if (v12)
      {
        v24 = @"Action";
LABEL_42:
        [v8 setObject:v12 forKeyedSubscript:v24];
        [v26 addObject:v12];
      }
    }

    else
    {
      if ([self isLocationDecline])
      {
        v10 = [self _locationString:a5];
        if (v10)
        {
          [v8 setObject:v10 forKeyedSubscript:@"Action"];
          [v26 addObject:v10];
        }

        goto LABEL_21;
      }

      v10 = [self _attendeeReplyStringWithOptions:a5 descriptions:v8];
      if (v10)
      {
        [v26 addObject:v10];
        v25 = [self _attendeeReplyStringWithOptions:a5 descriptions:v8];
      }

      v12 = [self _dateString:a5];
      if (v12)
      {
        v24 = @"Date";
        goto LABEL_42;
      }
    }

LABEL_20:

LABEL_21:
  }

  recurrenceRule = [self recurrenceRule];
  if (recurrenceRule)
  {
    v16 = objc_opt_new();
    startDateForNextOccurrence = [self startDateForNextOccurrence];
    if (startDateForNextOccurrence)
    {
      v18 = [v16 naturalLanguageDescriptionForRecurrenceRule:recurrenceRule withStartDate:startDateForNextOccurrence];
    }

    else
    {
      startDate = [self startDate];
      v18 = [v16 naturalLanguageDescriptionForRecurrenceRule:recurrenceRule withStartDate:startDate];
    }

    [v8 setObject:v18 forKeyedSubscript:@"Recurrence"];
  }

  timeSensitiveDescriptionString = [self timeSensitiveDescriptionString];
  [v8 setObject:timeSensitiveDescriptionString forKeyedSubscript:@"TimeSensitive"];

  v21 = [self blockedDescriptionString:(a5 >> 10) & 1];
  [v8 setObject:v21 forKeyedSubscript:@"Blocked"];
}

- (id)descriptionStrings:()CUIKDescription
{
  v5 = objc_opt_new();
  [self _populateDescriptionStringsArray:0 dictionary:v5 options:a3];
  v6 = [v5 copy];

  return v6;
}

- (id)allDescriptionStringsWithOptions:()CUIKDescription
{
  v5 = objc_opt_new();
  [self _populateDescriptionStringsArray:v5 dictionary:0 options:a3];
  v6 = [v5 copy];

  return v6;
}

- (id)_identityStringWithOptions:()CUIKDescription
{
  if ([self isProposedNewTime])
  {
    expandedProposedTimeAttendee = [self expandedProposedTimeAttendee];
    v6 = [self _identityStringForIdentity:expandedProposedTimeAttendee withOptions:a3];
  }

  else
  {
    v6 = [self _identityStringForIdentity:self withOptions:a3];
  }

  return v6;
}

- (id)_organizerString:()CUIKDescription
{
  if ([self type] == 2)
  {
    v5 = CUIKBundle();
    v6 = v5;
    v7 = @"Canceled by %@";
  }

  else
  {
    v5 = CUIKBundle();
    v6 = v5;
    if ((a3 & 0x80) != 0)
    {
      v8 = @"From: %@";
    }

    else
    {
      v8 = @"Invitation from %@";
    }

    if ((a3 & 4) != 0)
    {
      v7 = v8;
    }

    else
    {
      v7 = @"%@";
    }
  }

  v9 = [v5 localizedStringForKey:v7 value:&stru_1F4AA8958 table:0];

  v10 = [self _identityStringWithOptions:a3];
  v11 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v9 validFormatSpecifiers:@"%@" error:0, v10];

  return v11;
}

- (uint64_t)_attendeeReplyStringWithOptions:()CUIKDescription descriptions:
{
  v5 = a4;
  v95 = 0;
  v96 = &v95;
  v97 = 0x2020000000;
  v98 = 0;
  v91 = 0;
  v92 = &v91;
  v93 = 0x2020000000;
  v94 = 0;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v90 = 0;
  v83 = 0;
  v84 = &v83;
  v85 = 0x2020000000;
  v86 = 0;
  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v82 = 0;
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__10;
  v77 = __Block_byref_object_dispose__10;
  v78 = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__10;
  v71 = __Block_byref_object_dispose__10;
  v72 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__10;
  v65 = __Block_byref_object_dispose__10;
  v66 = objc_opt_new();
  attendees = [self attendees];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __103__EKCalendarEventInvitationNotification_CUIKDescription___attendeeReplyStringWithOptions_descriptions___block_invoke;
  v51[3] = &unk_1E839AC08;
  v53 = &v79;
  v54 = &v67;
  v55 = &v91;
  v7 = v5;
  v52 = v7;
  v56 = &v95;
  v57 = &v87;
  v58 = &v61;
  v59 = &v73;
  v60 = &v83;
  [attendees enumerateObjectsUsingBlock:v51];

  v8 = v92[3];
  v9 = v8 > 1 || v96[3] > 1 || v88[3] > 1;
  v10 = *(v84 + 24) | v9;
  *(v84 + 24) = v10;
  if (*(v80 + 24) == 1)
  {
    owner = [self owner];
    v12 = CalShortDisplayStringForNotificationIdentity(owner, 1, 0);

    owner2 = [self owner];
    v14 = v74[5];
    v74[5] = owner2;

    v15 = MEMORY[0x1E696AEC0];
    v16 = CUIKBundle();
    v17 = [v16 localizedStringForKey:@"%@ declined to move the event to your proposed time" value:&stru_1F4AA8958 table:0];
    v18 = [v15 localizedStringWithFormat:v17, v12];
    [v7 setObject:v18 forKeyedSubscript:@"Action"];

LABEL_7:
LABEL_27:

    goto LABEL_33;
  }

  if (v10)
  {
    v19 = v74[5];
    v74[5] = 0;

    v12 = objc_opt_new();
    v20 = v92[3];
    if (v20 == 1)
    {
      v21 = MEMORY[0x1E696AEC0];
      v22 = CUIKBundle();
      v23 = [v22 localizedStringForKey:@"%@ declined" value:&stru_1F4AA8958 table:0];
      v24 = CalShortDisplayStringForNotificationIdentity(v68[5], 1, 0);
      v25 = [v21 localizedStringWithFormat:v23, v24];
      [v12 appendString:v25];

      v26 = v74;
      v27 = v68[5];
      v28 = v26[5];
      v26[5] = v27;
    }

    else
    {
      if (v20 <= 1)
      {
LABEL_16:
        if (v96[3] >= 1)
        {
          if ([v12 length])
          {
            [v12 appendString:@"\n"];
          }

          v37 = MEMORY[0x1E696AEC0];
          v38 = CUIKBundle();
          v39 = [v38 localizedStringForKey:@"invitees_commented" value:&stru_1F4AA8958 table:0];
          v40 = [v37 localizedStringWithFormat:v39, v96[3]];
          [v12 appendString:v40];

          if (v96[3] > 1)
          {
            [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"MultipleComments"];
          }
        }

        if (v88[3] >= 1)
        {
          if ([v12 length])
          {
            [v12 appendString:@"\n"];
          }

          v41 = MEMORY[0x1E696AEC0];
          v42 = CUIKBundle();
          v43 = [v42 localizedStringForKey:@"invitees_proposed_time" value:&stru_1F4AA8958 table:0];
          v44 = [v41 localizedStringWithFormat:v43, v88[3]];
          [v12 appendString:v44];

          if (v88[3] >= 2)
          {
            [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"TimeProposals"];
          }
        }

        [v7 setObject:v12 forKeyedSubscript:@"Action"];
        goto LABEL_27;
      }

      v34 = MEMORY[0x1E696AEC0];
      v28 = CUIKBundle();
      v35 = [v28 localizedStringForKey:@"invitees_declined_short" value:&stru_1F4AA8958 table:0];
      v36 = [v34 localizedStringWithFormat:v35, v92[3]];
      [v12 appendString:v36];
    }

    goto LABEL_16;
  }

  if (v88[3] < 1)
  {
    if (v8 < 1)
    {
      v46 = MEMORY[0x1E696AEC0];
      if (v96[3] < 1)
      {
        v12 = CUIKBundle();
        v16 = [v12 localizedStringForKey:@"Message" value:&stru_1F4AA8958 table:0];
        v17 = [v46 localizedStringWithFormat:v16];
        [v7 setObject:v17 forKeyedSubscript:@"Action"];
        goto LABEL_7;
      }

      v30 = CUIKBundle();
      v31 = [v30 localizedStringForKey:@"%@ commented" value:&stru_1F4AA8958 table:0];
      v32 = CalShortDisplayStringForNotificationIdentity(v74[5], 1, 0);
      v33 = [v46 localizedStringWithFormat:v31, v32];
      [v7 setObject:v33 forKeyedSubscript:@"Action"];
    }

    else
    {
      v45 = MEMORY[0x1E696AEC0];
      v30 = CUIKBundle();
      v31 = [v30 localizedStringForKey:@"%@ declined" value:&stru_1F4AA8958 table:0];
      v32 = CalShortDisplayStringForNotificationIdentity(v74[5], 1, 0);
      v33 = [v45 localizedStringWithFormat:v31, v32];
      [v7 setObject:v33 forKeyedSubscript:@"Action"];
    }
  }

  else
  {
    v29 = MEMORY[0x1E696AEC0];
    v30 = CUIKBundle();
    v31 = [v30 localizedStringForKey:@"%@ proposed a new time" value:&stru_1F4AA8958 table:0];
    v32 = CalShortDisplayStringForNotificationIdentity(v74[5], 1, 0);
    v33 = [v29 localizedStringWithFormat:v31, v32];
    [v7 setObject:v33 forKeyedSubscript:@"Action"];
  }

  [v7 setObject:v74[5] forKeyedSubscript:@"ImportantAttendee"];
LABEL_33:
  if ([v62[5] length])
  {
    v47 = MEMORY[0x1E696AEC0];
    v48 = [v7 objectForKeyedSubscript:@"Action"];
    v49 = [v47 stringWithFormat:@"%@\n%@", v48, v62[5]];
    [v7 setObject:v49 forKeyedSubscript:@"Action"];
  }

  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v67, 8);

  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v79, 8);
  _Block_object_dispose(&v83, 8);
  _Block_object_dispose(&v87, 8);
  _Block_object_dispose(&v91, 8);
  _Block_object_dispose(&v95, 8);

  return 0;
}

- (id)_dateString:()CUIKDescription
{
  if ([self timeChanged])
  {
    v5 = @"Time changed to %@";
    goto LABEL_5;
  }

  if ([self dateChanged])
  {
    v5 = @"Date changed to %@";
LABEL_5:
    v6 = CUIKBundle();
    v7 = [v6 localizedStringForKey:v5 value:&stru_1F4AA8958 table:0];

    if (v7)
    {
      v8 = 0;
LABEL_9:
      isAllDay = [self isAllDay];
      startDateForNextOccurrence = [self startDateForNextOccurrence];
      if (startDateForNextOccurrence)
      {
        v11 = +[CUIKDateDescriptionGenerator sharedGenerator];
        v12 = [v11 dateStringForDate:startDateForNextOccurrence allDay:isAllDay standalone:v8 shortFormat:0];

        v13 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v7 validFormatSpecifiers:@"%@" error:0, v12];
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if ((a3 & 0x100) == 0)
  {
    v7 = @"%@";
    v8 = 1;
    goto LABEL_9;
  }

LABEL_11:
  v13 = 0;
LABEL_14:

  return v13;
}

- (id)_locationString:()CUIKDescription
{
  if (![self isLocationDecline])
  {
    if ([self type] == 3)
    {
LABEL_4:
      v6 = 0;
      goto LABEL_13;
    }

    locationChanged = [self locationChanged];
    videoConferenceChanged = [self videoConferenceChanged];
    v9 = videoConferenceChanged;
    if (locationChanged)
    {
      v10 = CUIKBundle();
      v3 = v10;
      if (v9)
      {
        v11 = @"Location changed and Video Call updated";
      }

      else
      {
        v11 = @"Location changed";
      }
    }

    else
    {
      if (!videoConferenceChanged)
      {
        goto LABEL_4;
      }

      v10 = CUIKBundle();
      v3 = v10;
      v11 = @"Video Call updated";
    }

    v6 = [v10 localizedStringForKey:v11 value:&stru_1F4AA8958 table:0];
    goto LABEL_12;
  }

  v2 = MEMORY[0x1E696AEC0];
  v3 = CUIKBundle();
  v4 = [v3 localizedStringForKey:@"%@ is unavailable" value:&stru_1F4AA8958 table:0];
  name = [self name];
  v6 = [v2 localizedStringWithFormat:v4, name];

LABEL_12:
LABEL_13:

  return v6;
}

- (id)_recurrenceChangedString
{
  if ([self recurrenceChanged])
  {
    v1 = CUIKBundle();
    v2 = [v1 localizedStringForKey:@"Repeat frequency or end date changed" value:&stru_1F4AA8958 table:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end
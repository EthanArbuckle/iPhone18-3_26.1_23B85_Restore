BOOL CUIKShouldDisplayNotes(void *a1)
{
  v1 = a1;
  v2 = CUIKShouldDisplayNotes___ShouldDisplayNotes;
  if (CUIKShouldDisplayNotes___ShouldDisplayNotes < 0)
  {
    v3 = CFPreferencesCopyValue(@"HideNotes", *MEMORY[0x1E695E8A8], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
    CUIKShouldDisplayNotes___ShouldDisplayNotes = [v3 BOOLValue] ^ 1;

    v2 = CUIKShouldDisplayNotes___ShouldDisplayNotes;
  }

  v4 = 0;
  if (v1 && v2 == 1)
  {
    InvertedSet = CUIKShouldDisplayNotes___NonWhitespaceSet;
    if (!CUIKShouldDisplayNotes___NonWhitespaceSet)
    {
      Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespaceAndNewline);
      InvertedSet = CFCharacterSetCreateInvertedSet(*MEMORY[0x1E695E480], Predefined);
      CUIKShouldDisplayNotes___NonWhitespaceSet = InvertedSet;
    }

    v8.length = [(__CFString *)v1 length];
    v8.location = 0;
    v4 = CFStringFindCharacterFromSet(v1, InvertedSet, v8, 0, 0) != 0;
  }

  return v4;
}

void *CUIKNotesFieldHasInlineExchangeAttachments(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = _CUIKNotesFieldCIDNotationPattern();
    v3 = [v2 rangeOfFirstMatchInString:v1 options:0 range:{0, objc_msgSend(v1, "length")}];

    return (v3 != 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

id CUIKStripInlineExchangeAttachmentsFromNotes(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = _CUIKNotesFieldCIDNotationPattern();
    v3 = [v1 length];
    v4 = CUIKBundle();
    v5 = [v4 localizedStringForKey:@"<inline attachment not shown>" value:&stru_1F4AA8958 table:0];
    v6 = [v2 stringByReplacingMatchesInString:v1 options:0 range:0 withTemplate:{v3, v5}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t CUIKGregorianUnitsForRecurrenceTypeAndInterval@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  if (a2 >= 1)
  {
    if (result > 1)
    {
      if (result == 2)
      {
        *(a3 + 4) = a2;
      }

      else if (result == 3)
      {
        *a3 = a2;
      }
    }

    else if (result)
    {
      if (result == 1)
      {
        *(a3 + 8) = 7 * a2;
      }
    }

    else
    {
      *(a3 + 8) = a2;
    }
  }

  return result;
}

uint64_t CUIKCheckEventStartDateAgainstOccurrenceCacheBounds()
{
  v0 = CalCopyTimeZone();
  CalEventOccurrenceCacheCopyBoundsForTimeZone();
  if (v0)
  {
    CFRelease(v0);
  }

  return 1;
}

id CUIKStringForRecurrenceRuleAndDate(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_opt_new();
  v6 = [v5 naturalLanguageDescriptionForRecurrenceRule:v4 withStartDate:v3];

  return v6;
}

uint64_t CUIKRecurrenceDateMatchesAnyDaySpecifiedInByDayList(void *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    v8 = [MEMORY[0x1E695DEE8] currentCalendar];
    [v8 setTimeZone:v7];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v18 = v5;
      v11 = *v20;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = [v8 components:512 fromDate:v6];
          v15 = [v13 dayOfTheWeek];
          v16 = [v14 weekday];

          if (v15 == v16)
          {
            v10 = 1;
            goto LABEL_12;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

LABEL_12:
      v5 = v18;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t CUIKRecurrenceDateMatchesAnyDaySpecifiedInByMonthDayList(void *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    v8 = [MEMORY[0x1E695DEE8] currentCalendar];
    [v8 setTimeZone:v7];
    v9 = [v8 components:16 fromDate:v6];
    v10 = [v9 day];

    [v8 rangeOfUnit:16 inUnit:8 forDate:v6];
    v12 = v11;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = v5;
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      v17 = v12 + 1;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v19 = [*(*(&v23 + 1) + 8 * i) integerValue];
          if (v19 < 0)
          {
            if (v19 == v10 || v17 + v19 == v10)
            {
LABEL_17:
              v21 = 1;
              goto LABEL_18;
            }
          }

          else if (v19 == v10)
          {
            goto LABEL_17;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v21 = 0;
LABEL_18:
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

uint64_t CUIKRecurrenceMonthMatchesAnyMonthSpecifiedInByMonthList(void *a1, void *a2, void *a3)
{
  if (!a2)
  {
    return 0;
  }

  v5 = MEMORY[0x1E695DEE8];
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = [v5 currentCalendar];
  [v9 setTimeZone:v6];

  v10 = MEMORY[0x1E696AD98];
  v11 = [v9 components:8 fromDate:v7];

  v12 = [v10 numberWithInteger:{objc_msgSend(v11, "month")}];

  v13 = [v8 containsObject:v12];
  return v13;
}

id CUIKDisplayStringForAvailability(uint64_t a1)
{
  if (a1 <= 0)
  {
    if (a1 == -1 || !a1)
    {
      v1 = CUIKBusyLocalizedString();
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        v2 = CUIKBundle();
        v3 = v2;
        v4 = @"Free";
        break;
      case 2:
        v2 = CUIKBundle();
        v3 = v2;
        v4 = @"Tentative";
        break;
      case 3:
        v2 = CUIKBundle();
        v3 = v2;
        v4 = @"Out of office";
        break;
      default:
        goto LABEL_12;
    }

    v1 = [v2 localizedStringForKey:v4 value:&stru_1F4AA8958 table:0];
  }

LABEL_12:

  return v1;
}

id CUIKBusyLocalizedString()
{
  v0 = CUIKBundle();
  v1 = [v0 localizedStringForKey:@"Busy" value:&stru_1F4AA8958 table:0];

  return v1;
}

id CUIKDisplayStringForTravelTimeUsingShortFormat(int a1, double a2)
{
  v4 = CUIKBundle();
  v5 = [v4 localizedStringForKey:@"None" value:&stru_1F4AA8958 table:0];
  v6 = CUIKDurationStringForTimeInterval(0, v5, a1, 0, 1, a2);

  return v6;
}

id CUIKDisplayStringTravelTimeAndDuration(double a1)
{
  v1 = CUIKDisplayStringForTravelTimeUsingShortFormat(1, a1);
  v2 = CUIKDisplayStringTravelTimeFormat(v1);

  return v2;
}

id CUIKDisplayStringTravelTimeFormat(void *a1)
{
  v1 = a1;
  v2 = CUIKBundle();
  v3 = [v2 localizedStringForKey:@"%@ travel time" value:&stru_1F4AA8958 table:0];

  v4 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v3, v1];

  return v4;
}

id CUIKDisplayStringTravelToLocationWithRoutingModeAndDuration(void *a1, uint64_t a2, double a3)
{
  v5 = a1;
  if (a3 <= 0.0)
  {
    v10 = 0;
    goto LABEL_26;
  }

  v6 = CUIKDisplayStringForTravelTimeUsingShortFormat(1, a3);
  v7 = v5;
  if ([v7 length])
  {
    v8 = [v7 componentsSeparatedByString:@"\n"];
    v9 = [v8 firstObject];
  }

  else
  {
    v9 = 0;
  }

  if ([v9 length])
  {
    v11 = [v9 componentsSeparatedByString:{@", "}];
    v12 = [v11 firstObject];
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = CUIKBundle();
    v14 = [v13 localizedStringForKey:@"%@ from %@ (%@)" value:&stru_1F4AA8958 table:0];

    v10 = 0;
    if (a2 > 1)
    {
      switch(a2)
      {
        case 2:
          v18 = MEMORY[0x1E696AEC0];
          v19 = CUIKBundle();
          v16 = v19;
          v20 = @"walk";
          goto LABEL_22;
        case 3:
          v18 = MEMORY[0x1E696AEC0];
          v19 = CUIKBundle();
          v16 = v19;
          v20 = @"take transit";
          goto LABEL_22;
        case 4:
          v18 = MEMORY[0x1E696AEC0];
          v19 = CUIKBundle();
          v16 = v19;
          v20 = @"bike";
LABEL_22:
          v17 = [v19 localizedStringForKey:v20 value:&stru_1F4AA8958 table:0];
          [v18 localizedStringWithFormat:v14, v17, v12, v6];
          goto LABEL_23;
      }
    }

    else
    {
      if ((a2 + 1) < 2)
      {
        v15 = MEMORY[0x1E696AEC0];
        v16 = CUIKBundle();
        v17 = [v16 localizedStringForKey:@"Travel to %@ (%@)" value:&stru_1F4AA8958 table:0];
        [v15 localizedStringWithFormat:v17, v12, v6, v22];
        v10 = LABEL_23:;

        goto LABEL_24;
      }

      if (a2 == 1)
      {
        v18 = MEMORY[0x1E696AEC0];
        v19 = CUIKBundle();
        v16 = v19;
        v20 = @"drive";
        goto LABEL_22;
      }
    }

LABEL_24:

    goto LABEL_25;
  }

  v10 = CUIKDisplayStringTravelTimeFormat(v6);
LABEL_25:

LABEL_26:

  return v10;
}

uint64_t CUIKDayRangeForOccurenceDates(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  [v7 absoluteTime];
  v12 = v11;
  [v9 absoluteTime];
  if (v12 < v13)
  {
    v14 = v9;

    v7 = v14;
  }

  [v8 absoluteTime];
  v16 = v15;
  [v10 absoluteTime];
  if (v16 > v17)
  {
    v18 = v10;

    v8 = v18;
  }

  v19 = [v7 calendarDateForDay];
  v20 = [v7 differenceInDays:v9];
  [v8 differenceInDays:v19];

  return v20;
}

uint64_t CUIKCompareEKEvents(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v5;
  v8 = v6;
  LODWORD(v6) = [v7 isAllDay];
  if (v6 == [v8 isAllDay])
  {
    if (!a3 || ![v7 isAllDay] || ((objc_msgSend(v7, "duration"), v11 = v10, objc_msgSend(v8, "duration"), v13 = v11 == v12, v11 > v12) ? (v9 = -1) : (v9 = 1), v13))
    {
      v14 = [v7 compareStartDateIncludingTravelWithEvent:v8];
      if (v14)
      {
        v9 = v14;
      }

      else
      {
        v15 = [v7 calendar];
        v16 = [v8 calendar];
        v9 = CUIKCompareEKCalendars(v15, v16);

        if (!v9)
        {
          v17 = [v7 title];
          v18 = [v8 title];
          v9 = [v17 compare:v18 options:129];
        }
      }
    }
  }

  else if ([v7 isAllDay])
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

uint64_t CUIKCompareEKCalendars(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = +[CUIKAccountsController sharedInstance];
  v6 = [v3 source];
  v7 = [v5 sortOrderForSource:v6];

  v8 = +[CUIKAccountsController sharedInstance];
  v9 = [v4 source];
  v10 = [v8 sortOrderForSource:v9];

  if (v7 == v10)
  {
    v11 = [v3 source];
    v12 = [v11 sourceIdentifier];
    v13 = [v4 source];
    v14 = [v13 sourceIdentifier];
    v15 = [v12 compare:v14];

    if (!v15)
    {
      v16 = [v3 isSharingInvitation];
      v17 = [v4 isSharingInvitation];
      if ((v16 & 1) == 0 && v17)
      {
LABEL_5:
        v15 = -1;
        goto LABEL_9;
      }

      if (!(v17 & 1 | ((v16 & 1) == 0)))
      {
        goto LABEL_19;
      }

      v19 = [v3 displayOrder];
      v20 = [v4 displayOrder];
      if (v19 == -1)
      {
        v21 = 0x7FFFFFFF;
      }

      else
      {
        v21 = v19;
      }

      if (v20 == -1)
      {
        v22 = 0x7FFFFFFF;
      }

      else
      {
        v22 = v20;
      }

      if (v21 < v22)
      {
        goto LABEL_5;
      }

      if (v21 > v22)
      {
LABEL_19:
        v15 = 1;
        goto LABEL_9;
      }

      v23 = [v3 title];
      v24 = [v4 title];
      v25 = v24;
      if (v23 && v24)
      {
        v15 = [v23 localizedCompare:v24];
      }

      else if (v23)
      {
        v15 = -1;
      }

      else
      {
        v15 = 1;
      }
    }
  }

  else if (v7 < v10)
  {
    v15 = -1;
  }

  else
  {
    v15 = 1;
  }

LABEL_9:

  return v15;
}

uint64_t CUIKCompareEKEventsAsReminders(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = v4;
  LODWORD(v4) = [v6 completed];
  if (v4 != [v5 completed])
  {
    v7 = [v6 completed];
LABEL_5:
    v9 = v7 == 0;
    goto LABEL_6;
  }

  v8 = [v5 CUIK_reminderShouldBeEditable];
  if (v8 != [v6 CUIK_reminderShouldBeEditable])
  {
    v7 = [v5 CUIK_reminderShouldBeEditable];
    goto LABEL_5;
  }

  v12 = [v5 startDate];
  v13 = [v6 startDate];
  v14 = [v12 isEqualToDate:v13];

  if (v14)
  {
    v15 = [v5 uniqueID];
    v16 = [v6 uniqueID];
    v10 = [v15 compare:v16];

    goto LABEL_9;
  }

  v17 = [v5 startDate];
  v18 = [v6 startDate];
  v19 = [v17 isBeforeDate:v18];

  v9 = v19 == 0;
LABEL_6:
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = -1;
  }

LABEL_9:

  return v10;
}

id CUIKGetAttributedStringForEventDetailWithURL(void *a1)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E696AF20] componentsWithURL:v1 resolvingAgainstBaseURL:1];
  v3 = [v2 scheme];

  if (!v3)
  {
    v4 = [v1 absoluteString];
    v5 = [v4 length];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_alloc(MEMORY[0x1E6999A90]) initWithScannerType:1 passiveIntent:1];
      v8 = [MEMORY[0x1E6999A88] scanString:v4 range:0 configuration:{v6, v7}];
      v9 = [v8 firstObject];

      if (v9 && ![v9 urlificationRange] && v10 == v6 && objc_msgSend(v9, "category") - 1 <= 1)
      {
        v11 = [v9 url];
        if (v11)
        {
          v12 = [MEMORY[0x1E696AF20] componentsWithURL:v11 resolvingAgainstBaseURL:1];

          v2 = v12;
        }
      }
    }

    v13 = [v2 scheme];

    if (v13)
    {
      goto LABEL_16;
    }

    [v2 setScheme:@"http"];
    v14 = [v2 path];
    if ([v14 length])
    {
      v15 = [v2 path];
      v16 = [v15 hasPrefix:@"//"];

      if (v16)
      {
LABEL_16:

        goto LABEL_17;
      }

      v14 = [v2 path];
      v17 = [@"//" stringByAppendingString:v14];
      [v2 setPath:v17];
    }

    goto LABEL_16;
  }

LABEL_17:
  v18 = [v1 _lp_userVisibleString];
  v19 = [v2 scheme];
  v20 = [v19 lowercaseString];

  v21 = [v2 URL];
  v22 = [v21 absoluteString];

  if ([v20 isEqualToString:@"message"])
  {
    v23 = @"Show in Mail";
LABEL_22:
    v24 = CUIKBundle();
    v25 = [v24 localizedStringForKey:v23 value:&stru_1F4AA8958 table:0];

    v18 = v25;
    goto LABEL_23;
  }

  if ([v20 isEqualToString:@"sms"] & 1) != 0 || (objc_msgSend(v20, "isEqualToString:", @"messages"))
  {
    v23 = @"Show in Messages";
    goto LABEL_22;
  }

  if ([v22 cal_isWalletURL])
  {
    v23 = @"Show in Wallet";
    goto LABEL_22;
  }

LABEL_23:
  if (v18)
  {
    v26 = [v2 URL];

    v27 = objc_alloc(MEMORY[0x1E696AAB0]);
    if (v26)
    {
      v37 = *MEMORY[0x1E69DB670];
      v28 = [v2 URL];
      v38[0] = v28;
      v29 = MEMORY[0x1E695DF20];
      v30 = v38;
      v31 = &v37;
    }

    else
    {
      v35 = *MEMORY[0x1E69DB650];
      v28 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      v36 = v28;
      v29 = MEMORY[0x1E695DF20];
      v30 = &v36;
      v31 = &v35;
    }

    v33 = [v29 dictionaryWithObjects:v30 forKeys:v31 count:1];
    v32 = [v27 initWithString:v18 attributes:v33];
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

id _CUIKNotesFieldCIDNotationPattern()
{
  if (_CUIKNotesFieldCIDNotationPattern_onceToken != -1)
  {
    _CUIKNotesFieldCIDNotationPattern_cold_1();
  }

  v1 = _CUIKNotesFieldCIDNotationPattern_cidNotationPattern;

  return v1;
}

void ___shouldAssertOnUnknownWindow_block_invoke()
{
  v0 = +[CUIKPreferences sharedPreferences];
  _shouldAssertOnUnknownWindow_shouldAssert = [v0 enableMultiwindowAsserts];
}

void _CUIKDateDescriptionGeneratorDateTimeFormatChanged()
{
  v0 = +[CUIKDateDescriptionGenerator sharedGenerator];
  [v0 _initializeFormatters];
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *gylphForCUIKParticipantDisplayImageState(int a1)
{
  if ((a1 - 1) > 7)
  {
    return @"?⃝";
  }

  else
  {
    return off_1E839A730[a1 - 1];
  }
}

__CFString *gylphNameForCUIKParticipantDisplayImageState(int a1)
{
  if ((a1 - 1) > 7)
  {
    return @"questionmark.circle";
  }

  else
  {
    return off_1E839A770[a1 - 1];
  }
}

uint64_t stateForParticipationStatus(uint64_t a1)
{
  if ((a1 - 2) >= 3)
  {
    return 6;
  }

  else
  {
    return (a1 + 1);
  }
}

id colorForParticipationState(void *a1)
{
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      if (a1 != 2)
      {
        a1 = [MEMORY[0x1E69DC888] systemGreenColor];
        goto LABEL_16;
      }
    }

    else if (a1 >= 2)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (a1 <= 5)
  {
    if (a1 != 4)
    {
      a1 = [MEMORY[0x1E69DC888] systemOrangeColor];
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (a1 == 6)
  {
LABEL_12:
    a1 = [MEMORY[0x1E69DC888] systemGrayColor];
    goto LABEL_16;
  }

  if (a1 == 7 || a1 == 8)
  {
LABEL_15:
    a1 = [MEMORY[0x1E69DC888] systemRedColor];
  }

LABEL_16:

  return a1;
}

id glyphWithAttributes(int a1, void *a2)
{
  v3 = a2;
  v4 = gylphNameForCUIKParticipantDisplayImageState(a1);
  v5 = MEMORY[0x1E69DCAD8];
  v6 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
  v7 = [v5 configurationWithFont:v6 scale:1];

  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:v4 withConfiguration:v7];
  v9 = [v8 imageWithRenderingMode:2];

  v10 = objc_opt_new();
  [v10 setImage:v9];
  v11 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v10];
  v12 = [v11 mutableCopy];
  [v12 addAttributes:v3 range:{0, objc_msgSend(v12, "length")}];

  return v12;
}

id attributedStateGlyph(void *a1, void *a2)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = *MEMORY[0x1E69DB650];
  v3 = a2;
  v4 = colorForParticipationState(a1);
  v8[1] = *MEMORY[0x1E69DB648];
  v9[0] = v4;
  v9[1] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = glyphWithAttributes(a1, v5);

  return v6;
}

id attributedStatusGlyph(uint64_t a1, void *a2)
{
  if ((a1 - 2) >= 3)
  {
    v2 = 6;
  }

  else
  {
    v2 = (a1 + 1);
  }

  return attributedStateGlyph(v2, a2);
}

id CUIKStringForRelativeOffset(int a1, int a2, double a3)
{
  if (a1)
  {
    v5 = CalTimeZoneCopyCFTimeZone();
    GregorianDate = CalDateTimeGetGregorianDate();
    v7 = MEMORY[0x1E695DF00];
    MEMORY[0x1CCAA8570](GregorianDate);
    v8 = [v7 dateWithTimeIntervalSinceReferenceDate:?];
    CFRelease(v5);
    v9 = a3 > 0.0;
    if (a3 >= 86400.0)
    {
      v9 = 0;
    }

    if (a3 == 0.0 || v9)
    {
      v18 = CUIKBundle();
      v11 = [v18 localizedStringForKey:@"On day of event (%@)" value:&stru_1F4AA8958 table:0];

      v19 = MEMORY[0x1E696AEC0];
      v12 = CUIKStringForGMTTime(v8, 0);
      v14 = [v19 localizedStringWithFormat:v11, v12];
    }

    else
    {
      if (a3 == -572400.0)
      {
        v10 = MEMORY[0x1E696AEC0];
        v11 = CUIKBundle();
        v12 = [v11 localizedStringForKey:@"%@ before" value:&stru_1F4AA8958 table:0];
        v13 = CUIKIntervalOneWeekLocalizedString();
        v14 = [v10 localizedStringWithFormat:v12, v13];
      }

      else
      {
        if (a3 >= 0.0 || a3 < -21600.0)
        {
          v23 = CUIKBundle();
          v24 = v23;
          if (a3 >= 0.0)
          {
            v11 = [v23 localizedStringForKey:@"%@ after" value:&stru_1F4AA8958 table:0];

            v25 = floor(a3 / 86400.0);
          }

          else
          {
            v11 = [v23 localizedStringForKey:@"%@ before" value:&stru_1F4AA8958 table:0];

            v25 = ceil(fabs(a3) / 86400.0);
          }

          v26 = v25;
          v27 = MEMORY[0x1E696AEC0];
          v28 = CUIKBundle();
          v29 = [v28 localizedStringForKey:@"interval_days_long" value:&stru_1F4AA8958 table:0];
          v12 = [v27 localizedStringWithFormat:v29, v26];

          v13 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v11 validFormatSpecifiers:@"%@" error:0, v12];
          v30 = MEMORY[0x1E696AEC0];
          v22 = CUIKBundle();
          v31 = [v22 localizedStringForKey:@"All-day alarm format" value:@"%@ (%@)" table:0];
          v32 = CUIKStringForGMTTime(v8, 0);
          v14 = [v30 localizedStringWithFormat:v31, v13, v32];
        }

        else
        {
          v20 = CUIKOnTimeLocalizedString();
          v11 = CUIKDurationStringForTimeInterval(1, v20, 0, a2, 1, a3);

          v12 = CUIKStringForGMTTime(v8, 0);
          v21 = MEMORY[0x1E696AEC0];
          v13 = CUIKBundle();
          v22 = [v13 localizedStringForKey:@"All-day alarm format" value:@"%@ (%@)" table:0];
          v14 = [v21 localizedStringWithFormat:v22, v11, v12];
        }
      }
    }
  }

  else if (a3 == -604800.0)
  {
    v15 = MEMORY[0x1E696AEC0];
    v8 = CUIKBundle();
    v16 = [v8 localizedStringForKey:@"%@ before" value:&stru_1F4AA8958 table:0];
    v17 = CUIKIntervalOneWeekLocalizedString();
    v14 = [v15 localizedStringWithFormat:v16, v17];
  }

  else
  {
    v8 = CUIKOnTimeLocalizedString();
    v14 = CUIKDurationStringForTimeInterval(1, v8, 0, a2, 1, a3);
  }

  return v14;
}

id CUIKIntervalOneWeekLocalizedString()
{
  v0 = CUIKBundle();
  v1 = [v0 localizedStringForKey:@"1 week interval" value:@"1 week" table:0];

  return v1;
}

id CUIKOnTimeLocalizedString()
{
  v0 = CUIKBundle();
  v1 = [v0 localizedStringForKey:@"At time of event" value:&stru_1F4AA8958 table:0];

  return v1;
}

void sub_1CAB708EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CUIKDescriptorForRequiredKeysForLabeledDisplayString()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v1 = *MEMORY[0x1E695C410];
  v4[0] = v0;
  v4[1] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];

  return v2;
}

void sub_1CAB72E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CalCanvasPocketEventIndicatorEnabled()
{
  if (!CalCanvasPocketEnabled())
  {
    return 0;
  }

  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"CanvasPocketEventIndicatorDisabled"] ^ 1;

  return v1;
}

uint64_t CalRemindersSolariumEnabled()
{
  if (!_os_feature_enabled_impl() || !_os_feature_enabled_impl())
  {
    return 0;
  }

  return _UISolariumEnabled();
}

void CUIKDecomposedAttendeeName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [CUIKAttendeeUtils _filteredAttendeeName:a1 parenthesizedPart:?];
  v6 = 0;
  v7 = 0;
  [v5 CUIK_attendeeFirstName:a2 middleName:&v7 lastName:a3 extension:&v6];
}

id getQLPreviewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getQLPreviewControllerClass_softClass;
  v7 = getQLPreviewControllerClass_softClass;
  if (!getQLPreviewControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getQLPreviewControllerClass_block_invoke;
    v3[3] = &unk_1E839A930;
    v3[4] = &v4;
    __getQLPreviewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1CAB793F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getQLPreviewControllerClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!QuickLookLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __QuickLookLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E839A950;
    v5 = 0;
    QuickLookLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!QuickLookLibraryCore_frameworkLibrary)
  {
    __getQLPreviewControllerClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("QLPreviewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getQLPreviewControllerClass_block_invoke_cold_1();
  }

  getQLPreviewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __QuickLookLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  QuickLookLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1CAB7B59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _initStandardTimeFormatter()
{
  if (!__standardTimeFormatter)
  {
    v0 = CFLocaleCopyCurrent();
    __standardTimeFormatter = CFDateFormatterCreate(0, v0, kCFDateFormatterNoStyle, kCFDateFormatterShortStyle);

    CFRelease(v0);
  }
}

void _initShortDayFormatter()
{
  if (!__shortDayFormatter)
  {
    v0 = CFLocaleCopyCurrent();
    __shortDayFormatter = CFDateFormatterCreate(0, v0, kCFDateFormatterShortStyle, kCFDateFormatterNoStyle);

    CFRelease(v0);
  }
}

void _initFullDayFormatter()
{
  if (!__fullDayFormatter)
  {
    v0 = CFLocaleCopyCurrent();
    __fullDayFormatter = CFDateFormatterCreate(0, v0, kCFDateFormatterFullStyle, kCFDateFormatterNoStyle);

    CFRelease(v0);
  }
}

void _initTimeWithoutDesignatorFormatter()
{
  if (!__timeWithoutDesignatorFormatter)
  {
    v0 = CFLocaleCopyCurrent();
    v1 = CFDateFormatterCreate(0, v0, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
    __timeWithoutDesignatorFormatter = v1;
    v2 = CPDateFormatStringForFormatType();
    CFDateFormatterSetFormat(v1, v2);

    CFRelease(v0);
  }
}

void _initDateFormatterWithCommaAndYear()
{
  if (!__dateFormatterWithCommaAndYear)
  {
    v0 = CFLocaleCopyCurrent();
    __dateFormatterWithCommaAndYear = CFDateFormatterCreate(0, v0, kCFDateFormatterMediumStyle, kCFDateFormatterNoStyle);

    CFRelease(v0);
  }
}

void _initLongDateFormatterWithCommaAndYear()
{
  if (!__longDateFormatterWithCommaAndYear)
  {
    v0 = CFLocaleCopyCurrent();
    v1 = CFDateFormatterCreate(0, v0, kCFDateFormatterLongStyle, kCFDateFormatterNoStyle);
    __longDateFormatterWithCommaAndYear = v1;
    v2 = *MEMORY[0x1E695E5D8];
    v3 = CalCopyTimeZone();
    v4 = v3;
    CFDateFormatterSetProperty(v1, v2, v3);

    CFRelease(v0);
  }
}

id _CUIKTimeZoneForChoice(void *a1)
{
  if (a1 == 2)
  {
    a1 = CFTimeZoneCreateWithName(0, @"GMT", 1u);
  }

  else if (a1 == 1)
  {
    a1 = CalCopyTimeZone();
  }

  else if (!a1)
  {
    a1 = CalCopySystemTimeZone();
  }

  return a1;
}

void CUIKDetermineWeekStart()
{
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  _CUIKDetermineWeekStart();

  os_unfair_lock_unlock(&lock);
}

id CUIKTimeZoneForChoice(void *a1)
{
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  return _CUIKTimeZoneForChoice(a1);
}

uint64_t CUIKCurrentLocaleRequiresUnabbrevatedMonthNames()
{
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  if (CUIKCurrentLocaleRequiresUnabbrevatedMonthNames_hasChecked != 1 || __languagesRequiringUnabbreviatedMonthNames == 0)
  {
    v1 = [MEMORY[0x1E695DF58] currentLocale];
    v2 = [v1 objectForKey:*MEMORY[0x1E695D9B0]];

    v3 = __languagesRequiringUnabbreviatedMonthNames;
    if (!__languagesRequiringUnabbreviatedMonthNames)
    {
      __languagesRequiringUnabbreviatedMonthNames = &unk_1F4ABED08;

      v3 = __languagesRequiringUnabbreviatedMonthNames;
    }

    CUIKCurrentLocaleRequiresUnabbrevatedMonthNames_usesFullLengthMonthNames = [v3 containsObject:v2];
    CUIKCurrentLocaleRequiresUnabbrevatedMonthNames_hasChecked = 1;
  }

  os_unfair_lock_unlock(&lock);
  return CUIKCurrentLocaleRequiresUnabbrevatedMonthNames_usesFullLengthMonthNames;
}

uint64_t CUIKCurrentLocaleRequiresIndianLanguageAdjustments()
{
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  if (CUIKCurrentLocaleRequiresIndianLanguageAdjustments_hasChecked != 1 || __languagesAlwaysRequiringIndianLanguageAdjustments == 0)
  {
    v1 = [MEMORY[0x1E695DF58] currentLocale];
    v2 = [v1 objectForKey:*MEMORY[0x1E695D9B0]];

    v3 = __languagesAlwaysRequiringIndianLanguageAdjustments;
    if (!__languagesAlwaysRequiringIndianLanguageAdjustments)
    {
      __languagesAlwaysRequiringIndianLanguageAdjustments = &unk_1F4ABED20;

      v3 = &unk_1F4ABED20;
    }

    CUIKCurrentLocaleRequiresIndianLanguageAdjustments_usesIndianLanguageAdjustments = [v3 containsObject:v2];
    CUIKCurrentLocaleRequiresIndianLanguageAdjustments_hasChecked = 1;
  }

  os_unfair_lock_unlock(&lock);
  return CUIKCurrentLocaleRequiresIndianLanguageAdjustments_usesIndianLanguageAdjustments;
}

id CUIKStringVeryShortAbbreviationForMonth(int a1)
{
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v2 = __MonthVeryShortAbbreviationsStandalone;
  if (!__MonthVeryShortAbbreviationsStandalone)
  {
    v3 = _SharedDateFormatter();
    v4 = CFDateFormatterCopyProperty(v3, *MEMORY[0x1E695E5F8]);
    v5 = __MonthVeryShortAbbreviationsStandalone;
    __MonthVeryShortAbbreviationsStandalone = v4;

    v2 = __MonthVeryShortAbbreviationsStandalone;
  }

  if ([v2 count] >= a1)
  {
    v6 = [__MonthVeryShortAbbreviationsStandalone objectAtIndex:a1 - 1];
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(&lock);

  return v6;
}

id CUIKStringAbbreviationForMonth(int a1)
{
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v2 = __MonthAbbreviationsStandalone;
  if (!__MonthAbbreviationsStandalone)
  {
    v3 = _SharedDateFormatter();
    v4 = CFDateFormatterCopyProperty(v3, *MEMORY[0x1E695E5A0]);
    v5 = __MonthAbbreviationsStandalone;
    __MonthAbbreviationsStandalone = v4;

    v2 = __MonthAbbreviationsStandalone;
  }

  if ([v2 count] >= a1)
  {
    v6 = [__MonthAbbreviationsStandalone objectAtIndex:a1 - 1];
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(&lock);

  return v6;
}

id CUIKStringForDayOfWeekNotStandalone(unsigned int a1)
{
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v2 = _SharedDateFormatter();
  v3 = CFDateFormatterCopyProperty(v2, *MEMORY[0x1E695E610]);
  if ([v3 count] <= a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 objectAtIndex:a1];
  }

  os_unfair_lock_unlock(&lock);

  return v4;
}

id CUIKWeekdayAbbreviations()
{
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v0 = _CUIKWeekdayAbbreviations();
  os_unfair_lock_unlock(&lock);

  return v0;
}

id _CUIKWeekdayAbbreviations()
{
  v0 = __WeekdayAbbreviations;
  if (!__WeekdayAbbreviations)
  {
    v1 = _SharedDateFormatter();
    v2 = CFDateFormatterCopyProperty(v1, *MEMORY[0x1E695E5B0]);
    v3 = __WeekdayAbbreviations;
    __WeekdayAbbreviations = v2;

    v0 = __WeekdayAbbreviations;
  }

  return v0;
}

id CUIKStringAbbreviationForDayOfWeek(unsigned int a1)
{
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v2 = _CUIKWeekdayAbbreviations();
  if ([v2 count] <= a1)
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 objectAtIndexedSubscript:a1];
  }

  os_unfair_lock_unlock(&lock);

  return v3;
}

id CUIKStringForHourWithoutDesignator(unsigned int a1)
{
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  if (!__HourSymbolsWithoutDesignator)
  {
    v2 = __Show24Hours;
    if (!__Show24Hours)
    {
      _CUIKDetermineShortTimeParameters();
      v2 = __Show24Hours;
    }

    if (v2 == 2)
    {
      _initStandardTimeFormatter();
      v3 = __standardTimeFormatter;
      CFRetain(__standardTimeFormatter);
      if (!v3)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }

    v4 = CPDateFormatStringForFormatType();
    if (v4)
    {
      v5 = _SharedDateFormatter();
      v3 = v5;
      if (v5)
      {
        CFRetain(v5);
        CFDateFormatterSetFormat(v3, v4);
      }
    }

    else
    {
      v3 = 0;
    }

    if (v3)
    {
LABEL_14:
      v6 = CalTimeZoneCopyCFTimeZone();
      v7 = *MEMORY[0x1E695E5D8];
      CFDateFormatterSetProperty(v3, *MEMORY[0x1E695E5D8], v6);
      v8 = 24;
      v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:24];
      v10 = 0x50B000007D7;
      do
      {
        CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
        StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(0, v3, v11);
        [v9 addObject:StringWithAbsoluteTime];

        v10 += 0x1000000000000;
        --v8;
      }

      while (v8);
      if (v6)
      {
        CFRelease(v6);
      }

      v13 = CalCopySystemTimeZone();
      CFDateFormatterSetProperty(v3, v7, v13);
      CFRelease(v13);
      CFRelease(v3);
      v14 = __HourSymbolsWithoutDesignator;
      __HourSymbolsWithoutDesignator = v9;
    }
  }

LABEL_19:
  if (a1 == 24)
  {
    v15 = 0;
  }

  else
  {
    v15 = a1;
  }

  v16 = [__HourSymbolsWithoutDesignator objectAtIndex:v15];
  os_unfair_lock_unlock(&lock);

  return v16;
}

id CUIKStringForDate(void *a1, int a2)
{
  v3 = a1;
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v4 = CalCopyTimeZone();
  v5 = v3;
  v6 = v4;
  if (a2)
  {
    v7 = &__dateFormatterWithYear;
  }

  else
  {
    v7 = &__dateFormatterWithoutYear;
  }

  v8 = *v7;
  if (!*v7)
  {
    v9 = CFLocaleCopyCurrent();
    v10 = CFDateFormatterCreate(0, v9, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
    *v7 = v10;
    v11 = CPDateFormatStringForFormatType();
    CFDateFormatterSetFormat(v10, v11);
    CFRelease(v9);
    v8 = *v7;
  }

  v12 = _stringForFormatterInTimeZone(v5, v8, v6, 0);

  os_unfair_lock_unlock(&lock);

  return v12;
}

id CUIKShortStringForDateWithMonthAndYear(void *a1)
{
  v1 = RegisterForInvalidation_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v3 = _SharedDateFormatter();
  v4 = CPDateFormatStringForFormatType();
  CFDateFormatterSetFormat(v3, v4);
  v5 = CalCopyTimeZone();
  v6 = v5;
  v7 = _stringForFormatterInTimeZone(v2, v3, v5, 0);

  os_unfair_lock_unlock(&lock);

  return v7;
}

__CFString *CUIKStringForDateWithCommaAndYear(void *a1)
{
  v1 = RegisterForInvalidation_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  _initDateFormatterWithCommaAndYear();
  StringWithDate = CFDateFormatterCreateStringWithDate(0, __dateFormatterWithCommaAndYear, v2);

  os_unfair_lock_unlock(&lock);

  return StringWithDate;
}

__CFString *CUIKLongStringForDateWithCommaAndYear(void *a1)
{
  v1 = RegisterForInvalidation_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  _initLongDateFormatterWithCommaAndYear();
  StringWithDate = CFDateFormatterCreateStringWithDate(0, __longDateFormatterWithCommaAndYear, v2);

  os_unfair_lock_unlock(&lock);

  return StringWithDate;
}

__CFString *CUIKStringForDateComponents(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  if (a3)
  {
    v7 = &__dateFormatterWithYear;
  }

  else
  {
    v7 = &__dateFormatterWithoutYear;
  }

  v8 = *v7;
  if (!*v7)
  {
    v9 = CFLocaleCopyCurrent();
    v10 = CFDateFormatterCreate(0, v9, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
    *v7 = v10;
    v11 = CPDateFormatStringForFormatType();
    CFDateFormatterSetFormat(v10, v11);
    v12 = [v6 timeZone];

    if (v12)
    {
      v13 = *v7;
      v14 = *MEMORY[0x1E695E5D8];
      v15 = [v6 timeZone];
      CFDateFormatterSetProperty(v13, v14, v15);
    }

    CFRelease(v9);
    v8 = *v7;
  }

  v16 = [v6 dateFromComponents:v5];
  StringWithDate = CFDateFormatterCreateStringWithDate(0, v8, v16);
  os_unfair_lock_unlock(&lock);

  return StringWithDate;
}

id CUIKDayOfMonthStringForDate(void *a1)
{
  v1 = MEMORY[0x1E696AB78];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = [MEMORY[0x1E695DFE8] calendarTimeZone];
  [v3 setTimeZone:v4];

  [v3 setDateFormat:@"d"];
  v5 = [v3 stringFromDate:v2];

  return v5;
}

__CFString *CUIKShortStringForDay(void *a1)
{
  v1 = RegisterForInvalidation_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  _initShortDayFormatter();
  StringWithDate = CFDateFormatterCreateStringWithDate(0, __shortDayFormatter, v2);

  os_unfair_lock_unlock(&lock);

  return StringWithDate;
}

__CFString *CUIKLongStringForWeekday(void *a1)
{
  v1 = RegisterForInvalidation_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v3 = _SharedDateFormatter();
  v4 = CPDateFormatStringForFormatType();
  CFDateFormatterSetFormat(v3, v4);
  StringWithDate = CFDateFormatterCreateStringWithDate(0, v3, v2);

  os_unfair_lock_unlock(&lock);

  return StringWithDate;
}

id CUIKStringForMonth(void *a1)
{
  v1 = a1;
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v2 = __monthNameFormatter;
  if (!__monthNameFormatter)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v4 = __monthNameFormatter;
    __monthNameFormatter = v3;

    [__monthNameFormatter setDateFormat:@"LLL"];
    v5 = __monthNameFormatter;
    v6 = CalCopyTimeZone();
    [v5 setTimeZone:v6];

    v2 = __monthNameFormatter;
  }

  v7 = [v2 stringFromDate:v1];
  os_unfair_lock_unlock(&lock);

  return v7;
}

id CUIKLongStringForMonthWithFormattingContext(void *a1, uint64_t a2)
{
  v3 = a1;
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v4 = __longMonthNameFormatter;
  if (!__longMonthNameFormatter)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v6 = __longMonthNameFormatter;
    __longMonthNameFormatter = v5;

    [__longMonthNameFormatter setDateFormat:@"LLLL"];
    v7 = __longMonthNameFormatter;
    v8 = CalCopyTimeZone();
    [v7 setTimeZone:v8];

    v4 = __longMonthNameFormatter;
  }

  [v4 setFormattingContext:a2];
  v9 = [__longMonthNameFormatter stringFromDate:v3];
  os_unfair_lock_unlock(&lock);

  return v9;
}

__CFString *CUIKShortStringMonthAndDay(void *a1)
{
  v1 = RegisterForInvalidation_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v3 = _SharedDateFormatter();
  v4 = CPDateFormatStringForFormatType();
  CFDateFormatterSetFormat(v3, v4);
  StringWithDate = CFDateFormatterCreateStringWithDate(0, v3, v2);

  os_unfair_lock_unlock(&lock);

  return StringWithDate;
}

__CFString *CUIKAbbreviatedStringMonthAndDay(void *a1)
{
  v1 = RegisterForInvalidation_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v3 = _SharedDateFormatter();
  v4 = CPDateFormatStringForFormatType();
  CFDateFormatterSetFormat(v3, v4);
  StringWithDate = CFDateFormatterCreateStringWithDate(0, v3, v2);

  os_unfair_lock_unlock(&lock);

  return StringWithDate;
}

id CUIKStringForDateAndDayOfWeekInTimezone(void *a1, uint64_t a2, void *a3)
{
  v5 = RegisterForInvalidation_onceToken;
  v6 = a3;
  v7 = a1;
  if (v5 != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v8 = _CUIKStringForDateAndDayOfWeekInTimezone(v7, a2, v6);

  os_unfair_lock_unlock(&lock);

  return v8;
}

id _CUIKStringForDateAndDayOfWeekInTimezone(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = _SharedDateFormatter();
  v7 = CPDateFormatStringForFormatType();
  CFDateFormatterSetFormat(v6, v7);
  v8 = _stringForFormatterInTimeZone(v5, v6, v4, 0);

  return v8;
}

id CUIKStringForDateAndDayOfWeekSystemTime(void *a1, uint64_t a2)
{
  v3 = RegisterForInvalidation_onceToken;
  v4 = a1;
  if (v3 != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v5 = CalCopySystemTimeZone();
  v6 = _CUIKStringForDateAndDayOfWeekInTimezone(v4, a2, v5);

  os_unfair_lock_unlock(&lock);

  return v6;
}

id CUIKStringForDateAndDayOfWeekInCalendarTimezone(void *a1, uint64_t a2)
{
  v3 = RegisterForInvalidation_onceToken;
  v4 = a1;
  if (v3 != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v5 = CalCopyTimeZone();
  v6 = _CUIKStringForDateAndDayOfWeekInTimezone(v4, a2, v5);

  os_unfair_lock_unlock(&lock);

  return v6;
}

id CUIKStringForDateAndDayOfWeekInCalendarTimezoneWithFormattingContext(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = RegisterForInvalidation_onceToken;
  v5 = a1;
  if (v4 != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v6 = _SharedDateFormatter();
  v7 = CPDateFormatStringForFormatType();
  CFDateFormatterSetFormat(v6, v7);
  v8 = CalCopyTimeZone();
  v9 = v8;
  v10 = _stringForFormatterInTimeZone(v5, v6, v8, a3);

  os_unfair_lock_unlock(&lock);

  return v10;
}

id CUIKLongDayStringForDateNoYear(void *a1)
{
  v1 = RegisterForInvalidation_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v3 = _SharedDateFormatter();
  v4 = CPDateFormatStringForFormatType();
  CFDateFormatterSetFormat(v3, v4);
  v5 = CalCopyTimeZone();
  v6 = v5;
  v7 = _stringForFormatterInTimeZone(v2, v3, v5, 0);

  os_unfair_lock_unlock(&lock);

  return v7;
}

id CUIKStringMonthDayYearWithComma(void *a1)
{
  v1 = a1;
  _initDateFormatterWithCommaAndYear();
  _initLongDateFormatterWithCommaAndYear();
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v2 = 0;
  v3 = __dateFormatterWithCommaAndYear;
  if (__dateFormatterWithCommaAndYear && __longDateFormatterWithCommaAndYear)
  {
    v4 = CFDateFormatterGetFormat(__dateFormatterWithCommaAndYear);
    if ([v4 rangeOfString:@"[a-zA-Z]+\\U0000200F\\/[a-zA-Z]+\\U0000200F\\/[a-zA-Z]+" options:1024] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = v3;
    }

    else
    {
      v5 = __longDateFormatterWithCommaAndYear;
    }

    v6 = CalCopyTimeZone();
    v7 = v6;
    v2 = _stringForFormatterInTimeZone(v1, v5, v6, 0);
  }

  os_unfair_lock_unlock(&lock);

  return v2;
}

id CUIKLongDayStringForDate(void *a1)
{
  v1 = RegisterForInvalidation_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v3 = _SharedDateFormatter();
  v4 = CPDateFormatStringForFormatType();
  CFDateFormatterSetFormat(v3, v4);
  v5 = CalCopyTimeZone();
  v6 = v5;
  v7 = _stringForFormatterInTimeZone(v2, v3, v5, 0);

  os_unfair_lock_unlock(&lock);

  return v7;
}

id CUIKAbbreviatedDayOfWeekForDate(void *a1)
{
  v1 = a1;
  v2 = CUIKCalendar();
  v3 = [v2 components:512 fromDate:v1];

  v4 = CUIKStringAbbreviationForDayOfWeek([v3 weekday] - 1);

  return v4;
}

id CUIKEnDashDayStringForDate(void *a1)
{
  v1 = a1;
  v2 = CUIKIsWeekdayNameFirst();
  v3 = CUIKCalendar();
  v4 = [v3 components:512 fromDate:v1];

  v5 = CUIKStringForDayOfWeek([v4 weekday] - 1);
  v6 = CUIKStringForDateInCalendarTimezone(v1);

  v7 = MEMORY[0x1E696AEC0];
  v8 = CUIKBundle();
  v9 = v8;
  if (v2)
  {
    v10 = [v8 localizedStringForKey:@"DAY_OF_WEEK_DASH_DAY_STRING_FORMAT" value:@"%@ – %@" table:0];
    [v7 stringWithFormat:v10, v5, v6];
  }

  else
  {
    v10 = [v8 localizedStringForKey:@"DAY_STRING_DASH_DAY_OF_WEEK_FORMAT" value:@"%@ – %@" table:0];
    [v7 stringWithFormat:v10, v6, v5];
  }
  v11 = ;

  return v11;
}

id CUIKAbbreviatedEnDashDayStringForDate(void *a1)
{
  v1 = a1;
  v2 = CUIKIsWeekdayNameFirst();
  v3 = CUIKCalendar();
  v4 = [v3 components:512 fromDate:v1];

  v5 = CUIKStringAbbreviationForDayOfWeek([v4 weekday] - 1);
  v6 = CUIKStringForDateInCalendarTimezone(v1);

  v7 = MEMORY[0x1E696AEC0];
  v8 = CUIKBundle();
  v9 = v8;
  if (v2)
  {
    v10 = [v8 localizedStringForKey:@"DAY_OF_WEEK_DASH_DAY_STRING_FORMAT" value:@"%@ – %@" table:0];
    [v7 stringWithFormat:v10, v5, v6];
  }

  else
  {
    v10 = [v8 localizedStringForKey:@"DAY_STRING_DASH_DAY_OF_WEEK_FORMAT" value:@"%@ – %@" table:0];
    [v7 stringWithFormat:v10, v6, v5];
  }
  v11 = ;

  return v11;
}

__CFString *CUIKLongDayLongMonthStringForDate(void *a1)
{
  v1 = RegisterForInvalidation_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  _initFullDayFormatter();
  StringWithDate = CFDateFormatterCreateStringWithDate(0, __fullDayFormatter, v2);

  os_unfair_lock_unlock(&lock);

  return StringWithDate;
}

__CFString *CUIKStringForDateAndTime(void *a1)
{
  v1 = RegisterForInvalidation_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v3 = _SharedDateFormatter();
  v4 = CPDateFormatStringForFormatType();
  CFDateFormatterSetFormat(v3, v4);
  StringWithDate = CFDateFormatterCreateStringWithDate(0, v3, v2);

  os_unfair_lock_unlock(&lock);

  return StringWithDate;
}

__CFString *CUIKLongStringForDateAndTime(void *a1)
{
  v1 = RegisterForInvalidation_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v3 = _SharedDateFormatter();
  Locale = CFDateFormatterGetLocale(v3);
  DateFormatFromTemplate = CFDateFormatterCreateDateFormatFromTemplate(0, @"EEE  MMM d, jmm", 0, Locale);
  CFDateFormatterSetFormat(v3, DateFormatFromTemplate);
  CFRelease(DateFormatFromTemplate);
  StringWithDate = CFDateFormatterCreateStringWithDate(0, v3, v2);

  os_unfair_lock_unlock(&lock);

  return StringWithDate;
}

__CFString *CUIKStringMonthDayYearTime(void *a1)
{
  v1 = RegisterForInvalidation_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v3 = _SharedDateFormatter();
  Locale = CFDateFormatterGetLocale(v3);
  DateFormatFromTemplate = CFDateFormatterCreateDateFormatFromTemplate(0, @"MMM d, yyyy, jmm", 0, Locale);
  CFDateFormatterSetFormat(v3, DateFormatFromTemplate);
  CFRelease(DateFormatFromTemplate);
  StringWithDate = CFDateFormatterCreateStringWithDate(0, v3, v2);

  os_unfair_lock_unlock(&lock);

  return StringWithDate;
}

id CUIKShortTZString(void *a1, void *a2)
{
  v3 = RegisterForInvalidation_onceToken;
  v4 = a2;
  v5 = a1;
  if (v3 != -1)
  {
    CUIKCalendar_cold_1();
  }

  v6 = [v5 abbreviationForDate:v4];

  return v6;
}

id CUIKStringForSystemTime(void *a1, char a2)
{
  v3 = RegisterForInvalidation_onceToken;
  v4 = a1;
  if (v3 != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v5 = CalCopySystemTimeZone();
  v6 = _CUIKStringForTimeInTimeZoneWithFormatter(v4, a2, v5, 0);

  os_unfair_lock_unlock(&lock);

  return v6;
}

id CUIKStringForGMTTime(void *a1, char a2)
{
  v3 = RegisterForInvalidation_onceToken;
  v4 = a1;
  if (v3 != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v5 = CFTimeZoneCreateWithName(0, @"GMT", 1u);
  v6 = _CUIKStringForTimeInTimeZoneWithFormatter(v4, a2, v5, 0);

  os_unfair_lock_unlock(&lock);

  return v6;
}

id CUIKStringForTime(void *a1, char a2)
{
  v3 = RegisterForInvalidation_onceToken;
  v4 = a1;
  if (v3 != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v5 = _CUIKStringForTimeWithSharedFormatter(v4, a2, 0);

  os_unfair_lock_unlock(&lock);

  return v5;
}

id CUIKStringForTimeWithTZ(void *a1, char a2, void *a3, __CFDateFormatter *a4)
{
  v7 = RegisterForInvalidation_onceToken;
  v8 = a3;
  v9 = a1;
  if (v7 != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v10 = _CUIKStringForTimeWithTZ(v9, a2, v8, a4);

  os_unfair_lock_unlock(&lock);

  return v10;
}

id _CUIKStringForTimeWithTZ(void *a1, char a2, void *a3, __CFDateFormatter *a4)
{
  v7 = MEMORY[0x1E696AEC0];
  v8 = a3;
  v9 = a1;
  v10 = CUIKBundle();
  v11 = [v10 localizedStringForKey:@"Time string annotated with short timezone value:for instance '4:00PM (PST)'" table:{@"%@ (%@)", 0}];
  v12 = _CUIKStringForTimeInTimeZoneWithFormatter(v9, a2, v8, a4);
  v13 = [v8 abbreviationForDate:v9];

  v14 = [v7 localizedStringWithFormat:v11, v12, v13];

  return v14;
}

id CUIKStringForTimeWithTZIfDivergent(void *a1, char a2, __CFDateFormatter *a3)
{
  v5 = a1;
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  if (_CUIKSystemAndCalendarTimezonesDiverge(v5))
  {
    v6 = CalCopyTimeZone();
    v7 = _CUIKStringForTimeWithTZ(v5, a2, v6, a3);
  }

  else
  {
    v7 = _CUIKStringForTimeWithSharedFormatter(v5, a2, a3);
  }

  os_unfair_lock_unlock(&lock);

  return v7;
}

BOOL _CUIKSystemAndCalendarTimezonesDiverge(void *a1)
{
  v1 = a1;
  v2 = CalCopySystemTimeZone();
  v3 = CalCopyTimeZone();
  v4 = _CUIKTimezonesDivergeAtDate(v2, v3, v1);

  return v4;
}

id _CUIKStringForTimeWithSharedFormatter(void *a1, char a2, __CFDateFormatter *a3)
{
  v5 = a1;
  v6 = CalCopyTimeZone();
  v7 = _CUIKStringForTimeInTimeZoneWithFormatter(v5, a2, v6, a3);

  return v7;
}

__CFString *CUIKStringForTimeWithoutDesignator(void *a1)
{
  v1 = RegisterForInvalidation_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  _initTimeWithoutDesignatorFormatter();
  StringWithDate = CFDateFormatterCreateStringWithDate(0, __timeWithoutDesignatorFormatter, v2);

  os_unfair_lock_unlock(&lock);

  return StringWithDate;
}

id CUIKDurationStringForDates(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = v4;
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v7 = _CUIKStringForTimeWithSharedFormatter(v5, 0, 0);
  v8 = _CUIKStringForTimeWithSharedFormatter(v6, 0, 0);
  if (_CUIKSystemAndCalendarTimezonesDiverge(v5))
  {
    v9 = _CUIKDurationFormatNoFromWithShortOneTimeZone();
    v10 = MEMORY[0x1E696AEC0];
    v11 = _CUIKShortTZStringForCalendarTZ(v5);
    v12 = [v10 localizedStringWithValidatedFormat:v9 validFormatSpecifiers:@"%@%@%@" error:0, v7, v8, v11];
  }

  else
  {
    v13 = CUIKBundle();
    v9 = [v13 localizedStringForKey:@"Detail duration format with '–'" value:@"%@ – %@" table:0];

    v12 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v9 validFormatSpecifiers:@"%@%@" error:0, v7, v8];
  }

  os_unfair_lock_unlock(&lock);

  return v12;
}

id CUIKDurationStringForDatesWithDash(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = v4;
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v7 = _CUIKStringForTimeWithSharedFormatter(v5, 0, 0);
  v8 = _CUIKStringForTimeWithSharedFormatter(v6, 0, 0);
  v9 = [v5 isEqual:v6];
  v10 = _CUIKSystemAndCalendarTimezonesDiverge(v5);
  if (!v9)
  {
    if (!v10)
    {
      v16 = CUIKBundle();
      v11 = [v16 localizedStringForKey:@"Detail duration format with '–'" value:@"%@ – %@" table:0];

      v15 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v11 validFormatSpecifiers:@"%@%@" error:0, v7, v8];
      goto LABEL_11;
    }

    v11 = _CUIKDurationFormatNoFromWithShortOneTimeZone();
    v14 = MEMORY[0x1E696AEC0];
    v13 = _CUIKShortTZStringForCalendarTZ(v5);
    [v14 localizedStringWithValidatedFormat:v11 validFormatSpecifiers:@"%@%@%@" error:0, v7, v8, v13];
    v15 = LABEL_8:;

LABEL_11:
    goto LABEL_12;
  }

  if (v10)
  {
    v11 = _CUIKSingularDatetimeFormatWithShortOneTimeZone();
    v12 = MEMORY[0x1E696AEC0];
    v13 = _CUIKShortTZStringForCalendarTZ(v5);
    [v12 localizedStringWithValidatedFormat:v11 validFormatSpecifiers:@"%@%@" error:0, v7, v13, v19];
    goto LABEL_8;
  }

  v15 = v7;
LABEL_12:
  os_unfair_lock_unlock(&lock);
  v17 = v15;

  return v15;
}

id CUIKDurationStringForTimeInterval(int a1, void *a2, int a3, int a4, int a5, double a6)
{
  v11 = a2;
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v12 = v11;
  v13 = v12;
  v14 = -a6;
  if (a6 >= 0.0)
  {
    v14 = a6;
  }

  if (v14 >= 86400.0)
  {
    v15 = vcvtmd_s64_f64(v14 / 86400.0);
    v14 = v14 - (86400 * v15);
  }

  else
  {
    v15 = 0;
  }

  if (v14 >= 3600.0)
  {
    v16 = vcvtmd_s64_f64(v14 / 3600.0);
    v14 = v14 - (3600 * v16);
  }

  else
  {
    v16 = 0;
  }

  if (v14 >= 60.0)
  {
    v17 = vcvtmd_s64_f64(v14 / 60.0);
    v14 = v14 - (60 * v17);
  }

  else
  {
    v17 = 0;
  }

  v18 = v14;
  if (v15 || v16 || v17 || v18)
  {
    v59 = v12;
    v56 = a4;
    v57 = a5;
    v58 = a1;
    v21 = objc_alloc_init(MEMORY[0x1E696AD60]);
    if (v15)
    {
      v22 = CUIKBundle();
      v23 = v22;
      v24 = a3;
      if (a3)
      {
        v25 = @"interval_days_short";
      }

      else
      {
        v25 = @"interval_days_long";
      }

      v26 = [v22 localizedStringForKey:v25 value:&stru_1F4AA8958 table:0];

      v27 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v26, v15];
      [v21 appendString:v27];

      if (!v16)
      {
        goto LABEL_32;
      }

      v28 = _CUIKIntervalSeparatorLocalizedString();
      [v21 appendString:v28];

      a3 = v24;
    }

    else if (!v16)
    {
      if (!v17)
      {
        if (!a5)
        {
          goto LABEL_52;
        }

        v31 = a3;
        if (!v18)
        {
          goto LABEL_52;
        }

        goto LABEL_48;
      }

      goto LABEL_41;
    }

    v29 = CUIKBundle();
    v30 = v29;
    v31 = a3;
    if (a3)
    {
      v32 = @"interval_hours_short";
    }

    else
    {
      v32 = @"interval_hours_long";
    }

    v33 = [v29 localizedStringForKey:v32 value:&stru_1F4AA8958 table:0];

    v34 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v33, v16];
    [v21 appendString:v34];

    if (v15)
    {
      goto LABEL_32;
    }

    if (!v17)
    {
      goto LABEL_45;
    }

    v39 = _CUIKIntervalSeparatorLocalizedString();
    [v21 appendString:v39];

    a3 = v31;
LABEL_41:
    v41 = CUIKBundle();
    v42 = v41;
    v31 = a3;
    if (a3)
    {
      v43 = @"interval_minutes_short";
    }

    else
    {
      v43 = @"interval_minutes_long";
    }

    v44 = [v41 localizedStringForKey:v43 value:&stru_1F4AA8958 table:0];

    v45 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v44, v17];
    [v21 appendString:v45];

LABEL_45:
    if (!v57 || !v18)
    {
      goto LABEL_52;
    }

    v46 = _CUIKIntervalSeparatorLocalizedString();
    [v21 appendString:v46];

LABEL_48:
    v47 = CUIKBundle();
    v48 = v47;
    if (v31)
    {
      v49 = @"interval_seconds_short";
    }

    else
    {
      v49 = @"interval_seconds_long";
    }

    v50 = [v47 localizedStringForKey:v49 value:&stru_1F4AA8958 table:0];

    v51 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v50, v18];
    [v21 appendString:v51];

LABEL_52:
    if (a6 < 0.0 && v56)
    {
      v52 = MEMORY[0x1E696AEC0];
      v53 = CUIKBundle();
      v54 = [v53 localizedStringForKey:@"%@ before travel time" value:&stru_1F4AA8958 table:0];
      v20 = [v52 localizedStringWithFormat:v54, v21];

      goto LABEL_55;
    }

LABEL_32:
    if (v58)
    {
      v35 = MEMORY[0x1E696AEC0];
      v36 = CUIKBundle();
      v37 = v36;
      v13 = v59;
      if (a6 >= 0.0)
      {
        v38 = @"%@ after";
      }

      else
      {
        v38 = @"%@ before";
      }

      v40 = [v36 localizedStringForKey:v38 value:&stru_1F4AA8958 table:0];
      v20 = [v35 stringWithFormat:v40, v21];

      goto LABEL_56;
    }

    v20 = v21;
LABEL_55:
    v13 = v59;
LABEL_56:

    goto LABEL_57;
  }

  if (a4)
  {
    v19 = CUIKBundle();
    v20 = [v19 localizedStringForKey:@"At start of travel time" value:&stru_1F4AA8958 table:0];
  }

  else
  {
    v20 = v12;
  }

LABEL_57:

  os_unfair_lock_unlock(&lock);

  return v20;
}

id CUIKTimezoneClarificationStringForDates(void *a1, void *a2, void *a3, void *a4, int a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [MEMORY[0x1E695DFE8] calendarTimeZone];
  }

  v14 = v13;
  if (v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = v13;
  }

  v16 = v15;
  v17 = _CUIKStringForTimeInTimeZoneWithFormatter(v9, 0, v14, 0);
  v18 = _CUIKStringForTimeInTimeZoneWithFormatter(v10, 0, v16, 0);
  v34 = v14;
  if ([v14 isEquivalentTo:v16])
  {
    if ([v9 isEqual:v10])
    {
      v19 = _CUIKSingularDatetimeFormatWithShortOneTimeZone();
      v20 = MEMORY[0x1E696AEC0];
      v21 = [v14 abbreviationForDate:v9];
      [v20 localizedStringWithValidatedFormat:v19 validFormatSpecifiers:@"%@%@" error:0, v17, v21, v32];
    }

    else
    {
      if (a5)
      {
        v19 = _CUIKDurationFormatNoFromWithShortOneTimeZone();
      }

      else
      {
        v29 = CUIKBundle();
        v19 = [v29 localizedStringForKey:@"from %@ to %@ (%@)" value:&stru_1F4AA8958 table:0];
      }

      v30 = MEMORY[0x1E696AEC0];
      v21 = [v14 abbreviationForDate:v9];
      [v30 localizedStringWithValidatedFormat:v19 validFormatSpecifiers:@"%@%@%@" error:0, v17, v18, v21];
    }
    v28 = ;
  }

  else
  {
    v22 = CUIKBundle();
    v23 = v22;
    if (a5)
    {
      v24 = @"%@ (%@) – %@ (%@)";
    }

    else
    {
      v24 = @"from %@ (%@) to %@ (%@)";
    }

    v19 = [v22 localizedStringForKey:v24 value:&stru_1F4AA8958 table:0];

    v25 = MEMORY[0x1E696AEC0];
    v21 = [v14 abbreviationForDate:v9];
    [v16 abbreviationForDate:v10];
    v33 = v11;
    v27 = v26 = v10;
    v28 = [v25 localizedStringWithValidatedFormat:v19 validFormatSpecifiers:@"%@%@%@%@" error:0, v17, v21, v18, v27];

    v10 = v26;
    v11 = v33;
  }

  os_unfair_lock_unlock(&lock);

  return v28;
}

id _CUIKSingularDatetimeFormatWithShortOneTimeZone()
{
  v0 = CUIKBundle();
  v1 = [v0 localizedStringForKey:@"%@ (%@)" value:&stru_1F4AA8958 table:0];

  return v1;
}

id _CUIKDurationFormatNoFromWithShortOneTimeZone()
{
  v0 = CUIKBundle();
  v1 = [v0 localizedStringForKey:@"%@ – %@ (%@)" value:&stru_1F4AA8958 table:0];

  return v1;
}

id CUIKTimeIntervalStringForDates(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v5 = __Show24Hours;
  if (!__Show24Hours)
  {
    _CUIKDetermineShortTimeParameters();
    v5 = __Show24Hours;
  }

  if (v5 == 2)
  {
    v6 = @"Hm";
  }

  else
  {
    v6 = @"jm";
  }

  v7 = __intervalFormatters;
  if (!__intervalFormatters)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = __intervalFormatters;
    __intervalFormatters = v8;

    v7 = __intervalFormatters;
  }

  v10 = [v7 objectForKey:v6];
  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x1E696AB88]);
    [v10 setDateTemplate:v6];
    [__intervalFormatters setObject:v10 forKey:v6];
  }

  v11 = [v10 stringFromDate:v3 toDate:v4];
  os_unfair_lock_unlock(&lock);

  return v11;
}

__CFString *CUIKStringForWeekdayNoYear(void *a1)
{
  v1 = RegisterForInvalidation_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v3 = _SharedDateFormatter();
  v4 = CPDateFormatStringForFormatType();
  CFDateFormatterSetFormat(v3, v4);
  StringWithDate = CFDateFormatterCreateStringWithDate(0, v3, v2);

  os_unfair_lock_unlock(&lock);

  return StringWithDate;
}

id CUIKStringForMonthYearWithFormattingContext(void *a1, uint64_t a2)
{
  v3 = a1;
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v4 = __monthYearFormatter;
  if (!__monthYearFormatter)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v6 = __monthYearFormatter;
    __monthYearFormatter = v5;

    v7 = __monthYearFormatter;
    v8 = CPDateFormatStringForFormatType();
    [v7 setDateFormat:v8];

    v9 = __monthYearFormatter;
    v10 = CalCopyTimeZone();
    [v9 setTimeZone:v10];

    v4 = __monthYearFormatter;
  }

  [v4 setFormattingContext:a2];
  v11 = [__monthYearFormatter stringFromDate:v3];
  os_unfair_lock_unlock(&lock);

  return v11;
}

id CUIKShortStringForMonthYear(void *a1)
{
  v1 = a1;
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  if (!__monthYearShortFormatString)
  {
    v2 = MEMORY[0x1E696AB78];
    v3 = [MEMORY[0x1E695DF58] currentLocale];
    v4 = [v2 dateFormatFromTemplate:@"MMMy" options:0 locale:v3];
    v5 = __monthYearShortFormatString;
    __monthYearShortFormatString = v4;

    v6 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v7 = CUIKShortStringForMonthYear__shortMonthYearFormatter;
    CUIKShortStringForMonthYear__shortMonthYearFormatter = v6;

    [CUIKShortStringForMonthYear__shortMonthYearFormatter setDateFormat:__monthYearShortFormatString];
    v8 = CUIKShortStringForMonthYear__shortMonthYearFormatter;
    v9 = CalCopyTimeZone();
    [v8 setTimeZone:v9];
  }

  v10 = [CUIKShortStringForMonthYear__shortMonthYearFormatter stringFromDate:v1];
  os_unfair_lock_unlock(&lock);

  return v10;
}

__CFString *CUIKVeryShortStringForMonthYear(void *a1)
{
  v1 = a1;
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v2 = _SharedDateFormatter();
  v3 = __monthYearVeryShortFormatString;
  if (!__monthYearVeryShortFormatString)
  {
    v4 = CFLocaleCopyCurrent();
    __monthYearVeryShortFormatString = CFDateFormatterCreateDateFormatFromTemplate(0, @"My", 0, v4);
    CFRelease(v4);
    v3 = __monthYearVeryShortFormatString;
  }

  CFDateFormatterSetFormat(v2, v3);
  StringWithDate = CFDateFormatterCreateStringWithDate(0, v2, v1);
  os_unfair_lock_unlock(&lock);

  return StringWithDate;
}

void CUIKGetHourDesignators(void *a1, void *a2)
{
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  if (a1)
  {
    v4 = __AMDesignator;
    if (!__AMDesignator)
    {
      v5 = _SharedDateFormatter();
      v6 = CFDateFormatterCopyProperty(v5, *MEMORY[0x1E695E538]);
      v7 = __AMDesignator;
      __AMDesignator = v6;

      v4 = __AMDesignator;
    }

    *a1 = v4;
  }

  if (a2)
  {
    v8 = __PMDesignator;
    if (!__PMDesignator)
    {
      v9 = _SharedDateFormatter();
      v10 = CFDateFormatterCopyProperty(v9, *MEMORY[0x1E695E580]);
      v11 = __PMDesignator;
      __PMDesignator = v10;

      v8 = __PMDesignator;
    }

    *a2 = v8;
  }

  os_unfair_lock_unlock(&lock);
}

void CUIKInvalidateToday()
{
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v0 = __TodayComponents;
  __TodayComponents = 0;

  v1 = __TodayDate;
  __TodayDate = 0;

  os_unfair_lock_unlock(&lock);
}

uint64_t CUIKInvalidateTodayAndDetermineIfChanged()
{
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  v1 = __todayInvalidationTimerWrapper;

  return [v1 todayChangedAfterInvalidation];
}

id CUIKNowComponentsSystemTime()
{
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v0 = [MEMORY[0x1E695DEE8] currentCalendar];
  v1 = _CUIKNowComponentsInCalendar(v0);

  os_unfair_lock_unlock(&lock);

  return v1;
}

uint64_t CUIKNSDateIsToday(void *a1)
{
  v1 = RegisterForInvalidation_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v3 = _CUIKCalendar();
  v4 = _CUIKTodayDate();
  v5 = [v3 components:30 fromDate:v4];
  v6 = [v3 components:30 fromDate:v2];

  v7 = [v5 isEqual:v6];
  os_unfair_lock_unlock(&lock);

  return v7;
}

uint64_t CUIKNSDateIsThisYear(void *a1)
{
  v1 = RegisterForInvalidation_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v3 = _CUIKCalendar();
  v4 = _CUIKTodayDate();
  v5 = [v3 components:6 fromDate:v4];
  v6 = [v3 components:6 fromDate:v2];

  v7 = [v5 isEqual:v6];
  os_unfair_lock_unlock(&lock);

  return v7;
}

uint64_t CUIKNumberOfSecondsForCurrentTime()
{
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v0 = _CUIKTodayDate();
  [v0 timeIntervalSinceReferenceDate];
  v2 = v1;

  v3 = _CUIKNowDate();
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  os_unfair_lock_unlock(&lock);
  return (v5 - v2);
}

BOOL CUIKSpaceBetweenDesignatorsAndHour()
{
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v0 = __SpaceAroundDesignator;
  if (!__SpaceAroundDesignator)
  {
    _CUIKDetermineShortTimeParameters();
    v0 = __SpaceAroundDesignator;
  }

  v1 = v0 == 2;
  os_unfair_lock_unlock(&lock);
  return v1;
}

id CUIKLocalizedStringForIntegerWithMinimumTwoDigits(uint64_t a1)
{
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v2 = __numberFormatterWithTwoDigitsMinimum;
  if (!__numberFormatterWithTwoDigitsMinimum)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v4 = __numberFormatterWithTwoDigitsMinimum;
    __numberFormatterWithTwoDigitsMinimum = v3;

    v5 = [MEMORY[0x1E695DF58] currentLocale];
    [__numberFormatterWithTwoDigitsMinimum setLocale:v5];

    [__numberFormatterWithTwoDigitsMinimum setMinimumIntegerDigits:2];
    v2 = __numberFormatterWithTwoDigitsMinimum;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  v7 = [v2 stringFromNumber:v6];

  os_unfair_lock_unlock(&lock);

  return v7;
}

id CUIKDateForNewCalendarItemOnDay(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (RegisterForInvalidation_onceToken == -1)
  {
    if (v1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  CUIKCalendar_cold_1();
  if (!v2)
  {
LABEL_3:
    v2 = [MEMORY[0x1E695DF00] CalSimulatedDateForNow];
  }

LABEL_4:
  os_unfair_lock_lock(&lock);
  v3 = _CUIKCalendar();
  v4 = _CUIKNowComponents();
  os_unfair_lock_unlock(&lock);
  v5 = [v3 components:254 fromDate:v2];
  [v5 setHour:{objc_msgSend(v4, "hour")}];
  [v5 setMinute:0];
  [v5 setSecond:0];
  if ([v3 isDateInToday:v2])
  {
    [v5 setHour:{objc_msgSend(v4, "hour") + 1}];
    v6 = [v3 dateFromComponents:v5];
    if ([v3 isDateInToday:v6])
    {
      goto LABEL_8;
    }

    [v5 setHour:{objc_msgSend(v4, "hour")}];
  }

  v6 = [v3 dateFromComponents:v5];
LABEL_8:

  return v6;
}

id CUIKDateRangeForNewEventOnDay(void *a1)
{
  v1 = CUIKDateForNewCalendarItemOnDay(a1);
  v2 = [MEMORY[0x1E6992FB0] shared];
  [v2 defaultEventDuration];
  v4 = v3;

  v5 = [objc_alloc(MEMORY[0x1E6992F70]) initWithStartDate:v1 duration:v4];

  return v5;
}

void CUIKGetWeekendDays(_DWORD *a1, _DWORD *a2)
{
  if (RegisterForInvalidation_onceToken != -1)
  {
    CUIKCalendar_cold_1();
  }

  os_unfair_lock_lock(&lock);
  _CUIKFindWeekendsIfNeeded();
  if (a1)
  {
    *a1 = __weekendDays;
  }

  if (a2)
  {
    *a2 = HIDWORD(__weekendDays);
  }

  os_unfair_lock_unlock(&lock);
}

void InvalidateFormatter()
{
  os_unfair_lock_lock(&lock);
  ++__calendarGeneration;
  ++__overlayCalendarGeneration;
  if (__formatter)
  {
    CFRelease(__formatter);
    __formatter = 0;
  }

  if (__standardTimeFormatter)
  {
    CFRelease(__standardTimeFormatter);
    __standardTimeFormatter = 0;
  }

  if (__shortDayFormatter)
  {
    CFRelease(__shortDayFormatter);
    __shortDayFormatter = 0;
  }

  if (__fullDayFormatter)
  {
    CFRelease(__fullDayFormatter);
    __fullDayFormatter = 0;
  }

  if (__numberFormatter)
  {
    CFRelease(__numberFormatter);
    __numberFormatter = 0;
  }

  v0 = __numberFormatterWithTwoDigitsMinimum;
  if (__numberFormatterWithTwoDigitsMinimum)
  {
    __numberFormatterWithTwoDigitsMinimum = 0;
  }

  if (__dateFormatterWithYear)
  {
    CFRelease(__dateFormatterWithYear);
    __dateFormatterWithYear = 0;
  }

  if (__dateFormatterWithoutYear)
  {
    CFRelease(__dateFormatterWithoutYear);
    __dateFormatterWithoutYear = 0;
  }

  if (__dateFormatterWithCommaAndYear)
  {
    CFRelease(__dateFormatterWithCommaAndYear);
    __dateFormatterWithCommaAndYear = 0;
  }

  if (__longDateFormatterWithCommaAndYear)
  {
    CFRelease(__longDateFormatterWithCommaAndYear);
    __longDateFormatterWithCommaAndYear = 0;
  }

  if (__timeWithoutDesignatorFormatter)
  {
    CFRelease(__timeWithoutDesignatorFormatter);
    __timeWithoutDesignatorFormatter = 0;
  }

  v1 = __MonthAbbreviationsStandalone;
  __MonthAbbreviationsStandalone = 0;

  v2 = __MonthVeryShortAbbreviationsStandalone;
  __MonthVeryShortAbbreviationsStandalone = 0;

  v3 = __MonthNames;
  __MonthNames = 0;

  v4 = __WeekdayAbbreviations;
  __WeekdayAbbreviations = 0;

  v5 = __WeekdayVeryShortAbbreviations;
  __WeekdayVeryShortAbbreviations = 0;

  v6 = __HourSymbols;
  __HourSymbols = 0;

  v7 = __HourSymbolsWithoutDesignator;
  __HourSymbolsWithoutDesignator = 0;

  v8 = __PMDesignator;
  __PMDesignator = 0;

  v9 = __AMDesignator;
  __AMDesignator = 0;

  v10 = __intervalFormatters;
  __intervalFormatters = 0;

  v11 = __dateFormattersForTimeZones;
  __dateFormattersForTimeZones = 0;

  v12 = 0;
  __DesignatorsBeforeHour = 0;
  __Show24Hours = 0;
  __SpaceAroundDesignator = 0;
  __IsWeekdayNameFirst = 0;
  __IsLocaleRightToLeft = 0;
  v13 = __localizedIntStringLoadFlags;
  do
  {
    if ((v13 << v12))
    {
      v14 = __localizedIntStrings[v12];
      __localizedIntStrings[v12] = 0;

      v13 = __localizedIntStringLoadFlags;
    }

    ++v12;
  }

  while (v12 != 32);
  __localizedIntStringLoadFlags = 0;
  v15 = __monthYearShortFormatString;
  __monthYearShortFormatString = 0;

  __monthYearVeryShortFormatString = 0;
  v16 = __monthNameFormatter;
  __monthNameFormatter = 0;

  v17 = __longMonthNameFormatter;
  __longMonthNameFormatter = 0;

  v18 = __monthYearFormatter;
  __monthYearFormatter = 0;

  v19 = __languagesRequiringUnabbreviatedMonthNames;
  __languagesRequiringUnabbreviatedMonthNames = 0;

  __isWeekStartValid = 0;
  __areWeekendDaysValid = 0;
  os_unfair_lock_unlock(&lock);
  [__todayInvalidationTimerWrapper invalidateTodayAndNotifyIfChanged];
  [MEMORY[0x1E6992F68] rebuildFormatters];
  v20 = [MEMORY[0x1E696AD88] defaultCenter];
  [v20 postNotificationName:@"CalLocaleChangedNotification" object:0];
}

id _CUIKStringForTimeInTimeZoneWithFormatter(void *a1, char a2, void *a3, __CFDateFormatter *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = __Show24Hours;
  if (!__Show24Hours)
  {
    _CUIKDetermineShortTimeParameters();
    v9 = __Show24Hours;
  }

  if (v9 == 2)
  {
    goto LABEL_10;
  }

  if (a2)
  {
    goto LABEL_10;
  }

  [v7 timeIntervalSinceReferenceDate];
  if (MEMORY[0x1CCAA84A0](v8) >> 56)
  {
    goto LABEL_10;
  }

  v10 = CPDateFormatStringForFormatType();
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = v10;
  if (!a4)
  {
    a4 = _SharedDateFormatter();
  }

  CFDateFormatterSetFormat(a4, v11);
  v12 = _stringForFormatterInTimeZone(v7, a4, v8, 0);

  if (!v12)
  {
LABEL_10:
    _initStandardTimeFormatter();
    v12 = _stringForFormatterInTimeZone(v7, __standardTimeFormatter, v8, 0);
  }

  return v12;
}

id _CUIKShortTZStringForCalendarTZ(void *a1)
{
  v1 = a1;
  v2 = CalCopyTimeZone();
  v3 = [v2 abbreviationForDate:v1];

  return v3;
}

id _CUIKIntervalSeparatorLocalizedString()
{
  v0 = CUIKBundle();
  v1 = [v0 localizedStringForKey:@" value:" table:{&stru_1F4AA8958, 0}];

  return v1;
}

void sub_1CAB83320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, id a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, id a61, char a62, uint64_t a63)
{
  objc_destroyWeak((v72 + 96));
  objc_destroyWeak(&a54);
  _Block_object_dispose(&a56, 8);
  objc_destroyWeak(&a61);
  _Block_object_dispose(&a62, 8);
  objc_destroyWeak(&a67);
  _Block_object_dispose(&a68, 8);
  _Block_object_dispose(&a72, 8);
  _Block_object_dispose(&STACK[0x218], 8);
  _Block_object_dispose(&STACK[0x248], 8);
  _Block_object_dispose((v73 - 160), 8);
  objc_destroyWeak(&STACK[0x2A8]);
  objc_destroyWeak((v73 - 200));
  _Block_object_dispose((v73 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *occurrenceKeyRetain(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a2 + 16);
  if (v3)
  {
    *(a2 + 16) = v3 + 1;
  }

  else
  {
    v4 = malloc_type_malloc(0x18uLL, 0x10000400CE834B2uLL);
    v5 = v2[1];
    *v4 = *v2;
    v4[1] = v5;
    *(v4 + 4) = 1;
    return v4;
  }

  return v2;
}

void occurrenceKeyRelease(int a1, _DWORD *a2)
{
  v2 = a2[4];
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v4 < 0 == v3)
  {
    a2[4] = v4;
    if (!v4)
    {
      free(a2);
    }
  }
}

uint64_t occurrenceKeyCopyDescription(uint64_t *a1)
{
  v1 = *(a1 + 2);
  v2 = *(a1 + 3);
  v3 = *a1;
  if (v2)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%i/%i@%lu", v2, v1, v3];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%i@%lu", v1, v3, v5];
  }

  return objc_claimAutoreleasedReturnValue();
}

void CUIKOccurrenceSetKeyMakeFromEvent(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v5 = [v3 objectID];
  v4 = [v3 startDate];

  CUIKOccurrenceSetKeyMake(v5, v4, a2);
}

void CUIKOccurrenceSetKeyMake(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0;
  v5 = a1;
  [a2 timeIntervalSinceReferenceDate];
  *a3 = v6;
  *(a3 + 8) = [v5 rowID];
  LODWORD(a2) = [v5 databaseID];

  *(a3 + 12) = a2;
  *(a3 + 16) = 0;
}

uint64_t CUIKParticipantDisplaySort(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v7 objectForKeyedSubscript:@"Event"];
  v9 = [v7 objectForKeyedSubscript:@"Organizer"];
  v10 = v5;
  v11 = v6;
  if ([v9 isEqualToParticipant:v10])
  {
    v12 = -1;
    goto LABEL_23;
  }

  if ([v9 isEqualToParticipant:v11])
  {
    v12 = 1;
    goto LABEL_23;
  }

  v13 = +[CUIKAttendeeHeuristics _participantRoleSortPriority];
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "participantRole")}];
  v15 = [v13 objectForKeyedSubscript:v14];
  v16 = [v15 integerValue];

  v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v11, "participantRole")}];
  v18 = [v13 objectForKeyedSubscript:v17];
  v19 = [v18 integerValue];

  if (v16 != v19)
  {
    if (v16 < v19)
    {
      v12 = -1;
    }

    else
    {
      v12 = 1;
    }

LABEL_22:

    goto LABEL_23;
  }

  v20 = +[CUIKAttendeeHeuristics _participantStatusSortPriority];
  v21 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "participantStatus")}];
  v22 = [v20 objectForKeyedSubscript:v21];
  v33 = [v22 integerValue];

  v23 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v11, "participantStatus")}];
  v24 = [v20 objectForKeyedSubscript:v23];
  v25 = [v24 integerValue];

  if (v33 < v25)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  if (v33 == v25)
  {
    v13 = [v7 objectForKeyedSubscript:@"DisplayNameCache"];
    v26 = [v10 URL];
    v27 = [v26 absoluteString];

    if (!v27 || ([v13 objectForKeyedSubscript:v27], (v28 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v28 = [CUIKAttendeeDescriptionGenerator displayNameForParticipant:v10 event:v8 options:0];
      if (v27)
      {
        [v13 setObject:v28 forKeyedSubscript:v27];
      }
    }

    v34 = v27;
    v29 = [v11 URL];
    v30 = [v29 absoluteString];

    if (!v30 || ([v13 objectForKeyedSubscript:v30], (v31 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v31 = [CUIKAttendeeDescriptionGenerator displayNameForParticipant:v11 event:v8 options:0];
      if (v30)
      {
        [v13 setObject:v31 forKeyedSubscript:v30];
      }
    }

    v12 = [v28 compare:v31 options:65];

    goto LABEL_22;
  }

LABEL_23:

  return v12;
}

void sub_1CAB8F6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 224), 8);
  _Block_object_dispose((v37 - 192), 8);
  _Block_object_dispose((v37 - 160), 8);
  _Block_object_dispose((v37 - 128), 8);
  _Block_object_dispose((v37 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CAB937A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose(&a56, 8);
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose(&STACK[0x240], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

CGImageRef CUIKCreateStripedImage(CGColor *a1, CGColor *a2, CGFloat a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v14.size.width = 9.0;
  v14.size.height = 9.0;
  Width = CGRectGetWidth(v14);
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = 9.0;
  v15.size.height = 9.0;
  Height = CGRectGetHeight(v15);
  if (_GetGenericRGBColorSpace_onceToken != -1)
  {
    CUIKCreateStripedImage_cold_1();
  }

  v8 = CGBitmapContextCreate(0, (Width * a3), (Height * a3), 8uLL, 0, _GetGenericRGBColorSpace_genericRGBColorSpace, 2u);
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = 9.0;
  v16.size.height = 9.0;
  v9 = CGRectGetHeight(v16);
  CGContextTranslateCTM(v8, 0.0, v9 * a3);
  CGContextScaleCTM(v8, a3, -a3);
  CGContextSetFillColorWithColor(v8, a1);
  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v17.size.width = 9.0;
  v17.size.height = 9.0;
  CGContextFillRect(v8, v17);
  CGContextSetLineWidth(v8, 3.0);
  CGContextSetStrokeColorWithColor(v8, a2);
  v12[0] = xmmword_1CAD58290;
  v12[1] = xmmword_1CAD582A0;
  v12[2] = xmmword_1CAD582B0;
  v12[3] = xmmword_1CAD582C0;
  v12[4] = xmmword_1CAD582D0;
  v12[5] = xmmword_1CAD582E0;
  CGContextStrokeLineSegments(v8, v12, 6uLL);
  CGContextFlush(v8);
  Image = CGBitmapContextCreateImage(v8);
  CGContextRelease(v8);
  return Image;
}

id CUIKCreateStripedUIImage(void *a1, void *a2, CGFloat a3)
{
  v6 = a1;
  v7 = a2;
  v8 = [a1 CGColor];
  v9 = [v7 CGColor];

  v10 = CUIKCreateStripedImage(v8, v9, a3);
  v11 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v10 scale:0 orientation:a3];
  CFRelease(v10);

  return v11;
}

uint64_t CUIKRecurrenceFrequencyForRepeatType(uint64_t a1)
{
  if ((a1 - 2) > 3)
  {
    return 0;
  }

  else
  {
    return qword_1CAD582F0[a1 - 2];
  }
}

uint64_t CUIKIntervalForRepeatType(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_1CAD58310[a1 - 1];
  }
}

id CUIKStringForRepeatType(unint64_t a1)
{
  v2 = CUIKBundle();
  v3 = v2;
  if (a1 > 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v2 localizedStringForKey:off_1E839AD70[a1] value:&stru_1F4AA8958 table:0];
  }

  return v4;
}

__CFString *CUIKAccessibilityIdentifierStringForRepeatType(unint64_t a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_1E839ADA8[a1];
  }
}

id CUIKStringForRepeatTypeDetail(uint64_t a1)
{
  v2 = 0;
  v3 = CUIKBundle();
  v4 = v3;
  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v5 = @"Every Day";
      }

      else
      {
        if (a1 != 2)
        {
          goto LABEL_18;
        }

        v5 = @"Every Week";
      }

      goto LABEL_16;
    }

    v5 = @"Never - repeat type detail";
    v6 = @"Never";
  }

  else
  {
    if (a1 <= 4)
    {
      if (a1 == 3)
      {
        v5 = @"Every 2 Weeks";
      }

      else
      {
        v5 = @"Every Month";
      }

      goto LABEL_16;
    }

    if (a1 == 5)
    {
      v5 = @"Every Year";
LABEL_16:
      v6 = &stru_1F4AA8958;
      goto LABEL_17;
    }

    if (a1 != 6)
    {
      goto LABEL_18;
    }

    v5 = @"Custom - repeat type detail";
    v6 = @"Custom";
  }

LABEL_17:
  v2 = [v3 localizedStringForKey:v5 value:v6 table:0];
LABEL_18:

  return v2;
}

__CFString *CUIKAccessibilityIdentifierStringForRepeatTypeDetail(unint64_t a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_1E839ADE0[a1];
  }
}

void CUIKGetTypeAndEndDateForRecurrenceRules(void *a1, void *a2, void *a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v47 = a1;
  v10 = a2;
  v11 = a3;
  v12 = [v47 count];
  v13 = v12;
  if (!v12)
  {
    v21 = 0;
    if (!a5)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  if (v12 != 1)
  {
    v21 = 0;
    v13 = 6;
    if (!a5)
    {
      goto LABEL_75;
    }

LABEL_74:
    *a5 = v13;
    goto LABEL_75;
  }

  v14 = [v47 objectAtIndex:0];
  v15 = [v14 monthsOfTheYear];
  v16 = [v14 daysOfTheWeek];
  v17 = [v16 count];
  v18 = [v14 interval];
  v19 = [v14 frequency];
  v13 = 6;
  if (v19 > 1)
  {
    if (v19 != 2)
    {
      if (v19 == 3)
      {
        v22 = [v15 count];
        v13 = 6;
        if (v18 == 1 && !v17)
        {
          if (!v22 || v22 == 1 && CUIKRecurrenceMonthMatchesAnyMonthSpecifiedInByMonthList(v15, v10, v11))
          {
            v20 = [v14 daysOfTheYear];
            if ([v20 count])
            {
              v13 = 6;
            }

            else
            {
              v33 = [v14 setPositions];
              if ([v33 count])
              {
                v13 = 6;
              }

              else
              {
                v46 = v20;
                v34 = [v14 weeksOfTheYear];
                if ([v34 count])
                {
                  v13 = 6;
                }

                else
                {
                  v35 = [v14 daysOfTheMonth];
                  v36 = [v35 count];
                  if (!v36 || v36 == 1 && CUIKRecurrenceDateMatchesAnyDaySpecifiedInByMonthDayList(v35, v10, v11))
                  {
                    v37 = v35;
                    v13 = 5;
                  }

                  else
                  {
                    v37 = v35;
                    v13 = 6;
                  }
                }

                v20 = v46;
              }
            }

            goto LABEL_68;
          }

          goto LABEL_33;
        }
      }

      goto LABEL_69;
    }

    v13 = 6;
    if (v18 != 1 || v17)
    {
      goto LABEL_69;
    }

    if ([v15 count])
    {
      goto LABEL_33;
    }

    v23 = [v14 daysOfTheMonth];
    v24 = [v23 count];
    v45 = v23;
    v25 = CUIKRecurrenceDateMatchesAnyDaySpecifiedInByMonthDayList(v23, v10, v11);
    v26 = v25;
    if (v24 == 1)
    {
      v27 = v25;
    }

    else
    {
      v27 = 0;
    }

    v43 = [v14 setPositions];
    if (![v43 count])
    {
      goto LABEL_40;
    }

    v41 = v26;
    v42 = v27;
    v28 = [v43 objectAtIndex:0];
    v29 = [v28 integerValue];

    if (v29 == -1)
    {
      if (v41)
      {
        v13 = 4;
      }

      else
      {
        v13 = 6;
      }

      goto LABEL_57;
    }

    v27 = v42;
    if (!v29)
    {
LABEL_40:
      if ((v24 == 0) | v27 & 1)
      {
        v30 = [MEMORY[0x1E695DEE8] currentCalendar];
        [v30 setTimeZone:v11];
        v31 = [v30 components:16 fromDate:v10];
        v32 = [v31 day];

        if ((v32 - 29) >= 3)
        {
          v13 = 4;
        }

        else
        {
          v13 = 6;
        }

        goto LABEL_57;
      }
    }

    v13 = 6;
LABEL_57:
    v20 = v45;

    goto LABEL_68;
  }

  if (v19)
  {
    if (v19 != 1)
    {
      goto LABEL_69;
    }

    if ((v18 - 1) <= 1 && ![v15 count])
    {
      v44 = [v14 setPositions];
      if ([v44 count] || v17 && (v17 != 1 || !CUIKRecurrenceDateMatchesAnyDaySpecifiedInByDayList(v16, v10, v11)))
      {
        v13 = 6;
      }

      else if (v18 == 1)
      {
        v13 = 2;
      }

      else
      {
        v13 = 3;
      }

      v20 = v44;
      goto LABEL_68;
    }

LABEL_33:
    v13 = 6;
    goto LABEL_69;
  }

  v13 = 6;
  if (v18 == 1 && !v17)
  {
    if ([v15 count])
    {
      goto LABEL_33;
    }

    v20 = [v14 daysOfTheMonth];
    if ([v20 count])
    {
      v13 = 6;
    }

    else
    {
      v13 = 1;
    }

LABEL_68:
  }

LABEL_69:
  v38 = [v14 recurrenceEnd];
  v39 = v38;
  if (v38)
  {
    v21 = [v38 endDate];

    if (v21)
    {
      v21 = [v39 endDate];
    }
  }

  else
  {
    v21 = 0;
  }

  if (a5)
  {
    goto LABEL_74;
  }

LABEL_75:
  if (a6)
  {
    v40 = v21;
    *a6 = v21;
  }
}

void sub_1CAB967BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CAB96FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CAB9793C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CAB97D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CAB98898(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 6);
  objc_exception_rethrow();
}

void __CUIKReminderColorDeserializer_block_invoke()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = getCUIKIReminderColorDeserializerClass_softClass;
  v8 = getCUIKIReminderColorDeserializerClass_softClass;
  if (!getCUIKIReminderColorDeserializerClass_softClass)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __getCUIKIReminderColorDeserializerClass_block_invoke;
    v4[3] = &unk_1E839A930;
    v4[4] = &v5;
    __getCUIKIReminderColorDeserializerClass_block_invoke(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  v2 = objc_alloc_init(v0);
  v3 = CUIKReminderColorDeserializer_deserializer;
  CUIKReminderColorDeserializer_deserializer = v2;
}

void sub_1CAB9AA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCUIKIReminderColorDeserializerClass_block_invoke(uint64_t a1)
{
  if (!CalendarUIKitInternalLibraryCore_frameworkLibrary)
  {
    CalendarUIKitInternalLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = objc_getClass("CUIKIReminderColorDeserializer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCUIKIReminderColorDeserializerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CalendarUIKitInternalLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CalendarUIKitInternalLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1CAB9AD5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CAB9C3D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CAB9E1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1CAB9E2D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CAB9E454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CAB9E690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CAB9EB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a46, 8);
  _Unwind_Resume(a1);
}

void sub_1CAB9FB0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 40));
  _Block_object_dispose((v27 - 160), 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CABA03F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 208), 8);
  _Unwind_Resume(a1);
}

id __GetDateFormatter()
{
  v0 = __DateFormatter;
  if (!__DateFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v2 = __DateFormatter;
    __DateFormatter = v1;

    [__DateFormatter setDateStyle:1];
    [__DateFormatter setTimeStyle:1];
    v0 = __DateFormatter;
  }

  return v0;
}

uint64_t sub_1CABA1254@<X0>(char *a1@<X8>)
{
  v189 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463118);
  v187 = *(v2 - 8);
  v188 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v167 = (&v145 - v3);
  v4 = sub_1CAD4D024();
  v159 = *(v4 - 8);
  v160 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v158 = &v145 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_1CAD4CE64();
  v150 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v153 = &v145 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463120);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v151 = &v145 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463128);
  v156 = *(v9 - 8);
  v157 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v155 = &v145 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463130);
  v190 = *(v11 - 8);
  v191 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v152 = &v145 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463138);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v166 = &v145 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v194 = &v145 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463140);
  v163 = *(v17 - 8);
  v164 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v149 = (&v145 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463148);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v165 = &v145 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v193 = &v145 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463150);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v186 = &v145 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v195 = &v145 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463158);
  v180 = *(v27 - 8);
  v181 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v161 = (&v145 - v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463160);
  v30 = MEMORY[0x1EEE9AC00](v29 - 8);
  v185 = &v145 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v204 = &v145 - v32;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463168);
  MEMORY[0x1EEE9AC00](v202);
  v201 = &v145 - v33;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463170);
  MEMORY[0x1EEE9AC00](v179);
  v200 = &v145 - v34;
  v192 = type metadata accessor for DefaultRepeatEditor();
  v197 = *(v192 - 8);
  v35 = *(v197 + 64);
  v36 = MEMORY[0x1EEE9AC00](v192);
  v176 = &v145 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v174 = &v145 - v37;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463178);
  v173 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v172 = &v145 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463180);
  v177 = *(v39 - 8);
  v178 = v39;
  MEMORY[0x1EEE9AC00](v39);
  v198 = &v145 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463188);
  v183 = *(v41 - 8);
  v184 = v41;
  v42 = MEMORY[0x1EEE9AC00](v41);
  v199 = &v145 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v203 = &v145 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4630E0);
  v46 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v145 - v47;
  if (qword_1EC462B80 != -1)
  {
    swift_once();
  }

  v50 = qword_1EC47D938;
  v49 = unk_1EC47D940;

  sub_1CAD4DC04();
  swift_getKeyPath();
  v205 = v45;
  sub_1CAD4DC24();

  v51 = *(v46 + 8);
  v147 = v48;
  v148 = v46 + 8;
  v146 = v51;
  v51(v48, v205);
  v52 = v233;
  v206 = v1;
  v53 = v234;
  v54 = qword_1EC465F88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463190);
  v55 = swift_allocObject();
  *(v55 + 16) = v52;
  *(v55 + 32) = v53;
  *(v55 + 40) = v50;
  *(v55 + 48) = v49;
  *(v55 + 56) = xmmword_1CAD58370;
  *(v55 + 72) = 0;
  *(v55 + 80) = v54;
  *(v55 + 88) = 7;

  v56 = sub_1CAD4CFC4();
  *&v233 = v55;
  DWORD2(v233) = v56;
  sub_1CAD4DBF4();
  v57 = v231;
  swift_getKeyPath();
  *&v231 = v57;
  sub_1CABA5318(&qword_1EC463198, type metadata accessor for RepeatViewModel);
  sub_1CAD4C424();

  LOBYTE(v54) = *(v57 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__showCustom);

  LOBYTE(v231) = v54;
  v58 = v174;
  sub_1CABA5C18(v206, v174);
  v170 = *(v197 + 80);
  v59 = (v170 + 16) & ~v170;
  v60 = swift_allocObject();
  v197 = v35;
  v196 = type metadata accessor for DefaultRepeatEditor;
  sub_1CABA64AC(v58, v60 + v59, type metadata accessor for DefaultRepeatEditor);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4631A0);
  v61 = sub_1CABA5CFC();
  v62 = v172;
  sub_1CAD4D754();
  v182 = v55;

  sub_1CAD4DBF4();
  v63 = v201;
  sub_1CAB23A9C(v233 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__recurrenceRule, v201, &qword_1EC463168);
  v64 = v200;
  MEMORY[0x1CCAA6D30](v202);

  sub_1CAB21B68(v63, &qword_1EC463168);
  sub_1CABA5C18(v206, v58);
  v65 = swift_allocObject();
  sub_1CABA64AC(v58, v65 + v59, v196);
  *&v233 = v171;
  *(&v233 + 1) = MEMORY[0x1E69E6370];
  *&v234 = v61;
  *(&v234 + 1) = MEMORY[0x1E69E6388];
  v171 = MEMORY[0x1E6981438];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v168 = sub_1CABA5EA8();
  v66 = v175;
  v67 = v179;
  sub_1CAD4D754();

  sub_1CAB21B68(v64, &qword_1EC463170);
  (*(v173 + 8))(v62, v66);
  v68 = (v206 + *(v192 + 20));
  v69 = *v68;
  v70 = v68[1];
  LOBYTE(v68) = *(v68 + 16);
  *&v233 = v69;
  *(&v233 + 1) = v70;
  LOBYTE(v234) = v68;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4631E0);
  sub_1CAD4DAE4();
  v172 = v231;
  LODWORD(v173) = LOBYTE(v232[0]);
  sub_1CABA5C18(v206, v58);
  v71 = swift_allocObject() + v59;
  v72 = v58;
  v73 = v196;
  sub_1CABA64AC(v72, v71, v196);
  v74 = v176;
  sub_1CABA5C18(v206, v176);
  v75 = swift_allocObject();
  sub_1CABA64AC(v74, v75 + v59, v73);
  type metadata accessor for CustomRepeatEditor();
  *&v233 = v66;
  *(&v233 + 1) = v67;
  *&v234 = OpaqueTypeConformance2;
  *(&v234 + 1) = v168;
  swift_getOpaqueTypeConformance2();
  sub_1CABA5318(&qword_1EC4631E8, type metadata accessor for CustomRepeatEditor);
  v76 = v178;
  v77 = v198;
  sub_1CAD4D6E4();

  v78 = v206;

  (*(v177 + 8))(v77, v76);
  sub_1CAD4DBF4();
  v79 = sub_1CAC83A18();
  v81 = v80;

  if (v81)
  {
    v82 = sub_1CAD4CC94();
    v83 = v161;
    *v161 = v82;
    *(v83 + 8) = 0;
    *(v83 + 16) = 1;
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463250);
    sub_1CABA34F8(v78, v79, v81, (v83 + *(v84 + 44)));

    v85 = sub_1CAD4CFC4();
    v86 = v181;
    *(v83 + *(v181 + 36)) = v85;
    v87 = v204;
    sub_1CABA60A8(v83, v204);
    v88 = 0;
  }

  else
  {
    v87 = v204;
    v86 = v181;
    v88 = 1;
  }

  (*(v180 + 56))(v87, v88, 1, v86);
  sub_1CAD4DBF4();
  v89 = sub_1CAC8723C();
  v90 = v194;
  v91 = v195;
  v92 = v193;
  if ((v89 - 1) < 6)
  {

    v197 = sub_1CAD4CC94();
    sub_1CABA3954(&v233);
    v198 = v233;
    LODWORD(v196) = DWORD2(v233);
    sub_1CAD4DBF4();
    v93 = v201;
    sub_1CAB23A9C(v233 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__recurrenceRule, v201, &qword_1EC463168);
    v94 = v200;
    MEMORY[0x1CCAA6D30](v202);
    sub_1CAB21B68(v93, &qword_1EC463168);
    v95 = sub_1CAC8B498(v94);

    v96 = 1;
    if (v95 == 1)
    {
      v97 = sub_1CAD4CC94();
      v98 = v149;
      *v149 = v97;
      *(v98 + 8) = 0;
      *(v98 + 16) = 1;
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463248);
      sub_1CABA3CD4(v78, v98 + *(v99 + 44));
      sub_1CABA62E4(v98, v92, &qword_1EC463140);
      v96 = 0;
    }

    v100 = 1;
    (*(v163 + 56))(v92, v96, 1, v164);
    v101 = v78 + *(v192 + 24);
    v102 = *v101;
    v103 = *(v101 + 8);
    LOBYTE(v101) = *(v101 + 16);
    *&v233 = v102;
    *(&v233 + 1) = v103;
    LOBYTE(v234) = v101;
    MEMORY[0x1CCAA6D30](&v231, v162);
    if (v231 == 1)
    {
      v104 = v205;
      if (qword_1EC462D00 != -1)
      {
        swift_once();
      }

      v233 = xmmword_1EC47DC38;

      v105 = v147;
      sub_1CAD4DC04();
      swift_getKeyPath();
      sub_1CAD4DC24();

      v146(v105, v104);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463210);
      v106 = swift_allocObject();
      *(v106 + 16) = xmmword_1CAD58380;
      sub_1CAD4CE54();
      *&v231 = v106;
      sub_1CABA5318(&qword_1EC463218, MEMORY[0x1E697C668]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463220);
      sub_1CAB23B0C(&unk_1EC463228, &qword_1EC463220);
      sub_1CAD4E5B4();
      sub_1CABA6054();
      v107 = v155;
      sub_1CAD4C5D4();
      v108 = v158;
      sub_1CAD4D014();
      sub_1CAB23B0C(&qword_1EC463238, &qword_1EC463128);
      sub_1CABA5318(&qword_1EC463240, MEMORY[0x1E697C908]);
      v109 = v152;
      v110 = v157;
      v111 = v160;
      sub_1CAD4D5B4();
      (*(v159 + 8))(v108, v111);
      (*(v156 + 8))(v107, v110);
      (*(v190 + 32))(v90, v109, v191);
      v100 = 0;
    }

    (*(v190 + 56))(v90, v100, 1, v191);
    sub_1CAD4DBF4();
    v112 = v201;
    sub_1CAB23A9C(v233 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__recurrenceRule, v201, &qword_1EC463168);
    v113 = v200;
    MEMORY[0x1CCAA6D30](v202);
    sub_1CAB21B68(v112, &qword_1EC463168);
    LODWORD(v112) = sub_1CAC8B498(v113);

    if (v112 == 2)
    {
      v114 = sub_1CAD4CC94();
      v208 = 1;
      sub_1CABA454C(&v233);
      v217 = v241;
      v218 = v242;
      v213 = v237;
      v214 = v238;
      v215 = v239;
      v216 = v240;
      v209 = v233;
      v210 = v234;
      v211 = v235;
      v212 = v236;
      v228 = v241;
      v229 = v242;
      v224 = v237;
      v225 = v238;
      v226 = v239;
      v227 = v240;
      v220 = v233;
      v221 = v234;
      LOBYTE(v219[0]) = v243[0];
      LOBYTE(v230[0]) = v243[0];
      v222 = v235;
      v223 = v236;
      sub_1CAB23A9C(&v209, &v231, &qword_1EC463208);
      sub_1CAB21B68(&v220, &qword_1EC463208);
      *&v207[119] = v216;
      *&v207[135] = v217;
      *&v207[151] = v218;
      *&v207[55] = v212;
      *&v207[71] = v213;
      *&v207[87] = v214;
      *&v207[103] = v215;
      *&v207[7] = v209;
      *&v207[23] = v210;
      *&v207[39] = v211;
      *(&v232[7] + 1) = *&v207[112];
      *(&v232[8] + 1) = *&v207[128];
      *(&v232[9] + 1) = *&v207[144];
      *(&v232[3] + 1) = *&v207[48];
      *(&v232[4] + 1) = *&v207[64];
      *(&v232[5] + 1) = *&v207[80];
      *(&v232[6] + 1) = *&v207[96];
      *(v232 + 1) = *v207;
      *(&v232[1] + 1) = *&v207[16];
      v207[167] = v219[0];
      v231 = v114;
      LOBYTE(v232[0]) = v208;
      *(&v232[10] + 1) = *&v207[160];
      *(&v232[2] + 1) = *&v207[32];
      nullsub_1(&v231);
      v241 = v232[7];
      v242 = v232[8];
      v243[0] = v232[9];
      *(v243 + 9) = *(&v232[9] + 9);
      v237 = v232[3];
      v238 = v232[4];
      v239 = v232[5];
      v240 = v232[6];
      v233 = v231;
      v234 = v232[0];
      v235 = v232[1];
      v236 = v232[2];
    }

    else
    {
      sub_1CABA602C(&v233);
    }

    v115 = v92;
    v116 = v165;
    sub_1CAB23A9C(v115, v165, &qword_1EC463148);
    v117 = v90;
    v118 = v166;
    sub_1CAB23A9C(v117, v166, &qword_1EC463138);
    v217 = v241;
    v218 = v242;
    v219[0] = v243[0];
    *(v219 + 9) = *(v243 + 9);
    v213 = v237;
    v214 = v238;
    v215 = v239;
    v216 = v240;
    v209 = v233;
    v210 = v234;
    v211 = v235;
    v212 = v236;
    v119 = v167;
    v120 = v198;
    *v167 = v197;
    v119[1] = 0;
    *(v119 + 16) = 1;
    v119[3] = v120;
    *(v119 + 8) = v196;
    v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4631F0);
    sub_1CAB23A9C(v116, v119 + v121[12], &qword_1EC463148);
    sub_1CAB23A9C(v118, v119 + v121[16], &qword_1EC463138);
    v122 = v121[20];
    v123 = v218;
    v228 = v217;
    v229 = v218;
    v124 = v219[0];
    v230[0] = v219[0];
    *(v230 + 9) = *(v219 + 9);
    v125 = v215;
    v126 = v216;
    v226 = v215;
    v227 = v216;
    v127 = v213;
    v128 = v214;
    v224 = v213;
    v225 = v214;
    v129 = v209;
    v130 = v210;
    v220 = v209;
    v221 = v210;
    v131 = v211;
    v132 = v212;
    v222 = v211;
    v223 = v212;
    v133 = (v119 + v122);
    v133[8] = v217;
    v133[9] = v123;
    v133[10] = v124;
    *(v133 + 169) = *(v219 + 9);
    v133[4] = v127;
    v133[5] = v128;
    v133[6] = v125;
    v133[7] = v126;
    *v133 = v129;
    v133[1] = v130;
    v133[2] = v131;
    v133[3] = v132;

    sub_1CAB23A9C(&v220, &v231, &qword_1EC4631F8);
    sub_1CAB21B68(v194, &qword_1EC463138);
    sub_1CAB21B68(v193, &qword_1EC463148);
    v232[7] = v217;
    v232[8] = v218;
    v232[9] = v219[0];
    *(&v232[9] + 9) = *(v219 + 9);
    v232[3] = v213;
    v232[4] = v214;
    v232[5] = v215;
    v232[6] = v216;
    v231 = v209;
    v232[0] = v210;
    v232[1] = v211;
    v232[2] = v212;
    sub_1CAB21B68(&v231, &qword_1EC4631F8);
    sub_1CAB21B68(v118, &qword_1EC463138);
    sub_1CAB21B68(v116, &qword_1EC463148);

    v134 = v119;
    v91 = v195;
    sub_1CABA62E4(v134, v195, &qword_1EC463118);
    (*(v187 + 56))(v91, 0, 1, v188);
    goto LABEL_17;
  }

  if (!v89)
  {

    (*(v187 + 56))(v91, 1, 1, v188);
LABEL_17:
    v136 = v183;
    v135 = v184;
    v137 = *(v183 + 16);
    v138 = v199;
    v137(v199, v203, v184);
    v139 = v185;
    sub_1CAB23A9C(v204, v185, &qword_1EC463160);
    v140 = v186;
    sub_1CAB23A9C(v91, v186, &qword_1EC463150);
    v141 = v189;
    v137(v189, v138, v135);
    v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463200);
    sub_1CAB23A9C(v139, &v141[*(v142 + 48)], &qword_1EC463160);
    sub_1CAB23A9C(v140, &v141[*(v142 + 64)], &qword_1EC463150);

    sub_1CAB21B68(v91, &qword_1EC463150);
    sub_1CAB21B68(v204, &qword_1EC463160);
    v143 = *(v136 + 8);
    v143(v203, v135);
    sub_1CAB21B68(v140, &qword_1EC463150);
    sub_1CAB21B68(v139, &qword_1EC463160);
    return (v143)(v199, v135);
  }

  result = sub_1CAD4E794();
  __break(1u);
  return result;
}

uint64_t sub_1CABA2E08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CAC84154();
  *a1 = result;
  return result;
}

uint64_t sub_1CABA2E34()
{
  sub_1CAD4DCD4();
  sub_1CAD4C834();
}

uint64_t sub_1CABA2EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v28 = &v25 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC463290);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for EventRecurrenceEndModelObject(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v27 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463170);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v25 - v13;
  v15 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAB23A9C(a2, v14, &qword_1EC463170);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_1CAB21B68(v14, &qword_1EC463170);
  }

  sub_1CABA64AC(v14, v18, type metadata accessor for EventRecurrenceRuleModelObject);
  sub_1CAB23A9C(v18, v8, &unk_1EC463290);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1CABA6514(v18, type metadata accessor for EventRecurrenceRuleModelObject);
    return sub_1CAB21B68(v8, &unk_1EC463290);
  }

  else
  {
    v20 = v27;
    sub_1CABA64AC(v8, v27, type metadata accessor for EventRecurrenceEndModelObject);
    v21 = v28;
    sub_1CAB23A9C(v20, v28, &unk_1EC465A70);
    v22 = sub_1CAD4C0F4();
    v23 = (*(*(v22 - 8) + 48))(v21, 1, v22);
    sub_1CAB21B68(v21, &unk_1EC465A70);
    if (v23 == 1)
    {
      v24 = type metadata accessor for DefaultRepeatEditor();
      (*(v26 + *(v24 + 28)))(8);
    }

    sub_1CABA6514(v20, type metadata accessor for EventRecurrenceEndModelObject);
    return sub_1CABA6514(v18, type metadata accessor for EventRecurrenceRuleModelObject);
  }
}

uint64_t sub_1CABA32C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4630E0);
  sub_1CAD4DBF4();
  if (*(v2 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__showCustom))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CABA5318(&qword_1EC463198, type metadata accessor for RepeatViewModel);
    sub_1CAD4C414();
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__showCustom) = 0;
  }
}

uint64_t sub_1CABA340C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4630E0);
  sub_1CAD4DBF4();
  KeyPath = swift_getKeyPath();
  *(a1 + *(type metadata accessor for CustomRepeatEditor() + 20)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4632B0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RepeatViewModel();
  sub_1CABA5318(&qword_1EC463198, type metadata accessor for RepeatViewModel);
  return sub_1CAD4DC14();
}

uint64_t sub_1CABA34F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v29 = a4;
  v7 = type metadata accessor for DefaultRepeatEditor();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463258);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - v15;
  sub_1CABA5C18(a1, &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  sub_1CABA64AC(&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for DefaultRepeatEditor);
  v30 = a2;
  v31 = a3;
  sub_1CAD4D9E4();
  v19 = sub_1CAD4D8F4();
  if (qword_1EC462F20 != -1)
  {
    swift_once();
  }

  v20 = qword_1EC47E068;
  v21 = *(v11 + 16);
  v21(v14, v16, v10);
  v22 = v29;
  v21(v29, v14, v10);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463260);
  v24 = &v22[*(v23 + 64)];
  *v24 = 0;
  v24[8] = 1;
  v25 = &v22[*(v23 + 80)];
  *v25 = v19;
  v25[1] = v20;
  v26 = *(v11 + 8);
  swift_retain_n();

  v26(v16, v10);

  return (v26)(v14, v10);
}

uint64_t sub_1CABA381C@<X0>(uint64_t a1@<X8>)
{
  sub_1CABA6054();

  v2 = sub_1CAD4D444();
  v4 = v3;
  v6 = v5;
  sub_1CAD4D324();
  v7 = sub_1CAD4D424();
  v9 = v8;
  v11 = v10;

  sub_1CABA6128(v2, v4, v6 & 1);

  sub_1CAD4CFE4();
  v12 = sub_1CAD4D3E4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_1CABA6128(v7, v9, v11 & 1);

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  return result;
}

uint64_t sub_1CABA3954@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4630E0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v14 - v4;
  if (qword_1EC462CF8 != -1)
  {
    swift_once();
  }

  v7 = qword_1EC47DC28;
  v6 = unk_1EC47DC30;

  sub_1CAD4DC04();
  swift_getKeyPath();
  sub_1CAD4DC24();

  (*(v3 + 8))(v5, v2);
  v8 = v14[1];
  v9 = v14[2];
  v10 = v15;
  v11 = qword_1EC465F90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4632A0);
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  *(v12 + 24) = v9;
  *(v12 + 32) = v10;
  *(v12 + 40) = v7;
  *(v12 + 48) = v6;
  *(v12 + 56) = xmmword_1CAD58370;
  *(v12 + 72) = 0;
  *(v12 + 80) = v11;
  *(v12 + 88) = 3;

  result = sub_1CAD4CFC4();
  *a1 = v12;
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CABA3B14@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463168);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463170);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  sub_1CAB23A9C(*a1 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__recurrenceRule, v6, &qword_1EC463168);
  MEMORY[0x1CCAA6D30](v4);
  sub_1CAB21B68(v6, &qword_1EC463168);
  result = sub_1CAC8B498(v9);
  *a2 = result;
  return result;
}

uint64_t sub_1CABA3C48()
{
  sub_1CAD4DCD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4632A8);
  sub_1CAD4C834();
}

uint64_t sub_1CABA3CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CAD4CD74();
  v68 = *(v4 - 8);
  v69 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v66 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for DefaultRepeatEditor();
  v52 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v53 = v6;
  v54 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1CAD4C0F4();
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463258);
  v56 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v10 = &v49 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463268);
  v62 = *(v11 - 8);
  v63 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v49 - v12;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463270);
  v13 = MEMORY[0x1EEE9AC00](v61);
  v65 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v49 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v64 = &v49 - v18;
  if (qword_1EC462D00 != -1)
  {
    swift_once();
  }

  v71 = qword_1EC47DC38;
  v72 = unk_1EC47DC40;
  sub_1CABA6054();

  v19 = sub_1CAD4D444();
  v57 = v20;
  v58 = v19;
  v51 = v21;
  v59 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4630E0);
  sub_1CAD4DBF4();
  sub_1CAC83164(v8);

  v23 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v23 setTimeStyle_];
  [v23 setDateStyle_];
  v24 = sub_1CAD4C084();
  v25 = [v23 stringFromDate_];

  v26 = sub_1CAD4DF94();
  v28 = v27;

  (*(v49 + 8))(v8, v50);
  v71 = v26;
  v72 = v28;
  v29 = v54;
  sub_1CABA5C18(a1, v54);
  v30 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v31 = swift_allocObject();
  sub_1CABA64AC(v29, v31 + v30, type metadata accessor for DefaultRepeatEditor);
  sub_1CAD4DA04();
  v32 = v66;
  sub_1CAD4CD64();
  sub_1CAB23B0C(&qword_1EC463278, &qword_1EC463258);
  sub_1CABA5318(&qword_1EC463280, MEMORY[0x1E697C548]);
  v33 = v55;
  v34 = v60;
  v35 = v69;
  sub_1CAD4D4E4();
  (*(v68 + 8))(v32, v35);
  (*(v56 + 8))(v10, v34);
  v36 = a1 + *(v67 + 24);
  v37 = *v36;
  v38 = *(v36 + 8);
  LOBYTE(v36) = *(v36 + 16);
  v71 = v37;
  v72 = v38;
  v73 = v36;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4631E0);
  MEMORY[0x1CCAA6D30](&v70, v39);
  if (v70 == 1)
  {
    v40 = sub_1CAD4D804();
  }

  else
  {
    v40 = sub_1CAD4D8A4();
  }

  v41 = v40;
  (*(v62 + 32))(v17, v33, v63);
  *&v17[*(v61 + 36)] = v41;
  v42 = v64;
  sub_1CABA62E4(v17, v64, &qword_1EC463270);
  v43 = v65;
  sub_1CAB23A9C(v42, v65, &qword_1EC463270);
  v45 = v57;
  v44 = v58;
  *a2 = v58;
  *(a2 + 8) = v45;
  v46 = v51 & 1;
  *(a2 + 16) = v51 & 1;
  *(a2 + 24) = v59;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463288);
  sub_1CAB23A9C(v43, a2 + *(v47 + 80), &qword_1EC463270);
  sub_1CABA4F48(v44, v45, v46);

  sub_1CAB21B68(v42, &qword_1EC463270);
  sub_1CAB21B68(v43, &qword_1EC463270);
  sub_1CABA6128(v44, v45, v46);
}

uint64_t sub_1CABA4480(uint64_t a1)
{
  v2 = sub_1CAD4C0F4();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_1CAC834C4(v4);
}

uint64_t sub_1CABA454C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4630E0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v37 - v4;
  if (qword_1EC462D08 != -1)
  {
    swift_once();
  }

  v52 = qword_1EC47DC48;
  v53 = unk_1EC47DC50;
  sub_1CABA6054();

  v6 = sub_1CAD4D444();
  v37 = v7;
  v38 = v6;
  v9 = v8;
  v39 = v10;
  sub_1CAD4DC04();
  swift_getKeyPath();
  sub_1CAD4DC24();

  (*(v3 + 8))(v5, v2);
  v11 = v52;
  v12 = v53;
  v13 = v54;
  if (qword_1EC462D28 != -1)
  {
    swift_once();
  }

  v15 = qword_1EC47DC88;
  v14 = unk_1EC47DC90;

  v16 = sub_1CAD4C654();
  v17 = v9 & 1;
  v43 = v9 & 1;
  v42 = 1;
  *&v44 = v11;
  *(&v44 + 1) = v12;
  *&v45 = v13;
  *(&v45 + 1) = v15;
  *&v46 = v14;
  BYTE8(v46) = 0;
  __asm { FMOV            V0.2D, #8.0 }

  v47 = _Q0;
  v48 = xmmword_1CAD58390;
  *&v49 = 0x4041000000000000;
  *(&v49 + 1) = 9999;
  LOBYTE(v50) = v16 & 1;
  *(&v50 + 1) = v23;
  v51 = v24 & 1;
  *&v41[55] = _Q0;
  *&v41[39] = v46;
  *&v41[23] = v45;
  *&v41[7] = v44;
  v41[119] = v24 & 1;
  *&v41[103] = v50;
  *&v41[87] = v49;
  *&v41[71] = xmmword_1CAD58390;
  v25 = v9 & 1;
  v26 = v11;
  v27 = v38;
  v28 = v39;
  v29 = v13;
  v30 = v37;
  *a1 = v38;
  *(a1 + 8) = v30;
  *(a1 + 16) = v25;
  *(a1 + 24) = v28;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v31 = *v41;
  v32 = *&v41[64];
  *(a1 + 89) = *&v41[48];
  v33 = *&v41[16];
  *(a1 + 73) = *&v41[32];
  *(a1 + 57) = v33;
  *(a1 + 41) = v31;
  v34 = *&v41[80];
  v35 = *&v41[96];
  *(a1 + 153) = *&v41[112];
  *(a1 + 137) = v35;
  *(a1 + 121) = v34;
  *(a1 + 105) = v32;
  v52 = v26;
  v53 = v12;
  v54 = v29;
  v55 = v15;
  v56 = v14;
  v57 = 0;
  v58 = _Q0;
  v59 = xmmword_1CAD58390;
  v60 = 0x4041000000000000;
  v61 = 9999;
  v62 = v16 & 1;
  v63 = v23;
  v64 = v24 & 1;
  sub_1CABA4F48(v27, v30, v17);

  sub_1CABA634C(&v44, &v40);
  sub_1CABA63A8(&v52);
  sub_1CABA6128(v27, v30, v17);
}

uint64_t sub_1CABA48A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CAC8376C();
  *a1 = result;
  return result;
}

uint64_t sub_1CABA48D0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC463290);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v14 - v3;
  v5 = *a1;
  v6 = sub_1CAC82B70(v14);
  v8 = v7;
  v9 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v10 = sub_1CAD4C0F4();
    v11 = *(*(v10 - 8) + 56);
    v11(v4, 1, 1, v10);
    sub_1CAB21B68(v4, &unk_1EC465A70);
    v11(v4, 1, 1, v10);
    v12 = type metadata accessor for EventRecurrenceEndModelObject(0);
    *&v4[*(v12 + 20)] = v5;
    (*(*(v12 - 8) + 56))(v4, 0, 1, v12);
    sub_1CABA63FC(v4, v8);
  }

  return (v6)(v14, 0);
}

_DWORD *sub_1CABA4AA0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1CABA4AC4(uint64_t a1, id *a2)
{
  result = sub_1CAD4DF74();
  *a2 = 0;
  return result;
}

uint64_t sub_1CABA4B3C(uint64_t a1, id *a2)
{
  v3 = sub_1CAD4DF84();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1CABA4BBC@<X0>(uint64_t *a1@<X8>)
{
  sub_1CAD4DF94();
  v2 = sub_1CAD4DF54();

  *a1 = v2;
  return result;
}

uint64_t sub_1CABA4C00()
{
  v0 = sub_1CAD4DF94();
  v1 = MEMORY[0x1CCAA73B0](v0);

  return v1;
}

uint64_t sub_1CABA4C3C()
{
  sub_1CAD4DF94();
  sub_1CAD4E054();
}

uint64_t sub_1CABA4C90()
{
  sub_1CAD4DF94();
  sub_1CAD4EA84();
  sub_1CAD4E054();
  v0 = sub_1CAD4EAC4();

  return v0;
}

uint64_t sub_1CABA4D04()
{
  v0 = sub_1CAD4DF94();
  v2 = v1;
  if (v0 == sub_1CAD4DF94() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1CAD4E9E4();
  }

  return v5 & 1;
}

uint64_t sub_1CABA4D8C()
{
  v1 = *v0;
  sub_1CAD4EA84();
  MEMORY[0x1CCAA7D10](v1);
  return sub_1CAD4EAC4();
}

uint64_t sub_1CABA4DD4()
{
  v1 = *v0;
  sub_1CAD4EA84();
  MEMORY[0x1CCAA7D10](v1);
  return sub_1CAD4EAC4();
}

uint64_t sub_1CABA4E18@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1CAD4DF54();

  *a1 = v2;
  return result;
}

uint64_t sub_1CABA4E60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CAD4DF94();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1CABA4E8C(uint64_t a1)
{
  v2 = sub_1CABA5318(&qword_1EC461E50, type metadata accessor for Key);
  v3 = sub_1CABA5318(&qword_1EC4630C8, type metadata accessor for Key);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CABA4F48(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1CABA5318(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for DefaultRepeatEditor()
{
  result = qword_1EC4630F0;
  if (!qword_1EC4630F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CABA5A44()
{
  sub_1CABA5B04();
  if (v0 <= 0x3F)
  {
    sub_1CABA5B5C(319, &qword_1EC463108, MEMORY[0x1E69E6370], MEMORY[0x1E6981940]);
    if (v1 <= 0x3F)
    {
      sub_1CABA5BAC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1CABA5B04()
{
  if (!qword_1EC463100)
  {
    type metadata accessor for RepeatViewModel();
    v0 = sub_1CAD4DC34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC463100);
    }
  }
}

void sub_1CABA5B5C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1CABA5BAC()
{
  result = qword_1EC463110;
  if (!qword_1EC463110)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EC463110);
  }

  return result;
}

uint64_t sub_1CABA5C18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultRepeatEditor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CABA5C7C(uint64_t a1, _BYTE *a2)
{
  result = type metadata accessor for DefaultRepeatEditor();
  if (*a2 == 1)
  {
    return (*(v2 + *(result + 28) + ((*(*(result - 8) + 80) + 16) & ~*(*(result - 8) + 80))))(7);
  }

  return result;
}

unint64_t sub_1CABA5CFC()
{
  result = qword_1EC4631A8;
  if (!qword_1EC4631A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4631A0);
    sub_1CAB23B0C(&qword_1EC4631B0, &unk_1EC4631B8);
    sub_1CAB23B0C(&qword_1EC462050, &qword_1EC4631C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4631A8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1CABA5E28(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for DefaultRepeatEditor() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1CABA2EAC(a1, a2, v6);
}

unint64_t sub_1CABA5EA8()
{
  result = qword_1EC4631D0;
  if (!qword_1EC4631D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463170);
    sub_1CABA5318(&qword_1EC4631D8, type metadata accessor for EventRecurrenceRuleModelObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4631D0);
  }

  return result;
}

uint64_t sub_1CABA5F5C()
{
  type metadata accessor for DefaultRepeatEditor();

  return sub_1CABA32C8();
}

uint64_t sub_1CABA5FBC@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for DefaultRepeatEditor();

  return sub_1CABA340C(a1);
}

double sub_1CABA602C(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 169) = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_1CABA6054()
{
  result = qword_1EC461FA0;
  if (!qword_1EC461FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC461FA0);
  }

  return result;
}

uint64_t sub_1CABA60A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463158);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CABA6128(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t objectdestroyTm()
{
  v1 = *(type metadata accessor for DefaultRepeatEditor() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4630E0);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CABA62E4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CABA63FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC463290);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CABA64AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CABA6514(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CABA65B4()
{
  v0 = sub_1CAD4BF74();
  __swift_allocate_value_buffer(v0, qword_1EC47D850);
  v1 = __swift_project_value_buffer(v0, qword_1EC47D850);
  *v1 = type metadata accessor for CUIKLocalizedStringUtils();
  v2 = *MEMORY[0x1E6968E00];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_1CABA664C()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47D868 = result;
  unk_1EC47D870 = v9;
  return result;
}

uint64_t sub_1CABA6884()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47D878 = result;
  unk_1EC47D880 = v9;
  return result;
}

uint64_t sub_1CABA6ABC()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47D888 = result;
  unk_1EC47D890 = v9;
  return result;
}

uint64_t sub_1CABA6CF4()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47D898 = result;
  unk_1EC47D8A0 = v9;
  return result;
}

uint64_t sub_1CABA6F28()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47D8A8 = result;
  unk_1EC47D8B0 = v9;
  return result;
}

uint64_t sub_1CABA7160()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47D8B8 = result;
  unk_1EC47D8C0 = v9;
  return result;
}

uint64_t sub_1CABA73A4()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47D8C8 = result;
  unk_1EC47D8D0 = v9;
  return result;
}

uint64_t sub_1CABA75E0()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47D8D8 = result;
  unk_1EC47D8E0 = v9;
  return result;
}

uint64_t sub_1CABA7814()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47D8E8 = result;
  unk_1EC47D8F0 = v9;
  return result;
}

uint64_t sub_1CABA7A44()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47D8F8 = result;
  unk_1EC47D900 = v9;
  return result;
}

uint64_t sub_1CABA7C78()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47D908 = result;
  unk_1EC47D910 = v9;
  return result;
}

uint64_t sub_1CABA7EB0()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47D918 = result;
  unk_1EC47D920 = v9;
  return result;
}

uint64_t sub_1CABA80E8()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47D928 = result;
  unk_1EC47D930 = v9;
  return result;
}

uint64_t sub_1CABA8320()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47D938 = result;
  unk_1EC47D940 = v9;
  return result;
}

uint64_t sub_1CABA8554()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47D948 = result;
  unk_1EC47D950 = v9;
  return result;
}

uint64_t sub_1CABA8794()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47D958 = result;
  unk_1EC47D960 = v9;
  return result;
}

uint64_t sub_1CABA89C8()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47D968 = result;
  unk_1EC47D970 = v9;
  return result;
}

uint64_t sub_1CABA8C04()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47D978 = result;
  unk_1EC47D980 = v9;
  return result;
}

uint64_t sub_1CABA8E40()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47D988 = result;
  unk_1EC47D990 = v9;
  return result;
}

uint64_t sub_1CABA907C()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47D998 = result;
  unk_1EC47D9A0 = v9;
  return result;
}

uint64_t sub_1CABA92BC()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47D9A8 = result;
  unk_1EC47D9B0 = v9;
  return result;
}

uint64_t sub_1CABA951C()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47D9C8 = result;
  unk_1EC47D9D0 = v9;
  return result;
}

uint64_t sub_1CABA9758()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47D9D8 = result;
  unk_1EC47D9E0 = v9;
  return result;
}

uint64_t sub_1CABA9990()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47D9E8 = result;
  unk_1EC47D9F0 = v9;
  return result;
}

uint64_t sub_1CABA9BCC()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47D9F8 = result;
  unk_1EC47DA00 = v9;
  return result;
}

uint64_t sub_1CABA9E04()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DA08 = result;
  unk_1EC47DA10 = v9;
  return result;
}

uint64_t sub_1CABAA064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v7 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1CAD4BF74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v13 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v8, qword_1EC47D850);
  (*(v9 + 16))(v11, v14, v8);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  *a4 = result;
  *a5 = v16;
  return result;
}

uint64_t sub_1CABAA2B8()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DA28 = result;
  unk_1EC47DA30 = v9;
  return result;
}

uint64_t sub_1CABAA4F4()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DA38 = result;
  unk_1EC47DA40 = v9;
  return result;
}

uint64_t sub_1CABAA730()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DA48 = result;
  unk_1EC47DA50 = v9;
  return result;
}

uint64_t sub_1CABAA96C()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DA58 = result;
  unk_1EC47DA60 = v9;
  return result;
}

uint64_t sub_1CABAABA8()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DA68 = result;
  unk_1EC47DA70 = v9;
  return result;
}

uint64_t sub_1CABAADE4()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DA78 = result;
  unk_1EC47DA80 = v9;
  return result;
}

uint64_t sub_1CABAB020()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DA88 = result;
  unk_1EC47DA90 = v9;
  return result;
}

uint64_t sub_1CABAB25C()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DA98 = result;
  unk_1EC47DAA0 = v9;
  return result;
}

uint64_t sub_1CABAB49C()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DAA8 = result;
  unk_1EC47DAB0 = v9;
  return result;
}

uint64_t sub_1CABAB6D4()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DAB8 = result;
  unk_1EC47DAC0 = v9;
  return result;
}

uint64_t sub_1CABAB904()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DAC8 = result;
  unk_1EC47DAD0 = v9;
  return result;
}

uint64_t sub_1CABABB34()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DAD8 = result;
  unk_1EC47DAE0 = v9;
  return result;
}

uint64_t sub_1CABABD68()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DAE8 = result;
  unk_1EC47DAF0 = v9;
  return result;
}

uint64_t sub_1CABABFA0()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DAF8 = result;
  unk_1EC47DB00 = v9;
  return result;
}

uint64_t sub_1CABAC1D8()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DB08 = result;
  unk_1EC47DB10 = v9;
  return result;
}

uint64_t sub_1CABAC414()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DB18 = result;
  unk_1EC47DB20 = v9;
  return result;
}

uint64_t sub_1CABAC650()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DB28 = result;
  unk_1EC47DB30 = v9;
  return result;
}

uint64_t sub_1CABAC884()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DB38 = result;
  unk_1EC47DB40 = v9;
  return result;
}

uint64_t sub_1CABACAB4()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DB48 = result;
  unk_1EC47DB50 = v9;
  return result;
}

uint64_t sub_1CABACCF0()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DB58 = result;
  unk_1EC47DB60 = v9;
  return result;
}

uint64_t sub_1CABACF2C()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DB68 = result;
  unk_1EC47DB70 = v9;
  return result;
}

uint64_t sub_1CABAD168()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DB78 = result;
  unk_1EC47DB80 = v9;
  return result;
}

uint64_t sub_1CABAD3A4()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DB88 = result;
  unk_1EC47DB90 = v9;
  return result;
}

uint64_t sub_1CABAD5D4()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DB98 = result;
  unk_1EC47DBA0 = v9;
  return result;
}

uint64_t sub_1CABAD808()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DBA8 = result;
  unk_1EC47DBB0 = v9;
  return result;
}

uint64_t sub_1CABADA40()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DBB8 = result;
  unk_1EC47DBC0 = v9;
  return result;
}

uint64_t sub_1CABADC7C()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DBC8 = result;
  unk_1EC47DBD0 = v9;
  return result;
}

uint64_t sub_1CABADEC0()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DBD8 = result;
  unk_1EC47DBE0 = v9;
  return result;
}

uint64_t sub_1CABAE0FC()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DBE8 = result;
  unk_1EC47DBF0 = v9;
  return result;
}

uint64_t sub_1CABAE330()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DBF8 = result;
  unk_1EC47DC00 = v9;
  return result;
}

uint64_t sub_1CABAE570()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DC08 = result;
  unk_1EC47DC10 = v9;
  return result;
}

uint64_t sub_1CABAE7A4()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DC18 = result;
  unk_1EC47DC20 = v9;
  return result;
}

uint64_t sub_1CABAE9E0()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DC28 = result;
  unk_1EC47DC30 = v9;
  return result;
}

uint64_t sub_1CABAEC1C()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DC38 = result;
  unk_1EC47DC40 = v9;
  return result;
}

uint64_t sub_1CABAEE54()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DC48 = result;
  unk_1EC47DC50 = v9;
  return result;
}

uint64_t sub_1CABAF090()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DC58 = result;
  unk_1EC47DC60 = v9;
  return result;
}

uint64_t sub_1CABAF2C4()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DC68 = result;
  unk_1EC47DC70 = v9;
  return result;
}

uint64_t sub_1CABAF4FC()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DC78 = result;
  unk_1EC47DC80 = v9;
  return result;
}

uint64_t sub_1CABAF730()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DC88 = result;
  unk_1EC47DC90 = v9;
  return result;
}

uint64_t sub_1CABAF96C()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DC98 = result;
  unk_1EC47DCA0 = v9;
  return result;
}

uint64_t sub_1CABAFBA8()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DCA8 = result;
  unk_1EC47DCB0 = v9;
  return result;
}

uint64_t sub_1CABAFDDC()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DCB8 = result;
  unk_1EC47DCC0 = v9;
  return result;
}

uint64_t sub_1CABB0018()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DCC8 = result;
  unk_1EC47DCD0 = v9;
  return result;
}

uint64_t sub_1CABB0254()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DCD8 = result;
  unk_1EC47DCE0 = v9;
  return result;
}

uint64_t sub_1CABB0490()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DCE8 = result;
  unk_1EC47DCF0 = v9;
  return result;
}

uint64_t sub_1CABB06CC()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DCF8 = result;
  unk_1EC47DD00 = v9;
  return result;
}

uint64_t sub_1CABB0908()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DD08 = result;
  unk_1EC47DD10 = v9;
  return result;
}

uint64_t sub_1CABB0B38()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DD18 = result;
  unk_1EC47DD20 = v9;
  return result;
}

uint64_t sub_1CABB0D74()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DD28 = result;
  unk_1EC47DD30 = v9;
  return result;
}

uint64_t sub_1CABB0FA4()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DD38 = result;
  unk_1EC47DD40 = v9;
  return result;
}

uint64_t sub_1CABB11DC()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DD48 = result;
  unk_1EC47DD50 = v9;
  return result;
}

uint64_t sub_1CABB141C()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DD58 = result;
  unk_1EC47DD60 = v9;
  return result;
}

uint64_t sub_1CABB1650()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DD68 = result;
  unk_1EC47DD70 = v9;
  return result;
}

uint64_t sub_1CABB1884()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DD78 = result;
  unk_1EC47DD80 = v9;
  return result;
}

uint64_t sub_1CABB1AB8()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DD88 = result;
  unk_1EC47DD90 = v9;
  return result;
}

uint64_t sub_1CABB1CEC()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DD98 = result;
  unk_1EC47DDA0 = v9;
  return result;
}

uint64_t sub_1CABB1F20()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DDA8 = result;
  unk_1EC47DDB0 = v9;
  return result;
}

uint64_t sub_1CABB2160()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DDB8 = result;
  unk_1EC47DDC0 = v9;
  return result;
}

uint64_t sub_1CABB2390()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DDC8 = result;
  unk_1EC47DDD0 = v9;
  return result;
}

uint64_t sub_1CABB25D0()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DDD8 = result;
  unk_1EC47DDE0 = v9;
  return result;
}

uint64_t sub_1CABB2804()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DDE8 = result;
  unk_1EC47DDF0 = v9;
  return result;
}

uint64_t sub_1CABB2A48()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DDF8 = result;
  unk_1EC47DE00 = v9;
  return result;
}

uint64_t sub_1CABB2C78()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DE08 = result;
  unk_1EC47DE10 = v9;
  return result;
}

uint64_t sub_1CABB2EB4()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DE18 = result;
  unk_1EC47DE20 = v9;
  return result;
}

uint64_t sub_1CABB30E4()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DE28 = result;
  unk_1EC47DE30 = v9;
  return result;
}

uint64_t sub_1CABB3318()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DE38 = result;
  unk_1EC47DE40 = v9;
  return result;
}

uint64_t sub_1CABB3548()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DE48 = result;
  unk_1EC47DE50 = v9;
  return result;
}

uint64_t sub_1CABB3778()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DE58 = result;
  unk_1EC47DE60 = v9;
  return result;
}

uint64_t sub_1CABB39B0()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DE68 = result;
  unk_1EC47DE70 = v9;
  return result;
}

uint64_t sub_1CABB3BEC()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DE78 = result;
  unk_1EC47DE80 = v9;
  return result;
}

uint64_t sub_1CABB3E28()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DE88 = result;
  unk_1EC47DE90 = v9;
  return result;
}

uint64_t sub_1CABB4054()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DE98 = result;
  unk_1EC47DEA0 = v9;
  return result;
}

uint64_t sub_1CABB4290()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DEA8 = result;
  unk_1EC47DEB0 = v9;
  return result;
}

uint64_t sub_1CABB44CC()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DEB8 = result;
  unk_1EC47DEC0 = v9;
  return result;
}

uint64_t sub_1CABB4704()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DEC8 = result;
  unk_1EC47DED0 = v9;
  return result;
}

uint64_t sub_1CABB4940()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DED8 = result;
  unk_1EC47DEE0 = v9;
  return result;
}

uint64_t sub_1CABB4B7C()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DEE8 = result;
  unk_1EC47DEF0 = v9;
  return result;
}

uint64_t sub_1CABB4DB4()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DEF8 = result;
  unk_1EC47DF00 = v9;
  return result;
}

uint64_t sub_1CABB4FF0()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DF08 = result;
  unk_1EC47DF10 = v9;
  return result;
}

uint64_t sub_1CABB522C()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DF18 = result;
  unk_1EC47DF20 = v9;
  return result;
}

uint64_t sub_1CABB5460()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DF28 = result;
  unk_1EC47DF30 = v9;
  return result;
}

uint64_t sub_1CABB569C()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DF38 = result;
  unk_1EC47DF40 = v9;
  return result;
}

uint64_t sub_1CABB58DC()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DF48 = result;
  unk_1EC47DF50 = v9;
  return result;
}

uint64_t sub_1CABB5B18()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DF58 = result;
  unk_1EC47DF60 = v9;
  return result;
}

uint64_t sub_1CABB5D58()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DF68 = result;
  unk_1EC47DF70 = v9;
  return result;
}

uint64_t sub_1CABB5F94()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DF78 = result;
  unk_1EC47DF80 = v9;
  return result;
}

uint64_t sub_1CABB61CC()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DF88 = result;
  unk_1EC47DF90 = v9;
  return result;
}

uint64_t sub_1CABB6408()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DF98 = result;
  unk_1EC47DFA0 = v9;
  return result;
}

uint64_t sub_1CABB664C()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DFA8 = result;
  unk_1EC47DFB0 = v9;
  return result;
}

uint64_t sub_1CABB6884()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DFB8 = result;
  unk_1EC47DFC0 = v9;
  return result;
}

uint64_t sub_1CABB6ABC()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DFC8 = result;
  unk_1EC47DFD0 = v9;
  return result;
}

uint64_t sub_1CABB6CF0()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DFD8 = result;
  unk_1EC47DFE0 = v9;
  return result;
}

uint64_t sub_1CABB6F30()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DFE8 = result;
  unk_1EC47DFF0 = v9;
  return result;
}

uint64_t sub_1CABB7170()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47DFF8 = result;
  unk_1EC47E000 = v9;
  return result;
}

uint64_t sub_1CABB73AC()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47E008 = result;
  unk_1EC47E010 = v9;
  return result;
}

uint64_t sub_1CABB75E4()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4BF74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CAD4BF84();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1CAD4DEE4();
  if (qword_1EC462B10 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EC47D850);
  (*(v2 + 16))(v4, v7, v1);
  sub_1CAD4C184();
  sub_1CAD4BF94();
  result = sub_1CAD4DFD4();
  qword_1EC47E018 = result;
  unk_1EC47E020 = v9;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_1CABB791C()
{
  sub_1CABB7D3C(319, &qword_1EC461F88);
  if (v0 <= 0x3F)
  {
    sub_1CABB7D3C(319, &qword_1EC4634D0);
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1CABB79EC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 48) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_1CABB7B44(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (((((result + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}
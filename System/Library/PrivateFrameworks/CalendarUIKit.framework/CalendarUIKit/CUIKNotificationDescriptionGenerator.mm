@interface CUIKNotificationDescriptionGenerator
+ (id)_autoCommentForProposedTime:(id)time timeZone:(id)zone;
+ (id)blockedAttendeeString;
+ (id)comment:(id)comment withInsertedAutoCommentForDate:(id)date timeZone:(id)zone;
+ (id)sharedGenerator;
+ (id)timeSensitiveString;
- (id)_adjustedTitle:(id)title maxLength:(unint64_t)length;
- (id)_sharedDateFormatter;
- (id)_sharedDateTimeFormatter;
- (id)_sharedNumberFormatter;
- (id)_sharedTimeFormatter;
- (id)conflictStringForConflictDetails:(id)details maxTitleLength:(unint64_t)length descriptions:(id)descriptions;
- (id)timePeriodForTimeInterval:(id)interval;
@end

@implementation CUIKNotificationDescriptionGenerator

+ (id)sharedGenerator
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__CUIKNotificationDescriptionGenerator_sharedGenerator__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedGenerator_onceToken_3 != -1)
  {
    dispatch_once(&sharedGenerator_onceToken_3, block);
  }

  v2 = sharedGenerator___sharedInstance_3;

  return v2;
}

uint64_t __55__CUIKNotificationDescriptionGenerator_sharedGenerator__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedGenerator___sharedInstance_3;
  sharedGenerator___sharedInstance_3 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (id)_sharedNumberFormatter
{
  numberFormatter = self->_numberFormatter;
  if (!numberFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v5 = self->_numberFormatter;
    self->_numberFormatter = v4;

    [(NSNumberFormatter *)self->_numberFormatter setNumberStyle:1];
    v6 = self->_numberFormatter;
    autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    [(NSNumberFormatter *)v6 setLocale:autoupdatingCurrentLocale];

    numberFormatter = self->_numberFormatter;
  }

  return numberFormatter;
}

- (id)_sharedDateFormatter
{
  dateFormatter = self->_dateFormatter;
  if (!dateFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v5 = self->_dateFormatter;
    self->_dateFormatter = v4;

    [(NSDateFormatter *)self->_dateFormatter setDateStyle:2];
    [(NSDateFormatter *)self->_dateFormatter setTimeStyle:0];
    v6 = self->_dateFormatter;
    autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    [(NSDateFormatter *)v6 setLocale:autoupdatingCurrentLocale];

    dateFormatter = self->_dateFormatter;
  }

  return dateFormatter;
}

- (id)_sharedTimeFormatter
{
  timeFormatter = self->_timeFormatter;
  if (!timeFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v5 = self->_timeFormatter;
    self->_timeFormatter = v4;

    [(NSDateFormatter *)self->_timeFormatter setDateStyle:0];
    [(NSDateFormatter *)self->_timeFormatter setTimeStyle:1];
    v6 = self->_timeFormatter;
    autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    [(NSDateFormatter *)v6 setLocale:autoupdatingCurrentLocale];

    timeFormatter = self->_timeFormatter;
  }

  return timeFormatter;
}

- (id)_sharedDateTimeFormatter
{
  dateTimeFormatter = self->_dateTimeFormatter;
  if (!dateTimeFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v5 = self->_dateTimeFormatter;
    self->_dateTimeFormatter = v4;

    [(NSDateFormatter *)self->_dateTimeFormatter setDateStyle:1];
    [(NSDateFormatter *)self->_dateTimeFormatter setTimeStyle:1];
    v6 = self->_dateTimeFormatter;
    autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    [(NSDateFormatter *)v6 setLocale:autoupdatingCurrentLocale];

    dateTimeFormatter = self->_dateTimeFormatter;
  }

  return dateTimeFormatter;
}

- (id)timePeriodForTimeInterval:(id)interval
{
  intervalCopy = interval;
  startDate = [intervalCopy startDate];
  [startDate timeIntervalSinceNow];
  v6 = v5;

  [intervalCopy duration];
  v8 = v7;

  v9 = objc_opt_new();
  [v9 setAllowedUnits:4108];
  [v9 setMaximumUnitCount:1];
  [v9 setAllowsFractionalUnits:0];
  [v9 setUnitsStyle:4];
  v10 = [v9 stringFromTimeInterval:v6 + v8];

  return v10;
}

- (id)_adjustedTitle:(id)title maxLength:(unint64_t)length
{
  titleCopy = title;
  [titleCopy rangeOfComposedCharacterSequencesForRange:{0, objc_msgSend(titleCopy, "length")}];
  if (v6 <= length)
  {
    v7 = titleCopy;
  }

  else
  {
    v7 = objc_opt_new();
    v8 = [titleCopy rangeOfComposedCharacterSequenceAtIndex:length];
    v10 = [titleCopy substringToIndex:v8 + v9];
    [v7 appendString:v10];

    ellipsisString = [MEMORY[0x1E696AEC0] ellipsisString];
    [v7 appendString:ellipsisString];
  }

  return v7;
}

- (id)conflictStringForConflictDetails:(id)details maxTitleLength:(unint64_t)length descriptions:(id)descriptions
{
  detailsCopy = details;
  descriptionsCopy = descriptions;
  totalConflictingEvents = [detailsCopy totalConflictingEvents];
  totalNeedsActionEvents = [detailsCopy totalNeedsActionEvents];
  if ([detailsCopy totalOccurrencesInSeries] >= 2 && objc_msgSend(detailsCopy, "totalConflictsInSeries"))
  {
    totalConflictsInSeries = [detailsCopy totalConflictsInSeries];
    conflictPeriodForSeries = [detailsCopy conflictPeriodForSeries];

    if (conflictPeriodForSeries)
    {
      v14 = MEMORY[0x1E696AEC0];
      v15 = CUIKBundle();
      title3 = v15;
      if (totalConflictsInSeries == 1)
      {
        v17 = [v15 localizedStringForKey:@"Conflict: One out of the next %ld occurrences" value:&stru_1F4AA8958 table:0];
        [v14 localizedStringWithFormat:v17, objc_msgSend(detailsCopy, "totalOccurrencesInSeries"), totalOccurrencesInSeries];
        v27 = LABEL_37:;
        goto LABEL_38;
      }

      v17 = [v15 localizedStringForKey:@"Conflicts: %ld out of next %ld occurrences" value:&stru_1F4AA8958 table:0];
      totalOccurrencesInSeries = [detailsCopy totalOccurrencesInSeries];
LABEL_32:
      [v14 localizedStringWithFormat:v17, totalConflictsInSeries, totalOccurrencesInSeries];
      goto LABEL_37;
    }

    if (totalConflictsInSeries != 1 || ([detailsCopy needsActionEvents], v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v42, "count"), v42, !v43))
    {
      v14 = MEMORY[0x1E696AEC0];
      title3 = CUIKBundle();
      v17 = [title3 localizedStringForKey:@"Conflicts with %ld events" value:&stru_1F4AA8958 table:0];
      goto LABEL_32;
    }

    if (length)
    {
      conflictingEvents = [detailsCopy conflictingEvents];
      firstObject = [conflictingEvents firstObject];
      title = [firstObject title];

      title3 = [(CUIKNotificationDescriptionGenerator *)self _adjustedTitle:title maxLength:length];

      v47 = MEMORY[0x1E696AEC0];
      v48 = CUIKBundle();
      v49 = [v48 localizedStringForKey:@"Conflicts with %@" value:&stru_1F4AA8958 table:0];
      v27 = [v47 localizedStringWithFormat:v49, title3];

      if (!descriptionsCopy)
      {
        goto LABEL_39;
      }

      goto LABEL_27;
    }

    v53 = MEMORY[0x1E696AEC0];
    v54 = CUIKBundle();
    title3 = v54;
    v55 = @"Conflicts with an event";
LABEL_36:
    v17 = [v54 localizedStringForKey:v55 value:&stru_1F4AA8958 table:0];
    [v53 localizedStringWithFormat:v17, 1, totalOccurrencesInSeries];
    goto LABEL_37;
  }

  v18 = totalNeedsActionEvents + totalConflictingEvents;
  if (totalNeedsActionEvents + totalConflictingEvents >= 1)
  {
    if ([detailsCopy totalConflictingEvents])
    {
      if (v18 == 1)
      {
        conflictingEvents2 = [detailsCopy conflictingEvents];
        v20 = [conflictingEvents2 count];

        if (v20)
        {
          if (!length)
          {
            v53 = MEMORY[0x1E696AEC0];
            v54 = CUIKBundle();
            title3 = v54;
            v55 = @"Another event is scheduled for this time";
            goto LABEL_36;
          }

          conflictingEvents3 = [detailsCopy conflictingEvents];
          firstObject2 = [conflictingEvents3 firstObject];
          title2 = [firstObject2 title];

          title3 = [(CUIKNotificationDescriptionGenerator *)self _adjustedTitle:title2 maxLength:length];

          v24 = MEMORY[0x1E696AEC0];
          v25 = CUIKBundle();
          v26 = [v25 localizedStringForKey:@"One conflict" value:@"%@ is also scheduled for this time" table:0];
          v27 = [v24 localizedStringWithFormat:v26, title3];

          if (descriptionsCopy && title3)
          {
LABEL_27:
            v50 = MEMORY[0x1E696B098];
            v51 = [v27 rangeOfString:title3];
            v17 = [v50 valueWithRange:{v51, v52}];
            [descriptionsCopy setObject:v17 forKeyedSubscript:@"ConflictEventRange"];
            goto LABEL_38;
          }

LABEL_39:

          if (!descriptionsCopy)
          {
            goto LABEL_41;
          }

          goto LABEL_40;
        }
      }

      v28 = MEMORY[0x1E696AEC0];
      v29 = CUIKBundle();
      title3 = v29;
      v30 = @"N conflicts";
    }

    else
    {
      if ([detailsCopy totalNeedsActionEvents] == 1)
      {
        needsActionEvents = [detailsCopy needsActionEvents];
        v32 = [needsActionEvents count];

        if (v32)
        {
          needsActionEvents2 = [detailsCopy needsActionEvents];
          firstObject3 = [needsActionEvents2 firstObject];
          title3 = [firstObject3 title];

          if (!length || !title3)
          {
            v56 = MEMORY[0x1E696AEC0];
            v17 = CUIKBundle();
            v57 = [v17 localizedStringForKey:@"Another event is scheduled for this time" value:&stru_1F4AA8958 table:0];
            v27 = [v56 localizedStringWithFormat:v57, v18];

            goto LABEL_38;
          }

          v35 = [(CUIKNotificationDescriptionGenerator *)self _adjustedTitle:title3 maxLength:length];

          v36 = MEMORY[0x1E696AEC0];
          v37 = CUIKBundle();
          v38 = [v37 localizedStringForKey:@"One invitation" value:@"%@ is also scheduled for this time" table:0];
          v27 = [v36 localizedStringWithFormat:v38, v35];

          if (descriptionsCopy)
          {
            v39 = MEMORY[0x1E696B098];
            v40 = [v27 rangeOfString:v35];
            v17 = [v39 valueWithRange:{v40, v41}];
            [descriptionsCopy setObject:v17 forKeyedSubscript:@"ConflictEventRange"];
            title3 = v35;
LABEL_38:

            goto LABEL_39;
          }

          title3 = v35;
          goto LABEL_39;
        }
      }

      v28 = MEMORY[0x1E696AEC0];
      v29 = CUIKBundle();
      title3 = v29;
      v30 = @"N invitations";
    }

    v17 = [v29 localizedStringForKey:v30 value:@"%ld other events are also scheduled for this time" table:0];
    [v28 localizedStringWithFormat:v17, v18, totalOccurrencesInSeries];
    goto LABEL_37;
  }

  v27 = 0;
  if (descriptionsCopy)
  {
LABEL_40:
    [descriptionsCopy setObject:v27 forKeyedSubscript:@"Conflict"];
  }

LABEL_41:

  return v27;
}

+ (id)_autoCommentForProposedTime:(id)time timeZone:(id)zone
{
  v4 = [MEMORY[0x1E6992F68] longStringForDateAndTime:time inTimeZone:zone];
  v5 = MEMORY[0x1E696AEC0];
  v6 = CUIKBundle();
  v7 = [v6 localizedStringForKey:@"%@Can we move this event to %@?" value:&stru_1F4AA8958 table:0];
  calAutoCommentPrefix = [MEMORY[0x1E696AEC0] CalAutoCommentPrefix];
  v9 = [v5 localizedStringWithFormat:v7, calAutoCommentPrefix, v4];

  return v9;
}

+ (id)comment:(id)comment withInsertedAutoCommentForDate:(id)date timeZone:(id)zone
{
  commentCopy = comment;
  v8 = commentCopy;
  if (date)
  {
    v9 = [CUIKNotificationDescriptionGenerator _autoCommentForProposedTime:date timeZone:zone];
    if (v8 && ([v8 CalHasAutoCommentPrefix] & 1) == 0)
    {
      v10 = [v9 stringByAppendingFormat:@"\n%@", v8];

      v9 = v10;
    }
  }

  else
  {
    v9 = commentCopy;
  }

  return v9;
}

+ (id)timeSensitiveString
{
  v2 = CUIKBundle();
  v3 = [v2 localizedStringForKey:@"Time Sensitive" value:&stru_1F4AA8958 table:0];

  return v3;
}

+ (id)blockedAttendeeString
{
  v2 = CUIKBundle();
  v3 = [v2 localizedStringForKey:@"Includes a blocked contact" value:&stru_1F4AA8958 table:0];

  return v3;
}

@end
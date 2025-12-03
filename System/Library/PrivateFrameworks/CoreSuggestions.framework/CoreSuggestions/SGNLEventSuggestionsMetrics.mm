@interface SGNLEventSuggestionsMetrics
+ (SGMEventDateAdj_)diffEventStartDateChangedFrom:(id)from oldTimeZone:(id)zone to:(id)to newTimeZone:(id)timeZone;
+ (SGMEventDurationAdj_)diffEventDurationChangedFrom:(double)from to:(double)to;
+ (SGMEventLocationAdj_)diffEventLocationFrom:(id)from to:(id)to;
+ (SGMEventStringAdj_)diffEventTitleChangedFrom:(id)from to:(id)to;
+ (double)round:(double)round toSignificantFigures:(int64_t)figures;
+ (id)getAddedAttendeesCountFromEKEvent:(id)event;
+ (id)instance;
+ (unint64_t)bucketizeInteger:(unint64_t)integer withBucketSize:(unint64_t)size limit:(unint64_t)limit;
+ (void)recordInteractionForEventWithInterface:(unsigned __int16)interface actionType:(unsigned __int16)type harvestedSGEvent:(id)event curatedEKEvent:(id)kEvent;
+ (void)recordUserInteraction:(unint64_t)interaction withLinkInApplication:(int64_t)application eventPrefillMode:(unint64_t)mode eventTypeClassification:(id)classification proposedEvent:(id)event confirmedEvent:(id)confirmedEvent;
+ (void)shownViaDataDetectorsLinkInApp:(int64_t)app;
- (SGNLEventSuggestionsMetrics)init;
@end

@implementation SGNLEventSuggestionsMetrics

- (SGNLEventSuggestionsMetrics)init
{
  v6.receiver = self;
  v6.super_class = SGNLEventSuggestionsMetrics;
  v2 = [(SGNLEventSuggestionsMetrics *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(SGNLEventSuggestionsMetrics *)v2 setDdLinkShown:v3];

    v4 = objc_opt_new();
    [(SGNLEventSuggestionsMetrics *)v2 setNlEvent:v4];
  }

  return v2;
}

+ (SGMEventLocationAdj_)diffEventLocationFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  v7 = toCopy;
  if (!fromCopy || !toCopy)
  {
    if (!fromCopy)
    {
      if (!toCopy || ![toCopy length])
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

LABEL_9:
    v10 = [fromCopy length];
    if (!v7 || v10 || ![v7 length])
    {
      if ([fromCopy length] && (!v7 || !objc_msgSend(v7, "length")))
      {
        v9 = &SGMEventLocationAdjRemoved;
        goto LABEL_20;
      }

LABEL_19:
      v9 = &SGMEventLocationAdjNA;
      goto LABEL_20;
    }

LABEL_18:
    v9 = &SGMEventLocationAdjAdded;
    goto LABEL_20;
  }

  if (![fromCopy length] || !objc_msgSend(v7, "length"))
  {
    goto LABEL_9;
  }

  v8 = [fromCopy isEqualToString:v7];
  v9 = &SGMEventLocationAdjModified;
  if (v8)
  {
    v9 = &SGMEventLocationAdjConfirmed;
  }

LABEL_20:
  v11.var0 = *v9;

  return v11;
}

+ (SGMEventDurationAdj_)diffEventDurationChangedFrom:(double)from to:(double)to
{
  v4 = vabdd_f64(from, to);
  if (v4)
  {
    if (v4 >= 0x708)
    {
      if (v4 >= 0xE10)
      {
        if (v4 >> 5 >= 0xE1)
        {
          v5 = &SGMEventDurationAdjMoreThan2Hours;
        }

        else
        {
          v5 = &SGMEventDurationAdj1To2Hours;
        }
      }

      else
      {
        v5 = &SGMEventDurationAdj30To60Min;
      }
    }

    else
    {
      v5 = &SGMEventDurationAdjLessThan30Min;
    }
  }

  else
  {
    v5 = &SGMEventDurationAdjConfirmed;
  }

  return v5->var0;
}

+ (SGMEventDateAdj_)diffEventStartDateChangedFrom:(id)from oldTimeZone:(id)zone to:(id)to newTimeZone:(id)timeZone
{
  fromCopy = from;
  zoneCopy = zone;
  toCopy = to;
  timeZoneCopy = timeZone;
  if (!fromCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsMetrics.m" lineNumber:583 description:{@"Invalid parameter not satisfying: %@", @"oldDate"}];

    if (toCopy)
    {
      goto LABEL_3;
    }

LABEL_39:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGSuggestionsMetrics.m" lineNumber:584 description:{@"Invalid parameter not satisfying: %@", @"newDate"}];

    goto LABEL_3;
  }

  if (!toCopy)
  {
    goto LABEL_39;
  }

LABEL_3:
  if (![fromCopy isEqualToDate:toCopy] || (objc_msgSend(zoneCopy, "isEqualToTimeZone:", timeZoneCopy) & 1) == 0)
  {
    v16 = objc_autoreleasePoolPush();
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v18 = currentCalendar;
    if (zoneCopy)
    {
      [currentCalendar setTimeZone:zoneCopy];
    }

    else
    {
      v19 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
      [v18 setTimeZone:v19];
    }

    v20 = [v18 components:252 fromDate:fromCopy];
    if (timeZoneCopy)
    {
      [v18 setTimeZone:timeZoneCopy];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
      [v18 setTimeZone:v21];
    }

    v22 = [v18 components:252 fromDate:toCopy];
    year = [v20 year];
    if (year == [v22 year] && (v24 = objc_msgSend(v20, "month"), v24 == objc_msgSend(v22, "month")))
    {
      v25 = [v20 day];
      v26 = v25 != [v22 day];
    }

    else
    {
      v26 = 1;
    }

    hour = [v20 hour];
    if (hour == [v22 hour] && (v28 = objc_msgSend(v20, "minute"), v28 == objc_msgSend(v22, "minute")))
    {
      second = [v20 second];
      v30 = second != [v22 second];
      if (!v26)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v30 = 1;
      if (!v26)
      {
LABEL_19:
        if (v30)
        {
          [toCopy timeIntervalSinceDate:fromCopy];
          if (v31 <= -7200.0)
          {
            v32 = &SGMEventDateAdjSubTime2hPlus;
          }

          else if (v31 <= -3600.0)
          {
            v32 = &SGMEventDateAdjSubTime2h;
          }

          else if (v31 >= 0.0)
          {
            if (v31 >= 3600.0)
            {
              v32 = &SGMEventDateAdjAddTime2hPlus;
              if (v31 < 7200.0)
              {
                v32 = &SGMEventDateAdjAddTime2h;
              }
            }

            else
            {
              v32 = &SGMEventDateAdjAddTime1h;
            }
          }

          else
          {
            v32 = &SGMEventDateAdjSubTime1h;
          }
        }

        else
        {
          v32 = &SGMEventDateAdjConfirmed;
        }

        goto LABEL_31;
      }
    }

    if (v30)
    {
      v32 = &SGMEventDateAdjChangedDayAndTime;
    }

    else
    {
      v32 = &SGMEventDateAdjChangedDay;
    }

LABEL_31:
    v15.var0 = *v32;

    objc_autoreleasePoolPop(v16);
    goto LABEL_32;
  }

  v15.var0 = 1;
LABEL_32:

  return v15;
}

+ (SGMEventStringAdj_)diffEventTitleChangedFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  if (fromCopy == toCopy || ([fromCopy isEqualToString:toCopy] & 1) != 0)
  {
    v7 = &SGMEventStringAdjConfirmed;
  }

  else if ([fromCopy length])
  {
    v7 = &SGMEventStringAdjReplaced;
    if ([toCopy length])
    {
      v10 = objc_autoreleasePoolPush();
      lowercaseString = [fromCopy lowercaseString];
      objc_autoreleasePoolPop(v10);

      v12 = objc_autoreleasePoolPush();
      lowercaseString2 = [toCopy lowercaseString];
      objc_autoreleasePoolPop(v12);

      if ([lowercaseString isEqualToString:lowercaseString2])
      {
        v7 = &SGMEventStringAdjConfirmed;
      }

      else if ([lowercaseString2 hasSuffix:lowercaseString])
      {
        v7 = &SGMEventStringAdjPrefixAdded;
      }

      else if ([lowercaseString2 hasPrefix:lowercaseString])
      {
        v7 = &SGMEventStringAdjSuffixAdded;
      }

      toCopy = lowercaseString2;
      fromCopy = lowercaseString;
    }
  }

  else
  {
    v7 = &SGMEventStringAdjReplaced;
  }

  v8.var0 = *v7;

  return v8;
}

+ (double)round:(double)round toSignificantFigures:(int64_t)figures
{
  result = 0.0;
  if (round != 0.0)
  {
    roundCopy = -round;
    if (round >= 0.0)
    {
      roundCopy = round;
    }

    v8 = log10(roundCopy);
    v9 = __exp10((figures - vcvtpd_s64_f64(v8)));
    return llround(v9 * round) / v9;
  }

  return result;
}

+ (unint64_t)bucketizeInteger:(unint64_t)integer withBucketSize:(unint64_t)size limit:(unint64_t)limit
{
  if (!size)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsMetrics.m" lineNumber:544 description:@"bucketSize must be > 0"];
  }

  if (integer <= limit)
  {
    return (integer + size - 1) / size * size;
  }

  return limit;
}

+ (void)recordUserInteraction:(unint64_t)interaction withLinkInApplication:(int64_t)application eventPrefillMode:(unint64_t)mode eventTypeClassification:(id)classification proposedEvent:(id)event confirmedEvent:(id)confirmedEvent
{
  v23 = *MEMORY[0x1E69E9840];
  classificationCopy = classification;
  eventCopy = event;
  confirmedEventCopy = confirmedEvent;
  if (interaction >= 4)
  {
    v16 = sgLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v21 = 134217984;
      modeCopy = interaction;
      _os_log_error_impl(&dword_1BA729000, v16, OS_LOG_TYPE_ERROR, "unhandled SGDDEventInteraction: %lu", &v21, 0xCu);
    }

    LOWORD(v16) = 8;
  }

  else
  {
    v16 = (0x8000800070006uLL >> (16 * interaction));
  }

  if (mode >= 5)
  {
    v18 = sgLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = 134217984;
      modeCopy = mode;
      _os_log_error_impl(&dword_1BA729000, v18, OS_LOG_TYPE_ERROR, "unhandled SGDDEventPrefillMode: %lu", &v21, 0xCu);
    }

    v17 = &SGMNLEventExtractionLevelNA;
  }

  else
  {
    v17 = *(&off_1E7EFCCC8 + mode);
  }

  if (application == 3)
  {
    v19 = 3;
  }

  else
  {
    v19 = 6;
  }

  [SGNLEventSuggestionsMetrics recordInteractionForEventWithInterface:v19 actionType:v16 eventType:classificationCopy extractionLevel:*v17 harvestedEKEvent:eventCopy curatedEKEvent:confirmedEventCopy];

  v20 = *MEMORY[0x1E69E9840];
}

+ (void)shownViaDataDetectorsLinkInApp:(int64_t)app
{
  v20 = *MEMORY[0x1E69E9840];
  if ((app - 4) > 0xFFFFFFFFFFFFFFFDLL)
  {
    instance = [self instance];
    ddLinkShown = [instance ddLinkShown];
    v8 = ddLinkShown;
    if (app == 3)
    {
      v9 = 3;
    }

    else
    {
      v9 = 6;
    }

    if (app == 3)
    {
      v10 = 1;
    }

    else
    {
      v10 = 4;
    }

    [ddLinkShown trackEventWithScalar:1 interface:v9];

    v17 = objc_opt_new();
    [v17 setInterface:v10];
    mEMORY[0x1E69C5B48] = [MEMORY[0x1E69C5B48] sharedInstance];
    [mEMORY[0x1E69C5B48] trackScalarForMessage:v17];

    v12 = objc_alloc(MEMORY[0x1E696AEC0]);
    v13 = [v17 key];
    v14 = [v12 initWithFormat:@"%@.%@", @"com.apple.Proactive.CoreSuggestions", v13];

    dictionaryRepresentation = [v17 dictionaryRepresentation];
    AnalyticsSendEvent();

    v16 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v4 = sgLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      appCopy = app;
      _os_log_error_impl(&dword_1BA729000, v4, OS_LOG_TYPE_ERROR, "trying to log DD link engagement from unexpected app: %lu", buf, 0xCu);
    }

    v5 = *MEMORY[0x1E69E9840];
  }
}

+ (id)getAddedAttendeesCountFromEKEvent:(id)event
{
  v18 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  if ([eventCopy hasAttendees])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    attendees = [eventCopy attendees];
    v5 = [attendees countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(attendees);
          }

          if ([*(*(&v13 + 1) + 8 * i) participantType] == 1)
          {
            ++v7;
          }
        }

        v6 = [attendees countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
  }

  else
  {
    v10 = &unk_1F3874310;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (void)recordInteractionForEventWithInterface:(unsigned __int16)interface actionType:(unsigned __int16)type harvestedSGEvent:(id)event curatedEKEvent:(id)kEvent
{
  interfaceCopy = interface;
  typeCopy = type;
  v98 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  kEventCopy = kEvent;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  tags = [eventCopy tags];
  v9 = [tags countByEnumeratingWithState:&v93 objects:v97 count:16];
  if (v9)
  {
    v10 = v9;
    v82 = a2;
    v11 = @"NA";
    v12 = *v94;
    v13 = 0;
    v14 = -1.0;
    integerValue2 = -1;
    integerValue = 0;
    integerValue4 = 0;
    integerValue3 = -1;
    v15 = @"NA";
    while (1)
    {
      v16 = 0;
      do
      {
        if (*v94 != v12)
        {
          objc_enumerationMutation(tags);
        }

        v17 = [SGEntityTag resolveName:*(*(&v93 + 1) + 8 * v16)];
        if ([v17 isNaturalLanguageEventTypeIdentifier])
        {
          value = [v17 value];

          if (value)
          {
            v15 = value;
            goto LABEL_14;
          }

          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:v82 object:self file:@"SGSuggestionsMetrics.m" lineNumber:235 description:{@"Invalid parameter not satisfying: %@", @"eventType"}];
          v15 = 0;
          goto LABEL_13;
        }

        if ([v17 isConfidenceScore])
        {
          currentHandler = [v17 value];
          [currentHandler floatValue];
          v13 = v20;
LABEL_13:

          goto LABEL_14;
        }

        if ([v17 isParticipantCount])
        {
          currentHandler = [v17 value];
          integerValue = [currentHandler integerValue];
          goto LABEL_13;
        }

        if ([v17 isNaturalLanguageEventLanguageID])
        {
          value2 = [v17 value];

          if (!value2)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:v82 object:self file:@"SGSuggestionsMetrics.m" lineNumber:242 description:{@"Invalid parameter not satisfying: %@", @"languageID"}];
            v11 = 0;
            goto LABEL_13;
          }

          v11 = value2;
        }

        else
        {
          if ([v17 isCalendarAppUsageLevel])
          {
            currentHandler = [v17 value];
            [currentHandler floatValue];
            v14 = v22;
            goto LABEL_13;
          }

          if ([v17 isMailAppUsageLevel])
          {
            currentHandler = [v17 value];
            integerValue2 = [currentHandler integerValue];
            goto LABEL_13;
          }

          if ([v17 isMessagesAppUsageLevel])
          {
            currentHandler = [v17 value];
            integerValue3 = [currentHandler integerValue];
            goto LABEL_13;
          }

          if ([v17 isUsedBubblesCount])
          {
            currentHandler = [v17 value];
            integerValue4 = [currentHandler integerValue];
            goto LABEL_13;
          }
        }

LABEL_14:

        ++v16;
      }

      while (v10 != v16);
      v23 = [tags countByEnumeratingWithState:&v93 objects:v97 count:16];
      v10 = v23;
      if (!v23)
      {
        goto LABEL_32;
      }
    }
  }

  v11 = @"NA";
  v13 = 0;
  v14 = -1.0;
  integerValue2 = -1;
  integerValue = 0;
  integerValue4 = 0;
  integerValue3 = -1;
  v15 = @"NA";
LABEL_32:

  tags2 = [eventCopy tags];
  v25 = +[SGEntityTag significantSender];
  name = [v25 name];
  v27 = [tags2 containsObject:name];

  tags3 = [eventCopy tags];
  v29 = +[SGEntityTag titleGeneratedFromTemplate];
  name2 = [v29 name];
  v31 = [tags3 containsObject:name2];

  if (v31)
  {
    v32 = 2;
  }

  else
  {
    tags4 = [eventCopy tags];
    v34 = +[SGEntityTag titleGeneratedFromSubject];
    name3 = [v34 name];
    v36 = [tags4 containsObject:name3];

    v32 = v36;
  }

  v37 = kEventCopy;
  v38 = v27;
  if (kEventCopy)
  {
    v80 = v32;
    v81 = v27;
    title = [eventCopy title];
    title2 = [kEventCopy title];
    selfCopy = self;
    v42 = [self diffEventTitleChangedFrom:title to:title2];

    start = [eventCopy start];
    startTimeZone = [eventCopy startTimeZone];
    startDate = [kEventCopy startDate];
    timeZone = [kEventCopy timeZone];
    v79 = [self diffEventStartDateChangedFrom:start oldTimeZone:startTimeZone to:startDate newTimeZone:timeZone];

    [eventCopy duration];
    v48 = v47;
    [kEventCopy duration];
    v77 = [self diffEventDurationChangedFrom:v48 to:v49];
    v50 = [objc_opt_class() getAddedAttendeesCountFromEKEvent:kEventCopy];
    stringValue = [v50 stringValue];

    locations = [eventCopy locations];
    v53 = [locations count];
    v83 = v42;
    if (v53)
    {
      locations2 = [eventCopy locations];
      firstObject = [locations2 firstObject];
      address = [firstObject address];
      selfCopy = address;
      if (address)
      {
        v55 = 0;
        label = address;
      }

      else
      {
        locations3 = [eventCopy locations];
        firstObject2 = [locations3 firstObject];
        label = [firstObject2 label];
        v55 = 1;
      }
    }

    else
    {
      v55 = 0;
      label = 0;
    }

    v78 = stringValue;
    locationsWithoutPrediction = [kEventCopy locationsWithoutPrediction];
    if ([locationsWithoutPrediction count])
    {
      locationWithoutPrediction = [kEventCopy locationWithoutPrediction];
      v63 = [self diffEventLocationFrom:label to:locationWithoutPrediction];
    }

    else
    {
      v63 = [self diffEventLocationFrom:label to:0];
    }

    if (v55)
    {
    }

    v64 = v63;
    if (v53)
    {
    }

    v57 = eventCopy;
    v38 = v81;
    v37 = v79;
    v32 = v80;
    v58 = v77;
    v60 = v78;
    v59 = v64;
  }

  else
  {
    v83 = 0;
    v57 = eventCopy;
    v58 = 0;
    v59 = 0;
    v60 = @"NA";
  }

  v65 = v38;
  v66 = objc_opt_class();
  start2 = [v57 start];
  BYTE1(v72) = integerValue3;
  LOBYTE(v72) = integerValue2;
  LOBYTE(v71) = integerValue4;
  LODWORD(v68) = v13;
  *&v69 = v14;
  [v66 recordInteractionForEventWithInterface:interfaceCopy actionType:typeCopy eventType:v15 languageID:v11 startDate:start2 confidenceScore:integerValue participantCount:v68 significantSender:v69 extractionLevel:v65 usedBubblesCount:0 titleSource:v71 titleAdj:v32 dateAdj:v83 duraAdj:v37 locationAdj:v58 addedAttendeesCount:v59 calendarAppUsageLevel:v60 mailAppUsageLevel:v72 messagesAppUsageLevel:?];

  v70 = *MEMORY[0x1E69E9840];
}

+ (id)instance
{
  if (instance_onceToken != -1)
  {
    dispatch_once(&instance_onceToken, &__block_literal_global_7450);
  }

  v3 = instance__instance;

  return v3;
}

uint64_t __39__SGNLEventSuggestionsMetrics_instance__block_invoke()
{
  instance__instance = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

@end
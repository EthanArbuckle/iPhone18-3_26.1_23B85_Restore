@interface SGNLEventSuggestionsMetrics
+ (SGMEventDateAdj_)diffEventStartDateChangedFrom:(id)a3 oldTimeZone:(id)a4 to:(id)a5 newTimeZone:(id)a6;
+ (SGMEventDurationAdj_)diffEventDurationChangedFrom:(double)a3 to:(double)a4;
+ (SGMEventLocationAdj_)diffEventLocationFrom:(id)a3 to:(id)a4;
+ (SGMEventStringAdj_)diffEventTitleChangedFrom:(id)a3 to:(id)a4;
+ (double)round:(double)a3 toSignificantFigures:(int64_t)a4;
+ (id)getAddedAttendeesCountFromEKEvent:(id)a3;
+ (id)instance;
+ (unint64_t)bucketizeInteger:(unint64_t)a3 withBucketSize:(unint64_t)a4 limit:(unint64_t)a5;
+ (void)recordInteractionForEventWithInterface:(unsigned __int16)a3 actionType:(unsigned __int16)a4 harvestedSGEvent:(id)a5 curatedEKEvent:(id)a6;
+ (void)recordUserInteraction:(unint64_t)a3 withLinkInApplication:(int64_t)a4 eventPrefillMode:(unint64_t)a5 eventTypeClassification:(id)a6 proposedEvent:(id)a7 confirmedEvent:(id)a8;
+ (void)shownViaDataDetectorsLinkInApp:(int64_t)a3;
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

+ (SGMEventLocationAdj_)diffEventLocationFrom:(id)a3 to:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5 || !v6)
  {
    if (!v5)
    {
      if (!v6 || ![v6 length])
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

LABEL_9:
    v10 = [v5 length];
    if (!v7 || v10 || ![v7 length])
    {
      if ([v5 length] && (!v7 || !objc_msgSend(v7, "length")))
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

  if (![v5 length] || !objc_msgSend(v7, "length"))
  {
    goto LABEL_9;
  }

  v8 = [v5 isEqualToString:v7];
  v9 = &SGMEventLocationAdjModified;
  if (v8)
  {
    v9 = &SGMEventLocationAdjConfirmed;
  }

LABEL_20:
  v11.var0 = *v9;

  return v11;
}

+ (SGMEventDurationAdj_)diffEventDurationChangedFrom:(double)a3 to:(double)a4
{
  v4 = vabdd_f64(a3, a4);
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

+ (SGMEventDateAdj_)diffEventStartDateChangedFrom:(id)a3 oldTimeZone:(id)a4 to:(id)a5 newTimeZone:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11)
  {
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    [v34 handleFailureInMethod:a2 object:a1 file:@"SGSuggestionsMetrics.m" lineNumber:583 description:{@"Invalid parameter not satisfying: %@", @"oldDate"}];

    if (v13)
    {
      goto LABEL_3;
    }

LABEL_39:
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    [v35 handleFailureInMethod:a2 object:a1 file:@"SGSuggestionsMetrics.m" lineNumber:584 description:{@"Invalid parameter not satisfying: %@", @"newDate"}];

    goto LABEL_3;
  }

  if (!v13)
  {
    goto LABEL_39;
  }

LABEL_3:
  if (![v11 isEqualToDate:v13] || (objc_msgSend(v12, "isEqualToTimeZone:", v14) & 1) == 0)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = [MEMORY[0x1E695DEE8] currentCalendar];
    v18 = v17;
    if (v12)
    {
      [v17 setTimeZone:v12];
    }

    else
    {
      v19 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
      [v18 setTimeZone:v19];
    }

    v20 = [v18 components:252 fromDate:v11];
    if (v14)
    {
      [v18 setTimeZone:v14];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
      [v18 setTimeZone:v21];
    }

    v22 = [v18 components:252 fromDate:v13];
    v23 = [v20 year];
    if (v23 == [v22 year] && (v24 = objc_msgSend(v20, "month"), v24 == objc_msgSend(v22, "month")))
    {
      v25 = [v20 day];
      v26 = v25 != [v22 day];
    }

    else
    {
      v26 = 1;
    }

    v27 = [v20 hour];
    if (v27 == [v22 hour] && (v28 = objc_msgSend(v20, "minute"), v28 == objc_msgSend(v22, "minute")))
    {
      v29 = [v20 second];
      v30 = v29 != [v22 second];
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
          [v13 timeIntervalSinceDate:v11];
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

+ (SGMEventStringAdj_)diffEventTitleChangedFrom:(id)a3 to:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 == v6 || ([v5 isEqualToString:v6] & 1) != 0)
  {
    v7 = &SGMEventStringAdjConfirmed;
  }

  else if ([v5 length])
  {
    v7 = &SGMEventStringAdjReplaced;
    if ([v6 length])
    {
      v10 = objc_autoreleasePoolPush();
      v11 = [v5 lowercaseString];
      objc_autoreleasePoolPop(v10);

      v12 = objc_autoreleasePoolPush();
      v13 = [v6 lowercaseString];
      objc_autoreleasePoolPop(v12);

      if ([v11 isEqualToString:v13])
      {
        v7 = &SGMEventStringAdjConfirmed;
      }

      else if ([v13 hasSuffix:v11])
      {
        v7 = &SGMEventStringAdjPrefixAdded;
      }

      else if ([v13 hasPrefix:v11])
      {
        v7 = &SGMEventStringAdjSuffixAdded;
      }

      v6 = v13;
      v5 = v11;
    }
  }

  else
  {
    v7 = &SGMEventStringAdjReplaced;
  }

  v8.var0 = *v7;

  return v8;
}

+ (double)round:(double)a3 toSignificantFigures:(int64_t)a4
{
  result = 0.0;
  if (a3 != 0.0)
  {
    v7 = -a3;
    if (a3 >= 0.0)
    {
      v7 = a3;
    }

    v8 = log10(v7);
    v9 = __exp10((a4 - vcvtpd_s64_f64(v8)));
    return llround(v9 * a3) / v9;
  }

  return result;
}

+ (unint64_t)bucketizeInteger:(unint64_t)a3 withBucketSize:(unint64_t)a4 limit:(unint64_t)a5
{
  if (!a4)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"SGSuggestionsMetrics.m" lineNumber:544 description:@"bucketSize must be > 0"];
  }

  if (a3 <= a5)
  {
    return (a3 + a4 - 1) / a4 * a4;
  }

  return a5;
}

+ (void)recordUserInteraction:(unint64_t)a3 withLinkInApplication:(int64_t)a4 eventPrefillMode:(unint64_t)a5 eventTypeClassification:(id)a6 proposedEvent:(id)a7 confirmedEvent:(id)a8
{
  v23 = *MEMORY[0x1E69E9840];
  v13 = a6;
  v14 = a7;
  v15 = a8;
  if (a3 >= 4)
  {
    v16 = sgLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v21 = 134217984;
      v22 = a3;
      _os_log_error_impl(&dword_1BA729000, v16, OS_LOG_TYPE_ERROR, "unhandled SGDDEventInteraction: %lu", &v21, 0xCu);
    }

    LOWORD(v16) = 8;
  }

  else
  {
    v16 = (0x8000800070006uLL >> (16 * a3));
  }

  if (a5 >= 5)
  {
    v18 = sgLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = 134217984;
      v22 = a5;
      _os_log_error_impl(&dword_1BA729000, v18, OS_LOG_TYPE_ERROR, "unhandled SGDDEventPrefillMode: %lu", &v21, 0xCu);
    }

    v17 = &SGMNLEventExtractionLevelNA;
  }

  else
  {
    v17 = *(&off_1E7EFCCC8 + a5);
  }

  if (a4 == 3)
  {
    v19 = 3;
  }

  else
  {
    v19 = 6;
  }

  [SGNLEventSuggestionsMetrics recordInteractionForEventWithInterface:v19 actionType:v16 eventType:v13 extractionLevel:*v17 harvestedEKEvent:v14 curatedEKEvent:v15];

  v20 = *MEMORY[0x1E69E9840];
}

+ (void)shownViaDataDetectorsLinkInApp:(int64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if ((a3 - 4) > 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = [a1 instance];
    v7 = [v6 ddLinkShown];
    v8 = v7;
    if (a3 == 3)
    {
      v9 = 3;
    }

    else
    {
      v9 = 6;
    }

    if (a3 == 3)
    {
      v10 = 1;
    }

    else
    {
      v10 = 4;
    }

    [v7 trackEventWithScalar:1 interface:v9];

    v17 = objc_opt_new();
    [v17 setInterface:v10];
    v11 = [MEMORY[0x1E69C5B48] sharedInstance];
    [v11 trackScalarForMessage:v17];

    v12 = objc_alloc(MEMORY[0x1E696AEC0]);
    v13 = [v17 key];
    v14 = [v12 initWithFormat:@"%@.%@", @"com.apple.Proactive.CoreSuggestions", v13];

    v15 = [v17 dictionaryRepresentation];
    AnalyticsSendEvent();

    v16 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v4 = sgLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v19 = a3;
      _os_log_error_impl(&dword_1BA729000, v4, OS_LOG_TYPE_ERROR, "trying to log DD link engagement from unexpected app: %lu", buf, 0xCu);
    }

    v5 = *MEMORY[0x1E69E9840];
  }
}

+ (id)getAddedAttendeesCountFromEKEvent:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 hasAttendees])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [v3 attendees];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v4);
          }

          if ([*(*(&v13 + 1) + 8 * i) participantType] == 1)
          {
            ++v7;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

+ (void)recordInteractionForEventWithInterface:(unsigned __int16)a3 actionType:(unsigned __int16)a4 harvestedSGEvent:(id)a5 curatedEKEvent:(id)a6
{
  v84 = a3;
  v85 = a4;
  v98 = *MEMORY[0x1E69E9840];
  v87 = a5;
  v88 = a6;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v8 = [v87 tags];
  v9 = [v8 countByEnumeratingWithState:&v93 objects:v97 count:16];
  if (v9)
  {
    v10 = v9;
    v82 = a2;
    v11 = @"NA";
    v12 = *v94;
    v13 = 0;
    v14 = -1.0;
    v91 = -1;
    v92 = 0;
    v89 = 0;
    v90 = -1;
    v15 = @"NA";
    while (1)
    {
      v16 = 0;
      do
      {
        if (*v94 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v17 = [SGEntityTag resolveName:*(*(&v93 + 1) + 8 * v16)];
        if ([v17 isNaturalLanguageEventTypeIdentifier])
        {
          v18 = [v17 value];

          if (v18)
          {
            v15 = v18;
            goto LABEL_14;
          }

          v19 = [MEMORY[0x1E696AAA8] currentHandler];
          [v19 handleFailureInMethod:v82 object:a1 file:@"SGSuggestionsMetrics.m" lineNumber:235 description:{@"Invalid parameter not satisfying: %@", @"eventType"}];
          v15 = 0;
          goto LABEL_13;
        }

        if ([v17 isConfidenceScore])
        {
          v19 = [v17 value];
          [v19 floatValue];
          v13 = v20;
LABEL_13:

          goto LABEL_14;
        }

        if ([v17 isParticipantCount])
        {
          v19 = [v17 value];
          v92 = [v19 integerValue];
          goto LABEL_13;
        }

        if ([v17 isNaturalLanguageEventLanguageID])
        {
          v21 = [v17 value];

          if (!v21)
          {
            v19 = [MEMORY[0x1E696AAA8] currentHandler];
            [v19 handleFailureInMethod:v82 object:a1 file:@"SGSuggestionsMetrics.m" lineNumber:242 description:{@"Invalid parameter not satisfying: %@", @"languageID"}];
            v11 = 0;
            goto LABEL_13;
          }

          v11 = v21;
        }

        else
        {
          if ([v17 isCalendarAppUsageLevel])
          {
            v19 = [v17 value];
            [v19 floatValue];
            v14 = v22;
            goto LABEL_13;
          }

          if ([v17 isMailAppUsageLevel])
          {
            v19 = [v17 value];
            v91 = [v19 integerValue];
            goto LABEL_13;
          }

          if ([v17 isMessagesAppUsageLevel])
          {
            v19 = [v17 value];
            v90 = [v19 integerValue];
            goto LABEL_13;
          }

          if ([v17 isUsedBubblesCount])
          {
            v19 = [v17 value];
            v89 = [v19 integerValue];
            goto LABEL_13;
          }
        }

LABEL_14:

        ++v16;
      }

      while (v10 != v16);
      v23 = [v8 countByEnumeratingWithState:&v93 objects:v97 count:16];
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
  v91 = -1;
  v92 = 0;
  v89 = 0;
  v90 = -1;
  v15 = @"NA";
LABEL_32:

  v24 = [v87 tags];
  v25 = +[SGEntityTag significantSender];
  v26 = [v25 name];
  v27 = [v24 containsObject:v26];

  v28 = [v87 tags];
  v29 = +[SGEntityTag titleGeneratedFromTemplate];
  v30 = [v29 name];
  v31 = [v28 containsObject:v30];

  if (v31)
  {
    v32 = 2;
  }

  else
  {
    v33 = [v87 tags];
    v34 = +[SGEntityTag titleGeneratedFromSubject];
    v35 = [v34 name];
    v36 = [v33 containsObject:v35];

    v32 = v36;
  }

  v37 = v88;
  v38 = v27;
  if (v88)
  {
    v80 = v32;
    v81 = v27;
    v39 = [v87 title];
    v40 = [v88 title];
    v41 = a1;
    v42 = [a1 diffEventTitleChangedFrom:v39 to:v40];

    v43 = [v87 start];
    v44 = [v87 startTimeZone];
    v45 = [v88 startDate];
    v46 = [v88 timeZone];
    v79 = [a1 diffEventStartDateChangedFrom:v43 oldTimeZone:v44 to:v45 newTimeZone:v46];

    [v87 duration];
    v48 = v47;
    [v88 duration];
    v77 = [a1 diffEventDurationChangedFrom:v48 to:v49];
    v50 = [objc_opt_class() getAddedAttendeesCountFromEKEvent:v88];
    v51 = [v50 stringValue];

    v52 = [v87 locations];
    v53 = [v52 count];
    v83 = v42;
    if (v53)
    {
      v76 = [v87 locations];
      v75 = [v76 firstObject];
      v54 = [v75 address];
      v41 = v54;
      if (v54)
      {
        v55 = 0;
        v56 = v54;
      }

      else
      {
        v74 = [v87 locations];
        v73 = [v74 firstObject];
        v56 = [v73 label];
        v55 = 1;
      }
    }

    else
    {
      v55 = 0;
      v56 = 0;
    }

    v78 = v51;
    v61 = [v88 locationsWithoutPrediction];
    if ([v61 count])
    {
      v62 = [v88 locationWithoutPrediction];
      v63 = [a1 diffEventLocationFrom:v56 to:v62];
    }

    else
    {
      v63 = [a1 diffEventLocationFrom:v56 to:0];
    }

    if (v55)
    {
    }

    v64 = v63;
    if (v53)
    {
    }

    v57 = v87;
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
    v57 = v87;
    v58 = 0;
    v59 = 0;
    v60 = @"NA";
  }

  v65 = v38;
  v66 = objc_opt_class();
  v67 = [v57 start];
  BYTE1(v72) = v90;
  LOBYTE(v72) = v91;
  LOBYTE(v71) = v89;
  LODWORD(v68) = v13;
  *&v69 = v14;
  [v66 recordInteractionForEventWithInterface:v84 actionType:v85 eventType:v15 languageID:v11 startDate:v67 confidenceScore:v92 participantCount:v68 significantSender:v69 extractionLevel:v65 usedBubblesCount:0 titleSource:v71 titleAdj:v32 dateAdj:v83 duraAdj:v37 locationAdj:v58 addedAttendeesCount:v59 calendarAppUsageLevel:v60 mailAppUsageLevel:v72 messagesAppUsageLevel:?];

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
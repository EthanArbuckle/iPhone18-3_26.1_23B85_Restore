@interface CDBiCalFixUps
+ (BOOL)_fixEndDateForEvent:(id)event withOriginalEvent:(id)originalEvent detachments:(id)detachments;
+ (BOOL)fixEndDates:(id)dates;
+ (double)_durationForEvent:(id)event;
@end

@implementation CDBiCalFixUps

+ (BOOL)fixEndDates:(id)dates
{
  v34 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  datesCopy = dates;
  obj = [datesCopy componentKeys];
  v23 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  v4 = 0;
  if (v23)
  {
    v21 = *v29;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v28 + 1) + 8 * i);
        v7 = [datesCopy componentForKey:v6];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
        }

        else
        {
          v8 = 0;
        }

        v9 = v8;
        v10 = [datesCopy componentOccurrencesForKey:v6];
        v11 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_5];
        v12 = [v10 filteredArrayUsingPredicate:v11];

        if (v9)
        {
          v4 |= [self _fixEndDateForEvent:v9 withOriginalEvent:v9 detachments:v12];
        }

        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v25;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v25 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v4 |= [self _fixEndDateForEvent:*(*(&v24 + 1) + 8 * j) withOriginalEvent:v9 detachments:v13];
            }

            v15 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v15);
        }
      }

      v23 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v23);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v4 & 1;
}

uint64_t __29__CDBiCalFixUps_fixEndDates___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (BOOL)_fixEndDateForEvent:(id)event withOriginalEvent:(id)originalEvent detachments:(id)detachments
{
  v88 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  originalEventCopy = originalEvent;
  detachmentsCopy = detachments;
  dtend = [eventCopy dtend];
  if (dtend)
  {
    dtstart = [eventCopy dtstart];
    if (!dtstart || ([self _durationForEvent:eventCopy], v13 >= 0.0))
    {
      v16 = 0;
LABEL_49:

      goto LABEL_50;
    }

    v62 = detachmentsCopy;
    v63 = originalEventCopy;
    v65 = dtstart;
    if (eventCopy == originalEventCopy || !originalEventCopy)
    {
      v17 = objc_alloc_init(MEMORY[0x1E696AB50]);
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v18 = detachmentsCopy;
      v19 = [v18 countByEnumeratingWithState:&v70 objects:v87 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v71;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v71 != v21)
            {
              objc_enumerationMutation(v18);
            }

            [self _durationForEvent:*(*(&v70 + 1) + 8 * i)];
            if (v23 >= 0.0)
            {
              v24 = [MEMORY[0x1E696AD98] numberWithDouble:?];
              [v17 addObject:v24];
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v70 objects:v87 count:16];
        }

        while (v20);
      }

      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v25 = v17;
      v26 = [v25 countByEnumeratingWithState:&v66 objects:v86 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = 0;
        v29 = *v67;
        v15 = 3600.0;
        do
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v67 != v29)
            {
              objc_enumerationMutation(v25);
            }

            v31 = *(*(&v66 + 1) + 8 * j);
            [v31 doubleValue];
            v33 = v32;
            v34 = [v25 countForObject:v31];
            if (v34 > v28)
            {
              v28 = v34;
              v15 = v33;
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v66 objects:v86 count:16];
        }

        while (v27);
      }

      else
      {
        v15 = 3600.0;
      }

      detachmentsCopy = v62;
      dtstart = v65;
    }

    else
    {
      [self _durationForEvent:originalEventCopy];
      v15 = v14;
    }

    tzid = [dtstart tzid];

    if (tzid)
    {
      v36 = MEMORY[0x1E695DFE8];
      tzid2 = [dtstart tzid];
      v38 = [v36 timeZoneWithName:tzid2];
    }

    else
    {
      v38 = 0;
    }

    tzid3 = [dtend tzid];

    v61 = v38;
    if (tzid3)
    {
      v40 = MEMORY[0x1E695DFE8];
      tzid4 = [dtend tzid];
      v42 = [v40 timeZoneWithName:tzid4];

      v64 = v42;
      if (v38 && v42)
      {
        v43 = [MEMORY[0x1E695DEE8] CalGregorianCalendarForTimeZone:v38];
        v44 = [MEMORY[0x1E695DEE8] CalGregorianCalendarForTimeZone:v42];
LABEL_39:
        components = [dtstart components];
        v60 = v43;
        v48 = [v43 dateFromComponents:components];

        v59 = v48;
        v58 = [v48 dateByAddingTimeInterval:v15];
        v49 = [v44 components:252 fromDate:?];
        v50 = [objc_alloc(MEMORY[0x1E69E3C90]) initWithYear:objc_msgSend(v49 month:"year") day:objc_msgSend(v49 hour:"month") minute:objc_msgSend(v49 second:"day") timeZone:{objc_msgSend(v49, "hour"), objc_msgSend(v49, "minute"), objc_msgSend(v49, "second"), v64}];
        recurrence_id = [eventCopy recurrence_id];
        v52 = CDBLogHandle;
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          v53 = [eventCopy uid];
          v54 = &stru_1F59E24D8;
          if (recurrence_id)
          {
            v55 = @"/";
          }

          else
          {
            v55 = &stru_1F59E24D8;
          }

          if (recurrence_id)
          {
            v54 = [recurrence_id description];
          }

          *buf = 138413570;
          v75 = v53;
          v76 = 2114;
          v77 = v55;
          v78 = 2114;
          v79 = v54;
          v80 = 2114;
          v81 = dtend;
          v82 = 2114;
          v83 = v65;
          v84 = 2114;
          v85 = v50;
          _os_log_impl(&dword_1DEBB1000, v52, OS_LOG_TYPE_ERROR, "End date for component %@%{public}@%{public}@ is invalid; DTEND:%{public}@ is before DTSTART:%{public}@. Setting DTEND to %{public}@ instead.", buf, 0x3Eu);
          if (recurrence_id)
          {
          }

          detachmentsCopy = v62;
        }

        [eventCopy setDtend:v50];
        v16 = 1;
        originalEventCopy = v63;
        dtstart = v65;
        goto LABEL_49;
      }
    }

    else
    {
      v64 = 0;
    }

    v45 = MEMORY[0x1E695DEE8];
    v46 = CalCopyTimeZone();
    v43 = [v45 CalGregorianCalendarForTimeZone:v46];

    v44 = v43;
    goto LABEL_39;
  }

  v16 = 0;
LABEL_50:

  v56 = *MEMORY[0x1E69E9840];
  return v16;
}

+ (double)_durationForEvent:(id)event
{
  eventCopy = event;
  dtend = [eventCopy dtend];
  if (dtend)
  {
    dtstart = [eventCopy dtstart];

    tzid = [dtstart tzid];

    if (tzid)
    {
      v7 = MEMORY[0x1E695DFE8];
      tzid2 = [dtstart tzid];
      tzid = [v7 timeZoneWithName:tzid2];
    }

    tzid3 = [dtend tzid];

    if (tzid3 && (v10 = MEMORY[0x1E695DFE8], [dtend tzid], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "timeZoneWithName:", v11), tzid3 = objc_claimAutoreleasedReturnValue(), v11, tzid) && tzid3)
    {
      v12 = [MEMORY[0x1E695DEE8] CalGregorianCalendarForTimeZone:tzid];
      v13 = [MEMORY[0x1E695DEE8] CalGregorianCalendarForTimeZone:tzid3];
    }

    else
    {
      v14 = MEMORY[0x1E695DEE8];
      v15 = CalCopyTimeZone();
      v12 = [v14 CalGregorianCalendarForTimeZone:v15];

      v13 = v12;
    }

    components = [dtstart components];
    v17 = [v12 dateFromComponents:components];

    components2 = [dtend components];
    v19 = [v13 dateFromComponents:components2];

    [v19 timeIntervalSinceDate:v17];
    v21 = v20;
  }

  else
  {
    dtstart = [eventCopy duration];

    [dtstart timeInterval];
    v21 = v22;
  }

  return v21;
}

@end
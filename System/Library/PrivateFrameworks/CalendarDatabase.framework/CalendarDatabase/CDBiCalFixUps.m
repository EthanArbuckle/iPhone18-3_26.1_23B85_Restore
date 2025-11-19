@interface CDBiCalFixUps
+ (BOOL)_fixEndDateForEvent:(id)a3 withOriginalEvent:(id)a4 detachments:(id)a5;
+ (BOOL)fixEndDates:(id)a3;
+ (double)_durationForEvent:(id)a3;
@end

@implementation CDBiCalFixUps

+ (BOOL)fixEndDates:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v22 = a3;
  obj = [v22 componentKeys];
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
        v7 = [v22 componentForKey:v6];
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
        v10 = [v22 componentOccurrencesForKey:v6];
        v11 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_5];
        v12 = [v10 filteredArrayUsingPredicate:v11];

        if (v9)
        {
          v4 |= [a1 _fixEndDateForEvent:v9 withOriginalEvent:v9 detachments:v12];
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

              v4 |= [a1 _fixEndDateForEvent:*(*(&v24 + 1) + 8 * j) withOriginalEvent:v9 detachments:v13];
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

+ (BOOL)_fixEndDateForEvent:(id)a3 withOriginalEvent:(id)a4 detachments:(id)a5
{
  v88 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 dtend];
  if (v11)
  {
    v12 = [v8 dtstart];
    if (!v12 || ([a1 _durationForEvent:v8], v13 >= 0.0))
    {
      v16 = 0;
LABEL_49:

      goto LABEL_50;
    }

    v62 = v10;
    v63 = v9;
    v65 = v12;
    if (v8 == v9 || !v9)
    {
      v17 = objc_alloc_init(MEMORY[0x1E696AB50]);
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v18 = v10;
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

            [a1 _durationForEvent:*(*(&v70 + 1) + 8 * i)];
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

      v10 = v62;
      v12 = v65;
    }

    else
    {
      [a1 _durationForEvent:v9];
      v15 = v14;
    }

    v35 = [v12 tzid];

    if (v35)
    {
      v36 = MEMORY[0x1E695DFE8];
      v37 = [v12 tzid];
      v38 = [v36 timeZoneWithName:v37];
    }

    else
    {
      v38 = 0;
    }

    v39 = [v11 tzid];

    v61 = v38;
    if (v39)
    {
      v40 = MEMORY[0x1E695DFE8];
      v41 = [v11 tzid];
      v42 = [v40 timeZoneWithName:v41];

      v64 = v42;
      if (v38 && v42)
      {
        v43 = [MEMORY[0x1E695DEE8] CalGregorianCalendarForTimeZone:v38];
        v44 = [MEMORY[0x1E695DEE8] CalGregorianCalendarForTimeZone:v42];
LABEL_39:
        v47 = [v12 components];
        v60 = v43;
        v48 = [v43 dateFromComponents:v47];

        v59 = v48;
        v58 = [v48 dateByAddingTimeInterval:v15];
        v49 = [v44 components:252 fromDate:?];
        v50 = [objc_alloc(MEMORY[0x1E69E3C90]) initWithYear:objc_msgSend(v49 month:"year") day:objc_msgSend(v49 hour:"month") minute:objc_msgSend(v49 second:"day") timeZone:{objc_msgSend(v49, "hour"), objc_msgSend(v49, "minute"), objc_msgSend(v49, "second"), v64}];
        v51 = [v8 recurrence_id];
        v52 = CDBLogHandle;
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          v53 = [v8 uid];
          v54 = &stru_1F59E24D8;
          if (v51)
          {
            v55 = @"/";
          }

          else
          {
            v55 = &stru_1F59E24D8;
          }

          if (v51)
          {
            v54 = [v51 description];
          }

          *buf = 138413570;
          v75 = v53;
          v76 = 2114;
          v77 = v55;
          v78 = 2114;
          v79 = v54;
          v80 = 2114;
          v81 = v11;
          v82 = 2114;
          v83 = v65;
          v84 = 2114;
          v85 = v50;
          _os_log_impl(&dword_1DEBB1000, v52, OS_LOG_TYPE_ERROR, "End date for component %@%{public}@%{public}@ is invalid; DTEND:%{public}@ is before DTSTART:%{public}@. Setting DTEND to %{public}@ instead.", buf, 0x3Eu);
          if (v51)
          {
          }

          v10 = v62;
        }

        [v8 setDtend:v50];
        v16 = 1;
        v9 = v63;
        v12 = v65;
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

+ (double)_durationForEvent:(id)a3
{
  v3 = a3;
  v4 = [v3 dtend];
  if (v4)
  {
    v5 = [v3 dtstart];

    v6 = [v5 tzid];

    if (v6)
    {
      v7 = MEMORY[0x1E695DFE8];
      v8 = [v5 tzid];
      v6 = [v7 timeZoneWithName:v8];
    }

    v9 = [v4 tzid];

    if (v9 && (v10 = MEMORY[0x1E695DFE8], [v4 tzid], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "timeZoneWithName:", v11), v9 = objc_claimAutoreleasedReturnValue(), v11, v6) && v9)
    {
      v12 = [MEMORY[0x1E695DEE8] CalGregorianCalendarForTimeZone:v6];
      v13 = [MEMORY[0x1E695DEE8] CalGregorianCalendarForTimeZone:v9];
    }

    else
    {
      v14 = MEMORY[0x1E695DEE8];
      v15 = CalCopyTimeZone();
      v12 = [v14 CalGregorianCalendarForTimeZone:v15];

      v13 = v12;
    }

    v16 = [v5 components];
    v17 = [v12 dateFromComponents:v16];

    v18 = [v4 components];
    v19 = [v13 dateFromComponents:v18];

    [v19 timeIntervalSinceDate:v17];
    v21 = v20;
  }

  else
  {
    v5 = [v3 duration];

    [v5 timeInterval];
    v21 = v22;
  }

  return v21;
}

@end
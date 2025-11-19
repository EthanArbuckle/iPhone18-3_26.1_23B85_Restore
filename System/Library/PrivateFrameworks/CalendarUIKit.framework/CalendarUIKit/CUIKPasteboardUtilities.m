@interface CUIKPasteboardUtilities
+ (BOOL)allEventsValidForAction:(unint64_t)a3 fromEvents:(id)a4;
+ (BOOL)declinesToPerformCutCopyPasteAction:(SEL)a3 withSender:(id)a4;
+ (id)duplicateEventsByStrippingUnsupportedFields:(id)a3 toNewCalendar:(id)a4;
+ (id)roundedDateForDate:(id)a3 dateMode:(unint64_t)a4 calendar:(id)a5;
+ (void)adjustTimesForEventsToPaste:(id)a3 pasteDate:(id)a4 dateMode:(unint64_t)a5 calendar:(id)a6;
@end

@implementation CUIKPasteboardUtilities

+ (id)roundedDateForDate:(id)a3 dateMode:(unint64_t)a4 calendar:(id)a5
{
  v7 = a3;
  v8 = v7;
  if (a4 == 1)
  {
    v9 = [v7 dateRoundedToNearestFifteenMinutesInCalendar:a5];
  }

  else
  {
    v9 = v7;
  }

  v10 = v9;

  return v10;
}

+ (void)adjustTimesForEventsToPaste:(id)a3 pasteDate:(id)a4 dateMode:(unint64_t)a5 calendar:(id)a6
{
  v61 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (a5 != 3)
  {
    v50 = v12;
    v47 = v11;
    v13 = [MEMORY[0x1E695DF00] distantFuture];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v45 = v10;
    v14 = v10;
    v15 = [v14 countByEnumeratingWithState:&v55 objects:v60 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v56;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v56 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v55 + 1) + 8 * i);
          v20 = [v19 startDate];
          v21 = [v20 isBeforeDate:v13];

          if (v21)
          {
            v22 = [v19 startDate];

            v13 = v22;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v55 objects:v60 count:16];
      }

      while (v16);
    }

    v23 = [a1 roundedDateForDate:v47 dateMode:a5 calendar:v50];

    v24 = v23;
    if (!v23)
    {
      v24 = v13;
    }

    v25 = [v13 dateRemovingTimeComponentsInCalendar:{v50, v45}];
    v26 = [v24 dateRemovingTimeComponentsInCalendar:v50];
    v27 = [v50 components:16 fromDate:v25 toDate:v26 options:0];
    v49 = [v27 day];

    v48 = v24;
    v28 = [v50 components:176 fromDate:v13 toDate:v24 options:0];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v29 = v14;
    v30 = [v29 countByEnumeratingWithState:&v51 objects:v59 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v52;
      v33 = a5 - 1;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v52 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v35 = *(*(&v51 + 1) + 8 * j);
          v36 = [v35 endDateUnadjustedForLegacyClients];
          v37 = [v35 startDate];
          [v36 timeIntervalSinceDate:v37];
          v39 = v38;

          v40 = [v35 startDate];
          v41 = v40;
          if (v33 > 1)
          {
            [v40 dateByAddingDays:v49 inCalendar:0];
          }

          else
          {
            [v50 dateByAddingComponents:v28 toDate:v40 options:0];
          }
          v42 = ;
          [v35 setStartDate:v42];

          v43 = [v35 startDate];
          v44 = [v43 dateByAddingTimeInterval:v39];
          [v35 setEndDateUnadjustedForLegacyClients:v44];
        }

        v31 = [v29 countByEnumeratingWithState:&v51 objects:v59 count:16];
      }

      while (v31);
    }

    v10 = v46;
    v11 = v48;
    v12 = v50;
  }
}

+ (id)duplicateEventsByStrippingUnsupportedFields:(id)a3 toNewCalendar:(id)a4
{
  v64 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v40 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v5, "count")}];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v37 = v5;
    obj = v5;
    v7 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v54;
      v38 = *v54;
      v39 = v6;
      do
      {
        v10 = 0;
        v41 = v8;
        do
        {
          if (*v54 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v53 + 1) + 8 * v10);
          if ([v11 currentUserGeneralizedParticipantRole] == 3 || objc_msgSend(v11, "currentUserGeneralizedParticipantRole") == 1)
          {
            v12 = [v11 selfAttendee];
            v13 = [v11 attendees];
            v14 = MEMORY[0x1E696AE18];
            v51[0] = MEMORY[0x1E69E9820];
            v51[1] = 3221225472;
            v51[2] = __85__CUIKPasteboardUtilities_duplicateEventsByStrippingUnsupportedFields_toNewCalendar___block_invoke;
            v51[3] = &unk_1E83997C0;
            v52 = v12;
            v15 = v12;
            v16 = [v14 predicateWithBlock:v51];
            v17 = [v13 filteredArrayUsingPredicate:v16];

            v18 = 62;
          }

          else
          {
            v17 = 0;
            v18 = 58;
          }

          v19 = [v11 calendar];
          v20 = [v11 canMoveOrCopyToCalendar:v6 fromCalendar:v19 error:0];

          if (v20)
          {
            v21 = [v11 copyToCalendar:v6 withOptions:v18];
            [v21 setStatus:0];
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v22 = v17;
            v23 = [v22 countByEnumeratingWithState:&v47 objects:v58 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v48;
              do
              {
                for (i = 0; i != v24; ++i)
                {
                  if (*v48 != v25)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v27 = [*(*(&v47 + 1) + 8 * i) duplicate];
                  [v21 addAttendee:v27];
                }

                v24 = [v22 countByEnumeratingWithState:&v47 objects:v58 count:16];
              }

              while (v24);
            }

            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            v28 = [v21 attendees];
            v29 = [v28 countByEnumeratingWithState:&v43 objects:v57 count:16];
            if (v29)
            {
              v30 = v29;
              v31 = *v44;
              do
              {
                for (j = 0; j != v30; ++j)
                {
                  if (*v44 != v31)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v33 = *(*(&v43 + 1) + 8 * j);
                  v34 = [v33 proposedStartDateForEvent:v11];

                  if (v34)
                  {
                    [v33 setProposedStartDate:0 forEvent:v21];
                  }
                }

                v30 = [v28 countByEnumeratingWithState:&v43 objects:v57 count:16];
              }

              while (v30);
            }

            [v40 addObject:v21];
            v9 = v38;
            v6 = v39;
            v8 = v41;
          }

          else
          {
            v21 = +[CUIKLogSubsystem defaultCategory];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v60 = v11;
              v61 = 2112;
              v62 = v6;
              _os_log_error_impl(&dword_1CAB19000, v21, OS_LOG_TYPE_ERROR, "Attempting to duplicate event (%@) to a calendar that does not allow it (%@). Skipping this event.", buf, 0x16u);
            }
          }

          ++v10;
        }

        while (v10 != v8);
        v8 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
      }

      while (v8);
    }

    v5 = v37;
  }

  else
  {
    v35 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [CUIKPasteboardUtilities duplicateEventsByStrippingUnsupportedFields:v35 toNewCalendar:?];
    }

    v40 = [MEMORY[0x1E695DFD8] set];
  }

  return v40;
}

+ (BOOL)allEventsValidForAction:(unint64_t)a3 fromEvents:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = a4;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  v7 = v6;
  if (v6)
  {
    v8 = *v16;
    v9 = v6;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 isReminderIntegrationEvent])
        {
LABEL_19:
          v12 = 0;
          goto LABEL_21;
        }

        if (a3 - 1 >= 2)
        {
          if (!a3 && (([v11 isNew] & 1) != 0 || !objc_msgSend(v11, "isDeletable") || objc_msgSend(v11, "isReminderIntegrationEvent") && (objc_msgSend(v11, "CUIK_reminderShouldBeEditable") & 1) == 0))
          {
            goto LABEL_19;
          }
        }

        else if ([v11 isNew] & 1) != 0 || (objc_msgSend(v11, "isBirthday"))
        {
          goto LABEL_19;
        }
      }

      v9 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v12 = 1;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 1;
  }

LABEL_21:

  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (BOOL)declinesToPerformCutCopyPasteAction:(SEL)a3 withSender:(id)a4
{
  v5 = a4;
  v7 = sel_paste_ == a3 || sel_copy_ == a3 || sel_cut_ == a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v5;
    v9 = v8;
    if (v7)
    {
      v10 = [v8 sender];
      if (v10)
      {
        v11 = [v9 sender];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          isKindOfClass = 1;
        }

        else
        {
          v13 = [v9 sender];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
        }
      }

      else
      {
        isKindOfClass = 0;
      }
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

@end
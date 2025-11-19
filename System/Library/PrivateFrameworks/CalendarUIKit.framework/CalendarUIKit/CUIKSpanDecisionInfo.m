@interface CUIKSpanDecisionInfo
+ (BOOL)_allowSlicingEvent:(id)a3;
+ (id)spanDecisionInfoForEvents:(id)a3;
@end

@implementation CUIKSpanDecisionInfo

+ (id)spanDecisionInfoForEvents:(id)a3
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v36 = objc_alloc_init(CUIKSpanDecisionInfo);
  v44 = objc_opt_new();
  v43 = objc_opt_new();
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v4)
  {
    v5 = v4;
    LOBYTE(v6) = 0;
    v45 = 0;
    v7 = 0;
    v8 = *v51;
    v37 = *v51;
    while (1)
    {
      v9 = 0;
      v39 = v5;
      do
      {
        if (*v51 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v50 + 1) + 8 * v9);
        if ([v10 isOnlyOccurrence])
        {
          v41 = v9;
          v42 = v6;
          v11 = [v10 eventStore];
          v12 = [v11 eventsWithSameRecurrenceSetAsEvent:v10];

          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v13 = v12;
          v14 = [v13 countByEnumeratingWithState:&v46 objects:v54 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v47;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v47 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v46 + 1) + 8 * i);
                v19 = [v18 eventOccurrenceID];
                v20 = [v10 eventOccurrenceID];
                v21 = [v19 isEqualToString:v20];

                if ((v21 & 1) == 0)
                {
                  ++v7;
                  v22 = [v18 isFirstOccurrenceIncludingSlices];
                  v23 = [v18 localUID];
                  if (v22)
                  {
                    [v44 addObject:v23];
                  }

                  else
                  {
                    [v43 addObject:v23];

                    v24 = [v18 currentUserGeneralizedParticipantRole];
                    v25 = v45;
                    if (v24 == 1)
                    {
                      v25 = v45 + 1;
                    }

                    v45 = v25;
                  }
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v46 objects:v54 count:16];
            }

            while (v15);
          }

          v8 = v37;
          v5 = v39;
          v9 = v41;
          if ((v42 & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        else
        {
          ++v7;
          v26 = [v10 isFirstOccurrenceIncludingSlices];
          v27 = [v10 localUID];
          if (v26)
          {
            [v44 addObject:v27];

            if ((v6 & 1) == 0)
            {
              goto LABEL_24;
            }
          }

          else
          {
            [v43 addObject:v27];

            v28 = [v10 currentUserGeneralizedParticipantRole];
            v29 = v45;
            if (v28 == 1)
            {
              v29 = v45 + 1;
            }

            v45 = v29;
            if ((v6 & 1) == 0)
            {
LABEL_24:
              v6 = [a1 _allowSlicingEvent:v10] ^ 1;
              goto LABEL_29;
            }
          }
        }

        LOBYTE(v6) = 1;
LABEL_29:
        ++v9;
      }

      while (v9 != v5);
      v5 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
      if (!v5)
      {
        v30 = v45 == 0;
        goto LABEL_33;
      }
    }
  }

  LOBYTE(v6) = 0;
  v7 = 0;
  v30 = 1;
LABEL_33:

  v31 = v36;
  [(CUIKSpanDecisionInfo *)v36 setShouldRequestSpan:v7 > 0];
  v32 = [v43 isSubsetOfSet:v44];
  if (v6)
  {
    v33 = 0;
  }

  else
  {
    v34 = v32;
    if ([(CUIKSpanDecisionInfo *)v36 shouldRequestSpan])
    {
      v33 = (v34 ^ 1) & v30;
    }

    else
    {
      v33 = 0;
    }
  }

  [(CUIKSpanDecisionInfo *)v36 setProposeFuture:v33, v36];
  [(CUIKSpanDecisionInfo *)v31 setRecurringEventCount:v7];

  return v31;
}

+ (BOOL)_allowSlicingEvent:(id)a3
{
  v3 = a3;
  v4 = [v3 calendar];
  v5 = [v4 type];

  if (v5 == 4)
  {
    goto LABEL_2;
  }

  v7 = [v3 calendar];
  v8 = [v7 source];
  v9 = [v8 sourceType];

  if (v9 != 1)
  {
    LOBYTE(v6) = 1;
    goto LABEL_7;
  }

  if ([v3 hasAttendees])
  {
LABEL_2:
    LOBYTE(v6) = 0;
  }

  else
  {
    v10 = [v3 masterEvent];
    v6 = [v10 hasAttendees] ^ 1;
  }

LABEL_7:

  return v6;
}

@end
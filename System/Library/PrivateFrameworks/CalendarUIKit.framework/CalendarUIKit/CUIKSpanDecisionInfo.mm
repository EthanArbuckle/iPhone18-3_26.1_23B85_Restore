@interface CUIKSpanDecisionInfo
+ (BOOL)_allowSlicingEvent:(id)event;
+ (id)spanDecisionInfoForEvents:(id)events;
@end

@implementation CUIKSpanDecisionInfo

+ (id)spanDecisionInfoForEvents:(id)events
{
  v56 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  v36 = objc_alloc_init(CUIKSpanDecisionInfo);
  v44 = objc_opt_new();
  v43 = objc_opt_new();
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = eventsCopy;
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
          eventStore = [v10 eventStore];
          v12 = [eventStore eventsWithSameRecurrenceSetAsEvent:v10];

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
                eventOccurrenceID = [v18 eventOccurrenceID];
                eventOccurrenceID2 = [v10 eventOccurrenceID];
                v21 = [eventOccurrenceID isEqualToString:eventOccurrenceID2];

                if ((v21 & 1) == 0)
                {
                  ++v7;
                  isFirstOccurrenceIncludingSlices = [v18 isFirstOccurrenceIncludingSlices];
                  localUID = [v18 localUID];
                  if (isFirstOccurrenceIncludingSlices)
                  {
                    [v44 addObject:localUID];
                  }

                  else
                  {
                    [v43 addObject:localUID];

                    currentUserGeneralizedParticipantRole = [v18 currentUserGeneralizedParticipantRole];
                    v25 = v45;
                    if (currentUserGeneralizedParticipantRole == 1)
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
          isFirstOccurrenceIncludingSlices2 = [v10 isFirstOccurrenceIncludingSlices];
          localUID2 = [v10 localUID];
          if (isFirstOccurrenceIncludingSlices2)
          {
            [v44 addObject:localUID2];

            if ((v6 & 1) == 0)
            {
              goto LABEL_24;
            }
          }

          else
          {
            [v43 addObject:localUID2];

            currentUserGeneralizedParticipantRole2 = [v10 currentUserGeneralizedParticipantRole];
            v29 = v45;
            if (currentUserGeneralizedParticipantRole2 == 1)
            {
              v29 = v45 + 1;
            }

            v45 = v29;
            if ((v6 & 1) == 0)
            {
LABEL_24:
              v6 = [self _allowSlicingEvent:v10] ^ 1;
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

+ (BOOL)_allowSlicingEvent:(id)event
{
  eventCopy = event;
  calendar = [eventCopy calendar];
  type = [calendar type];

  if (type == 4)
  {
    goto LABEL_2;
  }

  calendar2 = [eventCopy calendar];
  source = [calendar2 source];
  sourceType = [source sourceType];

  if (sourceType != 1)
  {
    LOBYTE(v6) = 1;
    goto LABEL_7;
  }

  if ([eventCopy hasAttendees])
  {
LABEL_2:
    LOBYTE(v6) = 0;
  }

  else
  {
    masterEvent = [eventCopy masterEvent];
    v6 = [masterEvent hasAttendees] ^ 1;
  }

LABEL_7:

  return v6;
}

@end
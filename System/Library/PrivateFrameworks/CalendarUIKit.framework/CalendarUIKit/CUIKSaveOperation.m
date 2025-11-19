@interface CUIKSaveOperation
+ (id)alarmsAddedActionName:(id)a3;
+ (id)alarmsModifiedActionName:(id)a3;
+ (id)alarmsRemovedActionName:(id)a3;
+ (id)attachmentsAddedActionName:(id)a3;
+ (id)attachmentsModifiedActionName:(id)a3;
+ (id)attachmentsRemovedActionName:(id)a3;
+ (id)attendeesAddedActionName:(id)a3;
+ (id)attendeesModifiedActionName:(id)a3;
+ (id)attendeesRemovedActionName:(id)a3;
+ (id)changedAllDayActionNameWithCurrentEvent:(id)a3 previousEvent:(id)a4;
+ (id)changedAvailablityActionName:(id)a3;
+ (id)changedCalendarActionName:(id)a3;
+ (id)changedColorOfCalendar:(id)a3;
+ (id)changedCompletionActionName:(id)a3;
+ (id)changedLocationActionNameWithCurrentEvent:(id)a3 previousEvent:(id)a4;
+ (id)changedNotesActionName:(id)a3;
+ (id)changedParticipationStatusActionName:(id)a3;
+ (id)changedPrivacyActionName:(id)a3;
+ (id)changedRecurrenceRuleActionNameWithCurrentEvent:(id)a3 previousEvent:(id)a4;
+ (id)changedResponseCommentActionName:(id)a3;
+ (id)changedTimeActionName:(id)a3;
+ (id)changedTimeZoneActionName:(id)a3;
+ (id)changedTitleActionName:(id)a3;
+ (id)changedTitleOfCalendar:(id)a3;
+ (id)changedTravelTimeActionNameWithCurrentEvent:(id)a3 previousEvent:(id)a4;
+ (id)changedURLActionName:(id)a3;
+ (id)genericEventChangedActionName:(id)a3;
+ (id)multipleEventsChangedActionName;
+ (id)shareesAddedActionName:(id)a3;
+ (id)shareesModifiedActionName:(id)a3;
+ (id)shareesRemovedActionName:(id)a3;
- (BOOL)_executeWithUndoDelegate:(id)a3 error:(id *)a4;
- (Class)_inverseOperationClass;
- (id)_actionName;
- (id)_inverseOperation;
- (id)_invertedNonSliceObjects;
- (id)_objectsForInverse;
- (id)_objectsRequiringAlteredSpan:(id)a3;
- (int64_t)_spanForObject:(id)a3;
- (void)_actionName;
- (void)_storePreviousObjects;
- (void)_storePreviousState;
@end

@implementation CUIKSaveOperation

+ (id)multipleEventsChangedActionName
{
  v2 = CUIKBundle();
  v3 = [v2 localizedStringForKey:@"Action: Changes to Events" value:@"Changes to Events" table:0];

  return v3;
}

+ (id)genericEventChangedActionName:(id)a3
{
  v3 = a3;
  v4 = CUIKBundle();
  v5 = [v4 localizedStringForKey:@"Action: Changes to “%@”" value:@"Changes to “%@”" table:0];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [v3 title];

  v8 = [v6 localizedStringWithFormat:v5, v7];

  return v8;
}

+ (id)changedTimeActionName:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = CUIKBundle();
    v6 = [v5 localizedStringForKey:@"Action: Change Time of “%@”" value:@"Change Time of “%@”" table:0];

    v7 = MEMORY[0x1E696AEC0];
    v8 = [v4 title];

    v9 = [v7 localizedStringWithFormat:v6, v8];

LABEL_5:
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = CUIKBundle();
    v9 = [v6 localizedStringForKey:@"Action: Completion Change" value:@"Completion Change" table:0];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

+ (id)changedTitleActionName:(id)a3
{
  v3 = a3;
  v4 = [v3 actionStringsDisplayTitle];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = CUIKBundle();
    v6 = v5;
    v7 = @"Action: Rename event to “%@”";
    v8 = @"Rename event to “%@”";
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v5 = CUIKBundle();
    v6 = v5;
    if (isKindOfClass)
    {
      v7 = @"Action: Rename calendar to “%@”";
      v8 = @"Rename calendar to “%@”";
    }

    else
    {
      v7 = @"Action: Rename to “%@”";
      v8 = @"Rename to “%@”";
    }
  }

  v10 = [v5 localizedStringForKey:v7 value:v8 table:0];

  v11 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v10, v4];

  return v11;
}

+ (id)changedTimeZoneActionName:(id)a3
{
  v3 = a3;
  v4 = CUIKBundle();
  v5 = [v4 localizedStringForKey:@"Action: Change Time Zone of “%@”" value:@"Change Time Zone of “%@”" table:0];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [v3 title];

  v8 = [v6 localizedStringWithFormat:v5, v7];

  return v8;
}

+ (id)changedCalendarActionName:(id)a3
{
  v3 = a3;
  v4 = CUIKBundle();
  v5 = [v4 localizedStringForKey:@"Action: Change Calendar of “%@”" value:@"Change Calendar of “%@”" table:0];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [v3 title];

  v8 = [v6 localizedStringWithFormat:v5, v7];

  return v8;
}

+ (id)changedAvailablityActionName:(id)a3
{
  v3 = a3;
  v4 = CUIKBundle();
  v5 = [v4 localizedStringForKey:@"Action: Change Availability for “%@”" value:@"Change Availability for “%@”" table:0];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [v3 title];

  v8 = [v6 localizedStringWithFormat:v5, v7];

  return v8;
}

+ (id)changedPrivacyActionName:(id)a3
{
  v3 = a3;
  v4 = CUIKBundle();
  v5 = [v4 localizedStringForKey:@"Action: Change Privacy for “%@”" value:@"Change Privacy for “%@”" table:0];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [v3 title];

  v8 = [v6 localizedStringWithFormat:v5, v7];

  return v8;
}

+ (id)changedNotesActionName:(id)a3
{
  v3 = a3;
  v4 = CUIKBundle();
  v5 = [v4 localizedStringForKey:@"Action: Change Notes for “%@”" value:@"Change Notes for “%@”" table:0];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [v3 title];

  v8 = [v6 localizedStringWithFormat:v5, v7];

  return v8;
}

+ (id)changedURLActionName:(id)a3
{
  v3 = a3;
  v4 = CUIKBundle();
  v5 = [v4 localizedStringForKey:@"Action: Change URL for “%@”" value:@"Change URL for “%@”" table:0];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [v3 title];

  v8 = [v6 localizedStringWithFormat:v5, v7];

  return v8;
}

+ (id)changedParticipationStatusActionName:(id)a3
{
  v3 = a3;
  v4 = CUIKBundle();
  v5 = [v4 localizedStringForKey:@"Action: Change Participation Status for “%@”" value:@"Change Participation Status for “%@”" table:0];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [v3 title];

  v8 = [v6 localizedStringWithFormat:v5, v7];

  return v8;
}

+ (id)changedResponseCommentActionName:(id)a3
{
  v3 = a3;
  v4 = CUIKBundle();
  v5 = [v4 localizedStringForKey:@"Action: Response Comment for “%@”" value:@"Change Response Comment for “%@”" table:0];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [v3 title];

  v8 = [v6 localizedStringWithFormat:v5, v7];

  return v8;
}

+ (id)alarmsAddedActionName:(id)a3
{
  v3 = a3;
  v4 = CUIKBundle();
  v5 = [v4 localizedStringForKey:@"Action: Add Alert to “%@”" value:@"Add Alert to “%@”" table:0];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [v3 title];

  v8 = [v6 localizedStringWithFormat:v5, v7];

  return v8;
}

+ (id)alarmsRemovedActionName:(id)a3
{
  v3 = a3;
  v4 = CUIKBundle();
  v5 = [v4 localizedStringForKey:@"Action: Remove Alert from “%@”" value:@"Remove Alert from “%@”" table:0];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [v3 title];

  v8 = [v6 localizedStringWithFormat:v5, v7];

  return v8;
}

+ (id)alarmsModifiedActionName:(id)a3
{
  v3 = a3;
  v4 = CUIKBundle();
  v5 = [v4 localizedStringForKey:@"Action: Change Alert for “%@”" value:@"Change Alert for “%@”" table:0];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [v3 title];

  v8 = [v6 localizedStringWithFormat:v5, v7];

  return v8;
}

+ (id)attachmentsAddedActionName:(id)a3
{
  v3 = a3;
  v4 = CUIKBundle();
  v5 = [v4 localizedStringForKey:@"Action: Add Attachment to “%@”" value:@"Add Attachment to “%@”" table:0];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [v3 title];

  v8 = [v6 localizedStringWithFormat:v5, v7];

  return v8;
}

+ (id)attachmentsRemovedActionName:(id)a3
{
  v3 = a3;
  v4 = CUIKBundle();
  v5 = [v4 localizedStringForKey:@"Action: Remove Attachment from “%@”" value:@"Remove Attachment from “%@”" table:0];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [v3 title];

  v8 = [v6 localizedStringWithFormat:v5, v7];

  return v8;
}

+ (id)attachmentsModifiedActionName:(id)a3
{
  v3 = a3;
  v4 = CUIKBundle();
  v5 = [v4 localizedStringForKey:@"Action: Change Attachment for “%@”" value:@"Change Attachment for “%@”" table:0];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [v3 title];

  v8 = [v6 localizedStringWithFormat:v5, v7];

  return v8;
}

+ (id)attendeesAddedActionName:(id)a3
{
  v3 = a3;
  v4 = CUIKBundle();
  v5 = [v4 localizedStringForKey:@"Action: Add Attendee to “%@”" value:@"Add Attendee to “%@”" table:0];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [v3 title];

  v8 = [v6 localizedStringWithFormat:v5, v7];

  return v8;
}

+ (id)attendeesRemovedActionName:(id)a3
{
  v3 = a3;
  v4 = CUIKBundle();
  v5 = [v4 localizedStringForKey:@"Action: Remove Attendee from “%@”" value:@"Remove Attendee from “%@”" table:0];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [v3 title];

  v8 = [v6 localizedStringWithFormat:v5, v7];

  return v8;
}

+ (id)attendeesModifiedActionName:(id)a3
{
  v3 = a3;
  v4 = CUIKBundle();
  v5 = [v4 localizedStringForKey:@"Action: Change Attendee for “%@”" value:@"Change Attendee for “%@”" table:0];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [v3 title];

  v8 = [v6 localizedStringWithFormat:v5, v7];

  return v8;
}

+ (id)shareesAddedActionName:(id)a3
{
  v3 = a3;
  v4 = CUIKBundle();
  v5 = [v4 localizedStringForKey:@"Action: Add Sharee to “%@”" value:@"Add Sharee to “%@”" table:0];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [v3 title];

  v8 = [v6 localizedStringWithFormat:v5, v7];

  return v8;
}

+ (id)shareesRemovedActionName:(id)a3
{
  v3 = a3;
  v4 = CUIKBundle();
  v5 = [v4 localizedStringForKey:@"Action: Remove Sharee from “%@”" value:@"Remove Sharee from “%@”" table:0];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [v3 title];

  v8 = [v6 localizedStringWithFormat:v5, v7];

  return v8;
}

+ (id)shareesModifiedActionName:(id)a3
{
  v3 = a3;
  v4 = CUIKBundle();
  v5 = [v4 localizedStringForKey:@"Action: Change Sharee for “%@”" value:@"Change Sharee for “%@”" table:0];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [v3 title];

  v8 = [v6 localizedStringWithFormat:v5, v7];

  return v8;
}

+ (id)changedAllDayActionNameWithCurrentEvent:(id)a3 previousEvent:(id)a4
{
  v5 = a3;
  if ([a4 isAllDay])
  {
    v6 = [CUIKSaveOperation changedTimeActionName:v5];
  }

  else
  {
    v7 = CUIKBundle();
    v8 = [v7 localizedStringForKey:@"Action: Make “%@” All-Day" value:@"Make “%@” All-Day" table:0];

    v9 = MEMORY[0x1E696AEC0];
    v10 = [v5 title];
    v6 = [v9 localizedStringWithFormat:v8, v10];
  }

  return v6;
}

+ (id)changedCompletionActionName:(id)a3
{
  v3 = a3;
  v4 = [v3 completed];
  v5 = CUIKBundle();
  v6 = v5;
  if (v4)
  {
    v7 = @"Action: Mark “%@” Complete";
    v8 = @"Mark “%@” Complete";
  }

  else
  {
    v7 = @"Action: Mark “%@” Incomplete";
    v8 = @"Mark “%@” Incomplete";
  }

  v9 = [v5 localizedStringForKey:v7 value:v8 table:0];

  v10 = MEMORY[0x1E696AEC0];
  v11 = [v3 title];

  v12 = [v10 localizedStringWithFormat:v9, v11];

  return v12;
}

+ (id)changedTravelTimeActionNameWithCurrentEvent:(id)a3 previousEvent:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = CUIKBundle();
  v8 = [v7 localizedStringForKey:@"Action: Add Travel Time for “%@”" value:@"Add Travel Time for “%@”" table:0];

  v9 = CUIKBundle();
  v10 = [v9 localizedStringForKey:@"Action: Remove Travel Time for “%@”" value:@"Remove Travel Time for “%@”" table:0];

  v11 = CUIKBundle();
  v12 = [v11 localizedStringForKey:@"Action: Change Travel Time for “%@”" value:@"Change Travel Time for “%@”" table:0];

  v13 = [v5 title];
  [v6 travelTime];
  if (v14 != 0.0 || ([v5 travelTime], v16 = v8, v18 == 0.0))
  {
    [v6 travelTime];
    if (v15 == 0.0 || ([v5 travelTime], v16 = v10, v17 != 0.0))
    {
      v16 = v12;
    }
  }

  v19 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v16, v13];

  return v19;
}

+ (id)changedRecurrenceRuleActionNameWithCurrentEvent:(id)a3 previousEvent:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = CUIKBundle();
  v8 = [v7 localizedStringForKey:@"Action: Add Repeat for “%@”" value:@"Add Repeat for “%@”" table:0];

  v9 = CUIKBundle();
  v10 = [v9 localizedStringForKey:@"Action: Remove Repeat for “%@”" value:@"Remove Repeat for “%@”" table:0];

  v11 = CUIKBundle();
  v12 = [v11 localizedStringForKey:@"Action: Change Repeat for “%@”" value:@"Change Repeat for “%@”" table:0];

  v13 = [v5 title];
  v14 = [v6 recurrenceRules];
  if (v14)
  {
  }

  else
  {
    v19 = [v5 recurrenceRules];

    v18 = v8;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  v15 = [v6 recurrenceRules];
  if (!v15 || (v16 = v15, [v5 recurrenceRules], v17 = objc_claimAutoreleasedReturnValue(), v17, v16, v18 = v10, v17))
  {
    v18 = v12;
  }

LABEL_7:
  v20 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v18, v13];

  return v20;
}

+ (id)changedLocationActionNameWithCurrentEvent:(id)a3 previousEvent:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = CUIKBundle();
  v8 = [v7 localizedStringForKey:@"Action: Add Location to “%@”" value:@"Add Location to “%@”" table:0];

  v9 = CUIKBundle();
  v10 = [v9 localizedStringForKey:@"Action: Remove Location from “%@”" value:@"Remove Location from “%@”" table:0];

  v11 = CUIKBundle();
  v12 = [v11 localizedStringForKey:@"Action: Change Location of “%@”" value:@"Change Location of “%@”" table:0];

  v13 = [v5 title];
  v14 = [v6 location];
  if (v14)
  {
  }

  else
  {
    v19 = [v5 location];

    v18 = v8;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  v15 = [v6 location];
  if (!v15 || (v16 = v15, [v5 location], v17 = objc_claimAutoreleasedReturnValue(), v17, v16, v18 = v10, v17))
  {
    v18 = v12;
  }

LABEL_7:
  v20 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v18, v13];

  return v20;
}

+ (id)changedColorOfCalendar:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = CUIKBundle();
  v6 = [v5 localizedStringForKey:@"Action: Change Calendar Color" value:@"Change Color of “%@”" table:0];
  v7 = [v4 title];

  v8 = [v3 localizedStringWithFormat:v6, v7];

  return v8;
}

+ (id)changedTitleOfCalendar:(id)a3
{
  v3 = a3;
  if ([v3 allowedEntityTypes])
  {
    v5 = CUIKBundle();
    v6 = [v5 localizedStringForKey:@"Action: Rename calendar to “%@”" value:@"Rename calendar to “%@”" table:0];

    v7 = MEMORY[0x1E696AEC0];
    v8 = [v3 title];
    v4 = [v7 localizedStringWithFormat:v6, v8];
  }

  else
  {
    if (([v3 allowedEntityTypes] & 2) == 0)
    {
      v4 = 0;
      goto LABEL_7;
    }

    v6 = CUIKBundle();
    v4 = [v6 localizedStringForKey:@"Action: Rename List" value:@"Rename List" table:0];
  }

LABEL_7:

  return v4;
}

- (id)_actionName
{
  v3 = [(CUIKUserOperation *)self objects];
  if ([v3 count] != 1)
  {

    goto LABEL_8;
  }

  v4 = [(CUIKUserOperation *)self objects];
  v5 = [v4 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_8:
    v16 = +[CUIKSaveOperation multipleEventsChangedActionName];
    goto LABEL_9;
  }

  v7 = [(CUIKUserOperation *)self objects];
  v8 = [v7 firstObject];

  v9 = [v8 shallowCopyWithoutChanges];
  v10 = [MEMORY[0x1E6966A60] diffSummaryBetweenObject:v9 andObject:v8];
  v11 = MEMORY[0x1E695DFD8];
  v12 = [v10 allKeys];
  v13 = [v11 setWithArray:v12];

  v14 = +[CUIKLogSubsystem userActions];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [(CUIKSaveOperation *)v13 _actionName];
  }

  if ([v13 containsObject:*MEMORY[0x1E6966830]])
  {
    v15 = [CUIKSaveOperation changedAllDayActionNameWithCurrentEvent:v8 previousEvent:v9];
LABEL_14:
    v16 = v15;
    v18 = 0;
    goto LABEL_79;
  }

  if ([v13 containsObject:*MEMORY[0x1E6966870]])
  {
    v15 = [CUIKSaveOperation changedCalendarActionName:v8];
    goto LABEL_14;
  }

  v19 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E69668E8], *MEMORY[0x1E6966888], 0}];
  if (![v13 isSubsetOfSet:v19])
  {
    v20 = *MEMORY[0x1E6966818];
    v21 = *MEMORY[0x1E6966820];
    v22 = *MEMORY[0x1E6966828];
    v23 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E6966818], *MEMORY[0x1E6966820], *MEMORY[0x1E6966828], 0}];
    if ([v10 count] >= 2 && objc_msgSend(v13, "isSubsetOfSet:", v23))
    {
      v24 = [CUIKSaveOperation alarmsModifiedActionName:v8];
LABEL_24:
      v16 = v24;
      v18 = 0;
LABEL_77:

      goto LABEL_78;
    }

    if ([v10 count] != 1)
    {
      v24 = [CUIKSaveOperation genericEventChangedActionName:v8];
      goto LABEL_24;
    }

    v51 = v23;
    v25 = [v10 objectForKey:*MEMORY[0x1E69668F8]];

    if (v25)
    {
      v26 = [CUIKSaveOperation changedTitleActionName:v8];
    }

    else
    {
      v27 = [v10 objectForKey:*MEMORY[0x1E69668A0]];

      if (v27)
      {
        v26 = [CUIKSaveOperation changedLocationActionNameWithCurrentEvent:v8 previousEvent:v9];
      }

      else
      {
        v28 = [v10 objectForKey:*MEMORY[0x1E6966900]];

        if (v28)
        {
          v26 = [CUIKSaveOperation changedTravelTimeActionNameWithCurrentEvent:v8 previousEvent:v9];
        }

        else
        {
          v29 = [v10 objectForKey:*MEMORY[0x1E69668F0]];

          if (v29)
          {
            v26 = [CUIKSaveOperation changedTimeZoneActionName:v8];
          }

          else
          {
            v30 = [v10 objectForKey:*MEMORY[0x1E69668C0]];

            if (v30)
            {
              v26 = [CUIKSaveOperation changedRecurrenceRuleActionNameWithCurrentEvent:v8 previousEvent:v9];
            }

            else
            {
              v31 = [v10 objectForKey:*MEMORY[0x1E6966868]];

              if (v31)
              {
                v26 = [CUIKSaveOperation changedAvailablityActionName:v8];
              }

              else
              {
                v32 = [v10 objectForKey:*MEMORY[0x1E69668B8]];

                if (v32)
                {
                  v26 = [CUIKSaveOperation changedPrivacyActionName:v8];
                }

                else
                {
                  v33 = [v10 objectForKey:*MEMORY[0x1E69668A8]];

                  if (v33)
                  {
                    v26 = [CUIKSaveOperation changedNotesActionName:v8];
                  }

                  else
                  {
                    v34 = [v10 objectForKey:*MEMORY[0x1E6966908]];

                    if (v34)
                    {
                      v26 = [CUIKSaveOperation changedURLActionName:v8];
                    }

                    else
                    {
                      v35 = [v10 objectForKey:v20];

                      if (v35)
                      {
                        v26 = [CUIKSaveOperation alarmsAddedActionName:v8];
                      }

                      else
                      {
                        v36 = [v10 objectForKey:v21];

                        if (v36)
                        {
                          v26 = [CUIKSaveOperation alarmsModifiedActionName:v8];
                        }

                        else
                        {
                          v37 = [v10 objectForKey:v22];

                          if (v37)
                          {
                            v26 = [CUIKSaveOperation alarmsRemovedActionName:v8];
                          }

                          else
                          {
                            v38 = [v10 objectForKey:*MEMORY[0x1E6966838]];

                            if (v38)
                            {
                              v26 = [CUIKSaveOperation attachmentsAddedActionName:v8];
                            }

                            else
                            {
                              v39 = [v10 objectForKey:*MEMORY[0x1E6966848]];

                              if (v39)
                              {
                                v26 = [CUIKSaveOperation attachmentsRemovedActionName:v8];
                              }

                              else
                              {
                                v40 = [v10 objectForKey:*MEMORY[0x1E6966840]];

                                if (v40)
                                {
                                  v26 = [CUIKSaveOperation attachmentsModifiedActionName:v8];
                                }

                                else
                                {
                                  v41 = [v10 objectForKey:*MEMORY[0x1E6966850]];

                                  if (v41)
                                  {
                                    v26 = [CUIKSaveOperation attendeesAddedActionName:v8];
                                  }

                                  else
                                  {
                                    v42 = [v10 objectForKey:*MEMORY[0x1E6966860]];

                                    if (v42)
                                    {
                                      v26 = [CUIKSaveOperation attendeesRemovedActionName:v8];
                                    }

                                    else
                                    {
                                      v43 = [v10 objectForKey:*MEMORY[0x1E6966858]];

                                      if (v43)
                                      {
                                        v26 = [CUIKSaveOperation attendeesModifiedActionName:v8];
                                      }

                                      else
                                      {
                                        v44 = [v10 objectForKey:*MEMORY[0x1E69668B0]];

                                        if (v44)
                                        {
                                          v26 = [CUIKSaveOperation changedParticipationStatusActionName:v8];
                                        }

                                        else
                                        {
                                          v45 = [v10 objectForKey:*MEMORY[0x1E69668C8]];

                                          if (v45)
                                          {
                                            v26 = [CUIKSaveOperation changedResponseCommentActionName:v8];
                                          }

                                          else
                                          {
                                            v46 = [v10 objectForKey:*MEMORY[0x1E6966878]];

                                            if (v46)
                                            {
                                              v26 = [CUIKSaveOperation changedColorOfCalendar:v8];
                                            }

                                            else
                                            {
                                              v47 = [v10 objectForKey:*MEMORY[0x1E6966880]];

                                              if (v47)
                                              {
                                                v26 = [CUIKSaveOperation changedTitleOfCalendar:v8];
                                              }

                                              else
                                              {
                                                v48 = [v10 objectForKey:*MEMORY[0x1E69668D0]];

                                                if (v48)
                                                {
                                                  v26 = [CUIKSaveOperation shareesAddedActionName:v8];
                                                }

                                                else
                                                {
                                                  v49 = [v10 objectForKey:*MEMORY[0x1E69668E0]];

                                                  if (v49)
                                                  {
                                                    v26 = [CUIKSaveOperation shareesRemovedActionName:v8];
                                                  }

                                                  else
                                                  {
                                                    v50 = [v10 objectForKey:*MEMORY[0x1E69668D8]];

                                                    if (v50)
                                                    {
                                                      v26 = [CUIKSaveOperation shareesModifiedActionName:v8];
                                                    }

                                                    else
                                                    {
                                                      v16 = [v10 objectForKey:*MEMORY[0x1E6966898]];

                                                      if (!v16)
                                                      {
                                                        v18 = 1;
                                                        goto LABEL_76;
                                                      }

                                                      v26 = [CUIKSaveOperation changedCompletionActionName:v8];
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v16 = v26;
    v18 = 0;
LABEL_76:
    v23 = v51;
    goto LABEL_77;
  }

  v16 = [CUIKSaveOperation changedTimeActionName:v8];
  v18 = 0;
LABEL_78:

LABEL_79:
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v16;
}

- (int64_t)_spanForObject:(id)a3
{
  v4 = a3;
  v5 = [(CUIKUserOperation *)self span];
  v6 = [(CUIKSaveOperation *)self objectsRequiringAlteredSpan];
  v7 = [v4 uniqueIdentifier];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (v8)
  {
    v9 = [(CUIKSaveOperation *)self objectsRequiringAlteredSpan];
    v10 = [v4 uniqueIdentifier];
    v11 = [v9 objectForKeyedSubscript:v10];
    v5 = [v11 integerValue];
  }

  return v5;
}

- (BOOL)_executeWithUndoDelegate:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [(CUIKUserOperation *)self _precomputeActionName];
  [(CUIKSaveOperation *)self _storePreviousState];
  [(CUIKUserOperation *)self _precomputeInverseOperation];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v22 = self;
  obj = [(CUIKUserOperation *)self objects];
  v24 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v24)
  {
    v21 = *v26;
    v6 = 1;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v9 = v8;
        if (v5)
        {
          v9 = [v5 objectToSaveForUndoingChangeToObject:v8];

          if (v9 != v8)
          {
            [v9 addChangesFromObject:v8 copyingBackingObjects:0];
          }
        }

        v10 = [(CUIKSaveOperation *)v22 _spanForObject:v9];
        v11 = [v9 specificIdentifier];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v9 isUndetached] ^ 1;
        }

        else
        {
          v12 = 1;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v9 isDetached];
        }

        else
        {
          v13 = 0;
        }

        v14 = [v9 CUIKEditingContext_saveWithSpan:v10 error:a4];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && !(v13 & 1 | (([v9 isDetached] & 1) == 0)))
        {
          v15 = [v5 objectToSaveForRevertingChangeToObject:v8];
          v16 = v15;
          if (v15 != v8)
          {
            [v15 addChangesFromObject:v8 copyingBackingObjects:0];
          }

          [v5 setRevertObject:v16 forSpecificIdentifier:v11];
        }

        if (v12)
        {
          v17 = [v9 specificIdentifier];
          v18 = [v17 isEqualToString:v11];

          if ((v18 & 1) == 0)
          {
            [v5 setUndoObject:v9 forSpecificIdentifier:v11];
          }
        }

        v6 &= v14;
      }

      v24 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v24);
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)_storePreviousState
{
  [(CUIKSaveOperation *)self _storePreviousObjects];

  [(CUIKUserOperation *)self _storeOriginalSliceDescriptions];
}

- (void)_storePreviousObjects
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v4 = [(CUIKUserOperation *)self objects];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(CUIKUserOperation *)self objects];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v12 + 1) + 8 * v10) previouslySavedCopy];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(CUIKSaveOperation *)self setPreviousObjects:v5];
}

- (Class)_inverseOperationClass
{
  v31 = *MEMORY[0x1E69E9840];
  if ([(CUIKUserOperation *)self span]== 4)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v3 = [(CUIKUserOperation *)self objects];
    v4 = [v3 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v26;
      while (2)
      {
        v7 = 0;
        do
        {
          if (*v26 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v25 + 1) + 8 * v7);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = [v8 detachedItems];
            v10 = [v9 count];

            if (v10)
            {

              goto LABEL_28;
            }
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }
  }

  else if ([(CUIKUserOperation *)self span])
  {
LABEL_28:
    v19 = 0;
    goto LABEL_29;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = [(CUIKUserOperation *)self objects];
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    while (2)
    {
      v15 = 0;
      do
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * v15);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
          if ([v17 hasRecurrenceRuleAdditionOrRemoval] & 1) != 0 || (objc_msgSend(v17, "hasCalendarChangeThatRequiresDeleteAndAdd"))
          {

LABEL_27:
            goto LABEL_28;
          }

          v18 = [v17 requiresDetach];

          if (v18)
          {
            goto LABEL_27;
          }
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v19 = objc_opt_class();
LABEL_29:

  return v19;
}

- (id)_inverseOperation
{
  v7.receiver = self;
  v7.super_class = CUIKSaveOperation;
  v3 = [(CUIKUserOperation *)&v7 _inverseOperation];
  if ([(CUIKUserOperation *)self span])
  {
    v4 = [(CUIKUserOperation *)self actionName];
    [v3 setPrecomputedActionName:v4];
  }

  else
  {
    v5 = [v3 objects];
    v4 = [(CUIKSaveOperation *)self _objectsRequiringAlteredSpan:v5];

    [v3 setObjectsRequiringAlteredSpan:v4];
  }

  return v3;
}

- (id)_objectsRequiringAlteredSpan:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 hasChangesRequiringSpanAll])
        {
          v11 = [v10 uniqueIdentifier];
          [v4 setObject:&unk_1F4ABEA08 forKeyedSubscript:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_objectsForInverse
{
  if ([(CUIKUserOperation *)self span]&& [(CUIKUserOperation *)self span]!= 4)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"CUIKSaveOperation.m" lineNumber:601 description:{@"Undo for slice operations isn't supported, and we never should have reached this point"}];

    v4 = 0;
  }

  else
  {
    v4 = [(CUIKSaveOperation *)self _invertedNonSliceObjects];
  }

  return v4;
}

- (id)_invertedNonSliceObjects
{
  v3 = MEMORY[0x1E695DF70];
  v4 = [(CUIKUserOperation *)self objects];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v6 = [(CUIKUserOperation *)self objects];
  v7 = [v6 count];

  if (!v7)
  {
LABEL_16:
    v29 = v5;
    goto LABEL_19;
  }

  v8 = 0;
  v32 = *MEMORY[0x1E6992648];
  v31 = *MEMORY[0x1E6992560];
  v33 = v5;
  while (1)
  {
    v9 = [(CUIKUserOperation *)self objects];
    v10 = [v9 objectAtIndexedSubscript:v8];

    v11 = [(CUIKSaveOperation *)self previousObjects];
    v12 = [v11 objectAtIndexedSubscript:v8];

    v34 = 0;
    v13 = [v10 inverseObjectWithObject:v12 diff:&v34];
    v14 = v34;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_10;
    }

    v15 = v12;
    v16 = [v14 differentRelationshipMultiValueKeys];
    v17 = [v16 containsObject:v32];

    if (v17)
    {
      break;
    }

LABEL_7:
    v21 = [v14 relationshipMultiValueAdds];
    v22 = [v21 allKeys];
    v23 = [v22 containsObject:v31];

    if (v23)
    {
      goto LABEL_18;
    }

    v24 = [(CUIKSaveOperation *)self _spanForObject:v10];
    if (([v15 isDetached] & 1) == 0 && objc_msgSend(v15, "isOrWasPartOfRecurringSeries") && !v24 && (objc_msgSend(v10, "isUndetached") & 1) == 0)
    {
      v27 = [v15 startDate];
      v28 = [v15 endDateUnadjustedForLegacyClients];
      [v13 markAsUndetachedWithStartDate:v27 endDate:v28];
    }

    v5 = v33;
LABEL_10:
    [v5 addObject:v13];

    ++v8;
    v25 = [(CUIKUserOperation *)self objects];
    v26 = [v25 count];

    if (v26 <= v8)
    {
      goto LABEL_16;
    }
  }

  v18 = [v15 attendees];
  if (![v18 count])
  {
    v19 = [v15 detachedItems];
    v20 = [v19 count];

    if (v20)
    {
      goto LABEL_18;
    }

    goto LABEL_7;
  }

LABEL_18:
  v29 = 0;
  v5 = v33;
LABEL_19:

  return v29;
}

- (void)_actionName
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1CAB19000, a2, OS_LOG_TYPE_DEBUG, "Changes: %@", &v2, 0xCu);
}

@end
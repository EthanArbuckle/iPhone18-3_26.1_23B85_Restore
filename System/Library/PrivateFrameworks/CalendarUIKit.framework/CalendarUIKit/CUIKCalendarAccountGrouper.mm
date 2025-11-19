@interface CUIKCalendarAccountGrouper
+ (id)_groupForCustomGroupType:(unint64_t)a3 inMap:(id)a4;
+ (id)_groupForSource:(id)a3 inMap:(id)a4;
+ (id)calendarsLimitedToSource:(id)a3 writability:(int64_t)a4 onlyUnmanagedAccounts:(BOOL)a5 forEvent:(id)a6 entityType:(unint64_t)a7 inEventStore:(id)a8;
+ (id)calendarsLimitedToSource:(id)a3 writability:(int64_t)a4 onlyUnmanagedAccounts:(BOOL)a5 forEvents:(id)a6 entityType:(unint64_t)a7 inEventStore:(id)a8;
+ (id)eligibleCalendarsForMovingEvent:(id)a3;
+ (id)generateGroupsForCalendars:(id)a3 eventStore:(id)a4 entityType:(unint64_t)a5 forMode:(int64_t)a6 usingBackgroundColor:(id)a7 includingAccountsWithoutCalendars:(BOOL)a8 filterByFocus:(BOOL)a9 usingUnselectedCalendars:(id)a10 foundRefreshableCalendar:(BOOL *)a11 anyGroupsHiddenByFocus:(BOOL *)a12 numberOfCalendarsHiddenByFocus:(int64_t *)a13;
+ (void)_insertStore:(id)a3 intoByGroupArray:(id)a4;
+ (void)_populateGroups:(id)a3 forNonDelegateSources:(id)a4;
@end

@implementation CUIKCalendarAccountGrouper

+ (void)_populateGroups:(id)a3 forNonDelegateSources:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (([v11 isDelegate] & 1) == 0)
        {
          v12 = [v11 constraints];
          if (-[CUIKGroupInfo allowsEvents](v12, "allowsEvents") && [v11 syncs])
          {
            v13 = [v11 sourceType];

            if (v13 == 4)
            {
              continue;
            }

            v12 = [[CUIKGroupInfo alloc] initWithSource:v11];
            v14 = [v11 sourceIdentifier];
            [v5 setObject:v12 forKey:v14];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

+ (id)_groupForCustomGroupType:(unint64_t)a3 inMap:(id)a4
{
  v5 = a4;
  if (a3)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:a3];
    v7 = [v5 objectForKey:v6];

    if (!v7)
    {
      v7 = [[CUIKGroupInfo alloc] initWithCustomGroupType:a3];
      [(CUIKGroupInfo *)v7 setSelected:0];
      v8 = [MEMORY[0x1E696AD98] numberWithInt:a3];
      [v5 setObject:v7 forKey:v8];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_groupForSource:(id)a3 inMap:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 sourceIdentifier];

  if (v7)
  {
    v8 = [v5 sourceIdentifier];
    v7 = [v6 objectForKey:v8];

    if (!v7)
    {
      v7 = [[CUIKGroupInfo alloc] initWithSource:v5];
      [(CUIKGroupInfo *)v7 setSelected:0];
      v9 = [v5 sourceIdentifier];
      [v6 setObject:v7 forKey:v9];
    }
  }

  return v7;
}

+ (void)_insertStore:(id)a3 intoByGroupArray:(id)a4
{
  v5 = a4;
  v9 = a3;
  v6 = [v5 count];
  v7 = [v5 indexOfObject:v9 inSortedRange:0 options:v6 usingComparator:{1024, &__block_literal_global_6}];
  if (v6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  [v5 insertObject:v9 atIndex:v8];
}

uint64_t __60__CUIKCalendarAccountGrouper__insertStore_intoByGroupArray___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 sortOrder];
  if (v6 >= [v5 sortOrder])
  {
    v8 = [v4 sortOrder];
    if (v8 <= [v5 sortOrder])
    {
      v9 = [v4 title];
      v10 = [v5 title];
      v7 = [v9 compare:v10];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

+ (id)generateGroupsForCalendars:(id)a3 eventStore:(id)a4 entityType:(unint64_t)a5 forMode:(int64_t)a6 usingBackgroundColor:(id)a7 includingAccountsWithoutCalendars:(BOOL)a8 filterByFocus:(BOOL)a9 usingUnselectedCalendars:(id)a10 foundRefreshableCalendar:(BOOL *)a11 anyGroupsHiddenByFocus:(BOOL *)a12 numberOfCalendarsHiddenByFocus:(int64_t *)a13
{
  v13 = a8;
  v77 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a4;
  v57 = a7;
  v58 = a10;
  v19 = [MEMORY[0x1E695DF70] array];
  v20 = [MEMORY[0x1E695DF90] dictionary];
  v21 = [MEMORY[0x1E695DF90] dictionary];
  if (v13)
  {
    v22 = [v18 sources];
    [a1 _populateGroups:v20 forNonDelegateSources:v22];
  }

  if (v58)
  {
    v23 = a9;
  }

  else
  {
    v23 = 0;
  }

  v62 = v23;
  if (v23)
  {
    v59 = [MEMORY[0x1E695DFA8] set];
    v54 = [MEMORY[0x1E695DFA8] set];
  }

  else
  {
    v54 = 0;
    v59 = 0;
  }

  v65 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v17;
  v24 = [obj countByEnumeratingWithState:&v72 objects:v76 count:16];
  if (v24)
  {
    v25 = v24;
    v60 = v21;
    v55 = v20;
    v52 = v19;
    v53 = v18;
    v56 = 0;
    v26 = *v73;
    while (1)
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v73 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v72 + 1) + 8 * i);
        if (a5)
        {
          if (a5 == 1)
          {
            v29 = [*(*(&v72 + 1) + 8 * i) allowReminders];
            if (a11)
            {
              if (v29)
              {
                goto LABEL_21;
              }
            }
          }
        }

        else
        {
          v30 = [*(*(&v72 + 1) + 8 * i) allowEvents];
          if (a11 && (v30 & 1) != 0)
          {
LABEL_21:
            *a11 = 1;
          }
        }

        v31 = [v28 source];
        if ([v31 sourceType] == 6)
        {
          v32 = [v31 externalID];
          v33 = [v65 objectForKeyedSubscript:v32];

          if (!v33)
          {
            v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v34 = [v31 externalID];
            [v65 setObject:v33 forKeyedSubscript:v34];
          }

          v35 = [v28 externalID];
          v36 = [v33 objectForKeyedSubscript:v35];

          if (v36)
          {
            [(CUIKCalendarInfo *)v36 addCalendar:v28];
            goto LABEL_60;
          }
        }

        else
        {
          v33 = 0;
        }

        v36 = [[CUIKCalendarInfo alloc] initWithCalendar:v28];
        if (v33)
        {
          v37 = [v28 externalID];
          [v33 setObject:v36 forKeyedSubscript:v37];
        }

        if (a6 == 1)
        {
          v38 = [v31 constraints];
          v39 = [v38 prohibitsICSImport];

          if (v39)
          {
            [(CUIKCalendarInfo *)v36 setIsEnabled:0];
          }
        }

        if ([v31 sourceType] == 6 && objc_msgSend(MEMORY[0x1E6966958], "isReminderAppLocked"))
        {
          [(CUIKCalendarInfo *)v36 setIsEnabled:0];
        }

        if (!v36 || ([v28 isHidden] & 1) != 0)
        {
          goto LABEL_60;
        }

        if (!a5)
        {
          v40 = [v31 constraints];
          v41 = [v40 allowsEvents];
          goto LABEL_42;
        }

        if (a5 == 1)
        {
          v40 = [v31 constraints];
          v41 = [v40 allowsTasks];
LABEL_42:
          v42 = v41;

          goto LABEL_44;
        }

        v42 = 0;
LABEL_44:
        if ([(CUIKCalendarInfo *)v36 customGroupType])
        {
          v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CUIKCalendarInfo customGroupType](v36, "customGroupType")}];
          goto LABEL_48;
        }

        if (((v31 != 0) & v42) == 1)
        {
          v43 = [v31 sourceIdentifier];
LABEL_48:
          v44 = v43;
          if (v43)
          {
            [v59 addObject:v43];
          }
        }

        if (v62)
        {
          if ([v58 containsObject:v28])
          {
            [(CUIKCalendarInfo *)v36 setFilteredByFocus:1];
            if (a13)
            {
              ++v56;
              goto LABEL_60;
            }
          }
        }

        if ([(CUIKCalendarInfo *)v36 customGroupType])
        {
          v45 = [a1 _groupForCustomGroupType:-[CUIKCalendarInfo customGroupType](v36 inMap:{"customGroupType"), v60}];
        }

        else
        {
          if (((v31 != 0) & v42) != 1)
          {
            goto LABEL_60;
          }

          v45 = [a1 _groupForSource:v31 inMap:v55];
        }

        v46 = v45;
        if (v45)
        {
          [(CUIKCalendarInfo *)v36 setSelected:0];
          v47 = [v28 displayColor];
          v48 = CUIKAdjustedColorForBackgroundColor(v47, v57);
          [(CUIKCalendarInfo *)v36 setColor:v48];

          [v46 insertCalendarInfo:v36];
        }

LABEL_60:
      }

      v25 = [obj countByEnumeratingWithState:&v72 objects:v76 count:16];
      if (!v25)
      {
        v49 = v56;
        v19 = v52;
        v18 = v53;
        v20 = v55;
        v21 = v60;
        goto LABEL_64;
      }
    }
  }

  v49 = 0;
LABEL_64:

  if (a13)
  {
    *a13 = v49;
  }

  if (a12)
  {
    v50 = [v54 count];
    if (v50 != [v59 count])
    {
      *a12 = 1;
    }
  }

  if ([v20 count])
  {
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __260__CUIKCalendarAccountGrouper_generateGroupsForCalendars_eventStore_entityType_forMode_usingBackgroundColor_includingAccountsWithoutCalendars_filterByFocus_usingUnselectedCalendars_foundRefreshableCalendar_anyGroupsHiddenByFocus_numberOfCalendarsHiddenByFocus___block_invoke;
    v69[3] = &unk_1E8399FA8;
    v71 = a1;
    v70 = v19;
    [v20 enumerateKeysAndObjectsUsingBlock:v69];
  }

  if ([v21 count])
  {
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __260__CUIKCalendarAccountGrouper_generateGroupsForCalendars_eventStore_entityType_forMode_usingBackgroundColor_includingAccountsWithoutCalendars_filterByFocus_usingUnselectedCalendars_foundRefreshableCalendar_anyGroupsHiddenByFocus_numberOfCalendarsHiddenByFocus___block_invoke_2;
    v66[3] = &unk_1E8399FA8;
    v68 = a1;
    v67 = v19;
    [v21 enumerateKeysAndObjectsUsingBlock:v66];
  }

  return v19;
}

+ (id)eligibleCalendarsForMovingEvent:(id)a3
{
  v3 = a3;
  v4 = [v3 calendar];
  v5 = [v4 source];

  v6 = +[CUIKAccountsController sharedInstance];
  v7 = [v6 sourceIsManaged:v5];

  v8 = [v3 attachments];
  v9 = [v8 count];

  v10 = [v3 isNew];
  v11 = [v5 isDelegate];
  v12 = 0;
  if (v9)
  {
    v13 = v10;
  }

  else
  {
    v13 = 1;
  }

  v14 = v5;
  if (!v11 && v13)
  {
    if (v10)
    {
      v15 = v7;
      if (!v9)
      {
        v14 = 0;
        v12 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      v15 = [v3 hasAttendees];
    }

    if (v15)
    {
      v14 = v5;
    }

    else
    {
      v14 = 0;
    }

    v12 = (v15 | v10 ^ 1 | (v9 == 0) | v7) ^ 1;
  }

LABEL_14:
  v16 = [v3 eventStore];
  v17 = [CUIKCalendarAccountGrouper calendarsLimitedToSource:v14 writability:2 onlyUnmanagedAccounts:v12 & 1 forEvent:v3 entityType:0 inEventStore:v16];

  return v17;
}

+ (id)calendarsLimitedToSource:(id)a3 writability:(int64_t)a4 onlyUnmanagedAccounts:(BOOL)a5 forEvent:(id)a6 entityType:(unint64_t)a7 inEventStore:(id)a8
{
  v11 = a5;
  v22 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a8;
  if (a6)
  {
    v21 = a6;
    v16 = MEMORY[0x1E695DEC8];
    v17 = a6;
    v18 = [v16 arrayWithObjects:&v21 count:1];
  }

  else
  {
    v18 = MEMORY[0x1E695E0F0];
  }

  v19 = [a1 calendarsLimitedToSource:v14 writability:a4 onlyUnmanagedAccounts:v11 forEvents:v18 entityType:a7 inEventStore:{v15, v21, v22}];

  return v19;
}

+ (id)calendarsLimitedToSource:(id)a3 writability:(int64_t)a4 onlyUnmanagedAccounts:(BOOL)a5 forEvents:(id)a6 entityType:(unint64_t)a7 inEventStore:(id)a8
{
  v13 = a3;
  v14 = a6;
  v15 = a8;
  v16 = v15;
  v17 = a4 - 1;
  v18 = a4 == 1;
  v19 = (a4 - 1) < 2;
  if (v13)
  {
    if (v17 > 1)
    {
      v20 = [v13 calendarsForEntityType:a7];
    }

    else
    {
      v20 = [v13 readWriteCalendarsForEntityType:a7];
      if ([v14 count])
      {
        v21 = MEMORY[0x1E696AE18];
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __123__CUIKCalendarAccountGrouper_calendarsLimitedToSource_writability_onlyUnmanagedAccounts_forEvents_entityType_inEventStore___block_invoke;
        v46[3] = &unk_1E8399FD0;
        v47 = v14;
        v48 = a4 == 1;
        v22 = [v21 predicateWithBlock:v46];
        v23 = [v20 filteredSetUsingPredicate:v22];

        v20 = v23;
      }
    }
  }

  else
  {
    v24 = MEMORY[0x1E695DFD8];
    if (v17 > 1)
    {
      v30 = [v15 calendarsForEntityType:a7];
      v26 = [v24 setWithArray:v30];
    }

    else
    {
      v25 = [v15 readWriteCalendarsForEntityType:a7];
      v26 = [v24 setWithArray:v25];

      if ([v14 count])
      {
        v27 = MEMORY[0x1E696AE18];
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __123__CUIKCalendarAccountGrouper_calendarsLimitedToSource_writability_onlyUnmanagedAccounts_forEvents_entityType_inEventStore___block_invoke_2;
        v43[3] = &unk_1E8399FD0;
        v44 = v14;
        v45 = v18;
        v28 = [v27 predicateWithBlock:v43];
        v29 = [v26 filteredSetUsingPredicate:v28];

        v26 = v29;
      }
    }

    v31 = [v16 blockList];
    v32 = MEMORY[0x1E696AE18];
    v36 = MEMORY[0x1E69E9820];
    v37 = 3221225472;
    v38 = __123__CUIKCalendarAccountGrouper_calendarsLimitedToSource_writability_onlyUnmanagedAccounts_forEvents_entityType_inEventStore___block_invoke_3;
    v39 = &unk_1E8399FF8;
    v41 = v19;
    v42 = a5;
    v40 = v31;
    v33 = v31;
    v34 = [v32 predicateWithBlock:&v36];
    v20 = [v26 filteredSetUsingPredicate:{v34, v36, v37, v38, v39}];
  }

  return v20;
}

uint64_t __123__CUIKCalendarAccountGrouper_calendarsLimitedToSource_writability_onlyUnmanagedAccounts_forEvents_entityType_inEventStore___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = *(a1 + 40);
        v11 = [v9 calendar];
        if (v10 == 1)
        {
          v12 = [v9 canMoveOrCopyToCalendar:v3 fromCalendar:v11 error:0];

          if ((v12 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v13 = [v9 canMoveToCalendar:v3 fromCalendar:v11 error:0];

          if (!v13)
          {
LABEL_13:
            v14 = 0;
            goto LABEL_14;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_14:

  return v14;
}

uint64_t __123__CUIKCalendarAccountGrouper_calendarsLimitedToSource_writability_onlyUnmanagedAccounts_forEvents_entityType_inEventStore___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = *(a1 + 40);
        v11 = [v9 calendar];
        if (v10 == 1)
        {
          v12 = [v9 canMoveOrCopyToCalendar:v3 fromCalendar:v11 error:0];

          if ((v12 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v13 = [v9 canMoveToCalendar:v3 fromCalendar:v11 error:0];

          if (!v13)
          {
LABEL_13:
            v14 = 0;
            goto LABEL_14;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_14:

  return v14;
}

uint64_t __123__CUIKCalendarAccountGrouper_calendarsLimitedToSource_writability_onlyUnmanagedAccounts_forEvents_entityType_inEventStore___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 source];
  if (([v4 isDelegate] & 1) != 0 || *(a1 + 40) == 1 && objc_msgSend(v4, "sourceType") == 6)
  {
    goto LABEL_6;
  }

  v5 = +[CUIKAccountsController sharedInstance];
  v6 = [v5 sourceIsManaged:v4];

  if (*(a1 + 41) == 1 && (v6 & 1) != 0)
  {
    goto LABEL_6;
  }

  if ([v3 sharingStatus] != 2)
  {
LABEL_19:
    v7 = 1;
    goto LABEL_7;
  }

  v9 = [v3 sharedOwnerEmail];
  if (!v9 || (v10 = *(a1 + 32), [v3 sharedOwnerEmail], v5 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(v10, "isBlockedWithEmail:", v5)))
  {
    v11 = [v3 sharedOwnerPhoneNumber];
    if (v11)
    {
      v12 = *(a1 + 32);
      v13 = [v3 sharedOwnerPhoneNumber];
      v14 = [v12 isBlockedWithPhoneNumber:v13];

      if (v9)
      {
      }

      if (v14)
      {
        goto LABEL_6;
      }
    }

    else
    {

      if (v9)
      {
      }
    }

    goto LABEL_19;
  }

LABEL_6:
  v7 = 0;
LABEL_7:

  return v7;
}

@end
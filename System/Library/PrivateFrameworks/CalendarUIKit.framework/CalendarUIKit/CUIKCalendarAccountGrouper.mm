@interface CUIKCalendarAccountGrouper
+ (id)_groupForCustomGroupType:(unint64_t)type inMap:(id)map;
+ (id)_groupForSource:(id)source inMap:(id)map;
+ (id)calendarsLimitedToSource:(id)source writability:(int64_t)writability onlyUnmanagedAccounts:(BOOL)accounts forEvent:(id)event entityType:(unint64_t)type inEventStore:(id)store;
+ (id)calendarsLimitedToSource:(id)source writability:(int64_t)writability onlyUnmanagedAccounts:(BOOL)accounts forEvents:(id)events entityType:(unint64_t)type inEventStore:(id)store;
+ (id)eligibleCalendarsForMovingEvent:(id)event;
+ (id)generateGroupsForCalendars:(id)calendars eventStore:(id)store entityType:(unint64_t)type forMode:(int64_t)mode usingBackgroundColor:(id)color includingAccountsWithoutCalendars:(BOOL)withoutCalendars filterByFocus:(BOOL)focus usingUnselectedCalendars:(id)self0 foundRefreshableCalendar:(BOOL *)self1 anyGroupsHiddenByFocus:(BOOL *)self2 numberOfCalendarsHiddenByFocus:(int64_t *)self3;
+ (void)_insertStore:(id)store intoByGroupArray:(id)array;
+ (void)_populateGroups:(id)groups forNonDelegateSources:(id)sources;
@end

@implementation CUIKCalendarAccountGrouper

+ (void)_populateGroups:(id)groups forNonDelegateSources:(id)sources
{
  v20 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  sourcesCopy = sources;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [sourcesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(sourcesCopy);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (([v11 isDelegate] & 1) == 0)
        {
          constraints = [v11 constraints];
          if (-[CUIKGroupInfo allowsEvents](constraints, "allowsEvents") && [v11 syncs])
          {
            sourceType = [v11 sourceType];

            if (sourceType == 4)
            {
              continue;
            }

            constraints = [[CUIKGroupInfo alloc] initWithSource:v11];
            sourceIdentifier = [v11 sourceIdentifier];
            [groupsCopy setObject:constraints forKey:sourceIdentifier];
          }
        }
      }

      v8 = [sourcesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

+ (id)_groupForCustomGroupType:(unint64_t)type inMap:(id)map
{
  mapCopy = map;
  if (type)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:type];
    v7 = [mapCopy objectForKey:v6];

    if (!v7)
    {
      v7 = [[CUIKGroupInfo alloc] initWithCustomGroupType:type];
      [(CUIKGroupInfo *)v7 setSelected:0];
      v8 = [MEMORY[0x1E696AD98] numberWithInt:type];
      [mapCopy setObject:v7 forKey:v8];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_groupForSource:(id)source inMap:(id)map
{
  sourceCopy = source;
  mapCopy = map;
  sourceIdentifier = [sourceCopy sourceIdentifier];

  if (sourceIdentifier)
  {
    sourceIdentifier2 = [sourceCopy sourceIdentifier];
    sourceIdentifier = [mapCopy objectForKey:sourceIdentifier2];

    if (!sourceIdentifier)
    {
      sourceIdentifier = [[CUIKGroupInfo alloc] initWithSource:sourceCopy];
      [(CUIKGroupInfo *)sourceIdentifier setSelected:0];
      sourceIdentifier3 = [sourceCopy sourceIdentifier];
      [mapCopy setObject:sourceIdentifier forKey:sourceIdentifier3];
    }
  }

  return sourceIdentifier;
}

+ (void)_insertStore:(id)store intoByGroupArray:(id)array
{
  arrayCopy = array;
  storeCopy = store;
  v6 = [arrayCopy count];
  v7 = [arrayCopy indexOfObject:storeCopy inSortedRange:0 options:v6 usingComparator:{1024, &__block_literal_global_6}];
  if (v6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  [arrayCopy insertObject:storeCopy atIndex:v8];
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

+ (id)generateGroupsForCalendars:(id)calendars eventStore:(id)store entityType:(unint64_t)type forMode:(int64_t)mode usingBackgroundColor:(id)color includingAccountsWithoutCalendars:(BOOL)withoutCalendars filterByFocus:(BOOL)focus usingUnselectedCalendars:(id)self0 foundRefreshableCalendar:(BOOL *)self1 anyGroupsHiddenByFocus:(BOOL *)self2 numberOfCalendarsHiddenByFocus:(int64_t *)self3
{
  withoutCalendarsCopy = withoutCalendars;
  v77 = *MEMORY[0x1E69E9840];
  calendarsCopy = calendars;
  storeCopy = store;
  colorCopy = color;
  unselectedCalendarsCopy = unselectedCalendars;
  array = [MEMORY[0x1E695DF70] array];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  if (withoutCalendarsCopy)
  {
    sources = [storeCopy sources];
    [self _populateGroups:dictionary forNonDelegateSources:sources];
  }

  if (unselectedCalendarsCopy)
  {
    focusCopy = focus;
  }

  else
  {
    focusCopy = 0;
  }

  v62 = focusCopy;
  if (focusCopy)
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
  obj = calendarsCopy;
  v24 = [obj countByEnumeratingWithState:&v72 objects:v76 count:16];
  if (v24)
  {
    v25 = v24;
    v60 = dictionary2;
    v55 = dictionary;
    v52 = array;
    v53 = storeCopy;
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
        if (type)
        {
          if (type == 1)
          {
            allowReminders = [*(*(&v72 + 1) + 8 * i) allowReminders];
            if (calendar)
            {
              if (allowReminders)
              {
                goto LABEL_21;
              }
            }
          }
        }

        else
        {
          allowEvents = [*(*(&v72 + 1) + 8 * i) allowEvents];
          if (calendar && (allowEvents & 1) != 0)
          {
LABEL_21:
            *calendar = 1;
          }
        }

        source = [v28 source];
        if ([source sourceType] == 6)
        {
          externalID = [source externalID];
          v33 = [v65 objectForKeyedSubscript:externalID];

          if (!v33)
          {
            v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
            externalID2 = [source externalID];
            [v65 setObject:v33 forKeyedSubscript:externalID2];
          }

          externalID3 = [v28 externalID];
          v36 = [v33 objectForKeyedSubscript:externalID3];

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
          externalID4 = [v28 externalID];
          [v33 setObject:v36 forKeyedSubscript:externalID4];
        }

        if (mode == 1)
        {
          constraints = [source constraints];
          prohibitsICSImport = [constraints prohibitsICSImport];

          if (prohibitsICSImport)
          {
            [(CUIKCalendarInfo *)v36 setIsEnabled:0];
          }
        }

        if ([source sourceType] == 6 && objc_msgSend(MEMORY[0x1E6966958], "isReminderAppLocked"))
        {
          [(CUIKCalendarInfo *)v36 setIsEnabled:0];
        }

        if (!v36 || ([v28 isHidden] & 1) != 0)
        {
          goto LABEL_60;
        }

        if (!type)
        {
          constraints2 = [source constraints];
          allowsEvents = [constraints2 allowsEvents];
          goto LABEL_42;
        }

        if (type == 1)
        {
          constraints2 = [source constraints];
          allowsEvents = [constraints2 allowsTasks];
LABEL_42:
          v42 = allowsEvents;

          goto LABEL_44;
        }

        v42 = 0;
LABEL_44:
        if ([(CUIKCalendarInfo *)v36 customGroupType])
        {
          sourceIdentifier = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CUIKCalendarInfo customGroupType](v36, "customGroupType")}];
          goto LABEL_48;
        }

        if (((source != 0) & v42) == 1)
        {
          sourceIdentifier = [source sourceIdentifier];
LABEL_48:
          v44 = sourceIdentifier;
          if (sourceIdentifier)
          {
            [v59 addObject:sourceIdentifier];
          }
        }

        if (v62)
        {
          if ([unselectedCalendarsCopy containsObject:v28])
          {
            [(CUIKCalendarInfo *)v36 setFilteredByFocus:1];
            if (hiddenByFocus)
            {
              ++v56;
              goto LABEL_60;
            }
          }
        }

        if ([(CUIKCalendarInfo *)v36 customGroupType])
        {
          v45 = [self _groupForCustomGroupType:-[CUIKCalendarInfo customGroupType](v36 inMap:{"customGroupType"), v60}];
        }

        else
        {
          if (((source != 0) & v42) != 1)
          {
            goto LABEL_60;
          }

          v45 = [self _groupForSource:source inMap:v55];
        }

        v46 = v45;
        if (v45)
        {
          [(CUIKCalendarInfo *)v36 setSelected:0];
          displayColor = [v28 displayColor];
          v48 = CUIKAdjustedColorForBackgroundColor(displayColor, colorCopy);
          [(CUIKCalendarInfo *)v36 setColor:v48];

          [v46 insertCalendarInfo:v36];
        }

LABEL_60:
      }

      v25 = [obj countByEnumeratingWithState:&v72 objects:v76 count:16];
      if (!v25)
      {
        v49 = v56;
        array = v52;
        storeCopy = v53;
        dictionary = v55;
        dictionary2 = v60;
        goto LABEL_64;
      }
    }
  }

  v49 = 0;
LABEL_64:

  if (hiddenByFocus)
  {
    *hiddenByFocus = v49;
  }

  if (byFocus)
  {
    v50 = [v54 count];
    if (v50 != [v59 count])
    {
      *byFocus = 1;
    }
  }

  if ([dictionary count])
  {
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __260__CUIKCalendarAccountGrouper_generateGroupsForCalendars_eventStore_entityType_forMode_usingBackgroundColor_includingAccountsWithoutCalendars_filterByFocus_usingUnselectedCalendars_foundRefreshableCalendar_anyGroupsHiddenByFocus_numberOfCalendarsHiddenByFocus___block_invoke;
    v69[3] = &unk_1E8399FA8;
    selfCopy = self;
    v70 = array;
    [dictionary enumerateKeysAndObjectsUsingBlock:v69];
  }

  if ([dictionary2 count])
  {
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __260__CUIKCalendarAccountGrouper_generateGroupsForCalendars_eventStore_entityType_forMode_usingBackgroundColor_includingAccountsWithoutCalendars_filterByFocus_usingUnselectedCalendars_foundRefreshableCalendar_anyGroupsHiddenByFocus_numberOfCalendarsHiddenByFocus___block_invoke_2;
    v66[3] = &unk_1E8399FA8;
    selfCopy2 = self;
    v67 = array;
    [dictionary2 enumerateKeysAndObjectsUsingBlock:v66];
  }

  return array;
}

+ (id)eligibleCalendarsForMovingEvent:(id)event
{
  eventCopy = event;
  calendar = [eventCopy calendar];
  source = [calendar source];

  v6 = +[CUIKAccountsController sharedInstance];
  v7 = [v6 sourceIsManaged:source];

  attachments = [eventCopy attachments];
  v9 = [attachments count];

  isNew = [eventCopy isNew];
  isDelegate = [source isDelegate];
  v12 = 0;
  if (v9)
  {
    v13 = isNew;
  }

  else
  {
    v13 = 1;
  }

  v14 = source;
  if (!isDelegate && v13)
  {
    if (isNew)
    {
      hasAttendees = v7;
      if (!v9)
      {
        v14 = 0;
        v12 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      hasAttendees = [eventCopy hasAttendees];
    }

    if (hasAttendees)
    {
      v14 = source;
    }

    else
    {
      v14 = 0;
    }

    v12 = (hasAttendees | isNew ^ 1 | (v9 == 0) | v7) ^ 1;
  }

LABEL_14:
  eventStore = [eventCopy eventStore];
  v17 = [CUIKCalendarAccountGrouper calendarsLimitedToSource:v14 writability:2 onlyUnmanagedAccounts:v12 & 1 forEvent:eventCopy entityType:0 inEventStore:eventStore];

  return v17;
}

+ (id)calendarsLimitedToSource:(id)source writability:(int64_t)writability onlyUnmanagedAccounts:(BOOL)accounts forEvent:(id)event entityType:(unint64_t)type inEventStore:(id)store
{
  accountsCopy = accounts;
  v22 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  storeCopy = store;
  if (event)
  {
    eventCopy = event;
    v16 = MEMORY[0x1E695DEC8];
    eventCopy2 = event;
    v18 = [v16 arrayWithObjects:&eventCopy count:1];
  }

  else
  {
    v18 = MEMORY[0x1E695E0F0];
  }

  v19 = [self calendarsLimitedToSource:sourceCopy writability:writability onlyUnmanagedAccounts:accountsCopy forEvents:v18 entityType:type inEventStore:{storeCopy, eventCopy, v22}];

  return v19;
}

+ (id)calendarsLimitedToSource:(id)source writability:(int64_t)writability onlyUnmanagedAccounts:(BOOL)accounts forEvents:(id)events entityType:(unint64_t)type inEventStore:(id)store
{
  sourceCopy = source;
  eventsCopy = events;
  storeCopy = store;
  v16 = storeCopy;
  v17 = writability - 1;
  v18 = writability == 1;
  v19 = (writability - 1) < 2;
  if (sourceCopy)
  {
    if (v17 > 1)
    {
      v20 = [sourceCopy calendarsForEntityType:type];
    }

    else
    {
      v20 = [sourceCopy readWriteCalendarsForEntityType:type];
      if ([eventsCopy count])
      {
        v21 = MEMORY[0x1E696AE18];
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __123__CUIKCalendarAccountGrouper_calendarsLimitedToSource_writability_onlyUnmanagedAccounts_forEvents_entityType_inEventStore___block_invoke;
        v46[3] = &unk_1E8399FD0;
        v47 = eventsCopy;
        v48 = writability == 1;
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
      v30 = [storeCopy calendarsForEntityType:type];
      v26 = [v24 setWithArray:v30];
    }

    else
    {
      v25 = [storeCopy readWriteCalendarsForEntityType:type];
      v26 = [v24 setWithArray:v25];

      if ([eventsCopy count])
      {
        v27 = MEMORY[0x1E696AE18];
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __123__CUIKCalendarAccountGrouper_calendarsLimitedToSource_writability_onlyUnmanagedAccounts_forEvents_entityType_inEventStore___block_invoke_2;
        v43[3] = &unk_1E8399FD0;
        v44 = eventsCopy;
        v45 = v18;
        v28 = [v27 predicateWithBlock:v43];
        v29 = [v26 filteredSetUsingPredicate:v28];

        v26 = v29;
      }
    }

    blockList = [v16 blockList];
    v32 = MEMORY[0x1E696AE18];
    v36 = MEMORY[0x1E69E9820];
    v37 = 3221225472;
    v38 = __123__CUIKCalendarAccountGrouper_calendarsLimitedToSource_writability_onlyUnmanagedAccounts_forEvents_entityType_inEventStore___block_invoke_3;
    v39 = &unk_1E8399FF8;
    v41 = v19;
    accountsCopy = accounts;
    v40 = blockList;
    v33 = blockList;
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
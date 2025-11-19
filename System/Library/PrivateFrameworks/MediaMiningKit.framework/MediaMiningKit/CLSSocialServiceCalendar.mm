@interface CLSSocialServiceCalendar
+ (BOOL)_isCalendarRelevant:(id)a3;
+ (BOOL)_isEventInMeetingRoom:(id)a3;
+ (BOOL)eventAtLocation:(id)a3 withAttendeeNames:(id)a4 matchesClueCollection:(id)a5;
+ (BOOL)shouldKeepEvent:(id)a3 withClueCollection:(id)a4;
+ (id)relevantCalendars:(id)a3;
- (BOOL)_hasAlreadyPrefetchedEventsFromUniversalDate:(id)a3 toUniversalDate:(id)a4;
- (BOOL)_sortedAssetCollections:(id)a3 containsEvent:(id)a4;
- (CLSSocialServiceCalendar)init;
- (id)_fullNameWithContact:(id)a3;
- (id)eventFromProxyEvent:(id)a3;
- (id)eventsForClueCollection:(id)a3;
- (id)eventsForDates:(id)a3;
- (id)meContact;
- (id)personsFromEventParticipants:(id)a3 excludeCurrentUser:(BOOL)a4 serviceManager:(id)a5;
- (id)workCalendarEventsMatchingContactIdentifiers:(id)a3 fromUniversalDate:(id)a4 toUniversalDate:(id)a5 contactsService:(id)a6;
- (void)_enumerateEventsFromDate:(id)a3 toDate:(id)a4 fetchIfNeeded:(BOOL)a5 usingBlock:(id)a6;
- (void)invalidateMemoryCaches;
- (void)prefetchEventsFromUniversalDate:(id)a3 toUniversalDate:(id)a4 forAssetCollectionsSortedByStartDate:(id)a5 usingBlock:(id)a6;
@end

@implementation CLSSocialServiceCalendar

- (id)personsFromEventParticipants:(id)a3 excludeCurrentUser:(BOOL)a4 serviceManager:(id)a5
{
  v6 = a4;
  v34 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v19 = [MEMORY[0x277CBEB58] set];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v9)
  {
    v10 = *v30;
    v18 = v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        if (!v6 || ([*(*(&v29 + 1) + 8 * i) isCurrentUser] & 1) == 0)
        {
          v23 = 0;
          v24 = &v23;
          v25 = 0x3032000000;
          v26 = __Block_byref_object_copy__77;
          v27 = __Block_byref_object_dispose__78;
          v13 = [v12 emailAddress];
          v28 = [v8 personForPersonHandle:v13];

          if (!v24[5])
          {
            v14 = [v12 name];
            v15 = v14 == 0;

            if (!v15)
            {
              v16 = [v12 name];
              v21[0] = MEMORY[0x277D85DD0];
              v21[1] = 3221225472;
              v22[0] = __91__CLSSocialServiceCalendar_personsFromEventParticipants_excludeCurrentUser_serviceManager___block_invoke;
              v22[1] = &unk_2788A83A0;
              v22[2] = &v23;
              [v8 enumeratePersonsForFullname:v16 usingBlock:v21];
            }
          }

          if (v24[5])
          {
            [v19 addObject:?];
          }

          _Block_object_dispose(&v23, 8);
        }
      }

      v9 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v9);
  }

  return v19;
}

- (id)workCalendarEventsMatchingContactIdentifiers:(id)a3 fromUniversalDate:(id)a4 toUniversalDate:(id)a5 contactsService:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x277CC5A40];
  v13 = a6;
  v14 = a3;
  v15 = objc_alloc_init(v12);
  v16 = [v13 contactsForIdentifiers:v14];

  if ([v16 count])
  {
    v17 = [objc_opt_class() relevantCalendars:v15];
    v18 = [MEMORY[0x277CBEB58] set];
    v19 = [v16 allObjects];
    v20 = [v15 predicateForEventsWithStartDate:v10 endDate:v11 calendars:v17 matchingContacts:v19];

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __123__CLSSocialServiceCalendar_workCalendarEventsMatchingContactIdentifiers_fromUniversalDate_toUniversalDate_contactsService___block_invoke;
    v25[3] = &unk_2788A6DC0;
    v25[4] = self;
    v21 = v18;
    v26 = v21;
    [v15 enumerateEventsMatchingPredicate:v20 usingBlock:v25];
    v22 = v26;
    v23 = v21;
  }

  else
  {
    v23 = [MEMORY[0x277CBEB98] set];
  }

  return v23;
}

void __123__CLSSocialServiceCalendar_workCalendarEventsMatchingContactIdentifiers_fromUniversalDate_toUniversalDate_contactsService___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [[CLSEKEvent alloc] initWithEKEvent:v5];
  if ([objc_opt_class() _isEventInMeetingRoom:v4])
  {
    [*(a1 + 40) addObject:v4];
  }

  objc_autoreleasePoolPop(v3);
}

- (id)eventsForClueCollection:(id)a3
{
  v4 = a3;
  v5 = [v4 universalStartDate];
  v6 = [v4 universalEndDate];
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v9 = [MEMORY[0x277CBEB18] array];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __52__CLSSocialServiceCalendar_eventsForClueCollection___block_invoke;
    v13[3] = &unk_2788A6D98;
    v13[4] = self;
    v14 = v4;
    v10 = v9;
    v15 = v10;
    [(CLSSocialServiceCalendar *)self _enumerateEventsFromDate:v5 toDate:v7 fetchIfNeeded:1 usingBlock:v13];
    v11 = v15;
    v8 = v10;
  }

  return v8;
}

void __52__CLSSocialServiceCalendar_eventsForClueCollection___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4 && [objc_opt_class() shouldKeepEvent:v4 withClueCollection:*(a1 + 40)])
  {
    v3 = [*(a1 + 32) eventFromProxyEvent:v4];
    [*(a1 + 48) addObject:v3];
  }
}

- (void)_enumerateEventsFromDate:(id)a3 toDate:(id)a4 fetchIfNeeded:(BOOL)a5 usingBlock:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if (v11)
  {
    if ([(CLSSocialServiceCalendar *)self _hasAlreadyPrefetchedEventsFromUniversalDate:v9 toUniversalDate:v10])
    {
      calendarEventsCache = self->_calendarEventsCache;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __85__CLSSocialServiceCalendar__enumerateEventsFromDate_toDate_fetchIfNeeded_usingBlock___block_invoke;
      v16[3] = &unk_2788A6D48;
      v13 = &v17;
      v17 = v11;
      [(CLSCalendarEventsCache *)calendarEventsCache enumerateEventsFromStartDate:v9 toEndDate:v10 usingBlock:v16];
    }

    else
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __85__CLSSocialServiceCalendar__enumerateEventsFromDate_toDate_fetchIfNeeded_usingBlock___block_invoke_2;
      v14[3] = &unk_2788A6D70;
      v13 = &v15;
      v15 = v11;
      [(CLSSocialServiceCalendar *)self prefetchEventsFromUniversalDate:v9 toUniversalDate:v10 forAssetCollectionsSortedByStartDate:0 usingBlock:v14];
    }
  }
}

void __85__CLSSocialServiceCalendar__enumerateEventsFromDate_toDate_fetchIfNeeded_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();
  objc_autoreleasePoolPop(v6);
}

void __85__CLSSocialServiceCalendar__enumerateEventsFromDate_toDate_fetchIfNeeded_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();
  objc_autoreleasePoolPop(v3);
}

- (void)prefetchEventsFromUniversalDate:(id)a3 toUniversalDate:(id)a4 forAssetCollectionsSortedByStartDate:(id)a5 usingBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  context = objc_autoreleasePoolPush();
  v14 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v10 endDate:v11];
  v15 = self->_prefetchedDateIntervals;
  objc_sync_enter(v15);
  [(NSMutableSet *)self->_prefetchedDateIntervals addObject:v14];
  objc_sync_exit(v15);

  v16 = objc_alloc_init(MEMORY[0x277CC5A40]);
  v17 = [objc_opt_class() relevantCalendars:v16];
  v18 = [v16 predicateForNonrecurringEventsWithStartDate:v10 endDate:v11 calendars:v17];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = objc_autoreleasePoolPush();
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v28[3] = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __124__CLSSocialServiceCalendar_prefetchEventsFromUniversalDate_toUniversalDate_forAssetCollectionsSortedByStartDate_usingBlock___block_invoke;
  v22[3] = &unk_2788A6D20;
  v27 = v12 != 0;
  v22[4] = self;
  v19 = v12;
  v23 = v19;
  v20 = v13;
  v24 = v20;
  v25 = v28;
  v26 = &v29;
  [v16 enumerateEventsMatchingPredicate:v18 usingBlock:v22];
  objc_autoreleasePoolPop(v30[3]);

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(&v29, 8);

  objc_autoreleasePoolPop(context);
}

void __124__CLSSocialServiceCalendar_prefetchEventsFromUniversalDate_toUniversalDate_forAssetCollectionsSortedByStartDate_usingBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  if (!*(a1 + 72) || [*(a1 + 32) _sortedAssetCollections:*(a1 + 40) containsEvent:v9])
  {
    v5 = [[CLSEKEvent alloc] initWithEKEvent:v9];
    if (v5 && [objc_opt_class() shouldKeepEvent:v5 withClueCollection:0])
    {
      [*(*(a1 + 32) + 24) insertEvent:v5];
      goto LABEL_8;
    }
  }

  v5 = 0;
LABEL_8:
  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, v5, a3);
  }

  if ((*a3 & 1) == 0)
  {
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 24) + 1;
    *(v7 + 24) = v8;
    if (__ROR8__(0x8F5C28F5C28F5C29 * v8, 2) <= 0x28F5C28F5C28F5CuLL)
    {
      objc_autoreleasePoolPop(*(*(*(a1 + 64) + 8) + 24));
      *(*(*(a1 + 64) + 8) + 24) = objc_autoreleasePoolPush();
    }
  }
}

- (BOOL)_hasAlreadyPrefetchedEventsFromUniversalDate:(id)a3 toUniversalDate:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self->_prefetchedDateIntervals;
  objc_sync_enter(v8);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = self->_prefetchedDateIntervals;
  v10 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = *v16;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if ([v13 containsDate:{v6, v15}] && (objc_msgSend(v13, "containsDate:", v7) & 1) != 0)
        {
          LOBYTE(v10) = 1;
          goto LABEL_12;
        }
      }

      v10 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  objc_sync_exit(v8);
  return v10;
}

- (BOOL)_sortedAssetCollections:(id)a3 containsEvent:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 startDate];
  v8 = [v5 endDate];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__CLSSocialServiceCalendar__sortedAssetCollections_containsEvent___block_invoke;
  v13[3] = &unk_2788A6CF8;
  v14 = v7;
  v15 = v8;
  v9 = v8;
  v10 = v7;
  v11 = [v6 indexOfObjectWithOptions:1 passingTest:v13];

  return v11 != 0x7FFFFFFFFFFFFFFFLL;
}

BOOL __66__CLSSocialServiceCalendar__sortedAssetCollections_containsEvent___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 startDate];
  v8 = [v6 endDate];

  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = v9;
  [v7 timeIntervalSinceReferenceDate];
  v13 = v12;
  [v8 timeIntervalSinceReferenceDate];
  v15 = v14;
  [v11 timeIntervalSinceReferenceDate];
  v17 = v16;
  [v10 timeIntervalSinceReferenceDate];
  v19 = v18;

  v20 = v15 >= v17 && v13 <= v19;
  if (v20)
  {
    *a4 = 1;
  }

  return v20;
}

- (void)invalidateMemoryCaches
{
  v3 = [MEMORY[0x277CBEB58] set];
  prefetchedDateIntervals = self->_prefetchedDateIntervals;
  self->_prefetchedDateIntervals = v3;

  self->_calendarEventsCache = objc_alloc_init(CLSCalendarEventsCache);

  MEMORY[0x2821F96F8]();
}

- (id)eventsForDates:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = [v5 sortedArrayUsingSelector:sel_compare_];
    v8 = [v7 firstObject];
    v9 = [v7 lastObject];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __43__CLSSocialServiceCalendar_eventsForDates___block_invoke;
    v13[3] = &unk_2788A6C58;
    v10 = v6;
    v14 = v10;
    v15 = self;
    [(CLSSocialServiceCalendar *)self _enumerateEventsFromDate:v8 toDate:v9 fetchIfNeeded:1 usingBlock:v13];

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __43__CLSSocialServiceCalendar_eventsForDates___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) eventFromProxyEvent:a2];
    [v2 addObject:v3];
  }
}

- (id)eventFromProxyEvent:(id)a3
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CLSSocialServiceCalendar *)self meContact];
  v6 = objc_alloc_init(CLSEvent);
  v7 = [v4 title];
  [(CLSEvent *)v6 setTitle:v7];

  v8 = [v4 startDate];
  [(CLSEvent *)v6 setStartDate:v8];

  v9 = [v4 endDate];
  v52 = v6;
  [(CLSEvent *)v6 setEndDate:v9];

  v54 = [MEMORY[0x277CBEB18] array];
  v10 = (v5 != 0) & ~[v4 hasAttendees];
  if (v10 == 1)
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v5, @"person", 0}];
    v12 = [v5 emailAddresses];
    v13 = [MEMORY[0x277CBDA78] stringFromContact:v5 style:0];
    if ([v12 count])
    {
      v14 = [v12 anyObject];
      [v11 setObject:v14 forKeyedSubscript:@"email"];
    }

    if (v13)
    {
      [v11 setObject:v13 forKeyedSubscript:@"name"];
    }

    [v54 addObject:v11];
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v53 = v4;
  v15 = [v4 attendees];
  v16 = [v15 countByEnumeratingWithState:&v61 objects:v66 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v62;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v62 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v61 + 1) + 8 * i);
        if ([v20 participantStatus] == 2)
        {
          v21 = [MEMORY[0x277CBEB38] dictionary];
          v22 = [v20 emailAddress];

          if (v22)
          {
            v23 = [v20 emailAddress];
            [v21 setObject:v23 forKeyedSubscript:@"email"];
          }

          v24 = [v20 name];

          if (v24)
          {
            v25 = [v20 name];
            [v21 setObject:v25 forKeyedSubscript:@"name"];
          }

          if ([v20 isCurrentUser] && v5)
          {
            if (v10)
            {
              LOBYTE(v10) = 1;
LABEL_24:

              continue;
            }

            [v21 setObject:v5 forKeyedSubscript:@"person"];
            LOBYTE(v10) = 1;
          }

          v26 = [v21 allKeys];
          v27 = [v26 count];

          if (v27)
          {
            [v54 addObject:v21];
          }

          goto LABEL_24;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v61 objects:v66 count:16];
    }

    while (v17);
  }

  v28 = v53;
  v29 = [v53 calendar];
  v30 = [v29 hasSharees];

  if (!v30)
  {
    goto LABEL_47;
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v31 = [v53 calendar];
  v32 = [v31 shareesAndOwner];

  v33 = [v32 countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (!v33)
  {
    goto LABEL_46;
  }

  v34 = v33;
  v35 = *v58;
  do
  {
    for (j = 0; j != v34; ++j)
    {
      if (*v58 != v35)
      {
        objc_enumerationMutation(v32);
      }

      v37 = *(*(&v57 + 1) + 8 * j);
      v38 = [MEMORY[0x277CBEB38] dictionary];
      v39 = [v37 emailAddress];

      if (v39)
      {
        v40 = [v37 emailAddress];
        [v38 setObject:v40 forKeyedSubscript:@"email"];
      }

      v41 = [v37 name];

      if (v41)
      {
        v42 = [v37 name];
        [v38 setObject:v42 forKeyedSubscript:@"name"];
      }

      if (([v37 isCurrentUserForScheduling] & 1) != 0 || objc_msgSend(v37, "isCurrentUserForSharing"))
      {
        if (v10 & 1 | (v5 == 0))
        {
          goto LABEL_44;
        }

        [v38 setObject:v5 forKeyedSubscript:@"person"];
        LOBYTE(v10) = 1;
      }

      else
      {
        v43 = [v37 name];
        [v38 setObject:v43 forKeyedSubscript:@"person"];
      }

      v44 = [v38 allKeys];
      v45 = [v44 count];

      if (v45)
      {
        [v54 addObject:v38];
      }

LABEL_44:
    }

    v34 = [v32 countByEnumeratingWithState:&v57 objects:v65 count:16];
  }

  while (v34);
LABEL_46:

  v28 = v53;
LABEL_47:
  [(CLSEvent *)v52 setAttendees:v54];
  v46 = [v28 geoLocation];
  if (v46)
  {
    [(CLSEvent *)v52 setLocation:v46];
  }

  v47 = [v28 attendees];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __48__CLSSocialServiceCalendar_eventFromProxyEvent___block_invoke;
  v55[3] = &unk_2788A6C30;
  v48 = v52;
  v56 = v48;
  [v47 enumerateObjectsUsingBlock:v55];

  -[CLSEvent setOrganizedByMe:](v48, "setOrganizedByMe:", [v28 organizedByMe]);
  v49 = [v28 selfAttendee];
  if (v49)
  {
    v50 = [v28 selfAttendee];
    -[CLSEvent setAccepted:](v48, "setAccepted:", [v50 participantStatus] == 2);
  }

  else
  {
    -[CLSEvent setAccepted:](v48, "setAccepted:", [v28 hasAttendees] ^ 1);
  }

  return v48;
}

uint64_t __48__CLSSocialServiceCalendar_eventFromProxyEvent___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 participantType];
  if (result == 2)
  {
    result = [*(a1 + 32) setMeetingRoom:1];
    *a4 = 1;
  }

  return result;
}

- (id)_fullNameWithContact:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
  v12[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v6 = [v3 areKeysAvailable:v5];

  if (v6)
  {
    v7 = [MEMORY[0x277CBDA78] stringFromContact:v3 style:0];
  }

  else
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [v3 givenName];
    v10 = [v3 familyName];
    v7 = [v8 stringWithFormat:@"%@ %@", v9, v10];
  }

  return v7;
}

- (id)meContact
{
  v13[2] = *MEMORY[0x277D85DE8];
  contactStore = self->_contactStore;
  if (contactStore)
  {
    v4 = contactStore;
    objc_sync_enter(v4);
    if (!self->_meContact)
    {
      v5 = self->_contactStore;
      v6 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
      v7 = *MEMORY[0x277CBCFC0];
      v13[0] = v6;
      v13[1] = v7;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
      v9 = [(CNContactStore *)v5 _ios_meContactWithKeysToFetch:v8 error:0];

      meContact = self->_meContact;
      self->_meContact = v9;
    }

    objc_sync_exit(v4);
  }

  v11 = self->_meContact;

  return v11;
}

- (CLSSocialServiceCalendar)init
{
  v10.receiver = self;
  v10.super_class = CLSSocialServiceCalendar;
  v2 = [(CLSSocialServiceCalendar *)&v10 init];
  if (v2)
  {
    if (+[CLSSocialServiceContacts canAccessContactsStore])
    {
      v3 = objc_alloc_init(MEMORY[0x277CBDAB8]);
      contactStore = v2->_contactStore;
      v2->_contactStore = v3;
    }

    v5 = [MEMORY[0x277CBEB58] set];
    prefetchedDateIntervals = v2->_prefetchedDateIntervals;
    v2->_prefetchedDateIntervals = v5;

    v7 = objc_alloc_init(CLSCalendarEventsCache);
    calendarEventsCache = v2->_calendarEventsCache;
    v2->_calendarEventsCache = v7;
  }

  return v2;
}

+ (BOOL)eventAtLocation:(id)a3 withAttendeeNames:(id)a4 matchesClueCollection:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __84__CLSSocialServiceCalendar_eventAtLocation_withAttendeeNames_matchesClueCollection___block_invoke;
  v31[3] = &unk_2788A6CD0;
  v10 = v8;
  v32 = v10;
  v33 = &v34;
  [v9 enumeratePeopleClues:v31];
  if (!v7)
  {
    v23 = 0;
LABEL_14:
    v24 = v23 | *(v35 + 24);
    goto LABEL_15;
  }

  v11 = [v9 locations];
  v26 = [v11 count];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v38 count:16];
  if (v13)
  {
    v14 = *v28;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        [v7 coordinate];
        v18 = v17;
        v20 = v19;
        [v16 coordinate];
        if ([CLSNewLocationInformant location:v18 isCloseToLocation:v20, v21, v22])
        {

          v23 = 1;
          goto LABEL_14;
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v27 objects:v38 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v23 = 0;
  v24 = 0;
  if (!v26)
  {
    goto LABEL_14;
  }

LABEL_15:

  _Block_object_dispose(&v34, 8);
  return v24 & 1;
}

void __84__CLSSocialServiceCalendar_eventAtLocation_withAttendeeNames_matchesClueCollection___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 person];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 fullName];
    if (v8)
    {
      v9 = v8;
      v10 = [v7 isMe];

      if ((v10 & 1) == 0)
      {
        v11 = *(a1 + 32);
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __84__CLSSocialServiceCalendar_eventAtLocation_withAttendeeNames_matchesClueCollection___block_invoke_2;
        v14[3] = &unk_2788A6CA8;
        v12 = v7;
        v13 = *(a1 + 40);
        v15 = v12;
        v16 = v13;
        [v11 enumerateObjectsUsingBlock:v14];
      }
    }
  }

  *a4 = *(*(*(a1 + 40) + 8) + 24);
}

void __84__CLSSocialServiceCalendar_eventAtLocation_withAttendeeNames_matchesClueCollection___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [*(a1 + 32) fullName];
    v7 = [v8 rangeOfString:v6 options:129];

    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

+ (BOOL)shouldKeepEvent:(id)a3 withClueCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 selfAttendee];
  if (v8)
  {
    v9 = v8;
    v10 = [v6 selfAttendee];
    if ([v10 participantStatus] == 2)
    {
      v11 = 1;
    }

    else
    {
      v11 = [v6 organizedByMe];
    }
  }

  else
  {
    v11 = 1;
  }

  LODWORD(v12) = v11 & ([a1 _isEventInMeetingRoom:v6] ^ 1);
  if (v7 && v12)
  {
    v12 = [v6 attendees];
    v13 = [v12 valueForKey:@"name"];

    v14 = objc_opt_class();
    v15 = [v6 geoLocation];
    LOBYTE(v12) = [v14 eventAtLocation:v15 withAttendeeNames:v13 matchesClueCollection:v7];
  }

  v16 = [v6 isSuggestedAndAccepted];
  v17 = [v6 isBirthday];
  v18 = [v6 endDate];
  [v18 timeIntervalSinceReferenceDate];
  v20 = v19;
  v21 = [v6 startDate];
  [v21 timeIntervalSinceReferenceDate];
  v23 = v22;

  if (([v6 hasRecurrenceRules] & 1) != 0 || objc_msgSend(v6, "isAllDay", v20 - v23))
  {
    v24 = 0;
  }

  else
  {
    v24 = (v20 - v23 <= 21600.0) & (v17 ^ 1) & (v16 | v12);
  }

  return v24;
}

+ (BOOL)_isEventInMeetingRoom:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = [v3 attendees];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__CLSSocialServiceCalendar__isEventInMeetingRoom___block_invoke;
  v6[3] = &unk_2788A6C80;
  v6[4] = &v7;
  [v4 enumerateObjectsUsingBlock:v6];

  LOBYTE(v4) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __50__CLSSocialServiceCalendar__isEventInMeetingRoom___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 participantType];
  if (result == 2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

+ (id)relevantCalendars:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [a3 calendarsForEntityType:0];
  v5 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([a1 _isCalendarRelevant:{v11, v13}])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (BOOL)_isCalendarRelevant:(id)a3
{
  v3 = a3;
  v4 = ([v3 isFacebookBirthdayCalendar] & 1) == 0 && (objc_msgSend(v3, "isSubscribed") & 1) == 0 && (objc_msgSend(v3, "isSubscribedHolidayCalendar") & 1) == 0 && objc_msgSend(v3, "type") != 4;

  return v4;
}

@end
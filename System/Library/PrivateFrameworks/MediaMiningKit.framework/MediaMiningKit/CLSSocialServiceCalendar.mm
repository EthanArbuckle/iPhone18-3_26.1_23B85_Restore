@interface CLSSocialServiceCalendar
+ (BOOL)_isCalendarRelevant:(id)relevant;
+ (BOOL)_isEventInMeetingRoom:(id)room;
+ (BOOL)eventAtLocation:(id)location withAttendeeNames:(id)names matchesClueCollection:(id)collection;
+ (BOOL)shouldKeepEvent:(id)event withClueCollection:(id)collection;
+ (id)relevantCalendars:(id)calendars;
- (BOOL)_hasAlreadyPrefetchedEventsFromUniversalDate:(id)date toUniversalDate:(id)universalDate;
- (BOOL)_sortedAssetCollections:(id)collections containsEvent:(id)event;
- (CLSSocialServiceCalendar)init;
- (id)_fullNameWithContact:(id)contact;
- (id)eventFromProxyEvent:(id)event;
- (id)eventsForClueCollection:(id)collection;
- (id)eventsForDates:(id)dates;
- (id)meContact;
- (id)personsFromEventParticipants:(id)participants excludeCurrentUser:(BOOL)user serviceManager:(id)manager;
- (id)workCalendarEventsMatchingContactIdentifiers:(id)identifiers fromUniversalDate:(id)date toUniversalDate:(id)universalDate contactsService:(id)service;
- (void)_enumerateEventsFromDate:(id)date toDate:(id)toDate fetchIfNeeded:(BOOL)needed usingBlock:(id)block;
- (void)invalidateMemoryCaches;
- (void)prefetchEventsFromUniversalDate:(id)date toUniversalDate:(id)universalDate forAssetCollectionsSortedByStartDate:(id)startDate usingBlock:(id)block;
@end

@implementation CLSSocialServiceCalendar

- (id)personsFromEventParticipants:(id)participants excludeCurrentUser:(BOOL)user serviceManager:(id)manager
{
  userCopy = user;
  v34 = *MEMORY[0x277D85DE8];
  participantsCopy = participants;
  managerCopy = manager;
  v19 = [MEMORY[0x277CBEB58] set];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = participantsCopy;
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
        if (!userCopy || ([*(*(&v29 + 1) + 8 * i) isCurrentUser] & 1) == 0)
        {
          v23 = 0;
          v24 = &v23;
          v25 = 0x3032000000;
          v26 = __Block_byref_object_copy__77;
          v27 = __Block_byref_object_dispose__78;
          emailAddress = [v12 emailAddress];
          v28 = [managerCopy personForPersonHandle:emailAddress];

          if (!v24[5])
          {
            name = [v12 name];
            v15 = name == 0;

            if (!v15)
            {
              name2 = [v12 name];
              v21[0] = MEMORY[0x277D85DD0];
              v21[1] = 3221225472;
              v22[0] = __91__CLSSocialServiceCalendar_personsFromEventParticipants_excludeCurrentUser_serviceManager___block_invoke;
              v22[1] = &unk_2788A83A0;
              v22[2] = &v23;
              [managerCopy enumeratePersonsForFullname:name2 usingBlock:v21];
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

- (id)workCalendarEventsMatchingContactIdentifiers:(id)identifiers fromUniversalDate:(id)date toUniversalDate:(id)universalDate contactsService:(id)service
{
  dateCopy = date;
  universalDateCopy = universalDate;
  v12 = MEMORY[0x277CC5A40];
  serviceCopy = service;
  identifiersCopy = identifiers;
  v15 = objc_alloc_init(v12);
  v16 = [serviceCopy contactsForIdentifiers:identifiersCopy];

  if ([v16 count])
  {
    v17 = [objc_opt_class() relevantCalendars:v15];
    v18 = [MEMORY[0x277CBEB58] set];
    allObjects = [v16 allObjects];
    v20 = [v15 predicateForEventsWithStartDate:dateCopy endDate:universalDateCopy calendars:v17 matchingContacts:allObjects];

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

- (id)eventsForClueCollection:(id)collection
{
  collectionCopy = collection;
  universalStartDate = [collectionCopy universalStartDate];
  universalEndDate = [collectionCopy universalEndDate];
  v7 = universalEndDate;
  v8 = 0;
  if (universalStartDate && universalEndDate)
  {
    array = [MEMORY[0x277CBEB18] array];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __52__CLSSocialServiceCalendar_eventsForClueCollection___block_invoke;
    v13[3] = &unk_2788A6D98;
    v13[4] = self;
    v14 = collectionCopy;
    v10 = array;
    v15 = v10;
    [(CLSSocialServiceCalendar *)self _enumerateEventsFromDate:universalStartDate toDate:v7 fetchIfNeeded:1 usingBlock:v13];
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

- (void)_enumerateEventsFromDate:(id)date toDate:(id)toDate fetchIfNeeded:(BOOL)needed usingBlock:(id)block
{
  dateCopy = date;
  toDateCopy = toDate;
  blockCopy = block;
  if (blockCopy)
  {
    if ([(CLSSocialServiceCalendar *)self _hasAlreadyPrefetchedEventsFromUniversalDate:dateCopy toUniversalDate:toDateCopy])
    {
      calendarEventsCache = self->_calendarEventsCache;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __85__CLSSocialServiceCalendar__enumerateEventsFromDate_toDate_fetchIfNeeded_usingBlock___block_invoke;
      v16[3] = &unk_2788A6D48;
      v13 = &v17;
      v17 = blockCopy;
      [(CLSCalendarEventsCache *)calendarEventsCache enumerateEventsFromStartDate:dateCopy toEndDate:toDateCopy usingBlock:v16];
    }

    else
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __85__CLSSocialServiceCalendar__enumerateEventsFromDate_toDate_fetchIfNeeded_usingBlock___block_invoke_2;
      v14[3] = &unk_2788A6D70;
      v13 = &v15;
      v15 = blockCopy;
      [(CLSSocialServiceCalendar *)self prefetchEventsFromUniversalDate:dateCopy toUniversalDate:toDateCopy forAssetCollectionsSortedByStartDate:0 usingBlock:v14];
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

- (void)prefetchEventsFromUniversalDate:(id)date toUniversalDate:(id)universalDate forAssetCollectionsSortedByStartDate:(id)startDate usingBlock:(id)block
{
  dateCopy = date;
  universalDateCopy = universalDate;
  startDateCopy = startDate;
  blockCopy = block;
  context = objc_autoreleasePoolPush();
  v14 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:dateCopy endDate:universalDateCopy];
  v15 = self->_prefetchedDateIntervals;
  objc_sync_enter(v15);
  [(NSMutableSet *)self->_prefetchedDateIntervals addObject:v14];
  objc_sync_exit(v15);

  v16 = objc_alloc_init(MEMORY[0x277CC5A40]);
  v17 = [objc_opt_class() relevantCalendars:v16];
  v18 = [v16 predicateForNonrecurringEventsWithStartDate:dateCopy endDate:universalDateCopy calendars:v17];
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
  v27 = startDateCopy != 0;
  v22[4] = self;
  v19 = startDateCopy;
  v23 = v19;
  v20 = blockCopy;
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

- (BOOL)_hasAlreadyPrefetchedEventsFromUniversalDate:(id)date toUniversalDate:(id)universalDate
{
  v20 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  universalDateCopy = universalDate;
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
        if ([v13 containsDate:{dateCopy, v15}] && (objc_msgSend(v13, "containsDate:", universalDateCopy) & 1) != 0)
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

- (BOOL)_sortedAssetCollections:(id)collections containsEvent:(id)event
{
  eventCopy = event;
  collectionsCopy = collections;
  startDate = [eventCopy startDate];
  endDate = [eventCopy endDate];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__CLSSocialServiceCalendar__sortedAssetCollections_containsEvent___block_invoke;
  v13[3] = &unk_2788A6CF8;
  v14 = startDate;
  v15 = endDate;
  v9 = endDate;
  v10 = startDate;
  v11 = [collectionsCopy indexOfObjectWithOptions:1 passingTest:v13];

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

- (id)eventsForDates:(id)dates
{
  datesCopy = dates;
  v5 = datesCopy;
  if (datesCopy && [datesCopy count])
  {
    array = [MEMORY[0x277CBEB18] array];
    v7 = [v5 sortedArrayUsingSelector:sel_compare_];
    firstObject = [v7 firstObject];
    lastObject = [v7 lastObject];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __43__CLSSocialServiceCalendar_eventsForDates___block_invoke;
    v13[3] = &unk_2788A6C58;
    v10 = array;
    v14 = v10;
    selfCopy = self;
    [(CLSSocialServiceCalendar *)self _enumerateEventsFromDate:firstObject toDate:lastObject fetchIfNeeded:1 usingBlock:v13];

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

- (id)eventFromProxyEvent:(id)event
{
  v67 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  meContact = [(CLSSocialServiceCalendar *)self meContact];
  v6 = objc_alloc_init(CLSEvent);
  title = [eventCopy title];
  [(CLSEvent *)v6 setTitle:title];

  startDate = [eventCopy startDate];
  [(CLSEvent *)v6 setStartDate:startDate];

  endDate = [eventCopy endDate];
  v52 = v6;
  [(CLSEvent *)v6 setEndDate:endDate];

  array = [MEMORY[0x277CBEB18] array];
  v10 = (meContact != 0) & ~[eventCopy hasAttendees];
  if (v10 == 1)
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{meContact, @"person", 0}];
    emailAddresses = [meContact emailAddresses];
    v13 = [MEMORY[0x277CBDA78] stringFromContact:meContact style:0];
    if ([emailAddresses count])
    {
      anyObject = [emailAddresses anyObject];
      [v11 setObject:anyObject forKeyedSubscript:@"email"];
    }

    if (v13)
    {
      [v11 setObject:v13 forKeyedSubscript:@"name"];
    }

    [array addObject:v11];
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v53 = eventCopy;
  attendees = [eventCopy attendees];
  v16 = [attendees countByEnumeratingWithState:&v61 objects:v66 count:16];
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
          objc_enumerationMutation(attendees);
        }

        v20 = *(*(&v61 + 1) + 8 * i);
        if ([v20 participantStatus] == 2)
        {
          dictionary = [MEMORY[0x277CBEB38] dictionary];
          emailAddress = [v20 emailAddress];

          if (emailAddress)
          {
            emailAddress2 = [v20 emailAddress];
            [dictionary setObject:emailAddress2 forKeyedSubscript:@"email"];
          }

          name = [v20 name];

          if (name)
          {
            name2 = [v20 name];
            [dictionary setObject:name2 forKeyedSubscript:@"name"];
          }

          if ([v20 isCurrentUser] && meContact)
          {
            if (v10)
            {
              LOBYTE(v10) = 1;
LABEL_24:

              continue;
            }

            [dictionary setObject:meContact forKeyedSubscript:@"person"];
            LOBYTE(v10) = 1;
          }

          allKeys = [dictionary allKeys];
          v27 = [allKeys count];

          if (v27)
          {
            [array addObject:dictionary];
          }

          goto LABEL_24;
        }
      }

      v17 = [attendees countByEnumeratingWithState:&v61 objects:v66 count:16];
    }

    while (v17);
  }

  v28 = v53;
  calendar = [v53 calendar];
  hasSharees = [calendar hasSharees];

  if (!hasSharees)
  {
    goto LABEL_47;
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  calendar2 = [v53 calendar];
  shareesAndOwner = [calendar2 shareesAndOwner];

  v33 = [shareesAndOwner countByEnumeratingWithState:&v57 objects:v65 count:16];
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
        objc_enumerationMutation(shareesAndOwner);
      }

      v37 = *(*(&v57 + 1) + 8 * j);
      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      emailAddress3 = [v37 emailAddress];

      if (emailAddress3)
      {
        emailAddress4 = [v37 emailAddress];
        [dictionary2 setObject:emailAddress4 forKeyedSubscript:@"email"];
      }

      name3 = [v37 name];

      if (name3)
      {
        name4 = [v37 name];
        [dictionary2 setObject:name4 forKeyedSubscript:@"name"];
      }

      if (([v37 isCurrentUserForScheduling] & 1) != 0 || objc_msgSend(v37, "isCurrentUserForSharing"))
      {
        if (v10 & 1 | (meContact == 0))
        {
          goto LABEL_44;
        }

        [dictionary2 setObject:meContact forKeyedSubscript:@"person"];
        LOBYTE(v10) = 1;
      }

      else
      {
        name5 = [v37 name];
        [dictionary2 setObject:name5 forKeyedSubscript:@"person"];
      }

      allKeys2 = [dictionary2 allKeys];
      v45 = [allKeys2 count];

      if (v45)
      {
        [array addObject:dictionary2];
      }

LABEL_44:
    }

    v34 = [shareesAndOwner countByEnumeratingWithState:&v57 objects:v65 count:16];
  }

  while (v34);
LABEL_46:

  v28 = v53;
LABEL_47:
  [(CLSEvent *)v52 setAttendees:array];
  geoLocation = [v28 geoLocation];
  if (geoLocation)
  {
    [(CLSEvent *)v52 setLocation:geoLocation];
  }

  attendees2 = [v28 attendees];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __48__CLSSocialServiceCalendar_eventFromProxyEvent___block_invoke;
  v55[3] = &unk_2788A6C30;
  v48 = v52;
  v56 = v48;
  [attendees2 enumerateObjectsUsingBlock:v55];

  -[CLSEvent setOrganizedByMe:](v48, "setOrganizedByMe:", [v28 organizedByMe]);
  selfAttendee = [v28 selfAttendee];
  if (selfAttendee)
  {
    selfAttendee2 = [v28 selfAttendee];
    -[CLSEvent setAccepted:](v48, "setAccepted:", [selfAttendee2 participantStatus] == 2);
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

- (id)_fullNameWithContact:(id)contact
{
  v12[1] = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  v4 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
  v12[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v6 = [contactCopy areKeysAvailable:v5];

  if (v6)
  {
    v7 = [MEMORY[0x277CBDA78] stringFromContact:contactCopy style:0];
  }

  else
  {
    v8 = MEMORY[0x277CCACA8];
    givenName = [contactCopy givenName];
    familyName = [contactCopy familyName];
    v7 = [v8 stringWithFormat:@"%@ %@", givenName, familyName];
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

+ (BOOL)eventAtLocation:(id)location withAttendeeNames:(id)names matchesClueCollection:(id)collection
{
  v39 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  namesCopy = names;
  collectionCopy = collection;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __84__CLSSocialServiceCalendar_eventAtLocation_withAttendeeNames_matchesClueCollection___block_invoke;
  v31[3] = &unk_2788A6CD0;
  v10 = namesCopy;
  v32 = v10;
  v33 = &v34;
  [collectionCopy enumeratePeopleClues:v31];
  if (!locationCopy)
  {
    v23 = 0;
LABEL_14:
    v24 = v23 | *(v35 + 24);
    goto LABEL_15;
  }

  locations = [collectionCopy locations];
  v26 = [locations count];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = locations;
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
        [locationCopy coordinate];
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

+ (BOOL)shouldKeepEvent:(id)event withClueCollection:(id)collection
{
  eventCopy = event;
  collectionCopy = collection;
  selfAttendee = [eventCopy selfAttendee];
  if (selfAttendee)
  {
    v9 = selfAttendee;
    selfAttendee2 = [eventCopy selfAttendee];
    if ([selfAttendee2 participantStatus] == 2)
    {
      organizedByMe = 1;
    }

    else
    {
      organizedByMe = [eventCopy organizedByMe];
    }
  }

  else
  {
    organizedByMe = 1;
  }

  LODWORD(attendees) = organizedByMe & ([self _isEventInMeetingRoom:eventCopy] ^ 1);
  if (collectionCopy && attendees)
  {
    attendees = [eventCopy attendees];
    v13 = [attendees valueForKey:@"name"];

    v14 = objc_opt_class();
    geoLocation = [eventCopy geoLocation];
    LOBYTE(attendees) = [v14 eventAtLocation:geoLocation withAttendeeNames:v13 matchesClueCollection:collectionCopy];
  }

  isSuggestedAndAccepted = [eventCopy isSuggestedAndAccepted];
  isBirthday = [eventCopy isBirthday];
  endDate = [eventCopy endDate];
  [endDate timeIntervalSinceReferenceDate];
  v20 = v19;
  startDate = [eventCopy startDate];
  [startDate timeIntervalSinceReferenceDate];
  v23 = v22;

  if (([eventCopy hasRecurrenceRules] & 1) != 0 || objc_msgSend(eventCopy, "isAllDay", v20 - v23))
  {
    v24 = 0;
  }

  else
  {
    v24 = (v20 - v23 <= 21600.0) & (isBirthday ^ 1) & (isSuggestedAndAccepted | attendees);
  }

  return v24;
}

+ (BOOL)_isEventInMeetingRoom:(id)room
{
  roomCopy = room;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  attendees = [roomCopy attendees];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__CLSSocialServiceCalendar__isEventInMeetingRoom___block_invoke;
  v6[3] = &unk_2788A6C80;
  v6[4] = &v7;
  [attendees enumerateObjectsUsingBlock:v6];

  LOBYTE(attendees) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return attendees;
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

+ (id)relevantCalendars:(id)calendars
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [calendars calendarsForEntityType:0];
  array = [MEMORY[0x277CBEB18] array];
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
        if ([self _isCalendarRelevant:{v11, v13}])
        {
          [array addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return array;
}

+ (BOOL)_isCalendarRelevant:(id)relevant
{
  relevantCopy = relevant;
  v4 = ([relevantCopy isFacebookBirthdayCalendar] & 1) == 0 && (objc_msgSend(relevantCopy, "isSubscribed") & 1) == 0 && (objc_msgSend(relevantCopy, "isSubscribedHolidayCalendar") & 1) == 0 && objc_msgSend(relevantCopy, "type") != 4;

  return v4;
}

@end
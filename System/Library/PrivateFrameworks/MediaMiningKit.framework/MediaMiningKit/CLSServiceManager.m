@interface CLSServiceManager
+ (id)locationCacheForSwiftOnlyWithParentURL:(id)a3;
- (BOOL)hasAddressesForMePerson;
- (BOOL)isRemoteLocation:(id)a3 inDateInterval:(id)a4;
- (BOOL)routineIsAvailable;
- (CLSServiceManager)initWithLocationCache:(id)a3;
- (double)pinningVisitsRatio;
- (id)contactsForIdentifiers:(id)a3;
- (id)eventsForClueCollection:(id)a3;
- (id)eventsForDates:(id)a3;
- (id)fetchImportantLocationsOfInterest;
- (id)fetchLocationOfInterestVisitsAtLocation:(id)a3 inDateInterval:(id)a4;
- (id)inferredDeviceOwnerForPhotoLibrary:(id)a3 ignoreContactLinking:(BOOL)a4;
- (id)lastLocationOfInterestVisit;
- (id)locationOfInterestAtLocation:(id)a3;
- (id)locationOfInterestCloseToLocation:(id)a3 inDateInterval:(id)a4;
- (id)matchingDictionaryForContactIdentifier:(id)a3;
- (id)mePersonAddressesOfType:(unint64_t)a3;
- (id)mePersonFetchContactIfNeeeded:(BOOL)a3;
- (id)mePersonForGraphIngest;
- (id)personForIdentifier:(id)a3;
- (id)personForName:(id)a3 inPhotoLibrary:(id)a4;
- (id)personForPersonHandle:(id)a3;
- (id)personLocalIdentifierMatchingContactPictureForContactIdentifier:(id)a3;
- (id)personResultForName:(id)a3 inPhotoLibrary:(id)a4;
- (id)personResultsForName:(id)a3 inPhotoLibrary:(id)a4;
- (id)personsFromEventParticipants:(id)a3 excludeCurrentUser:(BOOL)a4;
- (id)predominantLocationMobilityForDateInterval:(id)a3 confidence:(double *)a4;
- (id)workCalendarEventsMatchingContactIdentifiers:(id)a3 fromUniversalDate:(id)a4 toUniversalDate:(id)a5;
- (unint64_t)fetchFinerGranularityBusinessItemNumberForVisitIdentifier:(id)a3;
- (unint64_t)numberOfCloseByLocationMatches;
- (unint64_t)numberOfLocationsOfInterest;
- (unint64_t)numberOfMatchRequests;
- (unint64_t)numberOfRemoteLocationMatches;
- (unint64_t)numberOfTimeMatches;
- (unint64_t)numberOfVisits;
- (unint64_t)relationshipHintForPerson:(id)a3 usingLocales:(id)a4;
- (unint64_t)sexHintForPerson:(id)a3 usingLocales:(id)a4;
- (void)invalidateCacheForPersonInContactStoreWithContactIdentifiers:(id)a3;
- (void)invalidateMePerson;
- (void)invalidateMomentaryMemoryCaches;
- (void)invalidatePermanentMemoryCaches;
- (void)invalidatePersonsCacheForPersonsWithContactIdentifiers:(id)a3;
- (void)invalidatePersonsCacheForPersonsWithNames:(id)a3;
- (void)postProcessLocationsOfInterest;
@end

@implementation CLSServiceManager

- (unint64_t)relationshipHintForPerson:(id)a3 usingLocales:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(CLSSocialServiceCoreNameParser *)v8->_coreNameParserService relationshipHintForPerson:v6 usingLocales:v7];
  objc_sync_exit(v8);

  return v9;
}

- (unint64_t)sexHintForPerson:(id)a3 usingLocales:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(CLSSocialServiceCoreNameParser *)v8->_coreNameParserService sexHintForPerson:v6 usingLocales:v7];
  objc_sync_exit(v8);

  return v9;
}

- (id)mePersonAddressesOfType:(unint64_t)a3
{
  v4 = self;
  objc_sync_enter(v4);
  if (a3 >= 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(CLSRoutineService *)v4->_routineService placemarksOfInterestOfType:a3];
  }

  objc_sync_exit(v4);

  if (v5)
  {
    v6 = [v5 allObjects];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (BOOL)hasAddressesForMePerson
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(CLSRoutineService *)v2->_routineService hasLocationsOfInterestInformation];
  objc_sync_exit(v2);

  return v3;
}

- (id)personForIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(CLSSocialServiceContacts *)v5->_contactsService personForIdentifier:v4];
  objc_sync_exit(v5);

  return v6;
}

- (id)personsFromEventParticipants:(id)a3 excludeCurrentUser:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(CLSSocialServiceCalendar *)v7->_calendarService personsFromEventParticipants:v6 excludeCurrentUser:v4 serviceManager:v7];
  objc_sync_exit(v7);

  return v8;
}

- (id)workCalendarEventsMatchingContactIdentifiers:(id)a3 fromUniversalDate:(id)a4 toUniversalDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  objc_sync_enter(v11);
  v12 = [(CLSSocialServiceCalendar *)v11->_calendarService workCalendarEventsMatchingContactIdentifiers:v8 fromUniversalDate:v9 toUniversalDate:v10 contactsService:v11->_contactsService];
  objc_sync_exit(v11);

  return v12;
}

- (id)eventsForClueCollection:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(CLSSocialServiceCalendar *)v5->_calendarService eventsForClueCollection:v4];
  v7 = v6;
  v8 = MEMORY[0x277CBEBF8];
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  objc_sync_exit(v5);

  return v9;
}

- (id)lastLocationOfInterestVisit
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(CLSRoutineService *)v2->_routineService lastLocationOfInterestVisit];
  objc_sync_exit(v2);

  return v3;
}

- (void)postProcessLocationsOfInterest
{
  obj = self;
  objc_sync_enter(obj);
  [(CLSRoutineService *)obj->_routineService postProcessLocationsOfInterest];
  objc_sync_exit(obj);
}

- (id)fetchImportantLocationsOfInterest
{
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(CLSRoutineService *)v4->_routineService locationsOfInterestOfType:0];
  if ([v5 count])
  {
    [v3 unionSet:v5];
  }

  v6 = [(CLSRoutineService *)v4->_routineService locationsOfInterestOfType:1];
  if ([v6 count])
  {
    [v3 unionSet:v6];
  }

  objc_sync_exit(v4);

  return v3;
}

- (id)predominantLocationMobilityForDateInterval:(id)a3 confidence:(double *)a4
{
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(CLSRoutineService *)v7->_routineService predominantTransportationModeForDateInterval:v6 confidence:a4];
  if (v8 > 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = *off_2788A6DE0[v8];
  }

  objc_sync_exit(v7);

  return v9;
}

- (unint64_t)fetchFinerGranularityBusinessItemNumberForVisitIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(CLSRoutineService *)v5->_routineService fetchFinerGranularityBusinessItemNumberForVisitIdentifier:v4];
  objc_sync_exit(v5);

  return v6;
}

- (id)fetchLocationOfInterestVisitsAtLocation:(id)a3 inDateInterval:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(CLSRoutineService *)v8->_routineService locationOfInterestVisitsAtLocation:v6 inDateInterval:v7];
  objc_sync_exit(v8);

  return v9;
}

- (id)locationOfInterestCloseToLocation:(id)a3 inDateInterval:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(CLSRoutineService *)v8->_routineService locationOfInterestCloseToLocation:v6 inDateInterval:v7];
  objc_sync_exit(v8);

  return v9;
}

- (id)locationOfInterestAtLocation:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(CLSRoutineService *)v5->_routineService locationOfInterestAtLocation:v4];
  objc_sync_exit(v5);

  return v6;
}

- (BOOL)isRemoteLocation:(id)a3 inDateInterval:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(CLSRoutineService *)v8->_routineService isRemoteLocation:v6 inDateInterval:v7];
  objc_sync_exit(v8);

  return v9;
}

- (id)matchingDictionaryForContactIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(CLSSocialServiceContacts *)v5->_contactsService matchingDictionaryForContactIdentifier:v4];
  objc_sync_exit(v5);

  return v6;
}

- (id)contactsForIdentifiers:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(CLSSocialServiceContacts *)v5->_contactsService contactsForIdentifiers:v4];
  objc_sync_exit(v5);

  return v6;
}

- (id)personForPersonHandle:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(CLSSocialServiceContacts *)v5->_contactsService personForPersonHandle:v4];
  objc_sync_exit(v5);

  return v6;
}

- (id)personLocalIdentifierMatchingContactPictureForContactIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(CLSSocialServiceContacts *)v5->_contactsService personLocalIdentifierMatchingContactPictureForContactIdentifier:v4];
  objc_sync_exit(v5);

  return v6;
}

- (id)personResultsForName:(id)a3 inPhotoLibrary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_personsCache;
  objc_sync_enter(v8);
  v9 = [(CLSLRUMemoryCache *)self->_personsCache objectForKey:v6];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = self;
    objc_sync_enter(v12);
    v13 = [(CLSSocialServiceContacts *)v12->_contactsService personResultsForName:v6 inPhotoLibrary:v7];
    objc_sync_exit(v12);

    v11 = [MEMORY[0x277CBEB98] setWithArray:v13];
    [(CLSLRUMemoryCache *)self->_personsCache setObject:v11 forKey:v6];
  }

  objc_sync_exit(v8);

  return v11;
}

- (id)personResultForName:(id)a3 inPhotoLibrary:(id)a4
{
  v4 = [(CLSServiceManager *)self personResultsForName:a3 inPhotoLibrary:a4];
  if ([v4 count] == 1)
  {
    v5 = [v4 anyObject];
    goto LABEL_10;
  }

  v6 = [v4 count];
  v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v6 < 2)
  {
    if (v7)
    {
      v12 = 0;
      v8 = MEMORY[0x277D86220];
      v9 = "No CLSPersonIdentity found";
      v10 = &v12;
      goto LABEL_8;
    }
  }

  else if (v7)
  {
    v13 = 0;
    v8 = MEMORY[0x277D86220];
    v9 = "No unique CLSPersonIdentity found";
    v10 = &v13;
LABEL_8:
    _os_log_impl(&dword_22F907000, v8, OS_LOG_TYPE_INFO, v9, v10, 2u);
  }

  v5 = 0;
LABEL_10:

  return v5;
}

- (id)personForName:(id)a3 inPhotoLibrary:(id)a4
{
  v4 = [(CLSServiceManager *)self personResultForName:a3 inPhotoLibrary:a4];
  v5 = [v4 person];

  return v5;
}

- (id)eventsForDates:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(CLSSocialServiceCalendar *)v5->_calendarService eventsForDates:v4];
  v7 = v6;
  v8 = MEMORY[0x277CBEBF8];
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  objc_sync_exit(v5);

  return v9;
}

- (id)inferredDeviceOwnerForPhotoLibrary:(id)a3 ignoreContactLinking:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 isSystemPhotoLibrary])
  {
    v7 = self;
    objc_sync_enter(v7);
    v8 = [(CLSSocialServiceContacts *)v7->_contactsService inferredDeviceOwnerForPhotoLibrary:v6 ignoreContactLinking:v4];
    objc_sync_exit(v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)mePersonForGraphIngest
{
  v2 = [(CLSServiceManager *)self mePersonFetchContactIfNeeeded:1];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[CLSPersonIdentity mePerson];
  }

  v5 = v4;

  return v5;
}

- (id)mePersonFetchContactIfNeeeded:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  objc_sync_enter(v4);
  mePerson = v4->_mePerson;
  if (!mePerson)
  {
    if (v3)
    {
      [(CLSSocialServiceContacts *)v4->_contactsService refreshMeContactIfNeeded];
    }

    v6 = [(CLSSocialServiceContacts *)v4->_contactsService mePerson];
    v7 = v4->_mePerson;
    v4->_mePerson = v6;

    mePerson = v4->_mePerson;
  }

  v8 = mePerson;
  objc_sync_exit(v4);

  return v8;
}

- (void)invalidateCacheForPersonInContactStoreWithContactIdentifiers:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(CLSSocialServiceContacts *)v4->_contactsService invalidateCacheForPersonInContactStoreWithContactIdentifiers:v5];
  objc_sync_exit(v4);
}

- (void)invalidatePersonsCacheForPersonsWithContactIdentifiers:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self->_personsCache;
  objc_sync_enter(v5);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [(CLSLRUMemoryCache *)self->_personsCache removeObjectForKey:*(*(&v11 + 1) + 8 * v9++), v11];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
  v10 = self;
  objc_sync_enter(v10);
  [(CLSSocialServiceContacts *)v10->_contactsService invalidateCacheForPersonWithContactIdentifiers:v6];
  objc_sync_exit(v10);
}

- (void)invalidatePersonsCacheForPersonsWithNames:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self->_personsCache;
  objc_sync_enter(v5);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [(CLSLRUMemoryCache *)self->_personsCache removeObjectForKey:*(*(&v11 + 1) + 8 * v9++), v11];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
  v10 = self;
  objc_sync_enter(v10);
  [(CLSSocialServiceContacts *)v10->_contactsService invalidateCacheForPersonWithLocalIdentifiers:v6];
  objc_sync_exit(v10);
}

- (void)invalidateMomentaryMemoryCaches
{
  obj = self;
  objc_sync_enter(obj);
  [(CLSRoutineService *)obj->_routineService invalidateLocationsOfInterest];
  objc_sync_exit(obj);
}

- (void)invalidatePermanentMemoryCaches
{
  obj = self;
  objc_sync_enter(obj);
  [(CLSSocialServiceCalendar *)obj->_calendarService invalidateMemoryCaches];
  [(CLSSocialServiceContacts *)obj->_contactsService invalidateMemoryCaches];
  [(CLSSocialServiceCoreNameParser *)obj->_coreNameParserService invalidateMemoryCaches];
  [(CLSRoutineService *)obj->_routineService invalidateLocationsOfInterest];
  [(CLSLRUMemoryCache *)obj->_personsCache removeAllObjects];
  objc_sync_exit(obj);
}

- (void)invalidateMePerson
{
  obj = self;
  objc_sync_enter(obj);
  [(CLSSocialServiceContacts *)obj->_contactsService invalidateMePerson];
  mePerson = obj->_mePerson;
  obj->_mePerson = 0;

  objc_sync_exit(obj);
}

- (CLSServiceManager)initWithLocationCache:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = CLSServiceManager;
  v5 = [(CLSServiceManager *)&v21 init];
  if (v5)
  {
    if (+[CLSSocialServiceContacts canAccessContactsStore])
    {
      v6 = [[CLSSocialServiceContacts alloc] initWithLocationCache:v4];
      contactsService = v5->_contactsService;
      v5->_contactsService = v6;

      [(CLSSocialServiceContacts *)v5->_contactsService setDelegate:v5];
    }

    v8 = objc_alloc_init(CLSSocialServiceCalendar);
    calendarService = v5->_calendarService;
    v5->_calendarService = v8;

    v10 = objc_alloc(MEMORY[0x277CCA970]);
    v11 = [MEMORY[0x277CBEAA8] date];
    v12 = [v11 dateByAddingTimeInterval:-31536000.0];
    v13 = [v10 initWithStartDate:v12 duration:31536000.0];

    v14 = [[CLSRoutineService alloc] initWithFetchDateInterval:v13 locationCache:v4];
    routineService = v5->_routineService;
    v5->_routineService = v14;

    v16 = objc_alloc_init(CLSSocialServiceCoreNameParser);
    coreNameParserService = v5->_coreNameParserService;
    v5->_coreNameParserService = v16;

    v18 = objc_alloc_init(CLSLRUMemoryCache);
    personsCache = v5->_personsCache;
    v5->_personsCache = v18;
  }

  return v5;
}

+ (id)locationCacheForSwiftOnlyWithParentURL:(id)a3
{
  v3 = a3;
  v4 = [CLSLocationCache alloc];
  v5 = [(CLSDBCache *)CLSLocationCache urlWithParentURL:v3];

  v6 = [(CLSDBCache *)v4 initWithURL:v5];

  return v6;
}

- (double)pinningVisitsRatio
{
  v2 = [(CLSServiceManager *)self routineService:0];
  v3 = v2;
  if (v2)
  {
    [v2 statistics];
  }

  return 0.0;
}

- (unint64_t)numberOfMatchRequests
{
  v5 = 0u;
  v2 = [(CLSServiceManager *)self routineService:0];
  v3 = v2;
  if (v2)
  {
    [v2 statistics];
  }

  else
  {
    v5 = 0u;
  }

  return *(&v5 + 1);
}

- (unint64_t)numberOfRemoteLocationMatches
{
  v2 = [(CLSServiceManager *)self routineService:0];
  v3 = v2;
  if (v2)
  {
    [v2 statistics];
  }

  return 0;
}

- (unint64_t)numberOfCloseByLocationMatches
{
  v5 = 0u;
  v2 = [(CLSServiceManager *)self routineService:0];
  v3 = v2;
  if (v2)
  {
    [v2 statistics];
  }

  else
  {
    v5 = 0u;
  }

  return *(&v5 + 1);
}

- (unint64_t)numberOfTimeMatches
{
  v2 = [(CLSServiceManager *)self routineService:0];
  v3 = v2;
  if (v2)
  {
    [v2 statistics];
  }

  return 0;
}

- (unint64_t)numberOfVisits
{
  v2 = [(CLSServiceManager *)self routineService:0];
  v3 = v2;
  if (v2)
  {
    [v2 statistics];
  }

  return 0;
}

- (unint64_t)numberOfLocationsOfInterest
{
  v5 = 0u;
  v2 = [(CLSServiceManager *)self routineService];
  v3 = v2;
  if (v2)
  {
    [v2 statistics];
  }

  else
  {
    v5 = 0u;
  }

  return *(&v5 + 1);
}

- (BOOL)routineIsAvailable
{
  v2 = [(CLSServiceManager *)self routineService];
  v3 = v2;
  if (v2)
  {
    [v2 statistics];
  }

  return 0;
}

@end
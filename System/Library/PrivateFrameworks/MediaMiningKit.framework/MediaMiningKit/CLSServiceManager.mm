@interface CLSServiceManager
+ (id)locationCacheForSwiftOnlyWithParentURL:(id)l;
- (BOOL)hasAddressesForMePerson;
- (BOOL)isRemoteLocation:(id)location inDateInterval:(id)interval;
- (BOOL)routineIsAvailable;
- (CLSServiceManager)initWithLocationCache:(id)cache;
- (double)pinningVisitsRatio;
- (id)contactsForIdentifiers:(id)identifiers;
- (id)eventsForClueCollection:(id)collection;
- (id)eventsForDates:(id)dates;
- (id)fetchImportantLocationsOfInterest;
- (id)fetchLocationOfInterestVisitsAtLocation:(id)location inDateInterval:(id)interval;
- (id)inferredDeviceOwnerForPhotoLibrary:(id)library ignoreContactLinking:(BOOL)linking;
- (id)lastLocationOfInterestVisit;
- (id)locationOfInterestAtLocation:(id)location;
- (id)locationOfInterestCloseToLocation:(id)location inDateInterval:(id)interval;
- (id)matchingDictionaryForContactIdentifier:(id)identifier;
- (id)mePersonAddressesOfType:(unint64_t)type;
- (id)mePersonFetchContactIfNeeeded:(BOOL)neeeded;
- (id)mePersonForGraphIngest;
- (id)personForIdentifier:(id)identifier;
- (id)personForName:(id)name inPhotoLibrary:(id)library;
- (id)personForPersonHandle:(id)handle;
- (id)personLocalIdentifierMatchingContactPictureForContactIdentifier:(id)identifier;
- (id)personResultForName:(id)name inPhotoLibrary:(id)library;
- (id)personResultsForName:(id)name inPhotoLibrary:(id)library;
- (id)personsFromEventParticipants:(id)participants excludeCurrentUser:(BOOL)user;
- (id)predominantLocationMobilityForDateInterval:(id)interval confidence:(double *)confidence;
- (id)workCalendarEventsMatchingContactIdentifiers:(id)identifiers fromUniversalDate:(id)date toUniversalDate:(id)universalDate;
- (unint64_t)fetchFinerGranularityBusinessItemNumberForVisitIdentifier:(id)identifier;
- (unint64_t)numberOfCloseByLocationMatches;
- (unint64_t)numberOfLocationsOfInterest;
- (unint64_t)numberOfMatchRequests;
- (unint64_t)numberOfRemoteLocationMatches;
- (unint64_t)numberOfTimeMatches;
- (unint64_t)numberOfVisits;
- (unint64_t)relationshipHintForPerson:(id)person usingLocales:(id)locales;
- (unint64_t)sexHintForPerson:(id)person usingLocales:(id)locales;
- (void)invalidateCacheForPersonInContactStoreWithContactIdentifiers:(id)identifiers;
- (void)invalidateMePerson;
- (void)invalidateMomentaryMemoryCaches;
- (void)invalidatePermanentMemoryCaches;
- (void)invalidatePersonsCacheForPersonsWithContactIdentifiers:(id)identifiers;
- (void)invalidatePersonsCacheForPersonsWithNames:(id)names;
- (void)postProcessLocationsOfInterest;
@end

@implementation CLSServiceManager

- (unint64_t)relationshipHintForPerson:(id)person usingLocales:(id)locales
{
  personCopy = person;
  localesCopy = locales;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(CLSSocialServiceCoreNameParser *)selfCopy->_coreNameParserService relationshipHintForPerson:personCopy usingLocales:localesCopy];
  objc_sync_exit(selfCopy);

  return v9;
}

- (unint64_t)sexHintForPerson:(id)person usingLocales:(id)locales
{
  personCopy = person;
  localesCopy = locales;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(CLSSocialServiceCoreNameParser *)selfCopy->_coreNameParserService sexHintForPerson:personCopy usingLocales:localesCopy];
  objc_sync_exit(selfCopy);

  return v9;
}

- (id)mePersonAddressesOfType:(unint64_t)type
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (type >= 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(CLSRoutineService *)selfCopy->_routineService placemarksOfInterestOfType:type];
  }

  objc_sync_exit(selfCopy);

  if (v5)
  {
    allObjects = [v5 allObjects];
  }

  else
  {
    allObjects = MEMORY[0x277CBEBF8];
  }

  return allObjects;
}

- (BOOL)hasAddressesForMePerson
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  hasLocationsOfInterestInformation = [(CLSRoutineService *)selfCopy->_routineService hasLocationsOfInterestInformation];
  objc_sync_exit(selfCopy);

  return hasLocationsOfInterestInformation;
}

- (id)personForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(CLSSocialServiceContacts *)selfCopy->_contactsService personForIdentifier:identifierCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)personsFromEventParticipants:(id)participants excludeCurrentUser:(BOOL)user
{
  userCopy = user;
  participantsCopy = participants;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [(CLSSocialServiceCalendar *)selfCopy->_calendarService personsFromEventParticipants:participantsCopy excludeCurrentUser:userCopy serviceManager:selfCopy];
  objc_sync_exit(selfCopy);

  return v8;
}

- (id)workCalendarEventsMatchingContactIdentifiers:(id)identifiers fromUniversalDate:(id)date toUniversalDate:(id)universalDate
{
  identifiersCopy = identifiers;
  dateCopy = date;
  universalDateCopy = universalDate;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = [(CLSSocialServiceCalendar *)selfCopy->_calendarService workCalendarEventsMatchingContactIdentifiers:identifiersCopy fromUniversalDate:dateCopy toUniversalDate:universalDateCopy contactsService:selfCopy->_contactsService];
  objc_sync_exit(selfCopy);

  return v12;
}

- (id)eventsForClueCollection:(id)collection
{
  collectionCopy = collection;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(CLSSocialServiceCalendar *)selfCopy->_calendarService eventsForClueCollection:collectionCopy];
  v7 = v6;
  v8 = MEMORY[0x277CBEBF8];
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  objc_sync_exit(selfCopy);

  return v9;
}

- (id)lastLocationOfInterestVisit
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  lastLocationOfInterestVisit = [(CLSRoutineService *)selfCopy->_routineService lastLocationOfInterestVisit];
  objc_sync_exit(selfCopy);

  return lastLocationOfInterestVisit;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(CLSRoutineService *)selfCopy->_routineService locationsOfInterestOfType:0];
  if ([v5 count])
  {
    [v3 unionSet:v5];
  }

  v6 = [(CLSRoutineService *)selfCopy->_routineService locationsOfInterestOfType:1];
  if ([v6 count])
  {
    [v3 unionSet:v6];
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (id)predominantLocationMobilityForDateInterval:(id)interval confidence:(double *)confidence
{
  intervalCopy = interval;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [(CLSRoutineService *)selfCopy->_routineService predominantTransportationModeForDateInterval:intervalCopy confidence:confidence];
  if (v8 > 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = *off_2788A6DE0[v8];
  }

  objc_sync_exit(selfCopy);

  return v9;
}

- (unint64_t)fetchFinerGranularityBusinessItemNumberForVisitIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(CLSRoutineService *)selfCopy->_routineService fetchFinerGranularityBusinessItemNumberForVisitIdentifier:identifierCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)fetchLocationOfInterestVisitsAtLocation:(id)location inDateInterval:(id)interval
{
  locationCopy = location;
  intervalCopy = interval;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(CLSRoutineService *)selfCopy->_routineService locationOfInterestVisitsAtLocation:locationCopy inDateInterval:intervalCopy];
  objc_sync_exit(selfCopy);

  return v9;
}

- (id)locationOfInterestCloseToLocation:(id)location inDateInterval:(id)interval
{
  locationCopy = location;
  intervalCopy = interval;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(CLSRoutineService *)selfCopy->_routineService locationOfInterestCloseToLocation:locationCopy inDateInterval:intervalCopy];
  objc_sync_exit(selfCopy);

  return v9;
}

- (id)locationOfInterestAtLocation:(id)location
{
  locationCopy = location;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(CLSRoutineService *)selfCopy->_routineService locationOfInterestAtLocation:locationCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (BOOL)isRemoteLocation:(id)location inDateInterval:(id)interval
{
  locationCopy = location;
  intervalCopy = interval;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(CLSRoutineService *)selfCopy->_routineService isRemoteLocation:locationCopy inDateInterval:intervalCopy];
  objc_sync_exit(selfCopy);

  return v9;
}

- (id)matchingDictionaryForContactIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(CLSSocialServiceContacts *)selfCopy->_contactsService matchingDictionaryForContactIdentifier:identifierCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)contactsForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(CLSSocialServiceContacts *)selfCopy->_contactsService contactsForIdentifiers:identifiersCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)personForPersonHandle:(id)handle
{
  handleCopy = handle;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(CLSSocialServiceContacts *)selfCopy->_contactsService personForPersonHandle:handleCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)personLocalIdentifierMatchingContactPictureForContactIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(CLSSocialServiceContacts *)selfCopy->_contactsService personLocalIdentifierMatchingContactPictureForContactIdentifier:identifierCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)personResultsForName:(id)name inPhotoLibrary:(id)library
{
  nameCopy = name;
  libraryCopy = library;
  v8 = self->_personsCache;
  objc_sync_enter(v8);
  v9 = [(CLSLRUMemoryCache *)self->_personsCache objectForKey:nameCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v13 = [(CLSSocialServiceContacts *)selfCopy->_contactsService personResultsForName:nameCopy inPhotoLibrary:libraryCopy];
    objc_sync_exit(selfCopy);

    v11 = [MEMORY[0x277CBEB98] setWithArray:v13];
    [(CLSLRUMemoryCache *)self->_personsCache setObject:v11 forKey:nameCopy];
  }

  objc_sync_exit(v8);

  return v11;
}

- (id)personResultForName:(id)name inPhotoLibrary:(id)library
{
  v4 = [(CLSServiceManager *)self personResultsForName:name inPhotoLibrary:library];
  if ([v4 count] == 1)
  {
    anyObject = [v4 anyObject];
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

  anyObject = 0;
LABEL_10:

  return anyObject;
}

- (id)personForName:(id)name inPhotoLibrary:(id)library
{
  v4 = [(CLSServiceManager *)self personResultForName:name inPhotoLibrary:library];
  person = [v4 person];

  return person;
}

- (id)eventsForDates:(id)dates
{
  datesCopy = dates;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(CLSSocialServiceCalendar *)selfCopy->_calendarService eventsForDates:datesCopy];
  v7 = v6;
  v8 = MEMORY[0x277CBEBF8];
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  objc_sync_exit(selfCopy);

  return v9;
}

- (id)inferredDeviceOwnerForPhotoLibrary:(id)library ignoreContactLinking:(BOOL)linking
{
  linkingCopy = linking;
  libraryCopy = library;
  if ([libraryCopy isSystemPhotoLibrary])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v8 = [(CLSSocialServiceContacts *)selfCopy->_contactsService inferredDeviceOwnerForPhotoLibrary:libraryCopy ignoreContactLinking:linkingCopy];
    objc_sync_exit(selfCopy);
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

- (id)mePersonFetchContactIfNeeeded:(BOOL)neeeded
{
  neeededCopy = neeeded;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  mePerson = selfCopy->_mePerson;
  if (!mePerson)
  {
    if (neeededCopy)
    {
      [(CLSSocialServiceContacts *)selfCopy->_contactsService refreshMeContactIfNeeded];
    }

    mePerson = [(CLSSocialServiceContacts *)selfCopy->_contactsService mePerson];
    v7 = selfCopy->_mePerson;
    selfCopy->_mePerson = mePerson;

    mePerson = selfCopy->_mePerson;
  }

  v8 = mePerson;
  objc_sync_exit(selfCopy);

  return v8;
}

- (void)invalidateCacheForPersonInContactStoreWithContactIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(CLSSocialServiceContacts *)selfCopy->_contactsService invalidateCacheForPersonInContactStoreWithContactIdentifiers:identifiersCopy];
  objc_sync_exit(selfCopy);
}

- (void)invalidatePersonsCacheForPersonsWithContactIdentifiers:(id)identifiers
{
  v16 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = self->_personsCache;
  objc_sync_enter(v5);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = identifiersCopy;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(CLSSocialServiceContacts *)selfCopy->_contactsService invalidateCacheForPersonWithContactIdentifiers:v6];
  objc_sync_exit(selfCopy);
}

- (void)invalidatePersonsCacheForPersonsWithNames:(id)names
{
  v16 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  v5 = self->_personsCache;
  objc_sync_enter(v5);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = namesCopy;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(CLSSocialServiceContacts *)selfCopy->_contactsService invalidateCacheForPersonWithLocalIdentifiers:v6];
  objc_sync_exit(selfCopy);
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

- (CLSServiceManager)initWithLocationCache:(id)cache
{
  cacheCopy = cache;
  v21.receiver = self;
  v21.super_class = CLSServiceManager;
  v5 = [(CLSServiceManager *)&v21 init];
  if (v5)
  {
    if (+[CLSSocialServiceContacts canAccessContactsStore])
    {
      v6 = [[CLSSocialServiceContacts alloc] initWithLocationCache:cacheCopy];
      contactsService = v5->_contactsService;
      v5->_contactsService = v6;

      [(CLSSocialServiceContacts *)v5->_contactsService setDelegate:v5];
    }

    v8 = objc_alloc_init(CLSSocialServiceCalendar);
    calendarService = v5->_calendarService;
    v5->_calendarService = v8;

    v10 = objc_alloc(MEMORY[0x277CCA970]);
    date = [MEMORY[0x277CBEAA8] date];
    v12 = [date dateByAddingTimeInterval:-31536000.0];
    v13 = [v10 initWithStartDate:v12 duration:31536000.0];

    v14 = [[CLSRoutineService alloc] initWithFetchDateInterval:v13 locationCache:cacheCopy];
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

+ (id)locationCacheForSwiftOnlyWithParentURL:(id)l
{
  lCopy = l;
  v4 = [CLSLocationCache alloc];
  v5 = [(CLSDBCache *)CLSLocationCache urlWithParentURL:lCopy];

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
  routineService = [(CLSServiceManager *)self routineService];
  v3 = routineService;
  if (routineService)
  {
    [routineService statistics];
  }

  else
  {
    v5 = 0u;
  }

  return *(&v5 + 1);
}

- (BOOL)routineIsAvailable
{
  routineService = [(CLSServiceManager *)self routineService];
  v3 = routineService;
  if (routineService)
  {
    [routineService statistics];
  }

  return 0;
}

@end
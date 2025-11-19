@interface CalSearch
- (CalEventIdsSearchContext)_createEventIdsSearchContext;
- (CalEventOccurrenceSearchContext)_createSearchContext;
- (CalLocationIdsSearchContext)_createLocationIdsSearchContext;
- (CalParticipantIdsSearchContext)_createParticipantIdsSearchContext;
- (CalSearch)initWithDatabase:(CalDatabase *)a3 filter:(CalFilter *)a4 dataSink:(id)a5;
- (void)_addMatchedEventIds:(__CFArray *)a3;
- (void)_addMatchedLocationIds:(__CFArray *)a3;
- (void)_addMatchedParticipantIds:(__CFArray *)a3;
- (void)_deleteEventIdsSearchContext:(CalEventIdsSearchContext *)a3;
- (void)_deleteLocationIdsSearchContext:(CalLocationIdsSearchContext *)a3;
- (void)_deleteParticipantIdsSearchContext:(CalParticipantIdsSearchContext *)a3;
- (void)_getApplicationSearchResults:(CalEventOccurrenceSearchContext *)a3;
- (void)_getAttendeesSearchResults:(CalEventIdsSearchContext *)a3;
- (void)_getEventsSearchResults:(CalEventIdsSearchContext *)a3;
- (void)_getLocationSearchResults:(CalLocationIdsSearchContext *)a3;
- (void)_getParticipantsSearchResults:(CalParticipantIdsSearchContext *)a3;
- (void)_startLoadingResults;
- (void)dealloc;
- (void)startSearching;
@end

@implementation CalSearch

- (CalSearch)initWithDatabase:(CalDatabase *)a3 filter:(CalFilter *)a4 dataSink:(id)a5
{
  v8 = a5;
  v15.receiver = self;
  v15.super_class = CalSearch;
  v9 = [(CalSearch *)&v15 init];
  if (v9)
  {
    v9->_database = CFRetain(a3);
    v10 = CFRetain(a4);
    v9->_filter = v10;
    SearchTerm = CalFilterGetSearchTerm(v10);
    v9->_searchString = SearchTerm;
    v12 = *MEMORY[0x1E695E480];
    if (SearchTerm)
    {
      v9->_searchString = CFStringCreateCopy(*MEMORY[0x1E695E480], SearchTerm);
    }

    v9->_partialResults = CFArrayCreateMutable(v12, 0, 0);
    v13 = MEMORY[0x1E695E9C0];
    v9->_partialCachedOccurrences = CFArrayCreateMutable(v12, 0, MEMORY[0x1E695E9C0]);
    v9->_partialCachedDays = CFArrayCreateMutable(v12, 0, v13);
    v9->_partialCachedDaysIndexes = CFArrayCreateMutable(v12, 0, 0);
    v9->_matchedEventsSet = CFSetCreateMutable(v12, 0, 0);
    v9->_matchedParticipantsSet = CFSetCreateMutable(v12, 0, 0);
    v9->_matchedLocationsSet = CFSetCreateMutable(v12, 0, 0);
    objc_storeWeak(&v9->_dataSink, v8);
    v9->_implementsCancellationCallback = objc_opt_respondsToSelector() & 1;
    v9->_seed = ++sSeed;
    pthread_mutex_init(&v9->_dataSourceDeallocLock, 0);
  }

  return v9;
}

- (void)dealloc
{
  self->_stopLoadingResults = 1;
  pthread_mutex_lock(&self->_dataSourceDeallocLock);
  pthread_mutex_unlock(&self->_dataSourceDeallocLock);
  pthread_mutex_destroy(&self->_dataSourceDeallocLock);
  partialResults = self->_partialResults;
  if (partialResults)
  {
    CFRelease(partialResults);
  }

  partialCachedOccurrences = self->_partialCachedOccurrences;
  if (partialCachedOccurrences)
  {
    CFRelease(partialCachedOccurrences);
  }

  partialCachedDays = self->_partialCachedDays;
  if (partialCachedDays)
  {
    CFRelease(partialCachedDays);
  }

  partialCachedDaysIndexes = self->_partialCachedDaysIndexes;
  if (partialCachedDaysIndexes)
  {
    CFRelease(partialCachedDaysIndexes);
  }

  matchedEventsSet = self->_matchedEventsSet;
  if (matchedEventsSet)
  {
    CFRelease(matchedEventsSet);
  }

  matchedParticipantsSet = self->_matchedParticipantsSet;
  if (matchedParticipantsSet)
  {
    CFRelease(matchedParticipantsSet);
  }

  matchedLocationsSet = self->_matchedLocationsSet;
  if (matchedLocationsSet)
  {
    CFRelease(matchedLocationsSet);
  }

  filter = self->_filter;
  if (filter)
  {
    CFRelease(filter);
  }

  searchString = self->_searchString;
  if (searchString)
  {
    CFRelease(searchString);
  }

  database = self->_database;
  if (database)
  {
    CFRelease(database);
  }

  objc_storeWeak(&self->_dataSink, 0);
  v13.receiver = self;
  v13.super_class = CalSearch;
  [(CalSearch *)&v13 dealloc];
}

- (void)startSearching
{
  v8 = 0;
  v7 = 0;
  v3 = pthread_self();
  if (!pthread_getschedparam(v3, &v7, &v8))
  {
    sched_priority = v8.sched_priority;
    v8.sched_priority = sched_get_priority_min(v7);
    v5 = pthread_self();
    if (!pthread_setschedparam(v5, v7, &v8))
    {
      v8.sched_priority = sched_priority;
      v6 = pthread_self();
      pthread_setschedparam(v6, v7, &v8);
    }
  }

  [(CalSearch *)self _startLoadingResults];
}

- (void)_startLoadingResults
{
  pthread_mutex_lock(&self->_dataSourceDeallocLock);
  self->_stopLoadingResults = 0;
  self->_moreResultsAvailable = 1;
  if ([(CalSearch *)self searchParticipants])
  {
    v3 = [(CalSearch *)self _createParticipantIdsSearchContext];
    [(CalSearch *)self _getParticipantsSearchResults:v3];
    [(CalSearch *)self _deleteParticipantIdsSearchContext:v3];
  }

  if ([(CalSearch *)self searchLocations])
  {
    v4 = [(CalSearch *)self _createLocationIdsSearchContext];
    if (!self->_stopLoadingResults)
    {
      self->_moreResultsAvailable = 1;
      [(CalSearch *)self _getLocationSearchResults:v4];
    }

    [(CalSearch *)self _deleteLocationIdsSearchContext:v4];
  }

  v5 = [(CalSearch *)self _createEventIdsSearchContext];
  v6 = [(CalSearch *)self searchAttendees];
  stopLoadingResults = self->_stopLoadingResults;
  if (v6 && !self->_stopLoadingResults)
  {
    self->_moreResultsAvailable = 1;
    [(CalSearch *)self _getAttendeesSearchResults:v5];
    stopLoadingResults = self->_stopLoadingResults;
  }

  if (!stopLoadingResults)
  {
    self->_moreResultsAvailable = 1;
    [(CalSearch *)self _getEventsSearchResults:v5];
  }

  [(CalSearch *)self _deleteEventIdsSearchContext:v5];
  if (!self->_stopLoadingResults && CFSetGetCount(self->_matchedEventsSet))
  {
    self->_moreResultsAvailable = 1;
    v8 = [(CalSearch *)self _createSearchContext];
    [(CalSearch *)self _getApplicationSearchResults:v8];
    [(CalSearch *)self _deleteSearchContext:v8];
  }

  pthread_mutex_unlock(&self->_dataSourceDeallocLock);
  if (!self->_stopLoadingResults)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSink);
    [WeakRetained calSearchComplete:self];
  }
}

- (void)_addMatchedEventIds:(__CFArray *)a3
{
  Count = CFArrayGetCount(a3);
  if (Count >= 1)
  {
    v6 = Count;
    for (i = 0; i != v6; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a3, i);
      CFSetAddValue(self->_matchedEventsSet, ValueAtIndex);
    }
  }
}

- (void)_addMatchedParticipantIds:(__CFArray *)a3
{
  Count = CFArrayGetCount(a3);
  if (Count >= 1)
  {
    v6 = Count;
    for (i = 0; i != v6; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a3, i);
      CFSetAddValue(self->_matchedParticipantsSet, ValueAtIndex);
    }
  }
}

- (void)_getParticipantsSearchResults:(CalParticipantIdsSearchContext *)a3
{
  if (self->_stopLoadingResults)
  {
    ParticipantsSearchStatement = 0;
  }

  else
  {
    ParticipantsSearchStatement = CalDatabaseCreateParticipantsSearchStatement(a3, self->_searchString);
    if (!ParticipantsSearchStatement)
    {
      self->_stopLoadingResults = 1;
      self->_moreResultsAvailable = 0;
      return;
    }
  }

  while (self->_moreResultsAvailable)
  {
    if (self->_stopLoadingResults)
    {
      break;
    }

    CalDatabaseCopyParticipantIdsThatMatchSearch(ParticipantsSearchStatement, a3);
    if (CFArrayGetCount(a3->var0))
    {
      [(CalSearch *)self _addMatchedParticipantIds:a3->var0];
    }
  }

  if (ParticipantsSearchStatement)
  {

    CalDatabaseDeleteParticipantsSearchStatement(ParticipantsSearchStatement, a3);
  }
}

- (CalParticipantIdsSearchContext)_createParticipantIdsSearchContext
{
  result = malloc_type_malloc(0x28uLL, 0x10300408B9D0061uLL);
  result->var0 = self->_partialResults;
  result->var2 = &self->_moreResultsAvailable;
  result->var3 = &self->_stopLoadingResults;
  result->var4 = self->_database;
  result->var1 = 10;
  return result;
}

- (void)_deleteParticipantIdsSearchContext:(CalParticipantIdsSearchContext *)a3
{
  CFArrayRemoveAllValues(a3->var0);

  free(a3);
}

- (CalLocationIdsSearchContext)_createLocationIdsSearchContext
{
  result = malloc_type_malloc(0x28uLL, 0x10300408B9D0061uLL);
  result->var0 = self->_partialResults;
  result->var2 = &self->_moreResultsAvailable;
  result->var3 = &self->_stopLoadingResults;
  result->var4 = self->_database;
  result->var1 = 10;
  return result;
}

- (void)_deleteLocationIdsSearchContext:(CalLocationIdsSearchContext *)a3
{
  CFArrayRemoveAllValues(a3->var0);

  free(a3);
}

- (void)_addMatchedLocationIds:(__CFArray *)a3
{
  Count = CFArrayGetCount(a3);
  if (Count >= 1)
  {
    v6 = Count;
    for (i = 0; i != v6; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a3, i);
      CFSetAddValue(self->_matchedLocationsSet, ValueAtIndex);
    }
  }
}

- (void)_getLocationSearchResults:(CalLocationIdsSearchContext *)a3
{
  if (self->_stopLoadingResults)
  {
    LocationSearchStatement = 0;
  }

  else
  {
    LocationSearchStatement = CalDatabaseCreateLocationSearchStatement(a3, self->_searchString);
    if (!LocationSearchStatement)
    {
      self->_stopLoadingResults = 1;
      self->_moreResultsAvailable = 0;
      return;
    }
  }

  while (self->_moreResultsAvailable)
  {
    if (self->_stopLoadingResults)
    {
      break;
    }

    CalDatabaseCopyLocationIdsThatMatchSearch(LocationSearchStatement, a3);
    if (CFArrayGetCount(a3->var0))
    {
      [(CalSearch *)self _addMatchedLocationIds:a3->var0];
    }
  }

  if (LocationSearchStatement)
  {

    CalDatabaseDeleteLocationSearchStatement(LocationSearchStatement, a3);
  }
}

- (void)_getAttendeesSearchResults:(CalEventIdsSearchContext *)a3
{
  if (self->_stopLoadingResults)
  {
    AttendeesSearchStatement = 0;
  }

  else
  {
    AttendeesSearchStatement = CalDatabaseCreateAttendeesSearchStatement(a3);
    if (!AttendeesSearchStatement)
    {
      self->_stopLoadingResults = 1;
      self->_moreResultsAvailable = 0;
      return;
    }
  }

  while (self->_moreResultsAvailable)
  {
    if (self->_stopLoadingResults)
    {
      break;
    }

    CalDatabaseCopyEventIdsForSearch(AttendeesSearchStatement, a3);
    if (CFArrayGetCount(a3->var0))
    {
      [(CalSearch *)self _addMatchedEventIds:a3->var0];
    }
  }

  if (AttendeesSearchStatement)
  {

    CalDatabaseDeleteAttendeesSearchStatement(AttendeesSearchStatement, a3);
  }
}

- (void)_getEventsSearchResults:(CalEventIdsSearchContext *)a3
{
  if (self->_stopLoadingResults)
  {
    EventsSearchStatement = 0;
  }

  else
  {
    EventsSearchStatement = CalDatabaseCreateEventsSearchStatement(a3, self->_filter, self->_shouldMatchLocationsOnlyForEventSearch);
    if (!EventsSearchStatement)
    {
      self->_stopLoadingResults = 1;
      self->_moreResultsAvailable = 0;
      return;
    }
  }

  while (self->_moreResultsAvailable)
  {
    if (self->_stopLoadingResults)
    {
      break;
    }

    CalDatabaseCopyEventIdsForSearch(EventsSearchStatement, a3);
    if (CFArrayGetCount(a3->var0))
    {
      [(CalSearch *)self _addMatchedEventIds:a3->var0];
    }
  }

  if (EventsSearchStatement)
  {

    CalDatabaseDeleteEventsSearchStatement(EventsSearchStatement, a3);
  }
}

- (CalEventIdsSearchContext)_createEventIdsSearchContext
{
  result = malloc_type_malloc(0x30uLL, 0x700401BCA1C85uLL);
  result->var0 = self->_partialResults;
  result->var1 = self->_matchedParticipantsSet;
  result->var2 = self->_matchedLocationsSet;
  result->var3 = &self->_moreResultsAvailable;
  result->var4 = &self->_stopLoadingResults;
  result->var5 = self->_database;
  return result;
}

- (void)_deleteEventIdsSearchContext:(CalEventIdsSearchContext *)a3
{
  CFArrayRemoveAllValues(a3->var0);

  free(a3);
}

- (void)_getApplicationSearchResults:(CalEventOccurrenceSearchContext *)a3
{
  while (self->_moreResultsAvailable)
  {
    if (self->_stopLoadingResults)
    {
      break;
    }

    v5 = CalDatabaseCopyEventOccurrenceCache(self->_database);
    a3->var11 = v5;
    OccurrencesThatMatchEventIdsStatement = CalDatabaseCreateOccurrencesThatMatchEventIdsStatement(self->_filter, a3);
    CalDatabaseRegisterProgressHandlerForOccurrencesSearch(a3, OccurrencesThatMatchEventIdsStatement);
    _CalDatabaseCopyEventOccurrencesThatMatchEventIds(a3, OccurrencesThatMatchEventIdsStatement);
    if (CFArrayGetCount(self->_partialCachedOccurrences))
    {
      WeakRetained = objc_loadWeakRetained(&self->_dataSink);
      [WeakRetained calSearch:self foundOccurrences:self->_partialCachedOccurrences cachedDays:self->_partialCachedDays cachedDaysIndexes:self->_partialCachedDaysIndexes];

      partialCachedOccurrences = self->_partialCachedOccurrences;
      if (partialCachedOccurrences)
      {
        CFArrayRemoveAllValues(partialCachedOccurrences);
      }

      partialCachedDays = self->_partialCachedDays;
      if (partialCachedDays)
      {
        CFArrayRemoveAllValues(partialCachedDays);
      }

      partialCachedDaysIndexes = self->_partialCachedDaysIndexes;
      if (partialCachedDaysIndexes)
      {
        CFArrayRemoveAllValues(partialCachedDaysIndexes);
      }
    }

    if (!self->_dateToStartShowingResultsSentToDataSink && (a3->var18 || !self->_moreResultsAvailable))
    {
      self->_dateToStartShowingResultsSentToDataSink = 1;
      v11 = objc_loadWeakRetained(&self->_dataSink);
      [v11 calSearch:self showResultsStartingOnDate:a3->var19];
    }

    CalDatabaseUnregisterProgressHandlerForOccurrencesSearch(OccurrencesThatMatchEventIdsStatement);
    CalDatabaseDeleteOccurrencesThatMatchEventIdsStatement(a3, OccurrencesThatMatchEventIdsStatement);
    CFRelease(v5);
  }
}

- (CalEventOccurrenceSearchContext)_createSearchContext
{
  v3 = malloc_type_malloc(0x98uLL, 0x10F0040B991B105uLL);
  v3->var0 = self->_matchedEventsSet;
  v3->var1 = self->_partialCachedOccurrences;
  v3->var2 = self->_partialCachedDays;
  v3->var3 = self->_partialCachedDaysIndexes;
  v3->var4 = &self->_moreResultsAvailable;
  v3->var5 = &self->_stopLoadingResults;
  v3->var10 = 0;
  v3->var11 = 0;
  Current = CFAbsoluteTimeGetCurrent();
  v5 = CalCopySystemTimeZone();
  CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
  CalGregorianDateGetGregorianDateForDay();
  CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
  CalAbsoluteTimeAddGregorianUnits();
  v3->var7 = v6;
  CalAbsoluteTimeAddGregorianUnits();
  v3->var9 = v7;
  if (v5)
  {
    CFRelease(v5);
  }

  v3->var6 = v3->var7;
  v3->var13 = self;
  v3->var14 = 200;
  if (self->_implementsCancellationCallback)
  {
    v8 = _applicationOccurrencesCancellationCallback;
  }

  else
  {
    v8 = 0;
  }

  v3->var12 = v8;
  v3->var15 = 1;
  v3->var17 = Current;
  v3->var18 = 0;
  v3->var19 = *MEMORY[0x1E6993100];
  return v3;
}

@end
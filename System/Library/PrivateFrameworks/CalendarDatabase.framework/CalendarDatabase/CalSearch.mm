@interface CalSearch
- (CalEventIdsSearchContext)_createEventIdsSearchContext;
- (CalEventOccurrenceSearchContext)_createSearchContext;
- (CalLocationIdsSearchContext)_createLocationIdsSearchContext;
- (CalParticipantIdsSearchContext)_createParticipantIdsSearchContext;
- (CalSearch)initWithDatabase:(CalDatabase *)database filter:(CalFilter *)filter dataSink:(id)sink;
- (void)_addMatchedEventIds:(__CFArray *)ids;
- (void)_addMatchedLocationIds:(__CFArray *)ids;
- (void)_addMatchedParticipantIds:(__CFArray *)ids;
- (void)_deleteEventIdsSearchContext:(CalEventIdsSearchContext *)context;
- (void)_deleteLocationIdsSearchContext:(CalLocationIdsSearchContext *)context;
- (void)_deleteParticipantIdsSearchContext:(CalParticipantIdsSearchContext *)context;
- (void)_getApplicationSearchResults:(CalEventOccurrenceSearchContext *)results;
- (void)_getAttendeesSearchResults:(CalEventIdsSearchContext *)results;
- (void)_getEventsSearchResults:(CalEventIdsSearchContext *)results;
- (void)_getLocationSearchResults:(CalLocationIdsSearchContext *)results;
- (void)_getParticipantsSearchResults:(CalParticipantIdsSearchContext *)results;
- (void)_startLoadingResults;
- (void)dealloc;
- (void)startSearching;
@end

@implementation CalSearch

- (CalSearch)initWithDatabase:(CalDatabase *)database filter:(CalFilter *)filter dataSink:(id)sink
{
  sinkCopy = sink;
  v15.receiver = self;
  v15.super_class = CalSearch;
  v9 = [(CalSearch *)&v15 init];
  if (v9)
  {
    v9->_database = CFRetain(database);
    v10 = CFRetain(filter);
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
    objc_storeWeak(&v9->_dataSink, sinkCopy);
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
    _createParticipantIdsSearchContext = [(CalSearch *)self _createParticipantIdsSearchContext];
    [(CalSearch *)self _getParticipantsSearchResults:_createParticipantIdsSearchContext];
    [(CalSearch *)self _deleteParticipantIdsSearchContext:_createParticipantIdsSearchContext];
  }

  if ([(CalSearch *)self searchLocations])
  {
    _createLocationIdsSearchContext = [(CalSearch *)self _createLocationIdsSearchContext];
    if (!self->_stopLoadingResults)
    {
      self->_moreResultsAvailable = 1;
      [(CalSearch *)self _getLocationSearchResults:_createLocationIdsSearchContext];
    }

    [(CalSearch *)self _deleteLocationIdsSearchContext:_createLocationIdsSearchContext];
  }

  _createEventIdsSearchContext = [(CalSearch *)self _createEventIdsSearchContext];
  searchAttendees = [(CalSearch *)self searchAttendees];
  stopLoadingResults = self->_stopLoadingResults;
  if (searchAttendees && !self->_stopLoadingResults)
  {
    self->_moreResultsAvailable = 1;
    [(CalSearch *)self _getAttendeesSearchResults:_createEventIdsSearchContext];
    stopLoadingResults = self->_stopLoadingResults;
  }

  if (!stopLoadingResults)
  {
    self->_moreResultsAvailable = 1;
    [(CalSearch *)self _getEventsSearchResults:_createEventIdsSearchContext];
  }

  [(CalSearch *)self _deleteEventIdsSearchContext:_createEventIdsSearchContext];
  if (!self->_stopLoadingResults && CFSetGetCount(self->_matchedEventsSet))
  {
    self->_moreResultsAvailable = 1;
    _createSearchContext = [(CalSearch *)self _createSearchContext];
    [(CalSearch *)self _getApplicationSearchResults:_createSearchContext];
    [(CalSearch *)self _deleteSearchContext:_createSearchContext];
  }

  pthread_mutex_unlock(&self->_dataSourceDeallocLock);
  if (!self->_stopLoadingResults)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSink);
    [WeakRetained calSearchComplete:self];
  }
}

- (void)_addMatchedEventIds:(__CFArray *)ids
{
  Count = CFArrayGetCount(ids);
  if (Count >= 1)
  {
    v6 = Count;
    for (i = 0; i != v6; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(ids, i);
      CFSetAddValue(self->_matchedEventsSet, ValueAtIndex);
    }
  }
}

- (void)_addMatchedParticipantIds:(__CFArray *)ids
{
  Count = CFArrayGetCount(ids);
  if (Count >= 1)
  {
    v6 = Count;
    for (i = 0; i != v6; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(ids, i);
      CFSetAddValue(self->_matchedParticipantsSet, ValueAtIndex);
    }
  }
}

- (void)_getParticipantsSearchResults:(CalParticipantIdsSearchContext *)results
{
  if (self->_stopLoadingResults)
  {
    ParticipantsSearchStatement = 0;
  }

  else
  {
    ParticipantsSearchStatement = CalDatabaseCreateParticipantsSearchStatement(results, self->_searchString);
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

    CalDatabaseCopyParticipantIdsThatMatchSearch(ParticipantsSearchStatement, results);
    if (CFArrayGetCount(results->var0))
    {
      [(CalSearch *)self _addMatchedParticipantIds:results->var0];
    }
  }

  if (ParticipantsSearchStatement)
  {

    CalDatabaseDeleteParticipantsSearchStatement(ParticipantsSearchStatement, results);
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

- (void)_deleteParticipantIdsSearchContext:(CalParticipantIdsSearchContext *)context
{
  CFArrayRemoveAllValues(context->var0);

  free(context);
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

- (void)_deleteLocationIdsSearchContext:(CalLocationIdsSearchContext *)context
{
  CFArrayRemoveAllValues(context->var0);

  free(context);
}

- (void)_addMatchedLocationIds:(__CFArray *)ids
{
  Count = CFArrayGetCount(ids);
  if (Count >= 1)
  {
    v6 = Count;
    for (i = 0; i != v6; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(ids, i);
      CFSetAddValue(self->_matchedLocationsSet, ValueAtIndex);
    }
  }
}

- (void)_getLocationSearchResults:(CalLocationIdsSearchContext *)results
{
  if (self->_stopLoadingResults)
  {
    LocationSearchStatement = 0;
  }

  else
  {
    LocationSearchStatement = CalDatabaseCreateLocationSearchStatement(results, self->_searchString);
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

    CalDatabaseCopyLocationIdsThatMatchSearch(LocationSearchStatement, results);
    if (CFArrayGetCount(results->var0))
    {
      [(CalSearch *)self _addMatchedLocationIds:results->var0];
    }
  }

  if (LocationSearchStatement)
  {

    CalDatabaseDeleteLocationSearchStatement(LocationSearchStatement, results);
  }
}

- (void)_getAttendeesSearchResults:(CalEventIdsSearchContext *)results
{
  if (self->_stopLoadingResults)
  {
    AttendeesSearchStatement = 0;
  }

  else
  {
    AttendeesSearchStatement = CalDatabaseCreateAttendeesSearchStatement(results);
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

    CalDatabaseCopyEventIdsForSearch(AttendeesSearchStatement, results);
    if (CFArrayGetCount(results->var0))
    {
      [(CalSearch *)self _addMatchedEventIds:results->var0];
    }
  }

  if (AttendeesSearchStatement)
  {

    CalDatabaseDeleteAttendeesSearchStatement(AttendeesSearchStatement, results);
  }
}

- (void)_getEventsSearchResults:(CalEventIdsSearchContext *)results
{
  if (self->_stopLoadingResults)
  {
    EventsSearchStatement = 0;
  }

  else
  {
    EventsSearchStatement = CalDatabaseCreateEventsSearchStatement(results, self->_filter, self->_shouldMatchLocationsOnlyForEventSearch);
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

    CalDatabaseCopyEventIdsForSearch(EventsSearchStatement, results);
    if (CFArrayGetCount(results->var0))
    {
      [(CalSearch *)self _addMatchedEventIds:results->var0];
    }
  }

  if (EventsSearchStatement)
  {

    CalDatabaseDeleteEventsSearchStatement(EventsSearchStatement, results);
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

- (void)_deleteEventIdsSearchContext:(CalEventIdsSearchContext *)context
{
  CFArrayRemoveAllValues(context->var0);

  free(context);
}

- (void)_getApplicationSearchResults:(CalEventOccurrenceSearchContext *)results
{
  while (self->_moreResultsAvailable)
  {
    if (self->_stopLoadingResults)
    {
      break;
    }

    v5 = CalDatabaseCopyEventOccurrenceCache(self->_database);
    results->var11 = v5;
    OccurrencesThatMatchEventIdsStatement = CalDatabaseCreateOccurrencesThatMatchEventIdsStatement(self->_filter, results);
    CalDatabaseRegisterProgressHandlerForOccurrencesSearch(results, OccurrencesThatMatchEventIdsStatement);
    _CalDatabaseCopyEventOccurrencesThatMatchEventIds(results, OccurrencesThatMatchEventIdsStatement);
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

    if (!self->_dateToStartShowingResultsSentToDataSink && (results->var18 || !self->_moreResultsAvailable))
    {
      self->_dateToStartShowingResultsSentToDataSink = 1;
      v11 = objc_loadWeakRetained(&self->_dataSink);
      [v11 calSearch:self showResultsStartingOnDate:results->var19];
    }

    CalDatabaseUnregisterProgressHandlerForOccurrencesSearch(OccurrencesThatMatchEventIdsStatement);
    CalDatabaseDeleteOccurrencesThatMatchEventIdsStatement(results, OccurrencesThatMatchEventIdsStatement);
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
@interface CADCalSearchOperation
- (CADCalSearchOperation)initWithConnection:(id)a3 searchTerm:(id)a4 calendars:(id)a5 replyID:(unsigned int)a6;
- (void)_completeOperation;
- (void)calSearch:(id)a3 foundOccurrences:(__CFArray *)a4 cachedDays:(__CFArray *)a5 cachedDaysIndexes:(__CFArray *)a6;
- (void)calSearchComplete:(id)a3;
- (void)cancel;
- (void)configureSearch:(id)a3;
- (void)dealloc;
- (void)main;
@end

@implementation CADCalSearchOperation

- (CADCalSearchOperation)initWithConnection:(id)a3 searchTerm:(id)a4 calendars:(id)a5 replyID:(unsigned int)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if ([v11 eventAccessLevel])
  {
    v26.receiver = self;
    v26.super_class = CADCalSearchOperation;
    v14 = [(CADCalSearchOperation *)&v26 init];
    if (v14)
    {
      v15 = objc_alloc(MEMORY[0x277CCACA8]);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = [v15 initWithFormat:@"%@", v17];

      v19 = [MEMORY[0x277CCAC38] processInfo];
      v20 = [v19 beginActivityWithOptions:0x80000000000 reason:v18];
      boostToken = v14->_boostToken;
      v14->_boostToken = v20;

      objc_storeStrong(&v14->_connection, a3);
      objc_storeStrong(&v14->_calendars, a5);
      objc_storeStrong(&v14->_searchTerm, a4);
      v14->_lock._os_unfair_lock_opaque = 0;
      v14->_replyID = a6;
      v22 = dispatch_semaphore_create(0);
      finishedSemaphore = v14->_finishedSemaphore;
      v14->_finishedSemaphore = v22;
    }

    self = v14;
    v24 = self;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (void)configureSearch:(id)a3
{
  v3 = a3;
  [v3 setSearchAttendees:1];
  [v3 setSearchLocations:1];
  [v3 setSearchParticipants:1];
  [v3 setShouldMatchLocationsOnlyForEventSearch:0];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAC38] processInfo];
  [v3 endActivity:self->_boostToken];

  v4.receiver = self;
  v4.super_class = CADCalSearchOperation;
  [(CADCalSearchOperation *)&v4 dealloc];
}

- (void)main
{
  v3 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22430B000, v3, OS_LOG_TYPE_INFO, "Starting search operation", buf, 2u);
  }

  connection = self->_connection;
  calendars = self->_calendars;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __29__CADCalSearchOperation_main__block_invoke;
  v6[3] = &unk_27851BA00;
  v6[4] = self;
  [(ClientConnection *)connection withDatabaseForObjects:calendars perform:v6];
  if (([(CADCalSearchOperation *)self isCancelled]& 1) == 0)
  {
    [(CADCalSearchOperation *)self _completeOperation];
  }
}

uint64_t __29__CADCalSearchOperation_main__block_invoke(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  v18 = a3;
  v7 = [*(a1 + 32) isCancelled];
  if ((v7 & 1) == 0)
  {
    *(*(a1 + 32) + 264) = a2;
    v8 = MEMORY[0x277CBEB58];
    v9 = [v18 valueForKey:@"entityID"];
    v10 = [v8 setWithArray:v9];

    v11 = [*(*(a1 + 32) + 248) restrictedCalendarRowIDsForAction:0 inDatabase:a4];
    [v10 minusSet:v11];

    v12 = CalFilterCreateWithDatabaseShowingCalendarsWithUIDs();
    v13 = *(*(a1 + 32) + 280);
    CalFilterSetSearchTerm();
    os_unfair_lock_lock((*(a1 + 32) + 312));
    if (([*(a1 + 32) isCancelled] & 1) == 0)
    {
      v14 = [objc_alloc(MEMORY[0x277CF7530]) initWithDatabase:a4 filter:v12 dataSink:*(a1 + 32)];
      [*(a1 + 32) configureSearch:v14];
      [v14 startSearching];
      v15 = *(a1 + 32);
      v16 = *(v15 + 256);
      *(v15 + 256) = v14;
    }

    CFRelease(v12);
    os_unfair_lock_unlock((*(a1 + 32) + 312));
    if (([*(a1 + 32) isCancelled] & 1) == 0)
    {
      dispatch_semaphore_wait(*(*(a1 + 32) + 288), 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  return MEMORY[0x2821F96F8](v7);
}

- (void)cancel
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v7 = self;
    _os_log_impl(&dword_22430B000, v3, OS_LOG_TYPE_INFO, "Cancelling [%@]", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  v5.receiver = self;
  v5.super_class = CADCalSearchOperation;
  [(CADCalSearchOperation *)&v5 cancel];
  [(CalSearch *)self->_currentSearch stopSearching];
  os_unfair_lock_unlock(&self->_lock);
  dispatch_semaphore_signal(self->_finishedSemaphore);
  [(CADCalSearchOperation *)self _completeOperation];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)calSearch:(id)a3 foundOccurrences:(__CFArray *)a4 cachedDays:(__CFArray *)a5 cachedDaysIndexes:(__CFArray *)a6
{
  v19 = a3;
  if (a4)
  {
    Count = CFArrayGetCount(a4);
  }

  else
  {
    Count = 0;
  }

  if (!self->_objectIDsForPrivacyAccounting)
  {
    v9 = objc_opt_new();
    objectIDsForPrivacyAccounting = self->_objectIDsForPrivacyAccounting;
    self->_objectIDsForPrivacyAccounting = v9;
  }

  v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:Count];
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      CFArrayGetValueAtIndex(a4, i);
      CalEventOccurrenceGetEvent();
      if (_CalEventGetJunkStatusWhileLocked() != 1)
      {
        ID = CPRecordGetID();
        CalEventOccurrenceGetDate();
        v15 = v14;
        v16 = [objc_alloc(MEMORY[0x277CF74C8]) initWithEntityType:2 entityID:ID databaseID:self->_currentDatabaseID];
        [v11 addObject:v16];
        v17 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:v15];
        [v11 addObject:v17];

        [(NSMutableArray *)self->_objectIDsForPrivacyAccounting addObject:v16];
      }
    }
  }

  v18 = [(ClientConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_28];
  [v18 CADClientReceiveOccurrenceCacheSearchResults:v11 forSearchToken:self->_replyID finished:0];
}

void __81__CADCalSearchOperation_calSearch_foundOccurrences_cachedDays_cachedDaysIndexes___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_22430B000, v3, OS_LOG_TYPE_ERROR, "Error sending occurrence cache search results: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)calSearchComplete:(id)a3
{
  v4 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_22430B000, v4, OS_LOG_TYPE_INFO, "Search complete.", v5, 2u);
  }

  dispatch_semaphore_signal(self->_finishedSemaphore);
}

- (void)_completeOperation
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = self;
    _os_log_impl(&dword_22430B000, v3, OS_LOG_TYPE_INFO, "Sending an empty array to client of [%@].", &v7, 0xCu);
  }

  v4 = [MEMORY[0x277CBEA60] array];
  v5 = [(ClientConnection *)self->_connection remoteObjectProxy];
  [v5 CADClientReceiveOccurrenceCacheSearchResults:v4 forSearchToken:self->_replyID finished:1];

  if (self->_objectIDsForPrivacyAccounting)
  {
    [(ClientConnection *)self->_connection logAccessToObjects:?];
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end
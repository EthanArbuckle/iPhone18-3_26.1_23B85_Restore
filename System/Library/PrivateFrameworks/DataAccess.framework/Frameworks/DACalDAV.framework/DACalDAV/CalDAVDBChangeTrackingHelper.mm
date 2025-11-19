@interface CalDAVDBChangeTrackingHelper
- (BOOL)clearUnconsumedAndUnsavedChanges;
- (CalDAVDBChangeTrackingHelper)initWithDatabase:(CalDatabase *)a3 clientIdentifier:(id)a4;
- (void)dealloc;
@end

@implementation CalDAVDBChangeTrackingHelper

- (CalDAVDBChangeTrackingHelper)initWithDatabase:(CalDatabase *)a3 clientIdentifier:(id)a4
{
  v7 = a4;
  v10.receiver = self;
  v10.super_class = CalDAVDBChangeTrackingHelper;
  v8 = [(CalDAVDBChangeTrackingHelper *)&v10 init];
  if (v8)
  {
    v8->_database = CFRetain(a3);
    v8->_initialSequenceNumber = CalDatabaseGetSequenceNumber();
    objc_storeStrong(&v8->_clientIdentifier, a4);
  }

  return v8;
}

- (void)dealloc
{
  CFRelease(self->_database);
  v3.receiver = self;
  v3.super_class = CalDAVDBChangeTrackingHelper;
  [(CalDAVDBChangeTrackingHelper *)&v3 dealloc];
}

- (BOOL)clearUnconsumedAndUnsavedChanges
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  database = self->_database;
  clientIdentifier = self->_clientIdentifier;
  CalDatabaseEnumerateUnconsumedObjectChangesForClient();
  v4 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v4;
}

void __64__CalDAVDBChangeTrackingHelper_clearUnconsumedAndUnsavedChanges__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFArray *a5, const __CFArray *a6)
{
  v35 = *MEMORY[0x277D85DE8];
  v9 = *(*(a1 + 32) + 32);
  v10 = [MEMORY[0x277CCABB0] numberWithInt:a2];
  v11 = [v9 objectForKeyedSubscript:v10];

  Count = CFArrayGetCount(a5);
  if (Count >= 1)
  {
    v13 = Count;
    Mutable = CFArrayCreateMutable(0, Count, 0);
    for (i = 0; i != v13; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a5, i);
      if (*(*(a1 + 32) + 24) >= CFArrayGetValueAtIndex(a6, i))
      {
        v17 = [MEMORY[0x277CCABB0] numberWithInt:ValueAtIndex];
        v18 = [v11 containsObject:v17];

        if ((v18 & 1) == 0)
        {
          CFArrayAppendValue(Mutable, ValueAtIndex);
        }
      }
    }

    v19 = CFArrayGetCount(Mutable);
    if (v19 > 0)
    {
      v20 = v19;
      v21 = DALoggingwithCategory();
      v22 = *(MEMORY[0x277D03988] + 5);
      if (os_log_type_enabled(v21, v22))
      {
        Name = CalEntityTypeGetName();
        v24 = *(*(a1 + 32) + 16);
        *buf = 134218498;
        v30 = v20;
        v31 = 2114;
        v32 = Name;
        v33 = 2114;
        v34 = v24;
        _os_log_impl(&dword_2484B2000, v21, v22, "Clearing %li leftover changes of type %{public}@ for %{public}@.", buf, 0x20u);
      }

      v25 = *(a1 + 32);
      v26 = *(v25 + 8);
      v27 = *(v25 + 16);
      CalDatabaseClearIndividualChangeRowIDsForClient();
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

@end
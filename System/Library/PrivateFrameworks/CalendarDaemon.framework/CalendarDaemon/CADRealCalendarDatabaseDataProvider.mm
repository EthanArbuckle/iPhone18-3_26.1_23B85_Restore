@interface CADRealCalendarDatabaseDataProvider
+ (id)realDataProvider;
- (BOOL)isStoreDelegate:(void *)delegate inDatabase:(CalDatabase *)database;
- (id)accountIDForStore:(void *)store inDatabase:(CalDatabase *)database;
- (id)storeIDForStore:(void *)store inDatabase:(CalDatabase *)database;
- (id)storesInDatabase:(CalDatabase *)database;
- (int)naturalLanguageSuggestionsCalendarRowIDInDatabase:(CalDatabase *)database;
- (int)suggestionsCalendarRowIDInDatabase:(CalDatabase *)database;
- (void)gatherCalendarRowIDs:(id)ds inStore:(void *)store inDatabase:(CalDatabase *)database;
@end

@implementation CADRealCalendarDatabaseDataProvider

+ (id)realDataProvider
{
  if (realDataProvider_onceToken != -1)
  {
    +[CADRealCalendarDatabaseDataProvider realDataProvider];
  }

  v3 = realDataProvider_realDataProvider;

  return v3;
}

uint64_t __55__CADRealCalendarDatabaseDataProvider_realDataProvider__block_invoke()
{
  v0 = objc_alloc_init(CADRealCalendarDatabaseDataProvider);
  realDataProvider_realDataProvider = v0;

  return MEMORY[0x2821F96F8](v0);
}

- (id)storesInDatabase:(CalDatabase *)database
{
  v3 = CalDatabaseCopyOfAllStores();

  return v3;
}

- (BOOL)isStoreDelegate:(void *)delegate inDatabase:(CalDatabase *)database
{
  v4 = CalStoreCopyDelegatedAccountOwnerStoreID();
  v5 = v4 != 0;

  return v5;
}

- (id)accountIDForStore:(void *)store inDatabase:(CalDatabase *)database
{
  if (CalStoreGetType() - 1 > 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = CalStoreCopyExternalID();
  }

  return v4;
}

- (id)storeIDForStore:(void *)store inDatabase:(CalDatabase *)database
{
  v4 = CalStoreCopyUUID();

  return v4;
}

- (void)gatherCalendarRowIDs:(id)ds inStore:(void *)store inDatabase:(CalDatabase *)database
{
  v16 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v6 = CalStoreCopyCalendars();
  if (v6)
  {
    v7 = v6;
    Count = CFArrayGetCount(v6);
    if (Count >= 1)
    {
      v9 = Count;
      for (i = 0; i != v9; ++i)
      {
        CFArrayGetValueAtIndex(v7, i);
        v11 = [MEMORY[0x277CCABB0] numberWithInt:CalCalendarGetUID()];
        [dsCopy addObject:v11];
      }
    }

    CFRelease(v7);
  }

  else
  {
    v12 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      v13 = v12;
      v15[0] = 67109120;
      v15[1] = CalStoreGetUID();
      _os_log_impl(&dword_22430B000, v13, OS_LOG_TYPE_ERROR, "Calendar are nil for store with RowID: [%i]", v15, 8u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (int)naturalLanguageSuggestionsCalendarRowIDInDatabase:(CalDatabase *)database
{
  v3 = CalDatabaseCopyNaturalLanguageSuggestionsCalendar();
  if (!v3)
  {
    return -1;
  }

  v4 = v3;
  UID = CalCalendarGetUID();
  CFRelease(v4);
  return UID;
}

- (int)suggestionsCalendarRowIDInDatabase:(CalDatabase *)database
{
  v3 = CalDatabaseCopySuggestionsCalendar();
  if (!v3)
  {
    return -1;
  }

  v4 = v3;
  UID = CalCalendarGetUID();
  CFRelease(v4);
  return UID;
}

@end
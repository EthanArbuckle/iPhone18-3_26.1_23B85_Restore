@interface BookmarksDatabaseHealthReporter
- (BOOL)_shouldReportDatabaseHealth;
- (void)reportDatabaseHealth;
@end

@implementation BookmarksDatabaseHealthReporter

- (BOOL)_shouldReportDatabaseHealth
{
  lastReportTimeInterval = self->_lastReportTimeInterval;
  if (lastReportTimeInterval == 0.0)
  {
    v4 = [(BookmarksDatabaseHealthReporter *)self _userDefaults];
    v5 = [v4 safari_dateForKey:@"LastBookmarksDatabaseHealthReportDate"];

    [v5 timeIntervalSinceReferenceDate];
    self->_lastReportTimeInterval = v6;

    lastReportTimeInterval = self->_lastReportTimeInterval;
  }

  v7 = lastReportTimeInterval + 604800.0;
  v8 = [MEMORY[0x277CBEAA8] date];
  [v8 timeIntervalSinceReferenceDate];
  v10 = v7 < v9;

  return v10;
}

- (void)reportDatabaseHealth
{
  if ([(BookmarksDatabaseHealthReporter *)self _shouldReportDatabaseHealth])
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    [v3 timeIntervalSinceReferenceDate];
    self->_lastReportTimeInterval = v4;
    v5 = *MEMORY[0x277D767B0];
    v6 = *MEMORY[0x277D76620];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __55__BookmarksDatabaseHealthReporter_reportDatabaseHealth__block_invoke;
    v13[3] = &__block_descriptor_40_e5_v8__0l;
    v13[4] = v5;
    v7 = [v6 beginBackgroundTaskWithName:@"com.apple.mobilesafari.BookmarksDatabaseHealthReporter" expirationHandler:v13];
    v8 = dispatch_get_global_queue(17, 0);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __55__BookmarksDatabaseHealthReporter_reportDatabaseHealth__block_invoke_2;
    v10[3] = &unk_2781D59B0;
    v10[4] = self;
    v11 = v3;
    v12 = v7;
    v9 = v3;
    dispatch_async(v8, v10);
  }
}

void __55__BookmarksDatabaseHealthReporter_reportDatabaseHealth__block_invoke_2(uint64_t a1)
{
  v7 = [objc_alloc(MEMORY[0x277D7B5B0]) initReadonlySafariBookmarkCollection];
  v2 = [v7 databaseHealthInformation];
  v3 = [v2 topLevelDuplicateBookmarksCount];
  v4 = [v2 allDuplicateBookmarksCount];
  v5 = [MEMORY[0x277D499B8] sharedLogger];
  [v5 reportNumberOfDuplicateBookmarksWithTopLevelDuplicatesCount:v3 allDuplicatesCount:v4];

  v6 = [*(a1 + 32) _userDefaults];
  [v6 setObject:*(a1 + 40) forKey:@"LastBookmarksDatabaseHealthReportDate"];
  [v6 synchronize];
  [*MEMORY[0x277D76620] endBackgroundTask:*(a1 + 48)];
}

@end
@interface MBCacheRefreshSummary
- (MBCacheRefreshSummary)initWithDictionaryRepresentation:(id)a3;
- (id)dictionaryRepresentation;
- (void)trackVerificationFailureForSnapshot:(id)a3 manifestID:(id)a4 domain:(id)a5 serverChecksum:(unint64_t)a6 localChecksum:(unint64_t)a7 localFileCount:(unint64_t)a8;
@end

@implementation MBCacheRefreshSummary

- (MBCacheRefreshSummary)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MBCacheRefreshSummary;
  v5 = [(MBCacheRefreshSummary *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"cacheSnapshotCount"];
    -[MBCacheRefreshSummary setCachedSnapshotCount:](v5, "setCachedSnapshotCount:", [v6 unsignedLongLongValue]);

    v7 = [v4 objectForKeyedSubscript:@"serverSnapshotCount"];
    -[MBCacheRefreshSummary setServerSnapshotCount:](v5, "setServerSnapshotCount:", [v7 BOOLValue]);

    v8 = [v4 objectForKeyedSubscript:@"journalActionCount"];
    -[MBCacheRefreshSummary setJournalActionCount:](v5, "setJournalActionCount:", [v8 unsignedLongLongValue]);

    v9 = [v4 objectForKeyedSubscript:@"journalReplaySucceeded"];
    -[MBCacheRefreshSummary setJournalReplaySucceeded:](v5, "setJournalReplaySucceeded:", [v9 BOOLValue]);

    v10 = [v4 objectForKeyedSubscript:@"journalVerificationErrorCount"];
    -[MBCacheRefreshSummary setJournalVerificationErrorCount:](v5, "setJournalVerificationErrorCount:", [v10 unsignedLongLongValue]);

    v11 = [v4 objectForKeyedSubscript:@"cacheOnlySnapshotCount"];
    -[MBCacheRefreshSummary setCacheOnlySnapshotCount:](v5, "setCacheOnlySnapshotCount:", [v11 unsignedLongLongValue]);

    v12 = [v4 objectForKeyedSubscript:@"downloadedSnapshotCount"];
    -[MBCacheRefreshSummary setDownloadedSnapshotCount:](v5, "setDownloadedSnapshotCount:", [v12 unsignedLongLongValue]);

    v13 = [v4 objectForKeyedSubscript:@"downloadedSnapshotVerificationFailureCount"];
    -[MBCacheRefreshSummary setDownloadedSnapshotVerificationFailureCount:](v5, "setDownloadedSnapshotVerificationFailureCount:", [v13 unsignedLongLongValue]);
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = [NSNumber numberWithUnsignedLongLong:[(MBCacheRefreshSummary *)self cachedSnapshotCount]];
  [v3 setObject:v4 forKeyedSubscript:@"cacheSnapshotCount"];

  v5 = [NSNumber numberWithUnsignedLongLong:[(MBCacheRefreshSummary *)self serverSnapshotCount]];
  [v3 setObject:v5 forKeyedSubscript:@"serverSnapshotCount"];

  v6 = [NSNumber numberWithUnsignedLongLong:[(MBCacheRefreshSummary *)self journalActionCount]];
  [v3 setObject:v6 forKeyedSubscript:@"journalActionCount"];

  v7 = [NSNumber numberWithBool:[(MBCacheRefreshSummary *)self journalReplaySucceeded]];
  [v3 setObject:v7 forKeyedSubscript:@"journalReplaySucceeded"];

  v8 = [NSNumber numberWithUnsignedLongLong:[(MBCacheRefreshSummary *)self journalVerificationErrorCount]];
  [v3 setObject:v8 forKeyedSubscript:@"journalVerificationErrorCount"];

  v9 = [NSNumber numberWithUnsignedLongLong:[(MBCacheRefreshSummary *)self cacheOnlySnapshotCount]];
  [v3 setObject:v9 forKeyedSubscript:@"cacheOnlySnapshotCount"];

  v10 = [NSNumber numberWithUnsignedLongLong:[(MBCacheRefreshSummary *)self downloadedSnapshotCount]];
  [v3 setObject:v10 forKeyedSubscript:@"downloadedSnapshotCount"];

  v11 = [NSNumber numberWithUnsignedLongLong:[(MBCacheRefreshSummary *)self downloadedSnapshotVerificationFailureCount]];
  [v3 setObject:v11 forKeyedSubscript:@"downloadedSnapshotVerificationFailureCount"];

  return v3;
}

- (void)trackVerificationFailureForSnapshot:(id)a3 manifestID:(id)a4 domain:(id)a5 serverChecksum:(unint64_t)a6 localChecksum:(unint64_t)a7 localFileCount:(unint64_t)a8
{
  v20 = a3;
  v14 = a4;
  v15 = a5;
  verificationFailures = self->_verificationFailures;
  if (!verificationFailures)
  {
    v17 = objc_opt_new();
    v18 = self->_verificationFailures;
    self->_verificationFailures = v17;

    verificationFailures = self->_verificationFailures;
  }

  if ([(NSMutableOrderedSet *)verificationFailures count]<= 2)
  {
    v19 = [NSString stringWithFormat:@"%@|%@|%@|%llx|%llx|%llu", v20, v14, v15, a7, a6, a8];
    [(NSMutableOrderedSet *)self->_verificationFailures addObject:v19];
  }
}

@end
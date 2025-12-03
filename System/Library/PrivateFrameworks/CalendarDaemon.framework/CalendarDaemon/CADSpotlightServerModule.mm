@interface CADSpotlightServerModule
- (CADSpotlightServerModule)initWithSpotlightEntityAnnotator:(id)annotator;
- (void)activate;
- (void)deactivate;
- (void)protectedDataDidBecomeAvailable;
- (void)receivedNotificationNamed:(id)named;
@end

@implementation CADSpotlightServerModule

- (CADSpotlightServerModule)initWithSpotlightEntityAnnotator:(id)annotator
{
  annotatorCopy = annotator;
  v9.receiver = self;
  v9.super_class = CADSpotlightServerModule;
  v6 = [(CADSpotlightServerModule *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_spotlightEntityAnnotator, annotator);
  }

  return v7;
}

- (void)activate
{
  v3 = CADSpotlightHandle;
  if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_22430B000, v3, OS_LOG_TYPE_DEFAULT, "activate", v6, 2u);
  }

  [CADSpotlightLogger log:@"activate"];
  v4 = [[CADSpotlightIndexer alloc] initWithSpotlightEntityAnnotator:self->_spotlightEntityAnnotator];
  indexer = self->_indexer;
  self->_indexer = v4;

  if (MEMORY[0x282233188])
  {
    SpotlightDaemonClientRegister();
  }
}

- (void)deactivate
{
  v3 = CADSpotlightHandle;
  if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22430B000, v3, OS_LOG_TYPE_DEFAULT, "deactivate", v4, 2u);
  }

  [CADSpotlightLogger log:@"deactivate"];
  [(CADSpotlightIndexer *)self->_indexer cancelOngoingWorkAndShutdown];
}

- (void)receivedNotificationNamed:(id)named
{
  namedCopy = named;
  if (([namedCopy isEqualToString:*MEMORY[0x277CF7560]] & 1) != 0 || objc_msgSend(namedCopy, "isEqualToString:", *MEMORY[0x277CF7568]))
  {
    v5 = CADSpotlightHandle;
    if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_22430B000, v5, OS_LOG_TYPE_DEFAULT, "Received db change notification, starting to index unconsumed changes", v6, 2u);
    }

    [(CADSpotlightIndexer *)self->_indexer indexUnconsumedChanges];
  }
}

- (void)protectedDataDidBecomeAvailable
{
  v3 = CADSpotlightHandle;
  if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22430B000, v3, OS_LOG_TYPE_DEFAULT, "protectedDataDidBecomeAvailable, checking if we should do a full reindex", v4, 2u);
  }

  [CADSpotlightLogger log:@"protectedDataDidBecomeAvailable"];
  [(CADSpotlightIndexer *)self->_indexer checkForAndReportPastSpotlightMigrationErrorsAndReindexIfNeeded];
}

@end
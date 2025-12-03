@interface ICNAFindResultExposureReporter
- (BOOL)hasActiveTrackingFindSession;
- (ICNAEventReporter)eventReporter;
- (ICNAFindResultExposureReporter)initWithWindow:(id)window;
- (UIWindow)window;
- (void)eventReporterLostSession:(id)session;
- (void)startTrackingFindSession;
- (void)submitEventIfApplicableForNote:(id)note;
- (void)updateWithSearchQuery:(id)query;
@end

@implementation ICNAFindResultExposureReporter

- (ICNAFindResultExposureReporter)initWithWindow:(id)window
{
  windowCopy = window;
  v10.receiver = self;
  v10.super_class = ICNAFindResultExposureReporter;
  v5 = [(ICNAFindResultExposureReporter *)&v10 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], QOS_CLASS_UTILITY, 0);
    v7 = dispatch_queue_create("com.apple.notes.analytics.findResultExposureReporter", v6);
    isolationQueue = v5->_isolationQueue;
    v5->_isolationQueue = v7;

    objc_storeWeak(&v5->_window, windowCopy);
  }

  return v5;
}

- (void)startTrackingFindSession
{
  isolationQueue = [(ICNAFindResultExposureReporter *)self isolationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__ICNAFindResultExposureReporter_startTrackingFindSession__block_invoke;
  block[3] = &unk_2799AF130;
  block[4] = self;
  dispatch_async(isolationQueue, block);
}

void __58__ICNAFindResultExposureReporter_startTrackingFindSession__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(FindSessionData);
  [*(a1 + 32) setFindSessionData:v2];

  v3 = [*(a1 + 32) eventReporter];
  [v3 startFindInNoteEvent];
}

- (void)updateWithSearchQuery:(id)query
{
  queryCopy = query;
  isolationQueue = [(ICNAFindResultExposureReporter *)self isolationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__ICNAFindResultExposureReporter_updateWithSearchQuery___block_invoke;
  v7[3] = &unk_2799AF050;
  v7[4] = self;
  v8 = queryCopy;
  v6 = queryCopy;
  dispatch_async(isolationQueue, v7);
}

void __56__ICNAFindResultExposureReporter_updateWithSearchQuery___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) findSessionData];
  [v2 setSearchQuery:v1];
}

- (void)submitEventIfApplicableForNote:(id)note
{
  noteCopy = note;
  isolationQueue = [(ICNAFindResultExposureReporter *)self isolationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__ICNAFindResultExposureReporter_submitEventIfApplicableForNote___block_invoke;
  v7[3] = &unk_2799AF050;
  v7[4] = self;
  v8 = noteCopy;
  v6 = noteCopy;
  dispatch_async(isolationQueue, v7);
}

void __65__ICNAFindResultExposureReporter_submitEventIfApplicableForNote___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) findSessionData];
  if (v2)
  {
    v5 = v2;
    v3 = [*(a1 + 32) eventReporter];
    v4 = [v5 searchQuery];
    [v3 submitFindInNoteEventWasSearchQueryEntered:objc_msgSend(v4 modernNote:{"length") != 0, *(a1 + 40)}];

    [*(a1 + 32) setFindSessionData:0];
    v2 = v5;
  }
}

- (BOOL)hasActiveTrackingFindSession
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  isolationQueue = [(ICNAFindResultExposureReporter *)self isolationQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__ICNAFindResultExposureReporter_hasActiveTrackingFindSession__block_invoke;
  v5[3] = &unk_2799AF158;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __62__ICNAFindResultExposureReporter_hasActiveTrackingFindSession__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) findSessionData];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

- (ICNAEventReporter)eventReporter
{
  if (!self->_eventReporter && +[(ICNAOptedInObject *)ICNAEventReporter])
  {
    v3 = [ICNAEventReporter alloc];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    window = [(ICNAFindResultExposureReporter *)self window];
    v7 = [(ICNAEventReporter *)v3 initWithSubTrackerName:v5 window:window];
    eventReporter = self->_eventReporter;
    self->_eventReporter = v7;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_eventReporterLostSession_ name:@"ICNAEventReporterLostSessionNotification" object:self->_eventReporter];
  }

  v10 = self->_eventReporter;

  return v10;
}

- (void)eventReporterLostSession:(id)session
{
  eventReporter = self->_eventReporter;
  self->_eventReporter = 0;
  sessionCopy = session;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  object = [sessionCopy object];

  [defaultCenter removeObserver:self name:@"ICNAEventReporterLostSessionNotification" object:object];
}

- (UIWindow)window
{
  WeakRetained = objc_loadWeakRetained(&self->_window);

  return WeakRetained;
}

@end
@interface ICNAFindResultExposureReporter
- (BOOL)hasActiveTrackingFindSession;
- (ICNAEventReporter)eventReporter;
- (ICNAFindResultExposureReporter)initWithWindow:(id)a3;
- (UIWindow)window;
- (void)eventReporterLostSession:(id)a3;
- (void)startTrackingFindSession;
- (void)submitEventIfApplicableForNote:(id)a3;
- (void)updateWithSearchQuery:(id)a3;
@end

@implementation ICNAFindResultExposureReporter

- (ICNAFindResultExposureReporter)initWithWindow:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ICNAFindResultExposureReporter;
  v5 = [(ICNAFindResultExposureReporter *)&v10 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], QOS_CLASS_UTILITY, 0);
    v7 = dispatch_queue_create("com.apple.notes.analytics.findResultExposureReporter", v6);
    isolationQueue = v5->_isolationQueue;
    v5->_isolationQueue = v7;

    objc_storeWeak(&v5->_window, v4);
  }

  return v5;
}

- (void)startTrackingFindSession
{
  v3 = [(ICNAFindResultExposureReporter *)self isolationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__ICNAFindResultExposureReporter_startTrackingFindSession__block_invoke;
  block[3] = &unk_2799AF130;
  block[4] = self;
  dispatch_async(v3, block);
}

void __58__ICNAFindResultExposureReporter_startTrackingFindSession__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(FindSessionData);
  [*(a1 + 32) setFindSessionData:v2];

  v3 = [*(a1 + 32) eventReporter];
  [v3 startFindInNoteEvent];
}

- (void)updateWithSearchQuery:(id)a3
{
  v4 = a3;
  v5 = [(ICNAFindResultExposureReporter *)self isolationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__ICNAFindResultExposureReporter_updateWithSearchQuery___block_invoke;
  v7[3] = &unk_2799AF050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __56__ICNAFindResultExposureReporter_updateWithSearchQuery___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) findSessionData];
  [v2 setSearchQuery:v1];
}

- (void)submitEventIfApplicableForNote:(id)a3
{
  v4 = a3;
  v5 = [(ICNAFindResultExposureReporter *)self isolationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__ICNAFindResultExposureReporter_submitEventIfApplicableForNote___block_invoke;
  v7[3] = &unk_2799AF050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(ICNAFindResultExposureReporter *)self isolationQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__ICNAFindResultExposureReporter_hasActiveTrackingFindSession__block_invoke;
  v5[3] = &unk_2799AF158;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
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
    v6 = [(ICNAFindResultExposureReporter *)self window];
    v7 = [(ICNAEventReporter *)v3 initWithSubTrackerName:v5 window:v6];
    eventReporter = self->_eventReporter;
    self->_eventReporter = v7;

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:self selector:sel_eventReporterLostSession_ name:@"ICNAEventReporterLostSessionNotification" object:self->_eventReporter];
  }

  v10 = self->_eventReporter;

  return v10;
}

- (void)eventReporterLostSession:(id)a3
{
  eventReporter = self->_eventReporter;
  self->_eventReporter = 0;
  v5 = a3;

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = [v5 object];

  [v7 removeObserver:self name:@"ICNAEventReporterLostSessionNotification" object:v6];
}

- (UIWindow)window
{
  WeakRetained = objc_loadWeakRetained(&self->_window);

  return WeakRetained;
}

@end
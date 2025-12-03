@interface NMSInitialCloudLibraryImportObserver
- (NMSInitialCloudLibraryImportObserver)init;
- (void)_handleInitialCloudLibraryImportCompleted;
- (void)_performInitialImportBlocks;
- (void)performBlockWhenLibraryIsReady:(id)ready;
@end

@implementation NMSInitialCloudLibraryImportObserver

- (NMSInitialCloudLibraryImportObserver)init
{
  v13.receiver = self;
  v13.super_class = NMSInitialCloudLibraryImportObserver;
  v2 = [(NMSInitialCloudLibraryImportObserver *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.NanoMusicSync.InitialCloudLibraryImportObserver", v3);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    initialImportBlocks = v2->_initialImportBlocks;
    v2->_initialImportBlocks = v6;

    v8 = objc_alloc(MEMORY[0x277D7FA50]);
    autoupdatingActiveAccount = [MEMORY[0x277D7FCA0] autoupdatingActiveAccount];
    v10 = [v8 initWithUserIdentity:autoupdatingActiveAccount];
    cloudClient = v2->_cloudClient;
    v2->_cloudClient = v10;
  }

  return v2;
}

- (void)performBlockWhenLibraryIsReady:(id)ready
{
  readyCopy = ready;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__NMSInitialCloudLibraryImportObserver_performBlockWhenLibraryIsReady___block_invoke;
  v7[3] = &unk_27993DD88;
  v7[4] = self;
  v8 = readyCopy;
  v6 = readyCopy;
  dispatch_async(internalQueue, v7);
}

void __71__NMSInitialCloudLibraryImportObserver_performBlockWhenLibraryIsReady___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = MEMORY[0x25F865990](*(a1 + 40));
  [v2 addObject:v3];

  v4 = *(a1 + 32);
  if ((*(v4 + 16) & 1) == 0)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, *(a1 + 32), _ICCloudClientInitialCloudLibraryImportCompletedNotification, *MEMORY[0x277D7F8D8], 0, 0);
    *(*(a1 + 32) + 16) = 1;
    v4 = *(a1 + 32);
  }

  v6 = [*(v4 + 24) initialLibrarySyncsComplete];
  v7 = NMLogForCategory(5);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_25B27B000, v7, OS_LOG_TYPE_DEFAULT, "[NMSInitialCloudLibraryImportObserver] Initial library syncs complete. Performing initial import blocks.", buf, 2u);
    }

    [*(a1 + 32) _performInitialImportBlocks];
  }

  else
  {
    if (v8)
    {
      *v9 = 0;
      _os_log_impl(&dword_25B27B000, v7, OS_LOG_TYPE_DEFAULT, "[NMSInitialCloudLibraryImportObserver] Initial library syncs are not complete. Waiting for ICCloudClientInitialCloudLibraryImportCompletedNotification.", v9, 2u);
    }
  }
}

- (void)_handleInitialCloudLibraryImportCompleted
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__NMSInitialCloudLibraryImportObserver__handleInitialCloudLibraryImportCompleted__block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

uint64_t __81__NMSInitialCloudLibraryImportObserver__handleInitialCloudLibraryImportCompleted__block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 16) == 1)
  {
    v6 = v1;
    v7 = v2;
    v3 = result;
    v4 = NMLogForCategory(5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_25B27B000, v4, OS_LOG_TYPE_DEFAULT, "[NMSInitialCloudLibraryImportObserver] Received ICCloudClientInitialCloudLibraryImportCompletedNotification. Performing initial import blocks.", v5, 2u);
    }

    return [*(v3 + 32) _performInitialImportBlocks];
  }

  return result;
}

- (void)_performInitialImportBlocks
{
  v15 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_internalQueue);
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D7F8D8] object:0];

  self->_isObserving = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_initialImportBlocks;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v10 + 1) + 8 * v8) + 16))(*(*(&v10 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->_initialImportBlocks removeAllObjects];
  v9 = *MEMORY[0x277D85DE8];
}

@end
@interface SpotlightBookmarksDonationWriter
- (SpotlightBookmarksDonationWriter)init;
- (id)_bookmarksToDonate;
- (void)_addBookmark:(id)bookmark toBookmarksToDonate:(id)donate;
- (void)_donateBookmarksToCoreSpotlight;
- (void)_scheduleBookmarksDonationAfterDelay:(double)delay;
- (void)dealloc;
- (void)donateAllBookmarks;
- (void)getBookmarksToDonateWithCompletionHandler:(id)handler;
@end

@implementation SpotlightBookmarksDonationWriter

- (SpotlightBookmarksDonationWriter)init
{
  v17.receiver = self;
  v17.super_class = SpotlightBookmarksDonationWriter;
  v2 = [(SpotlightBookmarksDonationWriter *)&v17 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.MobileSafari.SpotlightBookmarksDonationWriter.%@.%p._internalQueue", objc_opt_class(), v2];
    uTF8String = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v6 = dispatch_queue_create(uTF8String, v5);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v6;

    mEMORY[0x277D4A060] = [MEMORY[0x277D4A060] sharedInstance];
    siriIntelligenceDonor = v2->_siriIntelligenceDonor;
    v2->_siriIntelligenceDonor = mEMORY[0x277D4A060];

    v10 = v2->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__SpotlightBookmarksDonationWriter_init__block_invoke;
    block[3] = &unk_2781D60B8;
    v11 = v2;
    v16 = v11;
    dispatch_async(v10, block);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v11 selector:sel__bookmarksWereChanged_ name:*MEMORY[0x277D7B608] object:0];
    [defaultCenter addObserver:v11 selector:sel__bookmarksWereChanged_ name:*MEMORY[0x277D7B640] object:0];
    [defaultCenter addObserver:v11 selector:sel__bookmarksWereChanged_ name:*MEMORY[0x277D7B618] object:0];
    [(SpotlightBookmarksDonationWriter *)v11 _scheduleBookmarksDonationAfterDelay:*MEMORY[0x277D4A260]];
    v13 = v11;
  }

  return v2;
}

- (void)donateAllBookmarks
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SpotlightBookmarksDonationWriter_donateAllBookmarks__block_invoke;
  block[3] = &unk_2781D60B8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __40__SpotlightBookmarksDonationWriter_init__block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x277D7B520] readonlySafariBookmarkCollectionConfiguration];
  [v5 setSkipsExternalNotifications:1];
  v2 = [objc_alloc(MEMORY[0x277D7B5A8]) initWithConfiguration:v5 checkIntegrity:0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(WBSDispatchSourceTimer *)self->_donationTimer invalidate];
  donationTimer = self->_donationTimer;
  self->_donationTimer = 0;

  v5.receiver = self;
  v5.super_class = SpotlightBookmarksDonationWriter;
  [(SpotlightBookmarksDonationWriter *)&v5 dealloc];
}

- (void)_scheduleBookmarksDonationAfterDelay:(double)delay
{
  objc_initWeak(&location, self);
  internalQueue = self->_internalQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__SpotlightBookmarksDonationWriter__scheduleBookmarksDonationAfterDelay___block_invoke;
  v6[3] = &unk_2781DBD20;
  v6[4] = self;
  v7[1] = *&delay;
  objc_copyWeak(v7, &location);
  dispatch_async(internalQueue, v6);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __73__SpotlightBookmarksDonationWriter__scheduleBookmarksDonationAfterDelay___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) invalidate];
  v2 = MEMORY[0x277D49F30];
  v3 = *(a1 + 48);
  v4 = *(*(a1 + 32) + 8);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__SpotlightBookmarksDonationWriter__scheduleBookmarksDonationAfterDelay___block_invoke_2;
  v8[3] = &unk_2781D6840;
  objc_copyWeak(&v9, (a1 + 40));
  v5 = [v2 scheduledTimerWithInterval:0 repeats:v4 queue:v8 handler:v3];
  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  *(v6 + 24) = v5;

  objc_destroyWeak(&v9);
}

void __73__SpotlightBookmarksDonationWriter__scheduleBookmarksDonationAfterDelay___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _donateBookmarksToCoreSpotlight];
}

- (void)_donateBookmarksToCoreSpotlight
{
  _bookmarksToDonate = [(SpotlightBookmarksDonationWriter *)self _bookmarksToDonate];
  [WBSSiriIntelligenceDonor donateSafariBookmarksToCoreSpotlight:"donateSafariBookmarksToCoreSpotlight:withCompletionHandler:" withCompletionHandler:?];
}

- (void)getBookmarksToDonateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__SpotlightBookmarksDonationWriter_getBookmarksToDonateWithCompletionHandler___block_invoke;
  v7[3] = &unk_2781D6EE0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(internalQueue, v7);
}

void __78__SpotlightBookmarksDonationWriter_getBookmarksToDonateWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _bookmarksToDonate];
  (*(*(a1 + 40) + 16))();
}

- (id)_bookmarksToDonate
{
  v17 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v4 = [(WebBookmarkCollection *)self->_bookmarkCollection listWithID:*MEMORY[0x277D7B510] skipOffset:0 includeHidden:1 includeDescendantsAsChildren:1 filteredUsingString:0];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  bookmarkArraySkippingDecodeSyncData = [v4 bookmarkArraySkippingDecodeSyncData];
  v6 = [bookmarkArraySkippingDecodeSyncData countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(bookmarkArraySkippingDecodeSyncData);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (([v9 isFolder] & 1) == 0)
        {
          [(SpotlightBookmarksDonationWriter *)self _addBookmark:v9 toBookmarksToDonate:array];
        }
      }

      v6 = [bookmarkArraySkippingDecodeSyncData countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [array copy];

  return v10;
}

- (void)_addBookmark:(id)bookmark toBookmarksToDonate:(id)donate
{
  bookmarkCopy = bookmark;
  donateCopy = donate;
  v6 = objc_alloc_init(MEMORY[0x277D4A068]);
  displayTitle = [bookmarkCopy displayTitle];
  [v6 setBookmarkTitle:displayTitle];

  address = [bookmarkCopy address];
  [v6 setBookmarkURLString:address];

  [v6 setIsReadingListItem:{objc_msgSend(bookmarkCopy, "isReadingListItem")}];
  uUID = [bookmarkCopy UUID];
  [v6 setUuidString:uUID];

  [donateCopy addObject:v6];
}

@end
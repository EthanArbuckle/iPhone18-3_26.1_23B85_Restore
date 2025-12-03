@interface ICNAMultiSceneSessionTracker
- (BOOL)hasLiveTimers;
- (BOOL)invalidated;
- (ICASSessionSummaryData)sessionSummaryData;
- (ICNAMultiSceneSessionTracker)init;
- (NSString)sessionDetailDescription;
- (int64_t)sessionDetailType;
- (void)endAllSessionsAndInvalidate;
- (void)endNotesSession;
- (void)endPaperSession;
- (void)startNotesSession;
- (void)startPaperSession;
@end

@implementation ICNAMultiSceneSessionTracker

- (ICNAMultiSceneSessionTracker)init
{
  v14[3] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = ICNAMultiSceneSessionTracker;
  v2 = [(ICNAMultiSceneSessionTracker *)&v12 init];
  if (v2)
  {
    v13[0] = @"notes";
    v3 = [[ICNASceneSessionTracker alloc] initWithSessionTypeEnum:2];
    v14[0] = v3;
    v13[1] = @"paper";
    v4 = [[ICNASceneSessionTracker alloc] initWithSessionTypeEnum:1];
    v14[1] = v4;
    v13[2] = @"notesAndPaper";
    v5 = [[ICNASceneSessionTracker alloc] initWithSessionTypeEnum:3];
    v14[2] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
    sceneSessionTrackers = v2->_sceneSessionTrackers;
    v2->_sceneSessionTrackers = v6;

    v8 = dispatch_queue_create("com.apple.notes.analytics.multiSceneSessionTracker", MEMORY[0x277D85CD8]);
    isolationQueue = v2->_isolationQueue;
    v2->_isolationQueue = v8;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)startNotesSession
{
  isolationQueue = [(ICNAMultiSceneSessionTracker *)self isolationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__ICNAMultiSceneSessionTracker_startNotesSession__block_invoke;
  block[3] = &unk_2799AF130;
  block[4] = self;
  dispatch_barrier_async(isolationQueue, block);
}

void __49__ICNAMultiSceneSessionTracker_startNotesSession__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isInvalidatedThreadUnsafe] & 1) == 0)
  {
    v2 = [*(a1 + 32) sceneSessionTrackers];
    v3 = [v2 objectForKeyedSubscript:@"notes"];
    [v3 startTimer];

    v4 = [*(a1 + 32) sceneSessionTrackers];
    v5 = [v4 objectForKeyedSubscript:@"paper"];
    v6 = [v5 timerIsOn];

    if (v6)
    {
      v8 = [*(a1 + 32) sceneSessionTrackers];
      v7 = [v8 objectForKeyedSubscript:@"notesAndPaper"];
      [v7 startTimer];
    }
  }
}

- (void)endNotesSession
{
  isolationQueue = [(ICNAMultiSceneSessionTracker *)self isolationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__ICNAMultiSceneSessionTracker_endNotesSession__block_invoke;
  block[3] = &unk_2799AF130;
  block[4] = self;
  dispatch_barrier_async(isolationQueue, block);
}

void __47__ICNAMultiSceneSessionTracker_endNotesSession__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isInvalidatedThreadUnsafe] & 1) == 0)
  {
    v2 = [*(a1 + 32) sceneSessionTrackers];
    v3 = [v2 objectForKeyedSubscript:@"notes"];
    [v3 endTimer];

    v5 = [*(a1 + 32) sceneSessionTrackers];
    v4 = [v5 objectForKeyedSubscript:@"notesAndPaper"];
    [v4 endTimer];
  }
}

- (void)startPaperSession
{
  isolationQueue = [(ICNAMultiSceneSessionTracker *)self isolationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__ICNAMultiSceneSessionTracker_startPaperSession__block_invoke;
  block[3] = &unk_2799AF130;
  block[4] = self;
  dispatch_barrier_async(isolationQueue, block);
}

void __49__ICNAMultiSceneSessionTracker_startPaperSession__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isInvalidatedThreadUnsafe] & 1) == 0)
  {
    v2 = [*(a1 + 32) sceneSessionTrackers];
    v3 = [v2 objectForKeyedSubscript:@"paper"];
    [v3 startTimer];

    v4 = [*(a1 + 32) sceneSessionTrackers];
    v5 = [v4 objectForKeyedSubscript:@"notes"];
    v6 = [v5 timerIsOn];

    if (v6)
    {
      v8 = [*(a1 + 32) sceneSessionTrackers];
      v7 = [v8 objectForKeyedSubscript:@"notesAndPaper"];
      [v7 startTimer];
    }
  }
}

- (void)endPaperSession
{
  isolationQueue = [(ICNAMultiSceneSessionTracker *)self isolationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__ICNAMultiSceneSessionTracker_endPaperSession__block_invoke;
  block[3] = &unk_2799AF130;
  block[4] = self;
  dispatch_barrier_async(isolationQueue, block);
}

void __47__ICNAMultiSceneSessionTracker_endPaperSession__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isInvalidatedThreadUnsafe] & 1) == 0)
  {
    v2 = [*(a1 + 32) sceneSessionTrackers];
    v3 = [v2 objectForKeyedSubscript:@"paper"];
    [v3 endTimer];

    v5 = [*(a1 + 32) sceneSessionTrackers];
    v4 = [v5 objectForKeyedSubscript:@"notesAndPaper"];
    [v4 endTimer];
  }
}

- (void)endAllSessionsAndInvalidate
{
  isolationQueue = [(ICNAMultiSceneSessionTracker *)self isolationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__ICNAMultiSceneSessionTracker_endAllSessionsAndInvalidate__block_invoke;
  block[3] = &unk_2799AF130;
  block[4] = self;
  dispatch_barrier_async(isolationQueue, block);
}

uint64_t __59__ICNAMultiSceneSessionTracker_endAllSessionsAndInvalidate__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) isInvalidatedThreadUnsafe];
  if ((result & 1) == 0)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [*(a1 + 32) sceneSessionTrackers];
    v4 = [v3 allValues];

    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

          [*(*(&v10 + 1) + 8 * v8++) endTimer];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    result = [*(a1 + 32) setInvalidated:1];
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (ICASSessionSummaryData)sessionSummaryData
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__3;
  v12 = __Block_byref_object_dispose__3;
  v13 = 0;
  isolationQueue = [(ICNAMultiSceneSessionTracker *)self isolationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__ICNAMultiSceneSessionTracker_sessionSummaryData__block_invoke;
  v7[3] = &unk_2799AF158;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(isolationQueue, v7);

  v4 = [ICASSessionSummaryData alloc];
  v5 = [(ICASSessionSummaryData *)v4 initWithSessionSummaryArray:v9[5]];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __50__ICNAMultiSceneSessionTracker_sessionSummaryData__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [*(a1 + 32) sceneSessionTrackers];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(*(a1 + 40) + 8) + 40);
        v12 = [*(*(&v14 + 1) + 8 * v10) sessionSummaryItemData];
        [v11 ic_addNonNilObject:v12];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasLiveTimers
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  isolationQueue = [(ICNAMultiSceneSessionTracker *)self isolationQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__ICNAMultiSceneSessionTracker_hasLiveTimers__block_invoke;
  v5[3] = &unk_2799AF480;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __45__ICNAMultiSceneSessionTracker_hasLiveTimers__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) isInvalidatedThreadUnsafe] & 1) == 0)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v2 = [*(a1 + 32) sceneSessionTrackers];
    v3 = [v2 allValues];

    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
LABEL_4:
      v7 = 0;
      while (1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        *(*(*(a1 + 40) + 8) + 24) |= [*(*(&v9 + 1) + 8 * v7) timerIsOn];
        if (*(*(*(a1 + 40) + 8) + 24))
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
          if (v5)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (int64_t)sessionDetailType
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  isolationQueue = [(ICNAMultiSceneSessionTracker *)self isolationQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__ICNAMultiSceneSessionTracker_sessionDetailType__block_invoke;
  v6[3] = &unk_2799AF480;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(isolationQueue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __49__ICNAMultiSceneSessionTracker_sessionDetailType__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isInvalidatedThreadUnsafe] & 1) == 0)
  {
    v2 = [*(a1 + 32) sceneSessionTrackers];
    v3 = [v2 objectForKeyedSubscript:@"notesAndPaper"];
    v4 = [v3 timerIsOn];

    if (v4)
    {
      v5 = 3;
    }

    else
    {
      v6 = [*(a1 + 32) sceneSessionTrackers];
      v7 = [v6 objectForKeyedSubscript:@"notes"];
      v8 = [v7 timerIsOn];

      if (v8)
      {
        v5 = 2;
      }

      else
      {
        v9 = [*(a1 + 32) sceneSessionTrackers];
        v10 = [v9 objectForKeyedSubscript:@"paper"];
        v11 = [v10 timerIsOn];

        if (!v11)
        {
          return;
        }

        v5 = 1;
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = v5;
  }
}

- (NSString)sessionDetailDescription
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = @"unknown";
  isolationQueue = [(ICNAMultiSceneSessionTracker *)self isolationQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__ICNAMultiSceneSessionTracker_sessionDetailDescription__block_invoke;
  v6[3] = &unk_2799AF480;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(isolationQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __56__ICNAMultiSceneSessionTracker_sessionDetailDescription__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isInvalidatedThreadUnsafe] & 1) == 0)
  {
    v2 = [*(a1 + 32) sceneSessionTrackers];
    v3 = @"notesAndPaper";
    v4 = [v2 objectForKeyedSubscript:@"notesAndPaper"];
    v5 = [v4 timerIsOn];

    if ((v5 & 1) == 0)
    {
      v6 = [*(a1 + 32) sceneSessionTrackers];
      v7 = [v6 objectForKeyedSubscript:@"notes"];
      v8 = [v7 timerIsOn];

      if (v8)
      {
        v3 = @"notes";
      }

      else
      {
        v9 = [*(a1 + 32) sceneSessionTrackers];
        v10 = [v9 objectForKeyedSubscript:@"paper"];
        v11 = [v10 timerIsOn];

        if (!v11)
        {
          return;
        }

        v3 = @"paper";
      }
    }

    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v3;
  }
}

- (BOOL)invalidated
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  isolationQueue = [(ICNAMultiSceneSessionTracker *)self isolationQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__ICNAMultiSceneSessionTracker_invalidated__block_invoke;
  v5[3] = &unk_2799AF158;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

@end
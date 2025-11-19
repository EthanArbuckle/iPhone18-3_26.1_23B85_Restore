@interface BBMuteExpirationManager
- (BBMuteExpirationManager)initWithQueue:(id)a3;
- (BBMuteExpirationManagerDelegate)delegate;
- (BOOL)cleanAndWatchExpirationsForSectionInfo:(id)a3;
- (BOOL)cleanAndWatchExpirationsForSectionInfo:(id)a3 currentDate:(id)a4;
- (id)scheduledExpirationDateForSectionID:(id)a3;
- (id)timerForSectionID:(id)a3;
- (unint64_t)numberOfTimers;
- (void)_cancelTimerForSectionID:(id)a3;
- (void)_queue_triggerDidFireForExpiryTimer:(id)a3;
- (void)dealloc;
@end

@implementation BBMuteExpirationManager

- (BBMuteExpirationManager)initWithQueue:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = BBMuteExpirationManager;
  v5 = [(BBMuteExpirationManager *)&v10 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.BulletinBoard.BBMuteExpirationManager.accessQueue", v6);
    [(BBMuteExpirationManager *)v5 setAccessQueue:v7];

    [(BBMuteExpirationManager *)v5 setQueue:v4];
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(BBMuteExpirationManager *)v5 setTimersBySectionID:v8];
  }

  return v5;
}

- (void)dealloc
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__BBMuteExpirationManager_dealloc__block_invoke;
  block[3] = &unk_278D2A600;
  block[4] = self;
  dispatch_sync(accessQueue, block);
  v4.receiver = self;
  v4.super_class = BBMuteExpirationManager;
  [(BBMuteExpirationManager *)&v4 dealloc];
}

void __34__BBMuteExpirationManager_dealloc__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) timersBySectionID];
  [v1 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_19];
}

- (BOOL)cleanAndWatchExpirationsForSectionInfo:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 now];
  LOBYTE(self) = [(BBMuteExpirationManager *)self cleanAndWatchExpirationsForSectionInfo:v5 currentDate:v6];

  return self;
}

- (BOOL)cleanAndWatchExpirationsForSectionInfo:(id)a3 currentDate:(id)a4
{
  v27[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v25 = 0;
  v7 = a4;
  v8 = [v6 muteAssertion];
  v24 = 0;
  [v8 getNextExpirationDate:&v24 wasPurged:&v25 currentDate:v7];

  v9 = v24;
  v10 = [v6 sectionID];
  if (v9 || ([v6 muteAssertion], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
  {
    v11 = v25;
  }

  else
  {
    [v6 setMuteAssertion:0];
    v11 = 1;
  }

  v13 = [(BBMuteExpirationManager *)self scheduledExpirationDateForSectionID:v10];
  if (v13 && v9)
  {
    if (([v9 isEqualToDate:v13] & 1) == 0)
    {
      [(BBMuteExpirationManager *)self _cancelTimerForSectionID:v10];
LABEL_10:
      v26[0] = @"sectionIDKey";
      v26[1] = @"scheduledExpirationDateKey";
      v27[0] = v10;
      v27[1] = v9;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
      v15 = [objc_alloc(MEMORY[0x277D3A180]) initWithFireDate:v9 serviceIdentifier:v10 target:self selector:sel__queue_triggerDidFireForExpiryTimer_ userInfo:v14];
      [v15 setMinimumEarlyFireProportion:1.0];
      [v15 setUserVisible:1];
      v16 = [(BBMuteExpirationManager *)self queue];
      [v15 scheduleInQueue:v16];

      v17 = [(BBMuteExpirationManager *)self accessQueue];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __78__BBMuteExpirationManager_cleanAndWatchExpirationsForSectionInfo_currentDate___block_invoke;
      v21[3] = &unk_278D2AB58;
      v21[4] = self;
      v22 = v15;
      v23 = v10;
      v18 = v15;
      dispatch_sync(v17, v21);
    }
  }

  else
  {
    [(BBMuteExpirationManager *)self _cancelTimerForSectionID:v10];
    if (v9)
    {
      goto LABEL_10;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

void __78__BBMuteExpirationManager_cleanAndWatchExpirationsForSectionInfo_currentDate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) timersBySectionID];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];
}

- (unint64_t)numberOfTimers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(BBMuteExpirationManager *)self accessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__BBMuteExpirationManager_numberOfTimers__block_invoke;
  v6[3] = &unk_278D2AC60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __41__BBMuteExpirationManager_numberOfTimers__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) timersBySectionID];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count];
}

- (id)timerForSectionID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__10;
  v16 = __Block_byref_object_dispose__10;
  v17 = 0;
  v5 = [(BBMuteExpirationManager *)self accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__BBMuteExpirationManager_timerForSectionID___block_invoke;
  block[3] = &unk_278D2A8D8;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __45__BBMuteExpirationManager_timerForSectionID___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) timersBySectionID];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)scheduledExpirationDateForSectionID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__10;
  v16 = __Block_byref_object_dispose__10;
  v17 = 0;
  v5 = [(BBMuteExpirationManager *)self accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__BBMuteExpirationManager_scheduledExpirationDateForSectionID___block_invoke;
  block[3] = &unk_278D2A8D8;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  v10 = v6;
  dispatch_sync(v5, block);

  v7 = [v13[5] valueForKey:@"scheduledExpirationDateKey"];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __63__BBMuteExpirationManager_scheduledExpirationDateForSectionID___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) timersBySectionID];
  v2 = [v6 valueForKey:*(a1 + 40)];
  v3 = [v2 userInfo];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)_cancelTimerForSectionID:(id)a3
{
  v4 = a3;
  v5 = [(BBMuteExpirationManager *)self accessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__BBMuteExpirationManager__cancelTimerForSectionID___block_invoke;
  v7[3] = &unk_278D2A628;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __52__BBMuteExpirationManager__cancelTimerForSectionID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) timersBySectionID];
  v5 = [v2 objectForKey:*(a1 + 40)];

  v3 = v5;
  if (v5)
  {
    [v5 invalidate];
    v4 = [*(a1 + 32) timersBySectionID];
    [v4 removeObjectForKey:*(a1 + 40)];

    v3 = v5;
  }
}

- (void)_queue_triggerDidFireForExpiryTimer:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  v5 = [v4 valueForKey:@"sectionIDKey"];

  v6 = BBLogSettings;
  if (os_log_type_enabled(BBLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = v5;
    _os_log_impl(&dword_241EFF000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Mute assertion expired", buf, 0xCu);
  }

  v7 = [(BBMuteExpirationManager *)self accessQueue];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __63__BBMuteExpirationManager__queue_triggerDidFireForExpiryTimer___block_invoke;
  v14 = &unk_278D2A628;
  v15 = self;
  v16 = v5;
  v8 = v5;
  dispatch_sync(v7, &v11);

  v9 = [(BBMuteExpirationManager *)self delegate:v11];
  [v9 didChangeMuteAssertionForSectionID:v8];

  v10 = *MEMORY[0x277D85DE8];
}

void __63__BBMuteExpirationManager__queue_triggerDidFireForExpiryTimer___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) timersBySectionID];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (BBMuteExpirationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
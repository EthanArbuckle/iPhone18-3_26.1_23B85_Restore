@interface BPSNotificationMuteSettingsManager
+ (id)sharedNotificationMuteSettingsManager;
- (BOOL)isMutedForTodaySectionIdentifier:(id)identifier;
- (BPSNotificationMuteSettingsManager)init;
- (id)mutedForTodaySectionIdentifiers;
- (void)_loadMutedSectionIdentifiers;
- (void)_queue_sync;
- (void)_updateObservers;
- (void)addSectionIdentifiers:(id)identifiers;
- (void)dealloc;
- (void)removeSectionIdentifiers:(id)identifiers;
@end

@implementation BPSNotificationMuteSettingsManager

+ (id)sharedNotificationMuteSettingsManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__BPSNotificationMuteSettingsManager_sharedNotificationMuteSettingsManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedNotificationMuteSettingsManager_onceToken != -1)
  {
    dispatch_once(&sharedNotificationMuteSettingsManager_onceToken, block);
  }

  v2 = sharedNotificationMuteSettingsManager___sharedNotificationMuteSettingsManager;

  return v2;
}

uint64_t __75__BPSNotificationMuteSettingsManager_sharedNotificationMuteSettingsManager__block_invoke(uint64_t a1)
{
  sharedNotificationMuteSettingsManager___sharedNotificationMuteSettingsManager = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (BPSNotificationMuteSettingsManager)init
{
  v9.receiver = self;
  v9.super_class = BPSNotificationMuteSettingsManager;
  v2 = [(BPSNotificationMuteSettingsManager *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D2BA60]);
    npsManager = v2->_npsManager;
    v2->_npsManager = v3;

    v5 = dispatch_queue_create("com.apple.Bridge.MuteSettingsManager", 0);
    queue = v2->_queue;
    v2->_queue = v5;

    [(BPSNotificationMuteSettingsManager *)v2 _loadMutedSectionIdentifiers];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, BPSMuteForTodaySectionIdentifiersChanged, @"BLTMuteForTodaySectionIdentifiersChangedNotification", 0, 1024);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"BLTMuteForTodaySectionIdentifiersChangedNotification", 0);
  v4.receiver = self;
  v4.super_class = BPSNotificationMuteSettingsManager;
  [(BPSNotificationMuteSettingsManager *)&v4 dealloc];
}

- (void)_updateObservers
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"BPSNotificationMuteSettingsMutedForTodayChangedNotification" object:0];
}

- (void)_loadMutedSectionIdentifiers
{
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__BPSNotificationMuteSettingsManager__loadMutedSectionIdentifiers__block_invoke;
  block[3] = &unk_278D23168;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __66__BPSNotificationMuteSettingsManager__loadMutedSectionIdentifiers__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  v5 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.nano"];
  v6 = [v5 synchronize];
  v7 = [v5 dictionaryForKey:@"MuteForTodaySectionIdentifiers"];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v12 componentsSeparatedByString:@"-"];
        v14 = objc_alloc_init(MEMORY[0x277CBEAB8]);
        v15 = [v13 objectAtIndexedSubscript:0];
        [v14 setDay:{objc_msgSend(v15, "integerValue")}];

        v16 = [v13 objectAtIndexedSubscript:1];
        [v14 setMonth:{objc_msgSend(v16, "integerValue")}];

        v17 = [v13 objectAtIndexedSubscript:2];
        [v14 setYear:{objc_msgSend(v17, "integerValue")}];

        v18 = [v7 objectForKeyedSubscript:v12];
        v19 = [MEMORY[0x277CBEB58] setWithArray:v18];
        [*(*(a1 + 32) + 8) setObject:v19 forKeyedSubscript:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }
}

- (void)_queue_sync
{
  v23 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v16 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.nano"];
  synchronize = [v16 synchronize];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_mutedSectionIdentifiersForDay;
  v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld-%ld-%ld", objc_msgSend(v9, "day"), objc_msgSend(v9, "month"), objc_msgSend(v9, "year")];
        v11 = [(NSMutableDictionary *)self->_mutedSectionIdentifiersForDay objectForKeyedSubscript:v9];
        allObjects = [v11 allObjects];

        [dictionary setObject:allObjects forKeyedSubscript:v10];
      }

      v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  if (![dictionary count])
  {

    dictionary = 0;
  }

  [v16 setObject:dictionary forKey:@"MuteForTodaySectionIdentifiers"];
  synchronize2 = [v16 synchronize];
  npsManager = self->_npsManager;
  v15 = [MEMORY[0x277CBEB98] setWithObjects:{@"MuteForTodaySectionIdentifiers", 0}];
  [(NPSManager *)npsManager synchronizeNanoDomain:@"com.apple.nano" keys:v15];
}

- (id)mutedForTodaySectionIdentifiers
{
  v3 = _BPSToday();
  v4 = [(NSMutableDictionary *)self->_mutedSectionIdentifiersForDay objectForKeyedSubscript:v3];

  return v4;
}

- (BOOL)isMutedForTodaySectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatch_assert_queue_not_V2(self->_queue);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__BPSNotificationMuteSettingsManager_isMutedForTodaySectionIdentifier___block_invoke;
  block[3] = &unk_278D23620;
  v9 = identifierCopy;
  v10 = &v11;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(queue, block);
  LOBYTE(identifierCopy) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return identifierCopy;
}

void __71__BPSNotificationMuteSettingsManager_isMutedForTodaySectionIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mutedForTodaySectionIdentifiers];
  *(*(*(a1 + 48) + 8) + 24) = [v2 containsObject:*(a1 + 40)];
}

- (void)addSectionIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    dispatch_assert_queue_not_V2(self->_queue);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__BPSNotificationMuteSettingsManager_addSectionIdentifiers___block_invoke;
    block[3] = &unk_278D23648;
    block[4] = self;
    v7 = identifiersCopy;
    v8 = &v9;
    dispatch_sync(queue, block);
    if (*(v10 + 24) == 1)
    {
      [(BPSNotificationMuteSettingsManager *)self _updateObservers];
    }

    _Block_object_dispose(&v9, 8);
  }
}

void __60__BPSNotificationMuteSettingsManager_addSectionIdentifiers___block_invoke(uint64_t a1)
{
  v9 = _BPSToday();
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:?];

  if (!v2)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    [*(*(a1 + 32) + 8) setObject:v3 forKeyedSubscript:v9];
  }

  v4 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v9];
  v5 = [v4 count];

  v6 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v9];
  [v6 unionSet:*(a1 + 40)];

  v7 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v9];
  v8 = [v7 count];

  if (v8 != v5)
  {
    [*(a1 + 32) _queue_sync];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (void)removeSectionIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__BPSNotificationMuteSettingsManager_removeSectionIdentifiers___block_invoke;
  v7[3] = &unk_278D23670;
  v7[4] = self;
  v8 = identifiersCopy;
  v6 = identifiersCopy;
  dispatch_sync(queue, v7);
}

void __63__BPSNotificationMuteSettingsManager_removeSectionIdentifiers___block_invoke(uint64_t a1)
{
  v7 = _BPSToday();
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v7];
  v3 = [v2 count];

  v4 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v7];
  [v4 minusSet:*(a1 + 40)];

  v5 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v7];
  v6 = [v5 count];

  if (v6 != v3)
  {
    [*(a1 + 32) _queue_sync];
  }
}

@end
@interface BLTSectionInfoObserver
- (BLTSectionInfoObserver)initWithSettingsGateway:(id)gateway;
- (BLTSectionInfoObserverDelegate)delegate;
- (id)sectionInfoForSectionID:(id)d;
- (void)_getUniversalSectionIDs:(id)ds sectionIDEnumerator:(id)enumerator completion:(id)completion;
- (void)_reloadSectionInfosWithCompletion:(id)completion;
- (void)_settingsGatewayReconnected:(id)reconnected;
- (void)dealloc;
- (void)observer:(id)observer noteServerConnectionStateChanged:(BOOL)changed;
- (void)observer:(id)observer removeSection:(id)section;
- (void)observer:(id)observer updateSectionInfo:(id)info;
- (void)reloadWithCompletion:(id)completion;
- (void)updateSectionInfoBySectionIDs:(id)ds completion:(id)completion;
@end

@implementation BLTSectionInfoObserver

- (BLTSectionInfoObserver)initWithSettingsGateway:(id)gateway
{
  gatewayCopy = gateway;
  v15.receiver = self;
  v15.super_class = BLTSectionInfoObserver;
  v6 = [(BLTSectionInfoObserver *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settingsGateway, gateway);
    if (v7->_settingsGateway)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v7 selector:sel__settingsGatewayReconnected_ name:@"BLTSettingsGatewayReconnected" object:v7->_settingsGateway];
    }

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.bulletindistributor.sectioninfoobserver", v9);
    queue = v7->_queue;
    v7->_queue = v10;

    v12 = [BLTBBObserver surrogateWithQueue:v7->_queue calloutQueue:v7->_queue];
    observer = v7->_observer;
    v7->_observer = v12;

    [(BBObserver *)v7->_observer setObserverFeed:513];
    [(BBObserver *)v7->_observer setDelegate:v7];
  }

  return v7;
}

- (void)dealloc
{
  [(BBObserver *)self->_observer invalidate];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = BLTSectionInfoObserver;
  [(BLTSectionInfoObserver *)&v4 dealloc];
}

- (void)_settingsGatewayReconnected:(id)reconnected
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__BLTSectionInfoObserver__settingsGatewayReconnected___block_invoke;
  block[3] = &unk_278D31428;
  block[4] = self;
  dispatch_async(queue, block);
}

void __54__BLTSectionInfoObserver__settingsGatewayReconnected___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  if (v1)
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.bulletindistributor.bbobserver" code:1 userInfo:0];
    (*(v1 + 16))(v1, 0, v2);
  }
}

- (void)observer:(id)observer noteServerConnectionStateChanged:(BOOL)changed
{
  if (!changed)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__BLTSectionInfoObserver_observer_noteServerConnectionStateChanged___block_invoke;
    block[3] = &unk_278D31428;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

void __68__BLTSectionInfoObserver_observer_noteServerConnectionStateChanged___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  if (v1)
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.bulletindistributor.bbobserver" code:1 userInfo:0];
    (*(v1 + 16))(v1, 0, v2);
  }
}

- (id)sectionInfoForSectionID:(id)d
{
  v3 = [(BBSettingsGateway *)self->_settingsGateway sectionInfoForSectionID:d];
  if (v3)
  {
    v4 = objc_alloc_init(BLTSectionInfoItem);
    [(BLTSectionInfoItem *)v4 setSectionInfo:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)reloadWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__BLTSectionInfoObserver_reloadWithCompletion___block_invoke;
  v6[3] = &unk_278D31FC8;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [(BLTSectionInfoObserver *)self _reloadSectionInfosWithCompletion:v6];
}

void __47__BLTSectionInfoObserver_reloadWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 16));
  if (v5 && [v5 code] == 1)
  {
    [*(a1 + 32) reloadWithCompletion:*(a1 + 40)];
  }

  else
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, v7);
    }
  }
}

- (void)_getUniversalSectionIDs:(id)ds sectionIDEnumerator:(id)enumerator completion:(id)completion
{
  dsCopy = ds;
  enumeratorCopy = enumerator;
  completionCopy = completion;
  nextObject = [enumeratorCopy nextObject];
  v12 = nextObject;
  if (nextObject)
  {
    observer = self->_observer;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __81__BLTSectionInfoObserver__getUniversalSectionIDs_sectionIDEnumerator_completion___block_invoke;
    v14[3] = &unk_278D31FF0;
    v15 = nextObject;
    v16 = dsCopy;
    selfCopy = self;
    v18 = enumeratorCopy;
    v19 = completionCopy;
    [(BBObserver *)observer getUniversalSectionIDForSectionID:v15 withCompletion:v14];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

void __81__BLTSectionInfoObserver__getUniversalSectionIDs_sectionIDEnumerator_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(BLTSectionInfoSectionIDs);
  [(BLTSectionInfoSectionIDs *)v4 setSectionID:*(a1 + 32)];
  [(BLTSectionInfoSectionIDs *)v4 setUniversalSectionID:v3];

  [*(a1 + 40) addObject:v4];
  [*(a1 + 48) _getUniversalSectionIDs:*(a1 + 40) sectionIDEnumerator:*(a1 + 56) completion:*(a1 + 64)];
}

- (void)updateSectionInfoBySectionIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  v8 = [BLTTransaction transactionWithDescription:@"BLTSectionInfoObserver updateSectionInfoBySectionIDs:completion:"];
  settingsGateway = self->_settingsGateway;
  if (!settingsGateway)
  {
    [BLTSectionInfoObserver updateSectionInfoBySectionIDs:completion:];
  }

  v10 = MEMORY[0x277CBEB98];
  allSectionIDs = [(BBSettingsGateway *)settingsGateway allSectionIDs];
  v12 = [v10 setWithArray:allSectionIDs];

  v13 = [dsCopy mutableCopy];
  v14 = [dsCopy isSubsetOfSet:v12];
  if ((v14 & 1) == 0)
  {
    v15 = [dsCopy mutableCopy];
    [v15 minusSet:v12];
    [v13 minusSet:v15];
    v16 = blt_settings_log();
    if (os_log_type_enabled(v16, 0x90u))
    {
      [BLTSectionInfoObserver updateSectionInfoBySectionIDs:v15 completion:v16];
    }
  }

  array = [MEMORY[0x277CBEB18] array];
  objectEnumerator = [v13 objectEnumerator];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __67__BLTSectionInfoObserver_updateSectionInfoBySectionIDs_completion___block_invoke;
  v20[3] = &unk_278D316C8;
  v20[4] = self;
  v21 = array;
  v22 = v8;
  v19 = array;
  [(BLTSectionInfoObserver *)self _getUniversalSectionIDs:v19 sectionIDEnumerator:objectEnumerator completion:v20];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v14 ^ 1u);
  }
}

void __67__BLTSectionInfoObserver_updateSectionInfoBySectionIDs_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 sectionInfoObserver:*(a1 + 32) updatedSectionInfoForSectionIDs:*(a1 + 40) transaction:*(a1 + 48)];
}

- (void)_reloadSectionInfosWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__BLTSectionInfoObserver__reloadSectionInfosWithCompletion___block_invoke;
  v7[3] = &unk_278D31980;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

void __60__BLTSectionInfoObserver__reloadSectionInfosWithCompletion___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v5 = *(*(a1 + 32) + 32);
  if (!v5)
  {
    __60__BLTSectionInfoObserver__reloadSectionInfosWithCompletion___block_invoke_cold_2();
  }

  v6 = [v5 allSectionIDs];
  v7 = blt_settings_log();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
      *buf = 138412290;
      v17 = v9;
      _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_DEFAULT, "Reloaded %@ section IDs", buf, 0xCu);
    }

    v10 = [MEMORY[0x277CBEB18] array];
    v11 = *(a1 + 32);
    v12 = [v6 objectEnumerator];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __60__BLTSectionInfoObserver__reloadSectionInfosWithCompletion___block_invoke_22;
    v14[3] = &unk_278D31400;
    v14[4] = *(a1 + 32);
    v15 = v10;
    v8 = v10;
    [v11 _getUniversalSectionIDs:v8 sectionIDEnumerator:v12 completion:v14];
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __60__BLTSectionInfoObserver__reloadSectionInfosWithCompletion___block_invoke_cold_1(v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __60__BLTSectionInfoObserver__reloadSectionInfosWithCompletion___block_invoke_22(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 40), 0);
    v3 = *(a1 + 32);
    v4 = *(v3 + 24);
    *(v3 + 24) = 0;
  }
}

- (void)observer:(id)observer updateSectionInfo:(id)info
{
  v23 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  infoCopy = info;
  v8 = [BLTTransaction transactionWithDescription:@"BLTSectionInfoObserver observer:updateSectionInfo:"];
  if (!self->_settingsGateway)
  {
    [BLTSectionInfoObserver observer:updateSectionInfo:];
  }

  v9 = v8;
  sectionID = [infoCopy sectionID];
  v11 = blt_settings_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = sectionID;
    _os_log_impl(&dword_241FB3000, v11, OS_LOG_TYPE_DEFAULT, "Received updated section info for %@", buf, 0xCu);
  }

  v12 = [(BBSettingsGateway *)self->_settingsGateway sectionInfoForSectionID:sectionID];

  if (v12)
  {
    sectionID2 = [v12 sectionID];
    observer = self->_observer;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __53__BLTSectionInfoObserver_observer_updateSectionInfo___block_invoke;
    v17[3] = &unk_278D32018;
    v18 = sectionID2;
    selfCopy = self;
    v20 = v9;
    v15 = sectionID2;
    [(BBObserver *)observer getUniversalSectionIDForSectionID:v15 withCompletion:v17];
  }

  else
  {
    v15 = blt_settings_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [BLTSectionInfoObserver observer:sectionID updateSectionInfo:v15];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __53__BLTSectionInfoObserver_observer_updateSectionInfo___block_invoke(void *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc_init(BLTSectionInfoSectionIDs);
  [(BLTSectionInfoSectionIDs *)v4 setSectionID:a1[4]];
  [(BLTSectionInfoSectionIDs *)v4 setUniversalSectionID:v3];

  v5 = blt_settings_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    *buf = 138412290;
    v13 = v6;
    _os_log_impl(&dword_241FB3000, v5, OS_LOG_TYPE_DEFAULT, "Loaded actual section info for %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1[5] + 40));
  v8 = a1[5];
  v11 = v4;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  [WeakRetained sectionInfoObserver:v8 updatedSectionInfoForSectionIDs:v9 transaction:a1[6]];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)observer:(id)observer removeSection:(id)section
{
  v17 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  v6 = [BLTTransaction transactionWithDescription:@"BLTSectionInfoObserver observer:updateSectionInfo:"];
  v7 = blt_settings_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = sectionCopy;
    _os_log_impl(&dword_241FB3000, v7, OS_LOG_TYPE_DEFAULT, "Received removeSection from BB for %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    observer = self->_observer;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __49__BLTSectionInfoObserver_observer_removeSection___block_invoke;
    v12[3] = &unk_278D32018;
    v12[4] = self;
    v13 = sectionCopy;
    v14 = v6;
    [(BBObserver *)observer getUniversalSectionIDForSectionID:v13 withCompletion:v12];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __49__BLTSectionInfoObserver_observer_removeSection___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 40));
  [WeakRetained sectionInfoObserver:a1[4] removedSectionWithSectionID:a1[5] transaction:a1[6]];
}

- (BLTSectionInfoObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateSectionInfoBySectionIDs:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_241FB3000, a2, 0x90u, "Asked to update section IDs that BulletinBoard does not know: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)observer:(uint64_t)a1 updateSectionInfo:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_241FB3000, a2, OS_LOG_TYPE_ERROR, "Retrieved nil sectionInfo from BB updated section info: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end
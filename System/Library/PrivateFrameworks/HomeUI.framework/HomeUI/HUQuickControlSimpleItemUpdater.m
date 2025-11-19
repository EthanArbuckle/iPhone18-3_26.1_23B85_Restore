@interface HUQuickControlSimpleItemUpdater
- (HUQuickControlItemHosting)itemHost;
- (HUQuickControlSimpleItemUpdater)init;
- (HUQuickControlSimpleItemUpdater)initWithItemHost:(id)a3;
- (void)_setExternalItemManagerUpdatesDisabled:(BOOL)a3;
- (void)itemManager:(id)a3 performUpdateRequest:(id)a4;
@end

@implementation HUQuickControlSimpleItemUpdater

- (HUQuickControlSimpleItemUpdater)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithItemHost_);
  [v4 handleFailureInMethod:a2 object:self file:@"HUQuickControlItemUpdating.m" lineNumber:19 description:{@"%s is unavailable; use %@ instead", "-[HUQuickControlSimpleItemUpdater init]", v5}];

  return 0;
}

- (HUQuickControlSimpleItemUpdater)initWithItemHost:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = HUQuickControlSimpleItemUpdater;
  v5 = [(HUQuickControlSimpleItemUpdater *)&v17 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_itemHost, v4);
    objc_initWeak(&location, v6);
    v7 = objc_alloc(MEMORY[0x277D14B08]);
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __52__HUQuickControlSimpleItemUpdater_initWithItemHost___block_invoke;
    v14 = &unk_277DC4D98;
    objc_copyWeak(&v15, &location);
    v8 = [v7 initWithDelegate:v6 itemProvidersCreator:&v11];
    itemManager = v6->_itemManager;
    v6->_itemManager = v8;

    [(HFSimpleItemManager *)v6->_itemManager setShouldDisableOptionalDataDuringFastInitialUpdate:0, v11, v12, v13, v14];
    [(HUQuickControlSimpleItemUpdater *)v6 _setExternalItemManagerUpdatesDisabled:1];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v6;
}

id __52__HUQuickControlSimpleItemUpdater_initWithItemHost___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D14B40]);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained itemHost];
  v5 = [v4 controlItems];
  v6 = [v2 initWithItems:v5];
  v9[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  return v7;
}

- (void)_setExternalItemManagerUpdatesDisabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(HUQuickControlSimpleItemUpdater *)self itemManager];
  v5 = v4;
  if (v3)
  {
    [v4 disableExternalUpdatesWithReason:@"HUQuickControlSimpleItemUpdater_NotVisible"];
  }

  else
  {
    [v4 endDisableExternalUpdatesWithReason:@"HUQuickControlSimpleItemUpdater_NotVisible"];
  }
}

- (void)itemManager:(id)a3 performUpdateRequest:(id)a4
{
  v5 = a4;
  v6 = [v5 changes];
  v7 = [v6 itemOperations];
  v10 = [v7 na_map:&__block_literal_global_297];

  v8 = [(HUQuickControlSimpleItemUpdater *)self itemHost];
  v9 = [MEMORY[0x277CBEB98] setWithArray:v10];
  [v8 quickControlItemUpdater:self didUpdateResultsForControlItems:v9];

  [v5 performWithOptions:1];
}

id __68__HUQuickControlSimpleItemUpdater_itemManager_performUpdateRequest___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 type] > 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 item];
  }

  return v3;
}

- (HUQuickControlItemHosting)itemHost
{
  WeakRetained = objc_loadWeakRetained(&self->_itemHost);

  return WeakRetained;
}

@end
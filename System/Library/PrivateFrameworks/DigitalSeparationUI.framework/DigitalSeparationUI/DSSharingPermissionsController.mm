@interface DSSharingPermissionsController
+ (void)initialize;
- (BOOL)isFindMyASource;
- (DSNavigationDelegate)delegate;
- (DSSharingPermissionsController)init;
- (id)personForIndexPath:(id)a3;
- (id)sharingTypeForIndexPath:(id)a3;
- (id)tableIconForPerson:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_fetchCompletedWithError:(id)a3;
- (void)_pushNextPane;
- (void)_updateButton;
- (void)_updateTitle;
- (void)addUnsharedPerson:(id)a3;
- (void)addUnsharedSource:(id)a3 resources:(id)a4;
- (void)fetchSharingPermissions;
- (void)filterContentForSearchText:(id)a3 category:(int64_t)a4;
- (void)postAnalytics;
- (void)presentFetchErrorMessage:(id)a3;
- (void)registerForNotifications;
- (void)reloadTableViewData;
- (void)requestNewFetchImmediately:(BOOL)a3;
- (void)reviewSelectedSharing;
- (void)reviewSelectedSharingFlowCompleted;
- (void)searchBar:(id)a3 selectedScopeButtonIndexDidChange:(int64_t)a4;
- (void)sharingStoppedForPerson:(id)a3 sourceNames:(id)a4;
- (void)sharingStoppedForType:(id)a3 people:(id)a4;
- (void)stopAllSharing;
- (void)stopSharingFailedWithError:(id)a3;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)unregisterForNotifications;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidLoad;
@end

@implementation DSSharingPermissionsController

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    DSLogSharingPermissions = os_log_create("com.apple.DigitalSeparation", "DSSharingPermissions");

    MEMORY[0x2821F96F8]();
  }
}

- (DSSharingPermissionsController)init
{
  v17.receiver = self;
  v17.super_class = DSSharingPermissionsController;
  v2 = [(DSTableWelcomeController *)&v17 initWithTitle:&stru_285BA4988 detailText:&stru_285BA4988 icon:0 adoptTableViewScrollView:1 shouldShowSearchBar:1];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D054B8]);
    [(DSSharingPermissionsController *)v2 setPermissions:v3];

    v4 = dispatch_queue_create("SharingPermissionsControllerWork", 0);
    [(DSSharingPermissionsController *)v2 setWorkQueue:v4];

    v5 = objc_alloc_init(MEMORY[0x277D054C8]);
    [(DSSharingPermissionsController *)v2 setRepo:v5];

    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    selectedPeople = v2->_selectedPeople;
    v2->_selectedPeople = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    selectedTypes = v2->_selectedTypes;
    v2->_selectedTypes = v8;

    v10 = [MEMORY[0x277CBEB38] dictionary];
    personIconCache = v2->_personIconCache;
    v2->_personIconCache = v10;

    v12 = DSUILocStringForKey(@"SKIP");
    v13 = [DSUIUtilities setUpBoldButtonForController:v2 title:v12 target:v2 selector:sel__pushNextPane];
    [(DSTableWelcomeController *)v2 setBoldButton:v13];

    v14 = DSUILocStringForKey(@"STOP_ALL_SHARING");
    v15 = [DSUIUtilities setUpLinkButtonForController:v2 title:v14 target:v2 selector:sel_stopAllSharing];
    [(DSTableWelcomeController *)v2 setLinkButton:v15];
  }

  return v2;
}

- (void)postAnalytics
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [(DSSharingPermissionsController *)self permissions];
  v3 = [v2 elapsedUnfinishedFetchesBySource];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v11 = MEMORY[0x277D85DD0];
        v12 = *(*(&v13 + 1) + 8 * i);
        v9 = v4;
        AnalyticsSendEventLazy();
      }

      v6 = [v9 countByEnumeratingWithState:&v13 objects:v17 count:{16, v11, 3221225472, __47__DSSharingPermissionsController_postAnalytics__block_invoke, &unk_278F751E0, v12}];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

id __47__DSSharingPermissionsController_postAnalytics__block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v7[0] = @"sourceName";
  v7[1] = @"elapsedTime";
  v8[0] = v2;
  v3 = [v1 objectForKeyedSubscript:?];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)registerForNotifications
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_setUrgentFetchNeeded name:*MEMORY[0x277D76758] object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel_didEnterBackground name:*MEMORY[0x277D76660] object:0];
}

- (void)unregisterForNotifications
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];
}

- (void)requestNewFetchImmediately:(BOOL)a3
{
  v4 = 0;
  atomic_compare_exchange_strong(&self->_fetchState, &v4, 1u);
  if (a3)
  {
    [(DSSharingPermissionsController *)self setFetchCompletedTime:0];
    [(DSSharingPermissionsController *)self setCachedFetchError:0];
  }

  [(DSSharingPermissionsController *)self fetchSharingPermissions];
}

- (void)viewDidLoad
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = DSSharingPermissionsController;
  [(DSTableWelcomeController *)&v12 viewDidLoad];
  v3 = DSUILocStringForKey(@"BY_PERSON");
  v13[0] = v3;
  v4 = DSUILocStringForKey(@"BY_TYPE");
  v13[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v6 = [(DSTableWelcomeController *)self searchController];
  v7 = [v6 searchBar];
  [v7 setScopeButtonTitles:v5];

  v8 = DSUILocStringForKey(@"SEARCH_SHARING_PEOPLE_PLACEHOLDER");
  v9 = [(DSTableWelcomeController *)self searchController];
  v10 = [v9 searchBar];
  [v10 setPlaceholder:v8];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)fetchSharingPermissions
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134349312;
  v5 = a1;
  v6 = 2050;
  v7 = a2;
  _os_log_fault_impl(&dword_248C7E000, log, OS_LOG_TYPE_FAULT, "mach_continuous_time walked backwards (now: %{public}llu, then: %{public}llu)", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void __57__DSSharingPermissionsController_fetchSharingPermissions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__DSSharingPermissionsController_fetchSharingPermissions__block_invoke_2;
  v5[3] = &unk_278F752A8;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __57__DSSharingPermissionsController_fetchSharingPermissions__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _fetchCompletedWithError:*(a1 + 32)];
}

- (void)_fetchCompletedWithError:(id)a3
{
  v6 = a3;
  atomic_store(0, &self->_fetchState);
  [(DSSharingPermissionsController *)self setFetchCompletedTime:clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW)];
  [(DSTableWelcomeController *)self stopContentSpinner];
  if (v6)
  {
    [(DSSharingPermissionsController *)self presentFetchErrorMessage:v6];
  }

  v4 = [(DSSharingPermissionsController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(DSSharingPermissionsController *)self permissions];
    [v4 setFetchedSharingPermissions:v5];
  }

  [(DSSharingPermissionsController *)self reloadTableViewData];
}

- (void)presentFetchErrorMessage:(id)a3
{
  v4 = a3;
  v5 = [(DSSharingPermissionsController *)self navigationController];
  v6 = [v5 visibleViewController];

  v7 = DSLogSharingPermissions;
  if (v6 == self)
  {
    if (os_log_type_enabled(DSLogSharingPermissions, OS_LOG_TYPE_ERROR))
    {
      [(DSSharingPermissionsController *)v4 presentFetchErrorMessage:v7];
    }

    v8 = [MEMORY[0x277D75110] ds_alertControllerWithFetchSharingError:v4];
    [(DSTableWelcomeController *)self presentErrorAlertController:v8];
  }

  else
  {
    if (os_log_type_enabled(DSLogSharingPermissions, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_248C7E000, v7, OS_LOG_TYPE_INFO, "Caching fetch error until we are the visible view controller", v9, 2u);
    }

    [(DSSharingPermissionsController *)self setCachedFetchError:v4];
  }
}

- (void)reloadTableViewData
{
  v3 = [(DSSharingPermissionsController *)self permissions];
  [v3 sort];

  v4 = [(DSSharingPermissionsController *)self permissions];
  -[DSTableWelcomeController setIsModelEmpty:](self, "setIsModelEmpty:", [v4 peopleCountWithFilter:0] == 0);

  v5 = [(OBTableWelcomeController *)self tableView];
  v6 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
  [v5 reloadSections:v6 withRowAnimation:100];

  v7 = [(OBTableWelcomeController *)self tableView];
  [v7 layoutIfNeeded];

  v8 = [(DSSharingPermissionsController *)self selectedPeople];
  v9 = MEMORY[0x277CBEB98];
  v10 = [(DSSharingPermissionsController *)self permissions];
  v11 = [v10 allPeople];
  v12 = [v9 setWithArray:v11];
  [v8 intersectSet:v12];

  v13 = [(DSSharingPermissionsController *)self selectedTypes];
  v14 = MEMORY[0x277CBEB98];
  v15 = [(DSSharingPermissionsController *)self permissions];
  v16 = [v15 allSharingTypes];
  v17 = [v14 setWithArray:v16];
  [v13 intersectSet:v17];

  [(DSSharingPermissionsController *)self _updateButton];
}

- (BOOL)isFindMyASource
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [(DSSharingPermissionsController *)self permissions];
  v3 = [v2 allSharingTypes];

  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    v7 = *MEMORY[0x277D05450];
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v15 + 1) + 8 * i) source];
        v10 = [v9 name];
        v11 = [v10 isEqualToString:v7];

        if (v11)
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)stopAllSharing
{
  v16[2] = *MEMORY[0x277D85DE8];
  v3 = DSUILocStringForKey(@"STOP_ALL_SHARING_CONFIRMATION");
  if ([(DSSharingPermissionsController *)self isFindMyASource])
  {
    v16[0] = v3;
    v4 = DSUILocStringForKey(@"FIND_MY_NOTIFICATION_WARNING");
    v16[1] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v6 = [v5 componentsJoinedByString:@" "];

    v3 = v6;
  }

  v7 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:v3 preferredStyle:0];
  v8 = MEMORY[0x277D750F8];
  v9 = DSUILocStringForKey(@"CANCEL");
  v10 = [v8 actionWithTitle:v9 style:1 handler:&__block_literal_global_2];

  v11 = MEMORY[0x277D750F8];
  v12 = DSUILocStringForKey(@"STOP_ALL_SHARING_BY_TYPE_ALERT_LABEL");
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__DSSharingPermissionsController_stopAllSharing__block_invoke_2;
  v15[3] = &unk_278F750A0;
  v15[4] = self;
  v13 = [v11 actionWithTitle:v12 style:2 handler:v15];

  [v7 addAction:v13];
  [v7 addAction:v10];
  [(DSSharingPermissionsController *)self presentViewController:v7 animated:1 completion:0];

  v14 = *MEMORY[0x277D85DE8];
}

void __48__DSSharingPermissionsController_stopAllSharing__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) buttonTray];
  [v4 showButtonsBusy];

  objc_initWeak(&location, *(a1 + 32));
  v5 = [*(a1 + 32) permissions];
  v6 = [*(a1 + 32) workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__DSSharingPermissionsController_stopAllSharing__block_invoke_3;
  v7[3] = &unk_278F750C8;
  objc_copyWeak(&v8, &location);
  v7[4] = *(a1 + 32);
  [v5 stopAllSharingOnQueue:v6 completion:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __48__DSSharingPermissionsController_stopAllSharing__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v28 = a3;
  v29 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained permissions];
  v32 = [v7 allPeople];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v8)
  {
    v9 = v8;
    v31 = *v44;
    do
    {
      v10 = 0;
      do
      {
        v11 = WeakRetained;
        if (*v44 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v43 + 1) + 8 * v10);
        v13 = [MEMORY[0x277CBEB58] set];
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v14 = v32;
        v15 = [v14 countByEnumeratingWithState:&v39 objects:v48 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v40;
          do
          {
            v18 = 0;
            do
            {
              if (*v40 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = [*(*(&v39 + 1) + 8 * v18) sharedResourcesForSourceName:v12];
              [v13 unionSet:v19];

              ++v18;
            }

            while (v16 != v18);
            v16 = [v14 countByEnumeratingWithState:&v39 objects:v48 count:16];
          }

          while (v16);
        }

        WeakRetained = v11;
        [v11 addUnsharedSource:v12 resources:v13];

        ++v10;
      }

      while (v10 != v9);
      v9 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v9);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v20 = v32;
  v21 = [v20 countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v36;
    do
    {
      v24 = 0;
      do
      {
        if (*v36 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v35 + 1) + 8 * v24) displayName];
        [WeakRetained addUnsharedPerson:v25];

        ++v24;
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v22);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__DSSharingPermissionsController_stopAllSharing__block_invoke_4;
  block[3] = &unk_278F752F8;
  block[4] = *(v29 + 32);
  block[5] = WeakRetained;
  v34 = v28;
  v26 = v28;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v27 = *MEMORY[0x277D85DE8];
}

void __48__DSSharingPermissionsController_stopAllSharing__block_invoke_4(id *a1)
{
  v2 = [a1[4] buttonTray];
  [v2 showButtonsAvailable];

  [a1[5] reloadTableViewData];
  if ([a1[6] count])
  {
    v4 = [MEMORY[0x277D05498] errorWithCode:2 underlyingErrors:a1[6]];
    [a1[5] stopSharingFailedWithError:v4];
  }

  else
  {
    v3 = a1[5];

    [v3 _pushNextPane];
  }
}

- (void)reviewSelectedSharing
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [(OBTableWelcomeController *)self tableView];
  v4 = [v3 indexPathsForSelectedRows];
  v5 = [v4 sortedArrayUsingComparator:&__block_literal_global_384];

  v6 = [(DSTableWelcomeController *)self searchController];
  v7 = [v6 searchBar];
  v8 = [v7 selectedScopeButtonIndex];

  v9 = [MEMORY[0x277CBEB18] array];
  v10 = [MEMORY[0x277CBEB18] array];
  if (v8 == 1)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v18 = v5;
    v19 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v28;
      do
      {
        v22 = 0;
        do
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [(DSSharingPermissionsController *)self sharingTypeForIndexPath:*(*(&v27 + 1) + 8 * v22), v27];
          if (v23)
          {
            [v10 addObject:v23];
          }

          ++v22;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v20);
    }

    if ([v10 count])
    {
      v17 = [DSSharingPermissionsDetailController detailControllerWithSharingTypes:v10 startingViewController:self delegate:self];
      goto LABEL_25;
    }
  }

  else if (!v8)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = v5;
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v32;
      do
      {
        v15 = 0;
        do
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [(DSSharingPermissionsController *)self personForIndexPath:*(*(&v31 + 1) + 8 * v15)];
          if (v16)
          {
            [v9 addObject:v16];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v13);
    }

    if ([v9 count])
    {
      v17 = [DSSharingPermissionsDetailController detailControllerWithPeople:v9 startingViewController:self delegate:self];
LABEL_25:
      v24 = v17;
      v25 = [(DSSharingPermissionsController *)self navigationController];
      [v25 pushViewController:v24 animated:1];
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t __55__DSSharingPermissionsController_reviewSelectedSharing__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 row];
  if (v6 >= [v5 row])
  {
    v8 = [v4 row];
    v7 = v8 > [v5 row];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (id)personForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(DSSharingPermissionsController *)self permissions];
  v6 = [v4 row];

  v7 = [v5 person:v6 withFilter:{-[DSTableWelcomeController isFiltering](self, "isFiltering")}];

  return v7;
}

- (id)sharingTypeForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(DSSharingPermissionsController *)self permissions];
  v6 = [v4 row];

  v7 = [v5 sharingType:v6 withFilter:{-[DSTableWelcomeController isFiltering](self, "isFiltering")}];

  return v7;
}

- (id)tableIconForPerson:(id)a3
{
  v4 = a3;
  v5 = [v4 contact];
  v6 = [v5 identifier];

  if (v6)
  {
    v7 = [(DSSharingPermissionsController *)self personIconCache];
    v8 = [v7 objectForKeyedSubscript:v6];

    if (!v8)
    {
      v8 = [v4 iconForTable];
      v9 = [(DSSharingPermissionsController *)self personIconCache];
      [v9 setObject:v8 forKeyedSubscript:v6];
    }

    v10 = v8;
  }

  else
  {
    v10 = [v4 iconForTable];
  }

  return v10;
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v7 = [a3 searchBar];
  v4 = [v7 text];
  v5 = [(DSTableWelcomeController *)self searchController];
  v6 = [v5 searchBar];
  -[DSSharingPermissionsController filterContentForSearchText:category:](self, "filterContentForSearchText:category:", v4, [v6 selectedScopeButtonIndex]);
}

- (void)searchBar:(id)a3 selectedScopeButtonIndexDidChange:(int64_t)a4
{
  v20 = a3;
  if (!a4)
  {
    v6 = @"SEARCH_SHARING_PEOPLE_PLACEHOLDER";
    v7 = @"SHARING_PERMISSIONS_PEOPLE";
    v8 = @"SHARING_PERMISSIONS_BY_PEOPLE_DETAIL";
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    v6 = @"SEARCH_SHARING_INFORMATION_PLACEHOLDER";
    v7 = @"SHARING_PERMISSIONS_INFORMATION";
    v8 = @"SHARING_PERMISSIONS_BY_TYPE_DETAIL";
LABEL_5:
    v9 = DSUILocStringForKey(v8);
    v10 = DSUILocStringForKey(v7);
    v11 = DSUILocStringForKey(v6);
    v12 = [(DSTableWelcomeController *)self searchController];
    v13 = [v12 searchBar];
    [v13 setPlaceholder:v11];

    goto LABEL_7;
  }

  v10 = 0;
  v9 = 0;
LABEL_7:
  v14 = [(DSSharingPermissionsController *)self headerView];
  [v14 setTitle:v10];

  v15 = [(DSSharingPermissionsController *)self headerView];
  [v15 setDetailText:v9];

  v16 = [(DSTableWelcomeController *)self searchController];
  v17 = [v16 searchBar];
  v18 = [v17 text];
  [(DSSharingPermissionsController *)self filterContentForSearchText:v18 category:a4];

  v19 = [(OBTableWelcomeController *)self tableView];
  [v19 layoutIfNeeded];
}

- (void)filterContentForSearchText:(id)a3 category:(int64_t)a4
{
  v21[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (a4 == 1)
  {
    v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"displayName contains[c] %@", v6];
    v7 = [(DSSharingPermissionsController *)self permissions];
    [v7 filterSharingTypesWithPredicate:v12];
LABEL_5:

    if (v12)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  if (!a4)
  {
    v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"displayName contains[c] %@", v6];
    v8 = MEMORY[0x277CCAC30];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __70__DSSharingPermissionsController_filterContentForSearchText_category___block_invoke;
    v19[3] = &unk_278F75340;
    v20 = v6;
    v9 = [v8 predicateWithBlock:v19];
    v10 = MEMORY[0x277CCA920];
    v21[0] = v7;
    v21[1] = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    v12 = [v10 orPredicateWithSubpredicates:v11];

    v13 = [(DSSharingPermissionsController *)self permissions];
    [v13 filterPeopleWithPredicate:v12];

    goto LABEL_5;
  }

LABEL_6:
  v14 = DSLogSharingPermissions;
  if (os_log_type_enabled(DSLogSharingPermissions, OS_LOG_TYPE_FAULT))
  {
    [DSSharingPermissionsController filterContentForSearchText:a4 category:v14];
  }

  v12 = 0;
LABEL_9:
  v15 = [(DSSharingPermissionsController *)self headerView];
  [v15 setTitle:&stru_285BA4988];

  v16 = [(DSSharingPermissionsController *)self headerView];
  [v16 setDetailText:&stru_285BA4988];

  v17 = [(OBTableWelcomeController *)self tableView];
  [v17 reloadData];

  [(DSSharingPermissionsController *)self _updateButton];
  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __70__DSSharingPermissionsController_filterContentForSearchText_category___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 contact];
  v5 = [v4 phoneticGivenName];
  if ([v5 localizedCaseInsensitiveContainsString:*(a1 + 32)])
  {
    v6 = 1;
  }

  else
  {
    v7 = [v3 contact];
    v8 = [v7 phoneticMiddleName];
    if ([v8 localizedCaseInsensitiveContainsString:*(a1 + 32)])
    {
      v6 = 1;
    }

    else
    {
      v9 = [v3 contact];
      v10 = [v9 phoneticFamilyName];
      v6 = [v10 localizedCaseInsensitiveContainsString:*(a1 + 32)];
    }
  }

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(DSTableWelcomeController *)self searchController];
  v7 = [v6 searchBar];
  v8 = [v7 selectedScopeButtonIndex];

  if (v8 == 1)
  {
    v9 = [(DSSharingPermissionsController *)self sharingTypeForIndexPath:v5];
    v10 = [v9 displayName];
    v11 = [v9 localizedDetailText];
    v12 = [v9 iconForTable];
    v16 = [(DSSharingPermissionsController *)self selectedTypes];
    v17 = [v16 containsObject:v9];

    if (!v17)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (!v8)
  {
    v9 = [(DSSharingPermissionsController *)self personForIndexPath:v5];
    v10 = [v9 displayName];
    v11 = [v9 localizedDetail];
    v12 = [(DSSharingPermissionsController *)self tableIconForPerson:v9];
    v13 = [(DSSharingPermissionsController *)self selectedPeople];
    v14 = [v13 containsObject:v9];

    if ((v14 & 1) == 0)
    {
LABEL_5:

      goto LABEL_9;
    }

LABEL_4:
    v15 = [(OBTableWelcomeController *)self tableView];
    [v15 selectRowAtIndexPath:v5 animated:1 scrollPosition:0];

    goto LABEL_5;
  }

  v12 = 0;
  v11 = 0;
  v10 = 0;
LABEL_9:
  v18 = [(OBTableWelcomeController *)self tableView];
  v19 = [DSIconTableViewCell iconTableViewCellFromTableView:v18 withText:v10 detail:v11 icon:v12];

  [v19 setAccessoryType:0];

  return v19;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = atomic_load(&self->_fetchState);
  if (v6 - 1 < 2)
  {
    goto LABEL_13;
  }

  v7 = [(DSTableWelcomeController *)self searchController];
  v8 = [v7 searchBar];
  v9 = [v8 selectedScopeButtonIndex];

  if (v9 == 1)
  {
    v10 = [(DSSharingPermissionsController *)self permissions];
    v11 = [v10 sharingTypesCountWithFilter:{-[DSTableWelcomeController isFiltering](self, "isFiltering")}];
    goto LABEL_6;
  }

  if (!v9)
  {
    v10 = [(DSSharingPermissionsController *)self permissions];
    v11 = [v10 peopleCountWithFilter:{-[DSTableWelcomeController isFiltering](self, "isFiltering")}];
LABEL_6:
    v12 = v11;

    if ([(DSTableWelcomeController *)self isFiltering])
    {
      if (v12)
      {
        [(DSTableWelcomeController *)self hideNoResultsView];
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    if (v12)
    {
      [(DSTableWelcomeController *)self hideNoSharingView];
      [(DSTableWelcomeController *)self setIsModelEmpty:0];
      [(DSSharingPermissionsController *)self _updateTitle];
      [(DSSharingPermissionsController *)self _updateButton];
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if ([(DSTableWelcomeController *)self isFiltering])
  {
LABEL_12:
    v13 = [(DSTableWelcomeController *)self searchController];
    v14 = [v13 searchBar];
    v15 = [v14 text];
    [(DSTableWelcomeController *)self showNoResultsViewWithSearchText:v15];

LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

LABEL_15:
  v40 = v5;
  v18 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v19 = [(DSSharingPermissionsController *)self cachedFetchError];
  v20 = [v19 ds_localizedAppNames];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = self;
  v21 = [(DSSharingPermissionsController *)self repo];
  v22 = [v21 sources];

  v23 = [v22 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v42;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v42 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = MEMORY[0x277D054C0];
        v28 = [*(*(&v41 + 1) + 8 * i) name];
        v29 = [v27 sourceDescriptorForSource:v28];
        v30 = [v29 localizedAppName];

        if ([v20 containsObject:v30])
        {
          v31 = DSLogSharingPermissions;
          if (os_log_type_enabled(DSLogSharingPermissions, OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            v46 = v30;
            v47 = 2112;
            v48 = v20;
            _os_log_impl(&dword_248C7E000, v31, OS_LOG_TYPE_INFO, "Excluding %{public}@ from the no sharing copy because of source errors %@", buf, 0x16u);
          }
        }

        else
        {
          [v18 addObject:v30];
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v24);
  }

  v32 = MEMORY[0x277CCAAF0];
  v33 = [v18 allObjects];
  v34 = [v32 localizedStringByJoiningStrings:v33];

  v35 = MEMORY[0x277CCACA8];
  v36 = DSUILocStringForKey(@"NO_SHARING_INFORMATION");
  v37 = [v35 localizedStringWithFormat:v36, v34];

  v38 = [MEMORY[0x277D755B8] systemImageNamed:@"person.3.fill"];
  [(DSTableWelcomeController *)v39 showNoSharingViewWithText:v37 image:v38];

  [(DSTableWelcomeController *)v39 setIsModelEmpty:1];
  [(DSSharingPermissionsController *)v39 _updateButton];

  v12 = 0;
  v5 = v40;
LABEL_14:

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v11 = a4;
  v5 = [(DSTableWelcomeController *)self searchController];
  v6 = [v5 searchBar];
  v7 = [v6 selectedScopeButtonIndex];

  if (v7 == 1)
  {
    v8 = [(DSSharingPermissionsController *)self selectedTypes];
    v9 = [(DSSharingPermissionsController *)self sharingTypeForIndexPath:v11];
  }

  else
  {
    if (v7)
    {
      goto LABEL_6;
    }

    v8 = [(DSSharingPermissionsController *)self selectedPeople];
    v9 = [(DSSharingPermissionsController *)self personForIndexPath:v11];
  }

  v10 = v9;
  [v8 addObject:v9];

LABEL_6:
  [(DSSharingPermissionsController *)self _updateButton];
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  v11 = a4;
  v5 = [(DSTableWelcomeController *)self searchController];
  v6 = [v5 searchBar];
  v7 = [v6 selectedScopeButtonIndex];

  if (v7 == 1)
  {
    v8 = [(DSSharingPermissionsController *)self selectedTypes];
    v9 = [(DSSharingPermissionsController *)self sharingTypeForIndexPath:v11];
  }

  else
  {
    if (v7)
    {
      goto LABEL_6;
    }

    v8 = [(DSSharingPermissionsController *)self selectedPeople];
    v9 = [(DSSharingPermissionsController *)self personForIndexPath:v11];
  }

  v10 = v9;
  [v8 removeObject:v9];

LABEL_6:
  [(DSSharingPermissionsController *)self _updateButton];
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if (![(DSTableWelcomeController *)self isKeyboardActive]&& ![(DSTableWelcomeController *)self isFiltering]|| [(DSTableWelcomeController *)self isShowingNoResultsView])
  {
    v15.receiver = self;
    v15.super_class = DSSharingPermissionsController;
    v7 = [(DSTableWelcomeController *)&v15 tableView:v6 viewForHeaderInSection:a4];
    goto LABEL_12;
  }

  v8 = [(DSTableWelcomeController *)self searchController];
  v9 = [v8 searchBar];
  v10 = [v9 selectedScopeButtonIndex];

  if (v10)
  {
    if (v10 != 1)
    {
      v12 = &stru_285BA4988;
      goto LABEL_11;
    }

    v11 = @"SEARCH_SHARING_TITLE_INFORMATION";
  }

  else
  {
    v11 = @"SEARCH_SHARING_TITLE_PEOPLE";
  }

  v12 = DSUILocStringForKey(v11);
LABEL_11:
  v7 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:@"header"];
  v13 = [v7 defaultContentConfiguration];
  [v13 setText:v12];
  [v7 setContentConfiguration:v13];

LABEL_12:

  return v7;
}

- (void)_updateTitle
{
  v3 = [(DSTableWelcomeController *)self searchController];
  v4 = [v3 searchBar];
  v5 = [v4 selectedScopeButtonIndex];

  if (v5)
  {
    if (v5 != 1)
    {
      return;
    }

    v6 = @"SHARING_PERMISSIONS_BY_TYPE_DETAIL";
    v7 = @"SHARING_PERMISSIONS_INFORMATION";
  }

  else
  {
    v6 = @"SHARING_PERMISSIONS_BY_PEOPLE_DETAIL";
    v7 = @"SHARING_PERMISSIONS_PEOPLE";
  }

  v8 = [(DSSharingPermissionsController *)self headerView];
  v9 = DSUILocStringForKey(v7);
  [v8 setTitle:v9];

  v11 = [(DSSharingPermissionsController *)self headerView];
  v10 = DSUILocStringForKey(v6);
  [v11 setDetailText:v10];
}

- (void)_pushNextPane
{
  v3 = [(DSSharingPermissionsController *)self delegate];
  [v3 pushNextPane];

  v4 = [(DSTableWelcomeController *)self searchController];
  [v4 setActive:0];
}

- (void)_updateButton
{
  v3 = [(DSTableWelcomeController *)self searchController];
  v4 = [v3 searchBar];
  v5 = [v4 selectedScopeButtonIndex];

  if (v5)
  {
    [(DSSharingPermissionsController *)self selectedTypes];
  }

  else
  {
    [(DSSharingPermissionsController *)self selectedPeople];
  }
  v6 = ;
  v7 = [v6 count];

  v8 = [(DSTableWelcomeController *)self boldButton];
  [v8 removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];

  if (v7)
  {
    v9 = [(DSTableWelcomeController *)self boldButton];
    v10 = DSUILocStringForKey(@"REVIEW_SHARING");
    [v9 setTitle:v10 forState:0];

    v11 = [(DSTableWelcomeController *)self boldButton];
    [v11 addTarget:self action:sel_reviewSelectedSharing forControlEvents:64];
  }

  else
  {
    if ([(DSTableWelcomeController *)self isModelEmpty])
    {
      v12 = @"CONTINUE";
    }

    else
    {
      v12 = @"SKIP";
    }

    v11 = DSUILocStringForKey(v12);
    v13 = [(DSTableWelcomeController *)self boldButton];
    [v13 setTitle:v11 forState:0];

    v14 = [(DSTableWelcomeController *)self boldButton];
    [v14 addTarget:self action:sel__pushNextPane forControlEvents:64];
  }

  [(DSTableWelcomeController *)self hideButtonsIfSearching];
}

- (void)sharingStoppedForPerson:(id)a3 sourceNames:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v25;
    *&v11 = 138543362;
    v23 = v11;
    do
    {
      v14 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v24 + 1) + 8 * v14);
        v16 = [(DSSharingPermissionsController *)self repo:v23];
        v17 = [v16 objectForKeyedSubscript:v15];

        if (v17)
        {
          [v8 addObject:v17];
          v18 = [v6 sharedResourcesForSourceName:v15];
          [(DSSharingPermissionsController *)self addUnsharedSource:v15 resources:v18];
        }

        else
        {
          v19 = DSLogSharingPermissions;
          if (os_log_type_enabled(DSLogSharingPermissions, OS_LOG_TYPE_FAULT))
          {
            *buf = v23;
            v29 = v15;
            _os_log_fault_impl(&dword_248C7E000, v19, OS_LOG_TYPE_FAULT, "Failed to find source named %{public}@", buf, 0xCu);
          }
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v12);
  }

  v20 = [v6 displayName];
  [(DSSharingPermissionsController *)self addUnsharedPerson:v20];

  v21 = [(DSSharingPermissionsController *)self permissions];
  [v21 removePerson:v6 sources:v8];

  [(DSSharingPermissionsController *)self reloadTableViewData];
  v22 = *MEMORY[0x277D85DE8];
}

- (void)sharingStoppedForType:(id)a3 people:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(DSSharingPermissionsController *)self permissions];
  [v8 removeSharingType:v6 people:v7];

  v9 = [MEMORY[0x277CBEB58] set];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v7;
  v10 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      v13 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v23 + 1) + 8 * v13);
        v15 = [v6 source];
        v16 = [v15 name];
        v17 = [v14 sharedResourcesForSourceName:v16];
        [v9 unionSet:v17];

        v18 = [v14 displayName];
        [(DSSharingPermissionsController *)self addUnsharedPerson:v18];

        ++v13;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  v19 = [v6 source];
  v20 = [v19 name];
  [(DSSharingPermissionsController *)self addUnsharedSource:v20 resources:v9];

  [(DSSharingPermissionsController *)self reloadTableViewData];
  v21 = *MEMORY[0x277D85DE8];
}

- (void)stopSharingFailedWithError:(id)a3
{
  v4 = [MEMORY[0x277D75110] ds_alertControllerWithStopSharingError:a3];
  [(DSTableWelcomeController *)self presentErrorAlertController:v4];
}

- (void)reviewSelectedSharingFlowCompleted
{
  v34 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = [(OBTableWelcomeController *)self tableView];
  v4 = [v3 indexPathsForSelectedRows];

  v5 = [v4 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    do
    {
      v8 = 0;
      do
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v28 + 1) + 8 * v8);
        v10 = [(OBTableWelcomeController *)self tableView];
        [v10 deselectRowAtIndexPath:v9 animated:0];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v6);
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [(DSSharingPermissionsController *)self setSelectedPeople:v11];

  v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [(DSSharingPermissionsController *)self setSelectedTypes:v12];

  v13 = [(DSSharingPermissionsController *)self delegate];
  [v13 pushPaneAfterPaneType:objc_opt_class()];

  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = [(DSSharingPermissionsController *)self navigationController];
  v16 = [v15 viewControllers];

  v17 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      v20 = 0;
      do
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v24 + 1) + 8 * v20);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [v14 addObject:v21];
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v18);
  }

  v22 = [(DSSharingPermissionsController *)self navigationController];
  [v22 setViewControllers:v14];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)addUnsharedSource:(id)a3 resources:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DSSharingPermissionsController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 unsharedResourcesBySource];
    [v9 setObject:v7 forKeyedSubscript:v6];
  }

  v11 = v6;
  v10 = v6;
  AnalyticsSendEventLazy();
}

id __62__DSSharingPermissionsController_addUnsharedSource_resources___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = @"source";
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)addUnsharedPerson:(id)a3
{
  v6 = a3;
  v4 = [(DSSharingPermissionsController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 unsharedPeople];
    [v5 addObject:v6];
  }
}

- (DSNavigationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)presentFetchErrorMessage:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_248C7E000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch permissions because %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)filterContentForSearchText:(uint64_t)a1 category:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134349056;
  v4 = a1;
  _os_log_fault_impl(&dword_248C7E000, a2, OS_LOG_TYPE_FAULT, "Failed to find a predicate for search scope %{public}ld", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end
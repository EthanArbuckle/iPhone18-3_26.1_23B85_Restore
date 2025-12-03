@interface WDClinicalProviderDetailsViewController
- (NSLayoutConstraint)noContentBottomConstraint;
- (NSLayoutConstraint)noContentTopConstraint;
- (WDClinicalProviderDetailsViewController)initWithProfile:(id)profile provider:(id)provider;
- (WDClinicalProviderDetailsViewController)initWithProfile:(id)profile searchResult:(id)result;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_createNoContentParentView;
- (id)_createSpinnerView;
- (id)_filterGatewaysForDisplay:(id)display;
- (id)_gatewayAtIndexPath:(id)path;
- (id)_initWithProfile:(id)profile;
- (id)_orderGatewaysForDisplay:(id)display;
- (id)latestSupportedVersionOfGateway:(id)gateway fromGateways:(id)gateways;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_computeSections;
- (void)_computeSectionsWithGateways:(id)gateways connectedGateways:(id)connectedGateways;
- (void)_fetchDetailsForSearchResult:(id)result;
- (void)_handleTapForActivateGateway:(id)gateway;
- (void)_hideSpinnerView;
- (void)_presentError:(id)error;
- (void)_presentUnavailableAlertForGatewayTitle:(id)title;
- (void)_showNoContentView:(id)view;
- (void)_showSpinnerView;
- (void)_updateNoContentViewConstraints;
- (void)clearLoginBusyIndicator;
- (void)clinicalOnboardingGatewayCell:(id)cell didTapConnectWithGateway:(id)gateway dataProvider:(id)provider;
- (void)scrollViewDidChangeAdjustedContentInset:(id)inset;
- (void)setProvider:(id)provider;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WDClinicalProviderDetailsViewController

- (id)_initWithProfile:(id)profile
{
  profileCopy = profile;
  v5 = [(WDClinicalProviderDetailsViewController *)self initWithStyle:2];
  v6 = v5;
  if (v5)
  {
    [(WDClinicalProviderDetailsViewController *)v5 setProfile:profileCopy];
    v7 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    [(WDClinicalProviderDetailsViewController *)v6 setProviderCache:v7];

    v8 = objc_alloc(MEMORY[0x1E69A3F68]);
    profile = [(WDClinicalProviderDetailsViewController *)v6 profile];
    healthStore = [profile healthStore];
    v11 = [v8 initWithHealthStore:healthStore];
    providerServiceStore = v6->_providerServiceStore;
    v6->_providerServiceStore = v11;
  }

  return v6;
}

- (WDClinicalProviderDetailsViewController)initWithProfile:(id)profile searchResult:(id)result
{
  resultCopy = result;
  v7 = [(WDClinicalProviderDetailsViewController *)self _initWithProfile:profile];
  v8 = v7;
  if (v7)
  {
    [(WDClinicalProviderDetailsViewController *)v7 setSearchResult:resultCopy];
  }

  return v8;
}

- (WDClinicalProviderDetailsViewController)initWithProfile:(id)profile provider:(id)provider
{
  providerCopy = provider;
  v7 = [(WDClinicalProviderDetailsViewController *)self _initWithProfile:profile];
  v8 = v7;
  if (v7)
  {
    [(WDClinicalProviderDetailsViewController *)v7 setProvider:providerCopy];
  }

  return v8;
}

- (void)viewDidLoad
{
  v23.receiver = self;
  v23.super_class = WDClinicalProviderDetailsViewController;
  [(HKTableViewController *)&v23 viewDidLoad];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  tableView = [(WDClinicalProviderDetailsViewController *)self tableView];
  [tableView setBackgroundColor:systemBackgroundColor];

  v5 = *MEMORY[0x1E69DE3D0];
  tableView2 = [(WDClinicalProviderDetailsViewController *)self tableView];
  [tableView2 setRowHeight:v5];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  tableView3 = [(WDClinicalProviderDetailsViewController *)self tableView];
  [tableView3 setSeparatorColor:clearColor];

  navigationController = [(WDClinicalProviderDetailsViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setPrefersLargeTitles:0];

  tableView4 = [(WDClinicalProviderDetailsViewController *)self tableView];
  v12 = objc_opt_class();
  v13 = +[(WDClinicalLocationCell *)WDClinicalOnboardingLocationCell];
  [tableView4 registerClass:v12 forCellReuseIdentifier:v13];

  tableView5 = [(WDClinicalProviderDetailsViewController *)self tableView];
  v15 = objc_opt_class();
  v16 = +[(WDMedicalRecordGroupableCell *)WDClinicalOnboardingGatewayCell];
  [tableView5 registerClass:v15 forCellReuseIdentifier:v16];

  tableView6 = [(WDClinicalProviderDetailsViewController *)self tableView];
  v18 = objc_opt_class();
  defaultReuseIdentifier = [objc_opt_class() defaultReuseIdentifier];
  [tableView6 registerClass:v18 forCellReuseIdentifier:defaultReuseIdentifier];

  v20 = +[CHRAnalyticsManager shared];
  provider = [(WDClinicalProviderDetailsViewController *)self provider];
  informationURL = [provider informationURL];
  [v20 postOnboardingFunnelEventWithStep:3 context:0 gatewayUrl:informationURL];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = WDClinicalProviderDetailsViewController;
  [(WDClinicalProviderDetailsViewController *)&v6 viewWillAppear:appear];
  searchResult = [(WDClinicalProviderDetailsViewController *)self searchResult];

  if (searchResult)
  {
    searchResult2 = [(WDClinicalProviderDetailsViewController *)self searchResult];
    [(WDClinicalProviderDetailsViewController *)self _fetchDetailsForSearchResult:searchResult2];
  }
}

- (void)_fetchDetailsForSearchResult:(id)result
{
  resultCopy = result;
  [(WDClinicalProviderDetailsViewController *)self _showSpinnerView];
  externalID = [resultCopy externalID];
  providerCache = [(WDClinicalProviderDetailsViewController *)self providerCache];
  v7 = [providerCache objectForKey:externalID];

  if (v7)
  {
    v8 = [v7 objectForKeyedSubscript:@"_CacheDateKey"];
    if (v8)
    {
      date = [MEMORY[0x1E695DF00] date];
      [date timeIntervalSinceDate:v8];
      v11 = v10;

      if (v11 <= 180.0)
      {
        v22 = [v7 objectForKeyedSubscript:@"_CacheProviderKey"];
        [(WDClinicalProviderDetailsViewController *)self setProvider:v22];
        [(WDClinicalProviderDetailsViewController *)self _hideSpinnerView];

        goto LABEL_13;
      }

      providerCache2 = [(WDClinicalProviderDetailsViewController *)self providerCache];
      [providerCache2 removeObjectForKey:externalID];
    }
  }

  externalID2 = [resultCopy externalID];
  v14 = [externalID2 hasPrefix:*MEMORY[0x1E69A3EE8]];

  if (v14)
  {
    clinicalSampleAccountsLoader = [(HRProfile *)self->_profile clinicalSampleAccountsLoader];
    externalID3 = [resultCopy externalID];
    v27 = 0;
    v17 = [clinicalSampleAccountsLoader providerForSampleDataSearchResultWithExternalID:externalID3 error:&v27];
    v18 = v27;

    if (v17)
    {
      [(WDClinicalProviderDetailsViewController *)self setProvider:v17];
      [(WDClinicalProviderDetailsViewController *)self _hideSpinnerView];
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __72__WDClinicalProviderDetailsViewController__fetchDetailsForSearchResult___block_invoke;
      block[3] = &unk_1E83DD1A8;
      block[4] = self;
      v26 = v18;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  else
  {
    [(WDClinicalProviderDetailsViewController *)self setFetchesInFlight:[(WDClinicalProviderDetailsViewController *)self fetchesInFlight]+ 1];
    providerServiceStore = [(WDClinicalProviderDetailsViewController *)self providerServiceStore];
    externalID4 = [resultCopy externalID];
    batchID = [resultCopy batchID];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __72__WDClinicalProviderDetailsViewController__fetchDetailsForSearchResult___block_invoke_2;
    v23[3] = &unk_1E83DDA48;
    v23[4] = self;
    v24 = externalID;
    [providerServiceStore fetchRemoteProviderWithExternalID:externalID4 batchID:batchID completion:v23];
  }

LABEL_13:
}

uint64_t __72__WDClinicalProviderDetailsViewController__fetchDetailsForSearchResult___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _hideSpinnerView];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _presentError:v3];
}

void __72__WDClinicalProviderDetailsViewController__fetchDetailsForSearchResult___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__WDClinicalProviderDetailsViewController__fetchDetailsForSearchResult___block_invoke_3;
  v10[3] = &unk_1E83DCA90;
  v7 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

void __72__WDClinicalProviderDetailsViewController__fetchDetailsForSearchResult___block_invoke_3(uint64_t a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setFetchesInFlight:{objc_msgSend(*(a1 + 32), "fetchesInFlight") - 1}];
  if (*(a1 + 40))
  {
    v7[0] = @"_CacheDateKey";
    v2 = [MEMORY[0x1E695DF00] date];
    v7[1] = @"_CacheProviderKey";
    v8[0] = v2;
    v8[1] = *(a1 + 40);
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

    v4 = [*(a1 + 32) providerCache];
    [v4 setObject:v3 forKey:*(a1 + 56)];

    [*(a1 + 32) setProvider:*(a1 + 40)];
    [*(a1 + 32) _hideSpinnerView];
  }

  else
  {
    [*(a1 + 32) setProvider:0];
    if (*(a1 + 48))
    {
      [*(a1 + 32) _hideSpinnerView];
      v5 = *(a1 + 32);
      v6 = *(a1 + 48);

      [v5 _presentError:v6];
    }
  }
}

- (void)_computeSections
{
  gateways = [(HKClinicalProvider *)self->_provider gateways];
  v4 = gateways;
  if (gateways)
  {
    v5 = [gateways hk_map:&__block_literal_global_7];
    profile = [(WDClinicalProviderDetailsViewController *)self profile];
    clinicalAccountStore = [profile clinicalAccountStore];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __59__WDClinicalProviderDetailsViewController__computeSections__block_invoke_2;
    v9[3] = &unk_1E83DDAB0;
    v10 = v5;
    selfCopy = self;
    v12 = v4;
    v8 = v5;
    [clinicalAccountStore fetchAccountsForGatewaysWithExternalIDs:v8 completion:v9];
  }

  else
  {
    [(WDClinicalProviderDetailsViewController *)self _computeSectionsWithGateways:MEMORY[0x1E695E0F0] connectedGateways:MEMORY[0x1E695E0F0]];
  }
}

void __59__WDClinicalProviderDetailsViewController__computeSections__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [a2 hk_map:&__block_literal_global_314];
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x1E696B948];
    if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
    {
      __59__WDClinicalProviderDetailsViewController__computeSections__block_invoke_2_cold_1(a1, v7, v5);
    }

    v6 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__WDClinicalProviderDetailsViewController__computeSections__block_invoke_2_315;
  block[3] = &unk_1E83DC9D0;
  v8 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v11 = v8;
  v12 = v6;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __59__WDClinicalProviderDetailsViewController__computeSections__block_invoke_2_315(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v1 = *(a1 + 48);
  }

  else
  {
    v1 = MEMORY[0x1E695E0F0];
  }

  return [*(a1 + 32) _computeSectionsWithGateways:*(a1 + 40) connectedGateways:v1];
}

- (void)_computeSectionsWithGateways:(id)gateways connectedGateways:(id)connectedGateways
{
  v104 = *MEMORY[0x1E69E9840];
  gatewaysCopy = gateways;
  connectedGatewaysCopy = connectedGateways;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v76 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v75 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([MEMORY[0x1E696C608] isAppleInternalInstall])
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  else
  {
    v8 = 0;
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v9 = gatewaysCopy;
  v10 = [v9 countByEnumeratingWithState:&v93 objects:v103 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v94;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v94 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v93 + 1) + 8 * i);
        if ([v14 status] != 3)
        {
          newerSupportedGatewayVersion = [v14 newerSupportedGatewayVersion];

          v16 = v8;
          if (!newerSupportedGatewayVersion)
          {
            if ([v14 status] == 2)
            {
              v16 = v75;
            }

            else
            {
              v16 = v76;
            }
          }

          [v16 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v93 objects:v103 count:16];
    }

    while (v11);
  }

  v17 = [(WDClinicalProviderDetailsViewController *)self _orderGatewaysForDisplay:connectedGatewaysCopy];
  connectedGateways = self->_connectedGateways;
  self->_connectedGateways = v17;

  v19 = [v76 arrayByExcludingObjectsInArray:self->_connectedGateways];
  v20 = [(WDClinicalProviderDetailsViewController *)self _filterGatewaysForDisplay:v19];
  v21 = [(WDClinicalProviderDetailsViewController *)self _orderGatewaysForDisplay:v20];
  unconnectedGateways = self->_unconnectedGateways;
  self->_unconnectedGateways = v21;

  v23 = [v75 arrayByExcludingObjectsInArray:self->_connectedGateways];
  v24 = [(WDClinicalProviderDetailsViewController *)self _orderGatewaysForDisplay:v23];
  unavailableGateways = self->_unavailableGateways;
  self->_unavailableGateways = v24;

  v26 = [v8 arrayByExcludingObjectsInArray:self->_connectedGateways];
  v27 = [(WDClinicalProviderDetailsViewController *)self _orderGatewaysForDisplay:v26];
  internalOnlyVisibleGateways = self->_internalOnlyVisibleGateways;
  self->_internalOnlyVisibleGateways = v27;

  v29 = [(NSArray *)self->_connectedGateways count];
  v30 = [(NSArray *)self->_unconnectedGateways count]+ v29;
  v31 = v30 + [(NSArray *)self->_unavailableGateways count];
  if (v31 + [(NSArray *)self->_internalOnlyVisibleGateways count])
  {
    v73 = 1120;
    v74 = 1128;
    v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v101[0] = v40;
    v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v101[1] = v41;
    v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v101[2] = v42;
    v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v101[3] = v43;
    v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v101[4] = v44;
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v101 count:5];
    sections = self->_sections;
    self->_sections = v45;

    v47 = [(NSArray *)self->_sections objectAtIndexedSubscript:0];
    v48 = +[(WDClinicalLocationCell *)WDClinicalOnboardingLocationCell];
    [v47 addObject:v48];

    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v49 = self->_connectedGateways;
    v50 = [(NSArray *)v49 countByEnumeratingWithState:&v89 objects:v100 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v90;
      while (1)
      {
        if (*v90 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v53 = [(NSArray *)self->_sections objectAtIndexedSubscript:2, v73, v74];
        v54 = +[(WDMedicalRecordGroupableCell *)WDClinicalOnboardingGatewayCell];
        [v53 addObject:v54];

        if (!--v51)
        {
          v51 = [(NSArray *)v49 countByEnumeratingWithState:&v89 objects:v100 count:16];
          if (!v51)
          {
            break;
          }
        }
      }
    }

    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v55 = self->_unconnectedGateways;
    v56 = [(NSArray *)v55 countByEnumeratingWithState:&v85 objects:v99 count:16];
    if (v56)
    {
      v57 = v56;
      v58 = *v86;
      while (1)
      {
        if (*v86 != v58)
        {
          objc_enumerationMutation(v55);
        }

        v59 = [(NSArray *)self->_sections objectAtIndexedSubscript:1, v73];
        v60 = +[(WDMedicalRecordGroupableCell *)WDClinicalOnboardingGatewayCell];
        [v59 addObject:v60];

        if (!--v57)
        {
          v57 = [(NSArray *)v55 countByEnumeratingWithState:&v85 objects:v99 count:16];
          if (!v57)
          {
            break;
          }
        }
      }
    }

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v61 = *(&self->super.super.super.super.super.isa + v73);
    v62 = [v61 countByEnumeratingWithState:&v81 objects:v98 count:16];
    if (v62)
    {
      v63 = v62;
      v64 = *v82;
      while (1)
      {
        if (*v82 != v64)
        {
          objc_enumerationMutation(v61);
        }

        v65 = [(NSArray *)self->_sections objectAtIndexedSubscript:3, v73];
        v66 = +[(WDMedicalRecordGroupableCell *)WDClinicalOnboardingGatewayCell];
        [v65 addObject:v66];

        if (!--v63)
        {
          v63 = [v61 countByEnumeratingWithState:&v81 objects:v98 count:16];
          if (!v63)
          {
            break;
          }
        }
      }
    }

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v67 = *(&self->super.super.super.super.super.isa + v74);
    v68 = [v67 countByEnumeratingWithState:&v77 objects:v97 count:16];
    if (v68)
    {
      v69 = v68;
      v70 = *v78;
      while (1)
      {
        if (*v78 != v70)
        {
          objc_enumerationMutation(v67);
        }

        v71 = [(NSArray *)self->_sections objectAtIndexedSubscript:4, v73];
        v72 = +[(WDMedicalRecordGroupableCell *)WDClinicalOnboardingGatewayCell];
        [v71 addObject:v72];

        if (!--v69)
        {
          v69 = [v67 countByEnumeratingWithState:&v77 objects:v97 count:16];
          if (!v69)
          {
            break;
          }
        }
      }
    }

    tableView = [(WDClinicalProviderDetailsViewController *)self tableView];
    [tableView reloadData];
  }

  else
  {
    self->_noGatewaysFound = 1;
    v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v102[0] = v32;
    v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v102[1] = v33;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:2];
    v35 = self->_sections;
    self->_sections = v34;

    v36 = [(NSArray *)self->_sections objectAtIndexedSubscript:0];
    v37 = +[(WDClinicalLocationCell *)WDClinicalOnboardingLocationCell];
    [v36 addObject:v37];

    tableView = [(NSArray *)self->_sections objectAtIndexedSubscript:1];
    defaultReuseIdentifier = [objc_opt_class() defaultReuseIdentifier];
    [tableView addObject:defaultReuseIdentifier];
  }
}

- (id)_filterGatewaysForDisplay:(id)display
{
  v19 = *MEMORY[0x1E69E9840];
  displayCopy = display;
  v5 = [MEMORY[0x1E695DFA8] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = displayCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(WDClinicalProviderDetailsViewController *)self latestSupportedVersionOfGateway:*(*(&v14 + 1) + 8 * i) fromGateways:v6, v14];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  allObjects = [v5 allObjects];

  return allObjects;
}

- (id)latestSupportedVersionOfGateway:(id)gateway fromGateways:(id)gateways
{
  v30 = *MEMORY[0x1E69E9840];
  gatewayCopy = gateway;
  gatewaysCopy = gateways;
  v7 = HKProviderServiceMaximumCompatibleAPIVersion();
  if ([gatewayCopy minCompatibleAPIVersion] <= v7)
  {
    newerSupportedGatewayVersion = [gatewayCopy newerSupportedGatewayVersion];
    v10 = newerSupportedGatewayVersion;
    if (newerSupportedGatewayVersion)
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __88__WDClinicalProviderDetailsViewController_latestSupportedVersionOfGateway_fromGateways___block_invoke;
      v22[3] = &unk_1E83DDAD8;
      v11 = newerSupportedGatewayVersion;
      v23 = v11;
      v12 = [gatewaysCopy hk_firstObjectPassingTest:v22];
      v13 = v12;
      if (!v12)
      {
        _HKInitializeLogging();
        v14 = *MEMORY[0x1E696B948];
        v15 = os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR);
        v13 = gatewayCopy;
        if (v15)
        {
          v17 = v14;
          v18 = objc_opt_class();
          v19 = NSStringFromClass(v18);
          gatewayID = [v11 gatewayID];
          externalID = [gatewayCopy externalID];
          *buf = 138543874;
          v25 = v19;
          v26 = 2114;
          v27 = gatewayID;
          v28 = 2114;
          v29 = externalID;
          _os_log_error_impl(&dword_1D101F000, v17, OS_LOG_TYPE_ERROR, "%{public}@ got a newer gateway reference (%{public}@) for gateway %{public}@, however it's not been returned from PC", buf, 0x20u);

          v13 = gatewayCopy;
        }
      }

      v8 = v13;
    }

    else
    {
      v8 = gatewayCopy;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __88__WDClinicalProviderDetailsViewController_latestSupportedVersionOfGateway_fromGateways___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 gatewayID];
  v5 = [v3 externalID];

  v6 = [v4 isEqualToString:v5];
  return v6;
}

- (id)_orderGatewaysForDisplay:(id)display
{
  v9[2] = *MEMORY[0x1E69E9840];
  displayCopy = display;
  if ([displayCopy count])
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"title" ascending:1 selector:sel_localizedCaseInsensitiveCompare_];
    v5 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"subtitle" ascending:1 selector:sel_localizedCaseInsensitiveCompare_];
    v9[0] = v4;
    v9[1] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
    v7 = [displayCopy sortedArrayUsingDescriptors:v6];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (id)_gatewayAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  v6 = 0;
  if (section > 2)
  {
    if (section == 3)
    {
      unavailableGateways = [(WDClinicalProviderDetailsViewController *)self unavailableGateways];
    }

    else
    {
      if (section != 4)
      {
        goto LABEL_11;
      }

      unavailableGateways = [(WDClinicalProviderDetailsViewController *)self internalOnlyVisibleGateways];
    }
  }

  else if (section == 1)
  {
    unavailableGateways = [(WDClinicalProviderDetailsViewController *)self unconnectedGateways];
  }

  else
  {
    if (section != 2)
    {
      goto LABEL_11;
    }

    unavailableGateways = [(WDClinicalProviderDetailsViewController *)self connectedGateways];
  }

  v8 = unavailableGateways;
  v6 = [unavailableGateways objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

LABEL_11:

  return v6;
}

- (void)_presentError:(id)error
{
  errorCopy = error;
  _HKInitializeLogging();
  v5 = *MEMORY[0x1E696B948];
  if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
  {
    [(WDClinicalProviderDetailsViewController *)v5 _presentError:errorCopy];
  }

  presentedViewController = [(WDClinicalProviderDetailsViewController *)self presentedViewController];

  if (!presentedViewController)
  {
    v7 = HRLocalizedString(@"HEALTH_RECORDS_PROVIDER_SERVICE_ERROR_ONBOARDING_DETAILS");
    if ([MEMORY[0x1E696C608] isAppleInternalInstall])
    {
      localizedDescription = [errorCopy localizedDescription];
      v9 = [v7 stringByAppendingFormat:@"\n\n[Internal Only]\n%@", localizedDescription];

      v7 = v9;
    }

    v10 = MEMORY[0x1E69DC650];
    v11 = HRLocalizedString(@"HEALTH_RECORDS_PROVIDER_SERVICE_ERROR_TITLE");
    v12 = [v10 basicAlertControllerWithTitle:v11 message:v7];

    [(WDClinicalProviderDetailsViewController *)self presentViewController:v12 animated:1 completion:0];
  }
}

- (void)setProvider:(id)provider
{
  providerCopy = provider;
  provider = [(WDClinicalProviderDetailsViewController *)self provider];

  if (provider != providerCopy)
  {
    objc_storeStrong(&self->_provider, provider);
    self->_noGatewaysFound = 0;
    [(WDClinicalProviderDetailsViewController *)self _computeSections];
  }
}

- (void)scrollViewDidChangeAdjustedContentInset:(id)inset
{
  insetCopy = inset;
  tableView = [(WDClinicalProviderDetailsViewController *)self tableView];

  if (tableView == insetCopy)
  {

    [(WDClinicalProviderDetailsViewController *)self _updateNoContentViewConstraints];
  }
}

- (void)_updateNoContentViewConstraints
{
  tableView = [(WDClinicalProviderDetailsViewController *)self tableView];
  [tableView adjustedContentInset];
  v5 = v4;
  tableView2 = [(WDClinicalProviderDetailsViewController *)self tableView];
  [tableView2 safeAreaInsets];
  v8 = v5 - v7;
  WeakRetained = objc_loadWeakRetained(&self->_noContentTopConstraint);
  [WeakRetained setConstant:v8];

  tableView3 = [(WDClinicalProviderDetailsViewController *)self tableView];
  [tableView3 adjustedContentInset];
  v11 = v10;
  tableView4 = [(WDClinicalProviderDetailsViewController *)self tableView];
  [tableView4 safeAreaInsets];
  v14 = -(v11 - v13);
  v15 = objc_loadWeakRetained(&self->_noContentBottomConstraint);
  [v15 setConstant:v14];
}

- (id)_createNoContentParentView
{
  v2 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setPreservesSuperviewLayoutMargins:1];
  [v2 setClipsToBounds:1];

  return v2;
}

- (void)_showNoContentView:(id)view
{
  v61[6] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  subviews = [(UIView *)self->_noContentParentView subviews];
  [subviews makeObjectsPerformSelector:sel_removeFromSuperview];

  if (viewCopy)
  {
    if (self->_noContentParentView)
    {
      [(WDClinicalProviderDetailsViewController *)self setNoContentParentView:?];
    }

    else
    {
      _createNoContentParentView = [(WDClinicalProviderDetailsViewController *)self _createNoContentParentView];
      [(WDClinicalProviderDetailsViewController *)self setNoContentParentView:_createNoContentParentView];
    }

    [(UIView *)self->_noContentParentView addSubview:viewCopy];
    topAnchor = [viewCopy topAnchor];
    safeAreaLayoutGuide = [(UIView *)self->_noContentParentView safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide topAnchor];
    v10 = [topAnchor constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:1.0];

    v59 = v10;
    [(WDClinicalProviderDetailsViewController *)self setNoContentTopConstraint:v10];
    bottomAnchor = [viewCopy bottomAnchor];
    safeAreaLayoutGuide2 = [(UIView *)self->_noContentParentView safeAreaLayoutGuide];
    bottomAnchor2 = [safeAreaLayoutGuide2 bottomAnchor];
    v14 = [bottomAnchor constraintLessThanOrEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:1.0];

    [v10 priority];
    *&v16 = v15 + -1.0;
    [v14 setPriority:v16];
    [(WDClinicalProviderDetailsViewController *)self setNoContentBottomConstraint:v14];
    [(WDClinicalProviderDetailsViewController *)self _updateNoContentViewConstraints];
    v45 = MEMORY[0x1E696ACD8];
    widthAnchor = [viewCopy widthAnchor];
    widthAnchor2 = [(UIView *)self->_noContentParentView widthAnchor];
    v51 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2];
    v61[0] = v51;
    centerXAnchor = [viewCopy centerXAnchor];
    centerXAnchor2 = [(UIView *)self->_noContentParentView centerXAnchor];
    v17 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v61[1] = v17;
    leadingAnchor = [viewCopy leadingAnchor];
    leadingAnchor2 = [(UIView *)self->_noContentParentView leadingAnchor];
    v20 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
    v61[2] = v20;
    v58 = viewCopy;
    trailingAnchor = [viewCopy trailingAnchor];
    trailingAnchor2 = [(UIView *)self->_noContentParentView trailingAnchor];
    v23 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    v61[3] = v23;
    v61[4] = v59;
    v57 = v14;
    v61[5] = v14;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:6];
    [v45 activateConstraints:v24];

    superview = [(UIView *)self->_noContentParentView superview];

    if (!superview)
    {
      tableView = [(WDClinicalProviderDetailsViewController *)self tableView];
      [tableView addSubview:self->_noContentParentView];

      v41 = MEMORY[0x1E696ACD8];
      widthAnchor3 = [(UIView *)self->_noContentParentView widthAnchor];
      tableView2 = [(WDClinicalProviderDetailsViewController *)self tableView];
      widthAnchor4 = [tableView2 widthAnchor];
      v50 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
      v60[0] = v50;
      topAnchor3 = [(UIView *)self->_noContentParentView topAnchor];
      tableView3 = [(WDClinicalProviderDetailsViewController *)self tableView];
      safeAreaLayoutGuide3 = [tableView3 safeAreaLayoutGuide];
      topAnchor4 = [safeAreaLayoutGuide3 topAnchor];
      v42 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      v60[1] = v42;
      bottomAnchor3 = [(UIView *)self->_noContentParentView bottomAnchor];
      tableView4 = [(WDClinicalProviderDetailsViewController *)self tableView];
      safeAreaLayoutGuide4 = [tableView4 safeAreaLayoutGuide];
      bottomAnchor4 = [safeAreaLayoutGuide4 bottomAnchor];
      v27 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      v60[2] = v27;
      leadingAnchor3 = [(UIView *)self->_noContentParentView leadingAnchor];
      tableView5 = [(WDClinicalProviderDetailsViewController *)self tableView];
      leadingAnchor4 = [tableView5 leadingAnchor];
      v31 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      v60[3] = v31;
      trailingAnchor3 = [(UIView *)self->_noContentParentView trailingAnchor];
      tableView6 = [(WDClinicalProviderDetailsViewController *)self tableView];
      trailingAnchor4 = [tableView6 trailingAnchor];
      v35 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      v60[4] = v35;
      v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:5];
      [v41 activateConstraints:v36];
    }

    viewCopy = v58;
  }

  else
  {
    [(UIView *)self->_noContentParentView removeFromSuperview];
  }
}

- (id)_createSpinnerView
{
  v2 = objc_alloc_init(HRWDSpinnerView);
  [(HRWDSpinnerView *)v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD80] variant:1024];
  [(HRWDSpinnerView *)v2 setMessageFont:v3];

  return v2;
}

- (void)_showSpinnerView
{
  superview = [(HRWDSpinnerView *)self->_spinnerView superview];

  if (!superview)
  {
    if (self->_spinnerView)
    {
      [(WDClinicalProviderDetailsViewController *)self setSpinnerView:?];
    }

    else
    {
      _createSpinnerView = [(WDClinicalProviderDetailsViewController *)self _createSpinnerView];
      [(WDClinicalProviderDetailsViewController *)self setSpinnerView:_createSpinnerView];
    }

    [(WDClinicalProviderDetailsViewController *)self _showNoContentView:self->_spinnerView];
    [(HRWDSpinnerView *)self->_spinnerView startSpinner];
    tableView = [(WDClinicalProviderDetailsViewController *)self tableView];
    [tableView reloadData];
  }
}

- (void)_hideSpinnerView
{
  [(HRWDSpinnerView *)self->_spinnerView stopSpinner];
  [(WDClinicalProviderDetailsViewController *)self _showNoContentView:0];
  tableView = [(WDClinicalProviderDetailsViewController *)self tableView];
  [tableView reloadData];
}

- (void)clearLoginBusyIndicator
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);

  [(WDClinicalProviderDetailsViewController *)self _hideSpinnerView];
}

- (void)_handleTapForActivateGateway:(id)gateway
{
  v22 = *MEMORY[0x1E69E9840];
  gatewayCopy = gateway;
  _HKInitializeLogging();
  v5 = *MEMORY[0x1E696B948];
  if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = HKSensitiveLogItem();
    *buf = 138543618;
    v19 = v8;
    v20 = 2114;
    v21 = v9;
    _os_log_impl(&dword_1D101F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ did tap gateway %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  profile = [(WDClinicalProviderDetailsViewController *)self profile];
  clinicalSourcesDataProvider = [profile clinicalSourcesDataProvider];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __72__WDClinicalProviderDetailsViewController__handleTapForActivateGateway___block_invoke;
  v16[3] = &unk_1E83DCC68;
  objc_copyWeak(&v17, buf);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__WDClinicalProviderDetailsViewController__handleTapForActivateGateway___block_invoke_2;
  v13[3] = &unk_1E83DDB00;
  objc_copyWeak(&v15, buf);
  v12 = gatewayCopy;
  v14 = v12;
  [clinicalSourcesDataProvider beginInitialLoginSessionForGateway:v12 fromViewController:self loginCancelledHandler:v16 errorHandler:v13];

  [(WDClinicalProviderDetailsViewController *)self _showSpinnerView];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

void __72__WDClinicalProviderDetailsViewController__handleTapForActivateGateway___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained clearLoginBusyIndicator];
}

void __72__WDClinicalProviderDetailsViewController__handleTapForActivateGateway___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained clearLoginBusyIndicator];

  v5 = +[HRViewControllerFactory shared];
  v7 = [v5 makeFailedToOnboardAccountAlertControllerToGateway:*(a1 + 32) error:v3];

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 presentViewController:v7 animated:1 completion:0];
}

- (void)_presentUnavailableAlertForGatewayTitle:(id)title
{
  titleCopy = title;
  v9 = HRLocalizedString(@"HEALTH_RECORDS_ONBOARDING_PORTAL_UNAVAILABLE_ALERT_TITLE");
  v5 = MEMORY[0x1E696AEC0];
  v6 = HRLocalizedString(@"HEALTH_RECORDS_ONBOARDING_PORTAL_%@_UNAVAILABLE_ALERT_MESSAGE");
  titleCopy = [v5 stringWithFormat:v6, titleCopy];

  v8 = [MEMORY[0x1E69DC650] basicAlertControllerWithTitle:v9 message:titleCopy];
  [(WDClinicalProviderDetailsViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  superview = [(HRWDSpinnerView *)self->_spinnerView superview];

  if (superview)
  {
    return 0;
  }

  sections = [(WDClinicalProviderDetailsViewController *)self sections];
  v7 = [sections count];

  return v7;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (!self->_provider)
  {
LABEL_17:
    v7 = 0;
    goto LABEL_18;
  }

  v7 = 0;
  if (section <= 2)
  {
    if (section == 1)
    {
      if ([(NSArray *)self->_unconnectedGateways count])
      {
        v8 = @"HEALTH_RECORDS_ONBOARDING_ACCOUNTS_UNCONNECTED";
        goto LABEL_16;
      }
    }

    else
    {
      if (section != 2)
      {
        goto LABEL_18;
      }

      if ([(NSArray *)self->_connectedGateways count])
      {
        v8 = @"HEALTH_RECORDS_ONBOARDING_ACCOUNTS_CONNECTED";
LABEL_16:
        v7 = HRLocalizedString(v8);
        goto LABEL_18;
      }
    }

    goto LABEL_17;
  }

  if (section == 3)
  {
    if ([(NSArray *)self->_unavailableGateways count])
    {
      v8 = @"HEALTH_RECORDS_ONBOARDING_ACCOUNTS_UNAVAILABLE";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (section == 4)
  {
    if ([(NSArray *)self->_internalOnlyVisibleGateways count])
    {
      v7 = @"[Internal Only] Other Gateways";
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_18:

  return v7;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  result = *MEMORY[0x1E69DE3D0];
  if (!section)
  {
    return 0.0;
  }

  return result;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v29[4] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if (section)
  {
    if (section <= 4)
    {
      v7 = [(WDClinicalProviderDetailsViewController *)self tableView:viewCopy titleForHeaderInSection:section];
      if ([v7 length])
      {
        section = objc_alloc_init(MEMORY[0x1E69DD250]);
        v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
        v28 = v7;
        if ([v7 hasPrefix:@"[Internal Only]"])
        {
          [v8 setText:v7];
        }

        else
        {
          uppercaseString = [v7 uppercaseString];
          [v8 setText:uppercaseString];
        }

        v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
        [v8 setFont:v11];

        secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
        [v8 setTextColor:secondaryLabelColor];

        [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
        [section addSubview:v8];
        v22 = MEMORY[0x1E696ACD8];
        leadingAnchor = [v8 leadingAnchor];
        leadingAnchor2 = [section leadingAnchor];
        v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:32.0];
        v29[0] = v25;
        trailingAnchor = [v8 trailingAnchor];
        trailingAnchor2 = [section trailingAnchor];
        v21 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-16.0];
        v29[1] = v21;
        topAnchor = [v8 topAnchor];
        topAnchor2 = [section topAnchor];
        v15 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
        v29[2] = v15;
        bottomAnchor = [v8 bottomAnchor];
        bottomAnchor2 = [section bottomAnchor];
        v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-8.0];
        v29[3] = v18;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
        [v22 activateConstraints:v19];

        goto LABEL_10;
      }
    }

    tableView = [(WDClinicalProviderDetailsViewController *)self tableView];
    section = [tableView headerViewForSection:section];
  }

LABEL_10:

  return section;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  sections = [(WDClinicalProviderDetailsViewController *)self sections];
  v6 = [sections objectAtIndexedSubscript:section];
  v7 = [v6 count];

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v36[2] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  sections = [(WDClinicalProviderDetailsViewController *)self sections];
  v7 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  tableView = [(WDClinicalProviderDetailsViewController *)self tableView];
  v10 = [tableView dequeueReusableCellWithIdentifier:v8 forIndexPath:pathCopy];

  profile = [(WDClinicalProviderDetailsViewController *)self profile];
  clinicalSourcesDataProvider = [profile clinicalSourcesDataProvider];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v10;
    provider = [(WDClinicalProviderDetailsViewController *)self provider];
    profile2 = [(WDClinicalProviderDetailsViewController *)self profile];
    clinicalSourcesDataProvider2 = [profile2 clinicalSourcesDataProvider];
    [v13 setProvider:provider dataProvider:clinicalSourcesDataProvider2];

    v17 = HKUIJoinStringsForAutomationIdentifier();
    v36[0] = v17;
    v36[1] = @"ProviderName";
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
    v19 = HKUIJoinStringsForAutomationIdentifier();
    titleLabel = [v13 titleLabel];
    [titleLabel setAccessibilityIdentifier:v19];

    v35[0] = v17;
    v35[1] = @"ProviderDescription";
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
    v22 = HKUIJoinStringsForAutomationIdentifier();
    subtitleLabel = [v13 subtitleLabel];
    [subtitleLabel setAccessibilityIdentifier:v22];

    v34[0] = v17;
    v34[1] = @"ProviderLocation";
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
    v25 = HKUIJoinStringsForAutomationIdentifier();
    detailLabel = [v13 detailLabel];

    [detailLabel setAccessibilityIdentifier:v25];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = v10;
    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [v27 setPillBackgroundColorOverride:secondarySystemBackgroundColor];

    if ([pathCopy row] >= 1)
    {
      [v27 setExtraTopPadding:1];
    }

    if ([pathCopy section] == 2)
    {
      v29 = 1;
      v30 = &OBJC_IVAR___WDClinicalProviderDetailsViewController__connectedGateways;
    }

    else if ([pathCopy section] == 3)
    {
      v29 = 1;
      v30 = &OBJC_IVAR___WDClinicalProviderDetailsViewController__unavailableGateways;
    }

    else
    {
      section = [pathCopy section];
      v29 = 0;
      v30 = &OBJC_IVAR___WDClinicalProviderDetailsViewController__unconnectedGateways;
      if (section == 4)
      {
        v30 = &OBJC_IVAR___WDClinicalProviderDetailsViewController__internalOnlyVisibleGateways;
      }
    }

    v32 = [*(&self->super.super.super.super.super.isa + *v30) objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    [v27 configureWithGateway:v32 dataProvider:clinicalSourcesDataProvider connected:v29];
  }

  return v10;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [cellCopy willDisplay];
  }
}

- (void)clinicalOnboardingGatewayCell:(id)cell didTapConnectWithGateway:(id)gateway dataProvider:(id)provider
{
  v46 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  gatewayCopy = gateway;
  providerCopy = provider;
  if (gatewayCopy)
  {
    if ([(NSArray *)self->_unconnectedGateways containsObject:gatewayCopy]|| [(NSArray *)self->_internalOnlyVisibleGateways containsObject:gatewayCopy])
    {
      if ([MEMORY[0x1E696C608] isRunningStoreDemoMode])
      {
        _HKInitializeLogging();
        v11 = *MEMORY[0x1E696B948];
        if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_DEFAULT))
        {
          clinicalSampleAccountsLoader = v11;
          *buf = 138543362;
          v45 = objc_opt_class();
          v13 = v45;
          _os_log_impl(&dword_1D101F000, clinicalSampleAccountsLoader, OS_LOG_TYPE_DEFAULT, "%{public}@ running store demo mode, connecting to gateways is not supported", buf, 0xCu);

LABEL_11:
        }
      }

      else
      {
        externalID = [gatewayCopy externalID];
        v23 = [externalID hasPrefix:*MEMORY[0x1E69A3EE0]];

        if (v23)
        {
          clinicalSampleAccountsLoader = [(HRProfile *)self->_profile clinicalSampleAccountsLoader];
          externalID2 = [gatewayCopy externalID];
          v43[0] = MEMORY[0x1E69E9820];
          v43[1] = 3221225472;
          v43[2] = __111__WDClinicalProviderDetailsViewController_clinicalOnboardingGatewayCell_didTapConnectWithGateway_dataProvider___block_invoke;
          v43[3] = &unk_1E83DDB28;
          v43[4] = self;
          [clinicalSampleAccountsLoader loadFirstSampleAccountDataBatchForGatewayWithExternalID:externalID2 completion:v43];

          goto LABEL_11;
        }

        status = [gatewayCopy status];
        if (status > 1)
        {
          if (status == 2)
          {
            clinicalSampleAccountsLoader = [gatewayCopy title];
            [(WDClinicalProviderDetailsViewController *)self _presentUnavailableAlertForGatewayTitle:clinicalSampleAccountsLoader];
            goto LABEL_11;
          }

          if (status == 3)
          {
            _HKInitializeLogging();
            v27 = *MEMORY[0x1E696B948];
            if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
            {
              [(WDClinicalProviderDetailsViewController *)v27 clinicalOnboardingGatewayCell:v28 didTapConnectWithGateway:v29 dataProvider:v30, v31, v32, v33, v34];
            }
          }
        }

        else
        {
          if (status)
          {
            if (status != 1)
            {
              goto LABEL_25;
            }
          }

          else
          {
            _HKInitializeLogging();
            v35 = *MEMORY[0x1E696B948];
            if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
            {
              [(WDClinicalProviderDetailsViewController *)v35 clinicalOnboardingGatewayCell:v36 didTapConnectWithGateway:v37 dataProvider:v38, v39, v40, v41, v42];
            }
          }

          [(WDClinicalProviderDetailsViewController *)self _handleTapForActivateGateway:gatewayCopy];
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      v25 = *MEMORY[0x1E696B948];
      if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
      {
        [WDClinicalProviderDetailsViewController clinicalOnboardingGatewayCell:v25 didTapConnectWithGateway:? dataProvider:?];
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x1E696B948];
    if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
    {
      [(WDClinicalProviderDetailsViewController *)v14 clinicalOnboardingGatewayCell:v15 didTapConnectWithGateway:v16 dataProvider:v17, v18, v19, v20, v21];
    }
  }

LABEL_25:
}

void __111__WDClinicalProviderDetailsViewController_clinicalOnboardingGatewayCell_didTapConnectWithGateway_dataProvider___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __111__WDClinicalProviderDetailsViewController_clinicalOnboardingGatewayCell_didTapConnectWithGateway_dataProvider___block_invoke_2;
  block[3] = &unk_1E83DC9D0;
  v7 = *(a1 + 32);
  v11 = v5;
  v12 = v7;
  v13 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __111__WDClinicalProviderDetailsViewController_clinicalOnboardingGatewayCell_didTapConnectWithGateway_dataProvider___block_invoke_2(void *a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a1[4])
  {
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    v3 = [MEMORY[0x1E696AD80] OAuthCompletionNotification];
    v4 = a1[5];
    v5 = +[_TtC15HealthRecordsUI39OAuthCompletionNotificationUserInfoKeys account];
    v6 = a1[4];
    v10 = v5;
    v11[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [v2 postNotificationName:v3 object:v4 userInfo:v7];
  }

  else
  {
    v8 = a1[5];
    v9 = a1[6];

    [v8 _presentError:v9];
  }
}

- (NSLayoutConstraint)noContentTopConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_noContentTopConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)noContentBottomConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_noContentBottomConstraint);

  return WeakRetained;
}

void __59__WDClinicalProviderDetailsViewController__computeSections__block_invoke_2_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = HKSensitiveLogItem();
  v6 = 138412546;
  v7 = v5;
  v8 = 2114;
  v9 = a3;
  _os_log_error_impl(&dword_1D101F000, v4, OS_LOG_TYPE_ERROR, "Failed to fetch accounts for gateways %@: %{public}@", &v6, 0x16u);
}

- (void)_presentError:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 localizedDescription];
  OUTLINED_FUNCTION_9(&dword_1D101F000, v5, v6, "onboarding details presenting error with underlying description: %{public}@", v7, v8, v9, v10, 2u);
}

- (void)clinicalOnboardingGatewayCell:(void *)a1 didTapConnectWithGateway:dataProvider:.cold.1(void *a1)
{
  v1 = a1;
  v2 = HKSensitiveLogItem();
  OUTLINED_FUNCTION_9(&dword_1D101F000, v3, v4, "Gateway %{public}@ is not in the list of connectable gateways", v5, v6, v7, v8, 2u);
}

@end
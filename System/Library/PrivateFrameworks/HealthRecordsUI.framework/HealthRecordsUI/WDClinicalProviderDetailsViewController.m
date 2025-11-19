@interface WDClinicalProviderDetailsViewController
- (NSLayoutConstraint)noContentBottomConstraint;
- (NSLayoutConstraint)noContentTopConstraint;
- (WDClinicalProviderDetailsViewController)initWithProfile:(id)a3 provider:(id)a4;
- (WDClinicalProviderDetailsViewController)initWithProfile:(id)a3 searchResult:(id)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)_createNoContentParentView;
- (id)_createSpinnerView;
- (id)_filterGatewaysForDisplay:(id)a3;
- (id)_gatewayAtIndexPath:(id)a3;
- (id)_initWithProfile:(id)a3;
- (id)_orderGatewaysForDisplay:(id)a3;
- (id)latestSupportedVersionOfGateway:(id)a3 fromGateways:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_computeSections;
- (void)_computeSectionsWithGateways:(id)a3 connectedGateways:(id)a4;
- (void)_fetchDetailsForSearchResult:(id)a3;
- (void)_handleTapForActivateGateway:(id)a3;
- (void)_hideSpinnerView;
- (void)_presentError:(id)a3;
- (void)_presentUnavailableAlertForGatewayTitle:(id)a3;
- (void)_showNoContentView:(id)a3;
- (void)_showSpinnerView;
- (void)_updateNoContentViewConstraints;
- (void)clearLoginBusyIndicator;
- (void)clinicalOnboardingGatewayCell:(id)a3 didTapConnectWithGateway:(id)a4 dataProvider:(id)a5;
- (void)scrollViewDidChangeAdjustedContentInset:(id)a3;
- (void)setProvider:(id)a3;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation WDClinicalProviderDetailsViewController

- (id)_initWithProfile:(id)a3
{
  v4 = a3;
  v5 = [(WDClinicalProviderDetailsViewController *)self initWithStyle:2];
  v6 = v5;
  if (v5)
  {
    [(WDClinicalProviderDetailsViewController *)v5 setProfile:v4];
    v7 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    [(WDClinicalProviderDetailsViewController *)v6 setProviderCache:v7];

    v8 = objc_alloc(MEMORY[0x1E69A3F68]);
    v9 = [(WDClinicalProviderDetailsViewController *)v6 profile];
    v10 = [v9 healthStore];
    v11 = [v8 initWithHealthStore:v10];
    providerServiceStore = v6->_providerServiceStore;
    v6->_providerServiceStore = v11;
  }

  return v6;
}

- (WDClinicalProviderDetailsViewController)initWithProfile:(id)a3 searchResult:(id)a4
{
  v6 = a4;
  v7 = [(WDClinicalProviderDetailsViewController *)self _initWithProfile:a3];
  v8 = v7;
  if (v7)
  {
    [(WDClinicalProviderDetailsViewController *)v7 setSearchResult:v6];
  }

  return v8;
}

- (WDClinicalProviderDetailsViewController)initWithProfile:(id)a3 provider:(id)a4
{
  v6 = a4;
  v7 = [(WDClinicalProviderDetailsViewController *)self _initWithProfile:a3];
  v8 = v7;
  if (v7)
  {
    [(WDClinicalProviderDetailsViewController *)v7 setProvider:v6];
  }

  return v8;
}

- (void)viewDidLoad
{
  v23.receiver = self;
  v23.super_class = WDClinicalProviderDetailsViewController;
  [(HKTableViewController *)&v23 viewDidLoad];
  v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v4 = [(WDClinicalProviderDetailsViewController *)self tableView];
  [v4 setBackgroundColor:v3];

  v5 = *MEMORY[0x1E69DE3D0];
  v6 = [(WDClinicalProviderDetailsViewController *)self tableView];
  [v6 setRowHeight:v5];

  v7 = [MEMORY[0x1E69DC888] clearColor];
  v8 = [(WDClinicalProviderDetailsViewController *)self tableView];
  [v8 setSeparatorColor:v7];

  v9 = [(WDClinicalProviderDetailsViewController *)self navigationController];
  v10 = [v9 navigationBar];
  [v10 setPrefersLargeTitles:0];

  v11 = [(WDClinicalProviderDetailsViewController *)self tableView];
  v12 = objc_opt_class();
  v13 = +[(WDClinicalLocationCell *)WDClinicalOnboardingLocationCell];
  [v11 registerClass:v12 forCellReuseIdentifier:v13];

  v14 = [(WDClinicalProviderDetailsViewController *)self tableView];
  v15 = objc_opt_class();
  v16 = +[(WDMedicalRecordGroupableCell *)WDClinicalOnboardingGatewayCell];
  [v14 registerClass:v15 forCellReuseIdentifier:v16];

  v17 = [(WDClinicalProviderDetailsViewController *)self tableView];
  v18 = objc_opt_class();
  v19 = [objc_opt_class() defaultReuseIdentifier];
  [v17 registerClass:v18 forCellReuseIdentifier:v19];

  v20 = +[CHRAnalyticsManager shared];
  v21 = [(WDClinicalProviderDetailsViewController *)self provider];
  v22 = [v21 informationURL];
  [v20 postOnboardingFunnelEventWithStep:3 context:0 gatewayUrl:v22];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = WDClinicalProviderDetailsViewController;
  [(WDClinicalProviderDetailsViewController *)&v6 viewWillAppear:a3];
  v4 = [(WDClinicalProviderDetailsViewController *)self searchResult];

  if (v4)
  {
    v5 = [(WDClinicalProviderDetailsViewController *)self searchResult];
    [(WDClinicalProviderDetailsViewController *)self _fetchDetailsForSearchResult:v5];
  }
}

- (void)_fetchDetailsForSearchResult:(id)a3
{
  v4 = a3;
  [(WDClinicalProviderDetailsViewController *)self _showSpinnerView];
  v5 = [v4 externalID];
  v6 = [(WDClinicalProviderDetailsViewController *)self providerCache];
  v7 = [v6 objectForKey:v5];

  if (v7)
  {
    v8 = [v7 objectForKeyedSubscript:@"_CacheDateKey"];
    if (v8)
    {
      v9 = [MEMORY[0x1E695DF00] date];
      [v9 timeIntervalSinceDate:v8];
      v11 = v10;

      if (v11 <= 180.0)
      {
        v22 = [v7 objectForKeyedSubscript:@"_CacheProviderKey"];
        [(WDClinicalProviderDetailsViewController *)self setProvider:v22];
        [(WDClinicalProviderDetailsViewController *)self _hideSpinnerView];

        goto LABEL_13;
      }

      v12 = [(WDClinicalProviderDetailsViewController *)self providerCache];
      [v12 removeObjectForKey:v5];
    }
  }

  v13 = [v4 externalID];
  v14 = [v13 hasPrefix:*MEMORY[0x1E69A3EE8]];

  if (v14)
  {
    v15 = [(HRProfile *)self->_profile clinicalSampleAccountsLoader];
    v16 = [v4 externalID];
    v27 = 0;
    v17 = [v15 providerForSampleDataSearchResultWithExternalID:v16 error:&v27];
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
    v19 = [(WDClinicalProviderDetailsViewController *)self providerServiceStore];
    v20 = [v4 externalID];
    v21 = [v4 batchID];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __72__WDClinicalProviderDetailsViewController__fetchDetailsForSearchResult___block_invoke_2;
    v23[3] = &unk_1E83DDA48;
    v23[4] = self;
    v24 = v5;
    [v19 fetchRemoteProviderWithExternalID:v20 batchID:v21 completion:v23];
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
  v3 = [(HKClinicalProvider *)self->_provider gateways];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 hk_map:&__block_literal_global_7];
    v6 = [(WDClinicalProviderDetailsViewController *)self profile];
    v7 = [v6 clinicalAccountStore];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __59__WDClinicalProviderDetailsViewController__computeSections__block_invoke_2;
    v9[3] = &unk_1E83DDAB0;
    v10 = v5;
    v11 = self;
    v12 = v4;
    v8 = v5;
    [v7 fetchAccountsForGatewaysWithExternalIDs:v8 completion:v9];
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

- (void)_computeSectionsWithGateways:(id)a3 connectedGateways:(id)a4
{
  v104 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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
  v9 = v6;
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
          v15 = [v14 newerSupportedGatewayVersion];

          v16 = v8;
          if (!v15)
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

  v17 = [(WDClinicalProviderDetailsViewController *)self _orderGatewaysForDisplay:v7];
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

    v38 = [(WDClinicalProviderDetailsViewController *)self tableView];
    [v38 reloadData];
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

    v38 = [(NSArray *)self->_sections objectAtIndexedSubscript:1];
    v39 = [objc_opt_class() defaultReuseIdentifier];
    [v38 addObject:v39];
  }
}

- (id)_filterGatewaysForDisplay:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
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

  v12 = [v5 allObjects];

  return v12;
}

- (id)latestSupportedVersionOfGateway:(id)a3 fromGateways:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = HKProviderServiceMaximumCompatibleAPIVersion();
  if ([v5 minCompatibleAPIVersion] <= v7)
  {
    v9 = [v5 newerSupportedGatewayVersion];
    v10 = v9;
    if (v9)
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __88__WDClinicalProviderDetailsViewController_latestSupportedVersionOfGateway_fromGateways___block_invoke;
      v22[3] = &unk_1E83DDAD8;
      v11 = v9;
      v23 = v11;
      v12 = [v6 hk_firstObjectPassingTest:v22];
      v13 = v12;
      if (!v12)
      {
        _HKInitializeLogging();
        v14 = *MEMORY[0x1E696B948];
        v15 = os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR);
        v13 = v5;
        if (v15)
        {
          v17 = v14;
          v18 = objc_opt_class();
          v19 = NSStringFromClass(v18);
          v20 = [v11 gatewayID];
          v21 = [v5 externalID];
          *buf = 138543874;
          v25 = v19;
          v26 = 2114;
          v27 = v20;
          v28 = 2114;
          v29 = v21;
          _os_log_error_impl(&dword_1D101F000, v17, OS_LOG_TYPE_ERROR, "%{public}@ got a newer gateway reference (%{public}@) for gateway %{public}@, however it's not been returned from PC", buf, 0x20u);

          v13 = v5;
        }
      }

      v8 = v13;
    }

    else
    {
      v8 = v5;
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

- (id)_orderGatewaysForDisplay:(id)a3
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"title" ascending:1 selector:sel_localizedCaseInsensitiveCompare_];
    v5 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"subtitle" ascending:1 selector:sel_localizedCaseInsensitiveCompare_];
    v9[0] = v4;
    v9[1] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
    v7 = [v3 sortedArrayUsingDescriptors:v6];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (id)_gatewayAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  v6 = 0;
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v7 = [(WDClinicalProviderDetailsViewController *)self unavailableGateways];
    }

    else
    {
      if (v5 != 4)
      {
        goto LABEL_11;
      }

      v7 = [(WDClinicalProviderDetailsViewController *)self internalOnlyVisibleGateways];
    }
  }

  else if (v5 == 1)
  {
    v7 = [(WDClinicalProviderDetailsViewController *)self unconnectedGateways];
  }

  else
  {
    if (v5 != 2)
    {
      goto LABEL_11;
    }

    v7 = [(WDClinicalProviderDetailsViewController *)self connectedGateways];
  }

  v8 = v7;
  v6 = [v7 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];

LABEL_11:

  return v6;
}

- (void)_presentError:(id)a3
{
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x1E696B948];
  if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
  {
    [(WDClinicalProviderDetailsViewController *)v5 _presentError:v4];
  }

  v6 = [(WDClinicalProviderDetailsViewController *)self presentedViewController];

  if (!v6)
  {
    v7 = HRLocalizedString(@"HEALTH_RECORDS_PROVIDER_SERVICE_ERROR_ONBOARDING_DETAILS");
    if ([MEMORY[0x1E696C608] isAppleInternalInstall])
    {
      v8 = [v4 localizedDescription];
      v9 = [v7 stringByAppendingFormat:@"\n\n[Internal Only]\n%@", v8];

      v7 = v9;
    }

    v10 = MEMORY[0x1E69DC650];
    v11 = HRLocalizedString(@"HEALTH_RECORDS_PROVIDER_SERVICE_ERROR_TITLE");
    v12 = [v10 basicAlertControllerWithTitle:v11 message:v7];

    [(WDClinicalProviderDetailsViewController *)self presentViewController:v12 animated:1 completion:0];
  }
}

- (void)setProvider:(id)a3
{
  v6 = a3;
  v5 = [(WDClinicalProviderDetailsViewController *)self provider];

  if (v5 != v6)
  {
    objc_storeStrong(&self->_provider, a3);
    self->_noGatewaysFound = 0;
    [(WDClinicalProviderDetailsViewController *)self _computeSections];
  }
}

- (void)scrollViewDidChangeAdjustedContentInset:(id)a3
{
  v4 = a3;
  v5 = [(WDClinicalProviderDetailsViewController *)self tableView];

  if (v5 == v4)
  {

    [(WDClinicalProviderDetailsViewController *)self _updateNoContentViewConstraints];
  }
}

- (void)_updateNoContentViewConstraints
{
  v3 = [(WDClinicalProviderDetailsViewController *)self tableView];
  [v3 adjustedContentInset];
  v5 = v4;
  v6 = [(WDClinicalProviderDetailsViewController *)self tableView];
  [v6 safeAreaInsets];
  v8 = v5 - v7;
  WeakRetained = objc_loadWeakRetained(&self->_noContentTopConstraint);
  [WeakRetained setConstant:v8];

  v16 = [(WDClinicalProviderDetailsViewController *)self tableView];
  [v16 adjustedContentInset];
  v11 = v10;
  v12 = [(WDClinicalProviderDetailsViewController *)self tableView];
  [v12 safeAreaInsets];
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

- (void)_showNoContentView:(id)a3
{
  v61[6] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UIView *)self->_noContentParentView subviews];
  [v5 makeObjectsPerformSelector:sel_removeFromSuperview];

  if (v4)
  {
    if (self->_noContentParentView)
    {
      [(WDClinicalProviderDetailsViewController *)self setNoContentParentView:?];
    }

    else
    {
      v6 = [(WDClinicalProviderDetailsViewController *)self _createNoContentParentView];
      [(WDClinicalProviderDetailsViewController *)self setNoContentParentView:v6];
    }

    [(UIView *)self->_noContentParentView addSubview:v4];
    v7 = [v4 topAnchor];
    v8 = [(UIView *)self->_noContentParentView safeAreaLayoutGuide];
    v9 = [v8 topAnchor];
    v10 = [v7 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v9 multiplier:1.0];

    v59 = v10;
    [(WDClinicalProviderDetailsViewController *)self setNoContentTopConstraint:v10];
    v11 = [v4 bottomAnchor];
    v12 = [(UIView *)self->_noContentParentView safeAreaLayoutGuide];
    v13 = [v12 bottomAnchor];
    v14 = [v11 constraintLessThanOrEqualToSystemSpacingBelowAnchor:v13 multiplier:1.0];

    [v10 priority];
    *&v16 = v15 + -1.0;
    [v14 setPriority:v16];
    [(WDClinicalProviderDetailsViewController *)self setNoContentBottomConstraint:v14];
    [(WDClinicalProviderDetailsViewController *)self _updateNoContentViewConstraints];
    v45 = MEMORY[0x1E696ACD8];
    v55 = [v4 widthAnchor];
    v53 = [(UIView *)self->_noContentParentView widthAnchor];
    v51 = [v55 constraintLessThanOrEqualToAnchor:v53];
    v61[0] = v51;
    v49 = [v4 centerXAnchor];
    v47 = [(UIView *)self->_noContentParentView centerXAnchor];
    v17 = [v49 constraintEqualToAnchor:v47];
    v61[1] = v17;
    v18 = [v4 leadingAnchor];
    v19 = [(UIView *)self->_noContentParentView leadingAnchor];
    v20 = [v18 constraintGreaterThanOrEqualToAnchor:v19];
    v61[2] = v20;
    v58 = v4;
    v21 = [v4 trailingAnchor];
    v22 = [(UIView *)self->_noContentParentView trailingAnchor];
    v23 = [v21 constraintLessThanOrEqualToAnchor:v22];
    v61[3] = v23;
    v61[4] = v59;
    v57 = v14;
    v61[5] = v14;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:6];
    [v45 activateConstraints:v24];

    v25 = [(UIView *)self->_noContentParentView superview];

    if (!v25)
    {
      v26 = [(WDClinicalProviderDetailsViewController *)self tableView];
      [v26 addSubview:self->_noContentParentView];

      v41 = MEMORY[0x1E696ACD8];
      v54 = [(UIView *)self->_noContentParentView widthAnchor];
      v56 = [(WDClinicalProviderDetailsViewController *)self tableView];
      v52 = [v56 widthAnchor];
      v50 = [v54 constraintEqualToAnchor:v52];
      v60[0] = v50;
      v46 = [(UIView *)self->_noContentParentView topAnchor];
      v48 = [(WDClinicalProviderDetailsViewController *)self tableView];
      v44 = [v48 safeAreaLayoutGuide];
      v43 = [v44 topAnchor];
      v42 = [v46 constraintEqualToAnchor:v43];
      v60[1] = v42;
      v39 = [(UIView *)self->_noContentParentView bottomAnchor];
      v40 = [(WDClinicalProviderDetailsViewController *)self tableView];
      v38 = [v40 safeAreaLayoutGuide];
      v37 = [v38 bottomAnchor];
      v27 = [v39 constraintEqualToAnchor:v37];
      v60[2] = v27;
      v28 = [(UIView *)self->_noContentParentView leadingAnchor];
      v29 = [(WDClinicalProviderDetailsViewController *)self tableView];
      v30 = [v29 leadingAnchor];
      v31 = [v28 constraintEqualToAnchor:v30];
      v60[3] = v31;
      v32 = [(UIView *)self->_noContentParentView trailingAnchor];
      v33 = [(WDClinicalProviderDetailsViewController *)self tableView];
      v34 = [v33 trailingAnchor];
      v35 = [v32 constraintEqualToAnchor:v34];
      v60[4] = v35;
      v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:5];
      [v41 activateConstraints:v36];
    }

    v4 = v58;
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
  v3 = [(HRWDSpinnerView *)self->_spinnerView superview];

  if (!v3)
  {
    if (self->_spinnerView)
    {
      [(WDClinicalProviderDetailsViewController *)self setSpinnerView:?];
    }

    else
    {
      v4 = [(WDClinicalProviderDetailsViewController *)self _createSpinnerView];
      [(WDClinicalProviderDetailsViewController *)self setSpinnerView:v4];
    }

    [(WDClinicalProviderDetailsViewController *)self _showNoContentView:self->_spinnerView];
    [(HRWDSpinnerView *)self->_spinnerView startSpinner];
    v5 = [(WDClinicalProviderDetailsViewController *)self tableView];
    [v5 reloadData];
  }
}

- (void)_hideSpinnerView
{
  [(HRWDSpinnerView *)self->_spinnerView stopSpinner];
  [(WDClinicalProviderDetailsViewController *)self _showNoContentView:0];
  v3 = [(WDClinicalProviderDetailsViewController *)self tableView];
  [v3 reloadData];
}

- (void)clearLoginBusyIndicator
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);

  [(WDClinicalProviderDetailsViewController *)self _hideSpinnerView];
}

- (void)_handleTapForActivateGateway:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
  v10 = [(WDClinicalProviderDetailsViewController *)self profile];
  v11 = [v10 clinicalSourcesDataProvider];
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
  v12 = v4;
  v14 = v12;
  [v11 beginInitialLoginSessionForGateway:v12 fromViewController:self loginCancelledHandler:v16 errorHandler:v13];

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

- (void)_presentUnavailableAlertForGatewayTitle:(id)a3
{
  v4 = a3;
  v9 = HRLocalizedString(@"HEALTH_RECORDS_ONBOARDING_PORTAL_UNAVAILABLE_ALERT_TITLE");
  v5 = MEMORY[0x1E696AEC0];
  v6 = HRLocalizedString(@"HEALTH_RECORDS_ONBOARDING_PORTAL_%@_UNAVAILABLE_ALERT_MESSAGE");
  v7 = [v5 stringWithFormat:v6, v4];

  v8 = [MEMORY[0x1E69DC650] basicAlertControllerWithTitle:v9 message:v7];
  [(WDClinicalProviderDetailsViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = [(HRWDSpinnerView *)self->_spinnerView superview];

  if (v4)
  {
    return 0;
  }

  v6 = [(WDClinicalProviderDetailsViewController *)self sections];
  v7 = [v6 count];

  return v7;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if (!self->_provider)
  {
LABEL_17:
    v7 = 0;
    goto LABEL_18;
  }

  v7 = 0;
  if (a4 <= 2)
  {
    if (a4 == 1)
    {
      if ([(NSArray *)self->_unconnectedGateways count])
      {
        v8 = @"HEALTH_RECORDS_ONBOARDING_ACCOUNTS_UNCONNECTED";
        goto LABEL_16;
      }
    }

    else
    {
      if (a4 != 2)
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

  if (a4 == 3)
  {
    if ([(NSArray *)self->_unavailableGateways count])
    {
      v8 = @"HEALTH_RECORDS_ONBOARDING_ACCOUNTS_UNAVAILABLE";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (a4 == 4)
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

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  result = *MEMORY[0x1E69DE3D0];
  if (!a4)
  {
    return 0.0;
  }

  return result;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v29[4] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a4)
  {
    if (a4 <= 4)
    {
      v7 = [(WDClinicalProviderDetailsViewController *)self tableView:v6 titleForHeaderInSection:a4];
      if ([v7 length])
      {
        a4 = objc_alloc_init(MEMORY[0x1E69DD250]);
        v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
        v28 = v7;
        if ([v7 hasPrefix:@"[Internal Only]"])
        {
          [v8 setText:v7];
        }

        else
        {
          v10 = [v7 uppercaseString];
          [v8 setText:v10];
        }

        v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
        [v8 setFont:v11];

        v12 = [MEMORY[0x1E69DC888] secondaryLabelColor];
        [v8 setTextColor:v12];

        [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
        [a4 addSubview:v8];
        v22 = MEMORY[0x1E696ACD8];
        v27 = [v8 leadingAnchor];
        v26 = [a4 leadingAnchor];
        v25 = [v27 constraintEqualToAnchor:v26 constant:32.0];
        v29[0] = v25;
        v24 = [v8 trailingAnchor];
        v23 = [a4 trailingAnchor];
        v21 = [v24 constraintLessThanOrEqualToAnchor:v23 constant:-16.0];
        v29[1] = v21;
        v13 = [v8 topAnchor];
        v14 = [a4 topAnchor];
        v15 = [v13 constraintEqualToAnchor:v14 constant:8.0];
        v29[2] = v15;
        v16 = [v8 bottomAnchor];
        v17 = [a4 bottomAnchor];
        v18 = [v16 constraintEqualToAnchor:v17 constant:-8.0];
        v29[3] = v18;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
        [v22 activateConstraints:v19];

        goto LABEL_10;
      }
    }

    v9 = [(WDClinicalProviderDetailsViewController *)self tableView];
    a4 = [v9 headerViewForSection:a4];
  }

LABEL_10:

  return a4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(WDClinicalProviderDetailsViewController *)self sections];
  v6 = [v5 objectAtIndexedSubscript:a4];
  v7 = [v6 count];

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v36[2] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(WDClinicalProviderDetailsViewController *)self sections];
  v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];
  v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v5, "row")}];

  v9 = [(WDClinicalProviderDetailsViewController *)self tableView];
  v10 = [v9 dequeueReusableCellWithIdentifier:v8 forIndexPath:v5];

  v11 = [(WDClinicalProviderDetailsViewController *)self profile];
  v12 = [v11 clinicalSourcesDataProvider];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v10;
    v14 = [(WDClinicalProviderDetailsViewController *)self provider];
    v15 = [(WDClinicalProviderDetailsViewController *)self profile];
    v16 = [v15 clinicalSourcesDataProvider];
    [v13 setProvider:v14 dataProvider:v16];

    v17 = HKUIJoinStringsForAutomationIdentifier();
    v36[0] = v17;
    v36[1] = @"ProviderName";
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
    v19 = HKUIJoinStringsForAutomationIdentifier();
    v20 = [v13 titleLabel];
    [v20 setAccessibilityIdentifier:v19];

    v35[0] = v17;
    v35[1] = @"ProviderDescription";
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
    v22 = HKUIJoinStringsForAutomationIdentifier();
    v23 = [v13 subtitleLabel];
    [v23 setAccessibilityIdentifier:v22];

    v34[0] = v17;
    v34[1] = @"ProviderLocation";
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
    v25 = HKUIJoinStringsForAutomationIdentifier();
    v26 = [v13 detailLabel];

    [v26 setAccessibilityIdentifier:v25];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = v10;
    v28 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [v27 setPillBackgroundColorOverride:v28];

    if ([v5 row] >= 1)
    {
      [v27 setExtraTopPadding:1];
    }

    if ([v5 section] == 2)
    {
      v29 = 1;
      v30 = &OBJC_IVAR___WDClinicalProviderDetailsViewController__connectedGateways;
    }

    else if ([v5 section] == 3)
    {
      v29 = 1;
      v30 = &OBJC_IVAR___WDClinicalProviderDetailsViewController__unavailableGateways;
    }

    else
    {
      v31 = [v5 section];
      v29 = 0;
      v30 = &OBJC_IVAR___WDClinicalProviderDetailsViewController__unconnectedGateways;
      if (v31 == 4)
      {
        v30 = &OBJC_IVAR___WDClinicalProviderDetailsViewController__internalOnlyVisibleGateways;
      }
    }

    v32 = [*(&self->super.super.super.super.super.isa + *v30) objectAtIndexedSubscript:{objc_msgSend(v5, "row")}];
    [v27 configureWithGateway:v32 dataProvider:v12 connected:v29];
  }

  return v10;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 willDisplay];
  }
}

- (void)clinicalOnboardingGatewayCell:(id)a3 didTapConnectWithGateway:(id)a4 dataProvider:(id)a5
{
  v46 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    if ([(NSArray *)self->_unconnectedGateways containsObject:v9]|| [(NSArray *)self->_internalOnlyVisibleGateways containsObject:v9])
    {
      if ([MEMORY[0x1E696C608] isRunningStoreDemoMode])
      {
        _HKInitializeLogging();
        v11 = *MEMORY[0x1E696B948];
        if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_DEFAULT))
        {
          v12 = v11;
          *buf = 138543362;
          v45 = objc_opt_class();
          v13 = v45;
          _os_log_impl(&dword_1D101F000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ running store demo mode, connecting to gateways is not supported", buf, 0xCu);

LABEL_11:
        }
      }

      else
      {
        v22 = [v9 externalID];
        v23 = [v22 hasPrefix:*MEMORY[0x1E69A3EE0]];

        if (v23)
        {
          v12 = [(HRProfile *)self->_profile clinicalSampleAccountsLoader];
          v24 = [v9 externalID];
          v43[0] = MEMORY[0x1E69E9820];
          v43[1] = 3221225472;
          v43[2] = __111__WDClinicalProviderDetailsViewController_clinicalOnboardingGatewayCell_didTapConnectWithGateway_dataProvider___block_invoke;
          v43[3] = &unk_1E83DDB28;
          v43[4] = self;
          [v12 loadFirstSampleAccountDataBatchForGatewayWithExternalID:v24 completion:v43];

          goto LABEL_11;
        }

        v26 = [v9 status];
        if (v26 > 1)
        {
          if (v26 == 2)
          {
            v12 = [v9 title];
            [(WDClinicalProviderDetailsViewController *)self _presentUnavailableAlertForGatewayTitle:v12];
            goto LABEL_11;
          }

          if (v26 == 3)
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
          if (v26)
          {
            if (v26 != 1)
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

          [(WDClinicalProviderDetailsViewController *)self _handleTapForActivateGateway:v9];
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
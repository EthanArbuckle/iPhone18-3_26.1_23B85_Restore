@interface MPKeypadViewController
- (BOOL)_anyContactsExist;
- (MPKeyPadViewControllerDelegate)delegate;
- (MPKeypadViewController)initWithContactStore:(id)a3 enableSmartDialer:(BOOL)a4 orientationProvider:(id)a5;
- (TUSenderIdentityClient)senderIdentityClient;
- (UIEdgeInsets)additionalSafeAreaInsets;
- (id)_businessItemForNumber:(id)a3 messageable:(BOOL *)a4;
- (id)_metadataForDialerText;
- (id)_metadataNameForDialerText;
- (id)_newContactWithPhoneNumber:(id)a3;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4;
- (id)createMenuForAddContactButton;
- (id)pseudoNameStringForDestinationID:(id)a3;
- (id)senderIdentityMenuForDialerView:(id)a3 selectedSenderIdentity:(id)a4;
- (int64_t)_IDSStatusForService:(id)a3 withDestination:(id)a4;
- (void)_addNewContact:(id)a3;
- (void)_clearIDSStatusCache;
- (void)_metadataCacheDidUpdate;
- (void)_updateIDSStatusIfNeededForService:(id)a3 withDestination:(id)a4;
- (void)_updateMetadataCacheIfPossible;
- (void)_updateNameFromMetadataCache;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4;
- (void)handleSelectedSenderIdentity:(id)a3;
- (void)presentAppleSupportGuidedHelp;
- (void)presentContactsSearchFor:(id)a3;
- (void)providersChangedForProviderManager:(id)a3;
- (void)refreshLocalizedSenderIdentity;
- (void)searchBusinessesFor:(id)a3 completionHandler:(id)a4;
- (void)searchButtonPressed:(id)a3;
- (void)updateIDSStatus;
- (void)updateLocalizedSenderIdentity:(id)a3;
- (void)updateTabBarAppearanceToTransparent:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation MPKeypadViewController

- (MPKeypadViewController)initWithContactStore:(id)a3 enableSmartDialer:(BOOL)a4 orientationProvider:(id)a5
{
  v15.receiver = self;
  v15.super_class = MPKeypadViewController;
  v6 = [(DialerController *)&v15 initWithDialerView:0 dialerType:0 contactStore:a3 appType:1 orientationProvider:a5];
  v7 = v6;
  if (v6)
  {
    v6->_enableSmartDialer = a4;
    v6->_enableSmartDialerExpandedSearch = 0;
    v8 = objc_alloc_init(MEMORY[0x277D6EED8]);
    featureFlags = v7->_featureFlags;
    v7->_featureFlags = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEA78]);
    IDSstatusCache = v7->_IDSstatusCache;
    v7->_IDSstatusCache = v10;

    v12 = objc_alloc_init(MEMORY[0x277D3A7D0]);
    simLineSelectionAnalyticsReporter = v7->_simLineSelectionAnalyticsReporter;
    v7->_simLineSelectionAnalyticsReporter = v12;
  }

  return v7;
}

- (void)updateTabBarAppearanceToTransparent:(BOOL)a3
{
  v3 = a3;
  v6 = objc_opt_new();
  if (v3)
  {
    [v6 configureWithTransparentBackground];
  }

  v5 = [(MPKeypadViewController *)self tabBarItem];
  [v5 setStandardAppearance:v6];
}

- (void)viewDidLoad
{
  v30.receiver = self;
  v30.super_class = MPKeypadViewController;
  [(MPKeypadViewController *)&v30 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x277CF3618]);
  bizService = self->_bizService;
  self->_bizService = v3;

  v5 = [objc_alloc(MEMORY[0x277CF3688]) initWithBrandType:3 cachingEnabled:1];
  brandManager = self->_brandManager;
  self->_brandManager = v5;

  v7 = [objc_alloc(MEMORY[0x277D753B8]) initWithDelegate:self];
  [(MPKeypadViewController *)self setCallContextMenuInteraction:v7];

  v8 = [(DialerController *)self dialerView];
  v9 = [v8 callButton];
  v10 = [(MPKeypadViewController *)self callContextMenuInteraction];
  [v9 addInteraction:v10];

  if (PHDeviceSupportsDualSim())
  {
    v11 = [(DialerController *)self callProviderManager];
    [v11 addDelegate:self queue:0];
  }

  v12 = [(DialerController *)self dialerView];
  v13 = [v12 lcdView];
  [v13 setResultDelegate:self];

  v14 = [(DialerController *)self dialerView];
  v15 = [v14 addContactButton];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v17 = [(DialerController *)self dialerView];
    v18 = [v17 addContactButton];

    objc_initWeak(&location, self);
    [v18 setContextMenuIsPrimary:1];
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __37__MPKeypadViewController_viewDidLoad__block_invoke;
    v27 = &unk_278D74D10;
    objc_copyWeak(&v28, &location);
    [v18 _setMenuProvider:&v24];
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  v19 = [(DialerController *)self dialerView:v24];
  v20 = [v19 searchButton];
  objc_opt_class();
  v21 = objc_opt_isKindOfClass();

  if (v21)
  {
    v22 = [(DialerController *)self dialerView];
    v23 = [v22 searchButton];
    [v23 addTarget:self action:sel_searchButtonPressed_ forControlEvents:64];
  }

  [(MPKeypadViewController *)self updateTabBarAppearanceToTransparent:1];
}

id __37__MPKeypadViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    v4 = [v3 createMenuForAddContactButton];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (UIEdgeInsets)additionalSafeAreaInsets
{
  v2 = [(MPKeypadViewController *)self featureFlags];
  if ([v2 phoneLargeFormatUIEnabled])
  {
    v3 = [MEMORY[0x277D75418] currentDevice];
    v4 = [v3 userInterfaceIdiom];

    v5 = 16.0;
    v6 = 16.0;
    v7 = 16.0;
    v8 = 16.0;
    if (v4 == 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v6 = *MEMORY[0x277D768C8];
  v5 = *(MEMORY[0x277D768C8] + 8);
  v7 = *(MEMORY[0x277D768C8] + 16);
  v8 = *(MEMORY[0x277D768C8] + 24);
LABEL_6:
  result.right = v8;
  result.bottom = v7;
  result.left = v5;
  result.top = v6;
  return result;
}

- (BOOL)_anyContactsExist
{
  v3 = objc_alloc(MEMORY[0x277CBDA70]);
  v4 = [v3 initWithKeysToFetch:MEMORY[0x277CBEBF8]];
  v5 = [(DialerController *)self contactStore];
  v8 = 0;
  v6 = [v5 contactCountForFetchRequest:v4 error:&v8];

  LOBYTE(v5) = [v6 integerValue] > 0;
  return v5;
}

- (id)createMenuForAddContactButton
{
  v48[2] = *MEMORY[0x277D85DE8];
  if (self->super._lookupTimer)
  {
    [(MPKeypadViewController *)self _updateName];
  }

  v3 = [(PHAbstractDialerView *)self->super._dialerView lcdView];
  v4 = [v3 text];

  v5 = [(DialerController *)self contactResultForPhoneNumber:v4];
  v6 = [v5 contacts];
  if ([v6 count])
  {

    goto LABEL_5;
  }

  v17 = [v4 length];

  if (!v17)
  {
LABEL_5:
    v7 = [v5 contacts];
    v8 = [v7 firstObject];
    if (v8)
    {
      v9 = v8;
      v10 = [v5 contacts];
      v11 = [v10 firstObject];
      v12 = [v11 isSuggested];

      if (!v12)
      {
LABEL_17:
        v30 = 0;
        goto LABEL_18;
      }

      v13 = MEMORY[0x277CBDC48];
      v14 = [v5 contacts];
      v15 = [v14 firstObject];
      v7 = [v13 viewControllerForUnknownContact:v15];

      [v7 setDelegate:self];
      v16 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v7];
      [(MPKeypadViewController *)self presentViewController:v16 animated:1 completion:0];
    }

LABEL_16:

    goto LABEL_17;
  }

  if (![(MPKeypadViewController *)self _anyContactsExist])
  {
    v7 = [(MPKeypadViewController *)self _newContactWithPhoneNumber:v4];
    [(MPKeypadViewController *)self _addNewContact:v7];
    goto LABEL_16;
  }

  v18 = [(MPKeypadViewController *)self enableSmartDialer];
  v19 = @"person.crop.circle";
  if (v18)
  {
    v19 = @"plus";
  }

  v20 = v19;
  v21 = [(MPKeypadViewController *)self enableSmartDialer];
  v22 = @"person.crop.circle.badge.plus";
  if (v21)
  {
    v22 = @"person.text.rectangle";
  }

  v43 = MEMORY[0x277D75710];
  v37 = MEMORY[0x277D750C8];
  v23 = MEMORY[0x277CCA8D8];
  v35 = v22;
  v44 = [v23 bundleForClass:objc_opt_class()];
  v41 = [v44 localizedStringForKey:@"ADD_TO_NEW" value:&stru_285532CB8 table:@"Dialer"];
  v40 = [MEMORY[0x277D755B8] systemImageNamed:v20];

  v42 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v39 = [v42 localizedStringForKey:@"ADD_TO_NEW" value:&stru_285532CB8 table:@"Dialer"];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __55__MPKeypadViewController_createMenuForAddContactButton__block_invoke;
  v46[3] = &unk_278D74D38;
  v46[4] = self;
  v47 = v4;
  v38 = [v37 actionWithTitle:v41 image:v40 identifier:v39 handler:v46];
  v48[0] = v38;
  v34 = MEMORY[0x277D750C8];
  v36 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v24 = [v36 localizedStringForKey:@"ADD_TO_EXISTING" value:&stru_285532CB8 table:@"Dialer"];
  v25 = [MEMORY[0x277D755B8] systemImageNamed:v35];

  v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v27 = [v26 localizedStringForKey:@"ADD_TO_EXISTING" value:&stru_285532CB8 table:@"Dialer"];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __55__MPKeypadViewController_createMenuForAddContactButton__block_invoke_2;
  v45[3] = &unk_278D74D60;
  v45[4] = self;
  v28 = [v34 actionWithTitle:v24 image:v25 identifier:v27 handler:v45];
  v48[1] = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
  v30 = [v43 menuWithTitle:&stru_285532CB8 children:v29];

LABEL_18:
  v31 = [(MPKeypadViewController *)self delegate];
  [v31 didPressAddContactButton:3];

  v32 = *MEMORY[0x277D85DE8];

  return v30;
}

void __55__MPKeypadViewController_createMenuForAddContactButton__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 didPressAddContactButton:1];

  v3 = *(a1 + 32);
  v4 = [v3 _newContactWithPhoneNumber:*(a1 + 40)];
  [v3 _addNewContact:v4];
}

void __55__MPKeypadViewController_createMenuForAddContactButton__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 didPressAddContactButton:2];

  v4 = objc_alloc_init(MEMORY[0x277CBDC18]);
  [v4 setAllowsCancel:1];
  [v4 setAutocloses:0];
  [v4 setDelegate:*(a1 + 32)];
  [v4 setMode:2];
  v3 = [MEMORY[0x277CCAC30] predicateWithValue:1];
  [v4 setPredicateForSelectionOfContact:v3];

  [*(a1 + 32) presentViewController:v4 animated:1 completion:0];
}

- (id)_metadataNameForDialerText
{
  v3 = [(PHAbstractDialerView *)self->super._dialerView lcdView];
  v4 = [v3 text];

  if ([v4 length])
  {
    v5 = objc_alloc(MEMORY[0x277D6EF00]);
    v6 = TUNetworkCountryCode();
    v7 = [v5 initWithDestinationID:v4 isoCountryCode:v6];

    if (v7)
    {
      v8 = [(MPKeypadViewController *)self metadataCache];
      v9 = [v8 metadataForDestinationID:v7];

      v10 = 0x277D6EE00;
      v11 = [v9 metadataForProvider:objc_opt_class()];

      if (v11)
      {
        goto LABEL_6;
      }

      v10 = 0x277D6EEF8;
      v12 = [v9 metadataForProvider:objc_opt_class()];

      if (v12 || (v10 = 0x277D6EF50, [v9 metadataForProvider:objc_opt_class()], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
      {
LABEL_6:
        v14 = *v10;
        v13 = [v9 metadataForProvider:objc_opt_class()];
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_metadataForDialerText
{
  v24[3] = *MEMORY[0x277D85DE8];
  v3 = [(PHAbstractDialerView *)self->super._dialerView lcdView];
  v4 = [v3 text];

  if ([v4 length])
  {
    v5 = objc_alloc(MEMORY[0x277D6EF00]);
    v6 = TUNetworkCountryCode();
    v7 = [v5 initWithDestinationID:v4 isoCountryCode:v6];

    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v24[2] = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:3];
    if (v7)
    {
      v9 = [(MPKeypadViewController *)self metadataCache];
      v10 = [v9 metadataForDestinationID:v7];

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v11 = v8;
      v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        v13 = *v20;
        while (2)
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v20 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = [v10 metadataDictForProvider:{*(*(&v19 + 1) + 8 * i), v19}];
            if (v15)
            {
              v12 = v15;

              v16 = v10;
              v10 = v11;
              v8 = v7;
              v7 = v12;
              goto LABEL_14;
            }
          }

          v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      v16 = v11;
LABEL_14:
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)_metadataCacheDidUpdate
{
  v6 = [(MPKeypadViewController *)self _metadataForDialerText];
  v3 = [(PHAbstractDialerView *)self->super._dialerView lcdView];
  v4 = [v6 identificationLabel];
  v5 = [v6 source];
  [v3 setName:v4 numberLabel:0 source:v5 suggestion:1];
}

- (void)_updateNameFromMetadataCache
{
  v3 = [(PHAbstractDialerView *)self->super._dialerView lcdView];
  v8 = [v3 text];

  TUNetworkCountryCode();
  if (PNIsValidPhoneNumberForCountry())
  {
    v4 = [(MPKeypadViewController *)self _metadataForDialerText];
    v5 = [v4 identificationLabel];
    if (v5)
    {
      v6 = [(PHAbstractDialerView *)self->super._dialerView lcdView];
      v7 = [v4 source];
      [v6 setName:v5 numberLabel:0 source:v7 suggestion:1];
    }

    else
    {
      [(MPKeypadViewController *)self _updateMetadataCacheIfPossible];
    }
  }
}

void __89__MPKeypadViewController_searchAndUpdateResultsFor_shouldRefreshResult_showPastedString___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __89__MPKeypadViewController_searchAndUpdateResultsFor_shouldRefreshResult_showPastedString___block_invoke_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    v8 = [*(a1 + 32) contactResultForPhoneNumber:*(a1 + 40)];
    v9 = [v8 contacts];
    *(*(*(a1 + 64) + 8) + 24) = [v9 count] != 0;

    if (*(*(*(a1 + 64) + 8) + 24) == 1 && ![*(*(*(a1 + 56) + 8) + 40) count])
    {
      v10 = objc_alloc(MEMORY[0x277D3A7D8]);
      v11 = [v8 contacts];
      v12 = [v11 firstObject];
      v13 = [v10 initWithContact:v12 matchInfo:0 preferredPhoneNumber:0];

      v18[0] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
      v15 = *(*(a1 + 56) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;
    }
  }

  dispatch_group_leave(*(a1 + 48));
  v17 = *MEMORY[0x277D85DE8];
}

void __89__MPKeypadViewController_searchAndUpdateResultsFor_shouldRefreshResult_showPastedString___block_invoke_133(uint64_t a1, void *a2, char a3, char a4, void *a5)
{
  v10 = a2;
  v11 = a5;
  if (v11)
  {
    v12 = PHDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __89__MPKeypadViewController_searchAndUpdateResultsFor_shouldRefreshResult_showPastedString___block_invoke_133_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *(*(*(a1 + 48) + 8) + 24) = a3;
    *(*(*(a1 + 56) + 8) + 24) = a4;
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __89__MPKeypadViewController_searchAndUpdateResultsFor_shouldRefreshResult_showPastedString___block_invoke_2(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)searchBusinessesFor:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([(TUFeatureFlags *)self->_featureFlags dialerInterceptEnabled]& 1) != 0)
  {
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x3032000000;
    v16[3] = __Block_byref_object_copy__2;
    v16[4] = __Block_byref_object_dispose__2;
    v17 = 0;
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x2020000000;
    v15 = 0;
    v8 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__MPKeypadViewController_searchBusinessesFor_completionHandler___block_invoke;
    block[3] = &unk_278D74E28;
    v12 = v16;
    block[4] = self;
    v10 = v6;
    v13 = v14;
    v11 = v7;
    dispatch_async(v8, block);

    _Block_object_dispose(v14, 8);
    _Block_object_dispose(v16, 8);
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0, 0, 0);
  }
}

uint64_t __64__MPKeypadViewController_searchBusinessesFor_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _businessItemForNumber:*(a1 + 40) messageable:*(*(a1 + 64) + 8) + 24];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 56) + 8) + 40) != 0;
  v6 = *(*(a1 + 48) + 16);
  v7 = *(*(*(a1 + 64) + 8) + 24);

  return v6();
}

- (void)refreshLocalizedSenderIdentity
{
  if (PHDeviceSupportsDualSim())
  {
    v3 = [(DialerController *)self callProviderManager];
    v4 = [(DialerController *)self callProviderManager];
    v5 = [v4 telephonyProvider];
    v6 = [v5 identifier];
    v15 = [v3 providerWithIdentifier:v6];

    v7 = [v15 prioritizedSenderIdentities];
    v8 = [v7 count];

    if (v8 < 2)
    {
      goto LABEL_6;
    }

    v9 = [v15 prioritizedSenderIdentities];
    v10 = [v9 firstObject];
    v11 = [v10 localizedName];
    v12 = [v11 length];

    if (v12)
    {
      v13 = [v15 prioritizedSenderIdentities];
      v14 = [v13 firstObject];
    }

    else
    {
LABEL_6:
      v14 = 0;
    }

    [(MPKeypadViewController *)self updateLocalizedSenderIdentity:v14];
  }
}

- (void)handleSelectedSenderIdentity:(id)a3
{
  v7 = a3;
  v4 = [(DialerController *)self selectedSenderIdentity];
  v5 = v4 != v7;

  v6 = [(MPKeypadViewController *)self simLineSelectionAnalyticsReporter];
  [v6 logSIMLineSelection:v5];

  [(MPKeypadViewController *)self updateLocalizedSenderIdentity:v7];
}

- (void)updateLocalizedSenderIdentity:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_2429BC000, v5, OS_LOG_TYPE_DEFAULT, "Updating to localizedSenderIdentity %@", &v9, 0xCu);
  }

  [(DialerController *)self setSelectedSenderIdentity:v4];
  v6 = [(DialerController *)self dialerView];
  v7 = [v6 lcdView];
  [v7 setSenderIdentity:v4];

  v8 = *MEMORY[0x277D85DE8];
}

- (TUSenderIdentityClient)senderIdentityClient
{
  senderIdentityClient = self->_senderIdentityClient;
  if (!senderIdentityClient)
  {
    v4 = objc_alloc_init(MEMORY[0x277D6EF38]);
    v5 = self->_senderIdentityClient;
    self->_senderIdentityClient = v4;

    senderIdentityClient = self->_senderIdentityClient;
  }

  return senderIdentityClient;
}

- (void)_updateMetadataCacheIfPossible
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = [(DialerController *)self dialerView];
  v4 = [v3 lcdView];
  v5 = [v4 text];

  if ([v5 length])
  {
    TUNetworkCountryCode();
    if (PNIsValidPhoneNumberForCountry())
    {
      v6 = objc_alloc(MEMORY[0x277D6EF00]);
      v7 = TUNetworkCountryCode();
      v8 = [v6 initWithDestinationID:v5 isoCountryCode:v7];

      if (v8)
      {
        objc_initWeak(&location, self);
        v9 = [(MPKeypadViewController *)self metadataCache];
        v15[0] = v8;
        v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __56__MPKeypadViewController__updateMetadataCacheIfPossible__block_invoke;
        v12[3] = &unk_278D74E50;
        objc_copyWeak(&v13, &location);
        [v9 updateCacheWithDestinationIDs:v10 completion:v12];

        objc_destroyWeak(&v13);
        objc_destroyWeak(&location);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __56__MPKeypadViewController__updateMetadataCacheIfPossible__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _metadataCacheDidUpdate];
}

- (id)senderIdentityMenuForDialerView:(id)a3 selectedSenderIdentity:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v33 = a4;
  v5 = [(MPKeypadViewController *)self delegate];
  [v5 willPresentSimLineSwitcher];

  v6 = self;
  v7 = [(DialerController *)self callProviderManager];
  v8 = [v7 telephonyProvider];

  v9 = MEMORY[0x277CBEB18];
  v10 = [v8 prioritizedSenderIdentities];
  v32 = [v9 arrayWithCapacity:{objc_msgSend(v10, "count")}];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [v8 prioritizedSenderIdentities];
  v11 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v36;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v35 + 1) + 8 * i);
        v16 = MEMORY[0x277CCACA8];
        v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v18 = [v17 localizedStringForKey:@"KEYPAD_CALL_WITH_SENDER_IDENTITY_%@" value:&stru_285532CB8 table:@"MPKeypad"];
        v19 = [v15 localizedName];
        v20 = [v16 stringWithFormat:v18, v19];

        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __81__MPKeypadViewController_senderIdentityMenuForDialerView_selectedSenderIdentity___block_invoke;
        aBlock[3] = &unk_278D74D38;
        aBlock[4] = v6;
        aBlock[5] = v15;
        v21 = _Block_copy(aBlock);
        v22 = [MEMORY[0x277D750C8] actionWithTitle:v20 image:0 identifier:0 handler:v21];
        v23 = [v15 UUID];
        v24 = [v33 UUID];
        [v22 setState:v23 == v24];

        [v32 addObject:v22];
      }

      v12 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v12);
  }

  v25 = MEMORY[0x277D75710];
  v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v27 = [v26 localizedStringForKey:@"KEYPAD_CALL_WITH_SENDER_IDENTITY_TITLE" value:&stru_285532CB8 table:@"MPKeypad"];
  v28 = [v25 menuWithTitle:v27 children:v32];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (void)_addNewContact:(id)a3
{
  v5 = [MEMORY[0x277CBDC48] viewControllerForNewContact:a3];
  [v5 setDelegate:self];
  v4 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v5];
  [(MPKeypadViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (id)_newContactWithPhoneNumber:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBDB38]);
  v5 = MEMORY[0x277CBDB20];
  v6 = *MEMORY[0x277CBD908];
  v7 = MEMORY[0x277CBDB70];
  v8 = [(PHAbstractDialerView *)self->super._dialerView lcdView];
  v9 = [v8 text];
  v10 = [v7 phoneNumberWithStringValue:v9];
  v11 = [v5 labeledValueWithLabel:v6 value:v10];

  v15[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  [v4 setPhoneNumbers:v12];

  v13 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4
{
  v10 = a3;
  [(MPKeypadViewController *)self _updateNameAndRefreshResult:1];
  v6 = [(MPKeypadViewController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && !a4)
  {
    v8 = [v10 navigationController];
    v9 = [v8 popViewControllerAnimated:1];
  }

  else
  {
    [(MPKeypadViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  dialerView = self->super._dialerView;
  v7 = a4;
  v8 = a3;
  v9 = [(PHAbstractDialerView *)dialerView lcdView];
  v10 = [v9 text];
  v13 = [(MPKeypadViewController *)self _newContactWithPhoneNumber:v10];

  v11 = [MEMORY[0x277CBDC48] viewControllerForUpdatingContact:v7 withPropertiesFromContact:v13];

  [v11 setDelegate:self];
  v12 = [v8 navigationController];

  [v12 pushViewController:v11 animated:1];
}

- (id)pseudoNameStringForDestinationID:(id)a3
{
  v4 = MEMORY[0x277D6EF00];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = TUNetworkCountryCode();
  v8 = [v6 initWithDestinationID:v5 isoCountryCode:v7];

  if (v8)
  {
    v9 = [(MPKeypadViewController *)self metadataCache];
    v10 = [v9 metadataForDestinationID:v8];

    v11 = 0x277D6EE00;
    v12 = [v10 metadataForProvider:objc_opt_class()];

    if (v12)
    {
      goto LABEL_5;
    }

    v11 = 0x277D6EEF8;
    v13 = [v10 metadataForProvider:objc_opt_class()];

    if (v13 || (v11 = 0x277D6EF50, [v10 metadataForProvider:objc_opt_class()], v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
    {
LABEL_5:
      v15 = *v11;
      v14 = [v10 metadataForProvider:objc_opt_class()];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)updateIDSStatus
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(PHAbstractDialerView *)self->super._dialerView lcdView];
  v4 = [v3 text];

  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = self;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_2429BC000, v5, OS_LOG_TYPE_DEFAULT, "%@ is updating IDS status for text: %@", &v9, 0x16u);
  }

  v6 = _PNCreateStringByStrippingFormattingAndNotVisiblyAllowable();
  v7 = TUCopyIDSCanonicalAddressForDestinationID();
  [(MPKeypadViewController *)self _updateIDSStatusIfNeededForService:*MEMORY[0x277D18698] withDestination:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_updateIDSStatusIfNeededForService:(id)a3 withDestination:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MPKeypadViewController *)self _IDSStatusCacheKeyForService:v6 withDestination:v7];
  v9 = [(MPKeypadViewController *)self IDSstatusCache];
  v10 = [v9 objectForKey:v8];

  if (!v10)
  {
    v11 = [(MPKeypadViewController *)self IDSstatusCache];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:0];
    [v11 setObject:v12 forKey:v8];

    v13 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__MPKeypadViewController__updateIDSStatusIfNeededForService_withDestination___block_invoke;
    block[3] = &unk_278D74E78;
    v16 = v7;
    v17 = v6;
    v18 = v13;
    v19 = self;
    v20 = v8;
    v14 = v13;
    dispatch_async(v14, block);
  }
}

void __77__MPKeypadViewController__updateIDSStatusIfNeededForService_withDestination___block_invoke(void *a1)
{
  v2 = [MEMORY[0x277D18728] sharedInstance];
  v3 = a1[4];
  v4 = a1[5];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__MPKeypadViewController__updateIDSStatusIfNeededForService_withDestination___block_invoke_2;
  v7[3] = &unk_278D74B38;
  v5 = a1[6];
  v6 = a1[8];
  v7[4] = a1[7];
  v8 = v6;
  [v2 currentIDStatusForDestination:v3 service:v4 listenerID:@"com.apple.mobilephone.FTCServiceAvailabilityListenerID" queue:v5 completionBlock:v7];
}

void __77__MPKeypadViewController__updateIDSStatusIfNeededForService_withDestination___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) IDSstatusCache];
  v5 = [v4 objectForKey:*(a1 + 40)];

  if (v5)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    v6 = [*(a1 + 32) IDSstatusCache];
    [v6 setObject:v7 forKey:*(a1 + 40)];
  }
}

- (int64_t)_IDSStatusForService:(id)a3 withDestination:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(MPKeypadViewController *)self _updateIDSStatusIfNeededForService:v7 withDestination:v6];
  v8 = [(MPKeypadViewController *)self _IDSStatusCacheKeyForService:v7 withDestination:v6];

  v9 = [(MPKeypadViewController *)self IDSstatusCache];
  v10 = [v9 objectForKey:v8];

  if (!v10)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:0];
  }

  v11 = [v10 integerValue];

  return v11;
}

- (void)_clearIDSStatusCache
{
  v2 = [(MPKeypadViewController *)self IDSstatusCache];
  [v2 removeAllObjects];
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v82 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v71 = self;
  v6 = [(MPKeypadViewController *)self callContextMenuInteraction];

  if (v6 == v5)
  {
    v9 = [(DialerController *)v71 dialerView];
    v10 = [v9 lcdView];
    v11 = [v10 text];

    if (v11)
    {
      v7 = _PNCreateStringByStrippingFormattingAndNotVisiblyAllowable();
    }

    else
    {
      v7 = 0;
    }

    v70 = [MEMORY[0x277CBEB18] array];
    if (v7 && [v7 length])
    {
      v62 = v7;
      v64 = TUCopyIDSCanonicalAddressForDestinationID();
      v12 = MEMORY[0x277D755B8];
      v13 = TelephonyUIBundle();
      v14 = [v12 tpImageNamed:@"action_call-OrbHW" inBundle:v13];
      v69 = [v14 imageWithRenderingMode:2];

      v15 = MEMORY[0x277D755B8];
      v16 = TelephonyUIBundle();
      v17 = [v15 tpImageNamed:@"action_facetime-OrbHW" inBundle:v16];
      v65 = [v17 imageWithRenderingMode:2];

      v18 = [(DialerController *)v71 callProviderManager];
      v19 = [v18 faceTimeProvider];

      v20 = [(DialerController *)v71 callProviderManager];
      v21 = [v20 telephonyProvider];

      v22 = [MEMORY[0x277CBEB18] array];
      v23 = v22;
      if (v21)
      {
        [v22 addObject:v21];
      }

      v60 = v21;
      v63 = v5;
      if (v19 && [(MPKeypadViewController *)v71 _IDSStatusForService:*MEMORY[0x277D18698] withDestination:v64]== 1)
      {
        [v23 addObject:v19];
      }

      v61 = v19;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      obj = v23;
      v24 = [obj countByEnumeratingWithState:&v77 objects:v81 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v78;
        v27 = 0x277CCA000uLL;
        v28 = 0x278D74000uLL;
        v66 = *v78;
        do
        {
          v29 = 0;
          v67 = v25;
          do
          {
            if (*v78 != v26)
            {
              objc_enumerationMutation(obj);
            }

            v30 = *(*(&v77 + 1) + 8 * v29);
            if ([v30 isTelephonyProvider])
            {
              v31 = MEMORY[0x277D750C8];
              v32 = *(v28 + 904);
              v33 = [*(v27 + 2264) bundleForClass:objc_opt_class()];
              v34 = [v33 localizedStringForKey:@"CALL" value:&stru_285532CB8 table:@"MPKeypad"];
              v76[0] = MEMORY[0x277D85DD0];
              v76[1] = 3221225472;
              v76[2] = __80__MPKeypadViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
              v76[3] = &unk_278D74D38;
              v76[4] = v71;
              v76[5] = v30;
              v35 = [v31 actionWithTitle:v34 image:v69 identifier:0 handler:v76];

              [v70 addObject:v35];
              goto LABEL_33;
            }

            if ([v30 isFaceTimeProvider])
            {
              v36 = [MEMORY[0x277D6EDE8] supportsDisplayingFaceTimeAudioCalls];
              v37 = v27;
              LODWORD(v27) = [MEMORY[0x277D6EDE8] supportsDisplayingFaceTimeVideoCalls];
              v38 = *(v28 + 904);
              v39 = [*(v37 + 2264) bundleForClass:objc_opt_class()];
              v40 = [v39 localizedStringForKey:@"KEYPAD_FACETIME_AUDIO" value:&stru_285532CB8 table:@"MPKeypad"];

              v41 = *(v28 + 904);
              v42 = [*(v37 + 2264) bundleForClass:objc_opt_class()];
              v43 = [v42 localizedStringForKey:@"KEYPAD_FACETIME_VIDEO" value:&stru_285532CB8 table:@"MPKeypad"];

              if (!v36)
              {
                if (!v27)
                {
                  goto LABEL_32;
                }

LABEL_31:
                v74[0] = MEMORY[0x277D85DD0];
                v74[1] = 3221225472;
                v74[2] = __80__MPKeypadViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_3;
                v74[3] = &unk_278D74D38;
                v74[4] = v71;
                v74[5] = v30;
                v56 = [MEMORY[0x277D750C8] actionWithTitle:v43 image:v65 identifier:0 handler:v74];
                [v70 addObject:v56];

                goto LABEL_32;
              }
            }

            else
            {
              v44 = MEMORY[0x277CCACA8];
              v45 = *(v28 + 904);
              v46 = [*(v27 + 2264) bundleForClass:objc_opt_class()];
              [v46 localizedStringForKey:@"KEYPAD_CALL_PROVIDER_NAME_%@_CALL_TYPE_NAME_AUDIO" value:&stru_285532CB8 table:@"MPKeypad"];
              v47 = v28;
              v49 = v48 = v27;
              v50 = [v30 localizedName];
              v40 = [v44 stringWithFormat:v49, v50, v60, v61];

              if ([v30 supportsAudioAndVideo])
              {
                v51 = MEMORY[0x277CCACA8];
                v52 = *(v47 + 904);
                v53 = [*(v48 + 2264) bundleForClass:objc_opt_class()];
                v27 = [v53 localizedStringForKey:@"KEYPAD_CALL_PROVIDER_NAME_%@_CALL_TYPE_NAME_VIDEO" value:&stru_285532CB8 table:@"MPKeypad"];
                v54 = [v30 localizedName];
                v43 = [v51 stringWithFormat:v27, v54];

                LOBYTE(v27) = 1;
              }

              else
              {
                v43 = 0;
                LOBYTE(v27) = 0;
              }

              v28 = v47;
            }

            v75[0] = MEMORY[0x277D85DD0];
            v75[1] = 3221225472;
            v75[2] = __80__MPKeypadViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2;
            v75[3] = &unk_278D74D38;
            v75[4] = v71;
            v75[5] = v30;
            v55 = [MEMORY[0x277D750C8] actionWithTitle:v40 image:v69 identifier:0 handler:v75];
            [v70 addObject:v55];

            if (v27)
            {
              goto LABEL_31;
            }

LABEL_32:

            v26 = v66;
            v25 = v67;
            v27 = 0x277CCA000;
LABEL_33:
            ++v29;
          }

          while (v25 != v29);
          v25 = [obj countByEnumeratingWithState:&v77 objects:v81 count:16];
        }

        while (v25);
      }

      v7 = v62;
      v5 = v63;
    }

    if ([v70 count])
    {
      v57 = MEMORY[0x277D753B0];
      v72[0] = MEMORY[0x277D85DD0];
      v72[1] = 3221225472;
      v72[2] = __80__MPKeypadViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_4;
      v72[3] = &unk_278D74EA0;
      v72[4] = v71;
      v73 = v70;
      v8 = [v57 configurationWithIdentifier:0 previewProvider:0 actionProvider:v72];
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_40;
  }

  v7 = PHDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [MPKeypadViewController contextMenuInteraction:configurationForMenuAtLocation:];
  }

  v8 = 0;
LABEL_40:

  v58 = *MEMORY[0x277D85DE8];

  return v8;
}

id __80__MPKeypadViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x277D75710];
  v3 = [*(a1 + 32) dialerView];
  v4 = [v3 lcdView];
  v5 = [v4 text];
  v6 = [v2 menuWithTitle:v5 children:*(a1 + 40)];

  return v6;
}

- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4
{
  v5 = a3;
  v6 = [(MPKeypadViewController *)self callContextMenuInteraction];

  if (v6 == v5)
  {
    v9 = objc_alloc_init(MEMORY[0x277D758D8]);
    v10 = MEMORY[0x277D75208];
    v11 = [(DialerController *)self dialerView];
    v12 = [v11 callButton];
    [v12 bounds];
    v14 = v13;
    v15 = [(DialerController *)self dialerView];
    v16 = [v15 callButton];
    [v16 bounds];
    v17 = [v10 bezierPathWithOvalInRect:{0.0, 0.0, v14}];
    [v9 setVisiblePath:v17];

    v18 = objc_alloc(MEMORY[0x277D75B90]);
    v19 = [(DialerController *)self dialerView];
    v20 = [v19 callButton];
    v8 = [v18 initWithView:v20 parameters:v9];
  }

  else
  {
    v7 = PHDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MPKeypadViewController contextMenuInteraction:previewForHighlightingMenuWithConfiguration:];
    }

    v8 = 0;
  }

  return v8;
}

- (void)providersChangedForProviderManager:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = self;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_2429BC000, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling providersChangedForProviderManager %@", &v7, 0x16u);
  }

  [(DialerController *)self updateDialerViewDualSimMenu];
  [(MPKeypadViewController *)self refreshLocalizedSenderIdentity];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)searchButtonPressed:(id)a3
{
  v4 = a3;
  v8 = [(MPKeypadViewController *)self delegate];
  v5 = [(PHAbstractDialerView *)self->super._dialerView lcdView];
  v6 = [v5 text];
  v7 = [v6 unformattedNumber];
  [v8 didPressSearchButton:v4 unformattedNumber:v7];
}

- (void)presentContactsSearchFor:(id)a3
{
  v4 = a3;
  v5 = [(MPKeypadViewController *)self delegate];
  [v5 presentContactsSearchFor:v4];
}

- (void)presentAppleSupportGuidedHelp
{
  v2 = [(MPKeypadViewController *)self delegate];
  [v2 presentAppleSupportGuidedHelp];
}

- (id)_businessItemForNumber:(id)a3 messageable:(BOOL *)a4
{
  v6 = a3;
  if ([v6 length] && (-[MPKeypadViewController bizService](self, "bizService"), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = dispatch_group_create();
    v25 = 0;
    v26[0] = &v25;
    v26[1] = 0x3032000000;
    v26[2] = __Block_byref_object_copy__2;
    v26[3] = __Block_byref_object_dispose__2;
    v27 = 0;
    v22 = 0;
    v23[0] = &v22;
    v23[1] = 0x2020000000;
    v24 = 0;
    v9 = [(MPKeypadViewController *)self brandManager];

    if (v9)
    {
      dispatch_group_enter(v8);
      v10 = [(MPKeypadViewController *)self brandManager];
      v11 = *MEMORY[0x277CF3680];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __61__MPKeypadViewController__businessItemForNumber_messageable___block_invoke;
      v17[3] = &unk_278D74EF0;
      v17[4] = self;
      v18 = v6;
      v20 = &v25;
      v21 = &v22;
      v19 = v8;
      [v10 isBrandRegisteredWithIdentifier:v18 forService:v11 completion:v17];
    }

    v12 = dispatch_time(0, 1000000000);
    if (dispatch_group_wait(v8, v12))
    {
      v13 = PHDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [MPKeypadViewController _businessItemForNumber:v13 messageable:?];
      }

      v14 = 0;
    }

    else
    {
      v15 = PHDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [(MPKeypadViewController *)v26 _businessItemForNumber:v23 messageable:v15];
      }

      if (a4)
      {
        *a4 = *(v23[0] + 24);
      }

      v14 = *(v26[0] + 40);
    }

    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __61__MPKeypadViewController__businessItemForNumber_messageable___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  if (a3 || !a2)
  {
    v9 = *(a1 + 48);

    dispatch_group_leave(v9);
  }

  else
  {
    v4 = [*(a1 + 32) bizService];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __61__MPKeypadViewController__businessItemForNumber_messageable___block_invoke_2;
    v12[3] = &unk_278D74EC8;
    v10 = *(a1 + 56);
    v5 = *(a1 + 40);
    *&v6 = v10;
    *(&v6 + 1) = *(a1 + 64);
    v11 = v6;
    v7 = *(a1 + 48);
    *&v8 = v5;
    *(&v8 + 1) = v7;
    v13 = v8;
    v14 = v11;
    [v4 fetchBusinessItemForPhoneNumber:v5 completion:v12];
  }
}

void __61__MPKeypadViewController__businessItemForNumber_messageable___block_invoke_2(uint64_t a1, void *a2, char a3, void *a4)
{
  v8 = a2;
  v9 = a4;
  if (v9)
  {
    v10 = PHDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __61__MPKeypadViewController__businessItemForNumber_messageable___block_invoke_2_cold_1();
    }

    LOBYTE(v15) = 0;
    v11 = [objc_alloc(MEMORY[0x277CF3600]) initWithBizID:0 phoneNumber:*(a1 + 32) name:@"Apple Support" phoneHash:0 squareLogoURL:0 wideLogoURL:0 tintColor:0 backgroundColor:0 callToActions:0 messagingOpenHours:0 callingOpenHours:0 isVerified:v15 intentID:0 groupID:0 visibilityItems:0];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    if (v8)
    {
      v14 = a3;
    }

    else
    {
      v14 = 0;
    }

    *(*(*(a1 + 56) + 8) + 24) = v14;
  }

  dispatch_group_leave(*(a1 + 40));
}

- (MPKeyPadViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __89__MPKeypadViewController_searchAndUpdateResultsFor_shouldRefreshResult_showPastedString___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_2429BC000, v0, v1, "Error searching for contacts: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __89__MPKeypadViewController_searchAndUpdateResultsFor_shouldRefreshResult_showPastedString___block_invoke_133_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_2429BC000, v0, v1, "Error searching for business: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)contextMenuInteraction:configurationForMenuAtLocation:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_2429BC000, v0, v1, "Unexpected contenxt menu interaction: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)contextMenuInteraction:previewForHighlightingMenuWithConfiguration:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_2429BC000, v0, v1, "Unexpected context menu interaction: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_businessItemForNumber:(os_log_t)log messageable:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 40) != 0;
  v4 = *(*a2 + 24);
  v6[0] = 67109376;
  v6[1] = v3;
  v7 = 1024;
  v8 = v4;
  _os_log_debug_impl(&dword_2429BC000, log, OS_LOG_TYPE_DEBUG, "Phone number properties business:%d messageable:%d", v6, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

void __61__MPKeypadViewController__businessItemForNumber_messageable___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_2429BC000, v0, v1, "Unable to fetch business details BCS: %@, falling back to placeholder BusinessItem", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end
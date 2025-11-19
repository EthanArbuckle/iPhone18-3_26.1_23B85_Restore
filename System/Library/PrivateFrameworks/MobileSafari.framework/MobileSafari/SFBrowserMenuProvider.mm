@interface SFBrowserMenuProvider
+ (SFBrowserMenuProvider)sharedProvider;
- (BOOL)commandConflictsWithTextEditing:(id)a3;
- (SFBrowserMenuProvider)init;
- (id)_commandWithAction:(SEL)a3 input:(id)a4 modifierFlags:(int64_t)a5 discoverabilityTitle:(id)a6 wantsPriorityOverSystemBehavior:(BOOL)a7 webInterceptable:(BOOL)a8 property:(unint64_t)a9 alternates:(id)a10;
- (id)_placeholderCommandWithAction:(SEL)a3 input:(id)a4 modifierFlags:(int64_t)a5 discoverabilityTitle:(id)a6;
- (id)keyCommandWithAction:(SEL)a3 input:(id)a4 modifierFlags:(int64_t)a5 webInterceptable:(BOOL)a6 builder:(id)a7;
- (id)makeApplicationMenuElementsForPersona:(int64_t)a3 withExistingKeyCommands:(id)a4;
- (id)makeBookmarksMenuElementsForPersona:(int64_t)a3;
- (id)makeBookmarksViewControlsMenu;
- (id)makeEditMenuElements;
- (id)makeElementAddCurrentPageToHomeScreen;
- (id)makeElementAddToBookmarks;
- (id)makeElementAddToReadingList;
- (id)makeElementAddToReadingListTapPlaceholder;
- (id)makeElementArrangeTabsByTitle;
- (id)makeElementArrangeTabsByWebsite;
- (id)makeElementBookmarksList;
- (id)makeElementBookmarksViewControlsOptions;
- (id)makeElementBookmarksViewControlsSize;
- (id)makeElementBookmarksViewControlsSortOptions;
- (id)makeElementClearHistory;
- (id)makeElementClearHistoryAlt1;
- (id)makeElementDuplicateCurrentTab;
- (id)makeElementEditBookmarks;
- (id)makeElementExportBrowsingData;
- (id)makeElementFileTranslationRadar;
- (id)makeElementForBookmarks:(id)a3;
- (id)makeElementForLeafBookmark:(id)a3 withFavicon:(id)a4;
- (id)makeElementForManagedLeafBookmark:(id)a3 withFavicon:(id)a4;
- (id)makeElementImportBrowsingData;
- (id)makeElementManageProfiles;
- (id)makeElementMergeAllWindows;
- (id)makeElementMoveCurrentTabToNewWindow;
- (id)makeElementNavigateBack;
- (id)makeElementNavigateForward;
- (id)makeElementNewTabGroupFromCurrentTabs;
- (id)makeElementNextReadingListItem;
- (id)makeElementPreviousReadingListItem;
- (id)makeElementPrint;
- (id)makeElementReopenLastClosedTab;
- (id)makeElementReportAutoFillIssue;
- (id)makeElementReportTranslationIssue;
- (id)makeElementShareCurrentPage;
- (id)makeElementShowBookmarksItemForBookmarksMenu;
- (id)makeElementShowCloudTabs;
- (id)makeElementShowExtensions;
- (id)makeElementShowHistory;
- (id)makeElementShowPrivacyReport;
- (id)makeElementShowSettingsForCurrentPage;
- (id)makeElementShowSharedWithYouCollection;
- (id)makeElementTapToDownload;
- (id)makeElementTapToOpenInNewTab;
- (id)makeElementTapToOpenInNewTabModified;
- (id)makeElementToggleContentBlockers;
- (id)makeElementToggleCurrentTabIsPinned;
- (id)makeElementToggleCurrentTabMediaState;
- (id)makeElementToggleTranslation;
- (id)makeElementsForManagedBookmarks:(id)a3;
- (id)makeElementsSwitchToProfile;
- (id)makeElementsSwitchToTab;
- (id)makeExtensionsMenuWithExistingKeyCommands:(id)a3;
- (id)makeFileMenuElementsForPersona:(int64_t)a3;
- (id)makeGoMenuElementsForPersona:(int64_t)a3;
- (id)makeHistoryMenuElementsForPersona:(int64_t)a3;
- (id)makeStopReloadMenu;
- (id)makeViewMenuElementsForPersona:(int64_t)a3;
- (id)makeWindowMenuElementsForPersona:(int64_t)a3;
- (void)_setMenusForPersona:(int64_t)a3 withBuilder:(id)a4;
- (void)_setMenusIfNecessaryForPersona:(int64_t)a3;
- (void)_shouldHideExtensionsDiscoveryDidChange;
- (void)_updateHistoryClearingAvailabilityAndRebuildIfNecessary;
- (void)addKeyCommandsFromElements:(id)a3 toSet:(id)a4;
- (void)clearCachedMenuForPersona:(int64_t)a3;
- (void)rebuildMenuIfNeededForPersona:(int64_t)a3;
- (void)setMenusForSafariWithBuilder:(id)a3;
- (void)setMenusIfNecessaryForSafariViewServiceWithBuilder:(id)a3;
- (void)setMenusIfNecessaryForWebAppWithBuilder:(id)a3;
@end

@implementation SFBrowserMenuProvider

+ (SFBrowserMenuProvider)sharedProvider
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SFBrowserMenuProvider_sharedProvider__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedProvider_once != -1)
  {
    dispatch_once(&sharedProvider_once, block);
  }

  v2 = sharedProvider_sharedProvider_0;

  return v2;
}

void __39__SFBrowserMenuProvider_sharedProvider__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedProvider_sharedProvider_0;
  sharedProvider_sharedProvider_0 = v1;
}

- (SFBrowserMenuProvider)init
{
  v7.receiver = self;
  v7.super_class = SFBrowserMenuProvider;
  v2 = [(SFBrowserMenuProvider *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_persona = 0;
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v3 selector:sel__enabledExtensionsDidChange name:*MEMORY[0x1E69C92B8] object:0];
    [v4 addObserver:v3 selector:sel__enabledExtensionsDidChange name:*MEMORY[0x1E69C92C0] object:0];
    [v4 addObserver:v3 selector:sel__enabledExtensionsDidChange name:*MEMORY[0x1E69C9220] object:0];
    [v4 addObserver:v3 selector:sel__shouldHideExtensionsDiscoveryDidChange name:*MEMORY[0x1E69C8C40] object:0];
    [v4 addObserver:v3 selector:sel__updateHistoryClearingAvailabilityAndRebuildIfNecessary name:*MEMORY[0x1E69ADD68] object:0];
    v3->_isHistoryClearingAllowed = 1;
    [(SFBrowserMenuProvider *)v3 _updateHistoryClearingAvailabilityAndRebuildIfNecessary];
    [v4 addObserver:v3 selector:sel__managedBookmarksDidChange name:@"SFManagedBookmarksDidChange" object:0];
    v5 = v3;
  }

  return v3;
}

- (void)_updateHistoryClearingAvailabilityAndRebuildIfNecessary
{
  objc_initWeak(&location, self);
  v2 = +[SFFeatureManager sharedFeatureManager];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __80__SFBrowserMenuProvider__updateHistoryClearingAvailabilityAndRebuildIfNecessary__block_invoke;
  v3[3] = &unk_1E721E488;
  objc_copyWeak(&v4, &location);
  [v2 determineIfHistoryClearingIsAvailableWithCompletionHandler:v3];

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __80__SFBrowserMenuProvider__updateHistoryClearingAvailabilityAndRebuildIfNecessary__block_invoke(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __80__SFBrowserMenuProvider__updateHistoryClearingAvailabilityAndRebuildIfNecessary__block_invoke_2;
  v3[3] = &unk_1E721E460;
  objc_copyWeak(&v4, (a1 + 32));
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
}

void __80__SFBrowserMenuProvider__updateHistoryClearingAvailabilityAndRebuildIfNecessary__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = *(a1 + 40);
    v4 = WeakRetained[80];
    WeakRetained[80] = v3;
    if (v3 != v4)
    {
      v5 = WeakRetained;
      [WeakRetained clearCachedMenuForPersona:0];
      WeakRetained = v5;
    }
  }
}

- (void)setMenusForSafariWithBuilder:(id)a3
{
  v4 = a3;
  [(SFBrowserMenuProvider *)self _setMenusIfNecessaryForPersona:0];
  [(SFBrowserMenuProvider *)self _setMenusForPersona:0 withBuilder:v4];
}

- (void)setMenusIfNecessaryForSafariViewServiceWithBuilder:(id)a3
{
  v4 = a3;
  if ((self->_persona | 4) != 4)
  {
    v5 = v4;
    [(SFBrowserMenuProvider *)self _setMenusIfNecessaryForPersona:?];
    [(SFBrowserMenuProvider *)self _setMenusForPersona:self->_persona withBuilder:v5];
    v4 = v5;
  }
}

- (void)setMenusIfNecessaryForWebAppWithBuilder:(id)a3
{
  if (self->_persona == 3)
  {
    v5 = a3;
    [(SFBrowserMenuProvider *)self _setMenusIfNecessaryForPersona:3];
    [(SFBrowserMenuProvider *)self _setMenusForPersona:self->_persona withBuilder:v5];
  }
}

- (void)rebuildMenuIfNeededForPersona:(int64_t)a3
{
  if (self->_persona != a3)
  {
    self->_persona = a3;
    v4 = [MEMORY[0x1E69DCC88] mainSystem];
    [v4 setNeedsRebuild];
  }
}

- (void)clearCachedMenuForPersona:(int64_t)a3
{
  v4 = &self->super.isa + a3;
  v5 = v4[1];
  v4[1] = 0;

  v6 = v4[5];
  v4[5] = 0;

  extensionsMenu = self->_extensionsMenu;
  self->_extensionsMenu = 0;

  privacyReportAndPerSiteSettingsMenu = self->_privacyReportAndPerSiteSettingsMenu;
  self->_privacyReportAndPerSiteSettingsMenu = 0;

  v9 = [MEMORY[0x1E69DCC88] mainSystem];
  [v9 setNeedsRebuild];
}

- (void)_setMenusIfNecessaryForPersona:(int64_t)a3
{
  v28[1] = *MEMORY[0x1E69E9840];
  if (!self->_personaToMenusMap[a3] || !self->_personaToCommandSetMap[a3])
  {
    v24 = &self->super.isa + a3;
    v5 = [MEMORY[0x1E695DFA8] set];
    v25 = [(SFBrowserMenuProvider *)self makeApplicationMenuElementsForPersona:a3 withExistingKeyCommands:v5];
    [SFBrowserMenuProvider addKeyCommandsFromElements:"addKeyCommandsFromElements:toSet:" toSet:?];
    if (self->_privacyReportAndPerSiteSettingsMenu)
    {
      v28[0] = self->_privacyReportAndPerSiteSettingsMenu;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
      [(SFBrowserMenuProvider *)self addKeyCommandsFromElements:v6 toSet:v5];
    }

    v7 = [(SFBrowserMenuProvider *)self makeFileMenuElementsForPersona:a3];
    [(SFBrowserMenuProvider *)self addKeyCommandsFromElements:v7 toSet:v5];
    v8 = [(SFBrowserMenuProvider *)self makeEditMenuElements];
    [(SFBrowserMenuProvider *)self addKeyCommandsFromElements:v8 toSet:v5];
    v9 = [(SFBrowserMenuProvider *)self makeViewMenuElementsForPersona:a3];
    [(SFBrowserMenuProvider *)self addKeyCommandsFromElements:v9 toSet:v5];
    v10 = [(SFBrowserMenuProvider *)self makeGoMenuElementsForPersona:a3];
    [(SFBrowserMenuProvider *)self addKeyCommandsFromElements:v10 toSet:v5];
    v11 = [(SFBrowserMenuProvider *)self makeHistoryMenuElementsForPersona:a3];
    [(SFBrowserMenuProvider *)self addKeyCommandsFromElements:v11 toSet:v5];
    v12 = [(SFBrowserMenuProvider *)self makeBookmarksMenuElementsForPersona:a3];
    [(SFBrowserMenuProvider *)self addKeyCommandsFromElements:v12 toSet:v5];
    v13 = [(SFBrowserMenuProvider *)self makeWindowMenuElementsForPersona:a3];
    [(SFBrowserMenuProvider *)self addKeyCommandsFromElements:v13 toSet:v5];
    v14 = [(SFBrowserMenuProvider *)self makeExtensionsMenuWithExistingKeyCommands:v5];
    extensionsMenu = self->_extensionsMenu;
    self->_extensionsMenu = v14;

    v16 = *MEMORY[0x1E69DE100];
    v26[0] = *MEMORY[0x1E69DE0C0];
    v26[1] = v16;
    v27[0] = v25;
    v27[1] = v7;
    v17 = *MEMORY[0x1E69DE230];
    v26[2] = *MEMORY[0x1E69DE0F8];
    v26[3] = v17;
    v27[2] = v8;
    v27[3] = v9;
    v26[4] = @"GoMenu";
    v26[5] = @"HistoryMenu";
    v27[4] = v10;
    v27[5] = v11;
    v18 = *MEMORY[0x1E69DE238];
    v26[6] = @"BookmarksMenu";
    v26[7] = v18;
    v27[6] = v12;
    v27[7] = v13;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:8];
    v20 = *(v23 + 8 * a3);
    *(v23 + 8 * a3) = v19;

    v21 = [v5 copy];
    v22 = v24[5];
    v24[5] = v21;
  }
}

- (void)_setMenusForPersona:(int64_t)a3 withBuilder:(id)a4
{
  v74[6] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v44 = a3;
  val = self;
  v51 = self->_personaToMenusMap[a3];
  v7 = *MEMORY[0x1E69DE118];
  v74[0] = *MEMORY[0x1E69DE200];
  v74[1] = v7;
  v8 = *MEMORY[0x1E69DE168];
  v74[2] = *MEMORY[0x1E69DE160];
  v74[3] = v8;
  v9 = *MEMORY[0x1E69DE218];
  v74[4] = *MEMORY[0x1E69DE1A8];
  v74[5] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:6];
  v11 = [v10 mutableCopy];

  if (!a3)
  {
    [v11 addObject:*MEMORY[0x1E69DE0D8]];
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v65 objects:v73 count:16];
  if (v12)
  {
    v13 = *v66;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v66 != v13)
        {
          objc_enumerationMutation(obj);
        }

        [v6 removeMenuForIdentifier:*(*(&v65 + 1) + 8 * i)];
      }

      v12 = [obj countByEnumeratingWithState:&v65 objects:v73 count:16];
    }

    while (v12);
  }

  v15 = MEMORY[0x1E69DE170];
  if (v44 == 3)
  {
    [v6 removeMenuForIdentifier:*MEMORY[0x1E69DE170]];
  }

  v16 = *MEMORY[0x1E69DE0C0];
  v17 = *MEMORY[0x1E69DE100];
  v72[0] = *MEMORY[0x1E69DE0C0];
  v72[1] = v17;
  v18 = *MEMORY[0x1E69DE230];
  v72[2] = *MEMORY[0x1E69DE0F8];
  v43 = v18;
  v72[3] = v18;
  v72[4] = *MEMORY[0x1E69DE238];
  [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:5];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v49 = v62 = 0u;
  v19 = [v49 countByEnumeratingWithState:&v61 objects:v71 count:16];
  if (v19)
  {
    v20 = *v62;
    v45 = *MEMORY[0x1E69DE108];
    v47 = *v15;
    v21 = *MEMORY[0x1E69DE198];
    v46 = *v62;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v62 != v20)
        {
          objc_enumerationMutation(v49);
        }

        v23 = *(*(&v61 + 1) + 8 * j);
        v24 = [(NSDictionary *)v51 objectForKeyedSubscript:v23];
        if ([v24 count])
        {
          if (WBSIsEqual())
          {
            objc_initWeak(&location, val);
            v58[0] = MEMORY[0x1E69E9820];
            v58[1] = 3221225472;
            v58[2] = __57__SFBrowserMenuProvider__setMenusForPersona_withBuilder___block_invoke;
            v58[3] = &unk_1E721E3E8;
            objc_copyWeak(&v59, &location);
            [v6 replaceChildrenOfMenuForIdentifier:v47 fromChildrenBlock:v58];
            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
            v25 = v24;
            v26 = [v25 countByEnumeratingWithState:&v54 objects:v70 count:16];
            v27 = v16;
            if (v26)
            {
              v28 = *v55;
              do
              {
                for (k = 0; k != v26; ++k)
                {
                  if (*v55 != v28)
                  {
                    objc_enumerationMutation(v25);
                  }

                  [v6 insertSiblingMenu:*(*(&v54 + 1) + 8 * k) beforeMenuForIdentifier:v21];
                }

                v26 = [v25 countByEnumeratingWithState:&v54 objects:v70 count:16];
              }

              while (v26);
            }

            v20 = v46;
            v16 = v27;
            objc_destroyWeak(&v59);
            objc_destroyWeak(&location);
          }

          else if (WBSIsEqual())
          {
            if (val->_extensionsMenu)
            {
              v30 = MEMORY[0x1E69DCC60];
              extensionsMenu = val->_extensionsMenu;
              v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&extensionsMenu count:1];
              v32 = [v30 menuWithTitle:&stru_1EFF36230 image:0 identifier:0 options:1 children:v31];

              [v6 insertSiblingMenu:v32 afterMenuForIdentifier:v45];
            }

            v33 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1EFF36230 image:0 identifier:0 options:1 children:v24];
            [v6 insertSiblingMenu:v33 beforeMenuForIdentifier:v45];
            [v6 removeCommandForAction:sel_findAndReplace_ propertyList:0];
          }

          else
          {
            v52[0] = MEMORY[0x1E69E9820];
            v52[1] = 3221225472;
            v52[2] = __57__SFBrowserMenuProvider__setMenusForPersona_withBuilder___block_invoke_2;
            v52[3] = &unk_1E721E410;
            v53 = v24;
            [v6 replaceChildrenOfMenuForIdentifier:v23 fromChildrenBlock:v52];
          }
        }
      }

      v19 = [v49 countByEnumeratingWithState:&v61 objects:v71 count:16];
    }

    while (v19);
  }

  v34 = MEMORY[0x1E69DCC60];
  v35 = _WBSLocalizedString();
  if (v44 == 3)
  {
    v36 = [(NSDictionary *)v51 objectForKeyedSubscript:@"GoMenu"];
    v37 = [v34 menuWithTitle:v35 image:0 identifier:@"GoMenu" options:1 children:v36];

    [v6 insertSiblingMenu:v37 afterMenuForIdentifier:v43];
  }

  else
  {
    v38 = [(NSDictionary *)v51 objectForKeyedSubscript:@"HistoryMenu"];
    v37 = [v34 menuWithTitle:v35 image:0 identifier:@"HistoryMenu" options:1 children:v38];

    [v6 insertSiblingMenu:v37 afterMenuForIdentifier:v43];
    v39 = MEMORY[0x1E69DCC60];
    v40 = _WBSLocalizedString();
    v41 = [(NSDictionary *)v51 objectForKeyedSubscript:@"BookmarksMenu"];
    v42 = [v39 menuWithTitle:v40 image:0 identifier:@"BookmarksMenu" options:1 children:v41];

    [v6 insertSiblingMenu:v42 afterMenuForIdentifier:@"HistoryMenu"];
  }
}

id __57__SFBrowserMenuProvider__setMenusForPersona_withBuilder___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained[12] children];
    v7 = [v3 arrayByAddingObjectsFromArray:v6];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (BOOL)commandConflictsWithTextEditing:(id)a3
{
  v3 = [a3 propertyList];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = ([v3 integerValue] >> 20) & 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)_placeholderCommandWithAction:(SEL)a3 input:(id)a4 modifierFlags:(int64_t)a5 discoverabilityTitle:(id)a6
{
  v6 = [(SFBrowserMenuProvider *)self _commandWithAction:a3 input:a4 modifierFlags:a5 discoverabilityTitle:a6 webInterceptable:1 property:0 alternates:MEMORY[0x1E695E0F0]];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 _placeholderKeyCommand];

    v6 = v7;
  }

  return v6;
}

- (id)_commandWithAction:(SEL)a3 input:(id)a4 modifierFlags:(int64_t)a5 discoverabilityTitle:(id)a6 wantsPriorityOverSystemBehavior:(BOOL)a7 webInterceptable:(BOOL)a8 property:(unint64_t)a9 alternates:(id)a10
{
  v10 = a8;
  v16 = a6;
  v17 = a10;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __154__SFBrowserMenuProvider__commandWithAction_input_modifierFlags_discoverabilityTitle_wantsPriorityOverSystemBehavior_webInterceptable_property_alternates___block_invoke;
  v22[3] = &unk_1E721E438;
  v23 = v17;
  v24 = v16;
  v25 = a9;
  v26 = a7;
  v18 = v16;
  v19 = v17;
  v20 = [(SFBrowserMenuProvider *)self keyCommandWithAction:a3 input:a4 modifierFlags:a5 webInterceptable:v10 builder:v22];

  return v20;
}

void __154__SFBrowserMenuProvider__commandWithAction_input_modifierFlags_discoverabilityTitle_wantsPriorityOverSystemBehavior_webInterceptable_property_alternates___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  v4 = a2;
  [v4 setAlternates:v3];
  [v4 setDiscoverabilityTitle:*(a1 + 40)];
  [v4 setIsHidden:*(a1 + 40) == 0];
  [v4 setProperty:*(a1 + 48)];
  [v4 setWantsPriorityOverSystemBehavior:*(a1 + 56)];
}

- (id)keyCommandWithAction:(SEL)a3 input:(id)a4 modifierFlags:(int64_t)a5 webInterceptable:(BOOL)a6 builder:(id)a7
{
  v26 = a6;
  v9 = a4;
  v10 = a7;
  v11 = objc_alloc_init(SFBrowserMenuKeyCommandParameters);
  if (v10)
  {
    v10[2](v10, v11);
  }

  v12 = [(SFBrowserMenuKeyCommandParameters *)v11 alternates];
  v13 = [(SFBrowserMenuKeyCommandParameters *)v11 discoverabilityTitle];
  v14 = [(SFBrowserMenuKeyCommandParameters *)v11 propertyList];
  v15 = [(SFBrowserMenuKeyCommandParameters *)v11 wantsPriorityOverSystemBehavior];
  v16 = [(SFBrowserMenuKeyCommandParameters *)v11 systemImageName];
  if (v16)
  {
    v17 = [MEMORY[0x1E69DCAB8] systemImageNamed:v16];
  }

  else
  {
    v17 = 0;
  }

  if (v13)
  {
    v18 = v13;
  }

  else
  {
    v18 = &stru_1EFF36230;
  }

  v19 = a3;
  v20 = v9;
  v21 = [MEMORY[0x1E69DCBA0] commandWithTitle:v18 image:v17 action:v19 input:v9 modifierFlags:a5 propertyList:v14 alternates:v12];
  v22 = v21;
  if (v13)
  {
    [v21 setDiscoverabilityTitle:v13];
  }

  if ([(SFBrowserMenuKeyCommandParameters *)v11 isHidden])
  {
    v23 = 4;
  }

  else
  {
    v23 = 0;
  }

  [v22 setAttributes:v23];
  [v22 setWantsPriorityOverSystemBehavior:v15];
  if (v26)
  {
    [v22 _markHandleAfterKeyEvent];
  }

  if (self->_alwaysAllowWebInterception)
  {
    [v22 _markHandleAfterKeyEvent];
  }

  return v22;
}

- (id)makeExtensionsMenuWithExistingKeyCommands:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26 = [MEMORY[0x1E695DF70] array];
  v25 = self->_webExtensionsController;
  [(WBSWebExtensionsController *)v25 enabledWebExtensionsSortedByDisplayShortName];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v40 = 0u;
  v30 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v30)
  {
    v28 = *v38;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v38 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v37 + 1) + 8 * i);
        v7 = [v6 menuElements];
        if ([v7 count])
        {
          v29 = v6;
          v32 = i;
          v8 = [MEMORY[0x1E695DF70] array];
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v31 = v7;
          v9 = v7;
          v10 = [v9 countByEnumeratingWithState:&v33 objects:v43 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v34;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v34 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v33 + 1) + 8 * j);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 containsObject:v14])
                {
                  v15 = WBS_LOG_CHANNEL_PREFIXWebExtensions();
                  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v42 = v14;
                    _os_log_impl(&dword_18B7AC000, v15, OS_LOG_TYPE_INFO, "Discarding conflicting key command: %@", buf, 0xCu);
                  }
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [v4 addObject:v14];
                  }

                  [v8 addObject:v14];
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v33 objects:v43 count:16];
            }

            while (v11);
          }

          if ([v8 count])
          {
            v16 = MEMORY[0x1E69DCC60];
            v17 = [v29 displayShortName];
            v18 = [v29 icon];
            v19 = [v16 menuWithTitle:v17 image:v18 identifier:0 options:1 children:v8];
            [v26 addObject:v19];
          }

          v7 = v31;
          i = v32;
        }
      }

      v30 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v30);
  }

  if ([v26 count])
  {
    v20 = MEMORY[0x1E69DCC60];
    v21 = _WBSLocalizedString();
    v22 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"puzzlepiece.extension"];
    v23 = [v20 menuWithTitle:v21 image:v22 identifier:@"ExtensionsMenu" options:0 children:v26];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)_shouldHideExtensionsDiscoveryDidChange
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__SFBrowserMenuProvider__shouldHideExtensionsDiscoveryDidChange__block_invoke;
  block[3] = &unk_1E721B360;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)addKeyCommandsFromElements:(id)a3 toSet:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v12 children];
          [(SFBrowserMenuProvider *)self addKeyCommandsFromElements:v13 toSet:v7];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v7 addObject:v12];
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (id)makeElementShowExtensions
{
  v2 = MEMORY[0x1E69DC8B0];
  v3 = _WBSLocalizedString();
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"puzzlepiece.extension"];
  v5 = [v2 commandWithTitle:v3 image:v4 action:sel_showManageExtensions_ propertyList:0];

  return v5;
}

- (id)makeApplicationMenuElementsForPersona:(int64_t)a3 withExistingKeyCommands:(id)a4
{
  v33[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v6 = MEMORY[0x1E69DCC60];
    v7 = [(SFBrowserMenuProvider *)self makeElementShowPrivacyReport:0];
    v33[0] = v7;
    v8 = MEMORY[0x1E69DCC60];
    v9 = [(SFBrowserMenuProvider *)self makeElementShowSettingsForCurrentPage];
    v32 = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
    v11 = [v8 menuWithTitle:&stru_1EFF36230 image:0 identifier:0 options:1 children:v10];
    v33[1] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
    v13 = [v6 menuWithTitle:&stru_1EFF36230 image:0 identifier:0 options:1 children:v12];
    privacyReportAndPerSiteSettingsMenu = self->_privacyReportAndPerSiteSettingsMenu;
    self->_privacyReportAndPerSiteSettingsMenu = v13;

    v15 = MEMORY[0x1E69DCC60];
    v16 = [(SFBrowserMenuProvider *)self makeElementShowExtensions];
    v30 = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
    v18 = [v15 menuWithTitle:&stru_1EFF36230 image:0 identifier:0 options:1 children:v17];
    v31[0] = v18;
    v19 = MEMORY[0x1E69DCC60];
    v20 = [(SFBrowserMenuProvider *)self makeElementClearHistory];
    v29 = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
    v22 = [v19 menuWithTitle:&stru_1EFF36230 image:0 identifier:0 options:1 children:v21];
    v31[1] = v22;
    v23 = MEMORY[0x1E69DCC60];
    v24 = [(SFBrowserMenuProvider *)self makeElementManageProfiles];
    v28 = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
    v26 = [v23 menuWithTitle:&stru_1EFF36230 image:0 identifier:0 options:1 children:v25];
    v31[2] = v26;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:3];
  }

  return v4;
}

- (id)makeElementClearHistory
{
  v3 = MEMORY[0x1E69DC8B0];
  v4 = _WBSLocalizedString();
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark"];
  v6 = [v3 commandWithTitle:v4 image:v5 action:sel_clearHistory_ propertyList:0];

  if (!self->_isHistoryClearingAllowed)
  {
    [v6 setAttributes:{objc_msgSend(v6, "attributes") | 1}];
  }

  return v6;
}

- (id)makeElementManageProfiles
{
  v2 = MEMORY[0x1E69DC8B0];
  v3 = _WBSLocalizedString();
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person"];
  v5 = [v2 commandWithTitle:v3 image:v4 action:sel_manageProfiles_ propertyList:0];

  return v5;
}

- (id)makeElementShowPrivacyReport
{
  v2 = MEMORY[0x1E69DC8B0];
  v3 = _WBSLocalizedString();
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"shield.lefthalf.filled"];
  v5 = [v2 commandWithTitle:v3 image:v4 action:sel_showPrivacyReport_ propertyList:0];

  return v5;
}

- (id)makeElementShowSettingsForCurrentPage
{
  v2 = MEMORY[0x1E69DC8B0];
  v3 = _WBSLocalizedString();
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"globe"];
  v5 = [v2 commandWithTitle:v3 image:v4 action:sel_showSettingsForCurrentPage_ propertyList:0];

  return v5;
}

- (id)makeBookmarksMenuElementsForPersona:(int64_t)a3
{
  v23[5] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v5 = MEMORY[0x1E69DCC60];
    v20 = [(SFBrowserMenuProvider *)self makeElementShowBookmarksItemForBookmarksMenu];
    v22[0] = v20;
    v19 = [(SFBrowserMenuProvider *)self makeElementEditBookmarks];
    v22[1] = v19;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    v17 = [v5 menuWithTitle:? image:? identifier:? options:? children:?];
    v23[0] = v17;
    v6 = [(SFBrowserMenuProvider *)self makeElementAddToBookmarks];
    v23[1] = v6;
    v7 = MEMORY[0x1E69DCC60];
    v8 = [(SFBrowserMenuProvider *)self makeElementAddToReadingList];
    v21[0] = v8;
    v9 = [(SFBrowserMenuProvider *)self makeElementAddToReadingListTapPlaceholder];
    v21[1] = v9;
    v10 = [(SFBrowserMenuProvider *)self makeElementPreviousReadingListItem];
    v21[2] = v10;
    v11 = [(SFBrowserMenuProvider *)self makeElementNextReadingListItem];
    v21[3] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];
    v13 = [v7 menuWithTitle:&stru_1EFF36230 image:0 identifier:0 options:1 children:v12];
    v23[2] = v13;
    v14 = [(SFBrowserMenuProvider *)self makeElementShowCloudTabs];
    v23[3] = v14;
    v15 = [(SFBrowserMenuProvider *)self makeElementBookmarksList];
    v23[4] = v15;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:5];
  }

  return v3;
}

- (id)makeElementAddToBookmarks
{
  v3 = _WBSLocalizedString();
  v4 = [(SFBrowserMenuProvider *)self _commandWithAction:sel_addToBookmarks_ input:@"D" modifierFlags:0x100000 discoverabilityTitle:v3 webInterceptable:1];

  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"book"];
  [v4 setImage:v5];

  return v4;
}

- (id)makeElementAddToReadingList
{
  v3 = _WBSLocalizedString();
  v4 = [(SFBrowserMenuProvider *)self _commandWithAction:sel_addToReadingList_ input:@"D" modifierFlags:1179648 discoverabilityTitle:v3 webInterceptable:1];

  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"eyeglasses"];
  [v4 setImage:v5];

  return v4;
}

- (id)makeElementAddToReadingListTapPlaceholder
{
  v3 = _WBSLocalizedString();
  v4 = _WBSLocalizedString();
  v5 = [(SFBrowserMenuProvider *)self _placeholderCommandWithAction:sel_emptySelectorForAddLinkToReadingListModifierLinkTap input:v3 modifierFlags:0x20000 discoverabilityTitle:v4];

  return v5;
}

- (id)makeElementBookmarksList
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC928];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__SFBrowserMenuProvider_makeElementBookmarksList__block_invoke;
  v5[3] = &unk_1E721E4B0;
  objc_copyWeak(&v6, &location);
  v3 = [v2 elementWithUncachedProvider:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

void __49__SFBrowserMenuProvider_makeElementBookmarksList__block_invoke(uint64_t a1, void *a2)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[14];
    v7 = [MEMORY[0x1E695DF70] array];
    v8 = [v6 rootList];
    v9 = [v8 bookmarkArray];
    v10 = [v5 makeElementForBookmarks:v9];
    [v7 addObject:v10];

    v11 = +[SFManagedBookmarksController sharedController];
    v12 = [v11 topLevelManagedBookmarkFolder];

    v13 = 0x1E695D000;
    if (v12)
    {
      v14 = [v12 children];
      v15 = [v14 count];

      if (v15)
      {
        v27 = MEMORY[0x1E69DCC60];
        v26 = [v12 title];
        v16 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"folder.badge.gearshape"];
        v17 = [v12 children];
        v18 = [v5 makeElementsForManagedBookmarks:v17];
        v29[0] = v18;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
        v20 = [v27 menuWithTitle:v26 image:v16 identifier:0 options:0 children:v19];
        [v7 addObject:v20];

        v13 = 0x1E695D000uLL;
      }
    }

    v21 = [v6 bookmarksBarList];
    v22 = [v21 bookmarkArray];
    v23 = [v5 makeElementForBookmarks:v22];
    [v7 addObject:v23];

    v24 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1EFF36230 image:0 identifier:0 options:1 children:v7];
    v28 = v24;
    v25 = [*(v13 + 3784) arrayWithObjects:&v28 count:1];
    v3[2](v3, v25);
  }

  else
  {
    v3[2](v3, MEMORY[0x1E695E0F0]);
  }
}

- (id)makeElementForBookmarks:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69DC928];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__SFBrowserMenuProvider_makeElementForBookmarks___block_invoke;
  v9[3] = &unk_1E721E528;
  v10 = v4;
  v11 = self;
  v6 = v4;
  v7 = [v5 elementWithProvider:v9];

  return v7;
}

void __49__SFBrowserMenuProvider_makeElementForBookmarks___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_group_create();
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__SFBrowserMenuProvider_makeElementForBookmarks___block_invoke_2;
  v11[3] = &unk_1E721E500;
  v7 = a1 + 32;
  v6 = *(a1 + 32);
  v11[4] = *(v7 + 8);
  v12 = v5;
  v13 = v4;
  v14 = v6;
  v15 = v3;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  [v6 enumerateObjectsUsingBlock:v11];
}

void __49__SFBrowserMenuProvider_makeElementForBookmarks___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v41[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [v5 isFolder];
  v7 = *(a1 + 32);
  v8 = &off_18BC3D000;
  if (!v6)
  {
    if (*(v7 + 120))
    {
      dispatch_group_enter(*(a1 + 48));
      v19 = MEMORY[0x1E695DFF8];
      v20 = [v5 address];
      v9 = [v19 URLWithString:v20];

      v21 = objc_alloc(MEMORY[0x1E69C97B0]);
      v22 = [v21 initWithURL:v9 iconSize:1 fallbackType:{*MEMORY[0x1E69C9938], *(MEMORY[0x1E69C9938] + 8)}];
      v23 = *(*(a1 + 32) + 120);
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __49__SFBrowserMenuProvider_makeElementForBookmarks___block_invoke_3;
      v35[3] = &unk_1E721E4D8;
      v24 = *(a1 + 40);
      v40 = a3;
      v25 = *(a1 + 32);
      v36 = v24;
      v37 = v25;
      v38 = v5;
      v39 = *(a1 + 48);
      v26 = [v23 registerOneTimeRequest:v22 priority:2 responseHandler:v35];
    }

    else
    {
      v9 = [v7 makeElementForLeafBookmark:v5 withFavicon:0];
      v27 = *(a1 + 40);
      v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      [v27 setObject:v9 forKeyedSubscript:v28];
    }

    goto LABEL_8;
  }

  v9 = [*(v7 + 112) listWithID:{objc_msgSend(v5, "identifier")}];
  if ([v9 bookmarkCount])
  {
    v10 = MEMORY[0x1E69DCC60];
    v30 = [v5 localizedTitle];
    v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"folder"];
    v12 = *(a1 + 32);
    v13 = [v9 bookmarkArray];
    v14 = [v12 makeElementForBookmarks:v13];
    v41[0] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
    v16 = [v10 menuWithTitle:v30 image:v11 identifier:0 options:0 children:v15];
    v17 = *(a1 + 40);
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [v17 setObject:v16 forKeyedSubscript:v18];

    v8 = &off_18BC3D000;
LABEL_8:

    block[0] = MEMORY[0x1E69E9820];
    block[1] = *(v8 + 280);
    block[2] = __49__SFBrowserMenuProvider_makeElementForBookmarks___block_invoke_4;
    block[3] = &unk_1E721B5D8;
    v29 = *(a1 + 48);
    v32 = *(a1 + 56);
    v33 = *(a1 + 40);
    v34 = *(a1 + 64);
    dispatch_group_notify(v29, MEMORY[0x1E69E96A0], block);

    goto LABEL_9;
  }

LABEL_9:
}

void __49__SFBrowserMenuProvider_makeElementForBookmarks___block_invoke_3(void *a1, void *a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = [a2 favicon];
  v6 = [v3 makeElementForLeafBookmark:v4 withFavicon:v5];
  v7 = a1[4];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[8]];
  [v7 setObject:v6 forKeyedSubscript:v8];

  v9 = a1[7];

  dispatch_group_leave(v9);
}

void __49__SFBrowserMenuProvider_makeElementForBookmarks___block_invoke_4(uint64_t a1)
{
  v6 = [MEMORY[0x1E695DF70] array];
  if ([*(a1 + 32) count])
  {
    v2 = 0;
    do
    {
      v3 = *(a1 + 40);
      v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v2];
      v5 = [v3 objectForKeyedSubscript:v4];
      [v6 safari_addObjectUnlessNil:v5];

      ++v2;
    }

    while (v2 < [*(a1 + 32) count]);
  }

  (*(*(a1 + 48) + 16))();
}

- (id)makeElementForLeafBookmark:(id)a3 withFavicon:(id)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E69DC8B0];
  v7 = a4;
  v8 = [v5 localizedTitle];
  v9 = v7;
  if (!v7)
  {
    v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"globe"];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v5, "identifier")}];
  v11 = [v6 commandWithTitle:v8 image:v9 action:sel_openBookmark_ propertyList:v10];

  if (!v7)
  {
  }

  return v11;
}

- (id)makeElementForManagedLeafBookmark:(id)a3 withFavicon:(id)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E69DC8B0];
  v7 = a4;
  v8 = [v5 title];
  v9 = v7;
  if (!v7)
  {
    v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"globe"];
  }

  v10 = [v5 uuid];
  v11 = [v10 UUIDString];
  v12 = [v6 commandWithTitle:v8 image:v9 action:sel_openBookmark_ propertyList:v11];

  if (!v7)
  {
  }

  return v12;
}

- (id)makeElementsForManagedBookmarks:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69DC928];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__SFBrowserMenuProvider_makeElementsForManagedBookmarks___block_invoke;
  v9[3] = &unk_1E721E528;
  v10 = v4;
  v11 = self;
  v6 = v4;
  v7 = [v5 elementWithProvider:v9];

  return v7;
}

void __57__SFBrowserMenuProvider_makeElementsForManagedBookmarks___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_group_create();
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__SFBrowserMenuProvider_makeElementsForManagedBookmarks___block_invoke_2;
  v12[3] = &unk_1E721E550;
  v8 = a1 + 32;
  v7 = *(a1 + 32);
  v6 = *(v8 + 8);
  v13 = v5;
  v14 = v6;
  v15 = v4;
  v16 = v7;
  v17 = v3;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  [v7 enumerateObjectsUsingBlock:v12];
}

void __57__SFBrowserMenuProvider_makeElementsForManagedBookmarks___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (![v5 isFolder])
  {
    v19 = *(a1 + 40);
    if (!v19[15])
    {
      v6 = [v19 makeElementForManagedLeafBookmark:v5 withFavicon:0];
      v28 = *(a1 + 32);
      v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      [v28 setObject:v6 forKeyedSubscript:v29];

      goto LABEL_8;
    }

    dispatch_group_enter(*(a1 + 48));
    v20 = MEMORY[0x1E695DFF8];
    v21 = [v5 urlString];
    v6 = [v20 URLWithString:v21];

    v22 = objc_alloc(MEMORY[0x1E69C97B0]);
    v10 = [v22 initWithURL:v6 iconSize:1 fallbackType:{*MEMORY[0x1E69C9938], *(MEMORY[0x1E69C9938] + 8)}];
    v23 = *(*(a1 + 40) + 120);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __57__SFBrowserMenuProvider_makeElementsForManagedBookmarks___block_invoke_3;
    v34[3] = &unk_1E721E4D8;
    v24 = *(a1 + 32);
    v39 = a3;
    v25 = *(a1 + 40);
    v35 = v24;
    v36 = v25;
    v37 = v5;
    v38 = *(a1 + 48);
    v26 = [v23 registerOneTimeRequest:v10 priority:2 responseHandler:v34];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__SFBrowserMenuProvider_makeElementsForManagedBookmarks___block_invoke_4;
    block[3] = &unk_1E721B5D8;
    v27 = *(a1 + 48);
    v31 = *(a1 + 56);
    v32 = *(a1 + 32);
    v33 = *(a1 + 64);
    dispatch_group_notify(v27, MEMORY[0x1E69E96A0], block);

    goto LABEL_6;
  }

  v6 = v5;
  v7 = [v6 children];
  v8 = [v7 count];

  if (v8)
  {
    v9 = MEMORY[0x1E69DCC60];
    v10 = [v6 title];
    v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"folder.badge.gearshape"];
    v12 = *(a1 + 40);
    v13 = [v6 children];
    v14 = [v12 makeElementsForManagedBookmarks:v13];
    v40[0] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
    v16 = [v9 menuWithTitle:v10 image:v11 identifier:0 options:0 children:v15];
    v17 = *(a1 + 32);
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [v17 setObject:v16 forKeyedSubscript:v18];

LABEL_6:
  }

LABEL_8:
}

void __57__SFBrowserMenuProvider_makeElementsForManagedBookmarks___block_invoke_3(void *a1, void *a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = [a2 favicon];
  v6 = [v3 makeElementForManagedLeafBookmark:v4 withFavicon:v5];
  v7 = a1[4];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[8]];
  [v7 setObject:v6 forKeyedSubscript:v8];

  v9 = a1[7];

  dispatch_group_leave(v9);
}

void __57__SFBrowserMenuProvider_makeElementsForManagedBookmarks___block_invoke_4(uint64_t a1)
{
  v6 = [MEMORY[0x1E695DF70] array];
  if ([*(a1 + 32) count])
  {
    v2 = 0;
    do
    {
      v3 = *(a1 + 40);
      v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v2];
      v5 = [v3 objectForKeyedSubscript:v4];
      [v6 safari_addObjectUnlessNil:v5];

      ++v2;
    }

    while (v2 < [*(a1 + 32) count]);
  }

  (*(*(a1 + 48) + 16))();
}

- (id)makeElementEditBookmarks
{
  v3 = _WBSLocalizedString();
  v4 = [(SFBrowserMenuProvider *)self _commandWithAction:sel_editBookmarksKeyPressed input:@"B" modifierFlags:1572864 discoverabilityTitle:v3 webInterceptable:1];

  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"pencil"];
  [v4 setImage:v5];

  return v4;
}

- (id)makeElementNextReadingListItem
{
  v2 = MEMORY[0x1E69DC8B0];
  v3 = _WBSLocalizedString();
  v4 = [v2 commandWithTitle:v3 image:0 action:sel_nextReadingListItemKeyPressed propertyList:0];

  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.forward.to.line.compact"];
  [v4 setImage:v5];

  return v4;
}

- (id)makeElementPreviousReadingListItem
{
  v2 = MEMORY[0x1E69DC8B0];
  v3 = _WBSLocalizedString();
  v4 = [v2 commandWithTitle:v3 image:0 action:sel_previousReadingListItemKeyPressed propertyList:0];

  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.backward.to.line.compact"];
  [v4 setImage:v5];

  return v4;
}

- (id)makeElementShowCloudTabs
{
  v2 = [(SFBrowserMenuProvider *)self _commandWithAction:sel_showCloudTabsCollectionKeyPressed input:@"I" modifierFlags:1310720 discoverabilityTitle:&stru_1EFF36230 webInterceptable:1];
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"icloud"];
  [v2 setImage:v3];

  return v2;
}

- (id)makeEditMenuElements
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v4 = [(SFBrowserMenuProvider *)self makeElementAutoFillForm];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6 = [v3 arrayWithArray:v5];

  if ([MEMORY[0x1E69C8880] isAutoFillInternalFeedbackUIEnabled])
  {
    v7 = [(SFBrowserMenuProvider *)self makeElementReportAutoFillIssue];
    [v6 addObject:v7];
  }

  return v6;
}

void __48__SFBrowserMenuProvider_makeElementAutoFillForm__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = _WBSLocalizedString();
  [v3 setDiscoverabilityTitle:v2];

  [v3 setSystemImageName:@"rectangle.and.pencil.and.ellipsis"];
}

- (id)makeElementReportAutoFillIssue
{
  v2 = MEMORY[0x1E69DC8B0];
  v3 = [MEMORY[0x1E69C8E90] titleText];
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.bubble"];
  v5 = [v2 commandWithTitle:v3 image:v4 action:sel_reportAutoFillIssue_ propertyList:0];

  return v5;
}

- (id)makeElementAddCurrentPageToHomeScreen
{
  v2 = MEMORY[0x1E69DC8B0];
  v3 = _WBSLocalizedString();
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus.app"];
  v5 = [v2 commandWithTitle:v3 image:v4 action:sel_addCurrentPageToHomeScreen_ propertyList:0];

  return v5;
}

void __50__SFBrowserMenuProvider_makeElementCloseActiveTab__block_invoke(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69DC8B8];
  v3 = a2;
  v4 = _WBSLocalizedString();
  v5 = [v2 alternateWithTitle:v4 action:sel_closeOtherTabsKeyPressed modifierFlags:0x80000];
  v8[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v3 setAlternates:v6];

  v7 = _WBSLocalizedString();
  [v3 setDiscoverabilityTitle:v7];

  [v3 setSystemImageName:@"xmark.square"];
}

void __51__SFBrowserMenuProvider_makeElementCloseAllWindows__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = _WBSLocalizedString();
  [v3 setDiscoverabilityTitle:v2];

  [v3 setSystemImageName:@"xmark.rectangle"];
}

void __47__SFBrowserMenuProvider_makeElementCloseWindow__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = _WBSLocalizedString();
  [v3 setDiscoverabilityTitle:v2];

  [v3 setSystemImageName:@"xmark"];
}

void __50__SFBrowserMenuProvider_makeElementDeleteTabGroup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = _WBSLocalizedString();
  [v3 setDiscoverabilityTitle:v2];

  [v3 setSystemImageName:@"trash"];
}

void __52__SFBrowserMenuProvider_makeElementEmailCurrentPage__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = _WBSLocalizedString();
  [v3 setDiscoverabilityTitle:v2];

  [v3 setSystemImageName:@"envelope"];
}

- (id)makeElementExportBrowsingData
{
  v2 = MEMORY[0x1E69DC8B0];
  v3 = _WBSLocalizedString();
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.up.square"];
  v5 = [v2 commandWithTitle:v3 image:v4 action:sel_exportBrowsingData_ propertyList:0];

  return v5;
}

void __53__SFBrowserMenuProvider_makeElementFocusAddressField__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = _WBSLocalizedString();
  [v3 setDiscoverabilityTitle:v2];

  [v3 setSystemImageName:@"globe"];
}

- (id)makeElementImportBrowsingData
{
  v2 = MEMORY[0x1E69DC8B0];
  v3 = _WBSLocalizedString();
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.down.square"];
  v5 = [v2 commandWithTitle:v3 image:v4 action:sel_importBrowsingData_ propertyList:0];

  return v5;
}

void __47__SFBrowserMenuProvider_makeElementNewTabGroup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = _WBSLocalizedString();
  [v3 setDiscoverabilityTitle:v2];

  [v3 setSystemImageName:@"plus.square.on.square"];
}

- (id)makeElementNewTabGroupFromCurrentTabs
{
  v2 = MEMORY[0x1E69DC8B0];
  v3 = [MEMORY[0x1E69C90A8] menuTitleCreateGroupWithTheseTabs:1];
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus.square.on.square"];
  v5 = [v2 commandWithTitle:v3 image:v4 action:sel_openNewTabGroupWithCurrentTabs_ propertyList:0];

  return v5;
}

- (id)makeElementPrint
{
  v3 = _WBSLocalizedString();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__SFBrowserMenuProvider_makeElementPrint__block_invoke;
  v7[3] = &unk_1E721E598;
  v8 = v3;
  v4 = v3;
  v5 = [(SFBrowserMenuProvider *)self keyCommandWithAction:sel_printKeyPressed input:@"P" modifierFlags:0x100000 webInterceptable:1 builder:v7];

  return v5;
}

void __41__SFBrowserMenuProvider_makeElementPrint__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setDiscoverabilityTitle:v2];
  [v3 setSystemImageName:@"printer"];
}

void __40__SFBrowserMenuProvider_makeElementSave__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setDiscoverabilityTitle:&stru_1EFF36230];
  [v2 setSystemImageName:@"square.and.arrow.down"];
}

- (id)makeElementShareCurrentPage
{
  v2 = MEMORY[0x1E69DC8B0];
  v3 = _WBSLocalizedString();
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.arrow.up"];
  v5 = [v2 commandWithTitle:v3 image:v4 action:sel_shareCurrentPage_ propertyList:0];

  return v5;
}

- (id)makeElementTapToDownload
{
  v3 = _WBSLocalizedString();
  v4 = _WBSLocalizedString();
  v5 = [(SFBrowserMenuProvider *)self _placeholderCommandWithAction:sel_emptySelectorForDownloadModifierLinkTap input:v3 modifierFlags:0x80000 discoverabilityTitle:v4];

  return v5;
}

- (id)makeElementTapToOpenInNewTab
{
  v3 = _WBSLocalizedString();
  v4 = [(SFBrowserMenuProvider *)self _placeholderCommandWithAction:sel_emptySelectorForOpenInNewTabModifierLinkTap input:v3 modifierFlags:0x100000 discoverabilityTitle:&stru_1EFF36230];

  return v4;
}

- (id)makeElementTapToOpenInNewTabModified
{
  v3 = _WBSLocalizedString();
  v4 = [(SFBrowserMenuProvider *)self _placeholderCommandWithAction:sel_emptySelectorForOpenInNewTabOppositePreferenceModifierLinkTap input:v3 modifierFlags:1179648 discoverabilityTitle:&stru_1EFF36230];

  return v4;
}

- (id)makeElementToggleCurrentTabIsPinned
{
  v2 = MEMORY[0x1E69DC8B0];
  v3 = _WBSLocalizedString();
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"pin"];
  v5 = [v2 commandWithTitle:v3 image:v4 action:sel_toggleCurrentTabIsPinned_ propertyList:0];

  return v5;
}

- (id)makeElementToggleCurrentTabMediaState
{
  v2 = MEMORY[0x1E69DC8B0];
  v3 = _WBSLocalizedString();
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"speaker.slash"];
  v5 = [v2 commandWithTitle:v3 image:v4 action:sel_toggleTabMediaState_ propertyList:0];

  return v5;
}

- (id)makeFileMenuElementsForPersona:(int64_t)a3
{
  v54[4] = *MEMORY[0x1E69E9840];
  if (a3 == 3)
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v6 = [MEMORY[0x1E695DF70] array];
    if (!a3)
    {
      v7 = [(SFBrowserMenuProviding *)self->_openNewDocumentProvider makeMenuElementsForPersona:0];
      [v6 safari_addObjectsFromArrayUnlessNil:v7];

      v8 = [(SFBrowserMenuProvider *)self makeElementNewTabGroup];
      v54[0] = v8;
      v9 = [(SFBrowserMenuProvider *)self makeElementNewTabGroupFromCurrentTabs];
      v54[1] = v9;
      v10 = [(SFBrowserMenuProvider *)self makeElementFocusAddressField];
      v54[2] = v10;
      v11 = [(SFBrowserMenuProvider *)self makeElementFocusAddressFieldAlt1];
      v54[3] = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:4];
      [v6 addObjectsFromArray:v12];
    }

    v13 = [MEMORY[0x1E695DF70] array];
    v47 = v13;
    if (!a3)
    {
      v45 = [(SFBrowserMenuProvider *)self makeElementCloseWindow];
      v53[0] = v45;
      v14 = [(SFBrowserMenuProvider *)self makeElementCloseAllWindows];
      v53[1] = v14;
      v15 = [(SFBrowserMenuProvider *)self makeElementCloseSelectedTabs];
      v53[2] = v15;
      v16 = [(SFBrowserMenuProvider *)self makeElementCloseActiveTab];
      v53[3] = v16;
      [(SFBrowserMenuProvider *)self makeElementDeleteTabGroup];
      v18 = v17 = v6;
      v53[4] = v18;
      v19 = [(SFBrowserMenuProvider *)self makeElementDeleteTabGroupAlt1];
      v53[5] = v19;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:6];
      [v47 addObjectsFromArray:v20];

      v6 = v17;
      v13 = v47;
    }

    v21 = [(SFBrowserMenuProvider *)self makeElementSave];
    v52[0] = v21;
    v22 = [(SFBrowserMenuProvider *)self makeElementSaveAlt1];
    v52[1] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
    [v13 addObjectsFromArray:v23];

    v24 = MEMORY[0x1E695DF70];
    v25 = [(SFBrowserMenuProvider *)self makeElementShareCurrentPage];
    v51 = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
    v27 = [v24 arrayWithArray:v26];

    if (!a3)
    {
      v28 = [(SFBrowserMenuProvider *)self makeElementEmailCurrentPage];
      [v27 addObject:v28];
    }

    v29 = [(SFBrowserMenuProvider *)self makeElementAddCurrentPageToHomeScreen];
    [v27 addObject:v29];

    v30 = MEMORY[0x1E695DF70];
    v46 = v6;
    v31 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1EFF36230 image:0 identifier:0 options:1 children:v6];
    v50[0] = v31;
    v32 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1EFF36230 image:0 identifier:0 options:1 children:v13];
    v50[1] = v32;
    v33 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1EFF36230 image:0 identifier:0 options:1 children:v27];
    v50[2] = v33;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:3];
    v3 = [v30 arrayWithArray:v34];

    if (!a3)
    {
      v35 = MEMORY[0x1E69DCC60];
      v36 = [(SFBrowserMenuProvider *)self makeElementImportBrowsingData];
      v49[0] = v36;
      v37 = [(SFBrowserMenuProvider *)self makeElementExportBrowsingData];
      v49[1] = v37;
      v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
      v39 = [v35 menuWithTitle:&stru_1EFF36230 image:0 identifier:0 options:1 children:v38];
      [v3 addObject:v39];

      v40 = [(SFBrowserMenuProvider *)self makeElementPrint];
      v48 = v40;
      v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
      [v3 addObjectsFromArray:v41];
    }

    if ([MEMORY[0x1E69C8880] isScribbleEnabled])
    {
      v42 = [(SFBrowserMenuProvider *)self makeElementScribbleDone];
      [v3 addObject:v42];
    }

    if (a3 == 1)
    {
      v43 = [(SFBrowserMenuProvider *)self makeElementDismissSafariViewController];
      [v3 addObject:v43];
    }
  }

  return v3;
}

- (id)makeElementClearHistoryAlt1
{
  v3 = MEMORY[0x1E69DC8B0];
  v4 = _WBSLocalizedString();
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark"];
  v6 = [v3 commandWithTitle:v4 image:v5 action:sel_clearHistory_ propertyList:&unk_1EFF73F58];

  if (!self->_isHistoryClearingAllowed)
  {
    [v6 setAttributes:{objc_msgSend(v6, "attributes") | 1}];
  }

  return v6;
}

- (id)makeElementNavigateBack
{
  v3 = _WBSLocalizedString();
  v4 = [(SFBrowserMenuProvider *)self _commandWithAction:sel_navigateBackKeyPressed input:@"[" modifierFlags:0x100000 discoverabilityTitle:v3 webInterceptable:1];

  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.backward"];
  [v4 setImage:v5];

  return v4;
}

- (id)makeElementNavigateForward
{
  v3 = _WBSLocalizedString();
  v4 = [(SFBrowserMenuProvider *)self _commandWithAction:sel_navigateForwardKeyPressed input:@"]" modifierFlags:0x100000 discoverabilityTitle:v3 webInterceptable:1];

  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward"];
  [v4 setImage:v5];

  return v4;
}

- (id)makeElementReopenLastClosedTab
{
  v3 = _WBSLocalizedString();
  v4 = [(SFBrowserMenuProvider *)self _commandWithAction:sel_reopenLastClosedTabPressed input:@"T" modifierFlags:1179648 discoverabilityTitle:v3 webInterceptable:1];

  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.up.forward.square"];
  [v4 setImage:v5];

  return v4;
}

- (id)makeElementShowHistory
{
  v2 = [(SFBrowserMenuProvider *)self _commandWithAction:sel_showHistoryCollectionKeyPressed input:@"Y" modifierFlags:0x100000 discoverabilityTitle:&stru_1EFF36230 webInterceptable:1];
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"clock"];
  [v2 setImage:v3];

  return v2;
}

- (id)makeHistoryMenuElementsForPersona:(int64_t)a3
{
  v30[2] = *MEMORY[0x1E69E9840];
  if (a3 == 3)
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v3 = [MEMORY[0x1E695DF70] array];
    v6 = MEMORY[0x1E69DCC60];
    v7 = [(SFBrowserMenuProvider *)self makeElementShowHistory];
    v30[0] = v7;
    v8 = [(SFBrowserMenuProvider *)self makeElementShowHistoryAlt1];
    v30[1] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
    v10 = [v6 menuWithTitle:&stru_1EFF36230 image:0 identifier:0 options:1 children:v9];
    [v3 addObject:v10];

    v11 = MEMORY[0x1E69DCC60];
    v12 = [(SFBrowserMenuProvider *)self makeElementNavigateBack];
    v29[0] = v12;
    v13 = [(SFBrowserMenuProvider *)self makeElementNavigateForward];
    v29[1] = v13;
    v14 = [(SFBrowserMenuProvider *)self makeElementNavigateBackAlt1];
    v29[2] = v14;
    v15 = [(SFBrowserMenuProvider *)self makeElementNavigateForwardAlt1];
    v29[3] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
    v17 = [v11 menuWithTitle:&stru_1EFF36230 image:0 identifier:0 options:1 children:v16];
    [v3 addObject:v17];

    if (!a3)
    {
      v18 = [MEMORY[0x1E695DF70] array];
      v19 = [(SFBrowserMenuProviding *)self->_recentlyClosedTabsProvider makeMenuElementsForPersona:0];
      [v18 safari_addObjectsFromArrayUnlessNil:v19];

      v20 = [(SFBrowserMenuProvider *)self makeElementReopenLastClosedTab];
      [v18 addObject:v20];

      v21 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1EFF36230 image:0 identifier:0 options:1 children:v18];
      [v3 addObject:v21];

      v22 = [(SFBrowserMenuProviding *)self->_historyListProvider makeMenuElementsForPersona:0];
      [v3 safari_addObjectsFromArrayUnlessNil:v22];

      v23 = MEMORY[0x1E69DCC60];
      v24 = [(SFBrowserMenuProvider *)self makeElementClearHistoryAlt1];
      v28 = v24;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
      v26 = [v23 menuWithTitle:&stru_1EFF36230 image:0 identifier:0 options:1 children:v25];
      [v3 addObject:v26];
    }
  }

  return v3;
}

void __42__SFBrowserMenuProvider_makeElementCancel__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = _WBSLocalizedString();
  [v3 setDiscoverabilityTitle:v2];

  [v3 setSystemImageName:@"xmark"];
  [v3 setProperty:0];
  [v3 setWantsPriorityOverSystemBehavior:1];
}

void __46__SFBrowserMenuProvider_makeElementCancelAlt1__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setProperty:1];
  [v2 setWantsPriorityOverSystemBehavior:1];
}

void __48__SFBrowserMenuProvider_makeElementDecreaseSize__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = _WBSLocalizedString();
  [v3 setDiscoverabilityTitle:v2];

  [v3 setSystemImageName:@"textformat.size.smaller"];
}

void __48__SFBrowserMenuProvider_makeElementIncreaseSize__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = _WBSLocalizedString();
  [v3 setDiscoverabilityTitle:v2];

  [v3 setSystemImageName:@"textformat.size.larger"];
}

void __61__SFBrowserMenuProvider_makeElementResetZoomLevelAndFontSize__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = _WBSLocalizedString();
  [v3 setDiscoverabilityTitle:v2];

  [v3 setSystemImageName:@"arrow.uturn.backward"];
}

- (id)makeBookmarksViewControlsMenu
{
  v12[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DCC60];
  v4 = _WBSLocalizedString();
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"book"];
  v6 = [(SFBrowserMenuProvider *)self makeElementShowBookmarksCollection];
  v7 = [(SFBrowserMenuProvider *)self makeElementBookmarksViewControlsSize];
  v12[1] = v7;
  v8 = [(SFBrowserMenuProvider *)self makeElementBookmarksViewControlsOptions];
  v12[2] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
  v10 = [v3 menuWithTitle:v4 image:v5 identifier:0 options:0 children:v9];

  return v10;
}

- (id)makeElementBookmarksViewControlsSize
{
  v14[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69DCC60];
  v3 = MEMORY[0x1E69DC8B0];
  v4 = _WBSLocalizedString();
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.fill.text.grid.1x2"];
  v6 = [v3 commandWithTitle:v4 image:v5 action:sel_showBookmarksViewModeLargeSelected propertyList:0];
  v14[0] = v6;
  v7 = MEMORY[0x1E69DC8B0];
  v8 = _WBSLocalizedString();
  v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"list.bullet"];
  v10 = [v7 commandWithTitle:v8 image:v9 action:sel_showBookmarksViewModeCompactSelected propertyList:0];
  v14[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v12 = [v2 menuWithTitle:&stru_1EFF36230 image:0 identifier:0 options:1 children:v11];

  return v12;
}

- (id)makeElementBookmarksViewControlsOptions
{
  v11[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69DCC60];
  v3 = [(SFBrowserMenuProvider *)self makeElementBookmarksViewControlsSortOptions];
  v11[0] = v3;
  v4 = MEMORY[0x1E69DC8B0];
  v5 = _WBSLocalizedString();
  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"folder"];
  v7 = [v4 commandWithTitle:v5 image:v6 action:sel_toggleBookmarksViewFolderModeSeparatedSelected propertyList:0];
  v11[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v9 = [v2 menuWithTitle:&stru_1EFF36230 image:0 identifier:0 options:1 children:v8];

  return v9;
}

- (id)makeElementBookmarksViewControlsSortOptions
{
  v32[4] = *MEMORY[0x1E69E9840];
  v22 = MEMORY[0x1E69DCC60];
  v20 = _WBSLocalizedString();
  v18 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.up.arrow.down"];
  v2 = MEMORY[0x1E69DC8B0];
  v23 = _WBSLocalizedString();
  v30 = @"SFBrowserKeyCommandPropertyBookmarksSortByOption";
  v31 = &unk_1EFF73F70;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  v19 = [v2 commandWithTitle:v23 image:0 action:sel_bookmarksViewSortOptionSelected_ propertyList:v21];
  v32[0] = v19;
  v3 = MEMORY[0x1E69DC8B0];
  v17 = _WBSLocalizedString();
  v28 = @"SFBrowserKeyCommandPropertyBookmarksSortByOption";
  v29 = &unk_1EFF73F88;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v15 = [v3 commandWithTitle:v17 image:0 action:sel_bookmarksViewSortOptionSelected_ propertyList:v16];
  v32[1] = v15;
  v4 = MEMORY[0x1E69DC8B0];
  v5 = _WBSLocalizedString();
  v26 = @"SFBrowserKeyCommandPropertyBookmarksSortByOption";
  v27 = &unk_1EFF73FA0;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v7 = [v4 commandWithTitle:v5 image:0 action:sel_bookmarksViewSortOptionSelected_ propertyList:v6];
  v32[2] = v7;
  v8 = MEMORY[0x1E69DC8B0];
  v9 = _WBSLocalizedString();
  v24 = @"SFBrowserKeyCommandPropertyBookmarksSortByOption";
  v25 = &unk_1EFF73FB8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v11 = [v8 commandWithTitle:v9 image:0 action:sel_bookmarksViewSortOptionSelected_ propertyList:v10];
  v32[3] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
  v13 = [v22 menuWithTitle:v20 image:v18 identifier:0 options:0 children:v12];

  return v13;
}

- (id)makeElementShowSharedWithYouCollection
{
  v2 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"sharedwithyou"];
  v3 = MEMORY[0x1E69DC8B0];
  v4 = _WBSLocalizedString();
  v5 = [v3 commandWithTitle:v4 image:v2 action:sel_showSharedWithYouCollectionKeyPressed propertyList:0];

  return v5;
}

- (id)makeElementShowBookmarksItemForBookmarksMenu
{
  v2 = MEMORY[0x1E69DC8B0];
  v3 = _WBSLocalizedString();
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"book"];
  v5 = [v2 commandWithTitle:v3 image:v4 action:sel_showBookmarksCollectionKeyPressed propertyList:&unk_1EFF73FD0];

  return v5;
}

void __52__SFBrowserMenuProvider_makeElementToggleSidebarAlt__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setIsHidden:1];
  [v2 setProperty:1];
}

- (id)makeElementToggleContentBlockers
{
  v2 = MEMORY[0x1E69DC8B0];
  v3 = _WBSLocalizedString();
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.shield"];
  v5 = [v2 commandWithTitle:v3 image:v4 action:sel_toggleContentBlockers_ propertyList:0];

  return v5;
}

- (id)makeElementFileTranslationRadar
{
  v2 = MEMORY[0x1E69DC8B0];
  v3 = _WBSLocalizedString();
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"ant"];
  v5 = [v2 commandWithTitle:v3 image:v4 action:sel_fileTranslationRadar_ propertyList:0];

  return v5;
}

- (id)makeElementReportTranslationIssue
{
  v2 = MEMORY[0x1E69DC8B0];
  v3 = _WBSLocalizedString();
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.bubble"];
  v5 = [v2 commandWithTitle:v3 image:v4 action:sel_reportTranslationIssue_ propertyList:0];

  return v5;
}

- (id)makeElementToggleTranslation
{
  v2 = MEMORY[0x1E69DC8B0];
  v3 = _WBSLocalizedString();
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"translate"];
  v5 = [v2 commandWithTitle:v3 image:v4 action:sel_toggleTranslation_ propertyList:0];

  return v5;
}

void __42__SFBrowserMenuProvider_makeElementReload__block_invoke(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = _WBSLocalizedString();
  [v2 setDiscoverabilityTitle:v3];

  [v2 setSystemImageName:@"arrow.clockwise"];
  v4 = MEMORY[0x1E69DC8B8];
  v5 = _WBSLocalizedString();
  v6 = [v4 alternateWithTitle:v5 action:sel_reloadFromOriginKeyPressed modifierFlags:0x80000];
  v8[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v2 setAlternates:v7];
}

- (id)makeViewMenuElementsForPersona:(int64_t)a3
{
  v54[5] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  if (a3 == 3)
  {
    v6 = [(SFBrowserMenuProvider *)self makeStopReloadMenu];
    [v5 addObject:v6];

    v7 = [v5 copy];
  }

  else
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v9 = 0x1E695D000;
    if (a3)
    {
      v10 = [(SFBrowserMenuProvider *)self makeElementToggleShowWebpageStatusBar];
      [v8 addObject:v10];

      v11 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1EFF36230 image:0 identifier:0 options:1 children:v8];
      [v5 addObject:v11];
    }

    else
    {
      v12 = [(SFBrowserMenuProvider *)self makeElementToggleShowingFavoritesBarElement];
      [v8 addObject:v12];

      v13 = [(SFBrowserMenuProvider *)self makeElementToggleShowWebpageStatusBar];
      [v8 addObject:v13];

      v14 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1EFF36230 image:0 identifier:0 options:1 children:v8];
      [v5 addObject:v14];

      v15 = MEMORY[0x1E69DCC60];
      v16 = [(SFBrowserMenuProvider *)self makeElementToggleSidebarKeyPressed];
      v54[0] = v16;
      v17 = [(SFBrowserMenuProvider *)self makeElementToggleSidebarAlt];
      v54[1] = v17;
      v18 = [(SFBrowserMenuProvider *)self makeBookmarksViewControlsMenu];
      v54[2] = v18;
      v19 = [(SFBrowserMenuProvider *)self makeElementShowReadingListCollection];
      v54[3] = v19;
      v20 = [(SFBrowserMenuProvider *)self makeElementShowSharedWithYouCollection];
      v54[4] = v20;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:5];
      v22 = [v15 menuWithTitle:&stru_1EFF36230 image:0 identifier:0 options:1 children:v21];
      [v5 addObject:v22];

      v9 = 0x1E695D000uLL;
    }

    v23 = MEMORY[0x1E695DF70];
    v24 = [(SFBrowserMenuProvider *)self makeElementToggleReader];
    v25 = [v23 arrayWithObject:v24];

    if (!a3)
    {
      v26 = [(SFBrowserMenuProvider *)self makeElementToggleTabView];
      v53[0] = v26;
      v27 = [(SFBrowserMenuProvider *)self makeElementToggleDownloads];
      v53[1] = v27;
      v28 = [*(v9 + 3784) arrayWithObjects:v53 count:2];
      [v25 addObjectsFromArray:v28];
    }

    v29 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1EFF36230 image:0 identifier:0 options:1 children:v25];
    [v5 addObject:v29];

    v30 = [(SFBrowserMenuProvider *)self makeStopReloadMenu];
    [v5 addObject:v30];

    v31 = MEMORY[0x1E695DF70];
    v32 = [(SFBrowserMenuProvider *)self makeElementToggleTranslation];
    v52[0] = v32;
    v33 = [(SFBrowserMenuProvider *)self makeElementReportTranslationIssue];
    v52[1] = v33;
    v34 = [*(v9 + 3784) arrayWithObjects:v52 count:2];
    v35 = [v31 arrayWithArray:v34];

    if ([MEMORY[0x1E69C8880] isInternalInstall])
    {
      v36 = [(SFBrowserMenuProvider *)self makeElementFileTranslationRadar];
      [v35 addObject:v36];
    }

    v37 = MEMORY[0x1E69DCC60];
    v38 = _WBSLocalizedString();
    v39 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"translate"];
    v40 = [v37 menuWithTitle:v38 image:v39 identifier:0 options:0 children:v35];
    [v5 addObject:v40];

    v41 = MEMORY[0x1E69DCC60];
    v42 = [(SFBrowserMenuProvider *)self makeElementResetZoomLevelAndFontSize];
    v51[0] = v42;
    v43 = [(SFBrowserMenuProvider *)self makeElementIncreaseSize];
    v51[1] = v43;
    v44 = [(SFBrowserMenuProvider *)self makeElementIncreaseSizeAlt1];
    v51[2] = v44;
    v45 = [(SFBrowserMenuProvider *)self makeElementDecreaseSize];
    v51[3] = v45;
    v46 = [(SFBrowserMenuProvider *)self makeElementDecreaseSizeAlt1];
    v51[4] = v46;
    v47 = [*(v9 + 3784) arrayWithObjects:v51 count:5];
    v48 = [v41 menuWithTitle:&stru_1EFF36230 image:0 identifier:0 options:1 children:v47];
    [v5 addObject:v48];

    v7 = v5;
  }

  return v7;
}

- (id)makeStopReloadMenu
{
  v11[3] = *MEMORY[0x1E69E9840];
  v3 = [(SFBrowserMenuProvider *)self makeElementCancel];
  v4 = [(SFBrowserMenuProvider *)self makeElementCancelAlt1];
  v11[1] = v4;
  v5 = [(SFBrowserMenuProvider *)self makeElementReload];
  v11[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];

  if (self->_persona != 3)
  {
    v7 = [(SFBrowserMenuProvider *)self makeElementToggleContentBlockers];
    v8 = [v6 arrayByAddingObject:v7];

    v6 = v8;
  }

  v9 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1EFF36230 image:0 identifier:0 options:1 children:v6];

  return v9;
}

- (id)makeElementArrangeTabsByTitle
{
  v2 = MEMORY[0x1E69DC8B0];
  v3 = _WBSLocalizedString();
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.up.arrow.down"];
  v5 = [v2 commandWithTitle:v3 image:v4 action:sel_arrangeTabsByTitle_ propertyList:0];

  return v5;
}

- (id)makeElementArrangeTabsByWebsite
{
  v2 = MEMORY[0x1E69DC8B0];
  v3 = _WBSLocalizedString();
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"globe"];
  v5 = [v2 commandWithTitle:v3 image:v4 action:sel_arrangeTabsByWebsite_ propertyList:0];

  return v5;
}

- (id)makeElementDuplicateCurrentTab
{
  v2 = MEMORY[0x1E69DC8B0];
  v3 = _WBSLocalizedString();
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus.square.on.square"];
  v5 = [v2 commandWithTitle:v3 image:v4 action:sel_duplicateCurrentTab_ propertyList:0];

  return v5;
}

- (id)makeElementMergeAllWindows
{
  v2 = MEMORY[0x1E69DC8B0];
  v3 = _WBSLocalizedString();
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.merge"];
  v5 = [v2 commandWithTitle:v3 image:v4 action:sel_mergeAllWindows_ propertyList:0];

  return v5;
}

- (id)makeElementMoveCurrentTabToNewWindow
{
  v2 = MEMORY[0x1E69DC8B0];
  v3 = _WBSLocalizedString();
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"rectangle.badge.plus"];
  v5 = [v2 commandWithTitle:v3 image:v4 action:sel_moveCurrentTabToNewWindow_ propertyList:0];

  return v5;
}

void __48__SFBrowserMenuProvider_makeElementNextTabGroup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = _WBSLocalizedString();
  [v3 setDiscoverabilityTitle:v2];

  [v3 setSystemImageName:@"arrow.forward.square"];
}

void __52__SFBrowserMenuProvider_makeElementNextTabGroupAlt1__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setIsHidden:1];
  [v2 setProperty:1];
}

void __52__SFBrowserMenuProvider_makeElementNextTabGroupAlt2__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setIsHidden:1];
  [v2 setProperty:2];
}

void __52__SFBrowserMenuProvider_makeElementNextTabGroupAlt3__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setIsHidden:1];
  [v2 setProperty:3];
}

void __52__SFBrowserMenuProvider_makeElementPreviousTabGroup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = _WBSLocalizedString();
  [v3 setDiscoverabilityTitle:v2];

  [v3 setSystemImageName:@"arrow.backward.square"];
}

void __56__SFBrowserMenuProvider_makeElementPreviousTabGroupAlt1__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setIsHidden:1];
  [v2 setProperty:1];
}

void __56__SFBrowserMenuProvider_makeElementPreviousTabGroupAlt2__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setIsHidden:1];
  [v2 setProperty:2];
}

void __56__SFBrowserMenuProvider_makeElementPreviousTabGroupAlt3__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setIsHidden:1];
  [v2 setProperty:3];
}

void __50__SFBrowserMenuProvider_makeElementRenameTabGroup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = _WBSLocalizedString();
  [v3 setDiscoverabilityTitle:v2];

  [v3 setSystemImageName:@"pencil"];
}

void __47__SFBrowserMenuProvider_makeElementShowNextTab__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = _WBSLocalizedString();
  [v3 setDiscoverabilityTitle:v2];

  [v3 setProperty:0];
  [v3 setSystemImageName:@"arrow.forward.square"];
  [v3 setWantsPriorityOverSystemBehavior:1];
}

void __51__SFBrowserMenuProvider_makeElementShowNextTabAlt1__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setIsHidden:1];
  [v2 setProperty:1];
}

void __51__SFBrowserMenuProvider_makeElementShowNextTabAlt2__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setIsHidden:1];
  [v2 setProperty:2];
}

void __51__SFBrowserMenuProvider_makeElementShowPreviousTab__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = _WBSLocalizedString();
  [v3 setDiscoverabilityTitle:v2];

  [v3 setProperty:0];
  [v3 setSystemImageName:@"arrow.backward.square"];
  [v3 setWantsPriorityOverSystemBehavior:1];
}

void __55__SFBrowserMenuProvider_makeElementShowPreviousTabAlt1__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setIsHidden:1];
  [v2 setProperty:1];
}

void __55__SFBrowserMenuProvider_makeElementShowPreviousTabAlt2__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setIsHidden:1];
  [v2 setProperty:2];
}

- (id)makeElementsSwitchToProfile
{
  v3 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, 10}];
  v4 = [MEMORY[0x1E695DF70] array];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__SFBrowserMenuProvider_makeElementsSwitchToProfile__block_invoke;
  v8[3] = &unk_1E721E5E0;
  v5 = v4;
  v9 = v5;
  v10 = self;
  [v3 enumerateIndexesUsingBlock:v8];
  v6 = v5;

  return v5;
}

void __52__SFBrowserMenuProvider_makeElementsSwitchToProfile__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%i", a2];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__SFBrowserMenuProvider_makeElementsSwitchToProfile__block_invoke_2;
  v13[3] = &__block_descriptor_40_e43_v16__0__SFBrowserMenuKeyCommandParameters_8l;
  v13[4] = a2;
  v7 = [v5 keyCommandWithAction:sel_switchToProfileKeyPressed_ input:v4 modifierFlags:1441792 webInterceptable:0 builder:v13];
  [v6 addObject:v7];

  v8 = [MEMORY[0x1E69DC668] sharedApplication];
  LOBYTE(v7) = [v8 supportsMultipleScenes];

  if ((v7 & 1) == 0)
  {
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __52__SFBrowserMenuProvider_makeElementsSwitchToProfile__block_invoke_3;
    v12[3] = &__block_descriptor_40_e43_v16__0__SFBrowserMenuKeyCommandParameters_8l;
    v12[4] = a2;
    v11 = [v9 keyCommandWithAction:sel_switchToProfileKeyPressed_ input:v4 modifierFlags:1703936 webInterceptable:0 builder:v12];
    [v10 addObject:v11];
  }
}

void __52__SFBrowserMenuProvider_makeElementsSwitchToProfile__block_invoke_2(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"SFBrowserKeyCommandPropertyIndex";
  v2 = MEMORY[0x1E696AD98];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 numberWithUnsignedInteger:v3];
  v8[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v4 setPropertyList:v6];
}

void __52__SFBrowserMenuProvider_makeElementsSwitchToProfile__block_invoke_3(uint64_t a1, void *a2)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v8[0] = &unk_1EFF73F58;
  v7[0] = @"SFBrowserKeyCommandPropertyMask";
  v7[1] = @"SFBrowserKeyCommandPropertyIndex";
  v2 = MEMORY[0x1E696AD98];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 numberWithUnsignedInteger:v3];
  v8[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [v4 setPropertyList:v6];

  [v4 setIsHidden:1];
}

- (id)makeElementsSwitchToTab
{
  v3 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{1, 9}];
  v4 = [MEMORY[0x1E695DF70] array];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__SFBrowserMenuProvider_makeElementsSwitchToTab__block_invoke;
  v8[3] = &unk_1E721E5E0;
  v5 = v4;
  v9 = v5;
  v10 = self;
  [v3 enumerateIndexesUsingBlock:v8];
  v6 = v5;

  return v5;
}

void __48__SFBrowserMenuProvider_makeElementsSwitchToTab__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%i", a2];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__SFBrowserMenuProvider_makeElementsSwitchToTab__block_invoke_2;
  v8[3] = &__block_descriptor_40_e43_v16__0__SFBrowserMenuKeyCommandParameters_8l;
  v8[4] = a2;
  v7 = [v5 keyCommandWithAction:sel_switchToTabKeyPressed_ input:v4 modifierFlags:0x100000 webInterceptable:0 builder:v8];
  [v6 addObject:v7];
}

void __48__SFBrowserMenuProvider_makeElementsSwitchToTab__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = v3;
  if (v4 == 9)
  {
    v7 = _WBSLocalizedString();
    [v8 setDiscoverabilityTitle:v7];

    v6 = @"arrow.forward.to.line.square";
    goto LABEL_5;
  }

  if (v4 == 1)
  {
    v5 = _WBSLocalizedString();
    [v8 setDiscoverabilityTitle:v5];

    v6 = @"arrow.backward.to.line.square";
LABEL_5:
    [v8 setSystemImageName:v6];
    goto LABEL_7;
  }

  [v3 setIsHidden:1];
LABEL_7:
  [v8 setProperty:*(a1 + 32)];
}

- (id)makeWindowMenuElementsForPersona:(int64_t)a3
{
  v61[7] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  if (!a3)
  {
    v6 = MEMORY[0x1E695DF70];
    v7 = MEMORY[0x1E69DCC60];
    v50 = _WBSLocalizedString();
    v49 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.up.arrow.down"];
    v52 = [(SFBrowserMenuProvider *)self makeElementArrangeTabsByTitle];
    v60[0] = v52;
    v51 = [(SFBrowserMenuProvider *)self makeElementArrangeTabsByWebsite];
    v60[1] = v51;
    v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:2];
    v8 = [v7 menuWithTitle:v50 image:v49 identifier:0 options:0 children:v48];
    v61[0] = v8;
    v9 = [(SFBrowserMenuProvider *)self makeElementShowPreviousTab];
    v61[1] = v9;
    v10 = [(SFBrowserMenuProvider *)self makeElementShowPreviousTabAlt1];
    v61[2] = v10;
    v11 = [(SFBrowserMenuProvider *)self makeElementShowPreviousTabAlt2];
    v61[3] = v11;
    v12 = [(SFBrowserMenuProvider *)self makeElementShowNextTab];
    v61[4] = v12;
    v13 = [(SFBrowserMenuProvider *)self makeElementShowNextTabAlt1];
    v61[5] = v13;
    [(SFBrowserMenuProvider *)self makeElementShowNextTabAlt2];
    v14 = v54 = v5;
    v61[6] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:7];
    v16 = [v6 arrayWithArray:v15];

    v17 = [(SFBrowserMenuProvider *)self makeElementsSwitchToTab];
    [v16 addObjectsFromArray:v17];

    v53 = [(SFBrowserMenuProvider *)self makeElementPreviousTabGroup];
    v59[0] = v53;
    v18 = [(SFBrowserMenuProvider *)self makeElementPreviousTabGroupAlt1];
    v59[1] = v18;
    v19 = [(SFBrowserMenuProvider *)self makeElementPreviousTabGroupAlt2];
    v59[2] = v19;
    v20 = [(SFBrowserMenuProvider *)self makeElementPreviousTabGroupAlt3];
    v59[3] = v20;
    v21 = [(SFBrowserMenuProvider *)self makeElementNextTabGroup];
    v59[4] = v21;
    v22 = [(SFBrowserMenuProvider *)self makeElementNextTabGroupAlt1];
    v59[5] = v22;
    v23 = [(SFBrowserMenuProvider *)self makeElementNextTabGroupAlt2];
    v59[6] = v23;
    v24 = [(SFBrowserMenuProvider *)self makeElementNextTabGroupAlt3];
    v59[7] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:8];
    [v16 addObjectsFromArray:v25];

    v26 = [(SFBrowserMenuProvider *)self makeElementToggleCurrentTabIsPinned];
    v58[0] = v26;
    v27 = [(SFBrowserMenuProvider *)self makeElementDuplicateCurrentTab];
    v58[1] = v27;
    v28 = [(SFBrowserMenuProvider *)self makeElementMoveCurrentTabToNewWindow];
    v58[2] = v28;
    v29 = [(SFBrowserMenuProvider *)self makeElementMergeAllWindows];
    v58[3] = v29;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:4];
    [v16 addObjectsFromArray:v30];

    v5 = v54;
    v31 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1EFF36230 image:0 identifier:0 options:1 children:v16];
    [v54 addObject:v31];

    v32 = MEMORY[0x1E69DCC60];
    v33 = [(SFBrowserMenuProvider *)self makeElementToggleAllPrivateWindowsLocked];
    v57 = v33;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
    v35 = [v32 menuWithTitle:&stru_1EFF36230 image:0 identifier:0 options:1 children:v34];
    [v54 addObject:v35];

    v36 = MEMORY[0x1E69DCC60];
    v37 = [(SFBrowserMenuProvider *)self makeElementToggleCurrentTabMediaState];
    v56 = v37;
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
    v39 = [v36 menuWithTitle:&stru_1EFF36230 image:0 identifier:0 options:1 children:v38];
    [v54 addObject:v39];

    v40 = MEMORY[0x1E69DCC60];
    v41 = [(SFBrowserMenuProvider *)self makeElementRenameTabGroup];
    v55 = v41;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
    v43 = [v40 menuWithTitle:&stru_1EFF36230 image:0 identifier:0 options:1 children:v42];
    [v54 addObject:v43];

    if ([MEMORY[0x1E69C8880] isSafariProfilesEnabled])
    {
      v44 = MEMORY[0x1E69DCC60];
      v45 = [(SFBrowserMenuProvider *)self makeElementsSwitchToProfile];
      v46 = [v44 menuWithTitle:&stru_1EFF36230 image:0 identifier:0 options:1 children:v45];
      [v54 addObject:v46];
    }
  }

  return v5;
}

- (id)makeGoMenuElementsForPersona:(int64_t)a3
{
  v8[2] = *MEMORY[0x1E69E9840];
  if (a3 == 3)
  {
    v4 = [(SFBrowserMenuProvider *)self makeElementNavigateForward];
    v8[0] = v4;
    v5 = [(SFBrowserMenuProvider *)self makeElementNavigateBack];
    v8[1] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

@end
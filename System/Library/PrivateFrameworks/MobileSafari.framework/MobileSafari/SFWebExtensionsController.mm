@interface SFWebExtensionsController
+ (void)_didDiscoverExtensions:(BOOL)extensions;
- (BOOL)_isExtensionBlockedByBlocklist:(id)blocklist completionHandler:(id)handler;
- (BOOL)_isExtensionBlockedByBlocklist:(id)blocklist developerIdentifier:(id)identifier;
- (BOOL)hasNamedProfiles;
- (BOOL)hasUpdatedToolbarItemBadgeTextInTab:(id)tab;
- (BOOL)parentalControlsAreEnabledForExtensions;
- (NSArray)allContentBlockerManagers;
- (NSArray)allWebExtensionControllers;
- (NSURL)extensionOverriddenStartPageURL;
- (SFWebExtensionControllerProfileDelegate)profileDelegate;
- (UIViewController)viewControllerToPresentDialogsFrom;
- (_SFNavigationIntentHandling)navigationIntentHandler;
- (id)_allWindowsForWebExtension:(id)extension;
- (id)_commandShortcutConflictAlertForExtension:(id)extension conflict:(id)conflict okAction:(id)action;
- (id)_developerIdentifierForExtension:(id)extension untrustedCodeSigningDictionary:(id)dictionary;
- (id)_deviceUUIDString;
- (id)_domainForDefaultSearchProvider;
- (id)_findTabInAnyWindowWithID:(double)d;
- (id)_findWindowWithID:(double)d;
- (id)_safariShortVersion;
- (id)_webViewConfiguration;
- (id)allProfileExtensionsControllers;
- (id)contentBlockerManagerForProfileServerID:(id)d;
- (id)lastFocusedWindow;
- (id)profile;
- (id)tabGroupManager;
- (id)webExtensionsControllerForProfileServerID:(id)d;
- (unint64_t)recentlyInstalledExtensionCount;
- (void)_clearNewTabPreferenceIfNecessaryForRemovedExtensionWithComposedIdentifier:(id)identifier;
- (void)_createNewTabInWindow:(id)window tabIndex:(id)index url:(id)url makeActive:(BOOL)active completionHandler:(id)handler;
- (void)_extensionWithComposedIdentifier:(id)identifier wasEnabledOrDisabledByExtensionSettings:(BOOL)settings;
- (void)_pinTab:(id)tab;
- (void)_relateParentTab:(id)tab toTab:(id)toTab;
- (void)_reportCommandShortcutConflictsForExtension:(id)extension conflicts:(id)conflicts presentingViewController:(id)controller completionHandler:(id)handler;
- (void)_showAccessRequestAlertForExtension:(id)extension domains:(id)domains callingAPIName:(id)name responseBlock:(id)block;
- (void)_updateExtensionsStateAfterExtensionSettingsWereUpdatedExternally:(id)externally shouldUpdateExtensionPermissionsAndEnabledState:(BOOL)state;
- (void)didViewToolbarItemBadgesInTab:(id)tab;
- (void)extensionSettingsWereUpdatedExternallyFromSettingsApp:(BOOL)app;
- (void)fireAppropriateTabMovementEventForTabState:(id)state;
- (void)fireAttachmentEventsForTabsWithPreviousTabPositions:(id)positions;
- (void)fireOnMovedEventForTabsWithPreviousTabPositions:(id)positions currentTabsPositions:(id)tabsPositions;
- (void)hidePermissionBannerForExtension:(id)extension;
- (void)reportCommandShortcutConflictsIfNecessaryForExtension:(id)extension presentingViewController:(id)controller completionHandler:(id)handler;
- (void)setProcessPool:(id)pool;
- (void)setViewControllerToPresentDialogsFrom:(id)from;
- (void)showPermissionBannerForExtension:(id)extension;
- (void)webExtensionController:(id)controller presentPopupForAction:(id)action forExtensionContext:(id)context completionHandler:(id)handler;
@end

@implementation SFWebExtensionsController

- (id)_webViewConfiguration
{
  v3 = objc_alloc_init(MEMORY[0x1E69853A8]);
  applicationNameForUserAgent = [(SFWebExtensionsController *)self applicationNameForUserAgent];
  [v3 setApplicationNameForUserAgent:applicationNameForUserAgent];

  processPool = [(SFWebExtensionsController *)self processPool];
  [v3 setProcessPool:processPool];

  safari_webExtensionUserContentController = [MEMORY[0x1E6985350] safari_webExtensionUserContentController];
  [v3 setUserContentController:safari_webExtensionUserContentController];

  [v3 _setCrossOriginAccessControlCheckEnabled:0];
  [v3 _setGroupIdentifier:*MEMORY[0x1E69C9A40]];
  [v3 _setShouldRelaxThirdPartyCookieBlocking:1];
  defaultWebpagePreferences = [v3 defaultWebpagePreferences];
  [defaultWebpagePreferences _setAutoplayPolicy:1];

  websiteDataStore = [(WBSExtensionsController *)self websiteDataStore];
  [v3 setWebsiteDataStore:websiteDataStore];

  [v3 setShowsSystemScreenTimeBlockingView:0];
  v9 = _SFDeviceSupportsDesktopSitesByDefault();
  defaultWebpagePreferences2 = [v3 defaultWebpagePreferences];
  v11 = defaultWebpagePreferences2;
  if (v9)
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  [defaultWebpagePreferences2 setPreferredContentMode:v12];

  v13 = _SFApplicationNameForDesktopUserAgent();
  defaultWebpagePreferences3 = [v3 defaultWebpagePreferences];
  [defaultWebpagePreferences3 _setApplicationNameForUserAgentWithModernCompatibility:v13];

  preferences = [v3 preferences];
  [preferences _setShouldIgnoreMetaViewport:v9];

  return v3;
}

- (NSURL)extensionOverriddenStartPageURL
{
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  tabOverridePreferencesManager = [(WBSWebExtensionsController *)self tabOverridePreferencesManager];
  if ([tabOverridePreferencesManager isNewTabPageOverriddenByAnEnabledExtensionInUserDefaults:safari_browserDefaults])
  {
    v5 = [tabOverridePreferencesManager extensionComposedIdentifierForNewTabPreferenceInDefaults:safari_browserDefaults];
    v6 = [(WBSWebExtensionsController *)self webExtensionForComposedIdentifier:v5];
    newTabOverridePageURL = [v6 newTabOverridePageURL];
  }

  else
  {
    newTabOverridePageURL = 0;
  }

  return newTabOverridePageURL;
}

- (id)allProfileExtensionsControllers
{
  WeakRetained = objc_loadWeakRetained(&self->_profileDelegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained sfWebExtensionsControllerAllProfileExtensionsControllers:self];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (BOOL)_isExtensionBlockedByBlocklist:(id)blocklist completionHandler:(id)handler
{
  blocklistCopy = blocklist;
  handlerCopy = handler;
  sf_bundleIdentifierForContainingApp = [blocklistCopy sf_bundleIdentifierForContainingApp];
  v9 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:sf_bundleIdentifierForContainingApp allowPlaceholder:0 error:0];
  if (v9)
  {
    blocklistQueue = self->_blocklistQueue;
    if (!blocklistQueue)
    {
      v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v12 = dispatch_queue_create("Web Extension Blocklist Queue", v11);
      v13 = self->_blocklistQueue;
      self->_blocklistQueue = v12;

      blocklistQueue = self->_blocklistQueue;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__SFWebExtensionsController__isExtensionBlockedByBlocklist_completionHandler___block_invoke;
    block[3] = &unk_1E721CF88;
    v16 = v9;
    v17 = sf_bundleIdentifierForContainingApp;
    v18 = handlerCopy;
    dispatch_async(blocklistQueue, block);
  }

  return 0;
}

void __78__SFWebExtensionsController__isExtensionBlockedByBlocklist_completionHandler___block_invoke(uint64_t a1)
{
  v15[4] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E5818];
  v14[0] = *MEMORY[0x1E69E5800];
  v14[1] = v2;
  v15[0] = MEMORY[0x1E695E118];
  v15[1] = MEMORY[0x1E695E118];
  v3 = *MEMORY[0x1E69E57E0];
  v14[2] = *MEMORY[0x1E69E57F0];
  v14[3] = v3;
  v15[2] = MEMORY[0x1E695E118];
  v15[3] = MEMORY[0x1E695E118];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  v5 = [*(a1 + 32) URL];
  v6 = [v5 path];
  v7 = MISValidateSignature();

  if (v7)
  {
    v8 = MISCopyErrorStringForErrorCode();
    v9 = WBS_LOG_CHANNEL_PREFIXWebExtensions();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __78__SFWebExtensionsController__isExtensionBlockedByBlocklist_completionHandler___block_invoke_cold_1(a1, v8, v9);
    }
  }

  else
  {
    v10 = WBS_LOG_CHANNEL_PREFIXWebExtensions();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 40);
      v12 = 138477827;
      v13 = v11;
      _os_log_impl(&dword_18B7AC000, v10, OS_LOG_TYPE_INFO, "Parent app for web extension with identifier %{private}@ is a trusted app", &v12, 0xCu);
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (BOOL)_isExtensionBlockedByBlocklist:(id)blocklist developerIdentifier:(id)identifier
{
  blocklistCopy = blocklist;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __80__SFWebExtensionsController__isExtensionBlockedByBlocklist_developerIdentifier___block_invoke;
  v8[3] = &unk_1E721CFD8;
  v8[4] = self;
  v6 = blocklistCopy;
  v9 = v6;
  objc_copyWeak(&v10, &location);
  LOBYTE(self) = [(SFWebExtensionsController *)self _isExtensionBlockedByBlocklist:v6 completionHandler:v8];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);
  return self;
}

void __80__SFWebExtensionsController__isExtensionBlockedByBlocklist_developerIdentifier___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__SFWebExtensionsController__isExtensionBlockedByBlocklist_developerIdentifier___block_invoke_2;
    block[3] = &unk_1E721CFB0;
    objc_copyWeak(&v8, (a1 + 48));
    v7 = *(a1 + 40);
    v9 = a2;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v8);
  }

  else
  {
    v4 = objc_opt_class();
    v5 = [*(a1 + 40) identifier];
    [v4 removeExtensionBundleIDFromArrayOfBlocklistedExtensions:?];
  }
}

void __80__SFWebExtensionsController__isExtensionBlockedByBlocklist_developerIdentifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    [WeakRetained _disableAndBlockExtension:*(a1 + 32)];
    v3 = objc_opt_class();
    v4 = [*(a1 + 32) identifier];
    LOBYTE(v3) = [v3 hasBlockedPromptAppearedForExtensionWithIdentifier:v4];

    WeakRetained = v9;
    if ((v3 & 1) == 0)
    {
      v5 = [v9 _displayNameForExtension:*(a1 + 32)];
      v6 = *(a1 + 48);
      v7 = *(a1 + 32);
      if (v6 == -402620379)
      {
        [v9 showPromptForUntrustedExtension:v7];
      }

      else if (v6 == -402620387)
      {
        [v9 showPromptForBlocklistedExtension:v7 extensionName:v5];
      }

      else
      {
        v8 = [v9 webExtensionForExtension:v7];
        [v9 showPromptForExpiredExtension:v8 extensionName:v5];
      }

      WeakRetained = v9;
    }
  }
}

- (void)extensionSettingsWereUpdatedExternallyFromSettingsApp:(BOOL)app
{
  appCopy = app;
  if ([(SFWebExtensionsController *)self extensionsEnabled])
  {
    v5 = *MEMORY[0x1E69C9900];
    v9 = *(&self->super.super.super.isa + v5);
    readExtensionsStateFromStorage = [(WBSExtensionsController *)self readExtensionsStateFromStorage];
    v7 = [readExtensionsStateFromStorage mutableCopy];
    v8 = *(&self->super.super.super.isa + v5);
    *(&self->super.super.super.isa + v5) = v7;

    if (*(&self->super.super.super.isa + v5))
    {
      [(SFWebExtensionsController *)self _updateExtensionsStateAfterExtensionSettingsWereUpdatedExternally:v9 shouldUpdateExtensionPermissionsAndEnabledState:appCopy];
    }
  }
}

- (void)_updateExtensionsStateAfterExtensionSettingsWereUpdatedExternally:(id)externally shouldUpdateExtensionPermissionsAndEnabledState:(BOOL)state
{
  externallyCopy = externally;
  v7 = *(&self->super.super.super.isa + *MEMORY[0x1E69C9900]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __143__SFWebExtensionsController__updateExtensionsStateAfterExtensionSettingsWereUpdatedExternally_shouldUpdateExtensionPermissionsAndEnabledState___block_invoke;
  v9[3] = &unk_1E721D000;
  v10 = externallyCopy;
  selfCopy = self;
  stateCopy = state;
  v8 = externallyCopy;
  [v7 enumerateKeysAndObjectsUsingBlock:v9];
}

void __143__SFWebExtensionsController__updateExtensionsStateAfterExtensionSettingsWereUpdatedExternally_shouldUpdateExtensionPermissionsAndEnabledState___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v12];
  v7 = [*(a1 + 40) webExtensionForComposedIdentifier:v12];
  v8 = v7;
  if (v7)
  {
    [v7 setHasLoadedPermissionsFromStorage:0];
    if (*(a1 + 48))
    {
      v9 = *MEMORY[0x1E69C95F0];
      v10 = [v5 safari_BOOLForKey:*MEMORY[0x1E69C95F0]];
      v11 = [v6 safari_BOOLForKey:v9];
      if (v10 == v11)
      {
        if (v11)
        {
          [*(a1 + 40) _permissionsMayHaveBeenChangedExternallyForExtension:v8 previousExtensionState:v6];
        }
      }

      else
      {
        [*(a1 + 40) _extensionWithComposedIdentifier:v12 wasEnabledOrDisabledByExtensionSettings:v10];
      }
    }
  }
}

- (void)_extensionWithComposedIdentifier:(id)identifier wasEnabledOrDisabledByExtensionSettings:(BOOL)settings
{
  settingsCopy = settings;
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v7 = [(WBSExtensionsController *)self extensionWithComposedIdentifier:identifierCopy];
  if (v7)
  {
    if ([*(&self->super.super.super.isa + *MEMORY[0x1E69C98F8]) containsObject:v7] == settingsCopy)
    {
      v12 = WBS_LOG_CHANNEL_PREFIXWebExtensions();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        identifier = [v7 identifier];
        [(SFWebExtensionsController *)identifier _extensionWithComposedIdentifier:settingsCopy wasEnabledOrDisabledByExtensionSettings:&v14, v12];
      }
    }

    else
    {
      v8 = WBS_LOG_CHANNEL_PREFIXWebExtensions();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        identifier2 = [v7 identifier];
        v10 = identifier2;
        v11 = @"disabled";
        if (settingsCopy)
        {
          v11 = @"enabled";
        }

        v14 = 138478083;
        v15 = identifier2;
        v16 = 2114;
        v17 = v11;
        _os_log_impl(&dword_18B7AC000, v8, OS_LOG_TYPE_INFO, "Extension with identifier %{private}@ was %{public}@ by Settings", &v14, 0x16u);
      }

      [(WBSExtensionsController *)self setExtension:v7 isEnabled:settingsCopy skipSavingToStorage:1];
    }
  }
}

- (void)showPermissionBannerForExtension:(id)extension
{
  extensionCopy = extension;
  queueOfExtensionsToShowInPermissionBanner = self->_queueOfExtensionsToShowInPermissionBanner;
  v9 = extensionCopy;
  if (!queueOfExtensionsToShowInPermissionBanner)
  {
    orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
    v7 = self->_queueOfExtensionsToShowInPermissionBanner;
    self->_queueOfExtensionsToShowInPermissionBanner = orderedSet;

    queueOfExtensionsToShowInPermissionBanner = self->_queueOfExtensionsToShowInPermissionBanner;
    extensionCopy = v9;
  }

  if (([(NSMutableOrderedSet *)queueOfExtensionsToShowInPermissionBanner containsObject:extensionCopy]& 1) == 0)
  {
    [(NSMutableOrderedSet *)self->_queueOfExtensionsToShowInPermissionBanner addObject:v9];
    if ([(NSMutableOrderedSet *)self->_queueOfExtensionsToShowInPermissionBanner count]== 1)
    {
      WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x1E69C98F0]));
      [WeakRetained sfWebExtensionsControllerDidChangeExtensionForPermissionBanner:self];
    }
  }
}

- (void)hidePermissionBannerForExtension:(id)extension
{
  extensionCopy = extension;
  if (([(NSMutableOrderedSet *)self->_queueOfExtensionsToShowInPermissionBanner containsObject:?]& 1) != 0)
  {
    currentExtensionForPermissionBanner = [(SFWebExtensionsController *)self currentExtensionForPermissionBanner];

    [(NSMutableOrderedSet *)self->_queueOfExtensionsToShowInPermissionBanner removeObject:extensionCopy];
    if (currentExtensionForPermissionBanner == extensionCopy)
    {
      WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x1E69C98F0]));
      [WeakRetained sfWebExtensionsControllerDidChangeExtensionForPermissionBanner:self];
    }
  }
}

- (void)didViewToolbarItemBadgesInTab:(id)tab
{
  v17 = *MEMORY[0x1E69E9840];
  tabCopy = tab;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  enabledExtensions = [(WBSExtensionsController *)self enabledExtensions];
  v6 = 0;
  v7 = [enabledExtensions countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      v9 = 0;
      v10 = v6;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(enabledExtensions);
        }

        v6 = [(WBSWebExtensionsController *)self webExtensionForExtension:*(*(&v12 + 1) + 8 * v9)];

        toolbarItem = [v6 toolbarItem];
        [toolbarItem didViewBadgeInTab:tabCopy];

        ++v9;
        v10 = v6;
      }

      while (v7 != v9);
      v7 = [enabledExtensions countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [v6 _validateToolbarItemInAllWindows];
}

- (BOOL)hasUpdatedToolbarItemBadgeTextInTab:(id)tab
{
  v19 = *MEMORY[0x1E69E9840];
  tabCopy = tab;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  enabledExtensions = [(WBSExtensionsController *)self enabledExtensions];
  v6 = [enabledExtensions countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(enabledExtensions);
        }

        v9 = [(WBSWebExtensionsController *)self webExtensionForExtension:*(*(&v14 + 1) + 8 * i)];
        toolbarItem = [v9 toolbarItem];
        v11 = [toolbarItem hasUpdatedBadgeTextInTab:tabCopy];

        if (v11)
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v6 = [enabledExtensions countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (void)reportCommandShortcutConflictsIfNecessaryForExtension:(id)extension presentingViewController:(id)controller completionHandler:(id)handler
{
  extensionCopy = extension;
  controllerCopy = controller;
  handlerCopy = handler;
  v10 = [(WBSWebExtensionsController *)self commandShortcutConflictsForExtension:extensionCopy];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 mutableCopy];
    [(SFWebExtensionsController *)self _reportCommandShortcutConflictsForExtension:extensionCopy conflicts:v12 presentingViewController:controllerCopy completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }
}

- (void)_reportCommandShortcutConflictsForExtension:(id)extension conflicts:(id)conflicts presentingViewController:(id)controller completionHandler:(id)handler
{
  extensionCopy = extension;
  conflictsCopy = conflicts;
  controllerCopy = controller;
  handlerCopy = handler;
  firstObject = [conflictsCopy firstObject];
  if (firstObject)
  {
    [conflictsCopy removeObjectAtIndex:0];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __126__SFWebExtensionsController__reportCommandShortcutConflictsForExtension_conflicts_presentingViewController_completionHandler___block_invoke;
    v17[3] = &unk_1E721D028;
    v17[4] = self;
    v18 = extensionCopy;
    v19 = conflictsCopy;
    v15 = controllerCopy;
    v20 = v15;
    v21 = handlerCopy;
    v16 = [(SFWebExtensionsController *)self _commandShortcutConflictAlertForExtension:v18 conflict:firstObject okAction:v17];
    [v15 presentViewController:v16 animated:1 completion:0];
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }
}

- (id)_commandShortcutConflictAlertForExtension:(id)extension conflict:(id)conflict okAction:(id)action
{
  extensionCopy = extension;
  conflictCopy = conflict;
  actionCopy = action;
  v10 = _WBSLocalizedString();
  displayShortName = [extensionCopy displayShortName];
  extensionDisplayShortName = [conflictCopy extensionDisplayShortName];
  if ([displayShortName compare:extensionDisplayShortName] == 1)
  {
    [conflictCopy extensionDisplayName];
  }

  else
  {
    [extensionCopy displayName];
  }
  v13 = ;

  v14 = MEMORY[0x1E696AEC0];
  v15 = _WBSLocalizedString();
  extensionDisplayName = [conflictCopy extensionDisplayName];
  shortcut = [conflictCopy shortcut];
  v18 = [v14 stringWithFormat:v15, extensionDisplayName, shortcut, v13];

  v19 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v10 message:v18 preferredStyle:1];
  v20 = MEMORY[0x1E69DC648];
  v21 = _WBSLocalizedString();
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __89__SFWebExtensionsController__commandShortcutConflictAlertForExtension_conflict_okAction___block_invoke;
  v25[3] = &unk_1E721D050;
  v22 = actionCopy;
  v26 = v22;
  v23 = [v20 actionWithTitle:v21 style:0 handler:v25];
  [v19 addAction:v23];

  return v19;
}

- (unint64_t)recentlyInstalledExtensionCount
{
  extensions = [(WBSExtensionsController *)self extensions];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [standardUserDefaults safari_dateForKey:*MEMORY[0x1E69C9390]];

  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __60__SFWebExtensionsController_recentlyInstalledExtensionCount__block_invoke;
  v13 = &unk_1E721D078;
  selfCopy = self;
  v6 = v5;
  v15 = v6;
  v7 = [extensions safari_filterObjectsUsingBlock:&v10];
  v8 = [v7 count];

  return v8;
}

BOOL __60__SFWebExtensionsController_recentlyInstalledExtensionCount__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) extensionIsEnabled:v3])
  {
    v4 = 0;
  }

  else if (*(a1 + 40))
  {
    v5 = [*(a1 + 32) installationDateForExtension:v3];
    v4 = [*(a1 + 40) compare:v5] == -1;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)webExtensionController:(id)controller presentPopupForAction:(id)action forExtensionContext:(id)context completionHandler:(id)handler
{
  actionCopy = action;
  handlerCopy = handler;
  v11 = [MEMORY[0x1E69C98C8] webExtensionForWebKitExtensionContext:context];
  if (v11)
  {
    if (objc_opt_respondsToSelector())
    {
      toolbarItem = [v11 toolbarItem];
      v13 = [toolbarItem popupWebViewInspectionNameForAction:actionCopy];
      [actionCopy setInspectionName:v13];
    }

    WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x1E69C98F0]));
    associatedTab = [actionCopy associatedTab];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __112__SFWebExtensionsController_webExtensionController_presentPopupForAction_forExtensionContext_completionHandler___block_invoke;
    v16[3] = &unk_1E721D0A0;
    v17 = handlerCopy;
    [WeakRetained sfWebExtensionsController:self showPopupOrPerSitePermissionsForExtension:v11 forTab:associatedTab completionHandler:v16];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (id)_developerIdentifierForExtension:(id)extension untrustedCodeSigningDictionary:(id)dictionary
{
  v25 = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  v5 = objc_getAssociatedObject(extensionCopy, &developerIdentifierRepresentedObjectKey);
  if (v5)
  {
    v6 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    teamIdentifier = v7;

    goto LABEL_22;
  }

  v9 = objc_alloc(MEMORY[0x1E69635D0]);
  _plugIn = [extensionCopy _plugIn];
  uuid = [_plugIn uuid];
  v23 = 0;
  v12 = [v9 initWithUUID:uuid error:&v23];
  v13 = v23;

  if (!v12)
  {
    v16 = WBS_LOG_CHANNEL_PREFIXWebExtensions();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      identifier = [extensionCopy identifier];
      safari_privacyPreservingDescription = [v13 safari_privacyPreservingDescription];
      [(SFWebExtensionsController *)identifier _developerIdentifierForExtension:safari_privacyPreservingDescription untrustedCodeSigningDictionary:buf, v16];
    }

    null = [MEMORY[0x1E695DFB0] null];
    objc_setAssociatedObject(extensionCopy, &developerIdentifierRepresentedObjectKey, null, 1);
    teamIdentifier = 0;
    goto LABEL_21;
  }

  null = [v12 containingBundleRecord];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = WBS_LOG_CHANNEL_PREFIXWebExtensions();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      identifier2 = [extensionCopy identifier];
      [(SFWebExtensionsController *)identifier2 _developerIdentifierForExtension:buf untrustedCodeSigningDictionary:v19];
    }

    null2 = [MEMORY[0x1E695DFB0] null];
    objc_setAssociatedObject(extensionCopy, &developerIdentifierRepresentedObjectKey, null2, 1);
    teamIdentifier = 0;
    goto LABEL_20;
  }

  teamIdentifier = [null teamIdentifier];
  if ([(__CFString *)teamIdentifier isEqualToString:@"0000000000"])
  {

    v15 = 0;
    teamIdentifier = @"UNSIGNED";
LABEL_18:
    null2 = teamIdentifier;
    goto LABEL_19;
  }

  if (teamIdentifier)
  {
    v15 = 0;
    goto LABEL_18;
  }

  null2 = [MEMORY[0x1E695DFB0] null];
  v15 = 1;
LABEL_19:
  objc_setAssociatedObject(extensionCopy, &developerIdentifierRepresentedObjectKey, null2, 1);
  if (v15)
  {
LABEL_20:
  }

LABEL_21:

LABEL_22:

  return teamIdentifier;
}

- (void)_createNewTabInWindow:(id)window tabIndex:(id)index url:(id)url makeActive:(BOOL)active completionHandler:(id)handler
{
  activeCopy = active;
  v12 = *MEMORY[0x1E69C98F0];
  handlerCopy = handler;
  urlCopy = url;
  indexCopy = index;
  windowCopy = window;
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + v12));
  [WeakRetained sfWebExtensionsController:self createNewTabInWindow:windowCopy tabIndex:indexCopy url:urlCopy makeActive:activeCopy completionHandler:handlerCopy];
}

- (void)_pinTab:(id)tab
{
  v4 = *MEMORY[0x1E69C98F0];
  tabCopy = tab;
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + v4));
  [WeakRetained sfWebExtensionsController:self pinTab:tabCopy];
}

- (void)_relateParentTab:(id)tab toTab:(id)toTab
{
  v6 = *MEMORY[0x1E69C98F0];
  toTabCopy = toTab;
  tabCopy = tab;
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + v6));
  [WeakRetained sfWebExtensionsController:self relateParentTab:tabCopy toTab:toTabCopy];
}

- (id)_findTabInAnyWindowWithID:(double)d
{
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x1E69C98F0]));
  v6 = [WeakRetained sfWebExtensionsController:self tabWithID:d];

  return v6;
}

- (void)fireAppropriateTabMovementEventForTabState:(id)state
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__SFWebExtensionsController_fireAppropriateTabMovementEventForTabState___block_invoke;
  v5[3] = &unk_1E721D0C8;
  v5[4] = self;
  [state enumerateKeysAndObjectsUsingBlock:v5];
  tabIDToTabPositionForTabsInTransit = self->_tabIDToTabPositionForTabsInTransit;
  self->_tabIDToTabPositionForTabsInTransit = 0;
}

void __72__SFWebExtensionsController_fireAppropriateTabMovementEventForTabState___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 360) objectForKeyedSubscript:v16];
  if (v6)
  {
    v7 = *(a1 + 32);
    [v16 doubleValue];
    v8 = [v7 _findTabInAnyWindowWithID:?];
    if (v8)
    {
      [v5 windowID];
      v10 = v9;
      [v6 windowID];
      v12 = v11;
      v13 = [v5 index];
      v14 = [v6 index];
      v15 = *(a1 + 32);
      if (v10 == v12)
      {
        [v15 didMoveTab:v8 fromIndex:v14 toIndex:v13];
      }

      else
      {
        [v15 didMoveTab:v8 fromWindowWithID:v14 indexInOldWindow:v12];
      }
    }
  }
}

- (void)fireOnMovedEventForTabsWithPreviousTabPositions:(id)positions currentTabsPositions:(id)tabsPositions
{
  positionsCopy = positions;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __98__SFWebExtensionsController_fireOnMovedEventForTabsWithPreviousTabPositions_currentTabsPositions___block_invoke;
  v8[3] = &unk_1E721D0F0;
  v9 = positionsCopy;
  selfCopy = self;
  v7 = positionsCopy;
  [tabsPositions enumerateKeysAndObjectsUsingBlock:v8];
}

void __98__SFWebExtensionsController_fireOnMovedEventForTabsWithPreviousTabPositions_currentTabsPositions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v9];
  v7 = *(a1 + 40);
  [v9 doubleValue];
  v8 = [v7 _findTabInAnyWindowWithID:?];
  [*(a1 + 40) didMoveTab:v8 fromIndex:objc_msgSend(v6 toIndex:{"index"), objc_msgSend(v5, "index")}];
}

- (void)fireAttachmentEventsForTabsWithPreviousTabPositions:(id)positions
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __81__SFWebExtensionsController_fireAttachmentEventsForTabsWithPreviousTabPositions___block_invoke;
  v3[3] = &unk_1E721D0C8;
  v3[4] = self;
  [positions enumerateKeysAndObjectsUsingBlock:v3];
}

void __81__SFWebExtensionsController_fireAttachmentEventsForTabsWithPreviousTabPositions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  [v10 doubleValue];
  v7 = [v6 _findTabInAnyWindowWithID:?];
  v8 = *(a1 + 32);
  [v5 windowID];
  [v8 didMoveTab:v7 fromWindowWithID:objc_msgSend(v5 indexInOldWindow:{"index"), v9}];
}

- (id)_findWindowWithID:(double)d
{
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x1E69C98F0]));
  v6 = [WeakRetained sfWebExtensionsController:self windowWithID:d];

  return v6;
}

- (id)_allWindowsForWebExtension:(id)extension
{
  extensionCopy = extension;
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x1E69C98F0]));
  v6 = [WeakRetained sfWebExtensionsControllerAllWindows:self];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__SFWebExtensionsController__allWindowsForWebExtension___block_invoke;
  v10[3] = &unk_1E721D118;
  v7 = extensionCopy;
  v11 = v7;
  v8 = [v6 safari_filterObjectsUsingBlock:v10];

  return v8;
}

uint64_t __56__SFWebExtensionsController__allWindowsForWebExtension___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isPrivate] && (objc_msgSend(*(a1 + 32), "allowedInPrivateBrowsing") & 1) == 0)
  {
    v7 = 0;
  }

  else
  {
    v4 = [v3 profile];
    v5 = [*(a1 + 32) extensionsController];
    v6 = [v5 profile];
    v7 = [v4 isEqual:v6];
  }

  return v7;
}

- (id)lastFocusedWindow
{
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x1E69C98F0]));
  v4 = [WeakRetained sfWebExtensionsControllerLastFocusedWindow:self];

  return v4;
}

- (void)_clearNewTabPreferenceIfNecessaryForRemovedExtensionWithComposedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _extensionDefaults = [objc_opt_class() _extensionDefaults];
  tabOverridePreferencesManager = [(WBSWebExtensionsController *)self tabOverridePreferencesManager];
  v6 = [tabOverridePreferencesManager extensionComposedIdentifierForNewTabPreferenceInDefaults:_extensionDefaults];
  v7 = [v6 isEqualToString:identifierCopy];

  if (v7)
  {
    tabOverridePreferencesManager2 = [(WBSWebExtensionsController *)self tabOverridePreferencesManager];
    [tabOverridePreferencesManager2 clearNewTabBehaviorInDefaults:_extensionDefaults fromUserGesture:0];
  }
}

- (void)_showAccessRequestAlertForExtension:(id)extension domains:(id)domains callingAPIName:(id)name responseBlock:(id)block
{
  blockCopy = block;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __102__SFWebExtensionsController__showAccessRequestAlertForExtension_domains_callingAPIName_responseBlock___block_invoke;
  v12[3] = &unk_1E721D140;
  v13 = blockCopy;
  v11 = blockCopy;
  [(SFWebExtensionsController *)self showAccessRequestDialogForExtension:extension domains:domains callingAPIName:name showMoreOptionsForAlwaysAllow:0 includeDenyButton:1 responseBlock:v12];
}

- (id)_safariShortVersion
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  safari_shortVersion = [v2 safari_shortVersion];

  return safari_shortVersion;
}

- (void)setProcessPool:(id)pool
{
  poolCopy = pool;
  v6 = poolCopy;
  processPool = self->_processPool;
  if (poolCopy)
  {
    if (processPool != poolCopy)
    {
      objc_storeStrong(&self->_processPool, pool);
      objc_initWeak(&location, self);
      _extensionDefaults = [objc_opt_class() _extensionDefaults];
      v9 = *MEMORY[0x1E69C91D0];
      v10 = MEMORY[0x1E69E96A0];
      v11 = MEMORY[0x1E69E96A0];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __44__SFWebExtensionsController_setProcessPool___block_invoke;
      v15[3] = &unk_1E721D168;
      objc_copyWeak(&v16, &location);
      v12 = [_extensionDefaults safari_observeValueForKey:v9 onQueue:v10 notifyForInitialValue:1 handler:v15];
      stubUnsupportedAPIsUserDefaultObserver = self->_stubUnsupportedAPIsUserDefaultObserver;
      self->_stubUnsupportedAPIsUserDefaultObserver = v12;

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    self->_processPool = 0;

    v14 = self->_stubUnsupportedAPIsUserDefaultObserver;
    self->_stubUnsupportedAPIsUserDefaultObserver = 0;
  }
}

void __44__SFWebExtensionsController_setProcessPool___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 42);
    v7 = *MEMORY[0x1E69C91D0];
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v9, "BOOLForKey:", *MEMORY[0x1E69C91D0])}];
    [v6 _setObject:v8 forBundleParameter:v7];
  }
}

- (UIViewController)viewControllerToPresentDialogsFrom
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  keyWindow = [mEMORY[0x1E69DC668] keyWindow];
  WeakRetained = [keyWindow rootViewController];

  if (WeakRetained)
  {
    while (1)
    {
      presentedViewController = [WeakRetained presentedViewController];
      if (!presentedViewController)
      {
        break;
      }

      presentedViewController2 = [WeakRetained presentedViewController];
      isBeingDismissed = [presentedViewController2 isBeingDismissed];

      if (isBeingDismissed)
      {
        break;
      }

      presentedViewController3 = [WeakRetained presentedViewController];

      WeakRetained = presentedViewController3;
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_viewControllerToPresentDialogsFrom);
  }

  return WeakRetained;
}

- (void)setViewControllerToPresentDialogsFrom:(id)from
{
  objc_storeWeak(&self->_viewControllerToPresentDialogsFrom, from);

  [(SFWebExtensionsController *)self cancelPresentedDialogIfNecessaryAndUnqueuePendingWebExtensionDialogs];
}

- (BOOL)parentalControlsAreEnabledForExtensions
{
  mEMORY[0x1E69E20E8] = [MEMORY[0x1E69E20E8] sharedWebFilterSettings];
  if ([mEMORY[0x1E69E20E8] isWebFilterEnabled])
  {
    usesAllowedSitesOnly = 1;
  }

  else
  {
    usesAllowedSitesOnly = [mEMORY[0x1E69E20E8] usesAllowedSitesOnly];
  }

  return usesAllowedSitesOnly;
}

+ (void)_didDiscoverExtensions:(BOOL)extensions
{
  extensionsCopy = extensions;
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  [safari_browserDefaults setBool:extensionsCopy forKey:*MEMORY[0x1E69C9328]];
}

- (id)_deviceUUIDString
{
  v2 = +[SFDeviceUtilities deviceUUID];
  uUIDString = [v2 UUIDString];

  return uUIDString;
}

- (id)tabGroupManager
{
  WeakRetained = objc_loadWeakRetained(&self->_profileDelegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained sfWebExtensionsControllerTabGroupManager:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)profile
{
  profileServerID = [(WBSExtensionsController *)self profileServerID];
  tabGroupManager = [(SFWebExtensionsController *)self tabGroupManager];
  profiles = [tabGroupManager profiles];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __36__SFWebExtensionsController_profile__block_invoke;
  v9[3] = &unk_1E721D190;
  v6 = profileServerID;
  v10 = v6;
  v7 = [profiles safari_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __36__SFWebExtensionsController_profile__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifierForExtensions];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (BOOL)hasNamedProfiles
{
  tabGroupManager = [(SFWebExtensionsController *)self tabGroupManager];
  namedProfiles = [tabGroupManager namedProfiles];
  v4 = [namedProfiles count] != 0;

  return v4;
}

- (id)webExtensionsControllerForProfileServerID:(id)d
{
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_profileDelegate);
  if (objc_opt_respondsToSelector())
  {
    v6 = [WeakRetained sfWebExtensionsController:self forProfileServerID:dCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)contentBlockerManagerForProfileServerID:(id)d
{
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_profileDelegate);
  if (objc_opt_respondsToSelector())
  {
    v6 = [WeakRetained sfWebExtensionsControllerContentBlockerManager:self forProfileServerID:dCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSArray)allWebExtensionControllers
{
  WeakRetained = objc_loadWeakRetained(&self->_profileDelegate);
  v4 = [WeakRetained sfWebExtensionsControllersForAllProfiles:self];

  return v4;
}

- (NSArray)allContentBlockerManagers
{
  WeakRetained = objc_loadWeakRetained(&self->_profileDelegate);
  v4 = [WeakRetained sfWebExtensionsControllersContentBlockerManagersForAllProfiles:self];

  return v4;
}

- (id)_domainForDefaultSearchProvider
{
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x1E69C98F0]));
  v4 = [WeakRetained sfWebExtensionsControllerDomainForDefaultSearchProvider:self];

  return v4;
}

- (_SFNavigationIntentHandling)navigationIntentHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationIntentHandler);

  return WeakRetained;
}

- (SFWebExtensionControllerProfileDelegate)profileDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_profileDelegate);

  return WeakRetained;
}

void __78__SFWebExtensionsController__isExtensionBlockedByBlocklist_completionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v4 = 138478083;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_18B7AC000, log, OS_LOG_TYPE_ERROR, "Parent app for web extension with identifier %{private}@ is not a trusted app. %@", &v4, 0x16u);
}

- (void)_extensionWithComposedIdentifier:(uint8_t *)buf wasEnabledOrDisabledByExtensionSettings:(os_log_t)log .cold.1(void *a1, char a2, uint8_t *buf, os_log_t log)
{
  v5 = @"disabled";
  if (a2)
  {
    v5 = @"enabled";
  }

  *buf = 138478083;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = v5;
  _os_log_debug_impl(&dword_18B7AC000, log, OS_LOG_TYPE_DEBUG, "Extension with identifier %{private}@ was %{public}@ by Settings, but is already in that state", buf, 0x16u);
}

- (void)_developerIdentifierForExtension:(os_log_t)log untrustedCodeSigningDictionary:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138477827;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_18B7AC000, log, OS_LOG_TYPE_ERROR, "Developer identifier for extension with identifier %{private}@ couldn't be determined because extension isn't in an app bundle", buf, 0xCu);
}

- (void)_developerIdentifierForExtension:(uint8_t *)buf untrustedCodeSigningDictionary:(os_log_t)log .cold.2(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138478083;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_18B7AC000, log, OS_LOG_TYPE_ERROR, "Developer identifier for extension with identifier %{private}@ couldn't be determined because LSApplicationExtensionRecord couldn't be allocated: error %{public}@", buf, 0x16u);
}

@end
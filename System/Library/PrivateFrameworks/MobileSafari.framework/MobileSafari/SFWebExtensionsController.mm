@interface SFWebExtensionsController
+ (void)_didDiscoverExtensions:(BOOL)a3;
- (BOOL)_isExtensionBlockedByBlocklist:(id)a3 completionHandler:(id)a4;
- (BOOL)_isExtensionBlockedByBlocklist:(id)a3 developerIdentifier:(id)a4;
- (BOOL)hasNamedProfiles;
- (BOOL)hasUpdatedToolbarItemBadgeTextInTab:(id)a3;
- (BOOL)parentalControlsAreEnabledForExtensions;
- (NSArray)allContentBlockerManagers;
- (NSArray)allWebExtensionControllers;
- (NSURL)extensionOverriddenStartPageURL;
- (SFWebExtensionControllerProfileDelegate)profileDelegate;
- (UIViewController)viewControllerToPresentDialogsFrom;
- (_SFNavigationIntentHandling)navigationIntentHandler;
- (id)_allWindowsForWebExtension:(id)a3;
- (id)_commandShortcutConflictAlertForExtension:(id)a3 conflict:(id)a4 okAction:(id)a5;
- (id)_developerIdentifierForExtension:(id)a3 untrustedCodeSigningDictionary:(id)a4;
- (id)_deviceUUIDString;
- (id)_domainForDefaultSearchProvider;
- (id)_findTabInAnyWindowWithID:(double)a3;
- (id)_findWindowWithID:(double)a3;
- (id)_safariShortVersion;
- (id)_webViewConfiguration;
- (id)allProfileExtensionsControllers;
- (id)contentBlockerManagerForProfileServerID:(id)a3;
- (id)lastFocusedWindow;
- (id)profile;
- (id)tabGroupManager;
- (id)webExtensionsControllerForProfileServerID:(id)a3;
- (unint64_t)recentlyInstalledExtensionCount;
- (void)_clearNewTabPreferenceIfNecessaryForRemovedExtensionWithComposedIdentifier:(id)a3;
- (void)_createNewTabInWindow:(id)a3 tabIndex:(id)a4 url:(id)a5 makeActive:(BOOL)a6 completionHandler:(id)a7;
- (void)_extensionWithComposedIdentifier:(id)a3 wasEnabledOrDisabledByExtensionSettings:(BOOL)a4;
- (void)_pinTab:(id)a3;
- (void)_relateParentTab:(id)a3 toTab:(id)a4;
- (void)_reportCommandShortcutConflictsForExtension:(id)a3 conflicts:(id)a4 presentingViewController:(id)a5 completionHandler:(id)a6;
- (void)_showAccessRequestAlertForExtension:(id)a3 domains:(id)a4 callingAPIName:(id)a5 responseBlock:(id)a6;
- (void)_updateExtensionsStateAfterExtensionSettingsWereUpdatedExternally:(id)a3 shouldUpdateExtensionPermissionsAndEnabledState:(BOOL)a4;
- (void)didViewToolbarItemBadgesInTab:(id)a3;
- (void)extensionSettingsWereUpdatedExternallyFromSettingsApp:(BOOL)a3;
- (void)fireAppropriateTabMovementEventForTabState:(id)a3;
- (void)fireAttachmentEventsForTabsWithPreviousTabPositions:(id)a3;
- (void)fireOnMovedEventForTabsWithPreviousTabPositions:(id)a3 currentTabsPositions:(id)a4;
- (void)hidePermissionBannerForExtension:(id)a3;
- (void)reportCommandShortcutConflictsIfNecessaryForExtension:(id)a3 presentingViewController:(id)a4 completionHandler:(id)a5;
- (void)setProcessPool:(id)a3;
- (void)setViewControllerToPresentDialogsFrom:(id)a3;
- (void)showPermissionBannerForExtension:(id)a3;
- (void)webExtensionController:(id)a3 presentPopupForAction:(id)a4 forExtensionContext:(id)a5 completionHandler:(id)a6;
@end

@implementation SFWebExtensionsController

- (id)_webViewConfiguration
{
  v3 = objc_alloc_init(MEMORY[0x1E69853A8]);
  v4 = [(SFWebExtensionsController *)self applicationNameForUserAgent];
  [v3 setApplicationNameForUserAgent:v4];

  v5 = [(SFWebExtensionsController *)self processPool];
  [v3 setProcessPool:v5];

  v6 = [MEMORY[0x1E6985350] safari_webExtensionUserContentController];
  [v3 setUserContentController:v6];

  [v3 _setCrossOriginAccessControlCheckEnabled:0];
  [v3 _setGroupIdentifier:*MEMORY[0x1E69C9A40]];
  [v3 _setShouldRelaxThirdPartyCookieBlocking:1];
  v7 = [v3 defaultWebpagePreferences];
  [v7 _setAutoplayPolicy:1];

  v8 = [(WBSExtensionsController *)self websiteDataStore];
  [v3 setWebsiteDataStore:v8];

  [v3 setShowsSystemScreenTimeBlockingView:0];
  v9 = _SFDeviceSupportsDesktopSitesByDefault();
  v10 = [v3 defaultWebpagePreferences];
  v11 = v10;
  if (v9)
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  [v10 setPreferredContentMode:v12];

  v13 = _SFApplicationNameForDesktopUserAgent();
  v14 = [v3 defaultWebpagePreferences];
  [v14 _setApplicationNameForUserAgentWithModernCompatibility:v13];

  v15 = [v3 preferences];
  [v15 _setShouldIgnoreMetaViewport:v9];

  return v3;
}

- (NSURL)extensionOverriddenStartPageURL
{
  v3 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v4 = [(WBSWebExtensionsController *)self tabOverridePreferencesManager];
  if ([v4 isNewTabPageOverriddenByAnEnabledExtensionInUserDefaults:v3])
  {
    v5 = [v4 extensionComposedIdentifierForNewTabPreferenceInDefaults:v3];
    v6 = [(WBSWebExtensionsController *)self webExtensionForComposedIdentifier:v5];
    v7 = [v6 newTabOverridePageURL];
  }

  else
  {
    v7 = 0;
  }

  return v7;
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

- (BOOL)_isExtensionBlockedByBlocklist:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 sf_bundleIdentifierForContainingApp];
  v9 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v8 allowPlaceholder:0 error:0];
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
    v17 = v8;
    v18 = v7;
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

- (BOOL)_isExtensionBlockedByBlocklist:(id)a3 developerIdentifier:(id)a4
{
  v5 = a3;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __80__SFWebExtensionsController__isExtensionBlockedByBlocklist_developerIdentifier___block_invoke;
  v8[3] = &unk_1E721CFD8;
  v8[4] = self;
  v6 = v5;
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

- (void)extensionSettingsWereUpdatedExternallyFromSettingsApp:(BOOL)a3
{
  v3 = a3;
  if ([(SFWebExtensionsController *)self extensionsEnabled])
  {
    v5 = *MEMORY[0x1E69C9900];
    v9 = *(&self->super.super.super.isa + v5);
    v6 = [(WBSExtensionsController *)self readExtensionsStateFromStorage];
    v7 = [v6 mutableCopy];
    v8 = *(&self->super.super.super.isa + v5);
    *(&self->super.super.super.isa + v5) = v7;

    if (*(&self->super.super.super.isa + v5))
    {
      [(SFWebExtensionsController *)self _updateExtensionsStateAfterExtensionSettingsWereUpdatedExternally:v9 shouldUpdateExtensionPermissionsAndEnabledState:v3];
    }
  }
}

- (void)_updateExtensionsStateAfterExtensionSettingsWereUpdatedExternally:(id)a3 shouldUpdateExtensionPermissionsAndEnabledState:(BOOL)a4
{
  v6 = a3;
  v7 = *(&self->super.super.super.isa + *MEMORY[0x1E69C9900]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __143__SFWebExtensionsController__updateExtensionsStateAfterExtensionSettingsWereUpdatedExternally_shouldUpdateExtensionPermissionsAndEnabledState___block_invoke;
  v9[3] = &unk_1E721D000;
  v10 = v6;
  v11 = self;
  v12 = a4;
  v8 = v6;
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

- (void)_extensionWithComposedIdentifier:(id)a3 wasEnabledOrDisabledByExtensionSettings:(BOOL)a4
{
  v4 = a4;
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(WBSExtensionsController *)self extensionWithComposedIdentifier:v6];
  if (v7)
  {
    if ([*(&self->super.super.super.isa + *MEMORY[0x1E69C98F8]) containsObject:v7] == v4)
    {
      v12 = WBS_LOG_CHANNEL_PREFIXWebExtensions();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = [v7 identifier];
        [(SFWebExtensionsController *)v13 _extensionWithComposedIdentifier:v4 wasEnabledOrDisabledByExtensionSettings:&v14, v12];
      }
    }

    else
    {
      v8 = WBS_LOG_CHANNEL_PREFIXWebExtensions();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [v7 identifier];
        v10 = v9;
        v11 = @"disabled";
        if (v4)
        {
          v11 = @"enabled";
        }

        v14 = 138478083;
        v15 = v9;
        v16 = 2114;
        v17 = v11;
        _os_log_impl(&dword_18B7AC000, v8, OS_LOG_TYPE_INFO, "Extension with identifier %{private}@ was %{public}@ by Settings", &v14, 0x16u);
      }

      [(WBSExtensionsController *)self setExtension:v7 isEnabled:v4 skipSavingToStorage:1];
    }
  }
}

- (void)showPermissionBannerForExtension:(id)a3
{
  v4 = a3;
  queueOfExtensionsToShowInPermissionBanner = self->_queueOfExtensionsToShowInPermissionBanner;
  v9 = v4;
  if (!queueOfExtensionsToShowInPermissionBanner)
  {
    v6 = [MEMORY[0x1E695DFA0] orderedSet];
    v7 = self->_queueOfExtensionsToShowInPermissionBanner;
    self->_queueOfExtensionsToShowInPermissionBanner = v6;

    queueOfExtensionsToShowInPermissionBanner = self->_queueOfExtensionsToShowInPermissionBanner;
    v4 = v9;
  }

  if (([(NSMutableOrderedSet *)queueOfExtensionsToShowInPermissionBanner containsObject:v4]& 1) == 0)
  {
    [(NSMutableOrderedSet *)self->_queueOfExtensionsToShowInPermissionBanner addObject:v9];
    if ([(NSMutableOrderedSet *)self->_queueOfExtensionsToShowInPermissionBanner count]== 1)
    {
      WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x1E69C98F0]));
      [WeakRetained sfWebExtensionsControllerDidChangeExtensionForPermissionBanner:self];
    }
  }
}

- (void)hidePermissionBannerForExtension:(id)a3
{
  v6 = a3;
  if (([(NSMutableOrderedSet *)self->_queueOfExtensionsToShowInPermissionBanner containsObject:?]& 1) != 0)
  {
    v4 = [(SFWebExtensionsController *)self currentExtensionForPermissionBanner];

    [(NSMutableOrderedSet *)self->_queueOfExtensionsToShowInPermissionBanner removeObject:v6];
    if (v4 == v6)
    {
      WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x1E69C98F0]));
      [WeakRetained sfWebExtensionsControllerDidChangeExtensionForPermissionBanner:self];
    }
  }
}

- (void)didViewToolbarItemBadgesInTab:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(WBSExtensionsController *)self enabledExtensions];
  v6 = 0;
  v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v6 = [(WBSWebExtensionsController *)self webExtensionForExtension:*(*(&v12 + 1) + 8 * v9)];

        v11 = [v6 toolbarItem];
        [v11 didViewBadgeInTab:v4];

        ++v9;
        v10 = v6;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [v6 _validateToolbarItemInAllWindows];
}

- (BOOL)hasUpdatedToolbarItemBadgeTextInTab:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(WBSExtensionsController *)self enabledExtensions];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [(WBSWebExtensionsController *)self webExtensionForExtension:*(*(&v14 + 1) + 8 * i)];
        v10 = [v9 toolbarItem];
        v11 = [v10 hasUpdatedBadgeTextInTab:v4];

        if (v11)
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)reportCommandShortcutConflictsIfNecessaryForExtension:(id)a3 presentingViewController:(id)a4 completionHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(WBSWebExtensionsController *)self commandShortcutConflictsForExtension:v13];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 mutableCopy];
    [(SFWebExtensionsController *)self _reportCommandShortcutConflictsForExtension:v13 conflicts:v12 presentingViewController:v8 completionHandler:v9];
  }

  else
  {
    v9[2](v9);
  }
}

- (void)_reportCommandShortcutConflictsForExtension:(id)a3 conflicts:(id)a4 presentingViewController:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v11 firstObject];
  if (v14)
  {
    [v11 removeObjectAtIndex:0];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __126__SFWebExtensionsController__reportCommandShortcutConflictsForExtension_conflicts_presentingViewController_completionHandler___block_invoke;
    v17[3] = &unk_1E721D028;
    v17[4] = self;
    v18 = v10;
    v19 = v11;
    v15 = v12;
    v20 = v15;
    v21 = v13;
    v16 = [(SFWebExtensionsController *)self _commandShortcutConflictAlertForExtension:v18 conflict:v14 okAction:v17];
    [v15 presentViewController:v16 animated:1 completion:0];
  }

  else
  {
    v13[2](v13);
  }
}

- (id)_commandShortcutConflictAlertForExtension:(id)a3 conflict:(id)a4 okAction:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = _WBSLocalizedString();
  v11 = [v7 displayShortName];
  v12 = [v8 extensionDisplayShortName];
  if ([v11 compare:v12] == 1)
  {
    [v8 extensionDisplayName];
  }

  else
  {
    [v7 displayName];
  }
  v13 = ;

  v14 = MEMORY[0x1E696AEC0];
  v15 = _WBSLocalizedString();
  v16 = [v8 extensionDisplayName];
  v17 = [v8 shortcut];
  v18 = [v14 stringWithFormat:v15, v16, v17, v13];

  v19 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v10 message:v18 preferredStyle:1];
  v20 = MEMORY[0x1E69DC648];
  v21 = _WBSLocalizedString();
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __89__SFWebExtensionsController__commandShortcutConflictAlertForExtension_conflict_okAction___block_invoke;
  v25[3] = &unk_1E721D050;
  v22 = v9;
  v26 = v22;
  v23 = [v20 actionWithTitle:v21 style:0 handler:v25];
  [v19 addAction:v23];

  return v19;
}

- (unint64_t)recentlyInstalledExtensionCount
{
  v3 = [(WBSExtensionsController *)self extensions];
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v4 safari_dateForKey:*MEMORY[0x1E69C9390]];

  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __60__SFWebExtensionsController_recentlyInstalledExtensionCount__block_invoke;
  v13 = &unk_1E721D078;
  v14 = self;
  v6 = v5;
  v15 = v6;
  v7 = [v3 safari_filterObjectsUsingBlock:&v10];
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

- (void)webExtensionController:(id)a3 presentPopupForAction:(id)a4 forExtensionContext:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a6;
  v11 = [MEMORY[0x1E69C98C8] webExtensionForWebKitExtensionContext:a5];
  if (v11)
  {
    if (objc_opt_respondsToSelector())
    {
      v12 = [v11 toolbarItem];
      v13 = [v12 popupWebViewInspectionNameForAction:v9];
      [v9 setInspectionName:v13];
    }

    WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x1E69C98F0]));
    v15 = [v9 associatedTab];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __112__SFWebExtensionsController_webExtensionController_presentPopupForAction_forExtensionContext_completionHandler___block_invoke;
    v16[3] = &unk_1E721D0A0;
    v17 = v10;
    [WeakRetained sfWebExtensionsController:self showPopupOrPerSitePermissionsForExtension:v11 forTab:v15 completionHandler:v16];
  }

  else
  {
    (*(v10 + 2))(v10, 0);
  }
}

- (id)_developerIdentifierForExtension:(id)a3 untrustedCodeSigningDictionary:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_getAssociatedObject(v4, &developerIdentifierRepresentedObjectKey);
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

    v8 = v7;

    goto LABEL_22;
  }

  v9 = objc_alloc(MEMORY[0x1E69635D0]);
  v10 = [v4 _plugIn];
  v11 = [v10 uuid];
  v23 = 0;
  v12 = [v9 initWithUUID:v11 error:&v23];
  v13 = v23;

  if (!v12)
  {
    v16 = WBS_LOG_CHANNEL_PREFIXWebExtensions();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [v4 identifier];
      v18 = [v13 safari_privacyPreservingDescription];
      [(SFWebExtensionsController *)v17 _developerIdentifierForExtension:v18 untrustedCodeSigningDictionary:buf, v16];
    }

    v14 = [MEMORY[0x1E695DFB0] null];
    objc_setAssociatedObject(v4, &developerIdentifierRepresentedObjectKey, v14, 1);
    v8 = 0;
    goto LABEL_21;
  }

  v14 = [v12 containingBundleRecord];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = WBS_LOG_CHANNEL_PREFIXWebExtensions();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [v4 identifier];
      [(SFWebExtensionsController *)v20 _developerIdentifierForExtension:buf untrustedCodeSigningDictionary:v19];
    }

    v21 = [MEMORY[0x1E695DFB0] null];
    objc_setAssociatedObject(v4, &developerIdentifierRepresentedObjectKey, v21, 1);
    v8 = 0;
    goto LABEL_20;
  }

  v8 = [v14 teamIdentifier];
  if ([(__CFString *)v8 isEqualToString:@"0000000000"])
  {

    v15 = 0;
    v8 = @"UNSIGNED";
LABEL_18:
    v21 = v8;
    goto LABEL_19;
  }

  if (v8)
  {
    v15 = 0;
    goto LABEL_18;
  }

  v21 = [MEMORY[0x1E695DFB0] null];
  v15 = 1;
LABEL_19:
  objc_setAssociatedObject(v4, &developerIdentifierRepresentedObjectKey, v21, 1);
  if (v15)
  {
LABEL_20:
  }

LABEL_21:

LABEL_22:

  return v8;
}

- (void)_createNewTabInWindow:(id)a3 tabIndex:(id)a4 url:(id)a5 makeActive:(BOOL)a6 completionHandler:(id)a7
{
  v7 = a6;
  v12 = *MEMORY[0x1E69C98F0];
  v13 = a7;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + v12));
  [WeakRetained sfWebExtensionsController:self createNewTabInWindow:v16 tabIndex:v15 url:v14 makeActive:v7 completionHandler:v13];
}

- (void)_pinTab:(id)a3
{
  v4 = *MEMORY[0x1E69C98F0];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + v4));
  [WeakRetained sfWebExtensionsController:self pinTab:v5];
}

- (void)_relateParentTab:(id)a3 toTab:(id)a4
{
  v6 = *MEMORY[0x1E69C98F0];
  v7 = a4;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + v6));
  [WeakRetained sfWebExtensionsController:self relateParentTab:v8 toTab:v7];
}

- (id)_findTabInAnyWindowWithID:(double)a3
{
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x1E69C98F0]));
  v6 = [WeakRetained sfWebExtensionsController:self tabWithID:a3];

  return v6;
}

- (void)fireAppropriateTabMovementEventForTabState:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__SFWebExtensionsController_fireAppropriateTabMovementEventForTabState___block_invoke;
  v5[3] = &unk_1E721D0C8;
  v5[4] = self;
  [a3 enumerateKeysAndObjectsUsingBlock:v5];
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

- (void)fireOnMovedEventForTabsWithPreviousTabPositions:(id)a3 currentTabsPositions:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __98__SFWebExtensionsController_fireOnMovedEventForTabsWithPreviousTabPositions_currentTabsPositions___block_invoke;
  v8[3] = &unk_1E721D0F0;
  v9 = v6;
  v10 = self;
  v7 = v6;
  [a4 enumerateKeysAndObjectsUsingBlock:v8];
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

- (void)fireAttachmentEventsForTabsWithPreviousTabPositions:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __81__SFWebExtensionsController_fireAttachmentEventsForTabsWithPreviousTabPositions___block_invoke;
  v3[3] = &unk_1E721D0C8;
  v3[4] = self;
  [a3 enumerateKeysAndObjectsUsingBlock:v3];
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

- (id)_findWindowWithID:(double)a3
{
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x1E69C98F0]));
  v6 = [WeakRetained sfWebExtensionsController:self windowWithID:a3];

  return v6;
}

- (id)_allWindowsForWebExtension:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x1E69C98F0]));
  v6 = [WeakRetained sfWebExtensionsControllerAllWindows:self];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__SFWebExtensionsController__allWindowsForWebExtension___block_invoke;
  v10[3] = &unk_1E721D118;
  v7 = v4;
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

- (void)_clearNewTabPreferenceIfNecessaryForRemovedExtensionWithComposedIdentifier:(id)a3
{
  v9 = a3;
  v4 = [objc_opt_class() _extensionDefaults];
  v5 = [(WBSWebExtensionsController *)self tabOverridePreferencesManager];
  v6 = [v5 extensionComposedIdentifierForNewTabPreferenceInDefaults:v4];
  v7 = [v6 isEqualToString:v9];

  if (v7)
  {
    v8 = [(WBSWebExtensionsController *)self tabOverridePreferencesManager];
    [v8 clearNewTabBehaviorInDefaults:v4 fromUserGesture:0];
  }
}

- (void)_showAccessRequestAlertForExtension:(id)a3 domains:(id)a4 callingAPIName:(id)a5 responseBlock:(id)a6
{
  v10 = a6;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __102__SFWebExtensionsController__showAccessRequestAlertForExtension_domains_callingAPIName_responseBlock___block_invoke;
  v12[3] = &unk_1E721D140;
  v13 = v10;
  v11 = v10;
  [(SFWebExtensionsController *)self showAccessRequestDialogForExtension:a3 domains:a4 callingAPIName:a5 showMoreOptionsForAlwaysAllow:0 includeDenyButton:1 responseBlock:v12];
}

- (id)_safariShortVersion
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 safari_shortVersion];

  return v3;
}

- (void)setProcessPool:(id)a3
{
  v5 = a3;
  v6 = v5;
  processPool = self->_processPool;
  if (v5)
  {
    if (processPool != v5)
    {
      objc_storeStrong(&self->_processPool, a3);
      objc_initWeak(&location, self);
      v8 = [objc_opt_class() _extensionDefaults];
      v9 = *MEMORY[0x1E69C91D0];
      v10 = MEMORY[0x1E69E96A0];
      v11 = MEMORY[0x1E69E96A0];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __44__SFWebExtensionsController_setProcessPool___block_invoke;
      v15[3] = &unk_1E721D168;
      objc_copyWeak(&v16, &location);
      v12 = [v8 safari_observeValueForKey:v9 onQueue:v10 notifyForInitialValue:1 handler:v15];
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
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  v4 = [v3 keyWindow];
  WeakRetained = [v4 rootViewController];

  if (WeakRetained)
  {
    while (1)
    {
      v6 = [WeakRetained presentedViewController];
      if (!v6)
      {
        break;
      }

      v7 = [WeakRetained presentedViewController];
      v8 = [v7 isBeingDismissed];

      if (v8)
      {
        break;
      }

      v9 = [WeakRetained presentedViewController];

      WeakRetained = v9;
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_viewControllerToPresentDialogsFrom);
  }

  return WeakRetained;
}

- (void)setViewControllerToPresentDialogsFrom:(id)a3
{
  objc_storeWeak(&self->_viewControllerToPresentDialogsFrom, a3);

  [(SFWebExtensionsController *)self cancelPresentedDialogIfNecessaryAndUnqueuePendingWebExtensionDialogs];
}

- (BOOL)parentalControlsAreEnabledForExtensions
{
  v2 = [MEMORY[0x1E69E20E8] sharedWebFilterSettings];
  if ([v2 isWebFilterEnabled])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 usesAllowedSitesOnly];
  }

  return v3;
}

+ (void)_didDiscoverExtensions:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695E000] safari_browserDefaults];
  [v4 setBool:v3 forKey:*MEMORY[0x1E69C9328]];
}

- (id)_deviceUUIDString
{
  v2 = +[SFDeviceUtilities deviceUUID];
  v3 = [v2 UUIDString];

  return v3;
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
  v3 = [(WBSExtensionsController *)self profileServerID];
  v4 = [(SFWebExtensionsController *)self tabGroupManager];
  v5 = [v4 profiles];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __36__SFWebExtensionsController_profile__block_invoke;
  v9[3] = &unk_1E721D190;
  v6 = v3;
  v10 = v6;
  v7 = [v5 safari_firstObjectPassingTest:v9];

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
  v2 = [(SFWebExtensionsController *)self tabGroupManager];
  v3 = [v2 namedProfiles];
  v4 = [v3 count] != 0;

  return v4;
}

- (id)webExtensionsControllerForProfileServerID:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profileDelegate);
  if (objc_opt_respondsToSelector())
  {
    v6 = [WeakRetained sfWebExtensionsController:self forProfileServerID:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)contentBlockerManagerForProfileServerID:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profileDelegate);
  if (objc_opt_respondsToSelector())
  {
    v6 = [WeakRetained sfWebExtensionsControllerContentBlockerManager:self forProfileServerID:v4];
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
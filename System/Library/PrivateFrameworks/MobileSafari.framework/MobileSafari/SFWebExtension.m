@interface SFWebExtension
- (BOOL)_canShowBanner;
- (BOOL)canLoadWithErrorString:(id *)a3;
- (BOOL)isDevelopmentBuild;
- (NSArray)menuElements;
- (WKWebViewConfiguration)extensionWebViewConfiguration;
- (id)_discoverabilityTitleForCommand:(id)a3;
- (id)_lastInteractionDate;
- (id)_updateLastInteractionDate;
- (void)_hidePermissionBanner;
- (void)_showAccessRequestDialogForPendingRequestsAndAdditionalURLs:(id)a3 additionalCallingAPIName:(id)a4 performingUserGestureInTab:(id)a5 completionHandler:(id)a6;
- (void)permissionRequestBannerWasDismissed;
- (void)promptForAccessToURLs:(id)a3 inTab:(id)a4 completionHandler:(id)a5;
- (void)requestPermissionsFromToolbarItemInTab:(id)a3 completionHandler:(id)a4;
- (void)showAlertForPendingPermissionRequests;
- (void)showOrHidePermissionRequestBannerIfNeeded;
- (void)userGesturePerformedInTab:(id)a3;
@end

@implementation SFWebExtension

- (WKWebViewConfiguration)extensionWebViewConfiguration
{
  v2 = [(WBSWebExtensionData *)self webKitContext];
  v3 = [v2 webViewConfiguration];

  return v3;
}

- (void)promptForAccessToURLs:(id)a3 inTab:(id)a4 completionHandler:(id)a5
{
  v54[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  if (self->_isAccessRequestDialogPresentedOrScheduled)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __64__SFWebExtension_promptForAccessToURLs_inTab_completionHandler___block_invoke;
    aBlock[3] = &unk_1E721E238;
    objc_copyWeak(&v52, &location);
    v49 = v8;
    v50 = v9;
    v51 = v10;
    v11 = _Block_copy(aBlock);
    accessRequestDialogCompletionHandlers = self->_accessRequestDialogCompletionHandlers;
    v13 = _Block_copy(v11);
    v14 = [(NSArray *)accessRequestDialogCompletionHandlers arrayByAddingObject:v13];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
      v17 = self->_accessRequestDialogCompletionHandlers;
      self->_accessRequestDialogCompletionHandlers = v16;
    }

    else
    {
      v17 = _Block_copy(v11);
      v54[0] = v17;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
      v21 = self->_accessRequestDialogCompletionHandlers;
      self->_accessRequestDialogCompletionHandlers = v20;
    }

    objc_destroyWeak(&v52);
  }

  else if ([v8 count])
  {
    v18 = [(WBSSafariExtension *)self extensionsController];
    if ([v18 parentalControlsAreEnabledForExtensions])
    {
      v19 = [MEMORY[0x1E695DFD8] set];
      (*(v10 + 2))(v10, v19, 0);
    }

    else
    {
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __64__SFWebExtension_promptForAccessToURLs_inTab_completionHandler___block_invoke_2;
      v44[3] = &unk_1E721E288;
      v45 = v8;
      v46 = self;
      v47 = v9;
      v22 = _Block_copy(v44);
      v23 = [(WBSWebExtensionData *)self toolbarItem];
      v24 = [v23 showingExtensionPopup];

      if (v24)
      {
        v25 = v22[2](v22);
        if ([v25 count])
        {
          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 3221225472;
          v38[2] = __64__SFWebExtension_promptForAccessToURLs_inTab_completionHandler___block_invoke_6;
          v38[3] = &unk_1E721BA70;
          v39 = v10;
          [(SFWebExtension *)self _showAccessRequestDialogForPendingRequestsAndAdditionalURLs:v25 additionalCallingAPIName:0 performingUserGestureInTab:0 completionHandler:v38];
          v26 = v39;
        }

        else
        {
          v26 = [MEMORY[0x1E695DFD8] set];
          (*(v10 + 2))(v10, v26, 0);
        }
      }

      else
      {
        v27 = [(WBSWebExtensionData *)self hasPendingWebsiteRequests];
        v25 = v22[2](v22);
        if (([v25 count] != 0 || v27) && (+[WBSWebExtensionsController pendingSiteAccessTimeoutInterval](SFWebExtensionsController, "pendingSiteAccessTimeoutInterval"), v29 = v28, v28 > 0.0 || v27))
        {
          v30 = dispatch_time(0, ((v28 + 1.0) * 1000000000.0));
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __64__SFWebExtension_promptForAccessToURLs_inTab_completionHandler___block_invoke_4;
          block[3] = &unk_1E721BF08;
          objc_copyWeak(&v43, &location);
          dispatch_after(v30, MEMORY[0x1E69E96A0], block);
          v31 = objc_alloc_init(MEMORY[0x1E69C98D8]);
          v32 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:v29];
          [v31 setExpirationDate:v32];

          [v31 setUrls:v25];
          v40[0] = MEMORY[0x1E69E9820];
          v40[1] = 3221225472;
          v40[2] = __64__SFWebExtension_promptForAccessToURLs_inTab_completionHandler___block_invoke_5;
          v40[3] = &unk_1E721D338;
          v41 = v10;
          [v31 setCompletionHandler:v40];
          v33 = *MEMORY[0x1E69C9910];
          v34 = *(&self->super.super.super.isa + v33);
          if (!v34)
          {
            v35 = [MEMORY[0x1E695DF70] array];
            v36 = *(&self->super.super.super.isa + v33);
            *(&self->super.super.super.isa + v33) = v35;

            v34 = *(&self->super.super.super.isa + v33);
          }

          [v34 addObject:v31];
          [(WBSWebExtensionData *)self _validateToolbarItemInAllWindows];

          objc_destroyWeak(&v43);
        }

        else
        {
          v37 = [MEMORY[0x1E695DFD8] set];
          (*(v10 + 2))(v10, v37, 0);
        }
      }

      v19 = v45;
    }
  }

  else
  {
    (*(v10 + 2))(v10, v8, 0);
  }

  objc_destroyWeak(&location);
}

void __64__SFWebExtension_promptForAccessToURLs_inTab_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained promptForAccessToURLs:*(a1 + 32) inTab:*(a1 + 40) completionHandler:*(a1 + 48)];
    WeakRetained = v3;
  }
}

id __64__SFWebExtension_promptForAccessToURLs_inTab_completionHandler___block_invoke_2(void *a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__SFWebExtension_promptForAccessToURLs_inTab_completionHandler___block_invoke_3;
  v5[3] = &unk_1E721E260;
  v1 = a1[4];
  v2 = a1[6];
  v5[4] = a1[5];
  v6 = v2;
  v3 = [v1 safari_mapAndFilterObjectsUsingBlock:v5];

  return v3;
}

id __64__SFWebExtension_promptForAccessToURLs_inTab_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) webKitContext];
  v5 = [v4 permissionStatusForURL:v3 inTab:*(a1 + 40)];

  if (v5 == 1 || v5 == -1)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __64__SFWebExtension_promptForAccessToURLs_inTab_completionHandler___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained dispatchExpiredPendingWebsiteRequests];
    WeakRetained = v2;
  }
}

void __64__SFWebExtension_promptForAccessToURLs_inTab_completionHandler___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E695DFD8] set];
  (*(v1 + 16))(v1, v2, 0);
}

void __64__SFWebExtension_promptForAccessToURLs_inTab_completionHandler___block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E695DFD8] set];
  (*(v1 + 16))(v1, v2, 0);
}

- (void)_showAccessRequestDialogForPendingRequestsAndAdditionalURLs:(id)a3 additionalCallingAPIName:(id)a4 performingUserGestureInTab:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(WBSWebExtensionData *)self urlsPendingApproval];
  v38 = [v14 count];
  v40 = v38 != 0;
  v44 = v14;
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = [MEMORY[0x1E695DFD8] set];
  }

  v16 = v15;
  if (v10)
  {
    v17 = [v15 setByAddingObjectsFromSet:v10];

    v16 = v17;
  }

  v43 = [v16 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_41];
  self->_isAccessRequestDialogPresentedOrScheduled = 1;
  v18 = [(WBSWebExtensionData *)self apiNamesPendingApproval];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = [MEMORY[0x1E695DFD8] set];
  }

  v21 = v20;

  if (v11)
  {
    v22 = [v21 setByAddingObject:v11];

    v21 = v22;
  }

  v23 = [v21 allObjects];
  v24 = [v23 componentsJoinedByString:{@", "}];

  v25 = [(WBSWebExtensionData *)self hasMoreThanOneRequestedOriginNotAlreadyConfigured];
  v26 = [(WBSSafariExtension *)self extensionsController];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __148__SFWebExtension__showAccessRequestDialogForPendingRequestsAndAdditionalURLs_additionalCallingAPIName_performingUserGestureInTab_completionHandler___block_invoke_2;
  aBlock[3] = &unk_1E721E2F0;
  v27 = v12;
  v53 = v27;
  v54 = self;
  v41 = v16;
  v55 = v41;
  v42 = v13;
  v56 = v42;
  v28 = _Block_copy(aBlock);
  if ([v26 parentalControlsAreEnabledForExtensions])
  {
    v28[2](v28, 3, 0);
    v29 = v43;
  }

  else
  {
    v37 = v38 != 0;
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __148__SFWebExtension__showAccessRequestDialogForPendingRequestsAndAdditionalURLs_additionalCallingAPIName_performingUserGestureInTab_completionHandler___block_invoke_4;
    v45[3] = &unk_1E721E318;
    v50 = v25;
    v30 = v26;
    v39 = v21;
    v31 = v26;
    v32 = v27;
    v33 = v11;
    v34 = v30;
    v46 = v30;
    v47 = self;
    v36 = v25;
    v29 = v43;
    v48 = v43;
    v51 = v40;
    v49 = v28;
    v35 = v34;
    v11 = v33;
    v27 = v32;
    v26 = v31;
    v21 = v39;
    [v35 showAccessRequestDialogForExtension:self domains:v48 callingAPIName:v24 showMoreOptionsForAlwaysAllow:v36 includeDenyButton:v37 responseBlock:v45];
  }
}

id __148__SFWebExtension__showAccessRequestDialogForPendingRequestsAndAdditionalURLs_additionalCallingAPIName_performingUserGestureInTab_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 host];
  v3 = [v2 safari_stringByRemovingWwwAndWildcardDotPrefixes];

  return v3;
}

void __148__SFWebExtension__showAccessRequestDialogForPendingRequestsAndAdditionalURLs_additionalCallingAPIName_performingUserGestureInTab_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  v42 = *MEMORY[0x1E69E9840];
  if ((a2 - 4) <= 0xFFFFFFFFFFFFFFFDLL && *(a1 + 32) != 0)
  {
    [*(a1 + 40) userGesturePerformedInTab:?];
  }

  if (a3)
  {
    if ([*(a1 + 40) requestsAccessToAllHosts])
    {
      [MEMORY[0x1E69C98D0] allHostsAndSchemesMatchPatternSet];
    }

    else
    {
      [*(a1 + 40) requestedPermissionOriginsNotAlreadyConfigured];
    }
    v7 = ;
  }

  else
  {
    v7 = [*(a1 + 48) safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_17];
  }

  v31 = v7;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = [*(a1 + 40) extensionsController];
  v9 = [v8 allProfileExtensionsControllers];

  v10 = [v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (!v10)
  {
    v12 = 0;
    goto LABEL_29;
  }

  v11 = v10;
  v12 = 0;
  v13 = *v37;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v37 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v36 + 1) + 8 * i);
      v16 = [*(a1 + 40) extension];
      v17 = [v15 webExtensionForExtension:v16];

      [v15 loadPermissionsIfNecessaryForExtension:v17];
      if (a2 == 2)
      {
        v18 = [MEMORY[0x1E695DFD8] set];
        v21 = [MEMORY[0x1E695DF00] distantFuture];
        [v17 revokePermissions:v18 origins:v31 expirationDate:v21];
      }

      else
      {
        if (a2 == 1)
        {
          v18 = [MEMORY[0x1E695DFD8] set];
          v20 = MEMORY[0x1E695DF00];
          +[(WBSExtensionsController *)SFWebExtensionsController];
          v19 = [v20 dateWithTimeIntervalSinceNow:?];
        }

        else
        {
          if (a2)
          {
            goto LABEL_25;
          }

          v18 = [MEMORY[0x1E695DFD8] set];
          v19 = [MEMORY[0x1E695DF00] distantFuture];
        }

        v21 = v19;
        [v17 grantPermissions:v18 origins:v31 expirationDate:v19];
        v12 = 1;
      }

LABEL_25:
    }

    v11 = [v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
  }

  while (v11);
LABEL_29:

  [*(a1 + 40) dispatchAllPendingWebsiteRequests];
  v22 = *(a1 + 56);
  if (v22)
  {
    (*(v22 + 16))(v22, v12 & 1);
  }

  *(*(a1 + 40) + 240) = 0;
  v23 = *(*(a1 + 40) + 232);
  v24 = *(a1 + 40);
  v25 = *(v24 + 232);
  *(v24 + 232) = 0;

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v26 = v23;
  v27 = [v26 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v33;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v33 != v29)
        {
          objc_enumerationMutation(v26);
        }

        (*(*(*(&v32 + 1) + 8 * j) + 16))();
      }

      v28 = [v26 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v28);
  }
}

id __148__SFWebExtension__showAccessRequestDialogForPendingRequestsAndAdditionalURLs_additionalCallingAPIName_performingUserGestureInTab_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69C98D0];
  v3 = [a2 host];
  v4 = [v3 safari_stringByRemovingWwwDotPrefix];
  v5 = [v2 matchPatternForDomain:v4];

  return v5;
}

uint64_t __148__SFWebExtension__showAccessRequestDialogForPendingRequestsAndAdditionalURLs_additionalCallingAPIName_performingUserGestureInTab_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  if (a2 || *(a1 + 64) != 1)
  {
    return (*(*(a1 + 56) + 16))();
  }

  else
  {
    return [*(a1 + 32) showAlwaysAllowConfirmationDialogForExtension:*(a1 + 40) domains:*(a1 + 48) includeDenyButton:*(a1 + 65) responseBlock:*(a1 + 56)];
  }
}

- (id)_updateLastInteractionDate
{
  v3 = [(WBSSafariExtension *)self extensionsController];
  v4 = *MEMORY[0x1E69C9908];
  v5 = [v3 _extensionStateForExtension:*(&self->super.super.super.isa + v4)];
  v6 = [v5 mutableCopy];

  v7 = [MEMORY[0x1E695DF00] now];
  [v6 setObject:v7 forKeyedSubscript:@"LastInteractionDate"];
  [v3 _setExtensionState:v6 forExtension:*(&self->super.super.super.isa + v4)];

  return v7;
}

- (id)_lastInteractionDate
{
  v3 = [(WBSSafariExtension *)self extensionsController];
  v4 = [v3 _extensionStateForExtension:*(&self->super.super.super.isa + *MEMORY[0x1E69C9908])];
  v5 = [v4 safari_dateForKey:@"LastInteractionDate"];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = [(SFWebExtension *)self _updateLastInteractionDate];
  }

  v7 = v6;

  return v7;
}

- (void)_hidePermissionBanner
{
  if (self->_isBannerShownOrScheduled)
  {
    v3 = [(WBSSafariExtension *)self extensionsController];
    [v3 hidePermissionBannerForExtension:self];

    self->_isBannerShownOrScheduled = 0;
  }
}

- (BOOL)_canShowBanner
{
  v2 = [(SFWebExtension *)self _lastInteractionDate];
  v3 = [v2 dateByAddingTimeInterval:480.0];
  v4 = [MEMORY[0x1E695DF00] now];
  [v4 timeIntervalSinceDate:v3];
  v6 = v5 < 0.0;

  return v6;
}

- (void)showOrHidePermissionRequestBannerIfNeeded
{
  v3 = [(WBSSafariExtension *)self extensionsController];
  if ([(WBSWebExtensionData *)self hasPendingWebsiteRequests]&& [(SFWebExtension *)self _canShowBanner])
  {
    if (!self->_isBannerShownOrScheduled)
    {
      [v3 showPermissionBannerForExtension:self];
      self->_isBannerShownOrScheduled = 1;
    }
  }

  else if (self->_isBannerShownOrScheduled)
  {
    [v3 hidePermissionBannerForExtension:self];
    self->_isBannerShownOrScheduled = 0;
  }
}

- (void)permissionRequestBannerWasDismissed
{
  v3 = [(WBSSafariExtension *)self extensionsController];
  [(WBSWebExtensionData *)self dispatchAllPendingWebsiteRequests];
}

- (void)showAlertForPendingPermissionRequests
{
  v3 = [(WBSSafariExtension *)self extensionsController];
  [(SFWebExtension *)self _showAccessRequestDialogForPendingRequestsAndAdditionalURLs:0 additionalCallingAPIName:0 performingUserGestureInTab:0 completionHandler:0];
}

- (void)requestPermissionsFromToolbarItemInTab:(id)a3 completionHandler:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(WBSWebExtensionData *)self toolbarItem];
  v8 = [v7 shouldRequestAccessForTab:v13];

  if (v8)
  {
    v9 = MEMORY[0x1E695DFD8];
    v10 = [v13 urlForExtensions];
    v11 = [v9 setWithObject:v10];

    v12 = @"action";
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  [(SFWebExtension *)self _showAccessRequestDialogForPendingRequestsAndAdditionalURLs:v11 additionalCallingAPIName:v12 performingUserGestureInTab:v13 completionHandler:v6];
}

- (BOOL)canLoadWithErrorString:(id *)a3
{
  if ([(WBSWebExtensionData *)self backgroundPageIsPersistent])
  {
    v5 = [(WBSWebExtensionData *)self manifestErrors];
    v6 = v5;
    if (a3)
    {
      if ([v5 count])
      {
        v7 = [v6 firstObject];
        *a3 = [v7 localizedDescription];
      }
    }

    return 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SFWebExtension;
    return [(WBSWebExtensionData *)&v9 canLoadWithErrorString:a3];
  }
}

- (void)userGesturePerformedInTab:(id)a3
{
  v6.receiver = self;
  v6.super_class = SFWebExtension;
  [(WBSWebExtensionData *)&v6 userGesturePerformedInTab:a3];
  v4 = [(SFWebExtension *)self _updateLastInteractionDate];
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:*MEMORY[0x1E69C9A38] object:self];
}

- (BOOL)isDevelopmentBuild
{
  v2 = [*(&self->super.super.super.isa + *MEMORY[0x1E69C9908]) _plugIn];
  v3 = [v2 entitlements];
  v4 = [v3 safari_BOOLForKey:@"get-task-allow"];

  return v4;
}

- (id)_discoverabilityTitleForCommand:(id)a3
{
  v4 = a3;
  v5 = [v4 commandDescription];
  v6 = [v5 length];

  if (v6)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = [v4 commandDescription];
    v9 = [(WBSWebExtensionData *)self displayShortName];
    v10 = [v7 stringWithFormat:@"%@ — %@", v8, v9];
  }

  else
  {
    v10 = [(WBSWebExtensionData *)self displayShortName];
  }

  return v10;
}

- (NSArray)menuElements
{
  v3 = [(WBSWebExtensionData *)self commands];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__SFWebExtension_menuElements__block_invoke;
  v6[3] = &unk_1E721E340;
  v6[4] = self;
  v4 = [v3 safari_mapObjectsUsingBlock:v6];

  return v4;
}

id __30__SFWebExtension_menuElements__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 keyCommand];
  if (v4)
  {
    v5 = [*(a1 + 32) _discoverabilityTitleForCommand:v3];

    [v4 setDiscoverabilityTitle:v5];
    v6 = v4;
  }

  else
  {
    v7 = [v3 webKitCommand];

    v6 = [v7 menuItem];
  }

  return v6;
}

@end
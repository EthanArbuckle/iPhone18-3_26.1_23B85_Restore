@interface MUPlaceEnrichmentActionManager
- (MUExternalActionHandling)externalActionHandler;
- (MUPlaceCallToActionSectionControllerDelegate)callToActionDelegate;
- (MUPlaceEnrichmentActionManager)initWithPlaceActionManager:(id)a3 mapItem:(id)a4 dataAvailability:(id)a5 amsResultProvider:(id)a6 callToActionDelegate:(id)a7 contextMenuDelegate:(id)a8 externalActionHandler:(id)a9 analyticsDelegate:(id)a10 onActionUpdate:(id)a11;
- (MUPlaceEnrichmentSectionAnalyticsDelegate)analyticsDelegate;
- (MUPlaceEnrichmentSectionContextMenuDelegate)contextMenuDelegate;
- (id)adamIDForAppCategory:(id)a3;
- (id)supportedPlaceEnrichmentActions;
- (void)addExternalActionsAsSupportedActions:(id)a3;
- (void)addPhotoAction:(id)a3;
- (void)configureWithEnrichmentDataProvider:(id)a3 presentationOptions:(id)a4;
- (void)contextMenuAction:(id)a3;
- (void)directionsAction:(id)a3;
- (void)getAppAction:(id)a3;
- (void)layoutActionsUsingArguments:(id)a3 completion:(id)a4;
- (void)performActionUsingArguments:(id)a3 contextMenu:(id)a4 completion:(id)a5;
- (void)ratePlaceAction:(id)a3;
@end

@implementation MUPlaceEnrichmentActionManager

- (MUPlaceEnrichmentSectionAnalyticsDelegate)analyticsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);

  return WeakRetained;
}

- (MUExternalActionHandling)externalActionHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_externalActionHandler);

  return WeakRetained;
}

- (MUPlaceEnrichmentSectionContextMenuDelegate)contextMenuDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contextMenuDelegate);

  return WeakRetained;
}

- (MUPlaceCallToActionSectionControllerDelegate)callToActionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_callToActionDelegate);

  return WeakRetained;
}

- (void)addExternalActionsAsSupportedActions:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MUPlaceEnrichmentActionManager *)self mapItem];
  v6 = [v5 _externalActionLinks];

  v7 = [(MUPlaceEnrichmentActionManager *)self enrichmentDataProvider];
  v8 = [v7 placeEnrichmentData];
  v9 = [v8 enrichmentEntities];
  v10 = [v9 firstObject];
  v11 = [v10 appAdamIds];

  v12 = [v11 count];
  v13 = MEMORY[0x1E696AE18];
  if (v12)
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __71__MUPlaceEnrichmentActionManager_addExternalActionsAsSupportedActions___block_invoke;
    v32[3] = &unk_1E8219EB0;
    v14 = v11;
    v33 = v14;
    v15 = [v13 predicateWithBlock:v32];
    v16 = [v6 filteredArrayUsingPredicate:v15];

    v17 = MUGetMUPlaceEnrichmentActionManagerLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v35 = v16;
      v36 = 2112;
      v37 = v14;
      _os_log_impl(&dword_1C5620000, v17, OS_LOG_TYPE_INFO, "Filtered showcase external actions are: %@. Showcase app adamIDs: %@", buf, 0x16u);
    }

    v18 = v33;
  }

  else
  {
    v19 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_18731];
    v16 = [v6 filteredArrayUsingPredicate:v19];

    v18 = MUGetMUPlaceEnrichmentActionManagerLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v35 = v16;
      _os_log_impl(&dword_1C5620000, v18, OS_LOG_TYPE_INFO, "Showcase external are: %@. These actions contain providers with no app adam id which is expected because these are not backed by an app store app.", buf, 0xCu);
    }
  }

  if ([v16 count] || (-[MUPlaceEnrichmentActionManager onActionUpdate](self, "onActionUpdate"), v23 = objc_claimAutoreleasedReturnValue(), v23, !v23))
  {
    v20 = dispatch_group_create();
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __71__MUPlaceEnrichmentActionManager_addExternalActionsAsSupportedActions___block_invoke_33;
    v28[3] = &unk_1E8219F20;
    v29 = v20;
    v30 = v4;
    v31 = self;
    v21 = v20;
    [v16 enumerateObjectsUsingBlock:v28];
    objc_initWeak(buf, self);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __71__MUPlaceEnrichmentActionManager_addExternalActionsAsSupportedActions___block_invoke_38;
    v26[3] = &unk_1E8219F48;
    objc_copyWeak(&v27, buf);
    v26[4] = self;
    dispatch_group_notify(v21, MEMORY[0x1E69E96A0], v26);
    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);

    v22 = v29;
  }

  else
  {
    v24 = MUGetMUPlaceEnrichmentActionManagerLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5620000, v24, OS_LOG_TYPE_INFO, "Showcase external actions are not applicable as no adam ids were found.", buf, 2u);
    }

    v21 = [(MUPlaceEnrichmentActionManager *)self onActionUpdate];
    v22 = [(MUPlaceEnrichmentActionManager *)self supportedActions];
    (v21[2].isa)(v21, v22);
  }

  v25 = *MEMORY[0x1E69E9840];
}

uint64_t __71__MUPlaceEnrichmentActionManager_addExternalActionsAsSupportedActions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 appAdamIds];
  v4 = [MEMORY[0x1E695DFD8] setWithArray:*(a1 + 32)];
  v5 = [v3 intersectsSet:v4];

  return v5;
}

void __71__MUPlaceEnrichmentActionManager_addExternalActionsAsSupportedActions___block_invoke_33(uint64_t a1, void *a2, void *a3)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  dispatch_group_enter(*(a1 + 32));
  v6 = [v5 categoryId];

  if (v6)
  {
    v7 = [MUPlaceEnrichmentAction alloc];
    v27 = @"appCategory";
    v8 = [v5 categoryId];
    v28[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v10 = [(MUPlaceEnrichmentAction *)v7 initWithActionType:12 isValidated:0 mkActionType:0 metadata:v9];

    [*(a1 + 40) addObject:v10];
    v11 = [MUGroupedExternalActionController alloc];
    v12 = [*(a1 + 48) amsResultProvider];
    v13 = [*(a1 + 48) externalActionHandler];
    v14 = [*(a1 + 48) analyticsDelegate];
    v15 = [(MUGroupedExternalActionController *)v11 initWithGroupedExternalAction:v5 amsResultProvider:v12 supportsMultipleVendorSelection:0 actionHandler:v13 analyticsHandler:v14];

    [(MUGroupedExternalActionController *)v15 setSingleVendorAnalyticsTarget:201];
    [(MUGroupedExternalActionController *)v15 setMultipleVendorAnalyticsTarget:201];
    [(MUGroupedExternalActionController *)v15 setAnalyticsModuleType:5];
    [(MUGroupedExternalActionController *)v15 setSource:11];
    v16 = [*(a1 + 48) externalActionsControllers];
    [v16 addObject:v15];

    objc_initWeak(&location, *(a1 + 48));
    v17 = [*(a1 + 48) externalActionsControllers];
    v18 = [v17 objectAtIndex:a3];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __71__MUPlaceEnrichmentActionManager_addExternalActionsAsSupportedActions___block_invoke_2;
    v21[3] = &unk_1E8219EF8;
    objc_copyWeak(v25, &location);
    v25[1] = a3;
    v22 = v5;
    v19 = v10;
    v23 = v19;
    v24 = *(a1 + 32);
    [v18 fetchProviderLockupsWithCompletion:v21];

    objc_destroyWeak(v25);
    objc_destroyWeak(&location);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __71__MUPlaceEnrichmentActionManager_addExternalActionsAsSupportedActions___block_invoke_38(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = MUGetMUPlaceEnrichmentActionManagerLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = [WeakRetained externalActionsPairs];
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_1C5620000, v3, OS_LOG_TYPE_DEBUG, "Fetched view models for all actions: %@", &v10, 0xCu);
    }

    v5 = [*(a1 + 32) onActionUpdate];

    if (v5)
    {
      v6 = MUGetMUPlaceEnrichmentActionManagerLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_1C5620000, v6, OS_LOG_TYPE_INFO, "Informing Enrichment section controller about external extensions validation.", &v10, 2u);
      }

      v7 = [*(a1 + 32) onActionUpdate];
      v8 = [*(a1 + 32) supportedActions];
      (v7)[2](v7, v8);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __71__MUPlaceEnrichmentActionManager_addExternalActionsAsSupportedActions___block_invoke_2(uint64_t a1, void *a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if ([v3 count])
    {
      v5 = [MUExternalActionPair alloc];
      v6 = [WeakRetained externalActionsControllers];
      v7 = [v6 objectAtIndex:*(a1 + 64)];
      v8 = [(MUExternalActionPair *)v5 initWithAction:v3 actionController:v7];

      v9 = [WeakRetained externalActionsPairs];
      v10 = [*(a1 + 32) categoryId];
      [v9 setObject:v8 forKey:v10];

      v11 = [WeakRetained supportedActions];
      [v11 removeObject:*(a1 + 40)];

      v12 = [MUPlaceEnrichmentAction alloc];
      v20 = @"appCategory";
      v13 = [*(a1 + 32) categoryId];
      v21[0] = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v15 = [(MUPlaceEnrichmentAction *)v12 initWithActionType:12 isValidated:1 mkActionType:0 metadata:v14];

      v16 = [WeakRetained supportedActions];
      [v16 addObject:v15];
    }

    else
    {
      v8 = MUGetMUPlaceEnrichmentActionManagerLog();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
LABEL_7:

        dispatch_group_leave(*(a1 + 48));
        goto LABEL_8;
      }

      v15 = [*(a1 + 32) actionName];
      v18 = 138412290;
      v19 = v15;
      _os_log_impl(&dword_1C5620000, v8, OS_LOG_TYPE_ERROR, "Unable to fetch lockups for action: %@", &v18, 0xCu);
    }

    goto LABEL_7;
  }

LABEL_8:

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t __71__MUPlaceEnrichmentActionManager_addExternalActionsAsSupportedActions___block_invoke_32(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [a2 actionProviders];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v10 + 1) + 8 * i) appAdamId];
        v7 = [v6 length];

        if (!v7)
        {
          v3 = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)contextMenuAction:(id)a3
{
  v3 = a3;
  v4 = [[MUPlaceEnrichmentAction alloc] initWithActionType:13 isValidated:1 mkActionType:0];
  [v3 addObject:v4];
}

- (void)getAppAction:(id)a3
{
  v7 = a3;
  v4 = [(MUPlaceEnrichmentActionManager *)self dataAvailability];
  v5 = [v4 suportsOfficialApp];

  if (v5)
  {
    v6 = [[MUPlaceEnrichmentAction alloc] initWithActionType:14 isValidated:1 mkActionType:26];
    [v7 addObject:v6];
  }
}

- (void)addPhotoAction:(id)a3
{
  v7 = a3;
  v4 = MEMORY[0x1E696F2E8];
  v5 = [(MUPlaceEnrichmentActionManager *)self mapItem];
  LODWORD(v4) = [v4 shouldShowPhotosCallToActionForMapItem:v5];

  if (v4)
  {
    v6 = [[MUPlaceEnrichmentAction alloc] initWithActionType:8 isValidated:1 mkActionType:9];
    [v7 addObject:v6];
  }
}

- (void)ratePlaceAction:(id)a3
{
  v7 = a3;
  v4 = MEMORY[0x1E696F2E8];
  v5 = [(MUPlaceEnrichmentActionManager *)self mapItem];
  LODWORD(v4) = [v4 shouldShowRatingsCallToActionForMapItem:v5];

  if (v4)
  {
    v6 = [[MUPlaceEnrichmentAction alloc] initWithActionType:7 isValidated:1 mkActionType:0];
    [v7 addObject:v6];
  }
}

- (void)directionsAction:(id)a3
{
  v7 = a3;
  v4 = [(MUPlaceEnrichmentActionManager *)self dataAvailability];
  v5 = [v4 canShowDirections];

  if (v5)
  {
    v6 = [[MUPlaceEnrichmentAction alloc] initWithActionType:1 isValidated:1 mkActionType:30];
    [v7 addObject:v6];
  }
}

- (void)layoutActionsUsingArguments:(id)a3 completion:(id)a4
{
  v46[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = v8;
  if (v8)
  {
    v10 = [v8 firstObject];
    v11 = [v10 objectForKeyedSubscript:@"actionType"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v13 = MUGetMUPlaceEnrichmentActionManagerLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v38 = v9;
        _os_log_impl(&dword_1C5620000, v13, OS_LOG_TYPE_ERROR, "ERROR: Arguments is missing actionKey. Arguments: %@", buf, 0xCu);
      }

      goto LABEL_28;
    }

    v13 = [v10 objectForKeyedSubscript:@"actionType"];
    if (![v13 isEqualToString:@"MUPlaceEnrichmentActionManagerContextMenu"])
    {
      v17 = MUGetMUPlaceEnrichmentActionManagerLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v38 = v9;
        _os_log_impl(&dword_1C5620000, v17, OS_LOG_TYPE_ERROR, "ERROR: Trying it layout action that is not supported. Arguments: %@", buf, 0xCu);
      }

      goto LABEL_27;
    }

    v14 = [v10 objectForKeyedSubscript:@"isValidated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v10 objectForKeyedSubscript:@"isValidated"];
      v16 = v15 != 0;
    }

    else
    {
      v16 = 0;
    }

    v18 = [v10 objectForKeyedSubscript:@"boundingBox"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v10 objectForKeyedSubscript:@"boundingBox"];
      v20 = v19 != 0;
    }

    else
    {
      v20 = 0;
    }

    v21 = [v10 objectForKeyedSubscript:@"accessibilityLabel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v10 objectForKeyedSubscript:@"accessibilityLabel"];

      if (v16 && v20 && v22)
      {
        v17 = [v10 objectForKeyedSubscript:@"boundingBox"];
        v23 = [v10 objectForKeyedSubscript:@"accessibilityLabel"];
        v24 = [(MUPlaceEnrichmentActionManager *)self contextMenuDelegate];
        [v24 addContextMenuUsingBoundingBox:v17 accessibilityLabel:v23];

        v25 = [v10 objectForKeyedSubscript:@"subActions"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = [v10 objectForKeyedSubscript:@"subActions"];

          if (!v26)
          {
LABEL_23:

LABEL_27:
LABEL_28:

            goto LABEL_29;
          }

          v25 = [v10 objectForKeyedSubscript:@"subActions"];
          v27 = [MUPlaceEnrichmentAction alloc];
          v45 = @"subActions";
          v46[0] = v25;
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1];
          v29 = [(MUPlaceEnrichmentAction *)v27 initWithActionType:13 isValidated:1 mkActionType:0 metadata:v28];

          v30 = [(MUPlaceEnrichmentActionManager *)self contextMenuDelegate];
          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 3221225472;
          v35[2] = __73__MUPlaceEnrichmentActionManager_layoutActionsUsingArguments_completion___block_invoke;
          v35[3] = &unk_1E821A730;
          v36 = v7;
          [v30 didLayoutContextMenu:v29 completion:v35];
        }

        goto LABEL_23;
      }
    }

    else
    {
    }

    v17 = MUGetMUPlaceEnrichmentActionManagerLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v31 = NSStringFromBOOL();
      v32 = NSStringFromBOOL();
      v33 = NSStringFromBOOL();
      *buf = 138413058;
      v38 = v31;
      v39 = 2112;
      v40 = v32;
      v41 = 2112;
      v42 = v33;
      v43 = 2112;
      v44 = v9;
      _os_log_impl(&dword_1C5620000, v17, OS_LOG_TYPE_ERROR, "ERROR: layout action arguments are not correct. isValidated:%@, boundingBoxValid:%@, accessibilityLabelValid:%@, \nArguments: %@", buf, 0x2Au);
    }

    goto LABEL_27;
  }

  v10 = MUGetMUPlaceEnrichmentActionManagerLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v38 = 0;
    _os_log_impl(&dword_1C5620000, v10, OS_LOG_TYPE_ERROR, "ERROR: missing top level arguments for layoutActions callback: %@", buf, 0xCu);
  }

LABEL_29:

  v34 = *MEMORY[0x1E69E9840];
}

uint64_t __73__MUPlaceEnrichmentActionManager_layoutActionsUsingArguments_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)performActionUsingArguments:(id)a3 contextMenu:(id)a4 completion:(id)a5
{
  v134 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v91 = a4;
  v9 = a5;
  v10 = MUGetMUPlaceEnrichmentActionManagerLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_1C5620000, v10, OS_LOG_TYPE_DEBUG, "Performing action using arguments : %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v130 = 0x3032000000;
  v131 = __Block_byref_object_copy__18756;
  v132 = __Block_byref_object_dispose__18757;
  v133 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__MUPlaceEnrichmentActionManager_performActionUsingArguments_contextMenu_completion___block_invoke;
  aBlock[3] = &unk_1E8219D98;
  v11 = v9;
  v119 = v11;
  p_buf = &buf;
  v12 = _Block_copy(aBlock);
  v112 = 0;
  v113 = &v112;
  v114 = 0x3032000000;
  v115 = __Block_byref_object_copy__18756;
  v116 = __Block_byref_object_dispose__18757;
  v117 = 0;
  v13 = [(MUPlaceEnrichmentActionManager *)self sourceView];
  v14 = [v13 traitCollection];
  v15 = [v14 userInterfaceIdiom] == 0;

  v106[0] = MEMORY[0x1E69E9820];
  v106[1] = 3221225472;
  v106[2] = __85__MUPlaceEnrichmentActionManager_performActionUsingArguments_contextMenu_completion___block_invoke_9;
  v106[3] = &unk_1E8219DC0;
  v111 = v15;
  v16 = v8;
  v109 = &v112;
  v110 = 13;
  v107 = v16;
  v108 = self;
  v17 = _Block_copy(v106);
  v104[0] = MEMORY[0x1E69E9820];
  v104[1] = 3221225472;
  v104[2] = __85__MUPlaceEnrichmentActionManager_performActionUsingArguments_contextMenu_completion___block_invoke_14;
  v104[3] = &unk_1E8219E10;
  v105 = v15;
  v104[5] = &v112;
  v104[6] = 13;
  v104[4] = self;
  v18 = _Block_copy(v104);
  v19 = [(MUPlaceEnrichmentActionManager *)self supportedActions];
  v20 = [v19 count] == 0;

  if (v20)
  {
    v30 = MUGetMUPlaceEnrichmentActionManagerLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v124) = 0;
      _os_log_impl(&dword_1C5620000, v30, OS_LOG_TYPE_ERROR, "ERROR: Performing action as no supported actions.", &v124, 2u);
    }

    v12[2](v12, 0);
  }

  else
  {
    v21 = [v16 objectForKeyedSubscript:@"actionType"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v23 = [v16 objectForKeyedSubscript:@"actionType"];
      v24 = [(MUPlaceEnrichmentActionManager *)self supportedActions];
      v101[0] = MEMORY[0x1E69E9820];
      v101[1] = 3221225472;
      v101[2] = __85__MUPlaceEnrichmentActionManager_performActionUsingArguments_contextMenu_completion___block_invoke_17;
      v101[3] = &unk_1E8219E38;
      v90 = v23;
      v102 = v90;
      v103 = &buf;
      v25 = [v24 objectsPassingTest:v101];

      v26 = *(*(&buf + 1) + 40);
      if (!v26)
      {
        v28 = MUGetMUPlaceEnrichmentActionManagerLog();
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
LABEL_17:
          v31 = 0;
LABEL_18:

          v12[2](v12, v31);
          goto LABEL_27;
        }

        LODWORD(v124) = 138412290;
        *(&v124 + 4) = v16;
        v29 = "ERROR: Unsupported action invoked from Showcase %@";
LABEL_16:
        _os_log_impl(&dword_1C5620000, v28, OS_LOG_TYPE_ERROR, v29, &v124, 0xCu);
        goto LABEL_17;
      }

      v27 = [v26 actionType];
      if (v27 <= 6)
      {
        if ((v27 - 1) >= 6)
        {
          if (v27)
          {
LABEL_27:

            goto LABEL_28;
          }

          v28 = MUGetMUPlaceEnrichmentActionManagerLog();
          if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_17;
          }

          LODWORD(v124) = 138412290;
          *(&v124 + 4) = v16;
          v29 = "MUPlaceEnrichmentActionManagerUnknown action invoked from Showcase %@";
          goto LABEL_16;
        }

LABEL_21:
        v18[2](v18);
        v17[2](v17);
        v32 = [MEMORY[0x1E69A1B10] moduleFromModuleType:40];
        v33 = v113[5];
        if (v33)
        {
          v34 = v33;
        }

        else
        {
          v35 = [(MUPlaceEnrichmentActionManager *)self presentationOptions];
          v34 = [v35 sourceView];
        }

        if (v91)
        {
          v36 = v91;

          v34 = v36;
        }

        v37 = *MEMORY[0x1E696F118];
        v127[0] = *MEMORY[0x1E696F108];
        v127[1] = v37;
        v128[0] = v32;
        v128[1] = v34;
        v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v128 forKeys:v127 count:2];
        v39 = [MEMORY[0x1E696F308] actionItemWithType:{objc_msgSend(*(*(&buf + 1) + 40), "mkActionType")}];
        v40 = [(MUPlaceEnrichmentActionManager *)self placeActionManager];
        v99[0] = MEMORY[0x1E69E9820];
        v99[1] = 3221225472;
        v99[2] = __85__MUPlaceEnrichmentActionManager_performActionUsingArguments_contextMenu_completion___block_invoke_21;
        v99[3] = &unk_1E821B860;
        v100 = v12;
        [v40 performAction:v39 options:v38 completion:v99];

        goto LABEL_27;
      }

      if (v27 <= 8)
      {
        if (v27 == 7)
        {
          v47 = [(MUPlaceEnrichmentActionManager *)self callToActionDelegate];
          v48 = [(MUPlaceEnrichmentActionManager *)self presentationOptions];
          [v47 presentPOIEnrichmentWithPresentationOptions:v48];

          v28 = [(MUPlaceEnrichmentActionManager *)self analyticsDelegate];
          [v28 didTapRatePlace];
        }

        else
        {
          v18[2](v18);
          v17[2](v17);
          v42 = v113[5];
          if (v42)
          {
            v43 = v113[5];
          }

          else
          {
            v24 = [(MUPlaceEnrichmentActionManager *)self presentationOptions];
            v43 = [v24 sourceView];
          }

          v66 = [(MUPlaceEnrichmentActionManager *)self presentationOptions];
          [v66 setSourceView:v43];

          if (!v42)
          {
          }

          v67 = [(MUPlaceEnrichmentActionManager *)self callToActionDelegate];
          v68 = [(MUPlaceEnrichmentActionManager *)self presentationOptions];
          [v67 presentAddPhotosWithPresentationOptions:v68 entryPoint:0 originTarget:0];

          v28 = [(MUPlaceEnrichmentActionManager *)self analyticsDelegate];
          [v28 didTapAddPhoto];
        }

        v31 = 1;
        goto LABEL_18;
      }

      if ((v27 - 9) < 3)
      {
        goto LABEL_21;
      }

      if (v27 != 12)
      {
        goto LABEL_27;
      }

      *&v124 = 0;
      *(&v124 + 1) = &v124;
      v125 = 0x2020000000;
      v126 = 0;
      v44 = [v16 objectForKeyedSubscript:@"appCategory"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v45 = [v16 objectForKeyedSubscript:@"appCategory"];
        v46 = v45 == 0;
      }

      else
      {
        v46 = 1;
      }

      v49 = [v16 objectForKeyedSubscript:@"isValidated"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v50 = [v16 objectForKeyedSubscript:@"isValidated"];
        v51 = v50 == 0;

        if (!v46 && !v51)
        {
          v89 = [v16 objectForKeyedSubscript:@"appCategory"];
          v52 = [v16 objectForKeyedSubscript:@"isValidated"];
          v53 = NSBOOLFromString();

          if (((v89 != 0) & v53) != 1)
          {
            v69 = MUGetMUPlaceEnrichmentActionManagerLog();
            if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
            {
              *v122 = 138412290;
              v123 = v16;
              _os_log_impl(&dword_1C5620000, v69, OS_LOG_TYPE_ERROR, "Action arguments not valid for External Action: %@", v122, 0xCu);
            }

            goto LABEL_83;
          }

          v54 = [(MUPlaceEnrichmentActionManager *)self externalActionsPairs];
          v86 = [v54 objectForKey:v89];

          v55 = MUGetMUPlaceEnrichmentActionManagerLog();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
          {
            v56 = *(*(&buf + 1) + 40);
            *v122 = 138412290;
            v123 = v56;
            _os_log_impl(&dword_1C5620000, v55, OS_LOG_TYPE_DEBUG, "Opening external action for showcase: %@", v122, 0xCu);
          }

          v57 = [(MUPlaceEnrichmentActionManager *)self enrichmentDataProvider];
          v58 = [v57 placeEnrichmentData];
          v59 = [v58 enrichmentEntities];
          v60 = [v59 firstObject];
          v88 = [v60 appAdamIds];

          v61 = [v88 count];
          v62 = MUGetMUPlaceEnrichmentActionManagerLog();
          v63 = os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG);
          if (v61)
          {
            if (v63)
            {
              *v122 = 138412290;
              v123 = v88;
              _os_log_impl(&dword_1C5620000, v62, OS_LOG_TYPE_DEBUG, "AdamId's found were %@", v122, 0xCu);
            }

            v96[0] = MEMORY[0x1E69E9820];
            v96[1] = 3221225472;
            v96[2] = __85__MUPlaceEnrichmentActionManager_performActionUsingArguments_contextMenu_completion___block_invoke_22;
            v96[3] = &unk_1E8219E88;
            v97 = v86;
            v98 = &v124;
            [v88 enumerateObjectsUsingBlock:v96];
            v64 = v97;
          }

          else
          {
            if (v63)
            {
              *v122 = 0;
              _os_log_impl(&dword_1C5620000, v62, OS_LOG_TYPE_DEBUG, "No AdamIds were found which means that we need to execute a flexible action link.", v122, 2u);
            }

            v94 = 0u;
            v95 = 0u;
            v92 = 0u;
            v93 = 0u;
            v64 = [v86 viewModels];
            v70 = [v64 countByEnumeratingWithState:&v92 objects:v121 count:16];
            if (v70)
            {
              obj = v64;
              v71 = *v93;
              while (2)
              {
                for (i = 0; i != v70; ++i)
                {
                  if (*v93 != v71)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v73 = *(*(&v92 + 1) + 8 * i);
                  if ([v73 linkType] == 4)
                  {
                    v74 = MUGetMUPlaceEnrichmentActionManagerLog();
                    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
                    {
                      *v122 = 138412290;
                      v123 = v73;
                      _os_log_impl(&dword_1C5620000, v74, OS_LOG_TYPE_DEBUG, "Found a web link with view model %@", v122, 0xCu);
                    }

                    v64 = obj;
                    v75 = objc_opt_new();
                    v76 = [v86 actionController];
                    [v76 openPartnerActionUsingViewModel:v73 withPresentationOptions:v75];

                    *(*(&v124 + 1) + 24) = 1;
                    goto LABEL_70;
                  }
                }

                v70 = [obj countByEnumeratingWithState:&v92 objects:v121 count:16];
                if (v70)
                {
                  continue;
                }

                break;
              }

              v64 = obj;
            }
          }

LABEL_70:

          if (*(*(&v124 + 1) + 24))
          {
LABEL_82:

            v69 = v86;
LABEL_83:

            v65 = v89;
LABEL_84:

            v12[2](v12, *(*(&v124 + 1) + 24));
            _Block_object_dispose(&v124, 8);
            goto LABEL_27;
          }

          v77 = [v88 count];
          v78 = MUGetMUPlaceEnrichmentActionManagerLog();
          v79 = os_log_type_enabled(v78, OS_LOG_TYPE_ERROR);
          if (v77)
          {
            if (v79)
            {
              v80 = *(*(&buf + 1) + 40);
              *v122 = 138412290;
              v123 = v80;
              v81 = "Failed to invoke action: %@ as there are no view models with appAdamIDs that match the showcase specific appAdamIDs";
LABEL_76:
              _os_log_impl(&dword_1C5620000, v78, OS_LOG_TYPE_ERROR, v81, v122, 0xCu);
            }
          }

          else if (v79)
          {
            v82 = *(*(&buf + 1) + 40);
            *v122 = 138412290;
            v123 = v82;
            v81 = "Failed to invoke action: %@ as there are no view models with flexible action links";
            goto LABEL_76;
          }

          v83 = MUGetMUPlaceEnrichmentActionManagerLog();
          if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
          {
            v84 = [v86 viewModels];
            *v122 = 138412290;
            v123 = v84;
            _os_log_impl(&dword_1C5620000, v83, OS_LOG_TYPE_ERROR, "--> MapItem external action view models : %@", v122, 0xCu);
          }

          v85 = MUGetMUPlaceEnrichmentActionManagerLog();
          if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
          {
            *v122 = 138412290;
            v123 = v88;
            _os_log_impl(&dword_1C5620000, v85, OS_LOG_TYPE_ERROR, "--> Showcase ordered appAdamIds: %@", v122, 0xCu);
          }

          goto LABEL_82;
        }
      }

      else
      {
      }

      v65 = MUGetMUPlaceEnrichmentActionManagerLog();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        *v122 = 138412290;
        v123 = v16;
        _os_log_impl(&dword_1C5620000, v65, OS_LOG_TYPE_ERROR, "Action arguments missing arguments needed to invoke external action: %@", v122, 0xCu);
      }

      goto LABEL_84;
    }
  }

LABEL_28:

  _Block_object_dispose(&v112, 8);
  _Block_object_dispose(&buf, 8);

  v41 = *MEMORY[0x1E69E9840];
}

uint64_t __85__MUPlaceEnrichmentActionManager_performActionUsingArguments_contextMenu_completion___block_invoke(uint64_t result)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(result + 32))
  {
    v1 = result;
    v2 = MUGetMUPlaceEnrichmentActionManagerLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(*(*(v1 + 40) + 8) + 40);
      v4 = NSStringFromBOOL();
      v6 = 138412546;
      v7 = v3;
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&dword_1C5620000, v2, OS_LOG_TYPE_DEBUG, "Invoking completion handler for action: %@. Performed Action: (%@)", &v6, 0x16u);
    }

    result = (*(*(v1 + 32) + 16))();
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void __85__MUPlaceEnrichmentActionManager_performActionUsingArguments_contextMenu_completion___block_invoke_9(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  if (*(a1 + 64))
  {
LABEL_9:
    v27 = *MEMORY[0x1E69E9840];
    return;
  }

  v29 = [*(a1 + 32) objectForKeyedSubscript:@"boundingBox"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [*(a1 + 32) objectForKeyedSubscript:@"boundingBox"];

    if (v2)
    {
      v3 = [*(a1 + 32) objectForKeyedSubscript:@"boundingBox"];
      v4 = [v3 objectForKeyedSubscript:@"xCoordinate"];
      [v4 doubleValue];
      v6 = v5;
      v7 = [v3 objectForKeyedSubscript:@"yCoordinate"];
      [v7 doubleValue];
      v9 = v8;
      v10 = [v3 objectForKeyedSubscript:@"width"];
      [v10 doubleValue];
      v12 = v11;
      v13 = [v3 objectForKeyedSubscript:@"height"];
      [v13 doubleValue];
      v15 = v14;

      v16 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v9, v12, v15}];
      v17 = *(*(a1 + 48) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;

      v19 = *MEMORY[0x1E696F150];
      v20 = *(MEMORY[0x1E696F150] + 8);
      if (GEOConfigGetBOOL())
      {
        v21 = *(*(*(a1 + 48) + 8) + 40);
        v22 = [MEMORY[0x1E69DC888] redColor];
        [v21 setBackgroundColor:v22];

        [*(*(*(a1 + 48) + 8) + 40) setAlpha:0.1];
      }

      [*(*(*(a1 + 48) + 8) + 40) setUserInteractionEnabled:0];
      [*(*(*(a1 + 48) + 8) + 40) setTag:*(a1 + 56)];
      v23 = [*(a1 + 40) sourceView];
      [v23 addSubview:*(*(*(a1 + 48) + 8) + 40)];

      v24 = MUGetMUPlaceEnrichmentActionManagerLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v36.origin.x = v6;
        v36.origin.y = v9;
        v36.size.width = v12;
        v36.size.height = v15;
        v25 = NSStringFromCGRect(v36);
        v26 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 138412546;
        v31 = v25;
        v32 = 2112;
        v33 = v26;
        _os_log_impl(&dword_1C5620000, v24, OS_LOG_TYPE_DEBUG, "Added a dummy view at: %@. View: %@", buf, 0x16u);
      }
    }

    goto LABEL_9;
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __85__MUPlaceEnrichmentActionManager_performActionUsingArguments_contextMenu_completion___block_invoke_14(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 56) & 1) == 0)
  {
    v2 = [*(a1 + 32) sourceView];
    v3 = [v2 subviews];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __85__MUPlaceEnrichmentActionManager_performActionUsingArguments_contextMenu_completion___block_invoke_2;
    v9[3] = &unk_1E8219DE8;
    v4 = *(a1 + 48);
    v9[4] = *(a1 + 40);
    v9[5] = v4;
    [v3 enumerateObjectsUsingBlock:v9];

    v5 = *(*(*(a1 + 40) + 8) + 40);
    if (v5)
    {
      [v5 removeFromSuperview];
      v6 = MUGetMUPlaceEnrichmentActionManagerLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = *(*(*(a1 + 40) + 8) + 40);
        *buf = 138412290;
        v11 = v7;
        _os_log_impl(&dword_1C5620000, v6, OS_LOG_TYPE_DEBUG, "Removed a dummy view at: %@", buf, 0xCu);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __85__MUPlaceEnrichmentActionManager_performActionUsingArguments_contextMenu_completion___block_invoke_17(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v8 = [v6 actionType] - 1;
  if (v8 > 0xD)
  {
    v9 = @"Unknown";
  }

  else
  {
    v9 = off_1E8219F68[v8];
  }

  v10 = [v7 isEqualToString:v9];
  if (v10)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }

  return v10;
}

void __85__MUPlaceEnrichmentActionManager_performActionUsingArguments_contextMenu_completion___block_invoke_22(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = [*(a1 + 32) viewModels];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__MUPlaceEnrichmentActionManager_performActionUsingArguments_contextMenu_completion___block_invoke_2_23;
  v11[3] = &unk_1E8219E60;
  v12 = v6;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v8;
  v14 = v9;
  v15 = a4;
  v10 = v6;
  [v7 enumerateObjectsUsingBlock:v11];
}

void __85__MUPlaceEnrichmentActionManager_performActionUsingArguments_contextMenu_completion___block_invoke_2_23(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = [v6 appAdamId];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    v9 = MUGetMUPlaceEnrichmentActionManagerLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 32);
      v15 = 138412546;
      v16 = v10;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_1C5620000, v9, OS_LOG_TYPE_DEBUG, "Showcase action will be executed using app adam ID: %@. View Model: %@", &v15, 0x16u);
    }

    v11 = objc_opt_new();
    v12 = [*(a1 + 40) actionController];
    [v12 openPartnerActionUsingViewModel:v6 withPresentationOptions:v11];

    v13 = *(a1 + 56);
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
    *v13 = 1;
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __85__MUPlaceEnrichmentActionManager_performActionUsingArguments_contextMenu_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 tag] == *(a1 + 40))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)adamIDForAppCategory:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MUPlaceEnrichmentActionManager *)self externalActionsPairs];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [v6 viewModels];
    v8 = [v7 firstObject];
    v9 = [v8 appAdamId];
  }

  else
  {
    v10 = MUGetMUPlaceEnrichmentActionManagerLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&dword_1C5620000, v10, OS_LOG_TYPE_DEBUG, "No app adamID found for appCategory: %@", &v13, 0xCu);
    }

    v9 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)configureWithEnrichmentDataProvider:(id)a3 presentationOptions:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MUGetMUPlaceEnrichmentActionManagerLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_1C5620000, v8, OS_LOG_TYPE_DEBUG, "Configuring enrichmentDataProvider: %@ and presentationOptions: %@", &v12, 0x16u);
  }

  [(MUPlaceEnrichmentActionManager *)self setEnrichmentDataProvider:v6];
  [(MUPlaceEnrichmentActionManager *)self setPresentationOptions:v7];
  v9 = [(MUPlaceEnrichmentActionManager *)self presentationOptions];
  v10 = [v9 sourceView];
  [(MUPlaceEnrichmentActionManager *)self setSourceView:v10];

  v11 = *MEMORY[0x1E69E9840];
}

- (id)supportedPlaceEnrichmentActions
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [(MUPlaceEnrichmentActionManager *)self setSupportedActions:v3];

  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [(MUPlaceEnrichmentActionManager *)self placeActionManager];
  v6 = [v5 createRowActionsWithStyle:0];
  [v4 addObjectsFromArray:v6];

  v7 = [(MUPlaceEnrichmentActionManager *)self placeActionManager];
  v8 = [v7 createFooterActions];
  [v4 addObjectsFromArray:v8];

  v9 = [(MUPlaceEnrichmentActionManager *)self placeActionManager];
  v10 = [v9 createContactActions];
  [v4 addObjectsFromArray:v10];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __65__MUPlaceEnrichmentActionManager_supportedPlaceEnrichmentActions__block_invoke;
  v20[3] = &unk_1E8219D70;
  v20[4] = self;
  [v4 enumerateObjectsUsingBlock:v20];
  v11 = [(MUPlaceEnrichmentActionManager *)self supportedActions];
  [(MUPlaceEnrichmentActionManager *)self directionsAction:v11];

  v12 = [(MUPlaceEnrichmentActionManager *)self supportedActions];
  [(MUPlaceEnrichmentActionManager *)self ratePlaceAction:v12];

  v13 = [(MUPlaceEnrichmentActionManager *)self supportedActions];
  [(MUPlaceEnrichmentActionManager *)self addPhotoAction:v13];

  v14 = [(MUPlaceEnrichmentActionManager *)self supportedActions];
  [(MUPlaceEnrichmentActionManager *)self getAppAction:v14];

  v15 = [(MUPlaceEnrichmentActionManager *)self supportedActions];
  [(MUPlaceEnrichmentActionManager *)self contextMenuAction:v15];

  v16 = [(MUPlaceEnrichmentActionManager *)self supportedActions];
  [(MUPlaceEnrichmentActionManager *)self addExternalActionsAsSupportedActions:v16];

  v17 = [(MUPlaceEnrichmentActionManager *)self supportedActions];
  v18 = [v17 copy];

  return v18;
}

void __65__MUPlaceEnrichmentActionManager_supportedPlaceEnrichmentActions__block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 type];
  if (v3 > 20)
  {
    if (v3 <= 41)
    {
      if (v3 != 21)
      {
        if (v3 == 22)
        {
LABEL_25:
          v4 = [MUPlaceEnrichmentAction alloc];
          v5 = 9;
          v6 = 22;
          goto LABEL_30;
        }

        if (v3 != 32)
        {
          goto LABEL_32;
        }

LABEL_18:
        v7 = [*(a1 + 32) dataAvailability];
        v8 = [v7 supportsReportAnIssue];

        if (!v8)
        {
          goto LABEL_32;
        }

        v4 = [MUPlaceEnrichmentAction alloc];
        v5 = 11;
        v6 = 32;
        goto LABEL_30;
      }
    }

    else
    {
      if ((v3 - 42) < 2)
      {
        v4 = [MUPlaceEnrichmentAction alloc];
        v5 = 7;
        v6 = 42;
        goto LABEL_30;
      }

      if ((v3 - 44) >= 2)
      {
        goto LABEL_32;
      }
    }

    v4 = [MUPlaceEnrichmentAction alloc];
    v5 = 5;
    v6 = 21;
    goto LABEL_30;
  }

  if (v3 > 9)
  {
    if (v3 > 12)
    {
      if (v3 == 13)
      {
        v4 = [MUPlaceEnrichmentAction alloc];
        v5 = 3;
        v6 = 13;
      }

      else
      {
        if (v3 != 16)
        {
          goto LABEL_32;
        }

        v4 = [MUPlaceEnrichmentAction alloc];
        v5 = 6;
        v6 = 16;
      }
    }

    else if (v3 == 10)
    {
      if (![v11 enabled])
      {
        goto LABEL_32;
      }

      v4 = [MUPlaceEnrichmentAction alloc];
      v5 = 2;
      v6 = 10;
    }

    else
    {
      if (v3 != 11)
      {
        goto LABEL_32;
      }

      v4 = [MUPlaceEnrichmentAction alloc];
      v5 = 4;
      v6 = 11;
    }

    goto LABEL_30;
  }

  if (v3 == 1)
  {
    goto LABEL_18;
  }

  if (v3 != 4)
  {
    if (v3 != 5)
    {
      goto LABEL_32;
    }

    goto LABEL_25;
  }

  v4 = [MUPlaceEnrichmentAction alloc];
  v5 = 10;
  v6 = 4;
LABEL_30:
  v9 = [(MUPlaceEnrichmentAction *)v4 initWithActionType:v5 isValidated:1 mkActionType:v6];
  if (v9)
  {
    v10 = [*(a1 + 32) supportedActions];
    [v10 addObject:v9];
  }

LABEL_32:
}

- (MUPlaceEnrichmentActionManager)initWithPlaceActionManager:(id)a3 mapItem:(id)a4 dataAvailability:(id)a5 amsResultProvider:(id)a6 callToActionDelegate:(id)a7 contextMenuDelegate:(id)a8 externalActionHandler:(id)a9 analyticsDelegate:(id)a10 onActionUpdate:(id)a11
{
  v35 = a3;
  v34 = a4;
  v33 = a5;
  v32 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v36.receiver = self;
  v36.super_class = MUPlaceEnrichmentActionManager;
  v23 = [(MUPlaceEnrichmentActionManager *)&v36 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_placeActionManager, a3);
    objc_storeStrong(&v24->_mapItem, a4);
    objc_storeStrong(&v24->_dataAvailability, a5);
    objc_storeStrong(&v24->_amsResultProvider, a6);
    objc_storeWeak(&v24->_callToActionDelegate, v18);
    objc_storeWeak(&v24->_contextMenuDelegate, v19);
    objc_storeWeak(&v24->_externalActionHandler, v20);
    objc_storeWeak(&v24->_analyticsDelegate, v21);
    v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
    externalActionsPairs = v24->_externalActionsPairs;
    v24->_externalActionsPairs = v25;

    v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    externalActionsControllers = v24->_externalActionsControllers;
    v24->_externalActionsControllers = v27;

    v29 = _Block_copy(v22);
    onActionUpdate = v24->_onActionUpdate;
    v24->_onActionUpdate = v29;
  }

  return v24;
}

@end
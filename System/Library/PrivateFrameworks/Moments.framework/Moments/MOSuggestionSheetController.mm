@interface MOSuggestionSheetController
+ (id)processedAssets:(id)a3;
- (MOSuggestionSheetControllerDelegate)delegate;
- (id)initForScene:(id)a3;
- (id)server;
- (void)activate;
- (void)didActivateConnection;
- (void)didDropConnection;
- (void)getAssetsForSuggestion:(id)a3 withTypes:(id)a4 completion:(id)a5;
- (void)getAssetsForSuggestion:(id)a3 withTypes:(id)a4 onAssetsCallback:(id)a5;
- (void)reconnectIfNecessary;
- (void)releaseSandboxHandles;
- (void)requestPickerWithOptions:(id)a3;
- (void)terminate;
@end

@implementation MOSuggestionSheetController

- (id)initForScene:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MOSuggestionSheetController;
  v5 = [(MOSuggestionSheetController *)&v13 init];
  if (v5)
  {
    v6 = [v4 _FBSScene];
    v7 = [v6 identityToken];

    instanceSceneIdentityToken = v5->_instanceSceneIdentityToken;
    v5->_instanceSceneIdentityToken = v7;
    v9 = v7;

    v10 = objc_opt_new();
    sandboxTokenHandles = v5->_sandboxTokenHandles;
    v5->_sandboxTokenHandles = v10;
  }

  return v5;
}

- (void)activate
{
  p_angelConnection = &self->_angelConnection;
  if (!self->_angelConnection)
  {
    if (activate_onceToken != -1)
    {
      [MOSuggestionSheetController activate];
    }

    v4 = [MEMORY[0x277CF3288] endpointForMachName:@"com.apple.MomentsUIService" service:@"com.apple.moments.ui-services.presenter" instance:0];
    if (v4)
    {
      objc_initWeak(&location, self);
      v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_USER_INTERACTIVE, 0);
      v7 = dispatch_queue_create("com.apple.moments.ui-services.connections", v6);
      angelConnectionQueue = self->_angelConnectionQueue;
      self->_angelConnectionQueue = v7;

      v9 = [MEMORY[0x277CF3280] connectionWithEndpoint:v4];
      if (v9)
      {
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __39__MOSuggestionSheetController_activate__block_invoke_173;
        v28[3] = &unk_2787758D0;
        v28[4] = self;
        objc_copyWeak(&v29, &location);
        [v9 configureConnection:v28];
        objc_storeStrong(p_angelConnection, v9);
        [v9 activate];
        v10 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *v27 = 0;
          _os_log_impl(&dword_22D8C5000, v10, OS_LOG_TYPE_DEFAULT, "Connecting to MomentsUIService process", v27, 2u);
        }

        objc_destroyWeak(&v29);
      }

      else
      {
        v19 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [(MOSuggestionSheetController *)v19 activate:v20];
        }
      }

      objc_destroyWeak(&location);
    }

    else
    {
      v11 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(MOSuggestionSheetController *)v11 activate:v12];
      }
    }
  }
}

void __39__MOSuggestionSheetController_activate__block_invoke()
{
  v4 = [MEMORY[0x277CF3278] interfaceWithIdentifier:@"com.apple.moments.ui-services.presenter"];
  v0 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_2841104E0];
  [v4 setServer:v0];

  v1 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_28410A750];
  [v4 setClient:v1];

  v2 = [v4 copy];
  v3 = activate___interface;
  activate___interface = v2;
}

void __39__MOSuggestionSheetController_activate__block_invoke_173(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTargetQueue:*(*(a1 + 32) + 24)];
  v4 = [MEMORY[0x277CF32C8] userInitiated];
  [v3 setServiceQuality:v4];

  [v3 setInterface:activate___interface];
  v5 = [[MOSuggestionsSheetClientProxyTarget alloc] initWithController:*(a1 + 32)];
  [v3 setInterfaceTarget:v5];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39__MOSuggestionSheetController_activate__block_invoke_2;
  v10[3] = &unk_2787758A8;
  objc_copyWeak(&v11, (a1 + 40));
  [v3 setActivationHandler:v10];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__MOSuggestionSheetController_activate__block_invoke_3;
  v8[3] = &unk_2787758A8;
  objc_copyWeak(&v9, (a1 + 40));
  [v3 setInterruptionHandler:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__MOSuggestionSheetController_activate__block_invoke_177;
  v6[3] = &unk_2787758A8;
  objc_copyWeak(&v7, (a1 + 40));
  [v3 setInvalidationHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
}

void __39__MOSuggestionSheetController_activate__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didActivateConnection];
}

void __39__MOSuggestionSheetController_activate__block_invoke_3(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22D8C5000, v2, OS_LOG_TYPE_DEFAULT, "suggestions sheet service endpoint connection interrupted", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didDropConnection];
}

void __39__MOSuggestionSheetController_activate__block_invoke_177(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22D8C5000, v2, OS_LOG_TYPE_DEFAULT, "suggestions sheet service endpoint connection invalidated", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didDropConnection];
}

- (void)didDropConnection
{
  [(BSServiceConnectionClient *)self->_angelConnection invalidate];
  angelConnection = self->_angelConnection;
  self->_angelConnection = 0;

  remoteTarget = self->_remoteTarget;
  self->_remoteTarget = 0;

  v5 = [(MOSuggestionSheetController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MOSuggestionSheetController *)self delegate];
    [v7 suggestionSheetController:self didTransitionTo:0];
  }
}

- (void)didActivateConnection
{
  v2 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_22D8C5000, v2, OS_LOG_TYPE_DEFAULT, "Activated connection to MomentsUIService process", v3, 2u);
  }
}

- (void)reconnectIfNecessary
{
  if (!self->_angelConnection)
  {
    [(MOSuggestionSheetController *)self activate];
  }
}

- (id)server
{
  v11[1] = *MEMORY[0x277D85DE8];
  [(MOSuggestionSheetController *)self reconnectIfNecessary];
  remoteTarget = self->_remoteTarget;
  if (!remoteTarget)
  {
    v4 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
    angelConnection = self->_angelConnection;
    v11[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v7 = [(BSServiceConnectionClient *)angelConnection remoteTargetWithLaunchingAssertionAttributes:v6];
    v8 = self->_remoteTarget;
    self->_remoteTarget = v7;

    remoteTarget = self->_remoteTarget;
  }

  v9 = *MEMORY[0x277D85DE8];

  return remoteTarget;
}

- (void)requestPickerWithOptions:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 description];
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_22D8C5000, v5, OS_LOG_TYPE_DEFAULT, "controller, requesting sheet with options. %@", &v9, 0xCu);
  }

  v7 = [(MOSuggestionSheetController *)self server];
  [v7 requestPickerForSceneIdentiyToken:self->_instanceSceneIdentityToken withOptions:v4];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)terminate
{
  v2 = [(MOSuggestionSheetController *)self server];
  [v2 terminate];
}

- (void)getAssetsForSuggestion:(id)a3 withTypes:(id)a4 completion:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 suggestionIdentifier];
    v13 = [v12 UUIDString];
    *buf = 138412290;
    v23 = v13;
    _os_log_impl(&dword_22D8C5000, v11, OS_LOG_TYPE_DEFAULT, "(Legacy) controller, requesting assets for suggestion identifier=%@", buf, 0xCu);
  }

  v14 = objc_opt_new();
  [v14 setRequestedTypes:v10];

  v15 = [(MOSuggestionSheetController *)self server];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __75__MOSuggestionSheetController_getAssetsForSuggestion_withTypes_completion___block_invoke;
  v19[3] = &unk_2787758F8;
  v20 = v8;
  v21 = v9;
  v16 = v9;
  v17 = v8;
  [v15 fetchAssets:v17 withTypes:v14 completion:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void __75__MOSuggestionSheetController_getAssetsForSuggestion_withTypes_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v8)
    {
      v9 = [*(a1 + 32) suggestionIdentifier];
      v10 = [v9 UUIDString];
      v11 = [v5 debugDescription];
      v13 = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_22D8C5000, v7, OS_LOG_TYPE_DEFAULT, "Received assets for suggestion ID=%@ with assets=%@", &v13, 0x16u);

LABEL_6:
    }
  }

  else if (v8)
  {
    v9 = [*(a1 + 32) suggestionIdentifier];
    v10 = [v9 UUIDString];
    v13 = 138412290;
    v14 = v10;
    _os_log_impl(&dword_22D8C5000, v7, OS_LOG_TYPE_DEFAULT, "Received nil assets for suggestion ID=%@", &v13, 0xCu);
    goto LABEL_6;
  }

  (*(*(a1 + 40) + 16))();
  v12 = *MEMORY[0x277D85DE8];
}

- (void)getAssetsForSuggestion:(id)a3 withTypes:(id)a4 onAssetsCallback:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 suggestionIdentifier];
    v13 = [v12 UUIDString];
    *buf = 138412290;
    v24 = v13;
    _os_log_impl(&dword_22D8C5000, v11, OS_LOG_TYPE_DEFAULT, "controller, requesting assets for suggestion identifier=%@", buf, 0xCu);
  }

  v14 = objc_opt_new();
  [v14 setRequestedTypes:v10];

  v15 = [(MOSuggestionSheetController *)self server];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __81__MOSuggestionSheetController_getAssetsForSuggestion_withTypes_onAssetsCallback___block_invoke;
  v19[3] = &unk_278775920;
  v20 = v8;
  v21 = self;
  v22 = v9;
  v16 = v9;
  v17 = v8;
  [v15 fetchAssets:v17 withTypes:v14 onAssetsCallback:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void __81__MOSuggestionSheetController_getAssetsForSuggestion_withTypes_onAssetsCallback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5 && ([v5 assets], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) suggestionIdentifier];
      v10 = [v9 UUIDString];
      v11 = [v5 assets];
      v19 = 138412546;
      v20 = v10;
      v21 = 2048;
      v22 = [v11 count];
      _os_log_impl(&dword_22D8C5000, v8, OS_LOG_TYPE_DEFAULT, "Received assets for suggestionID=%@, count=%lu", &v19, 0x16u);
    }

    if ([*(a1 + 40) disableAssetUnwrapping])
    {
      v12 = *(a1 + 48);
      v13 = [v5 assets];
      (*(v12 + 16))(v12, v13, v6);
    }

    else
    {
      v17 = [v5 assets];
      v13 = [MOSuggestionSheetController processedAssets:v17];

      (*(*(a1 + 48) + 16))(*(a1 + 48), v13, v6);
    }
  }

  else
  {
    v14 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*(a1 + 32) suggestionIdentifier];
      v16 = [v15 UUIDString];
      v19 = 138412290;
      v20 = v16;
      _os_log_impl(&dword_22D8C5000, v14, OS_LOG_TYPE_DEFAULT, "Received nil assets for suggestion ID=%@", &v19, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  v18 = *MEMORY[0x277D85DE8];
}

+ (id)processedAssets:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v51 = [v3 count];
    _os_log_impl(&dword_22D8C5000, v4, OS_LOG_TYPE_DEFAULT, "Processing assets for count=%lu", buf, 0xCu);
  }

  v5 = objc_opt_new();
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v46;
    *&v8 = 138412290;
    v32 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v46 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v45 + 1) + 8 * v11);
        v13 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v12 debugDescription];
          *buf = v32;
          v51 = v14;
          _os_log_impl(&dword_22D8C5000, v13, OS_LOG_TYPE_DEFAULT, "--%@", buf, 0xCu);
        }

        v15 = [v12 assetType];
        v16 = [v15 isEqualToString:MOSuggestionAssetsTypeMotionActivity];

        if (v16)
        {
          v17 = [MOSuggestionAssetUtilities unwrappedMotionActivityFrom:v12];
          if (!v17)
          {
            v18 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              [(MOSuggestionSheetController *)&v43 processedAssets:v44];
            }

            goto LABEL_38;
          }

LABEL_32:
          [v5 addObject:{v17, v32}];
LABEL_39:

          goto LABEL_40;
        }

        v19 = [v12 assetType];
        v20 = [v19 isEqualToString:MOSuggestionAssetsTypeMediaCoverArt];

        if (v20)
        {
          v17 = [MOSuggestionAssetUtilities unwrappedMediaItemFrom:v12];
          if (v17)
          {
            goto LABEL_32;
          }

          v18 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            [(MOSuggestionSheetController *)&v41 processedAssets:v42];
          }

LABEL_38:

          goto LABEL_39;
        }

        v21 = [v12 assetType];
        v22 = [v21 isEqualToString:MOSuggestionAssetsTypeWorkoutGroup];

        if (v22)
        {
          v17 = [MOSuggestionAssetUtilities unwrappeCombinedWorkoutObjectFrom:v12];
          if (v17)
          {
            goto LABEL_32;
          }

          v18 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            [(MOSuggestionSheetController *)&v39 processedAssets:v40];
          }

          goto LABEL_38;
        }

        v23 = [v12 assetType];
        v24 = [v23 isEqualToString:MOSuggestionAssetsTypeWorkout];

        if (v24)
        {
          v17 = [MOSuggestionAssetUtilities unwrappedWorkoutObjectFrom:v12];
          if (v17)
          {
            goto LABEL_32;
          }

          v18 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            [(MOSuggestionSheetController *)&v37 processedAssets:v38];
          }

          goto LABEL_38;
        }

        v25 = [v12 assetType];
        v26 = [v25 isEqualToString:MOSuggestionAssetsTypeContactPhoto];

        if (v26)
        {
          v17 = [MOSuggestionAssetUtilities unwrappedContactPhotoFrom:v12];
          if (v17)
          {
            goto LABEL_32;
          }

          v18 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            [(MOSuggestionSheetController *)&v35 processedAssets:v36];
          }

          goto LABEL_38;
        }

        v27 = [v12 assetType];
        v28 = [v27 isEqualToString:MOSuggestionAssetsTypeStateOfMindAsset];

        if (v28)
        {
          v17 = [MOSuggestionAssetUtilities unwrappedStateOfMindFrom:v12];
          if (v17)
          {
            goto LABEL_32;
          }

          v18 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            [(MOSuggestionSheetController *)&v33 processedAssets:v34];
          }

          goto LABEL_38;
        }

        v29 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22D8C5000, v29, OS_LOG_TYPE_DEFAULT, "Pass through without further unwrapping", buf, 2u);
        }

        [v5 addObject:v12];
LABEL_40:
        ++v11;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v9);
  }

  v30 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)releaseSandboxHandles
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_sandboxTokenHandles;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6) intValue];
        sandbox_extension_release();
        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (MOSuggestionSheetControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
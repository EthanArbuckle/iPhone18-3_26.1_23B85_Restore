@interface PKPrecursorPassUpgradeController
- (BOOL)_updateActiveProofingConfigureFrom:(id)a3;
- (NSArray)devicePrecursorRequests;
- (PKPassUpgradePrecursorPassRequest)devicePrimaryPrecursorRequest;
- (PKPrecursorPassUpgradeController)initWithPass:(id)a3 webService:(id)a4;
- (PKPrecursorPassUpgradeControllerDelegate)delegate;
- (void)_fetchProofingStatusWithCompletion:(id)a3;
- (void)_loadConfigurationIfNeeded;
- (void)_proofingDescriptionFor:(id)a3 completion:(id)a4;
- (void)mockIdentityPrecursorPassUpgradeRequestDescriptions:(id)a3;
- (void)proofingFlowManager:(id)a3 completedProofingWithError:(id)a4;
- (void)proofingFlowManager:(id)a3 didChangeActiveConfigurations:(id)a4;
- (void)reloadPrecursorRequests;
- (void)requestDescriptionFor:(id)a3 completion:(id)a4;
@end

@implementation PKPrecursorPassUpgradeController

- (PKPrecursorPassUpgradeController)initWithPass:(id)a3 webService:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKPrecursorPassUpgradeController;
  v9 = [(PKPrecursorPassUpgradeController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pass, a3);
    objc_storeStrong(&v10->_webService, a4);
  }

  return v10;
}

- (void)_loadConfigurationIfNeeded
{
  if (!self->_hasLoadedConfiguration)
  {
    self->_hasLoadedConfiguration = 1;
    v10 = [(PKPaymentWebService *)self->_webService targetDevice];
    v4 = [v10 secureElementIdentifiers];
    seids = self->_seids;
    self->_seids = v4;

    v6 = [v10 deviceClass];
    deviceClass = self->_deviceClass;
    self->_deviceClass = v6;

    v8 = [v10 deviceVersion];
    deviceVersion = self->_deviceVersion;
    self->_deviceVersion = v8;
  }
}

- (NSArray)devicePrecursorRequests
{
  [(PKPrecursorPassUpgradeController *)self _loadConfigurationIfNeeded];
  pass = self->_pass;
  seids = self->_seids;
  deviceClass = self->_deviceClass;
  deviceVersion = self->_deviceVersion;

  return [(PKSecureElementPass *)pass precursorUpgradeRequestsForDeviceSEIDs:seids deviceClass:deviceClass deviceVersion:deviceVersion];
}

- (PKPassUpgradePrecursorPassRequest)devicePrimaryPrecursorRequest
{
  v2 = [(PKPrecursorPassUpgradeController *)self devicePrecursorRequests];
  v3 = [v2 firstObject];

  return v3;
}

- (void)requestDescriptionFor:(id)a3 completion:(id)a4
{
  v11 = a4;
  v6 = [a3 actions];
  v7 = [v6 firstObject];

  if (!a3 || !v7)
  {
    v10 = v11[2];
LABEL_9:
    v10();
    goto LABEL_10;
  }

  v8 = [v7 type];
  if (v8 <= 2)
  {
    v9 = v11;
    if (v8 == 1)
    {
      [(PKPrecursorPassUpgradeController *)self _proofingDescriptionFor:v7 completion:v11];
    }

    else
    {
      if (v8 != 2)
      {
LABEL_19:
        v10 = v9[2];
        goto LABEL_9;
      }

      [(PKPrecursorPassUpgradeController *)self _carKeyDescriptionFor:v7 completion:v11];
    }
  }

  else
  {
    v9 = v11;
    switch(v8)
    {
      case 3:
        [(PKPrecursorPassUpgradeController *)self _genericReProvisionDescriptionFor:v7 completion:v11];
        break;
      case 4:
        [(PKPrecursorPassUpgradeController *)self _issuerAppDescriptionFor:v7 completion:v11];
        break;
      case 5:
        [(PKPrecursorPassUpgradeController *)self _dpanIDSignatureDescriptionFor:v7 completion:v11];
        break;
      default:
        goto LABEL_19;
    }
  }

LABEL_10:
}

- (void)_proofingDescriptionFor:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__PKPrecursorPassUpgradeController__proofingDescriptionFor_completion___block_invoke;
  v10[3] = &unk_1E79C55D0;
  v11 = v6;
  v12 = self;
  v13 = v7;
  v8 = v7;
  v9 = v6;
  [(PKPrecursorPassUpgradeController *)self _fetchProofingStatusWithCompletion:v10];
}

void __71__PKPrecursorPassUpgradeController__proofingDescriptionFor_completion___block_invoke(void *a1, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject(0x27uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    *buf = 134218242;
    v37 = a2;
    v38 = 2112;
    v39 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "PKPrecursorPassUpgradeController: showing description for status: %lu, action: %@", buf, 0x16u);
  }

  v6 = [*(a1[5] + 8) organizationName];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [[PKPrecursorPassUpgradeRequestAction alloc] _init];
  [v8 setActionType:1];
  v9 = 0;
  if (a2 <= 6)
  {
    if (a2 <= 2)
    {
      if (a2)
      {
        if (a2 != 1)
        {
          if (a2 == 2)
          {
            v10 = PKLocalizedIdentityString(&cfstr_CardTypeIdenti.isa, 0);
            v11 = PKLocalizedIdentityString(&cfstr_CardTypeIdenti_16.isa, 0);

            v9 = 0;
            v8 = 0;
            goto LABEL_41;
          }

          goto LABEL_45;
        }

        v10 = PKLocalizedIdentityString(&cfstr_CardTypeIdenti_0.isa, 0);
        v11 = PKLocalizedIdentityString(&cfstr_CardTypeIdenti_17.isa, &stru_1F22903C8.isa, v6, v6);
        [v8 setActionType:4];
        v31 = [*(a1[5] + 64) learnMoreURL];
        [v8 setActionURL:v31];

        v21 = @"CARD_TYPE_IDENTITY_ACTION_REQUIRED_ACTION_TEXT";
        goto LABEL_39;
      }

      goto LABEL_22;
    }

    switch(a2)
    {
      case 3:
LABEL_22:
        v10 = PKLocalizedIdentityString(&cfstr_CardTypeIdenti_11.isa, 0);
        v22 = [*(a1[5] + 8) identityType];
        v11 = 0;
        if (v22 <= 5)
        {
          v11 = PKLocalizedIdentityString(&off_1E79E4820[v22]->isa, 0);
        }

        v21 = @"CARD_TYPE_IDENTITY_NO_STATUS_ACTION_TEXT";
        goto LABEL_39;
      case 5:
        v10 = PKLocalizedIdentityString(&cfstr_CardTypeIdenti_3.isa, 0);
        v11 = PKLocalizedIdentityString(&cfstr_CardTypeIdenti_19.isa, &stru_1F2281668.isa, v6);
        v21 = @"CARD_TYPE_IDENTITY_AUTH_CODE_ACTION_TEXT";
        goto LABEL_39;
      case 6:
        v10 = PKLocalizedIdentityString(&cfstr_CardTypeIdenti_5.isa, 0);
        v11 = PKLocalizedIdentityString(&cfstr_CardTypeIdenti_23.isa, &stru_1F2281668.isa, v6);
        [v8 setActionType:3];
        v21 = @"CARD_TYPE_IDENTITY_RETRY_ADDING_ACTION_TEXT";
LABEL_39:
        v32 = PKLocalizedIdentityString(&v21->isa, 0);
        [v8 setLocalizedActionText:v32];

LABEL_40:
        v9 = 0;
        goto LABEL_41;
    }

    goto LABEL_45;
  }

  if (a2 > 9)
  {
    if (a2 != 10)
    {
      if (a2 == 11)
      {
        v10 = PKLocalizedIdentityString(&cfstr_CardTypeIdenti_4.isa, 0);
        v11 = PKLocalizedIdentityString(&cfstr_CardTypeIdenti_21.isa, &stru_1F2281668.isa, v6);
        v21 = @"CARD_TYPE_IDENTITY_RETRY_AUTH_CODE_ACTION_TEXT";
        goto LABEL_39;
      }

      if (a2 == 12)
      {
        v10 = PKLocalizedIdentityString(&cfstr_CardTypeIdenti_10.isa, 0);
        v11 = PKLocalizedIdentityString(&cfstr_CardTypeIdenti_34.isa, 0);
        [v8 setActionType:1];
        v21 = @"CARD_TYPE_IDENTITY_LIVENESS_STEP_UP_ACTION_TEXT";
        goto LABEL_39;
      }

LABEL_45:
      v11 = 0;
      v10 = 0;
      goto LABEL_41;
    }

    v23 = PKUseWLAN();
    v24 = v23 == 0;
    if (v23)
    {
      v25 = @"CARD_TYPE_IDENTITY_WAITING_WLAN";
    }

    else
    {
      v25 = @"CARD_TYPE_IDENTITY_WAITING_WIFI";
    }

    if (v24)
    {
      v26 = @"CARD_TYPE_IDENTITY_WAITING_WIFI_DESCRIPTION";
    }

    else
    {
      v26 = @"CARD_TYPE_IDENTITY_WAITING_WLAN_DESCRIPTION";
    }

    if (v24)
    {
      v27 = @"CARD_TYPE_IDENTITY_WAITING_WIFI_ACTION";
    }

    else
    {
      v27 = @"CARD_TYPE_IDENTITY_WAITING_WLAN_ACTION";
    }

    v10 = PKLocalizedIdentityString(&v25->isa, 0);
    v11 = PKLocalizedIdentityString(&v26->isa, &stru_1F2281668.isa, v6);
    v28 = PKLocalizedIdentityString(&v27->isa, 0);
    [v8 setLocalizedActionText:v28];

    [v8 setActionType:5];
    v29 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=WIFI"];
    [v8 setActionURL:v29];

    v9 = [[PKPrecursorPassUpgradeRequestAction alloc] _init];
    [v9 setActionType:1];
    v30 = PKLocalizedIdentityString(&cfstr_CardTypeIdenti_33.isa, 0);
    [v9 setLocalizedActionText:v30];
  }

  else
  {
    if (a2 == 8)
    {
      v10 = PKLocalizedIdentityString(&cfstr_CardTypeIdenti_7.isa, 0);
      v11 = PKLocalizedIdentityString(&cfstr_CardTypeIdenti_25.isa, &stru_1F2281668.isa, v6);
      [v8 setActionType:2];
      v21 = @"CARD_TYPE_IDENTITY_CANNOT_ADD_ACTION_TEXT";
      goto LABEL_39;
    }

    v12 = [*(a1[5] + 64) proofingErrorMessage];

    if (!v12)
    {
      v10 = PKLocalizedIdentityString(&cfstr_CardTypeIdenti_6.isa, 0);
      v11 = PKLocalizedIdentityString(&cfstr_CardTypeIdenti_27.isa, &stru_1F2281668.isa, v6);
      v34 = PKLocalizedIdentityString(&cfstr_CardTypeIdenti_28.isa, 0);
      [v8 setLocalizedActionText:v34];

      [v8 setActionType:3];
      goto LABEL_40;
    }

    v13 = [*(a1[5] + 64) proofingErrorMessage];
    v10 = [v13 title];
    v11 = [v13 message];
    v14 = [v13 actions];
    v15 = [v14 firstObject];

    v16 = PKPrecursorPassUpgradeRequestActionFromPKIdentityProofingDisplayMessageAction(v15);

    v17 = [v13 actions];
    v18 = [v17 count];

    if (v18 < 2)
    {
      v9 = 0;
    }

    else
    {
      v19 = [v13 actions];
      [v19 objectAtIndex:1];
      v20 = v35 = v16;

      v9 = PKPrecursorPassUpgradeRequestActionFromPKIdentityProofingDisplayMessageAction(v20);

      v16 = v35;
    }

    v8 = v16;
  }

LABEL_41:
  [v7 safelyAddObject:v8];
  [v7 safelyAddObject:v9];
  if (v10)
  {
    v33 = [[PKPrecursorPassUpgradeRequestDescription alloc] _init];
    [v33 setLocalizedTitle:v10];
    [v33 setLocalizedDescription:v11];
    [v33 setActions:v7];
    (*(a1[6] + 16))();
  }

  else
  {
    (*(a1[6] + 16))();
  }
}

- (void)_fetchProofingStatusWithCompletion:(id)a3
{
  v4 = a3;
  currentProofingConfiguration = self->_currentProofingConfiguration;
  if (currentProofingConfiguration)
  {
    v4[2](v4, [(PKIdentityProofingConfiguration *)currentProofingConfiguration status]);
  }

  else
  {
    if (!self->_identityProofingManager)
    {
      v6 = [objc_alloc(getCIDVUIProofingFlowManagerClass_0[0]()) initWithDelegate:self];
      identityProofingManager = self->_identityProofingManager;
      self->_identityProofingManager = v6;
    }

    v8 = PKLogFacilityTypeGetObject(0x27uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKPrecursorPassUpgradeController: fetching proofing flow availability", buf, 2u);
    }

    v9 = self->_identityProofingManager;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __71__PKPrecursorPassUpgradeController__fetchProofingStatusWithCompletion___block_invoke;
    v10[3] = &unk_1E79E4760;
    v10[4] = self;
    v11 = v4;
    [(CIDVUIProofingFlowManager *)v9 proofingFlowAvailability:v10];
  }
}

void __71__PKPrecursorPassUpgradeController__fetchProofingStatusWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__PKPrecursorPassUpgradeController__fetchProofingStatusWithCompletion___block_invoke_2;
  v11[3] = &unk_1E79DF848;
  v12 = v7;
  v8 = *(a1 + 40);
  v14 = v6;
  v15 = v8;
  v13 = *(a1 + 32);
  v9 = v6;
  v10 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
}

void __71__PKPrecursorPassUpgradeController__fetchProofingStatusWithCompletion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 56) + 16);

    v2();
  }

  else
  {
    [*(a1 + 40) _updateActiveProofingConfigureFrom:*(a1 + 48)];
    v3 = *(*(a1 + 40) + 64);
    v4 = *(a1 + 56);
    v5 = v3;
    if (v3)
    {
      (*(v4 + 16))(v4, [v3 status]);
    }

    else
    {
      (*(v4 + 16))(v4, 0);
    }
  }
}

- (BOOL)_updateActiveProofingConfigureFrom:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKSecureElementPass *)self->_pass issuerAdministrativeAreaCode];
  v27 = self;
  v6 = [(PKSecureElementPass *)self->_pass issuerCountryCode];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v30 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v29 + 1) + 8 * v10);
      v12 = [v11 state];
      v13 = v5;
      v14 = v12;
      v15 = v14;
      if (v13 == v14)
      {
      }

      else
      {
        if (!v5 || !v14)
        {
          v18 = v14;
LABEL_19:

LABEL_20:
          goto LABEL_21;
        }

        v16 = [v13 caseInsensitiveCompare:v14];

        if (v16)
        {
          goto LABEL_20;
        }
      }

      v17 = [v11 country];
      v18 = v6;
      v19 = v17;
      v13 = v19;
      if (v18 == v19)
      {

LABEL_25:
        v24 = PKLogFacilityTypeGetObject(0x27uLL);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v34 = v11;
          _os_log_impl(&dword_1AD337000, v24, OS_LOG_TYPE_DEFAULT, "PKPrecursorPassUpgradeController: Found match: %@", buf, 0xCu);
        }

        v21 = [[PKIdentityProofingConfiguration alloc] initWithCIDVUIProofingConfiguration:v11];
        p_currentProofingConfiguration = &v27->_currentProofingConfiguration;
        currentProofingConfiguration = v27->_currentProofingConfiguration;
        if (!v21 || !currentProofingConfiguration)
        {
          goto LABEL_31;
        }

        if (![(PKIdentityProofingConfiguration *)v21 isEqual:?])
        {
          goto LABEL_32;
        }

LABEL_30:
        v25 = 0;
        goto LABEL_33;
      }

      if (!v6 || !v19)
      {

        goto LABEL_19;
      }

      v20 = [v18 caseInsensitiveCompare:v19];

      if (!v20)
      {
        goto LABEL_25;
      }

LABEL_21:
      if (v8 == ++v10)
      {
        v8 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v21 = 0;
  p_currentProofingConfiguration = &v27->_currentProofingConfiguration;
  currentProofingConfiguration = v27->_currentProofingConfiguration;
LABEL_31:
  if (v21 == currentProofingConfiguration)
  {
    goto LABEL_30;
  }

LABEL_32:
  objc_storeStrong(p_currentProofingConfiguration, v21);
  v25 = 1;
LABEL_33:

  return v25;
}

- (void)reloadPrecursorRequests
{
  v3 = [(PKPrecursorPassUpgradeController *)self devicePrimaryPrecursorRequest];
  v4 = [v3 actions];
  v5 = [v4 firstObject];

  if ([v5 type] == 1)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __59__PKPrecursorPassUpgradeController_reloadPrecursorRequests__block_invoke;
    v6[3] = &unk_1E79CEB18;
    v6[4] = self;
    [(PKPrecursorPassUpgradeController *)self _fetchProofingStatusWithCompletion:v6];
  }
}

void __59__PKPrecursorPassUpgradeController_reloadPrecursorRequests__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
  [WeakRetained precursorPassUpgradeRequestDidChange];
}

- (void)proofingFlowManager:(id)a3 completedProofingWithError:(id)a4
{
  v4 = PKLogFacilityTypeGetObject(0x27uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "PKPrecursorPassUpgradeController: Did receive identity proofing completed", v5, 2u);
  }
}

- (void)proofingFlowManager:(id)a3 didChangeActiveConfigurations:(id)a4
{
  v5 = a4;
  v6 = PKLogFacilityTypeGetObject(0x27uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "PKPrecursorPassUpgradeController: Did receive identity proofing change", buf, 2u);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86__PKPrecursorPassUpgradeController_proofingFlowManager_didChangeActiveConfigurations___block_invoke;
  v8[3] = &unk_1E79C4DD8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void __86__PKPrecursorPassUpgradeController_proofingFlowManager_didChangeActiveConfigurations___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _updateActiveProofingConfigureFrom:*(a1 + 40)])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
    [WeakRetained precursorPassUpgradeRequestDidChange];
  }
}

- (void)mockIdentityPrecursorPassUpgradeRequestDescriptions:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  v7 = objc_alloc_init(PKIdentityProofingConfiguration);
  currentProofingConfiguration = self->_currentProofingConfiguration;
  self->_currentProofingConfiguration = v7;

  v9 = objc_alloc_init(PKPassUpgradePrecursorPassProofingAction);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__PKPrecursorPassUpgradeController_mockIdentityPrecursorPassUpgradeRequestDescriptions___block_invoke;
  aBlock[3] = &unk_1E79E47B0;
  aBlock[4] = self;
  v54 = v9;
  v10 = v5;
  v55 = v10;
  v11 = v9;
  v12 = _Block_copy(aBlock);
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __88__PKPrecursorPassUpgradeController_mockIdentityPrecursorPassUpgradeRequestDescriptions___block_invoke_3;
  v51[3] = &unk_1E79E47D8;
  v51[4] = self;
  v13 = v12;
  v52 = v13;
  [(PKAsyncUnaryOperationComposer *)v6 addOperation:v51];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __88__PKPrecursorPassUpgradeController_mockIdentityPrecursorPassUpgradeRequestDescriptions___block_invoke_4;
  v49[3] = &unk_1E79E47D8;
  v49[4] = self;
  v14 = v13;
  v50 = v14;
  [(PKAsyncUnaryOperationComposer *)v6 addOperation:v49];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __88__PKPrecursorPassUpgradeController_mockIdentityPrecursorPassUpgradeRequestDescriptions___block_invoke_5;
  v47[3] = &unk_1E79E47D8;
  v47[4] = self;
  v15 = v14;
  v48 = v15;
  [(PKAsyncUnaryOperationComposer *)v6 addOperation:v47];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __88__PKPrecursorPassUpgradeController_mockIdentityPrecursorPassUpgradeRequestDescriptions___block_invoke_6;
  v45[3] = &unk_1E79E47D8;
  v45[4] = self;
  v16 = v15;
  v46 = v16;
  [(PKAsyncUnaryOperationComposer *)v6 addOperation:v45];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __88__PKPrecursorPassUpgradeController_mockIdentityPrecursorPassUpgradeRequestDescriptions___block_invoke_7;
  v43[3] = &unk_1E79E47D8;
  v43[4] = self;
  v17 = v16;
  v44 = v17;
  [(PKAsyncUnaryOperationComposer *)v6 addOperation:v43];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __88__PKPrecursorPassUpgradeController_mockIdentityPrecursorPassUpgradeRequestDescriptions___block_invoke_8;
  v41[3] = &unk_1E79E47D8;
  v41[4] = self;
  v18 = v17;
  v42 = v18;
  [(PKAsyncUnaryOperationComposer *)v6 addOperation:v41];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __88__PKPrecursorPassUpgradeController_mockIdentityPrecursorPassUpgradeRequestDescriptions___block_invoke_9;
  v39[3] = &unk_1E79E47D8;
  v39[4] = self;
  v19 = v18;
  v40 = v19;
  [(PKAsyncUnaryOperationComposer *)v6 addOperation:v39];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __88__PKPrecursorPassUpgradeController_mockIdentityPrecursorPassUpgradeRequestDescriptions___block_invoke_10;
  v37[3] = &unk_1E79E47D8;
  v37[4] = self;
  v20 = v19;
  v38 = v20;
  [(PKAsyncUnaryOperationComposer *)v6 addOperation:v37];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __88__PKPrecursorPassUpgradeController_mockIdentityPrecursorPassUpgradeRequestDescriptions___block_invoke_11;
  v35[3] = &unk_1E79E47D8;
  v35[4] = self;
  v21 = v20;
  v36 = v21;
  [(PKAsyncUnaryOperationComposer *)v6 addOperation:v35];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __88__PKPrecursorPassUpgradeController_mockIdentityPrecursorPassUpgradeRequestDescriptions___block_invoke_12;
  v33[3] = &unk_1E79E47D8;
  v33[4] = self;
  v22 = v21;
  v34 = v22;
  [(PKAsyncUnaryOperationComposer *)v6 addOperation:v33];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __88__PKPrecursorPassUpgradeController_mockIdentityPrecursorPassUpgradeRequestDescriptions___block_invoke_13;
  v31[3] = &unk_1E79E47D8;
  v31[4] = self;
  v32 = v22;
  v23 = v22;
  [(PKAsyncUnaryOperationComposer *)v6 addOperation:v31];
  v24 = [MEMORY[0x1E695DFB0] null];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __88__PKPrecursorPassUpgradeController_mockIdentityPrecursorPassUpgradeRequestDescriptions___block_invoke_14;
  v28[3] = &unk_1E79E4800;
  v29 = v10;
  v30 = v4;
  v25 = v10;
  v26 = v4;
  v27 = [(PKAsyncUnaryOperationComposer *)v6 evaluateWithInput:v24 completion:v28];
}

void __88__PKPrecursorPassUpgradeController_mockIdentityPrecursorPassUpgradeRequestDescriptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__PKPrecursorPassUpgradeController_mockIdentityPrecursorPassUpgradeRequestDescriptions___block_invoke_2;
  v11[3] = &unk_1E79E4788;
  v12 = *(a1 + 48);
  v13 = v5;
  v14 = v6;
  v9 = v6;
  v10 = v5;
  [v7 _proofingDescriptionFor:v8 completion:v11];
}

void __88__PKPrecursorPassUpgradeController_mockIdentityPrecursorPassUpgradeRequestDescriptions___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setObject:a2 forKeyedSubscript:*(a1 + 40)];
  v3 = *(a1 + 48);
  v4 = [MEMORY[0x1E695DFB0] null];
  (*(v3 + 16))(v3, v4, 0);
}

void __88__PKPrecursorPassUpgradeController_mockIdentityPrecursorPassUpgradeRequestDescriptions___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(*(a1 + 32) + 64);
  v6 = a4;
  [v5 setStatus:0];
  (*(*(a1 + 40) + 16))();
}

void __88__PKPrecursorPassUpgradeController_mockIdentityPrecursorPassUpgradeRequestDescriptions___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(*(a1 + 32) + 64);
  v8 = a4;
  [v5 setStatus:1];
  v6 = *(*(a1 + 32) + 64);
  v7 = [MEMORY[0x1E695DFF8] URLWithString:@"https:apple.com"];
  [v6 setLearnMoreURL:v7];

  (*(*(a1 + 40) + 16))();
}

void __88__PKPrecursorPassUpgradeController_mockIdentityPrecursorPassUpgradeRequestDescriptions___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(*(a1 + 32) + 64);
  v6 = a4;
  [v5 setStatus:2];
  (*(*(a1 + 40) + 16))();
}

void __88__PKPrecursorPassUpgradeController_mockIdentityPrecursorPassUpgradeRequestDescriptions___block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(*(a1 + 32) + 64);
  v6 = a4;
  [v5 setStatus:3];
  (*(*(a1 + 40) + 16))();
}

void __88__PKPrecursorPassUpgradeController_mockIdentityPrecursorPassUpgradeRequestDescriptions___block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(*(a1 + 32) + 64);
  v6 = a4;
  [v5 setStatus:4];
  (*(*(a1 + 40) + 16))();
}

void __88__PKPrecursorPassUpgradeController_mockIdentityPrecursorPassUpgradeRequestDescriptions___block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(*(a1 + 32) + 64);
  v6 = a4;
  [v5 setStatus:5];
  (*(*(a1 + 40) + 16))();
}

void __88__PKPrecursorPassUpgradeController_mockIdentityPrecursorPassUpgradeRequestDescriptions___block_invoke_9(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(*(a1 + 32) + 64);
  v6 = a4;
  [v5 setStatus:6];
  (*(*(a1 + 40) + 16))();
}

void __88__PKPrecursorPassUpgradeController_mockIdentityPrecursorPassUpgradeRequestDescriptions___block_invoke_10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(*(a1 + 32) + 64);
  v6 = a4;
  [v5 setStatus:7];
  (*(*(a1 + 40) + 16))();
}

void __88__PKPrecursorPassUpgradeController_mockIdentityPrecursorPassUpgradeRequestDescriptions___block_invoke_11(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(*(a1 + 32) + 64);
  v6 = a4;
  [v5 setStatus:8];
  (*(*(a1 + 40) + 16))();
}

void __88__PKPrecursorPassUpgradeController_mockIdentityPrecursorPassUpgradeRequestDescriptions___block_invoke_12(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(*(a1 + 32) + 64);
  v6 = a4;
  [v5 setStatus:9];
  (*(*(a1 + 40) + 16))();
}

void __88__PKPrecursorPassUpgradeController_mockIdentityPrecursorPassUpgradeRequestDescriptions___block_invoke_13(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(*(a1 + 32) + 64);
  v6 = a4;
  [v5 setStatus:11];
  (*(*(a1 + 40) + 16))();
}

void __88__PKPrecursorPassUpgradeController_mockIdentityPrecursorPassUpgradeRequestDescriptions___block_invoke_14(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2);
}

- (PKPrecursorPassUpgradeControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
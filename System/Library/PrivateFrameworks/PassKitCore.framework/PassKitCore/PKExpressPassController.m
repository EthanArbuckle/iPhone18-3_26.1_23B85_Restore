@interface PKExpressPassController
- (BOOL)deviceUsesAutomaticAuthorization;
- (BOOL)hasEligibleExpressUpgradeRequestForPass:(id)a3;
- (BOOL)isExpressModeSupportedForPass:(id)a3;
- (BOOL)supportsLowPowerExpressMode;
- (PKExpressPassController)initWithPaymentDataProvider:(id)a3 passLibraryDataProvider:(id)a4 isForWatch:(BOOL)a5;
- (id)eligibleExpressUpgradeRequestsForPass:(id)a3;
- (id)enabledExpressPasses;
- (id)existingExpressPassConfigurationForPass:(id)a3;
- (id)existingExpressPassInformationForPass:(id)a3;
- (id)expressModeSupportedForPass:(id)a3;
- (id)expressModeUpgradeRequestForPass:(id)a3;
- (id)expressState;
- (id)presentingViewController;
- (void)_disableExpressModeForPassWithUniqueIdentifier:(id)a3 withCompletion:(id)a4;
- (void)conflictingExpressPassesWithPassConfiguration:(id)a3 completion:(id)a4;
- (void)conflictingExpressPassesWithPassInformation:(id)a3 completion:(id)a4;
- (void)disableExpressModeForPass:(id)a3 withCompletion:(id)a4;
- (void)disableExpressModeForPassesWithUniqueIdentifiers:(id)a3 withCompletion:(id)a4;
- (void)setExpressModeWithPassConfiguration:(id)a3 requiresAuth:(BOOL)a4 credential:(id)a5 completion:(id)a6;
- (void)setExpressModeWithPassInformation:(id)a3 credential:(id)a4 completion:(id)a5;
- (void)upgradeExpressModeForPass:(id)a3 withCredential:(id)a4 completion:(id)a5;
- (void)upgradeExpressModeForPass:(id)a3 withCredential:(id)a4 resultHandler:(id)a5;
@end

@implementation PKExpressPassController

- (PKExpressPassController)initWithPaymentDataProvider:(id)a3 passLibraryDataProvider:(id)a4 isForWatch:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = PKExpressPassController;
  v10 = [(PKExpressPassController *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_paymentDataProvider, v8);
    objc_storeWeak(&v11->_passLibraryDataProvider, v9);
    v11->_isForWatch = a5;
    WeakRetained = objc_loadWeakRetained(&v11->_paymentDataProvider);
    v11->_hasSupportsExpressForAutomaticSelectionTechnologyTypeCheck = objc_opt_respondsToSelector() & 1;

    v13 = objc_loadWeakRetained(&v11->_paymentDataProvider);
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = objc_loadWeakRetained(&v11->_paymentDataProvider);
      v11->_apiVersion = [v15 apiVersion];
    }

    else
    {
      v11->_apiVersion = 0;
    }
  }

  return v11;
}

- (id)expressModeSupportedForPass:(id)a3
{
  v4 = a3;
  if (self->_hasSupportsExpressForAutomaticSelectionTechnologyTypeCheck)
  {
    v5 = [PKExpressPassInformation alloc];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__PKExpressPassController_expressModeSupportedForPass___block_invoke;
    v9[3] = &unk_1E79DDD18;
    v9[4] = self;
    v6 = [(PKExpressPassInformation *)v5 initForPaymentPass:v4 withTechologyTest:v9];
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "PKPaymentDataProvider is missing supportsExpressForAutomaticSelectionTechnologyType", buf, 2u);
    }

    v6 = 0;
  }

  return v6;
}

uint64_t __55__PKExpressPassController_expressModeSupportedForPass___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v4 = [WeakRetained supportsExpressForAutomaticSelectionTechnologyType:a2];

  return v4;
}

- (BOOL)isExpressModeSupportedForPass:(id)a3
{
  v4 = a3;
  if (self->_hasSupportsExpressForAutomaticSelectionTechnologyTypeCheck)
  {
    v5 = [PKExpressPassInformation alloc];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__PKExpressPassController_isExpressModeSupportedForPass___block_invoke;
    v10[3] = &unk_1E79DDD18;
    v10[4] = self;
    v6 = [(PKExpressPassInformation *)v5 initForPaymentPass:v4 withTechologyTest:v10];
    v7 = v6 != 0;
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKPaymentDataProvider is missing supportsExpressForAutomaticSelectionTechnologyType", buf, 2u);
    }

    v7 = 0;
  }

  return v7;
}

uint64_t __57__PKExpressPassController_isExpressModeSupportedForPass___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v4 = [WeakRetained supportsExpressForAutomaticSelectionTechnologyType:a2];

  return v4;
}

- (void)conflictingExpressPassesWithPassConfiguration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    if (!self->_apiVersion)
    {
      (*(v7 + 2))(v7, 0);
    }

    WeakRetained = objc_loadWeakRetained(&self->_paymentDataProvider);
    v10 = objc_opt_respondsToSelector();

    v11 = objc_loadWeakRetained(&self->_paymentDataProvider);
    if (v10)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __84__PKExpressPassController_conflictingExpressPassesWithPassConfiguration_completion___block_invoke;
      v20[3] = &unk_1E79D12B0;
      v20[4] = self;
      v21 = v8;
      [v11 conflictingExpressPassIdentifiersForPassConfiguration:v6 withCompletion:v20];

      v12 = v21;
LABEL_8:

      goto LABEL_12;
    }

    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = objc_loadWeakRetained(&self->_paymentDataProvider);
      v15 = [v6 passInformation];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __84__PKExpressPassController_conflictingExpressPassesWithPassConfiguration_completion___block_invoke_2;
      v18[3] = &unk_1E79D12B0;
      v18[4] = self;
      v19 = v8;
      [v14 conflictingExpressPassIdentifiersForPassInformation:v15 withCompletion:v18];

      v12 = v19;
      goto LABEL_8;
    }

    v16 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Unable to check for express mode conflicts", v17, 2u);
    }

    v8[2](v8, 0);
  }

LABEL_12:
}

void __84__PKExpressPassController_conflictingExpressPassesWithPassConfiguration_completion___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 count];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v4];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * v10);
          WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
          v13 = [WeakRetained passWithUniqueID:{v11, v16}];

          if (v13)
          {
            [v5 addObject:v13];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v14 = *(a1 + 40);
    v15 = [v5 copy];
    (*(v14 + 16))(v14, v15);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __84__PKExpressPassController_conflictingExpressPassesWithPassConfiguration_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 count];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v4];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * v10);
          WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
          v13 = [WeakRetained passWithUniqueID:{v11, v16}];

          if (v13)
          {
            [v5 addObject:v13];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v14 = *(a1 + 40);
    v15 = [v5 copy];
    (*(v14 + 16))(v14, v15);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)conflictingExpressPassesWithPassInformation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    if (!self->_apiVersion)
    {
      (*(v7 + 2))(v7, 0);
    }

    WeakRetained = objc_loadWeakRetained(&self->_passLibraryDataProvider);
    v10 = [v6 passUniqueIdentifier];
    v11 = [WeakRetained passWithUniqueID:v10];
    v12 = [v11 secureElementPass];

    v13 = [[PKExpressPassConfiguration alloc] initWithPassInformation:v6 forSecureElementPass:v12];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __82__PKExpressPassController_conflictingExpressPassesWithPassInformation_completion___block_invoke;
    v14[3] = &unk_1E79D1300;
    v15 = v8;
    [(PKExpressPassController *)self conflictingExpressPassesWithPassConfiguration:v13 completion:v14];
  }
}

- (id)existingExpressPassConfigurationForPass:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 uniqueID];
  WeakRetained = objc_loadWeakRetained(&self->_paymentDataProvider);
  v7 = objc_opt_respondsToSelector();

  v8 = objc_loadWeakRetained(&self->_paymentDataProvider);
  v9 = v8;
  if (v7)
  {
    v10 = [v8 expressPassConfigurations];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v12)
    {
      v13 = *v35;
      while (2)
      {
        for (i = 0; i != v12; i = (i + 1))
        {
          if (*v35 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v34 + 1) + 8 * i);
          v16 = [v15 passUniqueIdentifier];
          v17 = v16;
          if (v5 && v16)
          {
            v18 = [v16 isEqual:v5];

            if (v18)
            {
              goto LABEL_29;
            }
          }

          else
          {

            if (v17 == v5)
            {
LABEL_29:
              v28 = v15;
              goto LABEL_32;
            }
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v34 objects:v39 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v19 = objc_opt_respondsToSelector();

    if ((v19 & 1) == 0)
    {
      v12 = 0;
      goto LABEL_34;
    }

    v20 = objc_loadWeakRetained(&self->_paymentDataProvider);
    v21 = [v20 expressPassesInformation];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v11 = v21;
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v12)
    {
      v22 = *v31;
      while (2)
      {
        for (j = 0; j != v12; j = (j + 1))
        {
          if (*v31 != v22)
          {
            objc_enumerationMutation(v11);
          }

          v24 = *(*(&v30 + 1) + 8 * j);
          v25 = [v24 passUniqueIdentifier];
          v26 = v25;
          if (v5 && v25)
          {
            v27 = [v25 isEqual:v5];

            if (v27)
            {
              goto LABEL_31;
            }
          }

          else
          {

            if (v26 == v5)
            {
LABEL_31:
              v28 = [[PKExpressPassConfiguration alloc] initWithPassInformation:v24 forSecureElementPass:v4];
LABEL_32:
              v12 = v28;
              goto LABEL_33;
            }
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_33:

LABEL_34:

  return v12;
}

- (id)existingExpressPassInformationForPass:(id)a3
{
  v3 = [(PKExpressPassController *)self existingExpressPassConfigurationForPass:a3];
  v4 = [v3 passInformation];

  return v4;
}

- (BOOL)supportsLowPowerExpressMode
{
  WeakRetained = objc_loadWeakRetained(&self->_paymentDataProvider);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_paymentDataProvider);
  v6 = [v5 supportsLowPowerExpressMode];

  return v6;
}

- (id)expressModeUpgradeRequestForPass:(id)a3
{
  v3 = [(PKExpressPassController *)self eligibleExpressUpgradeRequestsForPass:a3];
  if ([v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)eligibleExpressUpgradeRequestsForPass:(id)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_hasSupportsExpressForAutomaticSelectionTechnologyTypeCheck)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __65__PKExpressPassController_eligibleExpressUpgradeRequestsForPass___block_invoke;
    aBlock[3] = &unk_1E79DDD18;
    aBlock[4] = self;
    v5 = _Block_copy(aBlock);
    WeakRetained = objc_loadWeakRetained(&self->_paymentDataProvider);
    v7 = [WeakRetained secureElementIdentifier];

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_paymentDataProvider);
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        v10 = objc_loadWeakRetained(&self->_paymentDataProvider);
        v11 = [v10 deviceClass];
      }

      else
      {
        v14 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Unable to get device class", buf, 2u);
        }

        v11 = PKDeviceClass();
      }

      v15 = objc_loadWeakRetained(&self->_paymentDataProvider);
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        v17 = objc_loadWeakRetained(&self->_paymentDataProvider);
        v18 = [v17 deviceVersion];
      }

      else
      {
        v19 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AD337000, v19, OS_LOG_TYPE_DEFAULT, "Unable to get device version", buf, 2u);
        }

        v18 = +[PKOSVersionRequirement fromDeviceVersion];
      }

      v24[0] = v7;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
      v13 = [v4 eligibleExpressUpgradeRequestsForDeviceClass:v11 deviceSEIDs:v20 deviceVersion:v18 technologyTest:v5];
    }

    else
    {
      v11 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Unable to get device SEID", buf, 2u);
      }

      v13 = 0;
    }
  }

  else
  {
    v12 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "PKPaymentDataProvider is missing supportsExpressForAutomaticSelectionTechnologyType", buf, 2u);
    }

    v13 = 0;
  }

  return v13;
}

uint64_t __65__PKExpressPassController_eligibleExpressUpgradeRequestsForPass___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v4 = [WeakRetained supportsExpressForAutomaticSelectionTechnologyType:a2];

  return v4;
}

- (BOOL)hasEligibleExpressUpgradeRequestForPass:(id)a3
{
  v3 = [(PKExpressPassController *)self eligibleExpressUpgradeRequestsForPass:a3];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)upgradeExpressModeForPass:(id)a3 withCredential:(id)a4 completion:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__PKExpressPassController_upgradeExpressModeForPass_withCredential_completion___block_invoke;
  v10[3] = &unk_1E79DDD40;
  v11 = v8;
  v9 = v8;
  [(PKExpressPassController *)self upgradeExpressModeForPass:a3 withCredential:a4 resultHandler:v10];
}

- (void)upgradeExpressModeForPass:(id)a3 withCredential:(id)a4 resultHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_paymentDataProvider);
  if ([WeakRetained isDeviceInRestrictedMode])
  {
    v12 = PKLogFacilityTypeGetObject(7uLL);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    LOWORD(location[0]) = 0;
    v13 = "Device in restricted mode, skipping pass upgrade.";
    goto LABEL_13;
  }

  if (self->_isForWatch)
  {
    v14 = objc_loadWeakRetained(&self->_presentingViewController);

    if (!v14)
    {
      v12 = PKLogFacilityTypeGetObject(7uLL);
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      LOWORD(location[0]) = 0;
      v13 = "Missing presenting view controller, skipping pass upgrade.";
LABEL_13:
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, v13, location, 2u);
LABEL_14:

      if (v10)
      {
        (*(v10 + 2))(v10, 0, 0);
      }

      goto LABEL_21;
    }
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v12 = PKLogFacilityTypeGetObject(7uLL);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    LOWORD(location[0]) = 0;
    v13 = "PKPaymentDataProvider is missing passUpgradeWithRequest:pass:visibleViewController:completion:, skipping pass upgrade.";
    goto LABEL_13;
  }

  v15 = [(PKExpressPassController *)self expressModeUpgradeRequestForPass:v8];
  if (v15)
  {
    objc_initWeak(location, self);
    v16 = objc_loadWeakRetained(&self->_presentingViewController);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __82__PKExpressPassController_upgradeExpressModeForPass_withCredential_resultHandler___block_invoke;
    v18[3] = &unk_1E79DDD68;
    objc_copyWeak(&v21, location);
    v20 = v10;
    v18[4] = self;
    v19 = v9;
    [WeakRetained passUpgradeWithRequest:v15 pass:v8 visibleViewController:v16 completion:v18];

    objc_destroyWeak(&v21);
    objc_destroyWeak(location);
  }

  else
  {
    v17 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "Missing upgrade request for pass, skipping pass upgrade.", location, 2u);
    }

    if (v10)
    {
      (*(v10 + 2))(v10, 0, 0);
    }
  }

LABEL_21:
}

void __82__PKExpressPassController_upgradeExpressModeForPass_withCredential_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (!v5 && v6)
    {
      v8 = [*(a1 + 32) expressModeSupportedForPass:v6];
      if (v8)
      {
        if (*(*(a1 + 32) + 24) != 1)
        {
          v17 = [[PKExpressPassConfiguration alloc] initWithPassInformation:v8 forSecureElementPass:v6];
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __82__PKExpressPassController_upgradeExpressModeForPass_withCredential_resultHandler___block_invoke_58;
          v19[3] = &unk_1E79D12B0;
          v18 = *(a1 + 40);
          v21 = *(a1 + 48);
          v20 = v6;
          [WeakRetained setExpressModeWithPassConfiguration:v17 requiresAuth:1 credential:v18 completion:v19];

          goto LABEL_21;
        }

        v9 = *(a1 + 48);
        if (!v9)
        {
LABEL_21:

          goto LABEL_22;
        }

        v10 = *(v9 + 16);
      }

      else
      {
        v15 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Upgraded pass cannot be made express, skipping setting express pass.", buf, 2u);
        }

        v16 = *(a1 + 48);
        if (!v16)
        {
          goto LABEL_21;
        }

        v10 = *(v16 + 16);
      }

      v10();
      goto LABEL_21;
    }

    v14 = *(a1 + 48);
    if (v14)
    {
      v13 = *(v14 + 16);
      goto LABEL_14;
    }
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v23 = v5;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Pass upgrade completed (%@, %@) but instance was invalidated, skipping setting express pass.", buf, 0x16u);
    }

    v12 = *(a1 + 48);
    if (v12)
    {
      v13 = *(v12 + 16);
LABEL_14:
      v13();
    }
  }

LABEL_22:
}

void __82__PKExpressPassController_upgradeExpressModeForPass_withCredential_resultHandler___block_invoke_58(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Failed setting express pass after pass upgrade.", v6, 2u);
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, *(a1 + 32), 0);
  }
}

- (void)setExpressModeWithPassConfiguration:(id)a3 requiresAuth:(BOOL)a4 credential:(id)a5 completion:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_paymentDataProvider);
  if (self->_isForWatch)
  {
    v14 = objc_loadWeakRetained(&self->_presentingViewController);

    if (!v14)
    {
      v17 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "Missing presenting view controller, skipping setting express pass.", buf, 2u);
      }

      if (v12)
      {
        v12[2](v12, 0);
      }

      goto LABEL_14;
    }

    if (objc_opt_respondsToSelector())
    {
      v15 = objc_loadWeakRetained(&self->_presentingViewController);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __98__PKExpressPassController_setExpressModeWithPassConfiguration_requiresAuth_credential_completion___block_invoke;
      v24[3] = &unk_1E79D1578;
      v25 = v12;
      [WeakRetained setExpressWithPassConfiguration:v10 visibleViewController:v15 requiresAuth:v8 completion:v24];

      v16 = v25;
LABEL_13:

LABEL_14:
      return;
    }

    if (objc_opt_respondsToSelector())
    {
      v18 = [v10 passInformation];
      v19 = objc_loadWeakRetained(&self->_presentingViewController);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __98__PKExpressPassController_setExpressModeWithPassConfiguration_requiresAuth_credential_completion___block_invoke_2;
      v22[3] = &unk_1E79D1550;
      v22[4] = self;
      v23 = v12;
      [WeakRetained setExpressWithPassInformation:v18 visibleViewController:v19 requiresAuth:v8 completion:v22];

      v16 = v23;
      goto LABEL_13;
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __98__PKExpressPassController_setExpressModeWithPassConfiguration_requiresAuth_credential_completion___block_invoke_4;
    v20[3] = &unk_1E79D1578;
    v21 = v12;
    [WeakRetained setExpressWithPassConfiguration:v10 credential:v11 completion:v20];
    v16 = v21;
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t __98__PKExpressPassController_setExpressModeWithPassConfiguration_requiresAuth_credential_completion___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    if (!a2)
    {
      a3 = 0;
    }

    return (*(result + 16))(result, a3);
  }

  return result;
}

void __98__PKExpressPassController_setExpressModeWithPassConfiguration_requiresAuth_credential_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v7 = *(a1 + 40);
  if (v7)
  {
    if (a2)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __98__PKExpressPassController_setExpressModeWithPassConfiguration_requiresAuth_credential_completion___block_invoke_3;
      v9[3] = &unk_1E79DDD90;
      v9[4] = *(a1 + 32);
      v8 = [v5 pk_setBySafelyApplyingBlock:v9];
      (*(v7 + 16))(v7, v8);
    }

    else
    {
      (*(v7 + 16))(*(a1 + 40), 0);
    }
  }
}

PKExpressPassConfiguration *__98__PKExpressPassController_setExpressModeWithPassConfiguration_requiresAuth_credential_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((v2 + 16));
  v5 = [v3 passUniqueIdentifier];
  v6 = [WeakRetained passWithUniqueID:v5];
  v7 = [v6 secureElementPass];

  v8 = [[PKExpressPassConfiguration alloc] initWithPassInformation:v3 forSecureElementPass:v7];

  return v8;
}

uint64_t __98__PKExpressPassController_setExpressModeWithPassConfiguration_requiresAuth_credential_completion___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (void)setExpressModeWithPassInformation:(id)a3 credential:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_passLibraryDataProvider);
  v12 = [v10 passUniqueIdentifier];
  v13 = [WeakRetained passWithUniqueID:v12];
  v14 = [v13 secureElementPass];

  v15 = [[PKExpressPassConfiguration alloc] initWithPassInformation:v10 forSecureElementPass:v14];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __83__PKExpressPassController_setExpressModeWithPassInformation_credential_completion___block_invoke;
  v17[3] = &unk_1E79D1300;
  v18 = v8;
  v16 = v8;
  [(PKExpressPassController *)self setExpressModeWithPassConfiguration:v15 requiresAuth:1 credential:v9 completion:v17];
}

void __83__PKExpressPassController_setExpressModeWithPassInformation_credential_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 pk_setByApplyingBlock:&__block_literal_global_172];
  (*(v2 + 16))(v2, v3);
}

- (void)_disableExpressModeForPassWithUniqueIdentifier:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_paymentDataProvider);
  if (self->_isForWatch)
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = objc_loadWeakRetained(&self->_presentingViewController);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __89__PKExpressPassController__disableExpressModeForPassWithUniqueIdentifier_withCompletion___block_invoke;
      v15[3] = &unk_1E79D1550;
      v10 = &v16;
      v15[4] = self;
      v16 = v7;
      v11 = v7;
      [WeakRetained removeExpressPassWithUniqueIdentifier:v6 visibleViewController:v9 completion:v15];

LABEL_6:
      return;
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __89__PKExpressPassController__disableExpressModeForPassWithUniqueIdentifier_withCompletion___block_invoke_3;
    v13[3] = &unk_1E79D1578;
    v10 = &v14;
    v14 = v7;
    v12 = v7;
    [WeakRetained removeExpressPassWithUniqueIdentifier:v6 completion:v13];
    goto LABEL_6;
  }

  __break(1u);
}

void __89__PKExpressPassController__disableExpressModeForPassWithUniqueIdentifier_withCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v7 = *(a1 + 40);
  if (v7)
  {
    if (a2)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __89__PKExpressPassController__disableExpressModeForPassWithUniqueIdentifier_withCompletion___block_invoke_2;
      v9[3] = &unk_1E79DDD90;
      v9[4] = *(a1 + 32);
      v8 = [v5 pk_setBySafelyApplyingBlock:v9];
      (*(v7 + 16))(v7, v8);
    }

    else
    {
      (*(v7 + 16))(*(a1 + 40), 0);
    }
  }
}

PKExpressPassConfiguration *__89__PKExpressPassController__disableExpressModeForPassWithUniqueIdentifier_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((v2 + 16));
  v5 = [v3 passUniqueIdentifier];
  v6 = [WeakRetained passWithUniqueID:v5];
  v7 = [v6 secureElementPass];

  v8 = [[PKExpressPassConfiguration alloc] initWithPassInformation:v3 forSecureElementPass:v7];

  return v8;
}

uint64_t __89__PKExpressPassController__disableExpressModeForPassWithUniqueIdentifier_withCompletion___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (void)disableExpressModeForPass:(id)a3 withCompletion:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a3 uniqueID];
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__PKExpressPassController_disableExpressModeForPass_withCompletion___block_invoke;
  v10[3] = &unk_1E79D1300;
  v11 = v6;
  v9 = v6;
  [(PKExpressPassController *)self disableExpressModeForPassesWithUniqueIdentifiers:v8 withCompletion:v10];
}

void __68__PKExpressPassController_disableExpressModeForPass_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 pk_setByApplyingBlock:&__block_literal_global_74];
  (*(v2 + 16))(v2, v3);
}

- (void)disableExpressModeForPassesWithUniqueIdentifiers:(id)a3 withCompletion:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v20 = a3;
  v21 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_paymentDataProvider);
  v19 = WeakRetained;
  if (!self->_isForWatch)
  {
LABEL_5:
    v10 = objc_alloc_init(PKAsyncUnaryOperationComposer);
    objc_initWeak(&location, self);
    *buf = 0;
    v32 = buf;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__60;
    v35 = __Block_byref_object_dispose__60;
    v36 = 0;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = v20;
    v12 = [v11 countByEnumeratingWithState:&v27 objects:v40 count:{16, v19}];
    if (v12)
    {
      v13 = *v28;
      do
      {
        v14 = 0;
        do
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v27 + 1) + 8 * v14);
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = __91__PKExpressPassController_disableExpressModeForPassesWithUniqueIdentifiers_withCompletion___block_invoke_78;
          v25[3] = &unk_1E79CF1D0;
          objc_copyWeak(&v26, &location);
          v25[4] = v15;
          v25[5] = buf;
          [(PKAsyncUnaryOperationComposer *)v10 addOperation:v25];
          objc_destroyWeak(&v26);
          ++v14;
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v27 objects:v40 count:16];
      }

      while (v12);
    }

    v16 = [MEMORY[0x1E695DFB0] null];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __91__PKExpressPassController_disableExpressModeForPassesWithUniqueIdentifiers_withCompletion___block_invoke_3;
    v22[3] = &unk_1E79CB818;
    v23 = v21;
    v24 = buf;
    v17 = [(PKAsyncUnaryOperationComposer *)v10 evaluateWithInput:v16 completion:v22];

    _Block_object_dispose(buf, 8);
    objc_destroyWeak(&location);

    goto LABEL_13;
  }

  v7 = WeakRetained;
  v8 = objc_loadWeakRetained(&self->_presentingViewController);

  if (v8)
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = objc_loadWeakRetained(&self->_presentingViewController);
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __91__PKExpressPassController_disableExpressModeForPassesWithUniqueIdentifiers_withCompletion___block_invoke;
      v38[3] = &unk_1E79D1578;
      v39 = v21;
      [v7 removeExpressPassesWithUniqueIdentifiers:v20 visibleViewController:v9 completion:{v38, v19}];

      goto LABEL_13;
    }

    goto LABEL_5;
  }

  v18 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "Missing presenting view controller when removing express passes.", buf, 2u);
  }

  if (v21)
  {
    (*(v21 + 2))(v21, 0);
  }

LABEL_13:
}

uint64_t __91__PKExpressPassController_disableExpressModeForPassesWithUniqueIdentifiers_withCompletion___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    if (!a2)
    {
      a3 = 0;
    }

    return (*(result + 16))(result, a3);
  }

  return result;
}

void __91__PKExpressPassController_disableExpressModeForPassesWithUniqueIdentifiers_withCompletion___block_invoke_78(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __91__PKExpressPassController_disableExpressModeForPassesWithUniqueIdentifiers_withCompletion___block_invoke_2;
  v13[3] = &unk_1E79D5F38;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v15 = v7;
  v16 = v9;
  v14 = v6;
  v11 = v6;
  v12 = v7;
  [WeakRetained _disableExpressModeForPassWithUniqueIdentifier:v10 withCompletion:v13];
}

void __91__PKExpressPassController_disableExpressModeForPassesWithUniqueIdentifiers_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 40) + 16))();
}

uint64_t __91__PKExpressPassController_disableExpressModeForPassesWithUniqueIdentifiers_withCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

- (id)enabledExpressPasses
{
  v26 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_paymentDataProvider);
  v4 = objc_opt_respondsToSelector();

  v5 = objc_loadWeakRetained(&self->_paymentDataProvider);
  v6 = v5;
  if (v4)
  {
    v7 = [v5 expressPassConfigurations];
LABEL_5:

    goto LABEL_7;
  }

  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v6 = objc_loadWeakRetained(&self->_paymentDataProvider);
    v9 = [v6 expressPassesInformation];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __47__PKExpressPassController_enabledExpressPasses__block_invoke;
    v24[3] = &unk_1E79DDD90;
    v24[4] = self;
    v7 = [v9 pk_setBySafelyApplyingBlock:v24];

    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:
  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        v17 = [v16 passUniqueIdentifier];
        if (v17)
        {
          [v10 setObject:v16 forKey:v17];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v13);
  }

  v18 = [v10 copy];

  return v18;
}

PKExpressPassConfiguration *__47__PKExpressPassController_enabledExpressPasses__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((v2 + 16));
  v5 = [v3 passUniqueIdentifier];
  v6 = [WeakRetained passWithUniqueID:v5];
  v7 = [v6 secureElementPass];

  v8 = [[PKExpressPassConfiguration alloc] initWithPassInformation:v3 forSecureElementPass:v7];

  return v8;
}

- (id)expressState
{
  v2 = [(PKExpressPassController *)self enabledExpressPasses];
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v2, "count")}];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__PKExpressPassController_expressState__block_invoke;
  v7[3] = &unk_1E79DDDB8;
  v8 = v3;
  v4 = v3;
  [v2 enumerateKeysAndObjectsUsingBlock:v7];
  v5 = [v4 copy];

  return v5;
}

void __39__PKExpressPassController_expressState__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 passInformation];
  [v4 setObject:v6 forKey:v5];
}

- (BOOL)deviceUsesAutomaticAuthorization
{
  v7 = 0;
  v6 = 0;
  v3 = [PKSecureElement supportsExpressForAutomaticSelectionTechnologyType:3 byHardware:&v7 outError:&v6];
  v4 = 0;
  if (v3 && (v7 & 1) == 0 && !v6)
  {
    return !self->_isForWatch;
  }

  return v4;
}

- (id)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end
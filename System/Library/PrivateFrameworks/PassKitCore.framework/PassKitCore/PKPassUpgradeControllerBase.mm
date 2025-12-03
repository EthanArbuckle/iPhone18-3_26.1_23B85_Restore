@interface PKPassUpgradeControllerBase
- (PKPassUpgradeControllerBase)initWithWebService:(id)service addPaymentPassToLibrary:(id)library;
- (void)appletsDidUpdate;
- (void)completePassUpgradeForPassUniqueID:(id)d withError:(id)error;
- (void)downloadUpgradedPassForPassUniqueID:(id)d atURL:(id)l;
- (void)requestPassUpgrade:(id)upgrade pass:(id)pass diagnosticReason:(id)reason completion:(id)completion;
@end

@implementation PKPassUpgradeControllerBase

- (PKPassUpgradeControllerBase)initWithWebService:(id)service addPaymentPassToLibrary:(id)library
{
  serviceCopy = service;
  libraryCopy = library;
  v16.receiver = self;
  v16.super_class = PKPassUpgradeControllerBase;
  v9 = [(PKPassUpgradeControllerBase *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_paymentWebService, service);
    v11 = _Block_copy(libraryCopy);
    addPaymentPassToLibrary = v10->_addPaymentPassToLibrary;
    v10->_addPaymentPassToLibrary = v11;

    v10->_pass_upgrade_lock._os_unfair_lock_opaque = 0;
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pendingPassUpgrades = v10->_pendingPassUpgrades;
    v10->_pendingPassUpgrades = v13;
  }

  return v10;
}

- (void)requestPassUpgrade:(id)upgrade pass:(id)pass diagnosticReason:(id)reason completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  upgradeCopy = upgrade;
  passCopy = pass;
  reasonCopy = reason;
  completionCopy = completion;
  if (completionCopy)
  {
    uniqueID = [passCopy uniqueID];
    v15 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      type = [upgradeCopy type];
      v27 = 2112;
      v28 = uniqueID;
      _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Requesting pass upgrade with reason %lu for pass %@", buf, 0x16u);
    }

    os_unfair_lock_lock(&self->_pass_upgrade_lock);
    v16 = [(NSMutableDictionary *)self->_pendingPassUpgrades objectForKey:uniqueID];
    if (v16)
    {
      v17 = v16;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        type = uniqueID;
        _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Coalescing pass upgrade requests for pass %@", buf, 0xCu);
      }

      completionHandlers = [(PKPendingPassUpgrade *)v17 completionHandlers];
      v19 = _Block_copy(completionCopy);
      [completionHandlers addObject:v19];

      os_unfair_lock_unlock(&self->_pass_upgrade_lock);
    }

    else
    {
      v17 = [[PKPendingPassUpgrade alloc] initWithRequest:upgradeCopy completionHandler:completionCopy];
      [(NSMutableDictionary *)self->_pendingPassUpgrades setObject:v17 forKeyedSubscript:uniqueID];
      os_unfair_lock_unlock(&self->_pass_upgrade_lock);
      v20 = [[PKPaymentRequestPassUpdateRequest alloc] initWithPaymentPass:passCopy updateRequest:upgradeCopy];
      v21 = v20;
      if (reasonCopy)
      {
        [(PKWebServiceRequest *)v20 addDiagnosticReason:reasonCopy];
      }

      paymentWebService = self->_paymentWebService;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __83__PKPassUpgradeControllerBase_requestPassUpgrade_pass_diagnosticReason_completion___block_invoke;
      v23[3] = &unk_1E79E27C8;
      v23[4] = self;
      v24 = uniqueID;
      [(PKPaymentWebService *)paymentWebService passUpgradeWithRequest:v21 completion:v23];
    }
  }
}

void __83__PKPassUpgradeControllerBase_requestPassUpgrade_pass_diagnosticReason_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 || !v6)
  {
    v25 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(a1 + 40);
      *buf = 138412546;
      v36 = v26;
      v37 = 2112;
      v38 = v5;
      _os_log_impl(&dword_1AD337000, v25, OS_LOG_TYPE_DEFAULT, "Pass upgrade (%@) request failed with error: %@", buf, 0x16u);
    }

    [*(a1 + 32) completePassUpgradeForPassUniqueID:*(a1 + 40) withError:v5];
  }

  else
  {
    v8 = MEMORY[0x1E695DFF8];
    v9 = [v6 passURL];
    v10 = [v8 URLWithString:v9];

    v11 = [v7 appletState];
    v12 = v11 != 1;
    v13 = v11 == 1;
    os_unfair_lock_lock((*(a1 + 32) + 16));
    v14 = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];
    [v14 setWebRequestFinished:1];
    [v14 setRequiresAppletUpgrade:v13];
    [v14 setUpgradePassURL:v10];
    v15 = v12 | [v14 appletDidUpgrade];
    [v14 setPassUpgradeInProgress:v15 & 1];
    v16 = [v14 upgradeIsComplete];
    v17 = *(a1 + 32);
    if (v16)
    {
      [*(v17 + 24) removeObjectForKey:*(a1 + 40)];
      os_unfair_lock_unlock((*(a1 + 32) + 16));
      v18 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 40);
        *buf = 138412290;
        v36 = v19;
        _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "Pass upgrade completed early for pass %@", buf, 0xCu);
      }

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v20 = [v14 completionHandlers];
      v21 = [v20 countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v32;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v32 != v23)
            {
              objc_enumerationMutation(v20);
            }

            (*(*(*(&v31 + 1) + 8 * i) + 16))();
          }

          v22 = [v20 countByEnumeratingWithState:&v31 objects:v39 count:16];
        }

        while (v22);
      }
    }

    else
    {
      os_unfair_lock_unlock((v17 + 16));
      if (v15)
      {
        if (v10)
        {
          [*(a1 + 32) downloadUpgradedPassForPassUniqueID:*(a1 + 40) atURL:v10];
        }

        else
        {
          v29 = PKLogFacilityTypeGetObject(7uLL);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = *(a1 + 40);
            *buf = 138412290;
            v36 = v30;
            _os_log_impl(&dword_1AD337000, v29, OS_LOG_TYPE_DEFAULT, "Pass upgrade (%@) has no required work?", buf, 0xCu);
          }

          [*(a1 + 32) completePassUpgradeForPassUniqueID:*(a1 + 40) withError:0];
        }
      }

      else
      {
        v27 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = *(a1 + 40);
          *buf = 138412290;
          v36 = v28;
          _os_log_impl(&dword_1AD337000, v27, OS_LOG_TYPE_DEFAULT, "Pass upgrade waiting for applet update (%@)", buf, 0xCu);
        }
      }
    }
  }
}

- (void)downloadUpgradedPassForPassUniqueID:(id)d atURL:(id)l
{
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  lCopy = l;
  v8 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = dCopy;
    v15 = 2112;
    v16 = lCopy;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Downloading new pass for pass upgrade (%@) at url: %@", buf, 0x16u);
  }

  paymentWebService = self->_paymentWebService;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__PKPassUpgradeControllerBase_downloadUpgradedPassForPassUniqueID_atURL___block_invoke;
  v11[3] = &unk_1E79E2818;
  v11[4] = self;
  v12 = dCopy;
  v10 = dCopy;
  [(PKPaymentWebService *)paymentWebService passAtURL:lCopy completion:v11];
}

void __73__PKPassUpgradeControllerBase_downloadUpgradedPassForPassUniqueID_atURL___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a2 == 1 && v5)
  {
    v7 = [*(*(a1 + 32) + 32) targetDevice];
    v8 = [v7 secureElementIdentifiers];

    v9 = [PKDownloadRemoteAssetConfiguration configurationWithSEIDs:v8];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __73__PKPassUpgradeControllerBase_downloadUpgradedPassForPassUniqueID_atURL___block_invoke_2;
    v14[3] = &unk_1E79E27F0;
    v14[4] = *(a1 + 32);
    v15 = v6;
    v16 = *(a1 + 40);
    [v15 downloadRemoteAssetsWithConfiguration:v9 completion:v14];
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      *buf = 138412290;
      v18 = v11;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Failed downloading new pass for pass upgrade (%@)", buf, 0xCu);
    }

    v13 = *(a1 + 32);
    v12 = *(a1 + 40);
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPaymentErrorDomain" code:a2 userInfo:0];
    [v13 completePassUpgradeForPassUniqueID:v12 withError:v8];
  }
}

void __73__PKPassUpgradeControllerBase_downloadUpgradedPassForPassUniqueID_atURL___block_invoke_2(id *a1, int a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    if (v5)
    {
      v7 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = a1[6];
        *buf = 138412546;
        v16 = v8;
        v17 = 2112;
        v18 = v6;
        _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Downloading new pass assets for pass upgrade (%@) failed: %@", buf, 0x16u);
      }

      [a1[4] completePassUpgradeForPassUniqueID:a1[6] withError:v6];
    }

    else
    {
      v9 = a1[4];
      v10 = a1[5];
      v11 = v9[1];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __73__PKPassUpgradeControllerBase_downloadUpgradedPassForPassUniqueID_atURL___block_invoke_3;
      v12[3] = &unk_1E79D0388;
      v12[4] = v9;
      v13 = a1[6];
      v14 = a1[5];
      (*(v11 + 16))(v11, v10, v12);
    }
  }
}

void __73__PKPassUpgradeControllerBase_downloadUpgradedPassForPassUniqueID_atURL___block_invoke_3(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  os_unfair_lock_lock((a1[4] + 16));
  v4 = [*(a1[4] + 24) objectForKey:a1[5]];
  [v4 setUpgradedPass:a1[6]];
  v5 = [v4 upgradeIsComplete];
  v6 = a1[4];
  if (v5)
  {
    [*(v6 + 24) removeObjectForKey:a1[5]];
    os_unfair_lock_unlock((a1[4] + 16));
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[5];
      *buf = 138412290;
      v21 = v8;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Pass upgrade completed for pass %@", buf, 0xCu);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [v4 completionHandlers];
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if (v3)
          {
            v14 = 0;
          }

          else
          {
            v14 = a1[6];
          }

          (*(*(*(&v15 + 1) + 8 * i) + 16))(*(*(&v15 + 1) + 8 * i), v3, v14);
        }

        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }

  else
  {
    os_unfair_lock_unlock((v6 + 16));
  }
}

- (void)completePassUpgradeForPassUniqueID:(id)d withError:(id)error
{
  v27 = *MEMORY[0x1E69E9840];
  dCopy = d;
  errorCopy = error;
  os_unfair_lock_lock(&self->_pass_upgrade_lock);
  v8 = [(NSMutableDictionary *)self->_pendingPassUpgrades objectForKey:dCopy];
  [(NSMutableDictionary *)self->_pendingPassUpgrades removeObjectForKey:dCopy];
  os_unfair_lock_unlock(&self->_pass_upgrade_lock);
  v9 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    upgradedPass = [v8 upgradedPass];
    *buf = 138412802;
    v22 = dCopy;
    v23 = 1024;
    v24 = upgradedPass != 0;
    v25 = 1024;
    appletDidUpgrade = [v8 appletDidUpgrade];
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Pass upgrade (%@) failed: pass upgrade %d, applet updated %d", buf, 0x18u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  completionHandlers = [v8 completionHandlers];
  v12 = [completionHandlers countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(completionHandlers);
        }

        (*(*(*(&v16 + 1) + 8 * v15++) + 16))();
      }

      while (v13 != v15);
      v13 = [completionHandlers countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)appletsDidUpdate
{
  v68 = *MEMORY[0x1E69E9840];
  v3 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Pass Upgrade: Applets did update", buf, 2u);
  }

  v45 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
  os_unfair_lock_lock(&self->_pass_upgrade_lock);
  v4 = [(NSMutableDictionary *)self->_pendingPassUpgrades copy];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v58 objects:v67 count:16];
  v42 = v5;
  if (v6)
  {
    v7 = v6;
    v8 = *v59;
    do
    {
      v9 = 0;
      do
      {
        if (*v59 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v58 + 1) + 8 * v9);
        v11 = [v5 objectForKeyedSubscript:v10];
        if ([v11 requiresAppletUpgrade] && (objc_msgSend(v11, "appletDidUpgrade") & 1) == 0)
        {
          [v11 setAppletDidUpgrade:1];
          if ([v11 upgradeIsComplete])
          {
            [v45 setObject:v11 forKeyedSubscript:v10];
            [(NSMutableDictionary *)self->_pendingPassUpgrades removeObjectForKey:v10];
            goto LABEL_19;
          }

          selfCopy = self;
          upgradePassURL = [v11 upgradePassURL];
          if (upgradePassURL && (v14 = upgradePassURL, [v11 upgradedPass], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, !v15))
          {
            if (([v11 passUpgradeInProgress] & 1) == 0)
            {
              [v11 setPassUpgradeInProgress:1];
              [v41 setObject:v11 forKeyedSubscript:v10];
              goto LABEL_17;
            }

            self = selfCopy;
            if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v66 = v10;
              _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Pass download already in progress for pass upgrade (%@)", buf, 0xCu);
            }
          }

          else
          {
            if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v66 = v10;
              _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Pass upgrade %@ in invalid state", buf, 0xCu);
            }

LABEL_17:
            self = selfCopy;
          }

          v5 = v42;
        }

LABEL_19:

        ++v9;
      }

      while (v7 != v9);
      v16 = [v5 countByEnumeratingWithState:&v58 objects:v67 count:16];
      v7 = v16;
    }

    while (v16);
  }

  os_unfair_lock_unlock(&self->_pass_upgrade_lock);
  if ([v45 count])
  {
    selfCopy2 = self;
    allKeys = [v45 allKeys];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v66 = allKeys;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Applet update occured for pass upgrades: %@", buf, 0xCu);
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = allKeys;
    v18 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
    if (v18)
    {
      v19 = v18;
      v44 = *v55;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v55 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v54 + 1) + 8 * i);
          v22 = [v45 objectForKeyedSubscript:v21];
          if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v66 = v21;
            _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Pass upgrade completed for pass %@", buf, 0xCu);
          }

          v23 = v3;

          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          completionHandlers = [v22 completionHandlers];
          v25 = [completionHandlers countByEnumeratingWithState:&v50 objects:v63 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v51;
            do
            {
              for (j = 0; j != v26; ++j)
              {
                if (*v51 != v27)
                {
                  objc_enumerationMutation(completionHandlers);
                }

                v29 = *(*(&v50 + 1) + 8 * j);
                upgradedPass = [v22 upgradedPass];
                (*(v29 + 16))(v29, 0, upgradedPass);
              }

              v26 = [completionHandlers countByEnumeratingWithState:&v50 objects:v63 count:16];
            }

            while (v26);
          }

          v3 = v23;
        }

        v19 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
      }

      while (v19);
    }

    self = selfCopy2;
    v5 = v42;
  }

  if ([v41 count])
  {
    allKeys2 = [v41 allKeys];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v66 = allKeys2;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Starting new pass downloads for pass upgrades: %@", buf, 0xCu);
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v32 = allKeys2;
    v33 = [v32 countByEnumeratingWithState:&v46 objects:v62 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v47;
      do
      {
        for (k = 0; k != v34; ++k)
        {
          if (*v47 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v46 + 1) + 8 * k);
          v38 = [v41 objectForKeyedSubscript:v37];
          upgradePassURL2 = [v38 upgradePassURL];
          [(PKPassUpgradeControllerBase *)self downloadUpgradedPassForPassUniqueID:v37 atURL:upgradePassURL2];
        }

        v34 = [v32 countByEnumeratingWithState:&v46 objects:v62 count:16];
      }

      while (v34);
    }

    v5 = v42;
  }
}

@end
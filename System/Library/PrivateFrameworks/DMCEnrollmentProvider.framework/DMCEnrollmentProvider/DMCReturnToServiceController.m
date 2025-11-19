@interface DMCReturnToServiceController
- (BOOL)installWiFiProfileIfNeeded:(id *)a3;
- (BOOL)shouldDoReturnToService;
- (DMCObliterationShelter)obliterationShelter;
- (DMCReturnToServiceController)init;
- (id)_ORGONotSupportedError;
- (id)_cloudConfigMissingError;
- (id)_configurationURLMissingError;
- (id)_webURLNotSupportedError;
- (id)languageStrings;
- (id)localeString;
- (void)_fetchAndInstallMDMProfileIfNeededWithCloudConfig:(id)a3 completionHandler:(id)a4;
- (void)_fetchAndStoreCloudConfigurationIfNeededWithCompletionHandler:(id)a3;
- (void)_handleORGOEnrollmentWithCompletionHandler:(id)a3;
- (void)_markWiFiProfileAsManagedIfNeeded;
- (void)configureMDMWithCompletionHandler:(id)a3;
- (void)requestMAIDAuthenticationWithManagedAppleID:(id)a3 personaID:(id)a4 ephemeral:(BOOL)a5 requireAppleMAID:(BOOL)a6 completionHandler:(id)a7;
- (void)requestMAIDSignInWithAuthenticationResults:(id)a3 personaID:(id)a4 makeiTunesAccountActive:(BOOL)a5 completionHandler:(id)a6;
- (void)returnToServiceFlowCompleted;
@end

@implementation DMCReturnToServiceController

- (DMCReturnToServiceController)init
{
  v6.receiver = self;
  v6.super_class = DMCReturnToServiceController;
  v2 = [(DMCReturnToServiceController *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("DMCReturnToServiceController_worker_queue", 0);
    workerQueue = v2->_workerQueue;
    v2->_workerQueue = v3;
  }

  return v2;
}

- (BOOL)shouldDoReturnToService
{
  v2 = [(DMCReturnToServiceController *)self obliterationShelter];
  v3 = [v2 hasConfigFile];

  return v3;
}

- (id)languageStrings
{
  if ([(DMCReturnToServiceController *)self shouldDoReturnToService])
  {
    v3 = [(DMCReturnToServiceController *)self obliterationShelter];
    v4 = [v3 languageStrings];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)localeString
{
  if ([(DMCReturnToServiceController *)self shouldDoReturnToService])
  {
    v3 = [(DMCReturnToServiceController *)self obliterationShelter];
    v4 = [v3 localeString];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)installWiFiProfileIfNeeded:(id *)a3
{
  v18 = *MEMORY[0x277D85DE8];
  if (![(DMCReturnToServiceController *)self shouldDoReturnToService])
  {
    return 1;
  }

  v5 = [(DMCReturnToServiceController *)self obliterationShelter];
  v6 = [v5 wifiProfileData];

  if (v6)
  {
    v7 = [MEMORY[0x277D262A0] sharedConnection];
    v15 = 0;
    v8 = [v7 installProfileData:v6 options:0 outError:&v15];
    v9 = v15;

    v10 = v9 == 0;
    if (v9)
    {
      v11 = *DMCLogObjects();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v17 = v9;
        _os_log_impl(&dword_247E7D000, v11, OS_LOG_TYPE_ERROR, "Failed to install WiFi data with error: %{public}@", buf, 0xCu);
      }

      if (a3)
      {
        v12 = v9;
        *a3 = v9;
      }
    }
  }

  else
  {
    v13 = *DMCLogObjects();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247E7D000, v13, OS_LOG_TYPE_DEFAULT, "No WiFi data, return.", buf, 2u);
    }

    v10 = 1;
  }

  return v10;
}

- (void)configureMDMWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(DMCReturnToServiceController *)self workerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__DMCReturnToServiceController_configureMDMWithCompletionHandler___block_invoke;
  v7[3] = &unk_278EE7830;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __66__DMCReturnToServiceController_configureMDMWithCompletionHandler___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) shouldDoReturnToService])
  {
    v2 = *(a1 + 32);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __66__DMCReturnToServiceController_configureMDMWithCompletionHandler___block_invoke_2;
    v4[3] = &unk_278EE7F80;
    v4[4] = v2;
    v5 = *(a1 + 40);
    [v2 _fetchAndStoreCloudConfigurationIfNeededWithCompletionHandler:v4];
  }

  else
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }
}

void __66__DMCReturnToServiceController_configureMDMWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = [*(a1 + 32) obliterationShelter];
    [v7 clear];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __66__DMCReturnToServiceController_configureMDMWithCompletionHandler___block_invoke_3;
    v8[3] = &unk_278EE7F58;
    v9 = *(a1 + 40);
    [v6 _fetchAndInstallMDMProfileIfNeededWithCloudConfig:a2 completionHandler:v8];
  }
}

- (void)returnToServiceFlowCompleted
{
  if ([(DMCReturnToServiceController *)self shouldDoReturnToService])
  {
    v3 = [(DMCReturnToServiceController *)self obliterationShelter];
    [v3 clear];
  }
}

- (void)_fetchAndStoreCloudConfigurationIfNeededWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(DMCReturnToServiceController *)self workerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __94__DMCReturnToServiceController__fetchAndStoreCloudConfigurationIfNeededWithCompletionHandler___block_invoke;
  v7[3] = &unk_278EE7830;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __94__DMCReturnToServiceController__fetchAndStoreCloudConfigurationIfNeededWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [*(a1 + 32) obliterationShelter];
  v4 = [v3 cloudConfigurationDetails];

  v5 = [v2 activationRecordIndicatesCloudConfigurationIsAvailable];
  v6 = *DMCLogObjects();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if ((v5 & 1) != 0 || v4)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_247E7D000, v6, OS_LOG_TYPE_INFO, "Activation record indicates cloud configuration is available, will fetch...", buf, 2u);
    }

    v8 = [v2 cloudConfigurationDetails];
    if (v8)
    {
      v9 = *DMCLogObjects();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_247E7D000, v9, OS_LOG_TYPE_INFO, "Cloud Configuration is available already, returning...", buf, 2u);
      }

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __94__DMCReturnToServiceController__fetchAndStoreCloudConfigurationIfNeededWithCompletionHandler___block_invoke_4;
      v17 = &unk_278EE7FA8;
      v19 = *(a1 + 40);
      v10 = v2;
      v18 = v10;
      v11 = _Block_copy(&v14);
      v12 = *DMCLogObjects();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (v5)
      {
        if (v13)
        {
          *buf = 0;
          _os_log_impl(&dword_247E7D000, v12, OS_LOG_TYPE_DEFAULT, "Fetching cloud config from cloud...", buf, 2u);
        }

        [v10 retrieveAndStoreCloudConfigurationDetailsCompletionBlock:{v11, v14, v15, v16, v17}];
      }

      else
      {
        if (v13)
        {
          *buf = 0;
          _os_log_impl(&dword_247E7D000, v12, OS_LOG_TYPE_DEFAULT, "Restoring stashed cloud config from disk...", buf, 2u);
        }

        [v10 storeCloudConfigurationDetails:v4 completion:{v11, v14, v15, v16, v17}];
      }
    }
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_247E7D000, v6, OS_LOG_TYPE_INFO, "No cloud configuration according to activation record and obliteration shelter.", buf, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __94__DMCReturnToServiceController__fetchAndStoreCloudConfigurationIfNeededWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *DMCLogObjects();
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = v3;
      _os_log_impl(&dword_247E7D000, v4, OS_LOG_TYPE_ERROR, "Failed to retrieve and store cloud configuration with error: %{public}@", &v7, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_247E7D000, v4, OS_LOG_TYPE_INFO, "Cloud Configuration fetched & stored.", &v7, 2u);
    }

    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) cloudConfigurationDetails];
    (*(v5 + 16))(v5, v6, 0);
  }
}

- (void)_fetchAndInstallMDMProfileIfNeededWithCloudConfig:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DMCReturnToServiceController *)self workerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __100__DMCReturnToServiceController__fetchAndInstallMDMProfileIfNeededWithCloudConfig_completionHandler___block_invoke;
  block[3] = &unk_278EE8048;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __100__DMCReturnToServiceController__fetchAndInstallMDMProfileIfNeededWithCloudConfig_completionHandler___block_invoke(id *a1)
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 installedMDMProfileIdentifier];

  if (v3)
  {
    (*(a1[6] + 2))();
  }

  else
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __100__DMCReturnToServiceController__fetchAndInstallMDMProfileIfNeededWithCloudConfig_completionHandler___block_invoke_2;
    aBlock[3] = &unk_278EE7FF8;
    v4 = v2;
    v38 = v4;
    v5 = a1[4];
    v6 = a1[5];
    v39 = v5;
    v40 = v6;
    v7 = _Block_copy(aBlock);
    v8 = [a1[5] obliterationShelter];
    v9 = [v8 isSupervised];

    if ((v9 & 1) != 0 || ([a1[4] objectForKeyedSubscript:*MEMORY[0x277D03090]], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "BOOLValue"), v10, !v11))
    {
      v13 = [a1[5] obliterationShelter];
      v14 = [v13 mdmProfileData];

      if (v14)
      {
        v15 = *DMCLogObjects();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_247E7D000, v15, OS_LOG_TYPE_INFO, "MDM profile exists.", buf, 2u);
        }

        (v7)[2](v7, v14, a1[6]);
      }

      else
      {
        v16 = a1[4];
        if (v16)
        {
          v17 = [v16 objectForKeyedSubscript:*MEMORY[0x277D03060]];
          if (v17)
          {
            [a1[5] _handleORGOEnrollmentWithCompletionHandler:a1[6]];
          }

          else
          {
            v21 = MEMORY[0x277CBEBC0];
            v22 = [a1[4] objectForKeyedSubscript:*MEMORY[0x277D03048]];
            v23 = [v21 URLWithString:v22];

            if (v23)
            {
              v24 = *DMCLogObjects();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_247E7D000, v24, OS_LOG_TYPE_ERROR, "WebURL is not supported during Return to Service.", buf, 2u);
              }

              v25 = a1[6];
              v26 = [a1[5] _webURLNotSupportedError];
              v25[2](v25, v26);
            }

            else
            {
              v27 = MEMORY[0x277CBEBC0];
              v28 = [a1[4] objectForKeyedSubscript:*MEMORY[0x277D03040]];
              v26 = [v27 URLWithString:v28];

              if (v26)
              {
                v29 = [a1[4] objectForKeyedSubscript:*MEMORY[0x277D26358]];
                v30 = certificatesFromDERCertificateDataArray();
                v33[0] = MEMORY[0x277D85DD0];
                v33[1] = 3221225472;
                v33[2] = __100__DMCReturnToServiceController__fetchAndInstallMDMProfileIfNeededWithCloudConfig_completionHandler___block_invoke_12;
                v33[3] = &unk_278EE8020;
                v34 = a1[6];
                v35 = v7;
                [v4 retrieveCloudConfigurationFromURL:v26 username:0 password:0 anchorCertificates:v30 completionBlock:v33];
              }

              else
              {
                v31 = *DMCLogObjects();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_impl(&dword_247E7D000, v31, OS_LOG_TYPE_ERROR, "Configuration URL is missing.", buf, 2u);
                }

                v32 = a1[6];
                v29 = [a1[5] _configurationURLMissingError];
                v32[2](v32, v29);
              }
            }
          }
        }

        else
        {
          v18 = *DMCLogObjects();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_247E7D000, v18, OS_LOG_TYPE_ERROR, "No local mdm profile or cloud config, returning...", buf, 2u);
          }

          v19 = a1[6];
          v20 = [a1[5] _cloudConfigMissingError];
          v19[2](v19, v20);
        }
      }
    }

    else
    {
      v12 = *DMCLogObjects();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_247E7D000, v12, OS_LOG_TYPE_DEFAULT, "Device was unsupervised and now we are changing supervision state. Abort", buf, 2u);
      }

      (*(a1[6] + 2))();
    }
  }
}

void __100__DMCReturnToServiceController__fetchAndInstallMDMProfileIfNeededWithCloudConfig_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *DMCLogObjects();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v18 = v5;
    _os_log_impl(&dword_247E7D000, v7, OS_LOG_TYPE_INFO, "Storing mdm profile %@...", buf, 0xCu);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __100__DMCReturnToServiceController__fetchAndInstallMDMProfileIfNeededWithCloudConfig_completionHandler___block_invoke_5;
  v12[3] = &unk_278EE7FD0;
  v16 = v6;
  v8 = *(a1 + 32);
  v13 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v14 = v9;
  v15 = v10;
  v11 = v6;
  [v8 storeProfileData:v5 completion:v12];
}

void __100__DMCReturnToServiceController__fetchAndInstallMDMProfileIfNeededWithCloudConfig_completionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *DMCLogObjects();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v3;
      _os_log_impl(&dword_247E7D000, v4, OS_LOG_TYPE_ERROR, "Failed to store mdm data with error: %{public}@", buf, 0xCu);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (*(a1 + 32))
    {
      [*(a1 + 40) cloudConfigurationUIDidCompleteWasApplied:1];
    }

    v5 = *DMCLogObjects();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_247E7D000, v5, OS_LOG_TYPE_INFO, "Installing mdm profile...", buf, 2u);
    }

    v6 = [MEMORY[0x277CBEB38] dictionary];
    [v6 setObject:*MEMORY[0x277D035D8] forKeyedSubscript:*MEMORY[0x277D263E0]];
    v7 = [*(a1 + 48) obliterationShelter];
    v8 = [v7 wifiProfileData];

    if (v8)
    {
      v9 = MEMORY[0x277D26290];
      v10 = [*(a1 + 48) obliterationShelter];
      v11 = [v10 wifiProfileData];
      v12 = [v9 profileWithData:v11 outError:0];

      v13 = [v12 identifier];

      if (v13)
      {
        v14 = [v12 identifier];
        v19 = v14;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
        [v6 setObject:v15 forKeyedSubscript:*MEMORY[0x277D263C8]];
      }
    }

    v16 = *(a1 + 40);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __100__DMCReturnToServiceController__fetchAndInstallMDMProfileIfNeededWithCloudConfig_completionHandler___block_invoke_9;
    v17[3] = &unk_278EE7F58;
    v18 = *(a1 + 56);
    [v16 installStoredProfileDataWithExtraOptions:v6 completion:v17];
  }
}

void __100__DMCReturnToServiceController__fetchAndInstallMDMProfileIfNeededWithCloudConfig_completionHandler___block_invoke_12(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (v5 || !a3)
  {
    v6 = *DMCLogObjects();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_247E7D000, v6, OS_LOG_TYPE_ERROR, "Failed to retrieve mdm profile data with error: %{public}@", &v7, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)_handleORGOEnrollmentWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [objc_alloc(MEMORY[0x277D031A0]) initWithPresenter:self managedConfigurationHelper:v5];
  [(DMCReturnToServiceController *)self setEnrollmentFlowController:v6];

  v7 = [(DMCReturnToServiceController *)self enrollmentFlowController];
  v8 = [MEMORY[0x277D24640] sharedConfiguration];
  v9 = [v8 enrollmentServerURL];
  v10 = [MEMORY[0x277D24640] sharedConfiguration];
  v11 = [v10 enrollmentAnchorCertificates];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__DMCReturnToServiceController__handleORGOEnrollmentWithCompletionHandler___block_invoke;
  v13[3] = &unk_278EE8070;
  v13[4] = self;
  v14 = v4;
  v12 = v4;
  [v7 startORGOEnrollmentFlowWithServiceURL:v9 anchorCertificates:v11 restartIfFail:0 completionHandler:v13];
}

void __75__DMCReturnToServiceController__handleORGOEnrollmentWithCompletionHandler___block_invoke(uint64_t a1, int a2, int a3, void *a4)
{
  v7 = a4;
  v11 = v7;
  if (a2)
  {
    v8 = [MEMORY[0x277D262A0] sharedConnection];
    [v8 cloudConfigurationUIDidCompleteWasApplied:1];

    [*(a1 + 32) _markWiFiProfileAsManagedIfNeeded];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = *(a1 + 40);
    if (a3)
    {
      v10 = [*(a1 + 32) _ORGONotSupportedError];
      (*(v9 + 16))(v9, v10);
    }

    else
    {
      (*(v9 + 16))(*(a1 + 40), v7);
    }
  }
}

- (void)_markWiFiProfileAsManagedIfNeeded
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = [(DMCReturnToServiceController *)self obliterationShelter];
  v4 = [v3 wifiProfileData];

  if (v4)
  {
    v5 = [MEMORY[0x277D262A0] sharedConnection];
    v6 = [v5 installedMDMProfileIdentifier];
    v16 = 0;
    v7 = [MEMORY[0x277D26290] profileWithData:v4 outError:&v16];
    v8 = v16;
    v9 = [v7 identifier];

    if (v8 || ([v5 removeProfileWithIdentifier:v9], -[DMCReturnToServiceController obliterationShelter](self, "obliterationShelter"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "wifiProfileData"), v11 = objc_claimAutoreleasedReturnValue(), v19 = *MEMORY[0x277D26418], v20[0] = v6, objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v20, &v19, 1), v12 = objc_claimAutoreleasedReturnValue(), v15 = 0, v13 = objc_msgSend(v5, "installProfileData:options:outError:", v11, v12, &v15), v8 = v15, v12, v11, v10, v8))
    {
      v14 = *DMCLogObjects();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v18 = v8;
        _os_log_impl(&dword_247E7D000, v14, OS_LOG_TYPE_ERROR, "Failed to update wifi profile with error: %{public}@", buf, 0xCu);
      }
    }
  }
}

- (void)requestMAIDAuthenticationWithManagedAppleID:(id)a3 personaID:(id)a4 ephemeral:(BOOL)a5 requireAppleMAID:(BOOL)a6 completionHandler:(id)a7
{
  v7 = a7;
  v8 = *DMCLogObjects();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v9 = 0;
    _os_log_impl(&dword_247E7D000, v8, OS_LOG_TYPE_ERROR, "Return to Service is not supported with ORGO enrollment + user subscription.", v9, 2u);
  }

  (*(v7 + 2))(v7, 0, 1, 0);
}

- (void)requestMAIDSignInWithAuthenticationResults:(id)a3 personaID:(id)a4 makeiTunesAccountActive:(BOOL)a5 completionHandler:(id)a6
{
  v6 = a6;
  v7 = *DMCLogObjects();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_impl(&dword_247E7D000, v7, OS_LOG_TYPE_ERROR, "Return to Service is not supported with ORGO enrollment + user subscription.", v8, 2u);
  }

  (*(v6 + 2))(v6, 0, 1, 0);
}

- (id)_webURLNotSupportedError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03438];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:16000 descriptionArray:v4 underlyingError:0 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

- (id)_ORGONotSupportedError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03438];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:16003 descriptionArray:v4 underlyingError:0 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

- (id)_cloudConfigMissingError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03438];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:16001 descriptionArray:v4 underlyingError:0 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

- (id)_configurationURLMissingError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03438];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:16002 descriptionArray:v4 underlyingError:0 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

- (DMCObliterationShelter)obliterationShelter
{
  obliterationShelter = self->_obliterationShelter;
  if (!obliterationShelter)
  {
    v4 = objc_opt_new();
    v5 = self->_obliterationShelter;
    self->_obliterationShelter = v4;

    v6 = self->_obliterationShelter;
    v8 = 0;
    [(DMCObliterationShelter *)v6 retrieveWithError:&v8];
    obliterationShelter = self->_obliterationShelter;
  }

  return obliterationShelter;
}

@end
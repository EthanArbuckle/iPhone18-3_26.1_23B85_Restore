@interface DMCMigrationHelper
+ (BOOL)currentEnrollmentStateSupportsMigration;
+ (BOOL)hasPendingEnrollmentWithExistingCloudConfig:(id)a3;
+ (BOOL)isDeviceEligibleForMigrationWithExistingCloudConfig:(id)a3 outReason:(id *)a4;
+ (BOOL)isMigrationMandatoryWithPendingCloudConfig:(id)a3;
+ (BOOL)isMigrationNeededWithExistingCloudConfig:(id)a3 newCloudConfig:(id)a4;
+ (BOOL)isMigrationSupportedWithExistingCloudConfig:(id)a3 outReason:(id *)a4;
+ (BOOL)launchMigrationApplicationWithError:(id *)a3;
+ (BOOL)userInititiatedMigration;
+ (id)_createStartMigrationRequestFailedErrorWithDEPResponse:(id)a3;
+ (id)readPendingCloudConfigDetails;
+ (void)makeEndMigrationRequestIfNeededWithCloudConfig:(id)a3 success:(BOOL)a4 completionHandler:(id)a5;
+ (void)makeStartMigrationRequestWithCloudConfig:(id)a3 completionHandler:(id)a4;
+ (void)setMigrationIncomplete:(BOOL)a3;
+ (void)setUserInititiatedMigration:(BOOL)a3;
@end

@implementation DMCMigrationHelper

+ (BOOL)isDeviceEligibleForMigrationWithExistingCloudConfig:(id)a3 outReason:(id *)a4
{
  v6 = a3;
  if (![DMCMigrationHelper isMigrationSupportedWithExistingCloudConfig:v6 outReason:a4])
  {
    goto LABEL_12;
  }

  if (([a1 currentEnrollmentStateSupportsMigration] & 1) == 0)
  {
    if ([DMCMigrationHelper hasPendingEnrollmentWithExistingCloudConfig:v6])
    {
      if (a4 && *MEMORY[0x277D03408])
      {
        *a4 = *MEMORY[0x277D03408];
      }

      v8 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_247E39000, v8, OS_LOG_TYPE_DEFAULT, "DMCMigrationHelper: Device has pending enrollment, consider it as eligible for migration.", v11, 2u);
      }

      goto LABEL_3;
    }

    v9 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v9, OS_LOG_TYPE_DEFAULT, "DMCMigrationHelper: Migration from non DEP enrolled device is not supported", buf, 2u);
    }

LABEL_12:
    v7 = 0;
    goto LABEL_13;
  }

LABEL_3:
  v7 = 1;
LABEL_13:

  return v7;
}

+ (BOOL)hasPendingEnrollmentWithExistingCloudConfig:(id)a3
{
  v3 = a3;
  if (+[DMCMigrationHelper hasIncompleteMigration])
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 0;
      v5 = "DMCMigrationHelper: Device has incomplete migration!";
      v6 = &v12;
LABEL_8:
      _os_log_impl(&dword_247E39000, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v7 = [objc_alloc(MEMORY[0x277D24640]) initWithCloudConfigDetails:v3];
  v8 = [v7 isStoredProfileInstalled];

  if ((v8 & 1) == 0)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v5 = "DMCMigrationHelper: Device has incomplete MDM enrollment!";
      v6 = &v11;
      goto LABEL_8;
    }

LABEL_9:
    v9 = 1;
    goto LABEL_10;
  }

  v9 = 0;
LABEL_10:

  return v9;
}

+ (BOOL)isMigrationSupportedWithExistingCloudConfig:(id)a3 outReason:(id *)a4
{
  v5 = MEMORY[0x277D24640];
  v6 = a3;
  v7 = [[v5 alloc] initWithCloudConfigDetails:v6];

  if ([v7 isSupervised])
  {
    if ([v7 isTeslaEnrolled])
    {
      v8 = [v7 enrollmentServerInfo];

      if (v8)
      {
        v9 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_247E39000, v9, OS_LOG_TYPE_DEFAULT, "DMCMigrationHelper: Migration of ABE devices is not supported", buf, 2u);
        }

        if (!a4)
        {
          goto LABEL_29;
        }

        v10 = MEMORY[0x277D033E0];
      }

      else if ([v7 userMode] == 1)
      {
        v15 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *v19 = 0;
          _os_log_impl(&dword_247E39000, v15, OS_LOG_TYPE_DEFAULT, "DMCMigrationHelper: Migration of Shared iPad devices is not supported", v19, 2u);
        }

        if (!a4)
        {
          goto LABEL_29;
        }

        v10 = MEMORY[0x277D033F8];
      }

      else
      {
        if (![v7 isRapidReturnToService])
        {
          if (!a4 || !*MEMORY[0x277D033E8])
          {
            v14 = 1;
            goto LABEL_30;
          }

          v13 = *MEMORY[0x277D033E8];
          v14 = 1;
          goto LABEL_18;
        }

        v16 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *v18 = 0;
          _os_log_impl(&dword_247E39000, v16, OS_LOG_TYPE_DEFAULT, "DMCMigrationHelper: Migration of RRTS devices is not supported", v18, 2u);
        }

        if (!a4)
        {
LABEL_29:
          v14 = 0;
          goto LABEL_30;
        }

        v10 = MEMORY[0x277D033F0];
      }
    }

    else
    {
      v12 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&dword_247E39000, v12, OS_LOG_TYPE_DEFAULT, "DMCMigrationHelper: Migration of non DEP enrolled devices is not supported", v21, 2u);
      }

      if (!a4)
      {
        goto LABEL_29;
      }

      v10 = MEMORY[0x277D03408];
    }
  }

  else
  {
    v11 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&dword_247E39000, v11, OS_LOG_TYPE_DEFAULT, "DMCMigrationHelper: Device is not supervised", v22, 2u);
    }

    if (!a4)
    {
      goto LABEL_29;
    }

    v10 = MEMORY[0x277D03400];
  }

  if (!*v10)
  {
    goto LABEL_29;
  }

  v13 = *v10;
  v14 = 0;
LABEL_18:
  *a4 = v13;
LABEL_30:

  return v14;
}

+ (BOOL)isMigrationNeededWithExistingCloudConfig:(id)a3 newCloudConfig:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D24640]) initWithCloudConfigDetails:v6];
    v8 = [v7 migrationDeadline];

    if (!v8)
    {
      v19 = *(DMCLogObjects() + 8);
      v18 = 0;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&dword_247E39000, v19, OS_LOG_TYPE_DEFAULT, "DMCMigrationHelper: new cloud config does not have a migration deadline.", &v25, 2u);
        v18 = 0;
      }

      goto LABEL_17;
    }

    v9 = [objc_alloc(MEMORY[0x277D24640]) initWithCloudConfigDetails:v5];
    v10 = [v9 mdmServerUID];
    v11 = [v7 mdmServerUID];
    v12 = v11;
    if (v11 && ![v11 isEqualToString:v10])
    {
      v20 = [v7 enrollmentServerInfo];

      v21 = *(DMCLogObjects() + 8);
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      if (!v20)
      {
        if (v22)
        {
          v25 = 138543618;
          v26 = v10;
          v27 = 2114;
          v28 = v12;
          _os_log_impl(&dword_247E39000, v21, OS_LOG_TYPE_DEFAULT, "DMCMigrationHelper: server UID has changed from %{public}@ to %{public}@.", &v25, 0x16u);
        }

        v18 = 1;
        goto LABEL_16;
      }

      if (v22)
      {
        LOWORD(v25) = 0;
        v14 = "DMCMigrationHelper: Migration to ABE is not supported";
        v15 = v21;
        v16 = 2;
        goto LABEL_14;
      }
    }

    else
    {
      v13 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138543362;
        v26 = v12;
        v14 = "DMCMigrationHelper: server UID hasn't changed: %{public}@.";
        v15 = v13;
        v16 = 12;
LABEL_14:
        _os_log_impl(&dword_247E39000, v15, OS_LOG_TYPE_DEFAULT, v14, &v25, v16);
      }
    }

    v18 = 0;
LABEL_16:

LABEL_17:
    goto LABEL_18;
  }

  v17 = *(DMCLogObjects() + 8);
  v18 = 0;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v25) = 0;
    _os_log_impl(&dword_247E39000, v17, OS_LOG_TYPE_DEFAULT, "DMCMigrationHelper: new cloud config does not exist.", &v25, 2u);
    v18 = 0;
  }

LABEL_18:

  v23 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (BOOL)isMigrationMandatoryWithPendingCloudConfig:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D24640];
  v4 = a3;
  v5 = [[v3 alloc] initWithCloudConfigDetails:v4];

  v6 = [v5 migrationDeadline];
  v7 = [MEMORY[0x277CBEAA8] now];
  v8 = [v7 compare:v6];

  v9 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "+[DMCMigrationHelper isMigrationMandatoryWithPendingCloudConfig:]";
    v14 = 1024;
    v15 = v8 != -1;
    v16 = 2114;
    v17 = v6;
    _os_log_impl(&dword_247E39000, v9, OS_LOG_TYPE_DEFAULT, "%s is migration mandatory: %d. Deadline: %{public}@.", &v12, 0x1Cu);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8 != -1;
}

+ (BOOL)currentEnrollmentStateSupportsMigration
{
  v2 = [MEMORY[0x277D24648] sharedConfiguration];
  [v2 refreshDetailsFromDisk];
  v3 = [v2 managingProfileIdentifier];

  if (!v3)
  {
    v5 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 0;
      v6 = "DMCMigrationHelper: Device is not MDM enrolled.";
      v7 = &v12;
      goto LABEL_11;
    }

LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  v4 = [v2 personaID];

  if (v4)
  {
    v5 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v6 = "DMCMigrationHelper: Device is data separated.";
      v7 = &v11;
LABEL_11:
      _os_log_impl(&dword_247E39000, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if (([v2 isADEProfile] & 1) == 0)
  {
    v5 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v6 = "DMCMigrationHelper: Device is not ADE enrolled.";
      v7 = &v10;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v8 = 1;
LABEL_13:

  return v8;
}

+ (void)setMigrationIncomplete:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc(MEMORY[0x277D03568]);
  v6 = [a1 _migrationConfigFilePath];
  v7 = [v5 initWithFilePath:v6];

  if (v3)
  {
    v8 = MEMORY[0x277CBEC38];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D03418];
  v13 = 0;
  [v7 saveValue:v8 forKey:v9 error:&v13];
  v10 = v13;
  if (v10)
  {
    v11 = *DMCLogObjects();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = v10;
      _os_log_impl(&dword_247E39000, v11, OS_LOG_TYPE_ERROR, "Failed to save HasIncompleteMigration info with error: %{public}@", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (BOOL)launchMigrationApplicationWithError:(id *)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc(MEMORY[0x277D03568]);
  v6 = [a1 _migrationConfigFilePath];
  v7 = [v5 initWithFilePath:v6];

  v8 = *MEMORY[0x277D03420];
  v16 = 0;
  [v7 saveValue:MEMORY[0x277CBEC38] forKey:v8 error:&v16];
  v9 = v16;
  v10 = *DMCLogObjects();
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = v9;
      _os_log_impl(&dword_247E39000, v10, OS_LOG_TYPE_ERROR, "Failed to save UserInitiatedMigration info with error: %{public}@", buf, 0xCu);
    }

    if (a3)
    {
      v11 = v9;
      *a3 = v9;
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v10, OS_LOG_TYPE_DEFAULT, "Rebooting the device", buf, 2u);
    }

    v12 = [objc_alloc(MEMORY[0x277D0AE10]) initWithReason:@"MDM Migration restarting device"];
    [v12 setRebootType:1];
    v13 = [MEMORY[0x277D0AE18] sharedService];
    [v13 shutdownWithOptions:v12];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9 == 0;
}

+ (BOOL)userInititiatedMigration
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D03568]);
  v4 = [a1 _migrationConfigFilePath];
  v5 = [v3 initWithFilePath:v4];

  v6 = *MEMORY[0x277D03420];
  v13 = 0;
  v7 = [v5 retrieveValueForKey:v6 error:&v13];
  v8 = v13;
  if (v8)
  {
    v9 = *DMCLogObjects();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = v8;
      _os_log_impl(&dword_247E39000, v9, OS_LOG_TYPE_ERROR, "Failed to retrieve UserInitiatedMigration info with error: %{public}@", buf, 0xCu);
    }

    v10 = 0;
  }

  else
  {
    v10 = [v7 BOOLValue];
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (void)setUserInititiatedMigration:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc(MEMORY[0x277D03568]);
  v6 = [a1 _migrationConfigFilePath];
  v7 = [v5 initWithFilePath:v6];

  if (v3)
  {
    v8 = MEMORY[0x277CBEC38];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D03420];
  v13 = 0;
  [v7 saveValue:v8 forKey:v9 error:&v13];
  v10 = v13;
  if (v10)
  {
    v11 = *DMCLogObjects();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = v10;
      _os_log_impl(&dword_247E39000, v11, OS_LOG_TYPE_ERROR, "Failed to save UserInitiatedMigration info with error: %{public}@", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)makeStartMigrationRequestWithCloudConfig:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = objc_opt_new();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__DMCMigrationHelper_makeStartMigrationRequestWithCloudConfig_completionHandler___block_invoke;
  v8[3] = &unk_278EE4038;
  v9 = v5;
  v10 = a1;
  v7 = v5;
  [v6 makeStartMDMMigrationRequestWithCompletionBlock:v8];
}

void __81__DMCMigrationHelper_makeStartMigrationRequestWithCloudConfig_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *DMCLogObjects();
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v18 = 138543362;
      v19 = v7;
      _os_log_impl(&dword_247E39000, v8, OS_LOG_TYPE_ERROR, "Failed to make start migration request with error: %{public}@", &v18, 0xCu);
    }

    v9 = *(*(a1 + 32) + 16);
    goto LABEL_9;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138543362;
    v19 = v6;
    _os_log_impl(&dword_247E39000, v8, OS_LOG_TYPE_DEFAULT, "Start migration got back with response: %{public}@", &v18, 0xCu);
  }

  v10 = [v6 objectForKeyedSubscript:*MEMORY[0x277D03150]];
  v11 = [v10 isEqualToString:*MEMORY[0x277D03158]];

  if (v11)
  {
    v9 = *(*(a1 + 32) + 16);
LABEL_9:
    v9();
    goto LABEL_10;
  }

  v13 = *DMCLogObjects();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_247E39000, v13, OS_LOG_TYPE_ERROR, "Start migration got back with failed response", &v18, 2u);
  }

  v15 = *(a1 + 32);
  v14 = *(a1 + 40);
  v16 = [v6 objectForKeyedSubscript:*MEMORY[0x277D03148]];
  v17 = [v14 _createStartMigrationRequestFailedErrorWithDEPResponse:v16];
  (*(v15 + 16))(v15, 0, v17);

LABEL_10:
  v12 = *MEMORY[0x277D85DE8];
}

+ (void)makeEndMigrationRequestIfNeededWithCloudConfig:(id)a3 success:(BOOL)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__DMCMigrationHelper_makeEndMigrationRequestIfNeededWithCloudConfig_success_completionHandler___block_invoke;
  block[3] = &unk_278EE4088;
  v13 = v7;
  v14 = v8;
  v15 = a4;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
}

void __95__DMCMigrationHelper_makeEndMigrationRequestIfNeededWithCloudConfig_success_completionHandler___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277D24640]) initWithCloudConfigDetails:*(a1 + 32)];
  v3 = [v2 mdmServerUID];
  v4 = *DMCLogObjects();
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 48);
      *buf = 138543618;
      v12 = v3;
      v13 = 1024;
      v14 = v5;
      _os_log_impl(&dword_247E39000, v4, OS_LOG_TYPE_INFO, "Sending EndMDMMigration request with serverUID %{public}@, success: %d", buf, 0x12u);
    }

    v6 = objc_opt_new();
    if (*(a1 + 48))
    {
      v7 = @"success";
    }

    else
    {
      v7 = @"fail";
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __95__DMCMigrationHelper_makeEndMigrationRequestIfNeededWithCloudConfig_success_completionHandler___block_invoke_15;
    v9[3] = &unk_278EE4060;
    v10 = *(a1 + 40);
    [v6 makeEndMDMMigrationRequestWithServerUID:v3 status:v7 completionBlock:v9];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v4, OS_LOG_TYPE_DEFAULT, "No server UID from existing cloud config. Continue...", buf, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __95__DMCMigrationHelper_makeEndMigrationRequestIfNeededWithCloudConfig_success_completionHandler___block_invoke_15(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *DMCLogObjects();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_247E39000, v8, OS_LOG_TYPE_DEFAULT, "End MDM migration request returned with response: %{public}@, error: %{public}@", &v10, 0x16u);
  }

  (*(*(a1 + 32) + 16))();

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)readPendingCloudConfigDetails
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D03568]);
  v3 = MDMCloudConfigurationPendingMigrationDetailsFilePath();
  v4 = [v2 initWithFilePath:v3];

  v10 = 0;
  v5 = [v4 retrieveDictionaryWithError:&v10];
  v6 = v10;
  if (v6)
  {
    v7 = *DMCLogObjects();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v12 = v6;
      _os_log_impl(&dword_247E39000, v7, OS_LOG_TYPE_ERROR, "Failed to read pending cloud config details with error: %{public}@", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)_createStartMigrationRequestFailedErrorWithDEPResponse:(id)a3
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D03410];
  v5 = DMCErrorArray();
  v6 = [v3 DMCErrorWithDomain:v4 code:67001 descriptionArray:v5 errorType:{*MEMORY[0x277D032F8], a3, 0}];

  return v6;
}

@end
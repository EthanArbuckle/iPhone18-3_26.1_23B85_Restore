@interface DMCMigrationFlowController
+ (BOOL)isMigrationNeeded;
+ (BOOL)shouldShowMigrationUI;
- (DMCMigrationFlowController)initWithPresenter:(id)presenter managedConfigurationHelper:(id)helper;
- (DMCMigrationFlowDelegate)delegate;
- (id)_convertErrorToHumanReadableError:(id)error;
- (id)_enrollmentTypeNotSupportedError;
- (id)_nameForStep:(unint64_t)step;
- (id)_trustedErrors;
- (void)_finalizeMigration;
- (void)_flowTerminatedWithError:(id)error canceled:(BOOL)canceled;
- (void)_formalizePendingCloudConfig:(id)config;
- (void)_performEnrollmentFlow;
- (void)_performUnenrollmentFlow;
- (void)_preflightMigration;
- (void)_preserveManagedAppsIfNeededWithPendingCloudConfig:(id)config;
- (void)_promptForMigrationConsentWithEnrollmentType:(unint64_t)type pendingCloudConfig:(id)config;
- (void)_removeExistingCloudConfigProfile;
- (void)_removePendingCloudConfigIfNeededWithEnrollmentCloudConfig:(id)config;
- (void)_resetToInitialSteps;
- (void)_sendEndMigrationRequestWithCloudConfig:(id)config;
- (void)_sendStartMigrationRequestWithPendingCloudConfig:(id)config;
- (void)_workerQueue_cleanupCachedValues;
- (void)_workerQueue_flowCompleted;
- (void)_workerQueue_performFlowStep:(unint64_t)step;
- (void)enrollmentFlowController:(id)controller appInstallationStatusUpdatedForType:(id)type totalNumber:(unint64_t)number finishedNumber:(unint64_t)finishedNumber;
- (void)enrollmentFlowController:(id)controller performingEnrollmentStepWithName:(id)name status:(id)status;
- (void)startMDMMigrationWithCompletionHandler:(id)handler;
@end

@implementation DMCMigrationFlowController

+ (BOOL)isMigrationNeeded
{
  v2 = +[DMCMigrationHelper readPendingCloudConfigDetails];
  mEMORY[0x277D24640] = [MEMORY[0x277D24640] sharedConfiguration];
  [mEMORY[0x277D24640] refreshDetailsFromDisk];

  mEMORY[0x277D24640]2 = [MEMORY[0x277D24640] sharedConfiguration];
  details = [mEMORY[0x277D24640]2 details];

  LOBYTE(mEMORY[0x277D24640]2) = [DMCMigrationHelper isMigrationNeededWithExistingCloudConfig:details newCloudConfig:v2];
  return mEMORY[0x277D24640]2;
}

+ (BOOL)shouldShowMigrationUI
{
  if (+[DMCMigrationHelper hasIncompleteMigration])
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_DEFAULT, "Has incomplete migration", buf, 2u);
    }

    return 1;
  }

  else
  {
    v4 = +[DMCMigrationHelper readPendingCloudConfigDetails];
    if (v4 && +[DMCMigrationFlowController isMigrationNeeded](DMCMigrationFlowController, "isMigrationNeeded") && +[DMCMigrationHelper userInititiatedMigration])
    {
      v5 = *DMCLogObjects();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_247E39000, v5, OS_LOG_TYPE_DEFAULT, "User has initiated migration", v7, 2u);
      }

      v3 = 1;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (DMCMigrationFlowController)initWithPresenter:(id)presenter managedConfigurationHelper:(id)helper
{
  presenterCopy = presenter;
  helperCopy = helper;
  v12.receiver = self;
  v12.super_class = DMCMigrationFlowController;
  v9 = [(DMCEnrollmentFlowControllerBase *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_presenter, presenter);
    objc_storeStrong(&v10->_managedConfigurationHelper, helper);
  }

  return v10;
}

- (void)startMDMMigrationWithCompletionHandler:(id)handler
{
  [(DMCMigrationFlowController *)self setMigrationCompletionHandler:handler];
  [(DMCMigrationFlowController *)self _resetToInitialSteps];

  [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
}

- (void)_workerQueue_performFlowStep:(unint64_t)step
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [(DMCMigrationFlowController *)self _nameForStep:?];
  v6 = *DMCLogObjects();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = v5;
    _os_log_impl(&dword_247E39000, v6, OS_LOG_TYPE_DEFAULT, "Will perform migration step: %{public}@", &v16, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    currentPersonaID = [MEMORY[0x277D03550] currentPersonaID];
    currentPersonaTypeString = [MEMORY[0x277D03550] currentPersonaTypeString];
    v16 = 136315906;
    v17 = "[DMCMigrationFlowController _workerQueue_performFlowStep:]";
    v18 = 1024;
    v19 = 91;
    v20 = 2114;
    v21 = currentPersonaID;
    v22 = 2114;
    v23 = currentPersonaTypeString;
    _os_log_impl(&dword_247E39000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s (L: %d): Current persona ID: %{public}@, type: %{public}@", &v16, 0x26u);
  }

  delegate = [(DMCMigrationFlowController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(DMCMigrationFlowController *)self delegate];
    [delegate2 migrationFlowController:self performingMigrationStepWithName:v5 status:0];
  }

  [(DMCEnrollmentFlowControllerBase *)self setCurrentStep:step];
  if (step > 4)
  {
    if (step <= 7)
    {
      if (step == 5)
      {
        [(DMCMigrationFlowController *)self _removeExistingCloudConfigProfile];
        goto LABEL_30;
      }

      if (step == 6)
      {
        if (![(DMCMigrationFlowController *)self canUsePendingCloudConfig])
        {
          [(DMCMigrationFlowController *)self _formalizePendingCloudConfig:0];
          goto LABEL_30;
        }

        pendingCloudConfig = [(DMCMigrationFlowController *)self pendingCloudConfig];
        [(DMCMigrationFlowController *)self _formalizePendingCloudConfig:pendingCloudConfig];
      }

      else
      {
        pendingCloudConfig = [(DMCMigrationFlowController *)self enrollmentCloudConfig];
        [(DMCMigrationFlowController *)self _removePendingCloudConfigIfNeededWithEnrollmentCloudConfig:pendingCloudConfig];
      }

      goto LABEL_29;
    }

    if (step == 8)
    {
      [(DMCMigrationFlowController *)self _performEnrollmentFlow];
      goto LABEL_30;
    }

    if (step != 9)
    {
      if (step == 10)
      {
        [(DMCMigrationFlowController *)self _finalizeMigration];
      }

      goto LABEL_30;
    }

    pendingCloudConfig = [(DMCMigrationFlowController *)self enrollmentCloudConfig];
    [(DMCMigrationFlowController *)self _sendEndMigrationRequestWithCloudConfig:pendingCloudConfig];
LABEL_29:

    goto LABEL_30;
  }

  if (step > 1)
  {
    if (step == 2)
    {
      pendingCloudConfig = [(DMCMigrationFlowController *)self pendingCloudConfig];
      [(DMCMigrationFlowController *)self _sendStartMigrationRequestWithPendingCloudConfig:pendingCloudConfig];
    }

    else
    {
      if (step != 3)
      {
        [(DMCMigrationFlowController *)self _performUnenrollmentFlow];
        goto LABEL_30;
      }

      pendingCloudConfig = [(DMCMigrationFlowController *)self pendingCloudConfig];
      [(DMCMigrationFlowController *)self _preserveManagedAppsIfNeededWithPendingCloudConfig:pendingCloudConfig];
    }

    goto LABEL_29;
  }

  if (step)
  {
    if (step == 1)
    {
      originEnrollmentType = [(DMCMigrationFlowController *)self originEnrollmentType];
      pendingCloudConfig2 = [(DMCMigrationFlowController *)self pendingCloudConfig];
      [(DMCMigrationFlowController *)self _promptForMigrationConsentWithEnrollmentType:originEnrollmentType pendingCloudConfig:pendingCloudConfig2];
    }
  }

  else
  {
    [(DMCMigrationFlowController *)self _preflightMigration];
  }

LABEL_30:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_workerQueue_flowCompleted
{
  v3 = *DMCLogObjects();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_247E39000, v3, OS_LOG_TYPE_DEFAULT, "Migration flow completed!", v9, 2u);
  }

  [(DMCMigrationFlowController *)self _workerQueue_cleanupCachedValues];
  presenter = [(DMCMigrationFlowController *)self presenter];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    presenter2 = [(DMCMigrationFlowController *)self presenter];
    [presenter2 showMigrationCompletionScene];
  }

  [DMCMigrationHelper setMigrationIncomplete:0];
  [DMCMigrationHelper setUserInititiatedMigration:0];
  migrationCompletionHandler = [(DMCMigrationFlowController *)self migrationCompletionHandler];

  if (migrationCompletionHandler)
  {
    migrationCompletionHandler2 = [(DMCMigrationFlowController *)self migrationCompletionHandler];
    migrationCompletionHandler2[2](migrationCompletionHandler2, 1, 0, 0);

    [(DMCMigrationFlowController *)self setMigrationCompletionHandler:0];
  }
}

- (void)_flowTerminatedWithError:(id)error canceled:(BOOL)canceled
{
  errorCopy = error;
  workerQueue = [(DMCEnrollmentFlowControllerBase *)self workerQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__DMCMigrationFlowController__flowTerminatedWithError_canceled___block_invoke;
  v9[3] = &unk_278EE31E0;
  canceledCopy = canceled;
  v10 = errorCopy;
  selfCopy = self;
  v8 = errorCopy;
  [workerQueue queueBlock:v9];
}

void __64__DMCMigrationFlowController__flowTerminatedWithError_canceled___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *DMCLogObjects();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v14 = 138543618;
    v15 = v3;
    v16 = 1024;
    v17 = v4;
    _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "Migration flow terminated with error: %{public}@, canceled: %d", &v14, 0x12u);
  }

  [*(a1 + 40) _workerQueue_cleanupCachedValues];
  if (*(a1 + 48) == 1)
  {
    [DMCMigrationHelper setUserInititiatedMigration:0];
    v5 = [*(a1 + 40) presenter];
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) == 0)
    {
      goto LABEL_10;
    }

    v7 = [*(a1 + 40) presenter];
    [v7 dismissMigrationScene];
  }

  else
  {
    if (!*(a1 + 32))
    {
      goto LABEL_10;
    }

    v7 = [*(a1 + 40) _convertErrorToHumanReadableError:?];
    v8 = [*(a1 + 40) presenter];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [*(a1 + 40) presenter];
      [v10 showMigrationFailure:v7];
    }
  }

LABEL_10:
  [*(a1 + 40) _cleanupDirtyState];
  v11 = [*(a1 + 40) migrationCompletionHandler];

  if (v11)
  {
    v12 = [*(a1 + 40) migrationCompletionHandler];
    v12[2](v12, 0, *(a1 + 48), *(a1 + 32));

    [*(a1 + 40) setMigrationCompletionHandler:0];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_workerQueue_cleanupCachedValues
{
  [(DMCEnrollmentFlowControllerBase *)self setNextStepIndex:0];
  [(DMCMigrationFlowController *)self setOriginEnrollmentType:0];
  [(DMCMigrationFlowController *)self setEnrollmentCloudConfig:0];
  [(DMCMigrationFlowController *)self setEnrollmentFlowController:0];
  [(DMCMigrationFlowController *)self setUnenrollmentFlowController:0];
  [(DMCMigrationFlowController *)self setPendingCloudConfig:0];

  [(DMCMigrationFlowController *)self setCanUsePendingCloudConfig:0];
}

- (void)_preflightMigration
{
  v25 = *MEMORY[0x277D85DE8];
  managedConfigurationHelper = [(DMCMigrationFlowController *)self managedConfigurationHelper];
  currentPendingCloudConfigOnDisk = [managedConfigurationHelper currentPendingCloudConfigOnDisk];

  if (currentPendingCloudConfigOnDisk || +[DMCMigrationHelper hasIncompleteMigration])
  {
    v5 = [objc_alloc(MEMORY[0x277D24640]) initWithCloudConfigDetails:currentPendingCloudConfigOnDisk];
    v6 = objc_alloc(MEMORY[0x277D24640]);
    managedConfigurationHelper2 = [(DMCMigrationFlowController *)self managedConfigurationHelper];
    existingCloudConfigOnDisk = [managedConfigurationHelper2 existingCloudConfigOnDisk];
    v9 = [v6 initWithCloudConfigDetails:existingCloudConfigOnDisk];

    if ([v9 isStoredProfileInstalled])
    {
      if (![currentPendingCloudConfigOnDisk count])
      {
        v13 = *DMCLogObjects();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v24 = 0;
          v14 = "No pending cloud config dictionary. Skipping unenrollment...";
          goto LABEL_14;
        }

LABEL_15:
        v15 = 0;
LABEL_16:
        managedConfigurationHelper3 = [(DMCMigrationFlowController *)self managedConfigurationHelper];
        currentEnrollmentType = [managedConfigurationHelper3 currentEnrollmentType];

        if (currentEnrollmentType != 10)
        {
          if (currentEnrollmentType != 9)
          {
            v21 = *DMCLogObjects();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *v24 = 134217984;
              *&v24[4] = currentEnrollmentType;
              _os_log_impl(&dword_247E39000, v21, OS_LOG_TYPE_ERROR, "Migration is not supported with current enrollment type: %lu", v24, 0xCu);
            }

            _enrollmentTypeNotSupportedError = [(DMCMigrationFlowController *)self _enrollmentTypeNotSupportedError];
            [(DMCMigrationFlowController *)self _flowTerminatedWithError:_enrollmentTypeNotSupportedError canceled:0];

            goto LABEL_24;
          }

          if (v15)
          {
            _migration_unenrollmentSteps = [(DMCMigrationFlowController *)self _migration_unenrollmentSteps];
            [(DMCEnrollmentFlowControllerBase *)self _appendSteps:_migration_unenrollmentSteps];
          }
        }

        _migration_enrollmentSteps = [(DMCMigrationFlowController *)self _migration_enrollmentSteps];
        [(DMCEnrollmentFlowControllerBase *)self _appendSteps:_migration_enrollmentSteps];

        [(DMCMigrationFlowController *)self setOriginEnrollmentType:currentEnrollmentType];
        [(DMCMigrationFlowController *)self setPendingCloudConfig:currentPendingCloudConfigOnDisk];
        [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
LABEL_24:

        goto LABEL_25;
      }

      mdmServerUID = [v9 mdmServerUID];
      mdmServerUID2 = [v5 mdmServerUID];
      v12 = [mdmServerUID isEqualToString:mdmServerUID2];

      if (v12)
      {
        v13 = *DMCLogObjects();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v24 = 0;
          v14 = "The Server UID in the existing cloud configuration matches the serverUID in the pending cloud configuration. Skipping unenrollment...";
LABEL_14:
          _os_log_impl(&dword_247E39000, v13, OS_LOG_TYPE_DEFAULT, v14, v24, 2u);
          goto LABEL_15;
        }

        goto LABEL_15;
      }
    }

    v15 = 1;
    goto LABEL_16;
  }

  v16 = *DMCLogObjects();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *v24 = 0;
    _os_log_impl(&dword_247E39000, v16, OS_LOG_TYPE_ERROR, "No pending cloud config on disk. Abort...", v24, 2u);
  }

  [(DMCMigrationFlowController *)self _flowTerminatedWithError:0 canceled:1];
LABEL_25:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_promptForMigrationConsentWithEnrollmentType:(unint64_t)type pendingCloudConfig:(id)config
{
  v31 = *MEMORY[0x277D85DE8];
  configCopy = config;
  presenter = [(DMCMigrationFlowController *)self presenter];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D24640]) initWithCloudConfigDetails:configCopy];
    migrationDeadline = [v9 migrationDeadline];
    v11 = [DMCMigrationHelper isMigrationMandatoryWithPendingCloudConfig:configCopy];
    v13 = type == 10 || type == 0 || v11;
    v14 = v13 | +[DMCMigrationHelper hasIncompleteMigration];
    v15 = *DMCLogObjects();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v24 = "[DMCMigrationFlowController _promptForMigrationConsentWithEnrollmentType:pendingCloudConfig:]";
      v25 = 2048;
      typeCopy = type;
      v27 = 2112;
      v28 = migrationDeadline;
      v29 = 1024;
      v30 = v14;
      _os_log_impl(&dword_247E39000, v15, OS_LOG_TYPE_DEBUG, "%s enrollmentType: %lu, deadline: %@, isMandatory: %d", buf, 0x26u);
    }

    presenter2 = [(DMCMigrationFlowController *)self presenter];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __94__DMCMigrationFlowController__promptForMigrationConsentWithEnrollmentType_pendingCloudConfig___block_invoke;
    v22[3] = &unk_278EE3F48;
    v22[4] = self;
    [presenter2 requestUserConsentForMigrationWithPendingCloudConfig:configCopy originalEnrollmentType:type isMandatory:v14 deadline:migrationDeadline completionHandler:v22];
  }

  else
  {
    v17 = *DMCLogObjects();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = v17;
      presenter3 = [(DMCMigrationFlowController *)self presenter];
      v20 = NSStringFromSelector(sel_requestUserConsentForMigrationWithPendingCloudConfig_originalEnrollmentType_isMandatory_deadline_completionHandler_);
      *buf = 138543618;
      v24 = presenter3;
      v25 = 2114;
      typeCopy = v20;
      _os_log_impl(&dword_247E39000, v18, OS_LOG_TYPE_ERROR, "Client %{public}@ does not implement %{public}@", buf, 0x16u);
    }

    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __94__DMCMigrationFlowController__promptForMigrationConsentWithEnrollmentType_pendingCloudConfig___block_invoke(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) workerQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __94__DMCMigrationFlowController__promptForMigrationConsentWithEnrollmentType_pendingCloudConfig___block_invoke_2;
  v5[3] = &unk_278EE3618;
  v6 = a2;
  v5[4] = *(a1 + 32);
  [v4 queueBlock:v5];
}

uint64_t __94__DMCMigrationFlowController__promptForMigrationConsentWithEnrollmentType_pendingCloudConfig___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 == 1)
  {
    return [v2 _pollNextStep];
  }

  else
  {
    return [v2 _flowTerminatedWithError:0 canceled:1];
  }
}

- (void)_sendStartMigrationRequestWithPendingCloudConfig:(id)config
{
  configCopy = config;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__DMCMigrationFlowController__sendStartMigrationRequestWithPendingCloudConfig___block_invoke;
  v6[3] = &unk_278EE3F98;
  v6[4] = self;
  v7 = configCopy;
  v5 = configCopy;
  [DMCMigrationHelper makeStartMigrationRequestWithCloudConfig:v5 completionHandler:v6];
}

void __79__DMCMigrationFlowController__sendStartMigrationRequestWithPendingCloudConfig___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workerQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __79__DMCMigrationFlowController__sendStartMigrationRequestWithPendingCloudConfig___block_invoke_2;
  v12[3] = &unk_278EE38E0;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v15 = v5;
  v16 = v9;
  v10 = v5;
  v11 = v6;
  [v7 queueBlock:v12];
}

void __79__DMCMigrationFlowController__sendStartMigrationRequestWithPendingCloudConfig___block_invoke_2(id *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  if (v2)
  {
    v3 = [v2 domain];
    if ([v3 isEqualToString:*MEMORY[0x277D03410]])
    {
      v4 = [a1[4] code];

      if (v4 == 67001)
      {
        v5 = *DMCLogObjects();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_247E39000, v5, OS_LOG_TYPE_ERROR, "Server returned fail response for the StartMigration request, re-evaluating migration status", buf, 2u);
        }

        v6 = [a1[5] managedConfigurationHelper];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __79__DMCMigrationFlowController__sendStartMigrationRequestWithPendingCloudConfig___block_invoke_25;
        v17[3] = &unk_278EE3F70;
        v16 = *(a1 + 2);
        v7 = v16.i64[0];
        v18 = vextq_s8(v16, v16, 8uLL);
        [v6 evaluateMigrationStatusWithPollFromServer:1 completionHandler:v17];

LABEL_16:
        v15 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    else
    {
    }

    v13 = *DMCLogObjects();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = a1[4];
      *buf = 138543362;
      v20 = v14;
      _os_log_impl(&dword_247E39000, v13, OS_LOG_TYPE_ERROR, "Failed to make start migration request with error: %{public}@", buf, 0xCu);
    }

    [a1[5] _flowTerminatedWithError:a1[4] canceled:0];
    goto LABEL_16;
  }

  v8 = [a1[6] objectForKeyedSubscript:@"server_uid"];
  v9 = [a1[7] objectForKeyedSubscript:*MEMORY[0x277D030D0]];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    [a1[5] setCanUsePendingCloudConfig:1];
  }

  v11 = a1[5];
  v12 = *MEMORY[0x277D85DE8];

  [v11 _pollNextStep];
}

void __79__DMCMigrationFlowController__sendStartMigrationRequestWithPendingCloudConfig___block_invoke_25(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *DMCLogObjects();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109378;
    v8[1] = a2;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_247E39000, v6, OS_LOG_TYPE_DEFAULT, "Evaluation returned with migration scheduled: %d, error: %{public}@", v8, 0x12u);
  }

  [*(a1 + 32) _flowTerminatedWithError:*(a1 + 40) canceled:0];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_preserveManagedAppsIfNeededWithPendingCloudConfig:(id)config
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D24640];
  configCopy = config;
  v6 = [[v4 alloc] initWithCloudConfigDetails:configCopy];

  LOBYTE(configCopy) = [v6 isAwaitingConfiguration];
  if ((configCopy & 1) == 0)
  {
    v15 = *DMCLogObjects();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v16 = "Pending cloud config does not require await configuration. Do not presrve apps.";
      v17 = v15;
      v18 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&dword_247E39000, v17, v18, v16, buf, 2u);
    }

LABEL_18:
    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
    goto LABEL_19;
  }

  managedConfigurationHelper = [(DMCMigrationFlowController *)self managedConfigurationHelper];
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) == 0)
  {
    v19 = *DMCLogObjects();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = v19;
      managedConfigurationHelper2 = [(DMCMigrationFlowController *)self managedConfigurationHelper];
      v22 = NSStringFromSelector(sel_isMDMProfileADEProfile);
      *buf = 138543618;
      v27 = managedConfigurationHelper2;
      v28 = 2114;
      v29 = v22;
LABEL_13:
      _os_log_impl(&dword_247E39000, v20, OS_LOG_TYPE_ERROR, "Client %{public}@ does not implement %{public}@", buf, 0x16u);

      goto LABEL_18;
    }

    goto LABEL_18;
  }

  managedConfigurationHelper3 = [(DMCMigrationFlowController *)self managedConfigurationHelper];
  isMDMProfileADEProfile = [managedConfigurationHelper3 isMDMProfileADEProfile];

  if ((isMDMProfileADEProfile & 1) == 0)
  {
    v23 = *DMCLogObjects();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v16 = "Device is not enrolled with the original MDM server. Do not presrve apps.";
    v17 = v23;
    v18 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_10;
  }

  managedConfigurationHelper4 = [(DMCMigrationFlowController *)self managedConfigurationHelper];
  v12 = objc_opt_respondsToSelector();

  v13 = *DMCLogObjects();
  if ((v12 & 1) == 0)
  {
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v20 = v13;
    managedConfigurationHelper2 = [(DMCMigrationFlowController *)self managedConfigurationHelper];
    v22 = NSStringFromSelector(sel_preserveManagedAppsWithCompletionHandler_);
    *buf = 138543618;
    v27 = managedConfigurationHelper2;
    v28 = 2114;
    v29 = v22;
    goto LABEL_13;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_247E39000, v13, OS_LOG_TYPE_DEBUG, "Preserving managed apps...", buf, 2u);
  }

  managedConfigurationHelper5 = [(DMCMigrationFlowController *)self managedConfigurationHelper];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __81__DMCMigrationFlowController__preserveManagedAppsIfNeededWithPendingCloudConfig___block_invoke;
  v25[3] = &unk_278EE3550;
  v25[4] = self;
  [managedConfigurationHelper5 preserveManagedAppsWithCompletionHandler:v25];

LABEL_19:
  v24 = *MEMORY[0x277D85DE8];
}

void __81__DMCMigrationFlowController__preserveManagedAppsIfNeededWithPendingCloudConfig___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__DMCMigrationFlowController__preserveManagedAppsIfNeededWithPendingCloudConfig___block_invoke_2;
  v7[3] = &unk_278EE3528;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 queueBlock:v7];
}

uint64_t __81__DMCMigrationFlowController__preserveManagedAppsIfNeededWithPendingCloudConfig___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "Failed to preserve managed apps with error: %{public}@", &v6, 0xCu);
    }
  }

  result = [*(a1 + 40) _pollNextStep];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_performUnenrollmentFlow
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__DMCMigrationFlowController__performUnenrollmentFlow__block_invoke;
  v8[3] = &unk_278EE3FC0;
  v8[4] = self;
  v3 = MEMORY[0x24C1BD5A0](v8, a2);
  v4 = [DMCUnenrollmentFlowController alloc];
  presenter = [(DMCMigrationFlowController *)self presenter];
  managedConfigurationHelper = [(DMCMigrationFlowController *)self managedConfigurationHelper];
  v7 = [(DMCUnenrollmentFlowController *)v4 initWithPresenter:presenter managedConfigurationHelper:managedConfigurationHelper];

  [(DMCUnenrollmentFlowController *)v7 setMigrationDelegate:self];
  [(DMCUnenrollmentFlowController *)v7 unenrollADEWithCompletionHandler:v3];
  [(DMCMigrationFlowController *)self setUnenrollmentFlowController:v7];
}

void __54__DMCMigrationFlowController__performUnenrollmentFlow__block_invoke(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v6 = a4;
  v7 = [*(a1 + 32) workerQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__DMCMigrationFlowController__performUnenrollmentFlow__block_invoke_2;
  v10[3] = &unk_278EE31E0;
  v8 = *(a1 + 32);
  v11 = v6;
  v12 = v8;
  v13 = a3;
  v9 = v6;
  [v7 queueBlock:v10];
}

uint64_t __54__DMCMigrationFlowController__performUnenrollmentFlow__block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      v9 = 138543362;
      v10 = v3;
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "Unenrollment failed with error: %{public}@", &v9, 0xCu);
    }

    result = [*(a1 + 40) _flowTerminatedWithError:*(a1 + 32) canceled:0];
  }

  else
  {
    v5 = *(a1 + 48);
    v6 = *DMCLogObjects();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5 == 1)
    {
      if (v7)
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_247E39000, v6, OS_LOG_TYPE_DEFAULT, "Unenrollment canceled", &v9, 2u);
      }

      [*(a1 + 40) _resetToInitialSteps];
    }

    else
    {
      if (v7)
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_247E39000, v6, OS_LOG_TYPE_DEFAULT, "Unenrollment succeeded", &v9, 2u);
      }

      [DMCMigrationHelper setMigrationIncomplete:1];
    }

    result = [*(a1 + 40) _pollNextStep];
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_removePendingCloudConfigIfNeededWithEnrollmentCloudConfig:(id)config
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D24640];
  configCopy = config;
  v6 = [v4 alloc];
  managedConfigurationHelper = [(DMCMigrationFlowController *)self managedConfigurationHelper];
  currentPendingCloudConfigOnDisk = [managedConfigurationHelper currentPendingCloudConfigOnDisk];
  v9 = [v6 initWithCloudConfigDetails:currentPendingCloudConfigOnDisk];

  v10 = [objc_alloc(MEMORY[0x277D24640]) initWithCloudConfigDetails:configCopy];
  mdmServerUID = [v10 mdmServerUID];
  mdmServerUID2 = [v9 mdmServerUID];
  if ([mdmServerUID isEqualToString:mdmServerUID2])
  {
    managedConfigurationHelper2 = [(DMCMigrationFlowController *)self managedConfigurationHelper];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __89__DMCMigrationFlowController__removePendingCloudConfigIfNeededWithEnrollmentCloudConfig___block_invoke;
    v16[3] = &unk_278EE3550;
    v16[4] = self;
    [managedConfigurationHelper2 removePendingCloudConfigWithCompletionHandler:v16];
  }

  else
  {
    v14 = *DMCLogObjects();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v18 = mdmServerUID;
      v19 = 2114;
      v20 = mdmServerUID2;
      _os_log_impl(&dword_247E39000, v14, OS_LOG_TYPE_DEFAULT, "Server UID has changed from %{public}@ to %{public}@.", buf, 0x16u);
    }

    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __89__DMCMigrationFlowController__removePendingCloudConfigIfNeededWithEnrollmentCloudConfig___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __89__DMCMigrationFlowController__removePendingCloudConfigIfNeededWithEnrollmentCloudConfig___block_invoke_2;
  v7[3] = &unk_278EE3528;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 queueBlock:v7];
}

uint64_t __89__DMCMigrationFlowController__removePendingCloudConfigIfNeededWithEnrollmentCloudConfig___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "Failed to remove pending cloud config with error: %{public}@!", &v6, 0xCu);
    }
  }

  result = [*(a1 + 40) _pollNextStep];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_removeExistingCloudConfigProfile
{
  v3 = *DMCLogObjects();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247E39000, v3, OS_LOG_TYPE_DEFAULT, "Removing set aside cloud config profile...", buf, 2u);
  }

  managedConfigurationHelper = [(DMCMigrationFlowController *)self managedConfigurationHelper];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__DMCMigrationFlowController__removeExistingCloudConfigProfile__block_invoke;
  v5[3] = &unk_278EE3550;
  v5[4] = self;
  [managedConfigurationHelper removeSetAsideCloudConfigWithCompletionHandler:v5];
}

void __63__DMCMigrationFlowController__removeExistingCloudConfigProfile__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__DMCMigrationFlowController__removeExistingCloudConfigProfile__block_invoke_2;
  v7[3] = &unk_278EE3528;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 queueBlock:v7];
}

void __63__DMCMigrationFlowController__removeExistingCloudConfigProfile__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);

    [v2 _flowTerminatedWithError:? canceled:?];
  }

  else
  {
    v3 = *DMCLogObjects();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v3, OS_LOG_TYPE_DEFAULT, "Removing existing cloud config profile...", buf, 2u);
    }

    v4 = [*(a1 + 40) managedConfigurationHelper];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __63__DMCMigrationFlowController__removeExistingCloudConfigProfile__block_invoke_35;
    v5[3] = &unk_278EE3550;
    v5[4] = *(a1 + 40);
    [v4 removeCloudConfigWithCompletionHandler:v5];
  }
}

void __63__DMCMigrationFlowController__removeExistingCloudConfigProfile__block_invoke_35(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__DMCMigrationFlowController__removeExistingCloudConfigProfile__block_invoke_2_36;
  v7[3] = &unk_278EE3528;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 queueBlock:v7];
}

uint64_t __63__DMCMigrationFlowController__removeExistingCloudConfigProfile__block_invoke_2_36(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v2)
  {
    return [v1 _flowTerminatedWithError:v2 canceled:0];
  }

  else
  {
    return [v1 _pollNextStep];
  }
}

- (void)_formalizePendingCloudConfig:(id)config
{
  configCopy = config;
  v5 = *DMCLogObjects();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (configCopy)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v5, OS_LOG_TYPE_DEFAULT, "Formalizing pending cloud config...", buf, 2u);
    }

    managedConfigurationHelper = [(DMCMigrationFlowController *)self managedConfigurationHelper];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__DMCMigrationFlowController__formalizePendingCloudConfig___block_invoke;
    v8[3] = &unk_278EE3550;
    v8[4] = self;
    [managedConfigurationHelper storeCloudConfig:configCopy completionHandler:v8];
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v5, OS_LOG_TYPE_DEFAULT, "Can not use the pending cloud config, continue...", buf, 2u);
    }

    [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
  }
}

void __59__DMCMigrationFlowController__formalizePendingCloudConfig___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__DMCMigrationFlowController__formalizePendingCloudConfig___block_invoke_2;
  v7[3] = &unk_278EE3528;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 queueBlock:v7];
}

uint64_t __59__DMCMigrationFlowController__formalizePendingCloudConfig___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_DEFAULT, "Failed to save the pending cloud configuration as the formal cloud configuration with error:%{public}@", &v6, 0xCu);
    }
  }

  result = [*(a1 + 40) _pollNextStep];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_performEnrollmentFlow
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__DMCMigrationFlowController__performEnrollmentFlow__block_invoke;
  v8[3] = &unk_278EE3FC0;
  v8[4] = self;
  v3 = MEMORY[0x24C1BD5A0](v8, a2);
  v4 = [DMCEnrollmentFlowController alloc];
  presenter = [(DMCMigrationFlowController *)self presenter];
  managedConfigurationHelper = [(DMCMigrationFlowController *)self managedConfigurationHelper];
  v7 = [(DMCEnrollmentFlowController *)v4 initWithPresenter:presenter managedConfigurationHelper:managedConfigurationHelper];

  [(DMCEnrollmentFlowController *)v7 setMigrationDelegate:self];
  [(DMCEnrollmentFlowController *)v7 startInBuddyEnrollmentFlowRestartIfFail:0 completionHandler:v3];
  [(DMCMigrationFlowController *)self setEnrollmentFlowController:v7];
}

void __52__DMCMigrationFlowController__performEnrollmentFlow__block_invoke(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v6 = a4;
  v7 = [*(a1 + 32) workerQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__DMCMigrationFlowController__performEnrollmentFlow__block_invoke_2;
  v10[3] = &unk_278EE31E0;
  v8 = *(a1 + 32);
  v11 = v6;
  v12 = v8;
  v13 = a3;
  v9 = v6;
  [v7 queueBlock:v10];
}

uint64_t __52__DMCMigrationFlowController__performEnrollmentFlow__block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      v12 = 138543362;
      v13 = v3;
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "Enrollment failed with error: %{public}@", &v12, 0xCu);
    }

    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 0;
LABEL_9:
    result = [v4 _flowTerminatedWithError:v5 canceled:v6];
    goto LABEL_10;
  }

  v7 = *(a1 + 48);
  v8 = *DMCLogObjects();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7 == 1)
  {
    if (v9)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_247E39000, v8, OS_LOG_TYPE_DEFAULT, "Enrollment canceled", &v12, 2u);
    }

    v4 = *(a1 + 40);
    v5 = 0;
    v6 = 1;
    goto LABEL_9;
  }

  if (v9)
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_247E39000, v8, OS_LOG_TYPE_DEFAULT, "Enrollment succeeded", &v12, 2u);
  }

  result = [*(a1 + 40) _pollNextStep];
LABEL_10:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_sendEndMigrationRequestWithCloudConfig:(id)config
{
  configCopy = config;
  [DMCMigrationHelper setMigrationIncomplete:0];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__DMCMigrationFlowController__sendEndMigrationRequestWithCloudConfig___block_invoke;
  v5[3] = &unk_278EE3BD8;
  v5[4] = self;
  [DMCMigrationHelper makeEndMigrationRequestIfNeededWithCloudConfig:configCopy success:1 completionHandler:v5];
}

void __70__DMCMigrationFlowController__sendEndMigrationRequestWithCloudConfig___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) workerQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__DMCMigrationFlowController__sendEndMigrationRequestWithCloudConfig___block_invoke_2;
  v8[3] = &unk_278EE3528;
  v6 = *(a1 + 32);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  [v5 queueBlock:v8];
}

uint64_t __70__DMCMigrationFlowController__sendEndMigrationRequestWithCloudConfig___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "Failed to make end migration request with error: %{public}@", &v6, 0xCu);
    }
  }

  result = [*(a1 + 40) _pollNextStep];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_finalizeMigration
{
  managedConfigurationHelper = [(DMCMigrationFlowController *)self managedConfigurationHelper];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__DMCMigrationFlowController__finalizeMigration__block_invoke;
  v4[3] = &unk_278EE3BB0;
  v4[4] = self;
  [managedConfigurationHelper evaluateMigrationStatusWithPollFromServer:0 completionHandler:v4];
}

void __48__DMCMigrationFlowController__finalizeMigration__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) workerQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__DMCMigrationFlowController__finalizeMigration__block_invoke_2;
  v8[3] = &unk_278EE3528;
  v6 = *(a1 + 32);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  [v5 queueBlock:v8];
}

uint64_t __48__DMCMigrationFlowController__finalizeMigration__block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "Failed to re-evaluate migration status with error: %{public}@", &v6, 0xCu);
    }
  }

  result = [*(a1 + 40) _pollNextStep];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_resetToInitialSteps
{
  v4.receiver = self;
  v4.super_class = DMCMigrationFlowController;
  [(DMCEnrollmentFlowControllerBase *)&v4 _resetToInitialSteps];
  _migration_commonSteps = [(DMCMigrationFlowController *)self _migration_commonSteps];
  [(DMCEnrollmentFlowControllerBase *)self _appendSteps:_migration_commonSteps];
}

- (id)_enrollmentTypeNotSupportedError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03410];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:67000 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

- (id)_convertErrorToHumanReadableError:(id)error
{
  v22[2] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = DMCErrorArray();
  _trustedErrors = [(DMCMigrationFlowController *)self _trustedErrors];
  domain = [errorCopy domain];
  v8 = [_trustedErrors objectForKeyedSubscript:domain];
  if (!v8)
  {

    goto LABEL_7;
  }

  v9 = v8;
  domain2 = [errorCopy domain];
  v11 = [_trustedErrors objectForKeyedSubscript:domain2];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
  if ([v11 containsObject:v12])
  {
  }

  else
  {
    domain3 = [errorCopy domain];
    v14 = [_trustedErrors objectForKeyedSubscript:domain3];
    v21 = [v14 containsObject:&unk_2859F9838];

    if ((v21 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  localizedDescription = [errorCopy localizedDescription];
  v22[0] = localizedDescription;
  null = [MEMORY[0x277CBEB68] null];
  v22[1] = null;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];

  v5 = v17;
LABEL_7:
  v18 = [MEMORY[0x277CCA9B8] DMCErrorWithDomain:*MEMORY[0x277D03410] code:67003 descriptionArray:v5 underlyingError:errorCopy errorType:*MEMORY[0x277D032F8]];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_trustedErrors
{
  if (_trustedErrors_onceToken_0 != -1)
  {
    [DMCMigrationFlowController _trustedErrors];
  }

  v3 = _trustedErrors_dict_0;

  return v3;
}

void __44__DMCMigrationFlowController__trustedErrors__block_invoke()
{
  v7[3] = *MEMORY[0x277D85DE8];
  v6[0] = *MEMORY[0x277D03410];
  v0 = [MEMORY[0x277CBEB98] setWithArray:&unk_2859F9DD8];
  v7[0] = v0;
  v6[1] = *MEMORY[0x277D032F0];
  v1 = [MEMORY[0x277CBEB98] setWithArray:&unk_2859F9DF0];
  v7[1] = v1;
  v6[2] = *MEMORY[0x277D033B8];
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_2859F9E08];
  v7[2] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];
  v4 = _trustedErrors_dict_0;
  _trustedErrors_dict_0 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

- (void)enrollmentFlowController:(id)controller appInstallationStatusUpdatedForType:(id)type totalNumber:(unint64_t)number finishedNumber:(unint64_t)finishedNumber
{
  typeCopy = type;
  delegate = [(DMCMigrationFlowController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(DMCMigrationFlowController *)self delegate];
    [delegate2 migrationFlowController:self appInstallationStatusUpdatedForType:typeCopy totalNumber:number finishedNumber:finishedNumber];
  }
}

- (void)enrollmentFlowController:(id)controller performingEnrollmentStepWithName:(id)name status:(id)status
{
  nameCopy = name;
  statusCopy = status;
  delegate = [(DMCMigrationFlowController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(DMCMigrationFlowController *)self delegate];
    [delegate2 migrationFlowController:self performingEnrollmentStepWithName:nameCopy status:statusCopy];
  }
}

- (DMCMigrationFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_nameForStep:(unint64_t)step
{
  if (step - 1 > 9)
  {
    return @"PreflightMigration";
  }

  else
  {
    return off_278EE3FE0[step - 1];
  }
}

@end
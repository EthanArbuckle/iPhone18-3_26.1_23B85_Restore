@interface DMCUnenrollmentFlowController
- (DMCUnenrollmentFlowController)initWithPresenter:(id)a3 managedConfigurationHelper:(id)a4;
- (DMCUnenrollmentFlowMigrationDelegate)migrationDelegate;
- (id)_nameForStep:(unint64_t)a3;
- (void)_askForPasscodeIfNeeded;
- (void)_flowTerminatedWithError:(id)a3 canceled:(BOOL)a4;
- (void)_preflightUnenrollmentWithUnenrollmentType:(unint64_t)a3 accoutAltDSID:(id)a4;
- (void)_resetToInitialStepsWithSilent:(BOOL)a3;
- (void)_workerQueue_flowCompleted;
- (void)_workerQueue_performFlowStep:(unint64_t)a3;
- (void)unenrollADEWithCompletionHandler:(id)a3;
@end

@implementation DMCUnenrollmentFlowController

- (DMCUnenrollmentFlowController)initWithPresenter:(id)a3 managedConfigurationHelper:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = DMCUnenrollmentFlowController;
  v9 = [(DMCEnrollmentFlowControllerBase *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_presenter, a3);
    objc_storeStrong(&v10->_managedConfigurationHelper, a4);
  }

  return v10;
}

- (void)unenrollADEWithCompletionHandler:(id)a3
{
  [(DMCUnenrollmentFlowController *)self setUnenrollmentCompletionHandler:a3];
  [(DMCUnenrollmentFlowController *)self setUnenrollmentType:1];
  [(DMCUnenrollmentFlowController *)self _resetToInitialStepsWithSilent:0];

  [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
}

- (void)_resetToInitialStepsWithSilent:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = DMCUnenrollmentFlowController;
  [(DMCEnrollmentFlowControllerBase *)&v6 _resetToInitialSteps];
  if (a3)
  {
    [(DMCUnenrollmentFlowController *)self _silentUnenrollmentSteps];
  }

  else
  {
    [(DMCUnenrollmentFlowController *)self _interactiveUnenrollmentSteps];
  }
  v5 = ;
  [(DMCEnrollmentFlowControllerBase *)self _appendSteps:v5];
}

- (void)_workerQueue_performFlowStep:(unint64_t)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = *DMCLogObjects();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(DMCUnenrollmentFlowController *)self _nameForStep:a3];
    v16 = 138543362;
    v17 = v7;
    _os_log_impl(&dword_247E39000, v6, OS_LOG_TYPE_DEFAULT, "Will perform unenrollment step: %{public}@", &v16, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x277D03550] currentPersonaID];
    v9 = [MEMORY[0x277D03550] currentPersonaTypeString];
    v16 = 136315906;
    v17 = "[DMCUnenrollmentFlowController _workerQueue_performFlowStep:]";
    v18 = 1024;
    v19 = 59;
    v20 = 2114;
    v21 = v8;
    v22 = 2114;
    v23 = v9;
    _os_log_impl(&dword_247E39000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s (L: %d): Current persona ID: %{public}@, type: %{public}@", &v16, 0x26u);
  }

  [(DMCEnrollmentFlowControllerBase *)self setCurrentStep:a3];
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      [(DMCUnenrollmentFlowController *)self _askForPasscodeIfNeeded];
    }

    else if (a3 == 3)
    {
      v10 = [(DMCUnenrollmentFlowController *)self profileIdentifier];
      v11 = [(DMCUnenrollmentFlowController *)self personaID];
      v12 = [(DMCUnenrollmentFlowController *)self altDSID];
      [(DMCUnenrollmentFlowController *)self _uninstallEnrollmentProfileWithIdentifier:v10 personaID:v11 altDSID:v12 isAppleMAID:[(DMCUnenrollmentFlowController *)self isAppleMAID] unenrollmentType:[(DMCUnenrollmentFlowController *)self unenrollmentType]];
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      [(DMCUnenrollmentFlowController *)self _askForUserConfirmationIsAppleMAID:[(DMCUnenrollmentFlowController *)self isAppleMAID]];
    }
  }

  else
  {
    v13 = [(DMCUnenrollmentFlowController *)self unenrollmentType];
    v14 = [(DMCUnenrollmentFlowController *)self altDSID];
    [(DMCUnenrollmentFlowController *)self _preflightUnenrollmentWithUnenrollmentType:v13 accoutAltDSID:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_workerQueue_flowCompleted
{
  v3 = *DMCLogObjects();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_247E39000, v3, OS_LOG_TYPE_DEFAULT, "Unenrollment flow completed!", v9, 2u);
  }

  v4 = [(DMCUnenrollmentFlowController *)self presenter];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(DMCUnenrollmentFlowController *)self presenter];
    [v6 dismissUnenrollmentSceneWithError:0];
  }

  v7 = [(DMCUnenrollmentFlowController *)self unenrollmentCompletionHandler];

  if (v7)
  {
    v8 = [(DMCUnenrollmentFlowController *)self unenrollmentCompletionHandler];
    v8[2](v8, 1, 0, 0);

    [(DMCUnenrollmentFlowController *)self setUnenrollmentCompletionHandler:0];
  }
}

- (void)_flowTerminatedWithError:(id)a3 canceled:(BOOL)a4
{
  v6 = a3;
  v7 = [(DMCEnrollmentFlowControllerBase *)self workerQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__DMCUnenrollmentFlowController__flowTerminatedWithError_canceled___block_invoke;
  v9[3] = &unk_278EE31E0;
  v12 = a4;
  v10 = v6;
  v11 = self;
  v8 = v6;
  [v7 queueBlock:v9];
}

void __67__DMCUnenrollmentFlowController__flowTerminatedWithError_canceled___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *DMCLogObjects();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v13 = 138543618;
    v14 = v3;
    v15 = 1024;
    v16 = v4;
    _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_DEFAULT, "Unenrollment flow terminated with error: %{public}@, canceled: %d", &v13, 0x12u);
  }

  v5 = [*(a1 + 40) presenter];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [*(a1 + 40) presenter];
    v8 = v7;
    if (*(a1 + 48))
    {
      v9 = 0;
    }

    else
    {
      v9 = *(a1 + 32);
    }

    [v7 dismissUnenrollmentSceneWithError:v9];
  }

  v10 = [*(a1 + 40) unenrollmentCompletionHandler];

  if (v10)
  {
    v11 = [*(a1 + 40) unenrollmentCompletionHandler];
    v11[2](v11, 0, *(a1 + 48), *(a1 + 32));

    [*(a1 + 40) setUnenrollmentCompletionHandler:0];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_preflightUnenrollmentWithUnenrollmentType:(unint64_t)a3 accoutAltDSID:(id)a4
{
  v6 = a4;
  if (a3 == 1)
  {
    v10 = [(DMCUnenrollmentFlowController *)self managedConfigurationHelper];
    v11 = [v10 installedMDMProfileIdentifier];
    [(DMCUnenrollmentFlowController *)self setProfileIdentifier:v11];
  }

  else if (!a3)
  {
    v7 = [MEMORY[0x277CB8F48] defaultStore];
    v8 = [v7 dmc_remoteManagementAccountForAltDSID:v6];

    if (v8)
    {
      v9 = [v8 dmc_managementProfileIdentifier];
      -[DMCUnenrollmentFlowController setIsAppleMAID:](self, "setIsAppleMAID:", [v8 dmc_enrollmentMethod] == 1);
    }

    else
    {
      v12 = *DMCLogObjects();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_247E39000, v12, OS_LOG_TYPE_ERROR, "RM account is missing!", buf, 2u);
      }

      v9 = 0;
    }

    if (![v9 length])
    {
      v13 = *DMCLogObjects();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v19 = 0;
        _os_log_impl(&dword_247E39000, v13, OS_LOG_TYPE_ERROR, "No profile identifier from the RM account!", v19, 2u);
      }

      v14 = [MEMORY[0x277CB8F48] defaultStore];
      v15 = [v14 dmc_iCloudAccountForRemoteManagingAccountWithAltDSID:v6];

      if (v15)
      {
        v16 = [v15 dmc_personaIdentifier];
        [(DMCUnenrollmentFlowController *)self setPersonaID:v16];

        v8 = v15;
      }

      else
      {
        v17 = *DMCLogObjects();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *v18 = 0;
          _os_log_impl(&dword_247E39000, v17, OS_LOG_TYPE_ERROR, "No iCloud account found!", v18, 2u);
        }

        v8 = 0;
      }
    }

    [(DMCUnenrollmentFlowController *)self setProfileIdentifier:v9];
  }

  [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
}

void __68__DMCUnenrollmentFlowController__askForUserConfirmationIsAppleMAID___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained workerQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __68__DMCUnenrollmentFlowController__askForUserConfirmationIsAppleMAID___block_invoke_2;
    v6[3] = &unk_278EE3618;
    v6[4] = v4;
    v7 = a2;
    [v5 queueBlock:v6];
  }
}

uint64_t __68__DMCUnenrollmentFlowController__askForUserConfirmationIsAppleMAID___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) currentStep] != 1)
  {
    v2 = *DMCLogObjects();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[DMCUnenrollmentFlowController _askForUserConfirmationIsAppleMAID:]_block_invoke_2";
      _os_log_impl(&dword_247E39000, v2, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v6, 0xCu);
    }
  }

  v3 = *(a1 + 32);
  if (*(a1 + 40))
  {
    result = [v3 _pollNextStep];
  }

  else
  {
    result = [v3 _flowTerminatedWithError:0 canceled:1];
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_askForPasscodeIfNeeded
{
  v3 = [(DMCUnenrollmentFlowController *)self managedConfigurationHelper];
  v4 = [v3 isDevicePasscodeSet];

  if (v4)
  {
    objc_initWeak(&location, self);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __56__DMCUnenrollmentFlowController__askForPasscodeIfNeeded__block_invoke;
    v17[3] = &unk_278EE4358;
    v17[4] = self;
    objc_copyWeak(&v18, &location);
    v5 = MEMORY[0x24C1BD5A0](v17);
    v6 = [(DMCUnenrollmentFlowController *)self presenter];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(DMCUnenrollmentFlowController *)self presenter];
      v9 = v16;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __56__DMCUnenrollmentFlowController__askForPasscodeIfNeeded__block_invoke_11;
      v16[3] = &unk_278EE3370;
      v16[4] = v5;
      [v8 requestDevicePasscodeContextNeedsExtractable:0 completionHandler:v16];
    }

    else
    {
      v10 = [(DMCUnenrollmentFlowController *)self presenter];
      v11 = objc_opt_respondsToSelector();

      if (v11)
      {
        v8 = [(DMCUnenrollmentFlowController *)self presenter];
        v9 = v15;
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __56__DMCUnenrollmentFlowController__askForPasscodeIfNeeded__block_invoke_2_15;
        v15[3] = &unk_278EE3398;
        v15[4] = v5;
        [v8 requestDevicePasscodeDataWithCompletionHandler:v15];
      }

      else
      {
        v12 = [(DMCUnenrollmentFlowController *)self presenter];
        v13 = objc_opt_respondsToSelector();

        if ((v13 & 1) == 0)
        {
LABEL_12:

          objc_destroyWeak(&v18);
          objc_destroyWeak(&location);
          return;
        }

        v8 = [(DMCUnenrollmentFlowController *)self presenter];
        v9 = v14;
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __56__DMCUnenrollmentFlowController__askForPasscodeIfNeeded__block_invoke_3;
        v14[3] = &unk_278EE33C0;
        v14[4] = v5;
        [v8 requestDevicePasscodeWithCompletionHandler:v14];
      }
    }

    goto LABEL_12;
  }

  [(DMCEnrollmentFlowControllerBase *)self _pollNextStep];
}

void __56__DMCUnenrollmentFlowController__askForPasscodeIfNeeded__block_invoke(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) workerQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__DMCUnenrollmentFlowController__askForPasscodeIfNeeded__block_invoke_2;
  v5[3] = &unk_278EE4330;
  objc_copyWeak(&v6, (a1 + 40));
  v7 = a2;
  [v4 queueBlock:v5];

  objc_destroyWeak(&v6);
}

void __56__DMCUnenrollmentFlowController__askForPasscodeIfNeeded__block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained currentStep] != 2)
    {
      v4 = *DMCLogObjects();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v6 = 136315138;
        v7 = "[DMCUnenrollmentFlowController _askForPasscodeIfNeeded]_block_invoke_2";
        _os_log_impl(&dword_247E39000, v4, OS_LOG_TYPE_ERROR, "completionHandler in %s was excuted multiple times!", &v6, 0xCu);
      }
    }

    if (*(a1 + 40) == 1)
    {
      [v3 _flowTerminatedWithError:0 canceled:1];
    }

    else
    {
      [v3 _pollNextStep];
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __122__DMCUnenrollmentFlowController__uninstallEnrollmentProfileWithIdentifier_personaID_altDSID_isAppleMAID_unenrollmentType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __122__DMCUnenrollmentFlowController__uninstallEnrollmentProfileWithIdentifier_personaID_altDSID_isAppleMAID_unenrollmentType___block_invoke_2;
  v7[3] = &unk_278EE3528;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 queueBlock:v7];
}

uint64_t __122__DMCUnenrollmentFlowController__uninstallEnrollmentProfileWithIdentifier_personaID_altDSID_isAppleMAID_unenrollmentType___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);

    return [v2 _flowTerminatedWithError:? canceled:?];
  }

  else
  {
    v4 = *DMCLogObjects();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_247E39000, v4, OS_LOG_TYPE_DEFAULT, "MDM payload removed...", v5, 2u);
    }

    return [*(a1 + 40) _pollNextStep];
  }
}

- (DMCUnenrollmentFlowMigrationDelegate)migrationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_migrationDelegate);

  return WeakRetained;
}

- (id)_nameForStep:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return @"PreflightUnenrollment";
  }

  else
  {
    return off_278EE4378[a3 - 1];
  }
}

@end
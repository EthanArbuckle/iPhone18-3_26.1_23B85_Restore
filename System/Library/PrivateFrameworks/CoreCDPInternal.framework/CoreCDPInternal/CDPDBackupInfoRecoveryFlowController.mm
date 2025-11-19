@interface CDPDBackupInfoRecoveryFlowController
- (id)_recoveryListFromDevices:(id)a3;
- (void)beginRecoveryWithCompletion:(id)a3;
- (void)retrieveInflatedDevices:(id)a3;
- (void)secretValidator:(id)a3 didFailRecoveryWithErrors:(id)a4 completion:(id)a5;
- (void)setRecoveryRecords:(id)a3;
@end

@implementation CDPDBackupInfoRecoveryFlowController

- (void)beginRecoveryWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__CDPDBackupInfoRecoveryFlowController_beginRecoveryWithCompletion___block_invoke;
  v6[3] = &unk_278E24EA8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CDPDRecoveryFlowController *)self beginRecovery:v6];
}

void __68__CDPDBackupInfoRecoveryFlowController_beginRecoveryWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6 || [v5 userDidCancel] && (_CDPStateError(), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __68__CDPDBackupInfoRecoveryFlowController_beginRecoveryWithCompletion___block_invoke_cold_1(v7, v8);
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))(v9, 0, v7);
    }
  }

  else
  {
    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __68__CDPDBackupInfoRecoveryFlowController_beginRecoveryWithCompletion___block_invoke_cold_2(v5);
    }

    v11 = [*(a1 + 32) resultParser];
    v16 = 0;
    v12 = [v11 resultsDictionaryFromRecoveryResult:v5 error:&v16];
    v13 = v16;

    v14 = _CDPLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __68__CDPDBackupInfoRecoveryFlowController_beginRecoveryWithCompletion___block_invoke_cold_3(v12);
    }

    v15 = *(a1 + 40);
    if (v15)
    {
      (*(v15 + 16))(v15, v12, v13);
    }

    v7 = 0;
  }
}

- (void)setRecoveryRecords:(id)a3
{
  objc_storeStrong(&self->_recoveryRecords, a3);
  v5 = a3;
  v7 = [(CDPDBackupInfoRecoveryFlowController *)self errorProvider];
  v6 = [v5 prevailingLocalSecretType];

  [v7 setPrevailingSecret:v6];
}

- (void)retrieveInflatedDevices:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__CDPDBackupInfoRecoveryFlowController_retrieveInflatedDevices___block_invoke;
  v7[3] = &unk_278E24F18;
  v7[4] = self;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = CDPDBackupInfoRecoveryFlowController;
  v5 = v4;
  [(CDPDRecoveryFlowController *)&v6 retrieveInflatedDevices:v7];
}

void __64__CDPDBackupInfoRecoveryFlowController_retrieveInflatedDevices___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = MEMORY[0x277CCAC30];
  v9 = a3;
  v10 = [v8 predicateWithBlock:&__block_literal_global_5];
  v11 = [v9 filteredArrayUsingPredicate:v10];

  if (v7)
  {
    v12 = [*(a1 + 32) errorProvider];
    v13 = [v12 verficationFailedErrorwithUnderlyingError:v7];

    v14 = [*(a1 + 32) errorProvider];
    v15 = [v14 supportsErrorPresentation];

    if (v15)
    {
      v16 = [*(a1 + 32) uiProvider];
      v17 = [*(a1 + 32) recoveryContext];
      v18 = [v17 context];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __64__CDPDBackupInfoRecoveryFlowController_retrieveInflatedDevices___block_invoke_3;
      v40[3] = &unk_278E24EF0;
      v42 = *(a1 + 40);
      v41 = v13;
      [v16 cdpContext:v18 showError:v41 withCompletion:v40];

      v19 = v42;
LABEL_4:

LABEL_11:
      goto LABEL_12;
    }

    v25 = *(*(a1 + 40) + 16);
    goto LABEL_10;
  }

  if (a2 && [v11 count])
  {
    v13 = [*(a1 + 32) _recoveryListFromDevices:v11];
    v20 = [v13 objectForKeyedSubscript:&unk_2858221E0];
    v21 = [v20 count];

    if (v21)
    {
      v22 = [*(a1 + 32) errorProvider];
      v23 = [*(a1 + 32) errorProvider];
      v24 = [v23 cooldownErrorWithUnderlyingError:0];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __64__CDPDBackupInfoRecoveryFlowController_retrieveInflatedDevices___block_invoke_20;
      v38[3] = &unk_278E24780;
      v39 = *(a1 + 40);
      [v22 handleSoftLimitError:v24 completion:v38];

      v19 = v39;
      goto LABEL_4;
    }

    v30 = [v13 objectForKeyedSubscript:&unk_2858221F8];
    v31 = [v30 copy];
    [*(a1 + 32) setRecoveryRecords:v31];

    if (![*(*(a1 + 32) + 64) count])
    {
      v33 = [*(a1 + 32) errorProvider];
      v34 = [*(a1 + 32) errorProvider];
      v35 = [v34 globalHardLimitError];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __64__CDPDBackupInfoRecoveryFlowController_retrieveInflatedDevices___block_invoke_24;
      v36[3] = &unk_278E24780;
      v37 = *(a1 + 40);
      [v33 handleHardLimitError:v35 completion:v36];

      v19 = v37;
      goto LABEL_4;
    }

    v32 = *(*(a1 + 32) + 64);
    v25 = *(*(a1 + 40) + 16);
LABEL_10:
    v25();
    goto LABEL_11;
  }

  v26 = *(a1 + 40);
  if (v26)
  {
    v27 = [*(a1 + 32) errorProvider];
    v28 = _CDPStateError();
    v29 = [v27 recordNotFoundErrorWithUnderlyingError:v28];
    (*(v26 + 16))(v26, 0, 0, v29);
  }

LABEL_12:
}

BOOL __64__CDPDBackupInfoRecoveryFlowController_retrieveInflatedDevices___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 machineID];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = [v2 recoveryStatus] != 0;
  }

  return v4;
}

uint64_t __64__CDPDBackupInfoRecoveryFlowController_retrieveInflatedDevices___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, *(a1 + 32));
  }

  return result;
}

- (id)_recoveryListFromDevices:(id)a3
{
  v15[3] = *MEMORY[0x277D85DE8];
  v14[0] = &unk_2858221F8;
  v3 = MEMORY[0x277CBEB18];
  v4 = a3;
  v5 = [v3 array];
  v15[0] = v5;
  v14[1] = &unk_2858221E0;
  v6 = [MEMORY[0x277CBEB18] array];
  v15[1] = v6;
  v14[2] = &unk_285822210;
  v7 = [MEMORY[0x277CBEB18] array];
  v15[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__CDPDBackupInfoRecoveryFlowController__recoveryListFromDevices___block_invoke;
  v12[3] = &unk_278E24F40;
  v9 = v8;
  v13 = v9;
  [v4 enumerateObjectsUsingBlock:v12];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void __65__CDPDBackupInfoRecoveryFlowController__recoveryListFromDevices___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCABB0];
  v4 = a2;
  v6 = [v3 numberWithUnsignedInteger:{objc_msgSend(v4, "recoveryStatus")}];
  v5 = [v2 objectForKeyedSubscript:v6];
  [v5 addObject:v4];
}

- (void)secretValidator:(id)a3 didFailRecoveryWithErrors:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  [(CDPDBackupInfoRecoveryFlowController *)self _updateRecordRecoveryStatusForRecordDictionary:v7];
  v9 = [v7 allKeys];
  v10 = [(CDPDBackupInfoRecoveryFlowController *)self _recoveryListFromDevices:v9];

  v11 = [v10 objectForKeyedSubscript:&unk_2858221E0];
  v12 = [v11 count];

  if (v12)
  {
    v13 = [(CDPDBackupInfoRecoveryFlowController *)self errorProvider];
    v14 = [(CDPDBackupInfoRecoveryFlowController *)self errorProvider];
    v15 = [v14 cooldownErrorWithUnderlyingError:0];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __93__CDPDBackupInfoRecoveryFlowController_secretValidator_didFailRecoveryWithErrors_completion___block_invoke;
    v45[3] = &unk_278E24780;
    v46 = v8;
    [v13 handleSoftLimitError:v15 completion:v45];

    v16 = v46;
  }

  else
  {
    v16 = [v10 objectForKeyedSubscript:&unk_285822210];
    if ([v16 count])
    {
      v17 = [MEMORY[0x277CBEB58] set];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __93__CDPDBackupInfoRecoveryFlowController_secretValidator_didFailRecoveryWithErrors_completion___block_invoke_2;
      v43[3] = &unk_278E24F40;
      v18 = v17;
      v44 = v18;
      [v16 enumerateObjectsUsingBlock:v43];
      recoveryRecords = self->_recoveryRecords;
      v20 = MEMORY[0x277CCAC30];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __93__CDPDBackupInfoRecoveryFlowController_secretValidator_didFailRecoveryWithErrors_completion___block_invoke_3;
      v41[3] = &unk_278E24668;
      v21 = v18;
      v42 = v21;
      v22 = [v20 predicateWithBlock:v41];
      v23 = [(NSArray *)recoveryRecords filteredArrayUsingPredicate:v22];
      [(CDPDBackupInfoRecoveryFlowController *)self setRecoveryRecords:v23];

      v24 = [(NSArray *)self->_recoveryRecords count];
      v25 = [(CDPDBackupInfoRecoveryFlowController *)self errorProvider];
      if (v24)
      {
        v26 = [v16 firstObject];
        v27 = [v25 hardLimitErrorForRecord:v26];

        v28 = [(CDPDBackupInfoRecoveryFlowController *)self errorProvider];
        LODWORD(v26) = [v28 supportsErrorPresentation];

        if (v26)
        {
          v29 = [(CDPDRecoveryFlowController *)self uiProvider];
          v30 = [(CDPDRecoveryFlowController *)self recoveryContext];
          v31 = [v30 context];
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __93__CDPDBackupInfoRecoveryFlowController_secretValidator_didFailRecoveryWithErrors_completion___block_invoke_5;
          v36[3] = &unk_278E24EF0;
          v38 = v8;
          v37 = v7;
          [v29 cdpContext:v31 showError:v27 withCompletion:v36];

          v32 = v38;
        }

        else
        {
          v32 = _CDPStateError();
          (*(v8 + 2))(v8, 0, v32);
        }
      }

      else
      {
        v33 = [(CDPDBackupInfoRecoveryFlowController *)self errorProvider];
        v34 = [v16 firstObject];
        v35 = [v33 globalHardLimitErrorWithRecord:v34];
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __93__CDPDBackupInfoRecoveryFlowController_secretValidator_didFailRecoveryWithErrors_completion___block_invoke_4;
        v39[3] = &unk_278E24780;
        v40 = v8;
        [v25 handleHardLimitError:v35 completion:v39];

        v27 = v40;
      }
    }

    else
    {
      v21 = _CDPStateError();
      (*(v8 + 2))(v8, 1, v21);
    }
  }
}

void __93__CDPDBackupInfoRecoveryFlowController_secretValidator_didFailRecoveryWithErrors_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 recordID];
  [v2 addObject:v3];
}

uint64_t __93__CDPDBackupInfoRecoveryFlowController_secretValidator_didFailRecoveryWithErrors_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 recordID];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

void __93__CDPDBackupInfoRecoveryFlowController_secretValidator_didFailRecoveryWithErrors_completion___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = _CDPStateError();
  (*(v2 + 16))(v2, 0, v3);
}

void __87__CDPDBackupInfoRecoveryFlowController__updateRecordRecoveryStatusForRecordDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v4 = a3;
  v5 = [v4 domain];
  if ([v5 isEqualToString:*MEMORY[0x277CFD418]])
  {
    v6 = [v4 userInfo];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  else
  {
    v7 = v4;
  }

  if ([v7 isICSCRecoveryHardLimitError])
  {
    v8 = 2;
  }

  else if ([v7 isRecoveryPETHardLimitError])
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  if (([v7 isCoolDownError] & 1) != 0 || objc_msgSend(v7, "isRecoveryPETSoftLimitError"))
  {
    v8 = 1;
  }

  [v9 setRecoveryStatus:v8];
}

void __68__CDPDBackupInfoRecoveryFlowController_beginRecoveryWithCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24510B000, a2, OS_LOG_TYPE_ERROR, "Failed to recover data dictionary: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __68__CDPDBackupInfoRecoveryFlowController_beginRecoveryWithCompletion___block_invoke_cold_2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 recoveredInfo];
  OUTLINED_FUNCTION_0_6(&dword_24510B000, v2, v3, "Parsing recovered data: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __68__CDPDBackupInfoRecoveryFlowController_beginRecoveryWithCompletion___block_invoke_cold_3(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 allKeys];
  OUTLINED_FUNCTION_0_6(&dword_24510B000, v2, v3, "Recovered data dictionary with keys: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end
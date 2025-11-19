@interface HDMedicationDataDonator
- (BOOL)_checkBuilderAndCancelIfErrorForBuilder:(id)a3 fullStream:(id)a4;
- (BOOL)_registerItemForDonationForConcept:(id)a3 builder:(id)a4 fullStream:(id)a5 error:(id *)a6;
- (BOOL)_registerItemForStream:(id)a3 item:(id)a4 error:(id *)a5;
- (BOOL)getDonationRequiredOnNextUnlock;
- (HDMedicationDataDonator)initWithProfile:(id)a3;
- (id)_findPreferredNameForConcept:(id)a3;
- (id)_medicationUserDomainConceptsForProfile:(id)a3 error:(id *)a4;
- (void)_donateActiveConceptsForStream:(id)a3 activeMedications:(id)a4 error:(id)a5 completion:(id)a6;
- (void)_donateIfUDCListChangedForUDCArray:(id)a3 manager:(id)a4;
- (void)_donateWithReason:(id)a3;
- (void)_finishStreamingForStream:(id)a3 completion:(id)a4;
- (void)_performDataDonationForProfile:(id)a3 completion:(id)a4;
- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4;
- (void)profileDidBecomeReady:(id)a3;
- (void)setDonationRequiredOnNextUnlock:(BOOL)a3;
@end

@implementation HDMedicationDataDonator

- (HDMedicationDataDonator)initWithProfile:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HDMedicationDataDonator;
  v5 = [(HDMedicationDataDonator *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_profileExtension, v4);
    v6->_donationRequiredOnNextUnlock = 0;
    v8 = v7;
    v9 = [v4 profile];
    [v9 registerProfileReadyObserver:v6 queue:0];

    v6->_lock._os_unfair_lock_opaque = 0;
  }

  return v6;
}

- (BOOL)getDonationRequiredOnNextUnlock
{
  os_unfair_lock_lock(&self->_lock);
  donationRequiredOnNextUnlock = self->_donationRequiredOnNextUnlock;
  os_unfair_lock_unlock(&self->_lock);
  return donationRequiredOnNextUnlock;
}

- (void)setDonationRequiredOnNextUnlock:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_donationRequiredOnNextUnlock = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_performDataDonationForProfile:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (AFDeviceSupportsSiriUOD() & 1) != 0 || ([MEMORY[0x277CCDD30] sharedBehavior], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "shouldOverrideSiriUOD"), v8, (v9))
  {
    v19 = 0;
    v10 = [(HDMedicationDataDonator *)self _medicationUserDomainConceptsForProfile:v6 error:&v19];
    v11 = v19;
    if (v10)
    {
      WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
      v18 = v11;
      v13 = [WeakRetained createMedicationsDonatorWithError:&v18];
      v14 = v18;

      if (v13)
      {
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __69__HDMedicationDataDonator__performDataDonationForProfile_completion___block_invoke;
        v15[3] = &unk_2796CE720;
        v15[4] = self;
        v17 = v7;
        v16 = v10;
        [v13 donateWithOptions:0 usingDataStream:v15];
      }

      else
      {
        (*(v7 + 2))(v7, 0, v14);
      }
    }

    else
    {
      (*(v7 + 2))(v7, 0, v11);
      v14 = v11;
    }
  }

  else
  {
    (*(v7 + 2))(v7, 1, 0);
  }
}

void __69__HDMedicationDataDonator__performDataDonationForProfile_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  _HKInitializeLogging();
  v7 = HKLogMedication();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_25181C000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Preparing to donate all active medications in the user's list.", &v11, 0xCu);
    }

    [*(a1 + 32) _donateActiveConceptsForStream:v5 activeMedications:*(a1 + 40) error:v6 completion:*(a1 + 48)];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __69__HDMedicationDataDonator__performDataDonationForProfile_completion___block_invoke_cold_1(a1, v8);
    }

    (*(*(a1 + 48) + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_donateActiveConceptsForStream:(id)a3 activeMedications:(id)a4 error:(id)a5 completion:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v26 = a6;
  v13 = objc_alloc_init(MEMORY[0x277D22D28]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    while (2)
    {
      v18 = 0;
      v19 = v12;
      do
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v28 + 1) + 8 * v18);
        v27 = v19;
        v21 = [(HDMedicationDataDonator *)self _registerItemForDonationForConcept:v20 builder:v13 fullStream:v10 error:&v27, v26];
        v12 = v27;

        if (!v21)
        {
          _HKInitializeLogging();
          v24 = HKLogMedication();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            [HDMedicationDataDonator _donateActiveConceptsForStream:? activeMedications:? error:? completion:?];
          }

          v23 = v26;
          (*(v26 + 2))(v26, 0, v12);

          goto LABEL_13;
        }

        ++v18;
        v19 = v12;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v22 = self;
  v23 = v26;
  [(HDMedicationDataDonator *)v22 _finishStreamingForStream:v10 completion:v26];
LABEL_13:

  v25 = *MEMORY[0x277D85DE8];
}

- (BOOL)_registerItemForDonationForConcept:(id)a3 builder:(id)a4 fullStream:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_alloc(MEMORY[0x277CCD660]);
  v14 = [v10 semanticIdentifier];
  v15 = [v14 stringValue];
  v16 = [v13 initWithSemanticIdentifierString:v15];

  v17 = [v10 freeTextMedicationName];
  if (v17)
  {
    [v10 freeTextMedicationName];
  }

  else
  {
    [(HDMedicationDataDonator *)self _findPreferredNameForConcept:v10];
  }
  v18 = ;

  v19 = [v16 underlyingIdentifier];
  v20 = [v11 setItemType:19 itemId:v19 error:a6];

  if (-[HDMedicationDataDonator _checkBuilderAndCancelIfErrorForBuilder:fullStream:](self, "_checkBuilderAndCancelIfErrorForBuilder:fullStream:", v11, v12) && (v21 = [v11 addFieldWithType:850 value:v18 error:a6], -[HDMedicationDataDonator _checkBuilderAndCancelIfErrorForBuilder:fullStream:](self, "_checkBuilderAndCancelIfErrorForBuilder:fullStream:", v11, v12)) && (objc_msgSend(v10, "userSpecifiedName"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v11, "addFieldWithType:value:error:", 851, v22, a6), v22, -[HDMedicationDataDonator _checkBuilderAndCancelIfErrorForBuilder:fullStream:](self, "_checkBuilderAndCancelIfErrorForBuilder:fullStream:", v11, v12)))
  {
    v24 = [v11 buildItemWithError:a6];
    if (v24)
    {
      v25 = [(HDMedicationDataDonator *)self _registerItemForStream:v12 item:v24 error:a6];
    }

    else
    {
      [v12 cancel];
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (BOOL)_registerItemForStream:(id)a3 item:(id)a4 error:(id *)a5
{
  v7 = [a3 registerItem:a4 error:a5];
  if ((v7 & 1) == 0)
  {
    _HKInitializeLogging();
    v8 = HKLogMedication();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [HDMedicationDataDonator _registerItemForStream:a5 item:v8 error:?];
    }
  }

  return v7;
}

- (void)_finishStreamingForStream:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__HDMedicationDataDonator__finishStreamingForStream_completion___block_invoke;
  v8[3] = &unk_2796CE748;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [a3 finish:v8];
}

void __64__HDMedicationDataDonator__finishStreamingForStream_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogMedication();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __64__HDMedicationDataDonator__finishStreamingForStream_completion___block_invoke_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_25181C000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Finished data donation.", &v8, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x277D85DE8];
}

- (id)_medicationUserDomainConceptsForProfile:(id)a3 error:(id *)a4
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCDB50];
  v6 = a3;
  v7 = [v5 medicationUserDomainConceptTypeIdentifier];
  v8 = HDUserDomainConceptEntityPredicateForConceptsWithTypeIdentifier();
  v9 = MEMORY[0x277D10B20];
  v21[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v11 = [v9 predicateMatchingAllPredicates:v10];

  v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v13 = [v6 userDomainConceptManager];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __73__HDMedicationDataDonator__medicationUserDomainConceptsForProfile_error___block_invoke;
  v19[3] = &unk_2796CD5A0;
  v20 = v12;
  v14 = v12;
  LODWORD(a4) = [v13 enumerateUserDomainConceptsWithPredicate:v11 error:a4 enumerationHandler:v19];

  if (a4)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)_checkBuilderAndCancelIfErrorForBuilder:(id)a3 fullStream:(id)a4
{
  if (!a3)
  {
    [a4 cancel];
  }

  return a3 != 0;
}

- (id)_findPreferredNameForConcept:(id)a3
{
  v3 = [a3 displayNameComponents];
  v4 = [v3 medicationDisplayName];

  return v4;
}

- (void)profileDidBecomeReady:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  v5 = [WeakRetained profile];
  v6 = [v5 database];
  [v6 addProtectedDataObserver:self];

  v7 = objc_loadWeakRetained(&self->_profileExtension);
  v8 = [v7 profile];
  v9 = [v8 userDomainConceptManager];
  [v9 addUserDomainConceptObserver:self queue:0];

  [(HDMedicationDataDonator *)self _donateWithReason:@"Profile did become ready. Triggering data donation."];
}

- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4
{
  v4 = a4;
  if ([(HDMedicationDataDonator *)self donationRequiredOnNextUnlock]&& v4)
  {

    [(HDMedicationDataDonator *)self _donateWithReason:@"Did observe protected database becoming ready and donation needed. Triggering data donation."];
  }
}

- (void)_donateIfUDCListChangedForUDCArray:(id)a3 manager:(id)a4
{
  if ([(HDMedicationDataDonator *)self _medicationUDCHasChangedForUDCArray:a3, a4])
  {

    [(HDMedicationDataDonator *)self _donateWithReason:@"Did observe change of user domain concept(s) list. Triggering data donation."];
  }
}

uint64_t __63__HDMedicationDataDonator__medicationUDCHasChangedForUDCArray___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_donateWithReason:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogMedication();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v11 = self;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_25181C000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] %@", buf, 0x16u);
  }

  [(HDMedicationDataDonator *)self setDonationRequiredOnNextUnlock:0];
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  v7 = [WeakRetained profile];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__HDMedicationDataDonator__donateWithReason___block_invoke;
  v9[3] = &unk_2796CE3B0;
  v9[4] = self;
  [(HDMedicationDataDonator *)self _performDataDonationForProfile:v7 completion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __45__HDMedicationDataDonator__donateWithReason___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogMedication();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __45__HDMedicationDataDonator__donateWithReason___block_invoke_cold_1(a1);
    }

    if ([v5 hk_isDatabaseAccessibilityError])
    {
      [*(a1 + 32) setDonationRequiredOnNextUnlock:1];
    }
  }
}

void __69__HDMedicationDataDonator__performDataDonationForProfile_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_25181C000, a2, OS_LOG_TYPE_ERROR, "[%{public}@] [Error] Stream was nil, unable to donate medications.", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_donateActiveConceptsForStream:(uint64_t)a1 activeMedications:error:completion:.cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138543618;
  *(&v4 + 4) = a1;
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_1(&dword_25181C000, v1, v2, "[%{public}@] [Error] Error while registering item for donation, unable to donate medication: %@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_registerItemForStream:(uint64_t)a1 item:(void *)a2 error:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = a1;
  *&v4[12] = 2112;
  *&v4[14] = *a2;
  OUTLINED_FUNCTION_1(&dword_25181C000, a2, a3, "[%{public}@] [Error] Failed to register item during data donation %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

void __64__HDMedicationDataDonator__finishStreamingForStream_completion___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138543618;
  *(&v4 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_1(&dword_25181C000, v1, v2, "[%{public}@] [Error] Failed to finish stream during data donation %@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

void __45__HDMedicationDataDonator__donateWithReason___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138543618;
  *(&v4 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_1(&dword_25181C000, v1, v2, "[%{public}@] [Error] Failed to donate items due to error: %@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

@end
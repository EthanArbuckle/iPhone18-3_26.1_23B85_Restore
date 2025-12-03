@interface HDMedicationDataDonator
- (BOOL)_checkBuilderAndCancelIfErrorForBuilder:(id)builder fullStream:(id)stream;
- (BOOL)_registerItemForDonationForConcept:(id)concept builder:(id)builder fullStream:(id)stream error:(id *)error;
- (BOOL)_registerItemForStream:(id)stream item:(id)item error:(id *)error;
- (BOOL)getDonationRequiredOnNextUnlock;
- (HDMedicationDataDonator)initWithProfile:(id)profile;
- (id)_findPreferredNameForConcept:(id)concept;
- (id)_medicationUserDomainConceptsForProfile:(id)profile error:(id *)error;
- (void)_donateActiveConceptsForStream:(id)stream activeMedications:(id)medications error:(id)error completion:(id)completion;
- (void)_donateIfUDCListChangedForUDCArray:(id)array manager:(id)manager;
- (void)_donateWithReason:(id)reason;
- (void)_finishStreamingForStream:(id)stream completion:(id)completion;
- (void)_performDataDonationForProfile:(id)profile completion:(id)completion;
- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available;
- (void)profileDidBecomeReady:(id)ready;
- (void)setDonationRequiredOnNextUnlock:(BOOL)unlock;
@end

@implementation HDMedicationDataDonator

- (HDMedicationDataDonator)initWithProfile:(id)profile
{
  profileCopy = profile;
  v11.receiver = self;
  v11.super_class = HDMedicationDataDonator;
  v5 = [(HDMedicationDataDonator *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_profileExtension, profileCopy);
    v6->_donationRequiredOnNextUnlock = 0;
    v8 = v7;
    profile = [profileCopy profile];
    [profile registerProfileReadyObserver:v6 queue:0];

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

- (void)setDonationRequiredOnNextUnlock:(BOOL)unlock
{
  os_unfair_lock_lock(&self->_lock);
  self->_donationRequiredOnNextUnlock = unlock;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_performDataDonationForProfile:(id)profile completion:(id)completion
{
  profileCopy = profile;
  completionCopy = completion;
  if (AFDeviceSupportsSiriUOD() & 1) != 0 || ([MEMORY[0x277CCDD30] sharedBehavior], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "shouldOverrideSiriUOD"), v8, (v9))
  {
    v19 = 0;
    v10 = [(HDMedicationDataDonator *)self _medicationUserDomainConceptsForProfile:profileCopy error:&v19];
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
        v17 = completionCopy;
        v16 = v10;
        [v13 donateWithOptions:0 usingDataStream:v15];
      }

      else
      {
        (*(completionCopy + 2))(completionCopy, 0, v14);
      }
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0, v11);
      v14 = v11;
    }
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
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

- (void)_donateActiveConceptsForStream:(id)stream activeMedications:(id)medications error:(id)error completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  medicationsCopy = medications;
  errorCopy = error;
  completionCopy = completion;
  v13 = objc_alloc_init(MEMORY[0x277D22D28]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v14 = medicationsCopy;
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    while (2)
    {
      v18 = 0;
      v19 = errorCopy;
      do
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v28 + 1) + 8 * v18);
        v27 = v19;
        completionCopy = [(HDMedicationDataDonator *)self _registerItemForDonationForConcept:v20 builder:v13 fullStream:streamCopy error:&v27, completionCopy];
        errorCopy = v27;

        if (!completionCopy)
        {
          _HKInitializeLogging();
          v24 = HKLogMedication();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            [HDMedicationDataDonator _donateActiveConceptsForStream:? activeMedications:? error:? completion:?];
          }

          v23 = completionCopy;
          (*(completionCopy + 2))(completionCopy, 0, errorCopy);

          goto LABEL_13;
        }

        ++v18;
        v19 = errorCopy;
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

  selfCopy = self;
  v23 = completionCopy;
  [(HDMedicationDataDonator *)selfCopy _finishStreamingForStream:streamCopy completion:completionCopy];
LABEL_13:

  v25 = *MEMORY[0x277D85DE8];
}

- (BOOL)_registerItemForDonationForConcept:(id)concept builder:(id)builder fullStream:(id)stream error:(id *)error
{
  conceptCopy = concept;
  builderCopy = builder;
  streamCopy = stream;
  v13 = objc_alloc(MEMORY[0x277CCD660]);
  semanticIdentifier = [conceptCopy semanticIdentifier];
  stringValue = [semanticIdentifier stringValue];
  v16 = [v13 initWithSemanticIdentifierString:stringValue];

  freeTextMedicationName = [conceptCopy freeTextMedicationName];
  if (freeTextMedicationName)
  {
    [conceptCopy freeTextMedicationName];
  }

  else
  {
    [(HDMedicationDataDonator *)self _findPreferredNameForConcept:conceptCopy];
  }
  v18 = ;

  underlyingIdentifier = [v16 underlyingIdentifier];
  v20 = [builderCopy setItemType:19 itemId:underlyingIdentifier error:error];

  if (-[HDMedicationDataDonator _checkBuilderAndCancelIfErrorForBuilder:fullStream:](self, "_checkBuilderAndCancelIfErrorForBuilder:fullStream:", builderCopy, streamCopy) && (v21 = [builderCopy addFieldWithType:850 value:v18 error:error], -[HDMedicationDataDonator _checkBuilderAndCancelIfErrorForBuilder:fullStream:](self, "_checkBuilderAndCancelIfErrorForBuilder:fullStream:", builderCopy, streamCopy)) && (objc_msgSend(conceptCopy, "userSpecifiedName"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(builderCopy, "addFieldWithType:value:error:", 851, v22, error), v22, -[HDMedicationDataDonator _checkBuilderAndCancelIfErrorForBuilder:fullStream:](self, "_checkBuilderAndCancelIfErrorForBuilder:fullStream:", builderCopy, streamCopy)))
  {
    v24 = [builderCopy buildItemWithError:error];
    if (v24)
    {
      v25 = [(HDMedicationDataDonator *)self _registerItemForStream:streamCopy item:v24 error:error];
    }

    else
    {
      [streamCopy cancel];
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (BOOL)_registerItemForStream:(id)stream item:(id)item error:(id *)error
{
  v7 = [stream registerItem:item error:error];
  if ((v7 & 1) == 0)
  {
    _HKInitializeLogging();
    v8 = HKLogMedication();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [HDMedicationDataDonator _registerItemForStream:error item:v8 error:?];
    }
  }

  return v7;
}

- (void)_finishStreamingForStream:(id)stream completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__HDMedicationDataDonator__finishStreamingForStream_completion___block_invoke;
  v8[3] = &unk_2796CE748;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [stream finish:v8];
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

- (id)_medicationUserDomainConceptsForProfile:(id)profile error:(id *)error
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCDB50];
  profileCopy = profile;
  medicationUserDomainConceptTypeIdentifier = [v5 medicationUserDomainConceptTypeIdentifier];
  v8 = HDUserDomainConceptEntityPredicateForConceptsWithTypeIdentifier();
  v9 = MEMORY[0x277D10B20];
  v21[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v11 = [v9 predicateMatchingAllPredicates:v10];

  v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
  userDomainConceptManager = [profileCopy userDomainConceptManager];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __73__HDMedicationDataDonator__medicationUserDomainConceptsForProfile_error___block_invoke;
  v19[3] = &unk_2796CD5A0;
  v20 = v12;
  v14 = v12;
  LODWORD(error) = [userDomainConceptManager enumerateUserDomainConceptsWithPredicate:v11 error:error enumerationHandler:v19];

  if (error)
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

- (BOOL)_checkBuilderAndCancelIfErrorForBuilder:(id)builder fullStream:(id)stream
{
  if (!builder)
  {
    [stream cancel];
  }

  return builder != 0;
}

- (id)_findPreferredNameForConcept:(id)concept
{
  displayNameComponents = [concept displayNameComponents];
  medicationDisplayName = [displayNameComponents medicationDisplayName];

  return medicationDisplayName;
}

- (void)profileDidBecomeReady:(id)ready
{
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  profile = [WeakRetained profile];
  database = [profile database];
  [database addProtectedDataObserver:self];

  v7 = objc_loadWeakRetained(&self->_profileExtension);
  profile2 = [v7 profile];
  userDomainConceptManager = [profile2 userDomainConceptManager];
  [userDomainConceptManager addUserDomainConceptObserver:self queue:0];

  [(HDMedicationDataDonator *)self _donateWithReason:@"Profile did become ready. Triggering data donation."];
}

- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available
{
  availableCopy = available;
  if ([(HDMedicationDataDonator *)self donationRequiredOnNextUnlock]&& availableCopy)
  {

    [(HDMedicationDataDonator *)self _donateWithReason:@"Did observe protected database becoming ready and donation needed. Triggering data donation."];
  }
}

- (void)_donateIfUDCListChangedForUDCArray:(id)array manager:(id)manager
{
  if ([(HDMedicationDataDonator *)self _medicationUDCHasChangedForUDCArray:array, manager])
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

- (void)_donateWithReason:(id)reason
{
  v14 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  _HKInitializeLogging();
  v5 = HKLogMedication();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v12 = 2112;
    v13 = reasonCopy;
    _os_log_impl(&dword_25181C000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] %@", buf, 0x16u);
  }

  [(HDMedicationDataDonator *)self setDonationRequiredOnNextUnlock:0];
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);
  profile = [WeakRetained profile];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__HDMedicationDataDonator__donateWithReason___block_invoke;
  v9[3] = &unk_2796CE3B0;
  v9[4] = self;
  [(HDMedicationDataDonator *)self _performDataDonationForProfile:profile completion:v9];

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
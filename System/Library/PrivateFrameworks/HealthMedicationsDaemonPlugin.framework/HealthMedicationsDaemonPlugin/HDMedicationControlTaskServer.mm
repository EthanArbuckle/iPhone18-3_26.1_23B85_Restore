@interface HDMedicationControlTaskServer
- (void)remote_allDismissedDrugInteractionsWithCompletion:(id)completion;
- (void)remote_allDismissedPregnancyLactationInteractionsWithCompletion:(id)completion;
- (void)remote_allDismissedRemoteScheduleUnavailableRecordsWithCompletion:(id)completion;
- (void)remote_deleteDismissedDrugInteractionsForMedication:(id)medication completion:(id)completion;
- (void)remote_deleteDismissedPregnancyLactationInteractionsForMedication:(id)medication interactionTypes:(id)types completion:(id)completion;
- (void)remote_deleteDismissedRemoteScheduleUnavailableForMedication:(id)medication completion:(id)completion;
- (void)remote_markDrugInteractionAsDismissed:(id)dismissed completion:(id)completion;
- (void)remote_markPregnancyLactationInteractionForMedicationAsDismissed:(id)dismissed interactionType:(int64_t)type completion:(id)completion;
- (void)remote_markRemoteScheduleUnavailableRecordsAsDismissed:(id)dismissed completion:(id)completion;
- (void)remote_updateLocalDeviceValuesNowWithCompletion:(id)completion;
@end

@implementation HDMedicationControlTaskServer

- (void)remote_updateLocalDeviceValuesNowWithCompletion:(id)completion
{
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  healthMedicationsProfileExtension = [profile healthMedicationsProfileExtension];
  deviceScopedStorageManager = [healthMedicationsProfileExtension deviceScopedStorageManager];

  v10 = 0;
  v8 = [deviceScopedStorageManager updateLocalDeviceValuesNowWithError:&v10];
  v9 = v10;
  completionCopy[2](completionCopy, v8, v9);
}

- (void)remote_markRemoteScheduleUnavailableRecordsAsDismissed:(id)dismissed completion:(id)completion
{
  completionCopy = completion;
  v7 = [dismissed hk_map:&__block_literal_global];
  profile = [(HDStandardTaskServer *)self profile];
  v11 = 0;
  v9 = [HDDismissedRemoteScheduleUnavailableRecordEntity insertDismissedRemoteScheduleUnavailableRecords:v7 profile:profile error:&v11];
  v10 = v11;

  completionCopy[2](completionCopy, v9, v10);
}

- (void)remote_allDismissedRemoteScheduleUnavailableRecordsWithCompletion:(id)completion
{
  v4 = MEMORY[0x277CBEB18];
  completionCopy = completion;
  v6 = objc_alloc_init(v4);
  profile = [(HDStandardTaskServer *)self profile];
  database = [profile database];
  v14 = v6;
  v15 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __99__HDMedicationControlTaskServer_remote_allDismissedRemoteScheduleUnavailableRecordsWithCompletion___block_invoke;
  v13[3] = &unk_2796CD388;
  v9 = v6;
  v10 = [(HDHealthEntity *)HDDismissedRemoteScheduleUnavailableRecordEntity performReadTransactionWithHealthDatabase:database error:&v15 block:v13];
  v11 = v15;

  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  (completionCopy)[2](completionCopy, v12, v11);
}

BOOL __99__HDMedicationControlTaskServer_remote_allDismissedRemoteScheduleUnavailableRecordsWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __99__HDMedicationControlTaskServer_remote_allDismissedRemoteScheduleUnavailableRecordsWithCompletion___block_invoke_2;
  v7[3] = &unk_2796CD360;
  v8 = *(a1 + 32);
  v5 = [HDDismissedRemoteScheduleUnavailableRecordEntity enumerateDismissedRemoteScheduleUnavailableRecordEntitiesWithPredicate:0 transaction:a2 error:a3 enumerationHandler:v7];

  return v5;
}

- (void)remote_deleteDismissedRemoteScheduleUnavailableForMedication:(id)medication completion:(id)completion
{
  v22[1] = *MEMORY[0x277D85DE8];
  medicationCopy = medication;
  completionCopy = completion;
  semanticIdentifier = [medicationCopy semanticIdentifier];
  stringValue = [semanticIdentifier stringValue];

  if (stringValue)
  {
    semanticIdentifier2 = [medicationCopy semanticIdentifier];
    stringValue2 = [semanticIdentifier2 stringValue];
    v22[0] = stringValue2;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    v14 = HDDismissedRemoteScheduleUnavailableRecordsForMedicationSemanticIdentifiers(v13);

    profile = [(HDStandardTaskServer *)self profile];
    database = [profile database];
    v21 = 0;
    v17 = [(HDHealthEntity *)HDDismissedRemoteScheduleUnavailableRecordEntity deleteEntitiesWithPredicate:v14 healthDatabase:database error:&v21];
    v18 = v21;

    completionCopy[2](completionCopy, v17, v18);
  }

  else
  {
    v19 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"%@: medication.semanticIdentifier must not be nil", self}];
    completionCopy[2](completionCopy, 0, v19);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)remote_markDrugInteractionAsDismissed:(id)dismissed completion:(id)completion
{
  v6 = MEMORY[0x277D114F0];
  completionCopy = completion;
  dismissedCopy = dismissed;
  v9 = [[v6 alloc] _initWithDrugInteractionResult:dismissedCopy];

  profile = [(HDStandardTaskServer *)self profile];
  v13 = 0;
  v11 = [HDDismissedDrugInteractionResultEntity insertDismissedDrugInteractionResult:v9 profile:profile error:&v13];
  v12 = v13;

  completionCopy[2](completionCopy, v11, v12);
}

- (void)remote_allDismissedDrugInteractionsWithCompletion:(id)completion
{
  v4 = MEMORY[0x277CBEB18];
  completionCopy = completion;
  v6 = objc_alloc_init(v4);
  profile = [(HDStandardTaskServer *)self profile];
  database = [profile database];
  v14 = v6;
  v15 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__HDMedicationControlTaskServer_remote_allDismissedDrugInteractionsWithCompletion___block_invoke;
  v13[3] = &unk_2796CD388;
  v9 = v6;
  v10 = [(HDHealthEntity *)HDDismissedDrugInteractionResultEntity performReadTransactionWithHealthDatabase:database error:&v15 block:v13];
  v11 = v15;

  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  (completionCopy)[2](completionCopy, v12, v11);
}

BOOL __83__HDMedicationControlTaskServer_remote_allDismissedDrugInteractionsWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__HDMedicationControlTaskServer_remote_allDismissedDrugInteractionsWithCompletion___block_invoke_2;
  v7[3] = &unk_2796CD3B0;
  v8 = *(a1 + 32);
  v5 = [HDDismissedDrugInteractionResultEntity enumerateDismissedDrugInteractionResultsWithPredicate:0 transaction:a2 error:a3 enumerationHandler:v7];

  return v5;
}

- (void)remote_deleteDismissedDrugInteractionsForMedication:(id)medication completion:(id)completion
{
  medicationCopy = medication;
  completionCopy = completion;
  firstConceptIdentifier = [medicationCopy firstConceptIdentifier];

  if (firstConceptIdentifier)
  {
    firstConceptIdentifier2 = [medicationCopy firstConceptIdentifier];
    v11 = HDDismissedDrugInteractionResultPredicateForDrugClassAncestorIdentifier(firstConceptIdentifier2);

    profile = [(HDStandardTaskServer *)self profile];
    database = [profile database];
    v16 = 0;
    v14 = [(HDHealthEntity *)HDDismissedDrugInteractionResultEntity deleteEntitiesWithPredicate:v11 healthDatabase:database error:&v16];
    v15 = v16;

    completionCopy[2](completionCopy, v14, v15);
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"%@: medication.firstConceptIdentifier must not be nil", self}];
    completionCopy[2](completionCopy, 0, v11);
  }
}

- (void)remote_markPregnancyLactationInteractionForMedicationAsDismissed:(id)dismissed interactionType:(int64_t)type completion:(id)completion
{
  v8 = MEMORY[0x277D114F8];
  completionCopy = completion;
  dismissedCopy = dismissed;
  v11 = [v8 alloc];
  firstConceptIdentifier = [dismissedCopy firstConceptIdentifier];

  date = [MEMORY[0x277CBEAA8] date];
  v14 = [v11 _initWithMedicationIdentifier:firstConceptIdentifier interactionType:type creationDate:date];

  profile = [(HDStandardTaskServer *)self profile];
  v18 = 0;
  v16 = [HDDismissedPregnancyLactationInteractionEntity insertDismissedPregnancyLactationInteraction:v14 profile:profile error:&v18];
  v17 = v18;

  completionCopy[2](completionCopy, v16, v17);
}

- (void)remote_allDismissedPregnancyLactationInteractionsWithCompletion:(id)completion
{
  v4 = MEMORY[0x277CBEB18];
  completionCopy = completion;
  v6 = objc_alloc_init(v4);
  profile = [(HDStandardTaskServer *)self profile];
  database = [profile database];
  v14 = v6;
  v15 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __97__HDMedicationControlTaskServer_remote_allDismissedPregnancyLactationInteractionsWithCompletion___block_invoke;
  v13[3] = &unk_2796CD388;
  v9 = v6;
  v10 = [(HDHealthEntity *)HDDismissedPregnancyLactationInteractionEntity performReadTransactionWithHealthDatabase:database error:&v15 block:v13];
  v11 = v15;

  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  (completionCopy)[2](completionCopy, v12, v11);
}

BOOL __97__HDMedicationControlTaskServer_remote_allDismissedPregnancyLactationInteractionsWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __97__HDMedicationControlTaskServer_remote_allDismissedPregnancyLactationInteractionsWithCompletion___block_invoke_2;
  v7[3] = &unk_2796CD3D8;
  v8 = *(a1 + 32);
  v5 = [HDDismissedPregnancyLactationInteractionEntity enumerateDismissedPregnancyLactationInteractionsWithPredicate:0 transaction:a2 error:a3 enumerationHandler:v7];

  return v5;
}

- (void)remote_deleteDismissedPregnancyLactationInteractionsForMedication:(id)medication interactionTypes:(id)types completion:(id)completion
{
  v23[1] = *MEMORY[0x277D85DE8];
  medicationCopy = medication;
  typesCopy = types;
  completionCopy = completion;
  firstConceptIdentifier = [medicationCopy firstConceptIdentifier];

  if (firstConceptIdentifier)
  {
    firstConceptIdentifier2 = [medicationCopy firstConceptIdentifier];
    v23[0] = firstConceptIdentifier2;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    v15 = HDDismissedPregnancyLactationInteractionPredicateForMedicationIdentifiersAndInteractionTypes(v14, typesCopy);

    profile = [(HDStandardTaskServer *)self profile];
    database = [profile database];
    v22 = 0;
    v18 = [(HDHealthEntity *)HDDismissedPregnancyLactationInteractionEntity deleteEntitiesWithPredicate:v15 healthDatabase:database error:&v22];
    v19 = v22;

    completionCopy[2](completionCopy, v18, v19);
  }

  else
  {
    v20 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"%@: medication.firstConceptIdentifier must not be nil", self}];
    completionCopy[2](completionCopy, 0, v20);
  }

  v21 = *MEMORY[0x277D85DE8];
}

@end
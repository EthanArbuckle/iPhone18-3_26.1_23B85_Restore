@interface HDMedicationControlTaskServer
- (void)remote_allDismissedDrugInteractionsWithCompletion:(id)a3;
- (void)remote_allDismissedPregnancyLactationInteractionsWithCompletion:(id)a3;
- (void)remote_allDismissedRemoteScheduleUnavailableRecordsWithCompletion:(id)a3;
- (void)remote_deleteDismissedDrugInteractionsForMedication:(id)a3 completion:(id)a4;
- (void)remote_deleteDismissedPregnancyLactationInteractionsForMedication:(id)a3 interactionTypes:(id)a4 completion:(id)a5;
- (void)remote_deleteDismissedRemoteScheduleUnavailableForMedication:(id)a3 completion:(id)a4;
- (void)remote_markDrugInteractionAsDismissed:(id)a3 completion:(id)a4;
- (void)remote_markPregnancyLactationInteractionForMedicationAsDismissed:(id)a3 interactionType:(int64_t)a4 completion:(id)a5;
- (void)remote_markRemoteScheduleUnavailableRecordsAsDismissed:(id)a3 completion:(id)a4;
- (void)remote_updateLocalDeviceValuesNowWithCompletion:(id)a3;
@end

@implementation HDMedicationControlTaskServer

- (void)remote_updateLocalDeviceValuesNowWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HDStandardTaskServer *)self profile];
  v6 = [v5 healthMedicationsProfileExtension];
  v7 = [v6 deviceScopedStorageManager];

  v10 = 0;
  v8 = [v7 updateLocalDeviceValuesNowWithError:&v10];
  v9 = v10;
  v4[2](v4, v8, v9);
}

- (void)remote_markRemoteScheduleUnavailableRecordsAsDismissed:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 hk_map:&__block_literal_global];
  v8 = [(HDStandardTaskServer *)self profile];
  v11 = 0;
  v9 = [HDDismissedRemoteScheduleUnavailableRecordEntity insertDismissedRemoteScheduleUnavailableRecords:v7 profile:v8 error:&v11];
  v10 = v11;

  v6[2](v6, v9, v10);
}

- (void)remote_allDismissedRemoteScheduleUnavailableRecordsWithCompletion:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [(HDStandardTaskServer *)self profile];
  v8 = [v7 database];
  v14 = v6;
  v15 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __99__HDMedicationControlTaskServer_remote_allDismissedRemoteScheduleUnavailableRecordsWithCompletion___block_invoke;
  v13[3] = &unk_2796CD388;
  v9 = v6;
  v10 = [(HDHealthEntity *)HDDismissedRemoteScheduleUnavailableRecordEntity performReadTransactionWithHealthDatabase:v8 error:&v15 block:v13];
  v11 = v15;

  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  (v5)[2](v5, v12, v11);
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

- (void)remote_deleteDismissedRemoteScheduleUnavailableForMedication:(id)a3 completion:(id)a4
{
  v22[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v7 semanticIdentifier];
  v10 = [v9 stringValue];

  if (v10)
  {
    v11 = [v7 semanticIdentifier];
    v12 = [v11 stringValue];
    v22[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    v14 = HDDismissedRemoteScheduleUnavailableRecordsForMedicationSemanticIdentifiers(v13);

    v15 = [(HDStandardTaskServer *)self profile];
    v16 = [v15 database];
    v21 = 0;
    v17 = [(HDHealthEntity *)HDDismissedRemoteScheduleUnavailableRecordEntity deleteEntitiesWithPredicate:v14 healthDatabase:v16 error:&v21];
    v18 = v21;

    v8[2](v8, v17, v18);
  }

  else
  {
    v19 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"%@: medication.semanticIdentifier must not be nil", self}];
    v8[2](v8, 0, v19);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)remote_markDrugInteractionAsDismissed:(id)a3 completion:(id)a4
{
  v6 = MEMORY[0x277D114F0];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] _initWithDrugInteractionResult:v8];

  v10 = [(HDStandardTaskServer *)self profile];
  v13 = 0;
  v11 = [HDDismissedDrugInteractionResultEntity insertDismissedDrugInteractionResult:v9 profile:v10 error:&v13];
  v12 = v13;

  v7[2](v7, v11, v12);
}

- (void)remote_allDismissedDrugInteractionsWithCompletion:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [(HDStandardTaskServer *)self profile];
  v8 = [v7 database];
  v14 = v6;
  v15 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__HDMedicationControlTaskServer_remote_allDismissedDrugInteractionsWithCompletion___block_invoke;
  v13[3] = &unk_2796CD388;
  v9 = v6;
  v10 = [(HDHealthEntity *)HDDismissedDrugInteractionResultEntity performReadTransactionWithHealthDatabase:v8 error:&v15 block:v13];
  v11 = v15;

  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  (v5)[2](v5, v12, v11);
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

- (void)remote_deleteDismissedDrugInteractionsForMedication:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 firstConceptIdentifier];

  if (v9)
  {
    v10 = [v7 firstConceptIdentifier];
    v11 = HDDismissedDrugInteractionResultPredicateForDrugClassAncestorIdentifier(v10);

    v12 = [(HDStandardTaskServer *)self profile];
    v13 = [v12 database];
    v16 = 0;
    v14 = [(HDHealthEntity *)HDDismissedDrugInteractionResultEntity deleteEntitiesWithPredicate:v11 healthDatabase:v13 error:&v16];
    v15 = v16;

    v8[2](v8, v14, v15);
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"%@: medication.firstConceptIdentifier must not be nil", self}];
    v8[2](v8, 0, v11);
  }
}

- (void)remote_markPregnancyLactationInteractionForMedicationAsDismissed:(id)a3 interactionType:(int64_t)a4 completion:(id)a5
{
  v8 = MEMORY[0x277D114F8];
  v9 = a5;
  v10 = a3;
  v11 = [v8 alloc];
  v12 = [v10 firstConceptIdentifier];

  v13 = [MEMORY[0x277CBEAA8] date];
  v14 = [v11 _initWithMedicationIdentifier:v12 interactionType:a4 creationDate:v13];

  v15 = [(HDStandardTaskServer *)self profile];
  v18 = 0;
  v16 = [HDDismissedPregnancyLactationInteractionEntity insertDismissedPregnancyLactationInteraction:v14 profile:v15 error:&v18];
  v17 = v18;

  v9[2](v9, v16, v17);
}

- (void)remote_allDismissedPregnancyLactationInteractionsWithCompletion:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [(HDStandardTaskServer *)self profile];
  v8 = [v7 database];
  v14 = v6;
  v15 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __97__HDMedicationControlTaskServer_remote_allDismissedPregnancyLactationInteractionsWithCompletion___block_invoke;
  v13[3] = &unk_2796CD388;
  v9 = v6;
  v10 = [(HDHealthEntity *)HDDismissedPregnancyLactationInteractionEntity performReadTransactionWithHealthDatabase:v8 error:&v15 block:v13];
  v11 = v15;

  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  (v5)[2](v5, v12, v11);
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

- (void)remote_deleteDismissedPregnancyLactationInteractionsForMedication:(id)a3 interactionTypes:(id)a4 completion:(id)a5
{
  v23[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 firstConceptIdentifier];

  if (v12)
  {
    v13 = [v9 firstConceptIdentifier];
    v23[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    v15 = HDDismissedPregnancyLactationInteractionPredicateForMedicationIdentifiersAndInteractionTypes(v14, v10);

    v16 = [(HDStandardTaskServer *)self profile];
    v17 = [v16 database];
    v22 = 0;
    v18 = [(HDHealthEntity *)HDDismissedPregnancyLactationInteractionEntity deleteEntitiesWithPredicate:v15 healthDatabase:v17 error:&v22];
    v19 = v22;

    v11[2](v11, v18, v19);
  }

  else
  {
    v20 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"%@: medication.firstConceptIdentifier must not be nil", self}];
    v11[2](v11, 0, v20);
  }

  v21 = *MEMORY[0x277D85DE8];
}

@end
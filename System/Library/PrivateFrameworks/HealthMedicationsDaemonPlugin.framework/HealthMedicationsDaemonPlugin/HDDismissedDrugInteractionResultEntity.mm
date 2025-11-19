@interface HDDismissedDrugInteractionResultEntity
+ (BOOL)_insertDismissedDrugInteractionResult:(void *)a3 transaction:(uint64_t)a4 error:;
+ (BOOL)enumerateDismissedDrugInteractionResultsWithPredicate:(id)a3 transaction:(id)a4 error:(id *)a5 enumerationHandler:(id)a6;
+ (BOOL)insertDismissedDrugInteractionResult:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)_propertiesForEntity;
+ (id)uniquedColumns;
@end

@implementation HDDismissedDrugInteractionResultEntity

+ (id)uniquedColumns
{
  v5[5] = *MEMORY[0x277D85DE8];
  v5[0] = @"interaction_identifier";
  v5[1] = @"first_drug_class_identifier";
  v5[2] = @"first_drug_class_ancestor_identifier";
  v5[3] = @"second_drug_class_identifier";
  v5[4] = @"second_drug_class_ancestor_identifier";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:5];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (BOOL)enumerateDismissedDrugInteractionResultsWithPredicate:(id)a3 transaction:(id)a4 error:(id *)a5 enumerationHandler:(id)a6
{
  v10 = a6;
  v11 = a3;
  v12 = [a4 databaseForEntityClass:a1];
  v13 = [a1 queryWithDatabase:v12 predicate:v11];

  v14 = +[HDDismissedDrugInteractionResultEntity _propertiesForEntity];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __133__HDDismissedDrugInteractionResultEntity_enumerateDismissedDrugInteractionResultsWithPredicate_transaction_error_enumerationHandler___block_invoke;
  v17[3] = &unk_2796CDFB0;
  v18 = v10;
  v15 = v10;
  LOBYTE(a5) = [v13 enumerateProperties:v14 error:a5 enumerationHandler:v17];

  return a5;
}

+ (id)_propertiesForEntity
{
  v3[6] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v3[0] = @"interaction_identifier";
  v3[1] = @"first_drug_class_identifier";
  v3[2] = @"first_drug_class_ancestor_identifier";
  v3[3] = @"second_drug_class_identifier";
  v3[4] = @"second_drug_class_ancestor_identifier";
  v3[5] = @"creation_date";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:6];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

uint64_t __133__HDDismissedDrugInteractionResultEntity_enumerateDismissedDrugInteractionResultsWithPredicate_transaction_error_enumerationHandler___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CCD1D0]) initWithRawIdentifier:HDSQLiteColumnWithNameAsInt64()];
  v3 = [objc_alloc(MEMORY[0x277CCD1D0]) initWithRawIdentifier:HDSQLiteColumnWithNameAsInt64()];
  v4 = [objc_alloc(MEMORY[0x277CCD1D0]) initWithRawIdentifier:HDSQLiteColumnWithNameAsInt64()];
  v5 = [objc_alloc(MEMORY[0x277CCD1D0]) initWithRawIdentifier:HDSQLiteColumnWithNameAsInt64()];
  v6 = [objc_alloc(MEMORY[0x277CCD1D0]) initWithRawIdentifier:HDSQLiteColumnWithNameAsInt64()];
  v7 = HDSQLiteColumnWithNameAsDate();
  v8 = [objc_alloc(MEMORY[0x277D114F0]) _initWithInteractionIdentifier:v2 firstDrugClassIdentifier:v3 firstDrugClassAncestorIdentifier:v4 secondDrugClassIdentifier:v5 secondDrugClassAncestorIdentifier:v6 creationDate:v7];
  v9 = (*(*(a1 + 32) + 16))();

  return v9;
}

+ (BOOL)insertDismissedDrugInteractionResult:(id)a3 profile:(id)a4 error:(id *)a5
{
  v14[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a3;
  v9 = [HDDismissedDrugInteractionResultInsertOperation alloc];
  v14[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];

  v11 = [(HDDismissedDrugInteractionResultInsertOperation *)v9 initWithDismissedDrugInteractionResults:v10];
  LOBYTE(a5) = [(HDJournalableOperation *)v11 performOrJournalWithProfile:v7 error:a5];

  v12 = *MEMORY[0x277D85DE8];
  return a5;
}

+ (BOOL)_insertDismissedDrugInteractionResult:(void *)a3 transaction:(uint64_t)a4 error:
{
  v6 = a2;
  v7 = a3;
  v8 = objc_opt_self();
  v9 = [v7 databaseForEntityClass:v8];

  v10 = +[HDDismissedDrugInteractionResultEntity _propertiesForEntity];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __98__HDDismissedDrugInteractionResultEntity__insertDismissedDrugInteractionResult_transaction_error___block_invoke;
  v15[3] = &unk_2796CDFD8;
  v16 = v6;
  v11 = v6;
  v12 = [v8 insertOrReplaceEntity:1 database:v9 properties:v10 error:a4 bindingHandler:v15];
  v13 = v12 != 0;

  return v13;
}

void __98__HDDismissedDrugInteractionResultEntity__insertDismissedDrugInteractionResult_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) interactionIdentifier];
  MEMORY[0x2530843E0](a2, @"interaction_identifier", [v4 rawIdentifier]);

  v5 = [*(a1 + 32) firstDrugClassIdentifier];
  MEMORY[0x2530843E0](a2, @"first_drug_class_identifier", [v5 rawIdentifier]);

  v6 = [*(a1 + 32) firstDrugClassAncestorIdentifier];
  MEMORY[0x2530843E0](a2, @"first_drug_class_ancestor_identifier", [v6 rawIdentifier]);

  v7 = [*(a1 + 32) secondDrugClassIdentifier];
  MEMORY[0x2530843E0](a2, @"second_drug_class_identifier", [v7 rawIdentifier]);

  v8 = [*(a1 + 32) secondDrugClassAncestorIdentifier];
  MEMORY[0x2530843E0](a2, @"second_drug_class_ancestor_identifier", [v8 rawIdentifier]);

  v9 = [MEMORY[0x277CBEAA8] date];
  MEMORY[0x2530843B0](a2, @"creation_date", v9);
}

@end
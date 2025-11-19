@interface HDUserDomainConceptProcessor
+ (BOOL)processUserDomainConceptsAfter:(int64_t)a3 transactionLimit:(int64_t)a4 outAnchor:(int64_t *)a5 outProcessedConceptsCount:(int64_t *)a6 profile:(id)a7 transaction:(id)a8 error:(id *)a9;
- (HDUserDomainConceptProcessor)init;
@end

@implementation HDUserDomainConceptProcessor

- (HDUserDomainConceptProcessor)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (BOOL)processUserDomainConceptsAfter:(int64_t)a3 transactionLimit:(int64_t)a4 outAnchor:(int64_t *)a5 outProcessedConceptsCount:(int64_t *)a6 profile:(id)a7 transaction:(id)a8 error:(id *)a9
{
  v41[1] = *MEMORY[0x277D85DE8];
  v14 = a7;
  v15 = a8;
  v16 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"sync_anchor" entityClass:objc_opt_class() ascending:1];
  v41[0] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];

  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = a3;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v18 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  v19 = HDUserDomainConceptEntityPredicateForConceptsWithAnchorAfter(v18);

  v20 = [v14 userDomainConceptManager];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __142__HDUserDomainConceptProcessor_processUserDomainConceptsAfter_transactionLimit_outAnchor_outProcessedConceptsCount_profile_transaction_error___block_invoke;
  v27[3] = &unk_27861AFA0;
  v21 = v14;
  v28 = v21;
  v32 = a1;
  v22 = v15;
  v29 = v22;
  v30 = &v33;
  v31 = &v37;
  v23 = [v20 enumerateUserDomainConceptsWithPredicate:v19 enumerationOptions:2 limit:a4 orderingTerms:v17 transaction:v22 error:a9 enumerationHandler:v27];

  if (v23)
  {
    if (a6)
    {
      *a6 = v34[3];
    }

    if (a5)
    {
      *a5 = v38[3];
    }
  }

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

uint64_t __142__HDUserDomainConceptProcessor_processUserDomainConceptsAfter_transactionLimit_outAnchor_outProcessedConceptsCount_profile_transaction_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v64[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [*(a1 + 32) daemon];
  v8 = [v7 userDomainConceptEntityRegistry];
  v9 = [v6 identifier];
  v10 = [v8 userDomainConceptEntityClassForTypeIdentifier:v9];

  if (!v10)
  {
    v34 = MEMORY[0x277CCA9B8];
    v35 = MEMORY[0x277CCACA8];
    v23 = [v6 identifier];
    v36 = [v35 stringWithFormat:@"Could not determine User Domain Concept entity class for identifier %@", v23];
    [v34 hk_assignError:a4 code:100 description:v36];

    v11 = 0;
    goto LABEL_16;
  }

  v11 = v6;
  v12 = [*(a1 + 32) daemon];
  v13 = [v12 behavior];
  v14 = [v13 supportsOntology];

  if (v14)
  {
    v15 = *(a1 + 64);
    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    v18 = v16;
    v19 = v11;
    objc_opt_self();
    v11 = [v10 refreshOntologyContentForUserDomainConcept:v19 profile:v18 transaction:v17 error:a4];
  }

  if (!v11)
  {
    v23 = 0;
    goto LABEL_16;
  }

  v20 = *(a1 + 64);
  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  v23 = v11;
  v24 = v21;
  v25 = v22;
  v41 = objc_opt_self();
  v26 = [v10 predicateMatchingSemanticDuplicatesOf:v23];
  if (!v26)
  {

LABEL_15:
    ++*(*(*(a1 + 48) + 8) + 24);
    *(*(*(a1 + 56) + 8) + 24) = a3;
    v11 = 1;
    goto LABEL_16;
  }

  v44 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"modification_date" entityClass:objc_opt_class() ascending:0];
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x3032000000;
  v52[3] = __Block_byref_object_copy__54;
  v52[4] = __Block_byref_object_dispose__54;
  v43 = v23;
  v53 = v43;
  v27 = [v24 userDomainConceptManager];
  v64[0] = v44;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:1];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __124__HDUserDomainConceptProcessor__enumerateAndDeduplicateConceptsWithOriginConcept_withEntityClass_profile_transaction_error___block_invoke;
  v46[3] = &unk_27861AFC8;
  v49 = &v54;
  v50 = v52;
  v51 = v10;
  v29 = v24;
  v47 = v29;
  v30 = v25;
  v48 = v30;
  v31 = [v27 enumerateUserDomainConceptsWithPredicate:v26 enumerationOptions:2 limit:0 orderingTerms:v28 transaction:v30 error:a4 enumerationHandler:v46];

  _HKInitializeLogging();
  v32 = HKLogHealthOntology();
  LODWORD(v28) = os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG);

  if (v28)
  {
    v33 = HKLogHealthOntology();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v42 = v55[3];
      v39 = [v43 UUID];
      v40 = [v39 hk_shortRepresentation];
      *buf = 138543874;
      v59 = v41;
      v60 = 2048;
      v61 = v42;
      v62 = 2114;
      v63 = v40;
      _os_log_debug_impl(&dword_228986000, v33, OS_LOG_TYPE_DEBUG, "%{public}@: Enumerated %ld potential duplicates for UDC %{public}@", buf, 0x20u);
    }
  }

  _Block_object_dispose(v52, 8);
  _Block_object_dispose(&v54, 8);

  if (v31)
  {
    goto LABEL_15;
  }

  v11 = 0;
  v23 = v43;
LABEL_16:

  v37 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t __124__HDUserDomainConceptProcessor__enumerateAndDeduplicateConceptsWithOriginConcept_withEntityClass_profile_transaction_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  ++*(*(*(a1 + 48) + 8) + 24);
  v7 = [*(*(*(a1 + 56) + 8) + 40) UUID];
  v8 = [v6 UUID];
  if ([v7 isEqual:v8])
  {
  }

  else
  {
    v9 = [*(*(*(a1 + 56) + 8) + 40) isSemanticallyEquivalent:v6];

    if (v9)
    {
      v10 = [*(a1 + 64) deduplicateUserDomainConcept:*(*(*(a1 + 56) + 8) + 40) with:v6 profile:*(a1 + 32) transaction:*(a1 + 40) error:a4];
      v11 = *(*(a1 + 56) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      if (!*(*(*(a1 + 56) + 8) + 40))
      {
        v13 = 0;
        goto LABEL_6;
      }
    }
  }

  v13 = 1;
LABEL_6:

  return v13;
}

@end
@interface HDMedicalRecordEntityEncoder
@end

@implementation HDMedicalRecordEntityEncoder

id __74___HDMedicalRecordEntityEncoder__applyConceptIndexToObject_profile_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCD1D0];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 conceptIdentifier];

  v6 = [v4 initWithRawIdentifier:v5];

  return v6;
}

BOOL __74___HDMedicalRecordEntityEncoder__applyConceptIndexToObject_profile_error___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v63 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 64);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = v7;
  v11 = a2;
  v12 = v8;
  objc_opt_self();
  v13 = v12;
  v14 = v11;
  objc_opt_self();
  v15 = [v14 internalContentDatabaseManager];

  v16 = [v15 ontologyContentVersionWithError:a3];

  if (!v16)
  {
    goto LABEL_22;
  }

  if (([v16 isEqual:v13] & 1) == 0)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:1001 format:{@"Failed to load concepts; ontology version (%@) does not match expected (%@)", v16, v13}];
LABEL_22:
    v40 = 0;
    v41 = v13;
LABEL_27:

    goto LABEL_28;
  }

  v17 = [v14 internalContentDatabaseManager];
  v18 = [v10 allObjects];
  v51 = v17;
  v19 = [v17 conceptsForIdentifiers:v18 options:0 error:a3];

  if (v19)
  {
    v53 = a3;
    v48 = v10;
    v50 = v5;
    v46 = v19;
    v20 = [v19 hk_mapToDictionary:&__block_literal_global_465];
    v49 = v9;
    v21 = v9;
    v16 = v20;
    v47 = v14;
    v54 = v14;
    objc_opt_self();
    v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = v21;
    v57 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
    if (v57)
    {
      v23 = *v59;
      v24 = *MEMORY[0x277CCBB78];
      v52 = v16;
      v55 = *MEMORY[0x277CCBB78];
LABEL_6:
      v25 = 0;
      while (1)
      {
        if (*v59 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v58 + 1) + 8 * v25);
        v27 = [v26 keyPath];
        v28 = [v22 objectForKeyedSubscript:v27];

        if (!v28)
        {
          v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v29 = [v26 keyPath];
          [v22 setObject:v28 forKeyedSubscript:v29];
        }

        v30 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v26, "conceptIdentifier")}];
        v31 = [v16 objectForKeyedSubscript:v30];

        if (!v31)
        {
          [MEMORY[0x277CCA9B8] hk_assignError:v53 code:1001 format:@"Unable to find concepts referenced from concept index entry."];
LABEL_25:

          v40 = 0;
          goto LABEL_26;
        }

        v32 = [v26 keyPath];
        if (![v32 isEqualToString:v24])
        {
          goto LABEL_17;
        }

        v33 = v23;
        v34 = [v31 relationshipsAreLoaded];

        if ((v34 & 1) == 0)
        {
          break;
        }

        v23 = v33;
        v24 = v55;
LABEL_18:
        v39 = [MEMORY[0x277CCD548] indexableObjectWithObject:v31 compoundIndex:{objc_msgSend(v26, "compoundIndex")}];
        [v28 addObject:v39];

        if (v57 == ++v25)
        {
          v57 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
          if (v57)
          {
            goto LABEL_6;
          }

          goto LABEL_20;
        }
      }

      v35 = [v54 internalContentDatabaseManager];
      v36 = objc_opt_class();
      v37 = [v31 identifier];
      v16 = v52;
      v32 = [v36 relationshipsForConceptWithIdentifier:v37 transaction:v54 error:v53];

      if (!v32)
      {
        goto LABEL_25;
      }

      v38 = [v31 copyWithRelationships:v32];

      v31 = v38;
      v23 = v33;
      v24 = v55;
LABEL_17:

      goto LABEL_18;
    }

LABEL_20:

    v40 = v22;
LABEL_26:

    v9 = v49;
    v5 = v50;
    v14 = v47;
    v10 = v48;
    v13 = v46;
    v41 = v51;
    goto LABEL_27;
  }

  v13 = 0;
  v40 = 0;
  v41 = v51;
LABEL_28:

  v42 = *(*(v5 + 56) + 8);
  v43 = *(v42 + 40);
  *(v42 + 40) = v40;

  result = *(*(*(v5 + 56) + 8) + 40) != 0;
  v45 = *MEMORY[0x277D85DE8];
  return result;
}

void __152___HDMedicalRecordEntityEncoder__indexableConceptsByKeyPathForConceptIndexEntries_conceptIdentifiers_expectedOntologyVersion_ontologyTransaction_error___block_invoke(uint64_t a1, void *a2, void (**a3)(void, void, void))
{
  v5 = a3;
  v6 = a2;
  v8 = [v6 identifier];
  v7 = [v8 numberRepresentation];
  (a3)[2](v5, v7, v6);
}

@end
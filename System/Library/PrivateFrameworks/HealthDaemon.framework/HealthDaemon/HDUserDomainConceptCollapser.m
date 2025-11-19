@interface HDUserDomainConceptCollapser
+ (id)collapseUserDomainConcept:(id)a3 with:(id)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7;
- (HDUserDomainConceptCollapser)init;
@end

@implementation HDUserDomainConceptCollapser

- (HDUserDomainConceptCollapser)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (id)collapseUserDomainConcept:(id)a3 with:(id)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7
{
  v87[3] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = v12;
  v17 = v13;
  if ([a1 keepOldestConcept])
  {
    v18 = [v17 creationDate];
    v19 = [v16 creationDate];
    v20 = [v18 hk_isBeforeDate:v19];

    v21 = v16;
    v22 = v17;
    if ((v20 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v23 = [v17 modificationDate];
  v24 = [v16 modificationDate];
  v25 = [v23 hk_isAfterDate:v24];

  v21 = v16;
  v22 = v17;
  if (v25)
  {
LABEL_5:

    v22 = v16;
    v21 = v17;
  }

LABEL_6:
  v26 = v22;
  v27 = v21;
  v28 = v14;
  v29 = v15;
  v30 = objc_opt_self();
  if (![v30 preDeduplicationProcessingForUserDomainConcept:v27 duplicateConcept:v26 transaction:v29 error:a7])
  {
    goto LABEL_19;
  }

  v31 = [v26 UUID];
  v32 = [v27 UUID];
  v33 = a7;
  v34 = v32;
  v83 = v33;
  v35 = [HDUserDomainConceptEntity updateLinksTargetingUserDomainConceptUUID:v31 toTargetUserDomainConceptUUID:v32 profile:v28 transaction:v29 error:?];

  if (!v35)
  {
LABEL_19:
    v65 = 0;
    goto LABEL_37;
  }

  v81 = v28;
  v78 = v17;
  v79 = v16;
  v36 = v27;
  v37 = v26;
  v80 = v30;
  objc_opt_self();
  v38 = v36;
  v39 = v37;
  objc_opt_self();
  v40 = [v39 propertyCollection];

  v41 = [v38 copyUserDomainConceptByMergingInPropertyCollection:v40];
  v77 = v38;

  v76 = v41;
  v42 = v41;
  v43 = v39;
  v82 = [objc_opt_self() mergeSubclassDataTo:v42 fromDuplicateConcept:v43];
  v44 = [v42 codingCollection];
  v45 = [v44 codings];
  v46 = [v45 mutableCopy];

  v47 = [v43 codingCollection];
  v48 = [v47 codings];
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = __103__HDUserDomainConceptCollapser__migrateLinkAndCodingCollectionsAndSubclassDataFrom_to_outShouldUpdate___block_invoke;
  v86 = &unk_27861DDA8;
  v49 = v46;
  v87[0] = v49;
  [v49 hk_addObjectsFromArray:v48 passingTest:buf];

  v50 = [v49 count];
  v51 = [v42 codingCollection];
  v52 = [v51 codings];
  v53 = [v52 count];

  v55 = v50 != v53 || v82 != v42;
  v56 = v43;
  v57 = v42;
  objc_opt_self();
  v58 = [v57 linkCollection];

  v59 = MEMORY[0x277CCDB08];
  v60 = [v56 linkCollection];
  v84 = v56;

  v61 = [v59 collectionByMergingCollection:v58 otherCollection:v60];

  if (v61 != v58 && (!v58 || ([v61 isEqual:v58] & 1) == 0))
  {

    goto LABEL_21;
  }

  if (v55)
  {
LABEL_21:
    v63 = v77;
    v17 = v78;
    v64 = v82;
    if ([v49 count])
    {
      [v82 userDomainConceptByReplacingLinks:v61 andCodings:v49];
    }

    else
    {
      [v82 userDomainConceptByReplacingLinks:v61];
    }
    v62 = ;
    v75 = 1;
    goto LABEL_25;
  }

  v62 = v57;
  v75 = 0;
  v63 = v77;
  v17 = v78;
  v64 = v82;
LABEL_25:

  v66 = v62;
  if (v76 != v63 || v75)
  {
    _HKInitializeLogging();
    v67 = HKLogHealthOntology();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      *&buf[4] = v80;
      *&buf[12] = 2114;
      *&buf[14] = v62;
      *&buf[22] = 2114;
      v86 = v84;
      LOWORD(v87[0]) = 2114;
      *(v87 + 2) = v63;
      _os_log_impl(&dword_228986000, v67, OS_LOG_TYPE_DEFAULT, "%{public}@: Update UDC %{public}@ during deduplication by merging %{public}@ into %{public}@", buf, 0x2Au);
    }

    v68 = [v81 userDomainConceptManager];
    v69 = [v68 updateUserDomainConcept:v62 error:v83];

    if (!v69)
    {
      goto LABEL_35;
    }
  }

  if (![v80 shouldDeleteDuplicateConcept])
  {
    goto LABEL_34;
  }

  _HKInitializeLogging();
  v70 = HKLogHealthOntology();
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = v80;
    *&buf[12] = 2114;
    *&buf[14] = v84;
    *&buf[22] = 2114;
    v86 = v66;
    _os_log_impl(&dword_228986000, v70, OS_LOG_TYPE_DEFAULT, "%{public}@: Delete duplicate UDC %{public}@ keeping UDC %{public}@", buf, 0x20u);
  }

  v71 = [v81 userDomainConceptManager];
  v72 = [v71 deleteUserDomainConcept:v84 error:v83];

  if (v72)
  {
LABEL_34:
    v65 = v66;
  }

  else
  {
LABEL_35:
    v65 = 0;
  }

  v28 = v81;

  v16 = v79;
LABEL_37:

  v73 = *MEMORY[0x277D85DE8];

  return v65;
}

uint64_t __103__HDUserDomainConceptCollapser__migrateLinkAndCodingCollectionsAndSubclassDataFrom_to_outShouldUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:v3] & 1) == 0)
  {
    v5 = [v3 codingSystem];
    v6 = [v5 identifier];
    v7 = *MEMORY[0x277CCC348];
    if (v6 == *MEMORY[0x277CCC348])
    {
      v4 = 0;
LABEL_17:

      goto LABEL_18;
    }

    if (v7)
    {
      v8 = [v3 codingSystem];
      v9 = [v8 identifier];
      if ([v9 isEqualToString:v7])
      {
        v4 = 0;
LABEL_16:

        goto LABEL_17;
      }

      v18 = v9;
      v20 = v8;
    }

    v10 = [v3 codingSystem];
    v11 = [v10 identifier];
    v12 = v11;
    v13 = *MEMORY[0x277CCC350];
    v4 = v11 != *MEMORY[0x277CCC350];
    if (*MEMORY[0x277CCC350])
    {
      v14 = v11 == v13;
    }

    else
    {
      v14 = 1;
    }

    if (!v14)
    {
      v15 = [v3 codingSystem];
      v16 = [v15 identifier];
      v4 = [v16 isEqualToString:v13] ^ 1;
    }

    v9 = v19;
    v8 = v21;
    if (!v7)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v4 = 0;
LABEL_18:

  return v4;
}

@end
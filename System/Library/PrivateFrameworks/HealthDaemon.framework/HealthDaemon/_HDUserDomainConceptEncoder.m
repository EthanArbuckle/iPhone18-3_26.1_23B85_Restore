@interface _HDUserDomainConceptEncoder
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5;
- (id)createBareObjectWithRow:(HDSQLiteRow *)a3;
- (id)orderedProperties;
@end

@implementation _HDUserDomainConceptEncoder

- (id)orderedProperties
{
  if ([(HDEntityEncoder *)self purpose])
  {
    v2 = &unk_283CB0240;
  }

  else
  {
    v2 = &unk_283CB0228;
  }

  return v2;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)a3
{
  v3 = [objc_alloc(MEMORY[0x277CCDAF0]) _initBareObject];

  return v3;
}

- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6
{
  v8 = a3;
  v9 = [(HDEntityEncoder *)self transaction];
  v10 = v8;
  v33 = v9;
  v30 = objc_opt_self();
  v11 = HDSQLiteColumnWithNameAsUUID();
  v12 = HDSQLiteColumnWithNameAsString();
  v13 = HDSQLiteColumnWithNameAsInt64();
  v14 = HDSQLiteColumnWithNameAsBoolean();
  HDSQLiteColumnWithNameAsDouble();
  v16 = v15;
  HDSQLiteColumnWithNameAsDouble();
  v18 = v17;
  v32 = HDSQLiteColumnWithNameAsInt64();
  v19 = HDSQLiteColumnWithNameAsInt64();
  v20 = HDSQLiteColumnWithNameAsInt64();
  v21 = HDSQLiteColumnWithNameAsString();
  v22 = HDSQLiteColumnWithNameAsInt64();
  v23 = [objc_alloc(MEMORY[0x277CCDB50]) initWithCode:v13 schema:v12];
  [v10 _setIdentifier:v23];

  [v10 _setUUID:v11];
  [v10 _setDeleted:v14];
  [v10 _setCreationTimestamp:v16];
  [v10 _setModificationTimestamp:v18];
  v34[0] = v32;
  v34[1] = v19;
  v34[2] = v20;
  [v10 _setOperatingSystemVersion:v34];
  [v10 _setBuild:v21];
  [v10 setHealthd_use_only_syncEntityIdentity:v22];
  if (v14)
  {
    LOBYTE(v24) = 1;
    v25 = v33;
  }

  else
  {
    v34[0] = 0;
    v24 = [(HDUserDomainConceptEntity *)v30 _inflateLinkCollection:v34 row:a5 error:a6];
    v26 = v34[0];
    v27 = v26;
    if (v24)
    {
      v25 = v33;
      if (v26)
      {
        [v10 _setLinkCollection:v26];
      }

      LOBYTE(v24) = [v30 retrievePrivateDataEntitiesForUserDomainConcept:v10 persistentID:a4 transaction:v33 error:{a6, a4}];
    }

    else
    {
      v25 = v33;
    }
  }

  return v24;
}

- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5
{
  v83 = *MEMORY[0x277D85DE8];
  v8 = [(HDEntityEncoder *)self profile];
  v9 = [(HDEntityEncoder *)self transaction];
  v54 = v8;
  v10 = v9;
  v11 = objc_opt_self();
  v12 = objc_alloc_init(HDCodableUserDomainConcept);
  v13 = HDSQLiteColumnWithNameAsData();
  [(HDCodableUserDomainConcept *)v12 setUuid:v13];

  v14 = HDSQLiteColumnWithNameAsInt64();
  v53 = HDSQLiteColumnWithNameAsString();
  v52 = [objc_alloc(MEMORY[0x277CCDB50]) initWithCode:v14 schema:v53];
  v15 = [v52 codableRepresentationForSync];
  [(HDCodableUserDomainConcept *)v12 setIdentifier:v15];

  [(HDCodableUserDomainConcept *)v12 setDeleted:HDSQLiteColumnWithNameAsBoolean()];
  HDSQLiteColumnWithNameAsDouble();
  [(HDCodableUserDomainConcept *)v12 setCreationDate:?];
  HDSQLiteColumnWithNameAsDouble();
  [(HDCodableUserDomainConcept *)v12 setModificationDate:?];
  [(HDCodableUserDomainConcept *)v12 setMajorVersion:HDSQLiteColumnWithNameAsInt64()];
  [(HDCodableUserDomainConcept *)v12 setMinorVersion:HDSQLiteColumnWithNameAsInt64()];
  [(HDCodableUserDomainConcept *)v12 setPatchVersion:HDSQLiteColumnWithNameAsInt64()];
  v16 = HDSQLiteColumnWithNameAsString();
  [(HDCodableUserDomainConcept *)v12 setBuild:v16];

  v17 = HDSQLiteColumnWithNameAsData();
  [(HDCodableUserDomainConcept *)v12 setLinksData:v17];

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v18 = [v11 privateDataEntities];
  v19 = [v18 countByEnumeratingWithState:&v55 objects:v80 count:16];
  if (v19)
  {
    v20 = *v56;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v56 != v20)
        {
          objc_enumerationMutation(v18);
        }

        if (![*(*(&v55 + 1) + 8 * i) addPropertyDataToCodable:v12 userDomainConceptID:a3 transaction:v10 error:a5])
        {
          v36 = 0;
          goto LABEL_39;
        }
      }

      v19 = [v18 countByEnumeratingWithState:&v55 objects:v80 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  v22 = [v54 daemon];
  v23 = [v22 userDomainConceptEntityRegistry];
  v24 = [v23 userDomainConceptEntityClassForTypeIdentifier:v52];

  if (!v24 || v24 == objc_opt_class() || ![v24 encodesCodableUserDomainConceptSubclassData])
  {
    goto LABEL_33;
  }

  v25 = v10;
  v26 = v54;
  objc_opt_self();
  v27 = [v24 entityEncoderForProfile:v26 transaction:v25 purpose:0 encodingOptions:0 authorizationFilter:0];

  v28 = v27;
  v29 = v25;
  objc_opt_self();
  v49 = [v28 entityClass];
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = __Block_byref_object_copy__182;
  v78 = __Block_byref_object_dispose__182;
  v79 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = __Block_byref_object_copy__182;
  v72 = __Block_byref_object_dispose__182;
  v73 = 0;
  v51 = [[v49 alloc] initWithPersistentID:a3];
  v30 = [v28 orderedProperties];
  v31 = [v29 protectedDatabase];
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __97__HDUserDomainConceptEntity__codableSubclassForForUserDomainConceptID_encoder_transaction_error___block_invoke;
  v63[3] = &unk_27862C648;
  v65 = &v74;
  v50 = v28;
  v64 = v50;
  v66 = &v68;
  v67 = a3;
  LOBYTE(v26) = [v51 getValuesForProperties:v30 database:v31 error:a5 handler:v63];

  if (v26)
  {
    if (v75[5])
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v32 = [(objc_class *)v49 privateDataEntities];
      v33 = [v32 countByEnumeratingWithState:&v59 objects:buf count:16];
      if (v33)
      {
        v34 = *v60;
        while (2)
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v60 != v34)
            {
              objc_enumerationMutation(v32);
            }

            if (([*(*(&v59 + 1) + 8 * j) addPropertyDataToCodable:v75[5] userDomainConceptID:a3 transaction:v29 error:{a5, v49}] & 1) == 0)
            {

              goto LABEL_30;
            }
          }

          v33 = [v32 countByEnumeratingWithState:&v59 objects:buf count:16];
          if (v33)
          {
            continue;
          }

          break;
        }
      }

      v36 = v75[5];
      goto LABEL_31;
    }

    v37 = v69[5];
    v38 = v37;
    if (v37)
    {
      if (a5)
      {
        v39 = v37;
        *a5 = v38;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

LABEL_30:
  v36 = 0;
LABEL_31:

  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(&v74, 8);

  if (!v36)
  {
    goto LABEL_40;
  }

  v40 = [(HDCodableUserDomainConcept *)v36 data];
  [(HDCodableUserDomainConcept *)v12 setTypeData:v40];

LABEL_33:
  v41 = HDSQLiteColumnWithNameAsInt64();
  v42 = [v54 syncIdentityManager];
  v63[0] = 0;
  v43 = [v42 identityForEntityID:v41 transaction:v10 error:v63];
  v18 = v63[0];

  if (v43)
  {
    v44 = [v43 identity];
    v45 = [v44 codableSyncIdentity];
    [(HDCodableUserDomainConcept *)v12 setSyncIdentity:v45];

    v36 = v12;
  }

  else
  {
    _HKInitializeLogging();
    v46 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v82 = v18;
      _os_log_fault_impl(&dword_228986000, v46, OS_LOG_TYPE_FAULT, "Unable to fetch sync identity from HDUserDomainConceptEntity %{public}@", buf, 0xCu);
    }

    v36 = 0;
  }

LABEL_39:
LABEL_40:

  v47 = *MEMORY[0x277D85DE8];

  return v36;
}

@end
@interface _HDUserDomainConceptEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)createBareObjectWithRow:(HDSQLiteRow *)row;
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

- (id)createBareObjectWithRow:(HDSQLiteRow *)row
{
  _initBareObject = [objc_alloc(MEMORY[0x277CCDAF0]) _initBareObject];

  return _initBareObject;
}

- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  objectCopy = object;
  transaction = [(HDEntityEncoder *)self transaction];
  v10 = objectCopy;
  v33 = transaction;
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
    v24 = [(HDUserDomainConceptEntity *)v30 _inflateLinkCollection:v34 row:row error:error];
    v26 = v34[0];
    v27 = v26;
    if (v24)
    {
      v25 = v33;
      if (v26)
      {
        [v10 _setLinkCollection:v26];
      }

      LOBYTE(v24) = [v30 retrievePrivateDataEntitiesForUserDomainConcept:v10 persistentID:d transaction:v33 error:{error, d}];
    }

    else
    {
      v25 = v33;
    }
  }

  return v24;
}

- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  v83 = *MEMORY[0x277D85DE8];
  profile = [(HDEntityEncoder *)self profile];
  transaction = [(HDEntityEncoder *)self transaction];
  v54 = profile;
  v10 = transaction;
  v11 = objc_opt_self();
  v12 = objc_alloc_init(HDCodableUserDomainConcept);
  v13 = HDSQLiteColumnWithNameAsData();
  [(HDCodableUserDomainConcept *)v12 setUuid:v13];

  v14 = HDSQLiteColumnWithNameAsInt64();
  v53 = HDSQLiteColumnWithNameAsString();
  v52 = [objc_alloc(MEMORY[0x277CCDB50]) initWithCode:v14 schema:v53];
  codableRepresentationForSync = [v52 codableRepresentationForSync];
  [(HDCodableUserDomainConcept *)v12 setIdentifier:codableRepresentationForSync];

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
  privateDataEntities = [v11 privateDataEntities];
  v19 = [privateDataEntities countByEnumeratingWithState:&v55 objects:v80 count:16];
  if (v19)
  {
    v20 = *v56;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v56 != v20)
        {
          objc_enumerationMutation(privateDataEntities);
        }

        if (![*(*(&v55 + 1) + 8 * i) addPropertyDataToCodable:v12 userDomainConceptID:d transaction:v10 error:error])
        {
          v36 = 0;
          goto LABEL_39;
        }
      }

      v19 = [privateDataEntities countByEnumeratingWithState:&v55 objects:v80 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  daemon = [v54 daemon];
  userDomainConceptEntityRegistry = [daemon userDomainConceptEntityRegistry];
  v24 = [userDomainConceptEntityRegistry userDomainConceptEntityClassForTypeIdentifier:v52];

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
  entityClass = [v28 entityClass];
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
  v51 = [[entityClass alloc] initWithPersistentID:d];
  orderedProperties = [v28 orderedProperties];
  protectedDatabase = [v29 protectedDatabase];
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __97__HDUserDomainConceptEntity__codableSubclassForForUserDomainConceptID_encoder_transaction_error___block_invoke;
  v63[3] = &unk_27862C648;
  v65 = &v74;
  v50 = v28;
  v64 = v50;
  v66 = &v68;
  dCopy = d;
  LOBYTE(v26) = [v51 getValuesForProperties:orderedProperties database:protectedDatabase error:error handler:v63];

  if (v26)
  {
    if (v75[5])
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      privateDataEntities2 = [(objc_class *)entityClass privateDataEntities];
      v33 = [privateDataEntities2 countByEnumeratingWithState:&v59 objects:buf count:16];
      if (v33)
      {
        v34 = *v60;
        while (2)
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v60 != v34)
            {
              objc_enumerationMutation(privateDataEntities2);
            }

            if (([*(*(&v59 + 1) + 8 * j) addPropertyDataToCodable:v75[5] userDomainConceptID:d transaction:v29 error:{error, entityClass}] & 1) == 0)
            {

              goto LABEL_30;
            }
          }

          v33 = [privateDataEntities2 countByEnumeratingWithState:&v59 objects:buf count:16];
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
      if (error)
      {
        v39 = v37;
        *error = v38;
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

  data = [(HDCodableUserDomainConcept *)v36 data];
  [(HDCodableUserDomainConcept *)v12 setTypeData:data];

LABEL_33:
  v41 = HDSQLiteColumnWithNameAsInt64();
  syncIdentityManager = [v54 syncIdentityManager];
  v63[0] = 0;
  v43 = [syncIdentityManager identityForEntityID:v41 transaction:v10 error:v63];
  privateDataEntities = v63[0];

  if (v43)
  {
    identity = [v43 identity];
    codableSyncIdentity = [identity codableSyncIdentity];
    [(HDCodableUserDomainConcept *)v12 setSyncIdentity:codableSyncIdentity];

    v36 = v12;
  }

  else
  {
    _HKInitializeLogging();
    v46 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v82 = privateDataEntities;
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
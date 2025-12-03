@interface HDUserDomainConceptEntity
+ (BOOL)_removeIsHiddenDeviceLocalPropertyForUserDomainConceptWithPersistentID:(void *)d transaction:(uint64_t)transaction error:;
+ (BOOL)cannonicalDoseUnitStringForUserDomainConceptWithUUID:(id)d profile:(id)profile transaction:(id)transaction canonicalDoseUnitStringOut:(id *)out error:(id *)error;
+ (BOOL)deleteUserDomainConcept:(id)concept profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (BOOL)enumerateUserDomainConceptsWithPredicate:(id)predicate limit:(int64_t)limit orderingTerms:(id)terms profile:(id)profile transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)generateAPIObjectForUserDomainConcept:(id)concept apiObjectOut:(id *)out transaction:(id)transaction error:(id *)error;
+ (BOOL)generateUserAnnotatedMedicationForUserDomainConcept:(id)concept userAnnotatedMedicationOut:(id *)out transaction:(id)transaction error:(id *)error;
+ (BOOL)incrementSyncAnchorAndAdjustSyncProvenanceIfNotLocalForUserDomainConceptWithUUID:(id)d profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (BOOL)insertPrivateDataEnitiesForUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d transaction:(id)transaction error:(id *)error;
+ (BOOL)retrievePrivateDataEntitiesForUserDomainConcept:(id)concept persistentID:(int64_t)d transaction:(id)transaction error:(id *)error;
+ (BOOL)updateLinksTargetingUserDomainConceptUUID:(id)d toTargetUserDomainConceptUUID:(id)iD profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (BOOL)updatePrivateDataEnitiesForUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d syncProvenance:(int64_t)provenance profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (id)_linkCollectionToPersistGivenLinkCollection:(void *)collection transaction:(uint64_t)transaction error:;
+ (id)_userDomainConceptWithPersistentID:(void *)d encoder:(void *)encoder transaction:(void *)transaction error:;
+ (id)createAndRefreshOntologyBackedUserDomainConceptWithConceptIdentifier:(id)identifier additionalProperties:(id)properties userDomainConceptTypeIdentifier:(id)typeIdentifier profile:(id)profile error:(id *)error;
+ (id)defaultForeignKey;
+ (id)disambiguatedSQLForProperty:(id)property;
+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
+ (id)ignoreHiddenConceptsPredicate;
+ (id)joinClausesForProperty:(id)property;
+ (id)newUserDomainConceptForRefreshWithCodingCollection:(id)collection propertyCollection:(id)propertyCollection;
+ (id)predicateMatchingSemanticIdentifier:(id)identifier;
+ (id)privateDataEntities;
+ (id)privateSubEntities;
+ (id)userDomainConceptUUIDForCanonicalConceptWithSemanticIdentifierString:(id)string profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (int64_t)evaluateIsCanonicalConcept:(id)concept entityClass:(Class)class transaction:(id)transaction error:(id *)error;
+ (int64_t)storeUserDomainConcept:(id)concept method:(int64_t)method profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (uint64_t)_enumerateLinkCollectionsContainingTargetUUID:(void *)d transaction:(uint64_t)transaction error:(void *)error enumerationHandler:;
+ (uint64_t)_inflateLinkCollection:(uint64_t)collection row:(uint64_t)row error:;
+ (uint64_t)_storeUserDomainConcept:(uint64_t)concept method:(uint64_t)method syncProvenance:(uint64_t)provenance syncIdentity:(uint64_t)identity syncVersion:(void *)version profile:(void *)profile transaction:(void *)transaction error:;
+ (uint64_t)_updateLinkCollection:(uint64_t)collection userDomainConceptID:(uint64_t)d syncProvenance:(uint64_t)provenance syncIdentity:(void *)identity transaction:(uint64_t)transaction error:;
+ (uint64_t)_updateLinkCollectionDataByRemovingTargetUUID:(uint64_t)d syncProvenance:(uint64_t)provenance syncIdentity:(void *)identity transaction:(uint64_t)transaction error:;
+ (void)_bindToStatement:(int)statement index:(void *)index linkCollection:;
+ (void)_notifyObserversForUserDomainConcept:(int)concept update:(void *)update profile:(void *)profile transaction:;
@end

@implementation HDUserDomainConceptEntity

+ (id)privateSubEntities
{
  v5[6] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v5[4] = objc_opt_class();
  v5[5] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:6];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)joinClausesForProperty:(id)property
{
  v60 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  if ([propertyCopy containsString:@"||"])
  {
    v5 = 0;
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v6 = +[HDUserDomainConceptEntityRegistry sharedInstance];
    registeredUserDomainConceptEntityClasses = [v6 registeredUserDomainConceptEntityClasses];

    v8 = [registeredUserDomainConceptEntityClasses countByEnumeratingWithState:&v50 objects:v58 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = &selRef__queue_enqueueConceptAuthorizationRequestWithIdentifier_bundleIdentifier_objectType_promptIfNeeded_authorizationNeededHandler_completionHandler_;
      v11 = *v51;
      v40 = registeredUserDomainConceptEntityClasses;
      v41 = propertyCopy;
      selfCopy = self;
      v42 = *v51;
LABEL_5:
      v12 = 0;
      v38 = v10[69];
      v43 = v9;
      while (1)
      {
        if (*v51 != v11)
        {
          objc_enumerationMutation(registeredUserDomainConceptEntityClasses);
        }

        v13 = *(*(&v50 + 1) + 8 * v12);
        if ([v13 hasColumnWithName:propertyCopy])
        {
          break;
        }

        if ([propertyCopy rangeOfString:@"."] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v47 = v12;
          v14 = propertyCopy;
          v15 = objc_opt_self();
          v16 = [v14 componentsSeparatedByString:@"."];
          if ([v16 count] != 2)
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler handleFailureInMethod:v38 object:v15 file:@"HDUserDomainConceptEntity.m" lineNumber:197 description:{@"Invalid parameter not satisfying: %@", @"[components count] == 2"}];
          }

          firstObject = [v16 firstObject];
          v46 = v16;
          lastObject = [v16 lastObject];
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v45 = v13;
          privateSubEntities = [v13 privateSubEntities];
          v5 = [privateSubEntities countByEnumeratingWithState:&v54 objects:v59 count:16];
          if (v5)
          {
            v44 = v15;
            v19 = *v55;
            while (2)
            {
              for (i = 0; i != v5; i = i + 1)
              {
                if (*v55 != v19)
                {
                  objc_enumerationMutation(privateSubEntities);
                }

                v21 = *(*(&v54 + 1) + 8 * i);
                v22 = [v21 joinClausesForProperty:v14];
                databaseTable = [v21 databaseTable];
                if ([databaseTable isEqualToString:firstObject])
                {
                  v24 = [v21 hasColumnWithName:lastObject];
                }

                else
                {
                  v24 = 0;
                }

                if ((v24 & 1) != 0 || v22)
                {
                  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
                  if (v44 != v45)
                  {
                    v25 = MEMORY[0x277D10B50];
                    disambiguatedDatabaseTable = [v44 disambiguatedDatabaseTable];
                    v27 = [v25 leftJoinClauseFromTable:disambiguatedDatabaseTable toTargetEntity:v45 as:0 localReference:@"udc_id" targetKey:@"udc_id"];

                    [v5 addObject:v27];
                  }

                  registeredUserDomainConceptEntityClasses = v40;
                  if ([v21 hasColumnWithName:@"udc_id"])
                  {
                    v28 = MEMORY[0x277D10B50];
                    disambiguatedDatabaseTable2 = [v45 disambiguatedDatabaseTable];
                    v30 = [v28 leftJoinClauseFromTable:disambiguatedDatabaseTable2 toTargetEntity:v21 as:0 localReference:@"udc_id" targetKey:@"udc_id"];

                    [v5 addObject:v30];
                  }

                  [v5 unionSet:v22];

                  propertyCopy = v41;
                  self = selfCopy;
                  goto LABEL_30;
                }
              }

              v5 = [privateSubEntities countByEnumeratingWithState:&v54 objects:v59 count:16];
              if (v5)
              {
                continue;
              }

              break;
            }

            registeredUserDomainConceptEntityClasses = v40;
            propertyCopy = v41;
            self = selfCopy;
          }

LABEL_30:

          v11 = v42;
          v9 = v43;
          v12 = v47;
          if (v5)
          {
            goto LABEL_40;
          }
        }

        if (++v12 == v9)
        {
          v9 = [registeredUserDomainConceptEntityClasses countByEnumeratingWithState:&v50 objects:v58 count:16];
          v10 = &selRef__queue_enqueueConceptAuthorizationRequestWithIdentifier_bundleIdentifier_objectType_promptIfNeeded_authorizationNeededHandler_completionHandler_;
          if (v9)
          {
            goto LABEL_5;
          }

          goto LABEL_39;
        }
      }

      if (v13)
      {
        v32 = v13 == self;
      }

      else
      {
        v32 = 1;
      }

      if (!v32)
      {
        v33 = MEMORY[0x277D10B50];
        disambiguatedDatabaseTable3 = [self disambiguatedDatabaseTable];
        v35 = [v33 leftJoinClauseFromTable:disambiguatedDatabaseTable3 toTargetEntity:v13 as:0 localReference:@"udc_id" targetKey:@"udc_id"];

        v5 = [MEMORY[0x277CBEB98] setWithObject:v35];

LABEL_40:
        goto LABEL_41;
      }
    }

LABEL_39:

    v49.receiver = self;
    v49.super_class = &OBJC_METACLASS___HDUserDomainConceptEntity;
    v5 = objc_msgSendSuper2(&v49, sel_joinClausesForProperty_, propertyCopy);
  }

LABEL_41:

  v36 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)disambiguatedSQLForProperty:(id)property
{
  v25 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  if ([propertyCopy isEqualToString:*MEMORY[0x277D10A40]])
  {
    v5 = MEMORY[0x277CCACA8];
    disambiguatedDatabaseTable = [self disambiguatedDatabaseTable];
    v7 = [v5 stringWithFormat:@"%@.%@", disambiguatedDatabaseTable, @"udc_id"];
  }

  else
  {
    v8 = propertyCopy;
    objc_opt_self();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = +[HDUserDomainConceptEntityRegistry sharedInstance];
    registeredUserDomainConceptEntityClasses = [v9 registeredUserDomainConceptEntityClasses];

    v11 = [registeredUserDomainConceptEntityClasses countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = *v21;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(registeredUserDomainConceptEntityClasses);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          if ([v14 hasColumnWithName:v8])
          {
            v11 = v14;
            goto LABEL_13;
          }
        }

        v11 = [registeredUserDomainConceptEntityClasses countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    v15 = v11;
    if (v11)
    {
      v16 = MEMORY[0x277CCACA8];
      disambiguatedDatabaseTable2 = [v11 disambiguatedDatabaseTable];
      v7 = [v16 stringWithFormat:@"%@.%@", disambiguatedDatabaseTable2, v8];
    }

    else
    {
      v7 = v8;
    }
  }

  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)defaultForeignKey
{
  v2 = [objc_alloc(MEMORY[0x277D10B38]) initWithEntityClass:self property:@"udc_id" deletionAction:2];

  return v2;
}

+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  filterCopy = filter;
  optionsCopy = options;
  transactionCopy = transaction;
  profileCopy = profile;
  v15 = [(HDEntityEncoder *)[_HDUserDomainConceptEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:profileCopy transaction:transactionCopy purpose:purpose encodingOptions:optionsCopy authorizationFilter:filterCopy];

  return v15;
}

+ (uint64_t)_storeUserDomainConcept:(uint64_t)concept method:(uint64_t)method syncProvenance:(uint64_t)provenance syncIdentity:(uint64_t)identity syncVersion:(void *)version profile:(void *)profile transaction:(void *)transaction error:
{
  v252 = *MEMORY[0x277D85DE8];
  v14 = a2;
  versionCopy = version;
  profileCopy = profile;
  v17 = objc_opt_self();
  provenanceCopy = provenance;
  [v14 setHealthd_use_only_syncEntityIdentity:provenance];
  v232 = 0;
  v18 = v14;
  v229 = versionCopy;
  v19 = profileCopy;
  v218 = v17;
  v20 = objc_opt_self();
  v21 = v18;
  v230 = v19;
  v22 = objc_opt_self();
  v231 = v21;
  linkCollection = [v21 linkCollection];
  if (linkCollection)
  {
    v24 = [(HDUserDomainConceptEntity *)v22 _linkCollectionToPersistGivenLinkCollection:linkCollection transaction:v230 error:&v232];

    if (!v24)
    {
      lastInsertRowID = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v24 = 0;
  }

  protectedDatabase = [v230 protectedDatabase];
  *&v233 = MEMORY[0x277D85DD0];
  *(&v233 + 1) = 3221225472;
  *&v234 = __104__HDUserDomainConceptEntity__insertBaseUserDomainConcept_syncProvenance_syncIdentity_transaction_error___block_invoke;
  *(&v234 + 1) = &__block_descriptor_40_e15___NSString_8__0l;
  *&v235 = v22;
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = __104__HDUserDomainConceptEntity__insertBaseUserDomainConcept_syncProvenance_syncIdentity_transaction_error___block_invoke_2;
  v248 = &unk_27862C5A8;
  v27 = v231;
  *v249 = v27;
  *&v249[16] = method;
  *&v249[24] = provenanceCopy;
  v250 = v22;
  v28 = v24;
  *&v249[8] = v28;
  if (![protectedDatabase executeCachedStatementForKey:&_insertBaseUserDomainConcept_syncProvenance_syncIdentity_transaction_error__statementKey error:&v232 SQLGenerator:&v233 bindingHandler:buf enumerationHandler:0])
  {
    goto LABEL_9;
  }

  if ([protectedDatabase getChangesCount] < 1)
  {
    v29 = MEMORY[0x277CCA9B8];
    uUID = [v27 UUID];
    [v29 hk_assignError:&v232 code:115 format:{@"Duplicate User Domain Concept with UUID %@", uUID}];

LABEL_9:
    lastInsertRowID = 0;
    goto LABEL_10;
  }

  lastInsertRowID = [protectedDatabase lastInsertRowID];
LABEL_10:

LABEL_11:
  if (!lastInsertRowID)
  {
    goto LABEL_24;
  }

  if (![v231 isDeleted] || (objc_msgSend(v231, "UUID"), v31 = objc_claimAutoreleasedReturnValue(), v32 = +[HDUserDomainConceptEntity _updateLinkCollectionDataByRemovingTargetUUID:syncProvenance:syncIdentity:transaction:error:](v20, v31, method, provenanceCopy, v230, &v232), v31, v32))
  {
    longLongValue = [lastInsertRowID longLongValue];
    if ([v20 insertPrivateDataEnitiesForUserDomainConcept:v231 userDomainConceptID:longLongValue transaction:v230 error:&v232])
    {
      daemon = [v229 daemon];
      userDomainConceptEntityRegistry = [daemon userDomainConceptEntityRegistry];
      identifier = [v231 identifier];
      v37 = [userDomainConceptEntityRegistry userDomainConceptEntityClassForTypeIdentifier:identifier];

      if (!v37 || v37 == objc_opt_class())
      {
        v32 = 1;
        goto LABEL_25;
      }

      v38 = v231;
      v39 = v230;
      objc_opt_self();
      if (![v37 insertConcreteUserDomainConcept:v38 userDomainConceptID:longLongValue transaction:v39 error:&v232] || !objc_msgSend(v37, "insertPrivateDataEnitiesForUserDomainConcept:userDomainConceptID:transaction:error:", v38, longLongValue, v39, &v232))
      {
        goto LABEL_61;
      }

      if (![v37 supportsHidingSemanticDuplicates])
      {
        goto LABEL_59;
      }

      v40 = v38;
      v41 = v39;
      v42 = objc_opt_self();
      v43 = [v42 evaluateIsCanonicalConcept:v40 entityClass:v37 transaction:v41 error:&v232];
      if (!v43)
      {
        goto LABEL_60;
      }

      if (v43 == 2)
      {
        v44 = [objc_alloc(MEMORY[0x277CCDAF8]) initWithType:2 version:1 BOOLValue:1];
        v45 = [HDUserDomainConceptPropertyEntity insertDeviceLocalProperty:v44 userDomainConceptID:longLongValue transaction:v41 error:&v232];

        if (!v45)
        {
          goto LABEL_61;
        }

LABEL_59:
        v32 = 1;
LABEL_62:

        goto LABEL_25;
      }

      if ([(HDUserDomainConceptEntity *)v42 _removeIsHiddenDeviceLocalPropertyForUserDomainConceptWithPersistentID:longLongValue transaction:v41 error:&v232])
      {
        v226 = v41;
        v228 = v40;
        v83 = objc_opt_self();
        v84 = MEMORY[0x277D10B20];
        v85 = [v37 predicateMatchingSemanticDuplicatesOf:v228];

        ignoreHiddenConceptsPredicate = [v83 ignoreHiddenConceptsPredicate];
        v220 = [v84 compoundPredicateWithPredicate:v85 otherPredicate:ignoreHiddenConceptsPredicate];

        v216 = [v226 databaseForEntityClass:v83];
        v87 = objc_alloc_init(MEMORY[0x277D10B80]);
        [v87 setEntityClass:v83];
        [v87 setPredicate:v220];
        [v87 setReturnsDistinctEntities:1];
        v88 = [objc_alloc(MEMORY[0x277D10B78]) initWithDatabase:v216 descriptor:v87];
        v89 = [objc_alloc(MEMORY[0x277CCDAF8]) initWithType:2 version:1 BOOLValue:1];
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __92__HDUserDomainConceptEntity__hideSemanticDuplicatesOfConcept_entityClass_transaction_error___block_invoke;
        v248 = &unk_27861E428;
        *v249 = v89;
        *&v249[8] = v226;
        v90 = v226;
        v91 = v89;
        LODWORD(v226) = [v88 enumeratePersistentIDsAndProperties:MEMORY[0x277CBEBF8] error:&v232 enumerationHandler:buf];

        if (v226)
        {
          goto LABEL_59;
        }
      }

      else
      {
LABEL_60:
      }

LABEL_61:
      v32 = 0;
      goto LABEL_62;
    }

LABEL_24:
    v32 = 0;
  }

LABEL_25:

  v46 = v232;
  v225 = v46;
  if (v32)
  {
    [(HDUserDomainConceptEntity *)v218 _notifyObserversForUserDomainConcept:v231 update:0 profile:v229 transaction:v230];
    v47 = 1;
    goto LABEL_159;
  }

  hk_isDuplicateObjectError = [v46 hk_isDuplicateObjectError];
  if (concept == 1)
  {
    v49 = 0;
  }

  else
  {
    v49 = hk_isDuplicateObjectError;
  }

  if ((v49 & 1) == 0)
  {
    v59 = v225;
    v60 = v59;
    if (v59)
    {
      if (transaction)
      {
        v61 = v59;
        *transaction = v60;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v47 = 0;
    goto LABEL_159;
  }

  v50 = v231;
  if (concept != 2)
  {
    goto LABEL_87;
  }

  v51 = v50;
  v52 = v230;
  v53 = v229;
  objc_opt_self();
  uUID2 = [v51 UUID];
  v219 = v53;
  v55 = v52;
  v56 = objc_opt_self();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v248 = __Block_byref_object_copy__182;
  *v249 = __Block_byref_object_dispose__182;
  *&v249[8] = 0;
  v57 = [MEMORY[0x277D10B18] predicateWithProperty:@"uuid" value:uUID2 comparisonType:1];
  *&v233 = MEMORY[0x277D85DD0];
  *(&v233 + 1) = 3221225472;
  *&v234 = __82__HDUserDomainConceptEntity__userDomainConceptWithUUID_profile_transaction_error___block_invoke;
  *(&v234 + 1) = &unk_2786276E0;
  *&v235 = buf;
  if ([v56 enumerateUserDomainConceptsWithPredicate:v57 profile:v219 transaction:v55 error:transaction enumerationHandler:&v233])
  {
    v58 = *(*&buf[8] + 40);
  }

  else
  {
    v58 = 0;
  }

  v62 = v58;

  _Block_object_dispose(buf, 8);
  v63 = v62;
  if (v62)
  {
    v64 = v51;
    v65 = v62;
    v215 = v55;
    v66 = objc_opt_self();
    if ([v65 isDeleted])
    {
      v67 = v65;
      v68 = 1;
LABEL_82:

      v63 = v62;
      goto LABEL_83;
    }

    if ([v64 isDeleted])
    {
      _HKInitializeLogging();
      v69 = HKLogHealthOntology();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544642;
        *&buf[4] = v66;
        *&buf[12] = 2114;
        *&buf[14] = v65;
        *&buf[22] = 2114;
        v248 = v64;
        *v249 = 2048;
        *&v249[2] = method;
        *&v249[10] = 2048;
        *&v249[12] = identity;
        *&v249[20] = 2048;
        *&v249[22] = identity >> 32;
        _os_log_impl(&dword_228986000, v69, OS_LOG_TYPE_DEFAULT, "%{public}@: replace %{public}@ with %{public}@. sync_provenance=%ld, syncVersion=(%ld, %ld)", buf, 0x3Eu);
      }

      v67 = v64;
      v68 = 2;
      goto LABEL_82;
    }

    v70 = v64;
    v71 = v65;
    v203 = objc_opt_self();
    v213 = v71;
    v209 = v70;
    [v209 modificationTimestamp];
    v73 = v72;
    [v213 modificationTimestamp];
    if (v73 <= v74)
    {
      v68 = 1;
      v75 = v209;
      v76 = v213;
    }

    else
    {

      v75 = v213;
      v68 = 2;
      v76 = v209;
    }

    v211 = v76;
    v207 = v75;
    if (SHIDWORD(identity) > 3)
    {
      v80 = [v76 copyUserDomainConceptByMergingInConcept:v75];
LABEL_75:
      v98 = v211;
      if (v80 != v211)
      {
        _HKInitializeLogging();
        v99 = HKLogHealthOntology();
        v100 = os_log_type_enabled(v99, OS_LOG_TYPE_INFO);

        if (v100)
        {
          v101 = HKLogHealthOntology();
          if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
          {
            *buf = 138543874;
            *&buf[4] = v203;
            *&buf[12] = 2114;
            *&buf[14] = v211;
            *&buf[22] = 2114;
            v248 = v80;
            _os_log_impl(&dword_228986000, v101, OS_LOG_TYPE_INFO, "%{public}@: Update UDC %{public}@ -> %{public}@", buf, 0x20u);
          }
        }

        v68 = 3;
        v98 = v80;
      }

      v67 = v98;

      goto LABEL_82;
    }

    v205 = v209;
    v202 = v213;
    v77 = v75;
    v78 = v211;
    objc_opt_self();
    propertyCollection = [v77 propertyCollection];

    v80 = [v78 copyUserDomainConceptByMergingInPropertyCollection:propertyCollection];
    if (v78 != v205)
    {
LABEL_74:

      goto LABEL_75;
    }

    obj = [v202 linkCollection];
    linkCollection2 = [v205 linkCollection];
    v200 = linkCollection2;
    if (linkCollection2)
    {
      links = [linkCollection2 links];
      collectionByRemovingAllLinks = [obj collectionByMergingInLegacyArrayOfLinks:links];
    }

    else
    {
      collectionByRemovingAllLinks = [obj collectionByRemovingAllLinks];
    }

    v92 = v200;
    if (obj)
    {
      v92 = collectionByRemovingAllLinks;
    }

    v196 = v92;
    linkCollection3 = [v80 linkCollection];
    v94 = linkCollection3;
    if (v196 == linkCollection3)
    {
    }

    else
    {
      linkCollection4 = [v80 linkCollection];
      if (linkCollection4)
      {
        linkCollection5 = [v80 linkCollection];
        v192 = [v196 isEqual:linkCollection5];

        if (v192)
        {
          goto LABEL_73;
        }
      }

      else
      {
      }

      modificationCopy = [v80 modificationCopy];

      [modificationCopy _setLinkCollection:v196];
      v80 = modificationCopy;
    }

LABEL_73:

    goto LABEL_74;
  }

  v67 = 0;
  v68 = 1;
LABEL_83:

  v50 = v67;
  if (!v67)
  {
    v47 = 0;
    goto LABEL_158;
  }

  if (v68 == 1)
  {
    v47 = 3;
    goto LABEL_158;
  }

  if (v68 == 3)
  {
    provenanceCopy = [v219 currentSyncIdentityPersistentID];
    method = 0;
    v50 = v67;
  }

LABEL_87:
  v102 = v50;
  v103 = v229;
  v104 = v230;
  v191 = objc_opt_self();
  v105 = v102;
  v197 = v103;
  v106 = v104;
  v193 = objc_opt_self();
  v107 = v105;
  v206 = v106;
  objc_opt_self();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v248 = __Block_byref_object_copy__182;
  *v249 = __Block_byref_object_dispose__182;
  *&v249[8] = 0;
  protectedDatabase2 = [v206 protectedDatabase];
  *&v233 = MEMORY[0x277D85DD0];
  *(&v233 + 1) = 3221225472;
  *&v234 = __88__HDUserDomainConceptEntity__userDomainConceptIDForUserDomainConcept_transaction_error___block_invoke_2;
  *(&v234 + 1) = &unk_278614860;
  *&v235 = v107;
  v241 = MEMORY[0x277D85DD0];
  v242 = 3221225472;
  v243 = __88__HDUserDomainConceptEntity__userDomainConceptIDForUserDomainConcept_transaction_error___block_invoke_3;
  v244 = &unk_278614620;
  v245 = buf;
  v217 = v235;
  if ([protectedDatabase2 executeCachedStatementForKey:&_userDomainConceptIDForUserDomainConcept_transaction_error__statementKey error:transaction SQLGenerator:&__block_literal_global_493 bindingHandler:&v233 enumerationHandler:&v241])
  {
    v109 = *(*&buf[8] + 40);
  }

  else
  {
    v109 = 0;
  }

  v195 = v109;

  _Block_object_dispose(buf, 8);
  if (!v195)
  {
    v224 = 0;
    goto LABEL_142;
  }

  linkCollection6 = [v217 linkCollection];
  if (linkCollection6)
  {
    v111 = [(HDUserDomainConceptEntity *)v193 _linkCollectionToPersistGivenLinkCollection:linkCollection6 transaction:v206 error:transaction];

    if (!v111)
    {
      v112 = 0;
      v224 = 0;
      goto LABEL_141;
    }
  }

  else
  {
    v111 = 0;
  }

  v185 = v111;
  if (![v217 isDeleted])
  {
    goto LABEL_134;
  }

  longLongValue2 = [v195 longLongValue];
  v189 = v197;
  v190 = v206;
  objc_opt_self();
  v201 = [v190 databaseForEntityClass:objc_opt_class()];
  v235 = 0u;
  v236 = 0u;
  v233 = 0u;
  v234 = 0u;
  daemon2 = [v189 daemon];
  userDomainConceptEntityRegistry2 = [daemon2 userDomainConceptEntityRegistry];
  obja = [userDomainConceptEntityRegistry2 registeredUserDomainConceptEntityClasses];

  v208 = [obja countByEnumeratingWithState:&v233 objects:buf count:16];
  if (!v208)
  {
    goto LABEL_133;
  }

  v204 = *v234;
  while (2)
  {
    for (i = 0; i != v208; ++i)
    {
      if (*v234 != v204)
      {
        objc_enumerationMutation(obja);
      }

      v116 = *(*(&v233 + 1) + 8 * i);
      if (v116 != objc_opt_class())
      {
        v221 = [[v116 alloc] initWithPersistentID:longLongValue2];
        if (![v221 existsInDatabase:v201])
        {
LABEL_130:

          continue;
        }

        v117 = v190;
        v210 = v189;
        v118 = objc_opt_self();
        v119 = [(objc_class *)v116 entityEncoderForProfile:v210 transaction:v117 purpose:1 encodingOptions:0 authorizationFilter:0];

        v120 = [(HDUserDomainConceptEntity *)v118 _userDomainConceptWithPersistentID:longLongValue2 encoder:v119 transaction:v117 error:transaction];

        if (v120)
        {
          [(objc_class *)v116 userDomainConceptClass];
          if (objc_opt_isKindOfClass())
          {
            v212 = v120;
            goto LABEL_110;
          }

          [MEMORY[0x277CCA9B8] hk_assignError:transaction code:3 format:{@"Concept of class %@ should not be inflated for entity %@", objc_opt_class(), v116}];
        }

        v212 = 0;
LABEL_110:

        if (!v212 || ![(objc_class *)v116 willDeleteConcreteUserDomainConcept:v212 userDomainConceptID:longLongValue2 syncProvenance:method profile:v210 transaction:v117 error:transaction])
        {
LABEL_139:

          goto LABEL_140;
        }

        if ([(objc_class *)v116 supportsHidingSemanticDuplicates])
        {
          v187 = v212;
          v121 = v117;
          objc_opt_self();
          v122 = v121;
          objc_opt_self();
          v237 = 0;
          v238 = &v237;
          v239 = 0x2020000000;
          v240 = 0;
          v123 = HDUserDomainConceptPropertyEntityPredicateForPropertiesWithType(2, 1);
          v124 = MEMORY[0x277D10B18];
          v125 = [MEMORY[0x277CCABB0] numberWithLongLong:longLongValue2];
          v126 = [v124 predicateWithProperty:@"udc_id" equalToValue:v125];

          v127 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v126 otherPredicate:v123];
          v246 = @"number_value";
          v128 = [MEMORY[0x277CBEA60] arrayWithObjects:&v246 count:1];
          database = [v122 database];
          v241 = MEMORY[0x277D85DD0];
          v242 = 3221225472;
          v243 = __95__HDUserDomainConceptEntity__isConceptHiddenFromEnumerationWithPersistentID_transaction_error___block_invoke;
          v244 = &unk_27862C558;
          v245 = &v237;
          v130 = [(HDHealthEntity *)HDUserDomainConceptPropertyEntity enumerateProperties:v128 withPredicate:v127 healthDatabase:database error:transaction enumerationHandler:&v241];

          if (v130)
          {
            if (*(v238 + 24))
            {
              v131 = 1;
            }

            else
            {
              v131 = 2;
            }
          }

          else
          {
            v131 = 0;
          }

          _Block_object_dispose(&v237, 8);
          if (v131 == 2)
          {
            v132 = v122;
            v188 = v187;
            objc_opt_self();
            v186 = [MEMORY[0x277D10B18] predicateWithProperty:@"deleted" equalToValue:MEMORY[0x277CBEC28]];
            v133 = MEMORY[0x277D10B20];
            v134 = [(objc_class *)v116 predicateMatchingSemanticDuplicatesOf:v188];

            v237 = v134;
            v238 = v186;
            v135 = [MEMORY[0x277CBEA60] arrayWithObjects:&v237 count:2];
            v136 = [v133 predicateMatchingAllPredicates:v135];

            v137 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"creation_date" entityClass:objc_opt_class() ascending:1];
            protectedDatabase3 = [v132 protectedDatabase];
            v246 = v137;
            v139 = [MEMORY[0x277CBEA60] arrayWithObjects:&v246 count:1];
            v140 = [(HDSQLiteEntity *)HDUserDomainConceptEntity queryWithDatabase:protectedDatabase3 predicate:v136 limit:1 orderingTerms:v139 groupBy:0];

            v241 = MEMORY[0x277D85DD0];
            v242 = 3221225472;
            v243 = __163__HDUserDomainConceptEntity__findNewDeviceLocalCanonicalConceptForConceptThatWillBeDeletedWithPersistentID_entityClass_conceptThatWillBeDeleted_transaction_error___block_invoke;
            v244 = &unk_278615128;
            v245 = v132;
            v141 = v132;
            LOBYTE(v132) = [v140 enumeratePersistentIDsAndProperties:MEMORY[0x277CBEBF8] error:transaction enumerationHandler:&v241];

            if ((v132 & 1) == 0)
            {
              goto LABEL_139;
            }
          }

          else
          {

            if (v131 != 1)
            {
              goto LABEL_139;
            }
          }
        }

        v142 = v212;
        v143 = v117;
        objc_opt_self();
        v144 = [MEMORY[0x277D10B18] predicateWithProperty:@"deleted" equalToValue:MEMORY[0x277CBEC28]];
        v145 = MEMORY[0x277D10B20];
        v146 = [(objc_class *)v116 predicateMatchingSemanticDuplicatesOf:v142];
        v241 = v146;
        v242 = v144;
        v147 = [MEMORY[0x277CBEA60] arrayWithObjects:&v241 count:2];
        v148 = [v145 predicateMatchingAllPredicates:v147];

        protectedDatabase4 = [v143 protectedDatabase];
        v237 = 0;
        v150 = [(HDSQLiteEntity *)HDUserDomainConceptEntity anyInDatabase:protectedDatabase4 predicate:v148 error:&v237];
        v151 = v237;

        if (v150 || !v151)
        {
          if (!v150)
          {
            semanticIdentifier = [v142 semanticIdentifier];
            stringValue = [semanticIdentifier stringValue];

            v155 = HDConceptAuthorizationEntityPredicateForSemanticIdentifierString(stringValue, 1);
            [HDConceptAuthorizationEntity deleteConceptAuthorizationRecordsMatchingPredicate:v155 transaction:v143 error:transaction];
          }
        }

        else if (transaction)
        {
          v152 = v151;
          *transaction = v151;
        }

        else
        {
          _HKLogDroppedError();
        }

        goto LABEL_130;
      }
    }

    v208 = [obja countByEnumeratingWithState:&v233 objects:buf count:16];
    if (v208)
    {
      continue;
    }

    break;
  }

LABEL_133:

  uUID3 = [v217 UUID];
  v157 = [(HDUserDomainConceptEntity *)v193 _updateLinkCollectionDataByRemovingTargetUUID:uUID3 syncProvenance:method syncIdentity:provenanceCopy transaction:v190 error:transaction];

  if (v157)
  {
LABEL_134:
    protectedDatabase5 = [v206 protectedDatabase];
    *&v233 = MEMORY[0x277D85DD0];
    *(&v233 + 1) = 3221225472;
    *&v234 = __112__HDUserDomainConceptEntity__updateBaseUserDomainConcept_syncProvenance_syncIdentity_profile_transaction_error___block_invoke;
    *(&v234 + 1) = &__block_descriptor_40_e15___NSString_8__0l;
    *&v235 = v193;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __112__HDUserDomainConceptEntity__updateBaseUserDomainConcept_syncProvenance_syncIdentity_profile_transaction_error___block_invoke_2;
    v248 = &unk_27862C5D0;
    *v249 = v217;
    *&v249[24] = method;
    v250 = provenanceCopy;
    v251 = v193;
    v112 = v185;
    *&v249[8] = v112;
    v159 = v195;
    *&v249[16] = v159;
    if ([protectedDatabase5 executeCachedStatementForKey:&_updateBaseUserDomainConcept_syncProvenance_syncIdentity_profile_transaction_error__statementKey error:transaction SQLGenerator:&v233 bindingHandler:buf enumerationHandler:0])
    {
      v160 = v159;
    }

    else
    {
      v160 = 0;
    }

    v224 = v160;
  }

  else
  {
LABEL_140:
    v224 = 0;
    v112 = v185;
  }

LABEL_141:

LABEL_142:
  v161 = v224;
  if (!v224 || (v162 = [v224 longLongValue], v163 = objc_msgSend(v191, "updatePrivateDataEnitiesForUserDomainConcept:userDomainConceptID:syncProvenance:profile:transaction:error:", v217, v162, method, v197, v206, transaction), v161 = v224, !v163))
  {

LABEL_156:
    v47 = 0;
    goto LABEL_157;
  }

  v217 = v217;
  v222 = v197;
  v164 = v206;
  objc_opt_self();
  if (![v217 isDeleted])
  {
    daemon3 = [v222 daemon];
    userDomainConceptEntityRegistry3 = [daemon3 userDomainConceptEntityRegistry];
    identifier2 = [v217 identifier];
    v180 = [userDomainConceptEntityRegistry3 userDomainConceptEntityClassForTypeIdentifier:identifier2];

    if (!v180 || v180 == objc_opt_class())
    {
      goto LABEL_164;
    }

    v181 = v217;
    v182 = v222;
    v183 = v164;
    objc_opt_self();
    if ([v180 updateConcreteUserDomainConcept:v181 userDomainConceptID:v162 transaction:v183 error:transaction])
    {
      v184 = [v180 updatePrivateDataEnitiesForUserDomainConcept:v181 userDomainConceptID:v162 syncProvenance:method profile:v182 transaction:v183 error:transaction];

      if (v184)
      {
LABEL_164:

        goto LABEL_165;
      }
    }

    else
    {
    }

    v47 = 0;
    v50 = v181;
    goto LABEL_158;
  }

  v235 = 0u;
  v236 = 0u;
  v233 = 0u;
  v234 = 0u;
  daemon4 = [v222 daemon];
  userDomainConceptEntityRegistry4 = [daemon4 userDomainConceptEntityRegistry];
  registeredUserDomainConceptEntityClasses = [userDomainConceptEntityRegistry4 registeredUserDomainConceptEntityClasses];

  v168 = [registeredUserDomainConceptEntityClasses countByEnumeratingWithState:&v233 objects:buf count:16];
  if (v168)
  {
    v169 = *v234;
    while (2)
    {
      for (j = 0; j != v168; ++j)
      {
        if (*v234 != v169)
        {
          objc_enumerationMutation(registeredUserDomainConceptEntityClasses);
        }

        v171 = *(*(&v233 + 1) + 8 * j);
        if (v171 != objc_opt_class())
        {
          v172 = [[v171 alloc] initWithPersistentID:v162];
          protectedDatabase6 = [v164 protectedDatabase];
          v174 = [v172 deleteFromDatabase:protectedDatabase6 error:transaction];

          if (!v174)
          {

            goto LABEL_156;
          }
        }
      }

      v168 = [registeredUserDomainConceptEntityClasses countByEnumeratingWithState:&v233 objects:buf count:16];
      if (v168)
      {
        continue;
      }

      break;
    }
  }

LABEL_165:
  [(HDUserDomainConceptEntity *)v218 _notifyObserversForUserDomainConcept:v217 update:1 profile:v222 transaction:v164];
  v47 = 2;
LABEL_157:
  v50 = v217;
LABEL_158:

LABEL_159:
  v175 = *MEMORY[0x277D85DE8];
  return v47;
}

+ (int64_t)storeUserDomainConcept:(id)concept method:(int64_t)method profile:(id)profile transaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  profileCopy = profile;
  conceptCopy = concept;
  v15 = [self storeUserDomainConcept:conceptCopy method:method syncProvenance:0 syncIdentity:objc_msgSend(profileCopy syncVersion:"currentSyncIdentityPersistentID") profile:0x400000000 transaction:profileCopy error:{transactionCopy, error}];

  return v15;
}

+ (BOOL)deleteUserDomainConcept:(id)concept profile:(id)profile transaction:(id)transaction error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  conceptCopy = concept;
  transactionCopy = transaction;
  profileCopy = profile;
  _HKInitializeLogging();
  v13 = HKLogHealthOntology();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138543618;
    selfCopy = self;
    v20 = 2114;
    v21 = conceptCopy;
    _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: deleteUserDomainConcept: %{public}@", &v18, 0x16u);
  }

  deletedUserDomainConcept = [conceptCopy deletedUserDomainConcept];
  v15 = [self storeUserDomainConcept:deletedUserDomainConcept method:3 profile:profileCopy transaction:transactionCopy error:error];

  v16 = *MEMORY[0x277D85DE8];
  return v15 != 0;
}

+ (BOOL)enumerateUserDomainConceptsWithPredicate:(id)predicate limit:(int64_t)limit orderingTerms:(id)terms profile:(id)profile transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler
{
  profileCopy = profile;
  transactionCopy = transaction;
  handlerCopy = handler;
  termsCopy = terms;
  predicateCopy = predicate;
  v20 = [transactionCopy databaseForEntityClass:self];
  v21 = objc_alloc_init(MEMORY[0x277D10B80]);
  [v21 setEntityClass:self];
  [v21 setLimitCount:limit];
  [v21 setOrderingTerms:termsCopy];

  [v21 setPredicate:predicateCopy];
  [v21 setReturnsDistinctEntities:1];
  v22 = [objc_alloc(MEMORY[0x277D10B78]) initWithDatabase:v20 descriptor:v21];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __135__HDUserDomainConceptEntity_enumerateUserDomainConceptsWithPredicate_limit_orderingTerms_profile_transaction_error_enumerationHandler___block_invoke;
  v27[3] = &unk_27862C530;
  v28 = profileCopy;
  v29 = transactionCopy;
  v30 = handlerCopy;
  selfCopy = self;
  v23 = handlerCopy;
  v24 = transactionCopy;
  v25 = profileCopy;
  LOBYTE(error) = [v22 enumeratePersistentIDsAndProperties:&unk_283CB0210 error:error enumerationHandler:v27];

  return error;
}

uint64_t __135__HDUserDomainConceptEntity_enumerateUserDomainConceptsWithPredicate_limit_orderingTerms_profile_transaction_error_enumerationHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = MEMORY[0x22AAC6C90](a4, 0);
  v9 = [objc_alloc(MEMORY[0x277CCDB50]) initWithCode:HDSQLiteColumnAsInt64() schema:v8];
  HDSQLiteColumnWithNameAsInt64();
  v10 = [*(a1 + 32) daemon];
  v11 = [v10 userDomainConceptEntityRegistry];
  v12 = [v11 userDomainConceptEntityClassForTypeIdentifier:v9];

  v13 = [v12 entityEncoderForProfile:*(a1 + 32) transaction:*(a1 + 40) purpose:1 encodingOptions:0 authorizationFilter:0];
  v14 = [(HDUserDomainConceptEntity *)*(a1 + 56) _userDomainConceptWithPersistentID:a2 encoder:v13 transaction:*(a1 + 40) error:a5];
  if (v14)
  {
    v15 = (*(*(a1 + 48) + 16))();
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)_userDomainConceptWithPersistentID:(void *)d encoder:(void *)encoder transaction:(void *)transaction error:
{
  dCopy = d;
  encoderCopy = encoder;
  objc_opt_self();
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__182;
  v35 = __Block_byref_object_dispose__182;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__182;
  v29 = __Block_byref_object_dispose__182;
  v30 = 0;
  v10 = [objc_alloc(objc_msgSend(dCopy "entityClass"))];
  orderedProperties = [dCopy orderedProperties];
  protectedDatabase = [encoderCopy protectedDatabase];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __90__HDUserDomainConceptEntity__userDomainConceptWithPersistentID_encoder_transaction_error___block_invoke;
  v20[3] = &unk_27862C648;
  v22 = &v31;
  v13 = dCopy;
  v21 = v13;
  v23 = &v25;
  v24 = a2;
  LOBYTE(a2) = [v10 getValuesForProperties:orderedProperties database:protectedDatabase error:transaction handler:v20];

  if (a2)
  {
    v14 = v32[5];
    if (v14)
    {
      v15 = v14;
      goto LABEL_10;
    }

    v16 = v26[5];
    v17 = v16;
    if (v16)
    {
      if (transaction)
      {
        v18 = v16;
        *transaction = v17;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  v15 = 0;
LABEL_10:

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v15;
}

+ (BOOL)updateLinksTargetingUserDomainConceptUUID:(id)d toTargetUserDomainConceptUUID:(id)iD profile:(id)profile transaction:(id)transaction error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
  profileCopy = profile;
  transactionCopy = transaction;
  if ([dCopy isEqual:iDCopy])
  {
    LOBYTE(v15) = 1;
  }

  else
  {
    v16 = dCopy;
    v17 = iDCopy;
    v18 = transactionCopy;
    v31 = profileCopy;
    v19 = profileCopy;
    v15 = objc_opt_self();
    errorCopy = error;
    currentSyncIdentityPersistentID = [v19 currentSyncIdentityPersistentID];

    v32 = MEMORY[0x277D85DD0];
    v33 = 3221225472;
    v34 = __94__HDUserDomainConceptEntity__updateLinksDataTargeting_toTargetUUID_profile_transaction_error___block_invoke;
    v35 = &unk_27862C620;
    v36 = v16;
    v37 = v17;
    v39 = v15;
    v40 = currentSyncIdentityPersistentID;
    v38 = v18;
    v22 = v18;
    v23 = v17;
    v24 = v16;
    LODWORD(v15) = [(HDUserDomainConceptEntity *)v15 _enumerateLinkCollectionsContainingTargetUUID:v24 transaction:v22 error:errorCopy enumerationHandler:&v32];

    if (v15)
    {
      v15 = v24;
      v25 = v23;
      v26 = v22;
      objc_opt_self();
      protectedDatabase = [v26 protectedDatabase];

      v32 = MEMORY[0x277D85DD0];
      v33 = 3221225472;
      v34 = __93__HDUserDomainConceptEntity__updateLinksMovingFromTargetUUID_toTargetUUID_transaction_error___block_invoke_2;
      v35 = &unk_278613038;
      v36 = v25;
      v37 = v15;
      v28 = v15;
      v29 = v25;
      LOBYTE(v15) = [protectedDatabase executeCachedStatementForKey:&_updateLinksMovingFromTargetUUID_toTargetUUID_transaction_error__statementKey error:errorCopy SQLGenerator:&__block_literal_global_487_0 bindingHandler:&v32 enumerationHandler:0];
    }

    profileCopy = v31;
  }

  return v15;
}

+ (id)privateDataEntities
{
  v5[6] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v5[4] = objc_opt_class();
  v5[5] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:6];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (BOOL)retrievePrivateDataEntitiesForUserDomainConcept:(id)concept persistentID:(int64_t)d transaction:(id)transaction error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  conceptCopy = concept;
  transactionCopy = transaction;
  v12 = objc_alloc(MEMORY[0x277CBEB18]);
  propertyCollection = [conceptCopy propertyCollection];
  properties = [propertyCollection properties];
  v15 = [v12 initWithArray:properties];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  privateDataEntities = [self privateDataEntities];
  v17 = [privateDataEntities countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(privateDataEntities);
        }

        if (![*(*(&v24 + 1) + 8 * i) retrieveDataForUserDomainConcept:conceptCopy userDomainConceptID:d mutableUserDomainConceptProperties:v15 transaction:transactionCopy error:error])
        {
          v21 = 0;
          goto LABEL_12;
        }
      }

      v18 = [privateDataEntities countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  if ([v15 count])
  {
    privateDataEntities = [objc_alloc(MEMORY[0x277CCDB28]) initWithProperties:v15];
    [conceptCopy _setPropertyCollection:privateDataEntities];
    v21 = 1;
LABEL_12:
  }

  else
  {
    v21 = 1;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

+ (id)userDomainConceptUUIDForCanonicalConceptWithSemanticIdentifierString:(id)string profile:(id)profile transaction:(id)transaction error:(id *)error
{
  v40[1] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  profileCopy = profile;
  transactionCopy = transaction;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__182;
  v37 = __Block_byref_object_dispose__182;
  v38 = 0;
  falsePredicate = [MEMORY[0x277D10B70] falsePredicate];
  v12 = [MEMORY[0x277CCDB40] semanticIdentifierFromSemanticIdentifierString:stringCopy profile:profileCopy];
  if (v12)
  {
    daemon = [profileCopy daemon];
    userDomainConceptEntityRegistry = [daemon userDomainConceptEntityRegistry];
    typeIdentifier = [v12 typeIdentifier];
    v16 = [userDomainConceptEntityRegistry userDomainConceptEntityClassForTypeIdentifier:typeIdentifier];

    v17 = [v16 predicateMatchingSemanticIdentifier:v12];

    falsePredicate = v17;
  }

  v18 = MEMORY[0x277D10B20];
  v19 = [MEMORY[0x277D10B18] predicateWithProperty:@"deleted" equalToValue:MEMORY[0x277CBEC28]];
  v20 = [v18 compoundPredicateWithPredicate:falsePredicate otherPredicate:v19];

  v21 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"creation_date" entityClass:objc_opt_class() ascending:1];
  protectedDatabase = [transactionCopy protectedDatabase];
  v40[0] = v21;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
  v24 = [(HDSQLiteEntity *)HDUserDomainConceptEntity queryWithDatabase:protectedDatabase predicate:v20 limit:1 orderingTerms:v23 groupBy:0];

  v39 = @"uuid";
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __124__HDUserDomainConceptEntity_userDomainConceptUUIDForCanonicalConceptWithSemanticIdentifierString_profile_transaction_error___block_invoke;
  v32[3] = &unk_27862C558;
  v32[4] = &v33;
  v26 = [v24 enumeratePersistentIDsAndProperties:v25 error:error enumerationHandler:v32];

  if (v26)
  {
    v27 = v34[5];
  }

  else
  {
    v27 = 0;
  }

  v28 = v27;

  _Block_object_dispose(&v33, 8);
  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

uint64_t __124__HDUserDomainConceptEntity_userDomainConceptUUIDForCanonicalConceptWithSemanticIdentifierString_profile_transaction_error___block_invoke(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsUUID();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return 0;
}

+ (BOOL)incrementSyncAnchorAndAdjustSyncProvenanceIfNotLocalForUserDomainConceptWithUUID:(id)d profile:(id)profile transaction:(id)transaction error:(id *)error
{
  dCopy = d;
  transactionCopy = transaction;
  currentSyncIdentityPersistentID = [profile currentSyncIdentityPersistentID];
  protectedDatabase = [transactionCopy protectedDatabase];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __136__HDUserDomainConceptEntity_incrementSyncAnchorAndAdjustSyncProvenanceIfNotLocalForUserDomainConceptWithUUID_profile_transaction_error___block_invoke_2;
  v15[3] = &unk_278613B58;
  v16 = dCopy;
  v17 = currentSyncIdentityPersistentID;
  v13 = dCopy;
  LOBYTE(error) = [protectedDatabase executeCachedStatementForKey:&incrementSyncAnchorAndAdjustSyncProvenanceIfNotLocalForUserDomainConceptWithUUID_profile_transaction_error__statementKeyUDCUpdate error:error SQLGenerator:&__block_literal_global_218 bindingHandler:v15 enumerationHandler:0];

  return error;
}

uint64_t __136__HDUserDomainConceptEntity_incrementSyncAnchorAndAdjustSyncProvenanceIfNotLocalForUserDomainConceptWithUUID_profile_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, 0);
  sqlite3_bind_int64(a2, 2, *(a1 + 40));
  v4 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();

  return sqlite3_bind_int64(a2, 4, 0);
}

+ (int64_t)evaluateIsCanonicalConcept:(id)concept entityClass:(Class)class transaction:(id)transaction error:(id *)error
{
  v24[2] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  conceptCopy = concept;
  semanticIdentifier = [conceptCopy semanticIdentifier];
  v13 = [(objc_class *)class predicateMatchingSemanticIdentifier:semanticIdentifier];

  v14 = MEMORY[0x277D10B20];
  creationDate = [conceptCopy creationDate];

  [creationDate timeIntervalSinceReferenceDate];
  v16 = HDUserDomainConceptEntityPredicateForConceptsWithCreationDateBefore();
  v24[0] = v16;
  v24[1] = v13;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v18 = [v14 predicateMatchingAllPredicates:v17];

  v19 = [transactionCopy databaseForEntityClass:class];

  v20 = [self countValueForProperty:@"udc_id" predicate:v18 database:v19 error:error];

  if (v20)
  {
    if ([v20 longLongValue])
    {
      v21 = 2;
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

+ (id)createAndRefreshOntologyBackedUserDomainConceptWithConceptIdentifier:(id)identifier additionalProperties:(id)properties userDomainConceptTypeIdentifier:(id)typeIdentifier profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  propertiesCopy = properties;
  typeIdentifierCopy = typeIdentifier;
  profileCopy = profile;
  v15 = [MEMORY[0x277CCD5C0] appleOntologyCodingWithIdentifier:identifierCopy];
  daemon = [profileCopy daemon];
  userDomainConceptEntityRegistry = [daemon userDomainConceptEntityRegistry];
  v18 = [userDomainConceptEntityRegistry userDomainConceptEntityClassForTypeIdentifier:typeIdentifierCopy];

  if (propertiesCopy)
  {
    v19 = [objc_alloc(MEMORY[0x277CCDB28]) initWithProperties:propertiesCopy];
  }

  else
  {
    v19 = 0;
  }

  v20 = [MEMORY[0x277CCD5C8] collectionWithCoding:v15];
  v21 = [v18 newUserDomainConceptForRefreshWithCodingCollection:v20 propertyCollection:v19];

  if (v21)
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__182;
    v40 = __Block_byref_object_dispose__182;
    v41 = 0;
    database = [profileCopy database];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __165__HDUserDomainConceptEntity_createAndRefreshOntologyBackedUserDomainConceptWithConceptIdentifier_additionalProperties_userDomainConceptTypeIdentifier_profile_error___block_invoke;
    v31[3] = &unk_27862C580;
    v34 = &v36;
    v35 = v18;
    v32 = v21;
    v33 = profileCopy;
    v23 = [self performWriteTransactionWithHealthDatabase:database error:error block:v31];

    if (v23)
    {
      v24 = v37[5];
    }

    else
    {
      v24 = 0;
    }

    v28 = v24;

    _Block_object_dispose(&v36, 8);
  }

  else
  {
    v25 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"%@{public}: User Domain Concept subclass entity does not currently support creating and refreshing on demand. %@{public}", self, v18}];
    v26 = v25;
    if (v25)
    {
      if (error)
      {
        v27 = v25;
        *error = v26;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v28 = 0;
  }

  return v28;
}

uint64_t __165__HDUserDomainConceptEntity_createAndRefreshOntologyBackedUserDomainConceptWithConceptIdentifier_additionalProperties_userDomainConceptTypeIdentifier_profile_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 56) refreshOntologyContentForUserDomainConcept:*(a1 + 32) profile:*(a1 + 40) transaction:a2 error:a3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return 1;
}

+ (id)ignoreHiddenConceptsPredicate
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277D10B80]);
  [v2 setEntityClass:objc_opt_class()];
  v3 = HDUserDomainConceptEntityPredicateForPropertyType(2);
  [v2 setPredicate:v3];

  [v2 setReturnsDistinctEntities:1];
  v4 = MEMORY[0x277D10B18];
  v10[0] = @"udc_id";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v6 = [v4 predicateWithProperty:@"udc_id" comparisonType:7 subqueryDescriptor:v2 subqueryProperties:v5];

  v7 = [MEMORY[0x277D10B20] negatedPredicate:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (BOOL)cannonicalDoseUnitStringForUserDomainConceptWithUUID:(id)d profile:(id)profile transaction:(id)transaction canonicalDoseUnitStringOut:(id *)out error:(id *)error
{
  dCopy = d;
  profileCopy = profile;
  transactionCopy = transaction;
  v15 = [MEMORY[0x277D10B18] predicateWithProperty:@"uuid" value:dCopy comparisonType:1];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__182;
  v26 = __Block_byref_object_dispose__182;
  v27 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __135__HDUserDomainConceptEntity_cannonicalDoseUnitStringForUserDomainConceptWithUUID_profile_transaction_canonicalDoseUnitStringOut_error___block_invoke;
  v21[3] = &unk_2786276E0;
  v21[4] = &v22;
  if (([self enumerateUserDomainConceptsWithPredicate:v15 limit:1 orderingTerms:0 profile:profileCopy transaction:transactionCopy error:error enumerationHandler:v21] & 1) == 0)
  {
    goto LABEL_7;
  }

  v16 = v23[5];
  if (!v16)
  {
    v18 = MEMORY[0x277CCA9B8];
    uUIDString = [dCopy UUIDString];
    [v18 hk_assignError:error code:100 format:{@"[%@] unable to find a concept with UUID %@. Either the UUID provided did not exist in the same transaction provided, or somehow went missing along the way.", self, uUIDString}];

LABEL_7:
    v17 = 0;
    goto LABEL_8;
  }

  if (out)
  {
    *out = [v16 canonicalDoseUnitString];
  }

  v17 = 1;
LABEL_8:
  _Block_object_dispose(&v22, 8);

  return v17;
}

+ (id)predicateMatchingSemanticIdentifier:(id)identifier
{
  uUID = [identifier UUID];
  v4 = [MEMORY[0x277D10B18] predicateWithProperty:@"uuid" value:uUID comparisonType:1];

  return v4;
}

+ (id)newUserDomainConceptForRefreshWithCodingCollection:(id)collection propertyCollection:(id)propertyCollection
{
  v5 = MEMORY[0x277CCDAF0];
  propertyCollectionCopy = propertyCollection;
  collectionCopy = collection;
  v8 = [[v5 alloc] initWithCodingCollection:collectionCopy linkCollection:0 propertyCollection:propertyCollectionCopy];

  return v8;
}

+ (BOOL)insertPrivateDataEnitiesForUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d transaction:(id)transaction error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  conceptCopy = concept;
  transactionCopy = transaction;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  privateDataEntities = [self privateDataEntities];
  v13 = [privateDataEntities countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(privateDataEntities);
        }

        if (![*(*(&v20 + 1) + 8 * i) insertDataForUserDomainConcept:conceptCopy userDomainConceptID:d transaction:transactionCopy error:error])
        {
          v17 = 0;
          goto LABEL_11;
        }
      }

      v14 = [privateDataEntities countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v17 = 1;
LABEL_11:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (BOOL)updatePrivateDataEnitiesForUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d syncProvenance:(int64_t)provenance profile:(id)profile transaction:(id)transaction error:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  conceptCopy = concept;
  profileCopy = profile;
  transactionCopy = transaction;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [self privateDataEntities];
  v31 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v31)
  {
    v32 = *v39;
    v11 = &selRef_predicateForMaximumQuantity_quantityType_operatorType_;
    while (2)
    {
      v12 = 0;
      v28 = v11[188];
      do
      {
        if (*v39 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v38 + 1) + 8 * v12);
        v14 = conceptCopy;
        v15 = profileCopy;
        v16 = transactionCopy;
        objc_opt_self();
        if ([v14 isDeleted] && !objc_msgSend(v13, "willDeleteUserDomainConcept:userDomainConceptID:syncProvenance:profile:transaction:error:", v14, d, provenance, v15, v16, error))
        {
LABEL_17:

          LOBYTE(v16) = 0;
          goto LABEL_19;
        }

        v17 = v14;
        v18 = v16;
        objc_opt_self();
        if (([v17 isDeleted] & 1) != 0 || (objc_opt_respondsToSelector() & 1) == 0)
        {
          v20 = MEMORY[0x277CCACA8];
          disambiguatedDatabaseTable = [v13 disambiguatedDatabaseTable];
          v22 = [v20 stringWithFormat:@"DELETE FROM %@ WHERE udc_id = ?", disambiguatedDatabaseTable];

          protectedDatabase = [v18 protectedDatabase];
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 3221225472;
          v42[2] = __111__HDUserDomainConceptEntity__deleteDataForUserDomainConcept_userDomainConceptID_entityClass_transaction_error___block_invoke;
          v42[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
          v42[4] = d;
          v24 = [protectedDatabase executeSQL:v22 error:error bindingHandler:v42 enumerationHandler:0];

          if ((v24 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v19 = [v13 pruneDataForUpdatedUserDomainConcept:v17 userDomainConceptID:d transaction:v18 error:error];

          if ((v19 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        LODWORD(v16) = [v13 insertDataForUserDomainConcept:v17 userDomainConceptID:d transaction:v18 error:error];

        if (!v16)
        {
          goto LABEL_19;
        }

        ++v12;
      }

      while (v31 != v12);
      v25 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      LOBYTE(v16) = 1;
      v11 = &selRef_predicateForMaximumQuantity_quantityType_operatorType_;
      v31 = v25;
      if (v25)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    LOBYTE(v16) = 1;
  }

LABEL_19:

  v26 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (BOOL)generateAPIObjectForUserDomainConcept:(id)concept apiObjectOut:(id *)out transaction:(id)transaction error:(id *)error
{
  if (out)
  {
    *out = 0;
  }

  return 1;
}

+ (BOOL)generateUserAnnotatedMedicationForUserDomainConcept:(id)concept userAnnotatedMedicationOut:(id *)out transaction:(id)transaction error:(id *)error
{
  if (out)
  {
    *out = 0;
  }

  [MEMORY[0x277CCA9B8] hk_assignError:error code:100 format:{@"[%@] User Domain Concept Entity Class does not support API object generation.", self}];
  return 0;
}

+ (void)_notifyObserversForUserDomainConcept:(int)concept update:(void *)update profile:(void *)profile transaction:
{
  v11 = a2;
  profileCopy = profile;
  updateCopy = update;
  objc_opt_self();
  userDomainConceptManager = [updateCopy userDomainConceptManager];

  if ([v11 isDeleted])
  {
    [userDomainConceptManager notifyObserversForDeletedUDC:v11 transaction:profileCopy];
  }

  else if (concept)
  {
    [userDomainConceptManager notifyObserversForUpdatedUDC:v11 transaction:profileCopy];
  }

  else
  {
    [userDomainConceptManager notifyObserversForAddedUDC:v11 transaction:profileCopy];
  }
}

+ (uint64_t)_updateLinkCollectionDataByRemovingTargetUUID:(uint64_t)d syncProvenance:(uint64_t)provenance syncIdentity:(void *)identity transaction:(uint64_t)transaction error:
{
  v10 = a2;
  identityCopy = identity;
  v12 = objc_opt_self();
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __121__HDUserDomainConceptEntity__updateLinkCollectionDataByRemovingTargetUUID_syncProvenance_syncIdentity_transaction_error___block_invoke;
  v17[3] = &unk_27862C5F8;
  v20 = v12;
  dCopy = d;
  provenanceCopy = provenance;
  v18 = v10;
  v19 = identityCopy;
  v13 = identityCopy;
  v14 = v10;
  v15 = [(HDUserDomainConceptEntity *)v12 _enumerateLinkCollectionsContainingTargetUUID:v14 transaction:v13 error:transaction enumerationHandler:v17];

  return v15;
}

+ (id)_linkCollectionToPersistGivenLinkCollection:(void *)collection transaction:(uint64_t)transaction error:
{
  v6 = a2;
  collectionCopy = collection;
  objc_opt_self();
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__182;
  v17 = __Block_byref_object_dispose__182;
  v8 = v6;
  v18 = v8;
  protectedDatabase = [collectionCopy protectedDatabase];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __91__HDUserDomainConceptEntity__linkCollectionToPersistGivenLinkCollection_transaction_error___block_invoke_2;
  v12[3] = &unk_278614620;
  v12[4] = &v13;
  if ([protectedDatabase executeCachedStatementForKey:&_linkCollectionToPersistGivenLinkCollection_transaction_error__statementKey error:transaction SQLGenerator:&__block_literal_global_463 bindingHandler:0 enumerationHandler:v12])
  {
    v10 = v14[5];
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v13, 8);

  return v10;
}

__CFString *__104__HDUserDomainConceptEntity__insertBaseUserDomainConcept_syncProvenance_syncIdentity_transaction_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  objc_opt_self();
  return @"INSERT OR IGNORE INTO user_domain_concepts (uuid, schema, type, deleted, creation_date, modification_date, major_version, minor_version, patch_version, build, sync_provenance, sync_identity, sync_anchor, link_collection_data) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, COALESCE((SELECT MAX(sync_anchor) + 1 FROM user_domain_concepts), 1), ?)";
}

void __104__HDUserDomainConceptEntity__insertBaseUserDomainConcept_syncProvenance_syncIdentity_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) UUID];
  HDSQLiteBindFoundationValueToStatement();

  v5 = [*(a1 + 32) identifier];
  v6 = [v5 schema];
  HDSQLiteBindFoundationValueToStatement();

  v7 = [*(a1 + 32) identifier];
  sqlite3_bind_int64(a2, 3, [v7 code]);

  sqlite3_bind_int(a2, 4, [*(a1 + 32) isDeleted]);
  [*(a1 + 32) creationTimestamp];
  sqlite3_bind_double(a2, 5, v8);
  [*(a1 + 32) modificationTimestamp];
  sqlite3_bind_double(a2, 6, v9);
  v10 = *(a1 + 32);
  if (v10)
  {
    [v10 operatingSystemVersion];
    v11 = v19;
  }

  else
  {
    v11 = 0;
  }

  sqlite3_bind_int64(a2, 7, v11);
  v12 = *(a1 + 32);
  if (v12)
  {
    [v12 operatingSystemVersion];
    v13 = v18;
  }

  else
  {
    v13 = 0;
  }

  sqlite3_bind_int64(a2, 8, v13);
  v14 = *(a1 + 32);
  if (v14)
  {
    [v14 operatingSystemVersion];
    v15 = v17;
  }

  else
  {
    v15 = 0;
  }

  sqlite3_bind_int64(a2, 9, v15);
  v16 = [*(a1 + 32) build];
  HDSQLiteBindFoundationValueToStatement();

  sqlite3_bind_int64(a2, 11, *(a1 + 48));
  sqlite3_bind_int64(a2, 12, *(a1 + 56));
  [(HDUserDomainConceptEntity *)*(a1 + 64) _bindToStatement:a2 index:13 linkCollection:*(a1 + 40)];
}

+ (void)_bindToStatement:(int)statement index:(void *)index linkCollection:
{
  indexCopy = index;
  objc_opt_self();
  if (indexCopy)
  {
    v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:indexCopy requiringSecureCoding:1 error:0];
    HDSQLiteBindFoundationValueToStatement();
  }

  else
  {
    sqlite3_bind_null(a2, statement);
  }
}

uint64_t __91__HDUserDomainConceptEntity__linkCollectionToPersistGivenLinkCollection_transaction_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x22AAC6CA0](a2, 0);
  v4 = [*(*(*(a1 + 32) + 8) + 40) collectionByRemovingLinksWithTargetUUID:v3];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return 1;
}

__CFString *__112__HDUserDomainConceptEntity__updateBaseUserDomainConcept_syncProvenance_syncIdentity_profile_transaction_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  objc_opt_self();
  return @"UPDATE user_domain_concepts SET (schema, type, deleted, modification_date, major_version, minor_version, patch_version, build, sync_provenance, sync_identity, sync_anchor, link_collection_data) = (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, COALESCE((SELECT MAX(sync_anchor) + 1 FROM user_domain_concepts), 1), ?)WHERE udc_id = ?";
}

uint64_t __112__HDUserDomainConceptEntity__updateBaseUserDomainConcept_syncProvenance_syncIdentity_profile_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) identifier];
  v5 = [v4 schema];
  HDSQLiteBindFoundationValueToStatement();

  v6 = [*(a1 + 32) identifier];
  sqlite3_bind_int64(a2, 2, [v6 code]);

  sqlite3_bind_int(a2, 3, [*(a1 + 32) isDeleted]);
  [*(a1 + 32) modificationTimestamp];
  sqlite3_bind_double(a2, 4, v7);
  v8 = *(a1 + 32);
  if (v8)
  {
    [v8 operatingSystemVersion];
    v9 = v18;
  }

  else
  {
    v9 = 0;
  }

  sqlite3_bind_int64(a2, 5, v9);
  v10 = *(a1 + 32);
  if (v10)
  {
    [v10 operatingSystemVersion];
    v11 = v17;
  }

  else
  {
    v11 = 0;
  }

  sqlite3_bind_int64(a2, 6, v11);
  v12 = *(a1 + 32);
  if (v12)
  {
    [v12 operatingSystemVersion];
    v13 = v16;
  }

  else
  {
    v13 = 0;
  }

  sqlite3_bind_int64(a2, 7, v13);
  v14 = [*(a1 + 32) build];
  HDSQLiteBindFoundationValueToStatement();

  sqlite3_bind_int64(a2, 9, *(a1 + 56));
  sqlite3_bind_int64(a2, 10, *(a1 + 64));
  [(HDUserDomainConceptEntity *)*(a1 + 72) _bindToStatement:a2 index:11 linkCollection:*(a1 + 40)];
  return sqlite3_bind_int64(a2, 12, [*(a1 + 48) longLongValue]);
}

uint64_t __121__HDUserDomainConceptEntity__updateLinkCollectionDataByRemovingTargetUUID_syncProvenance_syncIdentity_transaction_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = v10;
  v13 = a3;
  v14 = objc_opt_self();
  v15 = [v13 collectionByRemovingLinksWithTargetUUID:v12];

  v16 = [(HDUserDomainConceptEntity *)v14 _updateLinkCollection:v15 userDomainConceptID:a2 syncProvenance:v8 syncIdentity:v9 transaction:v11 error:a4];
  return v16;
}

+ (uint64_t)_enumerateLinkCollectionsContainingTargetUUID:(void *)d transaction:(uint64_t)transaction error:(void *)error enumerationHandler:
{
  v8 = a2;
  errorCopy = error;
  dCopy = d;
  v11 = objc_opt_self();
  protectedDatabase = [dCopy protectedDatabase];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __112__HDUserDomainConceptEntity__enumerateLinkCollectionsContainingTargetUUID_transaction_error_enumerationHandler___block_invoke_2;
  v20[3] = &unk_278614860;
  v21 = v8;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __112__HDUserDomainConceptEntity__enumerateLinkCollectionsContainingTargetUUID_transaction_error_enumerationHandler___block_invoke_3;
  v17[3] = &unk_278618B70;
  v18 = errorCopy;
  v19 = v11;
  v13 = errorCopy;
  v14 = v8;
  v15 = [protectedDatabase executeCachedStatementForKey:&_enumerateLinkCollectionsContainingTargetUUID_transaction_error_enumerationHandler__statementKey error:transaction SQLGenerator:&__block_literal_global_477 bindingHandler:v20 enumerationHandler:v17];

  return v15;
}

uint64_t __94__HDUserDomainConceptEntity__updateLinksDataTargeting_toTargetUUID_profile_transaction_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = *(a1 + 56);
  v9 = *(a1 + 64);
  v11 = *(a1 + 48);
  v12 = v7;
  v13 = v8;
  v14 = a3;
  v15 = objc_opt_self();
  v16 = [v14 collectionByRetargetingLinksWithUUID:v13 withNewUUID:v12];

  v17 = [(HDUserDomainConceptEntity *)v15 _updateLinkCollection:v16 userDomainConceptID:a2 syncProvenance:0 syncIdentity:v9 transaction:v11 error:a4];
  return v17;
}

uint64_t __112__HDUserDomainConceptEntity__enumerateLinkCollectionsContainingTargetUUID_transaction_error_enumerationHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  HDSQLiteColumnAsInt64();
  v6 = *(a1 + 40);
  v12 = 0;
  v7 = [(HDUserDomainConceptEntity *)v6 _inflateLinkCollection:a2 row:a3 error:?];
  v8 = v12;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      v10 = (*(*(a1 + 32) + 16))();
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (uint64_t)_inflateLinkCollection:(uint64_t)collection row:(uint64_t)row error:
{
  objc_opt_self();
  v6 = HDSQLiteColumnWithNameAsData();
  if (v6)
  {
    v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:row];
    if (!v7)
    {
      v8 = 0;
      goto LABEL_8;
    }

    if (a2)
    {
      v7 = v7;
      *a2 = v7;
    }
  }

  v8 = 1;
LABEL_8:

  return v8;
}

+ (uint64_t)_updateLinkCollection:(uint64_t)collection userDomainConceptID:(uint64_t)d syncProvenance:(uint64_t)provenance syncIdentity:(void *)identity transaction:(uint64_t)transaction error:
{
  v12 = a2;
  identityCopy = identity;
  v14 = objc_opt_self();
  protectedDatabase = [identityCopy protectedDatabase];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __117__HDUserDomainConceptEntity__updateLinkCollection_userDomainConceptID_syncProvenance_syncIdentity_transaction_error___block_invoke_2;
  v19[3] = &unk_278619C40;
  provenanceCopy = provenance;
  v23 = v14;
  v20 = v12;
  dCopy = d;
  collectionCopy = collection;
  v16 = v12;
  v17 = [protectedDatabase executeCachedStatementForKey:&_updateLinkCollection_userDomainConceptID_syncProvenance_syncIdentity_transaction_error__statementKey error:transaction SQLGenerator:&__block_literal_global_482_0 bindingHandler:v19 enumerationHandler:0];

  return v17;
}

uint64_t __117__HDUserDomainConceptEntity__updateLinkCollection_userDomainConceptID_syncProvenance_syncIdentity_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  sqlite3_bind_double(a2, 1, Current);
  sqlite3_bind_int64(a2, 2, *(a1 + 40));
  sqlite3_bind_int64(a2, 3, *(a1 + 48));
  [(HDUserDomainConceptEntity *)*(a1 + 56) _bindToStatement:a2 index:4 linkCollection:*(a1 + 32)];
  v5 = *(a1 + 64);

  return sqlite3_bind_int64(a2, 5, v5);
}

uint64_t __93__HDUserDomainConceptEntity__updateLinksMovingFromTargetUUID_toTargetUUID_transaction_error___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  v3 = *(a1 + 40);

  return HDSQLiteBindFoundationValueToStatement();
}

void __90__HDUserDomainConceptEntity__userDomainConceptWithPersistentID_encoder_transaction_error___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[4];
  v6 = a1[7];
  v7 = *(a1[6] + 8);
  obj = *(v7 + 40);
  v8 = [v5 objectForPersistentID:v6 row:a3 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void __88__HDUserDomainConceptEntity__userDomainConceptIDForUserDomainConcept_transaction_error___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) UUID];
  HDSQLiteBindFoundationValueToStatement();
}

uint64_t __88__HDUserDomainConceptEntity__userDomainConceptIDForUserDomainConcept_transaction_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x22AAC6C80](a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

+ (BOOL)_removeIsHiddenDeviceLocalPropertyForUserDomainConceptWithPersistentID:(void *)d transaction:(uint64_t)transaction error:
{
  dCopy = d;
  objc_opt_self();
  v7 = [HDUserDomainConceptPropertyEntity deleteDeviceLocalPropertiesWithType:2 userDomainConceptID:a2 transaction:dCopy error:transaction];

  return v7;
}

uint64_t __95__HDUserDomainConceptEntity__isConceptHiddenFromEnumerationWithPersistentID_transaction_error___block_invoke(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsNumber();
  v3 = v2;
  if (v2)
  {
    LOBYTE(v2) = [v2 BOOLValue];
  }

  *(*(*(a1 + 32) + 8) + 24) = v2;

  return 1;
}

void __97__HDUserDomainConceptEntity__codableSubclassForForUserDomainConceptID_encoder_transaction_error___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[4];
  v6 = a1[7];
  v7 = *(a1[6] + 8);
  obj = *(v7 + 40);
  v8 = [v5 codableRepresentationForPersistentID:v6 row:a3 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

@end
@interface CPLStoreMigrationAssistant_101386451
- (BOOL)_isCloudScopedIdentifier:(id)identifier aSuspiciousRemappingToCloudScopedIdentifier:(id)scopedIdentifier primaryScope:(id)scope;
- (BOOL)_isSuspiciousAsset:(id)asset isBadAsset:(BOOL *)badAsset;
- (BOOL)_performMigrationForRemappedRecord:(id)record primaryScope:(id)scope sharingScope:(id)sharingScope revertedCount:(unint64_t *)count error:(id *)error;
- (BOOL)_performMigrationWithPrimaryScope:(id)scope sharingScope:(id)sharingScope error:(id *)error;
- (BOOL)_revertRecordWithLocalScopedIdentifier:(id)identifier class:(Class)class revertedCount:(unint64_t *)count error:(id *)error;
- (BOOL)performMigrationWithError:(id *)error;
- (CPLStoreMigrationAssistant_101386451)initWithStore:(id)store;
- (int64_t)checkPushedChange:(id)change;
@end

@implementation CPLStoreMigrationAssistant_101386451

- (CPLStoreMigrationAssistant_101386451)initWithStore:(id)store
{
  storeCopy = store;
  v25.receiver = self;
  v25.super_class = CPLStoreMigrationAssistant_101386451;
  v5 = [(CPLStoreMigrationAssistant_101386451 *)&v25 initWithStore:storeCopy];
  if (v5)
  {
    scopes = [storeCopy scopes];
    scopes = v5->_scopes;
    v5->_scopes = scopes;

    remappedRecords = [storeCopy remappedRecords];
    remappedRecords = v5->_remappedRecords;
    v5->_remappedRecords = remappedRecords;

    idMapping = [storeCopy idMapping];
    idMapping = v5->_idMapping;
    v5->_idMapping = idMapping;

    revertRecords = [storeCopy revertRecords];
    revertRecords = v5->_revertRecords;
    v5->_revertRecords = revertRecords;

    cloudCache = [storeCopy cloudCache];
    cloudCache = v5->_cloudCache;
    v5->_cloudCache = cloudCache;

    pushRepository = [storeCopy pushRepository];
    pushRepository = v5->_pushRepository;
    v5->_pushRepository = pushRepository;

    pullQueue = [storeCopy pullQueue];
    pullQueue = v5->_pullQueue;
    v5->_pullQueue = pullQueue;

    platformObject = [storeCopy platformObject];
    pqStore = v5->_pqStore;
    v5->_pqStore = platformObject;

    pqlConnection = [(CPLPrequeliteStore *)v5->_pqStore pqlConnection];
    db = v5->_db;
    v5->_db = pqlConnection;
  }

  return v5;
}

- (BOOL)_isCloudScopedIdentifier:(id)identifier aSuspiciousRemappingToCloudScopedIdentifier:(id)scopedIdentifier primaryScope:(id)scope
{
  scopeCopy = scope;
  scopedIdentifierCopy = scopedIdentifier;
  identifierCopy = identifier;
  v11 = [CPLScopedIdentifier alloc];
  scopeIdentifier = [scopeCopy scopeIdentifier];
  identifier = [identifierCopy identifier];

  v14 = [v11 initWithScopeIdentifier:scopeIdentifier identifier:identifier scopeIndex:{objc_msgSend(scopeCopy, "cloudIndex")}];
  v15 = [CPLScopedIdentifier alloc];
  scopeIdentifier2 = [scopeCopy scopeIdentifier];
  identifier2 = [scopedIdentifierCopy identifier];

  cloudIndex = [scopeCopy cloudIndex];
  v19 = [v15 initWithScopeIdentifier:scopeIdentifier2 identifier:identifier2 scopeIndex:cloudIndex];

  v24 = 0;
  v20 = [(CPLEngineIDMapping *)self->_idMapping localScopedIdentifierForCloudScopedIdentifier:v14 isFinal:&v24];
  if (v20)
  {
    v21 = [(CPLEngineIDMapping *)self->_idMapping localScopedIdentifierForCloudScopedIdentifier:v19 isFinal:&v24];
    v22 = v21 != 0;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (BOOL)_isSuspiciousAsset:(id)asset isBadAsset:(BOOL *)badAsset
{
  assetCopy = asset;
  if ([assetCopy isAssetChange])
  {
    *badAsset = 0;
    scopedIdentifier = [assetCopy scopedIdentifier];
    scopeIdentifier = [scopedIdentifier scopeIdentifier];
    mainScopeIdentifier = [(CPLEngineScopeStorage *)self->_scopes mainScopeIdentifier];
    v10 = [scopeIdentifier isEqualToString:mainScopeIdentifier];

    LOBYTE(v11) = 0;
    if (v10)
    {
      primaryScope = [(CPLEngineScopeStorage *)self->_scopes primaryScope];
      v13 = [(CPLEngineScopeStorage *)self->_scopes sharingScopeForScope:primaryScope];
      v14 = v13;
      if (primaryScope)
      {
        v15 = v13 == 0;
      }

      else
      {
        v15 = 1;
      }

      if (v15)
      {
        LOBYTE(v11) = 0;
      }

      else
      {
        v34 = 0;
        v16 = [(CPLEngineIDMapping *)self->_idMapping cloudScopedIdentifierForLocalScopedIdentifier:scopedIdentifier isFinal:&v34];
        v17 = v16;
        if (v16)
        {
          v18 = [CPLScopedIdentifier alloc];
          scopeIdentifier2 = [v14 scopeIdentifier];
          v29 = v17;
          identifier = [v17 identifier];
          v21 = [v18 initWithScopeIdentifier:scopeIdentifier2 identifier:identifier scopeIndex:{objc_msgSend(v14, "cloudIndex")}];

          v22 = [(CPLEngineRemappedRecords *)self->_remappedRecords realScopedIdentifierForRemappedScopedIdentifier:v21];
          if ([v22 isEqual:v21])
          {
            v28 = v22;
            v32 = 0u;
            v33 = 0u;
            v30 = 0u;
            v31 = 0u;
            v23 = [(CPLEngineRemappedRecords *)self->_remappedRecords scopedIdentifiersRemappedToScopedIdentifier:v21];
            v11 = [v23 countByEnumeratingWithState:&v30 objects:v35 count:16];
            if (v11)
            {
              v27 = v14;
              v24 = *v31;
              while (2)
              {
                for (i = 0; i != v11; i = i + 1)
                {
                  if (*v31 != v24)
                  {
                    objc_enumerationMutation(v23);
                  }

                  if ([(CPLStoreMigrationAssistant_101386451 *)self _isCloudScopedIdentifier:*(*(&v30 + 1) + 8 * i) aSuspiciousRemappingToCloudScopedIdentifier:v21 primaryScope:primaryScope])
                  {
                    LOBYTE(v11) = 1;
                    *badAsset = 1;
                    goto LABEL_24;
                  }
                }

                v11 = [v23 countByEnumeratingWithState:&v30 objects:v35 count:16];
                if (v11)
                {
                  continue;
                }

                break;
              }

LABEL_24:
              v14 = v27;
            }

            v22 = v28;
            v17 = v29;
          }

          else
          {
            LOBYTE(v11) = [(CPLStoreMigrationAssistant_101386451 *)self _isCloudScopedIdentifier:v21 aSuspiciousRemappingToCloudScopedIdentifier:v22 primaryScope:primaryScope];
          }
        }

        else
        {
          LOBYTE(v11) = 0;
        }
      }
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (int64_t)checkPushedChange:(id)change
{
  changeCopy = change;
  v8 = 0;
  if ([(CPLStoreMigrationAssistant_101386451 *)self _isSuspiciousAsset:changeCopy isBadAsset:&v8])
  {
    if (v8)
    {
      v5 = 1;
    }

    else
    {
      v7.receiver = self;
      v7.super_class = CPLStoreMigrationAssistant_101386451;
      v5 = [(CPLStoreMigrationAssistant_101386451 *)&v7 checkPushedChange:changeCopy];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_revertRecordWithLocalScopedIdentifier:(id)identifier class:(Class)class revertedCount:(unint64_t *)count error:(id *)error
{
  v8 = [(CPLEngineRevertRecords *)self->_revertRecords addRecordsToRevertWithLocalScopedIdentifier:identifier class:class error:error];
  if (v8)
  {
    *count += [(PQLConnection *)self->_db changes];
  }

  return v8;
}

- (BOOL)_performMigrationForRemappedRecord:(id)record primaryScope:(id)scope sharingScope:(id)sharingScope revertedCount:(unint64_t *)count error:(id *)error
{
  recordCopy = record;
  scopeCopy = scope;
  sharingScopeCopy = sharingScope;
  pqStore = self->_pqStore;
  scopeIdentifier = [scopeCopy scopeIdentifier];
  scopeIdentifier2 = [sharingScopeCopy scopeIdentifier];
  [(CPLPrequeliteStore *)pqStore recordUpgradeEvent:@"Inspecting local state for %@ + %@", scopeIdentifier, scopeIdentifier2];

  v19 = sub_1001941F8(recordCopy);
  v20 = sub_100194210(recordCopy);
  LODWORD(scopeIdentifier2) = [(CPLStoreMigrationAssistant_101386451 *)self _isCloudScopedIdentifier:v19 aSuspiciousRemappingToCloudScopedIdentifier:v20 primaryScope:scopeCopy];

  if (!scopeIdentifier2)
  {
    v30 = 0;
    goto LABEL_57;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v21 = sub_10014BE6C();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = sub_100194210(recordCopy);
      *buf = 138412546;
      v101 = recordCopy;
      v102 = 2112;
      v103 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@ is suspicious: will make sure to drop %@ in client", buf, 0x16u);
    }
  }

  v80 = a2;
  countCopy = count;
  v23 = [CPLScopedIdentifier alloc];
  scopeIdentifier3 = [scopeCopy scopeIdentifier];
  v25 = sub_100194210(recordCopy);
  identifier = [v25 identifier];
  v27 = [v23 initWithScopeIdentifier:scopeIdentifier3 identifier:identifier scopeIndex:{objc_msgSend(scopeCopy, "cloudIndex")}];

  v28 = v27;
  v29 = [(CPLEngineCloudCache *)self->_cloudCache recordWithScopedIdentifier:v27 isFinal:0];
  v30 = v29;
  v86 = v29;
  if (!v29)
  {
    goto LABEL_19;
  }

  if (![v29 isAssetChange])
  {
    v30 = 0;
LABEL_19:
    errorCopy = error;
    v95 = 0;
    v42 = [CPLScopedIdentifier alloc];
    scopeIdentifier4 = [scopeCopy scopeIdentifier];
    v44 = sub_1001941F8(recordCopy);
    identifier2 = [v44 identifier];
    v46 = [v42 initWithScopeIdentifier:scopeIdentifier4 identifier:identifier2 scopeIndex:{objc_msgSend(scopeCopy, "cloudIndex")}];

    v47 = v46;
    v48 = [(CPLEngineIDMapping *)self->_idMapping localScopedIdentifierForCloudScopedIdentifier:v46 isFinal:&v95];
    [v48 setScopeIndex:{objc_msgSend(scopeCopy, "localIndex")}];
    v49 = [(CPLEnginePushRepository *)self->_pushRepository changeWithScopedIdentifier:v48];
    if (!v49)
    {
      goto LABEL_38;
    }

    v94.receiver = self;
    v94.super_class = CPLStoreMigrationAssistant_101386451;
    v50 = [(CPLStoreMigrationAssistant_101386451 *)&v94 checkPushedChange:v49];
    if (v50 == 2)
    {
      v76 = v47;
      v79 = v28;
      if ((_CPLSilentLogging & 1) == 0)
      {
        v59 = sub_10014BE6C();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v101 = v49;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Modifying %@ in push repository and reverting in client", buf, 0xCu);
        }
      }

      v82 = sharingScopeCopy;
      platformObject = [(CPLEnginePushRepository *)self->_pushRepository platformObject];
      _pushContext = [v49 _pushContext];
      v88 = v30;
      v62 = [platformObject _overwriteChange:v49 pushContext:_pushContext error:&v88];
      v63 = v88;

      if (!v62)
      {
        v58 = 0;
        v30 = v63;
        v47 = v76;
        v28 = v79;
        sharingScopeCopy = v82;
        goto LABEL_56;
      }

      v87 = v63;
      v58 = [(CPLStoreMigrationAssistant_101386451 *)self _revertRecordWithLocalScopedIdentifier:v48 class:objc_opt_class() revertedCount:countCopy error:&v87];
      v64 = v87;
      v47 = v76;
      v28 = v79;
      v30 = v63;
      sharingScopeCopy = v82;
      goto LABEL_54;
    }

    if (v50 != 1)
    {
LABEL_38:
      v58 = 1;
      goto LABEL_56;
    }

    v75 = v47;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v51 = sub_10014BE6C();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v101 = v49;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Dropping %@ from push repository", buf, 0xCu);
      }
    }

    v78 = v28;
    if ([v49 isDelete] && objc_msgSend(v49, "isAssetChange"))
    {
      platformObject2 = [(CPLEnginePushRepository *)self->_pushRepository platformObject];
      v93 = 0;
      v73 = [platformObject2 getRelatedScopedIdentifier:&v93 forRecordWithScopedIdentifier:v48];
      v53 = v93;

      if ((v73 & 1) == 0)
      {
        sub_1001B7EE4(v80, self, v48);
      }

      if (v53)
      {
        v54 = [(CPLEnginePushRepository *)self->_pushRepository changeWithScopedIdentifier:v53];
        if ([v54 isDelete])
        {
          v81 = v53;
          if ((_CPLSilentLogging & 1) == 0)
          {
            v55 = sub_10014BE6C();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v101 = v54;
              v102 = 2112;
              v103 = v48;
              _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Also dropping %@ (master of %@) from pushRepository", buf, 0x16u);
            }
          }

          v74 = v54;
          platformObject3 = [(CPLEnginePushRepository *)self->_pushRepository platformObject];
          v92 = v30;
          v57 = [platformObject3 deleteChangeWithScopedIdentifier:v81 error:&v92];
          v72 = v92;

          if ((v57 & 1) == 0)
          {

            v58 = 0;
            v47 = v75;
            v28 = v78;
            v30 = v81;
            v64 = v72;
            goto LABEL_54;
          }

          v91 = v72;
          v71 = [(CPLStoreMigrationAssistant_101386451 *)self _revertRecordWithLocalScopedIdentifier:v81 class:objc_opt_class() revertedCount:countCopy error:&v91];
          v30 = v91;

          if (!v71)
          {
            goto LABEL_55;
          }
        }

        else
        {
        }
      }

      else if ((_CPLSilentLogging & 1) == 0)
      {
        sub_1001B7FD0();
      }
    }

    v65 = v30;
    platformObject4 = [(CPLEnginePushRepository *)self->_pushRepository platformObject];
    v90 = v30;
    v67 = [platformObject4 deleteChangeWithScopedIdentifier:v48 error:&v90];
    v30 = v90;

    if (!v67)
    {
LABEL_55:
      v58 = 0;
      v47 = v75;
      v28 = v78;
LABEL_56:

      if ((v58 & 1) == 0)
      {
        error = errorCopy;
        goto LABEL_59;
      }

LABEL_57:
      v68 = 1;
      goto LABEL_64;
    }

    v89 = v30;
    v58 = [(CPLStoreMigrationAssistant_101386451 *)self _revertRecordWithLocalScopedIdentifier:v48 class:objc_opt_class() revertedCount:countCopy error:&v89];
    v64 = v89;
    v47 = v75;
    v28 = v78;
LABEL_54:

    v30 = v64;
    goto LABEL_56;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v31 = sub_10014BE6C();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v101 = v30;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%@ should not have been served to the client - removing it", buf, 0xCu);
    }
  }

  platformObject5 = [(CPLEngineCloudCache *)self->_cloudCache platformObject];
  v99 = 0;
  v33 = [platformObject5 _deleteRecordWithScopedIdentifier:v28 error:&v99];
  v30 = v99;

  if (!v33)
  {
    goto LABEL_48;
  }

  errorCopy2 = error;
  platformObject6 = [(CPLEngineChangePipe *)self->_pullQueue platformObject];
  v98 = v30;
  v35 = [platformObject6 _deleteAllChangesWithScopedIdentifier:v28 error:&v98];
  v36 = v98;

  if (v35)
  {
    buf[0] = 0;
    v77 = v28;
    v37 = [(CPLEngineIDMapping *)self->_idMapping localScopedIdentifierForCloudScopedIdentifier:v28 isFinal:buf];
    [v37 setScopeIndex:{objc_msgSend(scopeCopy, "localIndex")}];
    platformObject7 = [(CPLEnginePushRepository *)self->_pushRepository platformObject];
    v97 = v36;
    v39 = [platformObject7 deleteChangeWithScopedIdentifier:v37 error:&v97];
    v30 = v97;

    if (v39)
    {
      v96 = v30;
      v40 = -[CPLStoreMigrationAssistant_101386451 _revertRecordWithLocalScopedIdentifier:class:revertedCount:error:](self, "_revertRecordWithLocalScopedIdentifier:class:revertedCount:error:", v37, [v86 recordClass], countCopy, &v96);
      v41 = v96;

      v30 = v41;
      error = errorCopy2;
      v28 = v77;
      if (!v40)
      {
        goto LABEL_48;
      }

      goto LABEL_19;
    }

    error = errorCopy2;
    v28 = v77;
  }

  else
  {
    v30 = v36;
    error = errorCopy2;
  }

LABEL_48:

LABEL_59:
  if ((_CPLSilentLogging & 1) == 0)
  {
    sub_1001B806C();
  }

  if (error)
  {
    v69 = v30;
    v68 = 0;
    *error = v30;
  }

  else
  {
    v68 = 0;
  }

LABEL_64:

  return v68;
}

- (BOOL)_performMigrationWithPrimaryScope:(id)scope sharingScope:(id)sharingScope error:(id *)error
{
  scopeCopy = scope;
  sharingScopeCopy = sharingScope;
  platformObject = [(CPLEngineRemappedRecords *)self->_remappedRecords platformObject];
  [(CPLEngineIDMapping *)self->_idMapping platformObject];
  v46 = v45 = platformObject;
  v56 = 0;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v9 = [platformObject remappedRecordEnumeratorInScope:sharingScopeCopy];
  v10 = [v9 countByEnumeratingWithState:&v52 objects:v61 count:16];
  v42 = v10;
  v11 = 0;
  v12 = 0;
  if (v10)
  {
    v13 = *v53;
    v14 = v10;
    while (2)
    {
      v15 = 0;
      v43 = &v14[v11];
      v16 = v12;
      do
      {
        if (*v53 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v52 + 1) + 8 * v15);
        v18 = objc_autoreleasePoolPush();
        v51 = v16;
        LODWORD(v17) = [(CPLStoreMigrationAssistant_101386451 *)self _performMigrationForRemappedRecord:v17 primaryScope:scopeCopy sharingScope:sharingScopeCopy revertedCount:&v56 error:&v51];
        v12 = v51;

        if (!v17)
        {
          objc_autoreleasePoolPop(v18);

          v22 = v12;
          goto LABEL_18;
        }

        [v46 _clearScopedIdentifiersCache];
        objc_autoreleasePoolPop(v18);
        ++v15;
        v16 = v12;
      }

      while (v14 != v15);
      v14 = [v9 countByEnumeratingWithState:&v52 objects:v61 count:16];
      v11 = v43;
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v19 = sub_10014BE6C();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v58 = v11;
      v59 = 2048;
      v60 = v56;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Inspected %lu remapped records for migration and scheduled %lu reverted changes", buf, 0x16u);
    }
  }

  [(CPLPrequeliteStore *)self->_pqStore recordUpgradeEvent:@"Inspected %lu remapped records for migration and scheduled %lu reverted changes", v11, v56];
  if (v56)
  {
    store = [(CPLStoreMigrationAssistant_101386451 *)self store];
    v50 = v12;
    v21 = [store addPushPullGatekeeper:self error:&v50];
    v22 = v50;

    if (!v42 || (v21 & 1) == 0)
    {
      if (!v21)
      {
        goto LABEL_18;
      }

      goto LABEL_31;
    }

    v12 = v22;
    goto LABEL_24;
  }

  v22 = v12;
  if (v42)
  {
LABEL_24:
    if ((_CPLSilentLogging & 1) == 0)
    {
      v26 = sub_10014BE6C();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v58 = sharingScopeCopy;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Resetting sync anchor for %@ to ensure all remapped records have been refreshed", buf, 0xCu);
      }
    }

    [(CPLPrequeliteStore *)self->_pqStore recordUpgradeEvent:@"Resetting sync anchor for shared scope"];
    scopes = self->_scopes;
    v49 = v12;
    v28 = [(CPLEngineScopeStorage *)scopes resetSyncAnchorForScope:sharingScopeCopy error:&v49];
    v22 = v49;

    if ((v28 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

LABEL_31:
  platformObject2 = [(CPLEngineScopeStorage *)self->_scopes platformObject];
  v30 = [platformObject2 creationDateForScope:scopeCopy];
  v31 = [platformObject2 creationDateForScope:sharingScopeCopy];
  v32 = +[NSUserDefaults standardUserDefaults];
  [v32 doubleForKey:@"CPLRewindForSparseRecordsInterval"];
  v34 = v33;

  if (v30 && v31)
  {
    if (v34 <= 0.0)
    {
      v34 = 86400.0;
    }

    [v31 timeIntervalSinceDate:v30];
    if (v35 < 0.0)
    {
      v35 = -v35;
    }

    if (v35 >= v34)
    {

LABEL_49:
      v25 = 1;
      v23 = v45;
      goto LABEL_50;
    }
  }

  v36 = [(CPLEngineScopeStorage *)self->_scopes scopeChangeForScope:scopeCopy];
  if (v36 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v37 = sub_10014BE6C();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v58 = scopeCopy;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Resetting sync anchor for %@ to ensure we catch up with missing sparse private records and relationships to them", buf, 0xCu);
      }
    }

    [(CPLPrequeliteStore *)self->_pqStore recordUpgradeEvent:@"Resetting sync anchor for private scope"];
    v38 = self->_scopes;
    v48 = v22;
    v39 = [(CPLEngineScopeStorage *)v38 resetSyncAnchorForScope:scopeCopy error:&v48];
    v40 = v48;

    v22 = v40;
  }

  else
  {
    v39 = 1;
  }

  if (v39)
  {
    goto LABEL_49;
  }

LABEL_18:
  if ((_CPLSilentLogging & 1) == 0)
  {
    sub_1001B8128();
  }

  v23 = v45;
  if (error)
  {
    v24 = v22;
    v25 = 0;
    *error = v22;
  }

  else
  {
    v25 = 0;
  }

LABEL_50:

  return v25;
}

- (BOOL)performMigrationWithError:(id *)error
{
  store = [(CPLStoreMigrationAssistant_101386451 *)self store];
  scopes = [store scopes];
  primaryScope = [scopes primaryScope];
  if (primaryScope && ([scopes valueForFlag:16 forScope:primaryScope] & 1) == 0 && (objc_msgSend(scopes, "sharingScopeForScope:", primaryScope), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = sub_10014BE6C();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        sub_100021CFC();
        v14 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Migration is needed because store contains active %@/%@", v13, 0x16u);
      }
    }

    if ([store forceApplyPendingChangeSessionUpdateWithError:error])
    {
      v11 = [(CPLStoreMigrationAssistant_101386451 *)self _performMigrationWithPrimaryScope:primaryScope sharingScope:v9 error:error];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    if (_CPLSilentLogging)
    {
      v11 = 1;
      goto LABEL_15;
    }

    v9 = sub_10014BE6C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No need to perform any migration work", v13, 2u);
    }

    v11 = 1;
  }

LABEL_15:
  return v11;
}

@end
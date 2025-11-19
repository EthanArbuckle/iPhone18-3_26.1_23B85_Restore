@interface CPLStoreMigrationAssistant_101386451
- (BOOL)_isCloudScopedIdentifier:(id)a3 aSuspiciousRemappingToCloudScopedIdentifier:(id)a4 primaryScope:(id)a5;
- (BOOL)_isSuspiciousAsset:(id)a3 isBadAsset:(BOOL *)a4;
- (BOOL)_performMigrationForRemappedRecord:(id)a3 primaryScope:(id)a4 sharingScope:(id)a5 revertedCount:(unint64_t *)a6 error:(id *)a7;
- (BOOL)_performMigrationWithPrimaryScope:(id)a3 sharingScope:(id)a4 error:(id *)a5;
- (BOOL)_revertRecordWithLocalScopedIdentifier:(id)a3 class:(Class)a4 revertedCount:(unint64_t *)a5 error:(id *)a6;
- (BOOL)performMigrationWithError:(id *)a3;
- (CPLStoreMigrationAssistant_101386451)initWithStore:(id)a3;
- (int64_t)checkPushedChange:(id)a3;
@end

@implementation CPLStoreMigrationAssistant_101386451

- (CPLStoreMigrationAssistant_101386451)initWithStore:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = CPLStoreMigrationAssistant_101386451;
  v5 = [(CPLStoreMigrationAssistant_101386451 *)&v25 initWithStore:v4];
  if (v5)
  {
    v6 = [v4 scopes];
    scopes = v5->_scopes;
    v5->_scopes = v6;

    v8 = [v4 remappedRecords];
    remappedRecords = v5->_remappedRecords;
    v5->_remappedRecords = v8;

    v10 = [v4 idMapping];
    idMapping = v5->_idMapping;
    v5->_idMapping = v10;

    v12 = [v4 revertRecords];
    revertRecords = v5->_revertRecords;
    v5->_revertRecords = v12;

    v14 = [v4 cloudCache];
    cloudCache = v5->_cloudCache;
    v5->_cloudCache = v14;

    v16 = [v4 pushRepository];
    pushRepository = v5->_pushRepository;
    v5->_pushRepository = v16;

    v18 = [v4 pullQueue];
    pullQueue = v5->_pullQueue;
    v5->_pullQueue = v18;

    v20 = [v4 platformObject];
    pqStore = v5->_pqStore;
    v5->_pqStore = v20;

    v22 = [(CPLPrequeliteStore *)v5->_pqStore pqlConnection];
    db = v5->_db;
    v5->_db = v22;
  }

  return v5;
}

- (BOOL)_isCloudScopedIdentifier:(id)a3 aSuspiciousRemappingToCloudScopedIdentifier:(id)a4 primaryScope:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [CPLScopedIdentifier alloc];
  v12 = [v8 scopeIdentifier];
  v13 = [v10 identifier];

  v14 = [v11 initWithScopeIdentifier:v12 identifier:v13 scopeIndex:{objc_msgSend(v8, "cloudIndex")}];
  v15 = [CPLScopedIdentifier alloc];
  v16 = [v8 scopeIdentifier];
  v17 = [v9 identifier];

  v18 = [v8 cloudIndex];
  v19 = [v15 initWithScopeIdentifier:v16 identifier:v17 scopeIndex:v18];

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

- (BOOL)_isSuspiciousAsset:(id)a3 isBadAsset:(BOOL *)a4
{
  v6 = a3;
  if ([v6 isAssetChange])
  {
    *a4 = 0;
    v7 = [v6 scopedIdentifier];
    v8 = [v7 scopeIdentifier];
    v9 = [(CPLEngineScopeStorage *)self->_scopes mainScopeIdentifier];
    v10 = [v8 isEqualToString:v9];

    LOBYTE(v11) = 0;
    if (v10)
    {
      v12 = [(CPLEngineScopeStorage *)self->_scopes primaryScope];
      v13 = [(CPLEngineScopeStorage *)self->_scopes sharingScopeForScope:v12];
      v14 = v13;
      if (v12)
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
        v16 = [(CPLEngineIDMapping *)self->_idMapping cloudScopedIdentifierForLocalScopedIdentifier:v7 isFinal:&v34];
        v17 = v16;
        if (v16)
        {
          v18 = [CPLScopedIdentifier alloc];
          v19 = [v14 scopeIdentifier];
          v29 = v17;
          v20 = [v17 identifier];
          v21 = [v18 initWithScopeIdentifier:v19 identifier:v20 scopeIndex:{objc_msgSend(v14, "cloudIndex")}];

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

                  if ([(CPLStoreMigrationAssistant_101386451 *)self _isCloudScopedIdentifier:*(*(&v30 + 1) + 8 * i) aSuspiciousRemappingToCloudScopedIdentifier:v21 primaryScope:v12])
                  {
                    LOBYTE(v11) = 1;
                    *a4 = 1;
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
            LOBYTE(v11) = [(CPLStoreMigrationAssistant_101386451 *)self _isCloudScopedIdentifier:v21 aSuspiciousRemappingToCloudScopedIdentifier:v22 primaryScope:v12];
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

- (int64_t)checkPushedChange:(id)a3
{
  v4 = a3;
  v8 = 0;
  if ([(CPLStoreMigrationAssistant_101386451 *)self _isSuspiciousAsset:v4 isBadAsset:&v8])
  {
    if (v8)
    {
      v5 = 1;
    }

    else
    {
      v7.receiver = self;
      v7.super_class = CPLStoreMigrationAssistant_101386451;
      v5 = [(CPLStoreMigrationAssistant_101386451 *)&v7 checkPushedChange:v4];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_revertRecordWithLocalScopedIdentifier:(id)a3 class:(Class)a4 revertedCount:(unint64_t *)a5 error:(id *)a6
{
  v8 = [(CPLEngineRevertRecords *)self->_revertRecords addRecordsToRevertWithLocalScopedIdentifier:a3 class:a4 error:a6];
  if (v8)
  {
    *a5 += [(PQLConnection *)self->_db changes];
  }

  return v8;
}

- (BOOL)_performMigrationForRemappedRecord:(id)a3 primaryScope:(id)a4 sharingScope:(id)a5 revertedCount:(unint64_t *)a6 error:(id *)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  pqStore = self->_pqStore;
  v17 = [v14 scopeIdentifier];
  v18 = [v15 scopeIdentifier];
  [(CPLPrequeliteStore *)pqStore recordUpgradeEvent:@"Inspecting local state for %@ + %@", v17, v18];

  v19 = sub_1001941F8(v13);
  v20 = sub_100194210(v13);
  LODWORD(v18) = [(CPLStoreMigrationAssistant_101386451 *)self _isCloudScopedIdentifier:v19 aSuspiciousRemappingToCloudScopedIdentifier:v20 primaryScope:v14];

  if (!v18)
  {
    v30 = 0;
    goto LABEL_57;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v21 = sub_10014BE6C();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = sub_100194210(v13);
      *buf = 138412546;
      v101 = v13;
      v102 = 2112;
      v103 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@ is suspicious: will make sure to drop %@ in client", buf, 0x16u);
    }
  }

  v80 = a2;
  v83 = a6;
  v23 = [CPLScopedIdentifier alloc];
  v24 = [v14 scopeIdentifier];
  v25 = sub_100194210(v13);
  v26 = [v25 identifier];
  v27 = [v23 initWithScopeIdentifier:v24 identifier:v26 scopeIndex:{objc_msgSend(v14, "cloudIndex")}];

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
    v85 = a7;
    v95 = 0;
    v42 = [CPLScopedIdentifier alloc];
    v43 = [v14 scopeIdentifier];
    v44 = sub_1001941F8(v13);
    v45 = [v44 identifier];
    v46 = [v42 initWithScopeIdentifier:v43 identifier:v45 scopeIndex:{objc_msgSend(v14, "cloudIndex")}];

    v47 = v46;
    v48 = [(CPLEngineIDMapping *)self->_idMapping localScopedIdentifierForCloudScopedIdentifier:v46 isFinal:&v95];
    [v48 setScopeIndex:{objc_msgSend(v14, "localIndex")}];
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

      v82 = v15;
      v60 = [(CPLEnginePushRepository *)self->_pushRepository platformObject];
      v61 = [v49 _pushContext];
      v88 = v30;
      v62 = [v60 _overwriteChange:v49 pushContext:v61 error:&v88];
      v63 = v88;

      if (!v62)
      {
        v58 = 0;
        v30 = v63;
        v47 = v76;
        v28 = v79;
        v15 = v82;
        goto LABEL_56;
      }

      v87 = v63;
      v58 = [(CPLStoreMigrationAssistant_101386451 *)self _revertRecordWithLocalScopedIdentifier:v48 class:objc_opt_class() revertedCount:v83 error:&v87];
      v64 = v87;
      v47 = v76;
      v28 = v79;
      v30 = v63;
      v15 = v82;
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
      v52 = [(CPLEnginePushRepository *)self->_pushRepository platformObject];
      v93 = 0;
      v73 = [v52 getRelatedScopedIdentifier:&v93 forRecordWithScopedIdentifier:v48];
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
          v56 = [(CPLEnginePushRepository *)self->_pushRepository platformObject];
          v92 = v30;
          v57 = [v56 deleteChangeWithScopedIdentifier:v81 error:&v92];
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
          v71 = [(CPLStoreMigrationAssistant_101386451 *)self _revertRecordWithLocalScopedIdentifier:v81 class:objc_opt_class() revertedCount:v83 error:&v91];
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
    v66 = [(CPLEnginePushRepository *)self->_pushRepository platformObject];
    v90 = v30;
    v67 = [v66 deleteChangeWithScopedIdentifier:v48 error:&v90];
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
        a7 = v85;
        goto LABEL_59;
      }

LABEL_57:
      v68 = 1;
      goto LABEL_64;
    }

    v89 = v30;
    v58 = [(CPLStoreMigrationAssistant_101386451 *)self _revertRecordWithLocalScopedIdentifier:v48 class:objc_opt_class() revertedCount:v83 error:&v89];
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

  v32 = [(CPLEngineCloudCache *)self->_cloudCache platformObject];
  v99 = 0;
  v33 = [v32 _deleteRecordWithScopedIdentifier:v28 error:&v99];
  v30 = v99;

  if (!v33)
  {
    goto LABEL_48;
  }

  v84 = a7;
  v34 = [(CPLEngineChangePipe *)self->_pullQueue platformObject];
  v98 = v30;
  v35 = [v34 _deleteAllChangesWithScopedIdentifier:v28 error:&v98];
  v36 = v98;

  if (v35)
  {
    buf[0] = 0;
    v77 = v28;
    v37 = [(CPLEngineIDMapping *)self->_idMapping localScopedIdentifierForCloudScopedIdentifier:v28 isFinal:buf];
    [v37 setScopeIndex:{objc_msgSend(v14, "localIndex")}];
    v38 = [(CPLEnginePushRepository *)self->_pushRepository platformObject];
    v97 = v36;
    v39 = [v38 deleteChangeWithScopedIdentifier:v37 error:&v97];
    v30 = v97;

    if (v39)
    {
      v96 = v30;
      v40 = -[CPLStoreMigrationAssistant_101386451 _revertRecordWithLocalScopedIdentifier:class:revertedCount:error:](self, "_revertRecordWithLocalScopedIdentifier:class:revertedCount:error:", v37, [v86 recordClass], v83, &v96);
      v41 = v96;

      v30 = v41;
      a7 = v84;
      v28 = v77;
      if (!v40)
      {
        goto LABEL_48;
      }

      goto LABEL_19;
    }

    a7 = v84;
    v28 = v77;
  }

  else
  {
    v30 = v36;
    a7 = v84;
  }

LABEL_48:

LABEL_59:
  if ((_CPLSilentLogging & 1) == 0)
  {
    sub_1001B806C();
  }

  if (a7)
  {
    v69 = v30;
    v68 = 0;
    *a7 = v30;
  }

  else
  {
    v68 = 0;
  }

LABEL_64:

  return v68;
}

- (BOOL)_performMigrationWithPrimaryScope:(id)a3 sharingScope:(id)a4 error:(id *)a5
{
  v47 = a3;
  v7 = a4;
  v8 = [(CPLEngineRemappedRecords *)self->_remappedRecords platformObject];
  [(CPLEngineIDMapping *)self->_idMapping platformObject];
  v46 = v45 = v8;
  v56 = 0;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v9 = [v8 remappedRecordEnumeratorInScope:v7];
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
        LODWORD(v17) = [(CPLStoreMigrationAssistant_101386451 *)self _performMigrationForRemappedRecord:v17 primaryScope:v47 sharingScope:v7 revertedCount:&v56 error:&v51];
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
    v20 = [(CPLStoreMigrationAssistant_101386451 *)self store];
    v50 = v12;
    v21 = [v20 addPushPullGatekeeper:self error:&v50];
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
        v58 = v7;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Resetting sync anchor for %@ to ensure all remapped records have been refreshed", buf, 0xCu);
      }
    }

    [(CPLPrequeliteStore *)self->_pqStore recordUpgradeEvent:@"Resetting sync anchor for shared scope"];
    scopes = self->_scopes;
    v49 = v12;
    v28 = [(CPLEngineScopeStorage *)scopes resetSyncAnchorForScope:v7 error:&v49];
    v22 = v49;

    if ((v28 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

LABEL_31:
  v29 = [(CPLEngineScopeStorage *)self->_scopes platformObject];
  v30 = [v29 creationDateForScope:v47];
  v31 = [v29 creationDateForScope:v7];
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

  v36 = [(CPLEngineScopeStorage *)self->_scopes scopeChangeForScope:v47];
  if (v36 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v37 = sub_10014BE6C();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v58 = v47;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Resetting sync anchor for %@ to ensure we catch up with missing sparse private records and relationships to them", buf, 0xCu);
      }
    }

    [(CPLPrequeliteStore *)self->_pqStore recordUpgradeEvent:@"Resetting sync anchor for private scope"];
    v38 = self->_scopes;
    v48 = v22;
    v39 = [(CPLEngineScopeStorage *)v38 resetSyncAnchorForScope:v47 error:&v48];
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
  if (a5)
  {
    v24 = v22;
    v25 = 0;
    *a5 = v22;
  }

  else
  {
    v25 = 0;
  }

LABEL_50:

  return v25;
}

- (BOOL)performMigrationWithError:(id *)a3
{
  v5 = [(CPLStoreMigrationAssistant_101386451 *)self store];
  v6 = [v5 scopes];
  v7 = [v6 primaryScope];
  if (v7 && ([v6 valueForFlag:16 forScope:v7] & 1) == 0 && (objc_msgSend(v6, "sharingScopeForScope:", v7), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
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

    if ([v5 forceApplyPendingChangeSessionUpdateWithError:a3])
    {
      v11 = [(CPLStoreMigrationAssistant_101386451 *)self _performMigrationWithPrimaryScope:v7 sharingScope:v9 error:a3];
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
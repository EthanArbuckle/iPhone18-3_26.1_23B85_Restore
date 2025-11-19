@interface CPLEngineCloudCache
- (BOOL)ackownledgeRecordWithScopedIdentifier:(id)a3 error:(id *)a4;
- (BOOL)commitStagedChangesForScopeWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)confirmAllRecordsWithError:(id *)a3;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 error:(id *)a6;
- (BOOL)discardStagedChangesForScopeWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)discardStagedChangesWithScopeFilter:(id)a3 error:(id *)a4;
- (BOOL)hasAnyRecordWithRelatedScopedIdentifier:(id)a3;
- (BOOL)hasRecordAcknowledgedByClientWithScopedIdentifier:(id)a3;
- (BOOL)hasRecordWithScopedIdentifier:(id)a3;
- (BOOL)remapAllRecordsWithPreviousScopedIdentifier:(id)a3 newScopedIdentifier:(id)a4 error:(id *)a5;
- (BOOL)updateStagedRecord:(id)a3 error:(id *)a4;
- (id)_invalidCloudCacheErrorWithInvalidRecord:(id)a3 method:(id)a4;
- (id)_otherScopedIdentifierForCloudScopedIdentifier:(id)a3 sharedScoped:(id)a4;
- (id)_targetWithShareableRecord:(id)a3 cloudScopedIdentifier:(id)a4 otherScopedIdentifier:(id)a5 sharedScope:(id)a6 trustRecordChangeData:(BOOL)a7;
- (id)cloudChangeBatchFromBatch:(id)a3 usingMapping:(id)a4 isFinal:(BOOL)a5 withError:(id *)a6;
- (id)recordAcknowledgedByClientWithScopedIdentifier:(id)a3;
- (id)recordWithScopedIdentifier:(id)a3 isConfirmed:(BOOL *)a4 isStaged:(BOOL *)a5;
- (id)recordsAcknowledgedByClientWithRelatedScopedIdentifier:(id)a3 class:(Class)a4;
- (id)resourceOfType:(unint64_t)a3 forRecordWithScopedIdentifier:(id)a4 record:(id *)a5 target:(id *)a6 error:(id *)a7;
- (unint64_t)countOfRecordsAcknowledgedByClientWithRelatedScopedIdentifier:(id)a3 class:(Class)a4;
- (void)getCommittedRecord:(id *)a3 stagedRecord:(id *)a4 forScopedIdentifier:(id)a5;
- (void)updateStoredTargetsFromTargetMapping:(id)a3;
@end

@implementation CPLEngineCloudCache

- (void)getCommittedRecord:(id *)a3 stagedRecord:(id *)a4 forScopedIdentifier:(id)a5
{
  v8 = a5;
  v9 = [(CPLEngineStorage *)self platformObject];
  *a3 = [v9 recordWithScopedIdentifier:v8 isFinal:1 isConfirmed:0];

  v10 = [(CPLEngineStorage *)self platformObject];
  v11 = [v10 recordWithScopedIdentifier:v8 isFinal:0 isConfirmed:0];

  v12 = v11;
  *a4 = v11;

  v13 = *a3;
  v14 = v13;
  v15 = *a4;
  if (!v13 || !v15)
  {
    v17 = v13 | v15;

    if (v17)
    {
      return;
    }

    goto LABEL_6;
  }

  v16 = [v13 isEqual:?];

  if (v16)
  {
LABEL_6:
    *a4 = 0;
  }
}

- (id)resourceOfType:(unint64_t)a3 forRecordWithScopedIdentifier:(id)a4 record:(id *)a5 target:(id *)a6 error:(id *)a7
{
  v31 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = [(CPLEngineCloudCache *)self recordWithScopedIdentifier:v12 isFinal:0];
  *a6 = [(CPLEngineCloudCache *)self _targetWithRecord:v13 cloudScopedIdentifier:v12 trustRecordChangeData:1];
  if (!v13)
  {
    if (a7)
    {
      v21 = @"Record does not exist";
      v22 = 25;
LABEL_23:
      v23 = [CPLErrors cplErrorWithCode:v22 description:v21];
      goto LABEL_24;
    }

LABEL_18:
    v20 = 0;
    goto LABEL_25;
  }

  if (a5)
  {
    *a5 = [[CPLPlaceholderRecord alloc] initWithRecord:v13];
  }

  if (([v13 supportsResources] & 1) == 0)
  {
    if (a7)
    {
      v23 = [CPLErrors incorrectParametersErrorForParameter:@"itemScopedIdentifier"];
LABEL_24:
      v20 = 0;
      *a7 = v23;
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = [v13 resources];
  v15 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v26 + 1) + 8 * i);
        if ([v19 resourceType] == a3)
        {
          v20 = v19;
          goto LABEL_20;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v20 = 0;
LABEL_20:

  if (a7 && !v20)
  {
    v21 = @"Record does not have this type of resource";
    v22 = 26;
    goto LABEL_23;
  }

LABEL_25:

  v24 = *MEMORY[0x1E69E9840];

  return v20;
}

- (void)updateStoredTargetsFromTargetMapping:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 hasUpdatedTargets])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = __CPLStorageOSLogDomain_17824();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [v3 updatedTargetsDescription];
        v7 = 138543362;
        v8 = v5;
        _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEFAULT, "Updating targets:\n%{public}@", &v7, 0xCu);
      }
    }

    [v3 startTrackingUpdates];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (id)_targetWithShareableRecord:(id)a3 cloudScopedIdentifier:(id)a4 otherScopedIdentifier:(id)a5 sharedScope:(id)a6 trustRecordChangeData:(BOOL)a7
{
  v7 = a7;
  v50 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [v15 scopeIdentifier];
  if (v12)
  {
    if ([v12 isMasterChange])
    {
      v17 = [v12 recordChangeData];
      v18 = [v12 sharingRecordChangeData];
      v44 = v17;
      if (v17 && v18)
      {
        v19 = 3;
      }

      else
      {
        v43 = v18;
        v21 = [v12 scopedIdentifier];
        v22 = [(CPLEngineCloudCache *)self recordsWithRelatedScopedIdentifier:v21 class:objc_opt_class() isFinal:0];

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v23 = v22;
        v19 = [v23 countByEnumeratingWithState:&v45 objects:v49 count:16];
        if (v19)
        {
          v39 = v7;
          v40 = v15;
          v41 = v14;
          v42 = v13;
          v24 = 0;
          v25 = 0;
          v26 = *v46;
          while (2)
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v46 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v45 + 1) + 8 * i);
              v29 = objc_autoreleasePoolPush();
              v30 = [v28 isSharedInScopeWithIdentifier:v16];
              v25 |= v30;
              v24 |= v30 ^ 1;
              objc_autoreleasePoolPop(v29);
              if (v25 & 1) != 0 && (v24)
              {

                v19 = 3;
                goto LABEL_27;
              }
            }

            v19 = [v23 countByEnumeratingWithState:&v45 objects:v49 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }

          if (v24)
          {
            v19 = 3;
          }

          else
          {
            v19 = 2;
          }

          if ((v25 & 1) == 0)
          {
            v19 = v24 & 1;
          }

LABEL_27:
          v14 = v41;
          v13 = v42;
          v15 = v40;
          v7 = v39;
        }

        else
        {
        }

        v18 = v43;
      }

      goto LABEL_32;
    }

    if (![v12 supportsSharingScopedIdentifier])
    {
      v31 = [[CPLRecordTarget alloc] initWithScopedIdentifier:v13];
      goto LABEL_40;
    }

    if (![v12 isSharedInScopeWithIdentifier:v16])
    {
      v19 = 1;
LABEL_32:
      if (v19 == 1 && v7)
      {
        v32 = [v12 sharingRecordChangeData];

        v33 = [v12 recordChangeData];

        v34 = 2;
        if (v33)
        {
          v34 = 3;
        }

        if (v32)
        {
          v19 = v34;
        }

        else
        {
          v19 = v33 != 0;
        }
      }

      goto LABEL_39;
    }

    v20 = [v12 recordChangeData];

    if (v20)
    {
      v19 = 3;
    }

    else
    {
      v38 = [v12 sharingRecordChangeData];

      if (v38)
      {
        v19 = 2;
      }

      else
      {
        v19 = 3;
      }
    }
  }

  else
  {
    v19 = 0;
  }

LABEL_39:
  v31 = [[CPLRecordTarget alloc] initWithScopedIdentifier:v13 otherScopedIdentifier:v14 targetState:v19];
LABEL_40:
  v35 = v31;

  v36 = *MEMORY[0x1E69E9840];

  return v35;
}

- (id)_otherScopedIdentifierForCloudScopedIdentifier:(id)a3 sharedScoped:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [CPLScopedIdentifier alloc];
  v9 = [v6 scopeIdentifier];
  v10 = [v7 identifier];

  v11 = [v6 cloudIndex];
  v12 = [(CPLScopedIdentifier *)v8 initWithScopeIdentifier:v9 identifier:v10 scopeIndex:v11];

  v13 = [(CPLEngineStorage *)self engineStore];
  v14 = [v13 remappedRecords];
  v15 = [v14 realScopedIdentifierForRemappedScopedIdentifier:v12];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v12;
  }

  v18 = v17;

  return v17;
}

- (BOOL)discardStagedChangesWithScopeFilter:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineStorage *)self platformObject];
  v8 = [v7 discardStagedChangesWithScopeFilter:v6 error:a4];

  if (v8)
  {
    v9 = [(CPLEngineStorage *)self engineStore];
    v10 = [v9 scopes];

    v11 = [v10 discardStagedSyncAnchorWithScopeFilter:v6 error:a4];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)discardStagedChangesForScopeWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLStorageOSLogDomain_17824();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v14 = 0;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEBUG, "Discarding staged changes", v14, 2u);
    }
  }

  v8 = [(CPLEngineStorage *)self platformObject];
  v9 = [v8 discardStagedChangesForScopeWithIdentifier:v6 error:a4];

  if (v9)
  {
    v10 = [(CPLEngineStorage *)self engineStore];
    v11 = [v10 scopes];

    v12 = [v11 scopeWithIdentifier:v6];
    if (v12)
    {
      LOBYTE(v9) = [v11 discardStagedSyncAnchorForScope:v12 error:a4];
    }

    else if (a4)
    {
      [CPLErrors invalidScopeErrorWithScopeIdentifier:v6];
      *a4 = LOBYTE(v9) = 0;
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

- (BOOL)commitStagedChangesForScopeWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLStorageOSLogDomain_17824();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v14 = 0;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEBUG, "Committing staged changes", v14, 2u);
    }
  }

  v8 = [(CPLEngineStorage *)self platformObject];
  v9 = [v8 commitStagedChangesForScopeWithIdentifier:v6 error:a4];

  if (v9)
  {
    v10 = [(CPLEngineStorage *)self engineStore];
    v11 = [v10 scopes];

    v12 = [v11 scopeWithIdentifier:v6];
    if (v12)
    {
      LOBYTE(v9) = [v11 commitSyncAnchorForScope:v12 error:a4];
      if ([v11 hasFinishedAFullSyncForScope:v12])
      {
        LOBYTE(v9) = [v11 clearTransportGroupsForScope:v12 error:a4];
      }
    }

    else if (a4)
    {
      [CPLErrors invalidScopeErrorWithScopeIdentifier:v6];
      *a4 = LOBYTE(v9) = 0;
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

- (BOOL)remapAllRecordsWithPreviousScopedIdentifier:(id)a3 newScopedIdentifier:(id)a4 error:(id *)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v10 = __CPLStorageOSLogDomain_17824();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_DEBUG, "Remapping %@ -> %@", buf, 0x16u);
    }
  }

  v11 = [(CPLEngineStorage *)self platformObject];
  v18 = 0;
  v12 = [v11 remapAllRecordsWithPreviousScopedIdentifier:v8 newScopedIdentifier:v9 error:&v18];
  v13 = v18;

  if ((v12 & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v14 = __CPLStorageOSLogDomain_17824();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v20 = v13;
        _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_ERROR, "Can't remap: %@", buf, 0xCu);
      }
    }

    if (a5)
    {
      v15 = v13;
      *a5 = v13;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)ackownledgeRecordWithScopedIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a4) = [v7 ackownledgeRecordWithScopedIdentifier:v6 error:a4];

  return a4;
}

- (unint64_t)countOfRecordsAcknowledgedByClientWithRelatedScopedIdentifier:(id)a3 class:(Class)a4
{
  v6 = a3;
  v7 = [(CPLEngineStorage *)self platformObject];
  v8 = [v7 countOfRecordsAcknowledgedByClientWithRelatedScopedIdentifier:v6 class:a4];

  return v8;
}

- (id)recordsAcknowledgedByClientWithRelatedScopedIdentifier:(id)a3 class:(Class)a4
{
  v6 = a3;
  v7 = [(CPLEngineStorage *)self platformObject];
  v8 = [v7 recordsAcknowledgedByClientWithRelatedScopedIdentifier:v6 class:a4];

  return v8;
}

- (BOOL)hasRecordAcknowledgedByClientWithScopedIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 hasRecordAcknowledgedByClientWithScopedIdentifier:v4];

  return v6;
}

- (id)recordAcknowledgedByClientWithScopedIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 recordAcknowledgedByClientWithScopedIdentifier:v4];

  return v6;
}

- (BOOL)hasAnyRecordWithRelatedScopedIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 hasAnyRecordWithRelatedScopedIdentifier:v4];

  return v6;
}

- (BOOL)hasRecordWithScopedIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 hasRecordWithScopedIdentifier:v4];

  return v6;
}

- (id)recordWithScopedIdentifier:(id)a3 isConfirmed:(BOOL *)a4 isStaged:(BOOL *)a5
{
  v8 = a3;
  v9 = [(CPLEngineStorage *)self platformObject];
  v10 = [v9 recordWithScopedIdentifier:v8 isConfirmed:a4 isStaged:a5];

  return v10;
}

- (BOOL)confirmAllRecordsWithError:(id *)a3
{
  v4 = [(CPLEngineStorage *)self platformObject];
  LOBYTE(a3) = [v4 confirmAllRecordsWithError:a3];

  return a3;
}

- (id)cloudChangeBatchFromBatch:(id)a3 usingMapping:(id)a4 isFinal:(BOOL)a5 withError:(id *)a6
{
  v175 = a5;
  v246 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v187 = a4;
  v177 = self;
  v169 = [(CPLEngineStorage *)self engineStore];
  v229 = 0;
  v230 = &v229;
  v231 = 0x3032000000;
  v232 = __Block_byref_object_copy__17856;
  v233 = __Block_byref_object_dispose__17857;
  v234 = 0;
  v9 = 1;
  if (!v187)
  {
    v9 = 2;
  }

  v173 = v9;
  v10 = [v169 scopes];
  v172 = [v169 statusCenter];
  v223 = 0;
  v224 = &v223;
  v225 = 0x3032000000;
  v226 = __Block_byref_object_copy__17856;
  v227 = __Block_byref_object_dispose__17857;
  v228 = objc_alloc_init(CPLChangeBatch);
  if (v187)
  {
    v161 = [v169 transientPullRepository];
    v167 = 0;
    v168 = 0;
    v165 = 0;
    v166 = 0;
    v162 = 0;
    v176 = 0;
  }

  else
  {
    v11 = [v169 idMapping];
    v166 = [v169 remappedRecords];
    v12 = v11;
    v168 = [v169 transactionClientCacheView];
    v162 = [v169 pullQueue];
    v165 = [v169 quarantinedRecords];
    v13 = v12;
    v167 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v176 = v13;

    v161 = 0;
  }

  v217 = 0;
  v218 = &v217;
  v219 = 0x3032000000;
  v220 = __Block_byref_object_copy__17856;
  v221 = __Block_byref_object_dispose__17857;
  v222 = 0;
  v215[0] = 0;
  v215[1] = v215;
  v215[2] = 0x2020000000;
  v216 = 0;
  v213[0] = 0;
  v213[1] = v213;
  v213[2] = 0x2020000000;
  v214 = 0;
  v208[0] = MEMORY[0x1E69E9820];
  v208[1] = 3221225472;
  v208[2] = __80__CPLEngineCloudCache_cloudChangeBatchFromBatch_usingMapping_isFinal_withError___block_invoke;
  v208[3] = &unk_1E861F310;
  v210 = &v217;
  v211 = v215;
  v212 = v213;
  v178 = v10;
  v209 = v178;
  v181 = MEMORY[0x1E128EBA0](v208);
  v206 = 0u;
  v207 = 0u;
  v204 = 0u;
  v205 = 0u;
  obj = v8;
  v14 = [obj countByEnumeratingWithState:&v204 objects:v245 count:16];
  v15 = 0;
  if (v14)
  {
    v183 = *v205;
    v16 = "cloud";
    if (v187)
    {
      v16 = "local";
    }

    v174 = v16;
    do
    {
      v17 = 0;
      v184 = v14;
      do
      {
        if (*v205 != v183)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v204 + 1) + 8 * v17);
        context = objc_autoreleasePoolPush();
        v19 = [v18 scopedIdentifier];
        v20 = [v19 scopeIdentifier];
        v15 = v15;
        v21 = v20;
        v22 = v21;
        if (v15 && v21)
        {
          v23 = [v15 isEqual:v21];

          if (v23)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v24 = (v15 | v21) != 0;

          if (!v24)
          {
            v15 = 0;
LABEL_21:
            v27 = v181[2];
            if (v187)
            {
              v28 = 0;
              v180 = v27(v181) ^ 1;
            }

            else
            {
              v180 = 0;
              v28 = v27(v181) ^ 1;
            }

            v203 = 0;
            v29 = [v18 validateChangeWithError:&v203];
            v186 = v203;
            if ((v29 & 1) == 0)
            {
              if (v187)
              {
                if ((_CPLSilentLogging & 1) == 0)
                {
                  v35 = __CPLStorageOSLogDomain_17824();
                  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v236 = v18;
                    v237 = 2112;
                    v238 = v186;
                    _os_log_impl(&dword_1DC05A000, v35, OS_LOG_TYPE_ERROR, "Incorrect change %@ in push repository: %@", buf, 0x16u);
                  }
                }

                v36 = [CPLErrors cplErrorWithCode:20 underlyingError:v186 description:@"Incorrect change %@ in push repository", v18];
                v37 = v224[5];
                v224[5] = 0;

                v38 = 0;
                v33 = v230[5];
                v230[5] = v36;
                v39 = 2;
              }

              else
              {
                v50 = [v18 realIdentifier];
                v51 = v50 == 0;

                if (!v51)
                {
                  goto LABEL_25;
                }

                if (_CPLSilentLogging)
                {
                  goto LABEL_287;
                }

                v33 = __CPLStorageOSLogDomain_17824();
                if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v236 = v18;
                  v237 = 2112;
                  v238 = v186;
                  _os_log_impl(&dword_1DC05A000, v33, OS_LOG_TYPE_ERROR, "Incorrect change coming from the cloud %@: %@", buf, 0x16u);
                }

LABEL_48:
                v38 = 0;
                v39 = 3;
              }

              goto LABEL_270;
            }

LABEL_25:
            v30 = [v18 realIdentifier];
            if (v30)
            {
              v31 = [v18 _ignoredRecord];
              v32 = v31 == 0;

              if (!v32)
              {
                if ((_CPLSilentLogging & 1) == 0)
                {
                  v33 = __CPLStorageOSLogDomain_17824();
                  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                  {
                    v34 = [v18 _ignoredRecord];
                    *buf = 138412546;
                    v236 = v18;
                    v237 = 2112;
                    v238 = v34;
                    _os_log_impl(&dword_1DC05A000, v33, OS_LOG_TYPE_DEFAULT, "Ignoring already known remapped record %@ (shadowing %@)", buf, 0x16u);
                  }

                  goto LABEL_48;
                }

LABEL_287:
                v38 = 0;
                v39 = 3;
LABEL_271:

                goto LABEL_272;
              }
            }

            if ((_CPLSilentLogging & 1) == 0)
            {
              v40 = __CPLStorageOSLogDomain_17824();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
              {
                v41 = objc_opt_class();
                v42 = [v18 scopedIdentifier];
                v43 = [v18 cplFullDescription];
                *buf = 136315906;
                v236 = v174;
                v237 = 2112;
                v238 = v41;
                v239 = 2112;
                v240 = v42;
                v241 = 2112;
                v242 = v43;
                _os_log_impl(&dword_1DC05A000, v40, OS_LOG_TYPE_DEBUG, "Filtering %s <%@ %@> against cloud cache:\n%@", buf, 0x2Au);
              }
            }

            v44 = [v18 realIdentifier];
            v45 = v44 == 0;

            if (!v45)
            {
              if ((_CPLSilentLogging & 1) == 0)
              {
                v154 = __CPLStorageOSLogDomain_17824();
                if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v236 = v18;
                  _os_log_impl(&dword_1DC05A000, v154, OS_LOG_TYPE_ERROR, "Trying to mingle a remapped record %@", buf, 0xCu);
                }
              }

              v155 = [MEMORY[0x1E696AAA8] currentHandler];
              v156 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineCloudCache.m"];
              [v155 handleFailureInMethod:a2 object:v177 file:v156 lineNumber:328 description:{@"Trying to mingle a remapped record %@", v18}];

              abort();
            }

            if (v187)
            {
              v46 = (v230 + 5);
              v202 = v230[5];
              v47 = [v18 translateToCloudChangeUsingIDMapping:v187 error:&v202];
              objc_storeStrong(v46, v202);
              v33 = v47;
            }

            else
            {
              v33 = v18;
            }

            v182 = [v33 scopedIdentifier];
            v201 = 1;
            if (!v33)
            {
              v38 = 0;
              goto LABEL_67;
            }

            v52 = [(CPLEngineStorage *)v177 platformObject];
            v38 = [v52 recordWithScopedIdentifier:v182 isFinal:v175 isConfirmed:&v201];

            if (v38)
            {
              v53 = objc_opt_class();
              if (v53 != objc_opt_class())
              {
                if ((_CPLSilentLogging & 1) == 0)
                {
                  v54 = __CPLStorageOSLogDomain_17824();
                  if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                  {
                    v55 = [CPLRecordChange descriptionForDirection:v173];
                    *buf = 138412802;
                    v236 = v55;
                    v237 = 2112;
                    v238 = v33;
                    v239 = 2112;
                    v240 = v38;
                    _os_log_impl(&dword_1DC05A000, v54, OS_LOG_TYPE_ERROR, "Trying to diff %@ %@ against mismatched %@", buf, 0x20u);
                  }
                }

                v56 = objc_alloc(MEMORY[0x1E696AEC0]);
                v57 = [CPLRecordChange descriptionForDirection:v173];
                v58 = objc_opt_class();
                v59 = [v56 initWithFormat:@"Mismatch diff %@ %@ against %@", v57, v58, objc_opt_class()];

                if (v187)
                {
                  [CPLErrors invalidClientCacheErrorWithReason:v59];
                }

                else
                {
                  [CPLErrors invalidCloudCacheErrorWithReason:v59];
                }
                v60 = ;
                v79 = v230[5];
                v230[5] = v60;

                v80 = v224[5];
                v224[5] = 0;

                goto LABEL_107;
              }
            }

            if ([v33 isDelete])
            {
              if (v38)
              {
                if (v187)
                {
                  [v33 restoreRelationshipsFromFullRecord:v38];
                  goto LABEL_63;
                }

LABEL_208:
                v77 = v33;
LABEL_209:
                v120 = [v18 recordChangeData];
                [v77 setRecordChangeData:v120];

                v121 = [v18 sharingRecordChangeData];
                [v77 setSharingRecordChangeData:v121];

                [v77 setServerRecordIsCorrupted:[v18 serverRecordIsCorrupted]];
LABEL_210:
                v122 = 0;
LABEL_240:
                v189[0] = MEMORY[0x1E69E9820];
                v189[1] = 3221225472;
                v189[2] = __80__CPLEngineCloudCache_cloudChangeBatchFromBatch_usingMapping_isFinal_withError___block_invoke_35;
                v189[3] = &unk_1E861F338;
                v138 = v176;
                v195 = v201;
                v190 = v138;
                v191 = v18;
                v192 = v172;
                v193 = &v229;
                v194 = &v223;
                v139 = MEMORY[0x1E128EBA0](v189);
                if (v122)
                {
                  if (!-[NSObject supportsResources](v18, "supportsResources") || !-[NSObject hasChangeType:](v18, "hasChangeType:", 8) || (-[NSObject resources](v18, "resources"), v140 = objc_claimAutoreleasedReturnValue(), v141 = [v140 count] == 0, v140, v141))
                  {
                    if (v187)
                    {
                      goto LABEL_264;
                    }

                    goto LABEL_265;
                  }

                  v142 = v139[2](v139);
                  if (v187)
                  {
                    v143 = v142;
                  }

                  else
                  {
                    v143 = 0;
                  }

                  if (v142)
                  {
                    v39 = 0;
                  }

                  else
                  {
                    v39 = 2;
                  }

                  if ((v143 & 1) == 0)
                  {
LABEL_268:

                    v59 = v190;
                    v33 = v77;
                    goto LABEL_269;
                  }

LABEL_264:
                  v147 = (v230 + 5);
                  v188 = v230[5];
                  v148 = [(CPLEngineCloudCache *)v177 ackownledgeRecordWithScopedIdentifier:v182 error:&v188];
                  objc_storeStrong(v147, v188);
                  if (v148)
                  {
LABEL_265:
                    v39 = 0;
                    goto LABEL_268;
                  }

                  v146 = v224[5];
                  v224[5] = 0;
                  v39 = 2;
                }

                else
                {
                  if ([v18 supportsResources])
                  {
                    if ([v18 hasChangeType:8])
                    {
                      if (([v77 hasChangeType:8]& 1) == 0)
                      {
                        v144 = [v18 resources];
                        v145 = [v144 count] == 0;

                        if (!v145 && (v139[2](v139) & 1) == 0)
                        {
                          v39 = 2;
                          goto LABEL_268;
                        }
                      }
                    }
                  }

                  if (v180 && [v77 hasChangeType:2])
                  {
                    [v77 setShouldFilterDefaultValuesForNewProperties:1];
                  }

                  v146 = [v18 _pushContext];
                  [v77 _setPushContext:v146];
                  [v77 _setShouldNotTrustCloudCache:[v18 _shouldNotTrustCloudCache]];
                  if (v187)
                  {
                    [v77 _setRecordKnownByCloudCache:v38];
                  }

                  [v224[5] addRecord:v77];
                  v39 = 0;
                }

                goto LABEL_268;
              }

              if (v28)
              {
                v200 = 0;
                v81 = [v176 localScopedIdentifierForCloudScopedIdentifier:v182 isFinal:&v200];
                if (v81 && [v168 hasRecordWithScopedIdentifier:v81])
                {
                  if ((_CPLSilentLogging & 1) == 0)
                  {
                    v82 = __CPLStorageOSLogDomain_17824();
                    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v236 = v18;
                      _os_log_impl(&dword_1DC05A000, v82, OS_LOG_TYPE_DEBUG, "%@ is already known to the cloud cache but not from the client cache - keeping", buf, 0xCu);
                    }
                  }

                  v83 = 0;
                }

                else
                {
                  v83 = 1;
                }

LABEL_185:
                if (v83 && v187 == 0)
                {
                  v200 = 0;
                  v114 = [v176 localScopedIdentifierForCloudScopedIdentifier:v182 isFinal:&v200];
                  if (v114 && [v165 isRecordWithScopedIdentifierQuarantined:v114])
                  {
                    if ((_CPLSilentLogging & 1) == 0)
                    {
                      v115 = __CPLStorageOSLogDomain_17824();
                      if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        v236 = v18;
                        _os_log_impl(&dword_1DC05A000, v115, OS_LOG_TYPE_DEFAULT, "%@ is already known to the cloud cache but the record is quarantined - keeping", buf, 0xCu);
                      }
                    }

                    v83 = 0;
                  }

                  else
                  {
                    v83 = 1;
                  }
                }
              }

              else
              {
                if (!v187)
                {
                  v83 = 1;
                  goto LABEL_185;
                }

                v83 = (-[NSObject _shouldNotTrustCloudCache](v18, "_shouldNotTrustCloudCache") & 1) == 0 && ![v161 hasRecordWithScopedIdentifier:v182];
              }

              if (v166)
              {
                v199 = 0;
                v116 = [v166 removeRemappedRecordWithScopedIdentifier:v182 error:&v199];
                v117 = v199;
                if (!v116)
                {
                  v118 = v224[5];
                  v224[5] = 0;

                  v38 = 0;
                  v59 = v230[5];
                  v230[5] = v117;
                  goto LABEL_107;
                }
              }

              else
              {
                v117 = 0;
              }

              if (v83)
              {
                if ((_CPLSilentLogging & 1) == 0)
                {
                  v119 = __CPLStorageOSLogDomain_17824();
                  if (os_log_type_enabled(v119, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v236 = v18;
                    _os_log_impl(&dword_1DC05A000, v119, OS_LOG_TYPE_DEBUG, "%@ is already known to the cache. Ignoring", buf, 0xCu);
                  }
                }

                v33 = 0;
                if (!v187)
                {
LABEL_215:

                  v38 = 0;
                  goto LABEL_239;
                }
              }

              else
              {

                if (!v187)
                {
                  v38 = 0;
                  goto LABEL_208;
                }
              }

LABEL_63:
              v61 = [v18 scopedIdentifier];
              v198 = 0;
              v62 = [v187 addDeleteEventForRecordWithLocalScopedIdentifier:v61 direction:1 error:&v198];
              v63 = v198;

              if ((v62 & 1) == 0)
              {
                v89 = v224[5];
                v224[5] = 0;

                v59 = v230[5];
                v230[5] = v63;
                goto LABEL_107;
              }

              if (!v33)
              {
                goto LABEL_239;
              }

LABEL_121:
              v77 = v33;
LABEL_181:
              v112 = [(CPLRecordChangeDiffTracker *)v38 recordChangeData];
              [v77 setRecordChangeData:v112];

              v113 = [(CPLRecordChangeDiffTracker *)v38 sharingRecordChangeData];
              [v77 setSharingRecordChangeData:v113];

              [v77 setServerRecordIsCorrupted:[(CPLRecordChangeDiffTracker *)v38 serverRecordIsCorrupted]];
              [v77 restoreRelationshipsFromFullRecord:v38];
              goto LABEL_210;
            }

            if (((v38 != 0) & v28) == 1)
            {
              v200 = 0;
              v64 = [v176 localScopedIdentifierForCloudScopedIdentifier:v182 isFinal:&v200];
              if (v64 && ([v168 hasRecordWithScopedIdentifier:v64] & 1) == 0 && (objc_msgSend(v162, "hasSomeChangeWithScopedIdentifier:", v182) & 1) == 0)
              {
                if ((_CPLSilentLogging & 1) == 0)
                {
                  v65 = __CPLStorageOSLogDomain_17824();
                  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v236 = v18;
                    _os_log_impl(&dword_1DC05A000, v65, OS_LOG_TYPE_DEFAULT, "%@ is already known to the cloud cache but not from the client cache. Forcing change to client cache", buf, 0xCu);
                  }
                }

                v38 = 0;
              }
            }

            if (v38)
            {
              if (v187)
              {
                goto LABEL_97;
              }

              v170 = [v33 relatedScopedIdentifier];
              if (!v170)
              {
                goto LABEL_88;
              }

              if ([v167 containsObject:v170])
              {
                goto LABEL_88;
              }

              v66 = [(CPLEngineStorage *)v177 platformObject];
              v67 = [v66 hasRecordWithScopedIdentifier:v170];

              if (v67)
              {
                goto LABEL_88;
              }

              if ([v33 relatedRelationshipIsWeak])
              {
                if ((_CPLSilentLogging & 1) == 0)
                {
                  v68 = __CPLStorageOSLogDomain_17824();
                  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v236 = v33;
                    v237 = 2112;
                    v238 = v170;
                    _os_log_impl(&dword_1DC05A000, v68, OS_LOG_TYPE_DEFAULT, "%@ is referencing a related record %@ which is unknown to the cache", buf, 0x16u);
                  }
                }

LABEL_88:
                v69 = [v33 secondaryScopedIdentifier];
                if (v69)
                {
                  if (([v167 containsObject:v69] & 1) == 0)
                  {
                    v70 = [(CPLEngineStorage *)v177 platformObject];
                    v71 = [v70 hasRecordWithScopedIdentifier:v69];

                    if ((v71 & 1) == 0)
                    {
                      if ([v33 secondaryRelationshipIsWeak])
                      {
                        if ((_CPLSilentLogging & 1) == 0)
                        {
                          v72 = __CPLStorageOSLogDomain_17824();
                          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138412546;
                            v236 = v33;
                            v237 = 2112;
                            v238 = v69;
                            _os_log_impl(&dword_1DC05A000, v72, OS_LOG_TYPE_DEFAULT, "%@ is referencing a secondary record %@ which is unknown to the cache", buf, 0x16u);
                          }
                        }

                        goto LABEL_96;
                      }

                      if ((_CPLSilentLogging & 1) == 0)
                      {
                        v123 = __CPLStorageOSLogDomain_17824();
                        if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138412546;
                          v236 = v33;
                          v237 = 2112;
                          v238 = v69;
                          _os_log_impl(&dword_1DC05A000, v123, OS_LOG_TYPE_ERROR, "%@ is referencing a secondary record %@ which is unknown to the cache", buf, 0x16u);
                        }
                      }

LABEL_224:

                      goto LABEL_225;
                    }
                  }
                }

LABEL_96:

LABEL_97:
                v73 = [v18 _shouldNotTrustCloudCache];
                v74 = v73;
                if (v187)
                {
                  v75 = 1;
                }

                else
                {
                  v75 = v73;
                }

                if (v75)
                {
                  v76 = v33;
                  v77 = v76;
                  if ((v74 & 1) == 0)
                  {
                    if (v187 && [v76 hasChangeType:2])
                    {
                      v171 = [[CPLRecordChangeDiffTracker alloc] initWithTrackingChangeTypeMask:2];
                      v78 = 1;
                      goto LABEL_158;
                    }

                    goto LABEL_157;
                  }

LABEL_125:
                  v171 = 0;
                  v164 = 0;
                  goto LABEL_161;
                }

                buf[0] = 0;
                v86 = [v176 localScopedIdentifierForCloudScopedIdentifier:v182 isFinal:buf];
                if (!v86)
                {
                  v102 = v33;
                  goto LABEL_157;
                }

                v87 = [v165 isRecordWithScopedIdentifierQuarantined:v86];

                v88 = v33;
                if (v87)
                {
                  v77 = v88;
                  goto LABEL_125;
                }

LABEL_157:
                v171 = objc_alloc_init(CPLRecordChangeDiffTracker);
                v78 = 0;
LABEL_158:
                v197 = 0;
                v77 = [(CPLRecordChangeDiffTracker *)v38 realRecordChangeFromRecordChange:v33 direction:v173 newRecord:&v197 diffTracker:v171];
                v164 = v197;

                if (v78)
                {
                  [v77 attachDiffTracker:v171];
                }

                if (v77)
                {
LABEL_161:
                  v103 = [v77 recordModificationDate];
                  if (v103)
                  {
                    goto LABEL_164;
                  }

                  v104 = [v33 recordModificationDate];
                  v105 = v104 == 0;

                  if (!v105)
                  {
                    v103 = [v33 recordModificationDate];
                    [v77 setRecordModificationDate:v103];
LABEL_164:
                  }

                  if ((_CPLSilentLogging & 1) == 0)
                  {
                    v106 = __CPLStorageOSLogDomain_17824();
                    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
                    {
                      v158 = v106;
                      v159 = objc_opt_class();
                      v160 = [v33 scopedIdentifier];
                      v107 = [v33 cplFullDescription];
                      v108 = [v38 cplFullDescription];
                      *buf = 138413314;
                      v236 = v159;
                      v237 = 2112;
                      v238 = v160;
                      v239 = 2112;
                      v240 = v171;
                      v241 = 2112;
                      v242 = v107;
                      v243 = 2112;
                      v244 = v108;
                      _os_log_impl(&dword_1DC05A000, v158, OS_LOG_TYPE_DEBUG, "<%@ %@> is a real diff for cloud cache (%@): %@\nvs.:\n%@", buf, 0x34u);

                      v109 = 1;
                      v106 = v158;
                    }

                    else
                    {
                      v109 = 1;
                    }

                    goto LABEL_173;
                  }

                  v109 = 1;
                }

                else if (_CPLSilentLogging)
                {
                  v109 = 0;
                  v77 = 0;
                }

                else
                {
                  v106 = __CPLStorageOSLogDomain_17824();
                  if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v236 = v18;
                    _os_log_impl(&dword_1DC05A000, v106, OS_LOG_TYPE_DEBUG, "%@ is already known to the cache. Ignoring", buf, 0xCu);
                  }

                  v109 = 0;
                  v77 = 0;
LABEL_173:
                }

                if (v187 && [v33 supportsResources]&& (v109 & [v33 hasChangeType:8]) == 1 && [v77 hasChangeType:8])
                {
                  v110 = v224[5];
                  v111 = [v18 resources];
                  [v110 appendLocalResources:v111 forItemWithCloudScopedIdentifier:v182];
                }

                if (v77)
                {
                  if (!v187)
                  {
                    goto LABEL_209;
                  }

                  goto LABEL_181;
                }

                if (v187)
                {
LABEL_239:
                  v77 = 0;
                  v122 = 1;
                  goto LABEL_240;
                }
              }

              else
              {
                if ((_CPLSilentLogging & 1) == 0)
                {
                  v69 = __CPLStorageOSLogDomain_17824();
                  if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v236 = v33;
                    v237 = 2112;
                    v238 = v170;
                    _os_log_impl(&dword_1DC05A000, v69, OS_LOG_TYPE_ERROR, "%@ is referencing a related record %@ which is unknown to the cache", buf, 0x16u);
                  }

                  goto LABEL_224;
                }

LABEL_225:
              }

              v124 = [(CPLRecordChangeDiffTracker *)v38 recordChangeData];
              v125 = [v18 recordChangeData];
              v126 = v125;
              if (v124 && v125)
              {
                v127 = [v124 isEqual:v125];

                if (v127)
                {
                  goto LABEL_232;
                }

LABEL_231:
                v129 = [v18 recordChangeData];
                [(CPLRecordChangeDiffTracker *)v38 setRecordChangeData:v129];

                [(CPLRecordChangeDiffTracker *)v38 setServerRecordIsCorrupted:[v18 serverRecordIsCorrupted]];
              }

              else
              {
                v128 = (v124 | v125) != 0;

                if (v128)
                {
                  goto LABEL_231;
                }
              }

LABEL_232:
              v130 = [(CPLRecordChangeDiffTracker *)v38 sharingRecordChangeData];
              v131 = [v18 sharingRecordChangeData];
              v132 = v131;
              if (v130 && v131)
              {
                v133 = [v130 isEqual:v131];

                if (v133)
                {
LABEL_238:
                  v136 = (v230 + 5);
                  v196 = v230[5];
                  v137 = [(CPLEngineCloudCache *)v177 updateStagedRecord:v38 error:&v196];
                  objc_storeStrong(v136, v196);
                  if (v137)
                  {
                    goto LABEL_239;
                  }

                  v33 = 0;
LABEL_67:
                  v59 = v224[5];
                  v224[5] = 0;
                  goto LABEL_107;
                }
              }

              else
              {
                v134 = (v130 | v131) != 0;

                if (!v134)
                {
                  goto LABEL_238;
                }
              }

              v135 = [v18 sharingRecordChangeData];
              [(CPLRecordChangeDiffTracker *)v38 setSharingRecordChangeData:v135];

              [(CPLRecordChangeDiffTracker *)v38 setServerRecordIsCorrupted:[v18 serverRecordIsCorrupted]];
              goto LABEL_238;
            }

            if (v187)
            {
              if (([v33 isFullRecord]& 1) != 0)
              {
                if ([v33 supportsResources])
                {
                  v84 = v224[5];
                  v85 = [v18 resources];
                  [v84 appendLocalResources:v85 forItemWithCloudScopedIdentifier:v182];
                }

                v38 = 0;
                goto LABEL_121;
              }

              if ((_CPLSilentLogging & 1) == 0)
              {
                v98 = __CPLStorageOSLogDomain_17824();
                if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v236 = v18;
                  _os_log_impl(&dword_1DC05A000, v98, OS_LOG_TYPE_ERROR, "Got a partial record %@ from the client which is new to the cache", buf, 0xCu);
                }
              }

              v59 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Partial %@ from client but new to the cache", objc_opt_class()];
              v99 = [CPLErrors invalidClientCacheErrorWithReason:v59];
              v100 = v230[5];
              v230[5] = v99;

              v101 = v224[5];
              v224[5] = 0;

              v38 = 0;
LABEL_107:
              v39 = 2;
LABEL_269:

LABEL_270:
              goto LABEL_271;
            }

            if (([v33 isFullRecord]& 1) != 0)
            {
              v90 = [v33 relatedScopedIdentifier];
              if (!v90)
              {
                goto LABEL_140;
              }

              if ([v167 containsObject:v90])
              {
                goto LABEL_140;
              }

              v91 = [(CPLEngineStorage *)v177 platformObject];
              v92 = [v91 hasRecordWithScopedIdentifier:v90];

              if (v92)
              {
                goto LABEL_140;
              }

              if ([v18 relatedRelationshipIsWeak])
              {
                if ((_CPLSilentLogging & 1) == 0)
                {
                  v93 = __CPLStorageOSLogDomain_17824();
                  if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v236 = v18;
                    v237 = 2112;
                    v238 = v90;
                    _os_log_impl(&dword_1DC05A000, v93, OS_LOG_TYPE_DEFAULT, "%@ is referencing a related record %@ which is unknown to the cache", buf, 0x16u);
                  }
                }

LABEL_140:
                v94 = [v33 secondaryScopedIdentifier];
                if (!v94 || ([v167 containsObject:v94] & 1) != 0 || (-[CPLEngineStorage platformObject](v177, "platformObject"), v95 = objc_claimAutoreleasedReturnValue(), v96 = objc_msgSend(v95, "hasRecordWithScopedIdentifier:", v94), v95, (v96 & 1) != 0))
                {
LABEL_148:

                  [v167 addObject:v182];
                  v38 = 0;
                  goto LABEL_208;
                }

                if ([v33 secondaryRelationshipIsWeak])
                {
                  if ((_CPLSilentLogging & 1) == 0)
                  {
                    v97 = __CPLStorageOSLogDomain_17824();
                    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      v236 = v33;
                      v237 = 2112;
                      v238 = v94;
                      _os_log_impl(&dword_1DC05A000, v97, OS_LOG_TYPE_DEFAULT, "%@ is referencing a secondary record %@ which is unknown to the cache", buf, 0x16u);
                    }
                  }

                  goto LABEL_148;
                }

                if ((_CPLSilentLogging & 1) == 0)
                {
                  v149 = __CPLStorageOSLogDomain_17824();
                  if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v236 = v33;
                    v237 = 2112;
                    v238 = v94;
                    _os_log_impl(&dword_1DC05A000, v149, OS_LOG_TYPE_ERROR, "%@ is referencing a secondary record %@ which is unknown to the cache", buf, 0x16u);
                  }
                }

LABEL_281:
              }

              else if ((_CPLSilentLogging & 1) == 0)
              {
                v94 = __CPLStorageOSLogDomain_17824();
                if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v236 = v18;
                  v237 = 2112;
                  v238 = v90;
                  _os_log_impl(&dword_1DC05A000, v94, OS_LOG_TYPE_ERROR, "%@ is referencing a related record %@ which is unknown to the cache", buf, 0x16u);
                }

                goto LABEL_281;
              }
            }

            else
            {
              if (_CPLSilentLogging)
              {
                goto LABEL_215;
              }

              v90 = __CPLStorageOSLogDomain_17824();
              if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v236 = v18;
                _os_log_impl(&dword_1DC05A000, v90, OS_LOG_TYPE_ERROR, "Got a partial record %@ from the cloud which is new to the cache", buf, 0xCu);
              }
            }

            goto LABEL_215;
          }
        }

        v25 = [v178 scopeWithIdentifier:v22];
        if (v25)
        {
          v26 = v22;

          objc_storeStrong(v218 + 5, v25);
          v15 = v26;
          goto LABEL_21;
        }

        v48 = [CPLErrors invalidScopeErrorWithScopedIdentifier:v19];
        v49 = v230[5];
        v230[5] = v48;

        v38 = v224[5];
        v224[5] = 0;
        v39 = 2;
LABEL_272:

        objc_autoreleasePoolPop(context);
        if (v39 != 3 && v39)
        {
          goto LABEL_291;
        }

        ++v17;
      }

      while (v184 != v17);
      v14 = [obj countByEnumeratingWithState:&v204 objects:v245 count:16];
    }

    while (v14);
  }

LABEL_291:

  v150 = v224[5];
  if (a6 && !v150)
  {
    *a6 = v230[5];
    v150 = v224[5];
  }

  v151 = v150;

  _Block_object_dispose(v213, 8);
  _Block_object_dispose(v215, 8);

  _Block_object_dispose(&v217, 8);
  _Block_object_dispose(&v223, 8);

  _Block_object_dispose(&v229, 8);
  v152 = *MEMORY[0x1E69E9840];

  return v151;
}

uint64_t __80__CPLEngineCloudCache_cloudChangeBatchFromBatch_usingMapping_isFinal_withError___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      v2 = a1 + 56;
    }

    else
    {
      v4 = [*(a1 + 32) hasFinishedAFullSyncForScope:?];
      v5 = *(a1 + 56);
      v2 = a1 + 56;
      *(*(v5 + 8) + 24) = v4;
      *(*(*(v2 - 8) + 8) + 24) = 1;
    }

    v3 = *(*(*v2 + 8) + 24);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t __80__CPLEngineCloudCache_cloudChangeBatchFromBatch_usingMapping_isFinal_withError___block_invoke_35(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (*(a1 + 72))
    {
      v3 = 0;
LABEL_11:
      v6 = 1;
      goto LABEL_12;
    }

    v15 = 0;
    v10 = [*(a1 + 40) scopedIdentifier];
    v11 = [v2 localScopedIdentifierForCloudScopedIdentifier:v10 isFinal:&v15];

    if (v11)
    {
      v12 = *(a1 + 40);
      v3 = [objc_opt_class() newRecordWithScopedIdentifier:v11];
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = *(a1 + 40);
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  v4 = *(a1 + 48);
  v5 = *(*(a1 + 56) + 8);
  obj = *(v5 + 40);
  v6 = 1;
  v7 = [v4 notifyStatusForRecordHasChanged:v3 persist:1 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if ((v7 & 1) == 0)
  {
    v8 = *(*(a1 + 64) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;

    v6 = 0;
  }

LABEL_12:

  return v6;
}

- (BOOL)updateStagedRecord:(id)a3 error:(id *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v8 = __CPLStorageOSLogDomain_17824();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v16 = 138412290;
      v17 = v7;
      _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEBUG, "Updating %@", &v16, 0xCu);
    }
  }

  if (([v7 isFullRecord] & 1) == 0 && (_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLStorageOSLogDomain_17824();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412290;
      v17 = v7;
      _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "Updating a non full record: %@", &v16, 0xCu);
    }
  }

  if ([v7 validateFullRecord])
  {
    v10 = [(CPLEngineStorage *)self platformObject];
    v11 = [v10 updateStagedRecord:v7 error:a4];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = __CPLStorageOSLogDomain_17824();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromSelector(a2);
        v16 = 138412546;
        v17 = v13;
        v18 = 2112;
        v19 = v7;
        _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, "%@: invalid record %@", &v16, 0x16u);
      }
    }

    if (a4)
    {
      [(CPLEngineCloudCache *)self _invalidCloudCacheErrorWithInvalidRecord:v7 method:@"update staged"];
      *a4 = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)_invalidCloudCacheErrorWithInvalidRecord:(id)a3 method:(id)a4
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 alloc];
  v9 = objc_opt_class();

  v10 = [v8 initWithFormat:@"Trying to %@ an invalid %@", v6, v9];
  v11 = [CPLErrors invalidCloudCacheErrorWithReason:v10];

  return v11;
}

- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 error:(id *)a6
{
  v11 = [(CPLEngineStorage *)self platformObject];
  v12 = [v11 deleteRecordsForScopeIndex:a3 maxCount:a4 deletedCount:a5 error:a6];

  if (!v12)
  {
    return 0;
  }

  if (*a5)
  {
    return 1;
  }

  v14 = [(CPLEngineStorage *)self platformObject];
  v20 = 0;
  v15 = [v14 popCloudScopedIdentifiersToCheck:&v20 otherScopeIndex:a3 maxCount:a4 deletedCount:a5 error:a6];
  v16 = v20;

  if (v15)
  {
    if ([v16 count])
    {
      v17 = [(CPLEngineStorage *)self engineStore];
      v18 = [v17 pendingRecordChecks];

      v13 = [v18 enqueueCloudScopedIdentifiersToCheck:v16 error:a6];
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end
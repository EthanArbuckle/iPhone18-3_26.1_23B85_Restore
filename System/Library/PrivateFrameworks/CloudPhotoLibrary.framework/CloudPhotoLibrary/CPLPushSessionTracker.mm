@interface CPLPushSessionTracker
+ (BOOL)notifyClientOfStore:(id)store ofStatusChanges:(id)changes error:(id *)error;
- (BOOL)checkScopeIdentifier:(id)identifier;
- (BOOL)cleanupWithError:(id *)error;
- (BOOL)computeDiff;
- (BOOL)computeExpandedBatchWithError:(id *)error;
- (BOOL)hasClientRecordWithLocalScopedIdentifier:(id)identifier;
- (BOOL)hasCloudRecordWithLocalScopedIdentifier:(id)identifier;
- (BOOL)knowsClientRecordWithScopedIdentifier:(id)identifier;
- (BOOL)notifyClientOfStatusChangesIfNecessaryWithError:(id *)error;
- (BOOL)shouldCancelSyncSessionTryingToUploadChange:(id)change;
- (CPLPushSessionTracker)initWithIncomingBatch:(id)batch store:(id)store error:(id *)error;
- (id)_realChangeFromChange:(id)change comparedToStoredRecord:(id)record changeType:(unint64_t)type;
- (id)_resourceIdentitiesFromChange:(id)change;
- (id)deletedRecordIdentifiers;
- (id)enqueuedOrStoredRecordWithLocalScopedIdentifier:(id)identifier;
- (id)resourceIdentitiesForRecordWithLocalScopedIdentifier:(id)identifier;
- (id)storedClientRecordWithLocalScopedIdentifier:(id)identifier;
- (id)storedCloudRecordWithLocalScopedIdentifier:(id)identifier;
- (uint64_t)_checkFingerPrint:(void *)print ofResource:(void *)resource inChange:(void *)change localScopedIdentifier:(void *)identifier fingerprintContext:(void *)context fingerprintScheme:;
- (void)acknowledgeNewClientRecord:(id)record withScopedIdentifier:(id)identifier;
- (void)enumerateDiffWithBlock:(id)block;
@end

@implementation CPLPushSessionTracker

- (BOOL)shouldCancelSyncSessionTryingToUploadChange:(id)change
{
  changeCopy = change;
  scopedIdentifier = [changeCopy scopedIdentifier];
  if (-[NSMutableArray containsObject:](self->_changesWithResourceChanges, "containsObject:", scopedIdentifier) && [changeCopy supportsResources] && objc_msgSend(changeCopy, "hasChangeType:", 8))
  {
    resources = [changeCopy resources];
    v7 = [resources count] != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)notifyClientOfStatusChangesIfNecessaryWithError:(id *)error
{
  if ([(CPLChangeBatch *)self->_diffedBatch count]|| !self->_recordWithStatusChangesToNotify)
  {
    return 1;
  }

  v6 = objc_opt_class();
  store = self->_store;
  recordWithStatusChangesToNotify = self->_recordWithStatusChangesToNotify;

  return [v6 notifyClientOfStore:store ofStatusChanges:recordWithStatusChangesToNotify error:error];
}

- (id)deletedRecordIdentifiers
{
  deletedRecordScopedIdentifiers = [(CPLPushSessionTracker *)self deletedRecordScopedIdentifiers];
  v3 = [CPLScopedIdentifier unscopedIdentifiersFromArrayOfScopedIdentifiers:deletedRecordScopedIdentifiers];

  return v3;
}

- (void)enumerateDiffWithBlock:(id)block
{
  v28 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = self->_diffedBatch;
  v5 = [(CPLChangeBatch *)obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v21 = *v24;
    v7 = blockCopy + 16;
    v19 = blockCopy;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v24 != v21)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v23 + 1) + 8 * v8);
      v22 = 0;
      scopedIdentifier = [v9 scopedIdentifier];
      v11 = [(NSMutableDictionary *)self->_fullRecords objectForKeyedSubscript:scopedIdentifier];
      v12 = v9;
      if (([v12 hasChangeType:2] & 1) == 0)
      {
        v13 = v7;
        relatedIdentifier = [v11 relatedIdentifier];
        secondaryIdentifier = [v11 secondaryIdentifier];
        if (relatedIdentifier | secondaryIdentifier)
        {
          v16 = [v12 copy];

          [v16 setRelatedIdentifier:relatedIdentifier];
          [v16 setSecondaryIdentifier:secondaryIdentifier];
          v12 = v16;
          blockCopy = v19;
        }

        v7 = v13;
      }

      v17 = [(NSMutableDictionary *)self->_resourcesToUpload objectForKeyedSubscript:scopedIdentifier];
      (*(blockCopy + 2))(blockCopy, v12, v17, &v22);

      LOBYTE(v17) = v22;
      if (v17)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(CPLChangeBatch *)obj countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (BOOL)cleanupWithError:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_changesWithMissingIDMapping count])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v5 = self->_changesWithMissingIDMapping;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v6)
    {
      v7 = v6;
      errorCopy = error;
      v8 = 0;
      v9 = *v27;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v26 + 1) + 8 * i);
          scopedIdentifier = [v11 scopedIdentifier];
          v25 = 0;
          v13 = [(CPLEngineIDMapping *)self->_realIDMapping cloudScopedIdentifierForLocalScopedIdentifier:scopedIdentifier isFinal:&v25];
          if (v13)
          {
          }

          else
          {
            if ((_CPLSilentLogging & 1) == 0)
            {
              v14 = __CPLSessionOSLogDomain_16325();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v31 = v11;
                _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_DEFAULT, "Fixing missing entry in ID mapping for %@", buf, 0xCu);
              }
            }

            proposedCloudScopedIdentifier = [v11 proposedCloudScopedIdentifier];
            realIDMapping = self->_realIDMapping;
            v24 = v8;
            v17 = [(CPLEngineIDMapping *)realIDMapping setupCloudScopedIdentifier:proposedCloudScopedIdentifier forLocalScopedIdentifier:scopedIdentifier isFinal:0 direction:0 error:&v24];
            v18 = v24;

            if (!v17)
            {

              if (errorCopy)
              {
                v20 = v18;
                v19 = 0;
                *errorCopy = v18;
              }

              else
              {
                v19 = 0;
              }

              goto LABEL_24;
            }

            v8 = v18;
          }
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v26 objects:v32 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v8 = 0;
    }

    v19 = 1;
    v18 = v8;
  }

  else
  {
    v18 = 0;
    v19 = 1;
  }

LABEL_24:

  v21 = *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)computeDiff
{
  v175 = *MEMORY[0x1E69E9840];
  if (!self->_expandHasBeenSuccessful)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v103 = __CPLSessionOSLogDomain_16325();
      if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
      {
        v104 = NSStringFromSelector(a2);
        LODWORD(v171) = 138412290;
        *(&v171 + 4) = v104;
        _os_log_impl(&dword_1DC05A000, v103, OS_LOG_TYPE_ERROR, "%@ called before expansion", &v171, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v106 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLPushSessionTracker.m"];
    v107 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:v106 lineNumber:917 description:{@"%@ called before expansion", v107}];

LABEL_131:
    abort();
  }

  if (self->_diffHasBeenSuccessful)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v108 = __CPLSessionOSLogDomain_16325();
      if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
      {
        v109 = NSStringFromSelector(a2);
        LODWORD(v171) = 138412290;
        *(&v171 + 4) = v109;
        _os_log_impl(&dword_1DC05A000, v108, OS_LOG_TYPE_ERROR, "%@ called twice", &v171, 0xCu);
      }
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v111 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLPushSessionTracker.m"];
    v112 = NSStringFromSelector(a2);
    [currentHandler2 handleFailureInMethod:a2 object:self file:v111 lineNumber:918 description:{@"%@ called twice", v112}];

    goto LABEL_131;
  }

  v3 = objc_alloc_init(CPLChangeBatch);
  diffedBatch = self->_diffedBatch;
  self->_diffedBatch = v3;

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  addedRecords = self->_addedRecords;
  self->_addedRecords = v5;

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  updatedRecords = self->_updatedRecords;
  self->_updatedRecords = v7;

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  deletedRecordScopedIdentifiers = self->_deletedRecordScopedIdentifiers;
  self->_deletedRecordScopedIdentifiers = v9;

  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  fullRecords = self->_fullRecords;
  self->_fullRecords = v11;

  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  resourcesToUpload = self->_resourcesToUpload;
  self->_resourcesToUpload = v13;

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  changesWithResourceChanges = self->_changesWithResourceChanges;
  self->_changesWithResourceChanges = v15;

  v117 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v160[0] = MEMORY[0x1E69E9820];
  v160[1] = 3221225472;
  v160[2] = __36__CPLPushSessionTracker_computeDiff__block_invoke;
  v160[3] = &unk_1E861E2C0;
  v115 = v17;
  v161 = v115;
  selfCopy = self;
  selfCopy2 = self;
  v18 = MEMORY[0x1E128EBA0](v160);
  v159[0] = MEMORY[0x1E69E9820];
  v159[1] = 3221225472;
  v159[2] = __36__CPLPushSessionTracker_computeDiff__block_invoke_2;
  v159[3] = &unk_1E861E2E8;
  v159[4] = self;
  v19 = MEMORY[0x1E128EBA0](v159);
  v156[0] = MEMORY[0x1E69E9820];
  v156[1] = 3221225472;
  v156[2] = __36__CPLPushSessionTracker_computeDiff__block_invoke_44;
  v156[3] = &unk_1E861E310;
  v114 = v18;
  v157 = v114;
  v156[4] = self;
  v120 = v19;
  v158 = v120;
  v121 = MEMORY[0x1E128EBA0](v156);
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  obj = self->_expandedBatch;
  v122 = [(CPLChangeBatch *)obj countByEnumeratingWithState:&v152 objects:v174 count:16];
  if (v122)
  {
    v119 = *v153;
    do
    {
      v20 = 0;
      do
      {
        if (*v153 != v119)
        {
          v21 = v20;
          objc_enumerationMutation(obj);
          v20 = v21;
        }

        v123 = v20;
        v22 = *(*(&v152 + 1) + 8 * v20);
        scopedIdentifier = [v22 scopedIdentifier];
        if (!scopedIdentifier)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v94 = __CPLSessionOSLogDomain_16325();
            if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
            {
              LODWORD(v171) = 138412290;
              *(&v171 + 4) = v22;
              _os_log_impl(&dword_1DC05A000, v94, OS_LOG_TYPE_ERROR, "%@ should have an identifier", &v171, 0xCu);
            }
          }

          currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
          v96 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLPushSessionTracker.m"];
          [currentHandler3 handleFailureInMethod:a2 object:selfCopy file:v96 lineNumber:974 description:{@"%@ should have an identifier", v22}];

          goto LABEL_131;
        }

        if ([v22 isFullRecord])
        {
          [(CPLPushSessionTracker *)selfCopy acknowledgeNewClientRecord:v22 withScopedIdentifier:scopedIdentifier];
        }

        *&v171 = 0;
        *(&v171 + 1) = &v171;
        v172 = 0x2020000000;
        if ([v22 supportsResources] && objc_msgSend(v22, "hasChangeType:", 8))
        {
          resources = [v22 resources];
          v25 = [resources count] != 0;
        }

        else
        {
          v25 = 0;
        }

        v173 = v25;
        v148[0] = MEMORY[0x1E69E9820];
        v148[1] = 3221225472;
        v148[2] = __36__CPLPushSessionTracker_computeDiff__block_invoke_49;
        v148[3] = &unk_1E861E338;
        v151 = &v171;
        v148[4] = selfCopy;
        v26 = scopedIdentifier;
        v149 = v26;
        v150 = v121;
        v125 = MEMORY[0x1E128EBA0](v148);
        v144[0] = MEMORY[0x1E69E9820];
        v144[1] = 3221225472;
        v144[2] = __36__CPLPushSessionTracker_computeDiff__block_invoke_2_50;
        v144[3] = &unk_1E861E338;
        v147 = &v171;
        v144[4] = selfCopy;
        v27 = v26;
        v145 = v27;
        v146 = v120;
        v124 = MEMORY[0x1E128EBA0](v144);
        if ([v22 isMasterChange])
        {
          [v117 setObject:&unk_1F57EF698 forKeyedSubscript:v27];
        }

        v28 = [(CPLPushSessionTracker *)selfCopy storedClientRecordWithLocalScopedIdentifier:v27];
        if (v28)
        {
          if ([v22 isDelete])
          {
            if ((_CPLSilentLogging & 1) == 0)
            {
              v29 = __CPLSessionOSLogDomain_16325();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
              {
                v30 = objc_opt_class();
                scopedIdentifier2 = [v22 scopedIdentifier];
                *buf = 138412546;
                v165 = v30;
                v166 = 2112;
                v167 = scopedIdentifier2;
                _os_log_impl(&dword_1DC05A000, v29, OS_LOG_TYPE_DEBUG, "-- adding real change delete <%@ %@> to batch", buf, 0x16u);
              }
            }

            [(NSMutableArray *)selfCopy->_deletedRecordScopedIdentifiers addObject:v27];
            if (selfCopy->_diffedBatchCanLowerQuota)
            {
              canLowerQuota = 1;
            }

            else
            {
              canLowerQuota = [v22 canLowerQuota];
            }

            selfCopy->_diffedBatchCanLowerQuota = canLowerQuota;
            relatedIdentifier = [v28 relatedIdentifier];
            secondaryIdentifier = [v28 secondaryIdentifier];
            if (relatedIdentifier | secondaryIdentifier)
            {
              v33 = [v22 copy];
              [v33 setRelatedIdentifier:relatedIdentifier];
              [v33 setSecondaryIdentifier:secondaryIdentifier];
            }

            else
            {
              v33 = v22;
            }

            (v125)[2](v125, v33, v28);
            [(NSMutableDictionary *)selfCopy->_fullRecords setObject:v28 forKeyedSubscript:v27];
            if ([v22 isAssetChange])
            {
              masterScopedIdentifier = [v28 masterScopedIdentifier];
              if (masterScopedIdentifier)
              {
                v65 = [v117 objectForKeyedSubscript:masterScopedIdentifier];
                integerValue = [v65 integerValue];

                if (integerValue != 0x8000000000000000)
                {
                  v67 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue + 1];
                  [v117 setObject:v67 forKeyedSubscript:masterScopedIdentifier];
                }
              }
            }

            if ([v28 supportsResources])
            {
              [(NSMutableArray *)selfCopy->_changesWithResourceChanges addObject:v27];
            }
          }

          else
          {
            v36 = v22;
            v37 = v36;
            if ([v36 isFullRecord])
            {
              v38 = [objc_opt_class() copyPropertyBlockForDirection:1];
              v37 = v36;
              if (v38)
              {
                v39 = [objc_opt_class() newRecordWithScopedIdentifier:v27];

                v135[0] = MEMORY[0x1E69E9820];
                v135[1] = 3221225472;
                v135[2] = __36__CPLPushSessionTracker_computeDiff__block_invoke_55;
                v135[3] = &unk_1E861E360;
                v139 = v38;
                v37 = v39;
                v136 = v37;
                v137 = v36;
                v138 = v28;
                [v37 cplCopyPropertiesFromObject:v36 withCopyBlock:v135];
              }
            }

            if ([v37 supportsResources] && objc_msgSend(v37, "hasChangeType:", 8) && (objc_msgSend(v36, "resources"), v40 = objc_claimAutoreleasedReturnValue(), v118 = objc_msgSend(v40, "cplDeepCopy"), v40, v118))
            {
              if (v37 == v36)
              {
                v41 = [v37 copy];

                v37 = v41;
              }

              v133 = 0u;
              v134 = 0u;
              v131 = 0u;
              v132 = 0u;
              resources2 = [v37 resources];
              v43 = [resources2 countByEnumeratingWithState:&v131 objects:v163 count:16];
              if (v43)
              {
                v44 = *v132;
                do
                {
                  for (i = 0; i != v43; ++i)
                  {
                    if (*v132 != v44)
                    {
                      objc_enumerationMutation(resources2);
                    }

                    identity = [*(*(&v131 + 1) + 8 * i) identity];
                    [identity setAvailable:1];
                    [identity setFileURL:0];
                  }

                  v43 = [resources2 countByEnumeratingWithState:&v131 objects:v163 count:16];
                }

                while (v43);
              }
            }

            else
            {
              v118 = 0;
            }

            v47 = objc_alloc_init(CPLRecordChangeDiffTracker);
            v130 = 0;
            v33 = [v28 realRecordChangeFromRecordChange:v37 direction:1 newRecord:&v130 diffTracker:v47];
            v48 = v130;

            if ([(NSMutableSet *)selfCopy->_unquarantinedRecordScopedIdentifiers containsObject:v27])
            {
              if (v33)
              {
                v49 = v48;
                v48 = v33;
              }

              else
              {
                v49 = v28;
              }

              v33 = v49;

              [(CPLRecordChangeDiffTracker *)v47 withTrackerForChangeType:2 block:&__block_literal_global_61];
              v48 = v33;
            }

            if (v33)
            {
              if (!v48)
              {
                if ((_CPLSilentLogging & 1) == 0)
                {
                  v97 = __CPLSessionOSLogDomain_16325();
                  if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v165 = v36;
                    _os_log_impl(&dword_1DC05A000, v97, OS_LOG_TYPE_ERROR, "With a real change should come an updated record for %@", buf, 0xCu);
                  }
                }

                currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
                v99 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLPushSessionTracker.m"];
                [currentHandler4 handleFailureInMethod:a2 object:selfCopy file:v99 lineNumber:1173 description:{@"With a real change should come an updated record for %@", v36}];

                goto LABEL_131;
              }

              recordModificationDate = [v33 recordModificationDate];
              v72 = recordModificationDate == 0;

              if (v72)
              {
                recordModificationDate2 = [v36 recordModificationDate];
                [v33 setRecordModificationDate:recordModificationDate2];
              }

              if ((_CPLSilentLogging & 1) == 0)
              {
                v74 = __CPLSessionOSLogDomain_16325();
                if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
                {
                  v75 = objc_opt_class();
                  scopedIdentifier3 = [v36 scopedIdentifier];
                  *buf = 138412802;
                  v165 = v75;
                  v166 = 2112;
                  v167 = scopedIdentifier3;
                  v168 = 2112;
                  v169 = v47;
                  _os_log_impl(&dword_1DC05A000, v74, OS_LOG_TYPE_DEFAULT, "-- adding real change <%@ %@> to batch (%@)", buf, 0x20u);
                }
              }

              [(NSMutableArray *)selfCopy->_updatedRecords addObject:v48];
              if (selfCopy->_diffedBatchCanLowerQuota)
              {
                canLowerQuota2 = 1;
              }

              else
              {
                canLowerQuota2 = [v33 canLowerQuota];
              }

              selfCopy->_diffedBatchCanLowerQuota = canLowerQuota2;
              if (([v33 hasChangeType:2]& 1) == 0)
              {
                relatedIdentifier2 = [v28 relatedIdentifier];
                [v33 setRelatedIdentifier:relatedIdentifier2];

                secondaryIdentifier2 = [v28 secondaryIdentifier];
                [v33 setSecondaryIdentifier:secondaryIdentifier2];
              }

              (v125)[2](v125, v33, v28);
              [(NSMutableDictionary *)selfCopy->_fullRecords setObject:v48 forKeyedSubscript:v27];
              if (v118 && [v33 hasChangeType:8])
              {
                [(NSMutableDictionary *)selfCopy->_resourcesToUpload setObject:v118 forKeyedSubscript:v27];
              }

              if ([v33 supportsResources]&& [v33 hasChangeType:8])
              {
                [(NSMutableArray *)selfCopy->_changesWithResourceChanges addObject:v27];
              }
            }

            else
            {
              if ((_CPLSilentLogging & 1) == 0)
              {
                v78 = __CPLSessionOSLogDomain_16325();
                if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
                {
                  v79 = objc_opt_class();
                  scopedIdentifier4 = [v36 scopedIdentifier];
                  cplFullDescription = [v28 cplFullDescription];
                  *buf = 138412802;
                  v165 = v79;
                  v166 = 2112;
                  v167 = scopedIdentifier4;
                  v168 = 2112;
                  v169 = cplFullDescription;
                  _os_log_impl(&dword_1DC05A000, v78, OS_LOG_TYPE_DEBUG, "-- <%@ %@> did not result in a change of the stored record: %@", buf, 0x20u);
                }
              }

              (v124)[2](v124, v36, v28);
            }
          }

LABEL_122:

          goto LABEL_123;
        }

        if (![v22 isDelete])
        {
          if (([v22 isFullRecord] & 1) == 0)
          {
            if ((_CPLSilentLogging & 1) == 0)
            {
              v100 = __CPLSessionOSLogDomain_16325();
              if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v165 = v22;
                _os_log_impl(&dword_1DC05A000, v100, OS_LOG_TYPE_ERROR, "%@ should be a full record as a new record", buf, 0xCu);
              }
            }

            currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
            v102 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLPushSessionTracker.m"];
            [currentHandler5 handleFailureInMethod:a2 object:selfCopy file:v102 lineNumber:1020 description:{@"%@ should be a full record as a new record", v22}];

            goto LABEL_131;
          }

          if ([v22 isAssetChange])
          {
            masterScopedIdentifier2 = [0 masterScopedIdentifier];
            if (masterScopedIdentifier2)
            {
              v51 = [v117 objectForKeyedSubscript:masterScopedIdentifier2];
              integerValue2 = [v51 integerValue];

              if (integerValue2 != 0x8000000000000000)
              {
                v53 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue2 - 1];
                [v117 setObject:v53 forKeyedSubscript:masterScopedIdentifier2];
              }
            }
          }

          v54 = v22;
          if ([v54 supportsResources])
          {
            resources3 = [v54 resources];
            cplDeepCopy = [resources3 cplDeepCopy];

            if (cplDeepCopy)
            {
              [(NSMutableDictionary *)selfCopy->_resourcesToUpload setObject:cplDeepCopy forKeyedSubscript:v27];
              v33 = [v54 copy];

              v142 = 0u;
              v143 = 0u;
              v140 = 0u;
              v141 = 0u;
              resources4 = [v33 resources];
              v58 = [resources4 countByEnumeratingWithState:&v140 objects:v170 count:16];
              if (v58)
              {
                v59 = *v141;
                do
                {
                  for (j = 0; j != v58; ++j)
                  {
                    if (*v141 != v59)
                    {
                      objc_enumerationMutation(resources4);
                    }

                    identity2 = [*(*(&v140 + 1) + 8 * j) identity];
                    [identity2 setAvailable:1];
                    [identity2 setFileURL:0];
                  }

                  v58 = [resources4 countByEnumeratingWithState:&v140 objects:v170 count:16];
                }

                while (v58);
              }
            }

            else
            {
              v33 = v54;
            }
          }

          else
          {
            v33 = v54;
          }

          if ((_CPLSilentLogging & 1) == 0)
          {
            v84 = __CPLSessionOSLogDomain_16325();
            if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
            {
              v85 = objc_opt_class();
              scopedIdentifier5 = [v33 scopedIdentifier];
              cplFullDescription2 = [v33 cplFullDescription];
              *buf = 138412802;
              v165 = v85;
              v166 = 2112;
              v167 = scopedIdentifier5;
              v168 = 2112;
              v169 = cplFullDescription2;
              _os_log_impl(&dword_1DC05A000, v84, OS_LOG_TYPE_DEBUG, "-- adding real change <%@ %@> to batch (new record): %@", buf, 0x20u);
            }
          }

          [(NSMutableArray *)selfCopy->_addedRecords addObject:v33];
          if (selfCopy->_diffedBatchCanLowerQuota)
          {
            canLowerQuota3 = 1;
          }

          else
          {
            canLowerQuota3 = [v33 canLowerQuota];
          }

          selfCopy->_diffedBatchCanLowerQuota = canLowerQuota3;
          (v125)[2](v125, v33, 0);
          [(NSMutableDictionary *)selfCopy->_fullRecords setObject:v33 forKeyedSubscript:v27];
          goto LABEL_122;
        }

        if ([(NSMutableSet *)selfCopy->_unquarantinedRecordScopedIdentifiers containsObject:v27])
        {
          if (_CPLSilentLogging)
          {
            goto LABEL_123;
          }

          v33 = __CPLSessionOSLogDomain_16325();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = objc_opt_class();
            scopedIdentifier6 = [v22 scopedIdentifier];
            *buf = 138412546;
            v165 = v34;
            v166 = 2112;
            v167 = scopedIdentifier6;
            _os_log_impl(&dword_1DC05A000, v33, OS_LOG_TYPE_DEFAULT, "-- <%@ %@> is already missing in cache but forcing delete as it is unquarantining the record", buf, 0x16u);
          }

          goto LABEL_122;
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v68 = __CPLSessionOSLogDomain_16325();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
          {
            v69 = objc_opt_class();
            scopedIdentifier7 = [v22 scopedIdentifier];
            *buf = 138412546;
            v165 = v69;
            v166 = 2112;
            v167 = scopedIdentifier7;
            _os_log_impl(&dword_1DC05A000, v68, OS_LOG_TYPE_DEBUG, "-- <%@ %@> is already missing in cache. Ignoring delete", buf, 0x16u);
          }
        }

        (v124)[2](v124, v22, 0);
LABEL_123:

        _Block_object_dispose(&v171, 8);
        v20 = v123 + 1;
      }

      while (v123 + 1 != v122);
      v122 = [(CPLChangeBatch *)obj countByEnumeratingWithState:&v152 objects:v174 count:16];
    }

    while (v122);
  }

  quarantinedRecords = [(CPLEngineStore *)selfCopy->_store quarantinedRecords];
  v127[0] = MEMORY[0x1E69E9820];
  v127[1] = 3221225472;
  v127[2] = __36__CPLPushSessionTracker_computeDiff__block_invoke_68;
  v127[3] = &unk_1E861E3A8;
  v127[4] = selfCopy;
  v128 = quarantinedRecords;
  v129 = v121;
  v90 = v121;
  v91 = quarantinedRecords;
  [v117 enumerateKeysAndObjectsUsingBlock:v127];
  selfCopy->_diffHasBeenSuccessful = 1;

  v92 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t __36__CPLPushSessionTracker_computeDiff__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 BOOLValue];
  }

  else
  {
    v7 = [*(*(a1 + 40) + 8) scopeWithIdentifier:v3];
    if (v7)
    {
      v6 = [*(*(a1 + 40) + 8) hasFinishedAFullSyncForScope:v7] ^ 1;
    }

    else
    {
      v6 = 1;
    }

    v8 = [MEMORY[0x1E696AD98] numberWithBool:v6];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v3];
  }

  return v6;
}

void __36__CPLPushSessionTracker_computeDiff__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 isDelete];
  if (v6 && (v7 & 1) == 0)
  {
    v8 = [v5 scopedIdentifier];
    v16 = 0;
    v9 = [*(*(a1 + 32) + 24) cloudScopedIdentifierForLocalScopedIdentifier:v8 isFinal:&v16];
    if (!v9 && [*(a1 + 32) hasCloudRecordWithLocalScopedIdentifier:v8])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v10 = __CPLSessionOSLogDomain_16325();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v18 = v6;
          _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "ID mapping entry is missing for %@ - will need to fix that", buf, 0xCu);
        }
      }

      v11 = *(*(a1 + 32) + 136);
      if (!v11)
      {
        v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v13 = *(a1 + 32);
        v14 = *(v13 + 136);
        *(v13 + 136) = v12;

        v11 = *(*(a1 + 32) + 136);
      }

      [v11 addObject:v5];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __36__CPLPushSessionTracker_computeDiff__block_invoke_44(void *a1, void *a2, void *a3)
{
  v5 = a1[5];
  v6 = a3;
  v7 = a2;
  v8 = [v7 scopedIdentifier];
  v9 = [v8 scopeIdentifier];
  v10 = [CPLRecordPushContext newPushContextForChange:v7 overStoredRecord:v6 initialUpload:(*(v5 + 16))(v5, v9)];

  [v7 _setPushContext:v10];
  [*(a1[4] + 184) addRecord:v7];
  (*(a1[6] + 16))();
}

void __36__CPLPushSessionTracker_computeDiff__block_invoke_49(void *a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (*(*(a1[7] + 8) + 24) == 1 && ([v10 hasChangeType:8] & 1) == 0)
  {
    v6 = *(a1[4] + 112);
    if (!v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v8 = a1[4];
      v9 = *(v8 + 112);
      *(v8 + 112) = v7;

      v6 = *(a1[4] + 112);
    }

    [v6 setObject:v10 forKeyedSubscript:a1[5]];
  }

  (*(a1[6] + 16))();
}

void __36__CPLPushSessionTracker_computeDiff__block_invoke_2_50(void *a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (*(*(a1[7] + 8) + 24) == 1)
  {
    if (!*(a1[4] + 112))
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v7 = a1[4];
      v8 = *(v7 + 112);
      *(v7 + 112) = v6;
    }

    v9 = [objc_opt_class() newDeleteChangeWithScopedIdentifier:a1[5]];
    [*(a1[4] + 112) setObject:v9 forKeyedSubscript:a1[5]];
  }

  ++*(a1[4] + 208);
  (*(a1[6] + 16))();
}

void __36__CPLPushSessionTracker_computeDiff__block_invoke_68(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a3 integerValue];
  if (v6 >= 1)
  {
    v7 = v6;
    if (([*(a1 + 32) hasCloudRecordWithLocalScopedIdentifier:v5] & 1) == 0)
    {
      v8 = [*(*(a1 + 32) + 160) transactionClientCacheView];
      v9 = [v8 countOfRecordsWithRelatedScopedIdentifier:v5 class:objc_opt_class()];

      if (v7 >= v9)
      {
        v10 = [*(a1 + 32) storedClientRecordWithLocalScopedIdentifier:v5];
        if (v10)
        {
          v11 = [(CPLRecordChange *)CPLMasterChange newDeleteChangeWithScopedIdentifier:v5];
          if (([*(*(a1 + 32) + 32) containsObject:v5] & 1) != 0 || !objc_msgSend(*(a1 + 40), "isRecordWithScopedIdentifierQuarantined:", v5))
          {
            if ((_CPLSilentLogging & 1) == 0)
            {
              v13 = __CPLSessionOSLogDomain_16325();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                v15 = 138412290;
                v16 = v5;
                _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_DEFAULT, "Automatically deleting not yet uploaded master %@", &v15, 0xCu);
              }
            }
          }

          else
          {
            if ((_CPLSilentLogging & 1) == 0)
            {
              v12 = __CPLSessionOSLogDomain_16325();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                v15 = 138412290;
                v16 = v5;
                _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEFAULT, "Automatically deleting and unquarantining not yet uploaded master %@", &v15, 0xCu);
              }
            }

            [*(*(a1 + 32) + 32) addObject:v5];
          }

          [*(*(a1 + 32) + 80) addObject:v5];
          (*(*(a1 + 48) + 16))();
          [*(*(a1 + 32) + 96) setObject:v10 forKeyedSubscript:v5];
          [*(*(a1 + 32) + 88) addObject:v5];
        }
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)computeExpandedBatchWithError:(id *)error
{
  selfCopy = self;
  v336 = *MEMORY[0x1E69E9840];
  if (self->_expandHasBeenSuccessful)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v220 = __CPLSessionOSLogDomain_16325();
      if (os_log_type_enabled(v220, OS_LOG_TYPE_ERROR))
      {
        v221 = NSStringFromSelector(a2);
        *buf = 138412290;
        p_super = v221;
        _os_log_impl(&dword_1DC05A000, v220, OS_LOG_TYPE_ERROR, "%@ called twice", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v219 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLPushSessionTracker.m"];
    v222 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:v219 lineNumber:354 description:{@"%@ called twice", v222}];

LABEL_403:
    abort();
  }

  errorCopy = error;
  now = self->_now;
  if (now)
  {
    date = now;
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
  }

  v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[CPLChangeBatch count](selfCopy->_incomingBatch, "count")}];
  incomingBatchRecordPerScopedIdentifiers = selfCopy->_incomingBatchRecordPerScopedIdentifiers;
  selfCopy->_incomingBatchRecordPerScopedIdentifiers = v6;

  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  unquarantinedRecordScopedIdentifiers = selfCopy->_unquarantinedRecordScopedIdentifiers;
  selfCopy->_unquarantinedRecordScopedIdentifiers = v8;

  v10 = objc_alloc_init(CPLChangeBatch);
  expandedBatch = selfCopy->_expandedBatch;
  selfCopy->_expandedBatch = v10;

  initEmpty = [[CPLPushChangeTasks alloc] initEmpty];
  pushChangeTasks = selfCopy->_pushChangeTasks;
  selfCopy->_pushChangeTasks = initEmpty;

  store = [(CPLPushSessionTracker *)selfCopy store];
  engineLibrary = [store engineLibrary];
  transport = [engineLibrary transport];
  fingerprintContext = [transport fingerprintContext];

  pushPullGatekeepers = [(CPLEngineStore *)selfCopy->_store pushPullGatekeepers];
  v270 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v315 = 0u;
  v316 = 0u;
  v317 = 0u;
  v318 = 0u;
  obj = selfCopy->_incomingBatch;
  v269 = [(CPLChangeBatch *)obj countByEnumeratingWithState:&v315 objects:v335 count:16];
  if (!v269)
  {
    v243 = 0;
    goto LABEL_383;
  }

  v243 = 0;
  v267 = *v316;
  v227 = errorCopy;
  do
  {
    v17 = 0;
    do
    {
      if (*v316 != v267)
      {
        objc_enumerationMutation(obj);
      }

      v18 = [*(*(&v315 + 1) + 8 * v17) copy];
      [v18 awakeFromStorage];
      if ([v18 isScopeChange])
      {
        if ([(CPLEngineStore *)selfCopy->_store clientCanPushScopeChange:v18])
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v19 = __CPLSessionOSLogDomain_16325();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              p_super = v18;
              _os_log_impl(&dword_1DC05A000, v19, OS_LOG_TYPE_DEFAULT, "Client pushed a scope change: %@", buf, 0xCu);
            }
          }

          scopes = selfCopy->_scopes;
          v314 = 0;
          v21 = [(CPLEngineScopeStorage *)scopes updateScopeWithChange:v18 error:&v314];
          v22 = v314;
          if (!v21)
          {
            if ((_CPLSilentLogging & 1) == 0)
            {
              v39 = __CPLSessionOSLogDomain_16325();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                p_super = v18;
                v329 = 2112;
                v330 = v22;
                _os_log_impl(&dword_1DC05A000, v39, OS_LOG_TYPE_ERROR, "Client failed to update scope with %@: %@", buf, 0x16u);
              }
            }

            if (errorCopy)
            {
              v40 = v22;
              *errorCopy = v22;
            }

            v41 = 1;
            goto LABEL_74;
          }

          if ([v18 isDelete])
          {
            v23 = v243;
            if (!v243)
            {
              v23 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            }

            scopeIdentifier = [v18 scopeIdentifier];
            v243 = v23;
            [v23 addObject:scopeIdentifier];
          }

          goto LABEL_73;
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v25 = __CPLSessionOSLogDomain_16325();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            p_super = v18;
            _os_log_impl(&dword_1DC05A000, v25, OS_LOG_TYPE_ERROR, "Client tried to push %@ but this engine does not support that - ignoring", buf, 0xCu);
          }

LABEL_55:
        }

        goto LABEL_76;
      }

      v268 = v17;
      v312 = 0u;
      v313 = 0u;
      v310 = 0u;
      v311 = 0u;
      v25 = pushPullGatekeepers;
      v26 = [v25 countByEnumeratingWithState:&v310 objects:v334 count:16];
      if (!v26)
      {
        goto LABEL_37;
      }

      v27 = v26;
      v28 = *v311;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v311 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v310 + 1) + 8 * i);
          v31 = [v30 checkPushedChange:v18];
          switch(v31)
          {
            case 2:
              if ((_CPLSilentLogging & 1) == 0)
              {
                v32 = __CPLSessionOSLogDomain_16325();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  p_super = v30;
                  v329 = 2112;
                  v330 = v18;
                  _os_log_impl(&dword_1DC05A000, v32, OS_LOG_TYPE_DEFAULT, "%@ modified %@ so we will revert it", buf, 0x16u);
                }
              }

              [v270 addObject:v18];
              break;
            case 3:
              if ((_CPLSilentLogging & 1) == 0)
              {
                v36 = __CPLSessionOSLogDomain_16325();
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  p_super = v30;
                  v329 = 2112;
                  v330 = v18;
                  _os_log_impl(&dword_1DC05A000, v36, OS_LOG_TYPE_DEFAULT, "%@ asked to reject %@", buf, 0x16u);
                }
              }

              v37 = selfCopy->_pushChangeTasks;
              scopedIdentifier = [v18 scopedIdentifier];
              [(CPLPushChangeTasks *)v37 addTask:1 forRecordWithScopedIdentifier:scopedIdentifier];

              goto LABEL_54;
            case 1:
              if ((_CPLSilentLogging & 1) == 0)
              {
                v35 = __CPLSessionOSLogDomain_16325();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  p_super = v30;
                  v329 = 2112;
                  v330 = v18;
                  _os_log_impl(&dword_1DC05A000, v35, OS_LOG_TYPE_DEFAULT, "%@ asked to drop (and revert) %@", buf, 0x16u);
                }
              }

              [v270 addObject:v18];
LABEL_54:
              v17 = v268;
              goto LABEL_55;
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v310 objects:v334 count:16];
      }

      while (v27);
LABEL_37:

      if (![v18 supportsRecordModificationDate])
      {
        v33 = 0;
        v17 = v268;
        goto LABEL_65;
      }

      v17 = v268;
      if (([v18 isDelete]& 1) == 0)
      {
        recordModificationDate = [v18 recordModificationDate];

        v33 = date;
        if (!recordModificationDate)
        {
LABEL_65:
          [v18 setRecordModificationDate:v33];
        }
      }

      scopedIdentifier2 = [v18 scopedIdentifier];
      if (!scopedIdentifier2)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v215 = __CPLSessionOSLogDomain_16325();
          if (os_log_type_enabled(v215, OS_LOG_TYPE_ERROR))
          {
            v216 = objc_opt_class();
            *buf = 138412290;
            p_super = v216;
            v217 = v216;
            _os_log_impl(&dword_1DC05A000, v215, OS_LOG_TYPE_ERROR, "%@ should have an identifier here", buf, 0xCu);
          }
        }

        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v219 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLPushSessionTracker.m"];
        [currentHandler handleFailureInMethod:a2 object:selfCopy file:v219 lineNumber:423 description:{@"%@ should have an identifier here", objc_opt_class(), v276}];
        goto LABEL_403;
      }

      v22 = scopedIdentifier2;
      v43 = [(NSMutableDictionary *)selfCopy->_incomingBatchRecordPerScopedIdentifiers objectForKey:scopedIdentifier2];

      if (v43)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v44 = __CPLSessionOSLogDomain_16325();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            p_super = v18;
            _os_log_impl(&dword_1DC05A000, v44, OS_LOG_TYPE_ERROR, "Client pushed the same record twice: %@ - ignoring", buf, 0xCu);
          }
        }

        ++selfCopy->_ignoredRecordCount;
        goto LABEL_73;
      }

      [(NSMutableDictionary *)selfCopy->_incomingBatchRecordPerScopedIdentifiers setObject:v18 forKeyedSubscript:v22];
      if (computeExpandedBatchWithError__onceToken != -1)
      {
        dispatch_once(&computeExpandedBatchWithError__onceToken, &__block_literal_global_16395);
      }

      if (![v18 supportsResources]|| ![v18 hasChangeType:8])
      {
        goto LABEL_128;
      }

      resourceCopyFromScopedIdentifier = [v18 resourceCopyFromScopedIdentifier];
      if (!resourceCopyFromScopedIdentifier)
      {
        goto LABEL_127;
      }

      if (computeExpandedBatchWithError__simulateResourceCopyFailure == 1)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v46 = __CPLSessionOSLogDomain_16325();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            p_super = v18;
            v329 = 2112;
            v330 = resourceCopyFromScopedIdentifier;
            _os_log_impl(&dword_1DC05A000, v46, OS_LOG_TYPE_ERROR, "Simulating resource copy failure for change %@ with resources copied from %@", buf, 0x16u);
          }
        }

        [(CPLPushChangeTasks *)selfCopy->_pushChangeTasks addTask:7 forRecordWithScopedIdentifier:v22];
LABEL_328:

LABEL_73:
        v41 = 3;
        goto LABEL_74;
      }

      resources = [v18 resources];
      if ([resources count])
      {
        v48 = [(CPLPushSessionTracker *)selfCopy resourceIdentitiesForRecordWithLocalScopedIdentifier:resourceCopyFromScopedIdentifier];
        if (v48)
        {
          v308 = 0u;
          v309 = 0u;
          v306 = 0u;
          v307 = 0u;
          v251 = resources;
          v49 = [v251 countByEnumeratingWithState:&v306 objects:v326 count:16];
          if (!v49)
          {
            goto LABEL_112;
          }

          v50 = v49;
          v257 = v48;
          v260 = selfCopy;
          v244 = resources;
          v241 = resourceCopyFromScopedIdentifier;
          v224 = v22;
          v51 = *v307;
          while (1)
          {
            for (j = 0; j != v50; ++j)
            {
              if (*v307 != v51)
              {
                objc_enumerationMutation(v251);
              }

              v53 = *(*(&v306 + 1) + 8 * j);
              identity = [v53 identity];
              sourceResourceType = [v53 sourceResourceType];
              if (!sourceResourceType)
              {
                selfCopy = v260;
                resourceCopyFromScopedIdentifier = v241;
                resources = v244;
                v127 = v251;
                if ((_CPLSilentLogging & 1) == 0)
                {
                  v58 = __CPLSessionOSLogDomain_16325();
                  if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                  {
                    v130 = +[CPLResource shortDescriptionForResourceType:](CPLResource, "shortDescriptionForResourceType:", [v53 resourceType]);
                    *buf = 138412802;
                    p_super = v18;
                    v329 = 2112;
                    v330 = v130;
                    v331 = 2112;
                    v332 = v241;
                    _os_log_impl(&dword_1DC05A000, v58, OS_LOG_TYPE_ERROR, "Client pushed %@ copying resource to %@ from %@ but did not specify which resource type to copy from", buf, 0x20u);
                    goto LABEL_321;
                  }

                  goto LABEL_323;
                }

LABEL_324:

                errorCopy = v227;
                v22 = v224;
                v48 = v257;
LABEL_325:

                goto LABEL_326;
              }

              v56 = sourceResourceType;
              v57 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:sourceResourceType];
              v58 = [v257 objectForKeyedSubscript:v57];

              if (v58)
              {
                fingerPrint = [identity fingerPrint];
                fingerPrint2 = [v58 fingerPrint];
                v61 = fingerPrint2;
                if (fingerPrint)
                {
                  v62 = fingerPrint2 == 0;
                }

                else
                {
                  v62 = 1;
                }

                if (v62)
                {

                  if (fingerPrint | v61)
                  {
                    goto LABEL_317;
                  }
                }

                else
                {
                  v63 = [fingerPrint isEqual:fingerPrint2];

                  if ((v63 & 1) == 0)
                  {
LABEL_317:
                    if ((_CPLSilentLogging & 1) == 0)
                    {
                      v130 = __CPLSessionOSLogDomain_16325();
                      resourceCopyFromScopedIdentifier = v241;
                      resources = v244;
                      if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
                      {
                        v186 = [CPLResource shortDescriptionForResourceType:v56];
                        *buf = 138412802;
                        p_super = v18;
                        v329 = 2112;
                        v330 = v186;
                        v331 = 2112;
                        v332 = v241;
                        _os_log_impl(&dword_1DC05A000, v130, OS_LOG_TYPE_ERROR, "Client pushed %@ copying resource %@ from %@ but the fingerprints don't match", buf, 0x20u);
                      }

                      selfCopy = v260;
                      v17 = v268;
                      goto LABEL_321;
                    }

                    goto LABEL_377;
                  }
                }
              }

              else if ([v53 resourceType] != 1000 || (-[NSObject isAssetChange](v18, "isAssetChange") & 1) == 0)
              {
                if ((_CPLSilentLogging & 1) == 0)
                {
                  v130 = __CPLSessionOSLogDomain_16325();
                  v17 = v268;
                  resourceCopyFromScopedIdentifier = v241;
                  resources = v244;
                  if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
                  {
                    v177 = [CPLResource shortDescriptionForResourceType:v56];
                    *buf = 138412802;
                    p_super = v18;
                    v329 = 2112;
                    v330 = v177;
                    v331 = 2112;
                    v332 = v241;
                    _os_log_impl(&dword_1DC05A000, v130, OS_LOG_TYPE_ERROR, "Client pushed %@ copying resource %@ from %@ but it does not have this resource", buf, 0x20u);
                  }

                  v58 = 0;
                  selfCopy = v260;
LABEL_321:

LABEL_322:
                  v127 = v251;
LABEL_323:

                  goto LABEL_324;
                }

                v58 = 0;
LABEL_377:
                selfCopy = v260;
                v17 = v268;
                resourceCopyFromScopedIdentifier = v241;
                resources = v244;
                goto LABEL_322;
              }

              errorCopy = v227;
              v17 = v268;
            }

            v50 = [v251 countByEnumeratingWithState:&v306 objects:v326 count:16];
            if (!v50)
            {
              v48 = v257;
              selfCopy = v260;
              v22 = v224;
              resourceCopyFromScopedIdentifier = v241;
              resources = v244;
LABEL_112:
              v64 = v251;
LABEL_113:

              goto LABEL_114;
            }
          }
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v127 = __CPLSessionOSLogDomain_16325();
          if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
          {
            v128 = [resources count];
            *buf = 138412802;
            p_super = v18;
            v329 = 2048;
            v330 = v128;
            v331 = 2112;
            v332 = resourceCopyFromScopedIdentifier;
            _os_log_impl(&dword_1DC05A000, v127, OS_LOG_TYPE_ERROR, "Client pushed %@ copying %lu resources from %@ which is unknown or deleted", buf, 0x20u);
          }

          goto LABEL_325;
        }

LABEL_326:
        [(CPLPushChangeTasks *)selfCopy->_pushChangeTasks addTask:7 forRecordWithScopedIdentifier:v22];

        goto LABEL_327;
      }

      if (![v18 isAssetChange]|| ([v18 adjustments], v65 = objc_claimAutoreleasedReturnValue(), v65, !v65))
      {
        if ([(CPLPushSessionTracker *)selfCopy knowsClientRecordWithScopedIdentifier:resourceCopyFromScopedIdentifier])
        {
          goto LABEL_126;
        }

LABEL_241:
        if ((_CPLSilentLogging & 1) == 0)
        {
          v129 = __CPLSessionOSLogDomain_16325();
          if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            p_super = v18;
            v329 = 2112;
            v330 = resourceCopyFromScopedIdentifier;
            _os_log_impl(&dword_1DC05A000, v129, OS_LOG_TYPE_ERROR, "Client pushed %@ copying 0 resources from %@ which is unknown or deleted", buf, 0x16u);
          }
        }

        [(CPLPushChangeTasks *)selfCopy->_pushChangeTasks addTask:7 forRecordWithScopedIdentifier:v22];
LABEL_327:

        goto LABEL_328;
      }

      v66 = [(CPLPushSessionTracker *)selfCopy enqueuedOrStoredRecordWithLocalScopedIdentifier:resourceCopyFromScopedIdentifier];
      if (!v66)
      {
        goto LABEL_241;
      }

      v48 = v66;
      if ([v66 isAssetChange])
      {
        v64 = [v48 resourceForType:1000];
        v258 = v48;
        if (v64)
        {
          v245 = resources;
          if ((_CPLSilentLogging & 1) == 0)
          {
            v67 = __CPLSessionOSLogDomain_16325();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              p_super = v64;
              v329 = 2112;
              v330 = v258;
              _os_log_impl(&dword_1DC05A000, v67, OS_LOG_TYPE_DEFAULT, "Automatically inferring using %@ in adjusted %@", buf, 0x16u);
            }
          }

          v68 = [v64 copy];
          [v68 setSourceResourceType:[v64 resourceType]];
          v333 = v68;
          [MEMORY[0x1E695DEC8] arrayWithObjects:&v333 count:1];
          v70 = v69 = v22;
          [v18 setResources:v70];

          v22 = v69;
          resources = v245;
          goto LABEL_335;
        }

        if (_CPLSilentLogging)
        {
          v64 = 0;
        }

        else
        {
          v68 = __CPLSessionOSLogDomain_16325();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            p_super = v18;
            v329 = 2112;
            v330 = v258;
            _os_log_impl(&dword_1DC05A000, v68, OS_LOG_TYPE_DEFAULT, "Client pushed adjusted %@ with no original resource to use from %@ - hopefully, the resources will be copied from what's on the server", buf, 0x16u);
          }

LABEL_335:
        }

        v48 = v258;
        goto LABEL_113;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v64 = __CPLSessionOSLogDomain_16325();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          p_super = v18;
          v329 = 2112;
          v330 = v48;
          _os_log_impl(&dword_1DC05A000, v64, OS_LOG_TYPE_ERROR, "Client pushed adjusted %@ with no resources to copy from %@", buf, 0x16u);
        }

        goto LABEL_113;
      }

LABEL_114:

LABEL_126:
LABEL_127:

LABEL_128:
      quarantinedRecords = [(CPLEngineStore *)selfCopy->_store quarantinedRecords];
      v72 = [quarantinedRecords isRecordWithScopedIdentifierQuarantined:v22];
      v73 = v72;
      v242 = quarantinedRecords;
      if (v72)
      {
        if (([v18 isFullRecord]& 1) == 0 && ![v18 isDelete])
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v85 = __CPLSessionOSLogDomain_16325();
            if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              p_super = v18;
              _os_log_impl(&dword_1DC05A000, v85, OS_LOG_TYPE_DEFAULT, "Client pushed quarantined record: %@ - rejecting", buf, 0xCu);
            }
          }

          [(CPLPushChangeTasks *)selfCopy->_pushChangeTasks addTask:1 forRecordWithScopedIdentifier:v22];
          goto LABEL_166;
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v74 = __CPLSessionOSLogDomain_16325();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            p_super = v18;
            _os_log_impl(&dword_1DC05A000, v74, OS_LOG_TYPE_DEFAULT, "Client pushed quarantined record: %@ - unquarantining", buf, 0xCu);
          }
        }

        if ([v18 isAssetChange])
        {
          masterScopedIdentifier = [v18 masterScopedIdentifier];
          if (masterScopedIdentifier && (-[NSMutableSet containsObject:](selfCopy->_unquarantinedRecordScopedIdentifiers, "containsObject:", masterScopedIdentifier) & 1) == 0 && [quarantinedRecords isRecordWithScopedIdentifierQuarantined:masterScopedIdentifier])
          {
            if ((_CPLSilentLogging & 1) == 0)
            {
              v76 = v22;
              v77 = __CPLSessionOSLogDomain_16325();
              if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                p_super = v18;
                _os_log_impl(&dword_1DC05A000, v77, OS_LOG_TYPE_DEFAULT, "Client pushed quarantined asset: %@ but also needs to push its master - rejecting", buf, 0xCu);
              }

              v22 = v76;
            }

            [(CPLPushChangeTasks *)selfCopy->_pushChangeTasks addTask:4 forRecordWithScopedIdentifier:v22];

            goto LABEL_166;
          }
        }

        [(NSMutableSet *)selfCopy->_unquarantinedRecordScopedIdentifiers addObject:v22];
      }

      if (![v18 validateRecordForTracker:selfCopy])
      {
LABEL_166:
        v41 = 3;
        goto LABEL_311;
      }

      v302[0] = MEMORY[0x1E69E9820];
      v302[1] = 3221225472;
      v302[2] = __55__CPLPushSessionTracker_computeExpandedBatchWithError___block_invoke_22;
      v302[3] = &unk_1E861E270;
      v78 = v18;
      v303 = v78;
      v304 = selfCopy;
      v79 = v22;
      v305 = v79;
      v226 = MEMORY[0x1E128EBA0](v302);
      v259 = v79;
      v228 = [(CPLPushSessionTracker *)selfCopy storedClientRecordWithLocalScopedIdentifier:v79];
      if (v228)
      {
        v80 = objc_opt_class();
        if (v80 != objc_opt_class())
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v81 = __CPLSessionOSLogDomain_16325();
            if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              p_super = v78;
              v329 = 2112;
              v330 = v228;
              _os_log_impl(&dword_1DC05A000, v81, OS_LOG_TYPE_ERROR, "Client pushed a mismatched %@ over %@", buf, 0x16u);
            }
          }

          v82 = selfCopy->_pushChangeTasks;
          v83 = 0;
          goto LABEL_154;
        }

        if ([v78 supportsResources])
        {
          v261 = [v228 fingerprintSchemeWithContext:fingerprintContext];
          if ([v78 isAssetChange]&& [v78 hasChangeType:2])
          {
            v86 = [v78 fingerprintSchemeWithContext:fingerprintContext];
            if ([v86 isCompatibleWithFingerprintScheme:v261])
            {

              goto LABEL_172;
            }

            v246 = v86;
            v178 = v22;
            if ((_CPLSilentLogging & 1) == 0)
            {
              v179 = __CPLSessionOSLogDomain_16325();
              if (os_log_type_enabled(v179, OS_LOG_TYPE_ERROR))
              {
                fingerprintSchemeDescription = [v261 fingerprintSchemeDescription];
                fingerprintSchemeDescription2 = [v246 fingerprintSchemeDescription];
                *buf = 138412802;
                p_super = v78;
                v329 = 2112;
                v330 = fingerprintSchemeDescription;
                v331 = 2112;
                v332 = fingerprintSchemeDescription2;
                _os_log_impl(&dword_1DC05A000, v179, OS_LOG_TYPE_ERROR, "Client pushed %@ changing from %@ to %@", buf, 0x20u);

                v17 = v268;
              }
            }

            [(CPLPushChangeTasks *)selfCopy->_pushChangeTasks addTask:0 forRecordWithScopedIdentifier:v259];
            v22 = v178;
LABEL_307:

LABEL_308:
LABEL_309:
            v41 = 3;
            goto LABEL_310;
          }

LABEL_172:
          if ([v78 hasChangeType:8])
          {
            v292 = 0u;
            v293 = 0u;
            v290 = 0u;
            v291 = 0u;
            resources2 = [v78 resources];
            v88 = [resources2 countByEnumeratingWithState:&v290 objects:v323 count:16];
            if (v88)
            {
              v89 = v88;
              v246 = resources2;
              v252 = v78;
              v225 = v22;
              v90 = selfCopy;
              canGenerateDerivative = 0;
              v91 = 0;
              v92 = *v291;
              while (2)
              {
                for (k = 0; k != v89; ++k)
                {
                  if (*v291 != v92)
                  {
                    objc_enumerationMutation(v246);
                  }

                  v94 = *(*(&v290 + 1) + 8 * k);
                  identity2 = [v94 identity];
                  fileURL = [identity2 fileURL];

                  if (!fileURL)
                  {
                    canGenerateDerivative = [v94 canGenerateDerivative];
                    v91 = 1;
                  }

                  fingerPrint3 = [identity2 fingerPrint];
                  v98 = [(CPLPushSessionTracker *)v90 _checkFingerPrint:fingerPrint3 ofResource:v94 inChange:v252 localScopedIdentifier:v259 fingerprintContext:fingerprintContext fingerprintScheme:v261];

                  if (!v98)
                  {
                    selfCopy = v90;
                    errorCopy = v227;
                    v17 = v268;
                    v22 = v225;
                    goto LABEL_307;
                  }

                  errorCopy = v227;
                }

                v89 = [v246 countByEnumeratingWithState:&v290 objects:v323 count:16];
                if (v89)
                {
                  continue;
                }

                break;
              }

              v78 = v252;
              v99 = (v226)[2](v226, v252, v228);
              if (v99 & v91)
              {
                selfCopy = v90;
                v100 = [(CPLPushSessionTracker *)v90 _realChangeFromChange:v252 comparedToStoredRecord:v228 changeType:8];
                v101 = v100;
                v17 = v268;
                v22 = v225;
                if (v100 && [v100 hasChangeType:8])
                {
                  if ((canGenerateDerivative & 1) == 0 && [v252 allowsToOnlyUploadNewResources])
                  {
                    v289 = 0;
                    v102 = [v252 changeIsOnlyAddingResourcesToRecord:v228 addedResources:&v289];
                    v103 = v289;
                    v104 = v103;
                    if (v102)
                    {
                      if ((_CPLSilentLogging & 1) == 0)
                      {
                        v105 = __CPLSessionOSLogDomain_16325();
                        if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412546;
                          p_super = v252;
                          v329 = 2112;
                          v330 = v104;
                          _os_log_impl(&dword_1DC05A000, v105, OS_LOG_TYPE_DEFAULT, "Client pushed a record update with sparse resources but just adding new non-sparse resources: %@\nAdded resources:\n%@", buf, 0x16u);
                        }
                      }

                      selfCopy = v90;
                      errorCopy = v227;
                      v17 = v268;
                      goto LABEL_366;
                    }

                    selfCopy = v90;
                    errorCopy = v227;
                    v17 = v268;
LABEL_371:
                    if ((_CPLSilentLogging & 1) == 0)
                    {
                      v201 = __CPLSessionOSLogDomain_16325();
                      if (os_log_type_enabled(v201, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        p_super = v252;
                        _os_log_impl(&dword_1DC05A000, v201, OS_LOG_TYPE_ERROR, "Client pushed a record update with sparse resources: %@", buf, 0xCu);
                      }
                    }

                    v41 = 3;
                    [(CPLPushChangeTasks *)selfCopy->_pushChangeTasks addTask:3 forRecordWithScopedIdentifier:v259];

                    goto LABEL_359;
                  }

                  resourceCopyFromScopedIdentifier2 = [v101 resourceCopyFromScopedIdentifier];

                  if (!resourceCopyFromScopedIdentifier2)
                  {
                    goto LABEL_371;
                  }
                }

                else if ((_CPLSilentLogging & 1) == 0)
                {
                  v104 = __CPLSessionOSLogDomain_16325();
                  if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    p_super = v252;
                    _os_log_impl(&dword_1DC05A000, v104, OS_LOG_TYPE_DEFAULT, "Client pushed a record update with sparse resources but with no actual resource change: %@", buf, 0xCu);
                  }

LABEL_366:

                  v22 = v225;
                }

                v78 = v252;
              }

              else
              {
                selfCopy = v90;
                v17 = v268;
                v22 = v225;
                if ((v99 & 1) == 0)
                {
                  goto LABEL_308;
                }
              }
            }

            else
            {

              v17 = v268;
              if (((v226)[2](v226, v78, v228) & 1) == 0)
              {
                goto LABEL_308;
              }
            }
          }
        }

        if ([v78 isAssetChange])
        {
          if ([v78 isDelete])
          {
            v254 = v78;
            v225 = v22;
            v287 = 0u;
            v288 = 0u;
            v285 = 0u;
            v286 = 0u;
            transactionClientCacheView = [(CPLEngineStore *)selfCopy->_store transactionClientCacheView];
            v132 = [transactionClientCacheView recordViewsWithRelatedScopedIdentifier:v259 class:objc_opt_class()];

            v133 = [v132 countByEnumeratingWithState:&v285 objects:v322 count:16];
            if (v133)
            {
              v134 = v133;
              v135 = *v286;
              do
              {
                for (m = 0; m != v134; ++m)
                {
                  if (*v286 != v135)
                  {
                    objc_enumerationMutation(v132);
                  }

                  v137 = *(*(&v285 + 1) + 8 * m);
                  scopedIdentifier3 = [v137 scopedIdentifier];
                  synthesizedRecord = [v137 synthesizedRecord];
                  [(NSMutableDictionary *)selfCopy->_storedClientRecords setObject:synthesizedRecord forKeyedSubscript:scopedIdentifier3];

                  v140 = selfCopy->_expandedBatch;
                  v141 = [(CPLRecordChange *)CPLContainerRelationChange newDeleteChangeWithScopedIdentifier:scopedIdentifier3];
                  [(CPLChangeBatch *)v140 addRecord:v141];
                }

                v134 = [v132 countByEnumeratingWithState:&v285 objects:v322 count:16];
              }

              while (v134);
            }

            [(CPLChangeBatch *)selfCopy->_expandedBatch addRecord:v254];
            v41 = 0;
            goto LABEL_357;
          }

          if ([v78 hasChangeType:16])
          {
            v225 = v22;
            containerRelations = [v78 containerRelations];
            if ([v78 changeType]!= 16)
            {
              if (([v78 isFullRecord]& 1) == 0)
              {
                [v78 setChangeType:[v78 changeType]& 0xFFFFFFFFFFFFFFEFLL];
              }

              [v78 setContainerRelations:0];
              [(CPLChangeBatch *)selfCopy->_expandedBatch addRecord:v78];
            }

            v142 = v78;
            v263 = selfCopy;
            transactionClientCacheView2 = [(CPLEngineStore *)selfCopy->_store transactionClientCacheView];
            v144 = [transactionClientCacheView2 recordViewsWithRelatedScopedIdentifier:v259 class:objc_opt_class()];

            v145 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v281 = 0u;
            v282 = 0u;
            v283 = 0u;
            v284 = 0u;
            v255 = v144;
            v146 = [v255 countByEnumeratingWithState:&v281 objects:v321 count:16];
            if (v146)
            {
              v147 = v146;
              v148 = *v282;
              do
              {
                for (n = 0; n != v147; ++n)
                {
                  if (*v282 != v148)
                  {
                    objc_enumerationMutation(v255);
                  }

                  v150 = *(*(&v281 + 1) + 8 * n);
                  synthesizedRecord2 = [v150 synthesizedRecord];
                  relation = [synthesizedRecord2 relation];
                  containerIdentifier = [relation containerIdentifier];

                  if (containerIdentifier)
                  {
                    [v145 setObject:synthesizedRecord2 forKeyedSubscript:containerIdentifier];
                    storedClientRecords = v263->_storedClientRecords;
                    [v150 scopedIdentifier];
                    v156 = v155 = v145;
                    [(NSMutableDictionary *)storedClientRecords setObject:synthesizedRecord2 forKeyedSubscript:v156];

                    v145 = v155;
                  }
                }

                v147 = [v255 countByEnumeratingWithState:&v281 objects:v321 count:16];
              }

              while (v147);
            }

            v157 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            v237 = objc_alloc_init(MEMORY[0x1E695DF70]);
            recordModificationDate2 = [v142 recordModificationDate];
            v277 = 0u;
            v278 = 0u;
            v279 = 0u;
            v280 = 0u;
            v249 = containerRelations;
            v158 = [v249 countByEnumeratingWithState:&v277 objects:v320 count:16];
            if (v158)
            {
              v159 = v158;
              v160 = *v278;
              v233 = *v278;
              v235 = v157;
              do
              {
                for (ii = 0; ii != v159; ++ii)
                {
                  if (*v278 != v160)
                  {
                    objc_enumerationMutation(v249);
                  }

                  v162 = *(*(&v277 + 1) + 8 * ii);
                  containerIdentifier2 = [v162 containerIdentifier];
                  if (containerIdentifier2 && ([v157 containsObject:containerIdentifier2] & 1) == 0)
                  {
                    [v157 addObject:containerIdentifier2];
                    v164 = [v145 objectForKeyedSubscript:containerIdentifier2];
                    v165 = v164;
                    v166 = v145;
                    if (v164)
                    {
                      scopedIdentifier4 = [v164 scopedIdentifier];
                      v168 = [(CPLRecordChange *)CPLContainerRelationChange newRecordWithScopedIdentifier:scopedIdentifier4];

                      identifier = [v259 identifier];
                      [v168 setItemIdentifier:identifier];

                      [v168 setRelation:v162];
                      [v168 setRecordModificationDate:recordModificationDate2];
                      [v166 removeObjectForKey:containerIdentifier2];
                      [v237 addObject:v168];
                    }

                    else
                    {
                      v168 = [v162 proposedScopedIdentifierForItemScopedIdentifier:v259];
                      v170 = [(CPLRecordChange *)CPLContainerRelationChange newRecordWithScopedIdentifier:v168];
                      identifier2 = [v259 identifier];
                      [v170 setItemIdentifier:identifier2];

                      [v170 setRelation:v162];
                      [v170 setRecordModificationDate:recordModificationDate2];
                      [v237 addObject:v170];
                    }

                    v145 = v166;

                    v160 = v233;
                    v157 = v235;
                  }
                }

                v159 = [v249 countByEnumeratingWithState:&v277 objects:v320 count:16];
              }

              while (v159);
            }

            v275[0] = MEMORY[0x1E69E9820];
            v275[1] = 3221225472;
            v276[0] = __55__CPLPushSessionTracker_computeExpandedBatchWithError___block_invoke_33;
            v276[1] = &unk_1E861E298;
            selfCopy = v263;
            v276[2] = v263;
            [v145 enumerateKeysAndObjectsUsingBlock:v275];
            v273 = 0u;
            v274 = 0u;
            v271 = 0u;
            v272 = 0u;
            v172 = v237;
            v173 = [v172 countByEnumeratingWithState:&v271 objects:v319 count:16];
            errorCopy = v227;
            if (v173)
            {
              v174 = v173;
              v175 = *v272;
              do
              {
                for (jj = 0; jj != v174; ++jj)
                {
                  if (*v272 != v175)
                  {
                    objc_enumerationMutation(v172);
                  }

                  [(CPLChangeBatch *)v263->_expandedBatch addRecord:*(*(&v271 + 1) + 8 * jj)];
                }

                v174 = [v172 countByEnumeratingWithState:&v271 objects:v319 count:16];
              }

              while (v174);
            }

            v41 = 0;
            goto LABEL_358;
          }
        }

LABEL_360:
        [(CPLChangeBatch *)selfCopy->_expandedBatch addRecord:v78];
        v41 = 0;
        goto LABEL_310;
      }

      if ([v78 isDelete])
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v84 = __CPLSessionOSLogDomain_16325();
          if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            p_super = v78;
            _os_log_impl(&dword_1DC05A000, v84, OS_LOG_TYPE_DEBUG, "Client pushed a delete to an already deleted record: %@ - ignoring", buf, 0xCu);
          }
        }

        ++selfCopy->_ignoredRecordCount;
        goto LABEL_309;
      }

      if (([v78 isFullRecord]& 1) == 0)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v126 = __CPLSessionOSLogDomain_16325();
          if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            p_super = v78;
            _os_log_impl(&dword_1DC05A000, v126, OS_LOG_TYPE_ERROR, "Client pushed a change but we are missing the full record: %@", buf, 0xCu);
          }
        }

        v82 = selfCopy->_pushChangeTasks;
        v83 = 2;
LABEL_154:
        [(CPLPushChangeTasks *)v82 addTask:v83 forRecordWithScopedIdentifier:v259];
        goto LABEL_309;
      }

      v225 = v22;
      if ([v78 isAssetChange])
      {
        v106 = [(CPLPushSessionTracker *)selfCopy storedCloudRecordWithLocalScopedIdentifier:v79];
        v107 = v106;
        if (v106)
        {
          v108 = [v106 fingerprintSchemeWithContext:fingerprintContext];
          v109 = [v78 fingerprintSchemeWithContext:fingerprintContext];
          if (![v109 isCompatibleWithFingerprintScheme:v108])
          {
            if ((_CPLSilentLogging & 1) == 0)
            {
              v182 = __CPLSessionOSLogDomain_16325();
              if (os_log_type_enabled(v182, OS_LOG_TYPE_ERROR))
              {
                fingerprintSchemeDescription3 = [v108 fingerprintSchemeDescription];
                [v109 fingerprintSchemeDescription];
                v185 = v184 = selfCopy;
                *buf = 138412802;
                p_super = v78;
                v329 = 2112;
                v330 = fingerprintSchemeDescription3;
                v331 = 2112;
                v332 = v185;
                _os_log_impl(&dword_1DC05A000, v182, OS_LOG_TYPE_ERROR, "Client pushed %@ changing from %@ to %@", buf, 0x20u);

                selfCopy = v184;
                errorCopy = v227;
              }
            }

            [(CPLPushChangeTasks *)selfCopy->_pushChangeTasks addTask:0 forRecordWithScopedIdentifier:v259];

            v41 = 3;
            goto LABEL_358;
          }

          v17 = v268;
          v22 = v225;
        }
      }

      if (![v78 supportsResources])
      {
        goto LABEL_346;
      }

      v247 = [v78 fingerprintSchemeWithContext:fingerprintContext];
      v253 = v78;
      v298 = 0u;
      v299 = 0u;
      v300 = 0u;
      v301 = 0u;
      resources3 = [v78 resources];
      v236 = [resources3 countByEnumeratingWithState:&v298 objects:v325 count:16];
      if (!v236)
      {
        v125 = 1;
        goto LABEL_344;
      }

      v239 = *v299;
      while (2)
      {
        v110 = 0;
        while (2)
        {
          if (*v299 != v239)
          {
            objc_enumerationMutation(resources3);
          }

          v111 = *(*(&v298 + 1) + 8 * v110);
          identity3 = [v111 identity];
          fingerPrint4 = [identity3 fingerPrint];
          v114 = [(CPLPushSessionTracker *)selfCopy _checkFingerPrint:fingerPrint4 ofResource:v111 inChange:v253 localScopedIdentifier:v259 fingerprintContext:fingerprintContext fingerprintScheme:v247];

          if (!v114)
          {
            goto LABEL_343;
          }

          fileUTI = [identity3 fileUTI];

          if (!fileUTI && (_CPLSilentLogging & 1) == 0)
          {
            v116 = __CPLSessionOSLogDomain_16325();
            if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              p_super = v111;
              v329 = 2112;
              v330 = v253;
              _os_log_impl(&dword_1DC05A000, v116, OS_LOG_TYPE_ERROR, "Client pushed a record with a resource missing file type %@: %@", buf, 0x16u);
            }
          }

          v117 = [(CPLPushSessionTracker *)selfCopy storedCloudRecordWithLocalScopedIdentifier:v259];
          fileURL2 = [identity3 fileURL];
          if (fileURL2)
          {
LABEL_213:

            errorCopy = v227;
          }

          else
          {
            errorCopy = v227;
            if ([v111 canGenerateDerivative])
            {
              if (computeExpandedBatchWithError__onceToken_24 == -1)
              {
                if (v73)
                {
                  goto LABEL_338;
                }
              }

              else
              {
                dispatch_once(&computeExpandedBatchWithError__onceToken_24, &__block_literal_global_27_16415);
                if (v73)
                {
                  goto LABEL_338;
                }
              }

              if (computeExpandedBatchWithError__alwaysAskForDerivatives)
              {
                goto LABEL_338;
              }

              if (!v117)
              {
                goto LABEL_338;
              }

              v119 = [v117 resourceForType:{-[NSObject resourceType](v111, "resourceType")}];
              if (!v119)
              {
                goto LABEL_338;
              }

              fileURL2 = v119;
              identity4 = [v119 identity];
              if (![identity4 isAvailable])
              {
                goto LABEL_337;
              }

              v262 = selfCopy;
              fingerPrint5 = [identity4 fingerPrint];
              fingerPrint6 = [identity3 fingerPrint];
              v123 = fingerPrint6;
              if (fingerPrint5 && fingerPrint6)
              {
                v231 = [fingerPrint5 isEqual:fingerPrint6];

                selfCopy = v262;
                if ((v231 & 1) == 0)
                {
                  goto LABEL_337;
                }
              }

              else
              {
                v232 = fingerPrint5 | fingerPrint6;

                selfCopy = v262;
                if (v232)
                {
LABEL_337:

LABEL_338:
                  if ((_CPLSilentLogging & 1) == 0)
                  {
                    v187 = __CPLSessionOSLogDomain_16325();
                    if (os_log_type_enabled(v187, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      p_super = v253;
                      _os_log_impl(&dword_1DC05A000, v187, OS_LOG_TYPE_DEFAULT, "Client optimistically pushed a record without resources but was wrong: %@", buf, 0xCu);
                    }
                  }

                  [(CPLPushChangeTasks *)selfCopy->_pushChangeTasks addTask:3 forRecordWithScopedIdentifier:v259];

LABEL_343:
                  v125 = 0;
                  errorCopy = v227;
                  v17 = v268;
                  goto LABEL_344;
                }
              }

              goto LABEL_213;
            }
          }

          if (v236 != ++v110)
          {
            continue;
          }

          break;
        }

        v124 = [resources3 countByEnumeratingWithState:&v298 objects:v325 count:16];
        v125 = 1;
        v17 = v268;
        v236 = v124;
        if (v124)
        {
          continue;
        }

        break;
      }

LABEL_344:

      v78 = v253;
      v188 = (v226)[2](v226, v253, 0);

      v41 = 3;
      if (!v125)
      {
        goto LABEL_359;
      }

      v22 = v225;
      if (!v188)
      {
        goto LABEL_310;
      }

LABEL_346:
      if (![v78 isAssetChange])
      {
        goto LABEL_360;
      }

      containerRelations2 = [v78 containerRelations];
      [v78 setContainerRelations:0];
      v264 = selfCopy;
      [(CPLChangeBatch *)selfCopy->_expandedBatch addRecord:v78];
      v190 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      recordModificationDate3 = [v78 recordModificationDate];
      v294 = 0u;
      v295 = 0u;
      v296 = 0u;
      v297 = 0u;
      v256 = containerRelations2;
      v191 = [v256 countByEnumeratingWithState:&v294 objects:v324 count:16];
      if (v191)
      {
        v192 = v191;
        v193 = *v295;
        do
        {
          for (kk = 0; kk != v192; ++kk)
          {
            if (*v295 != v193)
            {
              objc_enumerationMutation(v256);
            }

            v195 = *(*(&v294 + 1) + 8 * kk);
            containerIdentifier3 = [v195 containerIdentifier];
            if (([v190 containsObject:containerIdentifier3] & 1) == 0)
            {
              [v190 addObject:containerIdentifier3];
              v197 = [v195 proposedScopedIdentifierForItemScopedIdentifier:v259];
              v198 = [(CPLRecordChange *)CPLContainerRelationChange newRecordWithScopedIdentifier:v197];
              identifier3 = [v259 identifier];
              [v198 setItemIdentifier:identifier3];

              [v198 setRelation:v195];
              [v198 setRecordModificationDate:recordModificationDate3];
              [(CPLChangeBatch *)v264->_expandedBatch addRecord:v198];
            }
          }

          v192 = [v256 countByEnumeratingWithState:&v294 objects:v324 count:16];
        }

        while (v192);
      }

      v41 = 0;
      selfCopy = v264;
LABEL_357:
      errorCopy = v227;
LABEL_358:
      v17 = v268;
LABEL_359:
      v22 = v225;
LABEL_310:

LABEL_311:
LABEL_74:

      if (v41 != 3 && v41)
      {

        expandHasBeenSuccessful = 0;
        goto LABEL_397;
      }

LABEL_76:
      ++v17;
    }

    while (v17 != v269);
    v202 = [(CPLChangeBatch *)obj countByEnumeratingWithState:&v315 objects:v335 count:16];
    v269 = v202;
  }

  while (v202);
LABEL_383:

  v204 = [v243 copy];
  deletedScopeIdentifiers = selfCopy->_deletedScopeIdentifiers;
  selfCopy->_deletedScopeIdentifiers = v204;

  hasTasks = [(CPLPushChangeTasks *)selfCopy->_pushChangeTasks hasTasks];
  selfCopy->_expandHasBeenSuccessful = !hasTasks;
  if (hasTasks)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v207 = __CPLSessionOSLogDomain_16325();
      if (os_log_type_enabled(v207, OS_LOG_TYPE_DEFAULT))
      {
        v208 = selfCopy->_pushChangeTasks;
        *buf = 138412290;
        p_super = &v208->super;
        _os_log_impl(&dword_1DC05A000, v207, OS_LOG_TYPE_DEFAULT, "Batch was rejected because of %@", buf, 0xCu);
      }
    }

    revertedChanges = [CPLErrors cplErrorWithCode:18 description:@"Client needs to fix records in batch"];
    invalidRecordScopedIdentifiers = [(CPLPushChangeTasks *)selfCopy->_pushChangeTasks invalidRecordScopedIdentifiers];
    if ([invalidRecordScopedIdentifiers count])
    {
      [(CPLEngineStore *)selfCopy->_store noteInvalidRecordScopedIdentifiersInPushSession:invalidRecordScopedIdentifiers];
    }

    if (errorCopy)
    {
      v211 = revertedChanges;
      *errorCopy = revertedChanges;
    }

LABEL_395:
  }

  else if ([v270 count])
  {
    array = [v270 array];
    revertedChanges = selfCopy->_revertedChanges;
    selfCopy->_revertedChanges = array;
    goto LABEL_395;
  }

  expandHasBeenSuccessful = selfCopy->_expandHasBeenSuccessful;
LABEL_397:

  v213 = *MEMORY[0x1E69E9840];
  return expandHasBeenSuccessful;
}

uint64_t __55__CPLPushSessionTracker_computeExpandedBatchWithError___block_invoke_22(void *a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v5 isMasterChange])
  {
    if ([v5 hasChangeType:8])
    {
      v7 = v5;
    }

    else
    {
      v7 = v6;
    }

    v8 = v7;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = [v5 expungeableResourceStates];
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = [v8 resourceForType:{objc_msgSend(v14, "resourceType")}];

          if (!v15)
          {
            if ((_CPLSilentLogging & 1) == 0)
            {
              v17 = __CPLSessionOSLogDomain_16325();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                v18 = a1[4];
                *buf = 138412546;
                v26 = v14;
                v27 = 2112;
                v28 = v18;
                _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_ERROR, "Client pushed a record with a expungeable resource type that doesn't exist as a resource on this record %@: %@", buf, 0x16u);
              }
            }

            [*(a1[5] + 176) addTask:8 forRecordWithScopedIdentifier:a1[6]];
            v16 = 0;
            goto LABEL_20;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v16 = 1;
LABEL_20:
  }

  else
  {
    v16 = 1;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

- (uint64_t)_checkFingerPrint:(void *)print ofResource:(void *)resource inChange:(void *)change localScopedIdentifier:(void *)identifier fingerprintContext:(void *)context fingerprintScheme:
{
  v28 = *MEMORY[0x1E69E9840];
  v13 = a2;
  printCopy = print;
  resourceCopy = resource;
  changeCopy = change;
  identifierCopy = identifier;
  contextCopy = context;
  if (self)
  {
    if (v13)
    {
      v19 = [identifierCopy fingerprintSchemeForFingerprint:v13];
      v20 = [v19 isCompatibleWithFingerprintScheme:contextCopy];

      if (v20)
      {
        zeroByteFileFingerprint = [contextCopy zeroByteFileFingerprint];
        v22 = [v13 isEqualToString:zeroByteFileFingerprint];

        if (!v22)
        {
          self = 1;
          goto LABEL_17;
        }

        if (_CPLSilentLogging)
        {
          goto LABEL_16;
        }

        v23 = __CPLSessionOSLogDomain_16325();
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_15;
        }

        *v27 = 138412546;
        *&v27[4] = printCopy;
        *&v27[12] = 2112;
        *&v27[14] = resourceCopy;
        v24 = "Client pushed a record with 0 fileSize %@: %@";
        goto LABEL_14;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v23 = __CPLSessionOSLogDomain_16325();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *v27 = 138412546;
          *&v27[4] = printCopy;
          *&v27[12] = 2112;
          *&v27[14] = resourceCopy;
          v24 = "Client pushed a record with mismatched fingerprint scheme resources %@: %@";
          goto LABEL_14;
        }

        goto LABEL_15;
      }
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v23 = __CPLSessionOSLogDomain_16325();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *v27 = 138412546;
        *&v27[4] = printCopy;
        *&v27[12] = 2112;
        *&v27[14] = resourceCopy;
        v24 = "Client pushed a record with a resource missing finger print %@: %@";
LABEL_14:
        _os_log_impl(&dword_1DC05A000, v23, OS_LOG_TYPE_ERROR, v24, v27, 0x16u);
      }

LABEL_15:
    }

LABEL_16:
    [*(self + 176) addTask:0 forRecordWithScopedIdentifier:{changeCopy, *v27, *&v27[16], v28}];
    self = 0;
  }

LABEL_17:

  v25 = *MEMORY[0x1E69E9840];
  return self;
}

void __55__CPLPushSessionTracker_computeExpandedBatchWithError___block_invoke_33(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 scopedIdentifier];
  v5 = [(CPLRecordChange *)CPLContainerRelationChange newDeleteChangeWithScopedIdentifier:v4];

  [*(*(a1 + 32) + 168) addRecord:v5];
}

void __55__CPLPushSessionTracker_computeExpandedBatchWithError___block_invoke_25()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  computeExpandedBatchWithError__alwaysAskForDerivatives = [v0 BOOLForKey:@"CPLAlwaysAskForDerivatives"];
}

void __55__CPLPushSessionTracker_computeExpandedBatchWithError___block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  computeExpandedBatchWithError__simulateResourceCopyFailure = [v0 BOOLForKey:@"CPLSimulateResourceCopyFailure"];
}

- (id)_realChangeFromChange:(id)change comparedToStoredRecord:(id)record changeType:(unint64_t)type
{
  v28 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  recordCopy = record;
  v9 = changeCopy;
  v10 = v9;
  if ([v9 supportsResources])
  {
    if (!type || (v10 = v9, (type & 8) != 0))
    {
      resources = [v9 resources];
      cplDeepCopy = [resources cplDeepCopy];

      v10 = v9;
      if (cplDeepCopy)
      {
        v10 = [v9 copy];

        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        resources2 = [v10 resources];
        v14 = [resources2 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v24;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v24 != v16)
              {
                objc_enumerationMutation(resources2);
              }

              identity = [*(*(&v23 + 1) + 8 * i) identity];
              [identity setAvailable:1];
              [identity setFileURL:0];
            }

            v15 = [resources2 countByEnumeratingWithState:&v23 objects:v27 count:16];
          }

          while (v15);
        }
      }
    }
  }

  v22 = 0;
  v19 = [recordCopy realRecordChangeFromRecordChange:v10 direction:1 newRecord:&v22 changeType:type diffTracker:0];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (BOOL)hasCloudRecordWithLocalScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_storedCloudRecords objectForKeyedSubscript:identifierCopy];
  if (v5)
  {
    null = [MEMORY[0x1E695DFB0] null];
    v7 = v5 != null;
  }

  else
  {
    v13 = 0;
    v8 = [(CPLEngineIDMapping *)self->_optimisticIDMapping cloudScopedIdentifierForLocalScopedIdentifier:identifierCopy isFinal:&v13];
    if (v8 && (-[CPLEngineStore cloudCache](self->_store, "cloudCache"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 hasRecordWithScopedIdentifier:v8], v9, v10))
    {
      [(NSMutableDictionary *)self->_storedCloudRecords setObject:MEMORY[0x1E695E118] forKeyedSubscript:identifierCopy];
      v7 = 1;
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [(NSMutableDictionary *)self->_storedCloudRecords setObject:null2 forKeyedSubscript:identifierCopy];

      v7 = 0;
    }
  }

  return v7;
}

- (void)acknowledgeNewClientRecord:(id)record withScopedIdentifier:(id)identifier
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v14 = 0;
  v6 = [(CPLEngineIDMapping *)self->_optimisticIDMapping cloudScopedIdentifierForLocalScopedIdentifier:identifierCopy isFinal:&v14];
  if (v6)
  {
    cloudCache = [(CPLEngineStore *)self->_store cloudCache];
    v13 = 0;
    v8 = [cloudCache ackownledgeRecordWithScopedIdentifier:v6 error:&v13];
    v9 = v13;

    if (v8)
    {
      v10 = [(NSMutableDictionary *)self->_storedClientRecords objectForKeyedSubscript:identifierCopy];
      if (v10)
      {
        null = [MEMORY[0x1E695DFB0] null];

        if (v10 == null)
        {
          [(NSMutableDictionary *)self->_storedClientRecords setObject:MEMORY[0x1E695E118] forKeyedSubscript:identifierCopy];
        }
      }
    }

    else
    {
      if (_CPLSilentLogging)
      {
LABEL_10:

        goto LABEL_11;
      }

      v10 = __CPLSessionOSLogDomain_16325();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v16 = identifierCopy;
        v17 = 2112;
        v18 = v6;
        v19 = 2112;
        v20 = v9;
        _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "Failed to acknowledge %@ (cloud %@) for client in cloud cache: %@", buf, 0x20u);
      }
    }

    goto LABEL_10;
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
}

- (id)storedCloudRecordWithLocalScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_storedCloudRecords objectForKeyedSubscript:identifierCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5 == MEMORY[0x1E695E118];
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v14 = 0;
    v8 = [(CPLEngineIDMapping *)self->_optimisticIDMapping cloudScopedIdentifierForLocalScopedIdentifier:identifierCopy isFinal:&v14];
    if (v8)
    {
      cloudCache = [(CPLEngineStore *)self->_store cloudCache];
      v10 = [cloudCache recordWithScopedIdentifier:v8 isFinal:1];

      v6 = v10;
    }

    if (v6)
    {
      [(NSMutableDictionary *)self->_storedCloudRecords setObject:v6 forKeyedSubscript:identifierCopy];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [(NSMutableDictionary *)self->_storedCloudRecords setObject:null forKeyedSubscript:identifierCopy];
    }
  }

  else
  {
    null2 = [MEMORY[0x1E695DFB0] null];

    if (v6 == null2)
    {

      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)hasClientRecordWithLocalScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_storedClientRecords objectForKeyedSubscript:identifierCopy];
  if (v5)
  {
    null = [MEMORY[0x1E695DFB0] null];
    v7 = v5 != null;
  }

  else
  {
    transactionClientCacheView = [(CPLEngineStore *)self->_store transactionClientCacheView];
    v9 = [transactionClientCacheView hasRecordWithScopedIdentifier:identifierCopy];

    if (v9)
    {
      [(NSMutableDictionary *)self->_storedClientRecords setObject:MEMORY[0x1E695E118] forKeyedSubscript:identifierCopy];
      v7 = 1;
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [(NSMutableDictionary *)self->_storedClientRecords setObject:null2 forKeyedSubscript:identifierCopy];

      v7 = 0;
    }
  }

  return v7;
}

- (id)storedClientRecordWithLocalScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_storedClientRecords objectForKeyedSubscript:identifierCopy];
  null = v5;
  if (v5)
  {
    v7 = v5 == MEMORY[0x1E695E118];
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    transactionClientCacheView = [(CPLEngineStore *)self->_store transactionClientCacheView];
    v9 = [transactionClientCacheView recordViewWithScopedIdentifier:identifierCopy];
    synthesizedRecord = [v9 synthesizedRecord];

    if (synthesizedRecord)
    {
      [(NSMutableDictionary *)self->_storedClientRecords setObject:synthesizedRecord forKeyedSubscript:identifierCopy];
      null = synthesizedRecord;
      goto LABEL_12;
    }

    null = [MEMORY[0x1E695DFB0] null];
    [(NSMutableDictionary *)self->_storedClientRecords setObject:null forKeyedSubscript:identifierCopy];
    goto LABEL_11;
  }

  null2 = [MEMORY[0x1E695DFB0] null];

  if (null == null2)
  {
LABEL_11:

    null = 0;
  }

LABEL_12:

  return null;
}

- (BOOL)checkScopeIdentifier:(id)identifier
{
  v36 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  validScopeIdentifiers = self->_validScopeIdentifiers;
  if (!validScopeIdentifiers || ([(NSMutableSet *)validScopeIdentifiers containsObject:identifierCopy]& 1) == 0)
  {
    invalidScopeIdentifiers = self->_invalidScopeIdentifiers;
    if (invalidScopeIdentifiers && ([(NSMutableSet *)invalidScopeIdentifiers containsObject:identifierCopy]& 1) != 0)
    {
      v6 = 0;
      goto LABEL_32;
    }

    v8 = [(CPLEngineScopeStorage *)self->_scopes scopeWithIdentifier:identifierCopy];
    if (v8 && ((-[CPLEngineScopeStorage flagsForScope:](self->_scopes, "flagsForScope:", v8), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 valueForFlag:16], v11 = objc_msgSend(v9, "valueForFlag:", 36), v12 = v10 | v11, v9, (v12 & 1) == 0) || (v11 & 1) != 0))
    {
      if ((v12 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      mainScopeIdentifier = [(CPLEngineStore *)self->_store mainScopeIdentifier];
      v14 = [identifierCopy isEqualToString:mainScopeIdentifier];

      if (v14)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v15 = __CPLSessionOSLogDomain_16325();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            mainScopeIdentifier2 = [(CPLEngineStore *)self->_store mainScopeIdentifier];
            *buf = 138412290;
            v33 = mainScopeIdentifier2;
            _os_log_impl(&dword_1DC05A000, v15, OS_LOG_TYPE_ERROR, "Client failed to properly re-enable %@ - will do it directly", buf, 0xCu);
          }
        }

        scopes = self->_scopes;
        v31 = 0;
        v18 = [(CPLEngineScopeStorage *)scopes enablePrimaryScopeWithError:&v31];
        v19 = v31;
        v20 = v19;
        if (v18)
        {

LABEL_18:
          v21 = self->_validScopeIdentifiers;
          if (v21)
          {
            [(NSMutableSet *)v21 addObject:identifierCopy];
          }

          else
          {
            v27 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{identifierCopy, 0}];
            v28 = self->_validScopeIdentifiers;
            self->_validScopeIdentifiers = v27;
          }

          v6 = 1;
LABEL_31:

          goto LABEL_32;
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v22 = __CPLSessionOSLogDomain_16325();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            mainScopeIdentifier3 = [(CPLEngineStore *)self->_store mainScopeIdentifier];
            *buf = 138412546;
            v33 = mainScopeIdentifier3;
            v34 = 2112;
            v35 = v20;
            _os_log_impl(&dword_1DC05A000, v22, OS_LOG_TYPE_ERROR, "Failed to auto-enable %@: %@", buf, 0x16u);
          }
        }
      }
    }

    v24 = self->_invalidScopeIdentifiers;
    if (v24)
    {
      [(NSMutableSet *)v24 addObject:identifierCopy];
    }

    else
    {
      v25 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{identifierCopy, 0}];
      v26 = self->_invalidScopeIdentifiers;
      self->_invalidScopeIdentifiers = v25;
    }

    v6 = 0;
    goto LABEL_31;
  }

  v6 = 1;
LABEL_32:

  v29 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)resourceIdentitiesForRecordWithLocalScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_incomingBatchRecordPerScopedIdentifiers objectForKeyedSubscript:identifierCopy];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_7;
  }

  if ([v5 isDelete])
  {
    v7 = 0;
    goto LABEL_13;
  }

  if (![v6 supportsResources] || !objc_msgSend(v6, "hasChangeType:", 8))
  {
LABEL_7:
    v8 = [(CPLPushSessionTracker *)self storedClientRecordWithLocalScopedIdentifier:identifierCopy];
    v9 = v8;
    if (v8)
    {
      if ([v8 supportsResources])
      {
        v7 = [(CPLPushSessionTracker *)self _resourceIdentitiesFromChange:v9];
      }

      else
      {
        v7 = MEMORY[0x1E695E0F8];
      }
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_13;
  }

  v7 = [(CPLPushSessionTracker *)self _resourceIdentitiesFromChange:v6];
LABEL_13:

  return v7;
}

- (id)enqueuedOrStoredRecordWithLocalScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_incomingBatchRecordPerScopedIdentifiers objectForKeyedSubscript:identifierCopy];
  v6 = v5;
  if (v5)
  {
    if ([v5 isDelete])
    {
      v7 = 0;
      goto LABEL_7;
    }

    v8 = v6;
  }

  else
  {
    v8 = [(CPLPushSessionTracker *)self storedClientRecordWithLocalScopedIdentifier:identifierCopy];
  }

  v7 = v8;
LABEL_7:

  return v7;
}

- (id)_resourceIdentitiesFromChange:(id)change
{
  v20 = *MEMORY[0x1E69E9840];
  resources = [change resources];
  if ([resources count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(resources, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = resources;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          identity = [v10 identity];
          if (identity)
          {
            v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v10, "resourceType")}];
            [v4 setObject:identity forKeyedSubscript:v12];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)knowsClientRecordWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_incomingBatchRecordPerScopedIdentifiers objectForKeyedSubscript:identifierCopy];
  v6 = v5;
  if (v5)
  {
    LODWORD(self) = [v5 isDelete] ^ 1;
  }

  else
  {
    LOBYTE(self) = [(CPLPushSessionTracker *)self hasClientRecordWithLocalScopedIdentifier:identifierCopy];
  }

  return self;
}

- (CPLPushSessionTracker)initWithIncomingBatch:(id)batch store:(id)store error:(id *)error
{
  batchCopy = batch;
  storeCopy = store;
  v25.receiver = self;
  v25.super_class = CPLPushSessionTracker;
  v11 = [(CPLPushSessionTracker *)&v25 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_store, store);
    v13 = [CPLClientCacheBaseView clientCacheBaseViewIDMappingForStore:v12->_store];
    optimisticIDMapping = v12->_optimisticIDMapping;
    v12->_optimisticIDMapping = v13;

    idMapping = [(CPLEngineStore *)v12->_store idMapping];
    realIDMapping = v12->_realIDMapping;
    v12->_realIDMapping = idMapping;

    scopes = [storeCopy scopes];
    scopes = v12->_scopes;
    v12->_scopes = scopes;

    objc_storeStrong(&v12->_incomingBatch, batch);
    if (![(CPLChangeBatch *)v12->_incomingBatch sortBatchWithError:error])
    {
      v23 = 0;
      goto LABEL_6;
    }

    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    storedClientRecords = v12->_storedClientRecords;
    v12->_storedClientRecords = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    storedCloudRecords = v12->_storedCloudRecords;
    v12->_storedCloudRecords = v21;
  }

  v23 = v12;
LABEL_6:

  return v23;
}

+ (BOOL)notifyClientOfStore:(id)store ofStatusChanges:(id)changes error:(id *)error
{
  storeCopy = store;
  changesCopy = changes;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  if ([changesCopy count])
  {
    statusCenter = [storeCopy statusCenter];
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__16455;
    v21 = __Block_byref_object_dispose__16456;
    v22 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __67__CPLPushSessionTracker_notifyClientOfStore_ofStatusChanges_error___block_invoke;
    v13[3] = &unk_1E861E3D0;
    v15 = &v23;
    v10 = statusCenter;
    v14 = v10;
    v16 = &v17;
    [changesCopy enumerateKeysAndObjectsUsingBlock:v13];
    if (error && (v24[3] & 1) == 0)
    {
      *error = v18[5];
    }

    _Block_object_dispose(&v17, 8);
  }

  v11 = *(v24 + 24);
  _Block_object_dispose(&v23, 8);

  return v11;
}

void __67__CPLPushSessionTracker_notifyClientOfStore_ofStatusChanges_error___block_invoke(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = a1[4];
  v10 = 0;
  v7 = [v6 notifyStatusForRecordHasChanged:a3 persist:1 error:&v10];
  v8 = v10;
  v9 = v10;
  *(*(a1[5] + 8) + 24) = v7;
  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
    objc_storeStrong((*(a1[6] + 8) + 40), v8);
  }
}

@end
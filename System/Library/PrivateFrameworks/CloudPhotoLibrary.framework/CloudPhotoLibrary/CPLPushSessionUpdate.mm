@interface CPLPushSessionUpdate
- (BOOL)applyToStore:(id)a3 error:(id *)a4;
- (BOOL)discardFromStore:(id)a3 error:(id *)a4;
- (CPLPushSessionUpdate)initWithCoder:(id)a3;
- (CPLPushSessionUpdate)initWithPushSessionTracker:(id)a3 error:(id *)a4;
- (id)pendingRecordChangeForClientCacheWithLocalScopedIdentifier:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPLPushSessionUpdate

- (id)pendingRecordChangeForClientCacheWithLocalScopedIdentifier:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(NSArray *)self->_deletedRecordScopedIdentifiers containsObject:v4])
  {
    v5 = [CPLRecordChange newDeleteChangeWithScopedIdentifier:v4];
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = self->_updatedRecords;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [v11 scopedIdentifier];
          v13 = [v12 isEqual:v4];

          if (v13)
          {
            v5 = v11;

            goto LABEL_13;
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
  }

LABEL_13:

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)discardFromStore:(id)a3 error:(id *)a4
{
  v6 = a3;
  v26.receiver = self;
  v26.super_class = CPLPushSessionUpdate;
  if ([(CPLChangeSessionUpdate *)&v26 discardFromStore:v6 error:a4])
  {
    v7 = [v6 outgoingResources];
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 1;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__3256;
    v20 = __Block_byref_object_dispose__3257;
    v21 = 0;
    pushContexts = self->_pushContexts;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __47__CPLPushSessionUpdate_discardFromStore_error___block_invoke;
    v12[3] = &unk_1E861C018;
    v14 = &v22;
    v9 = v7;
    v13 = v9;
    v15 = &v16;
    [(NSDictionary *)pushContexts enumerateKeysAndObjectsUsingBlock:v12];
    v10 = *(v23 + 24);
    if (a4 && (v23[3] & 1) == 0)
    {
      *a4 = v17[5];
      v10 = *(v23 + 24);
    }

    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void __47__CPLPushSessionUpdate_discardFromStore_error___block_invoke(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = [a3 uploadIdentifier];
  if (v6)
  {
    v7 = a1[4];
    v8 = *(a1[6] + 8);
    obj = *(v8 + 40);
    v9 = [v7 deleteResourcesToUploadWithUploadIdentifier:v6 error:&obj];
    objc_storeStrong((v8 + 40), obj);
    *(*(a1[5] + 8) + 24) = v9;
    if ((*(*(a1[5] + 8) + 24) & 1) == 0)
    {
      *a4 = 1;
    }
  }
}

- (BOOL)applyToStore:(id)a3 error:(id *)a4
{
  v138 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v128.receiver = self;
  v128.super_class = CPLPushSessionUpdate;
  if ([(CPLChangeSessionUpdate *)&v128 applyToStore:v6 error:a4])
  {
    v96 = [v6 statusCenter];
    v97 = [v6 idMapping];
    v99 = self;
    if ([(NSSet *)self->_unquarantinedRecordScopedIdentifiers count])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v7 = __CPLPushSessionOSLogDomain();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [(NSSet *)v99->_unquarantinedRecordScopedIdentifiers count];
          *buf = 134217984;
          v137 = v8;
          _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "Unquarantining %lu records", buf, 0xCu);
        }
      }

      v88 = v6;
      v9 = [v6 quarantinedRecords];
      v124 = 0u;
      v125 = 0u;
      v126 = 0u;
      v127 = 0u;
      v10 = v99->_unquarantinedRecordScopedIdentifiers;
      v11 = [(NSSet *)v10 countByEnumeratingWithState:&v124 objects:v135 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v125;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v125 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v124 + 1) + 8 * i);
            deletedScopeIdentifiers = v99->_deletedScopeIdentifiers;
            v17 = [v15 scopeIdentifier];
            LOBYTE(deletedScopeIdentifiers) = [(NSSet *)deletedScopeIdentifiers containsObject:v17];

            if ((deletedScopeIdentifiers & 1) == 0 && ([(NSArray *)v9 removeQuarantinedRecordWithScopedIdentifier:v15 notify:0 error:a4]& 1) == 0)
            {

              v6 = v88;
              goto LABEL_39;
            }
          }

          v12 = [(NSSet *)v10 countByEnumeratingWithState:&v124 objects:v135 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      v6 = v88;
    }

    v98 = a4;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v18 = v99;
    v9 = v99->_deletedRecordScopedIdentifiers;
    v19 = [(NSArray *)v9 countByEnumeratingWithState:&v120 objects:v134 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v121;
LABEL_19:
      v22 = 0;
      while (1)
      {
        if (*v121 != v21)
        {
          objc_enumerationMutation(v9);
        }

        v23 = *(*(&v120 + 1) + 8 * v22);
        v24 = v18->_deletedScopeIdentifiers;
        v25 = [v23 scopeIdentifier];
        LOBYTE(v24) = [(NSSet *)v24 containsObject:v25];

        if ((v24 & 1) == 0)
        {
          if (![v97 addDeleteEventForRecordWithLocalScopedIdentifier:v23 direction:1 error:v98])
          {
            break;
          }

          v18 = v99;
          if (![v96 discardNotificationForRecordWithScopedIdentifier:v23 error:v98])
          {
            break;
          }
        }

        if (v20 == ++v22)
        {
          v20 = [(NSArray *)v9 countByEnumeratingWithState:&v120 objects:v134 count:16];
          if (v20)
          {
            goto LABEL_19;
          }

          goto LABEL_27;
        }
      }

LABEL_39:

      v34 = objc_alloc_init(CPLChangeBatch);
    }

    else
    {
LABEL_27:

      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      v26 = v18->_addedRecords;
      v27 = [(NSArray *)v26 countByEnumeratingWithState:&v116 objects:v133 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v117;
        while (2)
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v117 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = [*(*(&v116 + 1) + 8 * j) scopedIdentifier];
            v32 = v18->_deletedScopeIdentifiers;
            v33 = [(CPLRecordPushContext *)v31 scopeIdentifier];
            LOBYTE(v32) = [(NSSet *)v32 containsObject:v33];

            if ((v32 & 1) == 0 && ([v97 addAddEventForRecordWithLocalScopedIdentifier:v31 direction:1 error:v98] & 1) == 0)
            {

              LODWORD(v31) = 0;
              goto LABEL_44;
            }
          }

          v28 = [(NSArray *)v26 countByEnumeratingWithState:&v116 objects:v133 count:16];
          if (v28)
          {
            continue;
          }

          break;
        }
      }

      LODWORD(v31) = 1;
LABEL_44:

      v34 = objc_alloc_init(CPLChangeBatch);
      if (!v31)
      {
        goto LABEL_41;
      }

      if (__CPLPushSessionAutoCancelSync == 1)
      {
        v87 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      }

      else
      {
        v87 = 0;
      }

      v89 = v6;
      v90 = v34;
      v92 = [v6 pushRepository];
      v91 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v112 = 0u;
      v113 = 0u;
      v114 = 0u;
      v115 = 0u;
      v37 = v18->_diffBatch;
      v38 = [(CPLChangeBatch *)v37 countByEnumeratingWithState:&v112 objects:v132 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = 0;
        obj = *v113;
        while (2)
        {
          for (k = 0; k != v39; ++k)
          {
            if (*v113 != obj)
            {
              objc_enumerationMutation(v37);
            }

            v42 = *(*(&v112 + 1) + 8 * k);
            v43 = [v42 changeType];
            v44 = [v42 scopedIdentifier];
            v45 = v18->_deletedScopeIdentifiers;
            v46 = [v44 scopeIdentifier];
            LOBYTE(v45) = [(NSSet *)v45 containsObject:v46];

            if ((v45 & 1) == 0)
            {
              [(CPLChangeBatch *)v90 addRecord:v42];
              v47 = [v44 scopeIdentifier];
              [v91 addObject:v47];

              v31 = [(NSDictionary *)v18->_pushContexts objectForKeyedSubscript:v44];
              if (!v31)
              {
                v31 = [[CPLRecordPushContext alloc] initWithUploadIdentifier:0 flags:0 priority:0];
              }

              if ([(NSSet *)v18->_unquarantinedRecordScopedIdentifiers containsObject:v44])
              {
                [v42 _setShouldNotTrustCloudCache:1];
              }

              if (![v92 storeChange:v42 pushContext:v31 error:v98])
              {

                LOBYTE(v31) = 0;
                v6 = v89;
                v34 = v90;
                goto LABEL_41;
              }

              if (__CPLPushSessionAutoCancelSync == 1 && [v42 supportsResources] && ((objc_msgSend(v42, "isDelete") & 1) != 0 || objc_msgSend(v42, "hasChangeType:", 8)))
              {
                [v87 addObject:v44];
              }
            }

            v40 |= v43;
          }

          v39 = [(CPLChangeBatch *)v37 countByEnumeratingWithState:&v112 objects:v132 count:16];
          if (v39)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v40 = 0;
      }

      v48 = v98;
      v49 = v91;
      v6 = v89;
      if (__CPLPushSessionAutoCancelSync == 1 && [v87 count])
      {
        v50 = [v92 storedExtractedBatch];
        if (v50)
        {
          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v93 = v50;
          obja = [v50 batch];
          v51 = [obja countByEnumeratingWithState:&v108 objects:v131 count:16];
          if (v51)
          {
            v52 = v51;
            v53 = *v109;
            while (2)
            {
              for (m = 0; m != v52; ++m)
              {
                if (*v109 != v53)
                {
                  objc_enumerationMutation(obja);
                }

                v55 = *(*(&v108 + 1) + 8 * m);
                v56 = [v55 scopedIdentifier];
                v57 = v99->_deletedScopeIdentifiers;
                v58 = [v56 scopeIdentifier];
                LOBYTE(v57) = [(NSSet *)v57 containsObject:v58];

                if ((v57 & 1) == 0)
                {
                  if ([v55 supportsResources])
                  {
                    if ([v55 hasChangeType:8])
                    {
                      v59 = [v55 scopedIdentifier];
                      v60 = [v87 containsObject:v59];

                      if (v60)
                      {
                        if ((_CPLSilentLogging & 1) == 0)
                        {
                          v61 = __CPLPushSessionOSLogDomain();
                          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138412290;
                            v137 = v55;
                            _os_log_impl(&dword_1DC05A000, v61, OS_LOG_TYPE_DEFAULT, "Relaunching sync session because currently uploading %@ has been overwritten", buf, 0xCu);
                          }
                        }

                        v62 = [v89 engineLibrary];
                        v63 = [v62 syncManager];
                        [v63 cancelCurrentSyncSession];

                        goto LABEL_90;
                      }
                    }
                  }
                }
              }

              v52 = [obja countByEnumeratingWithState:&v108 objects:v131 count:16];
              if (v52)
              {
                continue;
              }

              break;
            }
          }

LABEL_90:

          v48 = v98;
          v49 = v91;
          v50 = v93;
        }
      }

      if ([v49 count])
      {
        v64 = [v89 scopes];
        v104 = 0u;
        v105 = 0u;
        v106 = 0u;
        v107 = 0u;
        v65 = v49;
        v66 = [v65 countByEnumeratingWithState:&v104 objects:v130 count:16];
        if (v66)
        {
          v67 = v66;
          v68 = *v105;
          while (2)
          {
            for (n = 0; n != v67; ++n)
            {
              if (*v105 != v68)
              {
                objc_enumerationMutation(v65);
              }

              v70 = [v64 scopeWithIdentifier:*(*(&v104 + 1) + 8 * n)];
              if (v70 && ([v64 setScopeHasChangesToPushToTransport:v70 changeTypes:v40 error:v98] & 1) == 0)
              {

                LOBYTE(v31) = 0;
                v6 = v89;
                v34 = v90;
                goto LABEL_41;
              }
            }

            v67 = [v65 countByEnumeratingWithState:&v104 objects:v130 count:16];
            if (v67)
            {
              continue;
            }

            break;
          }
        }

        v6 = v89;
        v48 = v98;
      }

      v71 = [[CPLSimpleMergeHelper alloc] initWithEngineStore:v6];
      v34 = v90;
      v72 = [(CPLSimpleMergeHelper *)v71 mergerForBatch:v90 error:v48];
      if (v72)
      {
        v73 = v72;
        v74 = [v72 mergeConflictsWithError:v48];

        if (v74)
        {
          if (!-[CPLChangeBatch count](v90, "count") || ([v6 quarantinedRecords], v75 = objc_claimAutoreleasedReturnValue(), v76 = objc_msgSend(v75, "resetRejectedRecordsWithError:", v48), v75, v76))
          {
            recordWithStatusChangesToNotify = v99->_recordWithStatusChangesToNotify;
            if (!recordWithStatusChangesToNotify || [CPLPushSessionTracker notifyClientOfStore:v6 ofStatusChanges:recordWithStatusChangesToNotify error:v48])
            {
              if ([(NSArray *)v99->_revertedChanges count])
              {
                v78 = [v6 revertRecords];
                v100 = 0u;
                v101 = 0u;
                v102 = 0u;
                v103 = 0u;
                v79 = v99->_revertedChanges;
                v80 = [(NSArray *)v79 countByEnumeratingWithState:&v100 objects:v129 count:16];
                if (v80)
                {
                  v81 = v80;
                  v82 = v6;
                  v83 = *v101;
                  while (2)
                  {
                    for (ii = 0; ii != v81; ++ii)
                    {
                      if (*v101 != v83)
                      {
                        objc_enumerationMutation(v79);
                      }

                      v85 = *(*(&v100 + 1) + 8 * ii);
                      v86 = [v85 scopedIdentifier];
                      LODWORD(v85) = [v78 addRecordsToRevertWithLocalScopedIdentifier:v86 class:objc_msgSend(v85 error:{"recordClass"), v98}];

                      if (!v85)
                      {
                        LOBYTE(v31) = 0;
                        goto LABEL_122;
                      }
                    }

                    v81 = [(NSArray *)v79 countByEnumeratingWithState:&v100 objects:v129 count:16];
                    if (v81)
                    {
                      continue;
                    }

                    break;
                  }

                  LOBYTE(v31) = 1;
LABEL_122:
                  v6 = v82;
                }

                else
                {
                  LOBYTE(v31) = 1;
                }
              }

              else
              {
                LOBYTE(v31) = 1;
              }

              goto LABEL_41;
            }
          }
        }
      }

      else
      {
      }
    }

    LOBYTE(v31) = 0;
LABEL_41:

    goto LABEL_42;
  }

  LOBYTE(v31) = 0;
LABEL_42:

  v35 = *MEMORY[0x1E69E9840];
  return v31;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CPLPushSessionUpdate;
  v4 = a3;
  [(CPLChangeSessionUpdate *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_pushContexts forKey:{@"pc", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_diffBatch forKey:@"b"];
  [v4 encodeObject:self->_deletedScopeIdentifiers forKey:@"dsi"];
  [v4 encodeObject:self->_addedRecords forKey:@"n"];
  [v4 encodeObject:self->_updatedRecords forKey:@"u"];
  [v4 encodeObject:self->_deletedRecordScopedIdentifiers forKey:@"d"];
  [v4 encodeObject:self->_unquarantinedRecordScopedIdentifiers forKey:@"q"];
  [v4 encodeObject:self->_recordWithStatusChangesToNotify forKey:@"notify"];
  [v4 encodeObject:self->_revertedChanges forKey:@"reverted"];
}

- (CPLPushSessionUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = CPLPushSessionUpdate;
  v5 = [(CPLChangeSessionUpdate *)&v31 initWithCoder:v4];
  if (v5)
  {
    if (initWithCoder__onceToken != -1)
    {
      dispatch_once(&initWithCoder__onceToken, &__block_literal_global_3285);
    }

    v6 = [v4 decodeObjectOfClasses:initWithCoder__pushContextsClasses forKey:@"pc"];
    pushContexts = v5->_pushContexts;
    v5->_pushContexts = v6;

    if (!v5->_pushContexts)
    {
      v8 = [CPLRecordPushContext pushContextsFromStoredUploadIdentifiersInCoder:v4 key:@"ul"];
      v9 = v5->_pushContexts;
      v5->_pushContexts = v8;
    }

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"b"];
    diffBatch = v5->_diffBatch;
    v5->_diffBatch = v10;

    v12 = [v4 decodeObjectOfClasses:initWithCoder__deletedScopeIdentifiersClasses forKey:@"dsi"];
    deletedScopeIdentifiers = v5->_deletedScopeIdentifiers;
    v5->_deletedScopeIdentifiers = v12;

    v14 = [v4 decodeObjectOfClasses:initWithCoder__recordsClasses forKey:@"n"];
    addedRecords = v5->_addedRecords;
    v5->_addedRecords = v14;

    v16 = [v4 decodeObjectOfClasses:initWithCoder__recordsClasses forKey:@"u"];
    updatedRecords = v5->_updatedRecords;
    v5->_updatedRecords = v16;

    v18 = [v4 decodeObjectOfClasses:initWithCoder__deletedIdentifiersClasses forKey:@"d"];
    deletedRecordScopedIdentifiers = v5->_deletedRecordScopedIdentifiers;
    v5->_deletedRecordScopedIdentifiers = v18;

    v20 = [v4 decodeObjectOfClasses:initWithCoder__unquarantinedRecordIdentifiersClasses forKey:@"q"];
    unquarantinedRecordScopedIdentifiers = v5->_unquarantinedRecordScopedIdentifiers;
    v5->_unquarantinedRecordScopedIdentifiers = v20;

    v22 = [CPLScopedIdentifier scopedIdentifiersFromArrayOfUnknownIdentifiers:v5->_deletedRecordScopedIdentifiers];
    v23 = v5->_deletedRecordScopedIdentifiers;
    v5->_deletedRecordScopedIdentifiers = v22;

    v24 = [CPLScopedIdentifier scopedIdentifiersFromSetOfUnknownIdentifiers:v5->_unquarantinedRecordScopedIdentifiers];
    v25 = v5->_unquarantinedRecordScopedIdentifiers;
    v5->_unquarantinedRecordScopedIdentifiers = v24;

    v26 = [v4 decodeObjectOfClasses:initWithCoder__recordWithStatusChangesToNotifyClasses forKey:@"notify"];
    recordWithStatusChangesToNotify = v5->_recordWithStatusChangesToNotify;
    v5->_recordWithStatusChangesToNotify = v26;

    v28 = [v4 decodeObjectOfClasses:initWithCoder__recordsClasses forKey:@"reverted"];
    revertedChanges = v5->_revertedChanges;
    v5->_revertedChanges = v28;
  }

  return v5;
}

uint64_t __38__CPLPushSessionUpdate_initWithCoder___block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = [v0 setWithObjects:{v1, v2, objc_opt_class(), 0}];
  v4 = initWithCoder__pushContextsClasses;
  initWithCoder__pushContextsClasses = v3;

  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = initWithCoder__deletedIdentifiersClasses;
  initWithCoder__deletedIdentifiersClasses = v8;

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = initWithCoder__deletedScopeIdentifiersClasses;
  initWithCoder__deletedScopeIdentifiersClasses = v12;

  v14 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
  v17 = initWithCoder__recordsClasses;
  initWithCoder__recordsClasses = v16;

  v18 = MEMORY[0x1E695DFD8];
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = [v18 setWithObjects:{v19, v20, objc_opt_class(), 0}];
  v22 = initWithCoder__unquarantinedRecordIdentifiersClasses;
  initWithCoder__unquarantinedRecordIdentifiersClasses = v21;

  v23 = MEMORY[0x1E695DFD8];
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = [v23 setWithObjects:{v24, v25, objc_opt_class(), 0}];
  v27 = initWithCoder__recordWithStatusChangesToNotifyClasses;
  initWithCoder__recordWithStatusChangesToNotifyClasses = v26;

  return MEMORY[0x1EEE66BB8](v26, v27);
}

- (CPLPushSessionUpdate)initWithPushSessionTracker:(id)a3 error:(id *)a4
{
  v69 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v57 = [v6 resourcesToUpload];
  v7 = [v6 store];
  v56 = [v7 outgoingResources];

  v53 = v6;
  v8 = [v6 diffedBatch];
  v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v62 objects:v68 count:16];
  if (v10)
  {
    v11 = v10;
    v51 = a2;
    v52 = a4;
    v58 = 0;
    v12 = *v63;
    v55 = v9;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v63 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v62 + 1) + 8 * i);
        v15 = [v14 _pushContext];
        if (!v15)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v48 = __CPLGenericOSLogDomain();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v67 = v14;
              _os_log_impl(&dword_1DC05A000, v48, OS_LOG_TYPE_ERROR, "%@ should have a push context", buf, 0xCu);
            }
          }

          v49 = [MEMORY[0x1E696AAA8] currentHandler];
          v50 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLChangeSessionUpdate.m"];
          [v49 handleFailureInMethod:v51 object:self file:v50 lineNumber:104 description:{@"%@ should have a push context", v14}];

          abort();
        }

        v16 = v15;
        v17 = [v14 scopedIdentifier];
        if ([v14 supportsResources] && objc_msgSend(v14, "hasChangeType:", 8))
        {
          v18 = [v57 objectForKeyedSubscript:v17];
          if (v18)
          {
            v19 = [v14 isAssetChange];
            v20 = [v16 pushContextAddingUploadIdentifier];

            [v14 _setPushContext:v20];
            v21 = [v20 uploadIdentifier];
            v61 = v58;
            LODWORD(v19) = [v56 storeResourcesToUpload:v18 withUploadIdentifier:v21 shouldCheckResources:v19 error:&v61];
            v22 = v61;

            if (!v19)
            {

              if (v52)
              {
                v23 = v22;
                v24 = 0;
                *v52 = v22;
              }

              else
              {
                v24 = 0;
              }

              v25 = v53;
              v45 = self;
              v9 = v55;
              goto LABEL_25;
            }

            v16 = v20;
            v58 = v22;
            v9 = v55;
          }
        }

        [v9 setObject:v16 forKeyedSubscript:v17];
      }

      v11 = [obj countByEnumeratingWithState:&v62 objects:v68 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v58 = 0;
  }

  v25 = v53;
  v26 = [v53 store];
  v60.receiver = self;
  v60.super_class = CPLPushSessionUpdate;
  v27 = [(CPLChangeSessionUpdate *)&v60 initWithStore:v26];

  if (v27)
  {
    v28 = [v9 copy];
    pushContexts = v27->_pushContexts;
    v27->_pushContexts = v28;

    objc_storeStrong(&v27->_diffBatch, v8);
    v30 = [v53 deletedScopeIdentifiers];
    deletedScopeIdentifiers = v27->_deletedScopeIdentifiers;
    v27->_deletedScopeIdentifiers = v30;

    v32 = [v53 addedRecords];
    addedRecords = v27->_addedRecords;
    v27->_addedRecords = v32;

    v34 = [v53 updatedRecords];
    updatedRecords = v27->_updatedRecords;
    v27->_updatedRecords = v34;

    v36 = [v53 deletedRecordScopedIdentifiers];
    deletedRecordScopedIdentifiers = v27->_deletedRecordScopedIdentifiers;
    v27->_deletedRecordScopedIdentifiers = v36;

    v38 = [v53 unquarantinedRecordScopedIdentifiers];
    unquarantinedRecordScopedIdentifiers = v27->_unquarantinedRecordScopedIdentifiers;
    v27->_unquarantinedRecordScopedIdentifiers = v38;

    v40 = [v53 recordWithStatusChangesToNotify];
    recordWithStatusChangesToNotify = v27->_recordWithStatusChangesToNotify;
    v27->_recordWithStatusChangesToNotify = v40;

    v42 = [v53 revertedChanges];
    revertedChanges = v27->_revertedChanges;
    v27->_revertedChanges = v42;

    if (![(NSArray *)v27->_revertedChanges count])
    {
      v44 = v27->_revertedChanges;
      v27->_revertedChanges = 0;
    }
  }

  v45 = v27;
  v24 = v45;
  v22 = v58;
LABEL_25:

  v46 = *MEMORY[0x1E69E9840];
  return v24;
}

@end
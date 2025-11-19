@interface CPLBeforeUploadCheckItem
- (BOOL)_addRelatedRecordWithScopedIdentifierToAdditionalRecords:(id)a3 provider:(id)a4 error:(id *)a5;
- (BOOL)_forAdditionalRecordRule:(id)a3 check:(void *)a4 error:(id *)a5;
- (BOOL)_forRule:(id)a3 check:(void *)a4 error:(id *)a5;
- (BOOL)_serverResourcesMatches:(id)a3;
- (BOOL)checkBeforeUploadWithError:(id *)a3;
- (BOOL)dropGeneratingDerivativesIfPossibleWithRecordOnServer:(id)a3 error:(id *)a4;
- (BOOL)isTrashedOrDeletedAsset;
- (BOOL)needsToGenerateDerivatives;
- (BOOL)prepareWithError:(id *)a3;
- (BOOL)rejectChangeWithReason:(id)a3 error:(id *)a4;
- (BOOL)requestFetchForRule:(id)a3 error:(id *)a4;
- (BOOL)requestFetchOfRecordWithScopedIdentifier:(id)a3 forRule:(id)a4 error:(id *)a5;
- (CPLBeforeUploadCheckItem)initWithChange:(id)a3 checkItems:(id)a4;
- (CPLBeforeUploadCheckItems)items;
- (CPLFingerprintContext)fingerprintContext;
- (CPLRecordTarget)target;
- (id)description;
- (unint64_t)estimatedResourceUploadSize;
- (void)_bumpPushRepositoryPriority:(unint64_t)a3 reason:(id)a4;
- (void)_dropChangeWithReason:(id)a3;
- (void)dropChangeWithReason:(id)a3;
- (void)dropResourceChangeWithReason:(id)a3;
- (void)dropSharingChangeWithReason:(id)a3;
- (void)reinjectChangeWithReason:(id)a3;
- (void)updatePushRepositoryPriorityWithRecordOnServer:(id)a3;
@end

@implementation CPLBeforeUploadCheckItem

- (CPLBeforeUploadCheckItems)items
{
  WeakRetained = objc_loadWeakRetained(&self->_items);

  return WeakRetained;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  changeClass = self->_changeClass;
  v5 = [v3 initWithFormat:@"[<%@ %@", changeClass, self->_scopedIdentifier];
  change = self->_change;
  dropReason = self->_dropReason;
  if (change)
  {
    v8 = [CPLRecordChange descriptionForChangeType:[(CPLRecordChange *)change changeType]];
    v9 = v8;
    if (dropReason)
    {
      [v5 appendFormat:@" [%@-R (%@)]", v8, self->_dropReason];
    }

    else
    {
      [v5 appendFormat:@" [%@]", v8, v15];
    }
  }

  else
  {
    [v5 appendFormat:@" [dropped (%@)]", self->_dropReason];
  }

  if ([(NSMutableSet *)self->_rulesForRecordFetch count])
  {
    v10 = [(NSMutableSet *)self->_rulesForRecordFetch allObjects];
    v11 = [v10 componentsJoinedByString:{@", "}];
    [v5 appendFormat:@" [fetch: %@]", v11];
  }

  if ([(NSMutableDictionary *)self->_rulesForOtherRecordFetches count])
  {
    v12 = [(NSMutableDictionary *)self->_rulesForOtherRecordFetches allKeys];
    v13 = [v12 componentsJoinedByString:{@", "}];
    [v5 appendFormat:@" [other: %@]", v13];
  }

  [v5 appendString:@">"];

  return v5;
}

- (unint64_t)estimatedResourceUploadSize
{
  change = self->_change;
  if (!change || ![(CPLRecordChange *)change supportsResources]|| ![(CPLRecordChange *)self->_change hasChangeType:8])
  {
    return 0;
  }

  v4 = self->_change;

  return [(CPLRecordChange *)v4 realUploadResourceSize];
}

- (CPLRecordTarget)target
{
  WeakRetained = objc_loadWeakRetained(&self->_items);
  v4 = [WeakRetained targetMapping];
  v5 = [v4 targetForRecordWithScopedIdentifier:self->_scopedIdentifier];

  if (!v5)
  {
    v6 = objc_loadWeakRetained(&self->_items);
    v7 = [v6 sharingScopeIdentifier];
    if (v7)
    {
      v8 = v7;
      v9 = [(objc_class *)self->_changeClass supportsSharing];

      if (v9)
      {
        v10 = [CPLScopedIdentifier alloc];
        v11 = objc_loadWeakRetained(&self->_items);
        v12 = [v11 sharingScopeIdentifier];
        v13 = [(CPLScopedIdentifier *)self->_scopedIdentifier identifier];
        v14 = [(CPLScopedIdentifier *)v10 initWithScopeIdentifier:v12 identifier:v13];

        v5 = [[CPLRecordTarget alloc] initWithScopedIdentifier:self->_scopedIdentifier otherScopedIdentifier:v14 targetState:0];
        goto LABEL_7;
      }
    }

    else
    {
    }

    v5 = [[CPLRecordTarget alloc] initWithScopedIdentifier:self->_scopedIdentifier];
  }

LABEL_7:

  return v5;
}

- (void)updatePushRepositoryPriorityWithRecordOnServer:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3;
  change = self->_change;
  if (change)
  {
    if (![(CPLRecordChange *)change isAssetChange])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v25 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = self->_change;
          v27 = NSStringFromSelector(a2);
          *buf = 138412546;
          *&buf[4] = v26;
          *&buf[12] = 2112;
          *&buf[14] = v27;
          _os_log_impl(&dword_1DC05A000, v25, OS_LOG_TYPE_ERROR, "%@ should not participate in %@", buf, 0x16u);
        }
      }

      v28 = [MEMORY[0x1E696AAA8] currentHandler];
      v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLBeforeUploadCheckItems.m"];
      v30 = self->_change;
      v31 = NSStringFromSelector(a2);
      [v28 handleFailureInMethod:a2 object:self file:v29 lineNumber:1081 description:{@"%@ should not participate in %@", v30, v31}];

      abort();
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v38 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __75__CPLBeforeUploadCheckItem_updatePushRepositoryPriorityWithRecordOnServer___block_invoke;
    v32[3] = &unk_1E861F648;
    v32[5] = &v33;
    v32[6] = buf;
    v32[4] = self;
    v7 = MEMORY[0x1E128EBA0](v32);
    WeakRetained = objc_loadWeakRetained(&self->_items);
    v9 = [WeakRetained sharingScopeIdentifier];

    if (!v9)
    {
LABEL_20:
      if ((v34[3] & 1) == 0)
      {
        if ([(CPLRecordChange *)self->_change isFullRecord])
        {
          v18 = *(*&buf[8] + 24);
          v19 = @"uploading asset to scope";
          v20 = @"uploading asset to sharing scope";
LABEL_30:
          if (v18)
          {
            v23 = v20;
          }

          else
          {
            v23 = v19;
          }

          (v7)[2](v7, v23);
          goto LABEL_34;
        }

        if ([(CPLRecordChange *)self->_change hasChangeType:8])
        {
          v21 = [(CPLRecordChange *)self->_change resources];
          v22 = [v21 count] == 0;

          if (!v22)
          {
            v18 = *(*&buf[8] + 24);
            v19 = @"uploading new resources for asset to scope";
            v20 = @"uploading new resources for asset to sharing scope";
            goto LABEL_30;
          }
        }

        if (-[CPLRecordChange hasChangeType:](self->_change, "hasChangeType:", 2) && !-[CPLRecordChange inTrash](self->_change, "inTrash") && [v5 inTrash])
        {
          v18 = *(*&buf[8] + 24);
          v19 = @"removing asset from recently deleted in scope";
          v20 = @"removing asset from recently deleted in sharing scope";
          goto LABEL_30;
        }
      }

LABEL_34:

      _Block_object_dispose(&v33, 8);
      _Block_object_dispose(buf, 8);
      goto LABEL_35;
    }

    v10 = [(CPLBeforeUploadCheckItem *)self target];
    if (![(objc_class *)self->_changeClass supportsSharingScopedIdentifier]|| ![(CPLRecordChange *)self->_change hasChangeType:64])
    {
      v17 = [v10 targetState];
      if (v17 <= 3)
      {
        *(*&buf[8] + 24) = 0x1010000u >> (8 * v17);
      }

      goto LABEL_19;
    }

    v11 = self->_change;
    v12 = objc_loadWeakRetained(&self->_items);
    v13 = [v12 sharingScopeIdentifier];
    v14 = [(CPLRecordChange *)v11 isSharedInScopeWithIdentifier:v13];
    *(*&buf[8] + 24) = v14;

    v15 = [v10 targetState];
    if ((v15 - 2) < 2)
    {
      if (*(*&buf[8] + 24))
      {
LABEL_19:

        goto LABEL_20;
      }

      v16 = @"moving record back from sharing scope";
    }

    else if (v15)
    {
      if (v15 != 1 || (*(*&buf[8] + 24) & 1) == 0)
      {
        goto LABEL_19;
      }

      v16 = @"moving record to sharing scope";
    }

    else if (*(*&buf[8] + 24))
    {
      v16 = @"uploading new record to sharing scope";
    }

    else
    {
      v16 = @"uploading new record to scope";
    }

    (v7)[2](v7, v16);
    goto LABEL_19;
  }

LABEL_35:

  v24 = *MEMORY[0x1E69E9840];
}

uint64_t __75__CPLBeforeUploadCheckItem_updatePushRepositoryPriorityWithRecordOnServer___block_invoke(void *a1, uint64_t a2)
{
  *(*(a1[5] + 8) + 24) = 1;
  v2 = *(*(a1[6] + 8) + 24);
  v3 = a1[4];
  if (v2)
  {
    v4 = 3000;
  }

  else
  {
    v4 = 2000;
  }

  return [v3 _bumpPushRepositoryPriority:v4 reason:a2];
}

- (void)_bumpPushRepositoryPriority:(unint64_t)a3 reason:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (self->_change && self->_pushRepositoryPriority < a3)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLCheckOSLogDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        pushRepositoryPriority = self->_pushRepositoryPriority;
        change = self->_change;
        v12 = 134218754;
        v13 = pushRepositoryPriority;
        v14 = 2048;
        v15 = a3;
        v16 = 2112;
        v17 = change;
        v18 = 2112;
        v19 = v6;
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "Moving priority from %lu to %lu for %@ - reason: %@", &v12, 0x2Au);
      }
    }

    self->_pushRepositoryPriority = a3;
    [(CPLBeforeUploadCheckItem *)self _dropChangeWithReason:@"bumping push priority of change"];
    WeakRetained = objc_loadWeakRetained(&self->_items);
    [WeakRetained itemShouldBeReinjectedInPushRepository:self];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)dropGeneratingDerivativesIfPossibleWithRecordOnServer:(id)a3 error:(id *)a4
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (![(CPLRecordChange *)self->_change isAssetChange])
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v44 = v5;
    v19 = [v5 resources];
    v20 = [v19 countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (!v20)
    {
      v46 = 0;
      v22 = 0;
LABEL_54:

      if (self->_needsToGenerateImageDerivatives && ([(CPLResourceTypeSet *)self->_resourcesToGenerateImageDerivatives isEmpty]& v46) == 1)
      {
        self->_needsToGenerateImageDerivatives = 0;
      }

      v5 = v44;
      if (self->_needsToGenerateVideoComplementDerivatives && ([(CPLResourceTypeSet *)self->_resourcesToGenerateVideoComplementDerivatives isEmpty]& v22) == 1)
      {
        self->_needsToGenerateVideoComplementDerivatives = 0;
      }

      goto LABEL_69;
    }

    v21 = v20;
    v46 = 0;
    v22 = 0;
    v23 = *v48;
LABEL_26:
    v24 = 0;
    while (1)
    {
      if (*v48 != v23)
      {
        objc_enumerationMutation(v19);
      }

      v25 = *(*(&v47 + 1) + 8 * v24);
      v26 = [v25 resourceType];
      v27 = v26;
      if (v26 <= 0x1C)
      {
        if (((1 << v26) & 0x102000C0) != 0)
        {
          v22 = 1;
          goto LABEL_46;
        }

        if (((1 << v26) & 0x30000) != 0)
        {
          goto LABEL_41;
        }

        if (v26 == 18)
        {
          if (!self->_needsToGenerateVideoComplementDerivatives || ![(CPLResourceTypeSet *)self->_resourcesToGenerateVideoComplementDerivatives containsResourceType:18])
          {
            goto LABEL_46;
          }

          if (![(CPLBeforeUploadCheckItem *)self _serverResourcesMatches:v25])
          {
            goto LABEL_54;
          }

          resourcesToGenerateVideoComplementDerivatives = self->_resourcesToGenerateVideoComplementDerivatives;
          v29 = 18;
          goto LABEL_45;
        }
      }

      if (v26 - 3 >= 3)
      {
        if (v26 - 1 < 2)
        {
LABEL_41:
          if (!self->_needsToGenerateImageDerivatives || ![(CPLResourceTypeSet *)self->_resourcesToGenerateImageDerivatives containsResourceType:v26])
          {
            goto LABEL_46;
          }

          if (![(CPLBeforeUploadCheckItem *)self _serverResourcesMatches:v25])
          {
            goto LABEL_54;
          }

          resourcesToGenerateVideoComplementDerivatives = self->_resourcesToGenerateImageDerivatives;
          v29 = v27;
LABEL_45:
          [(CPLResourceTypeSet *)resourcesToGenerateVideoComplementDerivatives removeResourceType:v29];
        }
      }

      else
      {
        v46 = 1;
      }

LABEL_46:
      if (v21 == ++v24)
      {
        v21 = [v19 countByEnumeratingWithState:&v47 objects:v55 count:16];
        if (!v21)
        {
          goto LABEL_54;
        }

        goto LABEL_26;
      }
    }
  }

  v6 = [(CPLRecordChange *)self->_change adjustments];
  v7 = v5;
  v8 = [v7 adjustments];
  v9 = v8;
  if (!v6)
  {
    if (v8)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v30 = __CPLCheckOSLogDomain();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          change = self->_change;
          *buf = 138412546;
          v57 = change;
          v58 = 2112;
          v59 = v7;
          v32 = "%@ has no adjustments while server record %@ has. Keeping server version";
          v33 = v30;
          v34 = 22;
LABEL_63:
          _os_log_impl(&dword_1DC05A000, v33, OS_LOG_TYPE_DEFAULT, v32, buf, v34);
          goto LABEL_64;
        }

        goto LABEL_64;
      }
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v30 = __CPLCheckOSLogDomain();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v35 = self->_change;
        *buf = 138412290;
        v57 = v35;
        v32 = "%@ has no adjustments. Keeping server version";
        v33 = v30;
        v34 = 12;
        goto LABEL_63;
      }

LABEL_64:
    }

    [(CPLBeforeUploadCheckItem *)self dropResourceChangeWithReason:@"unadjusted asset with adjusted resources"];

    goto LABEL_72;
  }

  if (v8 && [v6 isEqual:v8])
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v10 = [v7 resources];
    v11 = [v10 countByEnumeratingWithState:&v51 objects:v60 count:16];
    if (v11)
    {
      v12 = v11;
      v41 = v6;
      v42 = v9;
      v43 = v7;
      v13 = 0;
      v45 = 0;
      v14 = *v52;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v52 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v51 + 1) + 8 * i);
          v17 = [v16 resourceType];
          if (v17 <= 0x1C)
          {
            if (((1 << v17) & 0x210E000) != 0)
            {
              if ([(CPLBeforeUploadCheckItem *)self _serverResourcesMatches:v16])
              {

                v36 = v7;
                v38 = v41;
                v37 = v42;
                goto LABEL_66;
              }
            }

            else if (((1 << v17) & 0x102000C0) != 0)
            {
              v13 = 1;
            }

            else if (((1 << v17) & 0x38) != 0)
            {
              v45 = 1;
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v51 objects:v60 count:16];
      }

      while (v12);

      v38 = v41;
      if (self->_needsToGenerateImageDerivatives & v45)
      {
        self->_needsToGenerateImageDerivatives = 0;
      }

      v18 = self->_needsToGenerateVideoComplementDerivatives & v13;
      v36 = v43;
      v37 = v42;
      if (v18)
      {
        self->_needsToGenerateVideoComplementDerivatives = 0;
      }

LABEL_66:

      goto LABEL_69;
    }
  }

LABEL_69:
  if (!self->_needsToGenerateImageDerivatives && !self->_needsToGenerateVideoComplementDerivatives)
  {
    [(CPLBeforeUploadCheckItem *)self dropResourceChangeWithReason:@"record already exists on server with the proper derivatives"];
  }

LABEL_72:

  v39 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)_serverResourcesMatches:(id)a3
{
  v4 = a3;
  v5 = -[CPLRecordChange resourceForType:](self->_change, "resourceForType:", [v4 resourceType]);
  v6 = v5;
  if (v5)
  {
    v7 = [v5 identity];
    v8 = [v7 fingerPrint];

    v9 = [v4 identity];
    v10 = [v9 fingerPrint];

    v11 = v8 && v10 && ([v8 isEqual:v10] & 1) != 0 || (v8 | v10) == 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)rejectChangeWithReason:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!self->_change)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v14 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        change = self->_change;
        *buf = 138412290;
        v21 = change;
        _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_ERROR, "Trying to reject already rejected or dropped %@", buf, 0xCu);
      }
    }

    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLBeforeUploadCheckItems.m"];
    [v16 handleFailureInMethod:a2 object:self file:v17 lineNumber:871 description:{@"Trying to reject already rejected or dropped %@", self->_change}];

    abort();
  }

  v8 = v7;
  [(CPLBeforeUploadCheckItem *)self _dropChangeWithReason:@"rejected"];
  v18 = @"CPLErrorRejectedReasonKey";
  v19 = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v10 = [CPLErrors cplErrorWithCode:18 underlyingError:0 userInfo:v9 description:@"%@", v8];

  if (a4)
  {
    v11 = v10;
    *a4 = v10;
  }

  v12 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)reinjectChangeWithReason:(id)a3
{
  if (self->_change)
  {
    v5 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_items);
    [WeakRetained itemShouldBeReinjectedInPushRepository:self];

    [(CPLBeforeUploadCheckItem *)self dropChangeWithReason:v5];
  }
}

- (void)dropSharingChangeWithReason:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  change = self->_change;
  if (change && [(CPLRecordChange *)change hasChangeType:64])
  {
    if (![(CPLRecordChange *)self->_change supportsSharing])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v11 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = self->_change;
          *buf = 138412290;
          v16 = v12;
          _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_ERROR, "Trying to drop sharing change for unsupported %@", buf, 0xCu);
        }
      }

      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLBeforeUploadCheckItems.m"];
      [v13 handleFailureInMethod:a2 object:self file:v14 lineNumber:847 description:{@"Trying to drop sharing change for unsupported %@", self->_change}];

      abort();
    }

    v7 = [(CPLRecordChange *)self->_change changeType];
    if (!v7)
    {
      v7 = [(CPLRecordChange *)self->_change fullChangeTypeForFullRecord];
    }

    if (v7 == 64)
    {
      [(CPLBeforeUploadCheckItem *)self dropChangeWithReason:v5];
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v8 = __CPLCheckOSLogDomain();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = self->_change;
          *buf = 138412546;
          v16 = v9;
          v17 = 2112;
          v18 = v5;
          _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEFAULT, "Dropping sharing change for %@ - reason: %@", buf, 0x16u);
        }
      }

      [(CPLRecordChange *)self->_change setChangeType:v7 & 0xFFFFFFFFFFFFFFBFLL];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)dropChangeWithReason:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_change)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLCheckOSLogDomain();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        change = self->_change;
        v8 = 138412546;
        v9 = change;
        v10 = 2112;
        v11 = v4;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "Dropping %@ - reason: %@", &v8, 0x16u);
      }
    }

    [(CPLBeforeUploadCheckItem *)self _dropChangeWithReason:v4];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_dropChangeWithReason:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!self->_change)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        changeClass = self->_changeClass;
        *buf = 138412290;
        v16 = changeClass;
        _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "Trying to drop an already dropped %@", buf, 0xCu);
      }
    }

    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLBeforeUploadCheckItems.m"];
    [v12 handleFailureInMethod:a2 object:self file:v13 lineNumber:828 description:{@"Trying to drop an already dropped %@", self->_changeClass}];

    abort();
  }

  v14 = v6;
  objc_storeStrong(&self->_dropReason, a3);
  *&self->_needsToGenerateImageDerivatives = 0;
  if ([(CPLRecordChange *)self->_change supportsResources]&& [(CPLRecordChange *)self->_change hasChangeType:8])
  {
    WeakRetained = objc_loadWeakRetained(&self->_items);
    [WeakRetained itemWillDropResourceChange:self];
  }

  change = self->_change;
  self->_change = 0;

  v9 = *MEMORY[0x1E69E9840];
}

- (void)dropResourceChangeWithReason:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  change = self->_change;
  if (change && [(CPLRecordChange *)change supportsResources]&& [(CPLRecordChange *)self->_change hasChangeType:8])
  {
    v7 = [(CPLRecordChange *)self->_change changeType];
    if (!v7)
    {
      v7 = [(CPLRecordChange *)self->_change fullChangeTypeForFullRecord];
    }

    if (v7 == 8)
    {
      [(CPLBeforeUploadCheckItem *)self dropChangeWithReason:v5];
    }

    else
    {
      objc_storeStrong(&self->_dropReason, a3);
      if ((_CPLSilentLogging & 1) == 0)
      {
        v8 = __CPLCheckOSLogDomain();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = self->_change;
          v12 = 138412546;
          v13 = v9;
          v14 = 2112;
          v15 = v5;
          _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEFAULT, "Dropping resource change for %@ - reason: %@", &v12, 0x16u);
        }
      }

      [(CPLRecordChange *)self->_change setChangeType:v7 & 0xFFFFFFFFFFFFFFF7];
      *&self->_needsToGenerateImageDerivatives = 0;
      WeakRetained = objc_loadWeakRetained(&self->_items);
      [WeakRetained itemWillDropResourceChange:self];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)requestFetchOfRecordWithScopedIdentifier:(id)a3 forRule:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (v9 != @"CheckRuleDisabled")
  {
    WeakRetained = objc_loadWeakRetained(&self->_items);
    v11 = [WeakRetained requestFetchOfRecordWithScopedIdentifier:v8 forItem:self rule:v9 error:a5];

    if (!v11)
    {
      v15 = 0;
      goto LABEL_8;
    }

    rulesForOtherRecordFetches = self->_rulesForOtherRecordFetches;
    if (!rulesForOtherRecordFetches)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v14 = self->_rulesForOtherRecordFetches;
      self->_rulesForOtherRecordFetches = v13;

      rulesForOtherRecordFetches = self->_rulesForOtherRecordFetches;
    }

    [(NSMutableDictionary *)rulesForOtherRecordFetches setObject:v8 forKeyedSubscript:v9];
  }

  v15 = 1;
LABEL_8:

  return v15;
}

- (BOOL)requestFetchForRule:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6 == @"CheckRuleDisabled")
  {
    v8 = 1;
  }

  else
  {
    rulesForRecordFetch = self->_rulesForRecordFetch;
    if (rulesForRecordFetch)
    {
      v8 = 1;
    }

    else
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v10 = self->_rulesForRecordFetch;
      self->_rulesForRecordFetch = v9;

      WeakRetained = objc_loadWeakRetained(&self->_items);
      v12 = [(CPLRecordChange *)self->_change scopedIdentifier];
      v8 = [WeakRetained requestFetchOfRecordWithScopedIdentifier:v12 forItem:self rule:v6 error:a4];

      rulesForRecordFetch = self->_rulesForRecordFetch;
    }

    [(NSMutableSet *)rulesForRecordFetch addObject:v6];
  }

  return v8;
}

- (BOOL)checkBeforeUploadWithError:(id *)a3
{
  if (![(CPLBeforeUploadCheckItem *)self hasRequestedRecordFetch])
  {
    goto LABEL_22;
  }

  if ([(CPLRecordChange *)self->_change isDelete])
  {
    WeakRetained = objc_loadWeakRetained(&self->_items);
    v6 = [WeakRetained transportHasRecordWithScopedIdentifier:self->_scopedIdentifier];

    change = self->_change;
    if (v6)
    {
      [(CPLRecordChange *)change setRecordChangeData:0];
      [(CPLRecordChange *)self->_change setSharingRecordChangeData:0];
    }

    else
    {
      self->_change = 0;
    }

LABEL_22:
    v10 = 0;
    goto LABEL_23;
  }

  v38 = 0;
  v8 = [(CPLBeforeUploadCheckItem *)self _forRule:@"FullRecordAlreadyOnServer" check:CPLUploadCheckRuleFullRecordAlreadyOnServerFunction error:&v38];
  v9 = v38;
  v10 = v9;
  if (!v8)
  {
    goto LABEL_31;
  }

  v37 = v9;
  v11 = [(CPLBeforeUploadCheckItem *)self _forRule:@"DropSparseResources" check:CPLUploadCheckRuleDropSparseResourcesFunction error:&v37];
  v12 = v37;

  if (!v11)
  {
    goto LABEL_28;
  }

  v36 = v12;
  v13 = [(CPLBeforeUploadCheckItem *)self _forRule:@"OnlyUploadAddedResources" check:CPLUploadCheckRuleOnlyUploadAddedResourcesFunction error:&v36];
  v10 = v36;

  if (!v13)
  {
    goto LABEL_31;
  }

  v35 = v10;
  v14 = [(CPLBeforeUploadCheckItem *)self _forAdditionalRecordRule:@"CopyDerivativesFromSource" check:CPLUploadCheckRuleCopyDerivativesFromSourceFunction error:&v35];
  v12 = v35;

  if (!v14)
  {
    goto LABEL_28;
  }

  v34 = v12;
  v15 = [(CPLBeforeUploadCheckItem *)self _forRule:@"DontTrustCloudCache" check:CPLUploadCheckRuleDontTrustCloudCacheFunction error:&v34];
  v10 = v34;

  if (!v15)
  {
    goto LABEL_31;
  }

  if ((self->_ruleGroups & 2) != 0)
  {
    v33 = v10;
    v16 = [(CPLBeforeUploadCheckItem *)self _forRule:@"ForwardCompatibility" check:CPLUploadCheckRuleForwardCompatibilityFunction error:&v33];
    v12 = v33;

    if (!v16)
    {
      goto LABEL_28;
    }

    if ((self->_ruleGroups & 2) != 0)
    {
      v32 = v12;
      v24 = [(CPLBeforeUploadCheckItem *)self _forRule:@"AvoidGeneratingDerivatives" check:CPLUploadCheckRuleAvoidGeneratingDerivativesFunction error:&v32];
      v10 = v32;

      if (!v24)
      {
        goto LABEL_31;
      }

      if ((self->_ruleGroups & 2) == 0)
      {
        goto LABEL_14;
      }

      v31 = v10;
      v25 = [(CPLBeforeUploadCheckItem *)self _forRule:@"AvoidAccidentalUnshare" check:CPLUploadCheckRuleAvoidAccidentalUnshareFunction error:&v31];
      v12 = v31;

      if (!v25)
      {
        goto LABEL_28;
      }
    }

    v10 = v12;
  }

LABEL_14:
  v17 = v10;
  v30 = v10;
  v18 = [(CPLBeforeUploadCheckItem *)self _forRule:@"UpdateRecordTargetForSharingChange" check:CPLUploadCheckRuleUpdateRecordTargetForSharingChangeFunction error:&v30];
  v10 = v30;

  if (!v18)
  {
    goto LABEL_31;
  }

  if ((self->_ruleGroups & 2) == 0)
  {
    goto LABEL_18;
  }

  v29 = v10;
  v19 = [(CPLBeforeUploadCheckItem *)self _forRule:@"UpdateRecordTargetDuringResetSync" check:CPLUploadCheckRuleUpdateRecordTargetDuringResetSyncFunction error:&v29];
  v12 = v29;

  if (v19)
  {
    v10 = v12;
LABEL_18:
    v20 = v10;
    v28 = v10;
    v21 = [(CPLBeforeUploadCheckItem *)self _forRule:@"EnsureRelatedRecordIsShared" check:CPLUploadCheckRuleEnsureRelatedRecordIsSharedFunction error:&v28];
    v10 = v28;

    if (v21)
    {
      if ((self->_ruleGroups & 8) == 0)
      {
LABEL_23:
        v22 = 1;
        goto LABEL_24;
      }

      v27 = v10;
      v22 = [(CPLBeforeUploadCheckItem *)self _forRule:@"UpdatePushRepositoryPriorityWhenOverQuota" check:CPLUploadCheckRuleUpdatePushRepositoryPriorityWhenOverQuotaFunction error:&v27];
      v12 = v27;

      goto LABEL_29;
    }

LABEL_31:
    v22 = 0;
    if (!a3)
    {
      goto LABEL_24;
    }

    goto LABEL_32;
  }

LABEL_28:
  v22 = 0;
LABEL_29:
  v10 = v12;
  if (!a3)
  {
    goto LABEL_24;
  }

LABEL_32:
  if (!v22)
  {
    v26 = v10;
    v22 = 0;
    *a3 = v10;
  }

LABEL_24:

  return v22;
}

- (BOOL)_forAdditionalRecordRule:(id)a3 check:(void *)a4 error:(id *)a5
{
  if (!self->_change)
  {
    return 1;
  }

  v8 = [(NSMutableDictionary *)self->_rulesForOtherRecordFetches objectForKey:a3];
  if (v8)
  {
    WeakRetained = objc_loadWeakRetained(&self->_items);
    v10 = [WeakRetained recordFromTransportWithScopedIdentifier:v8];

    v11 = (a4)(self, v10, a5);
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)_forRule:(id)a3 check:(void *)a4 error:(id *)a5
{
  if (![(NSMutableSet *)self->_rulesForRecordFetch containsObject:a3])
  {
    return 1;
  }

  if (self->_hasCachedResultOfServerCheck)
  {
    recordOnServer = self->_recordOnServer;
    recordExistsOnServer = self->_recordExistsOnServer;
  }

  else
  {
    self->_hasCachedResultOfServerCheck = 1;
    WeakRetained = objc_loadWeakRetained(&self->_items);
    v11 = [WeakRetained recordFromTransportWithScopedIdentifier:self->_scopedIdentifier];
    v12 = self->_recordOnServer;
    self->_recordOnServer = v11;

    recordOnServer = self->_recordOnServer;
    recordExistsOnServer = recordOnServer != 0;
    self->_recordExistsOnServer = recordOnServer != 0;
  }

  return (a4)(self, recordExistsOnServer, recordOnServer, a5);
}

- (BOOL)prepareWithError:(id *)a3
{
  v139 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_items);
  v6 = [WeakRetained provider];

  v7 = [(CPLRecordChange *)self->_change scopedIdentifier];
  v131 = 0;
  v8 = [v6 willNeedToAccessRecordWithScopedIdentifier:v7 error:&v131];
  v9 = v131;

  if (v8)
  {
    v10 = [(CPLRecordChange *)self->_change relatedScopedIdentifier];
    v130 = v9;
    v11 = [(CPLBeforeUploadCheckItem *)self _addRelatedRecordWithScopedIdentifierToAdditionalRecords:v10 provider:v6 error:&v130];
    v12 = v130;

    if (!v11)
    {
      goto LABEL_95;
    }

    v13 = [(CPLRecordChange *)self->_change secondaryScopedIdentifier];
    v129 = v12;
    v11 = [(CPLBeforeUploadCheckItem *)self _addRelatedRecordWithScopedIdentifierToAdditionalRecords:v13 provider:v6 error:&v129];
    v9 = v129;

    if (!v11)
    {
      v12 = v9;
      goto LABEL_95;
    }

    if ((self->_ruleGroups & 8) != 0 && ![(CPLRecordChange *)self->_change canLowerQuota]&& [(CPLRecordChange *)self->_change isAssetChange]&& !self->_pushRepositoryPriority)
    {
      v80 = objc_loadWeakRetained(&self->_items);
      v81 = [v80 shouldCheckOverQuotaChangesWithServer];

      if (v81)
      {
        if ((self->_ruleGroups & 8) != 0)
        {
          v128 = v9;
          v82 = [(CPLBeforeUploadCheckItem *)self requestFetchForRule:@"UpdatePushRepositoryPriorityWhenOverQuota" error:&v128];
          v12 = v128;

          if (!v82)
          {
            goto LABEL_22;
          }

          v9 = v12;
        }
      }

      else
      {
        v92 = [(CPLRecordChange *)self->_change _recordKnownByCloudCache];
        [(CPLBeforeUploadCheckItem *)self updatePushRepositoryPriorityWithRecordOnServer:v92];

        if (!self->_change)
        {
          goto LABEL_148;
        }
      }
    }

    v14 = objc_loadWeakRetained(&self->_items);
    v15 = [(CPLScopedIdentifier *)v14 sharingScopeIdentifier];
    if (!v15)
    {
      goto LABEL_18;
    }

    v16 = v15;
    v17 = [(CPLRecordChange *)self->_change supportsSharingScopedIdentifier];

    if (v17 && [(CPLRecordChange *)self->_change hasChangeType:64])
    {
      change = self->_change;
      v19 = objc_loadWeakRetained(&self->_items);
      v20 = [v19 sharingScopeIdentifier];
      LOBYTE(change) = [(CPLRecordChange *)change isSharedInScopeWithIdentifier:v20];

      if (change)
      {
        v14 = [(CPLRecordChange *)self->_change relatedScopedIdentifier];
        if (v14)
        {
          if (([v6 isCloudRecordWithScopedIdentifierShared:v14] & 1) == 0)
          {
            [(CPLRecordChange *)self->_change _noteRelatedRecordShouldBeShared];
            if ((_CPLSilentLogging & 1) == 0)
            {
              v21 = __CPLCheckOSLogDomain();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                v22 = [(CPLRecordChange *)self->_change scopedIdentifier];
                *buf = 138412546;
                v134 = v22;
                v135 = 2112;
                v136 = v14;
                _os_log_impl(&dword_1DC05A000, v21, OS_LOG_TYPE_DEFAULT, "In order to share %@, we will need to ensure %@ is also shared", buf, 0x16u);
              }
            }
          }
        }

LABEL_18:

        goto LABEL_19;
      }

      if ((self->_ruleGroups & 2) != 0)
      {
        v127 = v9;
        LOBYTE(v31) = [(CPLBeforeUploadCheckItem *)self requestFetchForRule:@"AvoidAccidentalUnshare" error:&v127];
        v32 = v127;
      }

      else
      {
        if ([(CPLRecordChange *)self->_change isFullRecord])
        {
          goto LABEL_19;
        }

        v30 = [(CPLRecordChange *)self->_change sharingRecordChangeData];

        if (v30)
        {
          goto LABEL_19;
        }

        v126 = v9;
        v31 = [(CPLBeforeUploadCheckItem *)self requestFetchForRule:@"UpdateRecordTargetForSharingChange" error:&v126];
        v32 = v126;
      }

      v12 = v32;

      if ((v31 & 1) == 0)
      {
        goto LABEL_22;
      }

      v9 = v12;
    }

LABEL_19:
    if ((self->_ruleGroups & 2) != 0 && [(CPLRecordChange *)self->_change supportsSharing])
    {
      v125 = v9;
      v23 = [(CPLBeforeUploadCheckItem *)self requestFetchForRule:@"UpdateRecordTargetDuringResetSync" error:&v125];
      v12 = v125;

      if (!v23)
      {
LABEL_22:
        v11 = 0;
        goto LABEL_95;
      }
    }

    else
    {
      v12 = v9;
    }

    if (![(CPLRecordChange *)self->_change supportsResources]|| ![(CPLRecordChange *)self->_change hasChangeType:8])
    {
      v11 = 1;
      goto LABEL_95;
    }

    v108 = [v6 availableResourceTypesToUploadForChange:self->_change];
    v25 = [(CPLRecordChange *)self->_change resourceCopyFromScopedIdentifier];
    v100 = [(CPLRecordChange *)self->_change resources];
    if ([(CPLRecordChange *)self->_change isAssetChange])
    {
      v26 = [(CPLRecordChange *)self->_change adjustments];
      v99 = v26 != 0;
    }

    else
    {
      v99 = 0;
    }

    if (v25)
    {
      v124 = 0;
      v27 = [v6 willNeedToAccessRecordWithScopedIdentifier:v25 error:&v124];
      v28 = v124;
      if (v27)
      {
        v29 = 1;
      }

      else
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v33 = __CPLCheckOSLogDomain();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            scopedIdentifier = self->_scopedIdentifier;
            *buf = 138412802;
            v134 = v25;
            v135 = 2112;
            v136 = scopedIdentifier;
            v137 = 2112;
            v138 = v28;
            _os_log_impl(&dword_1DC05A000, v33, OS_LOG_TYPE_ERROR, "Can't copy resources from %@ to %@ as the source scope can't be accessed: %@", buf, 0x20u);
          }
        }

        v123 = v12;
        v29 = [(CPLBeforeUploadCheckItem *)self rejectChangeWithReason:@"invalid source scope for copy" error:&v123];
        v35 = v123;

        v12 = v35;
      }

      if ([v100 count] != 0 || v99)
      {
        v102 = [v108 isEmpty];
      }

      else
      {
        v102 = 0;
      }

      if (!v29)
      {
        v11 = 0;
        v60 = v25;
        goto LABEL_94;
      }

      v107 = v12;
    }

    else
    {
      v107 = v12;
      v102 = 0;
    }

    v97 = v25;
    v98 = a3;
    v36 = objc_alloc_init(CPLResourceTypeSet);
    resourcesToGenerateImageDerivatives = self->_resourcesToGenerateImageDerivatives;
    self->_resourcesToGenerateImageDerivatives = v36;

    v38 = objc_alloc_init(CPLResourceTypeSet);
    resourcesToGenerateVideoComplementDerivatives = self->_resourcesToGenerateVideoComplementDerivatives;
    self->_resourcesToGenerateVideoComplementDerivatives = v38;

    *&self->_needsToGenerateImageDerivatives = 257;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    obj = v100;
    v106 = [obj countByEnumeratingWithState:&v119 objects:v132 count:16];
    if (!v106)
    {
      LOBYTE(v109) = 0;
      v40 = 0;
      v101 = v102;
      goto LABEL_117;
    }

    v40 = 0;
    v109 = 0;
    v104 = *v120;
    v101 = v102;
    v105 = v6;
LABEL_53:
    v41 = 0;
    while (1)
    {
      if (*v120 != v104)
      {
        objc_enumerationMutation(obj);
      }

      v42 = *(*(&v119 + 1) + 8 * v41);
      v43 = [v42 resourceType];
      v44 = [v6 isResourceDynamic:v42];
      if (v99 && !v109)
      {
        v109 = [CPLResource isAdjustedResourceType:v43];
      }

      v45 = objc_loadWeakRetained(&self->_items);
      v46 = [v45 originalBatch];
      v47 = [(CPLRecordChange *)self->_change scopedIdentifier];
      v48 = [v46 localResourceOfType:v43 forItemWithCloudScopedIdentifier:v47];

      if (!v48)
      {
        v6 = v105;
        a3 = v98;
        v61 = v107;
        if ((_CPLSilentLogging & 1) == 0)
        {
          v62 = __CPLCheckOSLogDomain();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v134 = v42;
            _os_log_impl(&dword_1DC05A000, v62, OS_LOG_TYPE_ERROR, "Cloud resource %@ does not match any local resource for upload", buf, 0xCu);
          }
        }

        v63 = objc_alloc(MEMORY[0x1E696AEC0]);
        v64 = +[CPLResource shortDescriptionForResourceType:](CPLResource, "shortDescriptionForResourceType:", [v42 resourceType]);
        v65 = self->_change;
        v66 = [v63 initWithFormat:@"Cloud resource %@ does not match any local resource of %@", v64, objc_opt_class()];

        v67 = [CPLErrors invalidCloudCacheErrorWithReason:v66];
        v48 = 0;
LABEL_90:

        v55 = v67;
LABEL_91:

LABEL_92:
        v11 = 0;
        v60 = v97;

        goto LABEL_93;
      }

      if (!(v44 & 1 | (([v108 containsResourceType:v43] & 1) == 0)))
      {
        break;
      }

      v49 = [v42 identity];
      v50 = v49;
      if (v102)
      {
        [v49 setAvailable:1];

        v101 &= v43 != 5;
      }

      else
      {
        [v49 setAvailable:v44 != 0];
      }

LABEL_77:
      v57 = [v42 identity];
      v58 = [v57 isAvailable];

      v40 |= v58 ^ 1;
      ++v41;
      v6 = v105;
      if (v106 == v41)
      {
        v59 = [obj countByEnumeratingWithState:&v119 objects:v132 count:16];
        v106 = v59;
        if (!v59)
        {
LABEL_117:

          if (self->_needsToGenerateImageDerivatives && [(CPLResourceTypeSet *)self->_resourcesToGenerateImageDerivatives isEmpty])
          {
            self->_needsToGenerateImageDerivatives = 0;
          }

          v12 = v107;
          v60 = v97;
          if (self->_needsToGenerateVideoComplementDerivatives && [(CPLResourceTypeSet *)self->_resourcesToGenerateVideoComplementDerivatives isEmpty])
          {
            self->_needsToGenerateVideoComplementDerivatives = 0;
          }

          if (v40 & 1 | !v99 | v109)
          {
            if ((v40 & 1) == 0)
            {
              a3 = v98;
              if ((v101 & 1) == 0)
              {
                v11 = 1;
                goto LABEL_158;
              }

LABEL_146:
              v115 = v107;
              v90 = v107;
              v91 = &v115;
              v11 = [(CPLBeforeUploadCheckItem *)self requestFetchOfRecordWithScopedIdentifier:v97 forRule:@"CopyDerivativesFromSource" error:&v115];
LABEL_157:
              v12 = *v91;

LABEL_158:
              if ([(CPLBeforeUploadCheckItem *)self needsToGenerateDerivatives]&& v11)
              {
                if ((self->_ruleGroups & 2) != 0)
                {
                  v114 = v12;
                  v11 = [(CPLBeforeUploadCheckItem *)self requestFetchForRule:@"AvoidGeneratingDerivatives" error:&v114];
                  v55 = v114;

LABEL_93:
                  v12 = v55;
                }

                else
                {
                  v11 = 1;
                }
              }

LABEL_94:

LABEL_95:
              v68 = [(CPLRecordChange *)self->_change recordChangeData];

              if (v68)
              {
                if (v11)
                {
                  goto LABEL_97;
                }

LABEL_111:
                v24 = 0;
                v9 = v12;
LABEL_112:
                if (a3 && !v24)
                {
LABEL_114:
                  v77 = v9;
                  v24 = 0;
                  *a3 = v9;
                }

                goto LABEL_115;
              }

              if (!v11)
              {
                goto LABEL_111;
              }

              if ([(CPLRecordChange *)self->_change isFullRecord])
              {
                v113 = v12;
                v72 = [(CPLBeforeUploadCheckItem *)self requestFetchForRule:@"FullRecordAlreadyOnServer" error:&v113];
                v9 = v113;

                if (v72)
                {
                  v12 = v9;
                  goto LABEL_106;
                }

LABEL_110:
                v24 = 0;
                goto LABEL_112;
              }

LABEL_106:
              if ((self->_ruleGroups & 2) != 0 && -[CPLRecordChange hasChangeType:](self->_change, "hasChangeType:", 32) && (v73 = self->_change, [objc_opt_class() copyPropertyBlockForDirection:1], (v74 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v75 = v74;
                v112 = v12;
                v76 = [(CPLBeforeUploadCheckItem *)self requestFetchForRule:@"ForwardCompatibility" error:&v112];
                v9 = v112;

                if (!v76)
                {
                  goto LABEL_110;
                }
              }

              else
              {
LABEL_97:
                v9 = v12;
              }

              if ([(CPLRecordChange *)self->_change _shouldNotTrustCloudCache])
              {
                v111 = v9;
                v24 = [(CPLBeforeUploadCheckItem *)self requestFetchForRule:@"DontTrustCloudCache" error:&v111];
                v69 = v111;

                v70 = [(CPLRecordChange *)self->_change relatedScopedIdentifier];
                if (v70)
                {
                  v110 = v69;
                  v24 = [(CPLBeforeUploadCheckItem *)self requestFetchOfRecordWithScopedIdentifier:v70 forRule:@"DontTrustCloudCache" error:&v110];
                  v71 = v110;

                  v69 = v71;
                }

                v9 = v69;
                goto LABEL_112;
              }

LABEL_148:
              v24 = 1;
              goto LABEL_115;
            }
          }

          else
          {
            if (v102)
            {
              a3 = v98;
              if ((_CPLSilentLogging & 1) == 0)
              {
                v88 = __CPLCheckOSLogDomain();
                if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
                {
                  v89 = self->_change;
                  *buf = 138412546;
                  v134 = v89;
                  v135 = 2112;
                  v136 = v97;
                  _os_log_impl(&dword_1DC05A000, v88, OS_LOG_TYPE_DEFAULT, "%@ is adjusted but has no adjusted resources - we will copy them from %@", buf, 0x16u);
                }
              }

              goto LABEL_146;
            }

            if ((_CPLSilentLogging & 1) == 0)
            {
              v93 = __CPLCheckOSLogDomain();
              if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
              {
                v94 = self->_change;
                *buf = 138412290;
                v134 = v94;
                _os_log_impl(&dword_1DC05A000, v93, OS_LOG_TYPE_DEFAULT, "%@ is adjusted but has no adjusted resources - considering the record as sparse", buf, 0xCu);
              }
            }
          }

          if ([(CPLRecordChange *)self->_change allowsToOnlyUploadNewResources])
          {
            v117 = v107;
            v95 = @"OnlyUploadAddedResources";
            v90 = v107;
            v91 = &v117;
            v96 = &v117;
          }

          else
          {
            v116 = v107;
            v95 = @"DropSparseResources";
            v90 = v107;
            v91 = &v116;
            v96 = &v116;
          }

          v11 = [(CPLBeforeUploadCheckItem *)self requestFetchForRule:v95 error:v96];
          a3 = v98;
          goto LABEL_157;
        }

        goto LABEL_53;
      }
    }

    if (v43 <= 5)
    {
      if ((v43 - 3) < 3)
      {
        self->_needsToGenerateImageDerivatives = 0;
        goto LABEL_75;
      }

      if ((v43 - 1) >= 2)
      {
        goto LABEL_75;
      }
    }

    else
    {
      if (v43 > 0x1C)
      {
        goto LABEL_79;
      }

      if (((1 << v43) & 0x102000C0) != 0)
      {
        self->_needsToGenerateVideoComplementDerivatives = 0;
LABEL_75:
        v53 = objc_loadWeakRetained(&self->_items);
        v118 = v107;
        v54 = [v53 willUploadCloudResource:v42 localResource:v48 forItem:self error:&v118];
        v55 = v118;

        if (!v54)
        {
          v6 = v105;
          a3 = v98;
          if ((_CPLSilentLogging & 1) == 0)
          {
            v83 = __CPLCheckOSLogDomain();
            if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v134 = v42;
              v135 = 2112;
              v136 = v55;
              _os_log_impl(&dword_1DC05A000, v83, OS_LOG_TYPE_ERROR, "Can't create URL to upload cloud %@: %@", buf, 0x16u);
            }
          }

          v66 = [(CPLScopedIdentifier *)v55 domain];
          if (![v66 isEqualToString:*MEMORY[0x1E696A250]])
          {
            goto LABEL_91;
          }

          v84 = [(CPLScopedIdentifier *)v55 code];

          if (v84 == 4)
          {
            v85 = objc_alloc(MEMORY[0x1E696AEC0]);
            v86 = +[CPLResource shortDescriptionForResourceType:](CPLResource, "shortDescriptionForResourceType:", [v48 resourceType]);
            v87 = self->_change;
            v66 = [v85 initWithFormat:@"Missing resource %@ on disk during push to transport for %@", v86, objc_opt_class()];

            v67 = [CPLErrors invalidClientCacheErrorWithReason:v66];
            v61 = v55;
            goto LABEL_90;
          }

          goto LABEL_92;
        }

        v56 = [v42 identity];
        [v56 setFileURL:v54];
        [v56 setAvailable:1];

        v107 = v55;
        goto LABEL_77;
      }

      if (((1 << v43) & 0x30000) == 0)
      {
        if (v43 == 18)
        {
          v51 = self->_resourcesToGenerateVideoComplementDerivatives;
          v52 = 18;
LABEL_74:
          [(CPLResourceTypeSet *)v51 addResourceType:v52];
          goto LABEL_75;
        }

LABEL_79:
        if (v43 != 1000 || !v99)
        {
          goto LABEL_75;
        }

        v51 = self->_resourcesToGenerateImageDerivatives;
        v52 = 1000;
        goto LABEL_74;
      }
    }

    v51 = self->_resourcesToGenerateImageDerivatives;
    v52 = v43;
    goto LABEL_74;
  }

  if (a3)
  {
    goto LABEL_114;
  }

  v24 = 0;
LABEL_115:

  v78 = *MEMORY[0x1E69E9840];
  return v24;
}

- (BOOL)_addRelatedRecordWithScopedIdentifierToAdditionalRecords:(id)a3 provider:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = !v7 || [v8 willNeedToAccessRecordWithScopedIdentifier:v7 error:a5];

  return v10;
}

- (CPLFingerprintContext)fingerprintContext
{
  WeakRetained = objc_loadWeakRetained(&self->_items);
  v3 = [WeakRetained fingerprintContext];

  return v3;
}

- (BOOL)needsToGenerateDerivatives
{
  change = self->_change;
  if (change)
  {
    LOBYTE(change) = self->_needsToGenerateImageDerivatives || self->_needsToGenerateVideoComplementDerivatives;
  }

  return change & 1;
}

- (BOOL)isTrashedOrDeletedAsset
{
  change = self->_change;
  if (change)
  {
    LOBYTE(change) = self->_isTrashedOrDeletedAsset;
  }

  return change & 1;
}

- (CPLBeforeUploadCheckItem)initWithChange:(id)a3 checkItems:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = CPLBeforeUploadCheckItem;
  v9 = [(CPLBeforeUploadCheckItem *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_change, a3);
    if (![(CPLRecordChange *)v10->_change isDelete])
    {
      v11 = [(CPLRecordChange *)v10->_change recordModificationDate];

      if (!v11 && (_CPLSilentLogging & 1) == 0)
      {
        v12 = __CPLCheckOSLogDomain();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          change = v10->_change;
          *buf = 138412290;
          v23 = change;
          _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, "No record modification date for %@", buf, 0xCu);
        }
      }
    }

    v14 = [(CPLRecordChange *)v10->_change scopedIdentifier];
    scopedIdentifier = v10->_scopedIdentifier;
    v10->_scopedIdentifier = v14;

    objc_storeWeak(&v10->_items, v8);
    v16 = objc_opt_class();
    changeClass = v10->_changeClass;
    v10->_changeClass = v16;

    v18 = [(CPLRecordChange *)v10->_change isAssetChange];
    v10->_isAsset = v18;
    if (v18)
    {
      LOBYTE(v18) = [(CPLRecordChange *)v10->_change isDelete]|| [(CPLRecordChange *)v10->_change inTrash];
    }

    v10->_isTrashedOrDeletedAsset = v18;
    v10->_ruleGroups = [v8 ruleGroups];
    v10->_pushRepositoryPriority = [v8 pushRepositoryPriority];
  }

  v19 = *MEMORY[0x1E69E9840];
  return v10;
}

@end
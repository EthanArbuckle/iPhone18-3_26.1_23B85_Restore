@interface CPLAssetChange
+ (BOOL)cplShouldIgnorePropertyForCoding:(id)a3;
+ (BOOL)cplShouldIgnorePropertyForEquality:(id)a3;
+ (BOOL)requiresStableHashForResourceType:(unint64_t)a3;
+ (id)copyPropertyBlockForDirection:(unint64_t)a3;
+ (id)equalityBlockForDirection:(unint64_t)a3;
- (BOOL)canLowerQuota;
- (BOOL)isEPPRecord;
- (BOOL)validateChangeWithError:(id *)a3;
- (BOOL)validateFullRecord;
- (BOOL)validateRecordForTracker:(id)a3;
- (CPLAssetChange)init;
- (CPLAssetChange)initWithCoder:(id)a3;
- (CPLFaceAnalysisReference)faces;
- (id)allRelatedScopedIdentifiers;
- (id)checkDefaultValueBlockForPropertyWithSelector:(SEL)a3;
- (id)compactedChangeWithRelatedChanges:(id)a3 isOnlyChange:(BOOL)a4 fullRecord:(id)a5 usingStorageView:(id)a6;
- (id)fingerprintSchemeWithContext:(id)a3;
- (id)masterScopedIdentifier;
- (id)propertiesDescription;
- (id)propertiesForChangeType:(unint64_t)a3;
- (id)resourceForType:(unint64_t)a3;
- (id)scopeIdentifiersForQuarantine;
- (id)scopedIdentifiersForMapping;
- (id)translateToClientChangeUsingIDMapping:(id)a3 error:(id *)a4;
- (id)translateToCloudChangeUsingIDMapping:(id)a3 error:(id *)a4;
- (int64_t)dequeueOrder;
- (unint64_t)fullChangeTypeForFullRecord;
- (unint64_t)supportedChangeTypes;
- (void)copyDerivativesFromRecordIfPossible:(id)a3;
- (void)setFaces:(id)a3;
- (void)setFacesData:(id)a3;
- (void)setKeywords:(id)a3;
- (void)setMasterScopedIdentifier:(id)a3;
- (void)setPeople:(id)a3;
- (void)setResources:(id)a3;
@end

@implementation CPLAssetChange

- (CPLAssetChange)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CPLAssetChange;
  v5 = [(CPLRecordChange *)&v10 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [(CPLAssetChange *)v5 facesData];

    if (!v7)
    {
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"faces"];
      if (v8)
      {
        if (initWithCoder__onceToken_74 != -1)
        {
          dispatch_once(&initWithCoder__onceToken_74, &__block_literal_global_76);
        }

        [(CPLAssetChange *)v6 setFaces:v8];
      }
    }
  }

  return v6;
}

void __45__CPLAssetChange_CPLNSCoding__initWithCoder___block_invoke()
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v0 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      *v1 = 0;
      _os_log_impl(&dword_1DC05A000, v0, OS_LOG_TYPE_DEFAULT, "Storage might contain old serialized faces", v1, 2u);
    }
  }
}

+ (BOOL)cplShouldIgnorePropertyForEquality:(id)a3
{
  v4 = a3;
  if ([v4 isEqual:@"faces"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___CPLAssetChange;
    v5 = objc_msgSendSuper2(&v7, sel_cplShouldIgnorePropertyForEquality_, v4);
  }

  return v5;
}

+ (BOOL)cplShouldIgnorePropertyForCoding:(id)a3
{
  v4 = a3;
  if ([v4 isEqual:@"faces"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___CPLAssetChange;
    v5 = objc_msgSendSuper2(&v7, sel_cplShouldIgnorePropertyForCoding_, v4);
  }

  return v5;
}

- (id)translateToClientChangeUsingIDMapping:(id)a3 error:(id *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v15.receiver = self;
  v15.super_class = CPLAssetChange;
  v7 = [(CPLRecordChange *)&v15 translateToClientChangeUsingIDMapping:v6 error:a4];
  if (v7)
  {
    v14 = 0;
    v8 = [(CPLAssetChange *)self masterScopedIdentifier];
    if (v8)
    {
      v9 = [v6 localScopedIdentifierForCloudScopedIdentifier:v8 isFinal:&v14];
      if (v9)
      {
        [v7 setMasterScopedIdentifier:v9];
      }

      else
      {
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Can't map cloud masterScopedIdentifier in %@", objc_opt_class()];
        if (a4)
        {
          *a4 = [CPLErrors invalidClientCacheErrorWithReason:v10];
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v11 = __CPLGenericOSLogDomain();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v17 = v8;
            v18 = 2112;
            v19 = self;
            _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_ERROR, "Can't map cloud masterScopedIdentifier (%@) of %@", buf, 0x16u);
          }
        }

        v7 = 0;
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)translateToCloudChangeUsingIDMapping:(id)a3 error:(id *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v15.receiver = self;
  v15.super_class = CPLAssetChange;
  v7 = [(CPLRecordChange *)&v15 translateToCloudChangeUsingIDMapping:v6 error:a4];
  if (v7)
  {
    v14 = 0;
    v8 = [(CPLAssetChange *)self masterScopedIdentifier];
    if (v8)
    {
      v9 = [v6 cloudScopedIdentifierForLocalScopedIdentifier:v8 isFinal:&v14];
      if (v9)
      {
        [v7 setMasterScopedIdentifier:v9];
      }

      else
      {
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Can't map local masterScopedIdentifier in %@", objc_opt_class()];
        if (a4)
        {
          *a4 = [CPLErrors invalidClientCacheErrorWithReason:v10];
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v11 = __CPLGenericOSLogDomain();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v17 = v8;
            v18 = 2112;
            v19 = self;
            _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_ERROR, "Can't map local masterScopedIdentifier (%@) of %@", buf, 0x16u);
          }
        }

        v7 = 0;
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)scopedIdentifiersForMapping
{
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v8.receiver = self;
  v8.super_class = CPLAssetChange;
  v4 = [(CPLRecordChange *)&v8 scopedIdentifiersForMapping];
  v5 = [v3 initWithArray:v4];

  v6 = [(CPLAssetChange *)self masterScopedIdentifier];
  if (v6)
  {
    [v5 addObject:v6];
  }

  return v5;
}

- (id)compactedChangeWithRelatedChanges:(id)a3 isOnlyChange:(BOOL)a4 fullRecord:(id)a5 usingStorageView:(id)a6
{
  v53 = a4;
  v83 = *MEMORY[0x1E69E9840];
  v56 = a3;
  v58 = a5;
  v57 = a6;
  if ([(CPLRecordChange *)self changeType]== 1024)
  {
    v9 = self;
    goto LABEL_53;
  }

  v55 = self;
  v76 = 0;
  v77 = &v76;
  v78 = 0x2020000000;
  v79 = 0;
  v60 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = [v56 mutableCopy];
  v11 = [(CPLRecordChange *)self scopedIdentifier];
  v12 = [v57 recordViewsWithRelatedScopedIdentifier:v11 class:objc_opt_class()];

  v70 = 0;
  v71 = &v70;
  v72 = 0x3032000000;
  v73 = __Block_byref_object_copy__11287;
  v74 = __Block_byref_object_dispose__11288;
  v75 = 0;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v66 objects:v82 count:16];
  if (v13)
  {
    v14 = *v67;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v67 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v66 + 1) + 8 * i);
        v17 = [v16 scopedIdentifier];
        v18 = [v10 objectForKey:v17];
        if (v18)
        {
          [v10 removeObjectForKey:v17];
          if ([v18 changeType] == 1024)
          {
            *(v77 + 24) = 1;
            goto LABEL_22;
          }

          v22 = [v18 relation];
          if (v71[5])
          {
            v23 = [v18 recordModificationDate];

            if (v23)
            {
              v24 = v71[5];
              v25 = [v18 recordModificationDate];
              v26 = [v24 laterDate:v25];
              v27 = v71[5];
              v71[5] = v26;

              goto LABEL_17;
            }
          }

          else
          {
            v28 = [v18 recordModificationDate];
            v25 = v71[5];
            v71[5] = v28;
LABEL_17:
          }

          if (!v22)
          {
            if ((_CPLSilentLogging & 1) == 0)
            {
              v50 = __CPLStorageOSLogDomain_11255();
              if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v81 = v18;
                _os_log_impl(&dword_1DC05A000, v50, OS_LOG_TYPE_ERROR, "%@ has no relation", buf, 0xCu);
              }
            }

            v51 = [MEMORY[0x1E696AAA8] currentHandler];
            v52 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLClientCacheView_Extensions.m"];
            [v51 handleFailureInMethod:a2 object:v55 file:v52 lineNumber:513 description:{@"%@ has no relation", v18}];

            goto LABEL_66;
          }

          v29 = [v16 relation];
          v30 = [v22 isEqual:v29];

          if ((v30 & 1) == 0)
          {
            *(v77 + 24) = 1;
          }

          [v60 addObject:v22];

          goto LABEL_22;
        }

        v19 = [v16 relation];
        v20 = v19 == 0;

        if (v20)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v47 = __CPLStorageOSLogDomain_11255();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v81 = v16;
              _os_log_impl(&dword_1DC05A000, v47, OS_LOG_TYPE_ERROR, "%@ in client cache has no relation", buf, 0xCu);
            }
          }

          v48 = [MEMORY[0x1E696AAA8] currentHandler];
          v49 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLClientCacheView_Extensions.m"];
          [v48 handleFailureInMethod:a2 object:v55 file:v49 lineNumber:496 description:{@"%@ in client cache has no relation", v16}];

LABEL_66:
          abort();
        }

        v21 = [v16 relation];
        [v60 addObject:v21];

LABEL_22:
      }

      v13 = [obj countByEnumeratingWithState:&v66 objects:v82 count:16];
    }

    while (v13);
  }

  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __113__CPLAssetChange_CPLClientCacheView__compactedChangeWithRelatedChanges_isOnlyChange_fullRecord_usingStorageView___block_invoke;
  v61[3] = &unk_1E861D2C0;
  v63 = &v76;
  v64 = &v70;
  v65 = a2;
  v61[4] = v55;
  v31 = v60;
  v62 = v31;
  [v10 enumerateKeysAndObjectsUsingBlock:v61];
  if (v58)
  {
    [v58 setContainerRelations:v31];
    if (v71[5])
    {
      v32 = [v58 recordModificationDate];
      v33 = v32;
      v34 = v71[5];
      if (v32)
      {
        v35 = [v32 laterDate:v34];
        [v58 setRecordModificationDate:v35];
      }

      else
      {
        [v58 setRecordModificationDate:v34];
      }
    }
  }

  if (v53)
  {
    if (*(v77 + 24) == 1)
    {
      v36 = objc_opt_class();
      v37 = [(CPLRecordChange *)v55 scopedIdentifier];
      v38 = [v36 newChangeWithScopedIdentifier:v37 changeType:16];

      if ([v31 count])
      {
        [(CPLItemChange *)v38 setContainerRelations:v31];
      }

      goto LABEL_45;
    }

    v38 = 0;
  }

  else
  {
    if ([(CPLRecordChange *)v55 isFullRecord])
    {
      if ([v31 count])
      {
        [(CPLItemChange *)v55 setContainerRelations:v31];
      }
    }

    else if (*(v77 + 24) == 1)
    {
      v38 = [(CPLAssetChange *)v55 copy];
      if ([v31 count])
      {
        [(CPLItemChange *)v38 setContainerRelations:v31];
      }

      v39 = [(CPLRecordChange *)v38 changeType];
      if (v39)
      {
        v40 = v39 | 0x10;
      }

      else
      {
        v40 = 0;
      }

      [(CPLRecordChange *)v38 setChangeType:v40];
LABEL_45:
      if (!v38)
      {
        goto LABEL_52;
      }

LABEL_48:
      if (v71[5])
      {
        v41 = [(CPLRecordChange *)v38 recordModificationDate];

        if (v41)
        {
          v42 = [(CPLRecordChange *)v38 recordModificationDate];
          v43 = [v42 laterDate:v71[5]];
          [(CPLRecordChange *)v38 setRecordModificationDate:v43];
        }

        else
        {
          [(CPLRecordChange *)v38 setRecordModificationDate:v71[5]];
        }
      }

      goto LABEL_52;
    }

    v38 = v55;
    if (v38)
    {
      goto LABEL_48;
    }
  }

LABEL_52:
  v44 = v62;
  v9 = v38;

  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v76, 8);
LABEL_53:

  v45 = *MEMORY[0x1E69E9840];

  return v9;
}

void __113__CPLAssetChange_CPLClientCacheView__compactedChangeWithRelatedChanges_isOnlyChange_fullRecord_usingStorageView___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  if ([v6 changeType] == 1024)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLStorageOSLogDomain_11255();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v25 = v5;
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_ERROR, "Trying to delete an inexisting relation: %@", buf, 0xCu);
      }
    }

    goto LABEL_14;
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
  v8 = [v6 relation];
  v9 = *(*(*(a1 + 56) + 8) + 40);
  v10 = [v6 recordModificationDate];
  v11 = v10;
  if (!v9)
  {
    v17 = *(*(a1 + 56) + 8);
    v13 = *(v17 + 40);
    *(v17 + 40) = v10;
    goto LABEL_11;
  }

  if (v11)
  {
    v12 = *(*(*(a1 + 56) + 8) + 40);
    v13 = [v6 recordModificationDate];
    v14 = [v12 laterDate:v13];
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

LABEL_11:
  }

  if (!v8)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v19 = __CPLStorageOSLogDomain_11255();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v25 = 0;
        _os_log_impl(&dword_1DC05A000, v19, OS_LOG_TYPE_ERROR, "%@ in client cache has no relation", buf, 0xCu);
      }
    }

    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = *(a1 + 64);
    v22 = *(a1 + 32);
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLClientCacheView_Extensions.m"];
    [v20 handleFailureInMethod:v21 object:v22 file:v23 lineNumber:539 description:{@"%@ in client cache has no relation", 0}];

    abort();
  }

  [*(a1 + 40) addObject:v8];

LABEL_14:
  v18 = *MEMORY[0x1E69E9840];
}

- (BOOL)validateRecordForTracker:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v34.receiver = self;
  v34.super_class = CPLAssetChange;
  if (![(CPLRecordChange *)&v34 validateRecordForTracker:v4])
  {
    goto LABEL_40;
  }

  if ([(CPLRecordChange *)self isFullRecord])
  {
    v5 = [(CPLAssetChange *)self masterScopedIdentifier];
    if (v5)
    {
      if ([v4 knowsClientRecordWithScopedIdentifier:v5])
      {

        goto LABEL_6;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v24 = __CPLSessionOSLogDomain_16325();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v36 = self;
          _os_log_impl(&dword_1DC05A000, v24, OS_LOG_TYPE_DEFAULT, "Client pushed an asset but we need the master too: %@", buf, 0xCu);
        }

        v25 = 4;
LABEL_37:

        goto LABEL_38;
      }

      v25 = 4;
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v24 = __CPLSessionOSLogDomain_16325();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v36 = self;
          _os_log_impl(&dword_1DC05A000, v24, OS_LOG_TYPE_ERROR, "Client pushed an asset with no master identifier: %@", buf, 0xCu);
        }

        v25 = 0;
        goto LABEL_37;
      }

      v25 = 0;
    }

LABEL_38:
    v20 = [v4 pushChangeTasks];
    v21 = [(CPLRecordChange *)self scopedIdentifier];
    v22 = v20;
    v23 = v25;
LABEL_39:
    [v22 addTask:v23 forRecordWithScopedIdentifier:v21];

    goto LABEL_40;
  }

LABEL_6:
  if (![(CPLRecordChange *)self hasChangeType:16])
  {
LABEL_42:
    v26 = 1;
    goto LABEL_43;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = [(CPLItemChange *)self containerRelations];
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (!v6)
  {

    goto LABEL_42;
  }

  v8 = v6;
  v9 = *v31;
  v10 = 1;
  *&v7 = 138412546;
  v29 = v7;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v31 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v12 = [*(*(&v30 + 1) + 8 * i) containerIdentifier];
      if (!v12 || (v13 = v12, v14 = [CPLScopedIdentifier alloc], [(CPLRecordChange *)self scopedIdentifier], v15 = objc_claimAutoreleasedReturnValue(), v16 = [(CPLScopedIdentifier *)v14 initRelativeToScopedIdentifier:v15 identifier:v13], v15, v13, !v16))
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v19 = __CPLSessionOSLogDomain_16325();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v36 = self;
            _os_log_impl(&dword_1DC05A000, v19, OS_LOG_TYPE_ERROR, "Client pushed a relation with no album in an asset: %@", buf, 0xCu);
          }
        }

        v20 = [v4 pushChangeTasks];
        v21 = [(CPLRecordChange *)self scopedIdentifier];
        v22 = v20;
        v23 = 0;
        goto LABEL_39;
      }

      if (([v4 knowsClientRecordWithScopedIdentifier:v16] & 1) == 0)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v17 = __CPLSessionOSLogDomain_16325();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v29;
            v36 = v16;
            v37 = 2112;
            v38 = self;
            _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_DEFAULT, "Client pushed an asset belonging in an unknown album %@: %@", buf, 0x16u);
          }
        }

        v18 = [v4 pushChangeTasks];
        [v18 addTask:5 forRecordWithScopedIdentifier:v16];

        v10 = 0;
      }
    }

    v8 = [v5 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

  if (v10)
  {
    goto LABEL_42;
  }

LABEL_40:
  v26 = 0;
LABEL_43:

  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

- (id)scopeIdentifiersForQuarantine
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = [(CPLRecordChange *)self scopedIdentifier];
  if ([(CPLRecordChange *)self isFullRecord])
  {
    v9[0] = v3;
    v4 = [(CPLAssetChange *)self masterScopedIdentifier];
    v9[1] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  }

  else
  {
    v8 = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (unint64_t)supportedChangeTypes
{
  v3.receiver = self;
  v3.super_class = CPLAssetChange;
  return [(CPLRecordChange *)&v3 supportedChangeTypes]| 0x10;
}

- (unint64_t)fullChangeTypeForFullRecord
{
  v3.receiver = self;
  v3.super_class = CPLAssetChange;
  return [(CPLRecordChange *)&v3 fullChangeTypeForFullRecord]| 0x20;
}

- (BOOL)canLowerQuota
{
  if ([(CPLRecordChange *)self isDelete])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = [(CPLRecordChange *)self hasChangeType:2];
    if (v3)
    {

      LOBYTE(v3) = [(CPLRecordChange *)self inTrash];
    }
  }

  return v3;
}

- (void)setFacesData:(id)a3
{
  v6 = a3;
  v4 = [v6 length];
  if (v4)
  {
    v4 = [v6 copy];
  }

  facesData = self->_facesData;
  self->_facesData = v4;
}

- (CPLFaceAnalysisReference)faces
{
  if (self->_facesData)
  {
    v2 = [[CPLFaceAnalysisReference alloc] initWithData:self->_facesData];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setFaces:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4)
  {
    v5 = [v4 data];
    p_facesData = &self->_facesData;
    v7 = *p_facesData;
    *p_facesData = v5;

    if ([*p_facesData length])
    {
      goto LABEL_6;
    }
  }

  else
  {
    p_facesData = &self->_facesData;
  }

  v8 = *p_facesData;
  *p_facesData = 0;

LABEL_6:
}

- (BOOL)validateChangeWithError:(id *)a3
{
  v9.receiver = self;
  v9.super_class = CPLAssetChange;
  LODWORD(v5) = [(CPLRecordChange *)&v9 validateChangeWithError:?];
  if (v5)
  {
    if ([(CPLRecordChange *)self hasChangeType:2])
    {
      masterIdentifier = self->_masterIdentifier;
      LOBYTE(v5) = masterIdentifier != 0;
      if (a3 && !masterIdentifier)
      {
        v7 = [CPLErrors cplErrorWithCode:18 description:@"%@ has no master identifier", self];
        v5 = v7;
        LOBYTE(v5) = 0;
        *a3 = v7;
      }
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (BOOL)validateFullRecord
{
  v5.receiver = self;
  v5.super_class = CPLAssetChange;
  v3 = [(CPLRecordChange *)&v5 validateFullRecord];
  if (v3)
  {
    LOBYTE(v3) = self->_masterIdentifier != 0;
  }

  return v3;
}

- (id)checkDefaultValueBlockForPropertyWithSelector:(SEL)a3
{
  if (sel_assetHDRType == a3)
  {
    v7 = &__block_literal_global_105_19040;
    goto LABEL_34;
  }

  if (sel_originalChoice == a3)
  {
    v7 = &__block_literal_global_109;
    goto LABEL_34;
  }

  if (sel_assetDate == a3 || sel_facesData == a3 || sel_timeZoneOffset == a3 || sel_mediaGroupIdentifier == a3)
  {
    v6 = _CPLDefaultValueObjectNil;
LABEL_33:
    v7 = MEMORY[0x1E128EBA0](v6, a2);
    goto LABEL_34;
  }

  if (sel_people == a3 || sel_videoComplementDurationValue == a3 || sel_videoComplementDurationTimescale == a3 || sel_videoComplementImageDisplayValue == a3 || sel_videoComplementImageDisplayTimescale == a3 || sel_videoComplementVisibilityState == a3 || sel_playCount == a3 || sel_shareCount == a3 || sel_viewCount == a3 || sel_customRenderedValue == a3 || sel_viewPresentation == a3)
  {
    v6 = _CPLDefaultValueNSINTEGER0;
    goto LABEL_33;
  }

  if (sel_assetSubtype == a3)
  {
    v7 = &__block_literal_global_141;
  }

  else if (sel_keywords == a3)
  {
    v7 = &__block_literal_global_145;
  }

  else if (sel_trashedReason == a3)
  {
    v7 = &__block_literal_global_149;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CPLAssetChange;
    v7 = [(CPLRecordChange *)&v9 checkDefaultValueBlockForPropertyWithSelector:?];
  }

LABEL_34:

  return v7;
}

BOOL __64__CPLAssetChange_checkDefaultValueBlockForPropertyWithSelector___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 keywords];
  v3 = [v2 count] == 0;

  return v3;
}

- (id)allRelatedScopedIdentifiers
{
  v40 = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = CPLAssetChange;
  v3 = [(CPLRecordChange *)&v37 allRelatedScopedIdentifiers];
  v4 = [(CPLAssetChange *)self faces];
  v5 = [v4 faces];
  if ([v5 count] || -[NSArray count](self->_people, "count"))
  {
    v28 = v3;
    v3 = [v3 mutableCopy];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v27 = v5;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v34;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v34 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v33 + 1) + 8 * i) personIdentifier];
          if (v11)
          {
            v12 = v11;
            v13 = [CPLScopedIdentifier alloc];
            v14 = [(CPLRecordChange *)self scopedIdentifier];
            v15 = [(CPLScopedIdentifier *)v13 initRelativeToScopedIdentifier:v14 identifier:v12];

            if (v15)
            {
              [v3 addObject:v15];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v8);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v16 = self->_people;
    v17 = [(NSArray *)v16 countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v30;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v30 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v29 + 1) + 8 * j) personIdentifier];
          if (v21)
          {
            v22 = [CPLScopedIdentifier alloc];
            v23 = [(CPLRecordChange *)self scopedIdentifier];
            v24 = [(CPLScopedIdentifier *)v22 initRelativeToScopedIdentifier:v23 identifier:v21];

            [v3 addObject:v24];
          }
        }

        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v18);
    }

    if (v28)
    {
      [v3 unionSet:v28];
    }

    v5 = v27;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v3;
}

- (int64_t)dequeueOrder
{
  v3 = [(CPLAssetChange *)self assetDate];
  if (v3)
  {
    [(CPLAssetChange *)self assetDate];
  }

  else
  {
    [(CPLAssetChange *)self addedDate];
  }
  v4 = ;

  if (v4)
  {
    [v4 timeIntervalSinceReferenceDate];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CPLAssetChange;
    v5 = [(CPLRecordChange *)&v8 dequeueOrder];
  }

  v6 = v5;

  return v6;
}

- (void)setPeople:(id)a3
{
  v6 = a3;
  if ([v6 count])
  {
    v4 = [v6 sortedArrayUsingComparator:&__block_literal_global_93_19045];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  people = self->_people;
  self->_people = v4;
}

uint64_t __28__CPLAssetChange_setPeople___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = [v4 personIdentifier];
  v7 = [v5 personIdentifier];
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [v6 compare:v7];
  }

  else if (v6)
  {
    if (v7)
    {
      v9 = 0;
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v11 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v14 = 138412290;
          v15 = v5;
          _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_ERROR, "Found empty person identifier for %@", &v14, 0xCu);
        }
      }

      v9 = 1;
    }
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v14 = 138412290;
        v15 = v4;
        _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "Found empty person identifier for %@", &v14, 0xCu);
      }
    }

    v9 = -1;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)setKeywords:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([v5 count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v5];
    v7 = [v6 count];
    if (v7 != [v5 count] && (_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = objc_opt_class();
        v10 = v9;
        v11 = [(CPLRecordChange *)self scopedIdentifier];
        v12 = NSStringFromSelector(a2);
        v17 = 138412802;
        v18 = v9;
        v19 = 2112;
        v20 = v11;
        v21 = 2112;
        v22 = v12;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_ERROR, "<%@ %@> %@ got duplicate keywords", &v17, 0x20u);
      }
    }

    v13 = [CPLAssetKeywordSortDescriptor sortedKeywordsForKeywordSet:v6];
    keywords = self->_keywords;
    self->_keywords = v13;
  }

  else
  {
    v15 = self->_keywords;
    self->_keywords = MEMORY[0x1E695E0F0];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)copyDerivativesFromRecordIfPossible:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isAssetChange])
  {
    v5 = [(CPLAssetChange *)self adjustments];
    if (!v5)
    {
LABEL_29:

      goto LABEL_30;
    }

    v6 = [v4 adjustments];
    if (v6)
    {
      v7 = [v5 otherAdjustmentsFingerprint];
      v8 = [v6 otherAdjustmentsFingerprint];
      v9 = v8;
      if (v7 && v8)
      {
        v10 = [v7 isEqual:v8];

        if ((v10 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_9:
        v11 = [(NSDictionary *)self->_resourcePerResourceType objectForKeyedSubscript:&unk_1F57EF6F8];
        v12 = [v11 identity];
        v13 = [v12 fingerPrint];

        v14 = [v4 resourceForType:13];
        v15 = [v14 identity];
        v16 = [v15 fingerPrint];

        if (v13 && v16)
        {
          if (([v13 isEqual:v16] & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        else if (v13 | v16)
        {
LABEL_27:

          goto LABEL_28;
        }

        v17 = [(NSDictionary *)self->_resourcePerResourceType mutableCopy];
        if (!v17)
        {
          v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
        }

        v18 = [v17 count];
        [(CPLRecordChange *)self copyDerivatives:&copyDerivativesFromRecordIfPossible__originalDerivativesImageAndVideo_19064 count:9 avoidResourceType:0 fromRecord:v4 inResourcePerType:v17];
        if (v18 >= [v17 count])
        {
          if (_CPLSilentLogging)
          {
LABEL_26:

            goto LABEL_27;
          }

          v23 = __CPLGenericOSLogDomain();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v30 = objc_opt_class();
            v34 = v30;
            v24 = [v4 scopedIdentifier];
            v25 = objc_opt_class();
            v32 = v25;
            v26 = [(CPLRecordChange *)self scopedIdentifier];
            *buf = 138413058;
            v36 = v30;
            v37 = 2112;
            v38 = v24;
            v39 = 2112;
            v40 = v25;
            v41 = 2112;
            v42 = v26;
            _os_log_impl(&dword_1DC05A000, v23, OS_LOG_TYPE_DEFAULT, "Found no derivatives to copy from <%@ %@> to <%@ %@>", buf, 0x2Au);
          }
        }

        else
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v19 = __CPLGenericOSLogDomain();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v29 = [v17 count] - v18;
              v28 = objc_opt_class();
              v33 = v28;
              v20 = [v4 scopedIdentifier];
              v21 = objc_opt_class();
              v31 = v21;
              [(CPLRecordChange *)self scopedIdentifier];
              *buf = 134219010;
              v36 = v29;
              v37 = 2112;
              v38 = v28;
              v39 = 2112;
              v40 = v20;
              v41 = 2112;
              v42 = v21;
              v44 = v43 = 2112;
              v22 = v44;
              _os_log_impl(&dword_1DC05A000, v19, OS_LOG_TYPE_DEFAULT, "Automatically copied %lu derivatives from <%@ %@> to <%@ %@>", buf, 0x34u);
            }
          }

          v23 = [v17 allValues];
          [(CPLAssetChange *)self setResources:v23];
        }

        goto LABEL_26;
      }

      if (!(v7 | v9))
      {
        goto LABEL_9;
      }
    }

LABEL_28:

    goto LABEL_29;
  }

LABEL_30:

  v27 = *MEMORY[0x1E69E9840];
}

- (id)resourceForType:(unint64_t)a3
{
  resourcePerResourceType = self->_resourcePerResourceType;
  if (resourcePerResourceType)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v5 = [(NSDictionary *)resourcePerResourceType objectForKeyedSubscript:v4];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CPLAssetChange;
    v5 = [(CPLRecordChange *)&v7 resourceForType:a3];
  }

  return v5;
}

- (void)setResources:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v5 = a3;
  v6 = [CPLResource normalizedResourcesFromResources:v5 resourcePerResourceType:&v20];
  v7 = v20;
  v8 = [(NSArray *)v6 count];
  v9 = [v5 count];

  if (v8 != v9 && (_CPLSilentLogging & 1) == 0)
  {
    v10 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = v11;
      v13 = [(CPLRecordChange *)self scopedIdentifier];
      v14 = NSStringFromSelector(a2);
      *buf = 138412802;
      v22 = v11;
      v23 = 2112;
      v24 = v13;
      v25 = 2114;
      v26 = v14;
      _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "<%@ %@> %{public}@ got duplicate or incorrect resource types", buf, 0x20u);
    }
  }

  resources = self->_resources;
  self->_resources = v6;
  v16 = v6;

  resourcePerResourceType = self->_resourcePerResourceType;
  self->_resourcePerResourceType = v7;
  v18 = v7;

  v19 = *MEMORY[0x1E69E9840];
}

- (void)setMasterScopedIdentifier:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v22 = a3;
  v5 = [v22 scopeIdentifier];
  v6 = [(CPLRecordChange *)self scopedIdentifier];
  v7 = [v6 scopeIdentifier];

  if (v5 && v7)
  {
    v8 = [v5 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {

    if (v5 | v7)
    {
LABEL_4:
      if ((_CPLSilentLogging & 1) == 0)
      {
        v9 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = NSStringFromSelector(a2);
          v11 = [(CPLRecordChange *)self scopedIdentifier];
          v12 = [v11 scopeIdentifier];
          v13 = [v22 scopeIdentifier];
          *buf = 138412802;
          v24 = v10;
          v25 = 2112;
          v26 = v12;
          v27 = 2112;
          v28 = v13;
          _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "Invalid call to %@ with mismatched scope: %@ vs. %@", buf, 0x20u);
        }
      }

      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLAssetChange.m"];
      v16 = NSStringFromSelector(a2);
      v17 = [(CPLRecordChange *)self scopedIdentifier];
      v18 = [v17 scopeIdentifier];
      v19 = [v22 scopeIdentifier];
      [v14 handleFailureInMethod:a2 object:self file:v15 lineNumber:229 description:{@"Invalid call to %@ with mismatched scope: %@ vs. %@", v16, v18, v19}];

      abort();
    }
  }

  v20 = [v22 identifier];
  [(CPLAssetChange *)self setMasterIdentifier:v20];

  v21 = *MEMORY[0x1E69E9840];
}

- (id)masterScopedIdentifier
{
  v3 = [(CPLAssetChange *)self masterIdentifier];
  if (v3)
  {
    v4 = [CPLScopedIdentifier alloc];
    v5 = [(CPLRecordChange *)self scopedIdentifier];
    v6 = [(CPLScopedIdentifier *)v4 initRelativeToScopedIdentifier:v5 identifier:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)propertiesForChangeType:(unint64_t)a3
{
  if (propertiesForChangeType__onceToken_19078 != -1)
  {
    dispatch_once(&propertiesForChangeType__onceToken_19078, &__block_literal_global_43);
  }

  if (a3 == 32)
  {
    v5 = propertiesForChangeType__facesProperties;
    goto LABEL_7;
  }

  if (a3 == 8)
  {
    v5 = propertiesForChangeType__resourceProperties;
LABEL_7:
    v6 = v5;
    goto LABEL_9;
  }

  v8.receiver = self;
  v8.super_class = CPLAssetChange;
  v6 = [(CPLItemChange *)&v8 propertiesForChangeType:a3];
LABEL_9:

  return v6;
}

uint64_t __42__CPLAssetChange_propertiesForChangeType___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"adjustments", @"adjustedMediaMetaData", @"adjustedMediaMetaDataType", @"resources", @"resourceCopyFromScopedIdentifier", @"orientation", @"duration", @"originalChoice", 0}];
  v1 = propertiesForChangeType__resourceProperties;
  propertiesForChangeType__resourceProperties = v0;

  v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"facesData", @"facesVersion", @"facesAdjustmentsFingerprint", 0}];
  v3 = propertiesForChangeType__facesProperties;
  propertiesForChangeType__facesProperties = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

- (id)propertiesDescription
{
  v2 = self;
  v47 = *MEMORY[0x1E69E9840];
  v3 = [(CPLRecordChange *)self changeType];
  v4 = [(CPLItemChange *)v2 containerDescription];
  v5 = [(CPLRecordChange *)v2 resourcesDescription];
  v6 = v5;
  if (!v3 || (v3 & 8) != 0)
  {
    v9 = " / ";
    v8 = [(CPLAssetChange *)v2 adjustments];
    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    v11 = "";
    if (![v4 length])
    {
      v9 = "";
    }

    if ([v6 length])
    {
      v11 = " ";
    }

    if (v8)
    {
      v12 = [v8 adjustmentSimpleDescription];
      v7 = [v10 initWithFormat:@"%s%@%s%@", v9, v6, v11, v12];

      v6 = v12;
    }

    else
    {
      v7 = [v10 initWithFormat:@"%s%@%s%@", v9, v6, v11, @"no adj."];
    }
  }

  else
  {
    v7 = &stru_1F57BD298;
    v8 = v5;
  }

  if (!v3 || (v3 & 0x20) != 0)
  {
    v14 = " / ";
    if (![v4 length] && !-[__CFString length](v7, "length"))
    {
      v14 = "";
    }

    v15 = [(CPLAssetChange *)v2 faces];
    v16 = [v15 faces];
    if ([v16 count] | v3)
    {
      v34 = v16;
      v35 = v14;
      v37 = v3;
      v38 = v7;
      v39 = v2;
      v40 = v4;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v36 = v15;
      obj = [v15 faces];
      v17 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = *v43;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v43 != v23)
            {
              objc_enumerationMutation(obj);
            }

            v25 = *(*(&v42 + 1) + 8 * i);
            v26 = [v25 isKeyFace];
            if ([v25 isManual])
            {
              ++v20;
            }

            else
            {
              v27 = [v25 personIdentifier];

              if (v27)
              {
                ++v22;
              }
            }

            v19 += v26;
            v28 = [v25 rejectedPersonIdentifiers];
            v21 += [v28 count];
          }

          v18 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
        }

        while (v18);
      }

      else
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
      }

      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%sfaces: %lu conf., %lu rej., %lu man., %lu key", v35, v22, v21, v20, v19];
      v2 = v39;
      v4 = v40;
      v3 = v37;
      v7 = v38;
      v15 = v36;
      v16 = v34;
    }

    else
    {
      v13 = &stru_1F57BD298;
    }

    if (!v3)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v13 = &stru_1F57BD298;
  }

  if ((v3 & 2) == 0)
  {
    v29 = &stru_1F57BD298;
    goto LABEL_43;
  }

LABEL_37:
  if ([v4 length])
  {
    v30 = ", ";
  }

  else
  {
    v30 = ", ";
    if (![(__CFString *)v7 length]&& ![(__CFString *)v13 length])
    {
      v30 = "";
    }
  }

  v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"master: %@%s", v2->_masterIdentifier, v30];
LABEL_43:
  v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%@%@%@", v29, v4, v7, v13];

  v32 = *MEMORY[0x1E69E9840];

  return v31;
}

- (BOOL)isEPPRecord
{
  v2 = [(CPLAssetChange *)self masterIdentifier];
  if (v2)
  {
    v3 = [CPLFingerprintScheme isMMCSv2Fingerprint:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)fingerprintSchemeWithContext:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  fingerprintScheme = self->_fingerprintScheme;
  if (!fingerprintScheme)
  {
    if (!self->_masterIdentifier)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v13 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = NSStringFromSelector(a2);
          *buf = 138412546;
          v19 = v14;
          v20 = 2112;
          v21 = self;
          _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_ERROR, "%@ called on %@ with master identifier not set", buf, 0x16u);
        }
      }

      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLAssetChange.m"];
      v17 = NSStringFromSelector(a2);
      [v15 handleFailureInMethod:a2 object:self file:v16 lineNumber:121 description:{@"%@ called on %@ with master identifier not set", v17, self}];

      abort();
    }

    v8 = [v5 fingerprintSchemeForMasterIdentifier:?];
    v9 = self->_fingerprintScheme;
    self->_fingerprintScheme = v8;

    fingerprintScheme = self->_fingerprintScheme;
  }

  v10 = fingerprintScheme;

  v11 = *MEMORY[0x1E69E9840];
  return fingerprintScheme;
}

- (CPLAssetChange)init
{
  v9.receiver = self;
  v9.super_class = CPLAssetChange;
  v2 = [(CPLItemChange *)&v9 init];
  v3 = v2;
  if (v2)
  {
    keywords = v2->_keywords;
    v5 = MEMORY[0x1E695E0F0];
    v2->_keywords = MEMORY[0x1E695E0F0];

    resources = v3->_resources;
    v3->_resources = v5;

    people = v3->_people;
    v3->_people = v5;
  }

  return v3;
}

+ (BOOL)requiresStableHashForResourceType:(unint64_t)a3
{
  result = 1;
  if (a3 != 2 && a3 != 16)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___CPLAssetChange;
    return objc_msgSendSuper2(&v7, sel_requiresStableHashForResourceType_);
  }

  return result;
}

+ (id)copyPropertyBlockForDirection:(unint64_t)a3
{
  if (a3 == 1)
  {
    return &__block_literal_global_11;
  }

  else
  {
    return 0;
  }
}

uint64_t __48__CPLAssetChange_copyPropertyBlockForDirection___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, char *a7)
{
  v10 = a2;
  if (sel_facesData == a7)
  {
    v12 = a3;
    v13 = [a4 facesData];
    v14 = [v12 facesData];

    if (v13 && v14)
    {
      if ([v13 isEqual:v14])
      {
        goto LABEL_10;
      }
    }

    else if (!(v13 | v14))
    {
      goto LABEL_10;
    }

    if (_CPLFacesDataAreAlmostIdentical(v13, v14))
    {
      [v10 setFacesData:v13];
      v11 = 1;
LABEL_11:

      goto LABEL_12;
    }

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v11 = 0;
LABEL_12:

  return v11;
}

+ (id)equalityBlockForDirection:(unint64_t)a3
{
  v3 = &__block_literal_global_8;
  if (a3 != 2)
  {
    v3 = 0;
  }

  if (a3 == 1)
  {
    return &__block_literal_global_19154;
  }

  else
  {
    return v3;
  }
}

uint64_t __44__CPLAssetChange_equalityBlockForDirection___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, char *a5)
{
  if (sel_facesData == a5)
  {
    v9 = a3;
    v10 = [a2 facesData];
    v11 = [v9 facesData];

    if (_CPLFacesDataAreAlmostIdentical(v10, v11))
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }
  }

  else if (sel_computeStateLastUpdatedDate == a5 || sel_computeStateAdjustmentFingerprint == a5 || sel_computeStateVersion == a5)
  {
    return 2;
  }

  else
  {
    return 0;
  }

  return v7;
}

uint64_t __44__CPLAssetChange_equalityBlockForDirection___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4, char *a5)
{
  if (sel_facesData == a5)
  {
    v7 = a3;
    v8 = [a2 facesData];
    v9 = [v7 facesData];

    if (!v8 || !v9)
    {
      if (v8 | v9)
      {
        v5 = 1;
      }

      else
      {
        v5 = 2;
      }

      goto LABEL_15;
    }

    if (([v8 isEqual:v9] & 1) == 0)
    {
      v5 = 1;
LABEL_15:

      return v5;
    }

    v10 = [[CPLFaceAnalysisReference alloc] initWithData:v9];
    v11 = [(CPLFaceAnalysis *)v10 petFaceInstances];
    if ([v11 count])
    {
    }

    else
    {
      v12 = [(CPLFaceAnalysis *)v10 torsoFaceInstances];
      v13 = [v12 count];

      if (!v13)
      {
        v5 = 2;
        goto LABEL_14;
      }
    }

    v5 = 1;
LABEL_14:

    goto LABEL_15;
  }

  return 0;
}

@end
@interface CPLAssetChange
+ (BOOL)cplShouldIgnorePropertyForCoding:(id)coding;
+ (BOOL)cplShouldIgnorePropertyForEquality:(id)equality;
+ (BOOL)requiresStableHashForResourceType:(unint64_t)type;
+ (id)copyPropertyBlockForDirection:(unint64_t)direction;
+ (id)equalityBlockForDirection:(unint64_t)direction;
- (BOOL)canLowerQuota;
- (BOOL)isEPPRecord;
- (BOOL)validateChangeWithError:(id *)error;
- (BOOL)validateFullRecord;
- (BOOL)validateRecordForTracker:(id)tracker;
- (CPLAssetChange)init;
- (CPLAssetChange)initWithCoder:(id)coder;
- (CPLFaceAnalysisReference)faces;
- (id)allRelatedScopedIdentifiers;
- (id)checkDefaultValueBlockForPropertyWithSelector:(SEL)selector;
- (id)compactedChangeWithRelatedChanges:(id)changes isOnlyChange:(BOOL)change fullRecord:(id)record usingStorageView:(id)view;
- (id)fingerprintSchemeWithContext:(id)context;
- (id)masterScopedIdentifier;
- (id)propertiesDescription;
- (id)propertiesForChangeType:(unint64_t)type;
- (id)resourceForType:(unint64_t)type;
- (id)scopeIdentifiersForQuarantine;
- (id)scopedIdentifiersForMapping;
- (id)translateToClientChangeUsingIDMapping:(id)mapping error:(id *)error;
- (id)translateToCloudChangeUsingIDMapping:(id)mapping error:(id *)error;
- (int64_t)dequeueOrder;
- (unint64_t)fullChangeTypeForFullRecord;
- (unint64_t)supportedChangeTypes;
- (void)copyDerivativesFromRecordIfPossible:(id)possible;
- (void)setFaces:(id)faces;
- (void)setFacesData:(id)data;
- (void)setKeywords:(id)keywords;
- (void)setMasterScopedIdentifier:(id)identifier;
- (void)setPeople:(id)people;
- (void)setResources:(id)resources;
@end

@implementation CPLAssetChange

- (CPLAssetChange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CPLAssetChange;
  v5 = [(CPLRecordChange *)&v10 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    facesData = [(CPLAssetChange *)v5 facesData];

    if (!facesData)
    {
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"faces"];
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

+ (BOOL)cplShouldIgnorePropertyForEquality:(id)equality
{
  equalityCopy = equality;
  if ([equalityCopy isEqual:@"faces"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CPLAssetChange;
    v5 = objc_msgSendSuper2(&v7, sel_cplShouldIgnorePropertyForEquality_, equalityCopy);
  }

  return v5;
}

+ (BOOL)cplShouldIgnorePropertyForCoding:(id)coding
{
  codingCopy = coding;
  if ([codingCopy isEqual:@"faces"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CPLAssetChange;
    v5 = objc_msgSendSuper2(&v7, sel_cplShouldIgnorePropertyForCoding_, codingCopy);
  }

  return v5;
}

- (id)translateToClientChangeUsingIDMapping:(id)mapping error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  mappingCopy = mapping;
  v15.receiver = self;
  v15.super_class = CPLAssetChange;
  v7 = [(CPLRecordChange *)&v15 translateToClientChangeUsingIDMapping:mappingCopy error:error];
  if (v7)
  {
    v14 = 0;
    masterScopedIdentifier = [(CPLAssetChange *)self masterScopedIdentifier];
    if (masterScopedIdentifier)
    {
      v9 = [mappingCopy localScopedIdentifierForCloudScopedIdentifier:masterScopedIdentifier isFinal:&v14];
      if (v9)
      {
        [v7 setMasterScopedIdentifier:v9];
      }

      else
      {
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Can't map cloud masterScopedIdentifier in %@", objc_opt_class()];
        if (error)
        {
          *error = [CPLErrors invalidClientCacheErrorWithReason:v10];
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v11 = __CPLGenericOSLogDomain();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v17 = masterScopedIdentifier;
            v18 = 2112;
            selfCopy = self;
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

- (id)translateToCloudChangeUsingIDMapping:(id)mapping error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  mappingCopy = mapping;
  v15.receiver = self;
  v15.super_class = CPLAssetChange;
  v7 = [(CPLRecordChange *)&v15 translateToCloudChangeUsingIDMapping:mappingCopy error:error];
  if (v7)
  {
    v14 = 0;
    masterScopedIdentifier = [(CPLAssetChange *)self masterScopedIdentifier];
    if (masterScopedIdentifier)
    {
      v9 = [mappingCopy cloudScopedIdentifierForLocalScopedIdentifier:masterScopedIdentifier isFinal:&v14];
      if (v9)
      {
        [v7 setMasterScopedIdentifier:v9];
      }

      else
      {
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Can't map local masterScopedIdentifier in %@", objc_opt_class()];
        if (error)
        {
          *error = [CPLErrors invalidClientCacheErrorWithReason:v10];
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v11 = __CPLGenericOSLogDomain();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v17 = masterScopedIdentifier;
            v18 = 2112;
            selfCopy = self;
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
  scopedIdentifiersForMapping = [(CPLRecordChange *)&v8 scopedIdentifiersForMapping];
  v5 = [v3 initWithArray:scopedIdentifiersForMapping];

  masterScopedIdentifier = [(CPLAssetChange *)self masterScopedIdentifier];
  if (masterScopedIdentifier)
  {
    [v5 addObject:masterScopedIdentifier];
  }

  return v5;
}

- (id)compactedChangeWithRelatedChanges:(id)changes isOnlyChange:(BOOL)change fullRecord:(id)record usingStorageView:(id)view
{
  changeCopy = change;
  v83 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  recordCopy = record;
  viewCopy = view;
  if ([(CPLRecordChange *)self changeType]== 1024)
  {
    selfCopy = self;
    goto LABEL_53;
  }

  selfCopy2 = self;
  v76 = 0;
  v77 = &v76;
  v78 = 0x2020000000;
  v79 = 0;
  v60 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = [changesCopy mutableCopy];
  scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
  v12 = [viewCopy recordViewsWithRelatedScopedIdentifier:scopedIdentifier class:objc_opt_class()];

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
        scopedIdentifier2 = [v16 scopedIdentifier];
        v18 = [v10 objectForKey:scopedIdentifier2];
        if (v18)
        {
          [v10 removeObjectForKey:scopedIdentifier2];
          if ([v18 changeType] == 1024)
          {
            *(v77 + 24) = 1;
            goto LABEL_22;
          }

          relation = [v18 relation];
          if (v71[5])
          {
            recordModificationDate = [v18 recordModificationDate];

            if (recordModificationDate)
            {
              v24 = v71[5];
              recordModificationDate2 = [v18 recordModificationDate];
              v26 = [v24 laterDate:recordModificationDate2];
              v27 = v71[5];
              v71[5] = v26;

              goto LABEL_17;
            }
          }

          else
          {
            recordModificationDate3 = [v18 recordModificationDate];
            recordModificationDate2 = v71[5];
            v71[5] = recordModificationDate3;
LABEL_17:
          }

          if (!relation)
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

            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            v52 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLClientCacheView_Extensions.m"];
            [currentHandler handleFailureInMethod:a2 object:selfCopy2 file:v52 lineNumber:513 description:{@"%@ has no relation", v18}];

            goto LABEL_66;
          }

          relation2 = [v16 relation];
          v30 = [relation isEqual:relation2];

          if ((v30 & 1) == 0)
          {
            *(v77 + 24) = 1;
          }

          [v60 addObject:relation];

          goto LABEL_22;
        }

        relation3 = [v16 relation];
        v20 = relation3 == 0;

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

          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          v49 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLClientCacheView_Extensions.m"];
          [currentHandler2 handleFailureInMethod:a2 object:selfCopy2 file:v49 lineNumber:496 description:{@"%@ in client cache has no relation", v16}];

LABEL_66:
          abort();
        }

        relation4 = [v16 relation];
        [v60 addObject:relation4];

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
  v61[4] = selfCopy2;
  v31 = v60;
  v62 = v31;
  [v10 enumerateKeysAndObjectsUsingBlock:v61];
  if (recordCopy)
  {
    [recordCopy setContainerRelations:v31];
    if (v71[5])
    {
      recordModificationDate4 = [recordCopy recordModificationDate];
      v33 = recordModificationDate4;
      v34 = v71[5];
      if (recordModificationDate4)
      {
        v35 = [recordModificationDate4 laterDate:v34];
        [recordCopy setRecordModificationDate:v35];
      }

      else
      {
        [recordCopy setRecordModificationDate:v34];
      }
    }
  }

  if (changeCopy)
  {
    if (*(v77 + 24) == 1)
    {
      v36 = objc_opt_class();
      scopedIdentifier3 = [(CPLRecordChange *)selfCopy2 scopedIdentifier];
      v38 = [v36 newChangeWithScopedIdentifier:scopedIdentifier3 changeType:16];

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
    if ([(CPLRecordChange *)selfCopy2 isFullRecord])
    {
      if ([v31 count])
      {
        [(CPLItemChange *)selfCopy2 setContainerRelations:v31];
      }
    }

    else if (*(v77 + 24) == 1)
    {
      v38 = [(CPLAssetChange *)selfCopy2 copy];
      if ([v31 count])
      {
        [(CPLItemChange *)v38 setContainerRelations:v31];
      }

      changeType = [(CPLRecordChange *)v38 changeType];
      if (changeType)
      {
        v40 = changeType | 0x10;
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
        recordModificationDate5 = [(CPLRecordChange *)v38 recordModificationDate];

        if (recordModificationDate5)
        {
          recordModificationDate6 = [(CPLRecordChange *)v38 recordModificationDate];
          v43 = [recordModificationDate6 laterDate:v71[5]];
          [(CPLRecordChange *)v38 setRecordModificationDate:v43];
        }

        else
        {
          [(CPLRecordChange *)v38 setRecordModificationDate:v71[5]];
        }
      }

      goto LABEL_52;
    }

    v38 = selfCopy2;
    if (v38)
    {
      goto LABEL_48;
    }
  }

LABEL_52:
  v44 = v62;
  selfCopy = v38;

  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v76, 8);
LABEL_53:

  v45 = *MEMORY[0x1E69E9840];

  return selfCopy;
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

- (BOOL)validateRecordForTracker:(id)tracker
{
  v40 = *MEMORY[0x1E69E9840];
  trackerCopy = tracker;
  v34.receiver = self;
  v34.super_class = CPLAssetChange;
  if (![(CPLRecordChange *)&v34 validateRecordForTracker:trackerCopy])
  {
    goto LABEL_40;
  }

  if ([(CPLRecordChange *)self isFullRecord])
  {
    masterScopedIdentifier = [(CPLAssetChange *)self masterScopedIdentifier];
    if (masterScopedIdentifier)
    {
      if ([trackerCopy knowsClientRecordWithScopedIdentifier:masterScopedIdentifier])
      {

        goto LABEL_6;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v24 = __CPLSessionOSLogDomain_16325();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          selfCopy3 = self;
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
          selfCopy3 = self;
          _os_log_impl(&dword_1DC05A000, v24, OS_LOG_TYPE_ERROR, "Client pushed an asset with no master identifier: %@", buf, 0xCu);
        }

        v25 = 0;
        goto LABEL_37;
      }

      v25 = 0;
    }

LABEL_38:
    pushChangeTasks = [trackerCopy pushChangeTasks];
    scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
    v22 = pushChangeTasks;
    v23 = v25;
LABEL_39:
    [v22 addTask:v23 forRecordWithScopedIdentifier:scopedIdentifier];

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
  masterScopedIdentifier = [(CPLItemChange *)self containerRelations];
  v6 = [masterScopedIdentifier countByEnumeratingWithState:&v30 objects:v39 count:16];
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
        objc_enumerationMutation(masterScopedIdentifier);
      }

      containerIdentifier = [*(*(&v30 + 1) + 8 * i) containerIdentifier];
      if (!containerIdentifier || (v13 = containerIdentifier, v14 = [CPLScopedIdentifier alloc], [(CPLRecordChange *)self scopedIdentifier], v15 = objc_claimAutoreleasedReturnValue(), v16 = [(CPLScopedIdentifier *)v14 initRelativeToScopedIdentifier:v15 identifier:v13], v15, v13, !v16))
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v19 = __CPLSessionOSLogDomain_16325();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            selfCopy3 = self;
            _os_log_impl(&dword_1DC05A000, v19, OS_LOG_TYPE_ERROR, "Client pushed a relation with no album in an asset: %@", buf, 0xCu);
          }
        }

        pushChangeTasks = [trackerCopy pushChangeTasks];
        scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
        v22 = pushChangeTasks;
        v23 = 0;
        goto LABEL_39;
      }

      if (([trackerCopy knowsClientRecordWithScopedIdentifier:v16] & 1) == 0)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v17 = __CPLSessionOSLogDomain_16325();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v29;
            selfCopy3 = v16;
            v37 = 2112;
            selfCopy4 = self;
            _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_DEFAULT, "Client pushed an asset belonging in an unknown album %@: %@", buf, 0x16u);
          }
        }

        pushChangeTasks2 = [trackerCopy pushChangeTasks];
        [pushChangeTasks2 addTask:5 forRecordWithScopedIdentifier:v16];

        v10 = 0;
      }
    }

    v8 = [masterScopedIdentifier countByEnumeratingWithState:&v30 objects:v39 count:16];
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
  scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
  if ([(CPLRecordChange *)self isFullRecord])
  {
    v9[0] = scopedIdentifier;
    masterScopedIdentifier = [(CPLAssetChange *)self masterScopedIdentifier];
    v9[1] = masterScopedIdentifier;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  }

  else
  {
    v8 = scopedIdentifier;
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

- (void)setFacesData:(id)data
{
  dataCopy = data;
  v4 = [dataCopy length];
  if (v4)
  {
    v4 = [dataCopy copy];
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

- (void)setFaces:(id)faces
{
  facesCopy = faces;
  v9 = facesCopy;
  if (facesCopy)
  {
    data = [facesCopy data];
    p_facesData = &self->_facesData;
    v7 = *p_facesData;
    *p_facesData = data;

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

- (BOOL)validateChangeWithError:(id *)error
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
      if (error && !masterIdentifier)
      {
        v7 = [CPLErrors cplErrorWithCode:18 description:@"%@ has no master identifier", self];
        v5 = v7;
        LOBYTE(v5) = 0;
        *error = v7;
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
  validateFullRecord = [(CPLRecordChange *)&v5 validateFullRecord];
  if (validateFullRecord)
  {
    LOBYTE(validateFullRecord) = self->_masterIdentifier != 0;
  }

  return validateFullRecord;
}

- (id)checkDefaultValueBlockForPropertyWithSelector:(SEL)selector
{
  if (sel_assetHDRType == selector)
  {
    v7 = &__block_literal_global_105_19040;
    goto LABEL_34;
  }

  if (sel_originalChoice == selector)
  {
    v7 = &__block_literal_global_109;
    goto LABEL_34;
  }

  if (sel_assetDate == selector || sel_facesData == selector || sel_timeZoneOffset == selector || sel_mediaGroupIdentifier == selector)
  {
    v6 = _CPLDefaultValueObjectNil;
LABEL_33:
    v7 = MEMORY[0x1E128EBA0](v6, a2);
    goto LABEL_34;
  }

  if (sel_people == selector || sel_videoComplementDurationValue == selector || sel_videoComplementDurationTimescale == selector || sel_videoComplementImageDisplayValue == selector || sel_videoComplementImageDisplayTimescale == selector || sel_videoComplementVisibilityState == selector || sel_playCount == selector || sel_shareCount == selector || sel_viewCount == selector || sel_customRenderedValue == selector || sel_viewPresentation == selector)
  {
    v6 = _CPLDefaultValueNSINTEGER0;
    goto LABEL_33;
  }

  if (sel_assetSubtype == selector)
  {
    v7 = &__block_literal_global_141;
  }

  else if (sel_keywords == selector)
  {
    v7 = &__block_literal_global_145;
  }

  else if (sel_trashedReason == selector)
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
  allRelatedScopedIdentifiers = [(CPLRecordChange *)&v37 allRelatedScopedIdentifiers];
  faces = [(CPLAssetChange *)self faces];
  v4Faces = [faces faces];
  if ([v4Faces count] || -[NSArray count](self->_people, "count"))
  {
    v28 = allRelatedScopedIdentifiers;
    allRelatedScopedIdentifiers = [allRelatedScopedIdentifiers mutableCopy];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v27 = v4Faces;
    v6 = v4Faces;
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

          personIdentifier = [*(*(&v33 + 1) + 8 * i) personIdentifier];
          if (personIdentifier)
          {
            v12 = personIdentifier;
            v13 = [CPLScopedIdentifier alloc];
            scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
            v15 = [(CPLScopedIdentifier *)v13 initRelativeToScopedIdentifier:scopedIdentifier identifier:v12];

            if (v15)
            {
              [allRelatedScopedIdentifiers addObject:v15];
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

          personIdentifier2 = [*(*(&v29 + 1) + 8 * j) personIdentifier];
          if (personIdentifier2)
          {
            v22 = [CPLScopedIdentifier alloc];
            scopedIdentifier2 = [(CPLRecordChange *)self scopedIdentifier];
            v24 = [(CPLScopedIdentifier *)v22 initRelativeToScopedIdentifier:scopedIdentifier2 identifier:personIdentifier2];

            [allRelatedScopedIdentifiers addObject:v24];
          }
        }

        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v18);
    }

    if (v28)
    {
      [allRelatedScopedIdentifiers unionSet:v28];
    }

    v4Faces = v27;
  }

  v25 = *MEMORY[0x1E69E9840];

  return allRelatedScopedIdentifiers;
}

- (int64_t)dequeueOrder
{
  assetDate = [(CPLAssetChange *)self assetDate];
  if (assetDate)
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
    dequeueOrder = [(CPLRecordChange *)&v8 dequeueOrder];
  }

  v6 = dequeueOrder;

  return v6;
}

- (void)setPeople:(id)people
{
  peopleCopy = people;
  if ([peopleCopy count])
  {
    v4 = [peopleCopy sortedArrayUsingComparator:&__block_literal_global_93_19045];
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

- (void)setKeywords:(id)keywords
{
  v23 = *MEMORY[0x1E69E9840];
  keywordsCopy = keywords;
  if ([keywordsCopy count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:keywordsCopy];
    v7 = [v6 count];
    if (v7 != [keywordsCopy count] && (_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = objc_opt_class();
        v10 = v9;
        scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
        v12 = NSStringFromSelector(a2);
        v17 = 138412802;
        v18 = v9;
        v19 = 2112;
        v20 = scopedIdentifier;
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

- (void)copyDerivativesFromRecordIfPossible:(id)possible
{
  v45 = *MEMORY[0x1E69E9840];
  possibleCopy = possible;
  if ([possibleCopy isAssetChange])
  {
    adjustments = [(CPLAssetChange *)self adjustments];
    if (!adjustments)
    {
LABEL_29:

      goto LABEL_30;
    }

    adjustments2 = [possibleCopy adjustments];
    if (adjustments2)
    {
      otherAdjustmentsFingerprint = [adjustments otherAdjustmentsFingerprint];
      otherAdjustmentsFingerprint2 = [adjustments2 otherAdjustmentsFingerprint];
      v9 = otherAdjustmentsFingerprint2;
      if (otherAdjustmentsFingerprint && otherAdjustmentsFingerprint2)
      {
        v10 = [otherAdjustmentsFingerprint isEqual:otherAdjustmentsFingerprint2];

        if ((v10 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_9:
        v11 = [(NSDictionary *)self->_resourcePerResourceType objectForKeyedSubscript:&unk_1F57EF6F8];
        identity = [v11 identity];
        fingerPrint = [identity fingerPrint];

        v14 = [possibleCopy resourceForType:13];
        identity2 = [v14 identity];
        fingerPrint2 = [identity2 fingerPrint];

        if (fingerPrint && fingerPrint2)
        {
          if (([fingerPrint isEqual:fingerPrint2] & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        else if (fingerPrint | fingerPrint2)
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
        [(CPLRecordChange *)self copyDerivatives:&copyDerivativesFromRecordIfPossible__originalDerivativesImageAndVideo_19064 count:9 avoidResourceType:0 fromRecord:possibleCopy inResourcePerType:v17];
        if (v18 >= [v17 count])
        {
          if (_CPLSilentLogging)
          {
LABEL_26:

            goto LABEL_27;
          }

          allValues = __CPLGenericOSLogDomain();
          if (os_log_type_enabled(allValues, OS_LOG_TYPE_DEFAULT))
          {
            v30 = objc_opt_class();
            v34 = v30;
            scopedIdentifier = [possibleCopy scopedIdentifier];
            v25 = objc_opt_class();
            v32 = v25;
            scopedIdentifier2 = [(CPLRecordChange *)self scopedIdentifier];
            *buf = 138413058;
            v36 = v30;
            v37 = 2112;
            v38 = scopedIdentifier;
            v39 = 2112;
            v40 = v25;
            v41 = 2112;
            v42 = scopedIdentifier2;
            _os_log_impl(&dword_1DC05A000, allValues, OS_LOG_TYPE_DEFAULT, "Found no derivatives to copy from <%@ %@> to <%@ %@>", buf, 0x2Au);
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
              scopedIdentifier3 = [possibleCopy scopedIdentifier];
              v21 = objc_opt_class();
              v31 = v21;
              [(CPLRecordChange *)self scopedIdentifier];
              *buf = 134219010;
              v36 = v29;
              v37 = 2112;
              v38 = v28;
              v39 = 2112;
              v40 = scopedIdentifier3;
              v41 = 2112;
              v42 = v21;
              v44 = v43 = 2112;
              v22 = v44;
              _os_log_impl(&dword_1DC05A000, v19, OS_LOG_TYPE_DEFAULT, "Automatically copied %lu derivatives from <%@ %@> to <%@ %@>", buf, 0x34u);
            }
          }

          allValues = [v17 allValues];
          [(CPLAssetChange *)self setResources:allValues];
        }

        goto LABEL_26;
      }

      if (!(otherAdjustmentsFingerprint | v9))
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

- (id)resourceForType:(unint64_t)type
{
  resourcePerResourceType = self->_resourcePerResourceType;
  if (resourcePerResourceType)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
    v5 = [(NSDictionary *)resourcePerResourceType objectForKeyedSubscript:v4];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CPLAssetChange;
    v5 = [(CPLRecordChange *)&v7 resourceForType:type];
  }

  return v5;
}

- (void)setResources:(id)resources
{
  v27 = *MEMORY[0x1E69E9840];
  v20 = 0;
  resourcesCopy = resources;
  v6 = [CPLResource normalizedResourcesFromResources:resourcesCopy resourcePerResourceType:&v20];
  v7 = v20;
  v8 = [(NSArray *)v6 count];
  v9 = [resourcesCopy count];

  if (v8 != v9 && (_CPLSilentLogging & 1) == 0)
  {
    v10 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = v11;
      scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
      v14 = NSStringFromSelector(a2);
      *buf = 138412802;
      v22 = v11;
      v23 = 2112;
      v24 = scopedIdentifier;
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

- (void)setMasterScopedIdentifier:(id)identifier
{
  v29 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  scopeIdentifier = [identifierCopy scopeIdentifier];
  scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
  scopeIdentifier2 = [scopedIdentifier scopeIdentifier];

  if (scopeIdentifier && scopeIdentifier2)
  {
    v8 = [scopeIdentifier isEqual:scopeIdentifier2];

    if ((v8 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {

    if (scopeIdentifier | scopeIdentifier2)
    {
LABEL_4:
      if ((_CPLSilentLogging & 1) == 0)
      {
        v9 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = NSStringFromSelector(a2);
          scopedIdentifier2 = [(CPLRecordChange *)self scopedIdentifier];
          scopeIdentifier3 = [scopedIdentifier2 scopeIdentifier];
          scopeIdentifier4 = [identifierCopy scopeIdentifier];
          *buf = 138412802;
          v24 = v10;
          v25 = 2112;
          v26 = scopeIdentifier3;
          v27 = 2112;
          v28 = scopeIdentifier4;
          _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "Invalid call to %@ with mismatched scope: %@ vs. %@", buf, 0x20u);
        }
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLAssetChange.m"];
      v16 = NSStringFromSelector(a2);
      scopedIdentifier3 = [(CPLRecordChange *)self scopedIdentifier];
      scopeIdentifier5 = [scopedIdentifier3 scopeIdentifier];
      scopeIdentifier6 = [identifierCopy scopeIdentifier];
      [currentHandler handleFailureInMethod:a2 object:self file:v15 lineNumber:229 description:{@"Invalid call to %@ with mismatched scope: %@ vs. %@", v16, scopeIdentifier5, scopeIdentifier6}];

      abort();
    }
  }

  identifier = [identifierCopy identifier];
  [(CPLAssetChange *)self setMasterIdentifier:identifier];

  v21 = *MEMORY[0x1E69E9840];
}

- (id)masterScopedIdentifier
{
  masterIdentifier = [(CPLAssetChange *)self masterIdentifier];
  if (masterIdentifier)
  {
    v4 = [CPLScopedIdentifier alloc];
    scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
    v6 = [(CPLScopedIdentifier *)v4 initRelativeToScopedIdentifier:scopedIdentifier identifier:masterIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)propertiesForChangeType:(unint64_t)type
{
  if (propertiesForChangeType__onceToken_19078 != -1)
  {
    dispatch_once(&propertiesForChangeType__onceToken_19078, &__block_literal_global_43);
  }

  if (type == 32)
  {
    v5 = propertiesForChangeType__facesProperties;
    goto LABEL_7;
  }

  if (type == 8)
  {
    v5 = propertiesForChangeType__resourceProperties;
LABEL_7:
    v6 = v5;
    goto LABEL_9;
  }

  v8.receiver = self;
  v8.super_class = CPLAssetChange;
  v6 = [(CPLItemChange *)&v8 propertiesForChangeType:type];
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
  selfCopy = self;
  v47 = *MEMORY[0x1E69E9840];
  changeType = [(CPLRecordChange *)self changeType];
  containerDescription = [(CPLItemChange *)selfCopy containerDescription];
  resourcesDescription = [(CPLRecordChange *)selfCopy resourcesDescription];
  v6 = resourcesDescription;
  if (!changeType || (changeType & 8) != 0)
  {
    v9 = " / ";
    adjustments = [(CPLAssetChange *)selfCopy adjustments];
    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    v11 = "";
    if (![containerDescription length])
    {
      v9 = "";
    }

    if ([v6 length])
    {
      v11 = " ";
    }

    if (adjustments)
    {
      adjustmentSimpleDescription = [adjustments adjustmentSimpleDescription];
      v7 = [v10 initWithFormat:@"%s%@%s%@", v9, v6, v11, adjustmentSimpleDescription];

      v6 = adjustmentSimpleDescription;
    }

    else
    {
      v7 = [v10 initWithFormat:@"%s%@%s%@", v9, v6, v11, @"no adj."];
    }
  }

  else
  {
    v7 = &stru_1F57BD298;
    adjustments = resourcesDescription;
  }

  if (!changeType || (changeType & 0x20) != 0)
  {
    v14 = " / ";
    if (![containerDescription length] && !-[__CFString length](v7, "length"))
    {
      v14 = "";
    }

    faces = [(CPLAssetChange *)selfCopy faces];
    v15Faces = [faces faces];
    if ([v15Faces count] | changeType)
    {
      v34 = v15Faces;
      v35 = v14;
      v37 = changeType;
      v38 = v7;
      v39 = selfCopy;
      v40 = containerDescription;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v36 = faces;
      obj = [faces faces];
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
            isKeyFace = [v25 isKeyFace];
            if ([v25 isManual])
            {
              ++v20;
            }

            else
            {
              personIdentifier = [v25 personIdentifier];

              if (personIdentifier)
              {
                ++v22;
              }
            }

            v19 += isKeyFace;
            rejectedPersonIdentifiers = [v25 rejectedPersonIdentifiers];
            v21 += [rejectedPersonIdentifiers count];
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
      selfCopy = v39;
      containerDescription = v40;
      changeType = v37;
      v7 = v38;
      faces = v36;
      v15Faces = v34;
    }

    else
    {
      v13 = &stru_1F57BD298;
    }

    if (!changeType)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v13 = &stru_1F57BD298;
  }

  if ((changeType & 2) == 0)
  {
    v29 = &stru_1F57BD298;
    goto LABEL_43;
  }

LABEL_37:
  if ([containerDescription length])
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

  v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"master: %@%s", selfCopy->_masterIdentifier, v30];
LABEL_43:
  v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%@%@%@", v29, containerDescription, v7, v13];

  v32 = *MEMORY[0x1E69E9840];

  return v31;
}

- (BOOL)isEPPRecord
{
  masterIdentifier = [(CPLAssetChange *)self masterIdentifier];
  if (masterIdentifier)
  {
    v3 = [CPLFingerprintScheme isMMCSv2Fingerprint:masterIdentifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)fingerprintSchemeWithContext:(id)context
{
  v22 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v6 = contextCopy;
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
          selfCopy = self;
          _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_ERROR, "%@ called on %@ with master identifier not set", buf, 0x16u);
        }
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLAssetChange.m"];
      v17 = NSStringFromSelector(a2);
      [currentHandler handleFailureInMethod:a2 object:self file:v16 lineNumber:121 description:{@"%@ called on %@ with master identifier not set", v17, self}];

      abort();
    }

    v8 = [contextCopy fingerprintSchemeForMasterIdentifier:?];
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

+ (BOOL)requiresStableHashForResourceType:(unint64_t)type
{
  result = 1;
  if (type != 2 && type != 16)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CPLAssetChange;
    return objc_msgSendSuper2(&v7, sel_requiresStableHashForResourceType_);
  }

  return result;
}

+ (id)copyPropertyBlockForDirection:(unint64_t)direction
{
  if (direction == 1)
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

+ (id)equalityBlockForDirection:(unint64_t)direction
{
  v3 = &__block_literal_global_8;
  if (direction != 2)
  {
    v3 = 0;
  }

  if (direction == 1)
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
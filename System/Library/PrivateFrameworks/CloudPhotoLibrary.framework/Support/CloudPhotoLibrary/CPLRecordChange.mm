@interface CPLRecordChange
+ (id)assetTransferOptionsByRecordTypeAndKey;
+ (id)ckValueForRelatedRecord:(id)record;
+ (void)setRelatedValueOnRecord:(id)record fromRelatedRecord:(id)relatedRecord;
- (BOOL)fillCKRecordBuilderWithResourceChange:(id)change resourceCountAndSize:(id)size scopeProvider:(id)provider error:(id *)error;
- (BOOL)fillResourcesOfCKRecordBuilder:(id)builder clearMissing:(BOOL)missing resourceCountAndSize:(id)size scopeProvider:(id)provider error:(id *)error;
- (BOOL)prepareWithCKRecordBuilder:(id)builder resourceCountAndSize:(id)size scopeProvider:(id)provider error:(id *)error;
- (BOOL)shouldUseEncryptedPropertiesIfPossibleWithContext:(id)context;
- (void)fillCKRecord:(id)record scopeProvider:(id)provider;
- (void)fillWithCKRecord:(id)record missingResourceProperties:(id *)properties scopeProvider:(id)provider;
- (void)prepareWithCKRecord:(id)record scopeIdentifier:(id)identifier scopeProvider:(id)provider currentUserRecordID:(id)d;
@end

@implementation CPLRecordChange

+ (id)assetTransferOptionsByRecordTypeAndKey
{
  if (qword_1002C5320 != -1)
  {
    sub_1001A39FC();
  }

  v3 = qword_1002C5328;

  return v3;
}

- (BOOL)fillResourcesOfCKRecordBuilder:(id)builder clearMissing:(BOOL)missing resourceCountAndSize:(id)size scopeProvider:(id)provider error:(id *)error
{
  missingCopy = missing;
  builderCopy = builder;
  sizeCopy = size;
  providerCopy = provider;
  resourceCopyFromScopedIdentifier = [(CPLRecordChange *)self resourceCopyFromScopedIdentifier];
  selfCopy = self;
  shouldOnlyUploadNewResources = [(CPLRecordChange *)self shouldOnlyUploadNewResources];
  if (resourceCopyFromScopedIdentifier)
  {
    v119 = 0;
    v18 = [builderCopy recordIDForResourcesOfRecordWithScopedIdentifier:resourceCopyFromScopedIdentifier cloudKitScope:&v119 error:error];
    v19 = v119;
    if (!v18)
    {
      LOBYTE(v20) = 0;
      goto LABEL_97;
    }
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  v84 = v19;
  v82 = a2;
  v88 = resourceCopyFromScopedIdentifier;
  v92 = shouldOnlyUploadNewResources ^ 1;
  v87 = missingCopy & (shouldOnlyUploadNewResources ^ 1);
  if (v87)
  {
    bzero(v127, 0x3E9uLL);
  }

  resources = [(CPLRecordChange *)self resources];
  v86 = providerCopy;
  fingerprintContext = [providerCopy fingerprintContext];
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v22 = resources;
  v23 = [v22 countByEnumeratingWithState:&v115 objects:v126 count:16];
  if (!v23)
  {
    v26 = 0;
    v20 = 1;
LABEL_88:

    providerCopy = v86;
    resourceCopyFromScopedIdentifier = v88;
    if ((v20 & v87) == 1)
    {
      v105[0] = _NSConcreteStackBlock;
      v105[1] = 3221225472;
      v105[2] = sub_10006BB9C;
      v105[3] = &unk_100275460;
      v107 = v127;
      v105[4] = selfCopy;
      v106 = builderCopy;
      [CPLResource enumerateResourceTypesWithBlock:v105];

      LOBYTE(v20) = 1;
    }

    goto LABEL_96;
  }

  v24 = v23;
  v85 = sizeCopy;
  v89 = builderCopy;
  v83 = v18;
  v96 = 0;
  v25 = 0;
  v26 = 0;
  v27 = *v116;
  v28 = &CPLFeatureNameEPP_ptr;
  v103 = v22;
LABEL_9:
  v29 = 0;
  while (1)
  {
    if (*v116 != v27)
    {
      objc_enumerationMutation(v22);
    }

    v30 = *(*(&v115 + 1) + 8 * v29);
    if ((CPLIsDynamicResource(v30) & 1) != 0 || [CPLCloudKitFakeDynamicDerivatives isFakeDerivative:v30])
    {
      goto LABEL_37;
    }

    if (!v26)
    {
      v26 = [(CPLRecordChange *)selfCopy fingerprintSchemeWithContext:fingerprintContext];
      v25 = [v26 isForStableHash] ^ 1;
      v96 = _CPLShouldValidateStableHash();
    }

    resourceType = [v30 resourceType];
    if (([v28[131] shouldIgnoreResourceTypeOnUpload:resourceType] & 1) == 0)
    {
      if ([(CPLRecordChange *)selfCopy supportsResourceType:resourceType])
      {
        break;
      }
    }

    v22 = v103;
LABEL_37:
    if (v24 == ++v29)
    {
      v71 = [v22 countByEnumeratingWithState:&v115 objects:v126 count:16];
      v24 = v71;
      if (!v71)
      {
        v20 = 1;
        goto LABEL_87;
      }

      goto LABEL_9;
    }
  }

  v100 = sub_100084A0C(CPLCloudKitResourceKeys, resourceType);
  v101 = v26;
  if (v100)
  {
    identity = [v30 identity];
    [identity imageDimensions];
    v34 = v33;
    v36 = v35;
    fileSize = [identity fileSize];
    fileUTI = [identity fileUTI];
    fingerPrint = [identity fingerPrint];
    v37 = [(CPLRecordChange *)selfCopy requiresStableHashForResourceType:resourceType];
    v97 = v25;
    v93 = v37;
    if ((v25 & 1) == 0)
    {
      goto LABEL_29;
    }

    v38 = v37;
    stableHash = [identity stableHash];
    if (stableHash)
    {
      v39 = 0;
    }

    else
    {
      v39 = v38;
    }

    if (v39 == 1)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v40 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = [CPLResource shortDescriptionForResourceType:resourceType];
          *buf = 138412546;
          v121 = selfCopy;
          v122 = 2112;
          v123 = v41;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Trying to upload resource type %@ on %@ without a stable hash", buf, 0x16u);
        }

        v28 = &CPLFeatureNameEPP_ptr;
      }

      if (v96)
      {
        if (error)
        {
          v73 = [v28[131] shortDescriptionForResourceType:resourceType];
          *error = [CPLErrors cplErrorWithCode:150 description:@"Trying to upload resource %@ without a stable hash", v73];
        }

        v18 = v83;
        resourceCopyFromScopedIdentifier = v88;
        builderCopy = v89;
        sizeCopy = v85;
        providerCopy = v86;
        v72 = v100;
LABEL_94:

        goto LABEL_95;
      }

LABEL_29:
      stableHash = 0;
    }

    fileURL = [identity fileURL];
    isAvailable = [identity isAvailable];
    if ((v92 | isAvailable & (fileURL != 0)) == 1)
    {
      v44 = isAvailable;
      v45 = 0;
      if (!v88 || fileURL || (v46 = [v30 sourceResourceType], sub_100084A0C(CPLCloudKitResourceKeys, v46), (v45 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        if (v44)
        {
          v91 = v45;
          v47 = (fileURL | v45) != 0;
        }

        else
        {
          v49 = v45;

          v91 = 0;
          fileURL = 0;
          v47 = ![(CPLRecordChange *)selfCopy shouldProtectResourceTypeFromClearing:resourceType];
        }

        if (v87)
        {
          v127[resourceType] = 1;
        }

        v50 = sub_1001ACA54([CPLCloudKitResourceRecordProperties alloc], v100, [(CPLRecordChange *)selfCopy recordClass], v101);
        v51 = v50;
        if (fileUTI)
        {
          v52 = 1;
        }

        else
        {
          v52 = (fileURL == 0) & v47;
        }

        sub_1000A3C34(v50, v89, fingerPrint, stableHash, v93, fileSize, fileUTI, v52, v34, v36);
        v90 = v51;
        if (v47)
        {
          if (fileURL)
          {
            if (v85)
            {
              fileSize2 = [identity fileSize];
              v54 = sub_1001941F8(v85);
              sub_100194204(v85, fileSize2 + v54);
            }

            v55 = [[CKAsset alloc] initWithFileURL:fileURL];
            [v55 setItemTypeHint:@"fxd"];
            [v101 configureAssetTransferOptionsForCKAsset:v55 scopeProvider:v86];
            v25 = v97;
            if ((_CPLSilentLogging & 1) == 0)
            {
              v56 = __CPLGenericOSLogDomain();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
              {
                scopedIdentifier = [(CPLRecordChange *)selfCopy scopedIdentifier];
                assetTransferOptions = [v55 assetTransferOptions];
                *buf = 138412546;
                v121 = scopedIdentifier;
                v122 = 2112;
                v123 = assetTransferOptions;
                _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "Setting asset transfer options for %@ to %@", buf, 0x16u);

                v25 = v97;
              }
            }

            [v55 setStorageGroupingPolicy:1];
            v59 = sub_1001A8CE0(v100);
            [v89 setCKAsset:v55 forKey:v59];

            v48 = 0;
            goto LABEL_72;
          }

          if (!v91)
          {
            v70 = sub_1001A8CE0(v100);
            [v89 setObject:0 forKey:v70];

            goto LABEL_70;
          }

          v25 = v97;
          if (fingerPrint)
          {
            if (v85)
            {
              v64 = sub_100194210(v85);
              sub_10019421C(v85, v64 + 1);
              fileSize3 = [identity fileSize];
              v66 = sub_100194228(v85);
              sub_100194234(v85, fileSize3 + v66);
            }

            if (!v84)
            {
              if ((_CPLSilentLogging & 1) == 0)
              {
                v75 = __CPLGenericOSLogDomain();
                if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
                {
                  v76 = sub_1001A8CE0(v91);
                  v77 = sub_1001A8CE0(v100);
                  *buf = 138412802;
                  v121 = v83;
                  v122 = 2112;
                  v123 = v76;
                  v124 = 2112;
                  v125 = v77;
                  _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "No source scope for %@ to find asset reference %@ for %@", buf, 0x20u);
                }
              }

              v78 = +[NSAssertionHandler currentHandler];
              v79 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CKRecord+CPL_base.m"];
              v80 = sub_1001A8CE0(v91);
              v81 = sub_1001A8CE0(v100);
              [v78 handleFailureInMethod:v82 object:selfCopy file:v79 lineNumber:1068 description:{@"No source scope for %@ to find asset reference %@ for %@", v83, v80, v81}];

              abort();
            }

            v67 = sub_1001A8CE0(v100);
            v108[0] = _NSConcreteStackBlock;
            v108[1] = 3221225472;
            v108[2] = sub_10006B8F8;
            v108[3] = &unk_100275438;
            v68 = v83;
            v109 = v68;
            v91 = v91;
            v110 = v91;
            v111 = fingerPrint;
            v112 = v100;
            v69 = v84;
            v113 = v69;
            v114 = v86;
            [v89 requestRecordWithID:v68 cloudKitScope:v69 forKey:v67 completionHandler:v108];

            goto LABEL_70;
          }

          if (error)
          {
            *error = [CPLErrors cplErrorWithCode:150 description:@"Trying to copy a resource with no fingerprint"];
          }

          v48 = 1;
LABEL_72:
          v22 = v103;

LABEL_73:
          if (v48 == 3)
          {
            v26 = v101;
            v28 = &CPLFeatureNameEPP_ptr;
          }

          else
          {
            v26 = v101;
            v28 = &CPLFeatureNameEPP_ptr;
            if (v48)
            {
              v20 = 0;
LABEL_87:
              v18 = v83;
              builderCopy = v89;
              sizeCopy = v85;
              goto LABEL_88;
            }
          }

          goto LABEL_37;
        }

LABEL_70:
        v48 = 0;
LABEL_71:
        v25 = v97;
        goto LABEL_72;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v60 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          v61 = [CPLResource shortDescriptionForResourceType:v46];
          v62 = [CPLResource shortDescriptionForResourceType:resourceType];
          *buf = 138412546;
          v121 = v61;
          v122 = 2112;
          v123 = v62;
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "Trying to copy an unsupported resource type %@ to %@", buf, 0x16u);
        }
      }

      if (error)
      {
        v63 = [CPLResource shortDescriptionForResourceType:v46];
        v90 = [CPLResource shortDescriptionForResourceType:resourceType];
        v91 = v63;
        [CPLErrors cplErrorWithCode:150 description:@"Trying to copy an unsupported resource type %@ to %@", v63, v90];
        *error = fileURL = 0;
        v48 = 1;
        goto LABEL_71;
      }

      fileURL = 0;
      v48 = 1;
    }

    else
    {
      v48 = 3;
    }

    v25 = v97;
    v22 = v103;
    goto LABEL_73;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    sub_1001A3A10(resourceType);
  }

  v18 = v83;
  resourceCopyFromScopedIdentifier = v88;
  builderCopy = v89;
  sizeCopy = v85;
  providerCopy = v86;
  if (error)
  {
    v72 = [v28[131] shortDescriptionForResourceType:resourceType];
    *error = [CPLErrors cplErrorWithCode:150 description:@"Trying to upload an unsupported resource type %@", v72];
    goto LABEL_94;
  }

LABEL_95:
  v22 = v103;

  LOBYTE(v20) = 0;
  v26 = v101;
LABEL_96:

  v19 = v84;
LABEL_97:

  return v20;
}

- (void)fillCKRecord:(id)record scopeProvider:(id)provider
{
  recordCopy = record;
  providerCopy = provider;
  v9 = objc_alloc_init(CPLSimpleRecordTargetMapping);
  v10 = [[CPLSimpleCKRecordBuilder alloc] initWithBaseCKRecord:recordCopy scopeProvider:0 currentUserRecordID:0 targetMapping:v9];
  v14 = 0;
  v11 = [(CPLRecordChange *)self prepareWithCKRecordBuilder:v10 resourceCountAndSize:0 scopeProvider:providerCopy error:&v14];
  v12 = v14;
  v13 = v12;
  if ((v11 & 1) == 0)
  {
    sub_1001A3AC8(v12, a2, self);
  }
}

- (BOOL)shouldUseEncryptedPropertiesIfPossibleWithContext:(id)context
{
  v3 = [(CPLRecordChange *)self fingerprintSchemeWithContext:context];
  isMMCSv2 = [v3 isMMCSv2];

  return isMMCSv2;
}

+ (id)ckValueForRelatedRecord:(id)record
{
  recordCopy = record;
  v6 = +[NSAssertionHandler currentHandler];
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CKRecord+CPL_base.m"];
  v8 = NSStringFromSelector(a2);
  [v6 handleFailureInMethod:a2 object:self file:v7 lineNumber:1175 description:{@"%@ should be implemented by subclasses", v8}];

  abort();
}

+ (void)setRelatedValueOnRecord:(id)record fromRelatedRecord:(id)relatedRecord
{
  recordCopy = record;
  relatedRecordCopy = relatedRecord;
  ckPropertyForRelatedIdentifier = [self ckPropertyForRelatedIdentifier];
  if (ckPropertyForRelatedIdentifier)
  {
    v8 = [self ckValueForRelatedRecord:relatedRecordCopy];
    [recordCopy setObject:v8 forKeyedSubscript:ckPropertyForRelatedIdentifier];
  }
}

- (void)prepareWithCKRecord:(id)record scopeIdentifier:(id)identifier scopeProvider:(id)provider currentUserRecordID:(id)d
{
  recordCopy = record;
  identifierCopy = identifier;
  providerCopy = provider;
  dCopy = d;
  recordID = [recordCopy recordID];
  v16 = [providerCopy scopedIdentifierForCKRecordID:recordID];
  if (!v16)
  {
    sub_1001ABD60(a2, self, recordID, v17, v18, v19, v20, v21, v52, v53, v55, v58, v61, v64, v66, v67, v68, v69, v70);
  }

  v22 = v16;
  [(CPLRecordChange *)self setScopedIdentifier:v16];
  v75 = 0;
  v23 = [recordCopy cpl_sharingRecordScopedIdentifierWithScopeProvider:providerCopy currentUserRecordID:dCopy isSparseRecord:&v75];
  v65 = providerCopy;
  if (![(CPLRecordChange *)self supportsSharingScopedIdentifier])
  {
    if (v75 == 1)
    {
      sub_1001ABA94(self);
      goto LABEL_42;
    }

    goto LABEL_36;
  }

  [(CPLRecordChange *)self setSharingRecordScopedIdentifier:v23];
  if (v75 != 1)
  {
    v25 = [recordCopy objectForKey:@"contributors"];
    if (!v25)
    {
      v30 = 0;
LABEL_35:
      [(CPLRecordChange *)self setSharingContributorUserIdentifiers:v30];

      goto LABEL_36;
    }

    objc_opt_class();
    v62 = v23;
    if (objc_opt_isKindOfClass())
    {
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v59 = v25;
      v26 = v25;
      v27 = [v26 countByEnumeratingWithState:&v71 objects:v80 count:16];
      if (v27)
      {
        v28 = v27;
        v54 = v22;
        v56 = recordID;
        v29 = dCopy;
        v57 = identifierCopy;
        v30 = 0;
        v31 = *v72;
        v32 = 1;
LABEL_12:
        v33 = 0;
        while (1)
        {
          if (*v72 != v31)
          {
            objc_enumerationMutation(v26);
          }

          v34 = *(*(&v71 + 1) + 8 * v33);
          if (v32)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              break;
            }
          }

          if (!v30)
          {
            v30 = [[NSMutableArray alloc] initWithCapacity:{-[NSObject count](v26, "count")}];
          }

          recordID2 = [v34 recordID];
          recordName = [recordID2 recordName];
          [v30 addObject:recordName];

          v32 = 0;
          if (v28 == ++v33)
          {
            v28 = [v26 countByEnumeratingWithState:&v71 objects:v80 count:16];
            v32 = 0;
            if (v28)
            {
              goto LABEL_12;
            }

            goto LABEL_21;
          }
        }

        if (_CPLSilentLogging)
        {
LABEL_21:
          dCopy = v29;
          recordID = v56;
          identifierCopy = v57;
          v22 = v54;
          goto LABEL_32;
        }

        v37 = __CPLGenericOSLogDomain();
        identifierCopy = v57;
        dCopy = v29;
        v22 = v54;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v77 = @"contributors";
          v78 = 2112;
          v79 = v26;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Got unexpected value for %@: %@", buf, 0x16u);
        }

        recordID = v56;
      }

      else
      {
        v30 = 0;
      }

LABEL_32:
      v25 = v59;
    }

    else
    {
      if (_CPLSilentLogging)
      {
        v30 = 0;
        goto LABEL_34;
      }

      v26 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v77 = @"contributors";
        v78 = 2112;
        v79 = v25;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Got unexpected value for %@: %@", buf, 0x16u);
      }

      v30 = 0;
    }

LABEL_34:
    v23 = v62;
    goto LABEL_35;
  }

  sharingRecordScopedIdentifier = [(CPLRecordChange *)self sharingRecordScopedIdentifier];

  if (!sharingRecordScopedIdentifier)
  {
    sub_1001ABC1C(self, recordCopy);
    goto LABEL_42;
  }

LABEL_36:
  v38 = [recordCopy objectForKey:@"recordModificationDate"];
  [(CPLRecordChange *)self setRecordModificationDate:v38];

  v39 = [recordCopy objectForKey:@"isDeleted"];
  -[CPLRecordChange setInTrash:](self, "setInTrash:", [v39 BOOLValue]);

  v40 = [recordCopy objectForKey:@"isExpunged"];
  -[CPLRecordChange setInExpunged:](self, "setInExpunged:", [v40 BOOLValue]);

  v66 = _NSConcreteStackBlock;
  v67 = 3221225472;
  v68 = sub_100099C74;
  v69 = &unk_100276870;
  v41 = recordCopy;
  v70 = v41;
  v42 = [CPLArchiver archivedDataWithRootObject:v41 usingBlock:&v66];
  [(CPLRecordChange *)self setRecordChangeData:v42];
  v43 = [v41 objectForKey:@"remappedRef"];
  if (v43)
  {
    v60 = recordCopy;
    v63 = v23;
    v44 = v22;
    v45 = recordID;
    v46 = identifierCopy;
    sharingContributorUserIdentifiers = [(CPLRecordChange *)self sharingContributorUserIdentifiers];
    if ([sharingContributorUserIdentifiers count] && (objc_msgSend(dCopy, "recordName"), v48 = objc_claimAutoreleasedReturnValue(), v49 = objc_msgSend(sharingContributorUserIdentifiers, "containsObject:", v48), v48, (v49 & 1) == 0))
    {
      sub_1001ABB48(self);
    }

    else
    {
      recordID3 = [v43 recordID];
      recordName2 = [recordID3 recordName];
      [(CPLRecordChange *)self setRealIdentifier:recordName2];
    }

    identifierCopy = v46;
    recordID = v45;
    v22 = v44;
    recordCopy = v60;
    v23 = v63;
  }

  providerCopy = v65;
LABEL_42:
}

- (void)fillWithCKRecord:(id)record missingResourceProperties:(id *)properties scopeProvider:(id)provider
{
  recordCopy = record;
  selfCopy = self;
  providerCopy = provider;
  ckAssetProperties = [objc_opt_class() ckAssetProperties];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v9 = [ckAssetProperties countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v31 = recordCopy;
    v32 = 0;
    v12 = &CPCopyBundleIdentifierAndTeamFromAuditToken_ptr;
    v13 = *v36;
    while (1)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(ckAssetProperties);
        }

        v15 = *(*(&v35 + 1) + 8 * i);
        v16 = [recordCopy objectForKey:v15];
        if (v16)
        {
          v17 = v12[458];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            assetContent = [v16 assetContent];
            if (assetContent)
            {
              v19 = assetContent;
              if (!v11)
              {
                goto LABEL_10;
              }

              goto LABEL_11;
            }

            v20 = v12;
            v33 = v11;
            v21 = ckAssetProperties;
            fileURL = [v16 fileURL];
            if (fileURL && (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v23 cplFileExistsAtURL:fileURL], v23, (v24 & 1) != 0))
            {
              v19 = [[NSData alloc] initWithContentsOfURL:fileURL];

              if (v19)
              {
                ckAssetProperties = v21;
                v11 = v33;
                v12 = v20;
                recordCopy = v31;
                if (!v33)
                {
LABEL_10:
                  v11 = objc_alloc_init(NSMutableDictionary);
                }

LABEL_11:
                [v11 setObject:v19 forKeyedSubscript:v15];

                goto LABEL_21;
              }
            }

            else
            {
            }

            ckAssetProperties = v21;
            v25 = v32;
            v12 = v20;
            if (!v32)
            {
              v25 = objc_alloc_init(NSMutableArray);
            }

            v32 = v25;
            [v25 addObject:v15];
            v11 = v33;
            recordCopy = v31;
          }
        }

LABEL_21:
      }

      v10 = [ckAssetProperties countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (!v10)
      {
        goto LABEL_25;
      }
    }
  }

  v11 = 0;
  v32 = 0;
LABEL_25:
  *properties = v32;
  if ([(CPLRecordChange *)selfCopy supportsResources])
  {
    v34 = 1;
    scopedIdentifier = [(CPLRecordChange *)selfCopy scopedIdentifier];
    v27 = [recordCopy cplResourcesWithScopedIdentifier:scopedIdentifier coherent:&v34 forRecord:selfCopy scopeProvider:providerCopy];
    [(CPLRecordChange *)selfCopy setResources:v27];

    if ((v34 & 1) == 0)
    {
      [(CPLRecordChange *)selfCopy setServerRecordIsCorrupted:1];
    }
  }

  [(CPLRecordChange *)selfCopy fillWithCKRecord:recordCopy];
  if ([v11 count])
  {
    [(CPLRecordChange *)selfCopy fillMissingCKAssetProperties:v11 withCKRecord:recordCopy];
  }
}

- (BOOL)prepareWithCKRecordBuilder:(id)builder resourceCountAndSize:(id)size scopeProvider:(id)provider error:(id *)error
{
  builderCopy = builder;
  sizeCopy = size;
  providerCopy = provider;
  if ([(CPLRecordChange *)self supportsResources]&& [(CPLRecordChange *)self hasChangeType:8]&& ![(CPLRecordChange *)self fillCKRecordBuilderWithResourceChange:builderCopy resourceCountAndSize:sizeCopy scopeProvider:providerCopy error:error])
  {
    v17 = 0;
  }

  else
  {
    if ([(CPLRecordChange *)self supportsRecordModificationDate])
    {
      recordModificationDate = [(CPLRecordChange *)self recordModificationDate];
      if (recordModificationDate)
      {
        [builderCopy setObject:recordModificationDate forKey:@"recordModificationDate"];
      }

      else
      {
        v14 = +[NSDate date];
        [builderCopy setObject:v14 forKey:@"recordModificationDate"];
      }
    }

    if ([(CPLRecordChange *)self hasChangeType:2]&& ([(CPLRecordChange *)self isMasterChange]& 1) == 0 && [(CPLRecordChange *)self hasChangeType:2]&& ([(CPLRecordChange *)self supportsDirectDeletion]& 1) == 0)
    {
      attachedDiffTracker = [(CPLRecordChange *)self attachedDiffTracker];
      if (!attachedDiffTracker || (-[CPLRecordChange isFullRecord](self, "isFullRecord") & 1) != 0 || ([attachedDiffTracker areObjectsDifferentOnProperty:@"inTrash" changeType:2] & 1) != 0 || -[CPLRecordChange inExpunged](self, "inExpunged"))
      {
        if (([(CPLRecordChange *)self inTrash]& 1) != 0)
        {
          inExpunged = 1;
        }

        else
        {
          inExpunged = [(CPLRecordChange *)self inExpunged];
        }

        v18 = [NSNumber numberWithInt:inExpunged];
        [builderCopy setObject:v18 forKey:@"isDeleted"];

        v19 = [NSNumber numberWithBool:[(CPLRecordChange *)self inExpunged]];
        [builderCopy setObject:v19 forKey:@"isExpunged"];
      }

      else if ([(CPLRecordChange *)self isFullRecord])
      {
        [builderCopy setObject:&__kCFBooleanFalse forKey:@"isExpunged"];
      }
    }

    [(CPLRecordChange *)self fillCKRecordBuilder:builderCopy scopeProvider:providerCopy];
    v17 = 1;
  }

  return v17;
}

- (BOOL)fillCKRecordBuilderWithResourceChange:(id)change resourceCountAndSize:(id)size scopeProvider:(id)provider error:(id *)error
{
  providerCopy = provider;
  sizeCopy = size;
  changeCopy = change;
  LOBYTE(error) = [(CPLRecordChange *)self fillResourcesOfCKRecordBuilder:changeCopy clearMissing:[(CPLRecordChange *)self shouldClearMissingResourcesInCKRecord] resourceCountAndSize:sizeCopy scopeProvider:providerCopy error:error];

  return error;
}

@end
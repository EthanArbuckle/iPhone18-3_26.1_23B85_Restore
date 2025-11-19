@interface CPLRecordChange
+ (BOOL)cplShouldIgnorePropertyForCoding:(id)a3;
+ (BOOL)cplShouldIgnorePropertyForEquality:(id)a3;
+ (Class)classForStoredClassName:(id)a3 forCPLArchiver:(id)a4;
+ (id)_descriptionForChangeType:(unint64_t)a3 isSparseFullChange:(BOOL)a4 onlyUploadNewResources:(BOOL)a5;
+ (id)cplAdditionalSecureClassesForProperty:(id)a3;
+ (id)descriptionForDirection:(unint64_t)a3;
+ (id)descriptionForSupportedFeatureCompatibleVersion:(int64_t)a3;
+ (id)newChangeWithScopedIdentifier:(id)a3 changeType:(unint64_t)a4;
+ (id)newChangeWithType:(unint64_t)a3;
+ (id)newDeleteChangeWithScopedIdentifier:(id)a3;
+ (id)newRecord;
+ (id)newRecordInScopeWithIdentifier:(id)a3;
+ (id)newRecordWithScopedIdentifier:(id)a3;
+ (int64_t)supportedFeatureCompatibleVersion;
- (BOOL)allResourcesAreAvailable;
- (BOOL)applyChange:(id)a3 copyPropertiesToFinalChange:(id)a4 forChangeType:(unint64_t)a5 direction:(unint64_t)a6 diffTracker:(id)a7;
- (BOOL)changeIsOnlyAddingResourcesToRecord:(id)a3 addedResources:(id *)a4;
- (BOOL)hasChangeType:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isInScopeWithIdentifier:(id)a3;
- (BOOL)isSharedInScopeWithIdentifier:(id)a3;
- (BOOL)relatedRelationshipIsWeak;
- (BOOL)requiresStableHashForResourceType:(unint64_t)a3;
- (BOOL)resourceChangeWillOnlyChangeDerivatives:(id)a3;
- (BOOL)secondaryRelationshipIsWeak;
- (BOOL)shouldApplyPropertiesWithSelector:(SEL)a3;
- (BOOL)supportsCollectionShare;
- (BOOL)supportsDeletion;
- (BOOL)supportsDirectDeletion;
- (BOOL)supportsRecordModificationDate;
- (BOOL)supportsResourceType:(unint64_t)a3;
- (BOOL)supportsResources;
- (BOOL)supportsSharing;
- (BOOL)supportsSharingScopedIdentifier;
- (BOOL)validateChangeWithError:(id *)a3;
- (BOOL)validateRecordForTracker:(id)a3;
- (CPLRecordChange)initWithCPLArchiver:(id)a3;
- (CPLRecordChange)initWithCoder:(id)a3;
- (Class)relatedRecordClass;
- (NSArray)sharingContributorUserIdentifiers;
- (NSArray)updateSharingContributorUserIdentifiers;
- (id)allRelatedScopedIdentifiers;
- (id)asRecordView;
- (id)checkDefaultValueBlockForPropertyWithSelector:(SEL)a3;
- (id)compactedChangeWithRelatedChanges:(id)a3 isOnlyChange:(BOOL)a4 fullRecord:(id)a5 usingStorageView:(id)a6;
- (id)copyChangeType:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)cplFullDescription;
- (id)description;
- (id)fingerprintSchemeWithContext:(id)a3;
- (id)mergeRecordChangeWithNewRecordChange:(id)a3 direction:(unint64_t)a4;
- (id)onlyAddedResources;
- (id)propertiesForChangeType:(unint64_t)a3;
- (id)proposedCloudScopedIdentifier;
- (id)proposedLocalScopedIdentifier;
- (id)realRecordChangeFromRecordChange:(id)a3 direction:(unint64_t)a4 newRecord:(id *)a5 changeType:(unint64_t)a6 diffTracker:(id)a7;
- (id)realRecordChangeFromRecordChange:(id)a3 direction:(unint64_t)a4 newRecord:(id *)a5 diffTracker:(id)a6;
- (id)realScopedIdentifier;
- (id)redactedDescription;
- (id)relatedScopedIdentifier;
- (id)resourceForType:(unint64_t)a3;
- (id)resourcePerType;
- (id)resources;
- (id)resourcesDescription;
- (id)scopedIdentifiersForMapping;
- (id)secondaryScopedIdentifier;
- (id)sharingRecordScopedIdentifier;
- (id)storedClassNameForCPLArchiver:(id)a3;
- (id)translateToClientChangeUsingIDMapping:(id)a3 error:(id *)a4;
- (id)translateToCloudChangeUsingIDMapping:(id)a3 error:(id *)a4;
- (int64_t)dequeueOrder;
- (unint64_t)baseDerivativeResourceType;
- (unint64_t)baseVideoComplemenentResourceType;
- (unint64_t)effectiveResourceSizeToUploadUsingStorage:(id)a3;
- (unint64_t)estimatedRecordSize;
- (unint64_t)fullChangeTypeForFullRecord;
- (unint64_t)largestResourceSize;
- (unint64_t)originalResourceSize;
- (unint64_t)realResourceSize;
- (unint64_t)realUploadResourceSize;
- (unint64_t)totalResourceSize;
- (void)applyChange:(id)a3;
- (void)applyChangeType:(unint64_t)a3 fromChange:(id)a4;
- (void)awakeFromStorage;
- (void)clearChangeType:(unint64_t)a3;
- (void)clearIdentifiers;
- (void)copyDerivatives:(unint64_t *)a3 count:(int)a4 avoidResourceType:(unint64_t)a5 fromRecord:(id)a6 inResourcePerType:(id)a7;
- (void)copyDerivativesFromRecordIfPossible:(id)a3;
- (void)enumerateChangeTypesForChangeType:(unint64_t)a3 block:(id)a4;
- (void)markAsSparseFullChange;
- (void)markToOnlyUploadNewResources;
- (void)prepareForStorage;
- (void)restoreRelationshipsFromFullRecord:(id)a3;
- (void)setResources:(id)a3;
- (void)setScopeIndex:(int64_t)a3;
- (void)setSharingContributorUserIdentifiers:(id)a3;
- (void)setSharingRecordScopedIdentifier:(id)a3;
- (void)setSharingScopeIdentifier:(id)a3;
- (void)setShouldFilterDefaultValuesForNewProperties:(BOOL)a3;
- (void)setUpdateSharingContributorUserIdentifiers:(id)a3;
- (void)updateScopeIdentifier:(id)a3;
@end

@implementation CPLRecordChange

- (BOOL)supportsSharingScopedIdentifier
{
  v2 = objc_opt_class();

  return [v2 supportsSharingScopedIdentifier];
}

- (NSArray)sharingContributorUserIdentifiers
{
  v3 = [(NSArray *)self->_sharingContributorUserIdentifiers count];
  if (v3)
  {
    v3 = self->_sharingContributorUserIdentifiers;
  }

  return v3;
}

- (NSArray)updateSharingContributorUserIdentifiers
{
  v3 = [(NSArray *)self->_updateSharingContributorUserIdentifiers count];
  if (v3)
  {
    v3 = self->_updateSharingContributorUserIdentifiers;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 cplCopyPropertiesFromObject:self withCopyBlock:0];
  return v4;
}

- (CPLRecordChange)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CPLRecordChange;
  v5 = [(CPLRecordChange *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [v5 cplDecodePropertiesFromCoder:v4];
    v7 = [(CPLRecordChange *)v6 scopedIdentifier];

    if (!v7)
    {
      if (initWithCoder__onceToken_5237 != -1)
      {
        dispatch_once(&initWithCoder__onceToken_5237, &__block_literal_global_54_5238);
      }

      v8 = [v4 decodeObjectOfClass:initWithCoder__stringClass forKey:@"identifier"];
      if (v8)
      {
        v9 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:@"PrimarySync" identifier:v8];
        [(CPLRecordChange *)v6 setScopedIdentifier:v9];
      }
    }
  }

  return v6;
}

uint64_t __46__CPLRecordChange_CPLNSCoding__initWithCoder___block_invoke()
{
  result = objc_opt_class();
  initWithCoder__stringClass = result;
  return result;
}

- (id)storedClassNameForCPLArchiver:(id)a3
{
  v3 = NSStringFromClass([(CPLRecordChange *)self classForCoder]);
  v4 = [v3 substringWithRange:{3, objc_msgSend(v3, "length") - 9}];

  return v4;
}

+ (id)cplAdditionalSecureClassesForProperty:(id)a3
{
  v4 = a3;
  if (cplAdditionalSecureClassesForProperty__onceToken != -1)
  {
    dispatch_once(&cplAdditionalSecureClassesForProperty__onceToken, &__block_literal_global_5265);
  }

  v5 = [cplAdditionalSecureClassesForProperty__additionalClasses objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = a1;
    v10.super_class = &OBJC_METACLASS___CPLRecordChange;
    v7 = objc_msgSendSuper2(&v10, sel_cplAdditionalSecureClassesForProperty_, v4);
  }

  v8 = v7;

  return v8;
}

void __70__CPLRecordChange_CPLNSCoding__cplAdditionalSecureClassesForProperty___block_invoke()
{
  v11[7] = *MEMORY[0x1E69E9840];
  v10[0] = @"resources";
  v0 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v11[0] = v0;
  v10[1] = @"expungeableResourceStates";
  v1 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v11[1] = v1;
  v10[2] = @"containerRelations";
  v2 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v11[2] = v2;
  v10[3] = @"keywords";
  v3 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v11[3] = v3;
  v10[4] = @"people";
  v4 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v11[4] = v4;
  v10[5] = @"sharingContributorUserIdentifiers";
  v5 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v11[5] = v5;
  v10[6] = @"updateSharingContributorUserIdentifiers";
  v6 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v11[6] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:7];
  v8 = cplAdditionalSecureClassesForProperty__additionalClasses;
  cplAdditionalSecureClassesForProperty__additionalClasses = v7;

  v9 = *MEMORY[0x1E69E9840];
}

+ (Class)classForStoredClassName:(id)a3 forCPLArchiver:(id)a4
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:@"CPL%@Change", v5];

  v7 = NSClassFromString(v6);

  return v7;
}

+ (BOOL)cplShouldIgnorePropertyForEquality:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"identifier"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___CPLRecordChange;
    v5 = objc_msgSendSuper2(&v7, sel_cplShouldIgnorePropertyForEquality_, v4);
  }

  return v5;
}

+ (BOOL)cplShouldIgnorePropertyForCoding:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"identifier"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___CPLRecordChange;
    v5 = objc_msgSendSuper2(&v7, sel_cplShouldIgnorePropertyForCoding_, v4);
  }

  return v5;
}

- (CPLRecordChange)initWithCPLArchiver:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CPLRecordChange;
  v5 = [&v11 initWithCPLArchiver:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [(CPLRecordChange *)v5 scopedIdentifier];

    if (!v7)
    {
      if (initWithCPLArchiver__onceToken != -1)
      {
        dispatch_once(&initWithCPLArchiver__onceToken, &__block_literal_global_1955);
      }

      v8 = [v4 decodeObjectOfClass:initWithCPLArchiver__stringClass forKey:@"identifier"];
      if (v8)
      {
        v9 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:@"PrimarySync" identifier:v8];
        [(CPLRecordChange *)v6 setScopedIdentifier:v9];
      }
    }
  }

  return v6;
}

uint64_t __52__CPLRecordChange_CPLArchiver__initWithCPLArchiver___block_invoke()
{
  result = objc_opt_class();
  initWithCPLArchiver__stringClass = result;
  return result;
}

- (id)translateToClientChangeUsingIDMapping:(id)a3 error:(id *)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(CPLRecordChange *)self copy];
  v29 = 0;
  v8 = [(CPLRecordChange *)self scopedIdentifier];
  if (v8)
  {
    v9 = [v6 localScopedIdentifierForCloudScopedIdentifier:v8 isFinal:&v29];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = [(CPLRecordChange *)self proposedLocalScopedIdentifier];
      if (![v6 addCloudScopedIdentifier:v8 forLocalScopedIdentifier:v10 isFinal:1 direction:2 error:a4])
      {
        v11 = v7;
        v7 = 0;
        goto LABEL_28;
      }
    }

    [v7 setScopedIdentifier:v10];
    if (!v7 || ![v7 supportsResources] || !objc_msgSend(v7, "hasChangeType:", 8))
    {
      goto LABEL_29;
    }

    v23 = a4;
    v11 = [v7 scopedIdentifier];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = [v7 resources];
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v34 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v25 + 1) + 8 * i) setItemScopedIdentifier:v11];
        }

        v14 = [v12 countByEnumeratingWithState:&v25 objects:v34 count:16];
      }

      while (v14);
    }

    v24 = 0;
    v17 = [(CPLRecordChange *)self resourceCopyFromScopedIdentifier];
    if (v17)
    {
      v18 = [v6 localScopedIdentifierForCloudScopedIdentifier:v17 isFinal:&v24];
      if (v18)
      {
        [v7 setResourceCopyFromScopedIdentifier:v18];
      }

      else
      {
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Can't map cloud resourceCopyFromScopedIdentifier in %@", objc_opt_class()];
        if (v23)
        {
          *v23 = [CPLErrors invalidClientCacheErrorWithReason:v19];
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v20 = __CPLGenericOSLogDomain();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v31 = v17;
            v32 = 2112;
            v33 = self;
            _os_log_impl(&dword_1DC05A000, v20, OS_LOG_TYPE_ERROR, "Can't map cloud resourceCopyFromScopedIdentifier (%@) of %@", buf, 0x16u);
          }
        }

        v7 = 0;
      }
    }

LABEL_28:
LABEL_29:
  }

  v21 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)translateToCloudChangeUsingIDMapping:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(CPLRecordChange *)self copy];
  v27 = 0;
  v8 = [(CPLRecordChange *)self scopedIdentifier];
  if (v8)
  {
    v9 = [v6 cloudScopedIdentifierForLocalScopedIdentifier:v8 isFinal:&v27];
    if (v9)
    {
      [v7 setScopedIdentifier:v9];
      if (!v7)
      {
LABEL_23:

        goto LABEL_24;
      }
    }

    else
    {
      v10 = [(CPLRecordChange *)self proposedCloudScopedIdentifier];
      v11 = [v6 setupCloudScopedIdentifier:v10 forLocalScopedIdentifier:v8 isFinal:0 direction:1 error:a4];

      if (v11)
      {
        [v7 setScopedIdentifier:v11];
      }

      else
      {

        v7 = 0;
      }

      if (!v7)
      {
        goto LABEL_23;
      }
    }

    if ([v7 supportsResources] && objc_msgSend(v7, "hasChangeType:", 8))
    {
      v12 = [v7 scopedIdentifier];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v13 = [v7 resources];
      v14 = [v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
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
              objc_enumerationMutation(v13);
            }

            [*(*(&v23 + 1) + 8 * i) setItemScopedIdentifier:v12];
          }

          v15 = [v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v15);
      }

      v18 = [(CPLRecordChange *)self resourceCopyFromScopedIdentifier];
      if (v18)
      {
        v22 = 0;
        v19 = [v6 cloudScopedIdentifierForLocalScopedIdentifier:v18 isFinal:&v22];
        if (!v19)
        {
          v19 = [v18 copy];
        }

        [v7 setResourceCopyFromScopedIdentifier:v19];
      }
    }

    goto LABEL_23;
  }

LABEL_24:

  v20 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)scopedIdentifiersForMapping
{
  v10[2] = *MEMORY[0x1E69E9840];
  if ([(CPLRecordChange *)self supportsResources]&& [(CPLRecordChange *)self hasChangeType:8]&& ([(CPLRecordChange *)self resourceCopyFromScopedIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = [(CPLRecordChange *)self scopedIdentifier];
    v10[0] = v5;
    v10[1] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  }

  else
  {
    v4 = [(CPLRecordChange *)self scopedIdentifier];
    v9 = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)compactedChangeWithRelatedChanges:(id)a3 isOnlyChange:(BOOL)a4 fullRecord:(id)a5 usingStorageView:(id)a6
{
  if (a4)
  {
    v7 = 0;
  }

  else
  {
    v7 = self;
  }

  return v7;
}

+ (id)_descriptionForChangeType:(unint64_t)a3 isSparseFullChange:(BOOL)a4 onlyUploadNewResources:(BOOL)a5
{
  if (a3 == 1024)
  {
    v9 = @"[D]";
    goto LABEL_18;
  }

  v5 = a5;
  v6 = a3;
  if (a3)
  {
    v10 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"["];
    v9 = v10;
    if ((v6 & 2) != 0)
    {
      [(__CFString *)v10 appendString:@"U"];
      if ((v6 & 8) == 0)
      {
LABEL_8:
        if ((v6 & 0x10) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_26;
      }
    }

    else if ((v6 & 8) == 0)
    {
      goto LABEL_8;
    }

    if (v5)
    {
      v12 = @"r";
    }

    else
    {
      v12 = @"R";
    }

    [(__CFString *)v9 appendString:v12];
    if ((v6 & 0x10) == 0)
    {
LABEL_9:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_27;
    }

LABEL_26:
    [(__CFString *)v9 appendString:@"C"];
    if ((v6 & 0x20) == 0)
    {
LABEL_10:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_28;
    }

LABEL_27:
    [(__CFString *)v9 appendString:@"F"];
    if ((v6 & 0x40) == 0)
    {
LABEL_11:
      if ((v6 & 0x100) == 0)
      {
LABEL_13:
        [(__CFString *)v9 appendString:@"]"];
        goto LABEL_18;
      }

LABEL_12:
      [(__CFString *)v9 appendString:@"T"];
      goto LABEL_13;
    }

LABEL_28:
    [(__CFString *)v9 appendString:@"S"];
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (a5)
  {
    v7 = @"[Ar]";
    v8 = @"[ar]";
  }

  else
  {
    v7 = @"[A]";
    v8 = @"[a]";
  }

  if (a4)
  {
    v7 = v8;
  }

  v9 = v7;
LABEL_18:

  return v9;
}

+ (id)newChangeWithType:(unint64_t)a3
{
  v4 = [a1 newRecord];
  [v4 setChangeType:a3];
  return v4;
}

+ (id)newDeleteChangeWithScopedIdentifier:(id)a3
{
  v3 = [a1 newRecordWithScopedIdentifier:a3];
  [v3 setChangeType:1024];
  return v3;
}

+ (id)newChangeWithScopedIdentifier:(id)a3 changeType:(unint64_t)a4
{
  v5 = [a1 newRecordWithScopedIdentifier:a3];
  [v5 setChangeType:a4];
  return v5;
}

+ (id)newRecordWithScopedIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setScopedIdentifier:v3];

  return v4;
}

+ (id)newRecordInScopeWithIdentifier:(id)a3
{
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v6 = [v4 UUID];
  v7 = [v6 UUIDString];

  v8 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:v5 identifier:v7];
  v9 = [a1 newRecordWithScopedIdentifier:v8];

  return v9;
}

+ (id)newRecord
{
  v3 = CPLPrimaryScopeIdentifierForCurrentUniverse();
  v4 = [a1 newRecordInScopeWithIdentifier:v3];

  return v4;
}

+ (id)descriptionForDirection:(unint64_t)a3
{
  if (a3 >= 3)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unknown direction %lu", a3];
  }

  else
  {
    v3 = off_1E861E1D8[a3];
  }

  return v3;
}

+ (id)descriptionForSupportedFeatureCompatibleVersion:(int64_t)a3
{
  if (a3 >= 20220)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = 0;
    v6 = 1;
    v7 = a3;
    do
    {
      v8 = v6;
      v9 = &descriptionForSupportedFeatureCompatibleVersion__descriptions[2 * v5];
      v10 = *v9;
      if ((*v9 & ~v7) == 0)
      {
        [v4 addObject:v9[1]];
      }

      v6 = 0;
      v7 &= ~v10;
      v5 = 1;
    }

    while ((v8 & 1) != 0);
    if ([v4 count])
    {
      v11 = objc_alloc(MEMORY[0x1E696AEC0]);
      v12 = [v4 componentsJoinedByString:@"|"];
      v13 = v12;
      if (v7)
      {
        v14 = [v11 initWithFormat:@"%ld (%@ + 0x%lx)", a3, v12, v7];
      }

      else
      {
        v14 = [v11 initWithFormat:@"%ld (%@)", a3, v12, v17];
      }

      v15 = v14;

      goto LABEL_13;
    }
  }

  v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld", a3];
LABEL_13:

  return v15;
}

+ (int64_t)supportedFeatureCompatibleVersion
{
  if (+[CPLFingerprintScheme supportsEPP])
  {
    return 52988;
  }

  else
  {
    return 20220;
  }
}

- (void)applyChangeType:(unint64_t)a3 fromChange:(id)a4
{
  v6 = a4;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __46__CPLRecordChange_applyChangeType_fromChange___block_invoke;
  v14 = &unk_1E861FC80;
  v15 = self;
  v16 = v6;
  v7 = v6;
  [(CPLRecordChange *)self enumerateChangeTypesForChangeType:a3 block:&v11];
  v8 = [(CPLRecordChange *)self changeType:v11];
  if (v8)
  {
    v9 = a3 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8 | a3;
  }

  if (v8 != v10)
  {
    [(CPLRecordChange *)self setChangeType:?];
  }
}

void __46__CPLRecordChange_applyChangeType_fromChange___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) propertiesForChangeType:a2];
  [*(a1 + 32) cplCopyProperties:v3 fromObject:*(a1 + 40) withCopyBlock:0];
}

- (void)applyChange:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v5 = [(CPLRecordChange *)self changeType];
  if (v5 == 1024)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = v14;
        _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_ERROR, "Can't apply %@ to a delete", buf, 0xCu);
      }
    }

    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLRecordChange.m"];
    [v12 handleFailureInMethod:a2 object:self file:v13 lineNumber:1485 description:{@"Can't apply %@ to a delete", v14}];

    abort();
  }

  v6 = v5;
  v7 = [v14 changeType];
  if (v7 == 1024)
  {
    v8 = self;
LABEL_7:
    [(CPLRecordChange *)v8 setChangeType:v7];
    goto LABEL_9;
  }

  if (!v7)
  {
    [self cplCopyPropertiesFromObject:v14 withCopyBlock:0];
    if (!v6)
    {
      goto LABEL_9;
    }

    v8 = self;
    v7 = 0;
    goto LABEL_7;
  }

  [(CPLRecordChange *)self applyChangeType:v7 fromChange:v14];
  v9 = [v14 recordModificationDate];
  [(CPLRecordChange *)self setRecordModificationDate:v9];

LABEL_9:
  v10 = *MEMORY[0x1E69E9840];
}

- (void)clearChangeType:(unint64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__CPLRecordChange_clearChangeType___block_invoke;
  v3[3] = &unk_1E861FC30;
  v3[4] = self;
  [(CPLRecordChange *)self enumerateChangeTypesForChangeType:a3 block:v3];
}

void __35__CPLRecordChange_clearChangeType___block_invoke(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) hasChangeType:a2])
  {
    v4 = [*(a1 + 32) propertiesForChangeType:a2];
    [*(a1 + 32) cplClearProperties:v4];
  }
}

- (id)copyChangeType:(unint64_t)a3
{
  if (a3)
  {
    if (![(CPLRecordChange *)self hasChangeType:?])
    {
      return 0;
    }

    v5 = objc_opt_class();
    v6 = [(CPLRecordChange *)self scopedIdentifier];
    v7 = [v5 newChangeWithScopedIdentifier:v6 changeType:a3];

    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __34__CPLRecordChange_copyChangeType___block_invoke;
    v16 = &unk_1E861FC80;
    v17 = self;
    v8 = v7;
    v18 = v8;
    [(CPLRecordChange *)self enumerateChangeTypesForChangeType:a3 block:&v13];
    v9 = [(CPLRecordChange *)self recordModificationDate:v13];
    [v8 setRecordModificationDate:v9];

    [v8 restoreRelationshipsFromFullRecord:self];
    v10 = v18;
    v11 = v8;

    return v11;
  }

  else
  {

    return [(CPLRecordChange *)self copy];
  }
}

void __34__CPLRecordChange_copyChangeType___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) propertiesForChangeType:a2];
  [*(a1 + 40) cplCopyProperties:v3 fromObject:*(a1 + 32) withCopyBlock:0];
}

- (void)enumerateChangeTypesForChangeType:(unint64_t)a3 block:(id)a4
{
  v7 = a4;
  v6 = [(CPLRecordChange *)self supportedChangeTypes];
  if ((v6 & 2) != 0 && (!a3 || (a3 & 2) != 0))
  {
    v7[2](v7, 2);
  }

  if ((v6 & 8) != 0 && (!a3 || (a3 & 8) != 0))
  {
    v7[2](v7, 8);
  }

  if ((v6 & 0x10) != 0 && (!a3 || (a3 & 0x10) != 0))
  {
    v7[2](v7, 16);
  }

  if ((v6 & 0x20) != 0 && (!a3 || (a3 & 0x20) != 0))
  {
    v7[2](v7, 32);
  }

  if ((v6 & 0x40) != 0 && (!a3 || (a3 & 0x40) != 0))
  {
    v7[2](v7, 64);
  }
}

- (void)copyDerivativesFromRecordIfPossible:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLRecordChange.m"];
  v8 = NSStringFromSelector(a2);
  [v6 handleFailureInMethod:a2 object:self file:v7 lineNumber:1439 description:{@"%@ should be implemented by subclass", v8}];

  abort();
}

- (void)copyDerivatives:(unint64_t *)a3 count:(int)a4 avoidResourceType:(unint64_t)a5 fromRecord:(id)a6 inResourcePerType:(id)a7
{
  v25 = a6;
  v12 = a7;
  if (a4 >= 1)
  {
    v13 = a4;
    do
    {
      v15 = *a3++;
      v14 = v15;
      if (v15 != a5)
      {
        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
        v17 = [v12 objectForKeyedSubscript:v16];

        if (!v17)
        {
          v18 = [v25 resourceForType:v14];
          v19 = v18;
          if (v18)
          {
            v20 = [v18 identity];
            v21 = [v20 isAvailable];

            if (v21)
            {
              v22 = [v19 copy];
              v23 = [(CPLRecordChange *)self scopedIdentifier];
              [v22 setItemScopedIdentifier:v23];

              [v22 setSourceResourceType:v14];
              v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
              [v12 setObject:v22 forKeyedSubscript:v24];
            }
          }
        }
      }

      --v13;
    }

    while (v13);
  }
}

- (unint64_t)baseVideoComplemenentResourceType
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLRecordChange.m"];
  v6 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:v5 lineNumber:1415 description:{@"%@ should be implemented in subclasses", v6}];

  abort();
}

- (unint64_t)baseDerivativeResourceType
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLRecordChange.m"];
  v6 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:v5 lineNumber:1411 description:{@"%@ should be implemented in subclasses", v6}];

  abort();
}

- (id)resourcePerType
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLRecordChange.m"];
  v6 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:v5 lineNumber:1407 description:{@"%@ should be implemented in subclasses", v6}];

  abort();
}

- (BOOL)allResourcesAreAvailable
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(CPLRecordChange *)self supportsSharingScopedIdentifier]&& ([(CPLRecordChange *)self sharingScopeIdentifier], v3 = objc_claimAutoreleasedReturnValue(), v3, v3) || ![(CPLRecordChange *)self supportsResources]|| ![(CPLRecordChange *)self hasChangeType:8])
  {
    v11 = 1;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = [(CPLRecordChange *)self resources];
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v14 + 1) + 8 * i) identity];
          v10 = [v9 isAvailable];

          if (!v10)
          {
            v11 = 0;
            goto LABEL_17;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v11 = 1;
LABEL_17:
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (unint64_t)fullChangeTypeForFullRecord
{
  if ([(CPLRecordChange *)self supportsResources])
  {
    v3 = 10;
  }

  else
  {
    v3 = 2;
  }

  if ([(CPLRecordChange *)self supportsSharingScopedIdentifier])
  {
    return v3 | 0x40;
  }

  else
  {
    return v3;
  }
}

- (unint64_t)estimatedRecordSize
{
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E696ACC8] cpl_archivedDataWithRootObject:self];
  v5 = [v4 length];

  objc_autoreleasePoolPop(v3);
  return v5;
}

- (BOOL)validateChangeWithError:(id *)a3
{
  scopedIdentifier = self->_scopedIdentifier;
  if (a3 && !scopedIdentifier)
  {
    *a3 = [CPLErrors cplErrorWithCode:18 description:@"%@ has no identifier", self];
  }

  return scopedIdentifier != 0;
}

- (id)onlyAddedResources
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(CPLRecordChange *)self resources];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = [(CPLRecordChange *)self resourceCopyFromScopedIdentifier];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        v12 = [v11 identity];
        v13 = [v12 fileURL];
        if (v13)
        {

LABEL_8:
          [v4 addObject:v11];
          goto LABEL_9;
        }

        if (v5)
        {
          v14 = [v11 sourceResourceType];

          if (v14)
          {
            goto LABEL_8;
          }
        }

        else
        {
        }

LABEL_9:
        ++v10;
      }

      while (v8 != v10);
      v15 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v8 = v15;
    }

    while (v15);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)changeIsOnlyAddingResourcesToRecord:(id)a3 addedResources:(id *)a4
{
  v6 = a3;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__15115;
  v41 = __Block_byref_object_dispose__15116;
  v42 = 0;
  v7 = [(CPLRecordChange *)self resourceCopyFromScopedIdentifier];
  v8 = v7 != 0;

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __70__CPLRecordChange_changeIsOnlyAddingResourcesToRecord_addedResources___block_invoke;
  v35[3] = &unk_1E861E198;
  v36 = v8;
  v35[4] = &v37;
  v34 = MEMORY[0x1E128EBA0](v35);
  *a4 = 0;
  v31 = v6;
  v32 = [v6 resources];
  v9 = [(CPLRecordChange *)self resources];
  v33 = [v9 count];
  v10 = [v32 count];
  v11 = v10;
  v12 = 0;
  v13 = v33 != 0;
  v14 = v10 != 0;
  if (v33 && v10)
  {
    v12 = 0;
    v15 = 0;
    while (1)
    {
      v16 = v9;
      v17 = [v9 objectAtIndexedSubscript:v12];
      v18 = [v32 objectAtIndexedSubscript:v15];
      v19 = a4;
      v20 = [v17 resourceType];
      v21 = [v18 resourceType];
      if (v20 == v21)
      {
        if (((v34)[2](v34, v17) & 1) == 0)
        {
          v22 = [v17 identity];
          v23 = [v18 identity];
          v24 = v23;
          if (!v22 || !v23)
          {

LABEL_27:
            v26 = 0;
            v9 = v16;
            goto LABEL_28;
          }

          v25 = [v22 cplIsEqual:v23 withEqualityBlock:&__block_literal_global_275];

          if (!v25)
          {
            goto LABEL_27;
          }
        }

        ++v15;
      }

      else if (v20 >= v21 || ((v34)[2](v34, v17) & 1) == 0)
      {
        goto LABEL_27;
      }

      ++v12;

      v14 = v15 < v11;
      v13 = v12 < v33;
      if (v12 >= v33)
      {
        break;
      }

      a4 = v19;
      v9 = v16;
      if (v15 >= v11)
      {
        goto LABEL_14;
      }
    }

    a4 = v19;
    v9 = v16;
    if (v15 < v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_14:
    if (v14)
    {
LABEL_15:
      v26 = 0;
      goto LABEL_28;
    }
  }

  if (v12 >= v33)
  {
    v13 = 0;
  }

  if (v13)
  {
    do
    {
      v27 = [v9 objectAtIndexedSubscript:v12];
      v28 = (v34)[2](v34, v27);

      if ((v28 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    while (v33 != ++v12);
  }

  if (v38[5])
  {
    v29 = v38[5];
  }

  else
  {
    v29 = MEMORY[0x1E695E0F0];
  }

  *a4 = v29;
  v26 = 1;
LABEL_28:

  _Block_object_dispose(&v37, 8);
  return v26;
}

uint64_t __70__CPLRecordChange_changeIsOnlyAddingResourcesToRecord_addedResources___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identity];
  v5 = [v4 fileURL];
  if (!v5)
  {
    if (*(a1 + 40) == 1)
    {
      v11 = [v3 sourceResourceType];

      if (v11)
      {
        goto LABEL_3;
      }
    }

    else
    {
    }

    v10 = 0;
    goto LABEL_11;
  }

LABEL_3:
  v6 = *(*(*(a1 + 32) + 8) + 40);
  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v6 = *(*(*(a1 + 32) + 8) + 40);
  }

  [v6 addObject:v3];
  v10 = 1;
LABEL_11:

  return v10;
}

uint64_t __70__CPLRecordChange_changeIsOnlyAddingResourcesToRecord_addedResources___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if ([a4 isEqualToString:@"available"])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (void)markToOnlyUploadNewResources
{
  v10 = *MEMORY[0x1E69E9840];
  if (![(CPLRecordChange *)self allowsToOnlyUploadNewResources])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v9 = self;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_ERROR, "Trying to mark as uploading only new resources for %@", buf, 0xCu);
      }
    }

    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLRecordChange.m"];
    [v6 handleFailureInMethod:a2 object:self file:v7 lineNumber:1226 description:{@"Trying to mark as uploading only new resources for %@", self}];

    abort();
  }

  if (!self->_shouldOnlyUploadNewResources)
  {
    self->_shouldOnlyUploadNewResources = 1;
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)markAsSparseFullChange
{
  v10 = *MEMORY[0x1E69E9840];
  if (!self->_isSparseFullChange)
  {
    if (![(CPLRecordChange *)self isFullRecord])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v5 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v9 = self;
          _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_ERROR, "Trying to mark a non full record as sparse: %@", buf, 0xCu);
        }
      }

      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLRecordChange.m"];
      [v6 handleFailureInMethod:a2 object:self file:v7 lineNumber:1220 description:{@"Trying to mark a non full record as sparse: %@", self}];

      abort();
    }

    self->_isSparseFullChange = 1;
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (id)checkDefaultValueBlockForPropertyWithSelector:(SEL)a3
{
  if (sel_dateDeleted == a3)
  {
    v4 = &__block_literal_global_264;
  }

  else if (sel_sharingScopeIdentifier == a3)
  {
    v4 = MEMORY[0x1E128EBA0](_CPLDefaultValueObjectNil, a2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL __65__CPLRecordChange_checkDefaultValueBlockForPropertyWithSelector___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 dateDeleted];
  v3 = v2 == 0;

  return v3;
}

- (void)setShouldFilterDefaultValuesForNewProperties:(BOOL)a3
{
  if (self->_shouldFilterDefaultValuesForNewProperties != a3)
  {
    self->_shouldFilterDefaultValuesForNewProperties = a3;
  }
}

- (BOOL)shouldApplyPropertiesWithSelector:(SEL)a3
{
  if (self->_shouldFilterDefaultValuesForNewProperties)
  {
    v5 = [(CPLRecordChange *)self checkDefaultValueBlockForPropertyWithSelector:?];
    v6 = v5;
    if (v5)
    {
      v7 = (*(v5 + 16))(v5, self, a3) ^ 1;
    }

    else
    {
      LOBYTE(v7) = 1;
    }
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (id)fingerprintSchemeWithContext:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLRecordChange.m"];
  v8 = NSStringFromSelector(a2);
  [v6 handleFailureInMethod:a2 object:self file:v7 lineNumber:1172 description:{@"%@ should be implemented by subclasses", v8}];

  abort();
}

- (unint64_t)largestResourceSize
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(CPLRecordChange *)self supportsResources]&& [(CPLRecordChange *)self hasChangeType:8])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = [(CPLRecordChange *)self resources];
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v14;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = [*(*(&v13 + 1) + 8 * i) identity];
          v10 = [v9 fileSize];

          if (v6 <= v10)
          {
            v6 = v10;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)resourcesDescription
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [(CPLRecordChange *)self changeType];
  v4 = [(CPLRecordChange *)self resources];
  v5 = [(CPLRecordChange *)self resourceCopyFromScopedIdentifier];
  if ([v4 count])
  {
LABEL_2:
    v6 = [v4 count];
    if (v5)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu resources (from %@)", v6, v5, v22];
      v17 = LABEL_32:;
      goto LABEL_33;
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v23 = v6;
      v10 = 0;
      v11 = 0;
      v12 = *v25;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v7);
          }

          v14 = [*(*(&v24 + 1) + 8 * i) identity];
          v15 = [v14 fileURL];

          if (!v15)
          {
            ++v10;
            v11 += [v14 isAvailable] ^ 1;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v9);

      v16 = &stru_1F57BD298;
      v6 = v23;
      if (v23)
      {
        v5 = 0;
        if (v10)
        {
          if (v10 == v23)
          {
            v16 = @"sparse ";
            if (!v11)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v19 = [(CPLRecordChange *)self allowsToOnlyUploadNewResources];
            v16 = @"MIXED! ";
            if (v19)
            {
              v16 = @"mixed ";
            }

            if (!v11)
            {
              goto LABEL_31;
            }
          }

LABEL_27:
          [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu %@resources (%lu unav.)", v23, v16, v11];
          goto LABEL_32;
        }
      }

      else
      {
        v5 = 0;
      }

      if (v11)
      {
        goto LABEL_27;
      }
    }

    else
    {

      v16 = &stru_1F57BD298;
    }

LABEL_31:
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu %@resources", v6, v16, v22];
    goto LABEL_32;
  }

  if (v3)
  {
    if ((v3 & 8) != 0)
    {
      goto LABEL_2;
    }

LABEL_23:
    v18 = &stru_1F57BD298;
    goto LABEL_34;
  }

  if (!v5)
  {
    goto LABEL_23;
  }

  v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"(from %@)", v5];
LABEL_33:
  v18 = v17;
LABEL_34:

  v20 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)cplFullDescription
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"======\n%@: {\n", objc_opt_class()];
  v4 = [(CPLRecordChange *)self changeType];
  v5 = [objc_opt_class() _descriptionForChangeType:v4 isSparseFullChange:self->_isSparseFullChange onlyUploadNewResources:{-[CPLRecordChange shouldOnlyUploadNewResources](self, "shouldOnlyUploadNewResources")}];
  [v3 appendFormat:@"  changeType: %@\n", v5];

  v6 = [(CPLRecordChange *)self recordModificationDate];
  v7 = v6;
  if (v6)
  {
    [v3 appendFormat:@"  recordModificationDate: %@\n", v6];
  }

  v8 = [(CPLRecordChange *)self recordChangeData];
  v9 = v8;
  if (v8)
  {
    [v3 appendFormat:@"  recordChangeDataSize: %lu\n", objc_msgSend(v8, "length")];
  }

  v10 = [(CPLRecordChange *)self sharingRecordChangeData];
  v11 = v10;
  if (v10)
  {
    [v3 appendFormat:@"  sharingRecordChangeDataSize: %lu\n", objc_msgSend(v10, "length")];
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __37__CPLRecordChange_cplFullDescription__block_invoke;
  v16[3] = &unk_1E861E170;
  v19 = v4;
  v12 = v3;
  v17 = v12;
  v18 = self;
  v13 = MEMORY[0x1E128EBA0](v16);
  v13[2](v13, 256);
  [(CPLRecordChange *)self enumerateChangeTypesForChangeType:[(CPLRecordChange *)self changeType] block:v13];
  [v12 appendString:@"}"];
  v14 = v12;

  return v12;
}

void __37__CPLRecordChange_cplFullDescription__block_invoke(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = (v2 & a2) == 0;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    v5 = a1;
    [*(a1 + 32) appendString:@"  ----\n"];
    [*(v5 + 40) propertiesForChangeType:a2];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v26 = v33 = 0u;
    v6 = [v26 allObjects];
    v7 = [v6 sortedArrayUsingSelector:sel_compare_];

    v8 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0x1E695D000uLL;
      v11 = *v31;
      v12 = @"  %@: [%lu bytes]\n";
      v27 = *v31;
      v28 = v5;
      do
      {
        v13 = 0;
        v29 = v9;
        do
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v14 = *(*(&v30 + 1) + 8 * v13);
          v15 = [*(v5 + 40) valueForKey:v14];
          v16 = *(v10 + 3824);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [*(v5 + 32) appendFormat:v12, v14, objc_msgSend(v15, "length")];
          }

          else
          {
            v17 = objc_autoreleasePoolPush();
            v18 = [v15 cplFullDescription];
            if ([v18 length] >= 0x2801)
            {
              v19 = MEMORY[0x1E696AEC0];
              [v18 substringToIndex:1000];
              v21 = v20 = v7;
              [v18 substringFromIndex:{objc_msgSend(v18, "length") - 1000}];
              v23 = v22 = v12;
              v24 = [v19 stringWithFormat:@"%@...%@", v21, v23];

              v12 = v22;
              v7 = v20;
              v10 = 0x1E695D000;
              v18 = v24;
              v11 = v27;
              v5 = v28;
            }

            [*(v5 + 32) appendFormat:@"  %@: %@\n", v14, v18];

            objc_autoreleasePoolPop(v17);
            v9 = v29;
          }

          ++v13;
        }

        while (v9 != v13);
        v9 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v9);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (int64_t)dequeueOrder
{
  v2 = [(CPLRecordChange *)self recordModificationDate];
  v3 = v2;
  if (v2)
  {
    [v2 timeIntervalSinceReferenceDate];
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)restoreRelationshipsFromFullRecord:(id)a3
{
  v6 = a3;
  if (![(CPLRecordChange *)self hasChangeType:2])
  {
    v4 = [v6 relatedIdentifier];
    [(CPLRecordChange *)self setRelatedIdentifier:v4];

    v5 = [v6 secondaryIdentifier];
    [(CPLRecordChange *)self setSecondaryIdentifier:v5];
  }
}

- (void)awakeFromStorage
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(CPLRecordChange *)self supportsResources])
  {
    v3 = [(CPLRecordChange *)self scopedIdentifier];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(CPLRecordChange *)self resources];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v10 + 1) + 8 * v8++) setItemScopedIdentifier:v3];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)prepareForStorage
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(CPLRecordChange *)self supportsResources])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [(CPLRecordChange *)self resources];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v9 + 1) + 8 * v7++) setItemScopedIdentifier:0];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)clearIdentifiers
{
  scopedIdentifier = self->_scopedIdentifier;
  self->_scopedIdentifier = 0;

  [(CPLRecordChange *)self setRelatedIdentifier:0];

  [(CPLRecordChange *)self setSecondaryIdentifier:0];
}

- (id)allRelatedScopedIdentifiers
{
  v3 = [(CPLRecordChange *)self scopedIdentifier];
  v4 = [(CPLRecordChange *)self relatedScopedIdentifier];
  v5 = [(CPLRecordChange *)self secondaryScopedIdentifier];
  v6 = v5;
  if (v3 || v4 || v5)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:3];
    v7 = v8;
    if (v3)
    {
      [v8 addObject:v3];
    }

    if (v4)
    {
      [v7 addObject:v4];
    }

    if (v6)
    {
      [v7 addObject:v6];
    }
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  }

  return v7;
}

- (id)proposedCloudScopedIdentifier
{
  v2 = [(CPLRecordChange *)self scopedIdentifier];
  v3 = [v2 copy];

  return v3;
}

- (id)proposedLocalScopedIdentifier
{
  v2 = [(CPLRecordChange *)self scopedIdentifier];
  v3 = [v2 copy];

  return v3;
}

- (id)secondaryScopedIdentifier
{
  v3 = [(CPLRecordChange *)self secondaryIdentifier];
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

- (BOOL)secondaryRelationshipIsWeak
{
  v2 = objc_opt_class();

  return [v2 secondaryRelationshipIsWeak];
}

- (id)relatedScopedIdentifier
{
  v3 = [(CPLRecordChange *)self relatedIdentifier];
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

- (BOOL)relatedRelationshipIsWeak
{
  v2 = objc_opt_class();

  return [v2 relatedRelationshipIsWeak];
}

- (id)propertiesForChangeType:(unint64_t)a3
{
  if (a3 == 256)
  {
    if (propertiesForChangeType__onceToken_189 != -1)
    {
      dispatch_once(&propertiesForChangeType__onceToken_189, &__block_literal_global_191);
    }

    v4 = propertiesForChangeType__modificationDateProperty;
    goto LABEL_13;
  }

  if (a3 == 64)
  {
    if (propertiesForChangeType__onceToken_193 != -1)
    {
      dispatch_once(&propertiesForChangeType__onceToken_193, &__block_literal_global_195);
    }

    v4 = propertiesForChangeType__sharingProperties;
LABEL_13:
    v5 = v4;
LABEL_15:
    v3 = v5;
    goto LABEL_16;
  }

  if (a3 != 2)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    goto LABEL_15;
  }

  if (propertiesForChangeType__onceToken_15188 != -1)
  {
    v7 = self;
    dispatch_once(&propertiesForChangeType__onceToken_15188, &__block_literal_global_156);
    self = v7;
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__15115;
  v13 = __Block_byref_object_dispose__15116;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__CPLRecordChange_propertiesForChangeType___block_invoke_159;
  v8[3] = &unk_1E861F818;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(propertiesForChangeType__lock, v8);
  v3 = v10[5];
  _Block_object_dispose(&v9, 8);

LABEL_16:

  return v3;
}

void __43__CPLRecordChange_propertiesForChangeType___block_invoke_159(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = [propertiesForChangeType__classToProperties objectForKey:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v7 = *(a1 + 32);
    v8 = [objc_opt_class() cplAllPropertyNames];
    v18 = [v8 mutableCopy];

    v9 = [*(a1 + 32) propertiesForChangeType:64];
    if (v9)
    {
      [v18 minusSet:v9];
    }

    v10 = [*(a1 + 32) propertiesForChangeType:32];

    if (v10)
    {
      [v18 minusSet:v10];
    }

    v11 = [*(a1 + 32) propertiesForChangeType:16];

    if (v11)
    {
      [v18 minusSet:v11];
    }

    v12 = [*(a1 + 32) propertiesForChangeType:8];

    if (v12)
    {
      [v18 minusSet:v12];
    }

    v13 = [*(a1 + 32) propertiesForChangeType:256];

    v14 = v18;
    if (v13)
    {
      [v18 minusSet:v13];
      v14 = v18;
    }

    [v14 removeObject:@"changeType"];
    [v18 removeObject:@"recordChangeData"];
    [v18 removeObject:@"sharingRecordChangeData"];
    if (!+[CPLAssetChange serverSupportsSharedLibrarySharingState])
    {
      [v18 removeObject:@"sharedLibrarySharingState"];
    }

    if (!+[CPLAssetChange serverSupportsDeletedByUserIdentifier])
    {
      [v18 removeObject:@"deletedByUserIdentifier"];
    }

    if (!+[CPLAssetChange serverSupportsLastViewedDate])
    {
      [v18 removeObject:@"lastViewedDate"];
    }

    if (!+[CPLPersonChange serverSupportsDetectionType])
    {
      [v18 removeObject:@"detectionType"];
    }

    if (!+[CPLPersonChange serverSupportsAssetSortOrder])
    {
      [v18 removeObject:@"assetSortOrder"];
    }

    [v18 removeObject:@"serverRecordIsCorrupted"];
    v15 = [v18 copy];
    v16 = *(*(a1 + 40) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    [propertiesForChangeType__classToProperties setObject:*(*(*(a1 + 40) + 8) + 40) forKey:v3];
  }
}

uint64_t __43__CPLRecordChange_propertiesForChangeType___block_invoke_3()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"sharingScopeIdentifier", @"sharingContributorUserIdentifiers", @"updateSharingContributorUserIdentifiers", 0}];
  v1 = propertiesForChangeType__sharingProperties;
  propertiesForChangeType__sharingProperties = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __43__CPLRecordChange_propertiesForChangeType___block_invoke_2()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObject:@"recordModificationDate"];
  v1 = propertiesForChangeType__modificationDateProperty;
  propertiesForChangeType__modificationDateProperty = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __43__CPLRecordChange_propertiesForChangeType___block_invoke()
{
  v0 = dispatch_queue_create("com.apple.changeproperties", 0);
  v1 = propertiesForChangeType__lock;
  propertiesForChangeType__lock = v0;

  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = propertiesForChangeType__classToProperties;
  propertiesForChangeType__classToProperties = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

- (id)mergeRecordChangeWithNewRecordChange:(id)a3 direction:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 changeType];
  if (v7)
  {
    v8 = v7;
    if (v7 == 1024)
    {
      if ([(CPLRecordChange *)self changeType]== 1024)
      {
        v9 = self;
      }

      else
      {
        v9 = v6;
      }

      v17 = v9;
    }

    else
    {
      v39 = 0;
      v40 = &v39;
      v41 = 0x2020000000;
      v42 = [(CPLRecordChange *)self changeType];
      v18 = v40[3];
      if (v18 == 1024)
      {
        v17 = v6;
      }

      else
      {
        v19 = [(CPLRecordChange *)self copy];
        v20 = [objc_opt_class() copyPropertyBlockForDirection:a4];
        v21 = v20;
        if (v20)
        {
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = __66__CPLRecordChange_mergeRecordChangeWithNewRecordChange_direction___block_invoke_2;
          v36[3] = &unk_1E861E120;
          v37 = v20;
          v38 = a4;
          v22 = MEMORY[0x1E128EBA0](v36);
        }

        else
        {
          v22 = 0;
        }

        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __66__CPLRecordChange_mergeRecordChangeWithNewRecordChange_direction___block_invoke_3;
        v29[3] = &unk_1E861E148;
        v34 = v8;
        v29[4] = self;
        v23 = v19;
        v30 = v23;
        v31 = v6;
        v24 = v22;
        v35 = v18 != 0;
        v32 = v24;
        v33 = &v39;
        [(CPLRecordChange *)self enumerateChangeTypesForChangeType:0 block:v29];
        if (v18)
        {
          [v23 setChangeType:v40[3]];
        }

        v25 = [(CPLRecordChange *)self scopedIdentifier];
        v26 = [v25 scopeIndex];

        if (v26 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v23 setScopeIndex:v26];
        }

        v27 = v32;
        v17 = v23;
      }

      _Block_object_dispose(&v39, 8);
    }
  }

  else
  {
    v10 = [objc_opt_class() copyPropertyBlockForDirection:a4];
    if (v10)
    {
      v11 = [(CPLRecordChange *)self copy];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __66__CPLRecordChange_mergeRecordChangeWithNewRecordChange_direction___block_invoke;
      v43[3] = &unk_1E861E0A8;
      v46 = v10;
      v12 = v11;
      v44 = v12;
      v13 = v6;
      v45 = v13;
      v47 = a4;
      [v12 cplCopyPropertiesFromObject:v13 withCopyBlock:v43];
      [v12 setChangeType:0];
      v14 = [v13 scopedIdentifier];
      v15 = [v14 scopeIndex];

      if (v15 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v12 setScopeIndex:v15];
      }

      v16 = v45;
      v17 = v12;
    }

    else
    {
      v17 = v6;
    }
  }

  return v17;
}

void __66__CPLRecordChange_mergeRecordChangeWithNewRecordChange_direction___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 72) & a2) != 0)
  {
    v5 = [*(a1 + 32) propertiesForChangeType:a2];
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v12 = v5;
    [*(a1 + 40) cplCopyProperties:? fromObject:? withCopyBlock:?];
    if (*(a1 + 80) == 1)
    {
      v8 = *(*(a1 + 64) + 8);
      v9 = *(v8 + 24);
      if (v9)
      {
        v10 = a2 == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = v9 | a2;
      if (v10)
      {
        v11 = 0;
      }

      *(v8 + 24) = v11;
    }
  }
}

- (BOOL)resourceChangeWillOnlyChangeDerivatives:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!-[CPLRecordChange supportsResources](self, "supportsResources") || !-[CPLRecordChange isFullRecord](self, "isFullRecord") || ([v5 hasChangeType:8] & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v29 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v42 = v5;
        v43 = 2112;
        v44 = self;
        _os_log_impl(&dword_1DC05A000, v29, OS_LOG_TYPE_ERROR, "Incorrectly trying to filter out derivatives change %@ from %@", buf, 0x16u);
      }
    }

    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLRecordChange.m"];
    [v30 handleFailureInMethod:a2 object:self file:v31 lineNumber:748 description:{@"Incorrectly trying to filter out derivatives change %@ from %@", v5, self}];

    abort();
  }

  v6 = [(CPLRecordChange *)self propertiesForChangeType:8];
  v7 = [v6 mutableCopy];

  [v7 removeObject:@"resources"];
  if ([self cplProperties:v7 areEqualToPropertiesOf:v5 withEqualityBlock:0])
  {
    v8 = [(CPLRecordChange *)self resources];
    v9 = [v5 resources];
    v10 = [v8 count];
    if (v10 == [v9 count])
    {
      v11 = [v9 objectEnumerator];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v12 = v8;
      v13 = [v12 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v13)
      {
        v14 = v13;
        v32 = v9;
        v33 = v8;
        v34 = v7;
        v35 = v5;
        v15 = *v37;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v37 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v36 + 1) + 8 * i);
            v18 = [v11 nextObject];
            if (!-[CPLRecordChange isResourceTypeAGeneratedDerivative:](self, "isResourceTypeAGeneratedDerivative:", [v17 resourceType]))
            {
              v19 = [v17 identity];
              v20 = [v19 isAvailable];

              if (!v20)
              {
                goto LABEL_22;
              }

              v21 = [v18 identity];
              v22 = [v21 fileURL];
              if (v22)
              {
                v23 = v22;
                [v21 setFileURL:0];
                v24 = [v17 isEqual:v18];
                [v21 setFileURL:v23];

                if ((v24 & 1) == 0)
                {
                  goto LABEL_22;
                }
              }

              else
              {
                v25 = [v17 isEqual:v18];

                if ((v25 & 1) == 0)
                {
LABEL_22:

                  v26 = 0;
                  goto LABEL_23;
                }
              }
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v36 objects:v40 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }

        v26 = 1;
LABEL_23:
        v7 = v34;
        v5 = v35;
        v9 = v32;
        v8 = v33;
      }

      else
      {
        v26 = 1;
      }
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

- (id)realRecordChangeFromRecordChange:(id)a3 direction:(unint64_t)a4 newRecord:(id *)a5 diffTracker:(id)a6
{
  v10 = a6;
  v11 = a3;
  v12 = [v11 changeType];
  if (v12)
  {
    v13 = v12 | 0x100;
  }

  else
  {
    v13 = 378;
  }

  v14 = [(CPLRecordChange *)self realRecordChangeFromRecordChange:v11 direction:a4 newRecord:a5 changeType:v13 diffTracker:v10];

  return v14;
}

- (id)realRecordChangeFromRecordChange:(id)a3 direction:(unint64_t)a4 newRecord:(id *)a5 changeType:(unint64_t)a6 diffTracker:(id)a7
{
  v57 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a7;
  if ((a6 & 0x400) != 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v31 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v13;
        _os_log_impl(&dword_1DC05A000, v31, OS_LOG_TYPE_ERROR, "Trying to compute changes for a delete change: %@", buf, 0xCu);
      }
    }

    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLRecordChange.m"];
    [v32 handleFailureInMethod:a2 object:self file:v33 lineNumber:669 description:{@"Trying to compute changes for a delete change: %@", v13}];

LABEL_16:
    abort();
  }

  v15 = v14;
  v16 = [v13 scopedIdentifier];
  v17 = [(CPLRecordChange *)self scopedIdentifier];
  v18 = [v16 isEqual:v17];

  if ((v18 & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v34 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = [v13 scopedIdentifier];
        v36 = [(CPLRecordChange *)self scopedIdentifier];
        *buf = 138412546;
        *&buf[4] = v35;
        *&buf[12] = 2112;
        *&buf[14] = v36;
        _os_log_impl(&dword_1DC05A000, v34, OS_LOG_TYPE_ERROR, "Mismatched identifier between change (%@) and record (%@)", buf, 0x16u);
      }
    }

    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLRecordChange.m"];
    v39 = [v13 scopedIdentifier];
    v40 = [(CPLRecordChange *)self scopedIdentifier];
    [v37 handleFailureInMethod:a2 object:self file:v38 lineNumber:670 description:{@"Mismatched identifier between change (%@) and record (%@)", v39, v40}];

    goto LABEL_16;
  }

  *a5 = 0;
  v19 = [(CPLRecordChange *)self copy];
  v20 = objc_opt_class();
  v21 = [(CPLRecordChange *)self scopedIdentifier];
  v22 = [v20 newRecordWithScopedIdentifier:v21];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v56 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __95__CPLRecordChange_realRecordChangeFromRecordChange_direction_newRecord_changeType_diffTracker___block_invoke;
  v42[3] = &unk_1E861E0F8;
  v49 = a6;
  v41 = v15;
  v43 = v41;
  v23 = v19;
  v44 = v23;
  v24 = v13;
  v45 = v24;
  v25 = v22;
  v46 = v25;
  v47 = buf;
  v50 = a4;
  v48 = &v51;
  v26 = MEMORY[0x1E128EBA0](v42);
  [(CPLRecordChange *)self enumerateChangeTypesForChangeType:0 block:v26];
  v26[2](v26, 256);
  if (v52[3] == 256)
  {
    *(*&buf[8] + 24) = 0;
  }

  else if (*(*&buf[8] + 24))
  {
    [v23 setChangeType:0];
    v27 = v23;
    *a5 = v23;
    v52[3] &= ~0x100uLL;
    [v25 setChangeType:?];
    goto LABEL_8;
  }

  v25 = 0;
LABEL_8:
  v28 = v25;

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(buf, 8);

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

void __95__CPLRecordChange_realRecordChangeFromRecordChange_direction_newRecord_changeType_diffTracker___block_invoke(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 80) & a2) != 0)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v4 = *(a1 + 32);
    if (v4)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __95__CPLRecordChange_realRecordChangeFromRecordChange_direction_newRecord_changeType_diffTracker___block_invoke_2;
      v12[3] = &unk_1E861E0D0;
      v16 = &v19;
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v15 = *(a1 + 56);
      v5 = *(a1 + 88);
      v17 = a2;
      v18 = v5;
      [v4 withTrackerForChangeType:a2 block:v12];

      if ((v20[3] & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v6 = [*(a1 + 40) applyChange:*(a1 + 48) copyPropertiesToFinalChange:*(a1 + 56) forChangeType:a2 direction:*(a1 + 88) diffTracker:0];
      *(v20 + 24) = v6;
      if ((v6 & 1) == 0)
      {
LABEL_14:
        _Block_object_dispose(&v19, 8);
        return;
      }
    }

    v7 = *(*(a1 + 64) + 8);
    if (*(v7 + 24))
    {
      v8 = *(*(a1 + 72) + 8);
      v9 = *(v8 + 24);
      if (v9)
      {
        v10 = a2 == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = v9 | a2;
      if (v10)
      {
        v11 = 0;
      }

      *(v8 + 24) = v11;
    }

    else
    {
      *(v7 + 24) = 1;
      *(*(*(a1 + 72) + 8) + 24) = a2;
    }

    goto LABEL_14;
  }
}

uint64_t __95__CPLRecordChange_realRecordChangeFromRecordChange_direction_newRecord_changeType_diffTracker___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) applyChange:*(a1 + 40) copyPropertiesToFinalChange:*(a1 + 48) forChangeType:*(a1 + 64) direction:*(a1 + 72) diffTracker:a2];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (BOOL)applyChange:(id)a3 copyPropertiesToFinalChange:(id)a4 forChangeType:(unint64_t)a5 direction:(unint64_t)a6 diffTracker:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if (a5 == 256)
  {
    v15 = [(CPLRecordChange *)self recordModificationDate];
    v16 = [v12 recordModificationDate];
    v17 = v16;
    if (!v16)
    {
      goto LABEL_7;
    }

    if (!v15)
    {
      goto LABEL_11;
    }

    [v16 timeIntervalSinceDate:v15];
    if (v18 < 0.0)
    {
      v18 = -v18;
    }

    if (v18 >= 0.00100000005)
    {
LABEL_11:
      [v13 setRecordModificationDate:v17];
      [(CPLRecordChange *)self setRecordModificationDate:v17];
      [v14 noteObjectsDifferOnProperty:@"recordModificationDate"];
      v19 = 1;
    }

    else
    {
LABEL_7:
      v19 = 0;
    }

LABEL_20:

    goto LABEL_21;
  }

  v15 = [(CPLRecordChange *)self propertiesForChangeType:a5];
  if (v15)
  {
    v20 = [objc_opt_class() equalityBlockForDirection:a6];
    v17 = v20;
    if (v20)
    {
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __95__CPLRecordChange_applyChange_copyPropertiesToFinalChange_forChangeType_direction_diffTracker___block_invoke;
      v44[3] = &unk_1E861E058;
      v45 = v20;
      v46 = a6;
      v21 = MEMORY[0x1E128EBA0](v44);
    }

    else
    {
      v21 = 0;
    }

    v22 = [self cplProperties:v15 areEqualToPropertiesOf:v12 diffTracker:v14 withEqualityBlock:v21];
    if (!v22)
    {
      v23 = [objc_opt_class() copyPropertyBlockForDirection:a6];
      v24 = v23;
      if (v23)
      {
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __95__CPLRecordChange_applyChange_copyPropertiesToFinalChange_forChangeType_direction_diffTracker___block_invoke_2;
        v38[3] = &unk_1E861E080;
        v31 = v23;
        v25 = v23;
        v42 = v25;
        v39 = v13;
        v32 = v21;
        v26 = v12;
        v40 = v26;
        v41 = self;
        v43 = a6;
        v33 = MEMORY[0x1E128EBA0](v38);
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __95__CPLRecordChange_applyChange_copyPropertiesToFinalChange_forChangeType_direction_diffTracker___block_invoke_3;
        v34[3] = &unk_1E861E0A8;
        v27 = v25;
        v24 = v31;
        v36 = v27;
        v34[4] = self;
        v28 = v26;
        v21 = v32;
        v35 = v28;
        v37 = a6;
        v29 = MEMORY[0x1E128EBA0](v34);
      }

      else
      {
        v33 = 0;
        v29 = 0;
      }

      [v13 cplCopyProperties:v15 fromObject:v12 withCopyBlock:{v33, v31}];
      [self cplCopyProperties:v15 fromObject:v12 withCopyBlock:v29];
    }

    v19 = !v22;

    goto LABEL_20;
  }

  v19 = 0;
LABEL_21:

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self->_changeType == 1024)
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = [(CPLRecordChange *)self scopedIdentifier];
      v8 = [v4 scopedIdentifier];
      v9 = v8;
      v6 = v7 && v8 && ([v7 isEqual:v8] & 1) != 0 || (v7 | v9) == 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = [self cplIsEqual:v4];
  }

  return v6;
}

- (id)redactedDescription
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@ %@", objc_opt_class(), self->_scopedIdentifier];
  changeType = self->_changeType;
  if ((changeType & 0x400) != 0)
  {
    v6 = @" [D]";
  }

  else
  {
    v5 = [objc_opt_class() _descriptionForChangeType:changeType isSparseFullChange:self->_isSparseFullChange onlyUploadNewResources:{-[CPLRecordChange shouldOnlyUploadNewResources](self, "shouldOnlyUploadNewResources")}];
    [v3 appendFormat:@" %@", v5];

    if (![(CPLRecordChange *)self inTrash])
    {
      goto LABEL_6;
    }

    v6 = @" [trash]";
  }

  [v3 appendString:v6];
LABEL_6:
  [v3 appendString:@">"];

  return v3;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@ %@", objc_opt_class(), self->_scopedIdentifier];
  v4 = v3;
  if (self->_realIdentifier)
  {
    [v3 appendFormat:@" real: %@", self->_realIdentifier];
  }

  sharingRecordChangeData = self->_sharingRecordChangeData;
  if (self->_recordChangeData)
  {
    if (sharingRecordChangeData)
    {
      v6 = @" [tag/shared tag]";
    }

    else
    {
      v6 = @" [tag]";
    }
  }

  else
  {
    if (!sharingRecordChangeData)
    {
      goto LABEL_10;
    }

    v6 = @" [shared tag]";
  }

  [v4 appendString:v6];
LABEL_10:
  changeType = self->_changeType;
  if ((changeType & 0x400) != 0)
  {
    [v4 appendString:@" [D]"];
    goto LABEL_28;
  }

  v8 = [objc_opt_class() _descriptionForChangeType:changeType isSparseFullChange:self->_isSparseFullChange onlyUploadNewResources:{-[CPLRecordChange shouldOnlyUploadNewResources](self, "shouldOnlyUploadNewResources")}];
  [v4 appendFormat:@" %@", v8];

  v9 = [(CPLRecordChange *)self propertiesDescription];
  v10 = [v9 length];
  v11 = [(CPLRecordChange *)self inTrash];
  if (v10)
  {
    v12 = "";
    if (v11)
    {
      v12 = "[trash] ";
    }

    [v4 appendFormat:@" %s%@", v12, v9];
  }

  else if (v11)
  {
    [v4 appendString:@" [trash]"];
  }

  if ([(CPLRecordChange *)self supportsSharingScopedIdentifier])
  {
    v13 = [(CPLRecordChange *)self sharingScopeIdentifier];
    v14 = [(CPLRecordChange *)self sharingContributorUserIdentifiers];
    v15 = [v14 count];
    if (v15)
    {
      if (v13)
      {
        [v4 appendFormat:@" [shared %tu cont.]", v15];
LABEL_26:

        goto LABEL_27;
      }

      v18 = v15;
      v16 = @" [%tu cont.]";
    }

    else
    {
      if (!v13)
      {
        goto LABEL_26;
      }

      v16 = @" [shared]";
    }

    [v4 appendFormat:v16, v18];
    goto LABEL_26;
  }

LABEL_27:

LABEL_28:
  [v4 appendString:@">"];

  return v4;
}

- (unint64_t)originalResourceSize
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [(CPLRecordChange *)self resources];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        if ([v7 resourceType] == 1 || objc_msgSend(v7, "resourceType") == 17 || objc_msgSend(v7, "resourceType") == 18 || objc_msgSend(v7, "resourceType") == 23 || objc_msgSend(v7, "resourceType") == 24)
        {
          v9 = [v7 identity];
          v8 = [v9 fileURL];

          if (v8)
          {
            v8 = [v9 fileSize];
          }

          goto LABEL_18;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v8 = 0;
      if (v4)
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

LABEL_18:

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

- (unint64_t)realUploadResourceSize
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [(CPLRecordChange *)self resources];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 resourceType] <= 0x1D)
        {
          v9 = [v8 identity];
          v10 = [v9 fileURL];

          if (v10)
          {
            v5 += [v9 fileSize];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)realResourceSize
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [(CPLRecordChange *)self resources];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) identity];
        v9 = [v8 fileURL];

        if (v9)
        {
          v5 += [v8 fileSize];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)effectiveResourceSizeToUploadUsingStorage:(id)a3
{
  v4 = a3;
  if (!self->_didCacheRealResourceSizeInStorage)
  {
    v5 = [(CPLRecordPushContext *)self->_pushContext uploadIdentifier];
    if (v5 && (v6 = v5, v7 = [(CPLRecordChange *)self hasChangeType:8], v6, v7))
    {
      v8 = [(CPLRecordPushContext *)self->_pushContext uploadIdentifier];
      self->_cachedRealResourceSizeInStorage = [v4 effectiveResourceSizeToUploadForUploadIdentifier:v8];
    }

    else
    {
      self->_cachedRealResourceSizeInStorage = 0;
    }

    self->_didCacheRealResourceSizeInStorage = 1;
  }

  cachedRealResourceSizeInStorage = self->_cachedRealResourceSizeInStorage;

  return cachedRealResourceSizeInStorage;
}

- (unint64_t)totalResourceSize
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [(CPLRecordChange *)self resources];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) identity];
        v9 = [v8 fileSize];

        v5 += v9;
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)resourceForType:(unint64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(CPLRecordChange *)self resources];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 resourceType] == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)setResources:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLRecordChange.m"];
  [v6 handleFailureInMethod:a2 object:self file:v7 lineNumber:357 description:{@"%@ does not supports resources", objc_opt_class()}];

  abort();
}

- (id)resources
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLRecordChange.m"];
  [v4 handleFailureInMethod:a2 object:self file:v5 lineNumber:352 description:{@"%@ does not supports resources", objc_opt_class()}];

  abort();
}

- (void)updateScopeIdentifier:(id)a3
{
  v8 = a3;
  v4 = [(CPLRecordChange *)self scopedIdentifier];
  if (v4)
  {
    v5 = [CPLScopedIdentifier alloc];
    v6 = [v4 identifier];
    v7 = [(CPLScopedIdentifier *)v5 initWithScopeIdentifier:v8 identifier:v6];
    [(CPLRecordChange *)self setScopedIdentifier:v7];

    [(CPLRecordChange *)self awakeFromStorage];
  }
}

- (void)setUpdateSharingContributorUserIdentifiers:(id)a3
{
  v4 = a3;
  if ([v4 count] > 1)
  {
    v5 = [v4 sortedArrayUsingSelector:sel_compare_];
  }

  else
  {
    v5 = [v4 copy];
  }

  v6 = v5;

  updateSharingContributorUserIdentifiers = self->_updateSharingContributorUserIdentifiers;
  self->_updateSharingContributorUserIdentifiers = v6;
}

- (void)setSharingContributorUserIdentifiers:(id)a3
{
  v4 = a3;
  if ([v4 count] > 1)
  {
    v5 = [v4 sortedArrayUsingSelector:sel_compare_];
  }

  else
  {
    v5 = [v4 copy];
  }

  v6 = v5;

  sharingContributorUserIdentifiers = self->_sharingContributorUserIdentifiers;
  self->_sharingContributorUserIdentifiers = v6;
}

- (BOOL)isSharedInScopeWithIdentifier:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (![(CPLRecordChange *)self hasChangeType:64])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v14 = self;
        _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "Trying to get sharing scope identifier for %@ while it does not contain the info", buf, 0xCu);
      }
    }

    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLRecordChange.m"];
    [v11 handleFailureInMethod:a2 object:self file:v12 lineNumber:288 description:{@"Trying to get sharing scope identifier for %@ while it does not contain the info", self}];

    abort();
  }

  sharingScopeIdentifier = self->_sharingScopeIdentifier;
  if (sharingScopeIdentifier)
  {
    v7 = [(NSString *)sharingScopeIdentifier isEqualToString:v5];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)setSharingRecordScopedIdentifier:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (v4)
  {
    v5 = [v4 scopeIdentifier];
    sharingScopeIdentifier = self->_sharingScopeIdentifier;
    self->_sharingScopeIdentifier = v5;

    v7 = [v10 identifier];
  }

  else
  {
    v8 = self->_sharingScopeIdentifier;
    self->_sharingScopeIdentifier = 0;

    v7 = 0;
  }

  sharingRecordIdentifier = self->_sharingRecordIdentifier;
  self->_sharingRecordIdentifier = v7;
}

- (id)sharingRecordScopedIdentifier
{
  if (self->_sharingScopeIdentifier)
  {
    if (self->_sharingRecordIdentifier)
    {
      v3 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:self->_sharingScopeIdentifier identifier:self->_sharingRecordIdentifier];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSharingScopeIdentifier:(id)a3
{
  v6 = a3;
  if ([(CPLRecordChange *)self supportsSharingScopedIdentifier])
  {
    v4 = [v6 copy];
    sharingScopeIdentifier = self->_sharingScopeIdentifier;
    self->_sharingScopeIdentifier = v4;
  }
}

- (BOOL)supportsCollectionShare
{
  v2 = objc_opt_class();

  return [v2 supportsCollectionShare];
}

- (BOOL)supportsSharing
{
  v2 = objc_opt_class();

  return [v2 supportsSharing];
}

- (BOOL)supportsRecordModificationDate
{
  v2 = objc_opt_class();

  return [v2 supportsRecordModificationDate];
}

- (BOOL)supportsDirectDeletion
{
  if ([objc_opt_class() supportsDirectDeletion])
  {
    return 1;
  }

  v4 = [(CPLRecordChange *)self realIdentifier];
  v3 = [v4 length] != 0;

  return v3;
}

- (BOOL)supportsDeletion
{
  v2 = objc_opt_class();

  return [v2 supportsDeletion];
}

- (BOOL)requiresStableHashForResourceType:(unint64_t)a3
{
  v4 = objc_opt_class();

  return [v4 requiresStableHashForResourceType:a3];
}

- (BOOL)supportsResourceType:(unint64_t)a3
{
  v4 = objc_opt_class();

  return [v4 supportsResourceType:a3];
}

- (BOOL)supportsResources
{
  v2 = objc_opt_class();

  return [v2 supportsResources];
}

- (BOOL)hasChangeType:(unint64_t)a3
{
  if ((a3 & 8) == 0 || (v5 = [(CPLRecordChange *)self supportsResources]))
  {
    changeType = self->_changeType;
    if (changeType == a3)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v8 = (a3 & ~changeType) == 0 || changeType == 0;
      LOBYTE(v5) = a3 != 1024 && v8;
    }
  }

  return v5;
}

- (BOOL)isInScopeWithIdentifier:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  scopedIdentifier = self->_scopedIdentifier;
  if (!scopedIdentifier)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = self;
        _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_ERROR, "Missing scope identifier in %@", buf, 0xCu);
      }
    }

    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLRecordChange.m"];
    [v12 handleFailureInMethod:a2 object:self file:v13 lineNumber:164 description:{@"Missing scope identifier in %@", self}];

    abort();
  }

  v7 = [(CPLScopedIdentifier *)scopedIdentifier scopeIdentifier];
  v8 = [v7 isEqualToString:v5];

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)realScopedIdentifier
{
  v3 = [(CPLRecordChange *)self realIdentifier];
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

- (void)setScopeIndex:(int64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  [(CPLScopedIdentifier *)self->_scopedIdentifier setScopeIndex:?];
  if ([(CPLRecordChange *)self supportsResources]&& [(CPLRecordChange *)self hasChangeType:8])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [(CPLRecordChange *)self resources];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v12 + 1) + 8 * v9) itemScopedIdentifier];
          [v10 setScopeIndex:a3];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)asRecordView
{
  v2 = [[CPLSimpleRecordView alloc] initWithRecord:self];

  return v2;
}

- (BOOL)validateRecordForTracker:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v30 = 0;
  v5 = [(CPLRecordChange *)self validateChangeWithError:&v30];
  v6 = v30;
  if (!v5)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v18 = __CPLSessionOSLogDomain_16325();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v33 = v6;
        _os_log_impl(&dword_1DC05A000, v18, OS_LOG_TYPE_ERROR, "Client pushed an invalid record: %@", buf, 0xCu);
      }
    }

    v8 = [v4 pushChangeTasks];
    v9 = [(CPLRecordChange *)self scopedIdentifier];
    [v8 addTask:0 forRecordWithScopedIdentifier:v9];
LABEL_25:
    v17 = 0;
    goto LABEL_26;
  }

  v7 = [(CPLRecordChange *)self scopedIdentifier];
  v8 = [v7 scopeIdentifier];

  if (([v4 checkScopeIdentifier:v8] & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v19 = __CPLSessionOSLogDomain_16325();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v33 = self;
        _os_log_impl(&dword_1DC05A000, v19, OS_LOG_TYPE_ERROR, "Client pushed a record to an invalid scope: %@", buf, 0xCu);
      }
    }

    v9 = [v4 pushChangeTasks];
    v15 = [(CPLRecordChange *)self scopedIdentifier];
    [v9 addTask:6 forRecordWithScopedIdentifier:v15];
LABEL_24:

    goto LABEL_25;
  }

  if (![(CPLRecordChange *)self supportsResources]|| ![(CPLRecordChange *)self hasChangeType:8])
  {
    v17 = 1;
    goto LABEL_27;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = [(CPLRecordChange *)self resources];
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v25 = v6;
    v12 = *v27;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = [(CPLRecordChange *)v14 identity];
        v16 = [v15 fileUTI];

        if (!v16)
        {
          v6 = v25;
          if ((_CPLSilentLogging & 1) == 0)
          {
            v22 = __CPLSessionOSLogDomain_16325();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v33 = v14;
              _os_log_impl(&dword_1DC05A000, v22, OS_LOG_TYPE_ERROR, "Client pushed a resource with no fileUTI: %@", buf, 0xCu);
            }
          }

          v23 = [v4 pushChangeTasks];
          v24 = [(CPLRecordChange *)self scopedIdentifier];
          [v23 addTask:0 forRecordWithScopedIdentifier:v24];

          goto LABEL_24;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
      v17 = 1;
      if (v11)
      {
        continue;
      }

      break;
    }

    v6 = v25;
  }

  else
  {
    v17 = 1;
  }

LABEL_26:

LABEL_27:
  v20 = *MEMORY[0x1E69E9840];
  return v17;
}

- (Class)relatedRecordClass
{
  v2 = objc_opt_class();

  return [v2 relatedRecordClass];
}

@end
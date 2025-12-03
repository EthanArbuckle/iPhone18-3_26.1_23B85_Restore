@interface CPLRecordChange
+ (BOOL)cplShouldIgnorePropertyForCoding:(id)coding;
+ (BOOL)cplShouldIgnorePropertyForEquality:(id)equality;
+ (Class)classForStoredClassName:(id)name forCPLArchiver:(id)archiver;
+ (id)_descriptionForChangeType:(unint64_t)type isSparseFullChange:(BOOL)change onlyUploadNewResources:(BOOL)resources;
+ (id)cplAdditionalSecureClassesForProperty:(id)property;
+ (id)descriptionForDirection:(unint64_t)direction;
+ (id)descriptionForSupportedFeatureCompatibleVersion:(int64_t)version;
+ (id)newChangeWithScopedIdentifier:(id)identifier changeType:(unint64_t)type;
+ (id)newChangeWithType:(unint64_t)type;
+ (id)newDeleteChangeWithScopedIdentifier:(id)identifier;
+ (id)newRecord;
+ (id)newRecordInScopeWithIdentifier:(id)identifier;
+ (id)newRecordWithScopedIdentifier:(id)identifier;
+ (int64_t)supportedFeatureCompatibleVersion;
- (BOOL)allResourcesAreAvailable;
- (BOOL)applyChange:(id)change copyPropertiesToFinalChange:(id)finalChange forChangeType:(unint64_t)type direction:(unint64_t)direction diffTracker:(id)tracker;
- (BOOL)changeIsOnlyAddingResourcesToRecord:(id)record addedResources:(id *)resources;
- (BOOL)hasChangeType:(unint64_t)type;
- (BOOL)isEqual:(id)equal;
- (BOOL)isInScopeWithIdentifier:(id)identifier;
- (BOOL)isSharedInScopeWithIdentifier:(id)identifier;
- (BOOL)relatedRelationshipIsWeak;
- (BOOL)requiresStableHashForResourceType:(unint64_t)type;
- (BOOL)resourceChangeWillOnlyChangeDerivatives:(id)derivatives;
- (BOOL)secondaryRelationshipIsWeak;
- (BOOL)shouldApplyPropertiesWithSelector:(SEL)selector;
- (BOOL)supportsCollectionShare;
- (BOOL)supportsDeletion;
- (BOOL)supportsDirectDeletion;
- (BOOL)supportsRecordModificationDate;
- (BOOL)supportsResourceType:(unint64_t)type;
- (BOOL)supportsResources;
- (BOOL)supportsSharing;
- (BOOL)supportsSharingScopedIdentifier;
- (BOOL)validateChangeWithError:(id *)error;
- (BOOL)validateRecordForTracker:(id)tracker;
- (CPLRecordChange)initWithCPLArchiver:(id)archiver;
- (CPLRecordChange)initWithCoder:(id)coder;
- (Class)relatedRecordClass;
- (NSArray)sharingContributorUserIdentifiers;
- (NSArray)updateSharingContributorUserIdentifiers;
- (id)allRelatedScopedIdentifiers;
- (id)asRecordView;
- (id)checkDefaultValueBlockForPropertyWithSelector:(SEL)selector;
- (id)compactedChangeWithRelatedChanges:(id)changes isOnlyChange:(BOOL)change fullRecord:(id)record usingStorageView:(id)view;
- (id)copyChangeType:(unint64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)cplFullDescription;
- (id)description;
- (id)fingerprintSchemeWithContext:(id)context;
- (id)mergeRecordChangeWithNewRecordChange:(id)change direction:(unint64_t)direction;
- (id)onlyAddedResources;
- (id)propertiesForChangeType:(unint64_t)type;
- (id)proposedCloudScopedIdentifier;
- (id)proposedLocalScopedIdentifier;
- (id)realRecordChangeFromRecordChange:(id)change direction:(unint64_t)direction newRecord:(id *)record changeType:(unint64_t)type diffTracker:(id)tracker;
- (id)realRecordChangeFromRecordChange:(id)change direction:(unint64_t)direction newRecord:(id *)record diffTracker:(id)tracker;
- (id)realScopedIdentifier;
- (id)redactedDescription;
- (id)relatedScopedIdentifier;
- (id)resourceForType:(unint64_t)type;
- (id)resourcePerType;
- (id)resources;
- (id)resourcesDescription;
- (id)scopedIdentifiersForMapping;
- (id)secondaryScopedIdentifier;
- (id)sharingRecordScopedIdentifier;
- (id)storedClassNameForCPLArchiver:(id)archiver;
- (id)translateToClientChangeUsingIDMapping:(id)mapping error:(id *)error;
- (id)translateToCloudChangeUsingIDMapping:(id)mapping error:(id *)error;
- (int64_t)dequeueOrder;
- (unint64_t)baseDerivativeResourceType;
- (unint64_t)baseVideoComplemenentResourceType;
- (unint64_t)effectiveResourceSizeToUploadUsingStorage:(id)storage;
- (unint64_t)estimatedRecordSize;
- (unint64_t)fullChangeTypeForFullRecord;
- (unint64_t)largestResourceSize;
- (unint64_t)originalResourceSize;
- (unint64_t)realResourceSize;
- (unint64_t)realUploadResourceSize;
- (unint64_t)totalResourceSize;
- (void)applyChange:(id)change;
- (void)applyChangeType:(unint64_t)type fromChange:(id)change;
- (void)awakeFromStorage;
- (void)clearChangeType:(unint64_t)type;
- (void)clearIdentifiers;
- (void)copyDerivatives:(unint64_t *)derivatives count:(int)count avoidResourceType:(unint64_t)type fromRecord:(id)record inResourcePerType:(id)perType;
- (void)copyDerivativesFromRecordIfPossible:(id)possible;
- (void)enumerateChangeTypesForChangeType:(unint64_t)type block:(id)block;
- (void)markAsSparseFullChange;
- (void)markToOnlyUploadNewResources;
- (void)prepareForStorage;
- (void)restoreRelationshipsFromFullRecord:(id)record;
- (void)setResources:(id)resources;
- (void)setScopeIndex:(int64_t)index;
- (void)setSharingContributorUserIdentifiers:(id)identifiers;
- (void)setSharingRecordScopedIdentifier:(id)identifier;
- (void)setSharingScopeIdentifier:(id)identifier;
- (void)setShouldFilterDefaultValuesForNewProperties:(BOOL)properties;
- (void)setUpdateSharingContributorUserIdentifiers:(id)identifiers;
- (void)updateScopeIdentifier:(id)identifier;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 cplCopyPropertiesFromObject:self withCopyBlock:0];
  return v4;
}

- (CPLRecordChange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CPLRecordChange;
  v5 = [(CPLRecordChange *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [v5 cplDecodePropertiesFromCoder:coderCopy];
    scopedIdentifier = [(CPLRecordChange *)v6 scopedIdentifier];

    if (!scopedIdentifier)
    {
      if (initWithCoder__onceToken_5237 != -1)
      {
        dispatch_once(&initWithCoder__onceToken_5237, &__block_literal_global_54_5238);
      }

      v8 = [coderCopy decodeObjectOfClass:initWithCoder__stringClass forKey:@"identifier"];
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

- (id)storedClassNameForCPLArchiver:(id)archiver
{
  v3 = NSStringFromClass([(CPLRecordChange *)self classForCoder]);
  v4 = [v3 substringWithRange:{3, objc_msgSend(v3, "length") - 9}];

  return v4;
}

+ (id)cplAdditionalSecureClassesForProperty:(id)property
{
  propertyCopy = property;
  if (cplAdditionalSecureClassesForProperty__onceToken != -1)
  {
    dispatch_once(&cplAdditionalSecureClassesForProperty__onceToken, &__block_literal_global_5265);
  }

  v5 = [cplAdditionalSecureClassesForProperty__additionalClasses objectForKey:propertyCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = &OBJC_METACLASS___CPLRecordChange;
    v7 = objc_msgSendSuper2(&v10, sel_cplAdditionalSecureClassesForProperty_, propertyCopy);
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

+ (Class)classForStoredClassName:(id)name forCPLArchiver:(id)archiver
{
  v4 = MEMORY[0x1E696AEC0];
  nameCopy = name;
  nameCopy = [[v4 alloc] initWithFormat:@"CPL%@Change", nameCopy];

  v7 = NSClassFromString(nameCopy);

  return v7;
}

+ (BOOL)cplShouldIgnorePropertyForEquality:(id)equality
{
  equalityCopy = equality;
  if ([equalityCopy isEqualToString:@"identifier"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CPLRecordChange;
    v5 = objc_msgSendSuper2(&v7, sel_cplShouldIgnorePropertyForEquality_, equalityCopy);
  }

  return v5;
}

+ (BOOL)cplShouldIgnorePropertyForCoding:(id)coding
{
  codingCopy = coding;
  if ([codingCopy isEqualToString:@"identifier"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CPLRecordChange;
    v5 = objc_msgSendSuper2(&v7, sel_cplShouldIgnorePropertyForCoding_, codingCopy);
  }

  return v5;
}

- (CPLRecordChange)initWithCPLArchiver:(id)archiver
{
  archiverCopy = archiver;
  v11.receiver = self;
  v11.super_class = CPLRecordChange;
  v5 = [&v11 initWithCPLArchiver:archiverCopy];
  v6 = v5;
  if (v5)
  {
    scopedIdentifier = [(CPLRecordChange *)v5 scopedIdentifier];

    if (!scopedIdentifier)
    {
      if (initWithCPLArchiver__onceToken != -1)
      {
        dispatch_once(&initWithCPLArchiver__onceToken, &__block_literal_global_1955);
      }

      v8 = [archiverCopy decodeObjectOfClass:initWithCPLArchiver__stringClass forKey:@"identifier"];
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

- (id)translateToClientChangeUsingIDMapping:(id)mapping error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  mappingCopy = mapping;
  v7 = [(CPLRecordChange *)self copy];
  v29 = 0;
  scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
  if (scopedIdentifier)
  {
    v9 = [mappingCopy localScopedIdentifierForCloudScopedIdentifier:scopedIdentifier isFinal:&v29];
    if (v9)
    {
      proposedLocalScopedIdentifier = v9;
    }

    else
    {
      proposedLocalScopedIdentifier = [(CPLRecordChange *)self proposedLocalScopedIdentifier];
      if (![mappingCopy addCloudScopedIdentifier:scopedIdentifier forLocalScopedIdentifier:proposedLocalScopedIdentifier isFinal:1 direction:2 error:error])
      {
        scopedIdentifier2 = v7;
        v7 = 0;
        goto LABEL_28;
      }
    }

    [v7 setScopedIdentifier:proposedLocalScopedIdentifier];
    if (!v7 || ![v7 supportsResources] || !objc_msgSend(v7, "hasChangeType:", 8))
    {
      goto LABEL_29;
    }

    errorCopy = error;
    scopedIdentifier2 = [v7 scopedIdentifier];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    resources = [v7 resources];
    v13 = [resources countByEnumeratingWithState:&v25 objects:v34 count:16];
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
            objc_enumerationMutation(resources);
          }

          [*(*(&v25 + 1) + 8 * i) setItemScopedIdentifier:scopedIdentifier2];
        }

        v14 = [resources countByEnumeratingWithState:&v25 objects:v34 count:16];
      }

      while (v14);
    }

    v24 = 0;
    resourceCopyFromScopedIdentifier = [(CPLRecordChange *)self resourceCopyFromScopedIdentifier];
    if (resourceCopyFromScopedIdentifier)
    {
      v18 = [mappingCopy localScopedIdentifierForCloudScopedIdentifier:resourceCopyFromScopedIdentifier isFinal:&v24];
      if (v18)
      {
        [v7 setResourceCopyFromScopedIdentifier:v18];
      }

      else
      {
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Can't map cloud resourceCopyFromScopedIdentifier in %@", objc_opt_class()];
        if (errorCopy)
        {
          *errorCopy = [CPLErrors invalidClientCacheErrorWithReason:v19];
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v20 = __CPLGenericOSLogDomain();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v31 = resourceCopyFromScopedIdentifier;
            v32 = 2112;
            selfCopy = self;
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

- (id)translateToCloudChangeUsingIDMapping:(id)mapping error:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  mappingCopy = mapping;
  v7 = [(CPLRecordChange *)self copy];
  v27 = 0;
  scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
  if (scopedIdentifier)
  {
    v9 = [mappingCopy cloudScopedIdentifierForLocalScopedIdentifier:scopedIdentifier isFinal:&v27];
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
      proposedCloudScopedIdentifier = [(CPLRecordChange *)self proposedCloudScopedIdentifier];
      v11 = [mappingCopy setupCloudScopedIdentifier:proposedCloudScopedIdentifier forLocalScopedIdentifier:scopedIdentifier isFinal:0 direction:1 error:error];

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
      scopedIdentifier2 = [v7 scopedIdentifier];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      resources = [v7 resources];
      v14 = [resources countByEnumeratingWithState:&v23 objects:v28 count:16];
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
              objc_enumerationMutation(resources);
            }

            [*(*(&v23 + 1) + 8 * i) setItemScopedIdentifier:scopedIdentifier2];
          }

          v15 = [resources countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v15);
      }

      resourceCopyFromScopedIdentifier = [(CPLRecordChange *)self resourceCopyFromScopedIdentifier];
      if (resourceCopyFromScopedIdentifier)
      {
        v22 = 0;
        v19 = [mappingCopy cloudScopedIdentifierForLocalScopedIdentifier:resourceCopyFromScopedIdentifier isFinal:&v22];
        if (!v19)
        {
          v19 = [resourceCopyFromScopedIdentifier copy];
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
    scopedIdentifier2 = v3;
    scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
    v10[0] = scopedIdentifier;
    v10[1] = scopedIdentifier2;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  }

  else
  {
    scopedIdentifier2 = [(CPLRecordChange *)self scopedIdentifier];
    v9 = scopedIdentifier2;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)compactedChangeWithRelatedChanges:(id)changes isOnlyChange:(BOOL)change fullRecord:(id)record usingStorageView:(id)view
{
  if (change)
  {
    selfCopy = 0;
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)_descriptionForChangeType:(unint64_t)type isSparseFullChange:(BOOL)change onlyUploadNewResources:(BOOL)resources
{
  if (type == 1024)
  {
    v9 = @"[D]";
    goto LABEL_18;
  }

  resourcesCopy = resources;
  typeCopy = type;
  if (type)
  {
    v10 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"["];
    v9 = v10;
    if ((typeCopy & 2) != 0)
    {
      [(__CFString *)v10 appendString:@"U"];
      if ((typeCopy & 8) == 0)
      {
LABEL_8:
        if ((typeCopy & 0x10) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_26;
      }
    }

    else if ((typeCopy & 8) == 0)
    {
      goto LABEL_8;
    }

    if (resourcesCopy)
    {
      v12 = @"r";
    }

    else
    {
      v12 = @"R";
    }

    [(__CFString *)v9 appendString:v12];
    if ((typeCopy & 0x10) == 0)
    {
LABEL_9:
      if ((typeCopy & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_27;
    }

LABEL_26:
    [(__CFString *)v9 appendString:@"C"];
    if ((typeCopy & 0x20) == 0)
    {
LABEL_10:
      if ((typeCopy & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_28;
    }

LABEL_27:
    [(__CFString *)v9 appendString:@"F"];
    if ((typeCopy & 0x40) == 0)
    {
LABEL_11:
      if ((typeCopy & 0x100) == 0)
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
    if ((typeCopy & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (resources)
  {
    v7 = @"[Ar]";
    v8 = @"[ar]";
  }

  else
  {
    v7 = @"[A]";
    v8 = @"[a]";
  }

  if (change)
  {
    v7 = v8;
  }

  v9 = v7;
LABEL_18:

  return v9;
}

+ (id)newChangeWithType:(unint64_t)type
{
  newRecord = [self newRecord];
  [newRecord setChangeType:type];
  return newRecord;
}

+ (id)newDeleteChangeWithScopedIdentifier:(id)identifier
{
  v3 = [self newRecordWithScopedIdentifier:identifier];
  [v3 setChangeType:1024];
  return v3;
}

+ (id)newChangeWithScopedIdentifier:(id)identifier changeType:(unint64_t)type
{
  v5 = [self newRecordWithScopedIdentifier:identifier];
  [v5 setChangeType:type];
  return v5;
}

+ (id)newRecordWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setScopedIdentifier:identifierCopy];

  return v4;
}

+ (id)newRecordInScopeWithIdentifier:(id)identifier
{
  v4 = MEMORY[0x1E696AFB0];
  identifierCopy = identifier;
  uUID = [v4 UUID];
  uUIDString = [uUID UUIDString];

  v8 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:identifierCopy identifier:uUIDString];
  v9 = [self newRecordWithScopedIdentifier:v8];

  return v9;
}

+ (id)newRecord
{
  v3 = CPLPrimaryScopeIdentifierForCurrentUniverse();
  v4 = [self newRecordInScopeWithIdentifier:v3];

  return v4;
}

+ (id)descriptionForDirection:(unint64_t)direction
{
  if (direction >= 3)
  {
    direction = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unknown direction %lu", direction];
  }

  else
  {
    direction = off_1E861E1D8[direction];
  }

  return direction;
}

+ (id)descriptionForSupportedFeatureCompatibleVersion:(int64_t)version
{
  if (version >= 20220)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = 0;
    v6 = 1;
    versionCopy = version;
    do
    {
      v8 = v6;
      v9 = &descriptionForSupportedFeatureCompatibleVersion__descriptions[2 * v5];
      v10 = *v9;
      if ((*v9 & ~versionCopy) == 0)
      {
        [v4 addObject:v9[1]];
      }

      v6 = 0;
      versionCopy &= ~v10;
      v5 = 1;
    }

    while ((v8 & 1) != 0);
    if ([v4 count])
    {
      v11 = objc_alloc(MEMORY[0x1E696AEC0]);
      v12 = [v4 componentsJoinedByString:@"|"];
      v13 = v12;
      if (versionCopy)
      {
        versionCopy = [v11 initWithFormat:@"%ld (%@ + 0x%lx)", version, v12, versionCopy];
      }

      else
      {
        versionCopy = [v11 initWithFormat:@"%ld (%@)", version, v12, v17];
      }

      version = versionCopy;

      goto LABEL_13;
    }
  }

  version = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld", version];
LABEL_13:

  return version;
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

- (void)applyChangeType:(unint64_t)type fromChange:(id)change
{
  changeCopy = change;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __46__CPLRecordChange_applyChangeType_fromChange___block_invoke;
  v14 = &unk_1E861FC80;
  selfCopy = self;
  v16 = changeCopy;
  v7 = changeCopy;
  [(CPLRecordChange *)self enumerateChangeTypesForChangeType:type block:&v11];
  v8 = [(CPLRecordChange *)self changeType:v11];
  if (v8)
  {
    v9 = type == 0;
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
    v10 = v8 | type;
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

- (void)applyChange:(id)change
{
  v17 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  changeType = [(CPLRecordChange *)self changeType];
  if (changeType == 1024)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = changeCopy;
        _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_ERROR, "Can't apply %@ to a delete", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLRecordChange.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v13 lineNumber:1485 description:{@"Can't apply %@ to a delete", changeCopy}];

    abort();
  }

  v6 = changeType;
  changeType2 = [changeCopy changeType];
  if (changeType2 == 1024)
  {
    selfCopy2 = self;
LABEL_7:
    [(CPLRecordChange *)selfCopy2 setChangeType:changeType2];
    goto LABEL_9;
  }

  if (!changeType2)
  {
    [self cplCopyPropertiesFromObject:changeCopy withCopyBlock:0];
    if (!v6)
    {
      goto LABEL_9;
    }

    selfCopy2 = self;
    changeType2 = 0;
    goto LABEL_7;
  }

  [(CPLRecordChange *)self applyChangeType:changeType2 fromChange:changeCopy];
  recordModificationDate = [changeCopy recordModificationDate];
  [(CPLRecordChange *)self setRecordModificationDate:recordModificationDate];

LABEL_9:
  v10 = *MEMORY[0x1E69E9840];
}

- (void)clearChangeType:(unint64_t)type
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__CPLRecordChange_clearChangeType___block_invoke;
  v3[3] = &unk_1E861FC30;
  v3[4] = self;
  [(CPLRecordChange *)self enumerateChangeTypesForChangeType:type block:v3];
}

void __35__CPLRecordChange_clearChangeType___block_invoke(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) hasChangeType:a2])
  {
    v4 = [*(a1 + 32) propertiesForChangeType:a2];
    [*(a1 + 32) cplClearProperties:v4];
  }
}

- (id)copyChangeType:(unint64_t)type
{
  if (type)
  {
    if (![(CPLRecordChange *)self hasChangeType:?])
    {
      return 0;
    }

    v5 = objc_opt_class();
    scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
    v7 = [v5 newChangeWithScopedIdentifier:scopedIdentifier changeType:type];

    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __34__CPLRecordChange_copyChangeType___block_invoke;
    v16 = &unk_1E861FC80;
    selfCopy = self;
    v8 = v7;
    v18 = v8;
    [(CPLRecordChange *)self enumerateChangeTypesForChangeType:type block:&v13];
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

- (void)enumerateChangeTypesForChangeType:(unint64_t)type block:(id)block
{
  blockCopy = block;
  supportedChangeTypes = [(CPLRecordChange *)self supportedChangeTypes];
  if ((supportedChangeTypes & 2) != 0 && (!type || (type & 2) != 0))
  {
    blockCopy[2](blockCopy, 2);
  }

  if ((supportedChangeTypes & 8) != 0 && (!type || (type & 8) != 0))
  {
    blockCopy[2](blockCopy, 8);
  }

  if ((supportedChangeTypes & 0x10) != 0 && (!type || (type & 0x10) != 0))
  {
    blockCopy[2](blockCopy, 16);
  }

  if ((supportedChangeTypes & 0x20) != 0 && (!type || (type & 0x20) != 0))
  {
    blockCopy[2](blockCopy, 32);
  }

  if ((supportedChangeTypes & 0x40) != 0 && (!type || (type & 0x40) != 0))
  {
    blockCopy[2](blockCopy, 64);
  }
}

- (void)copyDerivativesFromRecordIfPossible:(id)possible
{
  possibleCopy = possible;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLRecordChange.m"];
  v8 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:v7 lineNumber:1439 description:{@"%@ should be implemented by subclass", v8}];

  abort();
}

- (void)copyDerivatives:(unint64_t *)derivatives count:(int)count avoidResourceType:(unint64_t)type fromRecord:(id)record inResourcePerType:(id)perType
{
  recordCopy = record;
  perTypeCopy = perType;
  if (count >= 1)
  {
    countCopy = count;
    do
    {
      v15 = *derivatives++;
      v14 = v15;
      if (v15 != type)
      {
        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
        v17 = [perTypeCopy objectForKeyedSubscript:v16];

        if (!v17)
        {
          v18 = [recordCopy resourceForType:v14];
          v19 = v18;
          if (v18)
          {
            identity = [v18 identity];
            isAvailable = [identity isAvailable];

            if (isAvailable)
            {
              v22 = [v19 copy];
              scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
              [v22 setItemScopedIdentifier:scopedIdentifier];

              [v22 setSourceResourceType:v14];
              v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
              [perTypeCopy setObject:v22 forKeyedSubscript:v24];
            }
          }
        }
      }

      --countCopy;
    }

    while (countCopy);
  }
}

- (unint64_t)baseVideoComplemenentResourceType
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLRecordChange.m"];
  v6 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:v5 lineNumber:1415 description:{@"%@ should be implemented in subclasses", v6}];

  abort();
}

- (unint64_t)baseDerivativeResourceType
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLRecordChange.m"];
  v6 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:v5 lineNumber:1411 description:{@"%@ should be implemented in subclasses", v6}];

  abort();
}

- (id)resourcePerType
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLRecordChange.m"];
  v6 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:v5 lineNumber:1407 description:{@"%@ should be implemented in subclasses", v6}];

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
    resources = [(CPLRecordChange *)self resources];
    v5 = [resources countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(resources);
          }

          identity = [*(*(&v14 + 1) + 8 * i) identity];
          isAvailable = [identity isAvailable];

          if (!isAvailable)
          {
            v11 = 0;
            goto LABEL_17;
          }
        }

        v6 = [resources countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (BOOL)validateChangeWithError:(id *)error
{
  scopedIdentifier = self->_scopedIdentifier;
  if (error && !scopedIdentifier)
  {
    *error = [CPLErrors cplErrorWithCode:18 description:@"%@ has no identifier", self];
  }

  return scopedIdentifier != 0;
}

- (id)onlyAddedResources
{
  v23 = *MEMORY[0x1E69E9840];
  resources = [(CPLRecordChange *)self resources];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(resources, "count")}];
  resourceCopyFromScopedIdentifier = [(CPLRecordChange *)self resourceCopyFromScopedIdentifier];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = resources;
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
        identity = [v11 identity];
        fileURL = [identity fileURL];
        if (fileURL)
        {

LABEL_8:
          [v4 addObject:v11];
          goto LABEL_9;
        }

        if (resourceCopyFromScopedIdentifier)
        {
          sourceResourceType = [v11 sourceResourceType];

          if (sourceResourceType)
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

- (BOOL)changeIsOnlyAddingResourcesToRecord:(id)record addedResources:(id *)resources
{
  recordCopy = record;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__15115;
  v41 = __Block_byref_object_dispose__15116;
  v42 = 0;
  resourceCopyFromScopedIdentifier = [(CPLRecordChange *)self resourceCopyFromScopedIdentifier];
  v8 = resourceCopyFromScopedIdentifier != 0;

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __70__CPLRecordChange_changeIsOnlyAddingResourcesToRecord_addedResources___block_invoke;
  v35[3] = &unk_1E861E198;
  v36 = v8;
  v35[4] = &v37;
  v34 = MEMORY[0x1E128EBA0](v35);
  *resources = 0;
  v31 = recordCopy;
  resources = [recordCopy resources];
  resources2 = [(CPLRecordChange *)self resources];
  v33 = [resources2 count];
  v10 = [resources count];
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
      v16 = resources2;
      v17 = [resources2 objectAtIndexedSubscript:v12];
      v18 = [resources objectAtIndexedSubscript:v15];
      resourcesCopy = resources;
      resourceType = [v17 resourceType];
      resourceType2 = [v18 resourceType];
      if (resourceType == resourceType2)
      {
        if (((v34)[2](v34, v17) & 1) == 0)
        {
          identity = [v17 identity];
          identity2 = [v18 identity];
          v24 = identity2;
          if (!identity || !identity2)
          {

LABEL_27:
            v26 = 0;
            resources2 = v16;
            goto LABEL_28;
          }

          v25 = [identity cplIsEqual:identity2 withEqualityBlock:&__block_literal_global_275];

          if (!v25)
          {
            goto LABEL_27;
          }
        }

        ++v15;
      }

      else if (resourceType >= resourceType2 || ((v34)[2](v34, v17) & 1) == 0)
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

      resources = resourcesCopy;
      resources2 = v16;
      if (v15 >= v11)
      {
        goto LABEL_14;
      }
    }

    resources = resourcesCopy;
    resources2 = v16;
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
      v27 = [resources2 objectAtIndexedSubscript:v12];
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

  *resources = v29;
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
        selfCopy = self;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_ERROR, "Trying to mark as uploading only new resources for %@", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLRecordChange.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v7 lineNumber:1226 description:{@"Trying to mark as uploading only new resources for %@", self}];

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
          selfCopy = self;
          _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_ERROR, "Trying to mark a non full record as sparse: %@", buf, 0xCu);
        }
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLRecordChange.m"];
      [currentHandler handleFailureInMethod:a2 object:self file:v7 lineNumber:1220 description:{@"Trying to mark a non full record as sparse: %@", self}];

      abort();
    }

    self->_isSparseFullChange = 1;
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (id)checkDefaultValueBlockForPropertyWithSelector:(SEL)selector
{
  if (sel_dateDeleted == selector)
  {
    v4 = &__block_literal_global_264;
  }

  else if (sel_sharingScopeIdentifier == selector)
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

- (void)setShouldFilterDefaultValuesForNewProperties:(BOOL)properties
{
  if (self->_shouldFilterDefaultValuesForNewProperties != properties)
  {
    self->_shouldFilterDefaultValuesForNewProperties = properties;
  }
}

- (BOOL)shouldApplyPropertiesWithSelector:(SEL)selector
{
  if (self->_shouldFilterDefaultValuesForNewProperties)
  {
    v5 = [(CPLRecordChange *)self checkDefaultValueBlockForPropertyWithSelector:?];
    v6 = v5;
    if (v5)
    {
      v7 = (*(v5 + 16))(v5, self, selector) ^ 1;
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

- (id)fingerprintSchemeWithContext:(id)context
{
  contextCopy = context;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLRecordChange.m"];
  v8 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:v7 lineNumber:1172 description:{@"%@ should be implemented by subclasses", v8}];

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
    resources = [(CPLRecordChange *)self resources];
    v4 = [resources countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(resources);
          }

          identity = [*(*(&v13 + 1) + 8 * i) identity];
          fileSize = [identity fileSize];

          if (v6 <= fileSize)
          {
            v6 = fileSize;
          }
        }

        v5 = [resources countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  changeType = [(CPLRecordChange *)self changeType];
  resources = [(CPLRecordChange *)self resources];
  resourceCopyFromScopedIdentifier = [(CPLRecordChange *)self resourceCopyFromScopedIdentifier];
  if ([resources count])
  {
LABEL_2:
    v6 = [resources count];
    if (resourceCopyFromScopedIdentifier)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu resources (from %@)", v6, resourceCopyFromScopedIdentifier, v22];
      v17 = LABEL_32:;
      goto LABEL_33;
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = resources;
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

          identity = [*(*(&v24 + 1) + 8 * i) identity];
          fileURL = [identity fileURL];

          if (!fileURL)
          {
            ++v10;
            v11 += [identity isAvailable] ^ 1;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v9);

      v16 = &stru_1F57BD298;
      v6 = v23;
      if (v23)
      {
        resourceCopyFromScopedIdentifier = 0;
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
            allowsToOnlyUploadNewResources = [(CPLRecordChange *)self allowsToOnlyUploadNewResources];
            v16 = @"MIXED! ";
            if (allowsToOnlyUploadNewResources)
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
        resourceCopyFromScopedIdentifier = 0;
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

  if (changeType)
  {
    if ((changeType & 8) != 0)
    {
      goto LABEL_2;
    }

LABEL_23:
    v18 = &stru_1F57BD298;
    goto LABEL_34;
  }

  if (!resourceCopyFromScopedIdentifier)
  {
    goto LABEL_23;
  }

  v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"(from %@)", resourceCopyFromScopedIdentifier];
LABEL_33:
  v18 = v17;
LABEL_34:

  v20 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)cplFullDescription
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"======\n%@: {\n", objc_opt_class()];
  changeType = [(CPLRecordChange *)self changeType];
  v5 = [objc_opt_class() _descriptionForChangeType:changeType isSparseFullChange:self->_isSparseFullChange onlyUploadNewResources:{-[CPLRecordChange shouldOnlyUploadNewResources](self, "shouldOnlyUploadNewResources")}];
  [v3 appendFormat:@"  changeType: %@\n", v5];

  recordModificationDate = [(CPLRecordChange *)self recordModificationDate];
  v7 = recordModificationDate;
  if (recordModificationDate)
  {
    [v3 appendFormat:@"  recordModificationDate: %@\n", recordModificationDate];
  }

  recordChangeData = [(CPLRecordChange *)self recordChangeData];
  v9 = recordChangeData;
  if (recordChangeData)
  {
    [v3 appendFormat:@"  recordChangeDataSize: %lu\n", objc_msgSend(recordChangeData, "length")];
  }

  sharingRecordChangeData = [(CPLRecordChange *)self sharingRecordChangeData];
  v11 = sharingRecordChangeData;
  if (sharingRecordChangeData)
  {
    [v3 appendFormat:@"  sharingRecordChangeDataSize: %lu\n", objc_msgSend(sharingRecordChangeData, "length")];
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __37__CPLRecordChange_cplFullDescription__block_invoke;
  v16[3] = &unk_1E861E170;
  v19 = changeType;
  v12 = v3;
  v17 = v12;
  selfCopy = self;
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
  recordModificationDate = [(CPLRecordChange *)self recordModificationDate];
  v3 = recordModificationDate;
  if (recordModificationDate)
  {
    [recordModificationDate timeIntervalSinceReferenceDate];
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)restoreRelationshipsFromFullRecord:(id)record
{
  recordCopy = record;
  if (![(CPLRecordChange *)self hasChangeType:2])
  {
    relatedIdentifier = [recordCopy relatedIdentifier];
    [(CPLRecordChange *)self setRelatedIdentifier:relatedIdentifier];

    secondaryIdentifier = [recordCopy secondaryIdentifier];
    [(CPLRecordChange *)self setSecondaryIdentifier:secondaryIdentifier];
  }
}

- (void)awakeFromStorage
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(CPLRecordChange *)self supportsResources])
  {
    scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    resources = [(CPLRecordChange *)self resources];
    v5 = [resources countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(resources);
          }

          [*(*(&v10 + 1) + 8 * v8++) setItemScopedIdentifier:scopedIdentifier];
        }

        while (v6 != v8);
        v6 = [resources countByEnumeratingWithState:&v10 objects:v14 count:16];
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
    resources = [(CPLRecordChange *)self resources];
    v4 = [resources countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(resources);
          }

          [*(*(&v9 + 1) + 8 * v7++) setItemScopedIdentifier:0];
        }

        while (v5 != v7);
        v5 = [resources countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
  relatedScopedIdentifier = [(CPLRecordChange *)self relatedScopedIdentifier];
  secondaryScopedIdentifier = [(CPLRecordChange *)self secondaryScopedIdentifier];
  v6 = secondaryScopedIdentifier;
  if (scopedIdentifier || relatedScopedIdentifier || secondaryScopedIdentifier)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:3];
    v7 = v8;
    if (scopedIdentifier)
    {
      [v8 addObject:scopedIdentifier];
    }

    if (relatedScopedIdentifier)
    {
      [v7 addObject:relatedScopedIdentifier];
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
  scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
  v3 = [scopedIdentifier copy];

  return v3;
}

- (id)proposedLocalScopedIdentifier
{
  scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
  v3 = [scopedIdentifier copy];

  return v3;
}

- (id)secondaryScopedIdentifier
{
  secondaryIdentifier = [(CPLRecordChange *)self secondaryIdentifier];
  if (secondaryIdentifier)
  {
    v4 = [CPLScopedIdentifier alloc];
    scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
    v6 = [(CPLScopedIdentifier *)v4 initRelativeToScopedIdentifier:scopedIdentifier identifier:secondaryIdentifier];
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
  relatedIdentifier = [(CPLRecordChange *)self relatedIdentifier];
  if (relatedIdentifier)
  {
    v4 = [CPLScopedIdentifier alloc];
    scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
    v6 = [(CPLScopedIdentifier *)v4 initRelativeToScopedIdentifier:scopedIdentifier identifier:relatedIdentifier];
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

- (id)propertiesForChangeType:(unint64_t)type
{
  if (type == 256)
  {
    if (propertiesForChangeType__onceToken_189 != -1)
    {
      dispatch_once(&propertiesForChangeType__onceToken_189, &__block_literal_global_191);
    }

    v4 = propertiesForChangeType__modificationDateProperty;
    goto LABEL_13;
  }

  if (type == 64)
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

  if (type != 2)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    goto LABEL_15;
  }

  if (propertiesForChangeType__onceToken_15188 != -1)
  {
    selfCopy = self;
    dispatch_once(&propertiesForChangeType__onceToken_15188, &__block_literal_global_156);
    self = selfCopy;
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

- (id)mergeRecordChangeWithNewRecordChange:(id)change direction:(unint64_t)direction
{
  changeCopy = change;
  changeType = [changeCopy changeType];
  if (changeType)
  {
    v8 = changeType;
    if (changeType == 1024)
    {
      if ([(CPLRecordChange *)self changeType]== 1024)
      {
        selfCopy = self;
      }

      else
      {
        selfCopy = changeCopy;
      }

      v17 = selfCopy;
    }

    else
    {
      v39 = 0;
      v40 = &v39;
      v41 = 0x2020000000;
      changeType2 = [(CPLRecordChange *)self changeType];
      v18 = v40[3];
      if (v18 == 1024)
      {
        v17 = changeCopy;
      }

      else
      {
        v19 = [(CPLRecordChange *)self copy];
        v20 = [objc_opt_class() copyPropertyBlockForDirection:direction];
        v21 = v20;
        if (v20)
        {
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = __66__CPLRecordChange_mergeRecordChangeWithNewRecordChange_direction___block_invoke_2;
          v36[3] = &unk_1E861E120;
          v37 = v20;
          directionCopy = direction;
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
        v31 = changeCopy;
        v24 = v22;
        v35 = v18 != 0;
        v32 = v24;
        v33 = &v39;
        [(CPLRecordChange *)self enumerateChangeTypesForChangeType:0 block:v29];
        if (v18)
        {
          [v23 setChangeType:v40[3]];
        }

        scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
        scopeIndex = [scopedIdentifier scopeIndex];

        if (scopeIndex != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v23 setScopeIndex:scopeIndex];
        }

        v27 = v32;
        v17 = v23;
      }

      _Block_object_dispose(&v39, 8);
    }
  }

  else
  {
    v10 = [objc_opt_class() copyPropertyBlockForDirection:direction];
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
      v13 = changeCopy;
      v45 = v13;
      directionCopy2 = direction;
      [v12 cplCopyPropertiesFromObject:v13 withCopyBlock:v43];
      [v12 setChangeType:0];
      scopedIdentifier2 = [v13 scopedIdentifier];
      scopeIndex2 = [scopedIdentifier2 scopeIndex];

      if (scopeIndex2 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v12 setScopeIndex:scopeIndex2];
      }

      v16 = v45;
      v17 = v12;
    }

    else
    {
      v17 = changeCopy;
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

- (BOOL)resourceChangeWillOnlyChangeDerivatives:(id)derivatives
{
  v45 = *MEMORY[0x1E69E9840];
  derivativesCopy = derivatives;
  if (!-[CPLRecordChange supportsResources](self, "supportsResources") || !-[CPLRecordChange isFullRecord](self, "isFullRecord") || ([derivativesCopy hasChangeType:8] & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v29 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v42 = derivativesCopy;
        v43 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_1DC05A000, v29, OS_LOG_TYPE_ERROR, "Incorrectly trying to filter out derivatives change %@ from %@", buf, 0x16u);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLRecordChange.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v31 lineNumber:748 description:{@"Incorrectly trying to filter out derivatives change %@ from %@", derivativesCopy, self}];

    abort();
  }

  v6 = [(CPLRecordChange *)self propertiesForChangeType:8];
  v7 = [v6 mutableCopy];

  [v7 removeObject:@"resources"];
  if ([self cplProperties:v7 areEqualToPropertiesOf:derivativesCopy withEqualityBlock:0])
  {
    resources = [(CPLRecordChange *)self resources];
    resources2 = [derivativesCopy resources];
    v10 = [resources count];
    if (v10 == [resources2 count])
    {
      objectEnumerator = [resources2 objectEnumerator];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v12 = resources;
      v13 = [v12 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v13)
      {
        v14 = v13;
        v32 = resources2;
        v33 = resources;
        v34 = v7;
        v35 = derivativesCopy;
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
            nextObject = [objectEnumerator nextObject];
            if (!-[CPLRecordChange isResourceTypeAGeneratedDerivative:](self, "isResourceTypeAGeneratedDerivative:", [v17 resourceType]))
            {
              identity = [v17 identity];
              isAvailable = [identity isAvailable];

              if (!isAvailable)
              {
                goto LABEL_22;
              }

              identity2 = [nextObject identity];
              fileURL = [identity2 fileURL];
              if (fileURL)
              {
                v23 = fileURL;
                [identity2 setFileURL:0];
                v24 = [v17 isEqual:nextObject];
                [identity2 setFileURL:v23];

                if ((v24 & 1) == 0)
                {
                  goto LABEL_22;
                }
              }

              else
              {
                v25 = [v17 isEqual:nextObject];

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
        derivativesCopy = v35;
        resources2 = v32;
        resources = v33;
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

- (id)realRecordChangeFromRecordChange:(id)change direction:(unint64_t)direction newRecord:(id *)record diffTracker:(id)tracker
{
  trackerCopy = tracker;
  changeCopy = change;
  changeType = [changeCopy changeType];
  if (changeType)
  {
    v13 = changeType | 0x100;
  }

  else
  {
    v13 = 378;
  }

  v14 = [(CPLRecordChange *)self realRecordChangeFromRecordChange:changeCopy direction:direction newRecord:record changeType:v13 diffTracker:trackerCopy];

  return v14;
}

- (id)realRecordChangeFromRecordChange:(id)change direction:(unint64_t)direction newRecord:(id *)record changeType:(unint64_t)type diffTracker:(id)tracker
{
  v57 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  trackerCopy = tracker;
  if ((type & 0x400) != 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v31 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = changeCopy;
        _os_log_impl(&dword_1DC05A000, v31, OS_LOG_TYPE_ERROR, "Trying to compute changes for a delete change: %@", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLRecordChange.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v33 lineNumber:669 description:{@"Trying to compute changes for a delete change: %@", changeCopy}];

LABEL_16:
    abort();
  }

  v15 = trackerCopy;
  scopedIdentifier = [changeCopy scopedIdentifier];
  scopedIdentifier2 = [(CPLRecordChange *)self scopedIdentifier];
  v18 = [scopedIdentifier isEqual:scopedIdentifier2];

  if ((v18 & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v34 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        scopedIdentifier3 = [changeCopy scopedIdentifier];
        scopedIdentifier4 = [(CPLRecordChange *)self scopedIdentifier];
        *buf = 138412546;
        *&buf[4] = scopedIdentifier3;
        *&buf[12] = 2112;
        *&buf[14] = scopedIdentifier4;
        _os_log_impl(&dword_1DC05A000, v34, OS_LOG_TYPE_ERROR, "Mismatched identifier between change (%@) and record (%@)", buf, 0x16u);
      }
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLRecordChange.m"];
    scopedIdentifier5 = [changeCopy scopedIdentifier];
    scopedIdentifier6 = [(CPLRecordChange *)self scopedIdentifier];
    [currentHandler2 handleFailureInMethod:a2 object:self file:v38 lineNumber:670 description:{@"Mismatched identifier between change (%@) and record (%@)", scopedIdentifier5, scopedIdentifier6}];

    goto LABEL_16;
  }

  *record = 0;
  v19 = [(CPLRecordChange *)self copy];
  v20 = objc_opt_class();
  scopedIdentifier7 = [(CPLRecordChange *)self scopedIdentifier];
  v22 = [v20 newRecordWithScopedIdentifier:scopedIdentifier7];

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
  typeCopy = type;
  v41 = v15;
  v43 = v41;
  v23 = v19;
  v44 = v23;
  v24 = changeCopy;
  v45 = v24;
  v25 = v22;
  v46 = v25;
  v47 = buf;
  directionCopy = direction;
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
    *record = v23;
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

- (BOOL)applyChange:(id)change copyPropertiesToFinalChange:(id)finalChange forChangeType:(unint64_t)type direction:(unint64_t)direction diffTracker:(id)tracker
{
  changeCopy = change;
  finalChangeCopy = finalChange;
  trackerCopy = tracker;
  if (type == 256)
  {
    recordModificationDate = [(CPLRecordChange *)self recordModificationDate];
    recordModificationDate2 = [changeCopy recordModificationDate];
    v17 = recordModificationDate2;
    if (!recordModificationDate2)
    {
      goto LABEL_7;
    }

    if (!recordModificationDate)
    {
      goto LABEL_11;
    }

    [recordModificationDate2 timeIntervalSinceDate:recordModificationDate];
    if (v18 < 0.0)
    {
      v18 = -v18;
    }

    if (v18 >= 0.00100000005)
    {
LABEL_11:
      [finalChangeCopy setRecordModificationDate:v17];
      [(CPLRecordChange *)self setRecordModificationDate:v17];
      [trackerCopy noteObjectsDifferOnProperty:@"recordModificationDate"];
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

  recordModificationDate = [(CPLRecordChange *)self propertiesForChangeType:type];
  if (recordModificationDate)
  {
    v20 = [objc_opt_class() equalityBlockForDirection:direction];
    v17 = v20;
    if (v20)
    {
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __95__CPLRecordChange_applyChange_copyPropertiesToFinalChange_forChangeType_direction_diffTracker___block_invoke;
      v44[3] = &unk_1E861E058;
      v45 = v20;
      directionCopy = direction;
      v21 = MEMORY[0x1E128EBA0](v44);
    }

    else
    {
      v21 = 0;
    }

    v22 = [self cplProperties:recordModificationDate areEqualToPropertiesOf:changeCopy diffTracker:trackerCopy withEqualityBlock:v21];
    if (!v22)
    {
      v23 = [objc_opt_class() copyPropertyBlockForDirection:direction];
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
        v39 = finalChangeCopy;
        v32 = v21;
        v26 = changeCopy;
        v40 = v26;
        selfCopy = self;
        directionCopy2 = direction;
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
        directionCopy3 = direction;
        v29 = MEMORY[0x1E128EBA0](v34);
      }

      else
      {
        v33 = 0;
        v29 = 0;
      }

      [finalChangeCopy cplCopyProperties:recordModificationDate fromObject:changeCopy withCopyBlock:{v33, v31}];
      [self cplCopyProperties:recordModificationDate fromObject:changeCopy withCopyBlock:v29];
    }

    v19 = !v22;

    goto LABEL_20;
  }

  v19 = 0;
LABEL_21:

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self->_changeType == 1024)
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
      scopedIdentifier2 = [equalCopy scopedIdentifier];
      v9 = scopedIdentifier2;
      v6 = scopedIdentifier && scopedIdentifier2 && ([scopedIdentifier isEqual:scopedIdentifier2] & 1) != 0 || (scopedIdentifier | v9) == 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = [self cplIsEqual:equalCopy];
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

  propertiesDescription = [(CPLRecordChange *)self propertiesDescription];
  v10 = [propertiesDescription length];
  inTrash = [(CPLRecordChange *)self inTrash];
  if (v10)
  {
    v12 = "";
    if (inTrash)
    {
      v12 = "[trash] ";
    }

    [v4 appendFormat:@" %s%@", v12, propertiesDescription];
  }

  else if (inTrash)
  {
    [v4 appendString:@" [trash]"];
  }

  if ([(CPLRecordChange *)self supportsSharingScopedIdentifier])
  {
    sharingScopeIdentifier = [(CPLRecordChange *)self sharingScopeIdentifier];
    sharingContributorUserIdentifiers = [(CPLRecordChange *)self sharingContributorUserIdentifiers];
    v15 = [sharingContributorUserIdentifiers count];
    if (v15)
    {
      if (sharingScopeIdentifier)
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
      if (!sharingScopeIdentifier)
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
  resources = [(CPLRecordChange *)self resources];
  v3 = [resources countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(resources);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        if ([v7 resourceType] == 1 || objc_msgSend(v7, "resourceType") == 17 || objc_msgSend(v7, "resourceType") == 18 || objc_msgSend(v7, "resourceType") == 23 || objc_msgSend(v7, "resourceType") == 24)
        {
          identity = [v7 identity];
          fileURL = [identity fileURL];

          if (fileURL)
          {
            fileURL = [identity fileSize];
          }

          goto LABEL_18;
        }
      }

      v4 = [resources countByEnumeratingWithState:&v12 objects:v16 count:16];
      fileURL = 0;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    fileURL = 0;
  }

LABEL_18:

  v10 = *MEMORY[0x1E69E9840];
  return fileURL;
}

- (unint64_t)realUploadResourceSize
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  resources = [(CPLRecordChange *)self resources];
  v3 = [resources countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(resources);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 resourceType] <= 0x1D)
        {
          identity = [v8 identity];
          fileURL = [identity fileURL];

          if (fileURL)
          {
            v5 += [identity fileSize];
          }
        }
      }

      v4 = [resources countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  resources = [(CPLRecordChange *)self resources];
  v3 = [resources countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(resources);
        }

        identity = [*(*(&v12 + 1) + 8 * i) identity];
        fileURL = [identity fileURL];

        if (fileURL)
        {
          v5 += [identity fileSize];
        }
      }

      v4 = [resources countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (unint64_t)effectiveResourceSizeToUploadUsingStorage:(id)storage
{
  storageCopy = storage;
  if (!self->_didCacheRealResourceSizeInStorage)
  {
    uploadIdentifier = [(CPLRecordPushContext *)self->_pushContext uploadIdentifier];
    if (uploadIdentifier && (v6 = uploadIdentifier, v7 = [(CPLRecordChange *)self hasChangeType:8], v6, v7))
    {
      uploadIdentifier2 = [(CPLRecordPushContext *)self->_pushContext uploadIdentifier];
      self->_cachedRealResourceSizeInStorage = [storageCopy effectiveResourceSizeToUploadForUploadIdentifier:uploadIdentifier2];
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
  resources = [(CPLRecordChange *)self resources];
  v3 = [resources countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(resources);
        }

        identity = [*(*(&v12 + 1) + 8 * i) identity];
        fileSize = [identity fileSize];

        v5 += fileSize;
      }

      v4 = [resources countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (id)resourceForType:(unint64_t)type
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  resources = [(CPLRecordChange *)self resources];
  v5 = [resources countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(resources);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 resourceType] == type)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [resources countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)setResources:(id)resources
{
  resourcesCopy = resources;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLRecordChange.m"];
  [currentHandler handleFailureInMethod:a2 object:self file:v7 lineNumber:357 description:{@"%@ does not supports resources", objc_opt_class()}];

  abort();
}

- (id)resources
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLRecordChange.m"];
  [currentHandler handleFailureInMethod:a2 object:self file:v5 lineNumber:352 description:{@"%@ does not supports resources", objc_opt_class()}];

  abort();
}

- (void)updateScopeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
  if (scopedIdentifier)
  {
    v5 = [CPLScopedIdentifier alloc];
    identifier = [scopedIdentifier identifier];
    v7 = [(CPLScopedIdentifier *)v5 initWithScopeIdentifier:identifierCopy identifier:identifier];
    [(CPLRecordChange *)self setScopedIdentifier:v7];

    [(CPLRecordChange *)self awakeFromStorage];
  }
}

- (void)setUpdateSharingContributorUserIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if ([identifiersCopy count] > 1)
  {
    v5 = [identifiersCopy sortedArrayUsingSelector:sel_compare_];
  }

  else
  {
    v5 = [identifiersCopy copy];
  }

  v6 = v5;

  updateSharingContributorUserIdentifiers = self->_updateSharingContributorUserIdentifiers;
  self->_updateSharingContributorUserIdentifiers = v6;
}

- (void)setSharingContributorUserIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if ([identifiersCopy count] > 1)
  {
    v5 = [identifiersCopy sortedArrayUsingSelector:sel_compare_];
  }

  else
  {
    v5 = [identifiersCopy copy];
  }

  v6 = v5;

  sharingContributorUserIdentifiers = self->_sharingContributorUserIdentifiers;
  self->_sharingContributorUserIdentifiers = v6;
}

- (BOOL)isSharedInScopeWithIdentifier:(id)identifier
{
  v15 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (![(CPLRecordChange *)self hasChangeType:64])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "Trying to get sharing scope identifier for %@ while it does not contain the info", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLRecordChange.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v12 lineNumber:288 description:{@"Trying to get sharing scope identifier for %@ while it does not contain the info", self}];

    abort();
  }

  sharingScopeIdentifier = self->_sharingScopeIdentifier;
  if (sharingScopeIdentifier)
  {
    v7 = [(NSString *)sharingScopeIdentifier isEqualToString:identifierCopy];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)setSharingRecordScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10 = identifierCopy;
  if (identifierCopy)
  {
    scopeIdentifier = [identifierCopy scopeIdentifier];
    sharingScopeIdentifier = self->_sharingScopeIdentifier;
    self->_sharingScopeIdentifier = scopeIdentifier;

    identifier = [v10 identifier];
  }

  else
  {
    v8 = self->_sharingScopeIdentifier;
    self->_sharingScopeIdentifier = 0;

    identifier = 0;
  }

  sharingRecordIdentifier = self->_sharingRecordIdentifier;
  self->_sharingRecordIdentifier = identifier;
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

- (void)setSharingScopeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(CPLRecordChange *)self supportsSharingScopedIdentifier])
  {
    v4 = [identifierCopy copy];
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

  realIdentifier = [(CPLRecordChange *)self realIdentifier];
  v3 = [realIdentifier length] != 0;

  return v3;
}

- (BOOL)supportsDeletion
{
  v2 = objc_opt_class();

  return [v2 supportsDeletion];
}

- (BOOL)requiresStableHashForResourceType:(unint64_t)type
{
  v4 = objc_opt_class();

  return [v4 requiresStableHashForResourceType:type];
}

- (BOOL)supportsResourceType:(unint64_t)type
{
  v4 = objc_opt_class();

  return [v4 supportsResourceType:type];
}

- (BOOL)supportsResources
{
  v2 = objc_opt_class();

  return [v2 supportsResources];
}

- (BOOL)hasChangeType:(unint64_t)type
{
  if ((type & 8) == 0 || (v5 = [(CPLRecordChange *)self supportsResources]))
  {
    changeType = self->_changeType;
    if (changeType == type)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v8 = (type & ~changeType) == 0 || changeType == 0;
      LOBYTE(v5) = type != 1024 && v8;
    }
  }

  return v5;
}

- (BOOL)isInScopeWithIdentifier:(id)identifier
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  scopedIdentifier = self->_scopedIdentifier;
  if (!scopedIdentifier)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_ERROR, "Missing scope identifier in %@", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLRecordChange.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v13 lineNumber:164 description:{@"Missing scope identifier in %@", self}];

    abort();
  }

  scopeIdentifier = [(CPLScopedIdentifier *)scopedIdentifier scopeIdentifier];
  v8 = [scopeIdentifier isEqualToString:identifierCopy];

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)realScopedIdentifier
{
  realIdentifier = [(CPLRecordChange *)self realIdentifier];
  if (realIdentifier)
  {
    v4 = [CPLScopedIdentifier alloc];
    scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
    v6 = [(CPLScopedIdentifier *)v4 initRelativeToScopedIdentifier:scopedIdentifier identifier:realIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setScopeIndex:(int64_t)index
{
  v17 = *MEMORY[0x1E69E9840];
  [(CPLScopedIdentifier *)self->_scopedIdentifier setScopeIndex:?];
  if ([(CPLRecordChange *)self supportsResources]&& [(CPLRecordChange *)self hasChangeType:8])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    resources = [(CPLRecordChange *)self resources];
    v6 = [resources countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(resources);
          }

          itemScopedIdentifier = [*(*(&v12 + 1) + 8 * v9) itemScopedIdentifier];
          [itemScopedIdentifier setScopeIndex:index];

          ++v9;
        }

        while (v7 != v9);
        v7 = [resources countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (BOOL)validateRecordForTracker:(id)tracker
{
  v34 = *MEMORY[0x1E69E9840];
  trackerCopy = tracker;
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
        selfCopy = v6;
        _os_log_impl(&dword_1DC05A000, v18, OS_LOG_TYPE_ERROR, "Client pushed an invalid record: %@", buf, 0xCu);
      }
    }

    pushChangeTasks = [trackerCopy pushChangeTasks];
    scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
    [pushChangeTasks addTask:0 forRecordWithScopedIdentifier:scopedIdentifier];
LABEL_25:
    v17 = 0;
    goto LABEL_26;
  }

  scopedIdentifier2 = [(CPLRecordChange *)self scopedIdentifier];
  pushChangeTasks = [scopedIdentifier2 scopeIdentifier];

  if (([trackerCopy checkScopeIdentifier:pushChangeTasks] & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v19 = __CPLSessionOSLogDomain_16325();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_1DC05A000, v19, OS_LOG_TYPE_ERROR, "Client pushed a record to an invalid scope: %@", buf, 0xCu);
      }
    }

    scopedIdentifier = [trackerCopy pushChangeTasks];
    scopedIdentifier3 = [(CPLRecordChange *)self scopedIdentifier];
    [scopedIdentifier addTask:6 forRecordWithScopedIdentifier:scopedIdentifier3];
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
  scopedIdentifier = [(CPLRecordChange *)self resources];
  v10 = [scopedIdentifier countByEnumeratingWithState:&v26 objects:v31 count:16];
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
          objc_enumerationMutation(scopedIdentifier);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        scopedIdentifier3 = [(CPLRecordChange *)v14 identity];
        fileUTI = [scopedIdentifier3 fileUTI];

        if (!fileUTI)
        {
          v6 = v25;
          if ((_CPLSilentLogging & 1) == 0)
          {
            v22 = __CPLSessionOSLogDomain_16325();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              selfCopy = v14;
              _os_log_impl(&dword_1DC05A000, v22, OS_LOG_TYPE_ERROR, "Client pushed a resource with no fileUTI: %@", buf, 0xCu);
            }
          }

          pushChangeTasks2 = [trackerCopy pushChangeTasks];
          scopedIdentifier4 = [(CPLRecordChange *)self scopedIdentifier];
          [pushChangeTasks2 addTask:0 forRecordWithScopedIdentifier:scopedIdentifier4];

          goto LABEL_24;
        }
      }

      v11 = [scopedIdentifier countByEnumeratingWithState:&v26 objects:v31 count:16];
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
@interface CPLMasterChange
+ (BOOL)requiresStableHashForResourceType:(unint64_t)type;
- (BOOL)isEPPRecord;
- (BOOL)isImage;
- (BOOL)isResourceTypeAGeneratedDerivative:(unint64_t)derivative;
- (BOOL)isVideo;
- (BOOL)validateRecordForTracker:(id)tracker;
- (CPLMasterChange)init;
- (id)checkDefaultValueBlockForPropertyWithSelector:(SEL)selector;
- (id)fingerprintSchemeWithContext:(id)context;
- (id)propertiesDescription;
- (id)propertiesForChangeType:(unint64_t)type;
- (id)resourceForType:(unint64_t)type;
- (int64_t)dequeueOrder;
- (unint64_t)dataClassType;
- (void)copyDerivativesFromRecordIfPossible:(id)possible;
- (void)setExpungeableResourceStates:(id)states;
- (void)setResources:(id)resources;
@end

@implementation CPLMasterChange

- (BOOL)isResourceTypeAGeneratedDerivative:(unint64_t)derivative
{
  if (derivative == 2)
  {
    return 1;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = CPLMasterChange;
  return [(CPLRecordChange *)&v6 isResourceTypeAGeneratedDerivative:?];
}

- (unint64_t)dataClassType
{
  if (![(NSString *)self->_itemType length])
  {
    return 0;
  }

  v3 = [MEMORY[0x1E6982C40] typeWithIdentifier:self->_itemType];
  if ([v3 conformsToType:*MEMORY[0x1E6982E30]])
  {
    v4 = 1;
  }

  else if ([v3 conformsToType:*MEMORY[0x1E6982EE8]])
  {
    v4 = 2;
  }

  else if ([v3 conformsToType:*MEMORY[0x1E6982CD0]])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)copyDerivativesFromRecordIfPossible:(id)possible
{
  v39 = *MEMORY[0x1E69E9840];
  possibleCopy = possible;
  if ([possibleCopy supportsResources])
  {
    if ([possibleCopy isMasterChange])
    {
      v5 = 18;
      goto LABEL_6;
    }

    if ([possibleCopy isAssetChange])
    {
      v5 = 19;
LABEL_6:
      v6 = [(NSDictionary *)self->_resourcePerResourceType mutableCopy];
      if (!v6)
      {
        v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      v7 = [v6 count];
      v8 = [possibleCopy resourceForType:v5];

      if (v8)
      {
        [(CPLMasterChange *)self _copyDerivatives:&copyDerivativesFromRecordIfPossible__originalDerivativesImage count:4 ifMatchingResourceType:1 fromRecord:possibleCopy inResourcePerType:v6];
        v9 = &copyDerivativesFromRecordIfPossible__originalDerivativesVideo;
        selfCopy2 = self;
        v11 = 5;
        v12 = 18;
      }

      else
      {
        v9 = &copyDerivativesFromRecordIfPossible__originalDerivativesImageAndVideo;
        selfCopy2 = self;
        v11 = 9;
        v12 = 1;
      }

      [(CPLMasterChange *)selfCopy2 _copyDerivatives:v9 count:v11 ifMatchingResourceType:v12 fromRecord:possibleCopy inResourcePerType:v6];
      if (v7 >= [v6 count])
      {
        if (_CPLSilentLogging)
        {
LABEL_21:

          goto LABEL_22;
        }

        allValues = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(allValues, OS_LOG_TYPE_DEFAULT))
        {
          v21 = objc_opt_class();
          v22 = v21;
          scopedIdentifier = [possibleCopy scopedIdentifier];
          v24 = objc_opt_class();
          v25 = v24;
          scopedIdentifier2 = [(CPLRecordChange *)self scopedIdentifier];
          *buf = 138413058;
          v30 = v21;
          v31 = 2112;
          v32 = scopedIdentifier;
          v33 = 2112;
          v34 = v24;
          v35 = 2112;
          v36 = scopedIdentifier2;
          _os_log_impl(&dword_1DC05A000, allValues, OS_LOG_TYPE_DEFAULT, "Found no derivatives to copy from <%@ %@> to <%@ %@>", buf, 0x2Au);
        }
      }

      else
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v13 = __CPLGenericOSLogDomain();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = [v6 count] - v7;
            v15 = objc_opt_class();
            v28 = v15;
            scopedIdentifier3 = [possibleCopy scopedIdentifier];
            v17 = objc_opt_class();
            v18 = v17;
            scopedIdentifier4 = [(CPLRecordChange *)self scopedIdentifier];
            *buf = 134219010;
            v30 = v14;
            v31 = 2112;
            v32 = v15;
            v33 = 2112;
            v34 = scopedIdentifier3;
            v35 = 2112;
            v36 = v17;
            v37 = 2112;
            v38 = scopedIdentifier4;
            _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_DEFAULT, "Automatically copied %lu derivatives from <%@ %@> to <%@ %@>", buf, 0x34u);
          }
        }

        allValues = [v6 allValues];
        [(CPLMasterChange *)self setResources:allValues];
      }

      goto LABEL_21;
    }
  }

LABEL_22:

  v27 = *MEMORY[0x1E69E9840];
}

- (id)resourceForType:(unint64_t)type
{
  resourcePerResourceType = self->_resourcePerResourceType;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  v5 = [(NSDictionary *)resourcePerResourceType objectForKeyedSubscript:v4];

  return v5;
}

- (void)setExpungeableResourceStates:(id)states
{
  v22 = *MEMORY[0x1E69E9840];
  statesCopy = states;
  v6 = [CPLExpungeableResourceState normalizedExpungeableResourceStatesFromExpungeableResourceStates:statesCopy];
  v7 = [(NSArray *)v6 count];
  v8 = [statesCopy count];

  if (v7 != v8 && (_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = v10;
      scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
      v13 = NSStringFromSelector(a2);
      v16 = 138412802;
      v17 = v10;
      v18 = 2112;
      v19 = scopedIdentifier;
      v20 = 2114;
      v21 = v13;
      _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "<%@ %@> %{public}@ got duplicate or incorrect resource types", &v16, 0x20u);
    }
  }

  expungeableResourceStates = self->_expungeableResourceStates;
  self->_expungeableResourceStates = v6;

  v15 = *MEMORY[0x1E69E9840];
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

- (id)checkDefaultValueBlockForPropertyWithSelector:(SEL)selector
{
  if (sel_fullSizeJPEGSource == selector)
  {
    v5 = &__block_literal_global_30;
  }

  else if (sel_originatingFingerprint == selector)
  {
    v5 = &__block_literal_global_34_2473;
  }

  else if (sel_importedBy == selector)
  {
    v5 = &__block_literal_global_38;
  }

  else if (sel_importedByBundleIdentifier == selector)
  {
    v5 = &__block_literal_global_42;
  }

  else if (sel_importedByDisplayName == selector)
  {
    v5 = &__block_literal_global_46;
  }

  else if (sel_videoFrameRate == selector)
  {
    v5 = &__block_literal_global_50;
  }

  else if (sel_codec == selector)
  {
    v5 = &__block_literal_global_54;
  }

  else if (sel_expungeableResourceStates == selector)
  {
    v5 = &__block_literal_global_58;
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = CPLMasterChange;
    v5 = [(CPLRecordChange *)&v7 checkDefaultValueBlockForPropertyWithSelector:?];
  }

  return v5;
}

BOOL __65__CPLMasterChange_checkDefaultValueBlockForPropertyWithSelector___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 expungeableResourceStates];
  if (v3)
  {
    v4 = [v2 expungeableResourceStates];
    v5 = [v4 count] == 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

BOOL __65__CPLMasterChange_checkDefaultValueBlockForPropertyWithSelector___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = [a2 codec];
  v3 = v2 == 0;

  return v3;
}

BOOL __65__CPLMasterChange_checkDefaultValueBlockForPropertyWithSelector___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 importedByDisplayName];
  v3 = v2 == 0;

  return v3;
}

BOOL __65__CPLMasterChange_checkDefaultValueBlockForPropertyWithSelector___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 importedByBundleIdentifier];
  v3 = v2 == 0;

  return v3;
}

BOOL __65__CPLMasterChange_checkDefaultValueBlockForPropertyWithSelector___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 originatingFingerprint];
  v3 = v2 == 0;

  return v3;
}

- (id)propertiesForChangeType:(unint64_t)type
{
  if (type == 8)
  {
    if (propertiesForChangeType__onceToken != -1)
    {
      dispatch_once(&propertiesForChangeType__onceToken, &__block_literal_global_2476);
    }

    v3 = propertiesForChangeType__properties;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CPLMasterChange;
    v3 = [(CPLItemChange *)&v5 propertiesForChangeType:?];
  }

  return v3;
}

uint64_t __43__CPLMasterChange_propertiesForChangeType___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"resources", @"resourceCopyFromScopedIdentifier", 0}];
  v1 = propertiesForChangeType__properties;
  propertiesForChangeType__properties = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)propertiesDescription
{
  changeType = [(CPLRecordChange *)self changeType];
  v4 = changeType;
  if (!changeType || (changeType & 2) != 0)
  {
    filename = self->_filename;
    if (!filename)
    {
      filename = @"no filename";
    }

    resourcesDescription2 = filename;
    if (!v4 || (v4 & 8) != 0)
    {
      v7 = objc_alloc(MEMORY[0x1E696AEC0]);
      resourcesDescription = [(CPLRecordChange *)self resourcesDescription];
      v9 = [v7 initWithFormat:@"%@ / %@", resourcesDescription2, resourcesDescription];

      resourcesDescription2 = v9;
    }
  }

  else if ((changeType & 8) != 0)
  {
    resourcesDescription2 = [(CPLRecordChange *)self resourcesDescription];
  }

  else
  {
    resourcesDescription2 = &stru_1F57BD298;
  }

  return resourcesDescription2;
}

- (int64_t)dequeueOrder
{
  creationDate = [(CPLMasterChange *)self creationDate];
  v4 = creationDate;
  if (creationDate)
  {
    [creationDate timeIntervalSinceReferenceDate];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CPLMasterChange;
    dequeueOrder = [(CPLRecordChange *)&v8 dequeueOrder];
  }

  v6 = dequeueOrder;

  return v6;
}

- (BOOL)isVideo
{
  v3 = [(NSString *)self->_itemType length];
  if (v3)
  {
    v4 = [MEMORY[0x1E6982C40] typeWithIdentifier:self->_itemType];
    v5 = [v4 conformsToType:*MEMORY[0x1E6982EE8]];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (BOOL)isImage
{
  v3 = [(NSString *)self->_itemType length];
  if (v3)
  {
    v4 = [MEMORY[0x1E6982C40] typeWithIdentifier:self->_itemType];
    v5 = [v4 conformsToType:*MEMORY[0x1E6982E30]];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (BOOL)isEPPRecord
{
  scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
  identifier = [scopedIdentifier identifier];

  if (identifier)
  {
    v4 = [CPLFingerprintScheme isMMCSv2Fingerprint:identifier];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)fingerprintSchemeWithContext:(id)context
{
  v20 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v6 = contextCopy;
  fingerprintScheme = self->_fingerprintScheme;
  if (!fingerprintScheme)
  {
    if (!contextCopy)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v15 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          selfCopy = self;
          _os_log_impl(&dword_1DC05A000, v15, OS_LOG_TYPE_ERROR, "Trying to get fingerprint scheme for %@ without a context", buf, 0xCu);
        }
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLMasterChange.m"];
      [currentHandler handleFailureInMethod:a2 object:self file:v17 lineNumber:49 description:{@"Trying to get fingerprint scheme for %@ without a context", self}];

      abort();
    }

    scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
    identifier = [scopedIdentifier identifier];
    v10 = [v6 fingerprintSchemeForMasterIdentifier:identifier];
    v11 = self->_fingerprintScheme;
    self->_fingerprintScheme = v10;

    fingerprintScheme = self->_fingerprintScheme;
  }

  v12 = fingerprintScheme;

  v13 = *MEMORY[0x1E69E9840];
  return fingerprintScheme;
}

- (CPLMasterChange)init
{
  v8.receiver = self;
  v8.super_class = CPLMasterChange;
  v2 = [(CPLItemChange *)&v8 init];
  v3 = v2;
  if (v2)
  {
    resources = v2->_resources;
    v2->_resources = MEMORY[0x1E695E0F0];

    identifier = [*MEMORY[0x1E6982E30] identifier];
    itemType = v3->_itemType;
    v3->_itemType = identifier;
  }

  return v3;
}

+ (BOOL)requiresStableHashForResourceType:(unint64_t)type
{
  if (type == 1)
  {
    return 1;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CPLMasterChange;
  return objc_msgSendSuper2(&v6, sel_requiresStableHashForResourceType_);
}

- (BOOL)validateRecordForTracker:(id)tracker
{
  v23 = *MEMORY[0x1E69E9840];
  trackerCopy = tracker;
  v18.receiver = self;
  v18.super_class = CPLMasterChange;
  if ([(CPLRecordChange *)&v18 validateRecordForTracker:trackerCopy])
  {
    if (__CPLCheckOriginalResourceInMaster == 1 && [(CPLRecordChange *)self hasChangeType:8])
    {
      v5 = [(CPLMasterChange *)self resourceForType:1];
      if (!v5)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v10 = __CPLSessionOSLogDomain_16325();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            selfCopy = self;
            _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "Client pushed a master with a missing original: %@", buf, 0xCu);
          }

          goto LABEL_16;
        }

LABEL_17:
        pushChangeTasks = [trackerCopy pushChangeTasks];
        scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
        [pushChangeTasks addTask:0 forRecordWithScopedIdentifier:scopedIdentifier];

        v13 = 0;
LABEL_20:

        goto LABEL_21;
      }

      _unscopedIdentifier = [(CPLRecordChange *)self _unscopedIdentifier];
      identity = [v5 identity];
      fingerPrint = [identity fingerPrint];

      if (_unscopedIdentifier && fingerPrint)
      {
        v9 = [_unscopedIdentifier isEqual:fingerPrint];

        if ((v9 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {

        if (_unscopedIdentifier | fingerPrint)
        {
LABEL_8:
          if ((_CPLSilentLogging & 1) == 0)
          {
            v10 = __CPLSessionOSLogDomain_16325();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              identity2 = [v5 identity];
              fingerPrint2 = [identity2 fingerPrint];
              *buf = 138412546;
              selfCopy = fingerPrint2;
              v21 = 2112;
              selfCopy2 = self;
              _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "Client pushed a master with a mismatched original finger print %@: %@", buf, 0x16u);
            }

LABEL_16:

            goto LABEL_17;
          }

          goto LABEL_17;
        }
      }

      v13 = 1;
      goto LABEL_20;
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

LABEL_21:

  v16 = *MEMORY[0x1E69E9840];
  return v13;
}

@end
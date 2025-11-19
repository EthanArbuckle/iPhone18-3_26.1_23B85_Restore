@interface CPLMasterChange
+ (BOOL)requiresStableHashForResourceType:(unint64_t)a3;
- (BOOL)isEPPRecord;
- (BOOL)isImage;
- (BOOL)isResourceTypeAGeneratedDerivative:(unint64_t)a3;
- (BOOL)isVideo;
- (BOOL)validateRecordForTracker:(id)a3;
- (CPLMasterChange)init;
- (id)checkDefaultValueBlockForPropertyWithSelector:(SEL)a3;
- (id)fingerprintSchemeWithContext:(id)a3;
- (id)propertiesDescription;
- (id)propertiesForChangeType:(unint64_t)a3;
- (id)resourceForType:(unint64_t)a3;
- (int64_t)dequeueOrder;
- (unint64_t)dataClassType;
- (void)copyDerivativesFromRecordIfPossible:(id)a3;
- (void)setExpungeableResourceStates:(id)a3;
- (void)setResources:(id)a3;
@end

@implementation CPLMasterChange

- (BOOL)isResourceTypeAGeneratedDerivative:(unint64_t)a3
{
  if (a3 == 2)
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

- (void)copyDerivativesFromRecordIfPossible:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 supportsResources])
  {
    if ([v4 isMasterChange])
    {
      v5 = 18;
      goto LABEL_6;
    }

    if ([v4 isAssetChange])
    {
      v5 = 19;
LABEL_6:
      v6 = [(NSDictionary *)self->_resourcePerResourceType mutableCopy];
      if (!v6)
      {
        v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      v7 = [v6 count];
      v8 = [v4 resourceForType:v5];

      if (v8)
      {
        [(CPLMasterChange *)self _copyDerivatives:&copyDerivativesFromRecordIfPossible__originalDerivativesImage count:4 ifMatchingResourceType:1 fromRecord:v4 inResourcePerType:v6];
        v9 = &copyDerivativesFromRecordIfPossible__originalDerivativesVideo;
        v10 = self;
        v11 = 5;
        v12 = 18;
      }

      else
      {
        v9 = &copyDerivativesFromRecordIfPossible__originalDerivativesImageAndVideo;
        v10 = self;
        v11 = 9;
        v12 = 1;
      }

      [(CPLMasterChange *)v10 _copyDerivatives:v9 count:v11 ifMatchingResourceType:v12 fromRecord:v4 inResourcePerType:v6];
      if (v7 >= [v6 count])
      {
        if (_CPLSilentLogging)
        {
LABEL_21:

          goto LABEL_22;
        }

        v20 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = objc_opt_class();
          v22 = v21;
          v23 = [v4 scopedIdentifier];
          v24 = objc_opt_class();
          v25 = v24;
          v26 = [(CPLRecordChange *)self scopedIdentifier];
          *buf = 138413058;
          v30 = v21;
          v31 = 2112;
          v32 = v23;
          v33 = 2112;
          v34 = v24;
          v35 = 2112;
          v36 = v26;
          _os_log_impl(&dword_1DC05A000, v20, OS_LOG_TYPE_DEFAULT, "Found no derivatives to copy from <%@ %@> to <%@ %@>", buf, 0x2Au);
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
            v16 = [v4 scopedIdentifier];
            v17 = objc_opt_class();
            v18 = v17;
            v19 = [(CPLRecordChange *)self scopedIdentifier];
            *buf = 134219010;
            v30 = v14;
            v31 = 2112;
            v32 = v15;
            v33 = 2112;
            v34 = v16;
            v35 = 2112;
            v36 = v17;
            v37 = 2112;
            v38 = v19;
            _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_DEFAULT, "Automatically copied %lu derivatives from <%@ %@> to <%@ %@>", buf, 0x34u);
          }
        }

        v20 = [v6 allValues];
        [(CPLMasterChange *)self setResources:v20];
      }

      goto LABEL_21;
    }
  }

LABEL_22:

  v27 = *MEMORY[0x1E69E9840];
}

- (id)resourceForType:(unint64_t)a3
{
  resourcePerResourceType = self->_resourcePerResourceType;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v5 = [(NSDictionary *)resourcePerResourceType objectForKeyedSubscript:v4];

  return v5;
}

- (void)setExpungeableResourceStates:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [CPLExpungeableResourceState normalizedExpungeableResourceStatesFromExpungeableResourceStates:v5];
  v7 = [(NSArray *)v6 count];
  v8 = [v5 count];

  if (v7 != v8 && (_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = v10;
      v12 = [(CPLRecordChange *)self scopedIdentifier];
      v13 = NSStringFromSelector(a2);
      v16 = 138412802;
      v17 = v10;
      v18 = 2112;
      v19 = v12;
      v20 = 2114;
      v21 = v13;
      _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "<%@ %@> %{public}@ got duplicate or incorrect resource types", &v16, 0x20u);
    }
  }

  expungeableResourceStates = self->_expungeableResourceStates;
  self->_expungeableResourceStates = v6;

  v15 = *MEMORY[0x1E69E9840];
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

- (id)checkDefaultValueBlockForPropertyWithSelector:(SEL)a3
{
  if (sel_fullSizeJPEGSource == a3)
  {
    v5 = &__block_literal_global_30;
  }

  else if (sel_originatingFingerprint == a3)
  {
    v5 = &__block_literal_global_34_2473;
  }

  else if (sel_importedBy == a3)
  {
    v5 = &__block_literal_global_38;
  }

  else if (sel_importedByBundleIdentifier == a3)
  {
    v5 = &__block_literal_global_42;
  }

  else if (sel_importedByDisplayName == a3)
  {
    v5 = &__block_literal_global_46;
  }

  else if (sel_videoFrameRate == a3)
  {
    v5 = &__block_literal_global_50;
  }

  else if (sel_codec == a3)
  {
    v5 = &__block_literal_global_54;
  }

  else if (sel_expungeableResourceStates == a3)
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

- (id)propertiesForChangeType:(unint64_t)a3
{
  if (a3 == 8)
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
  v3 = [(CPLRecordChange *)self changeType];
  v4 = v3;
  if (!v3 || (v3 & 2) != 0)
  {
    filename = self->_filename;
    if (!filename)
    {
      filename = @"no filename";
    }

    v5 = filename;
    if (!v4 || (v4 & 8) != 0)
    {
      v7 = objc_alloc(MEMORY[0x1E696AEC0]);
      v8 = [(CPLRecordChange *)self resourcesDescription];
      v9 = [v7 initWithFormat:@"%@ / %@", v5, v8];

      v5 = v9;
    }
  }

  else if ((v3 & 8) != 0)
  {
    v5 = [(CPLRecordChange *)self resourcesDescription];
  }

  else
  {
    v5 = &stru_1F57BD298;
  }

  return v5;
}

- (int64_t)dequeueOrder
{
  v3 = [(CPLMasterChange *)self creationDate];
  v4 = v3;
  if (v3)
  {
    [v3 timeIntervalSinceReferenceDate];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CPLMasterChange;
    v5 = [(CPLRecordChange *)&v8 dequeueOrder];
  }

  v6 = v5;

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
  v2 = [(CPLRecordChange *)self scopedIdentifier];
  v3 = [v2 identifier];

  if (v3)
  {
    v4 = [CPLFingerprintScheme isMMCSv2Fingerprint:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)fingerprintSchemeWithContext:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  fingerprintScheme = self->_fingerprintScheme;
  if (!fingerprintScheme)
  {
    if (!v5)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v15 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v19 = self;
          _os_log_impl(&dword_1DC05A000, v15, OS_LOG_TYPE_ERROR, "Trying to get fingerprint scheme for %@ without a context", buf, 0xCu);
        }
      }

      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLMasterChange.m"];
      [v16 handleFailureInMethod:a2 object:self file:v17 lineNumber:49 description:{@"Trying to get fingerprint scheme for %@ without a context", self}];

      abort();
    }

    v8 = [(CPLRecordChange *)self scopedIdentifier];
    v9 = [v8 identifier];
    v10 = [v6 fingerprintSchemeForMasterIdentifier:v9];
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

    v5 = [*MEMORY[0x1E6982E30] identifier];
    itemType = v3->_itemType;
    v3->_itemType = v5;
  }

  return v3;
}

+ (BOOL)requiresStableHashForResourceType:(unint64_t)a3
{
  if (a3 == 1)
  {
    return 1;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___CPLMasterChange;
  return objc_msgSendSuper2(&v6, sel_requiresStableHashForResourceType_);
}

- (BOOL)validateRecordForTracker:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CPLMasterChange;
  if ([(CPLRecordChange *)&v18 validateRecordForTracker:v4])
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
            v20 = self;
            _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "Client pushed a master with a missing original: %@", buf, 0xCu);
          }

          goto LABEL_16;
        }

LABEL_17:
        v14 = [v4 pushChangeTasks];
        v15 = [(CPLRecordChange *)self scopedIdentifier];
        [v14 addTask:0 forRecordWithScopedIdentifier:v15];

        v13 = 0;
LABEL_20:

        goto LABEL_21;
      }

      v6 = [(CPLRecordChange *)self _unscopedIdentifier];
      v7 = [v5 identity];
      v8 = [v7 fingerPrint];

      if (v6 && v8)
      {
        v9 = [v6 isEqual:v8];

        if ((v9 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {

        if (v6 | v8)
        {
LABEL_8:
          if ((_CPLSilentLogging & 1) == 0)
          {
            v10 = __CPLSessionOSLogDomain_16325();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              v11 = [v5 identity];
              v12 = [v11 fingerPrint];
              *buf = 138412546;
              v20 = v12;
              v21 = 2112;
              v22 = self;
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
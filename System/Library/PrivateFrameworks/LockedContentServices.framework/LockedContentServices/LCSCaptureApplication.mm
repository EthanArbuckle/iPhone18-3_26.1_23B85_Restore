@interface LCSCaptureApplication
- (BOOL)isEqual:(id)equal;
- (LCSCaptureApplication)initWithExtensionInfo:(id)info attributes:(id)attributes;
- (NSData)captureIntentContext;
- (id)_bundleRecordForBundleIdentifier:(id)identifier;
- (id)_captureIntentContextDirectoryURLForBundleIdentifier:(id)identifier;
- (id)_captureIntentContextFileURLForBundleIdentifier:(id)identifier;
- (id)_launchActionsForTarget:(unint64_t)target launchType:(unint64_t)type;
- (id)_queue_launchActionsForType:(unint64_t)type;
- (id)_queue_resolvedLinkActions;
- (id)_queue_systemProtocolForLaunchType:(unint64_t)type;
- (id)_resolvedLinkActionForLaunchTarget:(unint64_t)target launchType:(unint64_t)type;
- (id)acquireLaunchPrewarmAssertionForReason:(id)reason;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)launchActionsForTarget:(unint64_t)target launchType:(unint64_t)type;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)_beginObservingMetadataChanges;
- (void)_clearCachedLinkActions;
- (void)_endObservingMetadataChanges;
- (void)_evaluateLaunchPrewarmAssertions;
- (void)_generateCachedLinkActions;
- (void)dealloc;
- (void)setCaptureIntentContext:(id)context;
@end

@implementation LCSCaptureApplication

- (LCSCaptureApplication)initWithExtensionInfo:(id)info attributes:(id)attributes
{
  infoCopy = info;
  attributesCopy = attributes;
  v27.receiver = self;
  v27.super_class = LCSCaptureApplication;
  v9 = [(LCSCaptureApplication *)&v27 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_extension, info);
    containerBundleIdentifier = [infoCopy containerBundleIdentifier];
    bundleIdentifier = v10->_bundleIdentifier;
    v10->_bundleIdentifier = containerBundleIdentifier;

    Serial = BSDispatchQueueCreateSerial();
    linkActionQueue = v10->_linkActionQueue;
    v10->_linkActionQueue = Serial;

    objc_storeStrong(&v10->_attributes, attributes);
    objc_initWeak(&location, v10);
    v15 = MEMORY[0x277CF0BD0];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __58__LCSCaptureApplication_initWithExtensionInfo_attributes___block_invoke;
    v24 = &unk_279825188;
    objc_copyWeak(&v25, &location);
    v16 = [v15 assertionWithIdentifier:@"launchPrewarm" stateDidChangeHandler:&v21];
    launchPrewarmCompoundAssertion = v10->_launchPrewarmCompoundAssertion;
    v10->_launchPrewarmCompoundAssertion = v16;

    v18 = v10->_launchPrewarmCompoundAssertion;
    v19 = LCSLogCommon();
    [(BSCompoundAssertion *)v18 setLog:v19, v21, v22, v23, v24];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __58__LCSCaptureApplication_initWithExtensionInfo_attributes___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _evaluateLaunchPrewarmAssertions];
    WeakRetained = v2;
  }
}

- (void)dealloc
{
  [(LCSCaptureApplication *)self _endObservingMetadataChanges];
  [(BSCompoundAssertion *)self->_launchPrewarmCompoundAssertion invalidate];
  launchPrewarmCompoundAssertion = self->_launchPrewarmCompoundAssertion;
  self->_launchPrewarmCompoundAssertion = 0;

  v4.receiver = self;
  v4.super_class = LCSCaptureApplication;
  [(LCSCaptureApplication *)&v4 dealloc];
}

- (id)_bundleRecordForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8 = 0;
  v4 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:identifierCopy allowPlaceholder:0 error:&v8];
  v5 = v8;
  if (!v4)
  {
    v6 = LCSLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(LCSCaptureApplication *)identifierCopy _bundleRecordForBundleIdentifier:v5];
    }
  }

  return v4;
}

- (id)_captureIntentContextDirectoryURLForBundleIdentifier:(id)identifier
{
  v3 = [(LCSCaptureApplication *)self _bundleRecordForBundleIdentifier:identifier];
  dataContainerURL = [v3 dataContainerURL];
  v5 = [dataContainerURL URLByAppendingPathComponent:@"Library/com.apple.SecureCapture" isDirectory:1];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [v5 path];
  v13 = 0;
  v8 = [defaultManager createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:&v13];
  v9 = v13;

  if (v8)
  {
    v10 = v5;
  }

  else
  {
    v11 = LCSLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(LCSCaptureApplication *)v5 _captureIntentContextDirectoryURLForBundleIdentifier:v9];
    }

    v10 = 0;
  }

  return v10;
}

- (id)_captureIntentContextFileURLForBundleIdentifier:(id)identifier
{
  v3 = [(LCSCaptureApplication *)self _captureIntentContextDirectoryURLForBundleIdentifier:identifier];
  v4 = [v3 URLByAppendingPathComponent:@"AppIntentContext.data"];

  return v4;
}

- (NSData)captureIntentContext
{
  v18 = *MEMORY[0x277D85DE8];
  if (!self->_bundleIdentifier)
  {
    v2 = LCSLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [(LCSCaptureApplication *)v2 captureIntentContext:v7];
    }

    goto LABEL_11;
  }

  v2 = [(LCSCaptureApplication *)self _captureIntentContextFileURLForBundleIdentifier:?];
  v3 = LCSLogCommon();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (!v2)
  {
    if (v4)
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_256175000, v3, OS_LOG_TYPE_DEFAULT, "File URL can't be found for the capture intent context, this may be expected", &v16, 2u);
    }

LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  if (v4)
  {
    absoluteString = [v2 absoluteString];
    v16 = 138543362;
    v17 = absoluteString;
    _os_log_impl(&dword_256175000, v3, OS_LOG_TYPE_DEFAULT, "Retrieving capture intent context from: %{public}@", &v16, 0xCu);
  }

  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v2];
LABEL_12:

  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)setCaptureIntentContext:(id)context
{
  v32 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (self->_bundleIdentifier)
  {
    v5 = [(LCSCaptureApplication *)self _captureIntentContextFileURLForBundleIdentifier:?];
    if (v5)
    {
      v6 = LCSLogCommon();
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      if (contextCopy)
      {
        if (v7)
        {
          absoluteString = [v5 absoluteString];
          *buf = 138543362;
          v31 = absoluteString;
          _os_log_impl(&dword_256175000, v6, OS_LOG_TYPE_DEFAULT, "Writing capture intent context to: %{public}@", buf, 0xCu);
        }

        [contextCopy writeToURL:v5 atomically:1];
        goto LABEL_18;
      }

      if (v7)
      {
        absoluteString2 = [v5 absoluteString];
        *buf = 138543362;
        v31 = absoluteString2;
        _os_log_impl(&dword_256175000, v6, OS_LOG_TYPE_DEFAULT, "Received nil context, removing capture intent context from: %{public}@", buf, 0xCu);
      }

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v29 = 0;
      v26 = [defaultManager removeItemAtURL:v5 error:&v29];
      v16 = v29;

      if ((v26 & 1) == 0)
      {
        v27 = LCSLogCommon();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [(LCSCaptureApplication *)v5 setCaptureIntentContext:v16];
        }
      }
    }

    else
    {
      v16 = LCSLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [(LCSCaptureApplication *)v16 setCaptureIntentContext:v17, v18, v19, v20, v21, v22, v23];
      }
    }

    goto LABEL_18;
  }

  v5 = LCSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(LCSCaptureApplication *)v5 setCaptureIntentContext:v9, v10, v11, v12, v13, v14, v15];
  }

LABEL_18:

  v28 = *MEMORY[0x277D85DE8];
}

- (id)acquireLaunchPrewarmAssertionForReason:(id)reason
{
  if (reason)
  {
    v4 = [(BSCompoundAssertion *)self->_launchPrewarmCompoundAssertion acquireForReason:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_evaluateLaunchPrewarmAssertions
{
  isActive = [(BSCompoundAssertion *)self->_launchPrewarmCompoundAssertion isActive];
  cachedLinkActionByLaunchIdentifier = self->_cachedLinkActionByLaunchIdentifier;
  if (isActive)
  {
    if (!cachedLinkActionByLaunchIdentifier)
    {
      [(LCSCaptureApplication *)self _generateCachedLinkActions];

      [(LCSCaptureApplication *)self _beginObservingMetadataChanges];
    }
  }

  else if (cachedLinkActionByLaunchIdentifier)
  {
    [(LCSCaptureApplication *)self _endObservingMetadataChanges];

    [(LCSCaptureApplication *)self _clearCachedLinkActions];
  }
}

- (id)_queue_systemProtocolForLaunchType:(unint64_t)type
{
  if (type)
  {
    cameraCaptureProtocol = 0;
  }

  else
  {
    cameraCaptureProtocol = [MEMORY[0x277D23938] cameraCaptureProtocol];
  }

  return cameraCaptureProtocol;
}

- (id)_resolvedLinkActionForLaunchTarget:(unint64_t)target launchType:(unint64_t)type
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = [objc_alloc(MEMORY[0x277D23C38]) initWithOptions:0];
  v8 = [(LCSCaptureApplication *)self _queue_systemProtocolForLaunchType:type];
  if (!v8)
  {
    v16 = 0;
    goto LABEL_15;
  }

  v9 = [MEMORY[0x277CBEB98] setWithObject:v8];
  v10 = [v7 actionsConformingToSystemProtocols:v9 logicalType:1 bundleIdentifier:self->_bundleIdentifier error:0];

  v11 = [v10 objectForKeyedSubscript:self->_bundleIdentifier];
  allValues = [v11 allValues];

  firstObject = [allValues firstObject];
  if (firstObject)
  {
    v14 = objc_alloc_init(MEMORY[0x277D23BC8]);
    if (target == 1)
    {
      bundleIdentifier = [(LCSExtensionDescribing *)self->_extension bundleIdentifier];
    }

    else
    {
      if (target)
      {
        v17 = 0;
        goto LABEL_11;
      }

      bundleIdentifier = self->_bundleIdentifier;
    }

    v17 = bundleIdentifier;
LABEL_11:
    v18 = LCSLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v10 debugDescription];
      v24 = 138412546;
      v25 = v19;
      v26 = 2112;
      v27 = v17;
      _os_log_impl(&dword_256175000, v18, OS_LOG_TYPE_DEFAULT, "Action metadata found in the action map: %@. Creating a link launch action with preferred bundle identifier: %@", &v24, 0x16u);
    }

    [v14 setPreferredBundleIdentifier:v17];
    v20 = [MEMORY[0x277D23BB0] policyWithActionMetadata:firstObject signals:v14];
    v21 = [v20 actionWithParameters:MEMORY[0x277CBEBF8]];
    v16 = [v21 actionWithOpenWhenRun:0];

    goto LABEL_14;
  }

  v16 = 0;
LABEL_14:

LABEL_15:
  v22 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_queue_resolvedLinkActions
{
  v3 = objc_opt_new();
  attributes = [(LCSCaptureApplication *)self attributes];
  v5 = [attributes supportsLaunchType:0];

  if (v5)
  {
    v6 = [(LCSCaptureApplication *)self _queue_launchActionsForType:0];
    if (v6)
    {
      v7 = NSStringFromLCSCaptureApplicationLaunchType();
      [v3 setObject:v6 forKey:v7];
    }
  }

  if ([v3 count])
  {
    v8 = [v3 copy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_queue_launchActionsForType:(unint64_t)type
{
  v5 = [(LCSCaptureApplication *)self _resolvedLinkActionForLaunchTarget:0 launchType:type];
  v6 = [(LCSCaptureApplication *)self _resolvedLinkActionForLaunchTarget:1 launchType:type];
  if (v5)
  {
    v7 = [[LCSCaptureApplicationLaunchActions alloc] initWithApplicationLaunchAction:v5 extensionLaunchAction:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_generateCachedLinkActions
{
  objc_initWeak(&location, self);
  linkActionQueue = self->_linkActionQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__LCSCaptureApplication__generateCachedLinkActions__block_invoke;
  v4[3] = &unk_279824CE0;
  objc_copyWeak(&v5, &location);
  dispatch_async(linkActionQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __51__LCSCaptureApplication__generateCachedLinkActions__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && !WeakRetained[3])
  {
    v3 = LCSLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v2[7];
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_256175000, v3, OS_LOG_TYPE_DEFAULT, "Prewarming link actions for %@", &v8, 0xCu);
    }

    v5 = [v2 _queue_resolvedLinkActions];
    v6 = v2[3];
    v2[3] = v5;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_clearCachedLinkActions
{
  objc_initWeak(&location, self);
  linkActionQueue = self->_linkActionQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__LCSCaptureApplication__clearCachedLinkActions__block_invoke;
  v4[3] = &unk_279824CE0;
  objc_copyWeak(&v5, &location);
  dispatch_async(linkActionQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __48__LCSCaptureApplication__clearCachedLinkActions__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = LCSLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = WeakRetained[7];
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_256175000, v2, OS_LOG_TYPE_DEFAULT, "Clearing cached link actions for %@", &v6, 0xCu);
    }

    v4 = WeakRetained[3];
    WeakRetained[3] = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_beginObservingMetadataChanges
{
  if (!self->_metadataChangedObserverToken)
  {
    objc_initWeak(&location, self);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v4 = *MEMORY[0x277D23A70];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__LCSCaptureApplication__beginObservingMetadataChanges__block_invoke;
    v7[3] = &unk_279824E38;
    objc_copyWeak(&v8, &location);
    v5 = [defaultCenter addObserverForName:v4 object:0 queue:0 usingBlock:v7];

    metadataChangedObserverToken = self->_metadataChangedObserverToken;
    self->_metadataChangedObserverToken = v5;

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __55__LCSCaptureApplication__beginObservingMetadataChanges__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__LCSCaptureApplication__beginObservingMetadataChanges__block_invoke_2;
    block[3] = &unk_279825098;
    objc_copyWeak(&v10, (a1 + 32));
    v8 = v3;
    v9 = v5;
    dispatch_async(v6, block);

    objc_destroyWeak(&v10);
  }
}

void __55__LCSCaptureApplication__beginObservingMetadataChanges__block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = [a1[4] userInfo];
    v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D23A78]];

    if (!v4 || [v4 containsObject:*(a1[5] + 7)])
    {
      v5 = [a1[5] _queue_resolvedLinkActions];
      v6 = a1[5];
      v7 = v6[3];
      v6[3] = v5;
    }

    WeakRetained = v8;
  }
}

- (void)_endObservingMetadataChanges
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self->_metadataChangedObserverToken];

  metadataChangedObserverToken = self->_metadataChangedObserverToken;
  self->_metadataChangedObserverToken = 0;
}

- (id)_launchActionsForTarget:(unint64_t)target launchType:(unint64_t)type
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = objc_opt_new();
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__2;
  v28 = __Block_byref_object_dispose__2;
  v29 = 0;
  linkActionQueue = self->_linkActionQueue;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __60__LCSCaptureApplication__launchActionsForTarget_launchType___block_invoke;
  v23[3] = &unk_2798251B0;
  v23[6] = type;
  v23[7] = target;
  v23[4] = self;
  v23[5] = &v24;
  dispatch_sync(linkActionQueue, v23);
  if (v25[5] || ([(LCSCaptureApplication *)self _resolvedLinkActionForLaunchTarget:target launchType:type], v9 = objc_claimAutoreleasedReturnValue(), v10 = v25[5], v25[5] = v9, v10, v25[5]))
  {
    v11 = objc_opt_new();
    [v11 setOneShotForSpringBoardOnly:1];
    if (!type)
    {
      v12 = objc_opt_new();
      captureIntentContext = [(LCSCaptureApplication *)self captureIntentContext];
      if (captureIntentContext)
      {
        [v12 setEncodedCaptureAppContext:captureIntentContext];
      }

      [v11 setSystemContext:v12];
    }

    v14 = objc_alloc(MEMORY[0x277D23C48]);
    v15 = objc_opt_new();
    v16 = [v14 initWithIdentifier:v15 action:v25[5] executorOptions:v11];

    v17 = [objc_alloc(MEMORY[0x277D756D8]) initWithAction:v16 responseHandler:&__block_literal_global_4];
    v18 = LCSLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v17 debugDescription];
      *buf = 138412290;
      v31 = v19;
      _os_log_impl(&dword_256175000, v18, OS_LOG_TYPE_DEFAULT, "Link action created: %@", buf, 0xCu);
    }

    [v7 addObject:v17];
  }

  else
  {
    v11 = LCSLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [LCSCaptureApplication _launchActionsForTarget:v11 launchType:?];
    }
  }

  v20 = [v7 copy];
  _Block_object_dispose(&v24, 8);

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

void __60__LCSCaptureApplication__launchActionsForTarget_launchType___block_invoke(void *a1)
{
  v1 = *(a1[4] + 24);
  if (!v1)
  {
    return;
  }

  v3 = a1[6];
  v4 = NSStringFromLCSCaptureApplicationLaunchType();
  v10 = [v1 objectForKey:v4];

  v5 = v10;
  if (v10)
  {
    v6 = a1[7];
    if (v6 == 1)
    {
      v7 = [v10 extensionLaunchAction];
      goto LABEL_8;
    }

    if (!v6)
    {
      v7 = [v10 applicationLaunchAction];
LABEL_8:
      v8 = *(a1[5] + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v5 = v10;
    }
  }
}

- (id)launchActionsForTarget:(unint64_t)target launchType:(unint64_t)type
{
  if ([(LCSCaptureApplicationAttributes *)self->_attributes supportsLaunchType:type])
  {
    v7 = [(LCSCaptureApplication *)self _launchActionsForTarget:target launchType:type];
  }

  else
  {
    v7 = objc_opt_new();
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    v8 = (objc_opt_isKindOfClass() & 1) != 0 && -[NSString isEqual:](self->_bundleIdentifier, "isEqual:", equalCopy->_bundleIdentifier) && -[LCSExtensionDescribing isEqual:](self->_extension, "isEqual:", equalCopy->_extension) && (-[LCSCaptureApplication captureIntentContext](self, "captureIntentContext"), v5 = objc_opt_class();
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleIdentifier hash];
  v4 = [(LCSExtensionDescribing *)self->_extension hash]^ v3;
  captureIntentContext = [(LCSCaptureApplication *)self captureIntentContext];
  v6 = [captureIntentContext hash];
  v7 = v4 ^ v6 ^ [(NSSet *)self->_launchActions hash];
  v8 = [(LCSCaptureApplicationAttributes *)self->_attributes hash];

  return v7 ^ v8;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(LCSCaptureApplication *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(LCSCaptureApplication *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(LCSCaptureApplication *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__LCSCaptureApplication_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_279824C98;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

id __63__LCSCaptureApplication_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  [*(a1 + 32) appendString:*(*(a1 + 40) + 56) withName:@"bundleIdentifier"];
  v2 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 24) != 0 withName:@"hasCachedLinkActions" ifEqualTo:1];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 64) withName:@"attributes"];
}

- (void)_bundleRecordForBundleIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = [a2 localizedDescription];
  OUTLINED_FUNCTION_0_1(&dword_256175000, v2, v3, "Unable to resolve bundle record for %@: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_captureIntentContextDirectoryURLForBundleIdentifier:(void *)a1 .cold.1(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [a1 absoluteString];
  v11 = [a2 debugDescription];
  OUTLINED_FUNCTION_0_1(&dword_256175000, v4, v5, "Can't create a directory URL: %{public}@ error: %@", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setCaptureIntentContext:(void *)a1 .cold.1(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [a1 absoluteString];
  v11 = [a2 localizedDescription];
  OUTLINED_FUNCTION_0_1(&dword_256175000, v4, v5, "Unable to remove capture intent context from %{public}@ : %{public}@", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_launchActionsForTarget:(uint64_t)a1 launchType:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_256175000, a2, OS_LOG_TYPE_ERROR, "Unable to resolve link action for capture application: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end
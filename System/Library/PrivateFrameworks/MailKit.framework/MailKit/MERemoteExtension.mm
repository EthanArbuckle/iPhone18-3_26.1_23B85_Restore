@interface MERemoteExtension
+ (id)allCapabilities;
+ (id)allCapabilitiesRequiringMessageContentAccess;
+ (id)log;
- (BOOL)bodyAccess;
- (BOOL)hasMessageContentAccess;
- (BOOL)inboundNetworkingAllowed;
- (BOOL)isEnabled;
- (BOOL)isEqual:(id)equal;
- (BOOL)outboundNetworkingAllowed;
- (MEContentBlocker_Private)synchronousContentBlockerInterface;
- (MEExtensionHostContext)extensionHostContext;
- (MEMailComposeToolbarItemInfo)composeWindowToolbarButtonInfo;
- (MEMessageActionHandler_Private)synchronousMessageActionProviderInterface;
- (MERemoteExtension)initWithExtension:(id)extension;
- (NSArray)capabilities;
- (NSString)containingAppDisplayName;
- (NSString)dataAccessReason;
- (NSString)description;
- (NSString)descriptionText;
- (NSString)displayName;
- (NSString)displayVersion;
- (NSString)ef_publicDescription;
- (NSString)extensionID;
- (NSURL)containingAppURL;
- (UIImage)toolbarIcon;
- (id)_getInterfaceForExtensionCapability:(id)capability error:(id *)error;
- (id)_imageForName:(id)name;
- (id)_interfaceForExtensionCapability:(id)capability;
- (id)_loadRemoteExtesionProxyFuture;
- (id)_remoteExtensionProxyFuture;
- (id)_synchronousInterfaceForExtensionCapability:(id)capability;
- (id)interfaceForExtensionCapability:(id)capability;
- (id)toolbarIconTooltip;
- (unint64_t)hash;
- (void)_nts_loadBodyAccess;
- (void)_nts_loadDataAccessReason;
- (void)getDecodedMailViewControllerForMessageContext:(id)context completionHandler:(id)handler;
- (void)getMailComposeExtensionViewControllerForSession:(id)session hostDelegate:(id)delegate completionHandler:(id)handler;
- (void)getMailSignatureVerificationExtensionViewControllerForMessageSigners:(id)signers completionHandler:(id)handler;
- (void)primaryActionClickedForMessageContext:(id)context completionHandler:(id)handler;
@end

@implementation MERemoteExtension

+ (id)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__MERemoteExtension_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_3 != -1)
  {
    dispatch_once(&log_onceToken_3, block);
  }

  v2 = log_log_3;

  return v2;
}

void __24__MERemoteExtension_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_3;
  log_log_3 = v1;
}

- (MERemoteExtension)initWithExtension:(id)extension
{
  extensionCopy = extension;
  v21.receiver = self;
  v21.super_class = MERemoteExtension;
  v6 = [(MERemoteExtension *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_extension, extension);
    _localizedName = [(NSExtension *)v7->_extension _localizedName];
    if (_localizedName)
    {
      _localizedName2 = [(NSExtension *)v7->_extension _localizedName];
    }

    else
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      _localizedName2 = [uUID UUIDString];
    }

    v11 = [@"com.apple.email.extension." stringByAppendingString:_localizedName2];
    uTF8String = [v11 UTF8String];
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_attr_make_with_qos_class(v13, QOS_CLASS_USER_INITIATED, 0);
    v15 = dispatch_queue_create(uTF8String, v14);
    extensionLoadingQueue = v7->_extensionLoadingQueue;
    v7->_extensionLoadingQueue = v15;

    *&v7->_remoteExtensionProxyLock._os_unfair_lock_opaque = 0;
    objc_initWeak(&location, v7);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __39__MERemoteExtension_initWithExtension___block_invoke;
    v18[3] = &unk_279859308;
    objc_copyWeak(&v19, &location);
    [(NSExtension *)v7->_extension setRequestInterruptionBlock:v18];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __39__MERemoteExtension_initWithExtension___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = +[MERemoteExtension log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = WeakRetained;
    _os_log_impl(&dword_257F67000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Extension interrupted", &v6, 0xCu);
  }

  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 2);
    v3 = +[MERemoteExtension log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = WeakRetained;
      _os_log_impl(&dword_257F67000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Resetting extension _remoteExtensionProxyPromise as Extension interrupted.", &v6, 0xCu);
    }

    v4 = *&WeakRetained[22]._os_unfair_lock_opaque;
    *&WeakRetained[22]._os_unfair_lock_opaque = 0;

    os_unfair_lock_unlock(WeakRetained + 2);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  extension = [(MERemoteExtension *)self extension];
  v6 = [v3 initWithFormat:@"<%@:%p; %@>", v4, self, extension];

  return v6;
}

- (NSString)extensionID
{
  extension = [(MERemoteExtension *)self extension];
  identifier = [extension identifier];

  return identifier;
}

- (NSString)displayName
{
  extension = [(MERemoteExtension *)self extension];
  _localizedName = [extension _localizedName];

  return _localizedName;
}

- (NSString)displayVersion
{
  extension = [(MERemoteExtension *)self extension];
  version = [extension version];

  return version;
}

- (NSString)containingAppDisplayName
{
  extension = [(MERemoteExtension *)self extension];
  _plugIn = [extension _plugIn];
  localizedContainingName = [_plugIn localizedContainingName];

  return localizedContainingName;
}

- (NSURL)containingAppURL
{
  extension = [(MERemoteExtension *)self extension];
  _plugIn = [extension _plugIn];
  containingUrl = [_plugIn containingUrl];

  return containingUrl;
}

- (NSString)descriptionText
{
  extension = [(MERemoteExtension *)self extension];
  _extensionBundle = [extension _extensionBundle];

  localizedInfoDictionary = [_extensionBundle localizedInfoDictionary];
  v5 = [localizedInfoDictionary objectForKeyedSubscript:@"NSHumanReadableDescription"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 length])
  {
    goto LABEL_6;
  }

  infoDictionary = [_extensionBundle infoDictionary];
  v7 = [infoDictionary objectForKeyedSubscript:@"NSHumanReadableDescription"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 length])
  {
    v5 = v7;
LABEL_6:
    v8 = v5;
    v7 = v8;
    goto LABEL_8;
  }

  v8 = &stru_2869277F8;
LABEL_8:

  return v8;
}

- (BOOL)isEnabled
{
  v23 = *MEMORY[0x277D85DE8];
  extension = [(MERemoteExtension *)self extension];
  optedIn = [extension optedIn];

  v5 = +[MEExtensionUserPreferences sharedInstance];
  extensionID = [(MERemoteExtension *)self extensionID];
  v7 = [v5 isExtensionEnabled:extensionID];

  v8 = +[MERemoteExtension log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    extensionID2 = [(MERemoteExtension *)self extensionID];
    v10 = extensionID2;
    v11 = @"Not Enabled";
    if (v7)
    {
      v11 = @"Enabled";
    }

    v12 = @"NO";
    v15 = 134218754;
    selfCopy = self;
    v17 = 2114;
    v18 = extensionID2;
    if (optedIn)
    {
      v12 = @"YES";
    }

    v19 = 2114;
    v20 = v11;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&dword_257F67000, v8, OS_LOG_TYPE_DEFAULT, "MERemoteExtension<%p>: Extension %{public}@ is userEnabled: %{public}@ and optedIn: %@.", &v15, 0x2Au);
  }

  v13 = *MEMORY[0x277D85DE8];
  return optedIn & v7;
}

- (NSArray)capabilities
{
  extension = [(MERemoteExtension *)self extension];
  attributes = [extension attributes];

  v4 = [attributes objectForKeyedSubscript:@"MEExtensionCapabilities"];
  v5 = [v4 ef_filter:&__block_literal_global_7];

  return v5;
}

uint64_t __33__MERemoteExtension_capabilities__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = +[MERemoteExtension allCapabilities];
    v4 = [v3 containsObject:v2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)allCapabilities
{
  if (allCapabilities_onceToken != -1)
  {
    +[MERemoteExtension allCapabilities];
  }

  v3 = allCapabilities_allCapabilities;

  return v3;
}

void __36__MERemoteExtension_allCapabilities__block_invoke()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = @"MEComposeSessionHandler";
  v3[1] = @"MEMessageSecurityHandler";
  v3[2] = @"MEMessageActionHandler";
  v3[3] = @"MEContentBlocker";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:4];
  v1 = allCapabilities_allCapabilities;
  allCapabilities_allCapabilities = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)allCapabilitiesRequiringMessageContentAccess
{
  if (allCapabilitiesRequiringMessageContentAccess_onceToken != -1)
  {
    +[MERemoteExtension allCapabilitiesRequiringMessageContentAccess];
  }

  v3 = allCapabilitiesRequiringMessageContentAccess_allCapabilitiesRequiringMessageContentAccess;

  return v3;
}

void __65__MERemoteExtension_allCapabilitiesRequiringMessageContentAccess__block_invoke()
{
  v3[3] = *MEMORY[0x277D85DE8];
  v3[0] = @"MEComposeSessionHandler";
  v3[1] = @"MEMessageSecurityHandler";
  v3[2] = @"MEMessageActionHandler";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:3];
  v1 = allCapabilitiesRequiringMessageContentAccess_allCapabilitiesRequiringMessageContentAccess;
  allCapabilitiesRequiringMessageContentAccess_allCapabilitiesRequiringMessageContentAccess = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (BOOL)outboundNetworkingAllowed
{
  extension = [(MERemoteExtension *)self extension];
  _plugIn = [extension _plugIn];
  entitlements = [_plugIn entitlements];
  v5 = [entitlements objectForKey:@"com.apple.security.network.client"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)inboundNetworkingAllowed
{
  extension = [(MERemoteExtension *)self extension];
  _plugIn = [extension _plugIn];
  entitlements = [_plugIn entitlements];
  v5 = [entitlements objectForKey:@"com.apple.security.network.server"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (UIImage)toolbarIcon
{
  extension = [(MERemoteExtension *)self extension];
  attributes = [extension attributes];
  v5 = [attributes objectForKeyedSubscript:@"MEComposeSession"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v5 objectForKeyedSubscript:@"MEComposeIcon"], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = [(MERemoteExtension *)self _imageForName:v6];
  }

  else
  {
    v7 = [MEMORY[0x277D755B8] systemImageNamed:@"puzzlepiece.extension"];
  }

  return v7;
}

- (id)_imageForName:(id)name
{
  nameCopy = name;
  extension = [(MERemoteExtension *)self extension];
  _extensionBundle = [extension _extensionBundle];

  v7 = [MEMORY[0x277D755B8] imageNamed:nameCopy inBundle:_extensionBundle withConfiguration:0];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x277D755B8] systemImageNamed:@"puzzlepiece.extension"];
  }

  v10 = v9;

  return v10;
}

- (id)toolbarIconTooltip
{
  extension = [(MERemoteExtension *)self extension];
  attributes = [extension attributes];
  v4 = [attributes objectForKeyedSubscript:@"MEComposeSession"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 objectForKeyedSubscript:@"MEComposeIconToolTip"];
  }

  else
  {
    v5 = &stru_2869277F8;
  }

  return v5;
}

- (MEMailComposeToolbarItemInfo)composeWindowToolbarButtonInfo
{
  v3 = [MEMailComposeToolbarItemInfo alloc];
  displayName = [(MERemoteExtension *)self displayName];
  toolbarIcon = [(MERemoteExtension *)self toolbarIcon];
  toolbarIconTooltip = [(MERemoteExtension *)self toolbarIconTooltip];
  v7 = [(MEMailComposeToolbarItemInfo *)v3 initWithLabel:displayName image:toolbarIcon tooltip:toolbarIconTooltip];

  return v7;
}

- (MEExtensionHostContext)extensionHostContext
{
  extension = [(MERemoteExtension *)self extension];
  contextUUID = [(MERemoteExtension *)self contextUUID];
  v5 = [extension _extensionContextForUUID:contextUUID];

  return v5;
}

- (id)_remoteExtensionProxyFuture
{
  v3 = objc_opt_new();
  _loadRemoteExtesionProxyFuture = [(MERemoteExtension *)self _loadRemoteExtesionProxyFuture];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__MERemoteExtension__remoteExtensionProxyFuture__block_invoke;
  v15[3] = &unk_279859330;
  v5 = v3;
  v16 = v5;
  [_loadRemoteExtesionProxyFuture addSuccessBlock:v15];

  _loadRemoteExtesionProxyFuture2 = [(MERemoteExtension *)self _loadRemoteExtesionProxyFuture];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __48__MERemoteExtension__remoteExtensionProxyFuture__block_invoke_2;
  v13 = &unk_279858F20;
  v7 = v5;
  v14 = v7;
  [_loadRemoteExtesionProxyFuture2 addFailureBlock:&v10];

  future = [v7 future];

  return future;
}

void __48__MERemoteExtension__remoteExtensionProxyFuture__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 remoteObjectProxy];
  [v2 finishWithResult:?];
}

- (id)_loadRemoteExtesionProxyFuture
{
  v21 = *MEMORY[0x277D85DE8];
  extension = [(MERemoteExtension *)self extension];

  if (!extension)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MERemoteExtension.m" lineNumber:335 description:{@"Expected non-nil extension for %@", self}];
  }

  os_unfair_lock_lock(&self->_remoteExtensionProxyLock);
  remoteExtensionProxyPromise = self->_remoteExtensionProxyPromise;
  v6 = remoteExtensionProxyPromise;
  if (!remoteExtensionProxyPromise)
  {
    promise = [MEMORY[0x277D071A8] promise];
    v8 = self->_remoteExtensionProxyPromise;
    self->_remoteExtensionProxyPromise = promise;

    v6 = self->_remoteExtensionProxyPromise;
  }

  v9 = v6;
  os_unfair_lock_unlock(&self->_remoteExtensionProxyLock);
  if (!remoteExtensionProxyPromise)
  {
    v10 = +[MERemoteExtension log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_257F67000, v10, OS_LOG_TYPE_DEFAULT, "Starting setting up a new request, extension:%@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v11 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__MERemoteExtension__loadRemoteExtesionProxyFuture__block_invoke;
    block[3] = &unk_279858E58;
    objc_copyWeak(&v18, buf);
    v17 = v9;
    dispatch_async(v11, block);

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }

  future = [(EFPromise *)v9 future];

  v13 = *MEMORY[0x277D85DE8];

  return future;
}

void __51__MERemoteExtension__loadRemoteExtesionProxyFuture__block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [(os_unfair_lock_s *)WeakRetained extension];
    v29 = 0;
    v5 = [v4 beginExtensionRequestWithOptions:0 inputItems:0 error:&v29];
    v6 = v29;
    v7 = v29;

    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__0;
    v27 = __Block_byref_object_dispose__0;
    v28 = 0;
    if (v7)
    {
      objc_storeStrong(&v28, v6);
      v8 = +[MERemoteExtension log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v21 = [v24[5] ef_publicDescription];
        *buf = 138412802;
        v31 = v5;
        v32 = 2112;
        v33 = v3;
        v34 = 2114;
        v35 = v21;
        _os_log_error_impl(&dword_257F67000, v8, OS_LOG_TYPE_ERROR, "Error setting up a new request, requestID:%@, extension:%@, error:%{public}@", buf, 0x20u);
      }

      v9 = 0;
    }

    else
    {
      v10 = +[MERemoteExtension log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v31 = v5;
        v32 = 2112;
        v33 = v3;
        _os_log_impl(&dword_257F67000, v10, OS_LOG_TYPE_DEFAULT, "Finished setting up a new request, requestID:%@, extension:%@", buf, 0x16u);
      }

      v11 = [(os_unfair_lock_s *)v3 extension];
      v8 = [v11 _extensionContextForUUID:v5];

      v12 = [v5 copy];
      v13 = *&v3[26]._os_unfair_lock_opaque;
      *&v3[26]._os_unfair_lock_opaque = v12;

      v14 = [v8 _auxiliaryConnection];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __51__MERemoteExtension__loadRemoteExtesionProxyFuture__block_invoke_120;
      v22[3] = &unk_279859358;
      v22[4] = v3;
      v22[5] = &v23;
      v9 = [v14 synchronousRemoteObjectProxyWithErrorHandler:v22];
    }

    v15 = *(a1 + 32);
    if (v24[5])
    {
      [v15 finishWithError:?];
      os_unfair_lock_lock(v3 + 2);
      v16 = +[MERemoteExtension log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [(os_unfair_lock_s *)v3 ef_publicDescription];
        v18 = [v24[5] ef_publicDescription];
        *buf = 138543618;
        v31 = v17;
        v32 = 2114;
        v33 = v18;
        _os_log_impl(&dword_257F67000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: Resetting extension _remoteExtensionProxyPromise as Extension start failed with error %{public}@.", buf, 0x16u);
      }

      v19 = *&v3[22]._os_unfair_lock_opaque;
      *&v3[22]._os_unfair_lock_opaque = 0;

      os_unfair_lock_unlock(v3 + 2);
    }

    else
    {
      [v15 finishWithResult:v9];
    }

    _Block_object_dispose(&v23, 8);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __51__MERemoteExtension__loadRemoteExtesionProxyFuture__block_invoke_120(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = +[MERemoteExtension log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __51__MERemoteExtension__loadRemoteExtesionProxyFuture__block_invoke_120_cold_1(a1, v4, v5);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v6 = [*(a1 + 32) securityErrorHandler];

    if (v6)
    {
      v7 = [*(a1 + 32) securityErrorHandler];
      v7[2]();
    }
  }
}

- (id)interfaceForExtensionCapability:(id)capability
{
  capabilityCopy = capability;
  capabilities = [(MERemoteExtension *)self capabilities];
  v6 = [capabilities containsObject:capabilityCopy];

  if (v6)
  {
    _remoteExtensionProxyFuture = [(MERemoteExtension *)self _remoteExtensionProxyFuture];
  }

  else
  {
    v8 = MEMORY[0x277D07150];
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MEMailExtensionErrorDomain" code:2 userInfo:0];
    _remoteExtensionProxyFuture = [v8 futureWithError:v9];
  }

  return _remoteExtensionProxyFuture;
}

- (void)getMailComposeExtensionViewControllerForSession:(id)session hostDelegate:(id)delegate completionHandler:(id)handler
{
  handlerCopy = handler;
  capabilities = [(MERemoteExtension *)self capabilities];
  v7 = [capabilities containsObject:@"MEComposeSessionHandler"];

  if ((v7 & 1) == 0)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (MEMessageActionHandler_Private)synchronousMessageActionProviderInterface
{
  if (pthread_main_np())
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MERemoteExtension.m" lineNumber:435 description:@"Current thread is main"];
  }

  return [(MERemoteExtension *)self _synchronousInterfaceForExtensionCapability:@"MEMessageActionHandler"];
}

- (MEContentBlocker_Private)synchronousContentBlockerInterface
{
  if (pthread_main_np())
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MERemoteExtension.m" lineNumber:445 description:@"Current thread is main"];
  }

  return [(MERemoteExtension *)self _synchronousInterfaceForExtensionCapability:@"MEContentBlocker"];
}

- (void)getMailSignatureVerificationExtensionViewControllerForMessageSigners:(id)signers completionHandler:(id)handler
{
  handlerCopy = handler;
  capabilities = [(MERemoteExtension *)self capabilities];
  v6 = [capabilities containsObject:@"MEMessageSecurityHandler"];

  if ((v6 & 1) == 0)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (void)getDecodedMailViewControllerForMessageContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  capabilities = [(MERemoteExtension *)self capabilities];
  v6 = [capabilities containsObject:@"MEMessageSecurityHandler"];

  if ((v6 & 1) == 0)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (void)primaryActionClickedForMessageContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  capabilities = [(MERemoteExtension *)self capabilities];
  v6 = [capabilities containsObject:@"MEMessageSecurityHandler"];

  if ((v6 & 1) == 0)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (id)_interfaceForExtensionCapability:(id)capability
{
  capabilityCopy = capability;
  capabilities = [(MERemoteExtension *)self capabilities];
  v6 = [capabilities containsObject:capabilityCopy];

  if (v6)
  {
    _remoteExtensionProxyFuture = [(MERemoteExtension *)self _remoteExtensionProxyFuture];
    v8 = [_remoteExtensionProxyFuture resultWithTimeout:0 error:5.0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_synchronousInterfaceForExtensionCapability:(id)capability
{
  v3 = [(MERemoteExtension *)self _getInterfaceForExtensionCapability:capability error:0];

  return v3;
}

- (id)_getInterfaceForExtensionCapability:(id)capability error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  capabilityCopy = capability;
  capabilities = [(MERemoteExtension *)self capabilities];
  v8 = [capabilities containsObject:capabilityCopy];

  if (!v8)
  {
    v12 = 0;
    goto LABEL_18;
  }

  _loadRemoteExtesionProxyFuture = [(MERemoteExtension *)self _loadRemoteExtesionProxyFuture];
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v23 = 0;
    v10 = &v23;
    v11 = [_loadRemoteExtesionProxyFuture resultIfAvailable:&v23];
  }

  else
  {
    v22 = 0;
    v10 = &v22;
    v11 = [_loadRemoteExtesionProxyFuture resultWithTimeout:&v22 error:10.0];
  }

  v12 = v11;
  v13 = *v10;
  v14 = v13;
  if (v13)
  {
    if (error)
    {
      v15 = v13;
      *error = v14;
    }

    domain = [v14 domain];
    if ([domain isEqualToString:*MEMORY[0x277D07100]])
    {
      v17 = [v14 code] == 1000000;

      if (v17)
      {
        v18 = +[MERemoteExtension log];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          [MERemoteExtension _getInterfaceForExtensionCapability:v18 error:?];
        }

LABEL_16:

        v12 = 0;
        goto LABEL_17;
      }
    }

    else
    {
    }

    v18 = +[MERemoteExtension log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      ef_publicDescription = [v14 ef_publicDescription];
      [(MERemoteExtension *)ef_publicDescription _getInterfaceForExtensionCapability:buf error:v18];
    }

    goto LABEL_16;
  }

LABEL_17:

LABEL_18:
  v20 = *MEMORY[0x277D85DE8];

  return v12;
}

- (NSString)dataAccessReason
{
  os_unfair_lock_lock(&self->_accessLevelLock);
  dataAccessReason = self->_dataAccessReason;
  if (!dataAccessReason)
  {
    [(MERemoteExtension *)self _nts_loadDataAccessReason];
    dataAccessReason = self->_dataAccessReason;
  }

  v4 = dataAccessReason;
  os_unfair_lock_unlock(&self->_accessLevelLock);

  return v4;
}

- (BOOL)bodyAccess
{
  os_unfair_lock_lock(&self->_accessLevelLock);
  bodyAccess = self->_bodyAccess;
  if (!bodyAccess)
  {
    [(MERemoteExtension *)self _nts_loadBodyAccess];
    bodyAccess = self->_bodyAccess;
  }

  v4 = bodyAccess == 2;
  os_unfair_lock_unlock(&self->_accessLevelLock);
  return v4;
}

- (void)_nts_loadDataAccessReason
{
  extension = [(MERemoteExtension *)self extension];
  attributes = [extension attributes];

  v4 = [attributes objectForKeyedSubscript:@"MailDataAccessRequirements"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v4 = [v5 objectForKeyedSubscript:@"AccessReason"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&self->_dataAccessReason, v4);
    }
  }

  if (!self->_dataAccessReason)
  {
    self->_dataAccessReason = &stru_2869277F8;
  }
}

- (void)_nts_loadBodyAccess
{
  extension = [(MERemoteExtension *)self extension];
  attributes = [extension attributes];

  v4 = [attributes objectForKeyedSubscript:@"MailDataAccessRequirements"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v4 = [v5 objectForKeyedSubscript:@"Body"];

    if (objc_opt_respondsToSelector())
    {
      integerValue = [v4 integerValue];
      v7 = 1;
      if (integerValue >= 1)
      {
        v7 = 2;
      }

      self->_bodyAccess = v7;
    }
  }

  if (!self->_bodyAccess)
  {
    self->_bodyAccess = 1;
  }
}

- (BOOL)hasMessageContentAccess
{
  v2 = MEMORY[0x277CBEB98];
  capabilities = [(MERemoteExtension *)self capabilities];
  v4 = [v2 setWithArray:capabilities];

  v5 = MEMORY[0x277CBEB98];
  v6 = +[MERemoteExtension allCapabilitiesRequiringMessageContentAccess];
  v7 = [v5 setWithArray:v6];

  LOBYTE(v6) = [v4 intersectsSet:v7];
  return v6;
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
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      extensionID = [(MERemoteExtension *)self extensionID];
      extensionID2 = [(MERemoteExtension *)v5 extensionID];
      v8 = [extensionID isEqual:extensionID2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  extensionID = [(MERemoteExtension *)self extensionID];
  v3 = [extensionID hash];

  return v3;
}

- (NSString)ef_publicDescription
{
  v3 = MEMORY[0x277CCACA8];
  capabilities = [(MERemoteExtension *)self capabilities];
  v5 = [capabilities componentsJoinedByString:{@", "}];
  v6 = [v3 stringWithFormat:@"[%@]", v5];

  v7 = MEMORY[0x277CCACA8];
  extensionID = [(MERemoteExtension *)self extensionID];
  displayName = [(MERemoteExtension *)self displayName];
  displayVersion = [(MERemoteExtension *)self displayVersion];
  v11 = [v7 stringWithFormat:@"%@ - %@ - %@ - %@", extensionID, displayName, displayVersion, v6];

  return v11;
}

void __51__MERemoteExtension__loadRemoteExtesionProxyFuture__block_invoke_120_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_257F67000, log, OS_LOG_TYPE_ERROR, "XPC Error %@ fetching remote extension proxy %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_getInterfaceForExtensionCapability:(os_log_t)log error:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_257F67000, log, OS_LOG_TYPE_ERROR, "Loading remote extension proxy returned error %{public}@", buf, 0xCu);
}

@end
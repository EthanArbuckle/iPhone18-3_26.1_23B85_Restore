@interface MERemoteExtension
+ (id)allCapabilities;
+ (id)allCapabilitiesRequiringMessageContentAccess;
+ (id)log;
- (BOOL)bodyAccess;
- (BOOL)hasMessageContentAccess;
- (BOOL)inboundNetworkingAllowed;
- (BOOL)isEnabled;
- (BOOL)isEqual:(id)a3;
- (BOOL)outboundNetworkingAllowed;
- (MEContentBlocker_Private)synchronousContentBlockerInterface;
- (MEExtensionHostContext)extensionHostContext;
- (MEMailComposeToolbarItemInfo)composeWindowToolbarButtonInfo;
- (MEMessageActionHandler_Private)synchronousMessageActionProviderInterface;
- (MERemoteExtension)initWithExtension:(id)a3;
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
- (id)_getInterfaceForExtensionCapability:(id)a3 error:(id *)a4;
- (id)_imageForName:(id)a3;
- (id)_interfaceForExtensionCapability:(id)a3;
- (id)_loadRemoteExtesionProxyFuture;
- (id)_remoteExtensionProxyFuture;
- (id)_synchronousInterfaceForExtensionCapability:(id)a3;
- (id)interfaceForExtensionCapability:(id)a3;
- (id)toolbarIconTooltip;
- (unint64_t)hash;
- (void)_nts_loadBodyAccess;
- (void)_nts_loadDataAccessReason;
- (void)getDecodedMailViewControllerForMessageContext:(id)a3 completionHandler:(id)a4;
- (void)getMailComposeExtensionViewControllerForSession:(id)a3 hostDelegate:(id)a4 completionHandler:(id)a5;
- (void)getMailSignatureVerificationExtensionViewControllerForMessageSigners:(id)a3 completionHandler:(id)a4;
- (void)primaryActionClickedForMessageContext:(id)a3 completionHandler:(id)a4;
@end

@implementation MERemoteExtension

+ (id)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__MERemoteExtension_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (MERemoteExtension)initWithExtension:(id)a3
{
  v5 = a3;
  v21.receiver = self;
  v21.super_class = MERemoteExtension;
  v6 = [(MERemoteExtension *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_extension, a3);
    v8 = [(NSExtension *)v7->_extension _localizedName];
    if (v8)
    {
      v9 = [(NSExtension *)v7->_extension _localizedName];
    }

    else
    {
      v10 = [MEMORY[0x277CCAD78] UUID];
      v9 = [v10 UUIDString];
    }

    v11 = [@"com.apple.email.extension." stringByAppendingString:v9];
    v12 = [v11 UTF8String];
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_attr_make_with_qos_class(v13, QOS_CLASS_USER_INITIATED, 0);
    v15 = dispatch_queue_create(v12, v14);
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
  v5 = [(MERemoteExtension *)self extension];
  v6 = [v3 initWithFormat:@"<%@:%p; %@>", v4, self, v5];

  return v6;
}

- (NSString)extensionID
{
  v2 = [(MERemoteExtension *)self extension];
  v3 = [v2 identifier];

  return v3;
}

- (NSString)displayName
{
  v2 = [(MERemoteExtension *)self extension];
  v3 = [v2 _localizedName];

  return v3;
}

- (NSString)displayVersion
{
  v2 = [(MERemoteExtension *)self extension];
  v3 = [v2 version];

  return v3;
}

- (NSString)containingAppDisplayName
{
  v2 = [(MERemoteExtension *)self extension];
  v3 = [v2 _plugIn];
  v4 = [v3 localizedContainingName];

  return v4;
}

- (NSURL)containingAppURL
{
  v2 = [(MERemoteExtension *)self extension];
  v3 = [v2 _plugIn];
  v4 = [v3 containingUrl];

  return v4;
}

- (NSString)descriptionText
{
  v2 = [(MERemoteExtension *)self extension];
  v3 = [v2 _extensionBundle];

  v4 = [v3 localizedInfoDictionary];
  v5 = [v4 objectForKeyedSubscript:@"NSHumanReadableDescription"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 length])
  {
    goto LABEL_6;
  }

  v6 = [v3 infoDictionary];
  v7 = [v6 objectForKeyedSubscript:@"NSHumanReadableDescription"];

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
  v3 = [(MERemoteExtension *)self extension];
  v4 = [v3 optedIn];

  v5 = +[MEExtensionUserPreferences sharedInstance];
  v6 = [(MERemoteExtension *)self extensionID];
  v7 = [v5 isExtensionEnabled:v6];

  v8 = +[MERemoteExtension log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(MERemoteExtension *)self extensionID];
    v10 = v9;
    v11 = @"Not Enabled";
    if (v7)
    {
      v11 = @"Enabled";
    }

    v12 = @"NO";
    v15 = 134218754;
    v16 = self;
    v17 = 2114;
    v18 = v9;
    if (v4)
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
  return v4 & v7;
}

- (NSArray)capabilities
{
  v2 = [(MERemoteExtension *)self extension];
  v3 = [v2 attributes];

  v4 = [v3 objectForKeyedSubscript:@"MEExtensionCapabilities"];
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
  v2 = [(MERemoteExtension *)self extension];
  v3 = [v2 _plugIn];
  v4 = [v3 entitlements];
  v5 = [v4 objectForKey:@"com.apple.security.network.client"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)inboundNetworkingAllowed
{
  v2 = [(MERemoteExtension *)self extension];
  v3 = [v2 _plugIn];
  v4 = [v3 entitlements];
  v5 = [v4 objectForKey:@"com.apple.security.network.server"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (UIImage)toolbarIcon
{
  v3 = [(MERemoteExtension *)self extension];
  v4 = [v3 attributes];
  v5 = [v4 objectForKeyedSubscript:@"MEComposeSession"];

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

- (id)_imageForName:(id)a3
{
  v4 = a3;
  v5 = [(MERemoteExtension *)self extension];
  v6 = [v5 _extensionBundle];

  v7 = [MEMORY[0x277D755B8] imageNamed:v4 inBundle:v6 withConfiguration:0];
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
  v2 = [(MERemoteExtension *)self extension];
  v3 = [v2 attributes];
  v4 = [v3 objectForKeyedSubscript:@"MEComposeSession"];

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
  v4 = [(MERemoteExtension *)self displayName];
  v5 = [(MERemoteExtension *)self toolbarIcon];
  v6 = [(MERemoteExtension *)self toolbarIconTooltip];
  v7 = [(MEMailComposeToolbarItemInfo *)v3 initWithLabel:v4 image:v5 tooltip:v6];

  return v7;
}

- (MEExtensionHostContext)extensionHostContext
{
  v3 = [(MERemoteExtension *)self extension];
  v4 = [(MERemoteExtension *)self contextUUID];
  v5 = [v3 _extensionContextForUUID:v4];

  return v5;
}

- (id)_remoteExtensionProxyFuture
{
  v3 = objc_opt_new();
  v4 = [(MERemoteExtension *)self _loadRemoteExtesionProxyFuture];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__MERemoteExtension__remoteExtensionProxyFuture__block_invoke;
  v15[3] = &unk_279859330;
  v5 = v3;
  v16 = v5;
  [v4 addSuccessBlock:v15];

  v6 = [(MERemoteExtension *)self _loadRemoteExtesionProxyFuture];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __48__MERemoteExtension__remoteExtensionProxyFuture__block_invoke_2;
  v13 = &unk_279858F20;
  v7 = v5;
  v14 = v7;
  [v6 addFailureBlock:&v10];

  v8 = [v7 future];

  return v8;
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
  v4 = [(MERemoteExtension *)self extension];

  if (!v4)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"MERemoteExtension.m" lineNumber:335 description:{@"Expected non-nil extension for %@", self}];
  }

  os_unfair_lock_lock(&self->_remoteExtensionProxyLock);
  remoteExtensionProxyPromise = self->_remoteExtensionProxyPromise;
  v6 = remoteExtensionProxyPromise;
  if (!remoteExtensionProxyPromise)
  {
    v7 = [MEMORY[0x277D071A8] promise];
    v8 = self->_remoteExtensionProxyPromise;
    self->_remoteExtensionProxyPromise = v7;

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
      v20 = self;
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

  v12 = [(EFPromise *)v9 future];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
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

- (id)interfaceForExtensionCapability:(id)a3
{
  v4 = a3;
  v5 = [(MERemoteExtension *)self capabilities];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = [(MERemoteExtension *)self _remoteExtensionProxyFuture];
  }

  else
  {
    v8 = MEMORY[0x277D07150];
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MEMailExtensionErrorDomain" code:2 userInfo:0];
    v7 = [v8 futureWithError:v9];
  }

  return v7;
}

- (void)getMailComposeExtensionViewControllerForSession:(id)a3 hostDelegate:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v6 = [(MERemoteExtension *)self capabilities];
  v7 = [v6 containsObject:@"MEComposeSessionHandler"];

  if ((v7 & 1) == 0)
  {
    (*(v8 + 2))(v8, 0, 0);
  }
}

- (MEMessageActionHandler_Private)synchronousMessageActionProviderInterface
{
  if (pthread_main_np())
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"MERemoteExtension.m" lineNumber:435 description:@"Current thread is main"];
  }

  return [(MERemoteExtension *)self _synchronousInterfaceForExtensionCapability:@"MEMessageActionHandler"];
}

- (MEContentBlocker_Private)synchronousContentBlockerInterface
{
  if (pthread_main_np())
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"MERemoteExtension.m" lineNumber:445 description:@"Current thread is main"];
  }

  return [(MERemoteExtension *)self _synchronousInterfaceForExtensionCapability:@"MEContentBlocker"];
}

- (void)getMailSignatureVerificationExtensionViewControllerForMessageSigners:(id)a3 completionHandler:(id)a4
{
  v7 = a4;
  v5 = [(MERemoteExtension *)self capabilities];
  v6 = [v5 containsObject:@"MEMessageSecurityHandler"];

  if ((v6 & 1) == 0)
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

- (void)getDecodedMailViewControllerForMessageContext:(id)a3 completionHandler:(id)a4
{
  v7 = a4;
  v5 = [(MERemoteExtension *)self capabilities];
  v6 = [v5 containsObject:@"MEMessageSecurityHandler"];

  if ((v6 & 1) == 0)
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

- (void)primaryActionClickedForMessageContext:(id)a3 completionHandler:(id)a4
{
  v7 = a4;
  v5 = [(MERemoteExtension *)self capabilities];
  v6 = [v5 containsObject:@"MEMessageSecurityHandler"];

  if ((v6 & 1) == 0)
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

- (id)_interfaceForExtensionCapability:(id)a3
{
  v4 = a3;
  v5 = [(MERemoteExtension *)self capabilities];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = [(MERemoteExtension *)self _remoteExtensionProxyFuture];
    v8 = [v7 resultWithTimeout:0 error:5.0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_synchronousInterfaceForExtensionCapability:(id)a3
{
  v3 = [(MERemoteExtension *)self _getInterfaceForExtensionCapability:a3 error:0];

  return v3;
}

- (id)_getInterfaceForExtensionCapability:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(MERemoteExtension *)self capabilities];
  v8 = [v7 containsObject:v6];

  if (!v8)
  {
    v12 = 0;
    goto LABEL_18;
  }

  v9 = [(MERemoteExtension *)self _loadRemoteExtesionProxyFuture];
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v23 = 0;
    v10 = &v23;
    v11 = [v9 resultIfAvailable:&v23];
  }

  else
  {
    v22 = 0;
    v10 = &v22;
    v11 = [v9 resultWithTimeout:&v22 error:10.0];
  }

  v12 = v11;
  v13 = *v10;
  v14 = v13;
  if (v13)
  {
    if (a4)
    {
      v15 = v13;
      *a4 = v14;
    }

    v16 = [v14 domain];
    if ([v16 isEqualToString:*MEMORY[0x277D07100]])
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
      v19 = [v14 ef_publicDescription];
      [(MERemoteExtension *)v19 _getInterfaceForExtensionCapability:buf error:v18];
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
  v3 = [(MERemoteExtension *)self extension];
  v6 = [v3 attributes];

  v4 = [v6 objectForKeyedSubscript:@"MailDataAccessRequirements"];
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
  v3 = [(MERemoteExtension *)self extension];
  v8 = [v3 attributes];

  v4 = [v8 objectForKeyedSubscript:@"MailDataAccessRequirements"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v4 = [v5 objectForKeyedSubscript:@"Body"];

    if (objc_opt_respondsToSelector())
    {
      v6 = [v4 integerValue];
      v7 = 1;
      if (v6 >= 1)
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
  v3 = [(MERemoteExtension *)self capabilities];
  v4 = [v2 setWithArray:v3];

  v5 = MEMORY[0x277CBEB98];
  v6 = +[MERemoteExtension allCapabilitiesRequiringMessageContentAccess];
  v7 = [v5 setWithArray:v6];

  LOBYTE(v6) = [v4 intersectsSet:v7];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MERemoteExtension *)self extensionID];
      v7 = [(MERemoteExtension *)v5 extensionID];
      v8 = [v6 isEqual:v7];
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
  v2 = [(MERemoteExtension *)self extensionID];
  v3 = [v2 hash];

  return v3;
}

- (NSString)ef_publicDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(MERemoteExtension *)self capabilities];
  v5 = [v4 componentsJoinedByString:{@", "}];
  v6 = [v3 stringWithFormat:@"[%@]", v5];

  v7 = MEMORY[0x277CCACA8];
  v8 = [(MERemoteExtension *)self extensionID];
  v9 = [(MERemoteExtension *)self displayName];
  v10 = [(MERemoteExtension *)self displayVersion];
  v11 = [v7 stringWithFormat:@"%@ - %@ - %@ - %@", v8, v9, v10, v6];

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
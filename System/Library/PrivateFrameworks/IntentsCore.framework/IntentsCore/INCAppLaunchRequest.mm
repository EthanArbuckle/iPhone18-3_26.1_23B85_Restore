@interface INCAppLaunchRequest
+ (id)removeDenyListedApplicationProxies:(id)proxies;
+ (id)specialElementIdentifierForBundleIdentifier:(id)identifier;
+ (void)initialize;
- (BOOL)_retainsSiri;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSupportedInCarPlay;
- (INCAppLaunchRequest)initWithAudioCallIntentForCarousel:(id)carousel error:(id *)p_isa;
- (INCAppLaunchRequest)initWithBundleIdentifier:(id)identifier options:(id)options URL:(id)l userActivity:(id)activity;
- (INCAppLaunchRequest)initWithBundleIdentifier:(id)identifier options:(id)options URL:(id)l userActivity:(id)activity retainsSiri:(BOOL)siri;
- (INCAppLaunchRequest)initWithURL:(id)l error:(id *)error;
- (id)URLOverrideForURL:(id)l;
- (id)description;
- (unint64_t)hash;
- (void)observeForAppLaunchWithTimeout:(double)timeout completionHandler:(id)handler;
- (void)performWithCompletionHandler:(id)handler;
@end

@implementation INCAppLaunchRequest

- (void)observeForAppLaunchWithTimeout:(double)timeout completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_alloc_init(INCDisplayLayoutMonitor);
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__867;
  v27[4] = __Block_byref_object_dispose__868;
  v8 = objc_alloc(MEMORY[0x277CD4300]);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __72__INCAppLaunchRequest_observeForAppLaunchWithTimeout_completionHandler___block_invoke;
  v24[3] = &unk_2797E8068;
  v9 = v7;
  v25 = v9;
  v10 = handlerCopy;
  v26 = v10;
  v28 = [v8 initWithTimeoutInterval:v24 timeoutHandler:timeout];
  v11 = objc_opt_class();
  bundleIdentifier = [(INCAppLaunchRequest *)self bundleIdentifier];
  v13 = [v11 specialElementIdentifierForBundleIdentifier:bundleIdentifier];

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __72__INCAppLaunchRequest_observeForAppLaunchWithTimeout_completionHandler___block_invoke_2;
  v19 = &unk_2797E8090;
  selfCopy = self;
  v14 = v13;
  v21 = v14;
  v15 = v10;
  v22 = v15;
  v23 = v27;
  [(INCDisplayLayoutMonitor *)v9 setTransitionHandler:&v16];
  [(INCDisplayLayoutMonitor *)v9 resume:v16];

  _Block_object_dispose(v27, 8);
}

uint64_t __72__INCAppLaunchRequest_observeForAppLaunchWithTimeout_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __72__INCAppLaunchRequest_observeForAppLaunchWithTimeout_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(getCARSessionStatusClass_870()) initAndWaitUntilSessionUpdated];
  v9 = [v8 currentSession];

  if (!v9 || ![*(a1 + 32) isSupportedInCarPlay] || objc_msgSend(v6, "isCarDisplay"))
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = [v7 elements];
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      v20 = v6;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          v16 = [v15 identifier];
          if ([v16 isEqualToString:*(a1 + 40)])
          {

LABEL_15:
            (*(*(a1 + 48) + 16))();
            [*(*(*(a1 + 56) + 8) + 40) cancel];
            v6 = v20;
            goto LABEL_16;
          }

          v17 = [v15 bundleIdentifier];
          v18 = [v17 isEqualToString:*(a1 + 40)];

          if (v18)
          {
            goto LABEL_15;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
        v6 = v20;
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __72__INCAppLaunchRequest_performWithService_retainsSiri_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    v8 = [v5 auditToken];
    v9 = v8;
    if (v8)
    {
      [v8 realToken];
    }

    else
    {
      memset(v11, 0, sizeof(v11));
    }

    [v7 inc_associateFileURLsWithAuditToken:v11];
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v6 == 0, v6);
  }
}

- (void)performWithCompletionHandler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  serviceWithDefaultShellEndpoint = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
  initAndWaitUntilSessionUpdated = [objc_alloc(getCARSessionStatusClass_870()) initAndWaitUntilSessionUpdated];
  currentSession = [initAndWaitUntilSessionUpdated currentSession];

  if (!currentSession || ![(INCAppLaunchRequest *)self isSupportedInCarPlay])
  {
    goto LABEL_11;
  }

  v15 = 0;
  if (!CarPlayServicesLibraryCore_frameworkLibrary_882)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v17 = __CarPlayServicesLibraryCore_block_invoke_883;
    v18 = &__block_descriptor_40_e5_v8__0l;
    v19 = &v15;
    v20 = xmmword_2797E80E0;
    v21 = 0;
    CarPlayServicesLibraryCore_frameworkLibrary_882 = _sl_dlopen();
    v8 = v15;
    if (CarPlayServicesLibraryCore_frameworkLibrary_882)
    {
      if (!v15)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v14 = v15;
      v8 = abort_report_np();
    }

    free(v8);
  }

LABEL_6:
  dashboardService = [MEMORY[0x277D0AD78] dashboardService];
  v10 = dashboardService;
  if (dashboardService)
  {
    v11 = dashboardService;

    serviceWithDefaultShellEndpoint = v11;
  }

  else
  {
    v12 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[INCAppLaunchRequest performWithCompletionHandler:]";
      _os_log_error_impl(&dword_255503000, v12, OS_LOG_TYPE_ERROR, "%s Failed to get the CarPlay dashboard service (is the process properly entitled?). Falling back to the default service.", &buf, 0xCu);
    }
  }

LABEL_11:
  [(INCAppLaunchRequest *)self performWithService:serviceWithDefaultShellEndpoint retainsSiri:[(INCAppLaunchRequest *)self retainsSiri] completionHandler:handlerCopy];

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)isSupportedInCarPlay
{
  bundleIdentifier = [(INCAppLaunchRequest *)self bundleIdentifier];
  v4 = [(INCAppLaunchRequest *)self URL];
  if (v4)
  {
    v5 = [INCCarPlayUtils appIsSupportedInCarPlayWithBundleId:bundleIdentifier hasPayload:1];
  }

  else
  {
    userActivity = [(INCAppLaunchRequest *)self userActivity];
    v5 = [INCCarPlayUtils appIsSupportedInCarPlayWithBundleId:bundleIdentifier hasPayload:userActivity != 0];
  }

  return v5;
}

- (id)URLOverrideForURL:(id)l
{
  v17[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  scheme = [lCopy scheme];
  if ([scheme isEqualToString:@"https"])
  {
  }

  else
  {
    scheme2 = [lCopy scheme];
    v6 = [scheme2 isEqualToString:@"http"];

    if (!v6)
    {
      goto LABEL_6;
    }
  }

  host = [lCopy host];
  v8 = [host isEqualToString:@"facetime.apple.com"];

  if (v8)
  {
    v9 = objc_opt_new();
    [v9 setScheme:@"facetime-open-link"];
    v10 = objc_alloc(MEMORY[0x277CCAD18]);
    absoluteString = [lCopy absoluteString];
    v12 = [v10 initWithName:@"link" value:absoluteString];
    v17[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [v9 setQueryItems:v13];

    v14 = [v9 URL];

    goto LABEL_7;
  }

LABEL_6:
  v14 = 0;
LABEL_7:

  v15 = *MEMORY[0x277D85DE8];

  return v14;
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
      if ([(NSString *)self->_bundleIdentifier isEqual:v5->_bundleIdentifier]&& [(NSDictionary *)self->_options isEqual:v5->_options]&& ((URL = self->_URL, URL == v5->_URL) || [(NSURL *)URL isEqual:?]))
      {
        userActivity = self->_userActivity;
        if (userActivity == v5->_userActivity)
        {
          v8 = 1;
        }

        else
        {
          v8 = [(NSUserActivity *)userActivity isEqual:?];
        }
      }

      else
      {
        v8 = 0;
      }
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
  v3 = [(NSString *)self->_bundleIdentifier hash];
  v4 = [(NSDictionary *)self->_options hash]^ v3;
  v5 = [(NSURL *)self->_URL hash];
  return v4 ^ v5 ^ [(NSUserActivity *)self->_userActivity hash];
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" {\n    bundleIdentifier = %@, \n    options = %@, \n    URL = %@, \n    userActivity = %@\n}", self->_bundleIdentifier, self->_options, self->_URL, self->_userActivity];
  v7.receiver = self;
  v7.super_class = INCAppLaunchRequest;
  v4 = [(INCAppLaunchRequest *)&v7 description];
  v5 = [v4 stringByAppendingString:v3];

  return v5;
}

- (BOOL)_retainsSiri
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getAFIsPersistentSiriAvailableSymbolLoc_ptr_893;
  v9 = getAFIsPersistentSiriAvailableSymbolLoc_ptr_893;
  if (!getAFIsPersistentSiriAvailableSymbolLoc_ptr_893)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __getAFIsPersistentSiriAvailableSymbolLoc_block_invoke_894;
    v5[3] = &unk_2797E8190;
    v5[4] = &v6;
    __getAFIsPersistentSiriAvailableSymbolLoc_block_invoke_894(v5);
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v4);
  }

  return v2();
}

- (INCAppLaunchRequest)initWithBundleIdentifier:(id)identifier options:(id)options URL:(id)l userActivity:(id)activity retainsSiri:(BOOL)siri
{
  identifierCopy = identifier;
  optionsCopy = options;
  lCopy = l;
  activityCopy = activity;
  v26.receiver = self;
  v26.super_class = INCAppLaunchRequest;
  v16 = [(INCAppLaunchRequest *)&v26 init];
  if (v16)
  {
    v17 = [identifierCopy copy];
    bundleIdentifier = v16->_bundleIdentifier;
    v16->_bundleIdentifier = v17;

    v19 = [optionsCopy copy];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = MEMORY[0x277CBEC10];
    }

    objc_storeStrong(&v16->_options, v21);

    v22 = [lCopy copy];
    URL = v16->_URL;
    v16->_URL = v22;

    objc_storeStrong(&v16->_userActivity, activity);
    v16->_retainsSiri = siri;
    v24 = v16;
  }

  return v16;
}

- (INCAppLaunchRequest)initWithBundleIdentifier:(id)identifier options:(id)options URL:(id)l userActivity:(id)activity
{
  activityCopy = activity;
  lCopy = l;
  optionsCopy = options;
  identifierCopy = identifier;
  v14 = [(INCAppLaunchRequest *)self initWithBundleIdentifier:identifierCopy options:optionsCopy URL:lCopy userActivity:activityCopy retainsSiri:[(INCAppLaunchRequest *)self _retainsSiri]];

  return v14;
}

- (INCAppLaunchRequest)initWithURL:(id)l error:(id *)error
{
  v48[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v8 = [defaultWorkspace URLOverrideForURL:lCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;

    lCopy = v10;
  }

  v11 = [(INCAppLaunchRequest *)self URLOverrideForURL:lCopy];

  if (v11)
  {
    v12 = v11;

    lCopy = v12;
  }

  v40 = 0;
  v13 = [MEMORY[0x277CC1E48] appLinksWithURL:lCopy limit:2 error:&v40];
  v14 = v40;
  if ([v13 count])
  {
    firstObject = [v13 firstObject];
    if ([v13 count] >= 2)
    {
      v16 = *MEMORY[0x277CD38C8];
      if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
      {
        v30 = v16;
        targetApplicationProxy = [firstObject targetApplicationProxy];
        bundleIdentifier = [targetApplicationProxy bundleIdentifier];
        *buf = 136315394;
        v42 = "[INCAppLaunchRequest initWithURL:error:]";
        v43 = 2114;
        v44 = bundleIdentifier;
        _os_log_error_impl(&dword_255503000, v30, OS_LOG_TYPE_ERROR, "%s Multiple app links are available to handle the URL, picking the first one: %{public}@", buf, 0x16u);
      }
    }

    targetApplicationProxy2 = [firstObject targetApplicationProxy];
    bundleIdentifier2 = [targetApplicationProxy2 bundleIdentifier];
    v19 = [firstObject URL];
    self = [(INCAppLaunchRequest *)self initWithBundleIdentifier:bundleIdentifier2 options:0 URL:v19 userActivity:0];

    selfCopy2 = self;
    goto LABEL_21;
  }

  if (v14)
  {
    v21 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v42 = "[INCAppLaunchRequest initWithURL:error:]";
      v43 = 2112;
      v44 = v14;
      _os_log_error_impl(&dword_255503000, v21, OS_LOG_TYPE_ERROR, "%s Failed to get app links for URL: %@", buf, 0x16u);
    }
  }

  v22 = [defaultWorkspace applicationsAvailableForOpeningURL:lCopy];
  firstObject = [INCAppLaunchRequest removeDenyListedApplicationProxies:v22];

  if ([firstObject count])
  {
    targetApplicationProxy2 = [firstObject firstObject];
    if ([firstObject count] >= 2)
    {
      v23 = *MEMORY[0x277CD38C8];
      if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
      {
        log = v23;
        scheme = [lCopy scheme];
        bundleIdentifier3 = [targetApplicationProxy2 bundleIdentifier];
        *buf = 136315650;
        v42 = "[INCAppLaunchRequest initWithURL:error:]";
        v43 = 2114;
        v44 = scheme;
        v45 = 2114;
        v46 = bundleIdentifier3;
        _os_log_error_impl(&dword_255503000, log, OS_LOG_TYPE_ERROR, "%s Multiple applications are available to handle the %{public}@ scheme, picking the first one: %{public}@", buf, 0x20u);
      }
    }

    bundleIdentifier2 = [targetApplicationProxy2 bundleIdentifier];
    self = [(INCAppLaunchRequest *)self initWithBundleIdentifier:bundleIdentifier2 options:0 URL:lCopy userActivity:0];
    selfCopy2 = self;
    goto LABEL_21;
  }

  v24 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
  {
    v33 = v24;
    scheme2 = [lCopy scheme];
    *buf = 136315394;
    v42 = "[INCAppLaunchRequest initWithURL:error:]";
    v43 = 2114;
    v44 = scheme2;
    _os_log_error_impl(&dword_255503000, v33, OS_LOG_TYPE_ERROR, "%s No applications are available to handle the %{public}@ scheme", buf, 0x16u);

    if (error)
    {
      goto LABEL_20;
    }

LABEL_24:
    selfCopy2 = 0;
    goto LABEL_22;
  }

  if (!error)
  {
    goto LABEL_24;
  }

LABEL_20:
  v25 = MEMORY[0x277CCACA8];
  [lCopy scheme];
  v26 = loga = error;
  targetApplicationProxy2 = [v25 stringWithFormat:@"No applications are available to handle the %@ scheme", v26];

  v36 = MEMORY[0x277CCA9B8];
  v27 = *MEMORY[0x277CD3848];
  v47 = *MEMORY[0x277CCA068];
  v48[0] = targetApplicationProxy2;
  bundleIdentifier2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:&v47 count:1];
  [v36 errorWithDomain:v27 code:2005 userInfo:bundleIdentifier2];
  loga->isa = selfCopy2 = 0;
LABEL_21:

LABEL_22:
  v28 = *MEMORY[0x277D85DE8];
  return selfCopy2;
}

- (INCAppLaunchRequest)initWithAudioCallIntentForCarousel:(id)carousel error:(id *)p_isa
{
  v33 = *MEMORY[0x277D85DE8];
  carouselCopy = carousel;
  contacts = [carouselCopy contacts];
  firstObject = [contacts firstObject];

  personHandle = [firstObject personHandle];
  v10 = personHandle;
  if (!personHandle)
  {
    v19 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      v25 = v19;
      _className = [carouselCopy _className];
      *buf = 136315394;
      v30 = "[INCAppLaunchRequest initWithAudioCallIntentForCarousel:error:]";
      v31 = 2114;
      v32 = _className;
      _os_log_error_impl(&dword_255503000, v25, OS_LOG_TYPE_ERROR, "%s %{public}@ is missing a personHandle to call", buf, 0x16u);

      if (!p_isa)
      {
        goto LABEL_9;
      }
    }

    else if (!p_isa)
    {
      goto LABEL_9;
    }

    v20 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CD3848];
    v27 = *MEMORY[0x277CCA068];
    v28 = @"Missing personHandle from INStartAudioCallIntent";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    *p_isa = [v20 errorWithDomain:v21 code:3002 userInfo:v22];

    p_isa = 0;
    goto LABEL_9;
  }

  value = [personHandle value];
  uRLPathAllowedCharacterSet = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
  v13 = [value stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];

  preferredCallProvider = [carouselCopy preferredCallProvider];
  v15 = MEMORY[0x277CBEBC0];
  if (preferredCallProvider == 2)
  {
    v16 = @"facetime://%@";
  }

  else
  {
    v16 = @"tel://%@";
  }

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:v16, v13];
  v18 = [v15 URLWithString:v17];

  self = [(INCAppLaunchRequest *)self initWithBundleIdentifier:@"com.apple.Carousel" options:0 URL:v18 userActivity:0];
  p_isa = &self->super.isa;
LABEL_9:

  v23 = *MEMORY[0x277D85DE8];
  return p_isa;
}

+ (id)removeDenyListedApplicationProxies:(id)proxies
{
  v21 = *MEMORY[0x277D85DE8];
  proxiesCopy = proxies;
  v4 = [proxiesCopy mutableCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = proxiesCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        bundleIdentifier = [v10 bundleIdentifier];
        v12 = [&unk_28676D670 containsObject:bundleIdentifier];

        if (v12)
        {
          [v4 removeObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)specialElementIdentifierForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [&unk_28676D648 objectForKey:identifierCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = identifierCopy;
  }

  v7 = v6;

  return v6;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    INLogInitIfNeeded();
  }
}

@end
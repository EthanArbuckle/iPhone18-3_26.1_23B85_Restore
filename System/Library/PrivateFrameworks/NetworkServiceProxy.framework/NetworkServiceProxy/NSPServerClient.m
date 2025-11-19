@interface NSPServerClient
+ (id)getErrorFromDict:(uint64_t)a1;
- (BOOL)checkOriginAllowedAsThirdParty:(id)a3;
- (BOOL)removePrivacyProxyPolicy;
- (id)getAgentUUIDForType:(int64_t)a3;
- (id)getConnection;
- (id)getTokenFetchConnection;
- (id)initWithCallbackQueue:(id)a1;
- (void)addAuxiliaryAuthenticationData:(id)a3 type:(unint64_t)a4 label:(id)a5 cacheKey:(id)a6;
- (void)addOneTimeToken:(id)a3 oneTimeTokenSalt:(id)a4 longLivedToken:(id)a5 toCacheForFetcher:(id)a6;
- (void)addToken:(id)a3 toCacheForFetcher:(id)a4;
- (void)checkRemainingCostQuotaWithFetcher:(id)a3 allowRetry:(BOOL)a4 completionHandler:(id)a5;
- (void)convertPrivacyProxyConfigurationWithCompletionHandler:(id)a3 completionHandler:(id)a4;
- (void)dumpPrivacyProxyTokenEventsWithCompletionHandler:(id)a3 mostRecent:(BOOL)a4 limit:(unint64_t)a5 dumpStats:(BOOL)a6 completionHandler:(id)a7;
- (void)fetchAuxiliaryAuthenticationDataFromCacheForType:(unint64_t)a3 label:(id)a4 cacheKey:(id)a5 completionHandler:(id)a6;
- (void)fetchCurrentConfigurationWithCompletionHandler:(id)a3;
- (void)fetchKnownPrivateAccessTokenKeyWithFetcher:(id)a3 allowRetry:(BOOL)a4 completionHandler:(id)a5;
- (void)fetchNewConfigurationWithCompletionHandler:(id)a3;
- (void)fetchPrivateAccessTokenAndAuxAuthWithFetcher:(id)a3 allowRetry:(BOOL)a4 completionHandler:(id)a5;
- (void)fetchPrivateAccessTokenPairWithFetcher:(id)a3 allowRetry:(BOOL)a4 completionHandler:(id)a5;
- (void)fetchPrivateAccessTokenWithFetcher:(id)a3 allowRetry:(BOOL)a4 completionHandler:(id)a5;
- (void)getForceFallbackWithCompletionHandler:(id)a3;
- (void)getGeohashSharingPreferenceWithCompletionHandler:(id)a3;
- (void)getOverrideIngressProxyWithCompletionHandler:(id)a3;
- (void)getOverrideProxiedContentMapEnabled:(id)a3 completionHandler:(id)a4;
- (void)getPreferredObliviousProxyWithCompletionHandler:(id)a3;
- (void)getPreferredProxyWithCompletionHandler:(id)a3;
- (void)getPreferredResolverWithCompletionHandler:(id)a3;
- (void)getPrivacyProxyAccountTypeWithCompletionHandler:(id)a3;
- (void)getPrivacyProxyAppStatusesWithCompletionHandler:(id)a3;
- (void)getPrivacyProxyConfiguration:(id)a3;
- (void)getPrivacyProxyDomainFilters:(id)a3;
- (void)getPrivacyProxyEffectiveUserTierWithCompletionHandler:(id)a3;
- (void)getPrivacyProxyInfoWithCompletionHandler:(id)a3;
- (void)getPrivacyProxyPolicyWithCompletionHandler:(id)a3;
- (void)getPrivacyProxyServiceStatusTimelineWithCompletionHandler:(id)a3;
- (void)getPrivacyProxyServiceStatusWithCompletionHandler:(id)a3;
- (void)getPrivacyProxyStatusWithCompletionHandler:(id)a3;
- (void)getPrivacyProxyTrafficStateWithCompletionHandler:(id)a3;
- (void)getPrivacyProxyUserTierWithCompletionHandler:(id)a3;
- (void)getPrivateAccessTokensEnabledWithCompletionHandler:(id)a3;
- (void)locationAuthorizationStatusWithCompletionHandler:(id)a3;
- (void)mergePrivacyProxyPolicy:(id)a3;
- (void)overrideIngressProxy:(id)a3 fallbackProxy:(id)a4 key:(id)a5 completionHandler:(id)a6;
- (void)overridePreferredObliviousProxy:(id)a3 completionHandler:(id)a4;
- (void)overridePreferredProxy:(id)a3 completionHandler:(id)a4;
- (void)overridePreferredResolver:(id)a3 completionHandler:(id)a4;
- (void)overrideProxiedContentMap:(id)a3 enabled:(BOOL)a4 completionHandler:(id)a5;
- (void)privateAccessTokensAllowTools:(BOOL)a3 completionHandler:(id)a4;
- (void)reportPrivacyProxyNetworkStatus:(id)a3 completionHandler:(id)a4;
- (void)reportPrivacyProxyServiceStatus:(unint64_t)a3 completionHandler:(id)a4;
- (void)resetConfigurationInternalSettings:(id)a3;
- (void)sendRTCReport:(int64_t)a3 errorCode:(int64_t)a4 url:(id)a5 completionHandler:(id)a6;
- (void)setCurrentConfiguration:(id)a3 withCompletionHandler:(id)a4;
- (void)setForceFallback:(BOOL)a3 completionHandler:(id)a4;
- (void)setFreeUserTierUntilTomorrowWithCompletionHandler:(id)a3;
- (void)setGeohashOverride:(id)a3 completionHandler:(id)a4;
- (void)setGeohashSharingPreference:(BOOL)a3 completionHandler:(id)a4;
- (void)setInProcessFlowDivert:(BOOL)a3 completionHandler:(id)a4;
- (void)setLocationMonitorInterval:(double)a3;
- (void)setPreferredPathRoutingEnabled:(BOOL)a3 completionHandler:(id)a4;
- (void)setPrivacyProxyAppStatus:(unint64_t)a3 bundleIdentifier:(id)a4 path:(id)a5 completionHandler:(id)a6;
- (void)setPrivacyProxyConfiguration:(id)a3 completionHandler:(id)a4;
- (void)setPrivacyProxyPolicy:(id)a3 completionHandler:(id)a4;
- (void)setPrivacyProxyStatus:(BOOL)a3 completionHandler:(id)a4;
- (void)setPrivacyProxyTokenEventsProactiveTokenFetchParams:(id)a3 lowerTokenCountThresholdStr:(id)a4 lowerTokenCountProbabilityStr:(id)a5 statsDurationStr:(id)a6 upperLWMCountThresholdStr:(id)a7 upperLWMCountProbabilityOffsetStr:(id)a8 completionHandler:(id)a9;
- (void)setPrivacyProxyTrafficState:(unint64_t)a3 proxyTraffic:(unint64_t)a4 completionHandler:(id)a5;
- (void)setPrivacyProxyUserTier:(unint64_t)a3 completionHandler:(id)a4;
- (void)setPrivateAccessTokensEnabled:(BOOL)a3 completionHandler:(id)a4;
- (void)setProxiedContentMapDoHBootstrapEnabled:(BOOL)a3 completionHandler:(id)a4;
- (void)startLocationMonitor;
- (void)startProxyToMPTCPConverterProxyWithCompletionHandler:(id)a3;
- (void)stopLocationMonitor;
- (void)stopProxyToMPTCPConverterProxyWithCompletionHandler:(id)a3;
@end

@implementation NSPServerClient

- (id)getConnection
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 8));
    v2 = *(a1 + 24);
    if (!v2)
    {
      v3 = [@"com.apple.networkserviceproxy" UTF8String];
      Property = objc_getProperty(a1, v4, 16, 1);
      mach_service = xpc_connection_create_mach_service(v3, Property, 0);
      v7 = mach_service;
      if (mach_service)
      {
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __32__NSPServerClient_getConnection__block_invoke;
        v13[3] = &unk_1E7A308F8;
        v13[4] = a1;
        v8 = mach_service;
        v14 = v8;
        xpc_connection_set_event_handler(v8, v13);
        xpc_connection_resume(v8);
        objc_storeStrong((a1 + 24), v7);
      }

      else
      {
        v9 = nplog_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v16 = [@"com.apple.networkserviceproxy" UTF8String];
          _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to create an XPC connection to %s", buf, 0xCu);
        }
      }

      v2 = *(a1 + 24);
    }

    v10 = v2;
    os_unfair_lock_unlock((a1 + 8));
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)initWithCallbackQueue:(id)a1
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = NSPServerClient;
    a1 = objc_msgSendSuper2(&v7, sel_init);
    if (a1)
    {
      if (v3)
      {
        v4 = v3;
      }

      else
      {
        v4 = dispatch_queue_create("NSPServerClient queue", 0);
      }

      v5 = *(a1 + 2);
      *(a1 + 2) = v4;

      *(a1 + 2) = 0;
    }
  }

  return a1;
}

void __32__NSPServerClient_getConnection__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3 && MEMORY[0x1B2708030](v3) == MEMORY[0x1E69E9E98])
  {
    os_unfair_lock_lock((*(a1 + 32) + 8));
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 24);
    }

    else
    {
      v6 = 0;
    }

    if (v6 == *(a1 + 40))
    {
      v7 = nplog_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        string = xpc_dictionary_get_string(v4, *MEMORY[0x1E69E9E28]);
        v10 = 136315138;
        v11 = string;
        _os_log_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_INFO, "Got an error on the XPC connection: %s", &v10, 0xCu);
      }

      objc_storeStrong((*(a1 + 32) + 24), 0);
      v5 = *(a1 + 32);
    }

    os_unfair_lock_unlock((v5 + 8));
    xpc_connection_cancel(*(a1 + 40));
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __50__NSPServerClient_isAllowedToUseFetchTokenService__block_invoke()
{
  getpid();
  v0 = *MEMORY[0x1E69E9BD0];
  result = sandbox_check();
  if (!result)
  {
    _MergedGlobals_25 = 1;
  }

  return result;
}

- (id)getTokenFetchConnection
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (qword_1ED4BF5D8 != -1)
    {
      dispatch_once(&qword_1ED4BF5D8, &__block_literal_global_1);
    }

    if (_MergedGlobals_25)
    {
      os_unfair_lock_lock((a1 + 8));
      v3 = *(a1 + 32);
      if (!v3)
      {
        Property = objc_getProperty(a1, v2, 16, 1);
        mach_service = xpc_connection_create_mach_service("com.apple.networkserviceproxy.fetch-token", Property, 0);
        v6 = mach_service;
        if (mach_service)
        {
          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 3221225472;
          v13[2] = __42__NSPServerClient_getTokenFetchConnection__block_invoke;
          v13[3] = &unk_1E7A308F8;
          v13[4] = a1;
          v7 = mach_service;
          v14 = v7;
          xpc_connection_set_event_handler(v7, v13);
          xpc_connection_resume(v7);
          objc_storeStrong((a1 + 32), v6);
          v8 = nplog_obj();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            v16 = "com.apple.networkserviceproxy.fetch-token";
            _os_log_debug_impl(&dword_1AE7E2000, v8, OS_LOG_TYPE_DEBUG, "Created an XPC connection to %s", buf, 0xCu);
          }
        }

        else
        {
          v10 = nplog_obj();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v16 = "com.apple.networkserviceproxy.fetch-token";
            _os_log_error_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_ERROR, "Failed to create an XPC connection to %s", buf, 0xCu);
          }
        }

        v3 = *(a1 + 32);
      }

      v9 = v3;
      os_unfair_lock_unlock((a1 + 8));
    }

    else
    {
      v9 = [(NSPServerClient *)a1 getConnection];
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

void __42__NSPServerClient_getTokenFetchConnection__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3 && MEMORY[0x1B2708030](v3) == MEMORY[0x1E69E9E98])
  {
    os_unfair_lock_lock((*(a1 + 32) + 8));
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 32);
    }

    else
    {
      v6 = 0;
    }

    if (v6 == *(a1 + 40))
    {
      v7 = nplog_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        string = xpc_dictionary_get_string(v4, *MEMORY[0x1E69E9E28]);
        v10 = 136315138;
        v11 = string;
        _os_log_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_INFO, "Got an error on the XPC connection: %s", &v10, 0xCu);
      }

      objc_storeStrong((*(a1 + 32) + 32), 0);
      v5 = *(a1 + 32);
    }

    os_unfair_lock_unlock((v5 + 8));
    xpc_connection_cancel(*(a1 + 40));
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)fetchCurrentConfigurationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "Requesting fetch configuration", buf, 2u);
  }

  v6 = [(NSPServerClient *)self getConnection];
  if (v6)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 1);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __66__NSPServerClient_fetchCurrentConfigurationWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v10 = v4;
    xpc_connection_send_message_with_reply(v6, v7, &self->super, handler);
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

void __66__NSPServerClient_fetchCurrentConfigurationWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7 && MEMORY[0x1B2708030]() == MEMORY[0x1E69E9E80])
  {
    v4 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v5 = get_nsdata_from_xpc_object(v7, "NSPServerConfiguration");
    if (v5)
    {
      v3 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v4 fromData:v5 error:0];
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

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

- (void)fetchNewConfigurationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "Requesting a new fetch of the configuration from the server", buf, 2u);
  }

  v6 = [(NSPServerClient *)self getConnection];
  if (v6)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 74);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __62__NSPServerClient_fetchNewConfigurationWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v10 = v4;
    xpc_connection_send_message_with_reply(v6, v7, &self->super, handler);
  }
}

void __62__NSPServerClient_fetchNewConfigurationWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3 && MEMORY[0x1B2708030](v3) == MEMORY[0x1E69E9E80])
  {
    v5 = xpc_dictionary_get_BOOL(v4, "NSPServerCommandResult");
    v6 = nplog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9[0] = 67109120;
      v9[1] = v5;
      _os_log_debug_impl(&dword_1AE7E2000, v6, OS_LOG_TYPE_DEBUG, "Attempt to fetch new configuration returned %d", v9, 8u);
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)resetConfigurationInternalSettings:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__NSPServerClient_resetConfigurationInternalSettings___block_invoke;
  v6[3] = &unk_1E7A30970;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(NSPServerClient *)self fetchCurrentConfigurationWithCompletionHandler:v6];
}

void __54__NSPServerClient_resetConfigurationInternalSettings___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setConfigServerHost:@"none"];
  [v3 setOverrideConfigServerPath:0];
  [v3 setConfigServerHeaders:@"none"];
  [v3 setIgnoreInvalidCerts:0];
  [v3 setIgnoreSignature:0];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__NSPServerClient_resetConfigurationInternalSettings___block_invoke_2;
  v5[3] = &unk_1E7A30948;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v4 setCurrentConfiguration:v3 withCompletionHandler:v5];
}

void __54__NSPServerClient_resetConfigurationInternalSettings___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1AE7E2000, v4, OS_LOG_TYPE_INFO, "Set of config while resetting internal settings returned: %@", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3 == 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setCurrentConfiguration:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = nplog_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v8, OS_LOG_TYPE_DEBUG, "Requesting set configuration", buf, 2u);
  }

  v9 = [(NSPServerClient *)self getConnection];
  if (v9)
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v10, "NSPServerCommandType", 2);
    v11 = v10;
    v12 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];
    if (v12)
    {
      v13 = v11;
      v14 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_value(v13, "NSPServerConfiguration", v14);
    }

    if (self)
    {
      self = objc_getProperty(self, v15, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __65__NSPServerClient_setCurrentConfiguration_withCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v17 = v7;
    xpc_connection_send_message_with_reply(v9, v11, &self->super, handler);
  }

  else
  {
    (*(v7 + 2))(v7, @"IPC failed");
  }
}

void __65__NSPServerClient_setCurrentConfiguration_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  if (xdict && MEMORY[0x1B2708030]() == MEMORY[0x1E69E9E80])
  {
    string = xpc_dictionary_get_string(xdict, "NSPServerErrorString");
    if (string)
    {
      string = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:string];
    }
  }

  else
  {
    string = 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, string);
  }
}

- (void)getPrivacyProxyConfiguration:(id)a3
{
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "get privacy proxy configuration called", buf, 2u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__NSPServerClient_getPrivacyProxyConfiguration___block_invoke;
  v7[3] = &unk_1E7A30998;
  v8 = v4;
  v6 = v4;
  [(NSPServerClient *)self fetchCurrentConfigurationWithCompletionHandler:v7];
}

void __48__NSPServerClient_getPrivacyProxyConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v26 = v3;
  if (v3)
  {
    v4 = [v3 proxyConfiguration];
    v5 = [v4 dictionaryRepresentation];

    v6 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v5];
    v7 = [v26 enabled];
    [v6 setValue:v7 forKey:@"privacyProxyEnabled"];

    v8 = [v26 configServerHost];
    [v6 setValue:v8 forKey:@"configServer"];

    v9 = [v26 configServerEnabled];
    [v6 setValue:v9 forKey:@"configFetchEnabled"];

    v10 = [v26 userTier];
    v11 = [v10 intValue];
    if (v11 >= 3)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v11];
    }

    else
    {
      v12 = off_1E7A309E0[v11];
    }

    [v6 setValue:v12 forKey:@"userTier"];
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v26, "ignoreInvalidCerts")}];
    [v6 setValue:v13 forKey:@"ignoreInvalidCerts"];

    v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v26, "ignoreSignature")}];
    [v6 setValue:v14 forKey:@"ignoreConfigSignature"];

    v15 = MEMORY[0x1E696AB78];
    v16 = [v26 configurationFetchDate];
    v17 = [v15 localizedStringFromDate:v16 dateStyle:1 timeStyle:2];
    [v6 setValue:v17 forKey:@"configFetchDate"];

    v18 = [v26 proxyTrafficState];
    v19 = [NSPConfiguration proxyTrafficStateToString:v18];
    [v6 setValue:v19 forKey:@"proxyTraffic"];

    v20 = [v5 objectForKey:@"trustedNetworkDiscoveredProxies"];
    if (v20)
    {
      v21 = v20;
      v22 = [v5 objectForKey:@"trustedNetworkDiscoveredProxies"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v24 = [v5 objectForKey:@"trustedNetworkDiscoveredProxies"];
        [v6 setValue:v24 forKey:@"trustedNetworkDiscoveredProxies"];
      }
    }

    v25 = [v26 cloudSubscriptionCheckEnabled];
    [v6 setValue:v25 forKey:@"cloudSubscriptionCheckEnabled"];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)setPrivacyProxyConfiguration:(id)a3 completionHandler:(id)a4
{
  v4 = MEMORY[0x1EEE9AC00](self, a2, a3, a4);
  v6 = v5;
  selfa = v4;
  v891 = *MEMORY[0x1E69E9840];
  v8 = v7;
  v9 = v6;
  v10 = nplog_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_DEBUG, "Requesting set proxy configuration", buf, 2u);
  }

  v11 = 0x1E695D000uLL;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v702 = v9;
    v713 = objc_alloc_init(NSPPrivacyProxyConfiguration);
    v12 = [v8 objectForKeyedSubscript:@"version"];
    if (v12)
    {
      v13 = v12;
      v14 = [v8 objectForKeyedSubscript:@"version"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v16 = [v8 objectForKeyedSubscript:@"version"];
        -[NSPPrivacyProxyConfiguration setVersion:](v713, "setVersion:", [v16 unsignedIntValue]);
      }
    }

    v17 = [v8 objectForKeyedSubscript:{@"enabled", v702}];
    if (v17)
    {
      v18 = v17;
      v19 = [v8 objectForKeyedSubscript:@"enabled"];
      objc_opt_class();
      v20 = objc_opt_isKindOfClass();

      if (v20)
      {
        v21 = [v8 objectForKeyedSubscript:@"enabled"];
        -[NSPPrivacyProxyConfiguration setEnabled:](v713, "setEnabled:", [v21 BOOLValue]);
      }
    }

    v22 = [v8 objectForKeyedSubscript:@"disableUntil"];
    if (v22)
    {
      v23 = v22;
      v24 = [v8 objectForKeyedSubscript:@"disableUntil"];
      objc_opt_class();
      v25 = objc_opt_isKindOfClass();

      if (v25)
      {
        v26 = [v8 objectForKeyedSubscript:@"disableUntil"];
        -[NSPPrivacyProxyConfiguration setDisableUntil:](v713, "setDisableUntil:", [v26 unsignedLongValue]);
      }
    }

    v712 = objc_alloc_init(NSPPrivacyProxyAuthenticationInfo);
    [(NSPPrivacyProxyConfiguration *)v713 setAuthInfo:?];
    v27 = [v8 objectForKeyedSubscript:@"authInfo"];
    v711 = v8;
    if (v27)
    {
      v28 = v27;
      v29 = [v8 objectForKeyedSubscript:@"authInfo"];
      objc_opt_class();
      v30 = objc_opt_isKindOfClass();

      if (v30)
      {
        v31 = [v8 objectForKeyedSubscript:@"authInfo"];
        v32 = [v31 objectForKeyedSubscript:@"authURL"];
        v33 = 0x1E696A000uLL;
        v704 = v31;
        if (v32)
        {
          v34 = v32;
          v35 = [v31 objectForKeyedSubscript:@"authURL"];
          objc_opt_class();
          v36 = objc_opt_isKindOfClass();

          v31 = v704;
          if (v36)
          {
            v37 = [v704 objectForKeyedSubscript:@"authURL"];
            [(NSPPrivacyProxyAuthenticationInfo *)v712 setAuthURL:v37];
          }
        }

        v38 = [v31 objectForKeyedSubscript:@"accessTokenURL"];
        if (v38)
        {
          v39 = v38;
          v40 = [v31 objectForKeyedSubscript:@"accessTokenURL"];
          objc_opt_class();
          v41 = objc_opt_isKindOfClass();

          v31 = v704;
          if (v41)
          {
            v42 = [v704 objectForKeyedSubscript:@"accessTokenURL"];
            [(NSPPrivacyProxyAuthenticationInfo *)v712 setAccessTokenURL:v42];
          }
        }

        v43 = [v31 objectForKeyedSubscript:@"accessTokenTypes"];
        v44 = 0x1E695D000uLL;
        if (v43)
        {
          v45 = v43;
          v46 = [v31 objectForKeyedSubscript:@"accessTokenTypes"];
          objc_opt_class();
          v47 = objc_opt_isKindOfClass();

          v31 = v704;
          if (v47)
          {
            [v704 objectForKeyedSubscript:@"accessTokenTypes"];
            v857 = 0u;
            v858 = 0u;
            v859 = 0u;
            v48 = v860 = 0u;
            v49 = [v48 countByEnumeratingWithState:&v857 objects:v890 count:16];
            if (v49)
            {
              v50 = v49;
              v51 = *v858;
              do
              {
                for (i = 0; i != v50; ++i)
                {
                  if (*v858 != v51)
                  {
                    objc_enumerationMutation(v48);
                  }

                  v53 = *(*(&v857 + 1) + 8 * i);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    -[NSPPrivacyProxyAuthenticationInfo addAccessTokenTypes:](v712, "addAccessTokenTypes:", [v53 unsignedIntValue]);
                  }
                }

                v50 = [v48 countByEnumeratingWithState:&v857 objects:v890 count:16];
              }

              while (v50);
            }

            v31 = v704;
          }
        }

        v54 = [v31 objectForKeyedSubscript:@"accessTokenKnownOrigins"];
        if (v54)
        {
          v55 = v54;
          v56 = [v31 objectForKeyedSubscript:@"accessTokenKnownOrigins"];
          objc_opt_class();
          v57 = objc_opt_isKindOfClass();

          v31 = v704;
          if (v57)
          {
            [v704 objectForKeyedSubscript:@"accessTokenKnownOrigins"];
            v853 = 0u;
            v854 = 0u;
            v855 = 0u;
            v58 = v856 = 0u;
            v59 = [v58 countByEnumeratingWithState:&v853 objects:v889 count:16];
            if (v59)
            {
              v60 = v59;
              v61 = *v854;
              do
              {
                for (j = 0; j != v60; ++j)
                {
                  if (*v854 != v61)
                  {
                    objc_enumerationMutation(v58);
                  }

                  v63 = *(*(&v853 + 1) + 8 * j);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [(NSPPrivacyProxyAuthenticationInfo *)v712 addAccessTokenKnownOrigins:v63];
                  }
                }

                v60 = [v58 countByEnumeratingWithState:&v853 objects:v889 count:16];
              }

              while (v60);
            }

            v31 = v704;
          }
        }

        v64 = [v31 objectForKeyedSubscript:@"accessTokenBlockedIssuers"];
        if (v64)
        {
          v65 = v64;
          v66 = [v31 objectForKeyedSubscript:@"accessTokenBlockedIssuers"];
          objc_opt_class();
          v67 = objc_opt_isKindOfClass();

          v31 = v704;
          if (v67)
          {
            [v704 objectForKeyedSubscript:@"accessTokenBlockedIssuers"];
            v849 = 0u;
            v850 = 0u;
            v851 = 0u;
            v68 = v852 = 0u;
            v69 = [v68 countByEnumeratingWithState:&v849 objects:v888 count:16];
            if (v69)
            {
              v70 = v69;
              v71 = *v850;
              do
              {
                for (k = 0; k != v70; ++k)
                {
                  if (*v850 != v71)
                  {
                    objc_enumerationMutation(v68);
                  }

                  v73 = *(*(&v849 + 1) + 8 * k);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [(NSPPrivacyProxyAuthenticationInfo *)v712 addAccessTokenBlockedIssuers:v73];
                  }
                }

                v70 = [v68 countByEnumeratingWithState:&v849 objects:v888 count:16];
              }

              while (v70);
            }

            v31 = v704;
          }
        }

        v74 = [v31 objectForKeyedSubscript:@"authType"];
        if (v74)
        {
          v75 = v74;
          v76 = [v31 objectForKeyedSubscript:@"authType"];
          objc_opt_class();
          v77 = objc_opt_isKindOfClass();

          v31 = v704;
          if (v77)
          {
            v78 = [v704 objectForKeyedSubscript:@"authType"];
            if ([v78 isEqualToString:@"UNKNOWN"])
            {
              v79 = 0;
            }

            else if ([v78 isEqualToString:@"BAA"])
            {
              v79 = 1;
            }

            else if ([v78 isEqualToString:@"ANISETTE"])
            {
              v79 = 2;
            }

            else if ([v78 isEqualToString:@"BAA_ANISETTE"])
            {
              v79 = 3;
            }

            else if ([v78 isEqualToString:@"TOKEN"])
            {
              v79 = 4;
            }

            else
            {
              v79 = 0;
            }

            [(NSPPrivacyProxyAuthenticationInfo *)v712 setAuthType:v79];
            v31 = v704;
          }
        }

        v81 = [v31 objectForKeyedSubscript:@"nonDefaultAttesters"];
        if (v81)
        {
          v82 = v81;
          v83 = [v31 objectForKeyedSubscript:@"nonDefaultAttesters"];
          objc_opt_class();
          v84 = objc_opt_isKindOfClass();

          v31 = v704;
          if (v84)
          {
            [v704 objectForKeyedSubscript:@"nonDefaultAttesters"];
            v845 = 0u;
            v846 = 0u;
            v847 = 0u;
            obj = v848 = 0u;
            v85 = [obj countByEnumeratingWithState:&v845 objects:v887 count:16];
            if (v85)
            {
              v86 = v85;
              v87 = *v846;
              v706 = *v846;
              do
              {
                v88 = 0;
                v707 = v86;
                do
                {
                  if (*v846 != v87)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v89 = *(*(&v845 + 1) + 8 * v88);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v709 = v88;
                    v717 = objc_alloc_init(NSPPrivacyProxyTokenAttester);
                    [(NSPPrivacyProxyAuthenticationInfo *)v712 addNonDefaultAttesters:?];
                    v90 = [v89 objectForKeyedSubscript:@"authType"];
                    if (v90)
                    {
                      v91 = v90;
                      v92 = [v89 objectForKeyedSubscript:@"authType"];
                      v93 = *(v33 + 3776);
                      objc_opt_class();
                      v94 = objc_opt_isKindOfClass();

                      if (v94)
                      {
                        v95 = [v89 objectForKeyedSubscript:@"authType"];
                        if ([v95 isEqualToString:@"UNKNOWN"])
                        {
                          v96 = 0;
                        }

                        else if ([v95 isEqualToString:@"BAA"])
                        {
                          v96 = 1;
                        }

                        else if ([v95 isEqualToString:@"ANISETTE"])
                        {
                          v96 = 2;
                        }

                        else if ([v95 isEqualToString:@"BAA_ANISETTE"])
                        {
                          v96 = 3;
                        }

                        else if ([v95 isEqualToString:@"TOKEN"])
                        {
                          v96 = 4;
                        }

                        else
                        {
                          v96 = 0;
                        }

                        [(NSPPrivacyProxyTokenAttester *)v717 setAuthType:v96];
                      }
                    }

                    v97 = [v89 objectForKeyedSubscript:@"attesterURL"];
                    if (v97)
                    {
                      v98 = v97;
                      v99 = [v89 objectForKeyedSubscript:@"attesterURL"];
                      v100 = *(v33 + 3776);
                      objc_opt_class();
                      v101 = objc_opt_isKindOfClass();

                      if (v101)
                      {
                        v102 = [v89 objectForKeyedSubscript:@"attesterURL"];
                        [(NSPPrivacyProxyTokenAttester *)v717 setAttesterURL:v102];
                      }
                    }

                    v103 = [v89 objectForKeyedSubscript:@"associatedIssuers"];
                    if (v103)
                    {
                      v104 = v103;
                      v105 = [v89 objectForKeyedSubscript:@"associatedIssuers"];
                      v106 = *(v44 + 3784);
                      objc_opt_class();
                      v107 = objc_opt_isKindOfClass();

                      if (v107)
                      {
                        v108 = [v89 objectForKeyedSubscript:@"associatedIssuers"];
                        v841 = 0u;
                        v842 = 0u;
                        v843 = 0u;
                        v844 = 0u;
                        v723 = v108;
                        v109 = [v723 countByEnumeratingWithState:&v841 objects:v886 count:16];
                        if (v109)
                        {
                          v110 = v109;
                          v111 = *v842;
                          v715 = *v842;
                          do
                          {
                            v112 = 0;
                            v720 = v110;
                            do
                            {
                              if (*v842 != v111)
                              {
                                objc_enumerationMutation(v723);
                              }

                              v113 = *(*(&v841 + 1) + 8 * v112);
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v729 = v112;
                                v736 = objc_alloc_init(NSPPrivacyProxyTokenIssuer);
                                [(NSPPrivacyProxyTokenAttester *)v717 addAssociatedIssuers:?];
                                v114 = [v113 objectForKeyedSubscript:@"issuerName"];
                                v115 = v113;
                                if (v114)
                                {
                                  v116 = v114;
                                  v117 = [v113 objectForKeyedSubscript:@"issuerName"];
                                  v118 = *(v33 + 3776);
                                  objc_opt_class();
                                  v119 = objc_opt_isKindOfClass();

                                  if (v119)
                                  {
                                    v120 = [v115 objectForKeyedSubscript:@"issuerName"];
                                    [(NSPPrivacyProxyTokenIssuer *)v736 setIssuerName:v120];
                                  }
                                }

                                v121 = [v115 objectForKeyedSubscript:@"tokenKeys"];
                                if (v121)
                                {
                                  v122 = v121;
                                  v123 = [v115 objectForKeyedSubscript:@"tokenKeys"];
                                  v124 = *(v44 + 3784);
                                  objc_opt_class();
                                  v125 = objc_opt_isKindOfClass();

                                  if (v125)
                                  {
                                    v126 = [v115 objectForKeyedSubscript:@"tokenKeys"];
                                    v837 = 0u;
                                    v838 = 0u;
                                    v839 = 0u;
                                    v840 = 0u;
                                    v127 = v126;
                                    v128 = [v127 countByEnumeratingWithState:&v837 objects:v885 count:16];
                                    if (v128)
                                    {
                                      v129 = v128;
                                      v130 = *v838;
                                      do
                                      {
                                        for (m = 0; m != v129; ++m)
                                        {
                                          if (*v838 != v130)
                                          {
                                            objc_enumerationMutation(v127);
                                          }

                                          v132 = *(*(&v837 + 1) + 8 * m);
                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v133 = objc_alloc_init(NSPPrivacyProxyTokenKey);
                                            [(NSPPrivacyProxyTokenIssuer *)v736 addTokenKeys:v133];
                                            v134 = [v132 objectForKeyedSubscript:@"key"];
                                            if (v134)
                                            {
                                              v135 = v134;
                                              v136 = [v132 objectForKeyedSubscript:@"key"];
                                              objc_opt_class();
                                              v137 = objc_opt_isKindOfClass();

                                              if (v137)
                                              {
                                                v138 = [v132 objectForKeyedSubscript:@"key"];
                                                [(NSPPrivacyProxyTokenKey *)v133 setKey:v138];
                                              }
                                            }

                                            v139 = [v132 objectForKeyedSubscript:@"expiration"];
                                            if (v139)
                                            {
                                              v140 = v139;
                                              v141 = [v132 objectForKeyedSubscript:@"expiration"];
                                              objc_opt_class();
                                              v142 = objc_opt_isKindOfClass();

                                              if (v142)
                                              {
                                                v143 = [v132 objectForKeyedSubscript:@"expiration"];
                                                -[NSPPrivacyProxyTokenKey setExpiration:](v133, "setExpiration:", [v143 unsignedLongLongValue]);
                                              }
                                            }

                                            v144 = [v132 objectForKeyedSubscript:@"rotation"];
                                            if (v144)
                                            {
                                              v145 = v144;
                                              v146 = [v132 objectForKeyedSubscript:@"rotation"];
                                              objc_opt_class();
                                              v147 = objc_opt_isKindOfClass();

                                              if (v147)
                                              {
                                                v148 = [v132 objectForKeyedSubscript:@"rotation"];
                                                -[NSPPrivacyProxyTokenKey setRotation:](v133, "setRotation:", [v148 unsignedLongLongValue]);
                                              }
                                            }

                                            v149 = [v132 objectForKeyedSubscript:@"tokenType"];
                                            if (v149)
                                            {
                                              v150 = v149;
                                              v151 = [v132 objectForKeyedSubscript:@"tokenType"];
                                              objc_opt_class();
                                              v152 = objc_opt_isKindOfClass();

                                              if (v152)
                                              {
                                                v153 = [v132 objectForKeyedSubscript:@"tokenType"];
                                                -[NSPPrivacyProxyTokenKey setTokenType:](v133, "setTokenType:", [v153 unsignedIntValue]);
                                              }
                                            }

                                            v154 = [v132 objectForKeyedSubscript:@"metadataSize"];
                                            if (v154)
                                            {
                                              v155 = v154;
                                              v156 = [v132 objectForKeyedSubscript:@"metadataSize"];
                                              objc_opt_class();
                                              v157 = objc_opt_isKindOfClass();

                                              if (v157)
                                              {
                                                v158 = [v132 objectForKeyedSubscript:@"metadataSize"];
                                                -[NSPPrivacyProxyTokenKey setMetadataSize:](v133, "setMetadataSize:", [v158 unsignedIntValue]);
                                              }
                                            }

                                            v11 = 0x1E695D000uLL;
                                          }
                                        }

                                        v129 = [v127 countByEnumeratingWithState:&v837 objects:v885 count:16];
                                      }

                                      while (v129);
                                    }

                                    v33 = 0x1E696A000;
                                    v44 = 0x1E695D000;
                                  }
                                }

                                v159 = [v115 objectForKeyedSubscript:@"transparencyKeyBundle"];
                                if (v159)
                                {
                                  v160 = v159;
                                  v161 = [v115 objectForKeyedSubscript:@"transparencyKeyBundle"];
                                  objc_opt_class();
                                  v162 = objc_opt_isKindOfClass();

                                  if (v162)
                                  {
                                    v163 = [v115 objectForKeyedSubscript:@"transparencyKeyBundle"];
                                    [(NSPPrivacyProxyTokenIssuer *)v736 setTransparencyKeyBundle:v163];
                                  }
                                }

                                v164 = [v115 objectForKeyedSubscript:@"transparencyProof"];
                                if (v164)
                                {
                                  v165 = v164;
                                  v166 = [v115 objectForKeyedSubscript:@"transparencyProof"];
                                  objc_opt_class();
                                  v167 = objc_opt_isKindOfClass();

                                  if (v167)
                                  {
                                    v168 = [v115 objectForKeyedSubscript:@"transparencyProof"];
                                    [(NSPPrivacyProxyTokenIssuer *)v736 setTransparencyProof:v168];
                                  }
                                }

                                v169 = [v115 objectForKeyedSubscript:@"transparencyInternalProof"];
                                if (v169)
                                {
                                  v170 = v169;
                                  v171 = [v115 objectForKeyedSubscript:@"transparencyInternalProof"];
                                  objc_opt_class();
                                  v172 = objc_opt_isKindOfClass();

                                  if (v172)
                                  {
                                    v173 = [v115 objectForKeyedSubscript:@"transparencyInternalProof"];
                                    [(NSPPrivacyProxyTokenIssuer *)v736 setTransparencyInternalProof:v173];
                                  }
                                }

                                v111 = v715;
                                v110 = v720;
                                v112 = v729;
                              }

                              ++v112;
                            }

                            while (v112 != v110);
                            v110 = [v723 countByEnumeratingWithState:&v841 objects:v886 count:16];
                          }

                          while (v110);
                        }
                      }
                    }

                    v88 = v709;
                    v8 = v711;
                    v87 = v706;
                    v86 = v707;
                  }

                  ++v88;
                }

                while (v88 != v86);
                v86 = [obj countByEnumeratingWithState:&v845 objects:v887 count:16];
              }

              while (v86);
            }

            v31 = v704;
          }
        }
      }
    }

    v174 = [v8 objectForKeyedSubscript:@"quotaInfo"];
    if (v174)
    {
      v175 = v174;
      v176 = [v8 objectForKeyedSubscript:@"quotaInfo"];
      objc_opt_class();
      v177 = objc_opt_isKindOfClass();

      if (v177)
      {
        v730 = objc_alloc_init(NSPPrivacyProxyQuotaInfo);
        [(NSPPrivacyProxyConfiguration *)v713 setQuotaInfo:?];
        v178 = [v8 objectForKeyedSubscript:@"quotaInfo"];
        v179 = [v178 objectForKeyedSubscript:@"quotaServices"];
        if (v179)
        {
          v180 = v179;
          v181 = [v178 objectForKeyedSubscript:@"quotaServices"];
          objc_opt_class();
          v182 = objc_opt_isKindOfClass();

          if (v182)
          {
            v724 = v178;
            [v178 objectForKeyedSubscript:@"quotaServices"];
            v833 = 0u;
            v834 = 0u;
            v835 = 0u;
            v737 = v836 = 0u;
            v183 = [v737 countByEnumeratingWithState:&v833 objects:v884 count:16];
            v184 = v730;
            if (v183)
            {
              v185 = v183;
              v186 = *v834;
              do
              {
                for (n = 0; n != v185; ++n)
                {
                  if (*v834 != v186)
                  {
                    objc_enumerationMutation(v737);
                  }

                  v188 = *(*(&v833 + 1) + 8 * n);
                  v189 = *(v11 + 3872);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v190 = objc_alloc_init(NSPPrivacyProxyQuotaService);
                    [(NSPPrivacyProxyQuotaInfo *)v184 addQuotaServices:v190];
                    v191 = [v188 objectForKeyedSubscript:@"serviceURL"];
                    if (v191)
                    {
                      v192 = v191;
                      v193 = [v188 objectForKeyedSubscript:@"serviceURL"];
                      objc_opt_class();
                      v194 = objc_opt_isKindOfClass();

                      if (v194)
                      {
                        v195 = [v188 objectForKeyedSubscript:@"serviceURL"];
                        [(NSPPrivacyProxyQuotaService *)v190 setServiceURL:v195];
                      }
                    }

                    v196 = [v188 objectForKeyedSubscript:@"supportedUseCaseIdentifiers"];
                    if (v196)
                    {
                      v197 = v196;
                      v198 = [v188 objectForKeyedSubscript:@"supportedUseCaseIdentifiers"];
                      objc_opt_class();
                      v199 = objc_opt_isKindOfClass();

                      if (v199)
                      {
                        v200 = [v188 objectForKeyedSubscript:@"supportedUseCaseIdentifiers"];
                        v829 = 0u;
                        v830 = 0u;
                        v831 = 0u;
                        v832 = 0u;
                        v201 = v200;
                        v202 = [v201 countByEnumeratingWithState:&v829 objects:v883 count:16];
                        if (v202)
                        {
                          v203 = v202;
                          v204 = *v830;
                          do
                          {
                            for (ii = 0; ii != v203; ++ii)
                            {
                              if (*v830 != v204)
                              {
                                objc_enumerationMutation(v201);
                              }

                              v206 = *(*(&v829 + 1) + 8 * ii);
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                [(NSPPrivacyProxyQuotaService *)v190 addSupportedUseCaseIdentifiers:v206];
                              }
                            }

                            v203 = [v201 countByEnumeratingWithState:&v829 objects:v883 count:16];
                          }

                          while (v203);
                        }

                        v184 = v730;
                      }
                    }

                    v11 = 0x1E695D000;
                  }
                }

                v185 = [v737 countByEnumeratingWithState:&v833 objects:v884 count:16];
              }

              while (v185);
            }

            v8 = v711;
            v178 = v724;
          }
        }
      }
    }

    v207 = [v8 objectForKeyedSubscript:@"policyTierMap"];
    if (v207)
    {
      v208 = v207;
      v209 = [v8 objectForKeyedSubscript:@"policyTierMap"];
      v210 = 0x1E695D000uLL;
      objc_opt_class();
      v211 = objc_opt_isKindOfClass();

      if (v211)
      {
        [v8 objectForKeyedSubscript:@"policyTierMap"];
        v825 = 0u;
        v826 = 0u;
        v827 = 0u;
        v212 = v828 = 0u;
        v213 = [v212 countByEnumeratingWithState:&v825 objects:v882 count:16];
        if (v213)
        {
          v214 = v213;
          v215 = 0x1E7A30000uLL;
          v216 = *v826;
          v718 = v212;
          v725 = *v826;
          do
          {
            v217 = 0;
            v731 = v214;
            do
            {
              if (*v826 != v216)
              {
                objc_enumerationMutation(v212);
              }

              v218 = *(*(&v825 + 1) + 8 * v217);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v738 = objc_alloc_init(*(v215 + 736));
                [(NSPPrivacyProxyConfiguration *)v713 addPolicyTierMap:?];
                v219 = [v218 objectForKeyedSubscript:@"tier"];
                if (v219)
                {
                  v220 = v219;
                  v221 = [v218 objectForKeyedSubscript:@"tier"];
                  objc_opt_class();
                  v222 = objc_opt_isKindOfClass();

                  if (v222)
                  {
                    v223 = [v218 objectForKeyedSubscript:@"tier"];
                    if ([v223 isEqualToString:@"UNKNOWN"])
                    {
                      v224 = 0;
                    }

                    else if ([v223 isEqualToString:@"FREE"])
                    {
                      v224 = 1;
                    }

                    else if ([v223 isEqualToString:@"SUBSCRIBER"])
                    {
                      v224 = 2;
                    }

                    else
                    {
                      v224 = 0;
                    }

                    [v738 setTier:v224];
                  }
                }

                v225 = [v218 objectForKeyedSubscript:@"policy"];
                if (v225)
                {
                  v226 = v225;
                  v227 = [v218 objectForKeyedSubscript:@"policy"];
                  objc_opt_class();
                  v228 = objc_opt_isKindOfClass();

                  if (v228)
                  {
                    v229 = [v218 objectForKeyedSubscript:@"policy"];
                    v230 = [v229 objectForKeyedSubscript:@"conditions"];
                    if (v230)
                    {
                      v231 = v230;
                      v232 = [v229 objectForKeyedSubscript:@"conditions"];
                      v233 = *(v210 + 3784);
                      objc_opt_class();
                      v234 = objc_opt_isKindOfClass();

                      if (v234)
                      {
                        v235 = v229;
                        v236 = objc_alloc_init(NSPPrivacyProxyPolicy);
                        [v738 setPolicy:v236];
                        v824 = 0u;
                        v823 = 0u;
                        v822 = 0u;
                        v821 = 0u;
                        v721 = v235;
                        v237 = [v235 objectForKeyedSubscript:@"conditions"];
                        v238 = [v237 countByEnumeratingWithState:&v821 objects:v881 count:16];
                        if (v238)
                        {
                          v239 = v238;
                          v240 = *v822;
                          do
                          {
                            for (jj = 0; jj != v239; ++jj)
                            {
                              if (*v822 != v240)
                              {
                                objc_enumerationMutation(v237);
                              }

                              v242 = *(*(&v821 + 1) + 8 * jj);
                              if ([v242 isEqualToString:@"UNKNOWN"])
                              {
                                v243 = 0;
                              }

                              else if ([v242 isEqualToString:@"SAFARI_UNENCRYPTED"])
                              {
                                v243 = 1;
                              }

                              else if ([v242 isEqualToString:@"SAFARI_DNS"])
                              {
                                v243 = 2;
                              }

                              else if ([v242 isEqualToString:@"SAFARI_TRACKER"])
                              {
                                v243 = 3;
                              }

                              else if ([v242 isEqualToString:@"MAIL_TRACKER"])
                              {
                                v243 = 4;
                              }

                              else if ([v242 isEqualToString:@"SAFARI_ALL"])
                              {
                                v243 = 5;
                              }

                              else if ([v242 isEqualToString:@"SAFARI_HTTP"])
                              {
                                v243 = 6;
                              }

                              else if ([v242 isEqualToString:@"ANY_UNENCRYPTED"])
                              {
                                v243 = 7;
                              }

                              else if ([v242 isEqualToString:@"ANY_DNS"])
                              {
                                v243 = 8;
                              }

                              else if ([v242 isEqualToString:@"ANY_KNOWN_TRACKER"])
                              {
                                v243 = 9;
                              }

                              else if ([v242 isEqualToString:@"ANY_APP_TRACKER"])
                              {
                                v243 = 10;
                              }

                              else if ([v242 isEqualToString:@"NEWS_URL_RESOLUTION"])
                              {
                                v243 = 11;
                              }

                              else if ([v242 isEqualToString:@"EXPOSURE_NOTIFICATIONS"])
                              {
                                v243 = 12;
                              }

                              else if ([v242 isEqualToString:@"APPLE_CERTIFICATES"])
                              {
                                v243 = 13;
                              }

                              else if ([v242 isEqualToString:@"NETWORK_TOOLS"])
                              {
                                v243 = 14;
                              }

                              else if ([v242 isEqualToString:@"METRICS_UPLOAD"])
                              {
                                v243 = 15;
                              }

                              else if ([v242 isEqualToString:@"BRANDED_CALLING"])
                              {
                                v243 = 16;
                              }

                              else if ([v242 isEqualToString:@"NEWS_EMBEDDED_CONTENT"])
                              {
                                v243 = 17;
                              }

                              else if ([v242 isEqualToString:@"APP_METRICS"])
                              {
                                v243 = 18;
                              }

                              else if ([v242 isEqualToString:@"SAFARI_PRIVATE_UNENCRYPTED"])
                              {
                                v243 = 19;
                              }

                              else if ([v242 isEqualToString:@"SAFARI_PRIVATE_DNS"])
                              {
                                v243 = 20;
                              }

                              else if ([v242 isEqualToString:@"SAFARI_PRIVATE_ALL"])
                              {
                                v243 = 21;
                              }

                              else if ([v242 isEqualToString:@"SAFARI_METRICS"])
                              {
                                v243 = 22;
                              }

                              else if ([v242 isEqualToString:@"PROMOTED_CONTENT"])
                              {
                                v243 = 23;
                              }

                              else if ([v242 isEqualToString:@"POSTBACK_FETCH"])
                              {
                                v243 = 24;
                              }

                              else if ([v242 isEqualToString:@"PM_PR_ICON_FETCHING"])
                              {
                                v243 = 25;
                              }

                              else if ([v242 isEqualToString:@"LAUNCH_WARNING_DETAILS"])
                              {
                                v243 = 26;
                              }

                              else if ([v242 isEqualToString:@"PODCASTS_LINK_PRESENTATION"])
                              {
                                v243 = 27;
                              }

                              else
                              {
                                v243 = 0;
                              }

                              [(NSPPrivacyProxyPolicy *)v236 addConditions:v243];
                            }

                            v239 = [v237 countByEnumeratingWithState:&v821 objects:v881 count:16];
                          }

                          while (v239);
                        }

                        v210 = 0x1E695D000;
                        v212 = v718;
                        v229 = v721;
                        v215 = 0x1E7A30000;
                      }
                    }
                  }
                }

                v216 = v725;
                v214 = v731;
              }

              ++v217;
            }

            while (v217 != v214);
            v214 = [v212 countByEnumeratingWithState:&v825 objects:v882 count:16];
          }

          while (v214);
        }

        v8 = v711;
        v11 = 0x1E695D000;
      }
    }

    v244 = [v8 objectForKeyedSubscript:@"proxies"];
    if (v244)
    {
      v245 = v244;
      v246 = [v8 objectForKeyedSubscript:@"proxies"];
      objc_opt_class();
      v247 = objc_opt_isKindOfClass();

      if (v247)
      {
        v248 = [v8 objectForKeyedSubscript:@"proxies"];
        v817 = 0u;
        v818 = 0u;
        v819 = 0u;
        v820 = 0u;
        v739 = v248;
        v249 = [v739 countByEnumeratingWithState:&v817 objects:v880 count:16];
        if (v249)
        {
          v250 = v249;
          v251 = *v818;
          v726 = *v818;
          do
          {
            v252 = 0;
            v732 = v250;
            do
            {
              if (*v818 != v251)
              {
                objc_enumerationMutation(v739);
              }

              v253 = *(*(&v817 + 1) + 8 * v252);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v254 = objc_alloc_init(NSPPrivacyProxyProxyInfo);
                [(NSPPrivacyProxyConfiguration *)v713 addProxies:v254];
                v255 = [v253 objectForKeyedSubscript:@"proxyHop"];
                if (v255)
                {
                  v256 = v255;
                  v257 = [v253 objectForKeyedSubscript:@"proxyHop"];
                  objc_opt_class();
                  v258 = objc_opt_isKindOfClass();

                  if (v258)
                  {
                    v259 = [v253 objectForKeyedSubscript:@"proxyHop"];
                    if ([v259 isEqualToString:@"UNKNOWN"])
                    {
                      v260 = 0;
                    }

                    else if ([v259 isEqualToString:@"INGRESS_ONLY"])
                    {
                      v260 = 1;
                    }

                    else if ([v259 isEqualToString:@"EGRESS_ONLY"])
                    {
                      v260 = 2;
                    }

                    else if ([v259 isEqualToString:@"ANY"])
                    {
                      v260 = 3;
                    }

                    else
                    {
                      v260 = 0;
                    }

                    [(NSPPrivacyProxyProxyInfo *)v254 setProxyHop:v260];
                  }
                }

                v261 = [v253 objectForKeyedSubscript:@"proxyURL"];
                if (v261)
                {
                  v262 = v261;
                  v263 = [v253 objectForKeyedSubscript:@"proxyURL"];
                  objc_opt_class();
                  v264 = objc_opt_isKindOfClass();

                  if (v264)
                  {
                    v265 = [v253 objectForKeyedSubscript:@"proxyURL"];
                    [(NSPPrivacyProxyProxyInfo *)v254 setProxyURL:v265];
                  }
                }

                v266 = [v253 objectForKeyedSubscript:@"proxyKeyInfo"];
                if (v266)
                {
                  v267 = v266;
                  v268 = [v253 objectForKeyedSubscript:@"proxyKeyInfo"];
                  objc_opt_class();
                  v269 = objc_opt_isKindOfClass();

                  if (v269)
                  {
                    v270 = [v253 objectForKeyedSubscript:@"proxyKeyInfo"];
                    v813 = 0u;
                    v814 = 0u;
                    v815 = 0u;
                    v816 = 0u;
                    v271 = v270;
                    v272 = [v271 countByEnumeratingWithState:&v813 objects:v879 count:16];
                    if (v272)
                    {
                      v273 = v272;
                      v274 = *v814;
                      do
                      {
                        for (kk = 0; kk != v273; ++kk)
                        {
                          if (*v814 != v274)
                          {
                            objc_enumerationMutation(v271);
                          }

                          v276 = *(*(&v813 + 1) + 8 * kk);
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            [(NSPPrivacyProxyProxyInfo *)v254 addProxyKeyInfo:v276];
                          }
                        }

                        v273 = [v271 countByEnumeratingWithState:&v813 objects:v879 count:16];
                      }

                      while (v273);
                    }
                  }
                }

                v277 = [v253 objectForKeyedSubscript:@"tokenKeyInfo"];
                if (v277)
                {
                  v278 = v277;
                  v279 = [v253 objectForKeyedSubscript:@"tokenKeyInfo"];
                  objc_opt_class();
                  v280 = objc_opt_isKindOfClass();

                  if (v280)
                  {
                    v281 = [v253 objectForKeyedSubscript:@"tokenKeyInfo"];
                    [(NSPPrivacyProxyProxyInfo *)v254 setTokenKeyInfo:v281];
                  }
                }

                v282 = [v253 objectForKeyedSubscript:@"supportsFallback"];
                if (v282)
                {
                  v283 = v282;
                  v284 = [v253 objectForKeyedSubscript:@"supportsFallback"];
                  objc_opt_class();
                  v285 = objc_opt_isKindOfClass();

                  if (v285)
                  {
                    v286 = [v253 objectForKeyedSubscript:@"supportsFallback"];
                    -[NSPPrivacyProxyProxyInfo setSupportsFallback:](v254, "setSupportsFallback:", [v286 BOOLValue]);
                  }
                }

                v287 = [v253 objectForKeyedSubscript:@"vendor"];
                if (v287)
                {
                  v288 = v287;
                  v289 = [v253 objectForKeyedSubscript:@"vendor"];
                  objc_opt_class();
                  v290 = objc_opt_isKindOfClass();

                  if (v290)
                  {
                    v291 = [v253 objectForKeyedSubscript:@"vendor"];
                    [(NSPPrivacyProxyProxyInfo *)v254 setVendor:v291];
                  }
                }

                v292 = [v253 objectForKeyedSubscript:@"tcpProxyFqdn"];
                if (v292)
                {
                  v293 = v292;
                  v294 = [v253 objectForKeyedSubscript:@"tcpProxyFqdn"];
                  objc_opt_class();
                  v295 = objc_opt_isKindOfClass();

                  if (v295)
                  {
                    v296 = [v253 objectForKeyedSubscript:@"tcpProxyFqdn"];
                    [(NSPPrivacyProxyProxyInfo *)v254 setTcpProxyFqdn:v296];
                  }
                }

                v297 = [v253 objectForKeyedSubscript:@"preferredPathConfigUri"];
                if (v297)
                {
                  v298 = v297;
                  v299 = [v253 objectForKeyedSubscript:@"preferredPathConfigUri"];
                  objc_opt_class();
                  v300 = objc_opt_isKindOfClass();

                  if (v300)
                  {
                    v301 = [v253 objectForKeyedSubscript:@"preferredPathConfigUri"];
                    [(NSPPrivacyProxyProxyInfo *)v254 setPreferredPathConfigUri:v301];
                  }
                }

                v302 = [v253 objectForKeyedSubscript:@"proxyVersion"];
                if (v302)
                {
                  v303 = v302;
                  v304 = [v253 objectForKeyedSubscript:@"proxyVersion"];
                  objc_opt_class();
                  v305 = objc_opt_isKindOfClass();

                  if (v305)
                  {
                    v306 = [v253 objectForKeyedSubscript:@"proxyVersion"];
                    [(NSPPrivacyProxyProxyInfo *)v254 setProxyVersion:v306];
                  }
                }

                v307 = [v253 objectForKeyedSubscript:@"supportsResumption"];
                if (v307)
                {
                  v308 = v307;
                  v309 = [v253 objectForKeyedSubscript:@"supportsResumption"];
                  objc_opt_class();
                  v310 = objc_opt_isKindOfClass();

                  if (v310)
                  {
                    v311 = [v253 objectForKeyedSubscript:@"supportsResumption"];
                    -[NSPPrivacyProxyProxyInfo setSupportsResumption:](v254, "setSupportsResumption:", [v311 BOOLValue]);
                  }
                }

                v312 = [v253 objectForKeyedSubscript:@"fallbackSupportsUDPProxying"];
                if (v312)
                {
                  v313 = v312;
                  v314 = [v253 objectForKeyedSubscript:@"fallbackSupportsUDPProxying"];
                  objc_opt_class();
                  v315 = objc_opt_isKindOfClass();

                  if (v315)
                  {
                    v316 = [v253 objectForKeyedSubscript:@"fallbackSupportsUDPProxying"];
                    -[NSPPrivacyProxyProxyInfo setFallbackSupportsUDPProxying:](v254, "setFallbackSupportsUDPProxying:", [v316 BOOLValue]);
                  }
                }

                v317 = [v253 objectForKeyedSubscript:@"bootstrapAddresses"];
                if (v317)
                {
                  v318 = v317;
                  v319 = [v253 objectForKeyedSubscript:@"bootstrapAddresses"];
                  objc_opt_class();
                  v320 = objc_opt_isKindOfClass();

                  if (v320)
                  {
                    v321 = [v253 objectForKeyedSubscript:@"bootstrapAddresses"];
                    v809 = 0u;
                    v810 = 0u;
                    v811 = 0u;
                    v812 = 0u;
                    v322 = v321;
                    v323 = [v322 countByEnumeratingWithState:&v809 objects:v878 count:16];
                    if (v323)
                    {
                      v324 = v323;
                      v325 = *v810;
                      do
                      {
                        for (mm = 0; mm != v324; ++mm)
                        {
                          if (*v810 != v325)
                          {
                            objc_enumerationMutation(v322);
                          }

                          v327 = *(*(&v809 + 1) + 8 * mm);
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            [(NSPPrivacyProxyProxyInfo *)v254 addBootstrapAddresses:v327];
                          }
                        }

                        v324 = [v322 countByEnumeratingWithState:&v809 objects:v878 count:16];
                      }

                      while (v324);
                    }
                  }
                }

                v328 = [v253 objectForKeyedSubscript:@"allowedNextHops"];
                if (v328)
                {
                  v329 = v328;
                  v330 = [v253 objectForKeyedSubscript:@"allowedNextHops"];
                  objc_opt_class();
                  v331 = objc_opt_isKindOfClass();

                  if (v331)
                  {
                    v332 = [v253 objectForKeyedSubscript:@"allowedNextHops"];
                    v805 = 0u;
                    v806 = 0u;
                    v807 = 0u;
                    v808 = 0u;
                    v333 = v332;
                    v334 = [v333 countByEnumeratingWithState:&v805 objects:v877 count:16];
                    if (v334)
                    {
                      v335 = v334;
                      v336 = *v806;
                      do
                      {
                        for (nn = 0; nn != v335; ++nn)
                        {
                          if (*v806 != v336)
                          {
                            objc_enumerationMutation(v333);
                          }

                          v338 = *(*(&v805 + 1) + 8 * nn);
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            [(NSPPrivacyProxyProxyInfo *)v254 addAllowedNextHops:v338];
                          }
                        }

                        v335 = [v333 countByEnumeratingWithState:&v805 objects:v877 count:16];
                      }

                      while (v335);
                    }
                  }
                }

                v339 = [v253 objectForKeyedSubscript:@"tokenChallenge"];
                if (v339)
                {
                  v340 = v339;
                  v341 = [v253 objectForKeyedSubscript:@"tokenChallenge"];
                  objc_opt_class();
                  v342 = objc_opt_isKindOfClass();

                  if (v342)
                  {
                    v343 = [v253 objectForKeyedSubscript:@"tokenChallenge"];
                    [(NSPPrivacyProxyProxyInfo *)v254 setTokenChallenge:v343];
                  }
                }

                v344 = [v253 objectForKeyedSubscript:@"preferredPathPatterns"];
                if (v344)
                {
                  v345 = v344;
                  v346 = [v253 objectForKeyedSubscript:@"preferredPathPatterns"];
                  objc_opt_class();
                  v347 = objc_opt_isKindOfClass();

                  if (v347)
                  {
                    v348 = [v253 objectForKeyedSubscript:@"preferredPathPatterns"];
                    v801 = 0u;
                    v802 = 0u;
                    v803 = 0u;
                    v804 = 0u;
                    v349 = v348;
                    v350 = [v349 countByEnumeratingWithState:&v801 objects:v876 count:16];
                    if (v350)
                    {
                      v351 = v350;
                      v352 = *v802;
                      do
                      {
                        for (i1 = 0; i1 != v351; ++i1)
                        {
                          if (*v802 != v352)
                          {
                            objc_enumerationMutation(v349);
                          }

                          v354 = *(*(&v801 + 1) + 8 * i1);
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            [(NSPPrivacyProxyProxyInfo *)v254 addPreferredPathPatterns:v354];
                          }
                        }

                        v351 = [v349 countByEnumeratingWithState:&v801 objects:v876 count:16];
                      }

                      while (v351);
                    }
                  }
                }

                v355 = [v253 objectForKeyedSubscript:@"algorithm"];
                if (v355)
                {
                  v356 = v355;
                  v357 = [v253 objectForKeyedSubscript:@"algorithm"];
                  objc_opt_class();
                  v358 = objc_opt_isKindOfClass();

                  if (v358)
                  {
                    v359 = [v253 objectForKeyedSubscript:@"algorithm"];
                    if ([v359 isEqualToString:@"NOT_SET"])
                    {
                      v360 = 0;
                    }

                    else if ([v359 isEqualToString:@"P384"])
                    {
                      v360 = 1;
                    }

                    else if ([v359 isEqualToString:@"X25519"])
                    {
                      v360 = 2;
                    }

                    else if ([v359 isEqualToString:@"X25519_MLKEM768"])
                    {
                      v360 = 3;
                    }

                    else
                    {
                      v360 = 0;
                    }

                    [(NSPPrivacyProxyProxyInfo *)v254 setAlgorithm:v360];
                  }
                }

                v361 = [v253 objectForKeyedSubscript:@"proxyIndex"];
                if (v361)
                {
                  v362 = v361;
                  v363 = [v253 objectForKeyedSubscript:@"proxyIndex"];
                  objc_opt_class();
                  v364 = objc_opt_isKindOfClass();

                  if (v364)
                  {
                    v365 = [v253 objectForKeyedSubscript:@"proxyIndex"];
                    -[NSPPrivacyProxyProxyInfo setProxyIndex:](v254, "setProxyIndex:", [v365 unsignedIntValue]);
                  }
                }

                v251 = v726;
                v250 = v732;
              }

              ++v252;
            }

            while (v252 != v250);
            v250 = [v739 countByEnumeratingWithState:&v817 objects:v880 count:16];
          }

          while (v250);
        }

        v8 = v711;
        v11 = 0x1E695D000uLL;
      }
    }

    v366 = [v8 objectForKeyedSubscript:@"pathWeights"];
    if (v366)
    {
      v367 = v366;
      v368 = [v8 objectForKeyedSubscript:@"pathWeights"];
      objc_opt_class();
      v369 = objc_opt_isKindOfClass();

      if (v369)
      {
        v370 = [v8 objectForKeyedSubscript:@"pathWeights"];
        v797 = 0u;
        v798 = 0u;
        v799 = 0u;
        v800 = 0u;
        v371 = v370;
        v372 = [v371 countByEnumeratingWithState:&v797 objects:v875 count:16];
        if (v372)
        {
          v373 = v372;
          v374 = *v798;
          do
          {
            for (i2 = 0; i2 != v373; ++i2)
            {
              if (*v798 != v374)
              {
                objc_enumerationMutation(v371);
              }

              v376 = *(*(&v797 + 1) + 8 * i2);
              v377 = *(v11 + 3872);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v378 = objc_alloc_init(NSPPrivacyProxyProxyPathWeight);
                [(NSPPrivacyProxyConfiguration *)v713 addPathWeights:v378];
                v379 = [v376 objectForKeyedSubscript:@"weight"];
                if (v379)
                {
                  v380 = v379;
                  v381 = [v376 objectForKeyedSubscript:@"weight"];
                  objc_opt_class();
                  v382 = objc_opt_isKindOfClass();

                  if (v382)
                  {
                    v383 = [v376 objectForKeyedSubscript:@"weight"];
                    -[NSPPrivacyProxyProxyPathWeight setWeight:](v378, "setWeight:", [v383 unsignedIntValue]);
                  }
                }

                v384 = [v376 objectForKeyedSubscript:@"proxies"];
                if (v384)
                {
                  v385 = v384;
                  v386 = [v376 objectForKeyedSubscript:@"proxies"];
                  objc_opt_class();
                  v387 = objc_opt_isKindOfClass();

                  if (v387)
                  {
                    v388 = [v376 objectForKeyedSubscript:@"proxies"];
                    v793 = 0u;
                    v794 = 0u;
                    v795 = 0u;
                    v796 = 0u;
                    v389 = v388;
                    v390 = [v389 countByEnumeratingWithState:&v793 objects:v874 count:16];
                    if (v390)
                    {
                      v391 = v390;
                      v392 = *v794;
                      do
                      {
                        for (i3 = 0; i3 != v391; ++i3)
                        {
                          if (*v794 != v392)
                          {
                            objc_enumerationMutation(v389);
                          }

                          -[NSPPrivacyProxyProxyPathWeight addProxies:](v378, "addProxies:", [*(*(&v793 + 1) + 8 * i3) unsignedIntValue]);
                        }

                        v391 = [v389 countByEnumeratingWithState:&v793 objects:v874 count:16];
                      }

                      while (v391);
                    }
                  }
                }

                v11 = 0x1E695D000;
              }
            }

            v373 = [v371 countByEnumeratingWithState:&v797 objects:v875 count:16];
          }

          while (v373);
        }

        v8 = v711;
      }
    }

    v394 = [v8 objectForKeyedSubscript:@"resolvers"];
    if (v394)
    {
      v395 = v394;
      v396 = [v8 objectForKeyedSubscript:@"resolvers"];
      objc_opt_class();
      v397 = objc_opt_isKindOfClass();

      if (v397)
      {
        v398 = [v8 objectForKeyedSubscript:@"resolvers"];
        v789 = 0u;
        v790 = 0u;
        v791 = 0u;
        v792 = 0u;
        v740 = v398;
        v399 = [v740 countByEnumeratingWithState:&v789 objects:v873 count:16];
        if (v399)
        {
          v400 = v399;
          v401 = *v790;
          do
          {
            v402 = 0;
            v733 = v400;
            do
            {
              if (*v790 != v401)
              {
                objc_enumerationMutation(v740);
              }

              v403 = *(*(&v789 + 1) + 8 * v402);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v404 = objc_alloc_init(NSPPrivacyProxyResolverInfo);
                [(NSPPrivacyProxyConfiguration *)v713 addResolvers:v404];
                v405 = [v403 objectForKeyedSubscript:@"dohURL"];
                if (v405)
                {
                  v406 = v405;
                  v407 = [v403 objectForKeyedSubscript:@"dohURL"];
                  objc_opt_class();
                  v408 = objc_opt_isKindOfClass();

                  if (v408)
                  {
                    v409 = [v403 objectForKeyedSubscript:@"dohURL"];
                    [(NSPPrivacyProxyResolverInfo *)v404 setDohURL:v409];
                  }
                }

                v410 = [v403 objectForKeyedSubscript:@"obliviousDoHConfig"];
                if (v410)
                {
                  v411 = v410;
                  v412 = [v403 objectForKeyedSubscript:@"obliviousDoHConfig"];
                  objc_opt_class();
                  v413 = objc_opt_isKindOfClass();

                  if (v413)
                  {
                    v414 = [v403 objectForKeyedSubscript:@"obliviousDoHConfig"];
                    [(NSPPrivacyProxyResolverInfo *)v404 setObliviousDoHConfig:v414];
                  }
                }

                v415 = [v403 objectForKeyedSubscript:@"weight"];
                if (v415)
                {
                  v416 = v415;
                  v417 = [v403 objectForKeyedSubscript:@"weight"];
                  objc_opt_class();
                  v418 = objc_opt_isKindOfClass();

                  if (v418)
                  {
                    v419 = [v403 objectForKeyedSubscript:@"weight"];
                    -[NSPPrivacyProxyResolverInfo setWeight:](v404, "setWeight:", [v419 unsignedIntValue]);
                  }
                }

                v420 = [v403 objectForKeyedSubscript:@"proxyIndex"];
                v400 = v733;
                if (v420)
                {
                  v421 = v420;
                  v422 = [v403 objectForKeyedSubscript:@"proxyIndex"];
                  objc_opt_class();
                  v423 = objc_opt_isKindOfClass();

                  if (v423)
                  {
                    v424 = [v403 objectForKeyedSubscript:@"proxyIndex"];
                    -[NSPPrivacyProxyResolverInfo setProxyIndex:](v404, "setProxyIndex:", [v424 unsignedIntValue]);
                  }
                }
              }

              ++v402;
            }

            while (v400 != v402);
            v400 = [v740 countByEnumeratingWithState:&v789 objects:v873 count:16];
          }

          while (v400);
        }

        v8 = v711;
        v11 = 0x1E695D000uLL;
      }
    }

    v425 = [v8 objectForKeyedSubscript:@"bootstrapResolver"];
    if (v425)
    {
      v426 = v425;
      v427 = [v8 objectForKeyedSubscript:@"bootstrapResolver"];
      v428 = *(v11 + 3872);
      objc_opt_class();
      v429 = objc_opt_isKindOfClass();

      if (v429)
      {
        v430 = [v8 objectForKeyedSubscript:@"bootstrapResolver"];
        v431 = objc_alloc_init(NSPPrivacyProxyResolverInfo);
        v432 = [v430 objectForKeyedSubscript:@"dohURL"];
        if (v432)
        {
          v433 = v432;
          v434 = [v430 objectForKeyedSubscript:@"dohURL"];
          objc_opt_class();
          v435 = objc_opt_isKindOfClass();

          if (v435)
          {
            v436 = [v430 objectForKeyedSubscript:@"dohURL"];
            [(NSPPrivacyProxyResolverInfo *)v431 setDohURL:v436];
          }
        }

        v437 = [v430 objectForKeyedSubscript:@"obliviousDoHConfig"];
        if (v437)
        {
          v438 = v437;
          v439 = [v430 objectForKeyedSubscript:@"obliviousDoHConfig"];
          objc_opt_class();
          v440 = objc_opt_isKindOfClass();

          if (v440)
          {
            v441 = [v430 objectForKeyedSubscript:@"obliviousDoHConfig"];
            [(NSPPrivacyProxyResolverInfo *)v431 setObliviousDoHConfig:v441];
          }
        }

        v442 = [v430 objectForKeyedSubscript:@"weight"];
        if (v442)
        {
          v443 = v442;
          v444 = [v430 objectForKeyedSubscript:@"weight"];
          objc_opt_class();
          v445 = objc_opt_isKindOfClass();

          if (v445)
          {
            v446 = [v430 objectForKeyedSubscript:@"weight"];
            -[NSPPrivacyProxyResolverInfo setWeight:](v431, "setWeight:", [v446 unsignedIntValue]);
          }
        }

        v447 = [v430 objectForKeyedSubscript:@"proxyIndex"];
        if (v447)
        {
          v448 = v447;
          v449 = [v430 objectForKeyedSubscript:@"proxyIndex"];
          objc_opt_class();
          v450 = objc_opt_isKindOfClass();

          if (v450)
          {
            v451 = [v430 objectForKeyedSubscript:@"proxyIndex"];
            -[NSPPrivacyProxyResolverInfo setProxyIndex:](v431, "setProxyIndex:", [v451 unsignedIntValue]);
          }
        }

        [(NSPPrivacyProxyConfiguration *)v713 setBootstrapResolver:v431];
      }
    }

    v452 = [v8 objectForKeyedSubscript:@"dnsProbe"];
    if (v452)
    {
      v453 = v452;
      v454 = [v8 objectForKeyedSubscript:@"dnsProbe"];
      objc_opt_class();
      v455 = objc_opt_isKindOfClass();

      if (v455)
      {
        v456 = [v8 objectForKeyedSubscript:@"dnsProbe"];
        [(NSPPrivacyProxyConfiguration *)v713 setDnsProbe:v456];
      }
    }

    v457 = [v8 objectForKeyedSubscript:@"obliviousConfigs"];
    if (v457)
    {
      v458 = v457;
      v459 = [v8 objectForKeyedSubscript:@"obliviousConfigs"];
      objc_opt_class();
      v460 = objc_opt_isKindOfClass();

      if (v460)
      {
        v461 = v8;
        v462 = [v8 objectForKeyedSubscript:@"obliviousConfigs"];
        v785 = 0u;
        v786 = 0u;
        v787 = 0u;
        v788 = 0u;
        v463 = v462;
        v464 = [v463 countByEnumeratingWithState:&v785 objects:v872 count:16];
        if (v464)
        {
          v465 = v464;
          v466 = 0x1E7A30000uLL;
          v467 = *v786;
          v468 = @"proxyURLPath";
          v710 = v463;
          v714 = *v786;
          do
          {
            v469 = 0;
            v716 = v465;
            do
            {
              if (*v786 != v467)
              {
                objc_enumerationMutation(v463);
              }

              v719 = v469;
              v470 = *(*(&v785 + 1) + 8 * v469);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v727 = objc_alloc_init(*(v466 + 712));
                [(NSPPrivacyProxyConfiguration *)v713 addObliviousConfigs:?];
                v471 = [v470 objectForKeyedSubscript:@"obliviousHTTPConfig"];
                if (v471)
                {
                  v472 = v471;
                  v473 = [v470 objectForKeyedSubscript:@"obliviousHTTPConfig"];
                  objc_opt_class();
                  v474 = objc_opt_isKindOfClass();

                  if (v474)
                  {
                    v475 = [v470 objectForKeyedSubscript:@"obliviousHTTPConfig"];
                    [v727 setObliviousHTTPConfig:v475];
                  }
                }

                v476 = [v470 objectForKeyedSubscript:@"obliviousHTTPType"];
                if (v476)
                {
                  v477 = v476;
                  v478 = [v470 objectForKeyedSubscript:@"obliviousHTTPType"];
                  objc_opt_class();
                  v479 = objc_opt_isKindOfClass();

                  if (v479)
                  {
                    v480 = [v470 objectForKeyedSubscript:@"obliviousHTTPType"];
                    if ([v480 isEqualToString:@"DEFAULT"])
                    {
                      v481 = 0;
                    }

                    else if ([v480 isEqualToString:@"CHUNKED"])
                    {
                      v481 = 1;
                    }

                    else if ([v480 isEqualToString:@"CONTEXT"])
                    {
                      v481 = 2;
                    }

                    else
                    {
                      v481 = 0;
                    }

                    [v727 setObliviousHTTPType:v481];
                  }
                }

                v482 = [v470 objectForKeyedSubscript:@"transparencyKeyBundle"];
                if (v482)
                {
                  v483 = v482;
                  v484 = [v470 objectForKeyedSubscript:@"transparencyKeyBundle"];
                  objc_opt_class();
                  v485 = objc_opt_isKindOfClass();

                  if (v485)
                  {
                    v486 = [v470 objectForKeyedSubscript:@"transparencyKeyBundle"];
                    [v727 setTransparencyKeyBundle:v486];
                  }
                }

                v487 = [v470 objectForKeyedSubscript:@"transparencyProof"];
                if (v487)
                {
                  v488 = v487;
                  v489 = [v470 objectForKeyedSubscript:@"transparencyProof"];
                  objc_opt_class();
                  v490 = objc_opt_isKindOfClass();

                  if (v490)
                  {
                    v491 = [v470 objectForKeyedSubscript:@"transparencyProof"];
                    [v727 setTransparencyProof:v491];
                  }
                }

                v492 = [v470 objectForKeyedSubscript:@"transparencyInternalProof"];
                if (v492)
                {
                  v493 = v492;
                  v494 = [v470 objectForKeyedSubscript:@"transparencyInternalProof"];
                  objc_opt_class();
                  v495 = objc_opt_isKindOfClass();

                  if (v495)
                  {
                    v496 = [v470 objectForKeyedSubscript:@"transparencyInternalProof"];
                    [v727 setTransparencyInternalProof:v496];
                  }
                }

                v497 = [v470 objectForKeyedSubscript:@"obliviousTargets"];
                if (v497)
                {
                  v498 = v497;
                  v499 = [v470 objectForKeyedSubscript:@"obliviousTargets"];
                  objc_opt_class();
                  v500 = objc_opt_isKindOfClass();

                  if (v500)
                  {
                    v501 = [v470 objectForKeyedSubscript:@"obliviousTargets"];
                    v781 = 0u;
                    v782 = 0u;
                    v783 = 0u;
                    v784 = 0u;
                    v741 = v501;
                    v502 = [v741 countByEnumeratingWithState:&v781 objects:v871 count:16];
                    v503 = 0x1E695D000uLL;
                    if (v502)
                    {
                      v504 = v502;
                      v505 = *v782;
                      v722 = *v782;
                      do
                      {
                        v506 = 0;
                        v734 = v504;
                        do
                        {
                          if (*v782 != v505)
                          {
                            objc_enumerationMutation(v741);
                          }

                          v507 = *(*(&v781 + 1) + 8 * v506);
                          v508 = *(v503 + 3872);
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v509 = v468;
                            v510 = objc_alloc_init(NSPPrivacyProxyObliviousTargetInfo);
                            [v727 addObliviousTargets:v510];
                            v511 = [v507 objectForKeyedSubscript:@"targetHost"];
                            if (v511)
                            {
                              v512 = v511;
                              v513 = [v507 objectForKeyedSubscript:@"targetHost"];
                              objc_opt_class();
                              v514 = objc_opt_isKindOfClass();

                              if (v514)
                              {
                                v515 = [v507 objectForKeyedSubscript:@"targetHost"];
                                [(NSPPrivacyProxyObliviousTargetInfo *)v510 setTargetHost:v515];
                              }
                            }

                            v516 = [v507 objectForKeyedSubscript:v509];
                            if (v516)
                            {
                              v517 = v516;
                              v518 = [v507 objectForKeyedSubscript:v509];
                              objc_opt_class();
                              v519 = objc_opt_isKindOfClass();

                              if (v519)
                              {
                                v520 = [v507 objectForKeyedSubscript:v509];
                                [(NSPPrivacyProxyObliviousTargetInfo *)v510 setProxyURLPath:v520];
                              }
                            }

                            v521 = [v507 objectForKeyedSubscript:@"proxyIndex"];
                            if (v521)
                            {
                              v522 = v521;
                              v523 = [v507 objectForKeyedSubscript:@"proxyIndex"];
                              objc_opt_class();
                              v524 = objc_opt_isKindOfClass();

                              if (v524)
                              {
                                v525 = [v507 objectForKeyedSubscript:@"proxyIndex"];
                                -[NSPPrivacyProxyObliviousTargetInfo setProxyIndex:](v510, "setProxyIndex:", [v525 unsignedIntValue]);
                              }
                            }

                            v526 = [v507 objectForKeyedSubscript:@"weight"];
                            if (v526)
                            {
                              v527 = v526;
                              v528 = [v507 objectForKeyedSubscript:@"weight"];
                              objc_opt_class();
                              v529 = objc_opt_isKindOfClass();

                              if (v529)
                              {
                                v530 = [v507 objectForKeyedSubscript:@"weight"];
                                -[NSPPrivacyProxyObliviousTargetInfo setWeight:](v510, "setWeight:", [v530 unsignedIntValue]);
                              }
                            }

                            v531 = [v507 objectForKeyedSubscript:@"processes"];
                            if (v531)
                            {
                              v532 = v531;
                              v533 = [v507 objectForKeyedSubscript:@"processes"];
                              objc_opt_class();
                              v534 = objc_opt_isKindOfClass();

                              if (v534)
                              {
                                v535 = [v507 objectForKeyedSubscript:@"processes"];
                                v777 = 0u;
                                v778 = 0u;
                                v779 = 0u;
                                v780 = 0u;
                                v536 = v535;
                                v537 = [v536 countByEnumeratingWithState:&v777 objects:v870 count:16];
                                if (v537)
                                {
                                  v538 = v537;
                                  v539 = *v778;
                                  do
                                  {
                                    for (i4 = 0; i4 != v538; ++i4)
                                    {
                                      if (*v778 != v539)
                                      {
                                        objc_enumerationMutation(v536);
                                      }

                                      v541 = *(*(&v777 + 1) + 8 * i4);
                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        [(NSPPrivacyProxyObliviousTargetInfo *)v510 addProcesses:v541];
                                      }
                                    }

                                    v538 = [v536 countByEnumeratingWithState:&v777 objects:v870 count:16];
                                  }

                                  while (v538);
                                }

                                v503 = 0x1E695D000;
                              }
                            }

                            v468 = v509;
                            v505 = v722;
                            v504 = v734;
                          }

                          ++v506;
                        }

                        while (v506 != v504);
                        v504 = [v741 countByEnumeratingWithState:&v781 objects:v871 count:16];
                      }

                      while (v504);
                    }

                    v463 = v710;
                    v461 = v711;
                    v466 = 0x1E7A30000;
                  }
                }

                v467 = v714;
                v465 = v716;
              }

              v469 = v719 + 1;
            }

            while (v719 + 1 != v465);
            v465 = [v463 countByEnumeratingWithState:&v785 objects:v872 count:16];
          }

          while (v465);
        }

        v11 = 0x1E695D000uLL;
        v8 = v461;
      }
    }

    v542 = [v8 objectForKeyedSubscript:@"preferredPathEnabledPercentage"];
    if (v542)
    {
      v543 = v542;
      v544 = [v8 objectForKeyedSubscript:@"preferredPathEnabledPercentage"];
      objc_opt_class();
      v545 = objc_opt_isKindOfClass();

      if (v545)
      {
        v546 = [v8 objectForKeyedSubscript:@"preferredPathEnabledPercentage"];
        -[NSPPrivacyProxyConfiguration setPreferredPathEnabledPercentage:](v713, "setPreferredPathEnabledPercentage:", [v546 unsignedIntValue]);
      }
    }

    v547 = [v8 objectForKeyedSubscript:@"proxiedContentMaps"];
    if (v547)
    {
      v548 = v547;
      v549 = [v8 objectForKeyedSubscript:@"proxiedContentMaps"];
      objc_opt_class();
      v550 = objc_opt_isKindOfClass();

      if (v550)
      {
        v551 = [v8 objectForKeyedSubscript:@"proxiedContentMaps"];
        v773 = 0u;
        v774 = 0u;
        v775 = 0u;
        v776 = 0u;
        v742 = v551;
        v552 = [v742 countByEnumeratingWithState:&v773 objects:v869 count:16];
        if (v552)
        {
          v553 = v552;
          v554 = @"systemProcessOnly";
          v555 = *v774;
          v728 = *v774;
          do
          {
            v556 = 0;
            v735 = v553;
            do
            {
              if (*v774 != v555)
              {
                objc_enumerationMutation(v742);
              }

              v557 = *(*(&v773 + 1) + 8 * v556);
              v558 = *(v11 + 3872);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v559 = v554;
                v560 = objc_alloc_init(NSPPrivacyProxyProxiedContentMap);
                [(NSPPrivacyProxyConfiguration *)v713 addProxiedContentMaps:v560];
                v561 = [v557 objectForKeyedSubscript:@"enabled"];
                if (v561)
                {
                  v562 = v561;
                  v563 = [v557 objectForKeyedSubscript:@"enabled"];
                  objc_opt_class();
                  v564 = objc_opt_isKindOfClass();

                  if (v564)
                  {
                    v565 = [v557 objectForKeyedSubscript:@"enabled"];
                    -[NSPPrivacyProxyProxiedContentMap setEnabled:](v560, "setEnabled:", [v565 BOOLValue]);
                  }
                }

                v566 = [v557 objectForKeyedSubscript:v554];
                if (v566)
                {
                  v567 = v566;
                  v568 = [v557 objectForKeyedSubscript:v554];
                  objc_opt_class();
                  v569 = objc_opt_isKindOfClass();

                  if (v569)
                  {
                    v570 = [v557 objectForKeyedSubscript:v554];
                    -[NSPPrivacyProxyProxiedContentMap setSystemProcessOnly:](v560, "setSystemProcessOnly:", [v570 BOOLValue]);
                  }
                }

                v571 = [v557 objectForKeyedSubscript:@"supportsReverseProxying"];
                if (v571)
                {
                  v572 = v571;
                  v573 = [v557 objectForKeyedSubscript:@"supportsReverseProxying"];
                  objc_opt_class();
                  v574 = objc_opt_isKindOfClass();

                  if (v574)
                  {
                    v575 = [v557 objectForKeyedSubscript:@"supportsReverseProxying"];
                    -[NSPPrivacyProxyProxiedContentMap setSupportsReverseProxying:](v560, "setSupportsReverseProxying:", [v575 BOOLValue]);
                  }
                }

                v576 = [v557 objectForKeyedSubscript:@"percentEnabled"];
                if (v576)
                {
                  v577 = v576;
                  v578 = [v557 objectForKeyedSubscript:@"percentEnabled"];
                  objc_opt_class();
                  v579 = objc_opt_isKindOfClass();

                  if (v579)
                  {
                    v580 = [v557 objectForKeyedSubscript:@"percentEnabled"];
                    -[NSPPrivacyProxyProxiedContentMap setPercentEnabled:](v560, "setPercentEnabled:", [v580 unsignedIntValue]);
                  }
                }

                v581 = [v557 objectForKeyedSubscript:@"resolver"];
                if (v581)
                {
                  v582 = v581;
                  v583 = [v557 objectForKeyedSubscript:@"resolver"];
                  objc_opt_class();
                  v584 = objc_opt_isKindOfClass();

                  if (v584)
                  {
                    v585 = [v557 objectForKeyedSubscript:@"resolver"];
                    -[NSPPrivacyProxyProxiedContentMap setResolver:](v560, "setResolver:", [v585 unsignedIntValue]);
                  }
                }

                v586 = [v557 objectForKeyedSubscript:@"identifier"];
                if (v586)
                {
                  v587 = v586;
                  v588 = [v557 objectForKeyedSubscript:@"identifier"];
                  objc_opt_class();
                  v589 = objc_opt_isKindOfClass();

                  if (v589)
                  {
                    v590 = [v557 objectForKeyedSubscript:@"identifier"];
                    [(NSPPrivacyProxyProxiedContentMap *)v560 setIdentifier:v590];
                  }
                }

                v591 = [v557 objectForKeyedSubscript:@"proxies"];
                if (v591)
                {
                  v592 = v591;
                  v593 = [v557 objectForKeyedSubscript:@"proxies"];
                  objc_opt_class();
                  v594 = objc_opt_isKindOfClass();

                  if (v594)
                  {
                    v595 = [v557 objectForKeyedSubscript:@"proxies"];
                    v769 = 0u;
                    v770 = 0u;
                    v771 = 0u;
                    v772 = 0u;
                    v596 = v595;
                    v597 = [v596 countByEnumeratingWithState:&v769 objects:v868 count:16];
                    if (v597)
                    {
                      v598 = v597;
                      v599 = *v770;
                      do
                      {
                        for (i5 = 0; i5 != v598; ++i5)
                        {
                          if (*v770 != v599)
                          {
                            objc_enumerationMutation(v596);
                          }

                          v601 = *(*(&v769 + 1) + 8 * i5);
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            -[NSPPrivacyProxyProxiedContentMap addProxies:](v560, "addProxies:", [v601 unsignedIntValue]);
                          }
                        }

                        v598 = [v596 countByEnumeratingWithState:&v769 objects:v868 count:16];
                      }

                      while (v598);
                    }

                    v11 = 0x1E695D000;
                    v554 = v559;
                  }
                }

                v602 = [v557 objectForKeyedSubscript:@"hostnames"];
                if (v602)
                {
                  v603 = v602;
                  v604 = [v557 objectForKeyedSubscript:@"hostnames"];
                  objc_opt_class();
                  v605 = objc_opt_isKindOfClass();

                  if (v605)
                  {
                    v606 = [v557 objectForKeyedSubscript:@"hostnames"];
                    v765 = 0u;
                    v766 = 0u;
                    v767 = 0u;
                    v768 = 0u;
                    v607 = v606;
                    v608 = [v607 countByEnumeratingWithState:&v765 objects:v867 count:16];
                    if (v608)
                    {
                      v609 = v608;
                      v610 = *v766;
                      do
                      {
                        for (i6 = 0; i6 != v609; ++i6)
                        {
                          if (*v766 != v610)
                          {
                            objc_enumerationMutation(v607);
                          }

                          v612 = *(*(&v765 + 1) + 8 * i6);
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            [(NSPPrivacyProxyProxiedContentMap *)v560 addHostnames:v612];
                          }
                        }

                        v609 = [v607 countByEnumeratingWithState:&v765 objects:v867 count:16];
                      }

                      while (v609);
                    }

                    v11 = 0x1E695D000;
                    v554 = v559;
                  }
                }

                v613 = [v557 objectForKeyedSubscript:@"processes"];
                if (v613)
                {
                  v614 = v613;
                  v615 = [v557 objectForKeyedSubscript:@"processes"];
                  objc_opt_class();
                  v616 = objc_opt_isKindOfClass();

                  if (v616)
                  {
                    v617 = [v557 objectForKeyedSubscript:@"processes"];
                    v761 = 0u;
                    v762 = 0u;
                    v763 = 0u;
                    v764 = 0u;
                    v618 = v617;
                    v619 = [v618 countByEnumeratingWithState:&v761 objects:v866 count:16];
                    if (v619)
                    {
                      v620 = v619;
                      v621 = *v762;
                      do
                      {
                        for (i7 = 0; i7 != v620; ++i7)
                        {
                          if (*v762 != v621)
                          {
                            objc_enumerationMutation(v618);
                          }

                          v623 = *(*(&v761 + 1) + 8 * i7);
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            [(NSPPrivacyProxyProxiedContentMap *)v560 addProcesses:v623];
                          }
                        }

                        v620 = [v618 countByEnumeratingWithState:&v761 objects:v866 count:16];
                      }

                      while (v620);
                    }

                    v11 = 0x1E695D000;
                    v554 = v559;
                  }
                }

                v624 = [v557 objectForKeyedSubscript:@"urls"];
                if (v624)
                {
                  v625 = v624;
                  v626 = [v557 objectForKeyedSubscript:@"urls"];
                  objc_opt_class();
                  v627 = objc_opt_isKindOfClass();

                  if (v627)
                  {
                    v628 = [v557 objectForKeyedSubscript:@"urls"];
                    v757 = 0u;
                    v758 = 0u;
                    v759 = 0u;
                    v760 = 0u;
                    v629 = v628;
                    v630 = [v629 countByEnumeratingWithState:&v757 objects:v865 count:16];
                    if (v630)
                    {
                      v631 = v630;
                      v632 = *v758;
                      do
                      {
                        for (i8 = 0; i8 != v631; ++i8)
                        {
                          if (*v758 != v632)
                          {
                            objc_enumerationMutation(v629);
                          }

                          v634 = *(*(&v757 + 1) + 8 * i8);
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            [(NSPPrivacyProxyProxiedContentMap *)v560 addUrls:v634];
                          }
                        }

                        v631 = [v629 countByEnumeratingWithState:&v757 objects:v865 count:16];
                      }

                      while (v631);
                    }

                    v11 = 0x1E695D000uLL;
                    v554 = v559;
                  }
                }

                v635 = [v557 objectForKeyedSubscript:@"matchExactHostnames"];
                if (v635)
                {
                  v636 = v635;
                  v637 = [v557 objectForKeyedSubscript:@"matchExactHostnames"];
                  objc_opt_class();
                  v638 = objc_opt_isKindOfClass();

                  if (v638)
                  {
                    v639 = [v557 objectForKeyedSubscript:@"matchExactHostnames"];
                    -[NSPPrivacyProxyProxiedContentMap setMatchExactHostnames:](v560, "setMatchExactHostnames:", [v639 BOOLValue]);
                  }
                }

                v640 = [v557 objectForKeyedSubscript:@"isPrivacyProxy"];
                v553 = v735;
                if (v640)
                {
                  v641 = v640;
                  v642 = [v557 objectForKeyedSubscript:@"isPrivacyProxy"];
                  objc_opt_class();
                  v643 = objc_opt_isKindOfClass();

                  if (v643)
                  {
                    v644 = [v557 objectForKeyedSubscript:@"isPrivacyProxy"];
                    -[NSPPrivacyProxyProxiedContentMap setIsPrivacyProxy:](v560, "setIsPrivacyProxy:", [v644 BOOLValue]);
                  }
                }

                v555 = v728;
              }

              ++v556;
            }

            while (v556 != v553);
            v553 = [v742 countByEnumeratingWithState:&v773 objects:v869 count:16];
          }

          while (v553);
        }

        v8 = v711;
      }
    }

    v645 = [v8 objectForKeyedSubscript:@"maxTokenNum"];
    if (v645)
    {
      v646 = v645;
      v647 = [v8 objectForKeyedSubscript:@"maxTokenNum"];
      objc_opt_class();
      v648 = objc_opt_isKindOfClass();

      if (v648)
      {
        v649 = [v8 objectForKeyedSubscript:@"maxTokenNum"];
        -[NSPPrivacyProxyConfiguration setMaxTokenNum:](v713, "setMaxTokenNum:", [v649 unsignedIntValue]);
      }
    }

    v650 = [v8 objectForKeyedSubscript:@"regionId"];
    if (v650)
    {
      v651 = v650;
      v652 = [v8 objectForKeyedSubscript:@"regionId"];
      objc_opt_class();
      v653 = objc_opt_isKindOfClass();

      if (v653)
      {
        v654 = [v8 objectForKeyedSubscript:@"regionId"];
        [(NSPPrivacyProxyConfiguration *)v713 setRegionId:v654];
      }
    }

    v655 = [v8 objectForKeyedSubscript:@"fallbackPathWeights"];
    if (v655)
    {
      v656 = v655;
      v657 = [v8 objectForKeyedSubscript:@"fallbackPathWeights"];
      objc_opt_class();
      v658 = objc_opt_isKindOfClass();

      if (v658)
      {
        v659 = [v8 objectForKeyedSubscript:@"fallbackPathWeights"];
        v753 = 0u;
        v754 = 0u;
        v755 = 0u;
        v756 = 0u;
        v660 = v659;
        v661 = [v660 countByEnumeratingWithState:&v753 objects:v864 count:16];
        if (v661)
        {
          v662 = v661;
          v663 = *v754;
          do
          {
            for (i9 = 0; i9 != v662; ++i9)
            {
              if (*v754 != v663)
              {
                objc_enumerationMutation(v660);
              }

              v665 = *(*(&v753 + 1) + 8 * i9);
              v666 = *(v11 + 3872);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v667 = objc_alloc_init(NSPPrivacyProxyProxyPathWeight);
                [(NSPPrivacyProxyConfiguration *)v713 addFallbackPathWeights:v667];
                v668 = [v665 objectForKeyedSubscript:@"weight"];
                if (v668)
                {
                  v669 = v668;
                  v670 = [v665 objectForKeyedSubscript:@"weight"];
                  objc_opt_class();
                  v671 = objc_opt_isKindOfClass();

                  if (v671)
                  {
                    v672 = [v665 objectForKeyedSubscript:@"weight"];
                    -[NSPPrivacyProxyProxyPathWeight setWeight:](v667, "setWeight:", [v672 unsignedIntValue]);
                  }
                }

                v673 = [v665 objectForKeyedSubscript:@"proxies"];
                if (v673)
                {
                  v674 = v673;
                  v675 = [v665 objectForKeyedSubscript:@"proxies"];
                  objc_opt_class();
                  v676 = objc_opt_isKindOfClass();

                  if (v676)
                  {
                    v677 = [v665 objectForKeyedSubscript:@"proxies"];
                    v749 = 0u;
                    v750 = 0u;
                    v751 = 0u;
                    v752 = 0u;
                    v678 = v677;
                    v679 = [v678 countByEnumeratingWithState:&v749 objects:v863 count:16];
                    if (v679)
                    {
                      v680 = v679;
                      v681 = *v750;
                      do
                      {
                        for (i10 = 0; i10 != v680; ++i10)
                        {
                          if (*v750 != v681)
                          {
                            objc_enumerationMutation(v678);
                          }

                          -[NSPPrivacyProxyProxyPathWeight addProxies:](v667, "addProxies:", [*(*(&v749 + 1) + 8 * i10) unsignedIntValue]);
                        }

                        v680 = [v678 countByEnumeratingWithState:&v749 objects:v863 count:16];
                      }

                      while (v680);
                    }
                  }
                }

                v11 = 0x1E695D000;
              }
            }

            v662 = [v660 countByEnumeratingWithState:&v753 objects:v864 count:16];
          }

          while (v662);
        }

        v8 = v711;
      }
    }

    v683 = [v8 objectForKeyedSubscript:@"trustedNetworkDiscoveredProxies"];
    if (v683)
    {
      v684 = v683;
      v685 = [v8 objectForKeyedSubscript:@"trustedNetworkDiscoveredProxies"];
      objc_opt_class();
      v686 = objc_opt_isKindOfClass();

      if (v686)
      {
        [v8 objectForKeyedSubscript:@"trustedNetworkDiscoveredProxies"];
        v745 = 0u;
        v746 = 0u;
        v747 = 0u;
        v687 = v748 = 0u;
        v688 = [v687 countByEnumeratingWithState:&v745 objects:v862 count:16];
        if (v688)
        {
          v689 = v688;
          v690 = *v746;
          do
          {
            for (i11 = 0; i11 != v689; ++i11)
            {
              if (*v746 != v690)
              {
                objc_enumerationMutation(v687);
              }

              [(NSPPrivacyProxyConfiguration *)v713 addTrustedNetworkDiscoveredProxies:*(*(&v745 + 1) + 8 * i11)];
            }

            v689 = [v687 countByEnumeratingWithState:&v745 objects:v862 count:16];
          }

          while (v689);
        }
      }
    }

    v692 = [(NSPPrivacyProxyConfiguration *)v713 data];
    v693 = [(NSPServerClient *)selfa getConnection];
    if (v693)
    {
      v694 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_int64(v694, "NSPServerCommandType", 16);
      if (v692)
      {
        v696 = v694;
        v697 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v696, "NSPServerConfiguration", v697);
      }

      Property = selfa;
      if (selfa)
      {
        Property = objc_getProperty(selfa, v695, 16, 1);
      }

      v699 = Property;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __66__NSPServerClient_setPrivacyProxyConfiguration_completionHandler___block_invoke;
      handler[3] = &unk_1E7A30920;
      v744 = v703;
      xpc_connection_send_message_with_reply(v693, v694, v699, handler);

      v9 = v703;
    }

    else
    {
      v700 = nplog_obj();
      if (os_log_type_enabled(v700, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1AE7E2000, v700, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
      }

      v9 = v703;
      (v703)[2](v703, @"IPC failed");
    }
  }

  else
  {
    v80 = nplog_obj();
    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v80, OS_LOG_TYPE_ERROR, "Failed to set the NSP configuration: configuration parameter is invalid", buf, 2u);
    }

    v9[2](v9, @"invalid config dictionary");
  }

  v701 = *MEMORY[0x1E69E9840];
}

void __66__NSPServerClient_setPrivacyProxyConfiguration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  if (xdict && MEMORY[0x1B2708030]() == MEMORY[0x1E69E9E80])
  {
    string = xpc_dictionary_get_string(xdict, "NSPServerErrorString");
    if (string)
    {
      string = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:string];
    }
  }

  else
  {
    string = 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, string);
  }
}

- (void)convertPrivacyProxyConfigurationWithCompletionHandler:(id)a3 completionHandler:(id)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = nplog_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v8, OS_LOG_TYPE_DEBUG, "converting privacy proxy configuration data into dictionary", buf, 2u);
  }

  v9 = [(NSPServerClient *)self getConnection];
  if (v9)
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v10, "NSPServerCommandType", 30);
    if (v6)
    {
      v12 = v10;
      v13 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_value(v12, "NSPServerConfiguration", v13);
    }

    if (self)
    {
      self = objc_getProperty(self, v11, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __91__NSPServerClient_convertPrivacyProxyConfigurationWithCompletionHandler_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v19 = v7;
    xpc_connection_send_message_with_reply(v9, v10, &self->super, handler);
  }

  else
  {
    v14 = nplog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v14, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v15 = objc_alloc(MEMORY[0x1E696ABC0]);
    v21 = *MEMORY[0x1E696A588];
    v22[0] = @"IPC failed";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v10 = [v15 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v16];

    (*(v7 + 2))(v7, 0, v10);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __91__NSPServerClient_convertPrivacyProxyConfigurationWithCompletionHandler_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v8 = v3;
    v4 = MEMORY[0x1B2708030]() == MEMORY[0x1E69E9E80];
    v3 = v8;
    if (v4)
    {
      v5 = get_nsdictionary_from_xpc_object(v8, "NSPServerPrivacyProxyConfigDictionary");
      v6 = [NSPServerClient getErrorFromDict:v8];
      v7 = *(a1 + 32);
      if (v7)
      {
        (*(v7 + 16))(v7, v5, v6);
      }

      v3 = v8;
    }
  }
}

+ (id)getErrorFromDict:(uint64_t)a1
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  if (!v2)
  {
    v10 = nplog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = 136315138;
      v12 = "+[NSPServerClient getErrorFromDict:]";
      _os_log_fault_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_FAULT, "%s called with null dict", &v11, 0xCu);
    }

    goto LABEL_3;
  }

  if (MEMORY[0x1B2708030](v2) != MEMORY[0x1E69E9E80])
  {
LABEL_3:
    int64 = 0;
    goto LABEL_13;
  }

  int64 = xpc_dictionary_get_int64(v2, "NSPServerErrorCode");
  string = xpc_dictionary_get_string(v2, "NSPServerErrorString");
  if (string)
  {
    string = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:string];
  }

  v5 = xpc_dictionary_get_string(v2, "NSPServerErrorReason");
  if (v5)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v5];
  }

  v6 = xpc_dictionary_get_string(v2, "NSPServerErrorRequestUUID");
  if (v6)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v6];
  }

  if (int64)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v7 setObject:string forKeyedSubscript:*MEMORY[0x1E696A588]];
    [v7 setObject:v5 forKeyedSubscript:@"NSPServerErrorReason"];
    [v7 setObject:v6 forKeyedSubscript:@"NSPServerErrorRequestUUID"];
    int64 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"privacyProxyErrorDomain" code:int64 userInfo:v7];
  }

LABEL_13:
  v8 = *MEMORY[0x1E69E9840];

  return int64;
}

- (void)overrideProxiedContentMap:(id)a3 enabled:(BOOL)a4 completionHandler:(id)a5
{
  v24[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = nplog_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_DEBUG, "override proxied content map enabled called", buf, 2u);
  }

  v11 = [(NSPServerClient *)self getConnection];
  if (v11)
  {
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v12, "NSPServerCommandType", 61);
    if (v8)
    {
      v13 = v12;
      v14 = v8;
      xpc_dictionary_set_string(v13, "NSPServerProxiedContentMapIdentifier", [v14 UTF8String]);
    }

    xpc_dictionary_set_BOOL(v12, "NSPServerProxiedContentMapEnabled", a4);
    if (self)
    {
      self = objc_getProperty(self, v15, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __71__NSPServerClient_overrideProxiedContentMap_enabled_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v21 = v9;
    xpc_connection_send_message_with_reply(v11, v12, &self->super, handler);
  }

  else
  {
    v16 = nplog_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v16, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v17 = objc_alloc(MEMORY[0x1E696ABC0]);
    v23 = *MEMORY[0x1E696A588];
    v24[0] = @"IPC failed";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v12 = [v17 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v18];

    (*(v9 + 2))(v9, v12);
  }

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t __71__NSPServerClient_overrideProxiedContentMap_enabled_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)getOverrideProxiedContentMapEnabled:(id)a3 completionHandler:(id)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = nplog_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v8, OS_LOG_TYPE_DEBUG, "get override proxied content map enabled called", buf, 2u);
  }

  v9 = [(NSPServerClient *)self getConnection];
  if (v9)
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v10, "NSPServerCommandType", 62);
    if (v6)
    {
      v12 = v10;
      v13 = v6;
      xpc_dictionary_set_string(v12, "NSPServerProxiedContentMapIdentifier", [v13 UTF8String]);
    }

    if (self)
    {
      self = objc_getProperty(self, v11, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __73__NSPServerClient_getOverrideProxiedContentMapEnabled_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v19 = v7;
    xpc_connection_send_message_with_reply(v9, v10, &self->super, handler);
  }

  else
  {
    v14 = nplog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v14, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v15 = objc_alloc(MEMORY[0x1E696ABC0]);
    v21 = *MEMORY[0x1E696A588];
    v22[0] = @"IPC failed";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v10 = [v15 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v16];

    (*(v7 + 2))(v7, 0, v10);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __73__NSPServerClient_getOverrideProxiedContentMapEnabled_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = xpc_dictionary_get_BOOL(v3, "NSPServerProxiedContentMapEnabled");
  v6 = [NSPServerClient getErrorFromDict:v3];

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v4, v6);
  }
}

- (void)setProxiedContentMapDoHBootstrapEnabled:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = nplog_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v20 = v4;
    _os_log_debug_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_DEBUG, "Set proxied content map DoH bootstrap enabled to %u", buf, 8u);
  }

  v8 = [(NSPServerClient *)self getConnection];
  if (v8)
  {
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v9, "NSPServerCommandType", 65);
    xpc_dictionary_set_BOOL(v9, "NSPServerPrivacyProxyEnabled", v4);
    if (self)
    {
      self = objc_getProperty(self, v10, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __77__NSPServerClient_setProxiedContentMapDoHBootstrapEnabled_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v16 = v6;
    xpc_connection_send_message_with_reply(v8, v9, &self->super, handler);
  }

  else
  {
    v11 = nplog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v11, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    v17 = *MEMORY[0x1E696A588];
    v18 = @"IPC failed";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v9 = [v12 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v13];

    (*(v6 + 2))(v6, v9);
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __77__NSPServerClient_setProxiedContentMapDoHBootstrapEnabled_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)overridePreferredProxy:(id)a3 completionHandler:(id)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = nplog_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v8, OS_LOG_TYPE_DEBUG, "override preferred proxy called", buf, 2u);
  }

  v9 = [(NSPServerClient *)self getConnection];
  if (v9)
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v10, "NSPServerCommandType", 37);
    if (v6)
    {
      v12 = v10;
      v13 = v6;
      xpc_dictionary_set_string(v12, "NSPServerPrivacyProxyURL", [v13 UTF8String]);
    }

    if (self)
    {
      self = objc_getProperty(self, v11, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __60__NSPServerClient_overridePreferredProxy_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v19 = v7;
    xpc_connection_send_message_with_reply(v9, v10, &self->super, handler);
  }

  else
  {
    v14 = nplog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v14, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v15 = objc_alloc(MEMORY[0x1E696ABC0]);
    v21 = *MEMORY[0x1E696A588];
    v22[0] = @"IPC failed";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v10 = [v15 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v16];

    (*(v7 + 2))(v7, v10);
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t __60__NSPServerClient_overridePreferredProxy_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)getPreferredProxyWithCompletionHandler:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "get preferred proxy called", buf, 2u);
  }

  v6 = [(NSPServerClient *)self getConnection];
  if (v6)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 38);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __58__NSPServerClient_getPreferredProxyWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v14 = v4;
    xpc_connection_send_message_with_reply(v6, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E696A588];
    v17[0] = @"IPC failed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v7 = [v10 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v11];

    (*(v4 + 2))(v4, 0, v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __58__NSPServerClient_getPreferredProxyWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  string = xpc_dictionary_get_string(v6, "NSPServerPrivacyProxyURL");
  if (string)
  {
    string = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:string];
  }

  v4 = [NSPServerClient getErrorFromDict:v6];
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, string, v4);
  }
}

- (void)overridePreferredResolver:(id)a3 completionHandler:(id)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = nplog_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v8, OS_LOG_TYPE_DEBUG, "override preferred resolver called", buf, 2u);
  }

  v9 = [(NSPServerClient *)self getConnection];
  if (v9)
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v10, "NSPServerCommandType", 43);
    if (v6)
    {
      v12 = v10;
      v13 = v6;
      xpc_dictionary_set_string(v12, "NSPServerPrivacyProxyURL", [v13 UTF8String]);
    }

    if (self)
    {
      self = objc_getProperty(self, v11, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __63__NSPServerClient_overridePreferredResolver_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v19 = v7;
    xpc_connection_send_message_with_reply(v9, v10, &self->super, handler);
  }

  else
  {
    v14 = nplog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v14, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v15 = objc_alloc(MEMORY[0x1E696ABC0]);
    v21 = *MEMORY[0x1E696A588];
    v22[0] = @"IPC failed";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v10 = [v15 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v16];

    (*(v7 + 2))(v7, v10);
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t __63__NSPServerClient_overridePreferredResolver_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)getPreferredResolverWithCompletionHandler:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "get preferred resolver called", buf, 2u);
  }

  v6 = [(NSPServerClient *)self getConnection];
  if (v6)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 44);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __61__NSPServerClient_getPreferredResolverWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v14 = v4;
    xpc_connection_send_message_with_reply(v6, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E696A588];
    v17[0] = @"IPC failed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v7 = [v10 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v11];

    (*(v4 + 2))(v4, 0, v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __61__NSPServerClient_getPreferredResolverWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  string = xpc_dictionary_get_string(v6, "NSPServerPrivacyProxyURL");
  if (string)
  {
    string = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:string];
  }

  v4 = [NSPServerClient getErrorFromDict:v6];
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, string, v4);
  }
}

- (void)overridePreferredObliviousProxy:(id)a3 completionHandler:(id)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = nplog_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v8, OS_LOG_TYPE_DEBUG, "override preferred oblivious proxy called", buf, 2u);
  }

  v9 = [(NSPServerClient *)self getConnection];
  if (v9)
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v10, "NSPServerCommandType", 68);
    if (v6)
    {
      v12 = v10;
      v13 = v6;
      xpc_dictionary_set_string(v12, "NSPServerPrivacyProxyURL", [v13 UTF8String]);
    }

    if (self)
    {
      self = objc_getProperty(self, v11, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __69__NSPServerClient_overridePreferredObliviousProxy_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v19 = v7;
    xpc_connection_send_message_with_reply(v9, v10, &self->super, handler);
  }

  else
  {
    v14 = nplog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v14, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v15 = objc_alloc(MEMORY[0x1E696ABC0]);
    v21 = *MEMORY[0x1E696A588];
    v22[0] = @"IPC failed";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v10 = [v15 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v16];

    (*(v7 + 2))(v7, v10);
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t __69__NSPServerClient_overridePreferredObliviousProxy_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)getPreferredObliviousProxyWithCompletionHandler:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "get preferred oblivious proxy called", buf, 2u);
  }

  v6 = [(NSPServerClient *)self getConnection];
  if (v6)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 69);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __67__NSPServerClient_getPreferredObliviousProxyWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v14 = v4;
    xpc_connection_send_message_with_reply(v6, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E696A588];
    v17[0] = @"IPC failed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v7 = [v10 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v11];

    (*(v4 + 2))(v4, 0, v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __67__NSPServerClient_getPreferredObliviousProxyWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  string = xpc_dictionary_get_string(v6, "NSPServerPrivacyProxyURL");
  if (string)
  {
    string = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:string];
  }

  v4 = [NSPServerClient getErrorFromDict:v6];
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, string, v4);
  }
}

- (void)overrideIngressProxy:(id)a3 fallbackProxy:(id)a4 key:(id)a5 completionHandler:(id)a6
{
  v32[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = nplog_obj();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v14, OS_LOG_TYPE_DEBUG, "override ingress proxy called", buf, 2u);
  }

  v15 = [(NSPServerClient *)self getConnection];
  if (v15)
  {
    v16 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v16, "NSPServerCommandType", 49);
    v17 = v10;
    if (v17)
    {
      v18 = v16;
      xpc_dictionary_set_string(v18, "NSPServerPrivacyProxyURL", [v17 UTF8String]);
    }

    v19 = v11;
    if (v19)
    {
      v20 = v16;
      xpc_dictionary_set_string(v20, "NSPServerPrivacyProxyFallbackURL", [v19 UTF8String]);
    }

    if (v12)
    {
      v22 = v16;
      v23 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_value(v22, "NSPServerPrivacyProxyKey", v23);
    }

    if (self)
    {
      self = objc_getProperty(self, v21, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __76__NSPServerClient_overrideIngressProxy_fallbackProxy_key_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v29 = v13;
    xpc_connection_send_message_with_reply(v15, v16, &self->super, handler);
  }

  else
  {
    v24 = nplog_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v24, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v25 = objc_alloc(MEMORY[0x1E696ABC0]);
    v31 = *MEMORY[0x1E696A588];
    v32[0] = @"IPC failed";
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v16 = [v25 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v26];

    (*(v13 + 2))(v13, v16);
  }

  v27 = *MEMORY[0x1E69E9840];
}

uint64_t __76__NSPServerClient_overrideIngressProxy_fallbackProxy_key_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)getOverrideIngressProxyWithCompletionHandler:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "get override ingress proxy called", buf, 2u);
  }

  v6 = [(NSPServerClient *)self getConnection];
  if (v6)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 50);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __64__NSPServerClient_getOverrideIngressProxyWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v14 = v4;
    xpc_connection_send_message_with_reply(v6, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E696A588];
    v17[0] = @"IPC failed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v7 = [v10 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v11];

    (*(v4 + 2))(v4, 0, 0, 0, v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __64__NSPServerClient_getOverrideIngressProxyWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  string = xpc_dictionary_get_string(xdict, "NSPServerPrivacyProxyURL");
  if (string)
  {
    string = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:string];
  }

  v4 = xpc_dictionary_get_string(xdict, "NSPServerPrivacyProxyFallbackURL");
  if (v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v4];
  }

  v5 = get_nsdata_from_xpc_object(xdict, "NSPServerPrivacyProxyKey");
  v6 = [NSPServerClient getErrorFromDict:?];
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, string, v4, v5, v6);
  }
}

- (void)setForceFallback:(BOOL)a3 completionHandler:(id)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = nplog_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_DEBUG, "force fallback called", buf, 2u);
  }

  v8 = [(NSPServerClient *)self getConnection];
  if (v8)
  {
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v9, "NSPServerCommandType", 46);
    xpc_dictionary_set_BOOL(v9, "NSPServerPrivacyProxyForceFallback", a3);
    if (self)
    {
      self = objc_getProperty(self, v10, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __54__NSPServerClient_setForceFallback_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v16 = v6;
    xpc_connection_send_message_with_reply(v8, v9, &self->super, handler);
  }

  else
  {
    v11 = nplog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v11, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    v18 = *MEMORY[0x1E696A588];
    v19[0] = @"IPC failed";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v9 = [v12 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v13];

    (*(v6 + 2))(v6, v9);
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __54__NSPServerClient_setForceFallback_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)getForceFallbackWithCompletionHandler:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "get force fallback called", buf, 2u);
  }

  v6 = [(NSPServerClient *)self getConnection];
  if (v6)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 47);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __57__NSPServerClient_getForceFallbackWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v14 = v4;
    xpc_connection_send_message_with_reply(v6, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E696A588];
    v17[0] = @"IPC failed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v7 = [v10 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v11];

    (*(v4 + 2))(v4, 0, v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __57__NSPServerClient_getForceFallbackWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = xpc_dictionary_get_BOOL(v3, "NSPServerPrivacyProxyForceFallback");
  v6 = [NSPServerClient getErrorFromDict:v3];

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v4, v6);
  }
}

- (void)setPrivacyProxyStatus:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v22 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = nplog_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v15 = @"Disabled";
    if (v4)
    {
      v15 = @"Enabled";
    }

    *buf = 138412290;
    v21 = v15;
    _os_log_debug_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_DEBUG, "Setting privacy proxy %@", buf, 0xCu);
  }

  v8 = [(NSPServerClient *)self getConnection];
  if (v8)
  {
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v9, "NSPServerCommandType", 17);
    xpc_dictionary_set_BOOL(v9, "NSPServerPrivacyProxyEnabled", v4);
    if (self)
    {
      self = objc_getProperty(self, v10, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __59__NSPServerClient_setPrivacyProxyStatus_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v17 = v6;
    xpc_connection_send_message_with_reply(v8, v9, &self->super, handler);
  }

  else
  {
    v11 = nplog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v11, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    v18 = *MEMORY[0x1E696A588];
    v19 = @"IPC failed";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v9 = [v12 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v13];

    (*(v6 + 2))(v6, v9);
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __59__NSPServerClient_setPrivacyProxyStatus_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)getPrivacyProxyStatusWithCompletionHandler:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "Requesting get privacy proxy status", buf, 2u);
  }

  v6 = [(NSPServerClient *)self getConnection];
  if (v6)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 18);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __62__NSPServerClient_getPrivacyProxyStatusWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v14 = v4;
    xpc_connection_send_message_with_reply(v6, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E696A588];
    v17[0] = @"IPC failed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v7 = [v10 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v11];

    (*(v4 + 2))(v4, 0, v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __62__NSPServerClient_getPrivacyProxyStatusWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = xpc_dictionary_get_BOOL(v3, "NSPServerPrivacyProxyEnabled");
  v6 = [NSPServerClient getErrorFromDict:v3];

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v4, v6);
  }
}

- (void)getPrivacyProxyServiceStatusWithCompletionHandler:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "Requesting get privacy proxy service status", buf, 2u);
  }

  v6 = [(NSPServerClient *)self getConnection];
  if (v6)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 33);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __69__NSPServerClient_getPrivacyProxyServiceStatusWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v14 = v4;
    xpc_connection_send_message_with_reply(v6, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E696A588];
    v17[0] = @"IPC failed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v7 = [v10 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v11];

    (*(v4 + 2))(v4, 0, v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __69__NSPServerClient_getPrivacyProxyServiceStatusWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSPServerClient getErrorFromDict:v3];
  length = 0;
  data = xpc_dictionary_get_data(v3, "NSPServerPrivacyProxyServiceStatus", &length);

  v6 = 0;
  if (data && length)
  {
    v7 = [MEMORY[0x1E695DEF0] dataWithBytes:data length:?];
    v6 = [[PrivacyProxyServiceStatus alloc] initWithData:v7];
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v6, v4);
  }
}

- (void)getPrivacyProxyServiceStatusTimelineWithCompletionHandler:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "Requesting get privacy proxy service status timeline", buf, 2u);
  }

  v6 = [(NSPServerClient *)self getConnection];
  if (v6)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 36);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __77__NSPServerClient_getPrivacyProxyServiceStatusTimelineWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v14 = v4;
    xpc_connection_send_message_with_reply(v6, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E696A588];
    v17[0] = @"IPC failed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v7 = [v10 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v11];

    (*(v4 + 2))(v4, 0, v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __77__NSPServerClient_getPrivacyProxyServiceStatusTimelineWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = [NSPServerClient getErrorFromDict:v3];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  v7 = get_nsdata_from_xpc_object(v3, "NSPServerPrivacyProxyServiceStatusTimeline");

  if (v7)
  {
    v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v6 fromData:v7 error:0];
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v8, v10);
  }
}

- (void)reportPrivacyProxyServiceStatus:(unint64_t)a3 completionHandler:(id)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = nplog_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_DEBUG, "Reporting privacy proxy service status", buf, 2u);
  }

  v8 = [(NSPServerClient *)self getConnection];
  if (v8)
  {
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v9, "NSPServerCommandType", 34);
    xpc_dictionary_set_int64(v9, "NSPServerPrivacyProxyServiceStatus", a3);
    if (self)
    {
      self = objc_getProperty(self, v10, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __69__NSPServerClient_reportPrivacyProxyServiceStatus_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v16 = v6;
    xpc_connection_send_message_with_reply(v8, v9, &self->super, handler);
  }

  else
  {
    v11 = nplog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v11, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    v18 = *MEMORY[0x1E696A588];
    v19[0] = @"IPC failed";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v9 = [v12 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v13];

    (*(v6 + 2))(v6, v9);
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __69__NSPServerClient_reportPrivacyProxyServiceStatus_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)reportPrivacyProxyNetworkStatus:(id)a3 completionHandler:(id)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = nplog_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v8, OS_LOG_TYPE_DEBUG, "Reporting privacy proxy network status", buf, 2u);
  }

  v9 = [(NSPServerClient *)self getConnection];
  if (v9)
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v10, "NSPServerCommandType", 35);
    v12 = [v6 serialize];
    if (v12)
    {
      v13 = v10;
      v14 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_value(v13, "NSPServerPrivacyProxyNetworkStatus", v14);
    }

    if (self)
    {
      self = objc_getProperty(self, v11, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __69__NSPServerClient_reportPrivacyProxyNetworkStatus_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v20 = v7;
    xpc_connection_send_message_with_reply(v9, v10, &self->super, handler);
  }

  else
  {
    v15 = nplog_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v15, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v16 = objc_alloc(MEMORY[0x1E696ABC0]);
    v22 = *MEMORY[0x1E696A588];
    v23[0] = @"IPC failed";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v10 = [v16 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v17];

    (*(v7 + 2))(v7, v10);
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __69__NSPServerClient_reportPrivacyProxyNetworkStatus_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)getPrivacyProxyAppStatusesWithCompletionHandler:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "Requesting get privacy proxy app statuses", buf, 2u);
  }

  v6 = [(NSPServerClient *)self getConnection];
  if (v6)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 63);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __67__NSPServerClient_getPrivacyProxyAppStatusesWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v14 = v4;
    xpc_connection_send_message_with_reply(v6, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E696A588];
    v17[0] = @"IPC failed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v7 = [v10 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v11];

    (*(v4 + 2))(v4, 0, 0, v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __67__NSPServerClient_getPrivacyProxyAppStatusesWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [NSPServerClient getErrorFromDict:v13];
  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v5 = get_nsdata_from_xpc_object(v13, "NSPServerPrivacyProxyAnyAppEnabledDate");
  if (v5)
  {
    v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v4 fromData:v5 error:0];
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = get_nsdata_from_xpc_object(v13, "NSPServerPrivacyProxyAppStatuses");
  if (v10)
  {
    v11 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v9 fromData:v10 error:0];
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    (*(v12 + 16))(v12, v11, v6, v3);
  }
}

- (void)setPrivacyProxyAppStatus:(unint64_t)a3 bundleIdentifier:(id)a4 path:(id)a5 completionHandler:(id)a6
{
  v30[1] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = nplog_obj();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v13, OS_LOG_TYPE_DEBUG, "Reporting privacy proxy service status", buf, 2u);
  }

  v14 = [(NSPServerClient *)self getConnection];
  if (v14)
  {
    v15 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v15, "NSPServerCommandType", 64);
    v16 = [[PrivacyProxyAppStatus alloc] initWithStatus:a3 bundleID:v10 path:v11 activeDate:0];
    v17 = v15;
    v18 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v16 requiringSecureCoding:1 error:0];
    if (v18)
    {
      v19 = v17;
      v20 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_value(v19, "NSPServerPrivacyProxyAppStatus", v20);
    }

    if (self)
    {
      self = objc_getProperty(self, v21, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __84__NSPServerClient_setPrivacyProxyAppStatus_bundleIdentifier_path_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v27 = v12;
    xpc_connection_send_message_with_reply(v14, v17, &self->super, handler);
  }

  else
  {
    v22 = nplog_obj();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v22, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v23 = objc_alloc(MEMORY[0x1E696ABC0]);
    v29 = *MEMORY[0x1E696A588];
    v30[0] = @"IPC failed";
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v17 = [v23 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v24];

    (*(v12 + 2))(v12, v17);
  }

  v25 = *MEMORY[0x1E69E9840];
}

uint64_t __84__NSPServerClient_setPrivacyProxyAppStatus_bundleIdentifier_path_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)setPrivacyProxyUserTier:(unint64_t)a3 completionHandler:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = nplog_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    if (a3 >= 3)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a3];
    }

    else
    {
      v19 = off_1E7A309E0[a3 & 3];
    }

    *buf = 138412290;
    v25 = v19;
    _os_log_debug_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_DEBUG, "Setting user tier for privacy proxy %@", buf, 0xCu);
  }

  v8 = [(NSPServerClient *)self getConnection];
  if (v8)
  {
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v9, "NSPServerCommandType", 19);
    xpc_dictionary_set_uint64(v9, "NSPServerPrivacyProxyUserTier", a3);
    v10 = [MEMORY[0x1E696AAE8] mainBundle];
    v11 = [v10 bundleIdentifier];

    if (v11)
    {
      v13 = v9;
      v14 = v11;
      xpc_dictionary_set_string(v13, "NSPServerSigningIdentifier", [v14 UTF8String]);
    }

    if (self)
    {
      self = objc_getProperty(self, v12, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __61__NSPServerClient_setPrivacyProxyUserTier_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v21 = v6;
    xpc_connection_send_message_with_reply(v8, v9, &self->super, handler);
  }

  else
  {
    v15 = nplog_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v15, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v16 = objc_alloc(MEMORY[0x1E696ABC0]);
    v22 = *MEMORY[0x1E696A588];
    v23 = @"IPC failed";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v9 = [v16 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v17];

    (*(v6 + 2))(v6, v9);
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __61__NSPServerClient_setPrivacyProxyUserTier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)getPrivacyProxyUserTierWithCompletionHandler:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "Get user tier", buf, 2u);
  }

  v6 = [(NSPServerClient *)self getConnection];
  if (v6)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 20);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __64__NSPServerClient_getPrivacyProxyUserTierWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v14 = v4;
    xpc_connection_send_message_with_reply(v6, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E696A588];
    v17[0] = @"IPC failed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v7 = [v10 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v11];

    (*(v4 + 2))(v4, 0, 0, v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __64__NSPServerClient_getPrivacyProxyUserTierWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  v3 = [NSPServerClient getErrorFromDict:?];
  if (xdict && MEMORY[0x1B2708030](xdict) == MEMORY[0x1E69E9E80])
  {
    uint64 = xpc_dictionary_get_uint64(xdict, "NSPServerPrivacyProxyUserTier");
    v5 = xpc_dictionary_get_BOOL(xdict, "NSPServerPrivacyProxySetUntilTomorrow");
  }

  else
  {
    uint64 = 0;
    v5 = 0;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, uint64, v5, v3);
  }
}

- (void)setFreeUserTierUntilTomorrowWithCompletionHandler:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "Set user tier to free until tomorrow", buf, 2u);
  }

  v6 = [(NSPServerClient *)self getConnection];
  if (v6)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 19);
    xpc_dictionary_set_uint64(v7, "NSPServerPrivacyProxyUserTier", 1uLL);
    xpc_dictionary_set_BOOL(v7, "NSPServerPrivacyProxySetUntilTomorrow", 1);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __69__NSPServerClient_setFreeUserTierUntilTomorrowWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v14 = v4;
    xpc_connection_send_message_with_reply(v6, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E696A588];
    v17[0] = @"IPC failed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v7 = [v10 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v11];

    (*(v4 + 2))(v4, v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __69__NSPServerClient_setFreeUserTierUntilTomorrowWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)setPrivacyProxyTrafficState:(unint64_t)a3 proxyTraffic:(unint64_t)a4 completionHandler:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = nplog_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    v22 = a3;
    v23 = 2048;
    v24 = a4;
    _os_log_debug_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_DEBUG, "Setting privacy proxy traffic state for traffic type %llx: %llx", buf, 0x16u);
  }

  v10 = [(NSPServerClient *)self getConnection];
  if (v10)
  {
    v11 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v11, "NSPServerCommandType", 21);
    xpc_dictionary_set_uint64(v11, "NSPServerPrivacyProxyTrafficMask", a3);
    xpc_dictionary_set_uint64(v11, "NSPServerPrivacyProxyTraffic", a4);
    if (self)
    {
      self = objc_getProperty(self, v12, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __78__NSPServerClient_setPrivacyProxyTrafficState_proxyTraffic_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v18 = v8;
    xpc_connection_send_message_with_reply(v10, v11, &self->super, handler);
  }

  else
  {
    v13 = nplog_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v13, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v14 = objc_alloc(MEMORY[0x1E696ABC0]);
    v19 = *MEMORY[0x1E696A588];
    v20 = @"IPC failed";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v11 = [v14 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v15];

    (*(v8 + 2))(v8, v11);
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t __78__NSPServerClient_setPrivacyProxyTrafficState_proxyTraffic_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)getPrivacyProxyTrafficStateWithCompletionHandler:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "Get privacy proxy traffic state", buf, 2u);
  }

  v6 = [(NSPServerClient *)self getConnection];
  if (v6)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 22);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __68__NSPServerClient_getPrivacyProxyTrafficStateWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v14 = v4;
    xpc_connection_send_message_with_reply(v6, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E696A588];
    v17[0] = @"IPC failed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v7 = [v10 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v11];

    (*(v4 + 2))(v4, 0, v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __68__NSPServerClient_getPrivacyProxyTrafficStateWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  v3 = [NSPServerClient getErrorFromDict:?];
  if (xdict && MEMORY[0x1B2708030]() == MEMORY[0x1E69E9E80])
  {
    uint64 = xpc_dictionary_get_uint64(xdict, "NSPServerPrivacyProxyTraffic");
  }

  else
  {
    uint64 = 0;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, uint64, v3);
  }
}

- (void)getPrivacyProxyEffectiveUserTierWithCompletionHandler:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "Get effective user tier", buf, 2u);
  }

  v6 = [(NSPServerClient *)self getConnection];
  if (v6)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 42);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __73__NSPServerClient_getPrivacyProxyEffectiveUserTierWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v14 = v4;
    xpc_connection_send_message_with_reply(v6, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E696A588];
    v17[0] = @"IPC failed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v7 = [v10 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v11];

    (*(v4 + 2))(v4, 0, v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __73__NSPServerClient_getPrivacyProxyEffectiveUserTierWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  v3 = [NSPServerClient getErrorFromDict:?];
  if (xdict && MEMORY[0x1B2708030]() == MEMORY[0x1E69E9E80])
  {
    uint64 = xpc_dictionary_get_uint64(xdict, "NSPServerPrivacyProxyEffectiveUserTier");
  }

  else
  {
    uint64 = 0;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, uint64, v3);
  }
}

- (void)getPrivacyProxyDomainFilters:(id)a3
{
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "get privacy proxy domain filters called", buf, 2u);
  }

  v6 = [(NSPServerClient *)self getConnection];
  if (v6)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 58);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __48__NSPServerClient_getPrivacyProxyDomainFilters___block_invoke;
    handler[3] = &unk_1E7A30920;
    v11 = v4;
    xpc_connection_send_message_with_reply(v6, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    (*(v4 + 2))(v4, 0);
  }
}

uint64_t __48__NSPServerClient_getPrivacyProxyDomainFilters___block_invoke(uint64_t a1, void *a2)
{
  get_nsdictionary_from_xpc_object(a2, "NSPServerPrivacyProxyDomainFilters");
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (id)getAgentUUIDForType:(int64_t)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v18 = 134217984;
    v19 = a3;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "Looking up agent UUID for type %lld", &v18, 0xCu);
  }

  v6 = [(NSPServerClient *)self getConnection];
  if (v6)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 75);
    xpc_dictionary_set_int64(v7, "NSPAgentType", a3);
    v8 = xpc_connection_send_message_with_reply_sync(v6, v7);
    v9 = v8;
    if (v8 && MEMORY[0x1B2708030](v8) == MEMORY[0x1E69E9E80])
    {
      uuid = xpc_dictionary_get_uuid(v9, "NSPAgentUUID");
      if (uuid)
      {
        v11 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:uuid];
        v10 = nplog_obj();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v18 = 138412546;
          v19 = v11;
          v20 = 2048;
          v21 = a3;
          _os_log_debug_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_DEBUG, "Received agent UUID %@ for type %lld", &v18, 0x16u);
        }

        goto LABEL_8;
      }

      v10 = nplog_obj();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_7:
        v11 = 0;
LABEL_8:

        goto LABEL_12;
      }

      v18 = 134217984;
      v19 = a3;
      v15 = "Failed to fetch agent UUID for type %lld, UUID was nil";
      v16 = v10;
      v17 = 12;
    }

    else
    {
      v10 = nplog_obj();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v18 = 134218242;
      v19 = a3;
      v20 = 2112;
      v21 = v9;
      v15 = "Failed to fetch agent UUID for type %lld, message failed (%@)";
      v16 = v10;
      v17 = 22;
    }

    _os_log_error_impl(&dword_1AE7E2000, v16, OS_LOG_TYPE_ERROR, v15, &v18, v17);
    goto LABEL_7;
  }

  v7 = nplog_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v18 = 134217984;
    v19 = a3;
    _os_log_error_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_ERROR, "Failed to fetch agent UUID for type %lld, unable to get connection", &v18, 0xCu);
  }

  v11 = 0;
LABEL_12:

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)getPrivacyProxyPolicyWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "fetching privacy proxy policy data", buf, 2u);
  }

  v6 = [(NSPServerClient *)self getConnection];
  if (v6)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 23);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __62__NSPServerClient_getPrivacyProxyPolicyWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v10 = v4;
    xpc_connection_send_message_with_reply(v6, v7, &self->super, handler);
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

void __62__NSPServerClient_getPrivacyProxyPolicyWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v7 = v3;
    v4 = MEMORY[0x1B2708030]() == MEMORY[0x1E69E9E80];
    v3 = v7;
    if (v4)
    {
      v5 = get_nsdictionary_from_xpc_object(v7, "NSPServerPrivacyProxyPolicy");
      v6 = *(a1 + 32);
      if (v6)
      {
        (*(v6 + 16))(v6, v5);
      }

      v3 = v7;
    }
  }
}

- (void)setPrivacyProxyPolicy:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = nplog_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v8, OS_LOG_TYPE_DEBUG, "setting privacy proxy policy", buf, 2u);
  }

  v9 = [(NSPServerClient *)self getConnection];
  if (v9)
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v10, "NSPServerCommandType", 24);
    if (v6)
    {
      v12 = v10;
      v13 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_value(v12, "NSPServerPrivacyProxyPolicy", v13);
    }

    if (self)
    {
      self = objc_getProperty(self, v11, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __59__NSPServerClient_setPrivacyProxyPolicy_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v15 = v7;
    xpc_connection_send_message_with_reply(v9, v10, &self->super, handler);
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

uint64_t __59__NSPServerClient_setPrivacyProxyPolicy_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    xdict = v3;
    if (MEMORY[0x1B2708030](v3) == MEMORY[0x1E69E9E80])
    {
      v4 = xpc_dictionary_get_BOOL(xdict, "NSPServerCommandResult");
      v5 = *(a1 + 32);
      if (v5)
      {
        (*(v5 + 16))(v5, v4, xdict);
      }
    }
  }

  return MEMORY[0x1EEE66BE0]();
}

- (BOOL)removePrivacyProxyPolicy
{
  v3 = nplog_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v10 = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v3, OS_LOG_TYPE_DEBUG, "removing privacy proxy policy", v10, 2u);
  }

  v4 = [(NSPServerClient *)self getConnection];
  if (v4)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v5, "NSPServerCommandType", 25);
    v6 = xpc_connection_send_message_with_reply_sync(v4, v5);
    v7 = v6;
    v8 = v6 && MEMORY[0x1B2708030](v6) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_BOOL(v7, "NSPServerCommandResult");
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)mergePrivacyProxyPolicy:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "merging privacy proxy policy with proxy traffic state", buf, 2u);
  }

  v6 = [(NSPServerClient *)self getConnection];
  if (v6)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 31);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __43__NSPServerClient_mergePrivacyProxyPolicy___block_invoke;
    handler[3] = &unk_1E7A30920;
    v14 = v4;
    xpc_connection_send_message_with_reply(v6, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E696A588];
    v17[0] = @"IPC failed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v7 = [v10 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v11];

    (*(v4 + 2))(v4, 0, v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __43__NSPServerClient_mergePrivacyProxyPolicy___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v8 = v3;
    v4 = MEMORY[0x1B2708030]() == MEMORY[0x1E69E9E80];
    v3 = v8;
    if (v4)
    {
      v5 = get_nsdictionary_from_xpc_object(v8, "NSPServerPrivacyProxyPolicy");
      v6 = [NSPServerClient getErrorFromDict:v8];
      v7 = *(a1 + 32);
      if (v7)
      {
        (*(v7 + 16))(v7, v5, v6);
      }

      v3 = v8;
    }
  }
}

- (void)locationAuthorizationStatusWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "getting location authorization status", buf, 2u);
  }

  v6 = [(NSPServerClient *)self getConnection];
  if (v6)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 26);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __68__NSPServerClient_locationAuthorizationStatusWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v10 = v4;
    xpc_connection_send_message_with_reply(v6, v7, &self->super, handler);
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

uint64_t __68__NSPServerClient_locationAuthorizationStatusWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  xdict = v3;
  if (v3 && MEMORY[0x1B2708030](v3) == MEMORY[0x1E69E9E80])
  {
    xpc_dictionary_get_BOOL(xdict, "NSPServerCommandResult");
    v6 = *(a1 + 32);
    if (!v6)
    {
      goto LABEL_8;
    }

    v5 = *(v6 + 16);
  }

  else
  {
    v4 = *(a1 + 32);
    if (!v4)
    {
      goto LABEL_8;
    }

    v5 = *(v4 + 16);
  }

  v5();
LABEL_8:

  return MEMORY[0x1EEE66BE0]();
}

- (void)setLocationMonitorInterval:(double)a3
{
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "setting location monitor time interval", v8, 2u);
  }

  v6 = [(NSPServerClient *)self getConnection];
  if (v6)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 27);
    xpc_dictionary_set_double(v7, "NSPServerLocationMonitorInterval", a3);
    xpc_connection_send_message(v6, v7);
  }
}

- (void)startLocationMonitor
{
  v3 = nplog_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v3, OS_LOG_TYPE_DEBUG, "starting location monitor", v6, 2u);
  }

  v4 = [(NSPServerClient *)self getConnection];
  if (v4)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v5, "NSPServerCommandType", 28);
    xpc_connection_send_message(v4, v5);
  }
}

- (void)stopLocationMonitor
{
  v3 = nplog_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v3, OS_LOG_TYPE_DEBUG, "stopping location monitor", v6, 2u);
  }

  v4 = [(NSPServerClient *)self getConnection];
  if (v4)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v5, "NSPServerCommandType", 29);
    xpc_connection_send_message(v4, v5);
  }
}

- (void)getPrivacyProxyInfoWithCompletionHandler:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "Get privacy proxy info", buf, 2u);
  }

  v6 = [(NSPServerClient *)self getConnection];
  if (v6)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 32);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __60__NSPServerClient_getPrivacyProxyInfoWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v14 = v4;
    xpc_connection_send_message_with_reply(v6, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E696A588];
    v17[0] = @"IPC failed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v7 = [v10 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v11];

    (*(v4 + 2))(v4, 0, v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __60__NSPServerClient_getPrivacyProxyInfoWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSPServerClient getErrorFromDict:v3];
  length = 0;
  data = xpc_dictionary_get_data(v3, "NSPServerPrivacyProxyInfo", &length);

  v6 = 0;
  if (data && length)
  {
    v7 = [MEMORY[0x1E695DEF0] dataWithBytes:data length:?];
    v6 = [[PrivacyProxyInfo alloc] initWithData:v7];
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v6, v4);
  }
}

- (void)setGeohashSharingPreference:(BOOL)a3 completionHandler:(id)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = nplog_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_DEBUG, "Set Geohash sharing preference", buf, 2u);
  }

  v8 = [(NSPServerClient *)self getConnection];
  if (v8)
  {
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v9, "NSPServerCommandType", 39);
    xpc_dictionary_set_BOOL(v9, "NSPServerPrivacyProxyGeohashSharingEnabled", a3);
    if (self)
    {
      self = objc_getProperty(self, v10, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __65__NSPServerClient_setGeohashSharingPreference_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v16 = v6;
    xpc_connection_send_message_with_reply(v8, v9, &self->super, handler);
  }

  else
  {
    v11 = nplog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v11, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    v18 = *MEMORY[0x1E696A588];
    v19[0] = @"IPC failed";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v9 = [v12 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v13];

    (*(v6 + 2))(v6, v9);
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __65__NSPServerClient_setGeohashSharingPreference_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)getGeohashSharingPreferenceWithCompletionHandler:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "Get Geohash sharing preference", buf, 2u);
  }

  v6 = [(NSPServerClient *)self getConnection];
  if (v6)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 40);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __68__NSPServerClient_getGeohashSharingPreferenceWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v14 = v4;
    xpc_connection_send_message_with_reply(v6, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E696A588];
    v17[0] = @"IPC failed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v7 = [v10 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v11];

    (*(v4 + 2))(v4, 0, v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __68__NSPServerClient_getGeohashSharingPreferenceWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = xpc_dictionary_get_BOOL(v3, "NSPServerPrivacyProxyGeohashSharingEnabled");
  v6 = [NSPServerClient getErrorFromDict:v3];

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v4, v6);
  }
}

- (void)setGeohashOverride:(id)a3 completionHandler:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = nplog_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v21 = v6;
    _os_log_debug_impl(&dword_1AE7E2000, v8, OS_LOG_TYPE_DEBUG, "Set Geohash override to %@", buf, 0xCu);
  }

  v9 = [(NSPServerClient *)self getConnection];
  if (v9)
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v10, "NSPServerCommandType", 48);
    if ([v6 length])
    {
      xpc_dictionary_set_string(v10, "NSPServerPrivacyProxyGeohash", [v6 UTF8String]);
    }

    if (self)
    {
      self = objc_getProperty(self, v11, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __56__NSPServerClient_setGeohashOverride_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v17 = v7;
    xpc_connection_send_message_with_reply(v9, v10, &self->super, handler);
  }

  else
  {
    v12 = nplog_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v12, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v13 = objc_alloc(MEMORY[0x1E696ABC0]);
    v18 = *MEMORY[0x1E696A588];
    v19 = @"IPC failed";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v10 = [v13 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v14];

    (*(v7 + 2))(v7, v10);
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __56__NSPServerClient_setGeohashOverride_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)getPrivacyProxyAccountTypeWithCompletionHandler:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "Get Privacy Proxy account type", buf, 2u);
  }

  v6 = [(NSPServerClient *)self getConnection];
  if (v6)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 41);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __67__NSPServerClient_getPrivacyProxyAccountTypeWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v14 = v4;
    xpc_connection_send_message_with_reply(v6, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E696A588];
    v17[0] = @"IPC failed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v7 = [v10 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v11];

    (*(v4 + 2))(v4, 0, 0, v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __67__NSPServerClient_getPrivacyProxyAccountTypeWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  uint64 = xpc_dictionary_get_uint64(v3, "NSPServerPrivacyProxyAccountType");
  v5 = xpc_dictionary_get_BOOL(v3, "NSPServerPrivacyProxyAccountUnlimited");
  v7 = [NSPServerClient getErrorFromDict:v3];

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, uint64, v5, v7);
  }
}

- (void)setPrivateAccessTokensEnabled:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = nplog_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v20 = v4;
    _os_log_debug_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_DEBUG, "Set private access tokens enabled state to %u", buf, 8u);
  }

  v8 = [(NSPServerClient *)self getConnection];
  if (v8)
  {
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v9, "NSPServerCommandType", 54);
    xpc_dictionary_set_BOOL(v9, "NSPServerPrivacyProxyPrivateAccessTokensEnabled", v4);
    if (self)
    {
      self = objc_getProperty(self, v10, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __67__NSPServerClient_setPrivateAccessTokensEnabled_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v16 = v6;
    xpc_connection_send_message_with_reply(v8, v9, &self->super, handler);
  }

  else
  {
    v11 = nplog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v11, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    v17 = *MEMORY[0x1E696A588];
    v18 = @"IPC failed";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v9 = [v12 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v13];

    (*(v6 + 2))(v6, v9);
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __67__NSPServerClient_setPrivateAccessTokensEnabled_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)getPrivateAccessTokensEnabledWithCompletionHandler:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "Get private access tokens enabled state", buf, 2u);
  }

  v6 = [(NSPServerClient *)self getConnection];
  if (v6)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 55);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __70__NSPServerClient_getPrivateAccessTokensEnabledWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v14 = v4;
    xpc_connection_send_message_with_reply(v6, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E696A588];
    v17[0] = @"IPC failed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v7 = [v10 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v11];

    (*(v4 + 2))(v4, 0, v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __70__NSPServerClient_getPrivateAccessTokensEnabledWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = xpc_dictionary_get_BOOL(v3, "NSPServerPrivacyProxyPrivateAccessTokensEnabled");
  v6 = [NSPServerClient getErrorFromDict:v3];

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v4, v6);
  }
}

- (void)privateAccessTokensAllowTools:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = nplog_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v20 = v4;
    _os_log_debug_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_DEBUG, "Set private access tokens allow tools to %u", buf, 8u);
  }

  v8 = [(NSPServerClient *)self getConnection];
  if (v8)
  {
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v9, "NSPServerCommandType", 56);
    xpc_dictionary_set_BOOL(v9, "NSPServerPrivacyProxyPrivateAccessTokensEnabled", v4);
    if (self)
    {
      self = objc_getProperty(self, v10, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __67__NSPServerClient_privateAccessTokensAllowTools_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v16 = v6;
    xpc_connection_send_message_with_reply(v8, v9, &self->super, handler);
  }

  else
  {
    v11 = nplog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v11, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    v17 = *MEMORY[0x1E696A588];
    v18 = @"IPC failed";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v9 = [v12 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v13];

    (*(v6 + 2))(v6, v9);
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __67__NSPServerClient_privateAccessTokensAllowTools_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)setInProcessFlowDivert:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = nplog_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v20 = v4;
    _os_log_debug_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_DEBUG, "Set in-process flow divert enabled to %u", buf, 8u);
  }

  v8 = [(NSPServerClient *)self getConnection];
  if (v8)
  {
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v9, "NSPServerCommandType", 59);
    xpc_dictionary_set_BOOL(v9, "NSPServerPrivacyProxyInProcessFlowDivertEnabled", v4);
    if (self)
    {
      self = objc_getProperty(self, v10, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __60__NSPServerClient_setInProcessFlowDivert_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v16 = v6;
    xpc_connection_send_message_with_reply(v8, v9, &self->super, handler);
  }

  else
  {
    v11 = nplog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v11, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    v17 = *MEMORY[0x1E696A588];
    v18 = @"IPC failed";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v9 = [v12 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v13];

    (*(v6 + 2))(v6, v9);
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __60__NSPServerClient_setInProcessFlowDivert_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)setPreferredPathRoutingEnabled:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = nplog_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v20 = v4;
    _os_log_debug_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_DEBUG, "Set preferred path routing enabled to %u", buf, 8u);
  }

  v8 = [(NSPServerClient *)self getConnection];
  if (v8)
  {
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v9, "NSPServerCommandType", 57);
    xpc_dictionary_set_BOOL(v9, "NSPServerPrivacyProxyEnabled", v4);
    if (self)
    {
      self = objc_getProperty(self, v10, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __68__NSPServerClient_setPreferredPathRoutingEnabled_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v16 = v6;
    xpc_connection_send_message_with_reply(v8, v9, &self->super, handler);
  }

  else
  {
    v11 = nplog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v11, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    v17 = *MEMORY[0x1E696A588];
    v18 = @"IPC failed";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v9 = [v12 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v13];

    (*(v6 + 2))(v6, v9);
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __68__NSPServerClient_setPreferredPathRoutingEnabled_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)sendRTCReport:(int64_t)a3 errorCode:(int64_t)a4 url:(id)a5 completionHandler:(id)a6
{
  v26[1] = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  v12 = nplog_obj();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v12, OS_LOG_TYPE_DEBUG, "send RTC report", buf, 2u);
  }

  v13 = [(NSPServerClient *)self getConnection];
  if (v13)
  {
    v14 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v14, "NSPServerCommandType", 45);
    xpc_dictionary_set_int64(v14, "NSPServerPrivacyProxyRTCReportType", a3);
    xpc_dictionary_set_int64(v14, "NSPServerPrivacyProxyRTCReportErrorCode", a4);
    if (v10)
    {
      v16 = v14;
      v17 = v10;
      xpc_dictionary_set_string(v16, "NSPServerPrivacyProxyRTCReportURL", [v17 UTF8String]);
    }

    if (self)
    {
      self = objc_getProperty(self, v15, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __65__NSPServerClient_sendRTCReport_errorCode_url_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v23 = v11;
    xpc_connection_send_message_with_reply(v13, v14, &self->super, handler);
  }

  else
  {
    v18 = nplog_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v18, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v19 = objc_alloc(MEMORY[0x1E696ABC0]);
    v25 = *MEMORY[0x1E696A588];
    v26[0] = @"IPC failed";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v14 = [v19 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v20];

    (*(v11 + 2))(v11, v14);
  }

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t __65__NSPServerClient_sendRTCReport_errorCode_url_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)fetchPrivateAccessTokenWithFetcher:(id)a3 allowRetry:(BOOL)a4 completionHandler:(id)a5
{
  v91 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = nplog_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(bytes[0]) = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_DEBUG, "Fetching Private Access Token", bytes, 2u);
  }

  v11 = [(NSPServerClient *)self getTokenFetchConnection];
  if (v11)
  {
    v76 = v9;
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v12, "NSPServerCommandType", 51);
    xarray = xpc_array_create(0, 0);
    v14 = xpc_dictionary_create(0, 0, 0);
    if (v8)
    {
      v15 = objc_getProperty(v8, v13, 64, 1);
      if (v15)
      {
        v16 = v14;
        v17 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v16, "NSPServerPrivateAccessTokenChallenge", v17);
      }

      v19 = objc_getProperty(v8, v18, 80, 1);
      if (v19)
      {
        v20 = v14;
        v21 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v20, "NSPServerPrivateAccessTokenKey", v21);
      }

      v23 = objc_getProperty(v8, v22, 88, 1);
      if (v23)
      {
        v24 = v14;
        v25 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v24, "NSPServerPrivateAccessTokenOriginNameKey", v25);
      }
    }

    else
    {
      v23 = 0;
    }

    xpc_array_append_value(xarray, v14);
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v77 = v8;
    v75 = v11;
    v74 = a4;
    v73 = self;
    v71 = v14;
    if (v8)
    {
      Property = objc_getProperty(v8, v26, 120, 1);
    }

    else
    {
      Property = 0;
    }

    v28 = Property;
    v29 = [v28 countByEnumeratingWithState:&v84 objects:v90 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v85;
      do
      {
        v32 = 0;
        do
        {
          if (*v85 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v84 + 1) + 8 * v32);
          v35 = xpc_dictionary_create(0, 0, 0);
          if (v33)
          {
            v36 = objc_getProperty(v33, v34, 64, 1);
            if (v36)
            {
              v37 = v35;
              v38 = _CFXPCCreateXPCObjectFromCFObject();
              xpc_dictionary_set_value(v37, "NSPServerPrivateAccessTokenChallenge", v38);
            }

            v40 = objc_getProperty(v33, v39, 80, 1);
            if (v40)
            {
              v41 = v35;
              v42 = _CFXPCCreateXPCObjectFromCFObject();
              xpc_dictionary_set_value(v41, "NSPServerPrivateAccessTokenKey", v42);
            }

            v33 = objc_getProperty(v33, v43, 88, 1);
            if (v33)
            {
              v44 = v35;
              v45 = _CFXPCCreateXPCObjectFromCFObject();
              xpc_dictionary_set_value(v44, "NSPServerPrivateAccessTokenOriginNameKey", v45);
            }
          }

          xpc_array_append_value(xarray, v35);
          ++v32;
        }

        while (v30 != v32);
        v46 = [v28 countByEnumeratingWithState:&v84 objects:v90 count:{16, v71}];
        v30 = v46;
      }

      while (v46);
    }

    v47 = v12;
    xpc_dictionary_set_value(v12, "NSPServerPrivateAccessTokenChallenges", xarray);
    v8 = v77;
    if ([v77 rateLimit])
    {
      xpc_dictionary_set_uint64(v12, "NSPServerPrivateAccessTokenRateLimit", [v77 rateLimit]);
    }

    v11 = v75;
    v9 = v76;
    if ([v77 metadataSize])
    {
      xpc_dictionary_set_uint64(v12, "NSPServerPrivateAccessTokenMetadataSize", [v77 metadataSize]);
    }

    v48 = [v77 selectedOrigin];
    if (v48)
    {
      v49 = v12;
      xpc_dictionary_set_string(v49, "NSPServerPrivateAccessTokenOriginName", [v48 UTF8String]);
    }

    v50 = [v77 bundleID];
    if (v50)
    {
      v51 = v12;
      xpc_dictionary_set_string(v51, "NSPServerSigningIdentifier", [v50 UTF8String]);
    }

    if (v77)
    {
      v52 = !v77[20] && v77[21] == 0;
      v53 = v52 && v77[22] == 0;
      if (!v53 || v77[23] != 0)
      {
        memset(bytes, 0, sizeof(bytes));
        [v77 auditToken];
        xpc_dictionary_set_data(v12, "NSPServerEffectiveAuditToken", bytes, 0x20uLL);
      }
    }

    if ([v77 systemClient])
    {
      xpc_dictionary_set_BOOL(v12, "NSPServerTokenSystemClient", 1);
    }

    v55 = [v77 customAttester];

    if (v55)
    {
      v56 = [v77 customAttester];
      v57 = [v56 absoluteString];
      if (v57)
      {
        v58 = v12;
        xpc_dictionary_set_string(v58, "NSPServerPrivateAccessTokenCustomAttester", [v57 UTF8String]);
      }

      v59 = [v77 customAttesterHeaders];
      if (v59)
      {
        v60 = v12;
        v61 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v60, "NSPServerPrivateAccessTokenCustomAttesterHeaders", v61);
      }
    }

    v62 = [v77 auxiliaryAuthenticationCacheKey];

    if (v62)
    {
      v64 = [v77 auxiliaryAuthenticationCacheKey];
      if (v64)
      {
        v65 = v12;
        xpc_dictionary_set_string(v65, "NSPServerAuxiliaryAuthenticationCacheKey", [v64 UTF8String]);
      }
    }

    if (v73)
    {
      v66 = objc_getProperty(v73, v63, 16, 1);
    }

    else
    {
      v66 = 0;
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __83__NSPServerClient_fetchPrivateAccessTokenWithFetcher_allowRetry_completionHandler___block_invoke;
    handler[3] = &unk_1E7A309C0;
    v82 = v74;
    handler[4] = v73;
    v80 = v77;
    v81 = v76;
    xpc_connection_send_message_with_reply(v75, v12, v66, handler);
  }

  else
  {
    v67 = nplog_obj();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      LOWORD(bytes[0]) = 0;
      _os_log_error_impl(&dword_1AE7E2000, v67, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", bytes, 2u);
    }

    v68 = objc_alloc(MEMORY[0x1E696ABC0]);
    v88 = *MEMORY[0x1E696A588];
    v89 = @"IPC failed";
    v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
    v47 = [v68 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v69];

    (*(v9 + 2))(v9, 0, v47);
  }

  v70 = *MEMORY[0x1E69E9840];
}

void __83__NSPServerClient_fetchPrivateAccessTokenWithFetcher_allowRetry_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E20] && *(a1 + 56) == 1)
  {
    v5 = nplog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_ERROR, "Token fetcher got invalid connection, retrying", v9, 2u);
    }

    [*(a1 + 32) fetchPrivateAccessTokenWithFetcher:*(a1 + 40) allowRetry:0 completionHandler:*(a1 + 48)];
  }

  else
  {
    v6 = get_nsdata_from_xpc_object(v3, "NSPServerPrivateAccessToken");
    v7 = [NSPServerClient getErrorFromDict:v4];
    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))(v8, v6, v7);
    }
  }
}

- (void)fetchPrivateAccessTokenPairWithFetcher:(id)a3 allowRetry:(BOOL)a4 completionHandler:(id)a5
{
  v68[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = nplog_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(bytes[0]) = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_DEBUG, "Fetching Private Access Token Pair", bytes, 2u);
  }

  if (v8 && (v12 = objc_getProperty(v8, v11, 64, 1)) != 0 && (v14 = v12, v15 = objc_getProperty(v8, v13, 72, 1), v15, v14, v15))
  {
    v16 = [(NSPServerClient *)self getTokenFetchConnection];
    if (v16)
    {
      v17 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_int64(v17, "NSPServerCommandType", 51);
      v18 = xpc_array_create(0, 0);
      v19 = xpc_dictionary_create(0, 0, 0);
      v21 = objc_getProperty(v8, v20, 64, 1);
      v59 = v19;
      if (v21)
      {
        v22 = v19;
        v23 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v22, "NSPServerPrivateAccessTokenChallenge", v23);

        v19 = v59;
      }

      v25 = objc_getProperty(v8, v24, 80, 1);
      if (v25)
      {
        v26 = v19;
        v27 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v26, "NSPServerPrivateAccessTokenKey", v27);

        v19 = v59;
      }

      v29 = objc_getProperty(v8, v28, 88, 1);
      if (v29)
      {
        v30 = v19;
        v31 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v30, "NSPServerPrivateAccessTokenOriginNameKey", v31);

        v19 = v59;
      }

      xpc_array_append_value(v18, v19);
      v32 = xpc_dictionary_create(0, 0, 0);
      v34 = objc_getProperty(v8, v33, 72, 1);
      if (v34)
      {
        v35 = v32;
        v58 = v16;
        v36 = v9;
        v37 = v17;
        v38 = self;
        v39 = v32;
        v40 = v18;
        v41 = a4;
        v42 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v35, "NSPServerPrivateAccessPairedTokenChallenge", v42);

        a4 = v41;
        v18 = v40;
        v32 = v39;
        self = v38;
        v17 = v37;
        v9 = v36;
        v16 = v58;
      }

      xpc_array_append_value(v18, v32);
      xpc_dictionary_set_value(v17, "NSPServerPrivateAccessTokenChallenges", v18);
      v43 = [v8 selectedOrigin];
      if (v43)
      {
        v44 = v17;
        xpc_dictionary_set_string(v44, "NSPServerPrivateAccessTokenOriginName", [v43 UTF8String]);
      }

      v45 = [v8 bundleID];
      if (v45)
      {
        v46 = v17;
        xpc_dictionary_set_string(v46, "NSPServerSigningIdentifier", [v45 UTF8String]);
      }

      if (v8[20])
      {
        v47 = 0;
      }

      else
      {
        v47 = v8[21] == 0;
      }

      if (!v47 || v8[22] != 0 || v8[23] != 0)
      {
        memset(bytes, 0, sizeof(bytes));
        [v8 auditToken];
        xpc_dictionary_set_data(v17, "NSPServerEffectiveAuditToken", bytes, 0x20uLL);
      }

      if ([v8 systemClient])
      {
        xpc_dictionary_set_BOOL(v17, "NSPServerTokenSystemClient", 1);
      }

      xpc_dictionary_set_BOOL(v17, "NSPServerHasPairedTokenChallenges", 1);
      if (self)
      {
        Property = objc_getProperty(self, v50, 16, 1);
      }

      else
      {
        Property = 0;
      }

      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __87__NSPServerClient_fetchPrivateAccessTokenPairWithFetcher_allowRetry_completionHandler___block_invoke;
      handler[3] = &unk_1E7A309C0;
      v63 = a4;
      handler[4] = self;
      v61 = v8;
      v62 = v9;
      xpc_connection_send_message_with_reply(v16, v17, Property, handler);
    }

    else
    {
      v52 = nplog_obj();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        LOWORD(bytes[0]) = 0;
        _os_log_error_impl(&dword_1AE7E2000, v52, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", bytes, 2u);
      }

      v53 = objc_alloc(MEMORY[0x1E696ABC0]);
      v65 = *MEMORY[0x1E696A588];
      v66 = @"IPC failed";
      v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
      v17 = [v53 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v54];

      (*(v9 + 2))(v9, 0, 0, 0, v17);
    }
  }

  else
  {
    v55 = objc_alloc(MEMORY[0x1E696ABC0]);
    v67 = *MEMORY[0x1E696A588];
    v68[0] = @"No paired challenges found";
    v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:&v67 count:1];
    v16 = [v55 initWithDomain:@"privacyProxyErrorDomain" code:1004 userInfo:v56];

    (*(v9 + 2))(v9, 0, 0, 0, v16);
  }

  v57 = *MEMORY[0x1E69E9840];
}

void __87__NSPServerClient_fetchPrivateAccessTokenPairWithFetcher_allowRetry_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E20] && *(a1 + 56) == 1)
  {
    v5 = nplog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_ERROR, "Token fetcher got invalid connection, retrying", v11, 2u);
    }

    [*(a1 + 32) fetchPrivateAccessTokenPairWithFetcher:*(a1 + 40) allowRetry:0 completionHandler:*(a1 + 48)];
  }

  else
  {
    v6 = get_nsdata_from_xpc_object(v3, "NSPServerPrivateAccessTokenPairLongLived");
    v7 = get_nsdata_from_xpc_object(v4, "NSPServerPrivateAccessTokenPairOneTime");
    v8 = get_nsdata_from_xpc_object(v4, "NSPServerPrivateAccessTokenPairOneTimeSalt");
    v9 = [NSPServerClient getErrorFromDict:v4];
    v10 = *(a1 + 48);
    if (v10)
    {
      (*(v10 + 16))(v10, v6, v7, v8, v9);
    }
  }
}

- (void)fetchPrivateAccessTokenAndAuxAuthWithFetcher:(id)a3 allowRetry:(BOOL)a4 completionHandler:(id)a5
{
  v66[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = nplog_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(bytes[0]) = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_DEBUG, "Fetching Private Access Token and Auxiliary Authentication", bytes, 2u);
  }

  if (v8 && (v12 = objc_getProperty(v8, v11, 64, 1)) != 0 && (v14 = v12, v15 = objc_getProperty(v8, v13, 96, 1), v15, v14, v15))
  {
    v16 = [(NSPServerClient *)self getTokenFetchConnection];
    if (v16)
    {
      v56 = a4;
      v17 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_int64(v17, "NSPServerCommandType", 51);
      v18 = xpc_array_create(0, 0);
      v19 = xpc_dictionary_create(0, 0, 0);
      v21 = objc_getProperty(v8, v20, 64, 1);
      v57 = v19;
      if (v21)
      {
        v22 = v19;
        v23 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v22, "NSPServerPrivateAccessTokenChallenge", v23);
      }

      v25 = objc_getProperty(v8, v24, 80, 1);
      if (v25)
      {
        v26 = v19;
        v27 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v26, "NSPServerPrivateAccessTokenKey", v27);
      }

      xpc_array_append_value(v18, v19);
      v28 = xpc_dictionary_create(0, 0, 0);
      v30 = objc_getProperty(v8, v29, 96, 1);
      if (v30)
      {
        v31 = v28;
        v32 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v31, "NSPServerAuxiliaryAuthenticationChallenge", v32);
      }

      v34 = objc_getProperty(v8, v33, 104, 1);
      if (v34)
      {
        v35 = v28;
        v36 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v35, "NSPServerPrivateAccessTokenKey", v36);
      }

      v38 = objc_getProperty(v8, v37, 112, 1);
      if (v38)
      {
        v39 = v28;
        xpc_dictionary_set_string(v39, "NSPServerAuxiliaryAuthenticationLabel", [v38 UTF8String]);
      }

      xpc_array_append_value(v18, v28);
      xpc_dictionary_set_value(v17, "NSPServerPrivateAccessTokenChallenges", v18);
      v40 = [v8 bundleID];
      if (v40)
      {
        v41 = v17;
        xpc_dictionary_set_string(v41, "NSPServerSigningIdentifier", [v40 UTF8String]);
      }

      if (v8[20])
      {
        v42 = 0;
      }

      else
      {
        v42 = v8[21] == 0;
      }

      if (!v42 || v8[22] != 0 || v8[23] != 0)
      {
        memset(bytes, 0, sizeof(bytes));
        [v8 auditToken];
        xpc_dictionary_set_data(v17, "NSPServerEffectiveAuditToken", bytes, 0x20uLL);
      }

      if ([v8 systemClient])
      {
        xpc_dictionary_set_BOOL(v17, "NSPServerTokenSystemClient", 1);
      }

      if ([v8 metadataSize])
      {
        xpc_dictionary_set_uint64(v17, "NSPServerPrivateAccessTokenMetadataSize", [v8 metadataSize]);
      }

      v45 = [v8 auxiliaryAuthenticationCacheKey];

      if (v45)
      {
        v46 = [v8 auxiliaryAuthenticationCacheKey];
        if (v46)
        {
          v47 = v17;
          xpc_dictionary_set_string(v47, "NSPServerAuxiliaryAuthenticationCacheKey", [v46 UTF8String]);
        }
      }

      xpc_dictionary_set_BOOL(v17, "NSPServerHasAuxiliaryAuthenticationChallenges", 1);
      if (self)
      {
        Property = objc_getProperty(self, v48, 16, 1);
      }

      else
      {
        Property = 0;
      }

      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __93__NSPServerClient_fetchPrivateAccessTokenAndAuxAuthWithFetcher_allowRetry_completionHandler___block_invoke;
      handler[3] = &unk_1E7A309C0;
      v61 = v56;
      handler[4] = self;
      v59 = v8;
      v60 = v9;
      xpc_connection_send_message_with_reply(v16, v17, Property, handler);
    }

    else
    {
      v50 = nplog_obj();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        LOWORD(bytes[0]) = 0;
        _os_log_error_impl(&dword_1AE7E2000, v50, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", bytes, 2u);
      }

      v51 = objc_alloc(MEMORY[0x1E696ABC0]);
      v63 = *MEMORY[0x1E696A588];
      v64 = @"IPC failed";
      v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
      v17 = [v51 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v52];

      (*(v9 + 2))(v9, 0, 0, v17);
    }
  }

  else
  {
    v53 = objc_alloc(MEMORY[0x1E696ABC0]);
    v65 = *MEMORY[0x1E696A588];
    v66[0] = @"Challenges not found";
    v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:&v65 count:1];
    v16 = [v53 initWithDomain:@"privacyProxyErrorDomain" code:1004 userInfo:v54];

    (*(v9 + 2))(v9, 0, 0, v16);
  }

  v55 = *MEMORY[0x1E69E9840];
}

void __93__NSPServerClient_fetchPrivateAccessTokenAndAuxAuthWithFetcher_allowRetry_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E20] && *(a1 + 56) == 1)
  {
    v5 = nplog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_ERROR, "Token fetcher got invalid connection, retrying", v10, 2u);
    }

    [*(a1 + 32) fetchPrivateAccessTokenAndAuxAuthWithFetcher:*(a1 + 40) allowRetry:0 completionHandler:*(a1 + 48)];
  }

  else
  {
    v6 = get_nsdata_from_xpc_object(v3, "NSPServerPrivateAccessToken");
    v7 = get_nsdata_from_xpc_object(v4, "NSPServerAuxiliaryAuthenticationData");
    v8 = [NSPServerClient getErrorFromDict:v4];
    v9 = *(a1 + 48);
    if (v9)
    {
      (*(v9 + 16))(v9, v6, v7, v8);
    }
  }
}

- (void)fetchKnownPrivateAccessTokenKeyWithFetcher:(id)a3 allowRetry:(BOOL)a4 completionHandler:(id)a5
{
  v29[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = nplog_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_DEBUG, "Fetching Private Access Token key", buf, 2u);
  }

  v11 = [(NSPServerClient *)self getTokenFetchConnection];
  if (v11)
  {
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v12, "NSPServerCommandType", 70);
    if (v8)
    {
      v14 = objc_getProperty(v8, v13, 64, 1);
      if (v14)
      {
        v15 = v12;
        v16 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v15, "NSPServerPrivateAccessTokenChallenge", v16);
      }
    }

    else
    {
      v14 = 0;
    }

    if (self)
    {
      Property = objc_getProperty(self, v17, 16, 1);
    }

    else
    {
      Property = 0;
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __91__NSPServerClient_fetchKnownPrivateAccessTokenKeyWithFetcher_allowRetry_completionHandler___block_invoke;
    v23[3] = &unk_1E7A309C0;
    v26 = a4;
    v23[4] = self;
    v24 = v8;
    v25 = v9;
    xpc_connection_send_message_with_reply(v11, v12, Property, v23);
  }

  else
  {
    v19 = nplog_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v19, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v20 = objc_alloc(MEMORY[0x1E696ABC0]);
    v28 = *MEMORY[0x1E696A588];
    v29[0] = @"IPC failed";
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v12 = [v20 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v21];

    (*(v9 + 2))(v9, 0, v12);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __91__NSPServerClient_fetchKnownPrivateAccessTokenKeyWithFetcher_allowRetry_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E20] && *(a1 + 56) == 1)
  {
    v5 = nplog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_ERROR, "Token fetcher got invalid connection, retrying", v9, 2u);
    }

    [*(a1 + 32) fetchKnownPrivateAccessTokenKeyWithFetcher:*(a1 + 40) allowRetry:0 completionHandler:*(a1 + 48)];
  }

  else
  {
    v6 = get_nsdata_from_xpc_object(v3, "NSPServerPrivateAccessTokenKey");
    v7 = [NSPServerClient getErrorFromDict:v4];
    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))(v8, v6, v7);
    }
  }
}

- (void)addToken:(id)a3 toCacheForFetcher:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = nplog_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1AE7E2000, v8, OS_LOG_TYPE_INFO, "Adding Private Access Token to cache", buf, 2u);
  }

  v9 = [(NSPServerClient *)self getTokenFetchConnection];
  if (v9)
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v10, "NSPServerCommandType", 71);
    if (v7)
    {
      v12 = objc_getProperty(v7, v11, 64, 1);
      if (v12)
      {
        v13 = v10;
        v14 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v13, "NSPServerPrivateAccessTokenChallenge", v14);
      }
    }

    else
    {
      v12 = 0;
    }

    if (v6)
    {
      v15 = v10;
      v16 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_value(v15, "NSPServerPrivateAccessToken", v16);
    }

    xpc_connection_send_message(v9, v10);
  }

  else
  {
    v10 = nplog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", v17, 2u);
    }
  }
}

- (void)addOneTimeToken:(id)a3 oneTimeTokenSalt:(id)a4 longLivedToken:(id)a5 toCacheForFetcher:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = nplog_obj();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1AE7E2000, v14, OS_LOG_TYPE_INFO, "Adding One Time Token to cache", buf, 2u);
  }

  v15 = [(NSPServerClient *)self getTokenFetchConnection];
  if (v15)
  {
    v16 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v16, "NSPServerCommandType", 71);
    if (v13)
    {
      v18 = objc_getProperty(v13, v17, 64, 1);
      if (v18)
      {
        v19 = v16;
        v20 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v19, "NSPServerPrivateAccessTokenChallenge", v20);
      }

      v22 = objc_getProperty(v13, v21, 72, 1);
      if (v22)
      {
        v23 = v16;
        v24 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v23, "NSPServerPrivateAccessPairedTokenChallenge", v24);
      }
    }

    else
    {
      v22 = 0;
    }

    if (v12)
    {
      v25 = v16;
      v26 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_value(v25, "NSPServerPrivateAccessTokenPairLongLived", v26);
    }

    if (v10)
    {
      v27 = v16;
      v28 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_value(v27, "NSPServerPrivateAccessTokenPairOneTime", v28);
    }

    if (v11)
    {
      v29 = v16;
      v30 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_value(v29, "NSPServerPrivateAccessTokenPairOneTimeSalt", v30);
    }

    xpc_connection_send_message(v15, v16);
  }

  else
  {
    v16 = nplog_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v31 = 0;
      _os_log_error_impl(&dword_1AE7E2000, v16, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", v31, 2u);
    }
  }
}

- (void)addAuxiliaryAuthenticationData:(id)a3 type:(unint64_t)a4 label:(id)a5 cacheKey:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = nplog_obj();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1AE7E2000, v13, OS_LOG_TYPE_INFO, "Adding auxiliary authentication data to cache", buf, 2u);
  }

  v14 = [(NSPServerClient *)self getTokenFetchConnection];
  if (v14)
  {
    v15 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v15, "NSPServerCommandType", 72);
    if (v10)
    {
      v16 = v15;
      v17 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_value(v16, "NSPServerAuxiliaryAuthenticationData", v17);
    }

    v18 = v11;
    if (v18)
    {
      v19 = v15;
      xpc_dictionary_set_string(v19, "NSPServerAuxiliaryAuthenticationLabel", [v18 UTF8String]);
    }

    v20 = v12;
    if (v20)
    {
      v21 = v15;
      xpc_dictionary_set_string(v21, "NSPServerAuxiliaryAuthenticationCacheKey", [v20 UTF8String]);
    }

    xpc_dictionary_set_int64(v15, "NSPServerAuxiliaryAuthenticationType", a4);
    xpc_connection_send_message(v14, v15);
  }

  else
  {
    v15 = nplog_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v22 = 0;
      _os_log_error_impl(&dword_1AE7E2000, v15, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", v22, 2u);
    }
  }
}

- (void)fetchAuxiliaryAuthenticationDataFromCacheForType:(unint64_t)a3 label:(id)a4 cacheKey:(id)a5 completionHandler:(id)a6
{
  v29[1] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = nplog_obj();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1AE7E2000, v13, OS_LOG_TYPE_INFO, "Fetching auxiliary authentication data from cache", buf, 2u);
  }

  v14 = [(NSPServerClient *)self getTokenFetchConnection];
  if (v14)
  {
    v15 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v15, "NSPServerCommandType", 73);
    v16 = v10;
    if (v16)
    {
      v17 = v15;
      xpc_dictionary_set_string(v17, "NSPServerAuxiliaryAuthenticationLabel", [v16 UTF8String]);
    }

    v18 = v11;
    if (v18)
    {
      v19 = v15;
      xpc_dictionary_set_string(v19, "NSPServerAuxiliaryAuthenticationCacheKey", [v18 UTF8String]);
    }

    xpc_dictionary_set_int64(v15, "NSPServerAuxiliaryAuthenticationType", a3);
    if (self)
    {
      self = objc_getProperty(self, v20, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __101__NSPServerClient_fetchAuxiliaryAuthenticationDataFromCacheForType_label_cacheKey_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v26 = v12;
    xpc_connection_send_message_with_reply(v14, v15, &self->super, handler);
  }

  else
  {
    v21 = nplog_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v21, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v22 = objc_alloc(MEMORY[0x1E696ABC0]);
    v28 = *MEMORY[0x1E696A588];
    v29[0] = @"IPC failed";
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v15 = [v22 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v23];

    (*(v12 + 2))(v12, 0, v15);
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __101__NSPServerClient_fetchAuxiliaryAuthenticationDataFromCacheForType_label_cacheKey_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = get_nsdata_from_xpc_object(v3, "NSPServerAuxiliaryAuthenticationData");
  v4 = [NSPServerClient getErrorFromDict:v3];

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v6, v4);
  }
}

- (BOOL)checkOriginAllowedAsThirdParty:(id)a3
{
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_INFO, "Checking origin for Private Access Token", buf, 2u);
  }

  v6 = [(NSPServerClient *)self getTokenFetchConnection];
  if (v6)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 60);
    v8 = v4;
    if (v8)
    {
      v9 = v7;
      xpc_dictionary_set_string(v9, "NSPServerPrivateAccessTokenOriginName", [v8 UTF8String]);
    }

    v10 = xpc_connection_send_message_with_reply_sync(v6, v7);
    v11 = xpc_dictionary_get_BOOL(v10, "NSPServerPrivateAccessTokenOriginAllowed");
  }

  else
  {
    v7 = nplog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", v13, 2u);
    }

    v11 = 0;
  }

  return v11;
}

- (void)startProxyToMPTCPConverterProxyWithCompletionHandler:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "send start request to proxy socket based TCP connections to MPTCP converter proxy", buf, 2u);
  }

  v6 = [(NSPServerClient *)self getConnection];
  if (v6)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 52);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __72__NSPServerClient_startProxyToMPTCPConverterProxyWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v14 = v4;
    xpc_connection_send_message_with_reply(v6, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E696A588];
    v17[0] = @"IPC failed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v7 = [v10 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v11];

    (*(v4 + 2))(v4, v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __72__NSPServerClient_startProxyToMPTCPConverterProxyWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)stopProxyToMPTCPConverterProxyWithCompletionHandler:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = nplog_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "send stop request to proxy socket based TCP connections to MPTCP converter proxy", buf, 2u);
  }

  v6 = [(NSPServerClient *)self getConnection];
  if (v6)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "NSPServerCommandType", 53);
    if (self)
    {
      self = objc_getProperty(self, v8, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __71__NSPServerClient_stopProxyToMPTCPConverterProxyWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v14 = v4;
    xpc_connection_send_message_with_reply(v6, v7, &self->super, handler);
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E696A588];
    v17[0] = @"IPC failed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v7 = [v10 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v11];

    (*(v4 + 2))(v4, v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __71__NSPServerClient_stopProxyToMPTCPConverterProxyWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)dumpPrivacyProxyTokenEventsWithCompletionHandler:(id)a3 mostRecent:(BOOL)a4 limit:(unint64_t)a5 dumpStats:(BOOL)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a7;
  v14 = [(NSPServerClient *)self getConnection];
  if (v14)
  {
    v15 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v15, "NSPServerCommandType", 66);
    v16 = v12;
    if (v16)
    {
      v17 = v15;
      xpc_dictionary_set_string(v17, "NSPServerPrivacyProxyTokenEventsVendor", [v16 UTF8String]);
    }

    xpc_dictionary_set_BOOL(v15, "NSPServerPrivacyProxyTokenEventsMostRecent", a4);
    xpc_dictionary_set_uint64(v15, "NSPServerPrivacyProxyTokenEventsLimit", a5);
    xpc_dictionary_set_BOOL(v15, "NSPServerPrivacyProxyTokenEventsStats", a6);
    if (self)
    {
      self = objc_getProperty(self, v18, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __113__NSPServerClient_dumpPrivacyProxyTokenEventsWithCompletionHandler_mostRecent_limit_dumpStats_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v20 = v13;
    xpc_connection_send_message_with_reply(v14, v15, &self->super, handler);
  }

  else
  {
    (*(v13 + 2))(v13, 0);
  }
}

uint64_t __113__NSPServerClient_dumpPrivacyProxyTokenEventsWithCompletionHandler_mostRecent_limit_dumpStats_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  get_nsarray_from_xpc_object(a2, "NSPServerPrivacyProxyTokenEvents");
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)setPrivacyProxyTokenEventsProactiveTokenFetchParams:(id)a3 lowerTokenCountThresholdStr:(id)a4 lowerTokenCountProbabilityStr:(id)a5 statsDurationStr:(id)a6 upperLWMCountThresholdStr:(id)a7 upperLWMCountProbabilityOffsetStr:(id)a8 completionHandler:(id)a9
{
  v43[1] = *MEMORY[0x1E69E9840];
  v15 = a3;
  v38 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v37 = a8;
  v19 = a9;
  v20 = [(NSPServerClient *)self getConnection];
  if (v20)
  {
    v21 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v21, "NSPServerCommandType", 67);
    v23 = v15;
    if (v15)
    {
      v24 = [v15 caseInsensitiveCompare:@"Yes"];
      if (!v24 || ![v15 caseInsensitiveCompare:@"No"])
      {
        xpc_dictionary_set_BOOL(v21, "NSPServerPrivacyProxyTokenEventsEnableProactiveTokenFetch", v24 == 0);
      }
    }

    v25 = v17;
    if (v17)
    {
      v26 = [v17 integerValue];
      if (v26 >= 1)
      {
        xpc_dictionary_set_uint64(v21, "NSPServerPrivacyProxyTokenEventsSetStatsDuration", v26);
      }
    }

    v28 = v37;
    v27 = v38;
    if (v38)
    {
      v29 = [v38 integerValue];
      if (v29 >= 1)
      {
        xpc_dictionary_set_uint64(v21, "NSPServerPrivacyProxyTokenEventsSetLowerTokenCountThreshold", v29);
      }
    }

    if (v16)
    {
      [v16 doubleValue];
      if (v30 >= 0.0 && v30 <= 1.0)
      {
        xpc_dictionary_set_double(v21, "NSPServerPrivacyProxyTokenEventsSetLowerTokenCountProbability", v30);
      }
    }

    if (v18)
    {
      v31 = [v18 integerValue];
      if (v31 >= 1)
      {
        xpc_dictionary_set_uint64(v21, "NSPServerPrivacyProxyTokenEventsSetUpperLWMCountThreshold", v31);
      }
    }

    if (v37)
    {
      [v37 doubleValue];
      if (v32 >= 0.0 && v32 <= 1.0)
      {
        xpc_dictionary_set_double(v21, "NSPServerPrivacyProxyTokenEventsSetUpperLWMCountProbabilityOffset", v32);
      }
    }

    if (self)
    {
      self = objc_getProperty(self, v22, 16, 1);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __224__NSPServerClient_setPrivacyProxyTokenEventsProactiveTokenFetchParams_lowerTokenCountThresholdStr_lowerTokenCountProbabilityStr_statsDurationStr_upperLWMCountThresholdStr_upperLWMCountProbabilityOffsetStr_completionHandler___block_invoke;
    handler[3] = &unk_1E7A30920;
    v41 = v19;
    xpc_connection_send_message_with_reply(v20, v21, &self->super, handler);
  }

  else
  {
    v23 = v15;
    v33 = nplog_obj();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v33, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", buf, 2u);
    }

    v34 = objc_alloc(MEMORY[0x1E696ABC0]);
    v42 = *MEMORY[0x1E696A588];
    v43[0] = @"IPC failed";
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
    v21 = [v34 initWithDomain:@"privacyProxyErrorDomain" code:1004 userInfo:v35];

    (*(v19 + 2))(v19, v21);
    v25 = v17;
    v28 = v37;
    v27 = v38;
  }

  v36 = *MEMORY[0x1E69E9840];
}

uint64_t __224__NSPServerClient_setPrivacyProxyTokenEventsProactiveTokenFetchParams_lowerTokenCountThresholdStr_lowerTokenCountProbabilityStr_statsDurationStr_upperLWMCountThresholdStr_upperLWMCountProbabilityOffsetStr_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [NSPServerClient getErrorFromDict:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)checkRemainingCostQuotaWithFetcher:(id)a3 allowRetry:(BOOL)a4 completionHandler:(id)a5
{
  v34[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = nplog_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(bytes[0]) = 0;
    _os_log_debug_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_DEBUG, "Checking remaining cost quota", bytes, 2u);
  }

  v11 = [(NSPServerClient *)self getTokenFetchConnection];
  if (v11)
  {
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v12, "NSPServerCommandType", 76);
    if (v8)
    {
      v14 = objc_getProperty(v8, v13, 64, 1);
      if (v14)
      {
        v15 = v12;
        v16 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v15, "NSPServerPrivateAccessTokenChallenge", v16);
      }
    }

    else
    {
      v14 = 0;
    }

    v17 = [v8 bundleID];
    if (v17)
    {
      v18 = v12;
      xpc_dictionary_set_string(v18, "NSPServerSigningIdentifier", [v17 UTF8String]);
    }

    if (v8)
    {
      v20 = !v8[20] && v8[21] == 0;
      v21 = v20 && v8[22] == 0;
      if (!v21 || v8[23] != 0)
      {
        memset(bytes, 0, sizeof(bytes));
        [v8 auditToken];
        xpc_dictionary_set_data(v12, "NSPServerEffectiveAuditToken", bytes, 0x20uLL);
      }
    }

    if (self)
    {
      Property = objc_getProperty(self, v19, 16, 1);
    }

    else
    {
      Property = 0;
    }

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __83__NSPServerClient_checkRemainingCostQuotaWithFetcher_allowRetry_completionHandler___block_invoke;
    v28[3] = &unk_1E7A309C0;
    v31 = a4;
    v28[4] = self;
    v29 = v8;
    v30 = v9;
    xpc_connection_send_message_with_reply(v11, v12, Property, v28);
  }

  else
  {
    v24 = nplog_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      LOWORD(bytes[0]) = 0;
      _os_log_error_impl(&dword_1AE7E2000, v24, OS_LOG_TYPE_ERROR, "Failed to get XPC connection", bytes, 2u);
    }

    v25 = objc_alloc(MEMORY[0x1E696ABC0]);
    v33 = *MEMORY[0x1E696A588];
    v34[0] = @"IPC failed";
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v12 = [v25 initWithDomain:@"privacyProxyErrorDomain" code:1002 userInfo:v26];

    (*(v9 + 2))(v9, 0, v12, 0.0, 0.0);
  }

  v27 = *MEMORY[0x1E69E9840];
}

void __83__NSPServerClient_checkRemainingCostQuotaWithFetcher_allowRetry_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E20] && *(a1 + 56) == 1)
  {
    v5 = nplog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_ERROR, "Check cost quota got invalid connection, retrying", v12, 2u);
    }

    [*(a1 + 32) checkRemainingCostQuotaWithFetcher:*(a1 + 40) allowRetry:0 completionHandler:*(a1 + 48)];
  }

  else
  {
    v6 = xpc_dictionary_get_double(v3, "NSPServerQuotaCostLimit");
    v7 = xpc_dictionary_get_double(v4, "NSPServerQuotaCostRemaining");
    uint64 = xpc_dictionary_get_uint64(v4, "NSPServerQuotaExpiration");
    if (uint64)
    {
      v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:uint64];
    }

    else
    {
      v9 = 0;
    }

    v10 = [NSPServerClient getErrorFromDict:v4];
    v11 = *(a1 + 48);
    if (v11)
    {
      (*(v11 + 16))(v11, v9, v10, v6, v7);
    }
  }
}

@end
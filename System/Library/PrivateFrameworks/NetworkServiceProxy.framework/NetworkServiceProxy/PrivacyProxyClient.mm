@interface PrivacyProxyClient
+ (BOOL)currentProcessShouldUseOpaqueProxying;
+ (id)bootstrapDNSAgentUUID;
+ (id)dnsAgentUUID;
+ (id)getServerConnection;
+ (id)multiHopFallbackProxyAgentUUID;
+ (id)multiHopProxyAgentUUID;
+ (id)singleHopFallbackProxyAgentUUID;
+ (id)singleHopProxyAgentUUID;
+ (void)configurationFetch:(id)fetch completionHandler:(id)handler;
+ (void)getAppStatuses:(id)statuses completionHandler:(id)handler;
+ (void)getEffectiveUserTier:(id)tier completionHandler:(id)handler;
+ (void)getForceFallback:(id)fallback completionHandler:(id)handler;
+ (void)getGeohashSharingPreference:(id)preference completionHandler:(id)handler;
+ (void)getOverriddeIngressProxy:(id)proxy completionHandler:(id)handler;
+ (void)getPreferredProxy:(id)proxy completionHandler:(id)handler;
+ (void)getPreferredResolver:(id)resolver completionHandler:(id)handler;
+ (void)getPrivacyProxyAccountType:(id)type completionHandler:(id)handler;
+ (void)getPrivacyProxyAccountTypeExtended:(id)extended completionHandler:(id)handler;
+ (void)getPrivateAccessTokensEnabled:(id)enabled completionHandler:(id)handler;
+ (void)getProxiedContentMapEnabledForIdentifier:(id)identifier queue:(id)queue completionHandler:(id)handler;
+ (void)getServiceStatus:(id)status completionHandler:(id)handler;
+ (void)getServiceStatusTimeline:(id)timeline completionHandler:(id)handler;
+ (void)getStatus:(id)status completionHandler:(id)handler;
+ (void)getTrafficState:(id)state completionandler:(id)completionandler;
+ (void)getUserTier:(id)tier completionHandler:(id)handler;
+ (void)getUserTierExtended:(id)extended completionHandler:(id)handler;
+ (void)overrideIngressProxy:(id)proxy fallbackProxy:(id)fallbackProxy key:(id)key queue:(id)queue completionHandler:(id)handler;
+ (void)overridePreferredProxy:(id)proxy queue:(id)queue completionHandler:(id)handler;
+ (void)overridePreferredResolver:(id)resolver queue:(id)queue completionHandler:(id)handler;
+ (void)reportCellularNetworkStatus:(BOOL)status networkName:(id)name queue:(id)queue completionHandler:(id)handler;
+ (void)reportWiFiNetworkStatus:(BOOL)status networkName:(id)name queue:(id)queue completionHandler:(id)handler;
+ (void)setAppStatus:(unint64_t)status bundleIdentifier:(id)identifier queue:(id)queue completionHandler:(id)handler;
+ (void)setAppStatus:(unint64_t)status path:(id)path queue:(id)queue completionHandler:(id)handler;
+ (void)setFreeUserTierUntilTomorrow:(id)tomorrow completionHandler:(id)handler;
+ (void)setTrafficState:(unint64_t)state proxyTraffic:(unint64_t)traffic queue:(id)queue completionHandler:(id)handler;
+ (void)setUserTier:(unint64_t)tier queue:(id)queue completionHandler:(id)handler;
@end

@implementation PrivacyProxyClient

+ (BOOL)currentProcessShouldUseOpaqueProxying
{
  v18 = *MEMORY[0x1E69E9840];
  if (qword_1ED4BF600 != -1)
  {
    dispatch_once(&qword_1ED4BF600, &__block_literal_global_13);
  }

  if (!qword_1ED4BF5F8)
  {
    goto LABEL_14;
  }

  os_unfair_lock_lock(&_MergedGlobals_26);
  if (currentProcessShouldUseOpaqueProxying_reverseProxyToken == -1)
  {
    v2 = notify_register_check("networkserviceproxy-reverse-proxy", &currentProcessShouldUseOpaqueProxying_reverseProxyToken);
    if (v2)
    {
      v3 = v2;
      currentProcessShouldUseOpaqueProxying_reverseProxyToken = -1;
      v4 = nplog_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v13 = "networkserviceproxy-reverse-proxy";
        v14 = 1024;
        v15 = v3;
        _os_log_error_impl(&dword_1AE7E2000, v4, OS_LOG_TYPE_ERROR, "Failed to register for %s notifications: %u", buf, 0x12u);
      }
    }
  }

  os_unfair_lock_unlock(&_MergedGlobals_26);
  if (currentProcessShouldUseOpaqueProxying_reverseProxyToken < 0)
  {
    goto LABEL_14;
  }

  state64 = 0;
  state = notify_get_state(currentProcessShouldUseOpaqueProxying_reverseProxyToken, &state64);
  if (state)
  {
    v6 = state;
    v7 = nplog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v13 = "networkserviceproxy-reverse-proxy";
      v14 = 1024;
      v15 = currentProcessShouldUseOpaqueProxying_reverseProxyToken;
      v16 = 1024;
      v17 = v6;
      _os_log_error_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_ERROR, "Failed to get the state of notification %s, token %d: %u", buf, 0x18u);
    }

    os_unfair_lock_lock(&_MergedGlobals_26);
    notify_cancel(currentProcessShouldUseOpaqueProxying_reverseProxyToken);
    currentProcessShouldUseOpaqueProxying_reverseProxyToken = -1;
    os_unfair_lock_unlock(&_MergedGlobals_26);
    goto LABEL_14;
  }

  if ((qword_1ED4BF5F8 & state64) == 0)
  {
LABEL_14:
    result = 0;
    goto LABEL_15;
  }

  v10 = nplog_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_INFO, "Should use opaque proxying (from notify status)", buf, 2u);
  }

  result = 1;
LABEL_15:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __59__PrivacyProxyClient_currentProcessShouldUseOpaqueProxying__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v0 bundleIdentifier];

  if (v4)
  {
    v1 = [&unk_1F2442810 objectForKeyedSubscript:?];
    v2 = v1;
    if (v1)
    {
      qword_1ED4BF5F8 = [v1 unsignedLongLongValue];
    }
  }

  return MEMORY[0x1EEE66BE0]();
}

+ (id)getServerConnection
{
  objc_opt_self();
  if (qword_1ED4BF5F0 != -1)
  {
    dispatch_once(&qword_1ED4BF5F0, &__block_literal_global_2);
  }

  v0 = qword_1ED4BF5E8;

  return v0;
}

uint64_t __41__PrivacyProxyClient_getServerConnection__block_invoke()
{
  qword_1ED4BF5E8 = [[NSPServerClient alloc] initWithCallbackQueue:?];

  return MEMORY[0x1EEE66BB8]();
}

void __57__PrivacyProxyClient_setEnabled_queue_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __57__PrivacyProxyClient_setEnabled_queue_completionHandler___block_invoke_2;
      v6[3] = &unk_1E7A30A18;
      v8 = v5;
      v7 = v3;
      dispatch_async(v4, v6);
    }
  }
}

+ (void)getStatus:(id)status completionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  handlerCopy = handler;
  v7 = handlerCopy;
  if (!statusCopy)
  {
    v9 = nplog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "+[PrivacyProxyClient getStatus:completionHandler:]";
    v11 = "%s called with null queue";
LABEL_9:
    _os_log_fault_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_FAULT, v11, buf, 0xCu);
    goto LABEL_4;
  }

  if (!handlerCopy)
  {
    v9 = nplog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "+[PrivacyProxyClient getStatus:completionHandler:]";
    v11 = "%s called with null completionHandler";
    goto LABEL_9;
  }

  v8 = +[PrivacyProxyClient getServerConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__PrivacyProxyClient_getStatus_completionHandler___block_invoke;
  v12[3] = &unk_1E7A30A90;
  v13 = statusCopy;
  v14 = v7;
  [v8 getPrivacyProxyStatusWithCompletionHandler:v12];

  v9 = v13;
LABEL_4:

  v10 = *MEMORY[0x1E69E9840];
}

void __50__PrivacyProxyClient_getStatus_completionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__PrivacyProxyClient_getStatus_completionHandler___block_invoke_2;
  block[3] = &unk_1E7A30A68;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

+ (void)getServiceStatus:(id)status completionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  handlerCopy = handler;
  v7 = handlerCopy;
  if (!statusCopy)
  {
    v9 = nplog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "+[PrivacyProxyClient getServiceStatus:completionHandler:]";
    v11 = "%s called with null queue";
LABEL_9:
    _os_log_fault_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_FAULT, v11, buf, 0xCu);
    goto LABEL_4;
  }

  if (!handlerCopy)
  {
    v9 = nplog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "+[PrivacyProxyClient getServiceStatus:completionHandler:]";
    v11 = "%s called with null completionHandler";
    goto LABEL_9;
  }

  v8 = +[PrivacyProxyClient getServerConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__PrivacyProxyClient_getServiceStatus_completionHandler___block_invoke;
  v12[3] = &unk_1E7A30AE0;
  v13 = statusCopy;
  v14 = v7;
  [v8 getPrivacyProxyServiceStatusWithCompletionHandler:v12];

  v9 = v13;
LABEL_4:

  v10 = *MEMORY[0x1E69E9840];
}

void __57__PrivacyProxyClient_getServiceStatus_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PrivacyProxyClient_getServiceStatus_completionHandler___block_invoke_2;
  block[3] = &unk_1E7A30AB8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

+ (void)getServiceStatusTimeline:(id)timeline completionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  timelineCopy = timeline;
  handlerCopy = handler;
  v7 = handlerCopy;
  if (!timelineCopy)
  {
    v9 = nplog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "+[PrivacyProxyClient getServiceStatusTimeline:completionHandler:]";
    v11 = "%s called with null queue";
LABEL_9:
    _os_log_fault_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_FAULT, v11, buf, 0xCu);
    goto LABEL_4;
  }

  if (!handlerCopy)
  {
    v9 = nplog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "+[PrivacyProxyClient getServiceStatusTimeline:completionHandler:]";
    v11 = "%s called with null completionHandler";
    goto LABEL_9;
  }

  v8 = +[PrivacyProxyClient getServerConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__PrivacyProxyClient_getServiceStatusTimeline_completionHandler___block_invoke;
  v12[3] = &unk_1E7A30B08;
  v13 = timelineCopy;
  v14 = v7;
  [v8 getPrivacyProxyServiceStatusTimelineWithCompletionHandler:v12];

  v9 = v13;
LABEL_4:

  v10 = *MEMORY[0x1E69E9840];
}

void __65__PrivacyProxyClient_getServiceStatusTimeline_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PrivacyProxyClient_getServiceStatusTimeline_completionHandler___block_invoke_2;
  block[3] = &unk_1E7A30AB8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

+ (void)reportWiFiNetworkStatus:(BOOL)status networkName:(id)name queue:(id)queue completionHandler:(id)handler
{
  statusCopy = status;
  v22 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  queueCopy = queue;
  handlerCopy = handler;
  v12 = handlerCopy;
  if (!nameCopy)
  {
    v13 = nplog_obj();
    if (!os_log_type_enabled(&v13->super, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_5;
    }

    *buf = 136315138;
    v21 = "+[PrivacyProxyClient reportWiFiNetworkStatus:networkName:queue:completionHandler:]";
    v16 = "%s called with null networkName";
LABEL_12:
    _os_log_fault_impl(&dword_1AE7E2000, &v13->super, OS_LOG_TYPE_FAULT, v16, buf, 0xCu);
    goto LABEL_5;
  }

  if (!queueCopy)
  {
    v13 = nplog_obj();
    if (!os_log_type_enabled(&v13->super, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_5;
    }

    *buf = 136315138;
    v21 = "+[PrivacyProxyClient reportWiFiNetworkStatus:networkName:queue:completionHandler:]";
    v16 = "%s called with null queue";
    goto LABEL_12;
  }

  if (!handlerCopy)
  {
    v13 = nplog_obj();
    if (!os_log_type_enabled(&v13->super, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_5;
    }

    *buf = 136315138;
    v21 = "+[PrivacyProxyClient reportWiFiNetworkStatus:networkName:queue:completionHandler:]";
    v16 = "%s called with null completionHandler";
    goto LABEL_12;
  }

  v13 = [[PrivacyProxyNetworkStatus alloc] initWithStatus:statusCopy type:1 name:nameCopy];
  v14 = +[PrivacyProxyClient getServerConnection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __82__PrivacyProxyClient_reportWiFiNetworkStatus_networkName_queue_completionHandler___block_invoke;
  v17[3] = &unk_1E7A30A40;
  v18 = queueCopy;
  v19 = v12;
  [v14 reportPrivacyProxyNetworkStatus:v13 completionHandler:v17];

LABEL_5:
  v15 = *MEMORY[0x1E69E9840];
}

void __82__PrivacyProxyClient_reportWiFiNetworkStatus_networkName_queue_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__PrivacyProxyClient_reportWiFiNetworkStatus_networkName_queue_completionHandler___block_invoke_2;
  v7[3] = &unk_1E7A30A18;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

+ (void)reportCellularNetworkStatus:(BOOL)status networkName:(id)name queue:(id)queue completionHandler:(id)handler
{
  statusCopy = status;
  v22 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  queueCopy = queue;
  handlerCopy = handler;
  v12 = handlerCopy;
  if (!nameCopy)
  {
    v13 = nplog_obj();
    if (!os_log_type_enabled(&v13->super, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_5;
    }

    *buf = 136315138;
    v21 = "+[PrivacyProxyClient reportCellularNetworkStatus:networkName:queue:completionHandler:]";
    v16 = "%s called with null networkName";
LABEL_12:
    _os_log_fault_impl(&dword_1AE7E2000, &v13->super, OS_LOG_TYPE_FAULT, v16, buf, 0xCu);
    goto LABEL_5;
  }

  if (!queueCopy)
  {
    v13 = nplog_obj();
    if (!os_log_type_enabled(&v13->super, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_5;
    }

    *buf = 136315138;
    v21 = "+[PrivacyProxyClient reportCellularNetworkStatus:networkName:queue:completionHandler:]";
    v16 = "%s called with null queue";
    goto LABEL_12;
  }

  if (!handlerCopy)
  {
    v13 = nplog_obj();
    if (!os_log_type_enabled(&v13->super, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_5;
    }

    *buf = 136315138;
    v21 = "+[PrivacyProxyClient reportCellularNetworkStatus:networkName:queue:completionHandler:]";
    v16 = "%s called with null completionHandler";
    goto LABEL_12;
  }

  v13 = [[PrivacyProxyNetworkStatus alloc] initWithStatus:statusCopy type:2 name:nameCopy];
  v14 = +[PrivacyProxyClient getServerConnection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __86__PrivacyProxyClient_reportCellularNetworkStatus_networkName_queue_completionHandler___block_invoke;
  v17[3] = &unk_1E7A30A40;
  v18 = queueCopy;
  v19 = v12;
  [v14 reportPrivacyProxyNetworkStatus:v13 completionHandler:v17];

LABEL_5:
  v15 = *MEMORY[0x1E69E9840];
}

void __86__PrivacyProxyClient_reportCellularNetworkStatus_networkName_queue_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __86__PrivacyProxyClient_reportCellularNetworkStatus_networkName_queue_completionHandler___block_invoke_2;
  v7[3] = &unk_1E7A30A18;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

+ (void)setUserTier:(unint64_t)tier queue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v9 = +[PrivacyProxyClient getServerConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__PrivacyProxyClient_setUserTier_queue_completionHandler___block_invoke;
  v12[3] = &unk_1E7A30A40;
  v13 = queueCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = queueCopy;
  [v9 setPrivacyProxyUserTier:tier completionHandler:v12];
}

void __58__PrivacyProxyClient_setUserTier_queue_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __58__PrivacyProxyClient_setUserTier_queue_completionHandler___block_invoke_2;
      v6[3] = &unk_1E7A30A18;
      v8 = v5;
      v7 = v3;
      dispatch_async(v4, v6);
    }
  }
}

+ (void)setFreeUserTierUntilTomorrow:(id)tomorrow completionHandler:(id)handler
{
  tomorrowCopy = tomorrow;
  handlerCopy = handler;
  v7 = +[PrivacyProxyClient getServerConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__PrivacyProxyClient_setFreeUserTierUntilTomorrow_completionHandler___block_invoke;
  v10[3] = &unk_1E7A30A40;
  v11 = tomorrowCopy;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = tomorrowCopy;
  [v7 setFreeUserTierUntilTomorrowWithCompletionHandler:v10];
}

void __69__PrivacyProxyClient_setFreeUserTierUntilTomorrow_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __69__PrivacyProxyClient_setFreeUserTierUntilTomorrow_completionHandler___block_invoke_2;
      v6[3] = &unk_1E7A30A18;
      v8 = v5;
      v7 = v3;
      dispatch_async(v4, v6);
    }
  }
}

+ (void)getUserTier:(id)tier completionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  tierCopy = tier;
  handlerCopy = handler;
  v7 = handlerCopy;
  if (!tierCopy)
  {
    v9 = nplog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "+[PrivacyProxyClient getUserTier:completionHandler:]";
    v11 = "%s called with null queue";
LABEL_9:
    _os_log_fault_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_FAULT, v11, buf, 0xCu);
    goto LABEL_4;
  }

  if (!handlerCopy)
  {
    v9 = nplog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "+[PrivacyProxyClient getUserTier:completionHandler:]";
    v11 = "%s called with null completionHandler";
    goto LABEL_9;
  }

  v8 = +[PrivacyProxyClient getServerConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__PrivacyProxyClient_getUserTier_completionHandler___block_invoke;
  v12[3] = &unk_1E7A30B58;
  v13 = tierCopy;
  v14 = v7;
  [v8 getPrivacyProxyUserTierWithCompletionHandler:v12];

  v9 = v13;
LABEL_4:

  v10 = *MEMORY[0x1E69E9840];
}

void __52__PrivacyProxyClient_getUserTier_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__PrivacyProxyClient_getUserTier_completionHandler___block_invoke_2;
  block[3] = &unk_1E7A30B30;
  v7 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = a2;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

+ (void)getUserTierExtended:(id)extended completionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  extendedCopy = extended;
  handlerCopy = handler;
  v7 = handlerCopy;
  if (!extendedCopy)
  {
    v9 = nplog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "+[PrivacyProxyClient getUserTierExtended:completionHandler:]";
    v11 = "%s called with null queue";
LABEL_9:
    _os_log_fault_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_FAULT, v11, buf, 0xCu);
    goto LABEL_4;
  }

  if (!handlerCopy)
  {
    v9 = nplog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "+[PrivacyProxyClient getUserTierExtended:completionHandler:]";
    v11 = "%s called with null completionHandler";
    goto LABEL_9;
  }

  v8 = +[PrivacyProxyClient getServerConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__PrivacyProxyClient_getUserTierExtended_completionHandler___block_invoke;
  v12[3] = &unk_1E7A30B58;
  v13 = extendedCopy;
  v14 = v7;
  [v8 getPrivacyProxyUserTierWithCompletionHandler:v12];

  v9 = v13;
LABEL_4:

  v10 = *MEMORY[0x1E69E9840];
}

void __60__PrivacyProxyClient_getUserTierExtended_completionHandler___block_invoke(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__PrivacyProxyClient_getUserTierExtended_completionHandler___block_invoke_2;
  v10[3] = &unk_1E7A30B80;
  v8 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = a2;
  v14 = a3;
  v11 = v7;
  v9 = v7;
  dispatch_async(v8, v10);
}

+ (void)setTrafficState:(unint64_t)state proxyTraffic:(unint64_t)traffic queue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v11 = +[PrivacyProxyClient getServerConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75__PrivacyProxyClient_setTrafficState_proxyTraffic_queue_completionHandler___block_invoke;
  v14[3] = &unk_1E7A30A40;
  v15 = queueCopy;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = queueCopy;
  [v11 setPrivacyProxyTrafficState:state proxyTraffic:traffic completionHandler:v14];
}

void __75__PrivacyProxyClient_setTrafficState_proxyTraffic_queue_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __75__PrivacyProxyClient_setTrafficState_proxyTraffic_queue_completionHandler___block_invoke_2;
      v6[3] = &unk_1E7A30A18;
      v8 = v5;
      v7 = v3;
      dispatch_async(v4, v6);
    }
  }
}

+ (void)getTrafficState:(id)state completionandler:(id)completionandler
{
  v17 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  completionandlerCopy = completionandler;
  v7 = completionandlerCopy;
  if (!stateCopy)
  {
    v9 = nplog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "+[PrivacyProxyClient getTrafficState:completionandler:]";
    v11 = "%s called with null queue";
LABEL_9:
    _os_log_fault_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_FAULT, v11, buf, 0xCu);
    goto LABEL_4;
  }

  if (!completionandlerCopy)
  {
    v9 = nplog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "+[PrivacyProxyClient getTrafficState:completionandler:]";
    v11 = "%s called with null completionHandler";
    goto LABEL_9;
  }

  v8 = +[PrivacyProxyClient getServerConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__PrivacyProxyClient_getTrafficState_completionandler___block_invoke;
  v12[3] = &unk_1E7A30BA8;
  v13 = stateCopy;
  v14 = v7;
  [v8 getPrivacyProxyTrafficStateWithCompletionHandler:v12];

  v9 = v13;
LABEL_4:

  v10 = *MEMORY[0x1E69E9840];
}

void __55__PrivacyProxyClient_getTrafficState_completionandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__PrivacyProxyClient_getTrafficState_completionandler___block_invoke_2;
  block[3] = &unk_1E7A30B30;
  v6 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = a2;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

void __74__PrivacyProxyClient_setGeohashSharingPreference_queue_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __74__PrivacyProxyClient_setGeohashSharingPreference_queue_completionHandler___block_invoke_2;
      v6[3] = &unk_1E7A30A18;
      v8 = v5;
      v7 = v3;
      dispatch_async(v4, v6);
    }
  }
}

+ (void)getGeohashSharingPreference:(id)preference completionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  preferenceCopy = preference;
  handlerCopy = handler;
  v7 = handlerCopy;
  if (!preferenceCopy)
  {
    v9 = nplog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "+[PrivacyProxyClient getGeohashSharingPreference:completionHandler:]";
    v11 = "%s called with null queue";
LABEL_9:
    _os_log_fault_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_FAULT, v11, buf, 0xCu);
    goto LABEL_4;
  }

  if (!handlerCopy)
  {
    v9 = nplog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "+[PrivacyProxyClient getGeohashSharingPreference:completionHandler:]";
    v11 = "%s called with null completionHandler";
    goto LABEL_9;
  }

  v8 = +[PrivacyProxyClient getServerConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__PrivacyProxyClient_getGeohashSharingPreference_completionHandler___block_invoke;
  v12[3] = &unk_1E7A30A90;
  v13 = preferenceCopy;
  v14 = v7;
  [v8 getGeohashSharingPreferenceWithCompletionHandler:v12];

  v9 = v13;
LABEL_4:

  v10 = *MEMORY[0x1E69E9840];
}

void __68__PrivacyProxyClient_getGeohashSharingPreference_completionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __68__PrivacyProxyClient_getGeohashSharingPreference_completionHandler___block_invoke_2;
      block[3] = &unk_1E7A30A68;
      v10 = v7;
      v11 = a2;
      v9 = v5;
      dispatch_async(v6, block);
    }
  }
}

+ (void)getPrivacyProxyAccountType:(id)type completionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  handlerCopy = handler;
  v7 = handlerCopy;
  if (!typeCopy)
  {
    v9 = nplog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "+[PrivacyProxyClient getPrivacyProxyAccountType:completionHandler:]";
    v11 = "%s called with null queue";
LABEL_9:
    _os_log_fault_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_FAULT, v11, buf, 0xCu);
    goto LABEL_4;
  }

  if (!handlerCopy)
  {
    v9 = nplog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "+[PrivacyProxyClient getPrivacyProxyAccountType:completionHandler:]";
    v11 = "%s called with null completionHandler";
    goto LABEL_9;
  }

  v8 = +[PrivacyProxyClient getServerConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__PrivacyProxyClient_getPrivacyProxyAccountType_completionHandler___block_invoke;
  v12[3] = &unk_1E7A30BD0;
  v13 = typeCopy;
  v14 = v7;
  [v8 getPrivacyProxyAccountTypeWithCompletionHandler:v12];

  v9 = v13;
LABEL_4:

  v10 = *MEMORY[0x1E69E9840];
}

void __67__PrivacyProxyClient_getPrivacyProxyAccountType_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __67__PrivacyProxyClient_getPrivacyProxyAccountType_completionHandler___block_invoke_2;
      block[3] = &unk_1E7A30B30;
      v11 = v8;
      v12 = a2;
      v10 = v6;
      dispatch_async(v7, block);
    }
  }
}

+ (void)getPrivacyProxyAccountTypeExtended:(id)extended completionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  extendedCopy = extended;
  handlerCopy = handler;
  v7 = handlerCopy;
  if (!extendedCopy)
  {
    v9 = nplog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "+[PrivacyProxyClient getPrivacyProxyAccountTypeExtended:completionHandler:]";
    v11 = "%s called with null queue";
LABEL_9:
    _os_log_fault_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_FAULT, v11, buf, 0xCu);
    goto LABEL_4;
  }

  if (!handlerCopy)
  {
    v9 = nplog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "+[PrivacyProxyClient getPrivacyProxyAccountTypeExtended:completionHandler:]";
    v11 = "%s called with null completionHandler";
    goto LABEL_9;
  }

  v8 = +[PrivacyProxyClient getServerConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__PrivacyProxyClient_getPrivacyProxyAccountTypeExtended_completionHandler___block_invoke;
  v12[3] = &unk_1E7A30BD0;
  v13 = extendedCopy;
  v14 = v7;
  [v8 getPrivacyProxyAccountTypeWithCompletionHandler:v12];

  v9 = v13;
LABEL_4:

  v10 = *MEMORY[0x1E69E9840];
}

void __75__PrivacyProxyClient_getPrivacyProxyAccountTypeExtended_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __75__PrivacyProxyClient_getPrivacyProxyAccountTypeExtended_completionHandler___block_invoke_2;
      v10[3] = &unk_1E7A30BF8;
      v12 = v9;
      v13 = a2;
      v14 = a3;
      v11 = v7;
      dispatch_async(v8, v10);
    }
  }
}

+ (void)getEffectiveUserTier:(id)tier completionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  tierCopy = tier;
  handlerCopy = handler;
  v7 = handlerCopy;
  if (!tierCopy)
  {
    v9 = nplog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "+[PrivacyProxyClient getEffectiveUserTier:completionHandler:]";
    v11 = "%s called with null queue";
LABEL_9:
    _os_log_fault_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_FAULT, v11, buf, 0xCu);
    goto LABEL_4;
  }

  if (!handlerCopy)
  {
    v9 = nplog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "+[PrivacyProxyClient getEffectiveUserTier:completionHandler:]";
    v11 = "%s called with null completionHandler";
    goto LABEL_9;
  }

  v8 = +[PrivacyProxyClient getServerConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__PrivacyProxyClient_getEffectiveUserTier_completionHandler___block_invoke;
  v12[3] = &unk_1E7A30BA8;
  v13 = tierCopy;
  v14 = v7;
  [v8 getPrivacyProxyEffectiveUserTierWithCompletionHandler:v12];

  v9 = v13;
LABEL_4:

  v10 = *MEMORY[0x1E69E9840];
}

void __61__PrivacyProxyClient_getEffectiveUserTier_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__PrivacyProxyClient_getEffectiveUserTier_completionHandler___block_invoke_2;
  block[3] = &unk_1E7A30B30;
  v6 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = a2;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

void __76__PrivacyProxyClient_setPrivateAccessTokensEnabled_queue_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __76__PrivacyProxyClient_setPrivateAccessTokensEnabled_queue_completionHandler___block_invoke_2;
      v6[3] = &unk_1E7A30A18;
      v8 = v5;
      v7 = v3;
      dispatch_async(v4, v6);
    }
  }
}

+ (void)getPrivateAccessTokensEnabled:(id)enabled completionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  enabledCopy = enabled;
  handlerCopy = handler;
  v7 = handlerCopy;
  if (!enabledCopy)
  {
    v9 = nplog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "+[PrivacyProxyClient getPrivateAccessTokensEnabled:completionHandler:]";
    v11 = "%s called with null queue";
LABEL_9:
    _os_log_fault_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_FAULT, v11, buf, 0xCu);
    goto LABEL_4;
  }

  if (!handlerCopy)
  {
    v9 = nplog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "+[PrivacyProxyClient getPrivateAccessTokensEnabled:completionHandler:]";
    v11 = "%s called with null completionHandler";
    goto LABEL_9;
  }

  v8 = +[PrivacyProxyClient getServerConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__PrivacyProxyClient_getPrivateAccessTokensEnabled_completionHandler___block_invoke;
  v12[3] = &unk_1E7A30A90;
  v13 = enabledCopy;
  v14 = v7;
  [v8 getPrivateAccessTokensEnabledWithCompletionHandler:v12];

  v9 = v13;
LABEL_4:

  v10 = *MEMORY[0x1E69E9840];
}

void __70__PrivacyProxyClient_getPrivateAccessTokensEnabled_completionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __70__PrivacyProxyClient_getPrivateAccessTokensEnabled_completionHandler___block_invoke_2;
      block[3] = &unk_1E7A30A68;
      v10 = v7;
      v11 = a2;
      v9 = v5;
      dispatch_async(v6, block);
    }
  }
}

+ (void)setAppStatus:(unint64_t)status bundleIdentifier:(id)identifier queue:(id)queue completionHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  queueCopy = queue;
  handlerCopy = handler;
  v12 = handlerCopy;
  if (!identifierCopy)
  {
    v14 = nplog_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_5;
    }

    *buf = 136315138;
    v21 = "+[PrivacyProxyClient setAppStatus:bundleIdentifier:queue:completionHandler:]";
    v16 = "%s called with null bundleIdentifier";
LABEL_12:
    _os_log_fault_impl(&dword_1AE7E2000, v14, OS_LOG_TYPE_FAULT, v16, buf, 0xCu);
    goto LABEL_5;
  }

  if (!queueCopy)
  {
    v14 = nplog_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_5;
    }

    *buf = 136315138;
    v21 = "+[PrivacyProxyClient setAppStatus:bundleIdentifier:queue:completionHandler:]";
    v16 = "%s called with null queue";
    goto LABEL_12;
  }

  if (!handlerCopy)
  {
    v14 = nplog_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_5;
    }

    *buf = 136315138;
    v21 = "+[PrivacyProxyClient setAppStatus:bundleIdentifier:queue:completionHandler:]";
    v16 = "%s called with null completionHandler";
    goto LABEL_12;
  }

  v13 = +[PrivacyProxyClient getServerConnection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __76__PrivacyProxyClient_setAppStatus_bundleIdentifier_queue_completionHandler___block_invoke;
  v17[3] = &unk_1E7A30A40;
  v18 = queueCopy;
  v19 = v12;
  [v13 setPrivacyProxyAppStatus:status bundleIdentifier:identifierCopy path:0 completionHandler:v17];

  v14 = v18;
LABEL_5:

  v15 = *MEMORY[0x1E69E9840];
}

void __76__PrivacyProxyClient_setAppStatus_bundleIdentifier_queue_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__PrivacyProxyClient_setAppStatus_bundleIdentifier_queue_completionHandler___block_invoke_2;
  v7[3] = &unk_1E7A30A18;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

+ (void)setAppStatus:(unint64_t)status path:(id)path queue:(id)queue completionHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  queueCopy = queue;
  handlerCopy = handler;
  v12 = handlerCopy;
  if (!pathCopy)
  {
    v14 = nplog_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_5;
    }

    *buf = 136315138;
    v21 = "+[PrivacyProxyClient setAppStatus:path:queue:completionHandler:]";
    v16 = "%s called with null path";
LABEL_12:
    _os_log_fault_impl(&dword_1AE7E2000, v14, OS_LOG_TYPE_FAULT, v16, buf, 0xCu);
    goto LABEL_5;
  }

  if (!queueCopy)
  {
    v14 = nplog_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_5;
    }

    *buf = 136315138;
    v21 = "+[PrivacyProxyClient setAppStatus:path:queue:completionHandler:]";
    v16 = "%s called with null queue";
    goto LABEL_12;
  }

  if (!handlerCopy)
  {
    v14 = nplog_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_5;
    }

    *buf = 136315138;
    v21 = "+[PrivacyProxyClient setAppStatus:path:queue:completionHandler:]";
    v16 = "%s called with null completionHandler";
    goto LABEL_12;
  }

  v13 = +[PrivacyProxyClient getServerConnection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __64__PrivacyProxyClient_setAppStatus_path_queue_completionHandler___block_invoke;
  v17[3] = &unk_1E7A30A40;
  v18 = queueCopy;
  v19 = v12;
  [v13 setPrivacyProxyAppStatus:status bundleIdentifier:0 path:pathCopy completionHandler:v17];

  v14 = v18;
LABEL_5:

  v15 = *MEMORY[0x1E69E9840];
}

void __64__PrivacyProxyClient_setAppStatus_path_queue_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__PrivacyProxyClient_setAppStatus_path_queue_completionHandler___block_invoke_2;
  v7[3] = &unk_1E7A30A18;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

+ (void)getAppStatuses:(id)statuses completionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  statusesCopy = statuses;
  handlerCopy = handler;
  v7 = handlerCopy;
  if (!statusesCopy)
  {
    v9 = nplog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "+[PrivacyProxyClient getAppStatuses:completionHandler:]";
    v11 = "%s called with null queue";
LABEL_9:
    _os_log_fault_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_FAULT, v11, buf, 0xCu);
    goto LABEL_4;
  }

  if (!handlerCopy)
  {
    v9 = nplog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "+[PrivacyProxyClient getAppStatuses:completionHandler:]";
    v11 = "%s called with null completionHandler";
    goto LABEL_9;
  }

  v8 = +[PrivacyProxyClient getServerConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__PrivacyProxyClient_getAppStatuses_completionHandler___block_invoke;
  v12[3] = &unk_1E7A30C48;
  v13 = statusesCopy;
  v14 = v7;
  [v8 getPrivacyProxyAppStatusesWithCompletionHandler:v12];

  v9 = v13;
LABEL_4:

  v10 = *MEMORY[0x1E69E9840];
}

void __55__PrivacyProxyClient_getAppStatuses_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __55__PrivacyProxyClient_getAppStatuses_completionHandler___block_invoke_2;
  v15[3] = &unk_1E7A30C20;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v11;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_async(v10, v15);
}

+ (void)overrideIngressProxy:(id)proxy fallbackProxy:(id)fallbackProxy key:(id)key queue:(id)queue completionHandler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  proxyCopy = proxy;
  fallbackProxyCopy = fallbackProxy;
  keyCopy = key;
  queueCopy = queue;
  handlerCopy = handler;
  v16 = handlerCopy;
  if (!queueCopy)
  {
    v18 = nplog_obj();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v25 = "+[PrivacyProxyClient overrideIngressProxy:fallbackProxy:key:queue:completionHandler:]";
    v20 = "%s called with null queue";
LABEL_9:
    _os_log_fault_impl(&dword_1AE7E2000, v18, OS_LOG_TYPE_FAULT, v20, buf, 0xCu);
    goto LABEL_4;
  }

  if (!handlerCopy)
  {
    v18 = nplog_obj();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v25 = "+[PrivacyProxyClient overrideIngressProxy:fallbackProxy:key:queue:completionHandler:]";
    v20 = "%s called with null completionHandler";
    goto LABEL_9;
  }

  v17 = +[PrivacyProxyClient getServerConnection];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __85__PrivacyProxyClient_overrideIngressProxy_fallbackProxy_key_queue_completionHandler___block_invoke;
  v21[3] = &unk_1E7A30A40;
  v22 = queueCopy;
  v23 = v16;
  [v17 overrideIngressProxy:proxyCopy fallbackProxy:fallbackProxyCopy key:keyCopy completionHandler:v21];

  v18 = v22;
LABEL_4:

  v19 = *MEMORY[0x1E69E9840];
}

void __85__PrivacyProxyClient_overrideIngressProxy_fallbackProxy_key_queue_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85__PrivacyProxyClient_overrideIngressProxy_fallbackProxy_key_queue_completionHandler___block_invoke_2;
  v7[3] = &unk_1E7A30A18;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

+ (void)getOverriddeIngressProxy:(id)proxy completionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  proxyCopy = proxy;
  handlerCopy = handler;
  v7 = handlerCopy;
  if (!proxyCopy)
  {
    v9 = nplog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "+[PrivacyProxyClient getOverriddeIngressProxy:completionHandler:]";
    v11 = "%s called with null queue";
LABEL_9:
    _os_log_fault_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_FAULT, v11, buf, 0xCu);
    goto LABEL_4;
  }

  if (!handlerCopy)
  {
    v9 = nplog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "+[PrivacyProxyClient getOverriddeIngressProxy:completionHandler:]";
    v11 = "%s called with null completionHandler";
    goto LABEL_9;
  }

  v8 = +[PrivacyProxyClient getServerConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__PrivacyProxyClient_getOverriddeIngressProxy_completionHandler___block_invoke;
  v12[3] = &unk_1E7A30C98;
  v13 = proxyCopy;
  v14 = v7;
  [v8 getOverrideIngressProxyWithCompletionHandler:v12];

  v9 = v13;
LABEL_4:

  v10 = *MEMORY[0x1E69E9840];
}

void __65__PrivacyProxyClient_getOverriddeIngressProxy_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PrivacyProxyClient_getOverriddeIngressProxy_completionHandler___block_invoke_2;
  block[3] = &unk_1E7A30C70;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v23 = v12;
  v24 = v14;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  v18 = v9;
  dispatch_async(v13, block);
}

+ (void)overridePreferredProxy:(id)proxy queue:(id)queue completionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  proxyCopy = proxy;
  queueCopy = queue;
  handlerCopy = handler;
  v10 = handlerCopy;
  if (!queueCopy)
  {
    v12 = nplog_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v19 = "+[PrivacyProxyClient overridePreferredProxy:queue:completionHandler:]";
    v14 = "%s called with null queue";
LABEL_9:
    _os_log_fault_impl(&dword_1AE7E2000, v12, OS_LOG_TYPE_FAULT, v14, buf, 0xCu);
    goto LABEL_4;
  }

  if (!handlerCopy)
  {
    v12 = nplog_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v19 = "+[PrivacyProxyClient overridePreferredProxy:queue:completionHandler:]";
    v14 = "%s called with null completionHandler";
    goto LABEL_9;
  }

  v11 = +[PrivacyProxyClient getServerConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__PrivacyProxyClient_overridePreferredProxy_queue_completionHandler___block_invoke;
  v15[3] = &unk_1E7A30A40;
  v16 = queueCopy;
  v17 = v10;
  [v11 overridePreferredProxy:proxyCopy completionHandler:v15];

  v12 = v16;
LABEL_4:

  v13 = *MEMORY[0x1E69E9840];
}

void __69__PrivacyProxyClient_overridePreferredProxy_queue_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__PrivacyProxyClient_overridePreferredProxy_queue_completionHandler___block_invoke_2;
  v7[3] = &unk_1E7A30A18;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

+ (void)getPreferredProxy:(id)proxy completionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  proxyCopy = proxy;
  handlerCopy = handler;
  v7 = handlerCopy;
  if (!proxyCopy)
  {
    v9 = nplog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "+[PrivacyProxyClient getPreferredProxy:completionHandler:]";
    v11 = "%s called with null queue";
LABEL_9:
    _os_log_fault_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_FAULT, v11, buf, 0xCu);
    goto LABEL_4;
  }

  if (!handlerCopy)
  {
    v9 = nplog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "+[PrivacyProxyClient getPreferredProxy:completionHandler:]";
    v11 = "%s called with null completionHandler";
    goto LABEL_9;
  }

  v8 = +[PrivacyProxyClient getServerConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__PrivacyProxyClient_getPreferredProxy_completionHandler___block_invoke;
  v12[3] = &unk_1E7A30CC0;
  v13 = proxyCopy;
  v14 = v7;
  [v8 getPreferredProxyWithCompletionHandler:v12];

  v9 = v13;
LABEL_4:

  v10 = *MEMORY[0x1E69E9840];
}

void __58__PrivacyProxyClient_getPreferredProxy_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__PrivacyProxyClient_getPreferredProxy_completionHandler___block_invoke_2;
  block[3] = &unk_1E7A30AB8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

+ (void)overridePreferredResolver:(id)resolver queue:(id)queue completionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  resolverCopy = resolver;
  queueCopy = queue;
  handlerCopy = handler;
  v10 = handlerCopy;
  if (!queueCopy)
  {
    v12 = nplog_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v19 = "+[PrivacyProxyClient overridePreferredResolver:queue:completionHandler:]";
    v14 = "%s called with null queue";
LABEL_9:
    _os_log_fault_impl(&dword_1AE7E2000, v12, OS_LOG_TYPE_FAULT, v14, buf, 0xCu);
    goto LABEL_4;
  }

  if (!handlerCopy)
  {
    v12 = nplog_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v19 = "+[PrivacyProxyClient overridePreferredResolver:queue:completionHandler:]";
    v14 = "%s called with null completionHandler";
    goto LABEL_9;
  }

  v11 = +[PrivacyProxyClient getServerConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__PrivacyProxyClient_overridePreferredResolver_queue_completionHandler___block_invoke;
  v15[3] = &unk_1E7A30A40;
  v16 = queueCopy;
  v17 = v10;
  [v11 overridePreferredResolver:resolverCopy completionHandler:v15];

  v12 = v16;
LABEL_4:

  v13 = *MEMORY[0x1E69E9840];
}

void __72__PrivacyProxyClient_overridePreferredResolver_queue_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__PrivacyProxyClient_overridePreferredResolver_queue_completionHandler___block_invoke_2;
  v7[3] = &unk_1E7A30A18;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

+ (void)getPreferredResolver:(id)resolver completionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  resolverCopy = resolver;
  handlerCopy = handler;
  v7 = handlerCopy;
  if (!resolverCopy)
  {
    v9 = nplog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "+[PrivacyProxyClient getPreferredResolver:completionHandler:]";
    v11 = "%s called with null queue";
LABEL_9:
    _os_log_fault_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_FAULT, v11, buf, 0xCu);
    goto LABEL_4;
  }

  if (!handlerCopy)
  {
    v9 = nplog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "+[PrivacyProxyClient getPreferredResolver:completionHandler:]";
    v11 = "%s called with null completionHandler";
    goto LABEL_9;
  }

  v8 = +[PrivacyProxyClient getServerConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__PrivacyProxyClient_getPreferredResolver_completionHandler___block_invoke;
  v12[3] = &unk_1E7A30CC0;
  v13 = resolverCopy;
  v14 = v7;
  [v8 getPreferredResolverWithCompletionHandler:v12];

  v9 = v13;
LABEL_4:

  v10 = *MEMORY[0x1E69E9840];
}

void __61__PrivacyProxyClient_getPreferredResolver_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__PrivacyProxyClient_getPreferredResolver_completionHandler___block_invoke_2;
  block[3] = &unk_1E7A30AB8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __63__PrivacyProxyClient_setForceFallback_queue_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__PrivacyProxyClient_setForceFallback_queue_completionHandler___block_invoke_2;
  v7[3] = &unk_1E7A30A18;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

+ (void)getForceFallback:(id)fallback completionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  fallbackCopy = fallback;
  handlerCopy = handler;
  v7 = handlerCopy;
  if (!fallbackCopy)
  {
    v9 = nplog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "+[PrivacyProxyClient getForceFallback:completionHandler:]";
    v11 = "%s called with null queue";
LABEL_9:
    _os_log_fault_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_FAULT, v11, buf, 0xCu);
    goto LABEL_4;
  }

  if (!handlerCopy)
  {
    v9 = nplog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "+[PrivacyProxyClient getForceFallback:completionHandler:]";
    v11 = "%s called with null completionHandler";
    goto LABEL_9;
  }

  v8 = +[PrivacyProxyClient getServerConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__PrivacyProxyClient_getForceFallback_completionHandler___block_invoke;
  v12[3] = &unk_1E7A30A90;
  v13 = fallbackCopy;
  v14 = v7;
  [v8 getForceFallbackWithCompletionHandler:v12];

  v9 = v13;
LABEL_4:

  v10 = *MEMORY[0x1E69E9840];
}

void __57__PrivacyProxyClient_getForceFallback_completionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PrivacyProxyClient_getForceFallback_completionHandler___block_invoke_2;
  block[3] = &unk_1E7A30A68;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

+ (void)getProxiedContentMapEnabledForIdentifier:(id)identifier queue:(id)queue completionHandler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  queueCopy = queue;
  handlerCopy = handler;
  v10 = handlerCopy;
  if (!identifierCopy)
  {
    v12 = nplog_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_5;
    }

    *buf = 136315138;
    v20 = "+[PrivacyProxyClient getProxiedContentMapEnabledForIdentifier:queue:completionHandler:]";
    v14 = "%s called with null identifier";
LABEL_12:
    _os_log_fault_impl(&dword_1AE7E2000, v12, OS_LOG_TYPE_FAULT, v14, buf, 0xCu);
    goto LABEL_5;
  }

  if (!queueCopy)
  {
    v12 = nplog_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_5;
    }

    *buf = 136315138;
    v20 = "+[PrivacyProxyClient getProxiedContentMapEnabledForIdentifier:queue:completionHandler:]";
    v14 = "%s called with null queue";
    goto LABEL_12;
  }

  if (!handlerCopy)
  {
    v12 = nplog_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_5;
    }

    *buf = 136315138;
    v20 = "+[PrivacyProxyClient getProxiedContentMapEnabledForIdentifier:queue:completionHandler:]";
    v14 = "%s called with null completionHandler";
    goto LABEL_12;
  }

  v11 = +[PrivacyProxyClient getServerConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __87__PrivacyProxyClient_getProxiedContentMapEnabledForIdentifier_queue_completionHandler___block_invoke;
  v15[3] = &unk_1E7A30D10;
  v16 = queueCopy;
  v17 = identifierCopy;
  v18 = v10;
  [v11 getPrivacyProxyInfoWithCompletionHandler:v15];

  v12 = v16;
LABEL_5:

  v13 = *MEMORY[0x1E69E9840];
}

void __87__PrivacyProxyClient_getProxiedContentMapEnabledForIdentifier_queue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __87__PrivacyProxyClient_getProxiedContentMapEnabledForIdentifier_queue_completionHandler___block_invoke_2;
  v11[3] = &unk_1E7A30CE8;
  v12 = v5;
  v7 = *(a1 + 32);
  v13 = *(a1 + 40);
  v8 = *(a1 + 48);
  v14 = v6;
  v15 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, v11);
}

uint64_t __87__PrivacyProxyClient_getProxiedContentMapEnabledForIdentifier_queue_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) enabledProxiedContentMaps];
  [v2 containsObject:*(a1 + 40)];

  v3 = *(a1 + 48);
  v4 = *(*(a1 + 56) + 16);

  return v4();
}

+ (void)configurationFetch:(id)fetch completionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  fetchCopy = fetch;
  handlerCopy = handler;
  v7 = handlerCopy;
  if (!fetchCopy)
  {
    v9 = nplog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "+[PrivacyProxyClient configurationFetch:completionHandler:]";
    v11 = "%s called with null queue";
LABEL_9:
    _os_log_fault_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_FAULT, v11, buf, 0xCu);
    goto LABEL_4;
  }

  if (!handlerCopy)
  {
    v9 = nplog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "+[PrivacyProxyClient configurationFetch:completionHandler:]";
    v11 = "%s called with null completionHandler";
    goto LABEL_9;
  }

  v8 = +[PrivacyProxyClient getServerConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__PrivacyProxyClient_configurationFetch_completionHandler___block_invoke;
  v12[3] = &unk_1E7A30D60;
  v13 = fetchCopy;
  v14 = v7;
  [v8 fetchNewConfigurationWithCompletionHandler:v12];

  v9 = v13;
LABEL_4:

  v10 = *MEMORY[0x1E69E9840];
}

void __59__PrivacyProxyClient_configurationFetch_completionHandler___block_invoke(uint64_t a1, char a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__PrivacyProxyClient_configurationFetch_completionHandler___block_invoke_2;
  v4[3] = &unk_1E7A30D38;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  dispatch_async(v3, v4);
}

+ (id)multiHopProxyAgentUUID
{
  v2 = +[PrivacyProxyClient getServerConnection];
  v3 = [v2 getAgentUUIDForType:1];

  return v3;
}

+ (id)singleHopProxyAgentUUID
{
  v2 = +[PrivacyProxyClient getServerConnection];
  v3 = [v2 getAgentUUIDForType:2];

  return v3;
}

+ (id)multiHopFallbackProxyAgentUUID
{
  v2 = +[PrivacyProxyClient getServerConnection];
  v3 = [v2 getAgentUUIDForType:3];

  return v3;
}

+ (id)singleHopFallbackProxyAgentUUID
{
  v2 = +[PrivacyProxyClient getServerConnection];
  v3 = [v2 getAgentUUIDForType:4];

  return v3;
}

+ (id)dnsAgentUUID
{
  v2 = +[PrivacyProxyClient getServerConnection];
  v3 = [v2 getAgentUUIDForType:5];

  return v3;
}

+ (id)bootstrapDNSAgentUUID
{
  v2 = +[PrivacyProxyClient getServerConnection];
  v3 = [v2 getAgentUUIDForType:6];

  return v3;
}

@end
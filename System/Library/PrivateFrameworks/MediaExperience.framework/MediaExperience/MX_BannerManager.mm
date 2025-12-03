@interface MX_BannerManager
+ (id)bannerResponseToString:(id)string;
+ (id)getAwaitingDispatchQueue;
+ (id)getBannerCleanupDispatchQueue;
+ (id)getCacheKey:(id)key endpointType:(id)type;
+ (id)getSharedBannerClient;
+ (id)sharedInstance;
- (BOOL)isCarPlayPortRoutableFromCustomizedRoutingPerspective:(__CFString *)perspective;
- (BOOL)newPortNeedsToShowBanner:(id)banner previousPort:(unsigned int)port;
- (MX_BannerManager)init;
- (__CFArray)copyUndoEndpointsForRoute:(id)route;
- (void)cleanupBannerCache:(id)cache;
- (void)cleanupBannerWithTxid:(id)txid targetRouteUID:(__CFString *)d bannerType:(unsigned __int8)type;
- (void)cleanupBanners;
- (void)cleanupBannersIfNeededForRoute:(__CFString *)route routeName:(__CFString *)name endpointManagerType:(__CFString *)type;
- (void)dealloc;
- (void)promptUserResponseForRoute:(id)route connectHandler:(id)handler;
- (void)promptUserResponseForUndoRoute:(id)route undoHandler:(id)handler;
- (void)sendBannerActionToAudioStatistics:(int64_t)statistics bannerType:(int64_t)type targetDeviceType:(int64_t)deviceType targetProductID:(id)d sourceDeviceType:(id)sourceDeviceType;
- (void)sendBannerStartToAudioStatistics:(int64_t)statistics targetDeviceType:(int64_t)type targetProductID:(id)d sourceDeviceType:(id)deviceType;
@end

@implementation MX_BannerManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_15 != -1)
  {
    +[MX_BannerManager sharedInstance];
  }

  return sharedInstance_sSharedInstance_13;
}

+ (id)getAwaitingDispatchQueue
{
  if (getAwaitingDispatchQueue_onceToken != -1)
  {
    +[MX_BannerManager getAwaitingDispatchQueue];
  }

  return sAwaitingDispatchQueue;
}

+ (id)getBannerCleanupDispatchQueue
{
  if (getBannerCleanupDispatchQueue_onceToken != -1)
  {
    +[MX_BannerManager getBannerCleanupDispatchQueue];
  }

  return sBannerCleanupDispatchQueue;
}

+ (id)getSharedBannerClient
{
  if (getSharedBannerClient_onceToken != -1)
  {
    +[MX_BannerManager getSharedBannerClient];
  }

  return sBannerClient;
}

+ (id)bannerResponseToString:(id)string
{
  intValue = [string intValue];
  if (intValue >= 4)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown(%@)", string];
  }

  else
  {
    return off_1E7AEC8D8[intValue];
  }
}

- (BOOL)isCarPlayPortRoutableFromCustomizedRoutingPerspective:(__CFString *)perspective
{
  v16 = *MEMORY[0x1E69E9840];
  if (![+[MXSessionManager isCurrentRouteHeadphoneAndInEar:"isCurrentRouteHeadphoneAndInEar:"]
  {
    v5 = 0;
    v8 = 1;
    goto LABEL_19;
  }

  v5 = MXCFCopyPrefixSubstring(perspective, 17);
  v6 = [MX_BannerManager getCacheKey:v5 endpointType:*MEMORY[0x1E69618E0]];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v9 = bannerResponseCacheMutex;
  objc_sync_enter(bannerResponseCacheMutex);
  if ([(NSMutableDictionary *)self->connectBannerResponseCache objectForKey:v6]|| [(NSMutableDictionary *)self->undoBannerResponseCache objectForKey:v6])
  {
    if (+[MXSystemController preferHeadphonesOverCarsAndSpeakersEnabled](MXSystemController, "preferHeadphonesOverCarsAndSpeakersEnabled", v14, v15) && -[NSMutableDictionary objectForKey:](self->connectBannerResponseCache, "objectForKey:", v6) && [-[NSMutableDictionary objectForKey:](self->connectBannerResponseCache objectForKey:{v6), "bannerResponse"}] != 1)
    {
      if (dword_1EB75DE40)
      {
LABEL_16:
        v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

LABEL_17:
      v8 = 0;
      goto LABEL_18;
    }

    if (-[NSMutableDictionary objectForKey:](self->undoBannerResponseCache, "objectForKey:", v6) && [-[NSMutableDictionary objectForKey:](self->undoBannerResponseCache objectForKey:{v6), "bannerResponse"}] == 1)
    {
      if (dword_1EB75DE40)
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }
  }

  v8 = 1;
LABEL_18:
  objc_sync_exit(v9);
LABEL_19:
  if (dword_1EB75DE40)
  {
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v5)
  {
    CFRelease(v5);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

- (MX_BannerManager)init
{
  v4.receiver = self;
  v4.super_class = MX_BannerManager;
  v2 = [(MX_BannerManager *)&v4 init];
  if (v2)
  {
    v2->connectBannerResponseCache = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->undoBannerResponseCache = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v2;
}

- (void)dealloc
{
  [(NSMutableDictionary *)self->connectBannerResponseCache removeAllObjects];

  [(NSMutableDictionary *)self->undoBannerResponseCache removeAllObjects];
  v3.receiver = self;
  v3.super_class = MX_BannerManager;
  [(MX_BannerManager *)&v3 dealloc];
}

- (void)cleanupBannerWithTxid:(id)txid targetRouteUID:(__CFString *)d bannerType:(unsigned __int8)type
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = 8;
  if (type == 1)
  {
    v7 = 16;
  }

  v8 = *(&self->super.isa + v7);
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (txid)
  {
    [+[MX_BannerManager getSharedBannerClient](MX_BannerManager "getSharedBannerClient")];
    if (dword_1EB75DE40)
    {
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v11 = bannerResponseCacheMutex;
    objc_sync_enter(bannerResponseCacheMutex);
    if ([objc_msgSend(v8 objectForKey:{d), "routeSemaphore"}])
    {
      dispatch_semaphore_signal([objc_msgSend(v8 objectForKey:{d), "routeSemaphore"}]);
    }

    if (dword_1EB75DE40)
    {
      v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [v8 removeObjectForKey:{d, v14, v15}];
    objc_sync_exit(v11);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)cleanupBannerCache:(id)cache
{
  v19 = *MEMORY[0x1E69E9840];
  obj = bannerResponseCacheMutex;
  objc_sync_enter(bannerResponseCacheMutex);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [cache countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(cache);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [objc_msgSend(cache objectForKey:{v7, v11, v12), "txid"}];
        if (v8)
        {
          [+[MX_BannerManager getSharedBannerClient](MX_BannerManager "getSharedBannerClient")];
          if ([objc_msgSend(cache objectForKey:{v7), "routeSemaphore"}])
          {
            dispatch_semaphore_signal([objc_msgSend(cache objectForKey:{v7), "routeSemaphore"}]);
          }

          if (dword_1EB75DE40)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }
      }

      v4 = [cache countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  [cache removeAllObjects];
  objc_sync_exit(obj);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)cleanupBanners
{
  v3 = +[MX_BannerManager getBannerCleanupDispatchQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__MX_BannerManager_cleanupBanners__block_invoke;
  v4[3] = &unk_1E7AE7CE0;
  v4[4] = self;
  MXDispatchAsync("[MX_BannerManager cleanupBanners]", "MX_BannerManager.m", 289, 0, 0, v3, v4);
}

- (void)cleanupBannersIfNeededForRoute:(__CFString *)route routeName:(__CFString *)name endpointManagerType:(__CFString *)type
{
  if (route)
  {
    CFRetain(route);
  }

  if (name)
  {
    CFRetain(name);
  }

  if (type)
  {
    CFRetain(type);
  }

  v9 = +[MX_BannerManager getBannerCleanupDispatchQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__MX_BannerManager_cleanupBannersIfNeededForRoute_routeName_endpointManagerType___block_invoke;
  v10[3] = &unk_1E7AE7230;
  v10[4] = self;
  v10[5] = route;
  v10[6] = type;
  v10[7] = name;
  MXDispatchAsync("[MX_BannerManager cleanupBannersIfNeededForRoute:routeName:endpointManagerType:]", "MX_BannerManager.m", 304, 0, 0, v9, v10);
}

- (void)promptUserResponseForRoute:(id)route connectHandler:(id)handler
{
  v82 = *MEMORY[0x1E69E9840];
  if (route)
  {
    v75[0] = 0;
    v75[1] = v75;
    v75[2] = 0x2020000000;
    v76 = 1;
    cf = [route objectForKey:@"PortMacAddress"];
    v45 = [route objectForKey:@"PortDeviceIdentifier"];
    v49 = [route objectForKey:@"RoutingContextUUID"];
    v46 = [route objectForKey:@"PortName"];
    v7 = [route objectForKey:@"PortID"];
    v47 = [route objectForKey:@"WirelessPorts"];
    v8 = [objc_msgSend(route objectForKey:{@"OldPort", "intValue"}];
    v48 = [route objectForKey:@"MostRecentCurrentlyActivatingEndpoint"];
    if (dword_1EB75DE40)
    {
      *v71 = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v11 = [(MX_BannerManager *)self newPortNeedsToShowBanner:v7 previousPort:v8, v36, v40];
    v12 = +[MX_BannerManager getCacheKey:port:](MX_BannerManager, "getCacheKey:port:", cf, [v7 intValue]);
    v13 = bannerResponseCacheMutex;
    objc_sync_enter(bannerResponseCacheMutex);
    if (!v11)
    {
      goto LABEL_35;
    }

    if (-[NSMutableDictionary objectForKey:](self->connectBannerResponseCache, "objectForKey:", v12) && [-[NSMutableDictionary objectForKey:](self->connectBannerResponseCache objectForKey:{v12), "bannerResponse"}] == 3)
    {
      if (dword_1EB75DE40)
      {
        *v71 = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v14, type[0]);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

LABEL_35:
      if (![(NSMutableDictionary *)self->connectBannerResponseCache objectForKey:v12, v37, v41])
      {
        if (dword_1EB75DE40)
        {
          *v71 = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v23, type[0]);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v24 = objc_alloc_init(MXBannerResponseInfoBase);
        [(MXBannerResponseInfoBase *)v24 setBannerResponse:0];
        [(NSMutableDictionary *)self->connectBannerResponseCache setObject:v24 forKey:v12];
      }

      v25 = [(NSMutableDictionary *)self->connectBannerResponseCache objectForKey:v12, v38, v42];
      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v25, "bannerResponse")}];
      routeSemaphore = [v25 routeSemaphore];
      if ([v26 isEqualToNumber:&unk_1F28AF6B0])
      {
        v26 = &unk_1F28AF6C8;
      }

      if (dword_1EB75DE40)
      {
        *v71 = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v28, type[0]);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if ([v26 isEqualToNumber:{&unk_1F28AF6C8, v39, v43}])
      {
        if (v47)
        {
          CFRetain(v47);
        }

        if (v49)
        {
          CFRetain(v49);
        }

        if (cf)
        {
          CFRetain(cf);
        }

        if (v48)
        {
          CFRetain(v48);
        }

        if (v45)
        {
          CFRetain(v45);
        }

        if (routeSemaphore)
        {
          dispatch_retain(routeSemaphore);
        }

        v29 = v12;
        v30 = +[MX_BannerManager getAwaitingDispatchQueue];
        v51[0] = MEMORY[0x1E69E9820];
        v51[1] = 3221225472;
        v51[2] = __62__MX_BannerManager_promptUserResponseForRoute_connectHandler___block_invoke_101;
        v51[3] = &unk_1E7AEC870;
        v51[4] = v12;
        v51[5] = routeSemaphore;
        v51[6] = self;
        v51[7] = handler;
        v51[8] = v45;
        v51[9] = v47;
        v51[10] = v48;
        v51[11] = v49;
        v51[12] = cf;
        MXDispatchAsync("[MX_BannerManager promptUserResponseForRoute:connectHandler:]", "MX_BannerManager.m", 557, 0, 0, v30, v51);
      }

      else if ([v26 isEqualToNumber:&unk_1F28AF6F8])
      {
        if (dword_1EB75DE40)
        {
          *v71 = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v31, type[0]);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        (*(handler + 2))(handler, v47, v48, v49);
      }

      else
      {
        v32 = [v26 isEqualToNumber:&unk_1F28AF6E0];
        if (dword_1EB75DE40)
        {
          v33 = v32;
        }

        else
        {
          v33 = 0;
        }

        if (v33 == 1)
        {
          *v71 = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v34, type[0]);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      goto LABEL_67;
    }

    if (![(NSMutableDictionary *)self->connectBannerResponseCache objectForKey:v12])
    {
      v15 = objc_alloc_init(MXBannerResponseInfoBase);
      [(MXBannerResponseInfoBase *)v15 setBannerResponse:3];
      [(NSMutableDictionary *)self->connectBannerResponseCache setObject:v15 forKey:v12];
    }

    object = [-[NSMutableDictionary objectForKey:](self->connectBannerResponseCache objectForKey:{v12), "routeSemaphore"}];
    if (dword_1EB75DE40)
    {
      type[0] = OS_LOG_TYPE_DEFAULT;
      v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v16, type[0]);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    +[MX_BannerManager getButtonType:](MX_BannerManager, "getButtonType:", [v7 intValue]);
    if (CMSMVAUtility_IsPortOfTypeCarPlay([v7 intValue]))
    {
      IsPortOfTypeBluetoothVehicle = 2;
    }

    else
    {
      IsPortOfTypeBluetoothVehicle = CMSMVAUtility_IsPortOfTypeBluetoothVehicle([v7 intValue]);
    }

    if (cf)
    {
      CFRetain(cf);
    }

    if (v47)
    {
      CFRetain(v47);
    }

    if (v49)
    {
      CFRetain(v49);
    }

    if (v48)
    {
      CFRetain(v48);
    }

    if (v46)
    {
      CFRetain(v46);
    }

    if (object)
    {
      dispatch_retain(object);
    }

    v18 = v12;
    v78 = 0;
    v79 = &v78;
    v80 = 0x2020000000;
    v81 = CMSMVAUtility_CopyBluetoothDeviceModelID([v7 intValue]);
    *v71 = 0;
    v72 = v71;
    v73 = 0x2020000000;
    v74 = CMSMVAUtility_CopyBluetoothDeviceModelID(v8);
    [(MX_BannerManager *)self sendBannerStartToAudioStatistics:0 targetDeviceType:IsPortOfTypeBluetoothVehicle targetProductID:v79[3] sourceDeviceType:*(v72 + 3)];
    v19 = +[MX_BannerManager getSharedBannerClient];
    v54 = MEMORY[0x1E69E9820];
    v55 = 3221225472;
    v56 = __62__MX_BannerManager_promptUserResponseForRoute_connectHandler___block_invoke;
    v57 = &unk_1E7AEC848;
    selfCopy = self;
    v59 = v12;
    v62 = v75;
    v63 = &v78;
    v64 = v71;
    v65 = IsPortOfTypeBluetoothVehicle;
    v60 = object;
    handlerCopy = handler;
    v66 = v47;
    v67 = v48;
    v68 = v49;
    v69 = cf;
    v70 = v46;
    v20 = [v19 promptForConnectDialog:? withIconType:? callbackHandler:?];
    v21 = [(NSMutableDictionary *)self->connectBannerResponseCache objectForKey:v12];
    if (v21)
    {
      [v21 setTxid:v20];
      if (dword_1EB75DE40)
      {
        goto LABEL_34;
      }
    }

    else if (dword_1EB75DE40)
    {
LABEL_34:
      v53 = 0;
      v52 = OS_LOG_TYPE_DEFAULT;
      v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    _Block_object_dispose(v71, 8);
    _Block_object_dispose(&v78, 8);
LABEL_67:
    objc_sync_exit(v13);
    _Block_object_dispose(v75, 8);
    goto LABEL_68;
  }

  if (dword_1EB75DE40)
  {
    LODWORD(v75[0]) = 0;
    v71[0] = OS_LOG_TYPE_DEFAULT;
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_68:
  v35 = *MEMORY[0x1E69E9840];
}

- (__CFArray)copyUndoEndpointsForRoute:(id)route
{
  v3 = [(NSMutableDictionary *)self->undoBannerResponseCache objectForKey:route];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (v3 && [objc_msgSend(v3 "fromPorts")] && objc_msgSend(objc_msgSend(v3, "fromPorts"), "count"))
  {
    v5 = 0;
    do
    {
      v6 = [objc_msgSend(objc_msgSend(v3 "fromPorts")];
      if (v6)
      {
        v7 = vaemCopyEndpointForPort(v6);
        CFArrayAppendValue(Mutable, v7);
        if (v7)
        {
          CFRelease(v7);
        }
      }

      ++v5;
    }

    while ([objc_msgSend(v3 "fromPorts")] > v5);
  }

  return Mutable;
}

+ (id)getCacheKey:(id)key endpointType:(id)type
{
  v10 = *MEMORY[0x1E69E9840];
  if ([type isEqualToString:*MEMORY[0x1E69618D8]] & 1) != 0 || (objc_msgSend(type, "isEqualToString:", *MEMORY[0x1E69618E0]))
  {
    result = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", key, type];
    v7 = *MEMORY[0x1E69E9840];
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v9 = *MEMORY[0x1E69E9840];
    return @"UnknownEndpointType";
  }

  return result;
}

- (BOOL)newPortNeedsToShowBanner:(id)banner previousPort:(unsigned int)port
{
  v35 = *MEMORY[0x1E69E9840];
  if (CMSMVAUtility_IsPortOfTypeCarPlayMainAudio([banner intValue]))
  {
    LOBYTE(v6) = 1;
    goto LABEL_38;
  }

  v7 = vaemCopyEndpointForPort(port);
  cf = 0;
  if (v7)
  {
    v8 = v7;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10 && (v10(CMBaseObject, 0x1F289CEF0, *MEMORY[0x1E695E480], &cf), cf))
    {
      PortFromCFNumber = CMSMVAUtility_GetPortFromCFNumber(cf);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (PortFromCFNumber == 1885892706)
      {
        if (dword_1EB75DE40)
        {
          goto LABEL_16;
        }
      }

      else if (dword_1EB75DE40)
      {
LABEL_16:
        valuePtr = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else if (dword_1EB75DE40)
    {
      goto LABEL_16;
    }

    CFRelease(v8);
    goto LABEL_18;
  }

  if (dword_1EB75DE40)
  {
    valuePtr = 0;
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_18:
  v14 = vaemCopyConnectedPortsListForRouteConfiguration(0, 0, 0, 0, 0);
  if (!v14)
  {
    v6 = 0;
    goto LABEL_31;
  }

  v15 = v14;
  Count = CFArrayGetCount(v14);
  if (Count >= 1)
  {
    v17 = Count;
    valuePtr = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(v15, 0);
    CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
    v19 = valuePtr;
    if (v19 == [banner intValue])
    {
      v6 = 1;
LABEL_27:
      if (dword_1EB75DE40)
      {
        v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      goto LABEL_30;
    }

    v20 = 1;
    while (v17 != v20)
    {
      valuePtr = 0;
      v21 = CFArrayGetValueAtIndex(v15, v20);
      CFNumberGetValue(v21, kCFNumberSInt32Type, &valuePtr);
      v22 = valuePtr;
      ++v20;
      if (v22 == [banner intValue])
      {
        v6 = v20 - 1 < v17;
        goto LABEL_27;
      }
    }
  }

  v6 = 0;
LABEL_30:
  CFRelease(v15);
LABEL_31:
  if (dword_1EB75DE40)
  {
    valuePtr = 0;
    v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v25 = valuePtr;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v25;
    }

    else
    {
      v26 = v25 & 0xFFFFFFFE;
    }

    if (v26)
    {
      v31 = 136315650;
      v32 = "[MX_BannerManager newPortNeedsToShowBanner:previousPort:]";
      v33 = 1024;
      v34[0] = v6;
      LOWORD(v34[1]) = 2114;
      *(&v34[1] + 2) = banner;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_38:
  v27 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)promptUserResponseForUndoRoute:(id)route undoHandler:(id)handler
{
  v50 = *MEMORY[0x1E69E9840];
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v44 = 1;
  cf = [route objectForKey:@"PortMacAddress"];
  [route objectForKey:@"PortDeviceIdentifier"];
  v37 = [route objectForKey:@"RoutingContextUUID"];
  v36 = [route objectForKey:@"PortName"];
  v6 = [route objectForKey:@"PortID"];
  v7 = [objc_msgSend(route objectForKey:{@"OldPort", "intValue"}];
  v8 = +[MX_BannerManager getCacheKey:port:](MX_BannerManager, "getCacheKey:port:", cf, [v6 intValue]);
  v9 = CMSMVAUtility_CopyBluetoothDeviceModelID([v6 intValue]);
  if (dword_1EB75DE40)
  {
    LODWORD(v39) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v9)
  {
    CFRelease(v9);
  }

  v11 = [(MX_BannerManager *)self newPortNeedsToShowBanner:v6 previousPort:v7, v29, v32];
  v12 = bannerResponseCacheMutex;
  objc_sync_enter(bannerResponseCacheMutex);
  if (!v11)
  {
    goto LABEL_13;
  }

  if (!-[NSMutableDictionary objectForKey:](self->undoBannerResponseCache, "objectForKey:", v8) || ![-[NSMutableDictionary objectForKey:](self->undoBannerResponseCache objectForKey:{v8), "bannerResponse"}])
  {
    if (![(NSMutableDictionary *)self->undoBannerResponseCache objectForKey:v8])
    {
      v14 = vaeCopyDeviceMacAddressFromVADPort(v7);
      if (dword_1EB75DE40)
      {
        LODWORD(v39) = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v15, type);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (v14)
      {
        CFRelease(v14);
      }

      v20 = objc_alloc_init(MXUndoBannerResponseInfo);
      [(NSMutableDictionary *)self->undoBannerResponseCache setObject:v20 forKey:v8];

      [(MX_BannerManager *)self updatePartnerPortsInUndoBannerResponseCacheForKey:v8 forPort:v7];
    }

    v21 = [(NSMutableDictionary *)self->undoBannerResponseCache objectForKey:v8, v30, v33];
    [v21 setBannerResponse:3];
    +[MX_BannerManager getButtonType:](MX_BannerManager, "getButtonType:", [v6 intValue]);
    if (CMSMVAUtility_IsPortOfTypeCarPlay([v6 intValue]))
    {
      IsPortOfTypeBluetoothVehicle = 2;
    }

    else
    {
      IsPortOfTypeBluetoothVehicle = CMSMVAUtility_IsPortOfTypeBluetoothVehicle([v6 intValue]);
    }

    v35 = IsPortOfTypeBluetoothVehicle;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v37)
    {
      CFRetain(v37);
    }

    if (v21)
    {
      CFRetain(v21);
    }

    if (v36)
    {
      CFRetain(v36);
    }

    v23 = v8;
    if (dword_1EB75DE40)
    {
      type = OS_LOG_TYPE_DEFAULT;
      v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v24, type);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v49 = CMSMVAUtility_CopyBluetoothDeviceModelID([v6 intValue]);
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = CMSMVAUtility_CopyBluetoothDeviceModelID(v7);
    [(MX_BannerManager *)self sendBannerStartToAudioStatistics:1 targetDeviceType:v35 targetProductID:v47[3] sourceDeviceType:v40[3]];
    v25 = [+[MX_BannerManager getSharedBannerClient](MX_BannerManager "getSharedBannerClient")];
    v26 = [(NSMutableDictionary *)self->undoBannerResponseCache objectForKey:v8];
    if (v26)
    {
      [v26 setTxid:v25];
      if (dword_1EB75DE40)
      {
        goto LABEL_41;
      }
    }

    else if (dword_1EB75DE40)
    {
LABEL_41:
      v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    _Block_object_dispose(&v39, 8);
    _Block_object_dispose(&v46, 8);
    goto LABEL_43;
  }

  if (dword_1EB75DE40)
  {
    LODWORD(v39) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v13, type);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_13:
  if ([(NSMutableDictionary *)self->undoBannerResponseCache objectForKey:v8, v30, v33])
  {
    if (dword_1EB75DE40)
    {
      LODWORD(v39) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v16, type);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    v17 = vaeCopyDeviceMacAddressFromVADPort(v7);
    if (dword_1EB75DE40)
    {
      LODWORD(v39) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v18, type);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v17)
    {
      CFRelease(v17);
    }

    v19 = objc_alloc_init(MXUndoBannerResponseInfo);
    [(NSMutableDictionary *)self->undoBannerResponseCache setObject:v19 forKey:v8];

    [(MX_BannerManager *)self updatePartnerPortsInUndoBannerResponseCacheForKey:v8 forPort:v7];
  }

LABEL_43:
  objc_sync_exit(v12);
  _Block_object_dispose(v43, 8);
  v28 = *MEMORY[0x1E69E9840];
}

- (void)sendBannerActionToAudioStatistics:(int64_t)statistics bannerType:(int64_t)type targetDeviceType:(int64_t)deviceType targetProductID:(id)d sourceDeviceType:(id)sourceDeviceType
{
  v16[8] = *MEMORY[0x1E69E9840];
  if (d)
  {
    dCopy = d;
  }

  else
  {
    dCopy = @"Unknown";
  }

  if (sourceDeviceType)
  {
    sourceDeviceTypeCopy = sourceDeviceType;
  }

  else
  {
    sourceDeviceTypeCopy = @"Unknown";
  }

  v12 = +[MXSystemController preferHeadphonesOverCarsAndSpeakersEnabled];
  IsLocked = CMSMDeviceState_DeviceIsLocked();
  v16[0] = 0x1F2898890;
  v15[0] = 0x1F2898850;
  v15[1] = 0x1F2898910;
  v16[1] = [MEMORY[0x1E696AD98] numberWithInteger:statistics];
  v15[2] = 0x1F28988F0;
  v16[2] = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v15[3] = 0x1F2898930;
  v16[3] = [MEMORY[0x1E696AD98] numberWithInteger:deviceType];
  v16[4] = dCopy;
  v15[4] = 0x1F2898950;
  v15[5] = 0x1F2898970;
  v16[5] = sourceDeviceTypeCopy;
  v15[6] = 0x1F2898990;
  v16[6] = [MEMORY[0x1E696AD98] numberWithBool:v12];
  v15[7] = 0x1F28989B0;
  v16[7] = [MEMORY[0x1E696AD98] numberWithBool:IsLocked];
  -[MXAudioStatistics sendSingleMessageWithDictionary:eventCategory:eventType:](+[MXAudioStatistics sharedInstance](MXAudioStatistics, "sharedInstance"), "sendSingleMessageWithDictionary:eventCategory:eventType:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:8], 25, 22);
  v14 = *MEMORY[0x1E69E9840];
}

- (void)sendBannerStartToAudioStatistics:(int64_t)statistics targetDeviceType:(int64_t)type targetProductID:(id)d sourceDeviceType:(id)deviceType
{
  v14[7] = *MEMORY[0x1E69E9840];
  if (d)
  {
    dCopy = d;
  }

  else
  {
    dCopy = @"Unknown";
  }

  if (deviceType)
  {
    deviceTypeCopy = deviceType;
  }

  else
  {
    deviceTypeCopy = @"Unknown";
  }

  v10 = +[MXSystemController preferHeadphonesOverCarsAndSpeakersEnabled];
  IsLocked = CMSMDeviceState_DeviceIsLocked();
  v14[0] = 0x1F28988B0;
  v13[0] = 0x1F2898850;
  v13[1] = 0x1F28988F0;
  v14[1] = [MEMORY[0x1E696AD98] numberWithInteger:statistics];
  v13[2] = 0x1F2898930;
  v14[2] = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v14[3] = dCopy;
  v13[3] = 0x1F2898950;
  v13[4] = 0x1F2898970;
  v14[4] = deviceTypeCopy;
  v13[5] = 0x1F2898990;
  v14[5] = [MEMORY[0x1E696AD98] numberWithBool:v10];
  v13[6] = 0x1F28989B0;
  v14[6] = [MEMORY[0x1E696AD98] numberWithBool:IsLocked];
  -[MXAudioStatistics sendSingleMessageWithDictionary:eventCategory:eventType:](+[MXAudioStatistics sharedInstance](MXAudioStatistics, "sharedInstance"), "sendSingleMessageWithDictionary:eventCategory:eventType:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:7], 25, 22);
  v12 = *MEMORY[0x1E69E9840];
}

@end
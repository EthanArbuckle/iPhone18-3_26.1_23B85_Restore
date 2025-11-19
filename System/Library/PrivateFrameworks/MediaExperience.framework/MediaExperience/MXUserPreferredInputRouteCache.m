@interface MXUserPreferredInputRouteCache
+ (id)sharedInstance;
- (MXUserPreferredInputRouteCache)init;
- (id)copyUserPreferredRoute:(id)a3;
- (int)setUserPreferredRoute:(id)a3 hostApplicationBundleID:(id)a4;
- (void)clearCurrentUserPreferenceForApp:(id)a3;
- (void)clearUserPreference:(id)a3;
- (void)clearUserPreferredRoute:(id)a3;
- (void)dealloc;
@end

@implementation MXUserPreferredInputRouteCache

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[MXUserPreferredInputRouteCache sharedInstance];
  }

  return sharedInstance_sSharedInstance_1;
}

MXUserPreferredInputRouteCache *__48__MXUserPreferredInputRouteCache_sharedInstance__block_invoke()
{
  result = objc_alloc_init(MXUserPreferredInputRouteCache);
  sharedInstance_sSharedInstance_1 = result;
  return result;
}

- (MXUserPreferredInputRouteCache)init
{
  v6.receiver = self;
  v6.super_class = MXUserPreferredInputRouteCache;
  v2 = [(MXUserPreferredInputRouteCache *)&v6 init];
  if (v2)
  {
    v3 = MXCFPreferencesCopyPreference(@"UserPreferredInputRoute");
    if ([v3 count])
    {
      v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v3];
    }

    else
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v2->mUserPreferredRouteCache = v4;
    v2->mUserPreferredRouteCacheLock = objc_alloc_init(MEMORY[0x1E696AD10]);
  }

  return v2;
}

- (void)dealloc
{
  self->mUserPreferredRouteCacheLock = 0;

  self->mUserPreferredRouteCache = 0;
  v3.receiver = self;
  v3.super_class = MXUserPreferredInputRouteCache;
  [(MXUserPreferredInputRouteCache *)&v3 dealloc];
}

- (int)setUserPreferredRoute:(id)a3 hostApplicationBundleID:(id)a4
{
  v21[26] = *MEMORY[0x1E69E9840];
  v7 = [a3 objectForKey:@"RouteName"];
  v8 = [a3 objectForKey:@"RouteUID"];
  v9 = [a3 objectForKey:@"AudioRouteName"];
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10 || v9 == 0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    result = -12980;
  }

  else
  {
    v20[0] = @"RouteName";
    v20[1] = @"RouteUID";
    v21[0] = v7;
    v21[1] = v8;
    v20[2] = @"AudioRouteName";
    v21[2] = v9;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];
    if (a4)
    {
      v14 = a4;
    }

    else
    {
      v14 = @"Default";
    }

    [(NSLock *)self->mUserPreferredRouteCacheLock lock];
    if (dword_1EB75DF20)
    {
      v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(NSMutableDictionary *)self->mUserPreferredRouteCache setObject:v13 forKey:v14, v18, v19];
    MXCFPreferencesSetAndSynchronizeUserPreference(@"UserPreferredInputRoute", self->mUserPreferredRouteCache);
    [(NSLock *)self->mUserPreferredRouteCacheLock unlock];
    result = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)copyUserPreferredRoute:(id)a3
{
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = @"Default";
  }

  [(NSLock *)self->mUserPreferredRouteCacheLock lock];
  v5 = [(NSMutableDictionary *)self->mUserPreferredRouteCache objectForKey:v4];
  [(NSLock *)self->mUserPreferredRouteCacheLock unlock];
  return v5;
}

- (void)clearUserPreference:(id)a3
{
  [(NSLock *)self->mUserPreferredRouteCacheLock lock];
  [(NSMutableDictionary *)self->mUserPreferredRouteCache removeObjectForKey:a3];
  MXCFPreferencesSetAndSynchronizeUserPreference(@"UserPreferredInputRoute", self->mUserPreferredRouteCache);
  mUserPreferredRouteCacheLock = self->mUserPreferredRouteCacheLock;

  [(NSLock *)mUserPreferredRouteCacheLock unlock];
}

- (void)clearCurrentUserPreferenceForApp:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = a3;
    [(NSLock *)self->mUserPreferredRouteCacheLock lock];
    if (![(NSMutableDictionary *)self->mUserPreferredRouteCache objectForKey:v3])
    {
      if (dword_1EB75DF20)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v3 = @"Default";
    }

    [(NSLock *)self->mUserPreferredRouteCacheLock unlock:v8];
    [(MXUserPreferredInputRouteCache *)self clearUserPreference:v3];
  }

  else
  {
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)clearUserPreferredRoute:(id)a3
{
  cf[21] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = @"Default";
  }

  [(NSLock *)self->mUserPreferredRouteCacheLock lock];
  v6 = [(NSMutableDictionary *)self->mUserPreferredRouteCache objectForKey:v5];
  v7 = [(NSMutableDictionary *)self->mUserPreferredRouteCache objectForKey:@"Default"];
  if (dword_1EB75DF20)
  {
    LODWORD(cf[0]) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(NSLock *)self->mUserPreferredRouteCacheLock unlock:v14];
  [(MXUserPreferredInputRouteCache *)self clearUserPreference:v5];
  cf[0] = 0;
  FigRoutingManagerContextUtilities_CopySystemAudioInputContextUUID(cf);
  if (v6)
  {
    if (([(__CFString *)v5 isEqualToString:@"Default"]& 1) != 0 || !v7)
    {
      [v6 objectForKey:@"RouteName"];
      if (dword_1EB75DF20)
      {
        v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (vaemClearUserPreferredInputPortInRouteConfigToVA())
      {
        v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      [v7 objectForKey:@"RouteUID"];
      if (dword_1EB75DF20)
      {
        v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigRoutingManagerPickRouteDescriptorForContext(cf[0], v7, 0, 0);
    }

    -[MXAudioStatistics sendSingleClearUserPreferredInputMessage:audioRouteName:isInputOverride:](+[MXAudioStatistics sharedInstance](MXAudioStatistics, "sharedInstance"), "sendSingleClearUserPreferredInputMessage:audioRouteName:isInputOverride:", a3, [v6 objectForKey:{@"AudioRouteName", v15, v17}], 0);

    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }

  else if (dword_1EB75DF20)
  {
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end
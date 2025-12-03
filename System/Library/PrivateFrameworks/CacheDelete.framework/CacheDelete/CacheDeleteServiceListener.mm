@interface CacheDeleteServiceListener
+ (id)cacheDeleteServiceListener:(id)listener options:(id)options;
- (CacheDeleteServiceListener)initWithName:(id)name options:(id)options;
- (void)serviceCallback:(id)callback replyBlock:(id)block;
- (void)serviceCancelPurge:(id)purge;
- (void)serviceNotify:(id)notify replyBlock:(id)block;
- (void)servicePeriodic:(int)periodic info:(id)info replyBlock:(id)block;
- (void)servicePing:(id)ping;
- (void)servicePurge:(int)purge info:(id)info replyBlock:(id)block;
- (void)servicePurgeable:(int)purgeable info:(id)info replyBlock:(id)block;
- (void)setNotifyCallback:(id)callback;
- (void)setPurgeable:(id)purgeable purge:(id)purge cancel:(id)cancel periodic:(id)periodic notify:(id)notify callback:(id)callback entitlements:(id)entitlements;
@end

@implementation CacheDeleteServiceListener

- (CacheDeleteServiceListener)initWithName:(id)name options:(id)options
{
  nameCopy = name;
  optionsCopy = options;
  v8 = [optionsCopy objectForKeyedSubscript:@"CACHE_DELETE_LEGACY_CALLBACK"];
  v9 = [optionsCopy objectForKeyedSubscript:@"ANON"];
  v10 = [optionsCopy objectForKeyedSubscript:@"CACHE_DELETE_SERVICE_INFO"];

  serviceInfo = self->_serviceInfo;
  self->_serviceInfo = v10;

  if (self->_serviceInfo)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      extensionContext = [(CacheDeleteServiceInfo *)self->_serviceInfo extensionContext];

      if (extensionContext)
      {
        extensionContext2 = [(CacheDeleteServiceInfo *)self->_serviceInfo extensionContext];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

LABEL_16:
        anonymousListener = 0;
        goto LABEL_17;
      }
    }
  }

  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_anonymous = [v9 BOOLValue];
    }
  }

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_legacyCallbacks = [v8 BOOLValue];
    }
  }

  if (!self->_anonymous)
  {
    isKindOfClass = 0;
    goto LABEL_16;
  }

  v15 = CDGetLogHandle("client");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA7F1000, v15, OS_LOG_TYPE_DEFAULT, "USING ANON Listener", buf, 2u);
  }

  anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
  isKindOfClass = 0;
LABEL_17:
  v28.receiver = self;
  v28.super_class = CacheDeleteServiceListener;
  v17 = [(CacheDeleteListener *)&v28 initWithName:nameCopy listener:anonymousListener protocol:&unk_1F387CF60 exportedObj:self isExtension:isKindOfClass & 1];
  v18 = v17;
  if (v17)
  {
    v19 = "";
    if (v17->_anonymous)
    {
      endpoint = [anonymousListener endpoint];
      endpoint = v18->_endpoint;
      v18->_endpoint = endpoint;

      if (v18->_anonymous)
      {
        v19 = "_ANON";
      }
    }

    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cache_delete.listener.%@%s", nameCopy, v19];
    uTF8String = [v22 UTF8String];
    v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v25 = dispatch_queue_create(uTF8String, v24);
    [(CacheDeleteServiceListener *)v18 setQueue:v25];

    v26 = v18;
  }

  else
  {
    v22 = CDGetLogHandle("client");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA7F1000, v22, OS_LOG_TYPE_ERROR, "super initWithName failed.", buf, 2u);
    }
  }

  return v18;
}

+ (id)cacheDeleteServiceListener:(id)listener options:(id)options
{
  if (listener)
  {
    optionsCopy = options;
    listenerCopy = listener;
    v7 = [[CacheDeleteServiceListener alloc] initWithName:listenerCopy options:optionsCopy];

    v8 = cacheDeleteServiceListener_options__listener;
    cacheDeleteServiceListener_options__listener = v7;
  }

  v9 = cacheDeleteServiceListener_options__listener;

  return v9;
}

- (void)setPurgeable:(id)purgeable purge:(id)purge cancel:(id)cancel periodic:(id)periodic notify:(id)notify callback:(id)callback entitlements:(id)entitlements
{
  purgeableCopy = purgeable;
  purgeCopy = purge;
  cancelCopy = cancel;
  periodicCopy = periodic;
  notifyCopy = notify;
  callbackCopy = callback;
  entitlementsCopy = entitlements;
  queue = [(CacheDeleteServiceListener *)self queue];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __94__CacheDeleteServiceListener_setPurgeable_purge_cancel_periodic_notify_callback_entitlements___block_invoke;
  v30[3] = &unk_1E7F03058;
  v32 = purgeableCopy;
  v33 = purgeCopy;
  v34 = cancelCopy;
  v35 = periodicCopy;
  v36 = notifyCopy;
  v37 = callbackCopy;
  v30[4] = self;
  v31 = entitlementsCopy;
  v23 = entitlementsCopy;
  v24 = callbackCopy;
  v25 = notifyCopy;
  v26 = periodicCopy;
  v27 = cancelCopy;
  v28 = purgeCopy;
  v29 = purgeableCopy;
  dispatch_sync(queue, v30);
}

uint64_t __94__CacheDeleteServiceListener_setPurgeable_purge_cancel_periodic_notify_callback_entitlements___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) requiredEntitlements];
  [v2 removeAllObjects];

  [*(a1 + 32) setPurgeable:*(a1 + 48)];
  [*(a1 + 32) setPurge:*(a1 + 56)];
  [*(a1 + 32) setCancel:*(a1 + 64)];
  [*(a1 + 32) setPeriodic:*(a1 + 72)];
  [*(a1 + 32) setNotify:*(a1 + 80)];
  [*(a1 + 32) setCallback:*(a1 + 88)];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 addRequiredEntitlement:v4];
}

- (void)servicePurgeable:(int)purgeable info:(id)info replyBlock:(id)block
{
  infoCopy = info;
  blockCopy = block;
  v10 = [infoCopy mutableCopy];
  v11 = [v10 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v12 = [CacheDeleteVolume validateVolumeAtPath:v11];

  if (!v12)
  {
    goto LABEL_8;
  }

  [v10 setObject:v12 forKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v13 = [infoCopy objectForKeyedSubscript:@"CACHE_DELETE_NO_CACHE"];
  v14 = evaluateBoolProperty(v13);

  v15 = v14 ? QOS_CLASS_UTILITY : QOS_CLASS_BACKGROUND;
  if (!-[CacheDeleteServiceListener legacyCallbacks](self, "legacyCallbacks") || (getRootVolume(), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v12 isEqualToString:v16], v16, (v17 & 1) != 0))
  {
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __63__CacheDeleteServiceListener_servicePurgeable_info_replyBlock___block_invoke;
    v23 = &unk_1E7F03080;
    selfCopy = self;
    v25 = v10;
    purgeableCopy = purgeable;
    v26 = blockCopy;
    v18 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v15, 0, &v20);
    v19 = [(CacheDeleteServiceListener *)self queue:v20];
    dispatch_async(v19, v18);
  }

  else
  {
LABEL_8:
    (*(blockCopy + 2))(blockCopy, 0);
  }
}

void __63__CacheDeleteServiceListener_servicePurgeable_info_replyBlock___block_invoke(uint64_t a1)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) purgeable];

  if (v2)
  {
    v3 = *(a1 + 48);
    v16 = [*(a1 + 32) purgeable];
    v4 = (*(v16 + 2))(v16, *(a1 + 56), *(a1 + 40));
    (*(v3 + 16))(v3, v4);

    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v6 = [*(a1 + 32) callback];

    if (v6)
    {
      v7 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 56)];
      [*(a1 + 40) setObject:v7 forKeyedSubscript:@"CACHE_DELETE_URGENCY"];

      v18 = @"CACHE_DELETE_PURGEABLE_OPERATION";
      v19 = *(a1 + 40);
      v20 = @"CACHE_DELETE_OPERATIONS";
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v21[0] = v8;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];

      v10 = [*(a1 + 32) callback];
      v11 = (v10)[2](v10, v9);

      v12 = *(a1 + 48);
      v13 = [v11 objectForKeyedSubscript:@"CACHE_DELETE_PURGEABLE_OPERATION"];
      (*(v12 + 16))(v12, v13);
    }

    else
    {
      v14 = CDGetLogHandle("client");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1BA7F1000, v14, OS_LOG_TYPE_INFO, "purgeable callback is NULL", buf, 2u);
      }

      (*(*(a1 + 48) + 16))();
    }

    v15 = *MEMORY[0x1E69E9840];
  }
}

- (void)servicePurge:(int)purge info:(id)info replyBlock:(id)block
{
  v31 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v9 = [info mutableCopy];
  v10 = [v9 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v11 = [CacheDeleteVolume validateVolumeAtPath:v10];

  v12 = [v9 objectForKeyedSubscript:@"CACHE_DELETE_QOS"];
  v13 = evaluateNumberProperty(v12);

  if (v11 && (([v9 setObject:v11 forKeyedSubscript:@"CACHE_DELETE_VOLUME"], !-[CacheDeleteServiceListener legacyCallbacks](self, "legacyCallbacks")) || (getRootVolume(), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v11, "isEqualToString:", v14), v14, (v15 & 1) != 0)))
  {
    if (v13)
    {
      unsignedIntValue = [v13 unsignedIntValue];
    }

    else
    {
      unsignedIntValue = QOS_CLASS_UTILITY;
    }

    v17 = CDGetLogHandle("client");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v30 = unsignedIntValue;
      _os_log_impl(&dword_1BA7F1000, v17, OS_LOG_TYPE_DEFAULT, "servicePurge QOS: %u", buf, 8u);
    }

    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __59__CacheDeleteServiceListener_servicePurge_info_replyBlock___block_invoke;
    v24 = &unk_1E7F03080;
    selfCopy = self;
    v26 = v9;
    purgeCopy = purge;
    v27 = blockCopy;
    v18 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, unsignedIntValue, 0, &v21);
    v19 = [(CacheDeleteServiceListener *)self queue:v21];
    dispatch_async(v19, v18);
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, 0);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __59__CacheDeleteServiceListener_servicePurge_info_replyBlock___block_invoke(uint64_t a1)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) purge];

  if (v2)
  {
    v3 = *(a1 + 48);
    v16 = [*(a1 + 32) purge];
    v4 = (*(v16 + 2))(v16, *(a1 + 56), *(a1 + 40));
    (*(v3 + 16))(v3, v4);

    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v6 = [*(a1 + 32) callback];

    if (v6)
    {
      v7 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 56)];
      [*(a1 + 40) setObject:v7 forKeyedSubscript:@"CACHE_DELETE_URGENCY"];

      v18 = @"CACHE_DELETE_PURGE_OPERATION";
      v19 = *(a1 + 40);
      v20 = @"CACHE_DELETE_OPERATIONS";
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v21[0] = v8;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];

      v10 = [*(a1 + 32) callback];
      v11 = (v10)[2](v10, v9);

      v12 = *(a1 + 48);
      v13 = [v11 objectForKeyedSubscript:@"CACHE_DELETE_PURGE_OPERATION"];
      (*(v12 + 16))(v12, v13);
    }

    else
    {
      v14 = CDGetLogHandle("client");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1BA7F1000, v14, OS_LOG_TYPE_INFO, "purge callback is NULL", buf, 2u);
      }

      (*(*(a1 + 48) + 16))();
    }

    v15 = *MEMORY[0x1E69E9840];
  }
}

- (void)serviceCancelPurge:(id)purge
{
  purgeCopy = purge;
  v5 = CDGetLogHandle("client");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA7F1000, v5, OS_LOG_TYPE_DEFAULT, "serviceCancelPurge", buf, 2u);
  }

  cancel = self->_cancel;
  if (cancel)
  {
    cancel[2]();
  }

  else
  {
    callback = self->_callback;
    if (callback)
    {
      callback[2](callback, &unk_1F38797A8);
    }

    else
    {
      v8 = CDGetLogHandle("client");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_error_impl(&dword_1BA7F1000, v8, OS_LOG_TYPE_ERROR, "cancel callback is NULL", v11, 2u);
      }
    }
  }

  purgeCopy[2](purgeCopy);

  v9 = CDGetLogHandle("client");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1BA7F1000, v9, OS_LOG_TYPE_DEFAULT, "serviceCancelPurge end", v10, 2u);
  }
}

- (void)servicePeriodic:(int)periodic info:(id)info replyBlock:(id)block
{
  infoCopy = info;
  blockCopy = block;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __62__CacheDeleteServiceListener_servicePeriodic_info_replyBlock___block_invoke;
  v17 = &unk_1E7F03080;
  selfCopy = self;
  v19 = infoCopy;
  periodicCopy = periodic;
  v20 = blockCopy;
  v10 = blockCopy;
  v11 = infoCopy;
  v12 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_BACKGROUND, 0, &v14);
  v13 = [(CacheDeleteServiceListener *)self queue:v14];
  dispatch_async(v13, v12);
}

void __62__CacheDeleteServiceListener_servicePeriodic_info_replyBlock___block_invoke(uint64_t a1)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) periodic];

  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 periodic];
    v5 = v4[2](v4, *(a1 + 56), *(a1 + 40));

    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(*(a1 + 48) + 16);
    v7 = *MEMORY[0x1E69E9840];

    v6();
  }

  else
  {
    v8 = [v3 callback];

    if (v8)
    {
      v9 = [*(a1 + 40) mutableCopy];
      v10 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 56)];
      [v9 setObject:v10 forKeyedSubscript:@"CACHE_DELETE_URGENCY"];

      v24 = v9;
      v25 = @"CACHE_DELETE_OPERATIONS";
      v23 = @"CACHE_DELETE_PERIODIC_OPERATION";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v26[0] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];

      v13 = CDGetLogHandle("client");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v20[0] = 67109378;
        v20[1] = 229;
        v21 = 2112;
        v22 = v12;
        _os_log_debug_impl(&dword_1BA7F1000, v13, OS_LOG_TYPE_DEBUG, "[%d] FRAMEWORK operation: %@", v20, 0x12u);
      }

      v14 = [*(a1 + 32) callback];
      v15 = (v14)[2](v14, v12);

      v16 = *(a1 + 48);
      v17 = [v15 objectForKeyedSubscript:@"CACHE_DELETE_PERIODIC_OPERATION"];
      (*(v16 + 16))(v16, v17);
    }

    else
    {
      v18 = CDGetLogHandle("client");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        LOWORD(v20[0]) = 0;
        _os_log_impl(&dword_1BA7F1000, v18, OS_LOG_TYPE_INFO, "periodic callback is NULL", v20, 2u);
      }

      (*(*(a1 + 48) + 16))();
    }

    v19 = *MEMORY[0x1E69E9840];
  }
}

- (void)servicePing:(id)ping
{
  pingCopy = ping;
  v4 = CDGetLogHandle("client");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BA7F1000, v4, OS_LOG_TYPE_DEFAULT, "PING", v5, 2u);
  }

  pingCopy[2](pingCopy);
}

- (void)serviceNotify:(id)notify replyBlock:(id)block
{
  notifyCopy = notify;
  blockCopy = block;
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_attr_make_initially_inactive(v8);
  v10 = dispatch_queue_create("com.apple.cache_delete_notify", v9);

  queue = [(CacheDeleteServiceListener *)self queue];
  dispatch_set_target_queue(v10, queue);

  dispatch_activate(v10);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__CacheDeleteServiceListener_serviceNotify_replyBlock___block_invoke;
  block[3] = &unk_1E7F030A8;
  block[4] = self;
  v15 = notifyCopy;
  v16 = blockCopy;
  v12 = blockCopy;
  v13 = notifyCopy;
  dispatch_async(v10, block);
}

uint64_t __55__CacheDeleteServiceListener_serviceNotify_replyBlock___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) notify];

  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 notify];
    (*(v4 + 16))(v4, *(a1 + 40));
  }

  else
  {
    v5 = [v3 callback];

    if (v5)
    {
      v14 = @"CACHE_DELETE_NOTIFICATION_OPERATION";
      v15 = *(a1 + 40);
      v16 = @"CACHE_DELETE_OPERATIONS";
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v17[0] = v6;
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];

      v7 = CDGetLogHandle("client");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v12 = 67109378;
        LODWORD(v13[0]) = 263;
        WORD2(v13[0]) = 2112;
        *(v13 + 6) = v4;
        _os_log_debug_impl(&dword_1BA7F1000, v7, OS_LOG_TYPE_DEBUG, "[%d] FRAMEWORK operation: %@", &v12, 0x12u);
      }

      v8 = [*(a1 + 32) callback];
      v8[2](v8, v4);
    }

    else
    {
      v4 = CDGetLogHandle("client");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 40);
        v12 = 138412290;
        v13[0] = v11;
        _os_log_error_impl(&dword_1BA7F1000, v4, OS_LOG_TYPE_ERROR, "notify callback is NULL for %@", &v12, 0xCu);
      }
    }
  }

  result = (*(*(a1 + 48) + 16))();
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setNotifyCallback:(id)callback
{
  callbackCopy = callback;
  queue = [(CacheDeleteServiceListener *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__CacheDeleteServiceListener_setNotifyCallback___block_invoke;
  v7[3] = &unk_1E7F028E8;
  v7[4] = self;
  v8 = callbackCopy;
  v6 = callbackCopy;
  dispatch_sync(queue, v7);
}

- (void)serviceCallback:(id)callback replyBlock:(id)block
{
  callbackCopy = callback;
  blockCopy = block;
  callback = [(CacheDeleteServiceListener *)self callback];

  if (callback)
  {
    v9 = [callbackCopy objectForKeyedSubscript:@"CACHE_DELETE_QOS"];
    v10 = evaluateNumberProperty(v9);

    if (v10)
    {
      unsignedIntValue = [v10 unsignedIntValue];
    }

    else
    {
      unsignedIntValue = QOS_CLASS_BACKGROUND;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__CacheDeleteServiceListener_serviceCallback_replyBlock___block_invoke;
    block[3] = &unk_1E7F030A8;
    v19 = blockCopy;
    block[4] = self;
    v18 = callbackCopy;
    v12 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, unsignedIntValue, 0, block);
    queue = [(CacheDeleteServiceListener *)self queue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __57__CacheDeleteServiceListener_serviceCallback_replyBlock___block_invoke_2;
    v15[3] = &unk_1E7F030D0;
    v16 = v12;
    v14 = v12;
    dispatch_async(queue, v15);
  }
}

void __57__CacheDeleteServiceListener_serviceCallback_replyBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v4 = [*(a1 + 32) callback];
  v3 = v4[2](v4, *(a1 + 40));
  (*(v2 + 16))(v2, v3);
}

@end
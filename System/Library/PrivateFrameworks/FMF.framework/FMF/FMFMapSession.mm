@interface FMFMapSession
+ (id)newConnection;
+ (id)sharedInstance;
- (void)gridImageForScreenRatio:(double)ratio andCompletion:(id)completion;
- (void)gridImageForWidth:(double)width height:(double)height cache:(BOOL)cache andCompletion:(id)completion;
- (void)mapImageForRequest:(id)request andCompletion:(id)completion;
- (void)noLocationImageForScreenRatio:(double)ratio andCompletion:(id)completion;
- (void)noLocationImageForWidth:(double)width height:(double)height cache:(BOOL)cache andCompletion:(id)completion;
@end

@implementation FMFMapSession

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__FMFMapSession_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_dispatch_predicate != -1)
  {
    dispatch_once(&sharedInstance_dispatch_predicate, block);
  }

  v2 = sharedInstance__instance;

  return v2;
}

void __31__FMFMapSession_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = sharedInstance__instance;
  sharedInstance__instance = v2;

  v4 = objc_opt_new();
  [sharedInstance__instance setMapCache:v4];
}

+ (id)newConnection
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285D89628];
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.icloud.FMF.FMFMapXPCService"];
  [v3 setRemoteObjectInterface:v2];
  [v3 resume];

  return v3;
}

- (void)gridImageForWidth:(double)width height:(double)height cache:(BOOL)cache andCompletion:(id)completion
{
  cacheCopy = cache;
  completionCopy = completion;
  selfCopy = self;
  v12 = selfCopy;
  if (cacheCopy && (-[FMFMapSession mapCache](selfCopy, "mapCache"), v13 = objc_claimAutoreleasedReturnValue(), [v13 cachedGridImageForWidth:width andHeight:height], v14 = objc_claimAutoreleasedReturnValue(), v13, v14))
  {
    completionCopy[2](completionCopy, v14, 0);
  }

  else
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__0;
    v28 = __Block_byref_object_dispose__0;
    v29 = 0;
    v15 = +[FMFMapSession newConnection];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __62__FMFMapSession_gridImageForWidth_height_cache_andCompletion___block_invoke;
    v23[3] = &unk_278FDE180;
    v23[4] = &v24;
    v16 = [v15 remoteObjectProxyWithErrorHandler:v23];
    if (completionCopy && v25[5])
    {
      (completionCopy[2])(completionCopy, 0);
    }

    else
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __62__FMFMapSession_gridImageForWidth_height_cache_andCompletion___block_invoke_2;
      v17[3] = &unk_278FDE1A8;
      v22 = cacheCopy;
      v18 = v12;
      widthCopy = width;
      heightCopy = height;
      v19 = completionCopy;
      [v16 gridImageForWidth:v17 height:width andCompletion:height];
    }

    _Block_object_dispose(&v24, 8);
  }
}

void __62__FMFMapSession_gridImageForWidth_height_cache_andCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

void __62__FMFMapSession_gridImageForWidth_height_cache_andCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (*(a1 + 64) == 1)
  {
    v6 = [*(a1 + 32) mapCache];
    [v6 cacheGridImage:v7 forWidth:*(a1 + 48) andHeight:*(a1 + 56)];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)noLocationImageForWidth:(double)width height:(double)height cache:(BOOL)cache andCompletion:(id)completion
{
  cacheCopy = cache;
  completionCopy = completion;
  selfCopy = self;
  v12 = selfCopy;
  if (cacheCopy && (-[FMFMapSession mapCache](selfCopy, "mapCache"), v13 = objc_claimAutoreleasedReturnValue(), [v13 cachedNoLocationImageForWidth:width andHeight:height], v14 = objc_claimAutoreleasedReturnValue(), v13, v14))
  {
    completionCopy[2](completionCopy, v14, 0);
  }

  else
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__0;
    v28 = __Block_byref_object_dispose__0;
    v29 = 0;
    v15 = +[FMFMapSession newConnection];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __68__FMFMapSession_noLocationImageForWidth_height_cache_andCompletion___block_invoke;
    v23[3] = &unk_278FDE180;
    v23[4] = &v24;
    v16 = [v15 remoteObjectProxyWithErrorHandler:v23];
    if (completionCopy && v25[5])
    {
      (completionCopy[2])(completionCopy, 0);
    }

    else
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __68__FMFMapSession_noLocationImageForWidth_height_cache_andCompletion___block_invoke_2;
      v17[3] = &unk_278FDE1A8;
      v22 = cacheCopy;
      v18 = v12;
      widthCopy = width;
      heightCopy = height;
      v19 = completionCopy;
      [v16 noLocationImageForWidth:v17 height:width andCompletion:height];
    }

    _Block_object_dispose(&v24, 8);
  }
}

void __68__FMFMapSession_noLocationImageForWidth_height_cache_andCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

void __68__FMFMapSession_noLocationImageForWidth_height_cache_andCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (*(a1 + 64) == 1)
  {
    v6 = [*(a1 + 32) mapCache];
    [v6 cacheNoLocationImage:v7 forWidth:*(a1 + 48) andHeight:*(a1 + 56)];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)mapImageForRequest:(id)request andCompletion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = LogCategory_FMFMapXPC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [FMFMapSession mapImageForRequest:andCompletion:];
  }

  selfCopy = self;
  if (![requestCopy cachingEnabled] || (-[FMFMapSession mapCache](selfCopy, "mapCache"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "cachedMapImageForRequest:", requestCopy), v11 = objc_claimAutoreleasedReturnValue(), v10, !v11))
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__0;
    v28 = __Block_byref_object_dispose__0;
    v29 = 0;
    v13 = +[FMFMapSession newConnection];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __50__FMFMapSession_mapImageForRequest_andCompletion___block_invoke;
    v23[3] = &unk_278FDE180;
    v23[4] = &v24;
    v14 = [v13 remoteObjectProxyWithErrorHandler:v23];
    if (completionCopy && v25[5])
    {
      completionCopy[2](completionCopy, 0);
    }

    else
    {
      mapCache = [(FMFMapSession *)selfCopy mapCache];
      v16 = [mapCache pendingMapImageForRequest:requestCopy];

      v17 = LogCategory_FMFMapXPC();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [FMFMapSession mapImageForRequest:andCompletion:];
      }

      if (v16 && [requestCopy priority] < 1)
      {
        if (!completionCopy)
        {
          goto LABEL_17;
        }

        v18 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"FMFMapXPCService" code:206 userInfo:0];
        (completionCopy[2])(completionCopy, 0, v18);
      }

      else
      {
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __50__FMFMapSession_mapImageForRequest_andCompletion___block_invoke_66;
        v19[3] = &unk_278FDE1D0;
        v20 = requestCopy;
        v21 = selfCopy;
        v22 = completionCopy;
        [v14 mapImageForRequest:v20 andCompletion:v19];

        v18 = v20;
      }
    }

LABEL_17:

    _Block_object_dispose(&v24, 8);
    goto LABEL_18;
  }

  v12 = LogCategory_FMFMapXPC();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [FMFMapSession mapImageForRequest:andCompletion:];
  }

  (completionCopy[2])(completionCopy, v11, 0);
LABEL_18:
}

void __50__FMFMapSession_mapImageForRequest_andCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

void __50__FMFMapSession_mapImageForRequest_andCompletion___block_invoke_66(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) cachingEnabled])
  {
    v7 = [*(a1 + 40) mapCache];
    [v7 cacheMapImage:v5 forRequest:*(a1 + 32)];
  }

  v8 = LogCategory_FMFMapXPC();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v9)
    {
      __50__FMFMapSession_mapImageForRequest_andCompletion___block_invoke_66_cold_1(v6, v8);
    }
  }

  else if (v9)
  {
    __50__FMFMapSession_mapImageForRequest_andCompletion___block_invoke_66_cold_2();
  }

  (*(*(a1 + 48) + 16))();
}

- (void)gridImageForScreenRatio:(double)ratio andCompletion:(id)completion
{
  completionCopy = completion;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = 0;
  v6 = +[FMFMapSession newConnection];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__FMFMapSession_gridImageForScreenRatio_andCompletion___block_invoke;
  v10[3] = &unk_278FDE180;
  v10[4] = &v11;
  v7 = [v6 remoteObjectProxyWithErrorHandler:v10];
  if (completionCopy && v12[5])
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__FMFMapSession_gridImageForScreenRatio_andCompletion___block_invoke_2;
    v8[3] = &unk_278FDE1F8;
    v9 = completionCopy;
    [v7 gridImageForScreenRatio:v8 andCompletion:ratio];
  }

  _Block_object_dispose(&v11, 8);
}

void __55__FMFMapSession_gridImageForScreenRatio_andCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

- (void)noLocationImageForScreenRatio:(double)ratio andCompletion:(id)completion
{
  completionCopy = completion;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = 0;
  v6 = +[FMFMapSession newConnection];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__FMFMapSession_noLocationImageForScreenRatio_andCompletion___block_invoke;
  v10[3] = &unk_278FDE180;
  v10[4] = &v11;
  v7 = [v6 remoteObjectProxyWithErrorHandler:v10];
  if (completionCopy && v12[5])
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __61__FMFMapSession_noLocationImageForScreenRatio_andCompletion___block_invoke_2;
    v8[3] = &unk_278FDE1F8;
    v9 = completionCopy;
    [v7 noLocationImageForScreenRatio:v8 andCompletion:ratio];
  }

  _Block_object_dispose(&v11, 8);
}

void __61__FMFMapSession_noLocationImageForScreenRatio_andCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

void __88__FMFMapSession_mapImageForLocation_isShifted_altitude_pitch_screenRatio_andCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

void __50__FMFMapSession_mapImageForRequest_andCompletion___block_invoke_66_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_24A33F000, a2, OS_LOG_TYPE_DEBUG, "Error generating maps %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end
@interface CDUserContextService
@end

@implementation CDUserContextService

void __55___CDUserContextService_sharedInstanceWithPersistence___block_invoke(uint64_t a1)
{
  v4 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.coreduetd.context"];
  v2 = [[_CDUserContextService alloc] initWithListener:v4 withPersistence:*(a1 + 32) withStorage:0 withStore:0];
  v3 = sharedInstanceWithPersistence__service;
  sharedInstanceWithPersistence__service = v2;
}

void __61___CDUserContextService_sharedInstanceWithSharedMemoryStore___block_invoke(uint64_t a1)
{
  v4 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.coreduetd.context"];
  v2 = [[_CDUserContextService alloc] initWithListener:v4 withPersistence:0 withStorage:0 withStore:*(a1 + 32)];
  v3 = sharedInstanceWithSharedMemoryStore__service;
  sharedInstanceWithSharedMemoryStore__service = v2;
}

void __45___CDUserContextService_addOpenRegistration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = *(*(a1 + 32) + 56);
    objc_sync_enter(v7);
    [*(*(a1 + 32) + 56) addObject:WeakRetained];
    [*(*(a1 + 32) + 64) setObject:v5 forKeyedSubscript:v9];
    objc_sync_exit(v7);

    v8 = *(*(a1 + 32) + 48);
    objc_sync_enter(v8);
    [*(*(a1 + 32) + 48) removeObject:WeakRetained];
    objc_sync_exit(v8);

    [*(a1 + 32) informClientOfFiredRegistration:WeakRetained info:v5];
  }
}

void __62___CDUserContextService_informClientOfFiredRegistration_info___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E6997908] contextChannel];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __62___CDUserContextService_informClientOfFiredRegistration_info___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __62___CDUserContextService_informClientOfFiredRegistration_info___block_invoke_cold_2(a1);
  }
}

void __40___CDUserContextService_regenerateState__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v7 = *(*(a1 + 32) + 56);
    objc_sync_enter(v7);
    v8 = *(*(a1 + 32) + 56);
    v9 = objc_loadWeakRetained((a1 + 40));
    [v8 addObject:v9];

    [*(*(a1 + 32) + 64) setObject:v5 forKeyedSubscript:v15];
    objc_sync_exit(v7);

    v10 = *(*(a1 + 32) + 48);
    objc_sync_enter(v10);
    v11 = *(*(a1 + 32) + 48);
    v12 = objc_loadWeakRetained((a1 + 40));
    [v11 removeObject:v12];

    objc_sync_exit(v10);
    v13 = *(a1 + 32);
    v14 = objc_loadWeakRetained((a1 + 40));
    [v13 informClientOfFiredRegistration:v14 info:v5];
  }
}

uint64_t __60___CDUserContextService_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  NSSelectorFromString(&cfstr_Doesimplementu.isa);
  result = objc_opt_respondsToSelector();
  listener_shouldAcceptNewConnection__isUnitTests = result & 1;
  return result;
}

void __66___CDUserContextService_fetchProxySourceDeviceUUIDFromSubscriber___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E6997908] contextChannel];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __66___CDUserContextService_fetchProxySourceDeviceUUIDFromSubscriber___block_invoke_cold_1();
    }

LABEL_10:

    goto LABEL_11;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __66___CDUserContextService_fetchProxySourceDeviceUUIDFromSubscriber___block_invoke_cold_2();
  }

  v9 = [(_CDXPCCodecs *)_CDXPCContextCodecs parseProxySourceDeviceUUIDEvent:v5 error:0];
  if (v9)
  {
    v8 = v9;
    v10 = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v8 UUIDString];
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&dword_1A9611000, v10, OS_LOG_TYPE_INFO, "CDUserContext: received proxy source device uuid: %@", &v13, 0xCu);
    }

    [*(a1 + 32) setProxySourceDeviceUUID:v8 forUserID:{objc_msgSend(*(a1 + 40), "uid")}];
    goto LABEL_10;
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
}

void __77___CDUserContextService_requestActivateDevicesFromAllSubscribersWithHandler___block_invoke(void *a1)
{
  os_unfair_lock_lock((*(a1[5] + 8) + 32));
  if (*(*(a1[6] + 8) + 40))
  {
    v2 = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __77___CDUserContextService_requestActivateDevicesFromAllSubscribersWithHandler___block_invoke_cold_1(a1, (a1 + 6), v2);
    }

    v3 = a1[4];
    if (v3)
    {
      (*(v3 + 16))();
    }

    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
  }

  os_unfair_lock_unlock((*(a1[5] + 8) + 32));
  v6 = *(a1[7] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void __77___CDUserContextService_requestActivateDevicesFromAllSubscribersWithHandler___block_invoke_38(void *a1)
{
  os_unfair_lock_lock((*(a1[6] + 8) + 32));
  [*(*(a1[7] + 8) + 40) addObject:a1[4]];
  if (++*(*(a1[8] + 8) + 24) == a1[10])
  {
    v2 = a1[5];
    if (v2)
    {
      (*(v2 + 16))();
    }

    v3 = *(a1[7] + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;

    v5 = *(a1[9] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }

  v7 = (*(a1[6] + 8) + 32);

  os_unfair_lock_unlock(v7);
}

void __74___CDUserContextService_requestActivateDevicesFromSubscriber_withHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E6997908] contextChannel];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __74___CDUserContextService_requestActivateDevicesFromSubscriber_withHandler___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __74___CDUserContextService_requestActivateDevicesFromSubscriber_withHandler___block_invoke_cold_2();
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))();
  }
}

void __62___CDUserContextService_informClientOfFiredRegistration_info___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1A9611000, v0, v1, "CDUserContext: failed to send event: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __62___CDUserContextService_informClientOfFiredRegistration_info___block_invoke_cold_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_1A9611000, v2, v3, "CDUserContext: sent event for registration %@.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __66___CDUserContextService_fetchProxySourceDeviceUUIDFromSubscriber___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1A9611000, v0, v1, "CDUserContext: failed to send event to fetch proxy source device uuid: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __77___CDUserContextService_requestActivateDevicesFromAllSubscribersWithHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{*(a1 + 64) - objc_msgSend(*(*(*a2 + 8) + 40), "count")}];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1A9611000, a3, OS_LOG_TYPE_ERROR, "CDUserContext: Failed to get %@ proxy source device UUIDs", v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

void __74___CDUserContextService_requestActivateDevicesFromSubscriber_withHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1A9611000, v0, v1, "CDUserContext: failed to send event to request activate devices: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end
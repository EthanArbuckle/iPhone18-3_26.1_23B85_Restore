@interface DKSync3Coordinator
@end

@implementation DKSync3Coordinator

void __141___DKSync3Coordinator__DKSyncRemoteContextStorageDelegate__remoteContextStorage_subscribeToChangesWithPeer_registrationIdentifier_predicate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277CFE290];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __141___DKSync3Coordinator__DKSyncRemoteContextStorageDelegate__remoteContextStorage_subscribeToChangesWithPeer_registrationIdentifier_predicate___block_invoke_2;
  v14[3] = &unk_278E35030;
  objc_copyWeak(&v18, (a1 + 64));
  v13 = *(a1 + 32);
  v8 = *(&v13 + 1);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  v15 = v13;
  v16 = v11;
  v12 = v5;
  v17 = v12;
  [v7 performAsyncBlock:v14];

  objc_destroyWeak(&v18);
}

void __141___DKSync3Coordinator__DKSyncRemoteContextStorageDelegate__remoteContextStorage_subscribeToChangesWithPeer_registrationIdentifier_predicate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = [MEMORY[0x277CFE0C8] syncChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __141___DKSync3Coordinator__DKSyncRemoteContextStorageDelegate__remoteContextStorage_subscribeToChangesWithPeer_registrationIdentifier_predicate___block_invoke_2_cold_1();
  }

  [WeakRetained sendContextValuesToPeer:*(a1 + 48) registrationIdentifier:*(a1 + 64) keyPaths:*(a1 + 56)];
}

void __128___DKSync3Coordinator__CDRemoteUserContextServer__subscribeToContextValueChangeNotificationsWithRegistration_deviceIDs_handler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v7 = 0;
  [v2 subscribeToContextValueChangeNotificationsWithRegistration:v3 deviceIDs:v4 error:&v7];
  v5 = v7;
  v6 = a1[7];
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }
}

void __132___DKSync3Coordinator__CDRemoteUserContextServer__unsubscribeFromContextValueChangeNotificationsWithRegistration_deviceIDs_handler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v7 = 0;
  [v2 unsubscribeFromContextValueChangeNotificationsWithRegistration:v3 deviceIDs:v4 error:&v7];
  v5 = v7;
  v6 = a1[7];
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }
}

void __116___DKSync3Coordinator__CDRemoteUserContextServer__subscribeToDeviceStatusChangeNotificationsForDeviceTypes_handler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  v6 = 0;
  [v2 subscribeToDeviceStatusChangeNotificationsForDeviceTypes:v3 error:&v6];
  v4 = v6;
  v5 = a1[5];
  if (v5)
  {
    (*(v5 + 16))(v5, v4);
  }
}

void __126___DKSync3Coordinator__CDRemoteUserContextServer__subscribeToContextValueChangeNotificationsWithRegistration_deviceIDs_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CFE0C8] syncChannel];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __126___DKSync3Coordinator__CDRemoteUserContextServer__subscribeToContextValueChangeNotificationsWithRegistration_deviceIDs_error___block_invoke_cold_1(a1, v3);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __126___DKSync3Coordinator__CDRemoteUserContextServer__subscribeToContextValueChangeNotificationsWithRegistration_deviceIDs_error___block_invoke_cold_2();
    }

    [*(a1 + 56) addObject:*(a1 + 40)];
  }
}

void __130___DKSync3Coordinator__CDRemoteUserContextServer__unsubscribeFromContextValueChangeNotificationsWithRegistration_deviceIDs_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CFE0C8] syncChannel];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __130___DKSync3Coordinator__CDRemoteUserContextServer__unsubscribeFromContextValueChangeNotificationsWithRegistration_deviceIDs_error___block_invoke_cold_1(a1, v3);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __130___DKSync3Coordinator__CDRemoteUserContextServer__unsubscribeFromContextValueChangeNotificationsWithRegistration_deviceIDs_error___block_invoke_cold_2();
  }
}

void __91___DKSync3Coordinator__CDRemoteUserContextServer__fetchPropertiesOfRemoteKeyPaths_handler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __91___DKSync3Coordinator__CDRemoteUserContextServer__fetchPropertiesOfRemoteKeyPaths_handler___block_invoke_2;
  v3[3] = &unk_278E35140;
  v4 = *(a1 + 48);
  [v1 _fetchPropertiesOfRemoteKeyPaths:v2 handler:v3];
}

uint64_t __91___DKSync3Coordinator__CDRemoteUserContextServer__fetchPropertiesOfRemoteKeyPaths_handler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __85___DKSync3Coordinator__CDRemoteUserContextServer__requestActivateDevicesWithHandler___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __85___DKSync3Coordinator__CDRemoteUserContextServer__requestActivateDevicesWithHandler___block_invoke_2;
  v2[3] = &unk_278E35140;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _requestActivateDevicesWithHandler:v2];
}

uint64_t __85___DKSync3Coordinator__CDRemoteUserContextServer__requestActivateDevicesWithHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __107___DKSync3Coordinator__CDRemoteUserContextServer__sendContextValuesToPeer_registrationIdentifier_keyPaths___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CFE0C8] syncChannel];
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __107___DKSync3Coordinator__CDRemoteUserContextServer__sendContextValuesToPeer_registrationIdentifier_keyPaths___block_invoke_cold_1(a1, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __107___DKSync3Coordinator__CDRemoteUserContextServer__sendContextValuesToPeer_registrationIdentifier_keyPaths___block_invoke_cold_2(a1);
  }
}

void __141___DKSync3Coordinator__DKSyncRemoteContextStorageDelegate__remoteContextStorage_subscribeToChangesWithPeer_registrationIdentifier_predicate___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_17();
  v2 = v1;
  v18 = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 32);
  v4 = [objc_opt_class() description];
  v5 = *(v2 + 40);
  v6 = &stru_28584E620;
  [*(v2 + 48) me];
  v7 = [*(v2 + 48) identifier];
  v8 = [*(v2 + 48) model];
  if (v8)
  {
    v9 = MEMORY[0x277CCACA8];
    [*(v2 + 48) model];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_13();
    v6 = [v9 stringWithFormat:@" (%@)"];
  }

  v10 = *(v2 + 56);
  OUTLINED_FUNCTION_5();
  v11 = _CDPrettyPrintCollection();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v12, v13, v14, v15, v16, 0x3Eu);
  if (v8)
  {
  }

  v17 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_16();
}

void __126___DKSync3Coordinator__CDRemoteUserContextServer__subscribeToContextValueChangeNotificationsWithRegistration_deviceIDs_error___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = [objc_opt_class() description];
  v7 = &stru_28584E620;
  [*(a1 + 40) me];
  v8 = [*(a1 + 40) identifier];
  v9 = [*(a1 + 40) model];
  if (v9)
  {
    v10 = MEMORY[0x277CCACA8];
    [*(a1 + 40) model];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_12();
    v7 = [v10 stringWithFormat:@" (%@)"];
  }

  v11 = [*(a1 + 48) identifier];
  v12 = [a2 domain];
  [a2 code];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_18(&dword_245377000, v13, v14, "%{public}@: Failed to subscribe %{public}@peer %{public}@%{public}@ to context value change notifications with registration %{public}@: %{public}@:%lld (%@)", v15, v16, v17, v18, v20, v21, v22);

  if (v9)
  {
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __126___DKSync3Coordinator__CDRemoteUserContextServer__subscribeToContextValueChangeNotificationsWithRegistration_deviceIDs_error___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_19();
  v2 = v1;
  v3 = *MEMORY[0x277D85DE8];
  v4 = [OUTLINED_FUNCTION_21(v1) description];
  v5 = &stru_28584E620;
  [*(v2 + 40) me];
  v6 = [*(v2 + 40) identifier];
  v7 = [*(v2 + 40) model];
  if (v7)
  {
    v8 = MEMORY[0x277CCACA8];
    [*(v2 + 40) model];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_12();
    v5 = [v8 stringWithFormat:@" (%@)"];
  }

  v9 = [*(v2 + 48) identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v10, v11, v12, v13, v14, 0x34u);

  if (v7)
  {
  }

  v15 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_20();
}

void __130___DKSync3Coordinator__CDRemoteUserContextServer__unsubscribeFromContextValueChangeNotificationsWithRegistration_deviceIDs_error___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = [objc_opt_class() description];
  v7 = &stru_28584E620;
  [*(a1 + 40) me];
  v8 = [*(a1 + 40) identifier];
  v9 = [*(a1 + 40) model];
  if (v9)
  {
    v10 = MEMORY[0x277CCACA8];
    [*(a1 + 40) model];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_12();
    v7 = [v10 stringWithFormat:@" (%@)"];
  }

  v11 = [*(a1 + 48) identifier];
  v12 = [a2 domain];
  [a2 code];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_18(&dword_245377000, v13, v14, "%{public}@: Failed to unsubscribe %{public}@peer %{public}@%{public}@ from context value change notifications with registration %{public}@: %{public}@:%lld (%@)", v15, v16, v17, v18, v20, v21, v22);

  if (v9)
  {
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __130___DKSync3Coordinator__CDRemoteUserContextServer__unsubscribeFromContextValueChangeNotificationsWithRegistration_deviceIDs_error___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_19();
  v2 = v1;
  v3 = *MEMORY[0x277D85DE8];
  v4 = [OUTLINED_FUNCTION_21(v1) description];
  v5 = &stru_28584E620;
  [*(v2 + 40) me];
  v6 = [*(v2 + 40) identifier];
  v7 = [*(v2 + 40) model];
  if (v7)
  {
    v8 = MEMORY[0x277CCACA8];
    [*(v2 + 40) model];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_12();
    v5 = [v8 stringWithFormat:@" (%@)"];
  }

  v9 = [*(v2 + 48) identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v10, v11, v12, v13, v14, 0x34u);

  if (v7)
  {
  }

  v15 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_20();
}

void __107___DKSync3Coordinator__CDRemoteUserContextServer__sendContextValuesToPeer_registrationIdentifier_keyPaths___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v6 = [OUTLINED_FUNCTION_21(a1) description];
  v7 = &stru_28584E620;
  if ([*(a1 + 40) me])
  {
    v8 = @"pseudo ";
  }

  else
  {
    v8 = &stru_28584E620;
  }

  v9 = [*(a1 + 40) identifier];
  v10 = [*(a1 + 40) model];
  if (v10)
  {
    v11 = MEMORY[0x277CCACA8];
    [*(a1 + 40) model];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_13();
    v7 = [v11 stringWithFormat:@" (%@)"];
  }

  v12 = [*(a1 + 48) valueForKey:@"key"];
  OUTLINED_FUNCTION_5();
  v13 = _CDPrettyPrintCollection();
  OUTLINED_FUNCTION_1();
  v16 = v8;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(&dword_245377000, a2, OS_LOG_TYPE_ERROR, "%{public}@: Failed to send context values to %{public}@peer %{public}@%{public}@ for key paths: %{public}@", buf, 0x34u);

  if (v10)
  {
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __107___DKSync3Coordinator__CDRemoteUserContextServer__sendContextValuesToPeer_registrationIdentifier_keyPaths___block_invoke_cold_2(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v4 = [OUTLINED_FUNCTION_21(a1) description];
  v5 = &stru_28584E620;
  [*(a1 + 40) me];
  v6 = [*(a1 + 40) identifier];
  v7 = [*(a1 + 40) model];
  if (v7)
  {
    v8 = MEMORY[0x277CCACA8];
    [*(a1 + 40) model];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_13();
    v5 = [v8 stringWithFormat:@" (%@)"];
  }

  v9 = [*(a1 + 48) valueForKey:@"key"];
  OUTLINED_FUNCTION_5();
  v10 = _CDPrettyPrintCollection();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v11, v12, v13, v14, v15, 0x34u);

  if (v7)
  {
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end
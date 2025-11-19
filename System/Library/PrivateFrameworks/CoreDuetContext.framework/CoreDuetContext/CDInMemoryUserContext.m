@interface CDInMemoryUserContext
@end

@implementation CDInMemoryUserContext

void __72___CDInMemoryUserContext_valuesForKeyPaths_inContextsMatchingPredicate___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 16) allValues];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v28 = 0u;
  v2 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v26;
    v18 = *v26;
    do
    {
      v5 = 0;
      v19 = v3;
      do
      {
        if (*v26 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v25 + 1) + 8 * v5);
        if ([v6 evaluatePredicate:*(a1 + 40)])
        {
          v7 = [MEMORY[0x1E695DF90] dictionary];
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v8 = *(a1 + 48);
          v9 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v22;
            do
            {
              for (i = 0; i != v10; ++i)
              {
                if (*v22 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = *(*(&v21 + 1) + 8 * i);
                v14 = [v6 objectForKeyedSubscript:v13];
                if (v14)
                {
                  [v7 setObject:v14 forKeyedSubscript:v13];
                }
              }

              v10 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v10);
          }

          v15 = *(a1 + 56);
          v16 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v7];
          [v15 addObject:v16];

          v4 = v18;
          v3 = v19;
        }

        ++v5;
      }

      while (v5 != v3);
      v3 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v3);
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t __55___CDInMemoryUserContext_contextForDeviceWithDeviceID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) unsafe_contextForDeviceWithDeviceID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void __36___CDInMemoryUserContext_allDevices__block_invoke(uint64_t a1)
{
  v3 = +[_CDDevice localDevice];
  [*(a1 + 32) addObject:?];
  v2 = [*(a1 + 40) unsafe_remoteDevices];
  if ([v2 count])
  {
    [*(a1 + 32) addObjectsFromArray:v2];
  }
}

void __38___CDInMemoryUserContext_allDeviceIDs__block_invoke(uint64_t a1)
{
  [*(a1 + 32) addObject:*(*(a1 + 40) + 40)];
  v2 = [*(a1 + 40) unsafe_remoteDeviceIDs];
  if ([v2 count])
  {
    [*(a1 + 32) unionSet:v2];
  }
}

uint64_t __41___CDInMemoryUserContext_remoteDeviceIDs__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) unsafe_remoteDeviceIDs];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void __81___CDInMemoryUserContext_activateDevices_remoteUserContextProxySourceDeviceUUID___block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6997908] mdcsChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __81___CDInMemoryUserContext_activateDevices_remoteUserContextProxySourceDeviceUUID___block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 40) unsafe_remoteDevicesByDeviceIDForRemoteUserContextProxySourceDeviceUUID:*(a1 + 48)];
  v4 = MEMORY[0x1E695DFA8];
  v5 = [v3 allKeys];
  v6 = [v4 setWithArray:v5];

  v7 = MEMORY[0x1E695DFA8];
  v8 = [v3 allValues];
  v9 = [v7 setWithArray:v8];

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = *(a1 + 32);
  v52 = [obj countByEnumeratingWithState:&v61 objects:v68 count:16];
  if (v52)
  {
    v11 = *v62;
    *&v10 = 138412290;
    v45 = v10;
    v49 = a1;
    v50 = v3;
    v47 = v9;
    v48 = v6;
    v46 = *v62;
    do
    {
      v12 = 0;
      do
      {
        if (*v62 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v61 + 1) + 8 * v12);
        v14 = [v13 deviceID];
        [v6 addObject:v14];
        [v9 addObject:v13];
        v15 = [v3 objectForKeyedSubscript:v14];
        v56 = v14;
        v16 = [*(a1 + 40) unsafe_contextForDeviceWithDeviceID:v14];
        v53 = v15;
        v54 = v12;
        if (!v15)
        {
          log = [MEMORY[0x1E6997908] mdcsChannel];
          if (!os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_13;
          }

          *buf = 138543362;
          *v66 = v56;
          v20 = log;
          v21 = "Activating new device %{public}@ in memory";
          goto LABEL_41;
        }

        v17 = [v15 isCompanion];
        v18 = [v13 isCompanion];
        log = [MEMORY[0x1E6997908] mdcsChannel];
        v19 = os_log_type_enabled(log, OS_LOG_TYPE_DEBUG);
        if (v17 != v18)
        {
          if (!v19)
          {
LABEL_13:

            [v16 setDevice:v13];
            v22 = [*(a1 + 40) unsafe_multiDeviceRegistrations];
            v23 = [v22 mutableCopy];

            [v23 addObjectsFromArray:*(*(a1 + 40) + 24)];
            log = v23;
            v24 = [v23 count];
            v25 = [MEMORY[0x1E6997908] mdcsChannel];
            v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG);
            if (v24)
            {
              if (v26)
              {
                v36 = [log count];
                *buf = 67109378;
                *v66 = v36;
                *&v66[4] = 2112;
                *&v66[6] = v56;
                _os_log_debug_impl(&dword_1A9611000, v25, OS_LOG_TYPE_DEBUG, "Possibly registering %d existing multi-device registrations with device %@ in memory", buf, 0x12u);
              }

              v59 = 0u;
              v60 = 0u;
              v57 = 0u;
              v58 = 0u;
              v25 = log;
              v27 = [v25 countByEnumeratingWithState:&v57 objects:v67 count:16];
              if (v27)
              {
                v28 = v27;
                v29 = *v58;
                do
                {
                  for (i = 0; i != v28; ++i)
                  {
                    if (*v58 != v29)
                    {
                      objc_enumerationMutation(v25);
                    }

                    v31 = *(*(&v57 + 1) + 8 * i);
                    v32 = [v13 matchesDeviceTypes:{objc_msgSend(v31, "deviceTypes")}];
                    v33 = [MEMORY[0x1E6997908] mdcsChannel];
                    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG);
                    if (v32)
                    {
                      if (v34)
                      {
                        *buf = 138543618;
                        *v66 = v56;
                        *&v66[8] = 2112;
                        *&v66[10] = v31;
                        _os_log_debug_impl(&dword_1A9611000, v33, OS_LOG_TYPE_DEBUG, "Registering existing multi-device registration with device %{public}@ in memory: %@", buf, 0x16u);
                      }

                      [v16 registerCallback:v31];
                    }

                    else
                    {
                      if (v34)
                      {
                        *buf = 138543618;
                        *v66 = v56;
                        *&v66[8] = 2112;
                        *&v66[10] = v31;
                        _os_log_debug_impl(&dword_1A9611000, v33, OS_LOG_TYPE_DEBUG, "Skipping existing multi-device registration because device type does not match for device %{public}@ in memory: %@", buf, 0x16u);
                      }
                    }
                  }

                  v28 = [v25 countByEnumeratingWithState:&v57 objects:v67 count:16];
                }

                while (v28);
                a1 = v49;
                v3 = v50;
                v9 = v47;
                v6 = v48;
                v11 = v46;
              }

              v35 = v54;
            }

            else
            {
              v35 = v54;
              if (v26)
              {
                *buf = v45;
                *v66 = v56;
                _os_log_debug_impl(&dword_1A9611000, v25, OS_LOG_TYPE_DEBUG, "No existing multi-device registrations to register with device %@ in memory", buf, 0xCu);
              }
            }

            goto LABEL_38;
          }

          *buf = 138543362;
          *v66 = v56;
          v20 = log;
          v21 = "Activating existing device %{public}@ in memory";
LABEL_41:
          _os_log_debug_impl(&dword_1A9611000, v20, OS_LOG_TYPE_DEBUG, v21, buf, 0xCu);
          goto LABEL_13;
        }

        if (v19)
        {
          *buf = 138543362;
          *v66 = v56;
          _os_log_debug_impl(&dword_1A9611000, log, OS_LOG_TYPE_DEBUG, "No need to activate already-active device %{public}@ in memory", buf, 0xCu);
        }

        v35 = v54;
LABEL_38:

        v12 = v35 + 1;
      }

      while (v12 != v52);
      v37 = [obj countByEnumeratingWithState:&v61 objects:v68 count:16];
      v52 = v37;
    }

    while (v37);
  }

  v38 = [v3 count];
  if (v38 != [v6 count])
  {
    v39 = [*(*(a1 + 40) + 16) objectForKeyedSubscript:*(*(a1 + 40) + 40)];
    v40 = [_CDContextQueries keyPathForMDCSDeviceIDsWithProxySourceDeviceUUID:*(a1 + 48)];
    v41 = [v6 copy];
    [v39 setObject:v41 forKeyedSubscript:v40];

    v42 = [_CDContextQueries keyPathForMDCSDevicesWithProxySourceDeviceUUID:*(a1 + 48)];
    v43 = [v9 copy];
    [v39 setObject:v43 forKeyedSubscript:v42];
  }

  v44 = *MEMORY[0x1E69E9840];
}

void __43___CDInMemoryUserContext_registerCallback___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6997908] mdcsChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __43___CDInMemoryUserContext_registerCallback___block_invoke_cold_1(a1);
  }

  if (!*(a1 + 40))
  {
    v3 = [MEMORY[0x1E6997908] mdcsChannel];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __43___CDInMemoryUserContext_registerCallback___block_invoke_cold_2(a1, v3);
    }

    [*(*(a1 + 56) + 24) addObject:*(a1 + 48)];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v25;
    *&v6 = 138543618;
    v23 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v24 + 1) + 8 * v9);
        v11 = *(a1 + 40);
        if (!v11 || [v11 containsObject:*(*(&v24 + 1) + 8 * v9)])
        {
          v12 = [*(a1 + 56) deviceWithDeviceID:v10 fromDevices:{*(a1 + 64), v23, v24}];
          if ([v12 matchesDeviceTypes:{objc_msgSend(*(a1 + 48), "deviceTypes")}])
          {
            v13 = [MEMORY[0x1E6997908] mdcsChannel];
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              v19 = *(a1 + 48);
              *buf = v23;
              v29 = v10;
              v30 = 2112;
              v31 = v19;
              _os_log_debug_impl(&dword_1A9611000, v13, OS_LOG_TYPE_DEBUG, "Registering multi-device registration callback with device %{public}@: %@", buf, 0x16u);
            }

            v14 = [*(a1 + 56) unsafe_contextForDeviceWithDeviceID:v10];
            [v14 registerCallback:*(a1 + 48)];
            goto LABEL_22;
          }

          v14 = [MEMORY[0x1E6997908] mdcsChannel];
          v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
          if (v12)
          {
            if (v15)
            {
              v16 = *(a1 + 48);
              *buf = v23;
              v29 = v10;
              v30 = 2112;
              v31 = v16;
              v17 = v14;
              v18 = "Not registering non-matching multi-device registration callback with device %{public}@: %@";
              goto LABEL_26;
            }
          }

          else if (v15)
          {
            v20 = *(a1 + 48);
            *buf = v23;
            v29 = v10;
            v30 = 2112;
            v31 = v20;
            v17 = v14;
            v18 = "Not registering multi-device registration callback with unknown device %{public}@: %@";
LABEL_26:
            _os_log_debug_impl(&dword_1A9611000, v17, OS_LOG_TYPE_DEBUG, v18, buf, 0x16u);
          }

LABEL_22:
        }

        ++v9;
      }

      while (v7 != v9);
      v21 = [v4 countByEnumeratingWithState:&v24 objects:v32 count:16];
      v7 = v21;
    }

    while (v21);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __45___CDInMemoryUserContext_deregisterCallback___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6997908] mdcsChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __45___CDInMemoryUserContext_deregisterCallback___block_invoke_cold_1(a1);
  }

  [*(*(a1 + 56) + 24) removeObject:*(a1 + 48)];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v23;
    *&v5 = 138543618;
    v21 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v22 + 1) + 8 * v8);
        v10 = [*(a1 + 56) deviceWithDeviceID:v9 fromDevices:{*(a1 + 64), v21, v22}];
        if ([v10 matchesDeviceTypes:{objc_msgSend(*(a1 + 48), "deviceTypes")}])
        {
          v11 = [MEMORY[0x1E6997908] mdcsChannel];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            v17 = *(a1 + 48);
            *buf = v21;
            v27 = v9;
            v28 = 2112;
            v29 = v17;
            _os_log_debug_impl(&dword_1A9611000, v11, OS_LOG_TYPE_DEBUG, "Deregistering multi-device registration callback with device %{public}@: %@", buf, 0x16u);
          }

          v12 = [*(a1 + 56) unsafe_contextForDeviceWithDeviceID:v9];
          [v12 deregisterCallback:*(a1 + 48)];
        }

        else
        {
          v12 = [MEMORY[0x1E6997908] mdcsChannel];
          v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
          if (v10)
          {
            if (!v13)
            {
              goto LABEL_16;
            }

            v14 = *(a1 + 48);
            *buf = v21;
            v27 = v9;
            v28 = 2112;
            v29 = v14;
            v15 = v12;
            v16 = "Not de-registering non-matching multi-device registration callback with device %{public}@: %@";
          }

          else
          {
            if (!v13)
            {
              goto LABEL_16;
            }

            v18 = *(a1 + 48);
            *buf = v21;
            v27 = v9;
            v28 = 2112;
            v29 = v18;
            v15 = v12;
            v16 = "Not de-registering multi-device registration callback with unknown device %{public}@: %@";
          }

          _os_log_debug_impl(&dword_1A9611000, v15, OS_LOG_TYPE_DEBUG, v16, buf, 0x16u);
        }

LABEL_16:

        ++v8;
      }

      while (v6 != v8);
      v19 = [v3 countByEnumeratingWithState:&v22 objects:v30 count:16];
      v6 = v19;
    }

    while (v19);
  }

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t __53___CDInMemoryUserContext_hasMultiDeviceRegistrations__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) unsafe_hasMultiDeviceRegistrations];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __37___CDInMemoryUserContext_description__block_invoke(uint64_t a1)
{
  [*(a1 + 32) appendFormat:@"User Context: %@", *(*(a1 + 40) + 32)];
  v2 = *(*(a1 + 40) + 16);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __37___CDInMemoryUserContext_description__block_invoke_2;
  v3[3] = &unk_1E78866E0;
  v4 = *(a1 + 32);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void __81___CDInMemoryUserContext_activateDevices_remoteUserContextProxySourceDeviceUUID___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) count];
  v2 = *(a1 + 32);
  v9 = _CDPrettyPrintCollection();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);

  v8 = *MEMORY[0x1E69E9840];
}

void __43___CDInMemoryUserContext_registerCallback___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) count];
  [*(a1 + 40) count];
  v2 = *(a1 + 48);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x18u);
  v8 = *MEMORY[0x1E69E9840];
}

void __43___CDInMemoryUserContext_registerCallback___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_1A9611000, a2, OS_LOG_TYPE_DEBUG, "Pending all device multi-device registration callback: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __45___CDInMemoryUserContext_deregisterCallback___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) count];
  [*(a1 + 40) count];
  v2 = *(a1 + 48);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x18u);
  v8 = *MEMORY[0x1E69E9840];
}

@end
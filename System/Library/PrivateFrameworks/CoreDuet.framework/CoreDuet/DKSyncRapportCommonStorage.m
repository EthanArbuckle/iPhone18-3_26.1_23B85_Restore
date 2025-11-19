@interface DKSyncRapportCommonStorage
@end

@implementation DKSyncRapportCommonStorage

uint64_t __45___DKSyncRapportCommonStorage_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_sharedInstance_3;
  sharedInstance_sharedInstance_3 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __58___DKSyncRapportCommonStorage__additionalFlagsForInternal__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_content())
  {
    v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.CoreDuet"];
    v3 = [v2 stringForKey:@"ForcedRapportConnectionType"];
    v4 = v3;
    if (!v3)
    {
LABEL_17:

      goto LABEL_18;
    }

    if ([v3 isEqualToString:@"Cloud"])
    {
      v5 = 0x10000000;
    }

    else if ([v4 isEqualToString:@"BLE"])
    {
      v5 = 0x8000;
    }

    else if ([v4 isEqualToString:@"AWDL"])
    {
      v5 = 0x20000;
    }

    else if ([v4 isEqualToString:@"USB"])
    {
      v5 = 0x40000;
    }

    else
    {
      if (([v4 isEqualToString:@"L2CAP"] & 1) == 0)
      {
        v10 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          __58___DKSyncRapportCommonStorage__additionalFlagsForInternal__block_invoke_cold_1(a1);
        }

        if (!_MergedGlobals_6)
        {
          goto LABEL_17;
        }

        goto LABEL_14;
      }

      v5 = 256;
    }

    _MergedGlobals_6 = v5;
LABEL_14:
    v6 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = [objc_opt_class() description];
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_191750000, v6, OS_LOG_TYPE_INFO, "%{public}@: Forcing rapport connections through %@", &v11, 0x16u);
    }

    goto LABEL_17;
  }

LABEL_18:
  v9 = *MEMORY[0x1E69E9840];
}

void __65___DKSyncRapportCommonStorage_handshakeWithDuetSyncPeer_orError___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65___DKSyncRapportCommonStorage_handshakeWithDuetSyncPeer_orError___block_invoke_2;
  v9[3] = &unk_1E736ACB0;
  v4 = *(a1 + 48);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v10 = v8;
  v11 = v7;
  [v3 fetchSourceDeviceIDFromPeer:v2 highPriority:1 completion:v9];
}

void __65___DKSyncRapportCommonStorage_handshakeWithDuetSyncPeer_orError___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v57 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E695DF00] date];
  +[_DKSyncPowerlog recordWithSyncType:transportType:startDate:endDate:isEmpty:](_DKSyncPowerlog, "recordWithSyncType:transportType:startDate:endDate:isEmpty:", 0, [*(a1 + 32) transportType], *(a1 + 40), v10, v7 == 0);
  if (v7)
  {
    v11 = [v7 UUIDString];
    if (v8)
    {
      v12 = [*(a1 + 48) version];
      v13 = [v8 isEqualToString:v12];

      if ((v13 & 1) == 0)
      {
        v14 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = *(a1 + 32);
          v41 = [objc_opt_class() description];
          v39 = [*(a1 + 48) version];
          v16 = [*(a1 + 48) me];
          v17 = &stru_1F05B9908;
          v18 = @"pseudo ";
          if (!v16)
          {
            v18 = &stru_1F05B9908;
          }

          v36 = v18;
          v38 = [*(a1 + 48) identifier];
          v19 = [*(a1 + 48) model];
          if (v19)
          {
            v20 = MEMORY[0x1E696AEC0];
            v35 = [*(a1 + 48) model];
            v17 = [v20 stringWithFormat:@" (%@)", v35];
          }

          *buf = 138544642;
          v44 = v41;
          v45 = 2114;
          v46 = v39;
          v47 = 2114;
          v48 = v8;
          v49 = 2114;
          v50 = v36;
          v51 = 2114;
          v52 = v38;
          v53 = 2114;
          v54 = v17;
          _os_log_impl(&dword_191750000, v14, OS_LOG_TYPE_INFO, "%{public}@: Will change version from %{public}@ to %{public}@ for %{public}@peer %{public}@%{public}@", buf, 0x3Eu);
          if (v19)
          {
          }
        }
      }
    }

    [*(a1 + 56) setSourceDeviceID:v11 version:v8 peer:*(a1 + 48)];
    [*(a1 + 56) addActiveTransports:objc_msgSend(*(a1 + 32) toPeer:{"transportType"), *(a1 + 48)}];
    v24 = *(a1 + 56);
    v25 = [MEMORY[0x1E695DF00] date];
    [v24 setLastSeenDate:v25 onPeer:*(a1 + 48)];

    [*(*(a1 + 32) + 80) addObject:v11];
  }

  else
  {
    v21 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v27 = *(a1 + 32);
      v42 = [objc_opt_class() description];
      v28 = [*(a1 + 48) me];
      v29 = &stru_1F05B9908;
      v30 = @"pseudo ";
      if (!v28)
      {
        v30 = &stru_1F05B9908;
      }

      v40 = v30;
      v31 = [*(a1 + 48) identifier];
      v32 = [*(a1 + 48) model];
      if (v32)
      {
        v33 = MEMORY[0x1E696AEC0];
        v37 = [*(a1 + 48) model];
        v29 = [v33 stringWithFormat:@" (%@)", v37];
      }

      v34 = [v9 domain];
      *buf = 138544898;
      v44 = v42;
      v45 = 2114;
      v46 = v40;
      v47 = 2114;
      v48 = v31;
      v49 = 2114;
      v50 = v29;
      v51 = 2114;
      v52 = v34;
      v53 = 2048;
      v54 = [v9 code];
      v55 = 2112;
      v56 = v9;
      _os_log_error_impl(&dword_191750000, v21, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch source device id from %{public}@peer %{public}@%{public}@: %{public}@:%lld (%@)", buf, 0x48u);

      if (v32)
      {
      }
    }

    if ([v9 code] == -6714)
    {
      v22 = [v9 domain];
      v23 = [v22 isEqualToString:*MEMORY[0x1E69C6BC8]];

      if (v23)
      {
        [*(a1 + 56) removeActiveTransports:objc_msgSend(*(a1 + 32) fromPeer:{"transportType"), *(a1 + 48)}];
      }
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __65___DKSyncRapportCommonStorage_handshakeWithDuetSyncPeer_orError___block_invoke_156(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = [objc_opt_class() description];
    v5 = &stru_1F05B9908;
    if ([*(a1 + 40) me])
    {
      v6 = @"pseudo ";
    }

    else
    {
      v6 = &stru_1F05B9908;
    }

    v7 = [*(a1 + 40) identifier];
    v8 = [*(a1 + 40) model];
    if (v8)
    {
      v9 = MEMORY[0x1E696AEC0];
      a1 = [*(a1 + 40) model];
      v5 = [v9 stringWithFormat:@" (%@)", a1];
    }

    *buf = 138544130;
    v12 = v4;
    v13 = 2114;
    v14 = v6;
    v15 = 2114;
    v16 = v7;
    v17 = 2114;
    v18 = v5;
    _os_log_impl(&dword_191750000, v2, OS_LOG_TYPE_INFO, "%{public}@: Throttled fetchSourceDeviceIDFromPeer for %{public}@peer %{public}@%{public}@", buf, 0x2Au);
    if (v8)
    {
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __55___DKSyncRapportCommonStorage_handleActivateWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __55___DKSyncRapportCommonStorage_handleActivateWithError___block_invoke_cold_1(a1, v3);
    }

    v5 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __55___DKSyncRapportCommonStorage_handleActivateWithError___block_invoke_cold_2(a1);
    }
  }
}

uint64_t __83___DKSyncRapportCommonStorage_fetchSourceDeviceIDFromPeer_highPriority_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, a2);
  }

  return result;
}

uint64_t __95___DKSyncRapportCommonStorage_sendRequestID_request_peer_highPriority_options_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  [(_DKSyncRapportCommonStorage *)*(a1 + 32) handleActivateCompanionLinkClient:*(a1 + 48) forPeer:v7 error:?];
  if (v7)
  {
    [*(a1 + 40) invalidate];
    v3 = *(a1 + 80);
    if (v3)
    {
      (*(v3 + 16))(v3, 0, 0, v7);
    }
  }

  else
  {
    v4 = *(a1 + 56);
    if (*(a1 + 88) == 1)
    {
      if ([*(a1 + 56) count])
      {
        v5 = [*(a1 + 56) mutableCopy];
        [v5 addEntriesFromDictionary:*(*(a1 + 32) + 16)];
      }

      else
      {
        v5 = *(*(a1 + 32) + 16);
      }

      v4 = v5;
    }

    [(_DKSyncRapportCommonStorage *)*(a1 + 32) sendRequestID:*(a1 + 72) request:*(a1 + 48) peer:*(a1 + 40) client:v4 options:*(a1 + 80) responseHandler:?];
  }

  return MEMORY[0x1EEE66C30]();
}

void __89___DKSyncRapportCommonStorage_sendRequestID_request_peer_client_options_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v7 = a3;
  v8 = a4;
  v9 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v9);

  if (v8 && [v8 code] == -71156)
  {
    v10 = [v8 domain];
    v11 = [v10 isEqualToString:*MEMORY[0x1E69C6BC8]];
  }

  else
  {
    v11 = 0;
  }

  [(_DKEventTypeResultStatsCounter *)*(*(a1 + 32) + 24) incrementCountWithTypeValue:v11 success:?];
  v12 = *(a1 + 56);
  if (v12)
  {
    (*(v12 + 16))(v12, v13, v7, v8);
  }

  --*(*(a1 + 32) + 56);
  [*(a1 + 48) invalidate];
  usleep(0x186A0u);
}

void __49___DKSyncRapportCommonStorage_handleInvalidation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [_DKSyncRapportCommonStorage startRapport];
}

void __58___DKSyncRapportCommonStorage__additionalFlagsForInternal__block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __55___DKSyncRapportCommonStorage_handleActivateWithError___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = [objc_opt_class() description];
  v5 = [a2 domain];
  [a2 code];
  OUTLINED_FUNCTION_27_4();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x2Au);

  v11 = *MEMORY[0x1E69E9840];
}

void __55___DKSyncRapportCommonStorage_handleActivateWithError___block_invoke_cold_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

@end
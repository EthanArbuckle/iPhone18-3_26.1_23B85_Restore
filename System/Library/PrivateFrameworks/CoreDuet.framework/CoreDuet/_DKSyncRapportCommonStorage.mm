@interface _DKSyncRapportCommonStorage
+ (_DKSyncRapportCommonStorage)sharedInstance;
- (BOOL)isTransportActiveForPeer:(id)a3;
- (_DKSyncRapportCommonStorage)init;
- (id)deviceForPeer:;
- (id)myDeviceID;
- (id)transformCaughtObject:(id)a3 existingError:(id)a4;
- (id)transformResponseError:(id)a3;
- (uint64_t)_additionalFlagsForInternal;
- (void)cancelOutstandingOperations;
- (void)dealloc;
- (void)handleActivateCompanionLinkClient:(void *)a3 forPeer:(void *)a4 error:;
- (void)handleActivateWithError:(uint64_t)a1;
- (void)handleAvailabilityFailureWithPeer:(id)a3 completion:(id)a4;
- (void)handleBeaconWithRequest:(void *)a3 options:(void *)a4 responseHandler:;
- (void)handleDeviceChanged:(int)a3 changes:;
- (void)handleDeviceFound:(void *)a1;
- (void)handleDeviceLost:(void *)a1;
- (void)handleFetchSourceDeviceIDWithRequest:(void *)a3 options:(void *)a4 responseHandler:;
- (void)handleFetchSourceDeviceIDWithResponse:(void *)a3 options:(void *)a4 error:(void *)a5 peer:(void *)a6 plStartDate:(void *)a7 completion:;
- (void)handleInvalidation;
- (void)handshakeWithDuetSyncPeer:(id)a3 orError:(id)a4;
- (void)myDeviceID;
- (void)registerRequestIDsWithClient:(uint64_t)a1;
- (void)removeClient:(uint64_t)a3 forPeer:(uint64_t)a4 retiring:(uint64_t)a5;
- (void)sendRequestID:(id)a3 request:(id)a4 peer:(id)a5 highPriority:(BOOL)a6 options:(id)a7 responseHandler:(id)a8;
- (void)sendRequestID:(void *)a3 request:(void *)a4 peer:(void *)a5 client:(void *)a6 options:(void *)a7 responseHandler:;
- (void)start;
- (void)startRapport;
@end

@implementation _DKSyncRapportCommonStorage

- (uint64_t)_additionalFlagsForInternal
{
  if (result)
  {
    OUTLINED_FUNCTION_0_1();
    v3 = 3221225472;
    v4 = __58___DKSyncRapportCommonStorage__additionalFlagsForInternal__block_invoke;
    v5 = &unk_1E7367440;
    v6 = v1;
    if (qword_1EADBD670 != -1)
    {
      dispatch_once(&qword_1EADBD670, block);
    }

    return _MergedGlobals_6;
  }

  return result;
}

- (id)myDeviceID
{
  v3 = self->_deviceID;
  if (!v3)
  {
    v4 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [(_DKSyncRapportCommonStorage *)self myDeviceID];
    }

    [(RPCompanionLinkClient *)self->_client invalidate];
    client = self->_client;
    self->_client = 0;

    [(_DKSyncRapportCommonStorage *)self setIsAvailable:0];
    v6 = +[_CDObservationCenter sharedInstance];
    [v6 postNotificationName:@"_DKRapportTransportAvailablityChangedNotification" userInfo:0 sender:self];
  }

  return v3;
}

+ (_DKSyncRapportCommonStorage)sharedInstance
{
  if (sharedInstance_initialized_6 != -1)
  {
    +[_DKSyncRapportCommonStorage sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_3;

  return v3;
}

- (_DKSyncRapportCommonStorage)init
{
  v15[1] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = _DKSyncRapportCommonStorage;
  v2 = [(_DKSyncRapportCommonStorage *)&v13 init];
  if (v2)
  {
    v14 = *MEMORY[0x1E69C6BD0];
    v15[0] = MEMORY[0x1E695E118];
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    failIfAsleepOption = v2->_failIfAsleepOption;
    v2->_failIfAsleepOption = v3;

    v5 = [_DKEventTypeResultStatsCounter counterInCollection:@"rapport_message_sent_with_fail_if_asleep" withEventName:@"option" eventType:&unk_1F05EF728 eventTypePossibleValues:?];
    failIfAsleepStats = v2->_failIfAsleepStats;
    v2->_failIfAsleepStats = v5;

    v7 = objc_opt_new();
    companionLinkClients = v2->_companionLinkClients;
    v2->_companionLinkClients = v7;

    v2->_retryTimeout = 8.0;
    v9 = objc_opt_new();
    peerSourceDeviceIDsWithCompletedHandshakes = v2->_peerSourceDeviceIDsWithCompletedHandshakes;
    v2->_peerSourceDeviceIDsWithCompletedHandshakes = v9;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)dealloc
{
  [(RPCompanionLinkClient *)self->_client invalidate];
  [(_DKSyncRapportCommonStorage *)self removeAllClientsWithRetiring:?];
  v3.receiver = self;
  v3.super_class = _DKSyncRapportCommonStorage;
  [(_DKSyncRapportCommonStorage *)&v3 dealloc];
}

- (void)start
{
  v3 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v3);

  if (!self->_client && !self->_running)
  {

    [(_DKSyncRapportCommonStorage *)self startRapport];
  }
}

- (void)cancelOutstandingOperations
{
  v2 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v2);
}

- (void)handleInvalidation
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleDeviceFound:(void *)a1
{
  v62 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a1)
  {
    v6 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v6);

    v7 = [(__CFString *)v5 idsDeviceIdentifier];

    if (v7)
    {
      v8 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v21 = [objc_opt_class() description];
        v22 = [(__CFString *)v5 idsDeviceIdentifier];
        v2 = [(__CFString *)v5 identifier];
        *buf = 138543874;
        v51 = v21;
        v52 = 2114;
        v53 = v22;
        v54 = 2114;
        v55 = v2;
        _os_log_debug_impl(&dword_191750000, v8, OS_LOG_TYPE_DEBUG, "%{public}@: Found device %{public}@ with companion link identifier %{public}@", buf, 0x20u);
      }

      v9 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v23 = [objc_opt_class() description];
        v24 = [(__CFString *)v5 idsDeviceIdentifier];
        *buf = 138543874;
        v51 = v23;
        v52 = 2114;
        v53 = v24;
        v54 = 2112;
        v55 = v5;
        _os_log_debug_impl(&dword_191750000, v9, OS_LOG_TYPE_DEBUG, "%{public}@: Device %{public}@ is %@", buf, 0x20u);
      }

      v10 = +[_DKSyncPeerStatusTracker sharedInstance];
      v11 = [(__CFString *)v5 idsDeviceIdentifier];
      v12 = [v10 peerWithIDSDeviceIdentifier:v11];

      v13 = [(__CFString *)v5 name];
      [v12 setName:v13];

      v14 = [(__CFString *)v5 model];
      [v12 setModel:v14];

      [v12 setCompanion:{(-[__CFString statusFlags](v5, "statusFlags") >> 6) & 1}];
      v15 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v47 = [objc_opt_class() description];
        v44 = [(__CFString *)v5 idsDeviceIdentifier];
        v25 = [v12 me];
        v26 = &stru_1F05B9908;
        if (v25)
        {
          v26 = @"pseudo ";
        }

        v42 = v26;
        v27 = [v12 identifier];
        v28 = [v12 model];
        if (v28)
        {
          v35 = MEMORY[0x1E696AEC0];
          v3 = [v12 model];
          v2 = [v35 stringWithFormat:@" (%@)", v3];
        }

        else
        {
          v2 = &stru_1F05B9908;
        }

        *buf = 138544386;
        v51 = v47;
        v52 = 2114;
        v53 = v44;
        v54 = 2114;
        v55 = v42;
        v56 = 2114;
        v57 = v27;
        v58 = 2114;
        v59 = v2;
        _os_log_debug_impl(&dword_191750000, v15, OS_LOG_TYPE_DEBUG, "%{public}@: Device %{public}@ is %{public}@peer %{public}@%{public}@", buf, 0x34u);
        if (v28)
        {
        }
      }

      if (([(__CFString *)v5 statusFlags]& 0x100) != 0)
      {
        v18 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v49 = [objc_opt_class() description];
          if ([v12 me])
          {
            v32 = @"pseudo ";
          }

          else
          {
            v32 = &stru_1F05B9908;
          }

          v46 = [v12 identifier];
          v33 = [v12 model];
          if (v33)
          {
            v39 = MEMORY[0x1E696AEC0];
            v2 = [v12 model];
            v34 = [v39 stringWithFormat:@" (%@)", v2];
          }

          else
          {
            v34 = &stru_1F05B9908;
          }

          *buf = 138544130;
          v51 = v49;
          v52 = 2114;
          v53 = v32;
          v54 = 2114;
          v55 = v46;
          v56 = 2114;
          v57 = v34;
          _os_log_debug_impl(&dword_191750000, v18, OS_LOG_TYPE_DEBUG, "%{public}@: Activating %{public}@peer %{public}@%{public}@ recognizes sync protocol", buf, 0x2Au);
          if (v33)
          {
          }
        }

        [a1 handshakeWithDuetSyncPeer:v12 orError:0];
      }

      else
      {
        v16 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v48 = [objc_opt_class() description];
          v29 = [v12 me];
          v30 = &stru_1F05B9908;
          if (v29)
          {
            v30 = @"pseudo ";
          }

          v41 = v30;
          v45 = [v12 identifier];
          v31 = [v12 model];
          if (v31)
          {
            v36 = MEMORY[0x1E696AEC0];
            v40 = [v12 model];
            v43 = [v36 stringWithFormat:@" (%@)", v40];
          }

          else
          {
            v43 = &stru_1F05B9908;
          }

          v37 = [(__CFString *)v5 model];
          v38 = [(__CFString *)v5 name];
          *buf = 138544642;
          v51 = v48;
          v52 = 2114;
          v53 = v41;
          v54 = 2114;
          v55 = v45;
          v56 = 2114;
          v57 = v43;
          v58 = 2114;
          v59 = v37;
          v60 = 2112;
          v61 = v38;
          _os_log_debug_impl(&dword_191750000, v16, OS_LOG_TYPE_DEBUG, "%{public}@: Unsupported %{public}@peer %{public}@%{public}@ does not currently recognize sync protocol: %{public}@ (%@)", buf, 0x3Eu);

          if (v31)
          {
          }
        }

        [v10 removeActiveTransports:objc_msgSend(a1 fromPeer:{"transportType"), v12}];
      }

      v19 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [_DKSyncRapportCommonStorage handleDeviceFound:];
      }

      [v10 debugLogPeers];
    }

    else
    {
      v17 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [_DKSyncRapportCommonStorage handleDeviceFound:];
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)handleDeviceChanged:(int)a3 changes:
{
  v66 = *MEMORY[0x1E69E9840];
  v8 = a2;
  if (a1)
  {
    v9 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v9);

    v10 = [v8 idsDeviceIdentifier];

    if (v10)
    {
      v11 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v34 = [objc_opt_class() description];
        v35 = [v8 idsDeviceIdentifier];
        v3 = [v8 identifier];
        *buf = 138544130;
        *&buf[4] = v34;
        *&buf[12] = 2114;
        *&buf[14] = v35;
        *&buf[22] = 2112;
        v63 = v3;
        *v64 = 1024;
        *&v64[2] = a3;
        _os_log_debug_impl(&dword_191750000, v11, OS_LOG_TYPE_DEBUG, "%{public}@: Changed device %{public}@ with companion link identifier %@ and changes %x", buf, 0x26u);
      }

      v12 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v36 = [objc_opt_class() description];
        v37 = [v8 idsDeviceIdentifier];
        *buf = 138543874;
        *&buf[4] = v36;
        *&buf[12] = 2114;
        *&buf[14] = v37;
        *&buf[22] = 2112;
        v63 = v8;
        _os_log_debug_impl(&dword_191750000, v12, OS_LOG_TYPE_DEBUG, "%{public}@: Changed device %{public}@ is %@", buf, 0x20u);
      }

      v13 = +[_DKSyncPeerStatusTracker sharedInstance];
      v14 = [v8 idsDeviceIdentifier];
      v15 = [v13 peerWithIDSDeviceIdentifier:v14];

      v16 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v55 = [objc_opt_class() description];
        v54 = [v8 idsDeviceIdentifier];
        v38 = [v15 me];
        v39 = &stru_1F05B9908;
        if (v38)
        {
          v39 = @"pseudo ";
        }

        v52 = v39;
        v53 = [v15 identifier];
        v5 = [v15 model];
        if (v5)
        {
          v43 = MEMORY[0x1E696AEC0];
          v4 = [v15 model];
          v50 = v4;
          v3 = [v43 stringWithFormat:@" (%@)"];
        }

        else
        {
          v3 = &stru_1F05B9908;
        }

        *buf = 138544386;
        *&buf[4] = v55;
        *&buf[12] = 2114;
        *&buf[14] = v54;
        *&buf[22] = 2114;
        v63 = v52;
        *v64 = 2114;
        *&v64[2] = v53;
        *&v64[10] = 2114;
        *&v64[12] = v3;
        _os_log_debug_impl(&dword_191750000, v16, OS_LOG_TYPE_DEBUG, "%{public}@: Changed device %{public}@ is %{public}@peer %{public}@%{public}@", buf, 0x34u);
        if (v5)
        {
        }
      }

      v17 = [v13 activeTransportsForPeer:v15];
      if (([v8 statusFlags] & 0x100) != 0)
      {
        v20 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v54 = [objc_opt_class() description];
          v40 = [v15 me];
          v41 = &stru_1F05B9908;
          if (v40)
          {
            v41 = @"pseudo ";
          }

          v52 = v41;
          v53 = [v15 identifier];
          v55 = [v15 model];
          if (v55)
          {
            v48 = MEMORY[0x1E696AEC0];
            v5 = [v15 model];
            v50 = v5;
            v42 = [v48 stringWithFormat:@" (%@)"];
          }

          else
          {
            v42 = &stru_1F05B9908;
          }

          *buf = 138544130;
          *&buf[4] = v54;
          *&buf[12] = 2114;
          *&buf[14] = v52;
          *&buf[22] = 2114;
          v63 = v53;
          *v64 = 2114;
          *&v64[2] = v42;
          _os_log_debug_impl(&dword_191750000, v20, OS_LOG_TYPE_DEBUG, "%{public}@: Activating %{public}@peer %{public}@%{public}@ now recognizes sync protocol", buf, 0x2Au);
          if (v55)
          {
          }
        }

        if (([a1 transportType] & v17) == 0)
        {
          [a1 handshakeWithDuetSyncPeer:v15 orError:0];
        }
      }

      else if (([a1 transportType] & v17) != 0)
      {
        [v13 removeActiveTransports:objc_msgSend(a1 fromPeer:{"transportType"), v15}];
        v18 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v55 = [objc_opt_class() description];
          v44 = [v15 me];
          v45 = &stru_1F05B9908;
          if (v44)
          {
            v45 = @"pseudo ";
          }

          v53 = v45;
          v54 = [v15 identifier];
          v46 = [v15 model];
          if (v46)
          {
            v49 = MEMORY[0x1E696AEC0];
            v3 = [v15 model];
            v50 = v3;
            v47 = [v49 stringWithFormat:@" (%@)"];
          }

          else
          {
            v47 = &stru_1F05B9908;
          }

          *buf = 138544130;
          *&buf[4] = v55;
          *&buf[12] = 2114;
          *&buf[14] = v53;
          *&buf[22] = 2114;
          v63 = v54;
          *v64 = 2114;
          *&v64[2] = v47;
          _os_log_debug_impl(&dword_191750000, v18, OS_LOG_TYPE_DEBUG, "%{public}@: Unsupported %{public}@peer %{public}@%{public}@ no longer recognizes sync protocol", buf, 0x2Au);
          if (v46)
          {
          }
        }
      }

      v21 = [_DKSyncRapportCommonStorage deviceForPeer:];
      v22 = v21 == 0;

      if (v22)
      {
        v27 = [(_DKSyncRapportCommonStorage *)a1 clientForPeer:v15];
        if (v27)
        {
          [(_DKSyncRapportCommonStorage *)a1 removeClient:v27 forPeer:v15 retiring:0, v23, v24, v25, v26, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, *buf, *&buf[8], *&buf[16], v63, *v64, *&v64[8], *&v64[16], v65, v66, v67];
        }

        [v13 removeActiveTransports:objc_msgSend(a1 fromPeer:{"transportType"), v15}];
      }

      if ((a3 & 2) != 0)
      {
        v28 = [v8 statusFlags] & 0x40;
        if ([v15 isCompanion] != v28 >> 6)
        {
          if (v28)
          {
            v29 = +[_CDLogging syncChannel];
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              [objc_opt_class() description];
              objc_claimAutoreleasedReturnValue();
              [v8 idsDeviceIdentifier];
              objc_claimAutoreleasedReturnValue();
              [_DKSyncRapportCommonStorage handleDeviceChanged:changes:];
            }
          }

          else
          {
            v29 = +[_CDLogging syncChannel];
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              [objc_opt_class() description];
              objc_claimAutoreleasedReturnValue();
              [v8 idsDeviceIdentifier];
              objc_claimAutoreleasedReturnValue();
              [_DKSyncRapportCommonStorage handleDeviceChanged:changes:];
            }
          }

          v30 = [v13 activeTransportsForPeer:v15];
          v31 = [a1 transportType] & v30;
          if (v31)
          {
            [v13 removeActiveTransports:objc_msgSend(a1 fromPeer:{"transportType"), v15}];
          }

          [v15 setCompanion:v28 != 0];
          if (v31)
          {
            [v13 addActiveTransports:objc_msgSend(a1 toPeer:{"transportType"), v15}];
          }
        }
      }

      v32 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [_DKSyncRapportCommonStorage handleDeviceFound:];
      }

      [v13 debugLogPeers];
    }

    else
    {
      v19 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [_DKSyncRapportCommonStorage handleDeviceChanged:changes:];
      }
    }
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (void)handleDeviceLost:(void *)a1
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (a1)
  {
    v5 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v5);

    v6 = [v4 idsDeviceIdentifier];

    if (v6)
    {
      v7 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v23 = [objc_opt_class() description];
        v24 = [v4 idsDeviceIdentifier];
        v25 = [v4 identifier];
        *buf = 138543874;
        *&buf[4] = v23;
        *&buf[12] = 2114;
        *&buf[14] = v24;
        *&buf[22] = 2112;
        v46 = v25;
        _os_log_debug_impl(&dword_191750000, v7, OS_LOG_TYPE_DEBUG, "%{public}@: Lost device %{public}@ with companion link identifier %@", buf, 0x20u);
      }

      v8 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v26 = [objc_opt_class() description];
        v27 = [v4 idsDeviceIdentifier];
        *buf = 138543874;
        *&buf[4] = v26;
        *&buf[12] = 2114;
        *&buf[14] = v27;
        *&buf[22] = 2112;
        v46 = v4;
        _os_log_debug_impl(&dword_191750000, v8, OS_LOG_TYPE_DEBUG, "%{public}@: Lost device %{public}@ is %@", buf, 0x20u);
      }

      v9 = +[_DKSyncPeerStatusTracker sharedInstance];
      v10 = [v4 idsDeviceIdentifier];
      v11 = [v9 peerWithIDSDeviceIdentifier:v10];

      v16 = [(_DKSyncRapportCommonStorage *)a1 clientForPeer:v11];
      if (v16)
      {
        [(_DKSyncRapportCommonStorage *)a1 removeClient:v16 forPeer:v11 retiring:0, v12, v13, v14, v15, v33, v34, v35, v37, v39, v41, v43, v44, *buf, *&buf[8], *&buf[16], v46, *v47, *&v47[8], *&v47[16], v48, v49, v50, v51, v52, v53, v54];
      }

      v17 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v42 = [objc_opt_class() description];
        v40 = [v4 idsDeviceIdentifier];
        v28 = [v11 me];
        v29 = &stru_1F05B9908;
        if (v28)
        {
          v29 = @"pseudo ";
        }

        v36 = v29;
        v38 = [v11 identifier];
        v30 = [v11 model];
        if (v30)
        {
          v32 = MEMORY[0x1E696AEC0];
          v2 = [v11 model];
          v31 = [v32 stringWithFormat:@" (%@)", v2];
        }

        else
        {
          v31 = &stru_1F05B9908;
        }

        *buf = 138544386;
        *&buf[4] = v42;
        *&buf[12] = 2114;
        *&buf[14] = v40;
        *&buf[22] = 2114;
        v46 = v36;
        *v47 = 2114;
        *&v47[2] = v38;
        *&v47[10] = 2114;
        *&v47[12] = v31;
        _os_log_debug_impl(&dword_191750000, v17, OS_LOG_TYPE_DEBUG, "%{public}@: Lost device %{public}@ is %{public}@peer %{public}@%{public}@", buf, 0x34u);
        if (v30)
        {
        }
      }

      v18 = [_DKSyncRapportCommonStorage deviceForPeer:];
      v19 = v18 == 0;

      if (v19)
      {
        [v9 removeActiveTransports:objc_msgSend(a1 fromPeer:{"transportType"), v11}];
        v20 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [objc_opt_class() description];
          objc_claimAutoreleasedReturnValue();
          [_DKSyncRapportCommonStorage handleDeviceFound:];
        }

        [v9 debugLogPeers];
      }
    }

    else
    {
      v21 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [_DKSyncRapportCommonStorage handleDeviceLost:];
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)handleActivateWithError:(uint64_t)a1
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v4);

    v5 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportCommonStorage handleActivateWithError:];
    }

    if (v3)
    {
      v6 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v14 = [objc_opt_class() description];
        v15 = [v3 domain];
        *buf = 138544130;
        v18 = v14;
        v19 = 2114;
        v20 = v15;
        v21 = 2048;
        v22 = [v3 code];
        v23 = 2112;
        v24 = v3;
        _os_log_error_impl(&dword_191750000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Failed to start Rapport: %{public}@:%lld (%@)", buf, 0x2Au);
      }

      *(a1 + 8) = 0;
      [*(a1 + 40) invalidate];
      v7 = *(a1 + 40);
      *(a1 + 40) = 0;

      [a1 setIsAvailable:0];
      v8 = +[_CDObservationCenter sharedInstance];
      [v8 postNotificationName:@"_DKRapportTransportAvailablityChangedNotification" userInfo:0 sender:a1];
    }

    else
    {
      v9 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [_DKSyncRapportCommonStorage handleActivateWithError:];
      }

      v10 = *(a1 + 40);
      v11 = *MEMORY[0x1E69C6C08];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __55___DKSyncRapportCommonStorage_handleActivateWithError___block_invoke;
      v16[3] = &unk_1E73675F8;
      v16[4] = a1;
      [v10 registerProfileID:v11 completion:v16];
      *(a1 + 8) = 1;
      [a1 setIsAvailable:1];
      v12 = +[_CDObservationCenter sharedInstance];
      [v12 postNotificationName:@"_DKRapportTransportAvailablityChangedNotification" userInfo:0 sender:a1];
      *(a1 + 72) = 0x4020000000000000;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)handleBeaconWithRequest:(void *)a3 options:(void *)a4 responseHandler:
{
  v48 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v37 = a3;
  v8 = a4;
  if (a1)
  {
    v9 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v9);

    v10 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportCommonStorage handleBeaconWithRequest:options:responseHandler:];
    }

    v11 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportCommonStorage handleBeaconWithRequest:options:responseHandler:];
    }

    v12 = objc_opt_new();
    v13 = [a1 myDeviceID];
    if (v13)
    {
      v14 = [v7 objectForKeyedSubscript:@"peer"];
      if (v14)
      {
        v15 = +[_DKSyncPeerStatusTracker sharedInstance];
        v16 = [v15 peerWithIDSDeviceIdentifier:v14];
        v17 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v35 = [objc_opt_class() description];
          v24 = [v16 me];
          v25 = &stru_1F05B9908;
          if (v24)
          {
            v25 = @"pseudo ";
          }

          v32 = v25;
          v34 = [v16 identifier];
          v36 = [v16 model];
          if (v36)
          {
            v31 = MEMORY[0x1E696AEC0];
            v29 = [v16 model];
            v27 = v31;
            v30 = v29;
            v26 = [v27 stringWithFormat:@" (%@)", v29];
          }

          else
          {
            v26 = &stru_1F05B9908;
          }

          v28 = v32;
          v33 = v26;
          *buf = 138544130;
          v41 = v35;
          v42 = 2114;
          v43 = v28;
          v44 = 2114;
          v45 = v34;
          v46 = 2114;
          v47 = v26;
          _os_log_debug_impl(&dword_191750000, v17, OS_LOG_TYPE_DEBUG, "%{public}@: Received beacon request from %{public}@peer %{public}@%{public}@", buf, 0x2Au);
          if (v36)
          {
          }
        }

        if (v16)
        {
          [a1 handshakeWithDuetSyncPeer:v16 orError:0];
          v18 = 0;
        }

        else
        {
          v20 = +[_CDLogging syncChannel];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            [objc_opt_class() description];
            objc_claimAutoreleasedReturnValue();
            [_DKSyncRapportCommonStorage handleBeaconWithRequest:options:responseHandler:];
          }

          v18 = +[_DKSyncErrors internalFailure];
        }
      }

      else
      {
        v18 = +[_DKSyncErrors invalidRequest];
      }
    }

    else
    {
      v19 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [_DKSyncRapportCommonStorage handleBeaconWithRequest:options:responseHandler:];
      }

      +[_DKSyncErrors internalFailure];
      v18 = v13 = &stru_1F05B9908;
    }

    v38[0] = @"server";
    v38[1] = @"results";
    v39[0] = v13;
    v39[1] = v12;
    v38[2] = @"version";
    v39[2] = @"3.0";
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:3];
    v22 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportCommonStorage handleBeaconWithRequest:options:responseHandler:];
    }

    v8[2](v8, v21, 0, v18);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)handleFetchSourceDeviceIDWithRequest:(void *)a3 options:(void *)a4 responseHandler:
{
  v29[7] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v25 = a3;
  v8 = a4;
  if (a1)
  {
    v9 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v9);

    v10 = [MEMORY[0x1E695DF00] date];
    v11 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportCommonStorage handleFetchSourceDeviceIDWithRequest:options:responseHandler:];
    }

    v12 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportCommonStorage handleFetchSourceDeviceIDWithRequest:options:responseHandler:];
    }

    v13 = [a1 myDeviceID];
    v14 = v13;
    if (v13)
    {
      v15 = 0;
      v28 = @"deviceID";
      v29[0] = v13;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      v17 = v14;
    }

    else
    {
      v18 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [_DKSyncRapportCommonStorage handleFetchSourceDeviceIDWithRequest:options:responseHandler:];
      }

      v19 = +[_DKSyncErrors internalFailure];
      v17 = &stru_1F05B9908;
      v16 = 0;
      v15 = v19;
    }

    v26[0] = @"server";
    v26[1] = @"result";
    if (v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = &stru_1F05B9908;
    }

    v27[0] = v17;
    v27[1] = v20;
    v26[2] = @"version";
    v27[2] = @"3.0";
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];
    v22 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportCommonStorage handleFetchSourceDeviceIDWithRequest:options:responseHandler:];
    }

    v8[2](v8, v21, 0, v15);
    if (v10)
    {
      v23 = [MEMORY[0x1E695DF00] date];
      +[_DKSyncPowerlog recordWithSyncType:transportType:startDate:endDate:isEmpty:](_DKSyncPowerlog, "recordWithSyncType:transportType:startDate:endDate:isEmpty:", 0, [a1 transportType], v10, v23, 0);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)handshakeWithDuetSyncPeer:(id)a3 orError:(id)a4
{
  v65 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[_DKSyncPeerStatusTracker sharedInstance];
  if (!v7)
  {
    v24 = [v6 sourceDeviceID];
    if (v24)
    {
      v25 = v24;
      v26 = [v6 version];
      if (v26)
      {
        v27 = v26;
        peerSourceDeviceIDsWithCompletedHandshakes = self->_peerSourceDeviceIDsWithCompletedHandshakes;
        v29 = [v6 sourceDeviceID];
        LODWORD(peerSourceDeviceIDsWithCompletedHandshakes) = [(NSMutableSet *)peerSourceDeviceIDsWithCompletedHandshakes containsObject:v29];

        if (peerSourceDeviceIDsWithCompletedHandshakes)
        {
          [v8 addActiveTransports:-[_DKSyncRapportCommonStorage transportType](self toPeer:{"transportType"), v6}];
          v30 = [MEMORY[0x1E695DF00] date];
          [v8 setLastSeenDate:v30 onPeer:v6];

          goto LABEL_22;
        }
      }

      else
      {
      }
    }

    v31 = [MEMORY[0x1E695DF00] date];
    v32 = MEMORY[0x1E696AEC0];
    v33 = [v6 identifier];
    v18 = [v32 stringWithFormat:@"handshake:%@", v33];

    v34 = +[_DKThrottledActivity standardInstance];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __65___DKSyncRapportCommonStorage_handshakeWithDuetSyncPeer_orError___block_invoke;
    v47[3] = &unk_1E736A018;
    v47[4] = self;
    v48 = v6;
    v49 = v31;
    v50 = v8;
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __65___DKSyncRapportCommonStorage_handshakeWithDuetSyncPeer_orError___block_invoke_156;
    v45[3] = &unk_1E736ACD8;
    v45[4] = self;
    v46 = v48;
    v35 = v31;
    [v34 performNoMoreOftenInMinutesThan:v18 name:v47 activityBlock:v45 throttleBlock:1.0];

LABEL_21:
    goto LABEL_22;
  }

  if ([v7 code] != -6714 || (objc_msgSend(v7, "domain"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E69C6BC8]), v9, !v10))
  {
    v18 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [objc_opt_class() description];
      v20 = &stru_1F05B9908;
      if ([v6 me])
      {
        v21 = @"pseudo ";
      }

      else
      {
        v21 = &stru_1F05B9908;
      }

      v22 = [v6 identifier];
      v23 = [v6 model];
      if (v23)
      {
        v39 = MEMORY[0x1E696AEC0];
        v43 = [v6 model];
        v20 = [v39 stringWithFormat:@" (%@)", v43];
      }

      v40 = [v7 domain];
      *buf = 138544898;
      v52 = v19;
      v53 = 2114;
      v54 = v21;
      v55 = 2114;
      v56 = v22;
      v57 = 2114;
      v58 = v20;
      v59 = 2114;
      v60 = v40;
      v61 = 2048;
      v62 = [v7 code];
      v63 = 2112;
      v64 = v7;
      _os_log_error_impl(&dword_191750000, v18, OS_LOG_TYPE_ERROR, "%{public}@: Failed while handshaking with %{public}@peer %{public}@%{public}@: %{public}@:%lld (%@)", buf, 0x48u);

      if (v23)
      {
      }
    }

    goto LABEL_21;
  }

  v11 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v44 = [objc_opt_class() description];
    v12 = [v6 me];
    v13 = &stru_1F05B9908;
    v14 = @"pseudo ";
    if (!v12)
    {
      v14 = &stru_1F05B9908;
    }

    v42 = v14;
    v15 = [v6 identifier];
    v16 = [v6 model];
    if (v16)
    {
      v17 = MEMORY[0x1E696AEC0];
      v41 = [v6 model];
      v13 = [v17 stringWithFormat:@" (%@)", v41];
    }

    v37 = [v6 model];
    v38 = [v6 name];
    *buf = 138544642;
    v52 = v44;
    v53 = 2114;
    v54 = v42;
    v55 = 2114;
    v56 = v15;
    v57 = 2114;
    v58 = v13;
    v59 = 2114;
    v60 = v37;
    v61 = 2112;
    v62 = v38;
    _os_log_impl(&dword_191750000, v11, OS_LOG_TYPE_INFO, "%{public}@: Unsupported %{public}@peer %{public}@%{public}@ failed to recognize sync protocol beacon: %{public}@ (%@)", buf, 0x3Eu);

    if (v16)
    {
    }
  }

  [v8 removeActiveTransports:-[_DKSyncRapportCommonStorage transportType](self fromPeer:{"transportType"), v6}];
LABEL_22:

  v36 = *MEMORY[0x1E69E9840];
}

- (void)handleActivateCompanionLinkClient:(void *)a3 forPeer:(void *)a4 error:
{
  v42 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (a1)
  {
    v12 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v12);

    v13 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v37 = [objc_opt_class() description];
      v20 = [v10 me];
      v21 = &stru_1F05B9908;
      if (v20)
      {
        v21 = @"pseudo ";
      }

      v36 = v21;
      v4 = [v10 identifier];
      v22 = [v10 model];
      if (v22)
      {
        v28 = MEMORY[0x1E696AEC0];
        v5 = [v10 model];
        v32 = v5;
        v23 = [v28 stringWithFormat:@" (%@)"];
      }

      else
      {
        v23 = &stru_1F05B9908;
      }

      *buf = 138544130;
      *&buf[4] = v37;
      *&buf[12] = 2114;
      *&buf[14] = v36;
      *&buf[22] = 2114;
      v39 = v4;
      *v40 = 2114;
      *&v40[2] = v23;
      _os_log_debug_impl(&dword_191750000, v13, OS_LOG_TYPE_DEBUG, "%{public}@: Handling client activate of %{public}@peer %{public}@%{public}@", buf, 0x2Au);
      if (v22)
      {
      }
    }

    if (v11)
    {
      v14 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v37 = [objc_opt_class() description];
        v24 = [v10 me];
        v25 = &stru_1F05B9908;
        if (v24)
        {
          v25 = @"pseudo ";
        }

        v35 = v25;
        v36 = [v10 identifier];
        v26 = [v10 model];
        if (v26)
        {
          v29 = MEMORY[0x1E696AEC0];
          v4 = [v10 model];
          v32 = v4;
          v27 = [v29 stringWithFormat:@" (%@)"];
        }

        else
        {
          v27 = &stru_1F05B9908;
        }

        v30 = [v11 domain];
        v31 = [v11 code];
        v34 = v4;
        *buf = 138544898;
        *&buf[4] = v37;
        *&buf[12] = 2114;
        *&buf[14] = v35;
        *&buf[22] = 2114;
        v39 = v36;
        *v40 = 2114;
        *&v40[2] = v27;
        *&v40[10] = 2114;
        *&v40[12] = v30;
        *&v40[20] = 2048;
        *&v40[22] = v31;
        *&v40[30] = 2112;
        v41 = v11;
        _os_log_error_impl(&dword_191750000, v14, OS_LOG_TYPE_ERROR, "%{public}@: Failed client activate of %{public}@peer %{public}@%{public}@: %{public}@:%lld (%@)", buf, 0x48u);

        if (v26)
        {
        }
      }

      [(_DKSyncRapportCommonStorage *)a1 removeClient:v9 forPeer:v10 retiring:0, v15, v16, v17, v18, v32, v33, v34, v35, v36, v37, *buf, *&buf[8], *&buf[16], v39, *v40, *&v40[8], *&v40[16], *&v40[24], v41, v42, v43, v44, v45, v46, v47, v48];
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (id)transformResponseError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = *MEMORY[0x1E69C6BC8];
  if ([v4 isEqualToString:*MEMORY[0x1E69C6BC8]])
  {
    v6 = [v3 code];

    if (v6 == -71156)
    {
      v7 = +[_DKSyncErrors temporaryFailure];

      goto LABEL_12;
    }
  }

  else
  {
  }

  v8 = [v3 domain];
  if ([v8 isEqualToString:v5])
  {
    v9 = [v3 code];

    v7 = v3;
    if (v9 != -6722)
    {
      goto LABEL_12;
    }

    v10 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_DKSyncRapportCommonStorage transformResponseError:];
    }
  }

  else
  {
  }

  v7 = v3;
LABEL_12:

  return v7;
}

- (id)transformCaughtObject:(id)a3 existingError:(id)a4
{
  v35[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
LABEL_5:
    v9 = v8;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v5;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = +[_DKSyncErrors internalFailure];
    v14 = [v13 domain];
    v15 = +[_DKSyncErrors internalFailure];
    v16 = [v15 code];
    v34 = *MEMORY[0x1E696A578];
    v17 = [v5 reason];
    v18 = v17;
    v19 = @"Exception Caught";
    if (v17)
    {
      v19 = v17;
    }

    v35[0] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v9 = [v12 errorWithDomain:v14 code:v16 userInfo:v20];
  }

  else
  {
    v21 = objc_opt_respondsToSelector();
    v22 = MEMORY[0x1E696ABC0];
    v13 = +[_DKSyncErrors internalFailure];
    v14 = [v13 domain];
    v23 = +[_DKSyncErrors internalFailure];
    v24 = [v23 code];
    v25 = *MEMORY[0x1E696A578];
    if (v21)
    {
      v32 = *MEMORY[0x1E696A578];
      v26 = [v5 description];
      v27 = v26;
      v28 = @"Object Caught";
      if (v26)
      {
        v28 = v26;
      }

      v33 = v28;
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v9 = [v22 errorWithDomain:v14 code:v24 userInfo:v29];
    }

    else
    {
      v30 = *MEMORY[0x1E696A578];
      v31 = @"Object Caught";
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v9 = [v22 errorWithDomain:v14 code:v24 userInfo:v27];
    }
  }

LABEL_6:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)handleFetchSourceDeviceIDWithResponse:(void *)a3 options:(void *)a4 error:(void *)a5 peer:(void *)a6 plStartDate:(void *)a7 completion:
{
  v61 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v49 = a3;
  v14 = a4;
  v50 = a5;
  v15 = a6;
  v16 = a7;
  if (a1)
  {
    v17 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v17);

    v18 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportCommonStorage handleFetchSourceDeviceIDWithResponse:options:error:peer:plStartDate:completion:];
    }

    if (v14)
    {
      if ([v14 code] == -6714 && (objc_msgSend(v14, "domain"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isEqualToString:", *MEMORY[0x1E69C6BC8]), v19, v20))
      {
        v21 = +[_DKSyncPeerStatusTracker sharedInstance];
        [v21 removeActiveTransports:objc_msgSend(a1 fromPeer:{"transportType"), v50}];
        v22 = 0;
        v23 = 0;
      }

      else
      {
        [a1 transformResponseError:v14];
        v22 = 0;
        v23 = 0;
        v14 = v21 = v14;
      }
    }

    else
    {
      v24 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v47 = [objc_opt_class() description];
        if ([v50 me])
        {
          v31 = @"pseudo ";
        }

        else
        {
          v31 = &stru_1F05B9908;
        }

        v32 = [v50 identifier];
        v33 = [v50 model];
        if (v33)
        {
          v35 = MEMORY[0x1E696AEC0];
          a5 = [v50 model];
          v34 = [v35 stringWithFormat:@" (%@)", a5];
        }

        else
        {
          v34 = &stru_1F05B9908;
        }

        *buf = 138544386;
        v52 = v47;
        v53 = 2114;
        v54 = v31;
        v55 = 2114;
        v56 = v32;
        v57 = 2114;
        v58 = v34;
        v59 = 2112;
        v60 = v13;
        _os_log_debug_impl(&dword_191750000, v24, OS_LOG_TYPE_DEBUG, "%{public}@: Received fetch source device id response from %{public}@peer %{public}@%{public}@: %@", buf, 0x34u);
        if (v33)
        {
        }
      }

      v21 = [(__CFString *)v13 objectForKeyedSubscript:@"result"];
      v22 = [(__CFString *)v13 objectForKeyedSubscript:@"version"];
      if ([v22 length])
      {
        [v22 doubleValue];
        if (v25 <= 0.0)
        {

          v22 = 0;
        }
      }

      v26 = [v21 objectForKeyedSubscript:@"deviceID"];
      if (v26 && (v23 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v26]) != 0)
      {
        v27 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v46 = [objc_opt_class() description];
          v45 = [v23 UUIDString];
          v36 = [v50 me];
          v37 = &stru_1F05B9908;
          if (v36)
          {
            v37 = @"pseudo ";
          }

          v43 = v37;
          v44 = [v50 identifier];
          v48 = [v50 model];
          if (v48)
          {
            v42 = MEMORY[0x1E696AEC0];
            v39 = [v50 model];
            v38 = [v42 stringWithFormat:@" (%@)", v39];
            v41 = v39;
          }

          else
          {
            v38 = &stru_1F05B9908;
          }

          *buf = 138544386;
          v52 = v46;
          v53 = 2114;
          v54 = v45;
          v55 = 2114;
          v56 = v43;
          v57 = 2114;
          v58 = v44;
          v59 = 2114;
          v60 = v38;
          v40 = v38;
          _os_log_debug_impl(&dword_191750000, v27, OS_LOG_TYPE_DEBUG, "%{public}@: Fetched source device id %{public}@ from %{public}@peer %{public}@%{public}@", buf, 0x34u);
          if (v48)
          {
          }
        }

        v14 = 0;
      }

      else
      {
        v14 = +[_DKSyncErrors invalidResponse];
        v23 = 0;
      }
    }

    if (v15)
    {
      v28 = [MEMORY[0x1E695DF00] date];
      +[_DKSyncPowerlog recordWithSyncType:transportType:startDate:endDate:isEmpty:](_DKSyncPowerlog, "recordWithSyncType:transportType:startDate:endDate:isEmpty:", 0, [a1 transportType], v15, v28, 0);
    }

    if (v16)
    {
      v29 = v16[2];
      if (v14)
      {
        v29(v16, 0, 0, v14);
      }

      else
      {
        v29(v16, v23, v22, 0);
      }
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (BOOL)isTransportActiveForPeer:(id)a3
{
  v4 = a3;
  v5 = +[_DKSyncPeerStatusTracker sharedInstance];
  v6 = [v5 activeTransportsForPeer:v4];

  LOBYTE(self) = ([(_DKSyncRapportCommonStorage *)self transportType]& v6) != 0;
  return self;
}

- (void)startRapport
{
  v28 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v7 = [objc_opt_class() description];
      *buf = 138543362;
      v25 = v7;
      _os_log_debug_impl(&dword_191750000, v2, OS_LOG_TYPE_DEBUG, "%{public}@: Starting Rapport", buf, 0xCu);
    }

    v3 = 0x1E7366000;
    v4 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v4);

    if (*(a1 + 32))
    {
      v5 = objc_alloc_init(MEMORY[0x1E69C6B70]);
      if (v5)
      {
        v8 = +[_DKSyncSerializer underlyingQueue];
        [v5 setDispatchQueue:v8];

        [v5 setControlFlags:[v5 controlFlags]| 2];
        [v5 controlFlags];
        v9 = OUTLINED_FUNCTION_29_3();
        [v5 setControlFlags:v8 | [(_DKSyncRapportCommonStorage *)v9 _additionalFlagsForInternal]| 0x400000];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __43___DKSyncRapportCommonStorage_startRapport__block_invoke;
        v23[3] = &unk_1E7367440;
        v23[4] = a1;
        [v5 setInvalidationHandler:v23];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __43___DKSyncRapportCommonStorage_startRapport__block_invoke_2;
        v22[3] = &unk_1E736AC38;
        v22[4] = a1;
        [v5 setDeviceFoundHandler:v22];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __43___DKSyncRapportCommonStorage_startRapport__block_invoke_3;
        v21[3] = &unk_1E736AC60;
        v21[4] = a1;
        [v5 setDeviceChangedHandler:v21];
        OUTLINED_FUNCTION_2_4();
        v17 = 3221225472;
        v18 = __43___DKSyncRapportCommonStorage_startRapport__block_invoke_4;
        v19 = &unk_1E736AC38;
        v20 = a1;
        [v5 setDeviceLostHandler:v16];
        [(_DKSyncRapportCommonStorage *)a1 registerRequestIDsWithClient:v5];
        objc_storeStrong((a1 + 40), v5);
        OUTLINED_FUNCTION_0_1();
        v12 = 3221225472;
        v13 = __43___DKSyncRapportCommonStorage_startRapport__block_invoke_5;
        v14 = &unk_1E73675F8;
        v15 = a1;
        [v5 activateWithCompletion:v11];
        goto LABEL_9;
      }

      v3 = +[_CDLogging syncChannel];
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v10 = [objc_opt_class() description];
      *buf = 138543362;
      v25 = v10;
      _os_log_error_impl(&dword_191750000, v3, OS_LOG_TYPE_ERROR, "%{public}@: Failed to start Rapport, could not instantiate client", buf, 0xCu);
    }

    else
    {
      v5 = +[_CDLogging syncChannel];
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_9;
      }

      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      v10 = [OUTLINED_FUNCTION_29_3() name];
      *buf = 138543618;
      v25 = 0x1E7366000uLL;
      v26 = 2114;
      v27 = v10;
      _os_log_fault_impl(&dword_191750000, v5, OS_LOG_TYPE_FAULT, "%{public}@: Warning, attempting to start transport %{public}@ with no device ID", buf, 0x16u);
    }

LABEL_7:
LABEL_9:
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)registerRequestIDsWithClient:(uint64_t)a1
{
  if (a1)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __60___DKSyncRapportCommonStorage_registerRequestIDsWithClient___block_invoke;
    v5[3] = &unk_1E736AC88;
    v5[4] = a1;
    v3 = a2;
    [v3 registerRequestID:@"com.apple.coreduet.beacon" options:0 handler:v5];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __60___DKSyncRapportCommonStorage_registerRequestIDsWithClient___block_invoke_2;
    v4[3] = &unk_1E736AC88;
    v4[4] = a1;
    [v3 registerRequestID:@"com.apple.coreduet.fetch-source-device-id" options:0 handler:v4];
  }
}

- (id)deviceForPeer:
{
  OUTLINED_FUNCTION_38_1();
  v1 = v0;
  v17 = *MEMORY[0x1E69E9840];
  v3 = v2;
  if (v1)
  {
    v4 = [*(v1 + 40) activeDevices];
    OUTLINED_FUNCTION_36();
    v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
    if (v6)
    {
      v7 = MEMORY[0];
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (MEMORY[0] != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(8 * i);
          v10 = [v3 idsDeviceIdentifier];
          v11 = [v9 idsDeviceIdentifier];
          v12 = [v10 isEqualToString:v11];

          if (v12)
          {
            v9;
            goto LABEL_12;
          }
        }

        OUTLINED_FUNCTION_36();
        v6 = [v4 countByEnumeratingWithState:? objects:? count:?];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  v13 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_37_1();

  return v14;
}

- (void)removeClient:(uint64_t)a3 forPeer:(uint64_t)a4 retiring:(uint64_t)a5
{
  OUTLINED_FUNCTION_70_0();
  a29 = v32;
  a30 = v33;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  a18 = *MEMORY[0x1E69E9840];
  v41 = v40;
  v42 = v37;
  if (v39)
  {
    v43 = +[_CDLogging syncChannel];
    v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG);
    if (v35)
    {
      if (v44)
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_28_4() me];
        v45 = &stru_1F05B9908;
        OUTLINED_FUNCTION_22_7();
        [v42 identifier];
        objc_claimAutoreleasedReturnValue();
        v46 = [OUTLINED_FUNCTION_34_0() model];
        if (v46)
        {
          v49 = MEMORY[0x1E696AEC0];
          [v42 model];
          objc_claimAutoreleasedReturnValue();
          OUTLINED_FUNCTION_21_9();
          v45 = [v49 stringWithFormat:@" (%@)"];
        }

        OUTLINED_FUNCTION_3_21();
        v51 = "%{public}@: Retiring client for %{public}@peer %{public}@%{public}@";
LABEL_15:
        OUTLINED_FUNCTION_31_1(&dword_191750000, v43, v50, v51, &a11);
        if (v46)
        {
        }
      }
    }

    else if (v44)
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_28_4() me];
      v45 = &stru_1F05B9908;
      OUTLINED_FUNCTION_22_7();
      [v42 identifier];
      objc_claimAutoreleasedReturnValue();
      v46 = [OUTLINED_FUNCTION_34_0() model];
      if (v46)
      {
        v52 = MEMORY[0x1E696AEC0];
        [v42 model];
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_21_9();
        v45 = [v52 stringWithFormat:@" (%@)"];
      }

      OUTLINED_FUNCTION_3_21();
      v51 = "%{public}@: Removing client for %{public}@peer %{public}@%{public}@";
      goto LABEL_15;
    }

    v47 = [v42 idsDeviceIdentifier];
    [*(v39 + 48) setObject:0 forKeyedSubscript:v47];
    [v41 invalidate];
  }

  v48 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_72_0();
}

- (void)sendRequestID:(id)a3 request:(id)a4 peer:(id)a5 highPriority:(BOOL)a6 options:(id)a7 responseHandler:(id)a8
{
  v87 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v19);

  v20 = [(_DKSyncRapportCommonStorage *)self clientForPeer:v16];
  if (v20)
  {
    v26 = v20;
    v28 = [_DKSyncRapportCommonStorage deviceForPeer:];
    [v26 setDestinationDevice:v28];

    v29 = [v26 destinationDevice];

    if (v29)
    {
      [(_DKSyncRapportCommonStorage *)self sendRequestID:v14 request:v15 peer:v16 client:v26 options:v17 responseHandler:v18];
      goto LABEL_7;
    }

    v30 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      v67 = [objc_opt_class() description];
      v31 = [v16 me];
      v32 = &stru_1F05B9908;
      v33 = @"pseudo ";
      if (!v31)
      {
        v33 = &stru_1F05B9908;
      }

      v65 = v33;
      v66 = [v16 identifier];
      v34 = [v16 model];
      if (v34)
      {
        v46 = MEMORY[0x1E696AEC0];
        v64 = [v16 model];
        v62 = v64;
        v32 = [v46 stringWithFormat:@" (%@)"];
      }

      LODWORD(buf) = 138544130;
      OUTLINED_FUNCTION_10_11();
      *(&v83 + 6) = v65;
      HIWORD(v83) = v47;
      v84 = v66;
      v85 = v47;
      v86 = v32;
      _os_log_fault_impl(&dword_191750000, v30, OS_LOG_TYPE_FAULT, "%{public}@: Device disappeared for %{public}@peer %{public}@%{public}@", &buf, 0x2Au);
      if (v34)
      {
      }
    }

    [(_DKSyncRapportCommonStorage *)self removeClient:v26 forPeer:v16 retiring:0, v48, v49, v50, v51, v62, v63, v64, v65, v66, v67, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, buf, v83, *(&v83 + 1), v84];
    if (v18)
    {
      v45 = +[_DKSyncErrors internalFailure];
      goto LABEL_35;
    }
  }

  else
  {
    v21 = objc_alloc_init(MEMORY[0x1E69C6B70]);
    if (!v21)
    {
      v22 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v68 = [objc_opt_class() description];
        v38 = &stru_1F05B9908;
        if ([v16 me])
        {
          v39 = @"pseudo ";
        }

        else
        {
          v39 = &stru_1F05B9908;
        }

        v40 = [v16 identifier];
        v41 = [v16 model];
        if (v41)
        {
          v42 = MEMORY[0x1E696AEC0];
          v66 = [v16 model];
          v38 = [v42 stringWithFormat:@" (%@)", v66];
        }

        LODWORD(buf) = 138544130;
        OUTLINED_FUNCTION_10_11();
        *(&v83 + 6) = v39;
        HIWORD(v83) = v43;
        v84 = v40;
        v85 = v43;
        v86 = v38;
        _os_log_error_impl(&dword_191750000, v22, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create client for %{public}@peer %{public}@%{public}@", &buf, 0x2Au);
        if (v41)
        {
        }
      }

      if (v18)
      {
        v23 = +[_DKSyncErrors internalFailure];
        v24 = OUTLINED_FUNCTION_30_2();
        v25(v24);
      }

      v26 = 0;
      goto LABEL_7;
    }

    v26 = v21;
    v35 = +[_DKSyncSerializer underlyingQueue];
    [v26 setDispatchQueue:v35];

    [v26 setControlFlags:{objc_msgSend(v26, "controlFlags") | -[_DKSyncRapportCommonStorage _additionalFlagsForInternal](self) | 0x400000}];
    v36 = [_DKSyncRapportCommonStorage deviceForPeer:];
    [v26 setDestinationDevice:v36];

    v37 = [v26 destinationDevice];

    if (v37)
    {
      OUTLINED_FUNCTION_2_4();
      v71 = 3221225472;
      v72 = __95___DKSyncRapportCommonStorage_sendRequestID_request_peer_highPriority_options_responseHandler___block_invoke;
      v73 = &unk_1E736AD28;
      v74 = self;
      v26 = v26;
      v75 = v26;
      v76 = v16;
      v77 = v17;
      LOBYTE(v81) = a6;
      v78 = v14;
      v79 = v15;
      v80 = v18;
      [v26 activateWithCompletion:&v70];

      goto LABEL_7;
    }

    v44 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      v69 = [objc_opt_class() description];
      v55 = &stru_1F05B9908;
      [v16 me];
      v56 = [v16 identifier];
      v57 = [v16 model];
      if (v57)
      {
        v58 = MEMORY[0x1E696AEC0];
        v65 = [v16 model];
        v55 = [v58 stringWithFormat:@" (%@)", v65];
      }

      LODWORD(buf) = 138544130;
      OUTLINED_FUNCTION_10_11();
      *(&v83 + 6) = v59;
      HIWORD(v83) = v60;
      v84 = v56;
      v85 = v60;
      v86 = v55;
      OUTLINED_FUNCTION_31_1(&dword_191750000, v44, v61, "%{public}@: Unable to determine device for %{public}@peer %{public}@%{public}@", &buf);
      if (v57)
      {
      }
    }

    [v26 invalidate];
    if (v18)
    {
      v45 = +[_DKSyncErrors temporaryFailure];
LABEL_35:
      v52 = v45;
      v53 = OUTLINED_FUNCTION_30_2();
      v54(v53);
    }
  }

LABEL_7:

  v27 = *MEMORY[0x1E69E9840];
}

- (void)sendRequestID:(void *)a3 request:(void *)a4 peer:(void *)a5 client:(void *)a6 options:(void *)a7 responseHandler:
{
  v66 = *MEMORY[0x1E69E9840];
  v51 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (a1)
  {
    v50 = v14;
    v18 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v18);

    v19 = [v16 objectForKey:*MEMORY[0x1E69C6BD0]];

    v20 = @"enabled";
    if (!v19)
    {
      v20 = @"disabled";
    }

    v21 = v20;
    v22 = *MEMORY[0x1E69C6BB0];
    if (v16)
    {
      v23 = [v16 mutableCopy];
    }

    else
    {
      v23 = objc_opt_new();
    }

    v24 = v23;
    [v23 setObject:&unk_1F05EEFB8 forKeyedSubscript:*MEMORY[0x1E69C6C00]];
    v25 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v40 = v13;
      v48 = [objc_opt_class() description];
      v29 = [v14 me];
      v30 = @"pseudo ";
      if (!v29)
      {
        v30 = &stru_1F05B9908;
      }

      v43 = v30;
      v46 = [v14 identifier];
      v44 = [v14 model];
      if (v44)
      {
        v35 = MEMORY[0x1E696AEC0];
        v39 = [v14 model];
        [v35 stringWithFormat:@" (%@)", v39];
        objc_claimAutoreleasedReturnValue();
      }

      *buf = 138544642;
      OUTLINED_FUNCTION_10_11();
      v57 = v51;
      v58 = v36;
      v13 = v40;
      v59 = v43;
      v60 = v36;
      v61 = v46;
      v62 = v36;
      v42 = v37;
      v63 = v37;
      v64 = 2112;
      v65 = v40;
      _os_log_debug_impl(&dword_191750000, v25, OS_LOG_TYPE_DEBUG, "%{public}@: Starting to send request %{public}@ to %{public}@peer %{public}@%{public}@: %@", buf, 0x3Eu);
      if (v44)
      {
      }
    }

    ++*(a1 + 56);
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __89___DKSyncRapportCommonStorage_sendRequestID_request_peer_client_options_responseHandler___block_invoke;
    v52[3] = &unk_1E736AD50;
    v52[4] = a1;
    v26 = v21;
    v53 = v26;
    v55 = v17;
    v54 = v15;
    [v54 sendRequestID:v51 request:v13 destinationID:v22 options:v24 responseHandler:v52];
    v27 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v49 = [objc_opt_class() description];
      v31 = [v14 me];
      v32 = &stru_1F05B9908;
      if (v31)
      {
        v32 = @"pseudo ";
      }

      v45 = v32;
      v47 = [v14 identifier];
      v33 = [v14 model];
      if (v33)
      {
        v41 = MEMORY[0x1E696AEC0];
        v42 = [v14 model];
        v34 = [v41 stringWithFormat:@" (%@)", v42];
      }

      else
      {
        v34 = &stru_1F05B9908;
      }

      *buf = 138544386;
      OUTLINED_FUNCTION_10_11();
      v57 = v51;
      v58 = v38;
      v59 = v45;
      v60 = v38;
      v61 = v47;
      v62 = v38;
      v63 = v34;
      _os_log_debug_impl(&dword_191750000, v27, OS_LOG_TYPE_DEBUG, "%{public}@: Done sending request %{public}@ to %{public}@peer %{public}@%{public}@", buf, 0x34u);
      if (v33)
      {
      }
    }

    v14 = v50;
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)handleAvailabilityFailureWithPeer:(id)a3 completion:(id)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[_DKSyncErrors internalFailure];
  if (![(_DKSyncRapportCommonStorage *)self isAvailable])
  {
    v9 = +[_DKSyncErrors temporaryFailure];

    v8 = v9;
  }

  v10 = [v6 idsDeviceIdentifier];

  v11 = 0x1E7366000uLL;
  v12 = "[_DKSyncRapportContextStorage handleFetchContextValuesWithRequest:options:responseHandler:]" + 52;
  if (!v10)
  {
    v49 = +[_DKSyncErrors temporaryFailure];

    v13 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = [objc_opt_class() description];
      v15 = &stru_1F05B9908;
      [v6 me];
      v16 = [v6 identifier];
      v17 = [v6 model];
      if (v17)
      {
        v18 = MEMORY[0x1E696AEC0];
        v48 = [v6 model];
        v15 = [v18 stringWithFormat:@" (%@)", v48];
      }

      OUTLINED_FUNCTION_16_7();
      OUTLINED_FUNCTION_23_5();
      _os_log_debug_impl(v19, v20, v21, v22, v23, 0x2Au);
      if (v17)
      {
      }

      v12 = "uesWithRequest:options:responseHandler:]";
      v11 = 0x1E7366000uLL;
    }

    v24 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = [objc_opt_class() description];
      v26 = [v6 debugDescription];
      *buf = *(v12 + 346);
      v51 = v25;
      v52 = 2112;
      v53 = v26;
      OUTLINED_FUNCTION_23_5();
      _os_log_debug_impl(v27, v28, v29, v30, v31, 0x16u);
    }

    v8 = v49;
  }

  v32 = [_DKSyncRapportCommonStorage deviceForPeer:];

  if (!v32)
  {
    v33 = +[_DKSyncErrors temporaryFailure];

    v34 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v37 = [objc_opt_class() description];
      v38 = &stru_1F05B9908;
      [v6 me];
      v39 = [v6 identifier];
      v40 = [v6 model];
      if (v40)
      {
        v42 = MEMORY[0x1E696AEC0];
        v49 = [v6 model];
        v38 = [v42 stringWithFormat:@" (%@)", v49];
      }

      OUTLINED_FUNCTION_16_7();
      OUTLINED_FUNCTION_23_5();
      _os_log_debug_impl(v43, v44, v45, v46, v47, 0x2Au);
      if (v40)
      {
      }

      v12 = "[_DKSyncRapportContextStorage handleFetchContextValuesWithRequest:options:responseHandler:]" + 52;
      v11 = 0x1E7366000;
    }

    v35 = [*(v11 + 648) syncChannel];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      v41 = [OUTLINED_FUNCTION_29_3() debugDescription];
      *buf = *(v12 + 346);
      v51 = self;
      v52 = 2112;
      v53 = v41;
      _os_log_debug_impl(&dword_191750000, v35, OS_LOG_TYPE_DEBUG, "%{public}@: Peer: %@", buf, 0x16u);
    }

    v8 = v33;
  }

  if (v7)
  {
    v7[2](v7, v8);
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (void)handleDeviceFound:.cold.1()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_32(&dword_191750000, v3, v4, "%{public}@: peers now...", v5);
}

- (void)handleDeviceFound:.cold.2()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Ignoring device found with no idsDeviceIdentifier: %@", v4, v5);
}

- (void)handleDeviceChanged:changes:.cold.1()
{
  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_51(v2, v3, v4, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Device %{public}@ is no longer paired companion", v5, v6);
}

- (void)handleDeviceChanged:changes:.cold.2()
{
  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_51(v2, v3, v4, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Device %{public}@ is now paired companion", v5, v6);
}

- (void)handleDeviceChanged:changes:.cold.4()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Ignoring device changed with no idsDeviceIdentifier: %@", v4, v5);
}

- (void)handleDeviceLost:.cold.2()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Ignoring device lost with no idsDeviceIdentifier: %@", v4, v5);
}

- (void)handleActivateWithError:.cold.1()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_32(&dword_191750000, v3, v4, "%{public}@: Handling activate", v5);
}

- (void)handleActivateWithError:.cold.2()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_32(&dword_191750000, v3, v4, "%{public}@: Started Rapport", v5);
}

- (void)handleBeaconWithRequest:options:responseHandler:.cold.1()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_32(&dword_191750000, v3, v4, "%{public}@: Handling beacon request", v5);
}

- (void)handleBeaconWithRequest:options:responseHandler:.cold.2()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Received beacon request: %@", v4, v5);
}

- (void)handleBeaconWithRequest:options:responseHandler:.cold.3()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_12_6(&dword_191750000, "%{public}@: Failed to instantiate peer with ids device identifier %@", v4, v5);
}

- (void)handleBeaconWithRequest:options:responseHandler:.cold.4()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_11_10(&dword_191750000, v3, v4, "%{public}@: Failed to beacon, missing source device id or delegate", v5);
}

- (void)handleBeaconWithRequest:options:responseHandler:.cold.5()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Calling response handler with beacon response: %@", v4, v5);
}

- (void)handleFetchSourceDeviceIDWithRequest:options:responseHandler:.cold.1()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_32(&dword_191750000, v3, v4, "%{public}@: Handling fetch source device id request", v5);
}

- (void)handleFetchSourceDeviceIDWithRequest:options:responseHandler:.cold.2()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Received fetch source device id request: %@", v4, v5);
}

- (void)handleFetchSourceDeviceIDWithRequest:options:responseHandler:.cold.3()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_11_10(&dword_191750000, v3, v4, "%{public}@: Failed to start, missing source device id or delegate", v5);
}

- (void)handleFetchSourceDeviceIDWithRequest:options:responseHandler:.cold.4()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Calling response handler with fetch source device id response: %@", v4, v5);
}

- (void)transformResponseError:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)myDeviceID
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_class() description];
  v5 = [a1 name];
  v6 = [a1 name];
  OUTLINED_FUNCTION_27_4();
  v11 = v7;
  v12 = v8;
  _os_log_fault_impl(&dword_191750000, a2, OS_LOG_TYPE_FAULT, "%{public}@: Illegal state, transport %{public}@ running with no device ID, turning off transport %{public}@", v10, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)handleFetchSourceDeviceIDWithResponse:options:error:peer:plStartDate:completion:.cold.1()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_32(&dword_191750000, v3, v4, "%{public}@: Handling fetch source device id response", v5);
}

@end
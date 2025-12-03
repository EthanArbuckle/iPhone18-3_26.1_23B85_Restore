@interface _DKSyncRapportCommonStorage
+ (_DKSyncRapportCommonStorage)sharedInstance;
- (BOOL)isTransportActiveForPeer:(id)peer;
- (_DKSyncRapportCommonStorage)init;
- (id)deviceForPeer:;
- (id)myDeviceID;
- (id)transformCaughtObject:(id)object existingError:(id)error;
- (id)transformResponseError:(id)error;
- (uint64_t)_additionalFlagsForInternal;
- (void)cancelOutstandingOperations;
- (void)dealloc;
- (void)handleActivateCompanionLinkClient:(void *)client forPeer:(void *)peer error:;
- (void)handleActivateWithError:(uint64_t)error;
- (void)handleAvailabilityFailureWithPeer:(id)peer completion:(id)completion;
- (void)handleBeaconWithRequest:(void *)request options:(void *)options responseHandler:;
- (void)handleDeviceChanged:(int)changed changes:;
- (void)handleDeviceFound:(void *)found;
- (void)handleDeviceLost:(void *)lost;
- (void)handleFetchSourceDeviceIDWithRequest:(void *)request options:(void *)options responseHandler:;
- (void)handleFetchSourceDeviceIDWithResponse:(void *)response options:(void *)options error:(void *)error peer:(void *)peer plStartDate:(void *)date completion:;
- (void)handleInvalidation;
- (void)handshakeWithDuetSyncPeer:(id)peer orError:(id)error;
- (void)myDeviceID;
- (void)registerRequestIDsWithClient:(uint64_t)client;
- (void)removeClient:(uint64_t)client forPeer:(uint64_t)peer retiring:(uint64_t)retiring;
- (void)sendRequestID:(id)d request:(id)request peer:(id)peer highPriority:(BOOL)priority options:(id)options responseHandler:(id)handler;
- (void)sendRequestID:(void *)d request:(void *)request peer:(void *)peer client:(void *)client options:(void *)options responseHandler:;
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

- (void)handleDeviceFound:(void *)found
{
  v62 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (found)
  {
    v6 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v6);

    idsDeviceIdentifier = [(__CFString *)v5 idsDeviceIdentifier];

    if (idsDeviceIdentifier)
    {
      v8 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v21 = [objc_opt_class() description];
        idsDeviceIdentifier2 = [(__CFString *)v5 idsDeviceIdentifier];
        identifier = [(__CFString *)v5 identifier];
        *buf = 138543874;
        v51 = v21;
        v52 = 2114;
        v53 = idsDeviceIdentifier2;
        v54 = 2114;
        v55 = identifier;
        _os_log_debug_impl(&dword_191750000, v8, OS_LOG_TYPE_DEBUG, "%{public}@: Found device %{public}@ with companion link identifier %{public}@", buf, 0x20u);
      }

      v9 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v23 = [objc_opt_class() description];
        idsDeviceIdentifier3 = [(__CFString *)v5 idsDeviceIdentifier];
        *buf = 138543874;
        v51 = v23;
        v52 = 2114;
        v53 = idsDeviceIdentifier3;
        v54 = 2112;
        v55 = v5;
        _os_log_debug_impl(&dword_191750000, v9, OS_LOG_TYPE_DEBUG, "%{public}@: Device %{public}@ is %@", buf, 0x20u);
      }

      v10 = +[_DKSyncPeerStatusTracker sharedInstance];
      idsDeviceIdentifier4 = [(__CFString *)v5 idsDeviceIdentifier];
      v12 = [v10 peerWithIDSDeviceIdentifier:idsDeviceIdentifier4];

      name = [(__CFString *)v5 name];
      [v12 setName:name];

      model = [(__CFString *)v5 model];
      [v12 setModel:model];

      [v12 setCompanion:{(-[__CFString statusFlags](v5, "statusFlags") >> 6) & 1}];
      v15 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v47 = [objc_opt_class() description];
        idsDeviceIdentifier5 = [(__CFString *)v5 idsDeviceIdentifier];
        v25 = [v12 me];
        v26 = &stru_1F05B9908;
        if (v25)
        {
          v26 = @"pseudo ";
        }

        v42 = v26;
        identifier2 = [v12 identifier];
        model2 = [v12 model];
        if (model2)
        {
          v35 = MEMORY[0x1E696AEC0];
          model3 = [v12 model];
          identifier = [v35 stringWithFormat:@" (%@)", model3];
        }

        else
        {
          identifier = &stru_1F05B9908;
        }

        *buf = 138544386;
        v51 = v47;
        v52 = 2114;
        v53 = idsDeviceIdentifier5;
        v54 = 2114;
        v55 = v42;
        v56 = 2114;
        v57 = identifier2;
        v58 = 2114;
        v59 = identifier;
        _os_log_debug_impl(&dword_191750000, v15, OS_LOG_TYPE_DEBUG, "%{public}@: Device %{public}@ is %{public}@peer %{public}@%{public}@", buf, 0x34u);
        if (model2)
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

          identifier3 = [v12 identifier];
          model4 = [v12 model];
          if (model4)
          {
            v39 = MEMORY[0x1E696AEC0];
            identifier = [v12 model];
            v34 = [v39 stringWithFormat:@" (%@)", identifier];
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
          v55 = identifier3;
          v56 = 2114;
          v57 = v34;
          _os_log_debug_impl(&dword_191750000, v18, OS_LOG_TYPE_DEBUG, "%{public}@: Activating %{public}@peer %{public}@%{public}@ recognizes sync protocol", buf, 0x2Au);
          if (model4)
          {
          }
        }

        [found handshakeWithDuetSyncPeer:v12 orError:0];
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
          identifier4 = [v12 identifier];
          model5 = [v12 model];
          if (model5)
          {
            v36 = MEMORY[0x1E696AEC0];
            model6 = [v12 model];
            v43 = [v36 stringWithFormat:@" (%@)", model6];
          }

          else
          {
            v43 = &stru_1F05B9908;
          }

          model7 = [(__CFString *)v5 model];
          name2 = [(__CFString *)v5 name];
          *buf = 138544642;
          v51 = v48;
          v52 = 2114;
          v53 = v41;
          v54 = 2114;
          v55 = identifier4;
          v56 = 2114;
          v57 = v43;
          v58 = 2114;
          v59 = model7;
          v60 = 2112;
          v61 = name2;
          _os_log_debug_impl(&dword_191750000, v16, OS_LOG_TYPE_DEBUG, "%{public}@: Unsupported %{public}@peer %{public}@%{public}@ does not currently recognize sync protocol: %{public}@ (%@)", buf, 0x3Eu);

          if (model5)
          {
          }
        }

        [v10 removeActiveTransports:objc_msgSend(found fromPeer:{"transportType"), v12}];
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

- (void)handleDeviceChanged:(int)changed changes:
{
  v66 = *MEMORY[0x1E69E9840];
  v8 = a2;
  if (self)
  {
    v9 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v9);

    idsDeviceIdentifier = [v8 idsDeviceIdentifier];

    if (idsDeviceIdentifier)
    {
      v11 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v34 = [objc_opt_class() description];
        idsDeviceIdentifier2 = [v8 idsDeviceIdentifier];
        identifier = [v8 identifier];
        *buf = 138544130;
        *&buf[4] = v34;
        *&buf[12] = 2114;
        *&buf[14] = idsDeviceIdentifier2;
        *&buf[22] = 2112;
        v63 = identifier;
        *v64 = 1024;
        *&v64[2] = changed;
        _os_log_debug_impl(&dword_191750000, v11, OS_LOG_TYPE_DEBUG, "%{public}@: Changed device %{public}@ with companion link identifier %@ and changes %x", buf, 0x26u);
      }

      v12 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v36 = [objc_opt_class() description];
        idsDeviceIdentifier3 = [v8 idsDeviceIdentifier];
        *buf = 138543874;
        *&buf[4] = v36;
        *&buf[12] = 2114;
        *&buf[14] = idsDeviceIdentifier3;
        *&buf[22] = 2112;
        v63 = v8;
        _os_log_debug_impl(&dword_191750000, v12, OS_LOG_TYPE_DEBUG, "%{public}@: Changed device %{public}@ is %@", buf, 0x20u);
      }

      v13 = +[_DKSyncPeerStatusTracker sharedInstance];
      idsDeviceIdentifier4 = [v8 idsDeviceIdentifier];
      v15 = [v13 peerWithIDSDeviceIdentifier:idsDeviceIdentifier4];

      v16 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        model3 = [objc_opt_class() description];
        idsDeviceIdentifier5 = [v8 idsDeviceIdentifier];
        v38 = [v15 me];
        v39 = &stru_1F05B9908;
        if (v38)
        {
          v39 = @"pseudo ";
        }

        v52 = v39;
        identifier2 = [v15 identifier];
        model = [v15 model];
        if (model)
        {
          v43 = MEMORY[0x1E696AEC0];
          model2 = [v15 model];
          v50 = model2;
          identifier = [v43 stringWithFormat:@" (%@)"];
        }

        else
        {
          identifier = &stru_1F05B9908;
        }

        *buf = 138544386;
        *&buf[4] = model3;
        *&buf[12] = 2114;
        *&buf[14] = idsDeviceIdentifier5;
        *&buf[22] = 2114;
        v63 = v52;
        *v64 = 2114;
        *&v64[2] = identifier2;
        *&v64[10] = 2114;
        *&v64[12] = identifier;
        _os_log_debug_impl(&dword_191750000, v16, OS_LOG_TYPE_DEBUG, "%{public}@: Changed device %{public}@ is %{public}@peer %{public}@%{public}@", buf, 0x34u);
        if (model)
        {
        }
      }

      v17 = [v13 activeTransportsForPeer:v15];
      if (([v8 statusFlags] & 0x100) != 0)
      {
        v20 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          idsDeviceIdentifier5 = [objc_opt_class() description];
          v40 = [v15 me];
          v41 = &stru_1F05B9908;
          if (v40)
          {
            v41 = @"pseudo ";
          }

          v52 = v41;
          identifier2 = [v15 identifier];
          model3 = [v15 model];
          if (model3)
          {
            v48 = MEMORY[0x1E696AEC0];
            model = [v15 model];
            v50 = model;
            v42 = [v48 stringWithFormat:@" (%@)"];
          }

          else
          {
            v42 = &stru_1F05B9908;
          }

          *buf = 138544130;
          *&buf[4] = idsDeviceIdentifier5;
          *&buf[12] = 2114;
          *&buf[14] = v52;
          *&buf[22] = 2114;
          v63 = identifier2;
          *v64 = 2114;
          *&v64[2] = v42;
          _os_log_debug_impl(&dword_191750000, v20, OS_LOG_TYPE_DEBUG, "%{public}@: Activating %{public}@peer %{public}@%{public}@ now recognizes sync protocol", buf, 0x2Au);
          if (model3)
          {
          }
        }

        if (([self transportType] & v17) == 0)
        {
          [self handshakeWithDuetSyncPeer:v15 orError:0];
        }
      }

      else if (([self transportType] & v17) != 0)
      {
        [v13 removeActiveTransports:objc_msgSend(self fromPeer:{"transportType"), v15}];
        v18 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          model3 = [objc_opt_class() description];
          v44 = [v15 me];
          v45 = &stru_1F05B9908;
          if (v44)
          {
            v45 = @"pseudo ";
          }

          identifier2 = v45;
          idsDeviceIdentifier5 = [v15 identifier];
          model4 = [v15 model];
          if (model4)
          {
            v49 = MEMORY[0x1E696AEC0];
            identifier = [v15 model];
            v50 = identifier;
            v47 = [v49 stringWithFormat:@" (%@)"];
          }

          else
          {
            v47 = &stru_1F05B9908;
          }

          *buf = 138544130;
          *&buf[4] = model3;
          *&buf[12] = 2114;
          *&buf[14] = identifier2;
          *&buf[22] = 2114;
          v63 = idsDeviceIdentifier5;
          *v64 = 2114;
          *&v64[2] = v47;
          _os_log_debug_impl(&dword_191750000, v18, OS_LOG_TYPE_DEBUG, "%{public}@: Unsupported %{public}@peer %{public}@%{public}@ no longer recognizes sync protocol", buf, 0x2Au);
          if (model4)
          {
          }
        }
      }

      v21 = [_DKSyncRapportCommonStorage deviceForPeer:];
      v22 = v21 == 0;

      if (v22)
      {
        v27 = [(_DKSyncRapportCommonStorage *)self clientForPeer:v15];
        if (v27)
        {
          [(_DKSyncRapportCommonStorage *)self removeClient:v27 forPeer:v15 retiring:0, v23, v24, v25, v26, v50, v51, v52, identifier2, idsDeviceIdentifier5, model3, v56, v57, v58, v59, v60, v61, *buf, *&buf[8], *&buf[16], v63, *v64, *&v64[8], *&v64[16], v65, v66, v67];
        }

        [v13 removeActiveTransports:objc_msgSend(self fromPeer:{"transportType"), v15}];
      }

      if ((changed & 2) != 0)
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
          v31 = [self transportType] & v30;
          if (v31)
          {
            [v13 removeActiveTransports:objc_msgSend(self fromPeer:{"transportType"), v15}];
          }

          [v15 setCompanion:v28 != 0];
          if (v31)
          {
            [v13 addActiveTransports:objc_msgSend(self toPeer:{"transportType"), v15}];
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

- (void)handleDeviceLost:(void *)lost
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (lost)
  {
    v5 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v5);

    idsDeviceIdentifier = [v4 idsDeviceIdentifier];

    if (idsDeviceIdentifier)
    {
      v7 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v23 = [objc_opt_class() description];
        idsDeviceIdentifier2 = [v4 idsDeviceIdentifier];
        identifier = [v4 identifier];
        *buf = 138543874;
        *&buf[4] = v23;
        *&buf[12] = 2114;
        *&buf[14] = idsDeviceIdentifier2;
        *&buf[22] = 2112;
        v46 = identifier;
        _os_log_debug_impl(&dword_191750000, v7, OS_LOG_TYPE_DEBUG, "%{public}@: Lost device %{public}@ with companion link identifier %@", buf, 0x20u);
      }

      v8 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v26 = [objc_opt_class() description];
        idsDeviceIdentifier3 = [v4 idsDeviceIdentifier];
        *buf = 138543874;
        *&buf[4] = v26;
        *&buf[12] = 2114;
        *&buf[14] = idsDeviceIdentifier3;
        *&buf[22] = 2112;
        v46 = v4;
        _os_log_debug_impl(&dword_191750000, v8, OS_LOG_TYPE_DEBUG, "%{public}@: Lost device %{public}@ is %@", buf, 0x20u);
      }

      v9 = +[_DKSyncPeerStatusTracker sharedInstance];
      idsDeviceIdentifier4 = [v4 idsDeviceIdentifier];
      v11 = [v9 peerWithIDSDeviceIdentifier:idsDeviceIdentifier4];

      v16 = [(_DKSyncRapportCommonStorage *)lost clientForPeer:v11];
      if (v16)
      {
        [(_DKSyncRapportCommonStorage *)lost removeClient:v16 forPeer:v11 retiring:0, v12, v13, v14, v15, v33, v34, v35, v37, v39, v41, v43, v44, *buf, *&buf[8], *&buf[16], v46, *v47, *&v47[8], *&v47[16], v48, v49, v50, v51, v52, v53, v54];
      }

      v17 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v42 = [objc_opt_class() description];
        idsDeviceIdentifier5 = [v4 idsDeviceIdentifier];
        v28 = [v11 me];
        v29 = &stru_1F05B9908;
        if (v28)
        {
          v29 = @"pseudo ";
        }

        v36 = v29;
        identifier2 = [v11 identifier];
        model = [v11 model];
        if (model)
        {
          v32 = MEMORY[0x1E696AEC0];
          model2 = [v11 model];
          v31 = [v32 stringWithFormat:@" (%@)", model2];
        }

        else
        {
          v31 = &stru_1F05B9908;
        }

        *buf = 138544386;
        *&buf[4] = v42;
        *&buf[12] = 2114;
        *&buf[14] = idsDeviceIdentifier5;
        *&buf[22] = 2114;
        v46 = v36;
        *v47 = 2114;
        *&v47[2] = identifier2;
        *&v47[10] = 2114;
        *&v47[12] = v31;
        _os_log_debug_impl(&dword_191750000, v17, OS_LOG_TYPE_DEBUG, "%{public}@: Lost device %{public}@ is %{public}@peer %{public}@%{public}@", buf, 0x34u);
        if (model)
        {
        }
      }

      v18 = [_DKSyncRapportCommonStorage deviceForPeer:];
      v19 = v18 == 0;

      if (v19)
      {
        [v9 removeActiveTransports:objc_msgSend(lost fromPeer:{"transportType"), v11}];
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

- (void)handleActivateWithError:(uint64_t)error
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (error)
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
        domain = [v3 domain];
        *buf = 138544130;
        v18 = v14;
        v19 = 2114;
        v20 = domain;
        v21 = 2048;
        code = [v3 code];
        v23 = 2112;
        v24 = v3;
        _os_log_error_impl(&dword_191750000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Failed to start Rapport: %{public}@:%lld (%@)", buf, 0x2Au);
      }

      *(error + 8) = 0;
      [*(error + 40) invalidate];
      v7 = *(error + 40);
      *(error + 40) = 0;

      [error setIsAvailable:0];
      v8 = +[_CDObservationCenter sharedInstance];
      [v8 postNotificationName:@"_DKRapportTransportAvailablityChangedNotification" userInfo:0 sender:error];
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

      v10 = *(error + 40);
      v11 = *MEMORY[0x1E69C6C08];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __55___DKSyncRapportCommonStorage_handleActivateWithError___block_invoke;
      v16[3] = &unk_1E73675F8;
      v16[4] = error;
      [v10 registerProfileID:v11 completion:v16];
      *(error + 8) = 1;
      [error setIsAvailable:1];
      v12 = +[_CDObservationCenter sharedInstance];
      [v12 postNotificationName:@"_DKRapportTransportAvailablityChangedNotification" userInfo:0 sender:error];
      *(error + 72) = 0x4020000000000000;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)handleBeaconWithRequest:(void *)request options:(void *)options responseHandler:
{
  v48 = *MEMORY[0x1E69E9840];
  v7 = a2;
  requestCopy = request;
  optionsCopy = options;
  if (self)
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
    myDeviceID = [self myDeviceID];
    if (myDeviceID)
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
          identifier = [v16 identifier];
          model = [v16 model];
          if (model)
          {
            v31 = MEMORY[0x1E696AEC0];
            model2 = [v16 model];
            v27 = v31;
            v30 = model2;
            v26 = [v27 stringWithFormat:@" (%@)", model2];
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
          v45 = identifier;
          v46 = 2114;
          v47 = v26;
          _os_log_debug_impl(&dword_191750000, v17, OS_LOG_TYPE_DEBUG, "%{public}@: Received beacon request from %{public}@peer %{public}@%{public}@", buf, 0x2Au);
          if (model)
          {
          }
        }

        if (v16)
        {
          [self handshakeWithDuetSyncPeer:v16 orError:0];
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
      v18 = myDeviceID = &stru_1F05B9908;
    }

    v38[0] = @"server";
    v38[1] = @"results";
    v39[0] = myDeviceID;
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

    optionsCopy[2](optionsCopy, v21, 0, v18);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)handleFetchSourceDeviceIDWithRequest:(void *)request options:(void *)options responseHandler:
{
  v29[7] = *MEMORY[0x1E69E9840];
  v7 = a2;
  requestCopy = request;
  optionsCopy = options;
  if (self)
  {
    v9 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v9);

    date = [MEMORY[0x1E695DF00] date];
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

    myDeviceID = [self myDeviceID];
    v14 = myDeviceID;
    if (myDeviceID)
    {
      v15 = 0;
      v28 = @"deviceID";
      v29[0] = myDeviceID;
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

    optionsCopy[2](optionsCopy, v21, 0, v15);
    if (date)
    {
      date2 = [MEMORY[0x1E695DF00] date];
      +[_DKSyncPowerlog recordWithSyncType:transportType:startDate:endDate:isEmpty:](_DKSyncPowerlog, "recordWithSyncType:transportType:startDate:endDate:isEmpty:", 0, [self transportType], date, date2, 0);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)handshakeWithDuetSyncPeer:(id)peer orError:(id)error
{
  v65 = *MEMORY[0x1E69E9840];
  peerCopy = peer;
  errorCopy = error;
  v8 = +[_DKSyncPeerStatusTracker sharedInstance];
  if (!errorCopy)
  {
    sourceDeviceID = [peerCopy sourceDeviceID];
    if (sourceDeviceID)
    {
      v25 = sourceDeviceID;
      version = [peerCopy version];
      if (version)
      {
        v27 = version;
        peerSourceDeviceIDsWithCompletedHandshakes = self->_peerSourceDeviceIDsWithCompletedHandshakes;
        sourceDeviceID2 = [peerCopy sourceDeviceID];
        LODWORD(peerSourceDeviceIDsWithCompletedHandshakes) = [(NSMutableSet *)peerSourceDeviceIDsWithCompletedHandshakes containsObject:sourceDeviceID2];

        if (peerSourceDeviceIDsWithCompletedHandshakes)
        {
          [v8 addActiveTransports:-[_DKSyncRapportCommonStorage transportType](self toPeer:{"transportType"), peerCopy}];
          date = [MEMORY[0x1E695DF00] date];
          [v8 setLastSeenDate:date onPeer:peerCopy];

          goto LABEL_22;
        }
      }

      else
      {
      }
    }

    date2 = [MEMORY[0x1E695DF00] date];
    v32 = MEMORY[0x1E696AEC0];
    identifier = [peerCopy identifier];
    v18 = [v32 stringWithFormat:@"handshake:%@", identifier];

    v34 = +[_DKThrottledActivity standardInstance];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __65___DKSyncRapportCommonStorage_handshakeWithDuetSyncPeer_orError___block_invoke;
    v47[3] = &unk_1E736A018;
    v47[4] = self;
    v48 = peerCopy;
    v49 = date2;
    v50 = v8;
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __65___DKSyncRapportCommonStorage_handshakeWithDuetSyncPeer_orError___block_invoke_156;
    v45[3] = &unk_1E736ACD8;
    v45[4] = self;
    v46 = v48;
    v35 = date2;
    [v34 performNoMoreOftenInMinutesThan:v18 name:v47 activityBlock:v45 throttleBlock:1.0];

LABEL_21:
    goto LABEL_22;
  }

  if ([errorCopy code] != -6714 || (objc_msgSend(errorCopy, "domain"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E69C6BC8]), v9, !v10))
  {
    v18 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [objc_opt_class() description];
      v20 = &stru_1F05B9908;
      if ([peerCopy me])
      {
        v21 = @"pseudo ";
      }

      else
      {
        v21 = &stru_1F05B9908;
      }

      identifier2 = [peerCopy identifier];
      model = [peerCopy model];
      if (model)
      {
        v39 = MEMORY[0x1E696AEC0];
        model2 = [peerCopy model];
        v20 = [v39 stringWithFormat:@" (%@)", model2];
      }

      domain = [errorCopy domain];
      *buf = 138544898;
      v52 = v19;
      v53 = 2114;
      v54 = v21;
      v55 = 2114;
      v56 = identifier2;
      v57 = 2114;
      v58 = v20;
      v59 = 2114;
      v60 = domain;
      v61 = 2048;
      code = [errorCopy code];
      v63 = 2112;
      v64 = errorCopy;
      _os_log_error_impl(&dword_191750000, v18, OS_LOG_TYPE_ERROR, "%{public}@: Failed while handshaking with %{public}@peer %{public}@%{public}@: %{public}@:%lld (%@)", buf, 0x48u);

      if (model)
      {
      }
    }

    goto LABEL_21;
  }

  v11 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v44 = [objc_opt_class() description];
    v12 = [peerCopy me];
    v13 = &stru_1F05B9908;
    v14 = @"pseudo ";
    if (!v12)
    {
      v14 = &stru_1F05B9908;
    }

    v42 = v14;
    identifier3 = [peerCopy identifier];
    model3 = [peerCopy model];
    if (model3)
    {
      v17 = MEMORY[0x1E696AEC0];
      model4 = [peerCopy model];
      v13 = [v17 stringWithFormat:@" (%@)", model4];
    }

    model5 = [peerCopy model];
    name = [peerCopy name];
    *buf = 138544642;
    v52 = v44;
    v53 = 2114;
    v54 = v42;
    v55 = 2114;
    v56 = identifier3;
    v57 = 2114;
    v58 = v13;
    v59 = 2114;
    v60 = model5;
    v61 = 2112;
    code = name;
    _os_log_impl(&dword_191750000, v11, OS_LOG_TYPE_INFO, "%{public}@: Unsupported %{public}@peer %{public}@%{public}@ failed to recognize sync protocol beacon: %{public}@ (%@)", buf, 0x3Eu);

    if (model3)
    {
    }
  }

  [v8 removeActiveTransports:-[_DKSyncRapportCommonStorage transportType](self fromPeer:{"transportType"), peerCopy}];
LABEL_22:

  v36 = *MEMORY[0x1E69E9840];
}

- (void)handleActivateCompanionLinkClient:(void *)client forPeer:(void *)peer error:
{
  v42 = *MEMORY[0x1E69E9840];
  v9 = a2;
  clientCopy = client;
  peerCopy = peer;
  if (self)
  {
    v12 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v12);

    v13 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v37 = [objc_opt_class() description];
      v20 = [clientCopy me];
      v21 = &stru_1F05B9908;
      if (v20)
      {
        v21 = @"pseudo ";
      }

      identifier2 = v21;
      identifier = [clientCopy identifier];
      model = [clientCopy model];
      if (model)
      {
        v28 = MEMORY[0x1E696AEC0];
        model2 = [clientCopy model];
        v32 = model2;
        v23 = [v28 stringWithFormat:@" (%@)"];
      }

      else
      {
        v23 = &stru_1F05B9908;
      }

      *buf = 138544130;
      *&buf[4] = v37;
      *&buf[12] = 2114;
      *&buf[14] = identifier2;
      *&buf[22] = 2114;
      v39 = identifier;
      *v40 = 2114;
      *&v40[2] = v23;
      _os_log_debug_impl(&dword_191750000, v13, OS_LOG_TYPE_DEBUG, "%{public}@: Handling client activate of %{public}@peer %{public}@%{public}@", buf, 0x2Au);
      if (model)
      {
      }
    }

    if (peerCopy)
    {
      v14 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v37 = [objc_opt_class() description];
        v24 = [clientCopy me];
        v25 = &stru_1F05B9908;
        if (v24)
        {
          v25 = @"pseudo ";
        }

        v35 = v25;
        identifier2 = [clientCopy identifier];
        model3 = [clientCopy model];
        if (model3)
        {
          v29 = MEMORY[0x1E696AEC0];
          identifier = [clientCopy model];
          v32 = identifier;
          v27 = [v29 stringWithFormat:@" (%@)"];
        }

        else
        {
          v27 = &stru_1F05B9908;
        }

        domain = [peerCopy domain];
        code = [peerCopy code];
        v34 = identifier;
        *buf = 138544898;
        *&buf[4] = v37;
        *&buf[12] = 2114;
        *&buf[14] = v35;
        *&buf[22] = 2114;
        v39 = identifier2;
        *v40 = 2114;
        *&v40[2] = v27;
        *&v40[10] = 2114;
        *&v40[12] = domain;
        *&v40[20] = 2048;
        *&v40[22] = code;
        *&v40[30] = 2112;
        v41 = peerCopy;
        _os_log_error_impl(&dword_191750000, v14, OS_LOG_TYPE_ERROR, "%{public}@: Failed client activate of %{public}@peer %{public}@%{public}@: %{public}@:%lld (%@)", buf, 0x48u);

        if (model3)
        {
        }
      }

      [(_DKSyncRapportCommonStorage *)self removeClient:v9 forPeer:clientCopy retiring:0, v15, v16, v17, v18, v32, v33, v34, v35, identifier2, v37, *buf, *&buf[8], *&buf[16], v39, *v40, *&v40[8], *&v40[16], *&v40[24], v41, v42, v43, v44, v45, v46, v47, v48];
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (id)transformResponseError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = *MEMORY[0x1E69C6BC8];
  if ([domain isEqualToString:*MEMORY[0x1E69C6BC8]])
  {
    code = [errorCopy code];

    if (code == -71156)
    {
      v7 = +[_DKSyncErrors temporaryFailure];

      goto LABEL_12;
    }
  }

  else
  {
  }

  domain2 = [errorCopy domain];
  if ([domain2 isEqualToString:v5])
  {
    code2 = [errorCopy code];

    v7 = errorCopy;
    if (code2 != -6722)
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

  v7 = errorCopy;
LABEL_12:

  return v7;
}

- (id)transformCaughtObject:(id)object existingError:(id)error
{
  v35[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  errorCopy = error;
  v7 = errorCopy;
  if (errorCopy)
  {
    v8 = errorCopy;
LABEL_5:
    v9 = v8;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objectCopy;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = +[_DKSyncErrors internalFailure];
    domain = [v13 domain];
    v15 = +[_DKSyncErrors internalFailure];
    code = [v15 code];
    v34 = *MEMORY[0x1E696A578];
    reason = [objectCopy reason];
    v18 = reason;
    v19 = @"Exception Caught";
    if (reason)
    {
      v19 = reason;
    }

    v35[0] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v9 = [v12 errorWithDomain:domain code:code userInfo:v20];
  }

  else
  {
    v21 = objc_opt_respondsToSelector();
    v22 = MEMORY[0x1E696ABC0];
    v13 = +[_DKSyncErrors internalFailure];
    domain = [v13 domain];
    v23 = +[_DKSyncErrors internalFailure];
    code2 = [v23 code];
    v25 = *MEMORY[0x1E696A578];
    if (v21)
    {
      v32 = *MEMORY[0x1E696A578];
      v26 = [objectCopy description];
      v27 = v26;
      v28 = @"Object Caught";
      if (v26)
      {
        v28 = v26;
      }

      v33 = v28;
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v9 = [v22 errorWithDomain:domain code:code2 userInfo:v29];
    }

    else
    {
      v30 = *MEMORY[0x1E696A578];
      v31 = @"Object Caught";
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v9 = [v22 errorWithDomain:domain code:code2 userInfo:v27];
    }
  }

LABEL_6:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)handleFetchSourceDeviceIDWithResponse:(void *)response options:(void *)options error:(void *)error peer:(void *)peer plStartDate:(void *)date completion:
{
  v61 = *MEMORY[0x1E69E9840];
  v13 = a2;
  responseCopy = response;
  optionsCopy = options;
  errorCopy = error;
  peerCopy = peer;
  dateCopy = date;
  if (self)
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

    if (optionsCopy)
    {
      if ([optionsCopy code] == -6714 && (objc_msgSend(optionsCopy, "domain"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isEqualToString:", *MEMORY[0x1E69C6BC8]), v19, v20))
      {
        v21 = +[_DKSyncPeerStatusTracker sharedInstance];
        [v21 removeActiveTransports:objc_msgSend(self fromPeer:{"transportType"), errorCopy}];
        v22 = 0;
        v23 = 0;
      }

      else
      {
        [self transformResponseError:optionsCopy];
        v22 = 0;
        v23 = 0;
        optionsCopy = v21 = optionsCopy;
      }
    }

    else
    {
      v24 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v47 = [objc_opt_class() description];
        if ([errorCopy me])
        {
          v31 = @"pseudo ";
        }

        else
        {
          v31 = &stru_1F05B9908;
        }

        identifier = [errorCopy identifier];
        model = [errorCopy model];
        if (model)
        {
          v35 = MEMORY[0x1E696AEC0];
          error = [errorCopy model];
          error = [v35 stringWithFormat:@" (%@)", error];
        }

        else
        {
          error = &stru_1F05B9908;
        }

        *buf = 138544386;
        v52 = v47;
        v53 = 2114;
        v54 = v31;
        v55 = 2114;
        v56 = identifier;
        v57 = 2114;
        v58 = error;
        v59 = 2112;
        v60 = v13;
        _os_log_debug_impl(&dword_191750000, v24, OS_LOG_TYPE_DEBUG, "%{public}@: Received fetch source device id response from %{public}@peer %{public}@%{public}@: %@", buf, 0x34u);
        if (model)
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
          uUIDString = [v23 UUIDString];
          v36 = [errorCopy me];
          v37 = &stru_1F05B9908;
          if (v36)
          {
            v37 = @"pseudo ";
          }

          v43 = v37;
          identifier2 = [errorCopy identifier];
          model2 = [errorCopy model];
          if (model2)
          {
            v42 = MEMORY[0x1E696AEC0];
            model3 = [errorCopy model];
            v38 = [v42 stringWithFormat:@" (%@)", model3];
            v41 = model3;
          }

          else
          {
            v38 = &stru_1F05B9908;
          }

          *buf = 138544386;
          v52 = v46;
          v53 = 2114;
          v54 = uUIDString;
          v55 = 2114;
          v56 = v43;
          v57 = 2114;
          v58 = identifier2;
          v59 = 2114;
          v60 = v38;
          v40 = v38;
          _os_log_debug_impl(&dword_191750000, v27, OS_LOG_TYPE_DEBUG, "%{public}@: Fetched source device id %{public}@ from %{public}@peer %{public}@%{public}@", buf, 0x34u);
          if (model2)
          {
          }
        }

        optionsCopy = 0;
      }

      else
      {
        optionsCopy = +[_DKSyncErrors invalidResponse];
        v23 = 0;
      }
    }

    if (peerCopy)
    {
      date = [MEMORY[0x1E695DF00] date];
      +[_DKSyncPowerlog recordWithSyncType:transportType:startDate:endDate:isEmpty:](_DKSyncPowerlog, "recordWithSyncType:transportType:startDate:endDate:isEmpty:", 0, [self transportType], peerCopy, date, 0);
    }

    if (dateCopy)
    {
      v29 = dateCopy[2];
      if (optionsCopy)
      {
        v29(dateCopy, 0, 0, optionsCopy);
      }

      else
      {
        v29(dateCopy, v23, v22, 0);
      }
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (BOOL)isTransportActiveForPeer:(id)peer
{
  peerCopy = peer;
  v5 = +[_DKSyncPeerStatusTracker sharedInstance];
  v6 = [v5 activeTransportsForPeer:peerCopy];

  LOBYTE(self) = ([(_DKSyncRapportCommonStorage *)self transportType]& v6) != 0;
  return self;
}

- (void)startRapport
{
  v28 = *MEMORY[0x1E69E9840];
  if (self)
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

    if (*(self + 32))
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
        v23[4] = self;
        [v5 setInvalidationHandler:v23];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __43___DKSyncRapportCommonStorage_startRapport__block_invoke_2;
        v22[3] = &unk_1E736AC38;
        v22[4] = self;
        [v5 setDeviceFoundHandler:v22];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __43___DKSyncRapportCommonStorage_startRapport__block_invoke_3;
        v21[3] = &unk_1E736AC60;
        v21[4] = self;
        [v5 setDeviceChangedHandler:v21];
        OUTLINED_FUNCTION_2_4();
        v17 = 3221225472;
        v18 = __43___DKSyncRapportCommonStorage_startRapport__block_invoke_4;
        v19 = &unk_1E736AC38;
        selfCopy = self;
        [v5 setDeviceLostHandler:v16];
        [(_DKSyncRapportCommonStorage *)self registerRequestIDsWithClient:v5];
        objc_storeStrong((self + 40), v5);
        OUTLINED_FUNCTION_0_1();
        v12 = 3221225472;
        v13 = __43___DKSyncRapportCommonStorage_startRapport__block_invoke_5;
        v14 = &unk_1E73675F8;
        selfCopy2 = self;
        [v5 activateWithCompletion:v11];
        goto LABEL_9;
      }

      v3 = +[_CDLogging syncChannel];
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      name = [objc_opt_class() description];
      *buf = 138543362;
      v25 = name;
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
      name = [OUTLINED_FUNCTION_29_3() name];
      *buf = 138543618;
      v25 = 0x1E7366000uLL;
      v26 = 2114;
      v27 = name;
      _os_log_fault_impl(&dword_191750000, v5, OS_LOG_TYPE_FAULT, "%{public}@: Warning, attempting to start transport %{public}@ with no device ID", buf, 0x16u);
    }

LABEL_7:
LABEL_9:
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)registerRequestIDsWithClient:(uint64_t)client
{
  if (client)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __60___DKSyncRapportCommonStorage_registerRequestIDsWithClient___block_invoke;
    v5[3] = &unk_1E736AC88;
    v5[4] = client;
    v3 = a2;
    [v3 registerRequestID:@"com.apple.coreduet.beacon" options:0 handler:v5];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __60___DKSyncRapportCommonStorage_registerRequestIDsWithClient___block_invoke_2;
    v4[3] = &unk_1E736AC88;
    v4[4] = client;
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
    activeDevices = [*(v1 + 40) activeDevices];
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
            objc_enumerationMutation(activeDevices);
          }

          v9 = *(8 * i);
          idsDeviceIdentifier = [v3 idsDeviceIdentifier];
          idsDeviceIdentifier2 = [v9 idsDeviceIdentifier];
          v12 = [idsDeviceIdentifier isEqualToString:idsDeviceIdentifier2];

          if (v12)
          {
            v9;
            goto LABEL_12;
          }
        }

        OUTLINED_FUNCTION_36();
        v6 = [activeDevices countByEnumeratingWithState:? objects:? count:?];
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

- (void)removeClient:(uint64_t)client forPeer:(uint64_t)peer retiring:(uint64_t)retiring
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
        model = [OUTLINED_FUNCTION_34_0() model];
        if (model)
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
        if (model)
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
      model = [OUTLINED_FUNCTION_34_0() model];
      if (model)
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

    idsDeviceIdentifier = [v42 idsDeviceIdentifier];
    [*(v39 + 48) setObject:0 forKeyedSubscript:idsDeviceIdentifier];
    [v41 invalidate];
  }

  v48 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_72_0();
}

- (void)sendRequestID:(id)d request:(id)request peer:(id)peer highPriority:(BOOL)priority options:(id)options responseHandler:(id)handler
{
  v87 = *MEMORY[0x1E69E9840];
  dCopy = d;
  requestCopy = request;
  peerCopy = peer;
  optionsCopy = options;
  handlerCopy = handler;
  v19 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v19);

  v20 = [(_DKSyncRapportCommonStorage *)self clientForPeer:peerCopy];
  if (v20)
  {
    v26 = v20;
    v28 = [_DKSyncRapportCommonStorage deviceForPeer:];
    [v26 setDestinationDevice:v28];

    destinationDevice = [v26 destinationDevice];

    if (destinationDevice)
    {
      [(_DKSyncRapportCommonStorage *)self sendRequestID:dCopy request:requestCopy peer:peerCopy client:v26 options:optionsCopy responseHandler:handlerCopy];
      goto LABEL_7;
    }

    v30 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      v67 = [objc_opt_class() description];
      v31 = [peerCopy me];
      v32 = &stru_1F05B9908;
      v33 = @"pseudo ";
      if (!v31)
      {
        v33 = &stru_1F05B9908;
      }

      model5 = v33;
      identifier = [peerCopy identifier];
      model = [peerCopy model];
      if (model)
      {
        v46 = MEMORY[0x1E696AEC0];
        model2 = [peerCopy model];
        v62 = model2;
        v32 = [v46 stringWithFormat:@" (%@)"];
      }

      LODWORD(buf) = 138544130;
      OUTLINED_FUNCTION_10_11();
      *(&v83 + 6) = model5;
      HIWORD(v83) = v47;
      v84 = identifier;
      v85 = v47;
      v86 = v32;
      _os_log_fault_impl(&dword_191750000, v30, OS_LOG_TYPE_FAULT, "%{public}@: Device disappeared for %{public}@peer %{public}@%{public}@", &buf, 0x2Au);
      if (model)
      {
      }
    }

    [(_DKSyncRapportCommonStorage *)self removeClient:v26 forPeer:peerCopy retiring:0, v48, v49, v50, v51, v62, v63, model2, model5, identifier, v67, v70, v71, v72, v73, selfCopy, v75, v76, v77, v78, v79, v80, v81, buf, v83, *(&v83 + 1), v84];
    if (handlerCopy)
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
        if ([peerCopy me])
        {
          v39 = @"pseudo ";
        }

        else
        {
          v39 = &stru_1F05B9908;
        }

        identifier2 = [peerCopy identifier];
        model3 = [peerCopy model];
        if (model3)
        {
          v42 = MEMORY[0x1E696AEC0];
          identifier = [peerCopy model];
          v38 = [v42 stringWithFormat:@" (%@)", identifier];
        }

        LODWORD(buf) = 138544130;
        OUTLINED_FUNCTION_10_11();
        *(&v83 + 6) = v39;
        HIWORD(v83) = v43;
        v84 = identifier2;
        v85 = v43;
        v86 = v38;
        _os_log_error_impl(&dword_191750000, v22, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create client for %{public}@peer %{public}@%{public}@", &buf, 0x2Au);
        if (model3)
        {
        }
      }

      if (handlerCopy)
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

    destinationDevice2 = [v26 destinationDevice];

    if (destinationDevice2)
    {
      OUTLINED_FUNCTION_2_4();
      v71 = 3221225472;
      v72 = __95___DKSyncRapportCommonStorage_sendRequestID_request_peer_highPriority_options_responseHandler___block_invoke;
      v73 = &unk_1E736AD28;
      selfCopy = self;
      v26 = v26;
      v75 = v26;
      v76 = peerCopy;
      v77 = optionsCopy;
      LOBYTE(v81) = priority;
      v78 = dCopy;
      v79 = requestCopy;
      v80 = handlerCopy;
      [v26 activateWithCompletion:&v70];

      goto LABEL_7;
    }

    v44 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      v69 = [objc_opt_class() description];
      v55 = &stru_1F05B9908;
      [peerCopy me];
      identifier3 = [peerCopy identifier];
      model4 = [peerCopy model];
      if (model4)
      {
        v58 = MEMORY[0x1E696AEC0];
        model5 = [peerCopy model];
        v55 = [v58 stringWithFormat:@" (%@)", model5];
      }

      LODWORD(buf) = 138544130;
      OUTLINED_FUNCTION_10_11();
      *(&v83 + 6) = v59;
      HIWORD(v83) = v60;
      v84 = identifier3;
      v85 = v60;
      v86 = v55;
      OUTLINED_FUNCTION_31_1(&dword_191750000, v44, v61, "%{public}@: Unable to determine device for %{public}@peer %{public}@%{public}@", &buf);
      if (model4)
      {
      }
    }

    [v26 invalidate];
    if (handlerCopy)
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

- (void)sendRequestID:(void *)d request:(void *)request peer:(void *)peer client:(void *)client options:(void *)options responseHandler:
{
  v66 = *MEMORY[0x1E69E9840];
  v51 = a2;
  dCopy = d;
  requestCopy = request;
  peerCopy = peer;
  clientCopy = client;
  optionsCopy = options;
  if (self)
  {
    v50 = requestCopy;
    v18 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v18);

    v19 = [clientCopy objectForKey:*MEMORY[0x1E69C6BD0]];

    v20 = @"enabled";
    if (!v19)
    {
      v20 = @"disabled";
    }

    v21 = v20;
    v22 = *MEMORY[0x1E69C6BB0];
    if (clientCopy)
    {
      v23 = [clientCopy mutableCopy];
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
      v40 = dCopy;
      v48 = [objc_opt_class() description];
      v29 = [requestCopy me];
      v30 = @"pseudo ";
      if (!v29)
      {
        v30 = &stru_1F05B9908;
      }

      v43 = v30;
      identifier = [requestCopy identifier];
      model = [requestCopy model];
      if (model)
      {
        v35 = MEMORY[0x1E696AEC0];
        model2 = [requestCopy model];
        [v35 stringWithFormat:@" (%@)", model2];
        objc_claimAutoreleasedReturnValue();
      }

      *buf = 138544642;
      OUTLINED_FUNCTION_10_11();
      v57 = v51;
      v58 = v36;
      dCopy = v40;
      v59 = v43;
      v60 = v36;
      v61 = identifier;
      v62 = v36;
      model4 = v37;
      v63 = v37;
      v64 = 2112;
      v65 = v40;
      _os_log_debug_impl(&dword_191750000, v25, OS_LOG_TYPE_DEBUG, "%{public}@: Starting to send request %{public}@ to %{public}@peer %{public}@%{public}@: %@", buf, 0x3Eu);
      if (model)
      {
      }
    }

    ++*(self + 56);
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __89___DKSyncRapportCommonStorage_sendRequestID_request_peer_client_options_responseHandler___block_invoke;
    v52[3] = &unk_1E736AD50;
    v52[4] = self;
    v26 = v21;
    v53 = v26;
    v55 = optionsCopy;
    v54 = peerCopy;
    [v54 sendRequestID:v51 request:dCopy destinationID:v22 options:v24 responseHandler:v52];
    v27 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v49 = [objc_opt_class() description];
      v31 = [requestCopy me];
      v32 = &stru_1F05B9908;
      if (v31)
      {
        v32 = @"pseudo ";
      }

      v45 = v32;
      identifier2 = [requestCopy identifier];
      model3 = [requestCopy model];
      if (model3)
      {
        v41 = MEMORY[0x1E696AEC0];
        model4 = [requestCopy model];
        v34 = [v41 stringWithFormat:@" (%@)", model4];
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
      v61 = identifier2;
      v62 = v38;
      v63 = v34;
      _os_log_debug_impl(&dword_191750000, v27, OS_LOG_TYPE_DEBUG, "%{public}@: Done sending request %{public}@ to %{public}@peer %{public}@%{public}@", buf, 0x34u);
      if (model3)
      {
      }
    }

    requestCopy = v50;
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)handleAvailabilityFailureWithPeer:(id)peer completion:(id)completion
{
  v54 = *MEMORY[0x1E69E9840];
  peerCopy = peer;
  completionCopy = completion;
  v8 = +[_DKSyncErrors internalFailure];
  if (![(_DKSyncRapportCommonStorage *)self isAvailable])
  {
    v9 = +[_DKSyncErrors temporaryFailure];

    v8 = v9;
  }

  idsDeviceIdentifier = [peerCopy idsDeviceIdentifier];

  v11 = 0x1E7366000uLL;
  v12 = "[_DKSyncRapportContextStorage handleFetchContextValuesWithRequest:options:responseHandler:]" + 52;
  if (!idsDeviceIdentifier)
  {
    model4 = +[_DKSyncErrors temporaryFailure];

    v13 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = [objc_opt_class() description];
      v15 = &stru_1F05B9908;
      [peerCopy me];
      identifier = [peerCopy identifier];
      model = [peerCopy model];
      if (model)
      {
        v18 = MEMORY[0x1E696AEC0];
        model2 = [peerCopy model];
        v15 = [v18 stringWithFormat:@" (%@)", model2];
      }

      OUTLINED_FUNCTION_16_7();
      OUTLINED_FUNCTION_23_5();
      _os_log_debug_impl(v19, v20, v21, v22, v23, 0x2Au);
      if (model)
      {
      }

      v12 = "uesWithRequest:options:responseHandler:]";
      v11 = 0x1E7366000uLL;
    }

    v24 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = [objc_opt_class() description];
      v26 = [peerCopy debugDescription];
      *buf = *(v12 + 346);
      selfCopy = v25;
      v52 = 2112;
      v53 = v26;
      OUTLINED_FUNCTION_23_5();
      _os_log_debug_impl(v27, v28, v29, v30, v31, 0x16u);
    }

    v8 = model4;
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
      [peerCopy me];
      identifier2 = [peerCopy identifier];
      model3 = [peerCopy model];
      if (model3)
      {
        v42 = MEMORY[0x1E696AEC0];
        model4 = [peerCopy model];
        v38 = [v42 stringWithFormat:@" (%@)", model4];
      }

      OUTLINED_FUNCTION_16_7();
      OUTLINED_FUNCTION_23_5();
      _os_log_debug_impl(v43, v44, v45, v46, v47, 0x2Au);
      if (model3)
      {
      }

      v12 = "[_DKSyncRapportContextStorage handleFetchContextValuesWithRequest:options:responseHandler:]" + 52;
      v11 = 0x1E7366000;
    }

    syncChannel = [*(v11 + 648) syncChannel];
    if (os_log_type_enabled(syncChannel, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      v41 = [OUTLINED_FUNCTION_29_3() debugDescription];
      *buf = *(v12 + 346);
      selfCopy = self;
      v52 = 2112;
      v53 = v41;
      _os_log_debug_impl(&dword_191750000, syncChannel, OS_LOG_TYPE_DEBUG, "%{public}@: Peer: %@", buf, 0x16u);
    }

    v8 = v33;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v8);
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
  name = [self name];
  name2 = [self name];
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
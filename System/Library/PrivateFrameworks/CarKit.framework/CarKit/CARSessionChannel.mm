@interface CARSessionChannel
- (BOOL)openChannelWithError:(id *)a3;
- (BOOL)sendChannelMessage:(id)a3 withDescription:(id)a4;
- (CARSessionChannel)initWithSession:(id)a3 channelType:(id)a4 channelID:(id)a5 withoutReply:(BOOL)a6 qualityOfService:(id)a7 streamPriority:(id)a8;
- (CARSessionChannel)initWithSession:(id)a3 channelType:(id)a4 channelID:(id)a5 withoutReply:(BOOL)a6 sendAsIs:(BOOL)a7 qualityOfService:(id)a8 streamPriority:(id)a9;
- (CARSessionChannelDelegate)channelDelegate;
- (id)_endpointValueForKey:(__CFString *)a3;
- (id)shortChannelType;
- (void)_channelInvalidated;
- (void)_channelQueue_closeChannel;
- (void)_channelQueue_invalidate;
- (void)_dataReceived:(id)a3;
- (void)_sendComplete;
- (void)closeChannel;
@end

@implementation CARSessionChannel

- (CARSessionChannel)initWithSession:(id)a3 channelType:(id)a4 channelID:(id)a5 withoutReply:(BOOL)a6 qualityOfService:(id)a7 streamPriority:(id)a8
{
  v9 = a6;
  v14 = *MEMORY[0x1E6962390];
  v15 = a8;
  v16 = a7;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = -[CARSessionChannel initWithSession:channelType:channelID:withoutReply:sendAsIs:qualityOfService:streamPriority:](self, "initWithSession:channelType:channelID:withoutReply:sendAsIs:qualityOfService:streamPriority:", v19, v18, v17, v9, [v18 isEqualToString:v14] ^ 1, v16, v15);

  return v20;
}

- (CARSessionChannel)initWithSession:(id)a3 channelType:(id)a4 channelID:(id)a5 withoutReply:(BOOL)a6 sendAsIs:(BOOL)a7 qualityOfService:(id)a8 streamPriority:(id)a9
{
  v30 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a8;
  v19 = a9;
  v31.receiver = self;
  v31.super_class = CARSessionChannel;
  v20 = [(CARSessionChannel *)&v31 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_session, a3);
    v22 = [v16 copy];
    channelType = v21->_channelType;
    v21->_channelType = v22;

    v24 = [v17 copy];
    channelID = v21->_channelID;
    v21->_channelID = v24;

    v21->_withoutReply = a6;
    v21->_sendAsIs = a7;
    objc_storeStrong(&v21->_qualityOfService, a8);
    objc_storeStrong(&v21->_streamPriority, a9);
    v26 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v27 = dispatch_queue_create("com.apple.carkit.SessionChannel", v26);
    channelQueue = v21->_channelQueue;
    v21->_channelQueue = v27;

    v21->_payloadCount = 0;
  }

  return v21;
}

- (BOOL)openChannelWithError:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__5;
  v13 = __Block_byref_object_dispose__5;
  v14 = 0;
  v5 = [(CARSessionChannel *)self channelQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__CARSessionChannel_openChannelWithError___block_invoke;
  block[3] = &unk_1E82FD350;
  block[4] = self;
  block[5] = &v9;
  block[6] = &v15;
  dispatch_sync(v5, block);

  v6 = *(v16 + 24);
  if (a3 && (v16[3] & 1) == 0)
  {
    *a3 = v10[5];
    v6 = *(v16 + 24);
  }

  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
  return v6 & 1;
}

void __42__CARSessionChannel_openChannelWithError___block_invoke(uint64_t a1)
{
  v51[1] = *MEMORY[0x1E69E9840];
  v2 = CarGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) shortChannelType];
    *buf = 138543362;
    v45 = v3;
    _os_log_impl(&dword_1C81FC000, v2, OS_LOG_TYPE_DEFAULT, "Attempting to start remote control session for channel %{public}@", buf, 0xCu);
  }

  v4 = (a1 + 32);
  v5 = [*(a1 + 32) session];
  v6 = [*(a1 + 32) channelType];
  v7 = [*(a1 + 32) channelID];
  v8 = [*(a1 + 32) withoutReply];
  v9 = [*(a1 + 32) sendAsIs];
  v10 = [*(a1 + 32) qualityOfService];
  v11 = [*(a1 + 32) streamPriority];
  v41 = a1;
  v13 = *(a1 + 40);
  v12 = a1 + 40;
  v14 = *(v13 + 8);
  obj = *(v14 + 40);
  v15 = [v5 createRemoteControlSession:v6 channelID:v7 withoutReply:v8 sendAsIs:v9 qualityOfService:v10 streamPriority:v11 error:&obj];
  objc_storeStrong((v14 + 40), obj);

  if (v15)
  {
    v16 = *v4;
    v17 = *v4;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __42__CARSessionChannel_openChannelWithError___block_invoke_20;
    v42[3] = &unk_1E82FBF70;
    v42[4] = v16;
    [v17 setInvalidationHandler:v42];
    v18 = *v4;
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v19)
    {
      v20 = v19(v15, _CRHandleRemoteControlEvent, v18);
      if (!v20)
      {
        v21 = CarGeneralLogging();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [*v4 shortChannelType];
          *buf = 138543362;
          v45 = v22;
          _os_log_impl(&dword_1C81FC000, v21, OS_LOG_TYPE_DEFAULT, "remoteControlSessionStart for channel %{public}@", buf, 0xCu);
        }

        v23 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v23)
        {
          v24 = v23(v15);
          if (!v24)
          {
            *(*v4 + 1) = v15;
            v25 = CarGeneralLogging();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v26 = [*v4 shortChannelType];
              v27 = [*v4 channelID];
              *buf = 138543618;
              v45 = v26;
              v46 = 2114;
              v47 = v27;
              _os_log_impl(&dword_1C81FC000, v25, OS_LOG_TYPE_DEFAULT, "Successfully opened remote control session for channel %{public}@ with clientUUID %{public}@", buf, 0x16u);
            }

            v28 = 1;
            goto LABEL_18;
          }
        }

        else
        {
          v24 = -12782;
        }

        v39 = CarGeneralLogging();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          __42__CARSessionChannel_openChannelWithError___block_invoke_cold_1(v4);
        }

        v40 = MEMORY[0x1E696ABC0];
        v48 = *MEMORY[0x1E696AA08];
        v31 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v24 userInfo:0];
        v49 = v31;
        v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
        v33 = v40;
        v34 = 6;
LABEL_17:
        v35 = [v33 errorWithDomain:@"com.apple.carkit.session" code:v34 userInfo:v32];
        v36 = *(*v12 + 8);
        v37 = *(v36 + 40);
        *(v36 + 40) = v35;

        [*v4 _channelQueue_closeChannel];
        v28 = 0;
LABEL_18:
        *(*(*(v41 + 48) + 8) + 24) = v28;

        return;
      }
    }

    else
    {
      v20 = -12782;
    }

    v29 = CarGeneralLogging();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      __42__CARSessionChannel_openChannelWithError___block_invoke_cold_2(v4);
    }

    v30 = MEMORY[0x1E696ABC0];
    v50 = *MEMORY[0x1E696AA08];
    v31 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v20 userInfo:0];
    v51[0] = v31;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
    v33 = v30;
    v34 = 5;
    goto LABEL_17;
  }

  v38 = CarGeneralLogging();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    __42__CARSessionChannel_openChannelWithError___block_invoke_cold_3(v4);
  }

  [*(v41 + 32) _channelQueue_closeChannel];
  *(*(*(v41 + 48) + 8) + 24) = 0;
}

uint64_t __42__CARSessionChannel_openChannelWithError___block_invoke_20(uint64_t a1)
{
  v2 = [*(a1 + 32) channelQueue];
  dispatch_assert_queue_V2(v2);

  v3 = *(a1 + 32);

  return [v3 _channelQueue_invalidate];
}

- (BOOL)sendChannelMessage:(id)a3 withDescription:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v8 = [(CARSessionChannel *)self channelQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__CARSessionChannel_sendChannelMessage_withDescription___block_invoke;
  v12[3] = &unk_1E82FD378;
  v12[4] = self;
  v13 = v7;
  v14 = v6;
  v15 = &v16;
  v9 = v6;
  v10 = v7;
  dispatch_sync(v8, v12);

  LOBYTE(self) = *(v17 + 24);
  _Block_object_dispose(&v16, 8);
  return self;
}

void __56__CARSessionChannel_sendChannelMessage_withDescription___block_invoke(void *a1)
{
  v3 = (a1 + 4);
  v2 = a1[4];
  if (!*(v2 + 8))
  {
    v10 = CarGeneralLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __56__CARSessionChannel_sendChannelMessage_withDescription___block_invoke_cold_3(v10);
    }

    goto LABEL_11;
  }

  ++*(v2 + 80);
  v4 = CarGeneralLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __56__CARSessionChannel_sendChannelMessage_withDescription___block_invoke_cold_1(v3);
  }

  v5 = a1[4];
  v6 = *(v5 + 8);
  v7 = a1[6];
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v8 || v8(v6, v7, _CRRemoteControlSendMessageCompletion, v5))
  {
    v10 = CarGeneralLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __56__CARSessionChannel_sendChannelMessage_withDescription___block_invoke_cold_2(v3);
    }

LABEL_11:

    v9 = 0;
    goto LABEL_12;
  }

  v9 = 1;
LABEL_12:
  *(*(a1[7] + 8) + 24) = v9;
}

- (void)closeChannel
{
  v3 = [(CARSessionChannel *)self channelQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__CARSessionChannel_closeChannel__block_invoke;
  block[3] = &unk_1E82FBF70;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)_channelQueue_closeChannel
{
  v3 = [(CARSessionChannel *)self channelQueue];
  dispatch_assert_queue_V2(v3);

  if (self->_remoteControlSession)
  {
    v4 = CarGeneralLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1C81FC000, v4, OS_LOG_TYPE_DEFAULT, "tearing down remote control session", v7, 2u);
    }

    remoteControlSession = self->_remoteControlSession;
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v6)
    {
      v6(remoteControlSession);
    }
  }
}

- (void)_channelQueue_invalidate
{
  v3 = [(CARSessionChannel *)self channelQueue];
  dispatch_assert_queue_V2(v3);

  if (self->_remoteControlSession)
  {
    v4 = CarGeneralLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1C81FC000, v4, OS_LOG_TYPE_DEFAULT, "invalidating remote control session", v8, 2u);
    }

    CMBaseObject = FigEndpointRemoteControlSessionGetCMBaseObject();
    if (CMBaseObject)
    {
      v6 = CMBaseObject;
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v7)
      {
        v7(v6);
      }
    }

    CFRelease(self->_remoteControlSession);
    self->_remoteControlSession = 0;
  }
}

- (id)shortChannelType
{
  v2 = [(CARSessionChannel *)self channelType];
  v3 = [v2 substringToIndex:8];

  return v3;
}

- (id)_endpointValueForKey:(__CFString *)a3
{
  if (self->_remoteControlSession)
  {
    v12 = 0;
    CMBaseObject = FigEndpointRemoteControlSessionGetCMBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v5 || ((v6 = v5(CMBaseObject, a3, *MEMORY[0x1E695E480], &v12), v6 != -12787) ? (v7 = v6 == 0) : (v7 = 1), !v7))
    {
      v8 = CarGeneralLogging();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [CARSessionChannel _endpointValueForKey:];
      }
    }

    v9 = v12;
  }

  else
  {
    v10 = CarGeneralLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CARSessionChannel _endpointValueForKey:];
    }

    v9 = 0;
  }

  return v9;
}

- (void)_dataReceived:(id)a3
{
  v4 = a3;
  v5 = [(CARSessionChannel *)self channelQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__CARSessionChannel__dataReceived___block_invoke;
  v7[3] = &unk_1E82FBE38;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __35__CARSessionChannel__dataReceived___block_invoke(uint64_t a1)
{
  v2 = CarGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __35__CARSessionChannel__dataReceived___block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 32) channelDelegate];
  if (v3)
  {
    v4 = v3;
    v5 = [*(a1 + 32) channelDelegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [*(a1 + 32) channelDelegate];
      [v7 channel:*(a1 + 32) didReceiveMessage:*(a1 + 40)];
    }
  }
}

- (void)_sendComplete
{
  v3 = [(CARSessionChannel *)self channelQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__CARSessionChannel__sendComplete__block_invoke;
  block[3] = &unk_1E82FBF70;
  block[4] = self;
  dispatch_async(v3, block);
}

void __34__CARSessionChannel__sendComplete__block_invoke(uint64_t a1)
{
  v2 = CarGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __34__CARSessionChannel__sendComplete__block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 32) channelDelegate];
  if (v3)
  {
    v4 = v3;
    v5 = [*(a1 + 32) channelDelegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [*(a1 + 32) channelDelegate];
      [v7 didSendMessageForChannel:*(a1 + 32)];
    }
  }
}

- (void)_channelInvalidated
{
  v3 = [(CARSessionChannel *)self channelQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__CARSessionChannel__channelInvalidated__block_invoke;
  block[3] = &unk_1E82FBF70;
  block[4] = self;
  dispatch_async(v3, block);
}

void __40__CARSessionChannel__channelInvalidated__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = CarGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) shortChannelType];
    v11 = 138543362;
    v12 = v3;
    _os_log_impl(&dword_1C81FC000, v2, OS_LOG_TYPE_DEFAULT, "Channel %{public}@ invalidated", &v11, 0xCu);
  }

  v4 = [*(a1 + 32) invalidationHandler];
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4);
  }

  [*(a1 + 32) setInvalidationHandler:0];
  v6 = [*(a1 + 32) channelDelegate];
  if (v6)
  {
    v7 = v6;
    v8 = [*(a1 + 32) channelDelegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [*(a1 + 32) channelDelegate];
      [v10 didCloseChannel:*(a1 + 32)];
    }
  }
}

- (CARSessionChannelDelegate)channelDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->channelDelegate);

  return WeakRetained;
}

void __42__CARSessionChannel_openChannelWithError___block_invoke_cold_1(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_4(a1) shortChannelType];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void __42__CARSessionChannel_openChannelWithError___block_invoke_cold_2(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_4(a1) shortChannelType];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void __42__CARSessionChannel_openChannelWithError___block_invoke_cold_3(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_4(a1) shortChannelType];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __56__CARSessionChannel_sendChannelMessage_withDescription___block_invoke_cold_1(id *a1)
{
  v1 = [*a1 shortChannelType];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void __56__CARSessionChannel_sendChannelMessage_withDescription___block_invoke_cold_2(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_4(a1) shortChannelType];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

- (void)_endpointValueForKey:.cold.1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  v3 = v0;
  _os_log_error_impl(&dword_1C81FC000, v1, OS_LOG_TYPE_ERROR, "failed to get endpoint value for key %@, error: %i", v2, 0x12u);
}

- (void)_endpointValueForKey:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1C81FC000, v0, OS_LOG_TYPE_ERROR, "no endpoint available, failed to get endpoint value for key %@", v1, 0xCu);
}

void __35__CARSessionChannel__dataReceived___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) shortChannelType];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __34__CARSessionChannel__sendComplete__block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) shortChannelType];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end
@interface CMCaptureFrameReceiver
+ (NSDictionary)availableFrameSenderEndpointsByPID;
+ (void)initialize;
- (CMCaptureFrameReceiver)initWithFrameSenderServerEndpoint:(id)endpoint frameReceiverHandler:(id)handler;
- (void)dealloc;
@end

@implementation CMCaptureFrameReceiver

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

+ (NSDictionary)availableFrameSenderEndpointsByPID
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__CMCaptureFrameReceiver_availableFrameSenderEndpointsByPID__block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  if (availableFrameSenderEndpointsByPID_initFrameSenderEndpoints != -1)
  {
    dispatch_once(&availableFrameSenderEndpointsByPID_initFrameSenderEndpoints, block);
  }

  if (availableFrameSenderEndpointsByPID_sIsEntitledToReceiveFrames != 1)
  {
    return 0;
  }

  os_unfair_lock_lock(&availableFrameSenderEndpointsByPID_sAvailableFrameSenderEndpointsByPIDLock);
  v2 = [availableFrameSenderEndpointsByPID_sAvailableFrameSenderEndpointsByPID copy];
  os_unfair_lock_unlock(&availableFrameSenderEndpointsByPID_sAvailableFrameSenderEndpointsByPIDLock);
  return v2;
}

void __60__CMCaptureFrameReceiver_availableFrameSenderEndpointsByPID__block_invoke(uint64_t a1)
{
  availableFrameSenderEndpointsByPID_sAvailableFrameSenderEndpointsByPID = objc_alloc_init(MEMORY[0x1E695DF90]);
  v2 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (v2)
  {
    v3 = v2;
    v4 = SecTaskCopyValueForEntitlement(v2, @"com.apple.private.cmcapture.frame-receiver", 0);
    if (v4)
    {
      v5 = v4;
      v6 = CFGetTypeID(v4);
      if (v6 == CFBooleanGetTypeID())
      {
        availableFrameSenderEndpointsByPID_sIsEntitledToReceiveFrames = CFBooleanGetValue(v5) != 0;
      }

      CFRelease(v5);
    }

    CFRelease(v3);
  }

  if (availableFrameSenderEndpointsByPID_sIsEntitledToReceiveFrames == 1)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __60__CMCaptureFrameReceiver_availableFrameSenderEndpointsByPID__block_invoke_2;
    v7[3] = &unk_1E798F8C0;
    v7[4] = *(a1 + 32);
    availableFrameSenderEndpointsByPID_sFrameSenderEndpointObserver = [[CMCaptureFrameSenderEndpointObserver alloc] initWithEndpointsChangedHandler:v7];
  }
}

void __60__CMCaptureFrameReceiver_availableFrameSenderEndpointsByPID__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__CMCaptureFrameReceiver_availableFrameSenderEndpointsByPID__block_invoke_3;
  v3[3] = &unk_1E798F898;
  v2 = *(a1 + 32);
  v3[4] = a2;
  v3[5] = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __60__CMCaptureFrameReceiver_availableFrameSenderEndpointsByPID__block_invoke_3(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = a1;
  obj = [*(a1 + 32) allKeys];
  v18 = [obj countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (v18)
  {
    v15 = *v26;
    v16 = v2;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v25 + 1) + 8 * i);
        v5 = [*(v17 + 32) objectForKeyedSubscript:v4];
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v6 = [v5 countByEnumeratingWithState:&v20 objects:v19 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = 0;
          v9 = *v21;
          do
          {
            for (j = 0; j != v7; ++j)
            {
              if (*v21 != v9)
              {
                objc_enumerationMutation(v5);
              }

              v11 = [[CMCaptureFrameSenderEndpoint alloc] initWithDictionary:*(*(&v20 + 1) + 8 * j)];
              if (v11)
              {
                v12 = v11;
                if (!v8)
                {
                  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
                }

                [v8 addObject:v12];
              }
            }

            v7 = [v5 countByEnumeratingWithState:&v20 objects:v19 count:16];
          }

          while (v7);
        }

        else
        {
          v8 = 0;
        }

        v2 = v16;
        if (v16)
        {
          [v16 setObject:v8 forKeyedSubscript:v4];
        }
      }

      v18 = [obj countByEnumeratingWithState:&v25 objects:v24 count:16];
    }

    while (v18);
  }

  os_unfair_lock_lock(&availableFrameSenderEndpointsByPID_sAvailableFrameSenderEndpointsByPIDLock);
  v13 = [v2 isEqual:availableFrameSenderEndpointsByPID_sAvailableFrameSenderEndpointsByPID];
  os_unfair_lock_unlock(&availableFrameSenderEndpointsByPID_sAvailableFrameSenderEndpointsByPIDLock);
  if ((v13 & 1) == 0)
  {
    [*(v17 + 40) willChangeValueForKey:@"availableFrameSenderEndpointsByPID"];
    os_unfair_lock_lock(&availableFrameSenderEndpointsByPID_sAvailableFrameSenderEndpointsByPIDLock);

    availableFrameSenderEndpointsByPID_sAvailableFrameSenderEndpointsByPID = [v2 copy];
    os_unfair_lock_unlock(&availableFrameSenderEndpointsByPID_sAvailableFrameSenderEndpointsByPIDLock);
    [*(v17 + 40) didChangeValueForKey:@"availableFrameSenderEndpointsByPID"];
  }
}

- (CMCaptureFrameReceiver)initWithFrameSenderServerEndpoint:(id)endpoint frameReceiverHandler:(id)handler
{
  endpoint = [endpoint endpoint];
  v8 = 0;
  if (handler)
  {
    if (endpoint)
    {
      v36.receiver = self;
      v36.super_class = CMCaptureFrameReceiver;
      v8 = [(CMCaptureFrameReceiver *)&v36 init];
      if (v8)
      {
        v9 = xpc_connection_create_from_endpoint([endpoint endpoint]);
        if (v9)
        {
          v10 = v9;
          v8->_connection = v9;
          v8->_endpointUniqueID = [endpoint endpointUniqueID];
          v8->_endpointAuditToken = [endpoint endpointAuditToken];
          v8->_endpointProxyAuditToken = [endpoint endpointProxyAuditToken];
          v8->_frameReceiverHandler = [handler copy];
          v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
          v12 = dispatch_queue_create("com.apple.cmio.frame-capture-receiver", v11);
          v8->_queue = v12;
          v8->_connectionIsValid = 1;
          xpc_connection_set_target_queue(v8->_connection, v12);
          v13 = getpid();
          objc_initWeak(&location, v8);
          handler[0] = MEMORY[0x1E69E9820];
          handler[1] = 3221225472;
          handler[2] = __81__CMCaptureFrameReceiver_initWithFrameSenderServerEndpoint_frameReceiverHandler___block_invoke;
          handler[3] = &unk_1E798F8E8;
          objc_copyWeak(&v34, &location);
          handler[4] = v10;
          xpc_connection_set_event_handler(v10, handler);
          xpc_connection_activate(v8->_connection);
          v8->_endpointPID = [endpoint endpointPID];
          if (dword_1EB58DE20)
          {
            v32 = 0;
            v31 = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v15 = xpc_dictionary_create(0, 0, 0);
          xpc_dictionary_set_string(v15, "call", "Ping");
          connection = v8->_connection;
          queue = v8->_queue;
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __81__CMCaptureFrameReceiver_initWithFrameSenderServerEndpoint_frameReceiverHandler___block_invoke_128;
          v22[3] = &unk_1E798F910;
          objc_copyWeak(&v23, &location);
          v24 = v13;
          v22[4] = v8;
          xpc_connection_send_message_with_reply(connection, v15, queue, v22);
          xpc_release(v15);
          objc_destroyWeak(&v23);
          if (dword_1EB58DE20)
          {
            v32 = 0;
            v31 = OS_LOG_TYPE_DEFAULT;
            v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v19 = v32;
            if (os_log_type_enabled(v18, v31))
            {
              v20 = v19;
            }

            else
            {
              v20 = v19 & 0xFFFFFFFE;
            }

            if (v20)
            {
              v25 = 136315651;
              v26 = "[CMCaptureFrameReceiver initWithFrameSenderServerEndpoint:frameReceiverHandler:]";
              v27 = 1025;
              v28 = v13;
              v29 = 2112;
              v30 = v8;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          objc_destroyWeak(&v34);
          objc_destroyWeak(&location);
        }

        else
        {

          return 0;
        }
      }
    }
  }

  return v8;
}

void __81__CMCaptureFrameReceiver_initWithFrameSenderServerEndpoint_frameReceiverHandler___block_invoke(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = MEMORY[0x1B26F2E20](a2);
  xpc_connection_get_pid(*(a1 + 32));
  if (v5 != MEMORY[0x1E69E9E98])
  {
    if (v5 != MEMORY[0x1E69E9E80])
    {
      goto LABEL_54;
    }

    string = xpc_dictionary_get_string(a2, "call");
    if (!string || strncmp("frame-output-notification", string, 0x19uLL))
    {
      goto LABEL_54;
    }

    value = xpc_dictionary_get_value(a2, "sample-buffer");
    if (!value)
    {
      goto LABEL_47;
    }

    v8 = value;
    v30 = 0;
    blockBufferOut = 0;
    formatDescriptionOut = 0;
    pixelBufferOut = 0;
    sampleBufferOut = 0;
    v9 = xpc_dictionary_get_value(value, "sample-buffer-basic-fields");
    if (v9)
    {
      v10 = v9;
      bytes_ptr = xpc_data_get_bytes_ptr(v9);
      if (bytes_ptr)
      {
        v12 = bytes_ptr;
        length = xpc_data_get_length(v10);
        HIDWORD(customBlockSource.AllocateBlock) = 0;
        *&customBlockSource.version = 0;
        customBlockSource.FreeBlock = cfr_bbufUtilXPCObjectReleaser;
        customBlockSource.refCon = v10;
        v14 = *MEMORY[0x1E695E480];
        if (CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], v12, length, 0, &customBlockSource, 0, length, 0, &blockBufferOut))
        {
          __81__CMCaptureFrameReceiver_initWithFrameSenderServerEndpoint_frameReceiverHandler___block_invoke_cold_1();
        }

        else
        {
          xpc_retain(v10);
          if (!FigRemote_CreateSampleBufferFromSerializedAtomDataBlockBuffer())
          {
            v15 = xpc_dictionary_get_value(v8, "sample-buffer-iosurface");
            if (!v15)
            {
              v16 = 0;
              goto LABEL_31;
            }

            v16 = IOSurfaceLookupFromXPCObject(v15);
            if (!v16)
            {
              __81__CMCaptureFrameReceiver_initWithFrameSenderServerEndpoint_frameReceiverHandler___block_invoke_cold_7();
              goto LABEL_31;
            }

            if (CVPixelBufferCreateWithIOSurface(v14, v16, 0, &pixelBufferOut))
            {
              __81__CMCaptureFrameReceiver_initWithFrameSenderServerEndpoint_frameReceiverHandler___block_invoke_cold_3();
            }

            else if (CMVideoFormatDescriptionCreateForImageBuffer(v14, pixelBufferOut, &formatDescriptionOut))
            {
              __81__CMCaptureFrameReceiver_initWithFrameSenderServerEndpoint_frameReceiverHandler___block_invoke_cold_4();
            }

            else
            {
              memset(&timingArrayOut, 0, sizeof(timingArrayOut));
              if (CMSampleBufferGetSampleTimingInfoArray(v30, 1, &timingArrayOut, 0))
              {
                __81__CMCaptureFrameReceiver_initWithFrameSenderServerEndpoint_frameReceiverHandler___block_invoke_cold_5();
              }

              else
              {
                if (!CMSampleBufferCreateForImageBuffer(v14, pixelBufferOut, 1u, 0, 0, formatDescriptionOut, &timingArrayOut, &sampleBufferOut))
                {
                  CMPropagateAttachments(v30, sampleBufferOut);
                  CFRelease(v30);
                  v30 = sampleBufferOut;
                  sampleBufferOut = 0;
LABEL_31:
                  v20 = 1;
LABEL_32:
                  if (blockBufferOut)
                  {
                    CFRelease(blockBufferOut);
                  }

                  if (v16)
                  {
                    CFRelease(v16);
                  }

                  goto LABEL_36;
                }

                __81__CMCaptureFrameReceiver_initWithFrameSenderServerEndpoint_frameReceiverHandler___block_invoke_cold_6();
              }
            }

LABEL_67:
            v20 = 0;
            goto LABEL_32;
          }

          __81__CMCaptureFrameReceiver_initWithFrameSenderServerEndpoint_frameReceiverHandler___block_invoke_cold_2();
        }

        v16 = 0;
        goto LABEL_67;
      }

      __81__CMCaptureFrameReceiver_initWithFrameSenderServerEndpoint_frameReceiverHandler___block_invoke_cold_8();
    }

    else
    {
      __81__CMCaptureFrameReceiver_initWithFrameSenderServerEndpoint_frameReceiverHandler___block_invoke_cold_9();
    }

    v20 = 1;
LABEL_36:
    if (pixelBufferOut)
    {
      CFRelease(pixelBufferOut);
    }

    if (formatDescriptionOut)
    {
      CFRelease(formatDescriptionOut);
    }

    if (sampleBufferOut)
    {
      CFRelease(sampleBufferOut);
    }

    v21 = v30;
    if (v20)
    {
      reply = xpc_dictionary_create_reply(a2);
      v23 = reply;
      if (v21)
      {
        xpc_dictionary_set_int64(reply, "errorReturn", 0);
        v24 = 1;
        goto LABEL_49;
      }

LABEL_48:
      xpc_dictionary_set_int64(v23, "errorReturn", -50);
      v24 = 0;
      v21 = 0;
LABEL_49:
      xpc_connection_send_message(*(a1 + 32), v23);
      xpc_release(v23);
      if (WeakRetained && v24)
      {
        (*(WeakRetained[2] + 16))();
      }

      if (v21)
      {
        CFRelease(v21);
      }

      goto LABEL_54;
    }

    if (v30)
    {
      CFRelease(v30);
    }

LABEL_47:
    v23 = xpc_dictionary_create_reply(a2);
    goto LABEL_48;
  }

  if (a2 == MEMORY[0x1E69E9E20])
  {
    xpc_connection_cancel(*(a1 + 32));
    if (!WeakRetained)
    {
      goto LABEL_54;
    }

    if (*(WeakRetained + 64) == 1)
    {
      if (dword_1EB58DE20)
      {
        LODWORD(blockBufferOut) = 0;
        LOBYTE(v30) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      xpc_connection_cancel(*(a1 + 32));
      *(WeakRetained + 64) = 0;
      (*(WeakRetained[2] + 16))(WeakRetained[2], 0);
    }
  }

  v17 = a2 != MEMORY[0x1E69E9E18] || WeakRetained == 0;
  if (!v17 && *(WeakRetained + 64) == 1)
  {
    if (dword_1EB58DE20)
    {
      LODWORD(blockBufferOut) = 0;
      LOBYTE(v30) = 0;
      v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    xpc_connection_cancel(*(a1 + 32));
    *(WeakRetained + 64) = 0;
    (*(WeakRetained[2] + 16))(WeakRetained[2], 0);
  }

LABEL_54:
}

void __81__CMCaptureFrameReceiver_initWithFrameSenderServerEndpoint_frameReceiverHandler___block_invoke_128(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (dword_1EB58DE20)
  {
    v23 = 0;
    v22 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (WeakRetained)
  {
    if (a2 && MEMORY[0x1B26F2E20](a2) != MEMORY[0x1E69E9E98])
    {
      pid = xpc_connection_get_pid(WeakRetained[3]);
      v7 = *(WeakRetained + 10) == pid ? 0 : pid;
      if (*(WeakRetained + 11) != v7)
      {
        [(xpc_connection_t *)WeakRetained willChangeValueForKey:@"endpointProxyPID"];
        if (dword_1EB58DE20)
        {
          v23 = 0;
          v22 = OS_LOG_TYPE_DEFAULT;
          v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v9 = v23;
          if (os_log_type_enabled(v8, v22))
          {
            v10 = v9;
          }

          else
          {
            v10 = v9 & 0xFFFFFFFE;
          }

          if (v10)
          {
            v11 = *(a1 + 48);
            v14 = 136315907;
            v15 = "[CMCaptureFrameReceiver initWithFrameSenderServerEndpoint:frameReceiverHandler:]_block_invoke";
            v16 = 1025;
            v17 = v11;
            v18 = 2112;
            v19 = WeakRetained;
            v20 = 1025;
            v21 = v7;
            LODWORD(v13) = 34;
            v12 = &v14;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        *(WeakRetained + 11) = v7;
        [*(a1 + 32) didChangeValueForKey:{@"endpointProxyPID", v12, v13}];
      }
    }
  }
}

- (void)dealloc
{
  connection = self->_connection;
  if (connection)
  {
    xpc_connection_cancel(connection);
  }

  dispatch_release(self->_queue);

  v4.receiver = self;
  v4.super_class = CMCaptureFrameReceiver;
  [(CMCaptureFrameReceiver *)&v4 dealloc];
}

@end
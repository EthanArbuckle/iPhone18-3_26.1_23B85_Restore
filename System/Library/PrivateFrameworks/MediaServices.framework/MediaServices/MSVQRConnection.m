@interface MSVQRConnection
+ (id)connectionWithDataSource:(id)a3 messageCoder:(id)a4;
+ (id)createFramerDefinitionWithIdentifier:(id)a3;
- (MSVQRConnection)initWithDataSource:(id)a3 messageCoder:(id)a4;
- (MSVQRConnectionDelegate)delegate;
- (MSVQRConnectionReportProtocol)report;
- (void)_clearState;
- (void)_connectionStateDidChangeWithError:(id)a3;
- (void)_createGroupSession;
- (void)_createQuicConnection;
- (void)_receiveNextMessage;
- (void)_sendPathWithCompletion:(id)a3;
- (void)_terminateWithError:(id)a3;
- (void)dealloc;
- (void)sendMessage:(id)a3;
- (void)session:(id)a3 didRegisterPluginAllocationInfo:(id)a4;
- (void)sessionDidJoinGroup:(id)a3 participantUpdate:(id)a4 error:(id)a5;
- (void)start;
- (void)stop;
@end

@implementation MSVQRConnection

- (MSVQRConnectionReportProtocol)report
{
  WeakRetained = objc_loadWeakRetained(&self->_report);

  return WeakRetained;
}

- (MSVQRConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_createQuicConnection
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = [(MSVQRConnection *)self dataSource];
  v4 = [v3 groupSessionIdentifier];
  v25 = [v4 UUIDString];

  v26 = [(MSVQRConnection *)self participantIdentifier];
  v5 = [(MSVQRConnection *)self queue];
  v6 = [(MSVQRConnection *)self dataSource];
  v7 = [v6 applicationProtocol];

  v8 = [(MSVQRConnection *)self dataSource];
  v9 = [v8 trustHandler];

  objc_initWeak(&location, self);
  v29[1] = MEMORY[0x1E69E9820];
  v29[2] = 3221225472;
  v29[3] = __40__MSVQRConnection__createQuicConnection__block_invoke;
  v29[4] = &unk_1E7982318;
  v24 = v7;
  v30 = v24;
  v10 = v9;
  v32 = v10;
  v11 = v5;
  v31 = v11;
  objc_copyWeak(&v33, &location);
  v12 = *MEMORY[0x1E6977EB8];
  quic_stream = nw_parameters_create_quic_stream();
  v14 = nw_parameters_copy_default_protocol_stack(quic_stream);
  nw_protocol_stack_clear_application_protocols(v14);
  v15 = [(MSVQRConnection *)self framerDefinition];
  options = nw_framer_create_options(v15);

  nw_protocol_stack_prepend_application_protocol(v14, options);
  v17 = [MEMORY[0x1E69A4868] augmentNetworkParametersForSession:v25 participantID:objc_msgSend(v26 parameters:{"integerValue"), quic_stream}];
  v18 = nw_connection_create(v17, quic_stream);
  [(MSVQRConnection *)self setConnection:v18];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __40__MSVQRConnection__createQuicConnection__block_invoke_4;
  handler[3] = &unk_1E7982340;
  objc_copyWeak(v29, &location);
  v19 = v18;
  v28 = v19;
  nw_connection_set_state_changed_handler(v19, handler);
  v20 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v36 = self;
    _os_log_impl(&dword_1AC81F000, v20, OS_LOG_TYPE_DEFAULT, "[MSVQRConnection] <%p> Starting QUIC connection.", buf, 0xCu);
  }

  v21 = [(MSVQRConnection *)self report];
  [v21 startEvent:@"Start QUIC" withParentEvent:@"Connection"];

  v22 = [(MSVQRConnection *)self queue];
  nw_connection_set_queue(v19, v22);

  nw_connection_start(v19);
  objc_destroyWeak(v29);

  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);

  v23 = *MEMORY[0x1E69E9840];
}

void __40__MSVQRConnection__createQuicConnection__block_invoke(id *a1, void *a2)
{
  v3 = a2;
  nw_quic_connection_set_max_datagram_frame_size();
  nw_quic_connection_set_initial_max_streams_bidirectional();
  nw_quic_connection_set_initial_max_streams_unidirectional();
  v4 = nw_quic_connection_copy_sec_protocol_options();
  sec_protocol_options_add_tls_application_protocol(v4, [a1[4] cStringUsingEncoding:4]);
  verify_block[0] = MEMORY[0x1E69E9820];
  verify_block[1] = 3221225472;
  verify_block[2] = __40__MSVQRConnection__createQuicConnection__block_invoke_2;
  verify_block[3] = &unk_1E79822F0;
  v7 = a1[6];
  v6 = a1[5];
  objc_copyWeak(&v8, a1 + 7);
  sec_protocol_options_set_verify_block(v4, verify_block, a1[5]);
  objc_destroyWeak(&v8);
}

void __40__MSVQRConnection__createQuicConnection__block_invoke_4(uint64_t a1, int a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (a2 <= 2)
    {
      if (a2 == 1)
      {
        if (v5)
        {
          v9 = nw_error_copy_cf_error(v5);
        }

        else
        {
          v9 = 0;
        }

        v18 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 134218242;
          v22 = WeakRetained;
          v23 = 2114;
          v24 = v9;
          _os_log_impl(&dword_1AC81F000, v18, OS_LOG_TYPE_DEFAULT, "[MSVQRConnection] <%p> Connection state .waiting. Error %{public}@", &v21, 0x16u);
        }

        v16 = MEMORY[0x1E696ABC0];
        v17 = @"NWConnection in waiting state.";
        goto LABEL_35;
      }

      if (a2 != 2)
      {
        goto LABEL_24;
      }

      v9 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }

      v21 = 134217984;
      v22 = WeakRetained;
      v12 = "[MSVQRConnection] <%p> Connection state .preparing";
    }

    else
    {
      if (a2 != 5)
      {
        if (a2 != 4)
        {
          if (a2 == 3)
          {
            v7 = *(a1 + 32);
            v8 = nw_protocol_copy_quic_connection_definition();
            v9 = nw_connection_copy_protocol_metadata(v7, v8);

            if (v9)
            {
              v10 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
              if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
              {
                v21 = 134217984;
                v22 = WeakRetained;
                _os_log_impl(&dword_1AC81F000, v10, OS_LOG_TYPE_DEFAULT, "[MSVQRConnection] <%p> Setting keep alive interval", &v21, 0xCu);
              }

              nw_quic_connection_set_keepalive();
            }

            v11 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v21 = 134217984;
              v22 = WeakRetained;
              _os_log_impl(&dword_1AC81F000, v11, OS_LOG_TYPE_DEFAULT, "[MSVQRConnection] <%p> Connection state .ready", &v21, 0xCu);
            }

            [WeakRetained _connectionStateDidChangeWithError:0];
            goto LABEL_36;
          }

LABEL_24:
          v9 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v21 = 134218240;
            v22 = WeakRetained;
            v23 = 1026;
            LODWORD(v24) = a2;
            v12 = "[MSVQRConnection] <%p> Connection state %{public}u";
            v13 = v9;
            v14 = 18;
            goto LABEL_26;
          }

LABEL_36:

          goto LABEL_37;
        }

        if (v5)
        {
          v9 = nw_error_copy_cf_error(v5);
        }

        else
        {
          v9 = 0;
        }

        v15 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 134218242;
          v22 = WeakRetained;
          v23 = 2114;
          v24 = v9;
          _os_log_impl(&dword_1AC81F000, v15, OS_LOG_TYPE_DEFAULT, "[MSVQRConnection] <%p> Connection state .failed. Error %{public}@", &v21, 0x16u);
        }

        v16 = MEMORY[0x1E696ABC0];
        v17 = @"NWConnection in failed state.";
LABEL_35:
        v19 = [v16 msv_errorWithDomain:@"MSVQRConnectionError" code:102 underlyingError:v9 debugDescription:v17];
        [WeakRetained _connectionStateDidChangeWithError:v19];

        goto LABEL_36;
      }

      v9 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }

      v21 = 134217984;
      v22 = WeakRetained;
      v12 = "[MSVQRConnection] <%p> Connection state .cancelled";
    }

    v13 = v9;
    v14 = 12;
LABEL_26:
    _os_log_impl(&dword_1AC81F000, v13, OS_LOG_TYPE_DEFAULT, v12, &v21, v14);
    goto LABEL_36;
  }

LABEL_37:

  v20 = *MEMORY[0x1E69E9840];
}

void __40__MSVQRConnection__createQuicConnection__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __40__MSVQRConnection__createQuicConnection__block_invoke_3;
  v13[3] = &unk_1E79822C8;
  v12 = v9;
  v14 = v12;
  objc_copyWeak(&v15, (a1 + 48));
  (*(v10 + 16))(v10, v7, v8, v11, v13);
  objc_destroyWeak(&v15);
}

void __40__MSVQRConnection__createQuicConnection__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  (*(*(a1 + 32) + 16))();
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _terminateWithError:v5];
  }
}

- (void)_receiveNextMessage
{
  location[3] = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  if ([(MSVQRConnection *)v2 state]== 3)
  {
    v3 = [(MSVQRConnection *)v2 connection];
    objc_sync_exit(v2);

    objc_initWeak(location, v2);
    completion[0] = MEMORY[0x1E69E9820];
    completion[1] = 3221225472;
    completion[2] = __38__MSVQRConnection__receiveNextMessage__block_invoke;
    completion[3] = &unk_1E79822A0;
    objc_copyWeak(&v7, location);
    nw_connection_receive_message(v3, completion);
    objc_destroyWeak(&v7);
    objc_destroyWeak(location);
    v2 = v3;
  }

  else
  {
    v4 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 134217984;
      *(location + 4) = v2;
      _os_log_impl(&dword_1AC81F000, v4, OS_LOG_TYPE_ERROR, "[MSVQRConnection] <%p> Cannot receive message because connection is not started.", location, 0xCu);
    }

    objc_sync_exit(v2);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __38__MSVQRConnection__receiveNextMessage__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v58 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v10 && (v12 = nw_error_copy_cf_error(v10)) != 0)
    {
      v13 = v12;
      [WeakRetained _terminateWithError:v12];
    }

    else
    {
      v14 = [WeakRetained framerDefinition];
      v15 = nw_content_context_copy_protocol_metadata(v9, v14);

      if (v15)
      {
        v16 = nw_framer_message_copy_object_value(v15, "Header");
        if (v16 && (_NSIsNSDictionary() & 1) != 0)
        {
          v17 = [v16 objectForKeyedSubscript:@"MessageTypeKey"];
          v18 = [v17 isEqualToString:@"Proto"];

          if (v18)
          {
            v46 = v8;
            v19 = [WeakRetained messageCoder];
            v20 = [v19 messageFromData:v46];

            v21 = [WeakRetained messageCoder];
            v22 = [v21 traceIdentifierForMessage:v20];
            v23 = v22;
            v24 = @"no-trace";
            if (v22)
            {
              v24 = v22;
            }

            v25 = v24;

            v26 = os_log_create("com.apple.amp.MediaServices", "QuickRelay_Oversize");
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218498;
              v53 = WeakRetained;
              v54 = 2112;
              v55 = v25;
              v56 = 2114;
              v57 = v20;
              _os_log_impl(&dword_1AC81F000, v26, OS_LOG_TYPE_DEFAULT, "[MSVQRConnection] <%p> Received message: [%@]%{public}@", buf, 0x20u);
            }

            v27 = [WeakRetained delegate];
            if (objc_opt_respondsToSelector())
            {
              v28 = [WeakRetained delegateQueue];
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __38__MSVQRConnection__receiveNextMessage__block_invoke_106;
              block[3] = &unk_1E79821B8;
              v49 = v27;
              v50 = WeakRetained;
              v51 = v20;
              dispatch_async(v28, block);
            }

            [WeakRetained _receiveNextMessage];
          }

          else
          {
            v32 = [v16 objectForKeyedSubscript:@"MessageTypeKey"];
            v33 = [v32 isEqualToString:@"Status"];

            if (v33)
            {
              v34 = [v16 objectForKeyedSubscript:@"StatusCodeKey"];
              v35 = [v34 unsignedIntValue];
              v36 = v35;

              if (v35 >= 0x11)
              {
                v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnexpectedRpcStatusCode-%ld", v35];
              }

              else
              {
                v47 = off_1E7982448[v35];
              }

              v37 = _MSVLogCategoryQuickRelay();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                v53 = WeakRetained;
                v54 = 2114;
                v55 = v47;
                _os_log_impl(&dword_1AC81F000, v37, OS_LOG_TYPE_DEFAULT, "[MSVQRConnection] <%p> Received status %{public}@.", buf, 0x16u);
              }

              v38 = v8;
              v39 = v38;
              if (v38)
              {
                v40 = MEMORY[0x1E696AEC0];
                v41 = v38;
                v42 = [v40 stringWithCString:-[__CFString bytes](v39 encoding:{"bytes"), 1}];
                if (v42)
                {
                  v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ - %@", v47, v42];

                  v47 = v43;
                }
              }

              v44 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MSVQRConnectionRPCError" code:v36 debugDescription:{@"%@", v47}];
              v45 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MSVQRConnectionError" code:200 underlyingError:v44 debugDescription:@"Received status code from QR server."];
              [WeakRetained _terminateWithError:v45];
            }
          }
        }

        else
        {
          v29 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MSVQRConnectionError" code:200 debugDescription:@"Message has no header."];
          [WeakRetained _terminateWithError:v29];
        }
      }

      else
      {
        v30 = os_log_create("com.apple.amp.MediaServices", "QuickRelay_Oversize");
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218243;
          v53 = WeakRetained;
          v54 = 2113;
          v55 = v8;
          _os_log_impl(&dword_1AC81F000, v30, OS_LOG_TYPE_DEFAULT, "[MSVQRConnection] <%p> Ignoring message from unknown protocol. Content: %{private}@", buf, 0x16u);
        }

        [WeakRetained _receiveNextMessage];
      }
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)_connectionStateDidChangeWithError:(id)a3
{
  v4 = a3;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__MSVQRConnection__connectionStateDidChangeWithError___block_invoke;
  v12[3] = &unk_1E7982250;
  v12[4] = self;
  v5 = MEMORY[0x1B26EC6C0](v12);
  v6 = [(MSVQRConnection *)self report];
  v7 = self;
  objc_sync_enter(v7);
  if ([(MSVQRConnection *)v7 state]== 2)
  {
    [v6 endEvent:@"Start QUIC" withError:v4];
  }

  objc_sync_exit(v7);

  if (((v5)[2](v5, v4) & 1) == 0)
  {
    [v6 startEvent:@"Send Path" withParentEvent:@"Connection"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__MSVQRConnection__connectionStateDidChangeWithError___block_invoke_2;
    v8[3] = &unk_1E7982278;
    v9 = v6;
    v10 = v7;
    v11 = v5;
    [(MSVQRConnection *)v7 _sendPathWithCompletion:v8];
  }
}

uint64_t __54__MSVQRConnection__connectionStateDidChangeWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  if ([*(a1 + 32) shouldTerminate])
  {
    [*(a1 + 32) _terminateWithError:0];
  }

  else
  {
    if (!v3)
    {
      v5 = 0;
      goto LABEL_6;
    }

    [*(a1 + 32) _terminateWithError:v3];
  }

  v5 = 1;
LABEL_6:
  objc_sync_exit(v4);

  return v5;
}

void __54__MSVQRConnection__connectionStateDidChangeWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) endEvent:@"Send Path" withError:v3];
  v4 = *(a1 + 40);
  objc_sync_enter(v4);
  if ((*(*(a1 + 48) + 16))())
  {
    objc_sync_exit(v4);
  }

  else
  {
    [*(a1 + 40) setState:3];
    objc_sync_exit(v4);

    [*(a1 + 32) endEvent:@"Connection"];
    [*(a1 + 40) _receiveNextMessage];
    v5 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      *buf = 134217984;
      v16 = v6;
      _os_log_impl(&dword_1AC81F000, v5, OS_LOG_TYPE_DEFAULT, "[MSVQRConnection] <%p> Started QR connection and registered for message handling.", buf, 0xCu);
    }

    v7 = [*(a1 + 40) delegate];
    if (objc_opt_respondsToSelector())
    {
      v8 = [*(a1 + 40) delegateQueue];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __54__MSVQRConnection__connectionStateDidChangeWithError___block_invoke_99;
      v12[3] = &unk_1E7982B28;
      v9 = v7;
      v10 = *(a1 + 40);
      v13 = v9;
      v14 = v10;
      dispatch_async(v8, v12);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_sendPathWithCompletion:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AFB0] UUID];
  v6 = [v5 UUIDString];

  v7 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [(MSVQRConnection *)self dataSource];
    v9 = [v8 rpcPath];
    *buf = 134218498;
    v29 = self;
    v30 = 2114;
    v31 = v9;
    v32 = 2114;
    v33 = v6;
    _os_log_impl(&dword_1AC81F000, v7, OS_LOG_TYPE_DEBUG, "[MSVQRConnection] <%p> Sending path %{public}@ with traceID: %{public}@", buf, 0x20u);
  }

  v10 = [(MSVQRConnection *)self dataSource];
  v11 = [v10 rpcPath];
  v12 = [v11 dataUsingEncoding:4];

  v13 = [v12 bytes];
  v14 = [v12 length];
  v15 = [(MSVQRConnection *)self queue];
  v16 = dispatch_data_create(v13, v14, v15, 0);

  v17 = nw_content_context_create("PathContext");
  v18 = [(MSVQRConnection *)self framerDefinition];
  message = nw_framer_protocol_create_message(v18);

  v26[0] = @"MessageTypeKey";
  v26[1] = @"TraceIdKey";
  v27[0] = @"Path";
  v27[1] = v6;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
  nw_framer_message_set_object_value(message, "Header", v20);

  nw_content_context_set_metadata_for_protocol(v17, message);
  v21 = [(MSVQRConnection *)self connection];
  completion[0] = MEMORY[0x1E69E9820];
  completion[1] = 3221225472;
  completion[2] = __43__MSVQRConnection__sendPathWithCompletion___block_invoke;
  completion[3] = &unk_1E7982228;
  v25 = v4;
  v22 = v4;
  nw_connection_send(v21, v16, v17, 1, completion);

  v23 = *MEMORY[0x1E69E9840];
}

void __43__MSVQRConnection__sendPathWithCompletion___block_invoke(uint64_t a1, nw_error_t error)
{
  if (error)
  {
    error = nw_error_copy_cf_error(error);
  }

  v3 = error;
  (*(*(a1 + 32) + 16))();
}

- (void)sessionDidJoinGroup:(id)a3 participantUpdate:(id)a4 error:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v29 = self;
    v30 = 2114;
    v31 = v10;
    _os_log_impl(&dword_1AC81F000, v11, OS_LOG_TYPE_DEFAULT, "[MSVQRConnection] <%p> Session did join group with error %{public}@", buf, 0x16u);
  }

  v12 = [(MSVQRConnection *)self guard];
  v13 = [v12 disarm];

  if (v13)
  {
    v14 = [(MSVQRConnection *)self report];
    [v14 endEvent:@"Join Group Session" withError:v10];
    [(MSVQRConnection *)self setGuard:0];
    if (v10)
    {
      v15 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MSVQRConnectionError" code:102 underlyingError:v10 debugDescription:@"GroupSession join failed with error."];
      [(MSVQRConnection *)self _terminateWithError:v15];
    }

    else
    {
      objc_initWeak(&location, self);
      v16 = [MSVBlockGuard alloc];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __63__MSVQRConnection_sessionDidJoinGroup_participantUpdate_error___block_invoke;
      v23[3] = &unk_1E7982200;
      v23[4] = self;
      objc_copyWeak(&v24, &location);
      v17 = [(MSVBlockGuard *)v16 initWithTimeout:v23 interruptionHandler:20.0];
      [(MSVQRConnection *)self setGuard:v17];

      [v14 startEvent:@"Register Plugin" withParentEvent:@"Connection"];
      v18 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v29 = self;
        _os_log_impl(&dword_1AC81F000, v18, OS_LOG_TYPE_DEFAULT, "[MSVQRConnection] <%p> Register plugin.", buf, 0xCu);
      }

      v26 = *MEMORY[0x1E69A4DA8];
      v19 = [(MSVQRConnection *)self dataSource];
      v20 = [v19 pluginIdentifier];
      v27 = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      [v8 registerPluginWithOptions:v21];

      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __63__MSVQRConnection_sessionDidJoinGroup_participantUpdate_error___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v6 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MSVQRConnectionError" code:102 debugDescription:@"Timed out waiting for plugin allocation."];
    v4 = [*(a1 + 32) report];
    [v4 endEvent:@"Register Plugin" withError:v6];

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _terminateWithError:v6];
  }
}

- (void)session:(id)a3 didRegisterPluginAllocationInfo:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = [a4 objectForKeyedSubscript:*MEMORY[0x1E69A4D98]];
  v6 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134218242;
    v13 = self;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_1AC81F000, v6, OS_LOG_TYPE_DEFAULT, "[MSVQRConnection] <%p> Registered plugin allocation info. Participant ID: %{public}@", &v12, 0x16u);
  }

  v7 = [(MSVQRConnection *)self guard];
  v8 = [v7 disarm];

  if (v8)
  {
    v9 = [(MSVQRConnection *)self report];
    [v9 endEvent:@"Register Plugin" withError:0];

    [(MSVQRConnection *)self setGuard:0];
    if (v5)
    {
      [(MSVQRConnection *)self setParticipantIdentifier:v5];
      [(MSVQRConnection *)self _createQuicConnection];
    }

    else
    {
      v10 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MSVQRConnectionError" code:102 debugDescription:@"Plugin info had no participant identifier."];
      [(MSVQRConnection *)self _terminateWithError:v10];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_createGroupSession
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = [(MSVQRConnection *)self dataSource];
  v4 = [v3 account];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69A4868]);
    v6 = [(MSVQRConnection *)self dataSource];
    v7 = [v6 account];
    v8 = [(MSVQRConnection *)self dataSource];
    v9 = [v8 groupSessionOptions];
    v10 = [v5 initWithAccount:v7 options:v9];
    [(MSVQRConnection *)self setSession:v10];

    v11 = [(MSVQRConnection *)self session];
    v12 = [(MSVQRConnection *)self queue];
    [v11 setDelegate:self queue:v12];

    objc_initWeak(&location, self);
    v13 = [MSVBlockGuard alloc];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __38__MSVQRConnection__createGroupSession__block_invoke;
    v25[3] = &unk_1E7982200;
    v25[4] = self;
    objc_copyWeak(&v26, &location);
    v14 = [(MSVBlockGuard *)v13 initWithTimeout:v25 interruptionHandler:20.0];
    [(MSVQRConnection *)self setGuard:v14];

    v15 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(MSVQRConnection *)self dataSource];
      v17 = [v16 groupSessionIdentifier];
      *buf = 134218242;
      v31 = self;
      v32 = 2114;
      v33 = v17;
      _os_log_impl(&dword_1AC81F000, v15, OS_LOG_TYPE_DEFAULT, "[MSVQRConnection] <%p> Joining group session with sessionID: %{public}@.", buf, 0x16u);
    }

    v18 = [(MSVQRConnection *)self report];
    [v18 startEvent:@"Join Group Session" withParentEvent:@"Connection"];

    v19 = [(MSVQRConnection *)self session];
    v28 = *MEMORY[0x1E69A5138];
    v20 = [MEMORY[0x1E695DEF0] data];
    v29 = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    [v19 joinWithOptions:v21];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
    v22 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v24 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MSVQRConnectionError" code:100 debugDescription:{@"No account in data source, cannot create group session."}];
    [(MSVQRConnection *)self _terminateWithError:v24];
    v23 = *MEMORY[0x1E69E9840];
  }
}

void __38__MSVQRConnection__createGroupSession__block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v6 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MSVQRConnectionError" code:102 debugDescription:@"Timed out waiting to join group session."];
    v4 = [*(a1 + 32) report];
    [v4 endEvent:@"Join Group Session" withError:v6];

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _terminateWithError:v6];
  }
}

- (void)_clearState
{
  v14 = *MEMORY[0x1E69E9840];
  [(MSVQRConnection *)self setGuard:0];
  v3 = [(MSVQRConnection *)self connection];

  if (v3)
  {
    v4 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134217984;
      v13 = self;
      _os_log_impl(&dword_1AC81F000, v4, OS_LOG_TYPE_DEFAULT, "[MSVQRConnection] <%p> Clear connection.", &v12, 0xCu);
    }

    v5 = [(MSVQRConnection *)self connection];
    nw_connection_set_state_changed_handler(v5, &__block_literal_global_4085);

    v6 = [(MSVQRConnection *)self connection];
    nw_connection_cancel(v6);

    [(MSVQRConnection *)self setConnection:0];
  }

  v7 = [(MSVQRConnection *)self session];

  if (v7)
  {
    v8 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134217984;
      v13 = self;
      _os_log_impl(&dword_1AC81F000, v8, OS_LOG_TYPE_DEFAULT, "[MSVQRConnection] <%p> Clear group session.", &v12, 0xCu);
    }

    v9 = [(MSVQRConnection *)self session];
    [v9 leaveGroupSession];

    v10 = [(MSVQRConnection *)self session];
    [v10 invalidate];

    [(MSVQRConnection *)self setSession:0];
  }

  [(MSVQRConnection *)self setShouldTerminate:0];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)_terminateWithError:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if ([(MSVQRConnection *)v5 state]== 1 || ![(MSVQRConnection *)v5 state])
  {
    objc_sync_exit(v5);
  }

  else
  {
    if ([(MSVQRConnection *)v5 state]== 2)
    {
      v6 = [(MSVQRConnection *)v5 report];
      [v6 endEvent:@"Connection" withError:v4];
    }

    [(MSVQRConnection *)v5 setState:1];
    objc_sync_exit(v5);

    v7 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v18 = v5;
      v19 = 2114;
      v20 = v4;
      _os_log_impl(&dword_1AC81F000, v7, OS_LOG_TYPE_DEFAULT, "[MSVQRConnection] <%p> Terminating with error %{public}@", buf, 0x16u);
    }

    if ([(MSVQRConnection *)v5 shouldTerminate])
    {
      v8 = 0;
    }

    else
    {
      v8 = v4;
    }

    v9 = v8;
    [(MSVQRConnection *)v5 _clearState];
    [(MSVQRConnection *)v5 setState:0];
    v10 = [(MSVQRConnection *)v5 delegate];
    if (objc_opt_respondsToSelector())
    {
      v11 = [(MSVQRConnection *)v5 delegateQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __39__MSVQRConnection__terminateWithError___block_invoke;
      block[3] = &unk_1E79821B8;
      v14 = v10;
      v15 = v5;
      v16 = v9;
      dispatch_async(v11, block);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)sendMessage:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"MSVQRConnection.m" lineNumber:183 description:{@"Invalid parameter not satisfying: %@", @"message"}];
  }

  v6 = self;
  objc_sync_enter(v6);
  if ([(MSVQRConnection *)v6 state]== 3)
  {
    v7 = [(MSVQRConnection *)v6 connection];
    objc_sync_exit(v6);

    v8 = [(MSVQRConnection *)v6 messageCoder];
    v9 = [v8 traceIdentifierForMessage:v5];
    v10 = v9;
    v11 = @"no-trace";
    if (v9)
    {
      v11 = v9;
    }

    v12 = v11;

    v13 = os_log_create("com.apple.amp.MediaServices", "QuickRelay_Oversize");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218499;
      v35 = v6;
      v36 = 2114;
      v37 = v12;
      v38 = 2113;
      v39 = v5;
      _os_log_impl(&dword_1AC81F000, v13, OS_LOG_TYPE_DEFAULT, "[MSVQRConnection] <%p> Sending message: [%{public}@]%{private}@", buf, 0x20u);
    }

    v14 = [(MSVQRConnection *)v6 messageCoder];
    v15 = [v14 dataFromMessage:v5];

    v16 = v15;
    v17 = [v15 bytes];
    v18 = [v15 length];
    v19 = [(MSVQRConnection *)v6 queue];
    v20 = dispatch_data_create(v17, v18, v19, 0);

    v21 = nw_content_context_create("MessageContext");
    v22 = [(MSVQRConnection *)v6 framerDefinition];
    message = nw_framer_protocol_create_message(v22);

    v32 = @"MessageTypeKey";
    v33 = @"Proto";
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    nw_framer_message_set_object_value(message, "Header", v24);

    nw_content_context_set_metadata_for_protocol(v21, message);
    objc_initWeak(buf, v6);
    completion[0] = MEMORY[0x1E69E9820];
    completion[1] = 3221225472;
    completion[2] = __31__MSVQRConnection_sendMessage___block_invoke;
    completion[3] = &unk_1E7982190;
    objc_copyWeak(&v31, buf);
    nw_connection_send(v7, v20, v21, 1, completion);
    objc_destroyWeak(&v31);
    objc_destroyWeak(buf);

    v6 = v7;
  }

  else
  {
    v25 = os_log_create("com.apple.amp.MediaServices", "QuickRelay_Oversize");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [(MSVQRConnection *)v6 state];
      if (v26 >= 4)
      {
        v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnexpectedState-%ld", v26];
      }

      else
      {
        v27 = off_1E7982428[v26];
      }

      *buf = 134218498;
      v35 = v6;
      v36 = 2114;
      v37 = v27;
      v38 = 2114;
      v39 = v5;
      _os_log_impl(&dword_1AC81F000, v25, OS_LOG_TYPE_ERROR, "[MSVQRConnection] <%p> Connection in state %{public}@ cannot send message: %{public}@", buf, 0x20u);
    }

    objc_sync_exit(v6);
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __31__MSVQRConnection_sendMessage___block_invoke(uint64_t a1, void *a2)
{
  error = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (error)
    {
      v4 = nw_error_copy_cf_error(error);
      if (v4)
      {
        v5 = v4;
        [WeakRetained _terminateWithError:v4];
      }
    }
  }
}

- (void)stop
{
  obj = self;
  objc_sync_enter(obj);
  if ([(MSVQRConnection *)obj state])
  {
    if ([(MSVQRConnection *)obj state]== 3)
    {
      [(MSVQRConnection *)obj _terminateWithError:0];
    }

    else
    {
      [(MSVQRConnection *)obj setShouldTerminate:1];
    }
  }

  objc_sync_exit(obj);
}

- (void)start
{
  v12 = *MEMORY[0x1E69E9840];
  obj = self;
  objc_sync_enter(obj);
  if ([(MSVQRConnection *)obj state])
  {
    objc_sync_exit(obj);
    v2 = *MEMORY[0x1E69E9840];
  }

  else
  {
    [(MSVQRConnection *)obj setState:2];
    objc_sync_exit(obj);

    v3 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(MSVQRConnection *)obj dataSource];
      *buf = 134218242;
      v9 = obj;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_1AC81F000, v3, OS_LOG_TYPE_DEFAULT, "[MSVQRConnection] <%p> Starting with data source: %@.", buf, 0x16u);
    }

    v5 = [(MSVQRConnection *)obj report];
    [v5 startEvent:@"Connection"];

    [(MSVQRConnection *)obj _createGroupSession];
    v6 = *MEMORY[0x1E69E9840];
  }
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v7 = self;
    _os_log_impl(&dword_1AC81F000, v3, OS_LOG_TYPE_DEFAULT, "[MSVQRConnection] <%p> Deallocating.", buf, 0xCu);
  }

  [(MSVQRConnection *)self _clearState];
  v5.receiver = self;
  v5.super_class = MSVQRConnection;
  [(MSVQRConnection *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (MSVQRConnection)initWithDataSource:(id)a3 messageCoder:(id)a4
{
  v8 = a3;
  v9 = a4;
  v23.receiver = self;
  v23.super_class = MSVQRConnection;
  v10 = [(MSVQRConnection *)&v23 init];
  if (v10)
  {
    if (v8)
    {
      if (v9)
      {
LABEL_4:
        v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v12 = dispatch_queue_create("com.apple.amp.mediaservices.MSVQRConnection.serialQueue", v11);
        queue = v10->_queue;
        v10->_queue = v12;

        v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v15 = dispatch_queue_create("com.apple.amp.mediaservices.MSVQRConnection.delegateQueue", v14);
        delegateQueue = v10->_delegateQueue;
        v10->_delegateQueue = v15;

        v10->_state = 0;
        v10->_shouldTerminate = 0;
        objc_storeStrong(&v10->_dataSource, a3);
        objc_storeStrong(&v10->_messageCoder, a4);
        v17 = [(MSVQRConnectionSessionDataSource *)v10->_dataSource applicationProtocol];
        v18 = [MSVQRConnection createFramerDefinitionWithIdentifier:v17];
        framerDefinition = v10->_framerDefinition;
        v10->_framerDefinition = v18;

        goto LABEL_5;
      }
    }

    else
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      [v21 handleFailureInMethod:a2 object:v10 file:@"MSVQRConnection.m" lineNumber:136 description:{@"Invalid parameter not satisfying: %@", @"dataSource"}];

      if (v9)
      {
        goto LABEL_4;
      }
    }

    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:v10 file:@"MSVQRConnection.m" lineNumber:137 description:{@"Invalid parameter not satisfying: %@", @"coder"}];

    goto LABEL_4;
  }

LABEL_5:

  return v10;
}

+ (id)createFramerDefinitionWithIdentifier:(id)a3
{
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __56__MSVQRConnection_createFramerDefinitionWithIdentifier___block_invoke;
  v12 = &__block_descriptor_48_e32_i16__0__NSObject_OS_nw_framer__8l;
  v13 = 4;
  v14 = a1;
  v3 = a3;
  v4 = MEMORY[0x1B26EC6C0](&v9);
  v5 = v3;
  v6 = [v5 cStringUsingEncoding:{4, v9, v10, v11, v12, v13, v14}];

  definition = nw_framer_create_definition(v6, 0, v4);

  return definition;
}

uint64_t __56__MSVQRConnection_createFramerDefinitionWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  nw_framer_set_cleanup_handler(v3, &__block_literal_global_129);
  nw_framer_set_wakeup_handler(v3, &__block_literal_global_131);
  nw_framer_set_stop_handler(v3, &__block_literal_global_134);
  input_handler[0] = MEMORY[0x1E69E9820];
  input_handler[1] = 3221225472;
  input_handler[2] = __56__MSVQRConnection_createFramerDefinitionWithIdentifier___block_invoke_5;
  input_handler[3] = &__block_descriptor_48_e32_Q16__0__NSObject_OS_nw_framer__8l;
  v4 = *(a1 + 40);
  input_handler[4] = *(a1 + 32);
  input_handler[5] = v4;
  nw_framer_set_input_handler(v3, input_handler);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__MSVQRConnection_createFramerDefinitionWithIdentifier___block_invoke_139;
  v7[3] = &__block_descriptor_48_e76_v36__0__NSObject_OS_nw_framer__8__NSObject_OS_nw_protocol_metadata__16Q24B32l;
  v5 = *(a1 + 32);
  v7[4] = *(a1 + 40);
  v7[5] = v5;
  nw_framer_set_output_handler(v3, v7);

  return 1;
}

uint64_t __56__MSVQRConnection_createFramerDefinitionWithIdentifier___block_invoke_5(uint64_t a1, void *a2)
{
  v12 = a2;
  v4 = MEMORY[0x1E69E9820];
  do
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__4138;
    v23 = __Block_byref_object_dispose__4139;
    v24 = 0;
    v5 = *(a1 + 32);
    parse[0] = v4;
    parse[1] = 3221225472;
    parse[2] = __56__MSVQRConnection_createFramerDefinitionWithIdentifier___block_invoke_135;
    parse[3] = &unk_1E79823A8;
    v17 = v5;
    v6 = v12;
    v14 = v6;
    v15 = &v19;
    v7 = *(a1 + 40);
    v16 = &v25;
    v18 = v7;
    if (nw_framer_parse_input(v6, v5, v5, 0, parse) && v20[5])
    {
      v8 = nw_framer_message_create(v6);
      nw_framer_message_set_object_value(v8, "Header", v20[5]);
      v9 = nw_framer_deliver_input_no_copy(v6, *(v26 + 6), v8, 1);
      v10 = v9;
      if (!v9)
      {
        v2 = 0;
      }
    }

    else
    {
      v10 = 0;
      v2 = *(a1 + 32);
    }

    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(&v25, 8);
  }

  while (v10);

  return v2;
}

void __56__MSVQRConnection_createFramerDefinitionWithIdentifier___block_invoke_139(uint64_t a1, void *a2, NSObject *a3, size_t a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = nw_framer_message_copy_object_value(a3, "Header");
  v9 = v8;
  if (v8)
  {
    v10 = [v8 objectForKeyedSubscript:@"MessageTypeKey"];
    v11 = [v10 isEqualToString:@"Proto"];

    if (v11)
    {
      v12 = bswap32(a4);
LABEL_12:
      *buf = v12;
      nw_framer_write_output(v7, buf, *(a1 + 40));
LABEL_13:
      nw_framer_write_output_no_copy(v7, a4);
      goto LABEL_14;
    }

    v18 = [v9 objectForKeyedSubscript:@"MessageTypeKey"];
    v19 = [v18 isEqualToString:@"Status"];

    if (v19)
    {
      v20 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1 + 32);
        *buf = 134217984;
        *&buf[4] = v21;
        _os_log_impl(&dword_1AC81F000, v20, OS_LOG_TYPE_ERROR, "[MSVQRConnection] <%p> Should not be sending status codes to server.", buf, 0xCu);
      }

      v22 = [v9 objectForKeyedSubscript:@"StatusCodeKey"];
      v23 = [v22 unsignedIntValue];

      v12 = bswap32(a4 | (v23 << 16) | 0x80000000);
      goto LABEL_12;
    }

    v25 = [v9 objectForKeyedSubscript:@"MessageTypeKey"];
    v26 = [v25 isEqualToString:@"Path"];

    if (v26)
    {
      v27 = [v9 objectForKeyedSubscript:@"TraceIdKey"];
      *output_buffer = bswap32(a4 + ((v27 != 0) << 15)) >> 16;
      nw_framer_write_output(v7, output_buffer, 2uLL);
      if (v27)
      {
        *buf = 0;
        *&buf[8] = 0;
        v28 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v27];
        [v28 getUUIDBytes:buf];

        nw_framer_write_output(v7, buf, 0x10uLL);
      }

      goto LABEL_13;
    }

    v13 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v29 = *(a1 + 32);
      *buf = 134218242;
      *&buf[4] = v29;
      *&buf[12] = 2114;
      *&buf[14] = v9;
      v15 = "[MSVQRConnection] <%p> Header did not contain valid message type %{public}@";
      v16 = v13;
      v17 = 22;
      goto LABEL_6;
    }
  }

  else
  {
    v13 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      *buf = 134217984;
      *&buf[4] = v14;
      v15 = "[MSVQRConnection] <%p> No header found on output message.";
      v16 = v13;
      v17 = 12;
LABEL_6:
      _os_log_impl(&dword_1AC81F000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
    }
  }

LABEL_14:
  v24 = *MEMORY[0x1E69E9840];
}

uint64_t __56__MSVQRConnection_createFramerDefinitionWithIdentifier___block_invoke_135(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v32[1] = *MEMORY[0x1E69E9840];
  if (!a2 || *(a1 + 56) > a3)
  {
    goto LABEL_6;
  }

  __memcpy_chk();
  v4 = bswap32(0);
  if ((v4 & 0x80000000) != 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = v4;
    v29[0] = @"MessageTypeKey";
    v29[1] = @"StatusCodeKey";
    v30[0] = @"Status";
    v6 = HIWORD(v4) & 0x7FFF;
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v6];
    v30[1] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 64);
      v13 = *(*(*(a1 + 48) + 8) + 24);
      *buf = 134218496;
      v24 = v12;
      v25 = 1024;
      v26 = v6;
      v27 = 1024;
      v28 = v13;
      v14 = "[MSVQRConnection] <%p> Parsed status - code: %d, len: %d";
      v15 = v11;
      v16 = 24;
LABEL_11:
      _os_log_impl(&dword_1AC81F000, v15, OS_LOG_TYPE_DEBUG, v14, buf, v16);
    }

LABEL_12:

    result = *(a1 + 56);
    goto LABEL_13;
  }

  if (v4 < 0xF4241)
  {
    v31 = @"MessageTypeKey";
    v32[0] = @"Proto";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v18 = *(*(a1 + 40) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    *(*(*(a1 + 48) + 8) + 24) = v4;
    v11 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v20 = *(a1 + 64);
      v21 = *(*(*(a1 + 48) + 8) + 24);
      *buf = 134218240;
      v24 = v20;
      v25 = 1024;
      v26 = v21;
      v14 = "[MSVQRConnection] <%p> Parsed proto - len: %d";
      v15 = v11;
      v16 = 18;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  nw_framer_mark_failed_with_error(*(a1 + 32), 22);
LABEL_6:
  result = 0;
LABEL_13:
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)connectionWithDataSource:(id)a3 messageCoder:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MSVQRConnection alloc] initWithDataSource:v6 messageCoder:v5];

  return v7;
}

@end
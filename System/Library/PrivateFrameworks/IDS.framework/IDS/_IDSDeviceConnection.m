@interface _IDSDeviceConnection
- (BOOL)updateConnectionWithOptions:(id)a3 error:(id *)a4;
- (NSDictionary)metrics;
- (_IDSDeviceConnection)initWithDevice:(id)a3 options:(id)a4 completionHandler:(id)a5 queue:(id)a6;
- (void)_cleanupCompletionBlock;
- (void)_close;
- (void)_connect;
- (void)_daemonDied:(id)a3;
- (void)close;
- (void)dealloc;
- (void)setStreamPairWithInputStream:(id)a3 outputStream:(id)a4;
- (void)xpcObject:(id)a3 objectContext:(id)a4;
@end

@implementation _IDSDeviceConnection

- (_IDSDeviceConnection)initWithDevice:(id)a3 options:(id)a4 completionHandler:(id)a5 queue:(id)a6
{
  v117 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  queue = a6;
  if (_IDSRunningInDaemon())
  {
    v13 = +[IDSLogging IDSDeviceConnection];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_195B26A7C();
    }

    goto LABEL_25;
  }

  kdebug_trace();
  v14 = +[IDSInternalQueueController sharedInstance];
  v15 = [v14 assertQueueIsCurrent];

  if (v15)
  {
    v16 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_195B30DA8();
    }
  }

  v17 = [MEMORY[0x1E696AD88] defaultCenter];
  [v17 addObserver:self selector:sel__daemonDied_ name:@"__kIDSDaemonDidDisconnectNotification" object:0];

  v104.receiver = self;
  v104.super_class = _IDSDeviceConnection;
  v18 = [(_IDSDeviceConnection *)&v104 init];
  v19 = v18;
  if (v18)
  {
    v18->_socket = -1;
    if (!v18->_awdMetrics)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      awdMetrics = v19->_awdMetrics;
      v19->_awdMetrics = Mutable;
    }

    v22 = +[_IDSDeviceConnectionActiveMap sharedInstance];
    v97 = [v22 getActiveConnectionCount];

    self = [v12 copy];
    if (queue)
    {
      if (!v10)
      {
        goto LABEL_20;
      }
    }

    else
    {
      queue = MEMORY[0x1E69E96A0];
      v23 = MEMORY[0x1E69E96A0];
      if (!v10)
      {
        goto LABEL_20;
      }
    }

    v24 = [v10 _internal];
    v25 = [v24 service];

    if (v25)
    {
      if (v97 < 31)
      {
        goto LABEL_28;
      }

      v26 = +[IDSLogging IDSDeviceConnection];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_195B30E48(v10);
      }

      v27 = @"Too many active connections. Client is leaking sockets.";
      v28 = 58;
LABEL_23:

      v29 = objc_alloc(MEMORY[0x1E695DF20]);
      v30 = [v29 initWithObjectsAndKeys:{v27, *MEMORY[0x1E696A578], 0}];
      v19 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:v28 userInfo:v30];

      if (v19)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_195A8641C;
        block[3] = &unk_1E743F110;
        v102 = v19;
        v103 = self;
        v13 = v19;
        self = self;
        dispatch_async(queue, block);

LABEL_25:
        v19 = 0;
LABEL_26:

        goto LABEL_27;
      }

LABEL_28:
      v96 = v12;
      v33 = [MEMORY[0x1E696AEC0] stringGUID];
      openSocketCompletionHandlerID = v19->_openSocketCompletionHandlerID;
      v19->_openSocketCompletionHandlerID = v33;

      v35 = [v10 _internal];
      v36 = [v35 nsuuid];
      v37 = [v36 UUIDString];
      nsuuid = v19->_nsuuid;
      v19->_nsuuid = v37;

      v39 = [v10 _internal];
      v19->_isDefaultPairedDevice = [v39 isDefaultPairedDevice];

      v40 = [v10 _internal];
      v41 = [v40 service];
      service = v19->_service;
      v19->_service = v41;

      v43 = [MEMORY[0x1E696AE30] processInfo];
      v44 = [v43 processName];
      clientName = v19->_clientName;
      v19->_clientName = v44;

      v46 = *MEMORY[0x1E69A4F18];
      v47 = [v11 objectForKey:*MEMORY[0x1E69A4F18]];

      if (v47)
      {
        v48 = [v11 objectForKey:v46];
        v49 = [v48 copy];
        connectionUUID = v19->_connectionUUID;
        v19->_connectionUUID = v49;
      }

      else
      {
        v51 = [MEMORY[0x1E696AEC0] stringGUID];
        v48 = v19->_connectionUUID;
        v19->_connectionUUID = v51;
      }

      key = *MEMORY[0x1E69A4F60];
      v13 = [v11 objectForKey:?];
      v95 = v46;
      if (v13)
      {
        v52 = [@"_" stringByAppendingString:v13];
      }

      else
      {
        v52 = [*MEMORY[0x1E69A4F58] copy];
      }

      streamName = v19->_streamName;
      v19->_streamName = v52;

      v54 = [MEMORY[0x1E696AEC0] stringGUID];
      serviceToken = v19->_serviceToken;
      v19->_serviceToken = v54;

      v56 = *MEMORY[0x1E69A4F10];
      v57 = [v11 objectForKey:*MEMORY[0x1E69A4F10]];

      if (v57)
      {
        v58 = [v11 objectForKey:v56];
        v59 = [v58 copy];
        p_clientTimeout = &v19->_clientTimeout;
        clientTimeout = v19->_clientTimeout;
        v19->_clientTimeout = v59;

        if ([(NSNumber *)v19->_clientTimeout intValue]> 9)
        {
LABEL_41:
          v65 = +[_IDSDeviceConnectionActiveMap sharedInstance];
          v66 = v19->_connectionUUID;
          v67 = [(_IDSDeviceConnection *)v19 deviceConnectionKey];
          [v65 setActiveConnection:v66 forKey:v67];

          v68 = +[IDSLogging IDSDeviceConnection];
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
          {
            socket = v19->_socket;
            v70 = v19->_streamName;
            v71 = v19->_connectionUUID;
            v72 = [v10 uniqueID];
            *buf = 134219522;
            v106 = v19;
            v107 = 1024;
            *v108 = socket;
            *&v108[4] = 2112;
            *&v108[6] = v11;
            v109 = 2112;
            v110 = v70;
            v111 = 2112;
            v112 = v71;
            v113 = 1024;
            v114 = v97;
            v115 = 2112;
            v116 = v72;
            _os_log_impl(&dword_1959FF000, v68, OS_LOG_TYPE_DEFAULT, "<%p> Init connection socket %d with options: %@ (streamName:%@, connectionUUID:%@ active connections:%d), device: %@", buf, 0x40u);
          }

          v73 = +[IDSDaemonController sharedInstance];
          v74 = [v73 listener];
          [v74 addHandler:v19];

          [(_IDSDeviceConnection *)v19 _connect];
          v75 = MEMORY[0x19A8BBEF0](self);
          openSocketCompletionHandler = v19->_openSocketCompletionHandler;
          v19->_openSocketCompletionHandler = v75;

          objc_storeStrong(&v19->_openSocketCompletionHandlerQueue, queue);
          v77 = [v11 objectForKey:*MEMORY[0x1E69A4F68]];
          v78 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v11];
          v79 = v78;
          v80 = v19->_openSocketCompletionHandlerID;
          if (v80)
          {
            CFDictionarySetValue(v78, @"completionHandlerID", v80);
          }

          if (*MEMORY[0x1E69A4EF0])
          {
            CFDictionarySetValue(v79, *MEMORY[0x1E69A4EF8], *MEMORY[0x1E69A4EF0]);
          }

          v81 = v19->_service;
          if (v81)
          {
            CFDictionarySetValue(v79, *MEMORY[0x1E69A4F50], v81);
          }

          v82 = v19->_streamName;
          if (v82)
          {
            CFDictionarySetValue(v79, key, v82);
          }

          v83 = [v10 _internal];
          v84 = [v83 uniqueID];

          if (v84)
          {
            CFDictionarySetValue(v79, *MEMORY[0x1E69A4F28], v84);
          }

          v85 = +[IDSDaemonController sharedInstance];
          v86 = [v85 listenerID];

          if (v86)
          {
            CFDictionarySetValue(v79, *MEMORY[0x1E69A4F00], v86);
          }

          v87 = v19->_clientName;
          if (v87)
          {
            CFDictionarySetValue(v79, *MEMORY[0x1E69A4F08], v87);
          }

          v88 = v19->_nsuuid;
          if (v88)
          {
            CFDictionarySetValue(v79, *MEMORY[0x1E69A4C28], v88);
          }

          v89 = [MEMORY[0x1E696AD98] numberWithBool:v19->_isDefaultPairedDevice];
          if (v89)
          {
            CFDictionarySetValue(v79, *MEMORY[0x1E69A4BD8], v89);
          }

          if (v77 && ![v77 integerValue])
          {
            v19->_mtu = 1378;
            [(__CFDictionary *)v79 setObject:@"udp" forKey:@"protocol"];
          }

          [(__CFDictionary *)v79 setObject:v19->_connectionUUID forKey:v95];
          v90 = +[IDSDaemonController sharedInstance];
          [v90 openSocketWithOptions:v79];

          v91 = dispatch_time(0, 1000000000 * [(NSNumber *)v19->_clientTimeout intValue]);
          v92 = +[IDSInternalQueueController sharedInstance];
          v93 = [v92 queue];
          v99[0] = MEMORY[0x1E69E9820];
          v99[1] = 3221225472;
          v99[2] = sub_195A86434;
          v99[3] = &unk_1E743E878;
          v19 = v19;
          v100 = v19;
          dispatch_after(v91, v93, v99);

          v12 = v96;
          goto LABEL_26;
        }

        v62 = +[IDSTransportLog IDSDeviceConnection];
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          v63 = v19->_clientTimeout;
          *buf = 134218242;
          v106 = v19;
          v107 = 2112;
          *v108 = v63;
          _os_log_impl(&dword_1959FF000, v62, OS_LOG_TYPE_DEFAULT, "<%p> The client passed the smaller timeout %@ than the default value. IDSDeviceConnection will use the default value.", buf, 0x16u);
        }
      }

      else
      {
        p_clientTimeout = &v19->_clientTimeout;
      }

      v64 = *p_clientTimeout;
      *p_clientTimeout = &unk_1F0A29930;

      goto LABEL_41;
    }

LABEL_20:
    v26 = +[IDSLogging IDSDeviceConnection];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_195B30F00(v10, v19);
    }

    v27 = @"Bad parameters. No valid IDSDevice found.";
    v28 = 20;
    goto LABEL_23;
  }

LABEL_27:

  v31 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:0 object:0];

  [(_IDSDeviceConnection *)self _close];
  v4 = +[IDSDaemonController sharedInstance];
  [v4 removeListenerID:self->_serviceToken];

  v5 = +[IDSDaemonController sharedInstance];
  v6 = [v5 listener];
  [v6 removeHandler:self];

  [(_IDSDeviceConnection *)self _cleanupCompletionBlock];
  v7.receiver = self;
  v7.super_class = _IDSDeviceConnection;
  [(_IDSDeviceConnection *)&v7 dealloc];
}

- (void)_connect
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v4 = [v3 assertQueueIsCurrent];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B30F9C();
    }
  }

  v6 = +[IDSDaemonController sharedInstance];
  v7 = [v6 hasListenerForID:self->_serviceToken];

  if ((v7 & 1) == 0)
  {
    v8 = +[IDSDaemonController sharedInstance];
    serviceToken = self->_serviceToken;
    v10 = [MEMORY[0x1E695DFD8] setWithObject:self->_service];
    LOBYTE(serviceToken) = [v8 addListenerID:serviceToken services:v10];

    if ((serviceToken & 1) == 0)
    {
      v11 = +[IDSLogging IDSDeviceConnection];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_195B3103C(self, &self->_serviceToken);
      }
    }
  }
}

- (NSDictionary)metrics
{
  awdMetrics = self->_awdMetrics;
  if (awdMetrics)
  {
    v41 = [(NSMutableDictionary *)awdMetrics objectForKeyedSubscript:*MEMORY[0x1E69A4B80]];
    v4 = [(NSMutableDictionary *)self->_awdMetrics objectForKeyedSubscript:*MEMORY[0x1E69A4B88]];
    v5 = [v4 BOOLValue];

    v6 = [(NSMutableDictionary *)self->_awdMetrics objectForKeyedSubscript:*MEMORY[0x1E69A4B60]];
    v7 = [(NSMutableDictionary *)self->_awdMetrics objectForKeyedSubscript:*MEMORY[0x1E69A4B68]];
    v8 = [(NSMutableDictionary *)self->_awdMetrics objectForKeyedSubscript:*MEMORY[0x1E69A4B78]];
    v38 = [(NSMutableDictionary *)self->_awdMetrics objectForKeyedSubscript:*MEMORY[0x1E69A4B70]];
    [v8 doubleValue];
    v10 = v9;
    v40 = v6;
    [v6 doubleValue];
    v12 = llround((v10 - v11) * 1000.0);
    v39 = v7;
    [v7 doubleValue];
    v14 = v13;
    [v6 doubleValue];
    v16 = llround((v14 - v15) * 1000.0);
    [v38 doubleValue];
    v18 = v17;
    [v8 doubleValue];
    v20 = llround((v18 - v19) * 1000.0);
    [v7 doubleValue];
    v22 = v21;
    [v38 doubleValue];
    v24 = llround((v22 - v23) * 1000.0);
    v37 = MEMORY[0x1E695DF20];
    v36 = *MEMORY[0x1E69A4BB0];
    v25 = [MEMORY[0x1E696AD98] numberWithBool:v5];
    v26 = *MEMORY[0x1E69A4BB8];
    v27 = [MEMORY[0x1E696AD98] numberWithLongLong:v12];
    v28 = *MEMORY[0x1E69A4B98];
    v29 = [MEMORY[0x1E696AD98] numberWithLongLong:v16];
    v30 = *MEMORY[0x1E69A4B90];
    v31 = [MEMORY[0x1E696AD98] numberWithLongLong:v20 & ~(v20 >> 63)];
    v32 = *MEMORY[0x1E69A4BA8];
    v33 = [MEMORY[0x1E696AD98] numberWithLongLong:v24];
    v34 = [v37 dictionaryWithObjectsAndKeys:{v41, v36, v25, v26, v27, v28, v29, v30, v31, v32, v33, *MEMORY[0x1E69A4BA0], 0}];
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (void)setStreamPairWithInputStream:(id)a3 outputStream:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = +[IDSInternalQueueController sharedInstance];
  v10 = [v9 assertQueueIsCurrent];

  if (v10)
  {
    v11 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_195B310B8();
    }
  }

  v12 = +[IDSLogging IDSDeviceConnection];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134218498;
    v19 = self;
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "<%p> Updating stream pair: %@:%@", &v18, 0x20u);
  }

  inputStreamForSocket = self->_inputStreamForSocket;
  if (inputStreamForSocket != v7)
  {
    [(NSInputStream *)inputStreamForSocket close];
    objc_storeStrong(&self->_inputStreamForSocket, a3);
  }

  outputStreamForSocket = self->_outputStreamForSocket;
  p_outputStreamForSocket = &self->_outputStreamForSocket;
  v14 = outputStreamForSocket;
  if (outputStreamForSocket != v8)
  {
    [(NSOutputStream *)v14 close];
    objc_storeStrong(p_outputStreamForSocket, a4);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (BOOL)updateConnectionWithOptions:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[IDSInternalQueueController sharedInstance];
  v8 = [v7 assertQueueIsCurrent];

  if (v8)
  {
    v9 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_195B31158();
    }
  }

  if (self->_socket < 0)
  {
    v17 = objc_alloc(MEMORY[0x1E695DF20]);
    v11 = [v17 initWithObjectsAndKeys:{@"Cannot change priority when not connected", *MEMORY[0x1E696A578], 0}];
    if (a4)
    {
      v14 = 0;
      *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:20 userInfo:v11];
      goto LABEL_24;
    }

LABEL_23:
    v14 = 0;
    goto LABEL_24;
  }

  v10 = [v6 objectForKey:*MEMORY[0x1E69A4BC0]];
  v11 = v10;
  if (!v10)
  {
    v18 = objc_alloc(MEMORY[0x1E695DF20]);
    v19 = [v18 initWithObjectsAndKeys:{@"Options dictionary contains no valid options", *MEMORY[0x1E696A578], 0}];
LABEL_20:
    v21 = v19;
    if (a4)
    {
      *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:29 userInfo:v19];
    }

    goto LABEL_23;
  }

  v12 = [v10 integerValue];
  if (v12 != 100 && v12 != 300 && v12 != 200)
  {
    v20 = objc_alloc(MEMORY[0x1E695DF20]);
    v19 = [v20 initWithObjectsAndKeys:{@"Invalid priority level specified", *MEMORY[0x1E696A578], 0}];
    goto LABEL_20;
  }

  v24 = TrafficClassForIDSOpenSocketPriorityLevel();
  v13 = setsockopt(self->_socket, 0xFFFF, 4230, &v24, 4u);
  v14 = v13 == 0;
  if (v13)
  {
    v15 = objc_alloc(MEMORY[0x1E695DF20]);
    v16 = [v15 initWithObjectsAndKeys:{@"Could not set traffic class for underlying socket", *MEMORY[0x1E696A578], 0}];
    if (a4)
    {
      *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:20 userInfo:v16];
    }
  }

  else
  {
    v16 = +[IDSTransportLog IDSDeviceConnection];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v26 = self;
      v27 = 1024;
      v28 = v24;
      _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "<%p> Updated socket traffic class: %d", buf, 0x12u);
    }
  }

LABEL_24:
  v22 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)close
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v4 = [v3 assertQueueIsCurrent];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B311F8();
    }
  }

  [(_IDSDeviceConnection *)self _close];
}

- (void)_close
{
  *&v36[13] = *MEMORY[0x1E69E9840];
  if (self->_socket < 0 && !self->_openSocketCompletionHandler)
  {
    goto LABEL_24;
  }

  v3 = [(_IDSDeviceConnection *)self deviceConnectionKey];
  v4 = +[_IDSDeviceConnectionActiveMap sharedInstance];
  v5 = [v4 hasActiveConnection:self->_connectionUUID forKey:v3];

  v6 = +[IDSTransportLog IDSDeviceConnection];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      socket = self->_socket;
      streamName = self->_streamName;
      *buf = 134218498;
      v34 = self;
      v35 = 1024;
      *v36 = socket;
      v36[2] = 2112;
      *&v36[3] = streamName;
      _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "<%p> Closing socket: %d (name %@)", buf, 0x1Cu);
    }

    v10 = MEMORY[0x1E695DF90];
    v11 = *MEMORY[0x1E69A4EF0];
    v12 = *MEMORY[0x1E69A4F50];
    v31[0] = *MEMORY[0x1E69A4EF8];
    v31[1] = v12;
    service = self->_service;
    v32[0] = v11;
    v32[1] = service;
    v14 = *MEMORY[0x1E69A4F60];
    v15 = *MEMORY[0x1E69A4F58];
    v16 = *MEMORY[0x1E69A4F08];
    v31[2] = *MEMORY[0x1E69A4F60];
    v31[3] = v16;
    clientName = self->_clientName;
    v32[2] = v15;
    v32[3] = clientName;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:4];
    v6 = [v10 dictionaryWithDictionary:v18];

    nsuuid = self->_nsuuid;
    if (nsuuid)
    {
      [v6 setObject:nsuuid forKey:*MEMORY[0x1E69A4C28]];
    }

    v20 = [MEMORY[0x1E696AD98] numberWithBool:self->_isDefaultPairedDevice];
    [v6 setObject:v20 forKey:*MEMORY[0x1E69A4BD8]];

    v21 = self->_streamName;
    if (v21)
    {
      [v6 setObject:v21 forKey:v14];
    }

    awdMetrics = self->_awdMetrics;
    if (awdMetrics)
    {
      v23 = [(NSMutableDictionary *)awdMetrics objectForKeyedSubscript:*MEMORY[0x1E69A4B68]];
      v24 = [(NSMutableDictionary *)self->_awdMetrics objectForKeyedSubscript:*MEMORY[0x1E69A4B88]];
      if (v23)
      {
        [v6 setObject:v23 forKey:*MEMORY[0x1E69A4EE0]];
      }

      if (v24)
      {
        [v6 setObject:v24 forKey:*MEMORY[0x1E69A4EE8]];
      }
    }

    [v6 setObject:self->_connectionUUID forKey:*MEMORY[0x1E69A4F18]];
    v25 = +[IDSDaemonController sharedInstance];
    [v25 closeSocketWithOptions:v6];

    v26 = +[_IDSDeviceConnectionActiveMap sharedInstance];
    [v26 removeActiveConnection:self->_connectionUUID forKey:v3];
    goto LABEL_19;
  }

  if (v7)
  {
    v26 = [(_IDSDeviceConnection *)self deviceConnectionKey];
    *buf = 134218242;
    v34 = self;
    v35 = 2112;
    *v36 = v26;
    _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "<%p> Closing socket: skipped, a new connection for this %@", buf, 0x16u);
LABEL_19:
  }

  inputStreamForSocket = self->_inputStreamForSocket;
  if (inputStreamForSocket)
  {
    [(NSInputStream *)inputStreamForSocket open];
    [(NSInputStream *)self->_inputStreamForSocket close];
    v28 = self->_inputStreamForSocket;
    self->_inputStreamForSocket = 0;

    [(NSOutputStream *)self->_outputStreamForSocket open];
    [(NSOutputStream *)self->_outputStreamForSocket close];
    outputStreamForSocket = self->_outputStreamForSocket;
    self->_outputStreamForSocket = 0;
  }

  else
  {
    close(self->_socket);
  }

  [(_IDSDeviceConnection *)self _cleanupCompletionBlock];
  self->_socket = -1;

LABEL_24:
  v30 = *MEMORY[0x1E69E9840];
}

- (void)xpcObject:(id)a3 objectContext:(id)a4
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKey:@"object-type"];
  v9 = [v8 isEqualToIgnoringCase:@"device-socket"];

  if (v9)
  {
    v10 = [v7 objectForKey:@"completionHandlerID"];
    v11 = [v7 objectForKey:@"metrics"];
    v12 = +[IDSLogging IDSDeviceConnection];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      openSocketCompletionHandlerID = self->_openSocketCompletionHandlerID;
      *buf = 134218498;
      *v52 = self;
      *&v52[8] = 2112;
      *&v52[10] = openSocketCompletionHandlerID;
      *&v52[18] = 2112;
      *&v52[20] = v10;
      _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_INFO, "<%p> World, id[%@] !=? id[%@]", buf, 0x20u);
    }

    if (![v10 isEqualToString:self->_openSocketCompletionHandlerID])
    {
      goto LABEL_43;
    }

    v14 = +[IDSLogging IDSDeviceConnection];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      *v52 = self;
      *&v52[8] = 2112;
      *&v52[10] = v6;
      *&v52[18] = 2112;
      *&v52[20] = v7;
      _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "<%p> xpc object: [%@] context: [%@]", buf, 0x20u);
    }

    if (v6)
    {
      v15 = xpc_fd_dup(v6);
    }

    else
    {
      v15 = -1;
    }

    self->_socket = v15;
    v16 = [v7 objectForKey:@"error"];
    v17 = +[IDSLogging IDSDeviceConnection];
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (!v18)
      {
        goto LABEL_16;
      }

      socket = self->_socket;
      *buf = 67109378;
      *v52 = socket;
      *&v52[4] = 2112;
      *&v52[6] = v16;
      v20 = "Received XPC Response/Socket: %d    Error: %@";
      v21 = v17;
      v22 = 18;
    }

    else
    {
      if (!v18)
      {
        goto LABEL_16;
      }

      v23 = self->_socket;
      *buf = 67109120;
      *v52 = v23;
      v20 = "Received XPC Response/Socket: %d";
      v21 = v17;
      v22 = 8;
    }

    _os_log_impl(&dword_1959FF000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
LABEL_16:

    v24 = +[IDSTransportLog IDSDeviceConnection];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v46 = v15;
      v25 = v11;
      v26 = self->_socket;
      if (v26 == -1)
      {
        v27 = @"NO";
      }

      else
      {
        v27 = @"YES";
      }

      if (v16)
      {
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error: %@", v16];
      }

      else
      {
        v28 = &stru_1F09E7B80;
      }

      v29 = self->_openSocketCompletionHandlerID;
      *buf = 134219010;
      *v52 = self;
      *&v52[8] = 1024;
      *&v52[10] = v26;
      *&v52[14] = 2112;
      *&v52[16] = v27;
      *&v52[24] = 2112;
      *&v52[26] = v28;
      v53 = 2112;
      v54 = v29;
      _os_log_impl(&dword_1959FF000, v24, OS_LOG_TYPE_DEFAULT, "<%p> Opened socket: %d (Success: %@) %@ (%@)", buf, 0x30u);
      if (v16)
      {
      }

      v11 = v25;
      v15 = v46;
    }

    if (!self->_awdMetrics)
    {
      goto LABEL_35;
    }

    if (v11)
    {
      v30 = [v11 mutableCopy];
      awdMetrics = self->_awdMetrics;
      self->_awdMetrics = v30;
    }

    if (v15 == -1)
    {
      v32 = self->_awdMetrics;
    }

    else
    {
      v32 = self->_awdMetrics;
      if (!self->_hasTimedOut)
      {
        v33 = *MEMORY[0x1E69A4B88];
        v34 = MEMORY[0x1E695E118];
LABEL_34:
        [(NSMutableDictionary *)v32 setObject:v34 forKeyedSubscript:v33];
        v35 = MEMORY[0x1E696AD98];
        ids_monotonic_time();
        v36 = [v35 numberWithDouble:?];
        [(NSMutableDictionary *)self->_awdMetrics setObject:v36 forKeyedSubscript:*MEMORY[0x1E69A4B68]];

LABEL_35:
        if (self->_hasTimedOut)
        {
          v37 = +[IDSTransportLog IDSDeviceConnection];
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v38 = self->_socket;
            *buf = 67109120;
            *v52 = v38;
            _os_log_impl(&dword_1959FF000, v37, OS_LOG_TYPE_DEFAULT, "Open socket request already timed out, closing %d.", buf, 8u);
          }

          [(_IDSDeviceConnection *)self close];
        }

        else
        {
          v39 = MEMORY[0x19A8BBEF0](self->_openSocketCompletionHandler);
          openSocketCompletionHandlerQueue = self->_openSocketCompletionHandlerQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_195A879B4;
          block[3] = &unk_1E7441280;
          v41 = v39;
          v49 = v41;
          v50 = v15;
          v48 = v16;
          dispatch_async(openSocketCompletionHandlerQueue, block);
          [(_IDSDeviceConnection *)self _cleanupCompletionBlock];
          if (v16)
          {
            v42 = +[_IDSDeviceConnectionActiveMap sharedInstance];
            connectionUUID = self->_connectionUUID;
            v44 = [(_IDSDeviceConnection *)self deviceConnectionKey];
            [v42 removeActiveConnection:connectionUUID forKey:v44];
          }
        }

LABEL_43:
        goto LABEL_44;
      }
    }

    v33 = *MEMORY[0x1E69A4B88];
    v34 = MEMORY[0x1E695E110];
    goto LABEL_34;
  }

LABEL_44:

  v45 = *MEMORY[0x1E69E9840];
}

- (void)_cleanupCompletionBlock
{
  openSocketCompletionHandler = self->_openSocketCompletionHandler;
  if (openSocketCompletionHandler)
  {
    self->_openSocketCompletionHandler = 0;
  }

  openSocketCompletionHandlerQueue = self->_openSocketCompletionHandlerQueue;
  if (openSocketCompletionHandlerQueue)
  {
    self->_openSocketCompletionHandlerQueue = 0;
  }

  openSocketCompletionHandlerID = self->_openSocketCompletionHandlerID;
  if (openSocketCompletionHandlerID)
  {
    self->_openSocketCompletionHandlerID = 0;
  }
}

- (void)_daemonDied:(id)a3
{
  v4 = +[IDSInternalQueueController sharedInstance];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A87B08;
  v5[3] = &unk_1E743E878;
  v5[4] = self;
  [v4 performBlock:v5];
}

@end
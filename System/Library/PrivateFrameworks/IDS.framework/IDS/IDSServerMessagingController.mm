@interface IDSServerMessagingController
- (IDSServerMessagingController)initWithTopic:(id)a3 commands:(id)a4 daemonController:(id)a5;
- (void)_failMessages;
- (void)_sendData:(id)a3 withOptions:(id)a4 identifier:(id)a5 completion:(id)a6;
- (void)_setupInterruptionHandler;
- (void)_setupXPC;
- (void)addDelegate:(id)a3;
- (void)cancelMessageWithIdentifier:(id)a3 completion:(id)a4;
- (void)handleReceivedFinalStorageIndication;
- (void)handleReceivedIncomingMessageData:(id)a3 identifier:(id)a4 context:(id)a5;
- (void)performXPC:(id)a3;
- (void)sendCertifiedDeliveryReceipt:(id)a3;
- (void)sendMessageData:(id)a3 withOptions:(id)a4 identifier:(id *)a5 completion:(id)a6;
- (void)sendServerStorageFetchWithCompletion:(id)a3;
@end

@implementation IDSServerMessagingController

- (IDSServerMessagingController)initWithTopic:(id)a3 commands:(id)a4 daemonController:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v24.receiver = self;
  v24.super_class = IDSServerMessagingController;
  v12 = [(IDSServerMessagingController *)&v24 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_topic, a3);
    objc_storeStrong(&v13->_commands, a4);
    v14 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    delegateMap = v13->_delegateMap;
    v13->_delegateMap = v14;

    objc_storeStrong(&v13->_daemonController, a5);
    v13->_daemonControllerLock._os_unfair_lock_opaque = 0;
    v16 = [MEMORY[0x1E696AEC0] stringGUID];
    uuid = v13->_uuid;
    v13->_uuid = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    inFlightRequests = v13->_inFlightRequests;
    v13->_inFlightRequests = v18;

    v13->_inFlightLock._os_unfair_lock_opaque = 0;
    v20 = [MEMORY[0x1E69A5270] IDSServerMessaging];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v13->_uuid;
      *buf = 138412546;
      v26 = v9;
      v27 = 2112;
      v28 = v21;
      _os_log_impl(&dword_1959FF000, v20, OS_LOG_TYPE_DEFAULT, "Client initialized IDSServerMessagingController with topic: %@ uuid: %@", buf, 0x16u);
    }

    [(IDSServerMessagingController *)v13 _setupInterruptionHandler];
    [(IDSServerMessagingController *)v13 _setupXPC];
  }

  v22 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)_setupInterruptionHandler
{
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A3F200;
  v7[3] = &unk_1E743EE18;
  objc_copyWeak(&v8, &location);
  v3 = MEMORY[0x19A8BBEF0](v7);
  os_unfair_lock_lock(&self->_daemonControllerLock);
  daemonController = self->_daemonController;
  if (daemonController)
  {
    [(IDSXPCDaemonController *)daemonController addInterruptionHandler:v3 forTarget:self];
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_195A3F2E4;
    v5[3] = &unk_1E743F8A0;
    v5[4] = self;
    v6 = v3;
    [IDSXPCDaemonController asyncWeakSharedInstance:v5];
  }

  os_unfair_lock_unlock(&self->_daemonControllerLock);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_setupXPC
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69A5270] IDSServerMessaging];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(IDSServerMessagingController *)self uuid];
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "Setting up xpc for client %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A3F4D4;
  v6[3] = &unk_1E743F0E8;
  objc_copyWeak(&v7, buf);
  [(IDSServerMessagingController *)self performXPC:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)performXPC:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_daemonControllerLock);
  daemonController = self->_daemonController;
  if (daemonController)
  {
    [(IDSXPCDaemonController *)daemonController performTask:v4];
  }

  else
  {
    [IDSXPCDaemonController performDaemonControllerTask:v4];
  }

  os_unfair_lock_unlock(&self->_daemonControllerLock);
}

- (void)_failMessages
{
  v28 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_inFlightLock);
  v3 = [(IDSServerMessagingController *)self inFlightRequests];
  v4 = [v3 copy];

  v5 = [(IDSServerMessagingController *)self inFlightRequests];
  [v5 removeAllObjects];

  os_unfair_lock_unlock(&self->_inFlightLock);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v20;
    *&v8 = 138412546;
    v18 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v6 objectForKeyedSubscript:{v12, v18, v19}];
        v14 = [[IDSServerMessagingOutgoingContext alloc] initWithIdentifier:v12];
        v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSServerMessagingErrorDomain" code:2 userInfo:0];
        v16 = [MEMORY[0x1E69A5270] IDSServerMessaging];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = v18;
          v24 = v12;
          v25 = 2112;
          v26 = v15;
          _os_log_error_impl(&dword_1959FF000, v16, OS_LOG_TYPE_ERROR, "Failing message due to xpc interruption {guid: %@, error: %@}", buf, 0x16u);
        }

        (v13)[2](v13, 0, v15, v14);
      }

      v9 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v9);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_sendData:(id)a3 withOptions:(id)a4 identifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_195A3F9F4;
  v18[3] = &unk_1E743F8F0;
  objc_copyWeak(&v23, &location);
  v14 = v10;
  v19 = v14;
  v15 = v11;
  v20 = v15;
  v16 = v12;
  v21 = v16;
  v17 = v13;
  v22 = v17;
  [(IDSServerMessagingController *)self performXPC:v18];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (void)addDelegate:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(IDSServerMessagingController *)self delegateMap];
  v6 = [v5 containsObject:v4];

  if ((v6 & 1) == 0)
  {
    v7 = [(IDSServerMessagingController *)self delegateMap];
    [v7 addObject:v4];

    v8 = [MEMORY[0x1E69A5270] IDSServerMessaging];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(IDSServerMessagingController *)self uuid];
      v10 = [(IDSServerMessagingController *)self delegateMap];
      v12 = 138412546;
      v13 = v9;
      v14 = 2048;
      v15 = [v10 count];
      _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Client added delegate to listen for incoming messages from server { uuid: %@, delegate count: %lu }", &v12, 0x16u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)sendMessageData:(id)a3 withOptions:(id)a4 identifier:(id *)a5 completion:(id)a6
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (!a5)
  {
    v13 = [MEMORY[0x1E696AEC0] stringGUID];
    goto LABEL_5;
  }

  if (*a5)
  {
    v13 = *a5;
LABEL_5:
    v14 = v13;
    goto LABEL_7;
  }

  v14 = [MEMORY[0x1E696AEC0] stringGUID];
  *a5 = v14;
LABEL_7:
  v15 = [MEMORY[0x1E69A5270] IDSServerMessaging];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(IDSServerMessagingController *)self uuid];
    v20 = 138412802;
    v21 = v16;
    v22 = 2112;
    v23 = v14;
    v24 = 2112;
    v25 = v11;
    _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "Client requested send { clientUUID: %@, guid: %@, options: %@ }", &v20, 0x20u);
  }

  os_unfair_lock_lock(&self->_inFlightLock);
  v17 = MEMORY[0x19A8BBEF0](v12);
  v18 = [(IDSServerMessagingController *)self inFlightRequests];
  [v18 setObject:v17 forKeyedSubscript:v14];

  os_unfair_lock_unlock(&self->_inFlightLock);
  [(IDSServerMessagingController *)self _sendData:v10 withOptions:v11 identifier:v14 completion:v12];

  v19 = *MEMORY[0x1E69E9840];
}

- (void)sendCertifiedDeliveryReceipt:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69A5270] IDSServerMessaging];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(IDSServerMessagingController *)self uuid];
    v7 = [v4 originalGUID];
    *buf = 138412802;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "Client requested certified delivery receipt { clientUUID: %@, guid: %@, context: %@ }", buf, 0x20u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A40170;
  v10[3] = &unk_1E743F918;
  v11 = v4;
  v8 = v4;
  [(IDSServerMessagingController *)self performXPC:v10];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)sendServerStorageFetchWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A4030C;
  v6[3] = &unk_1E743F968;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(IDSServerMessagingController *)self performXPC:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)cancelMessageWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A40674;
  v10[3] = &unk_1E743F990;
  objc_copyWeak(&v13, &location);
  v8 = v6;
  v11 = v8;
  v9 = v7;
  v12 = v9;
  [(IDSServerMessagingController *)self performXPC:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)handleReceivedIncomingMessageData:(id)a3 identifier:(id)a4 context:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v24 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E69A5270] IDSServerMessaging];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(IDSServerMessagingController *)self uuid];
    *buf = 138412802;
    v31 = v11;
    v32 = 2112;
    v33 = v24;
    v34 = 2112;
    v35 = v9;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "Client received incoming data { clientUUID: %@, guid: %@, context: %@ }", buf, 0x20u);
  }

  v12 = [(IDSServerMessagingController *)self delegateMap];
  v13 = [v12 count];

  if (v13)
  {
    v14 = [(IDSServerMessagingController *)self delegateMap];
    v15 = [v14 copy];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v26;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v25 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v22 = [MEMORY[0x1E69A5270] IDSServerMessaging];
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v31 = v24;
              v32 = 2048;
              v33 = v21;
              _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "Forwarding server message to delegate { guid: %@, delegate: %p }", buf, 0x16u);
            }

            [v21 controller:self receivedIncomingMessageData:v8 context:v9];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v18);
    }
  }

  else
  {
    v16 = [MEMORY[0x1E69A5270] IDSServerMessaging];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_195B2A06C();
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)handleReceivedFinalStorageIndication
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69A5270] IDSServerMessaging];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(IDSServerMessagingController *)self uuid];
    *buf = 138412290;
    v23 = v4;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "Client received final storage indication { clientUUID: %@ }", buf, 0xCu);
  }

  v5 = [(IDSServerMessagingController *)self delegateMap];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(IDSServerMessagingController *)self delegateMap];
    v8 = [v7 copy];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v15 = [MEMORY[0x1E69A5270] IDSServerMessaging];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              v23 = v14;
              _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "Forwarding server message to delegate { delegate: %p }", buf, 0xCu);
            }

            [v14 receivedIndicationOfEmptyServerStorageForController:self];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v9 = [MEMORY[0x1E69A5270] IDSServerMessaging];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_195B2A0D4(v9);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

@end
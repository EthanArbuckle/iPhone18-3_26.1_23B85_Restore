@interface MRCompanionLinkClient
+ (id)sharedCompanionLinkClient;
+ (id)sharedIDSCompanionLinkClient;
+ (void)rapportCompanionLinkClient:(id)a3;
- (NSArray)companionLinkDevices;
- (id)_resolveEventID:(id)a3;
- (id)deviceUIDForRapportUID:(id)a3;
- (id)nameForUID:(id)a3;
- (id)rapportUIDForDeviceUID:(id)a3;
- (id)registerEvent:(id)a3 callback:(id)a4;
- (id)registerRequest:(id)a3 callback:(id)a4;
- (void)_enqueueEvent:(id)a3 userInfo:(id)a4 destination:(id)a5 uid:(id)a6;
- (void)_enqueueRequest:(id)a3 userInfo:(id)a4 destination:(id)a5 uid:(id)a6 date:(id)a7 response:(id)a8;
- (void)_handleEventID:(id)a3 event:(id)a4 options:(id)a5;
- (void)_handleRequestID:(id)a3 request:(id)a4 options:(id)a5 response:(id)a6;
- (void)_registerEvent:(id)a3;
- (void)_registerRequest:(id)a3;
- (void)_sendEvent:(id)a3 userInfo:(id)a4 destination:(id)a5 uid:(id)a6;
- (void)_sendRequest:(id)a3 userInfo:(id)a4 destination:(id)a5 uid:(id)a6 date:(id)a7 response:(id)a8;
- (void)removeCallback:(id)a3;
- (void)sendEvent:(id)a3 destination:(id)a4 userInfo:(id)a5;
- (void)sendEvent:(id)a3 toDevicesOfHomeUser:(id)a4 userInfo:(id)a5;
- (void)sendRequest:(id)a3 destination:(id)a4 userInfo:(id)a5 timeout:(double)a6 response:(id)a7;
- (void)setConnection:(id)a3;
@end

@implementation MRCompanionLinkClient

+ (id)sharedCompanionLinkClient
{
  if (sharedCompanionLinkClient_onceToken != -1)
  {
    +[MRCompanionLinkClient sharedCompanionLinkClient];
  }

  v3 = sharedCompanionLinkClient___connection;

  return v3;
}

void __50__MRCompanionLinkClient_sharedCompanionLinkClient__block_invoke()
{
  v0 = [[MRCompanionLinkClient alloc] initWithOptions:0];
  v1 = sharedCompanionLinkClient___connection;
  sharedCompanionLinkClient___connection = v0;
}

+ (id)sharedIDSCompanionLinkClient
{
  if (sharedIDSCompanionLinkClient_onceToken != -1)
  {
    +[MRCompanionLinkClient sharedIDSCompanionLinkClient];
  }

  return 0;
}

+ (void)rapportCompanionLinkClient:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E69C6B70]);
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("com.apple.mediaremote.companionLinkClient", v5);
  [v4 setDispatchQueue:v6];

  [v4 setInvalidationHandler:&__block_literal_global_89];
  [v4 setInterruptionHandler:&__block_literal_global_92];
  v7 = [[MRBlockGuard alloc] initWithTimeout:@"CompanionLinkClient:activate" reason:&__block_literal_global_100 handler:30.0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__MRCompanionLinkClient_rapportCompanionLinkClient___block_invoke_101;
  v11[3] = &unk_1E769B898;
  v13 = v4;
  v14 = v3;
  v12 = v7;
  v8 = v4;
  v9 = v3;
  v10 = v7;
  [v8 activateWithCompletion:v11];
}

void __52__MRCompanionLinkClient_rapportCompanionLinkClient___block_invoke()
{
  v0 = _MRLogForCategory(7uLL);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __52__MRCompanionLinkClient_rapportCompanionLinkClient___block_invoke_cold_1();
  }
}

void __52__MRCompanionLinkClient_rapportCompanionLinkClient___block_invoke_90()
{
  v0 = _MRLogForCategory(7uLL);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __52__MRCompanionLinkClient_rapportCompanionLinkClient___block_invoke_90_cold_1();
  }
}

void __52__MRCompanionLinkClient_rapportCompanionLinkClient___block_invoke_97(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _MRLogForCategory(7uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __52__MRCompanionLinkClient_rapportCompanionLinkClient___block_invoke_97_cold_1();
  }
}

void __52__MRCompanionLinkClient_rapportCompanionLinkClient___block_invoke_101(id *a1, void *a2)
{
  v3 = a2;
  [a1[4] disarm];
  v4 = _MRLogForCategory(7uLL);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __52__MRCompanionLinkClient_rapportCompanionLinkClient___block_invoke_101_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "[CompanionLinkClient] CompanionLinkClient activated", buf, 2u);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__MRCompanionLinkClient_rapportCompanionLinkClient___block_invoke_102;
  v6[3] = &unk_1E769AB28;
  v8 = a1[6];
  v7 = a1[5];
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)setConnection:(id)a3
{
  v63 = *MEMORY[0x1E69E9840];
  v39 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = _MRLogForCategory(7uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v62 = v39;
    _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_DEFAULT, "[CompanionLinkClient] Setting Connection %@", buf, 0xCu);
  }

  objc_storeStrong(&v5->_connection, a3);
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v7 = v5->_pendingRegisteredEvents;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v53 objects:v60 count:16];
  if (v8)
  {
    v9 = *v54;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v54 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [(MRCompanionLinkClient *)v5 _registerEvent:*(*(&v53 + 1) + 8 * i), v39];
      }

      v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v53 objects:v60 count:16];
    }

    while (v8);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v11 = v5->_pendingRegisteredRequests;
  v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v12)
  {
    v13 = *v50;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v50 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [(MRCompanionLinkClient *)v5 _registerRequest:*(*(&v49 + 1) + 8 * j), v39];
      }

      v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v12);
  }

  pendingRegisteredEvents = v5->_pendingRegisteredEvents;
  v5->_pendingRegisteredEvents = 0;

  pendingRegisteredRequests = v5->_pendingRegisteredRequests;
  v5->_pendingRegisteredRequests = 0;

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v17 = v5->_pendingEvents;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v45 objects:v58 count:16];
  if (v18)
  {
    v19 = *v46;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v46 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v45 + 1) + 8 * k);
        v22 = [v21 eventID];
        v23 = [v21 userInfo];
        v24 = [v21 destination];
        v25 = [v21 uid];
        [(MRCompanionLinkClient *)v5 _sendEvent:v22 userInfo:v23 destination:v24 uid:v25];
      }

      v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v45 objects:v58 count:16];
    }

    while (v18);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v5->_pendingRequests;
  v26 = [(NSMutableArray *)obj countByEnumeratingWithState:&v41 objects:v57 count:16];
  if (v26)
  {
    v27 = *v42;
    do
    {
      for (m = 0; m != v26; ++m)
      {
        if (*v42 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v41 + 1) + 8 * m);
        v30 = [v29 eventID];
        v31 = [v29 userInfo];
        v32 = [v29 destination];
        v33 = [v29 uid];
        v34 = [v29 date];
        v35 = [v29 callback];
        [(MRCompanionLinkClient *)v5 _sendRequest:v30 userInfo:v31 destination:v32 uid:v33 date:v34 response:v35];
      }

      v26 = [(NSMutableArray *)obj countByEnumeratingWithState:&v41 objects:v57 count:16];
    }

    while (v26);
  }

  pendingEvents = v5->_pendingEvents;
  v5->_pendingEvents = 0;

  pendingRequests = v5->_pendingRequests;
  v5->_pendingRequests = 0;

  objc_sync_exit(v5);
  v38 = *MEMORY[0x1E69E9840];
}

- (id)deviceUIDForRapportUID:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = [(RPCompanionLinkClient *)v5->_connection activeDevices];
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (!v7)
  {
    v19 = 0;
    goto LABEL_23;
  }

  v8 = *v28;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v28 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v27 + 1) + 8 * i);
      v11 = [v10 effectiveIdentifier];
      v12 = [v11 isEqualToString:v4];

      if (v12)
      {
        v19 = [v10 mediaRouteIdentifier];
        v20 = _MRLogForCategory(7uLL);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v21 = [v10 name];
          *buf = 138543874;
          v32 = v4;
          v33 = 2114;
          v34 = v19;
          v35 = 2114;
          v36 = v21;
          _os_log_debug_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEBUG, "[CompanionLinkClient] Mapped inputUID <%{public}@> to effectiveIdentifier <%{public}@> <(%{public}@)>", buf, 0x20u);
        }

        goto LABEL_22;
      }

      v13 = [v10 identifier];
      v14 = [v13 isEqualToString:v4];

      if (v14)
      {
        v19 = [v10 mediaRouteIdentifier];
        v20 = _MRLogForCategory(7uLL);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v22 = [v10 name];
          *buf = 138543874;
          v32 = v4;
          v33 = 2114;
          v34 = v19;
          v35 = 2114;
          v36 = v22;
          _os_log_debug_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEBUG, "[CompanionLinkClient] Mapped inputUID <%{public}@> to identifier <%{public}@> <(%{public}@)>", buf, 0x20u);
        }

        goto LABEL_22;
      }

      v15 = [v10 mediaRouteIdentifier];
      v16 = [v15 isEqualToString:v4];

      if (v16)
      {
        v19 = [v10 mediaRouteIdentifier];
        v20 = _MRLogForCategory(7uLL);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v23 = [v10 name];
          *buf = 138543874;
          v32 = v4;
          v33 = 2114;
          v34 = v19;
          v35 = 2114;
          v36 = v23;
          _os_log_debug_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEBUG, "[CompanionLinkClient] Mapped inputUID <%{public}@> to mediaRouteIdentifier <%{public}@> <(%{public}@)>", buf, 0x20u);
        }

        goto LABEL_22;
      }

      v17 = [v10 mediaRemoteIdentifier];
      v18 = [v17 isEqualToString:v4];

      if (v18)
      {
        v19 = [v10 mediaRouteIdentifier];
        v20 = _MRLogForCategory(7uLL);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v26 = [v10 name];
          *buf = 138543874;
          v32 = v4;
          v33 = 2114;
          v34 = v19;
          v35 = 2114;
          v36 = v26;
          _os_log_debug_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEBUG, "[CompanionLinkClient] Mapped inputUID <%{public}@> to mediaRemoteIdentifier <%{public}@> <(%{public}@)>", buf, 0x20u);
        }

LABEL_22:

        goto LABEL_23;
      }
    }

    v7 = [v6 countByEnumeratingWithState:&v27 objects:v37 count:16];
    v19 = 0;
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_23:

  objc_sync_exit(v5);
  v24 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)rapportUIDForDeviceUID:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = [(RPCompanionLinkClient *)v5->_connection activeDevices];
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (!v7)
  {
    v19 = 0;
    goto LABEL_23;
  }

  v8 = *v28;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v28 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v27 + 1) + 8 * i);
      v11 = [v10 mediaRouteIdentifier];
      v12 = [v11 isEqualToString:v4];

      if (v12)
      {
        v19 = [v10 effectiveIdentifier];
        v20 = _MRLogForCategory(7uLL);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v21 = [v10 name];
          *buf = 138543874;
          v32 = v4;
          v33 = 2114;
          v34 = v19;
          v35 = 2114;
          v36 = v21;
          _os_log_debug_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEBUG, "[CompanionLinkClient] Mapped deviceUID <%{public}@> to rapportUID <%{public}@> <(%{public}@)>", buf, 0x20u);
        }

        goto LABEL_22;
      }

      v13 = [v10 effectiveIdentifier];
      v14 = [v13 isEqualToString:v4];

      if (v14)
      {
        v19 = [v10 effectiveIdentifier];
        v20 = _MRLogForCategory(7uLL);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v22 = [v10 name];
          *buf = 138543874;
          v32 = v4;
          v33 = 2114;
          v34 = v19;
          v35 = 2114;
          v36 = v22;
          _os_log_debug_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEBUG, "[CompanionLinkClient] Mapped effectiveIdentifier <%{public}@> to rapportUID <%{public}@> <(%{public}@)>", buf, 0x20u);
        }

        goto LABEL_22;
      }

      v15 = [v10 identifier];
      v16 = [v15 isEqualToString:v4];

      if (v16)
      {
        v19 = [v10 effectiveIdentifier];
        v20 = _MRLogForCategory(7uLL);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v23 = [v10 name];
          *buf = 138543874;
          v32 = v4;
          v33 = 2114;
          v34 = v19;
          v35 = 2114;
          v36 = v23;
          _os_log_debug_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEBUG, "[CompanionLinkClient] Mapped identifier <%{public}@> to rapportUID <%{public}@> <(%{public}@)>", buf, 0x20u);
        }

        goto LABEL_22;
      }

      v17 = [v10 mediaRemoteIdentifier];
      v18 = [v17 isEqualToString:v4];

      if (v18)
      {
        v19 = [v10 effectiveIdentifier];
        v20 = _MRLogForCategory(7uLL);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v26 = [v10 name];
          *buf = 138543874;
          v32 = v4;
          v33 = 2114;
          v34 = v19;
          v35 = 2114;
          v36 = v26;
          _os_log_debug_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEBUG, "[CompanionLinkClient] Mapped mediaRemoteIdentifier <%{public}@> to rapportUID <%{public}@> <(%{public}@)>", buf, 0x20u);
        }

LABEL_22:

        goto LABEL_23;
      }
    }

    v7 = [v6 countByEnumeratingWithState:&v27 objects:v37 count:16];
    v19 = 0;
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_23:

  objc_sync_exit(v5);
  v24 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)nameForUID:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [(RPCompanionLinkClient *)v5->_connection activeDevices];
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = *v23;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [v10 mediaRouteIdentifier];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          goto LABEL_13;
        }

        v13 = [v10 effectiveIdentifier];
        v14 = [v13 isEqualToString:v4];

        if (v14)
        {
          goto LABEL_13;
        }

        v15 = [v10 identifier];
        v16 = [v15 isEqualToString:v4];

        if ((v16 & 1) == 0)
        {
          v17 = [v10 mediaRemoteIdentifier];
          v18 = [v17 isEqualToString:v4];

          if ((v18 & 1) == 0)
          {
            continue;
          }
        }

LABEL_13:
        v19 = [v10 name];
        goto LABEL_15;
      }

      v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      v19 = 0;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v19 = 0;
  }

LABEL_15:

  objc_sync_exit(v5);
  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)registerEvent:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(NSMutableDictionary *)v8->_eventCallbacks objectForKey:v6];
  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    eventCallbacks = v8->_eventCallbacks;
    if (!eventCallbacks)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v12 = v8->_eventCallbacks;
      v8->_eventCallbacks = v11;

      eventCallbacks = v8->_eventCallbacks;
    }

    [(NSMutableDictionary *)eventCallbacks setObject:v9 forKey:v6];
  }

  v13 = [v7 copy];
  v14 = MEMORY[0x1A58E3570]();
  [v9 addObject:v14];

  if (v8->_connection)
  {
    [(MRCompanionLinkClient *)v8 _registerEvent:v6];
  }

  else
  {
    pendingRegisteredEvents = v8->_pendingRegisteredEvents;
    if (!pendingRegisteredEvents)
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v17 = v8->_pendingRegisteredEvents;
      v8->_pendingRegisteredEvents = v16;

      pendingRegisteredEvents = v8->_pendingRegisteredEvents;
    }

    [(NSMutableSet *)pendingRegisteredEvents addObject:v6];
  }

  v18 = MEMORY[0x1A58E3570](v13);

  objc_sync_exit(v8);

  return v18;
}

- (id)registerRequest:(id)a3 callback:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  objc_sync_enter(v9);
  v10 = [(NSMutableDictionary *)v9->_requestCallbacks objectForKey:v7];
  if (v10)
  {
    if (!v8)
    {
      goto LABEL_8;
    }

    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:v9 file:@"MRCompanionLinkClient.m" lineNumber:316 description:{@"Duplicate request handler for %@", v7}];
  }

  else
  {
    if (!v9->_requestCallbacks)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
      requestCallbacks = v9->_requestCallbacks;
      v9->_requestCallbacks = v12;
    }

    v10 = [v8 copy];
    v14 = v9->_requestCallbacks;
    v11 = MEMORY[0x1A58E3570]();
    [(NSMutableDictionary *)v14 setObject:v11 forKey:v7];
  }

LABEL_8:
  if (v9->_connection)
  {
    [(MRCompanionLinkClient *)v9 _registerRequest:v7];
  }

  else
  {
    pendingRegisteredRequests = v9->_pendingRegisteredRequests;
    if (!pendingRegisteredRequests)
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v17 = v9->_pendingRegisteredRequests;
      v9->_pendingRegisteredRequests = v16;

      pendingRegisteredRequests = v9->_pendingRegisteredRequests;
    }

    [(NSMutableSet *)pendingRegisteredRequests addObject:v7];
  }

  v18 = MEMORY[0x1A58E3570](v10);

  objc_sync_exit(v9);

  return v18;
}

- (void)removeCallback:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = [(NSMutableDictionary *)v5->_eventCallbacks allValues];
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = *v28;
    do
    {
      v9 = 0;
      do
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        v11 = MEMORY[0x1A58E3570](v4);
        [v10 removeObject:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v7);
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__4;
  v25 = __Block_byref_object_dispose__4;
  v26 = 0;
  requestCallbacks = v5->_requestCallbacks;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __40__MRCompanionLinkClient_removeCallback___block_invoke;
  v18 = &unk_1E769B8E8;
  v13 = v4;
  v19 = v13;
  v20 = &v21;
  [(NSMutableDictionary *)requestCallbacks enumerateKeysAndObjectsUsingBlock:&v15];
  if (v22[5])
  {
    [(NSMutableDictionary *)v5->_requestCallbacks removeObjectForKey:v15, v16, v17, v18];
  }

  _Block_object_dispose(&v21, 8);
  objc_sync_exit(v5);

  v14 = *MEMORY[0x1E69E9840];
}

void __40__MRCompanionLinkClient_removeCallback___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if (*(a1 + 32) == a3)
  {
    v9 = v8;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v8 = v9;
    *a4 = 1;
  }
}

- (void)_registerEvent:(id)a3
{
  v4 = a3;
  registeredEvents = self->_registeredEvents;
  if (!registeredEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_registeredEvents;
    self->_registeredEvents = v6;

    registeredEvents = self->_registeredEvents;
  }

  if (([(NSMutableSet *)registeredEvents containsObject:v4]& 1) == 0)
  {
    objc_initWeak(&location, self);
    connection = self->_connection;
    v9 = [(MRCompanionLinkClient *)self _resolveEventID:v4];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __40__MRCompanionLinkClient__registerEvent___block_invoke;
    v11[3] = &unk_1E769B910;
    objc_copyWeak(&v13, &location);
    v10 = v4;
    v12 = v10;
    [(RPCompanionLinkClient *)connection registerEventID:v9 options:0 handler:v11];

    [(NSMutableSet *)self->_registeredEvents addObject:v10];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __40__MRCompanionLinkClient__registerEvent___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleEventID:*(a1 + 32) event:v8 options:v5];
  }
}

- (void)_registerRequest:(id)a3
{
  v4 = a3;
  registeredRequests = self->_registeredRequests;
  if (!registeredRequests)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_registeredRequests;
    self->_registeredRequests = v6;

    registeredRequests = self->_registeredRequests;
  }

  if (([(NSMutableSet *)registeredRequests containsObject:v4]& 1) == 0)
  {
    objc_initWeak(&location, self);
    connection = self->_connection;
    v9 = [(MRCompanionLinkClient *)self _resolveEventID:v4];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __42__MRCompanionLinkClient__registerRequest___block_invoke;
    v11[3] = &unk_1E769B960;
    objc_copyWeak(&v13, &location);
    v10 = v4;
    v12 = v10;
    [(RPCompanionLinkClient *)connection registerRequestID:v9 options:0 handler:v11];

    [(NSMutableSet *)self->_registeredRequests addObject:v10];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __42__MRCompanionLinkClient__registerRequest___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v11 = *(a1 + 32);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __42__MRCompanionLinkClient__registerRequest___block_invoke_2;
    v13[3] = &unk_1E769B938;
    v14 = v9;
    [WeakRetained _handleRequestID:v11 request:v7 options:v8 response:v13];
  }

  else
  {
    Error = MRMediaRemoteCreateError(4);
    (*(v9 + 2))(v9, 0, 0, Error);
  }
}

- (void)sendEvent:(id)a3 toDevicesOfHomeUser:(id)a4 userInfo:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v25 = a3;
  v8 = a4;
  v23 = self;
  v24 = a5;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [(RPCompanionLinkClient *)self->_connection activeDevices];
  v9 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v26 = *v32;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v13 = [v12 homeKitUserIdentifiers];
        v14 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v28;
          while (2)
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v28 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = [*(*(&v27 + 1) + 8 * j) UUIDString];
              v19 = [v18 isEqualToString:v8];

              if (v19)
              {
                v20 = [v12 effectiveIdentifier];
                [(MRCompanionLinkClient *)v23 sendEvent:v25 destination:v20 userInfo:v24];

                goto LABEL_16;
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
      }

      v10 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v10);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)sendEvent:(id)a3 destination:(id)a4 userInfo:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 copy];
  v11 = [MEMORY[0x1E696AFB0] UUID];
  v12 = [v11 UUIDString];

  v13 = self;
  objc_sync_enter(v13);
  if (v13->_connection)
  {
    [(MRCompanionLinkClient *)v13 _sendEvent:v14 userInfo:v10 destination:v8 uid:v12];
  }

  else
  {
    [(MRCompanionLinkClient *)v13 _enqueueEvent:v14 userInfo:v10 destination:v8 uid:v12];
  }

  objc_sync_exit(v13);
}

- (void)sendRequest:(id)a3 destination:(id)a4 userInfo:(id)a5 timeout:(double)a6 response:(id)a7
{
  v49 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = [v13 copy];
  v16 = [MEMORY[0x1E696AFB0] UUID];
  v17 = [v16 UUIDString];

  v18 = [MEMORY[0x1E695DF00] date];
  v19 = [MRBlockGuard alloc];
  v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@<%@>", v11, v17];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __75__MRCompanionLinkClient_sendRequest_destination_userInfo_timeout_response___block_invoke;
  v39[3] = &unk_1E769AD80;
  v21 = v14;
  v40 = v21;
  v22 = [(MRBlockGuard *)v19 initWithTimeout:v20 reason:v39 handler:a6];

  v23 = _MRLogForCategory(7uLL);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v42 = v11;
    v43 = 2114;
    v44 = v17;
    v45 = 2112;
    v46 = v12;
    v47 = 2112;
    v48 = v13;
    _os_log_impl(&dword_1A2860000, v23, OS_LOG_TYPE_DEFAULT, "[CompanionLinkClient] Request: %{public}@<%{public}@> to destination <%@> with userInfo %@", buf, 0x2Au);
  }

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __75__MRCompanionLinkClient_sendRequest_destination_userInfo_timeout_response___block_invoke_125;
  v33[3] = &unk_1E769B988;
  v24 = v22;
  v34 = v24;
  v25 = v18;
  v35 = v25;
  v26 = v11;
  v36 = v26;
  v27 = v17;
  v37 = v27;
  v28 = v21;
  v38 = v28;
  v29 = MEMORY[0x1A58E3570](v33);
  v30 = self;
  objc_sync_enter(v30);
  if (v30->_connection)
  {
    [(MRCompanionLinkClient *)v30 _sendRequest:v26 userInfo:v15 destination:v12 uid:v27 date:v25 response:v29];
  }

  else
  {
    [(MRCompanionLinkClient *)v30 _enqueueRequest:v26 userInfo:v15 destination:v12 uid:v27 date:v25 response:v29];
  }

  objc_sync_exit(v30);

  v31 = *MEMORY[0x1E69E9840];
}

uint64_t __75__MRCompanionLinkClient_sendRequest_destination_userInfo_timeout_response___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __75__MRCompanionLinkClient_sendRequest_destination_userInfo_timeout_response___block_invoke_125(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) disarm])
  {
    v7 = [MEMORY[0x1E695DF00] date];
    [v7 timeIntervalSinceDate:*(a1 + 40)];
    v9 = v8;

    v10 = _MRLogForCategory(7uLL);
    v11 = v10;
    if (v6)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = *(a1 + 48);
        v13 = *(a1 + 56);
        v18 = 138544130;
        v19 = v12;
        v20 = 2114;
        v21 = v13;
        v22 = 2114;
        v23 = v6;
        v24 = 2048;
        v25 = v9;
        _os_log_error_impl(&dword_1A2860000, v11, OS_LOG_TYPE_ERROR, "[CompanionLinkClient] Response: %{public}@<%{public}@> returned error <%{public}@> in <%lf> seconds", &v18, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 48);
      v15 = *(a1 + 56);
      v18 = 138544130;
      v19 = v14;
      v20 = 2114;
      v21 = v15;
      v22 = 2048;
      v23 = v9;
      v24 = 2114;
      v25 = v5;
      _os_log_impl(&dword_1A2860000, v11, OS_LOG_TYPE_DEFAULT, "[CompanionLinkClient] Response: %{public}@<%{public}@> returned in <%lf> seconds with %{public}@@", &v18, 0x2Au);
    }

    v16 = *(a1 + 64);
    if (v16)
    {
      (*(v16 + 16))(v16, v5, v6);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_sendEvent:(id)a3 userInfo:(id)a4 destination:(id)a5 uid:(id)a6
{
  v38 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = +[MROrigin localOrigin];
  v16 = [MRDeviceInfoRequest deviceInfoForOrigin:v15];

  v17 = [v16 data];
  [v14 setObject:v17 forKeyedSubscript:@"deviceInfoData"];

  [v14 setObject:v13 forKeyedSubscript:@"uid"];
  if (v11)
  {
    v18 = MRCreateEncodedUserInfo(v11);
    [v14 setObject:v18 forKeyedSubscript:@"userInfoData"];
  }

  v19 = _MRLogForCategory(7uLL);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v31 = v10;
    v32 = 2114;
    v33 = v13;
    v34 = 2112;
    v35 = v12;
    v36 = 2112;
    v37 = v11;
    _os_log_impl(&dword_1A2860000, v19, OS_LOG_TYPE_DEFAULT, "[CompanionLinkClient] Sending event %{public}@<%{public}@> to destination <%@> with userInfo %@", buf, 0x2Au);
  }

  connection = self->_connection;
  v21 = [(MRCompanionLinkClient *)self _resolveEventID:v10];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __61__MRCompanionLinkClient__sendEvent_userInfo_destination_uid___block_invoke;
  v26[3] = &unk_1E769B9B0;
  v27 = v10;
  v28 = v13;
  v29 = v12;
  v22 = v12;
  v23 = v13;
  v24 = v10;
  [(RPCompanionLinkClient *)connection sendEventID:v21 event:v14 destinationID:v22 options:0 completion:v26];

  v25 = *MEMORY[0x1E69E9840];
}

void __61__MRCompanionLinkClient__sendEvent_userInfo_destination_uid___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _MRLogForCategory(7uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __61__MRCompanionLinkClient__sendEvent_userInfo_destination_uid___block_invoke_cold_1(a1);
    }
  }
}

- (void)_enqueueEvent:(id)a3 userInfo:(id)a4 destination:(id)a5 uid:(id)a6
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = _MRLogForCategory(7uLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138544130;
    v20 = v10;
    v21 = 2114;
    v22 = v13;
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v11;
    _os_log_impl(&dword_1A2860000, v14, OS_LOG_TYPE_DEFAULT, "[CompanionLinkClient] Enqueing event %{public}@<%{public}@> to destination <%@> with userInfo %@", &v19, 0x2Au);
  }

  if (!self->_pendingEvents)
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingEvents = self->_pendingEvents;
    self->_pendingEvents = v15;
  }

  v17 = objc_alloc_init(MRCompanionLinkClientEvent);
  [(MRCompanionLinkClientEvent *)v17 setEventID:v10];
  [(MRCompanionLinkClientEvent *)v17 setUserInfo:v11];
  [(MRCompanionLinkClientEvent *)v17 setDestination:v12];
  [(MRCompanionLinkClientEvent *)v17 setUid:v13];
  [(NSMutableArray *)self->_pendingEvents addObject:v17];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_sendRequest:(id)a3 userInfo:(id)a4 destination:(id)a5 uid:(id)a6 date:(id)a7 response:(id)a8
{
  v38 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19 = +[MROrigin localOrigin];
  v20 = [MRDeviceInfoRequest deviceInfoForOrigin:v19];

  v21 = [v20 data];
  [v18 setObject:v21 forKeyedSubscript:@"deviceInfoData"];

  [v18 setObject:v16 forKeyedSubscript:@"uid"];
  if (v14)
  {
    v22 = MRCreateEncodedUserInfo(v14);
    [v18 setObject:v22 forKeyedSubscript:@"userInfoData"];
  }

  v23 = _MRLogForCategory(7uLL);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v31 = v13;
    v32 = 2114;
    v33 = v16;
    v34 = 2112;
    v35 = v15;
    v36 = 2112;
    v37 = v14;
    _os_log_impl(&dword_1A2860000, v23, OS_LOG_TYPE_DEFAULT, "[CompanionLinkClient] Sending request %{public}@<%{public}@> to destination <%@> with userInfo %@", buf, 0x2Au);
  }

  connection = self->_connection;
  v25 = [(MRCompanionLinkClient *)self _resolveEventID:v13];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __77__MRCompanionLinkClient__sendRequest_userInfo_destination_uid_date_response___block_invoke;
  v28[3] = &unk_1E769B9D8;
  v29 = v17;
  v26 = v17;
  [(RPCompanionLinkClient *)connection sendRequestID:v25 request:v18 destinationID:v15 options:0 responseHandler:v28];

  v27 = *MEMORY[0x1E69E9840];
}

void __77__MRCompanionLinkClient__sendRequest_userInfo_destination_uid_date_response___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 32);
  v6 = a4;
  v7 = MRCreateDecodedUserInfo(a2);
  (*(v5 + 16))(v5, v7, v6);
}

- (void)_enqueueRequest:(id)a3 userInfo:(id)a4 destination:(id)a5 uid:(id)a6 date:(id)a7 response:(id)a8
{
  v33 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v19 = a7;
  v20 = _MRLogForCategory(7uLL);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138544130;
    v26 = v14;
    v27 = 2114;
    v28 = v17;
    v29 = 2112;
    v30 = v16;
    v31 = 2112;
    v32 = v15;
    _os_log_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEFAULT, "[CompanionLinkClient] Enqueing request %{public}@<%{public}@> to destination <%@> with userInfo %@", &v25, 0x2Au);
  }

  if (!self->_pendingRequests)
  {
    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingRequests = self->_pendingRequests;
    self->_pendingRequests = v21;
  }

  v23 = objc_alloc_init(MRCompanionLinkClientRequest);
  [(MRCompanionLinkClientEvent *)v23 setEventID:v14];
  [(MRCompanionLinkClientEvent *)v23 setUserInfo:v15];
  [(MRCompanionLinkClientEvent *)v23 setDestination:v16];
  [(MRCompanionLinkClientEvent *)v23 setUid:v17];
  [(MRCompanionLinkClientRequest *)v23 setDate:v19];

  [(MRCompanionLinkClientRequest *)v23 setCallback:v18];
  [(NSMutableArray *)self->_pendingRequests addObject:v23];

  v24 = *MEMORY[0x1E69E9840];
}

- (void)_handleEventID:(id)a3 event:(id)a4 options:(id)a5
{
  v62 = *MEMORY[0x1E69E9840];
  v38 = a3;
  v7 = a4;
  v8 = a5;
  v31 = *MEMORY[0x1E69C6BE8];
  v32 = v8;
  v9 = [v8 objectForKeyedSubscript:?];
  v10 = [MRDeviceInfo alloc];
  v11 = [v7 objectForKeyedSubscript:@"deviceInfoData"];
  v12 = [(MRDeviceInfo *)v10 initWithData:v11];

  v13 = [v7 objectForKeyedSubscript:@"userInfoData"];
  v37 = MRCreateDecodedUserInfo(v13);

  v34 = [v7 objectForKeyedSubscript:@"uid"];
  v36 = [(MRDeviceInfo *)v12 deviceUID];
  v35 = [(MRDeviceInfo *)v12 name];
  v14 = _MRLogForCategory(7uLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544898;
    v49 = v38;
    v50 = 2114;
    v51 = v34;
    v52 = 2114;
    v53 = v36;
    v54 = 2114;
    v55 = v35;
    v56 = 2112;
    v57 = v31;
    v58 = 2114;
    v59 = v9;
    v60 = 2112;
    v61 = v37;
    _os_log_impl(&dword_1A2860000, v14, OS_LOG_TYPE_DEFAULT, "[CompanionLinkClient] Received event %{public}@<%{public}@> from <%{public}@> (%{public}@) with %@ <%{public}@> userInfo %@", buf, 0x48u);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v15 = [(RPCompanionLinkClient *)self->_connection activeDevices];
  v16 = [v15 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v16)
  {
    v17 = *v44;
LABEL_5:
    v18 = 0;
    while (1)
    {
      if (*v44 != v17)
      {
        objc_enumerationMutation(v15);
      }

      v19 = *(*(&v43 + 1) + 8 * v18);
      v20 = [v19 effectiveIdentifier];
      v21 = [v20 isEqualToString:v9];

      if (v21)
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = [v15 countByEnumeratingWithState:&v43 objects:v47 count:16];
        if (v16)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    v22 = v19;

    if (!v22)
    {
      goto LABEL_15;
    }

    v23 = self;
    objc_sync_enter(v23);
    v24 = [(NSMutableDictionary *)v23->_eventCallbacks objectForKey:v38];
    v25 = [v24 copy];

    objc_sync_exit(v23);
    if (v37)
    {
      v26 = [v37 mutableCopy];
    }

    else
    {
      v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v27 = v26;
    [v26 setObject:v9 forKeyedSubscript:v31];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__MRCompanionLinkClient__handleEventID_event_options___block_invoke;
    block[3] = &unk_1E769BA00;
    v40 = v25;
    v41 = v12;
    v42 = v27;
    v28 = v27;
    v29 = v25;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
LABEL_11:

LABEL_15:
    v22 = _MRLogForCategory(7uLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138544386;
      v49 = v38;
      v50 = 2114;
      v51 = v36;
      v52 = 2114;
      v53 = v35;
      v54 = 2112;
      v55 = v31;
      v56 = 2112;
      v57 = v9;
      _os_log_error_impl(&dword_1A2860000, v22, OS_LOG_TYPE_ERROR, "[CompanionLinkClient] Received event <%{public}@> from <%{public}@> (%{public}@) with <%@> <%@> but could not find device", buf, 0x34u);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

void __54__MRCompanionLinkClient__handleEventID_event_options___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = *(a1 + 48);
        (*(*(*(&v10 + 1) + 8 * v6) + 16))(*(*(&v10 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_handleRequestID:(id)a3 request:(id)a4 options:(id)a5 response:(id)a6
{
  v72 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v43 = a4;
  v10 = a5;
  v37 = a6;
  v35 = *MEMORY[0x1E69C6BE8];
  v36 = v10;
  v11 = [v10 objectForKeyedSubscript:?];
  v12 = [MRDeviceInfo alloc];
  v13 = [v43 objectForKeyedSubscript:@"deviceInfoData"];
  v42 = [(MRDeviceInfo *)v12 initWithData:v13];

  v14 = [v43 objectForKeyedSubscript:@"userInfoData"];
  v41 = MRCreateDecodedUserInfo(v14);

  v15 = [v43 objectForKeyedSubscript:@"uid"];
  v39 = [(MRDeviceInfo *)v42 deviceUID];
  v38 = [(MRDeviceInfo *)v42 name];
  v16 = _MRLogForCategory(7uLL);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544898;
    v59 = v9;
    v60 = 2114;
    v61 = v15;
    v62 = 2114;
    v63 = v39;
    v64 = 2114;
    v65 = v38;
    v66 = 2112;
    v67 = v35;
    v68 = 2114;
    v69 = v11;
    v70 = 2112;
    v71 = v41;
    _os_log_impl(&dword_1A2860000, v16, OS_LOG_TYPE_DEFAULT, "[CompanionLinkClient] Received request %{public}@<%{public}@> from <%{public}@> (%{public}@) with %@ <%{public}@> userInfo %@", buf, 0x48u);
  }

  v55 = 0u;
  v56 = 0u;
  v54 = 0u;
  v53 = 0u;
  v17 = [(RPCompanionLinkClient *)self->_connection activeDevices];
  v18 = [v17 countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v18)
  {
    v19 = *v54;
    while (2)
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v54 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v53 + 1) + 8 * i);
        v22 = [v21 effectiveIdentifier];
        v23 = [v22 isEqualToString:v11];

        if (v23)
        {
          v18 = v21;
          goto LABEL_13;
        }
      }

      v18 = [v17 countByEnumeratingWithState:&v53 objects:v57 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __67__MRCompanionLinkClient__handleRequestID_request_options_response___block_invoke;
  v49[3] = &unk_1E769BA28;
  v24 = v9;
  v50 = v24;
  v25 = v15;
  v51 = v25;
  v26 = v37;
  v52 = v26;
  v27 = MEMORY[0x1A58E3570](v49);
  if (v18)
  {
    v28 = self;
    objc_sync_enter(v28);
    v29 = [(NSMutableDictionary *)v28->_requestCallbacks objectForKey:v24];
    v30 = [v29 copy];

    objc_sync_exit(v28);
    if (v30)
    {
      if (v41)
      {
        v31 = [v41 mutableCopy];
      }

      else
      {
        v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      v33 = v31;
      [v31 setObject:v11 forKeyedSubscript:v35];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __67__MRCompanionLinkClient__handleRequestID_request_options_response___block_invoke_132;
      block[3] = &unk_1E769BA50;
      v47 = v30;
      v45 = v42;
      v46 = v33;
      v48 = v27;
      Error = v33;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
      Error = MRMediaRemoteCreateError(14);
      (v27)[2](v27, 0, Error);
    }
  }

  else
  {
    v30 = MRMediaRemoteCreateError(4);
    (v27)[2](v27, 0, v30);
  }

  v34 = *MEMORY[0x1E69E9840];
}

void __67__MRCompanionLinkClient__handleRequestID_request_options_response___block_invoke(void *a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = _MRLogForCategory(7uLL);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __67__MRCompanionLinkClient__handleRequestID_request_options_response___block_invoke_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1[4];
    v10 = a1[5];
    v14 = 138543874;
    v15 = v9;
    v16 = 2114;
    v17 = v10;
    v18 = 2114;
    v19 = v5;
    _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "[CompanionLinkClient] Responding to request %{public}@<%{public}@> with <%{public}@>", &v14, 0x20u);
  }

  v11 = a1[6];
  v12 = MRCreateEncodedUserInfo(v5);
  (*(v11 + 16))(v11, v12, v6);

  v13 = *MEMORY[0x1E69E9840];
}

- (id)_resolveEventID:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = [[v3 alloc] initWithFormat:@"com.apple.mediaremote.%@", v4];

  return v5;
}

- (NSArray)companionLinkDevices
{
  v2 = [(MRCompanionLinkClient *)self connection];
  v3 = [v2 activeDevices];

  return v3;
}

void __52__MRCompanionLinkClient_rapportCompanionLinkClient___block_invoke_97_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __52__MRCompanionLinkClient_rapportCompanionLinkClient___block_invoke_101_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __61__MRCompanionLinkClient__sendEvent_userInfo_destination_uid___block_invoke_cold_1(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  OUTLINED_FUNCTION_4_0();
  v10 = 2112;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  _os_log_error_impl(&dword_1A2860000, v7, OS_LOG_TYPE_ERROR, "[CompanionLinkClient] Error sending <%{public}@> <%{public}@> event to <%@> <%{public}@>", v9, 0x2Au);
  v8 = *MEMORY[0x1E69E9840];
}

void __67__MRCompanionLinkClient__handleRequestID_request_options_response___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_4_0();
  v8 = v3;
  v9 = v4;
  _os_log_error_impl(&dword_1A2860000, v5, OS_LOG_TYPE_ERROR, "[CompanionLinkClient] Responding to request %{public}@<%{public}@> with error <%{public}@>", v7, 0x20u);
  v6 = *MEMORY[0x1E69E9840];
}

@end
@interface MRCompanionLinkClient
+ (id)sharedCompanionLinkClient;
+ (id)sharedIDSCompanionLinkClient;
+ (void)rapportCompanionLinkClient:(id)client;
- (NSArray)companionLinkDevices;
- (id)_resolveEventID:(id)d;
- (id)deviceUIDForRapportUID:(id)d;
- (id)nameForUID:(id)d;
- (id)rapportUIDForDeviceUID:(id)d;
- (id)registerEvent:(id)event callback:(id)callback;
- (id)registerRequest:(id)request callback:(id)callback;
- (void)_enqueueEvent:(id)event userInfo:(id)info destination:(id)destination uid:(id)uid;
- (void)_enqueueRequest:(id)request userInfo:(id)info destination:(id)destination uid:(id)uid date:(id)date response:(id)response;
- (void)_handleEventID:(id)d event:(id)event options:(id)options;
- (void)_handleRequestID:(id)d request:(id)request options:(id)options response:(id)response;
- (void)_registerEvent:(id)event;
- (void)_registerRequest:(id)request;
- (void)_sendEvent:(id)event userInfo:(id)info destination:(id)destination uid:(id)uid;
- (void)_sendRequest:(id)request userInfo:(id)info destination:(id)destination uid:(id)uid date:(id)date response:(id)response;
- (void)removeCallback:(id)callback;
- (void)sendEvent:(id)event destination:(id)destination userInfo:(id)info;
- (void)sendEvent:(id)event toDevicesOfHomeUser:(id)user userInfo:(id)info;
- (void)sendRequest:(id)request destination:(id)destination userInfo:(id)info timeout:(double)timeout response:(id)response;
- (void)setConnection:(id)connection;
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

+ (void)rapportCompanionLinkClient:(id)client
{
  clientCopy = client;
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
  v14 = clientCopy;
  v12 = v7;
  v8 = v4;
  v9 = clientCopy;
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

- (void)setConnection:(id)connection
{
  v63 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = _MRLogForCategory(7uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v62 = connectionCopy;
    _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_DEFAULT, "[CompanionLinkClient] Setting Connection %@", buf, 0xCu);
  }

  objc_storeStrong(&selfCopy->_connection, connection);
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v7 = selfCopy->_pendingRegisteredEvents;
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

        [(MRCompanionLinkClient *)selfCopy _registerEvent:*(*(&v53 + 1) + 8 * i), connectionCopy];
      }

      v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v53 objects:v60 count:16];
    }

    while (v8);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v11 = selfCopy->_pendingRegisteredRequests;
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

        [(MRCompanionLinkClient *)selfCopy _registerRequest:*(*(&v49 + 1) + 8 * j), connectionCopy];
      }

      v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v12);
  }

  pendingRegisteredEvents = selfCopy->_pendingRegisteredEvents;
  selfCopy->_pendingRegisteredEvents = 0;

  pendingRegisteredRequests = selfCopy->_pendingRegisteredRequests;
  selfCopy->_pendingRegisteredRequests = 0;

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v17 = selfCopy->_pendingEvents;
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
        eventID = [v21 eventID];
        userInfo = [v21 userInfo];
        destination = [v21 destination];
        v25 = [v21 uid];
        [(MRCompanionLinkClient *)selfCopy _sendEvent:eventID userInfo:userInfo destination:destination uid:v25];
      }

      v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v45 objects:v58 count:16];
    }

    while (v18);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = selfCopy->_pendingRequests;
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
        eventID2 = [v29 eventID];
        userInfo2 = [v29 userInfo];
        destination2 = [v29 destination];
        v33 = [v29 uid];
        date = [v29 date];
        callback = [v29 callback];
        [(MRCompanionLinkClient *)selfCopy _sendRequest:eventID2 userInfo:userInfo2 destination:destination2 uid:v33 date:date response:callback];
      }

      v26 = [(NSMutableArray *)obj countByEnumeratingWithState:&v41 objects:v57 count:16];
    }

    while (v26);
  }

  pendingEvents = selfCopy->_pendingEvents;
  selfCopy->_pendingEvents = 0;

  pendingRequests = selfCopy->_pendingRequests;
  selfCopy->_pendingRequests = 0;

  objc_sync_exit(selfCopy);
  v38 = *MEMORY[0x1E69E9840];
}

- (id)deviceUIDForRapportUID:(id)d
{
  v38 = *MEMORY[0x1E69E9840];
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  activeDevices = [(RPCompanionLinkClient *)selfCopy->_connection activeDevices];
  v7 = [activeDevices countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (!v7)
  {
    mediaRouteIdentifier = 0;
    goto LABEL_23;
  }

  v8 = *v28;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v28 != v8)
      {
        objc_enumerationMutation(activeDevices);
      }

      v10 = *(*(&v27 + 1) + 8 * i);
      effectiveIdentifier = [v10 effectiveIdentifier];
      v12 = [effectiveIdentifier isEqualToString:dCopy];

      if (v12)
      {
        mediaRouteIdentifier = [v10 mediaRouteIdentifier];
        v20 = _MRLogForCategory(7uLL);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          name = [v10 name];
          *buf = 138543874;
          v32 = dCopy;
          v33 = 2114;
          v34 = mediaRouteIdentifier;
          v35 = 2114;
          v36 = name;
          _os_log_debug_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEBUG, "[CompanionLinkClient] Mapped inputUID <%{public}@> to effectiveIdentifier <%{public}@> <(%{public}@)>", buf, 0x20u);
        }

        goto LABEL_22;
      }

      identifier = [v10 identifier];
      v14 = [identifier isEqualToString:dCopy];

      if (v14)
      {
        mediaRouteIdentifier = [v10 mediaRouteIdentifier];
        v20 = _MRLogForCategory(7uLL);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          name2 = [v10 name];
          *buf = 138543874;
          v32 = dCopy;
          v33 = 2114;
          v34 = mediaRouteIdentifier;
          v35 = 2114;
          v36 = name2;
          _os_log_debug_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEBUG, "[CompanionLinkClient] Mapped inputUID <%{public}@> to identifier <%{public}@> <(%{public}@)>", buf, 0x20u);
        }

        goto LABEL_22;
      }

      mediaRouteIdentifier2 = [v10 mediaRouteIdentifier];
      v16 = [mediaRouteIdentifier2 isEqualToString:dCopy];

      if (v16)
      {
        mediaRouteIdentifier = [v10 mediaRouteIdentifier];
        v20 = _MRLogForCategory(7uLL);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          name3 = [v10 name];
          *buf = 138543874;
          v32 = dCopy;
          v33 = 2114;
          v34 = mediaRouteIdentifier;
          v35 = 2114;
          v36 = name3;
          _os_log_debug_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEBUG, "[CompanionLinkClient] Mapped inputUID <%{public}@> to mediaRouteIdentifier <%{public}@> <(%{public}@)>", buf, 0x20u);
        }

        goto LABEL_22;
      }

      mediaRemoteIdentifier = [v10 mediaRemoteIdentifier];
      v18 = [mediaRemoteIdentifier isEqualToString:dCopy];

      if (v18)
      {
        mediaRouteIdentifier = [v10 mediaRouteIdentifier];
        v20 = _MRLogForCategory(7uLL);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          name4 = [v10 name];
          *buf = 138543874;
          v32 = dCopy;
          v33 = 2114;
          v34 = mediaRouteIdentifier;
          v35 = 2114;
          v36 = name4;
          _os_log_debug_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEBUG, "[CompanionLinkClient] Mapped inputUID <%{public}@> to mediaRemoteIdentifier <%{public}@> <(%{public}@)>", buf, 0x20u);
        }

LABEL_22:

        goto LABEL_23;
      }
    }

    v7 = [activeDevices countByEnumeratingWithState:&v27 objects:v37 count:16];
    mediaRouteIdentifier = 0;
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_23:

  objc_sync_exit(selfCopy);
  v24 = *MEMORY[0x1E69E9840];

  return mediaRouteIdentifier;
}

- (id)rapportUIDForDeviceUID:(id)d
{
  v38 = *MEMORY[0x1E69E9840];
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  activeDevices = [(RPCompanionLinkClient *)selfCopy->_connection activeDevices];
  v7 = [activeDevices countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (!v7)
  {
    effectiveIdentifier = 0;
    goto LABEL_23;
  }

  v8 = *v28;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v28 != v8)
      {
        objc_enumerationMutation(activeDevices);
      }

      v10 = *(*(&v27 + 1) + 8 * i);
      mediaRouteIdentifier = [v10 mediaRouteIdentifier];
      v12 = [mediaRouteIdentifier isEqualToString:dCopy];

      if (v12)
      {
        effectiveIdentifier = [v10 effectiveIdentifier];
        v20 = _MRLogForCategory(7uLL);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          name = [v10 name];
          *buf = 138543874;
          v32 = dCopy;
          v33 = 2114;
          v34 = effectiveIdentifier;
          v35 = 2114;
          v36 = name;
          _os_log_debug_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEBUG, "[CompanionLinkClient] Mapped deviceUID <%{public}@> to rapportUID <%{public}@> <(%{public}@)>", buf, 0x20u);
        }

        goto LABEL_22;
      }

      effectiveIdentifier2 = [v10 effectiveIdentifier];
      v14 = [effectiveIdentifier2 isEqualToString:dCopy];

      if (v14)
      {
        effectiveIdentifier = [v10 effectiveIdentifier];
        v20 = _MRLogForCategory(7uLL);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          name2 = [v10 name];
          *buf = 138543874;
          v32 = dCopy;
          v33 = 2114;
          v34 = effectiveIdentifier;
          v35 = 2114;
          v36 = name2;
          _os_log_debug_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEBUG, "[CompanionLinkClient] Mapped effectiveIdentifier <%{public}@> to rapportUID <%{public}@> <(%{public}@)>", buf, 0x20u);
        }

        goto LABEL_22;
      }

      identifier = [v10 identifier];
      v16 = [identifier isEqualToString:dCopy];

      if (v16)
      {
        effectiveIdentifier = [v10 effectiveIdentifier];
        v20 = _MRLogForCategory(7uLL);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          name3 = [v10 name];
          *buf = 138543874;
          v32 = dCopy;
          v33 = 2114;
          v34 = effectiveIdentifier;
          v35 = 2114;
          v36 = name3;
          _os_log_debug_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEBUG, "[CompanionLinkClient] Mapped identifier <%{public}@> to rapportUID <%{public}@> <(%{public}@)>", buf, 0x20u);
        }

        goto LABEL_22;
      }

      mediaRemoteIdentifier = [v10 mediaRemoteIdentifier];
      v18 = [mediaRemoteIdentifier isEqualToString:dCopy];

      if (v18)
      {
        effectiveIdentifier = [v10 effectiveIdentifier];
        v20 = _MRLogForCategory(7uLL);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          name4 = [v10 name];
          *buf = 138543874;
          v32 = dCopy;
          v33 = 2114;
          v34 = effectiveIdentifier;
          v35 = 2114;
          v36 = name4;
          _os_log_debug_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEBUG, "[CompanionLinkClient] Mapped mediaRemoteIdentifier <%{public}@> to rapportUID <%{public}@> <(%{public}@)>", buf, 0x20u);
        }

LABEL_22:

        goto LABEL_23;
      }
    }

    v7 = [activeDevices countByEnumeratingWithState:&v27 objects:v37 count:16];
    effectiveIdentifier = 0;
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_23:

  objc_sync_exit(selfCopy);
  v24 = *MEMORY[0x1E69E9840];

  return effectiveIdentifier;
}

- (id)nameForUID:(id)d
{
  v27 = *MEMORY[0x1E69E9840];
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  activeDevices = [(RPCompanionLinkClient *)selfCopy->_connection activeDevices];
  v7 = [activeDevices countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = *v23;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(activeDevices);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        mediaRouteIdentifier = [v10 mediaRouteIdentifier];
        v12 = [mediaRouteIdentifier isEqualToString:dCopy];

        if (v12)
        {
          goto LABEL_13;
        }

        effectiveIdentifier = [v10 effectiveIdentifier];
        v14 = [effectiveIdentifier isEqualToString:dCopy];

        if (v14)
        {
          goto LABEL_13;
        }

        identifier = [v10 identifier];
        v16 = [identifier isEqualToString:dCopy];

        if ((v16 & 1) == 0)
        {
          mediaRemoteIdentifier = [v10 mediaRemoteIdentifier];
          v18 = [mediaRemoteIdentifier isEqualToString:dCopy];

          if ((v18 & 1) == 0)
          {
            continue;
          }
        }

LABEL_13:
        name = [v10 name];
        goto LABEL_15;
      }

      v7 = [activeDevices countByEnumeratingWithState:&v22 objects:v26 count:16];
      name = 0;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    name = 0;
  }

LABEL_15:

  objc_sync_exit(selfCopy);
  v20 = *MEMORY[0x1E69E9840];

  return name;
}

- (id)registerEvent:(id)event callback:(id)callback
{
  eventCopy = event;
  callbackCopy = callback;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(NSMutableDictionary *)selfCopy->_eventCallbacks objectForKey:eventCopy];
  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    eventCallbacks = selfCopy->_eventCallbacks;
    if (!eventCallbacks)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v12 = selfCopy->_eventCallbacks;
      selfCopy->_eventCallbacks = v11;

      eventCallbacks = selfCopy->_eventCallbacks;
    }

    [(NSMutableDictionary *)eventCallbacks setObject:v9 forKey:eventCopy];
  }

  v13 = [callbackCopy copy];
  v14 = MEMORY[0x1A58E3570]();
  [v9 addObject:v14];

  if (selfCopy->_connection)
  {
    [(MRCompanionLinkClient *)selfCopy _registerEvent:eventCopy];
  }

  else
  {
    pendingRegisteredEvents = selfCopy->_pendingRegisteredEvents;
    if (!pendingRegisteredEvents)
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v17 = selfCopy->_pendingRegisteredEvents;
      selfCopy->_pendingRegisteredEvents = v16;

      pendingRegisteredEvents = selfCopy->_pendingRegisteredEvents;
    }

    [(NSMutableSet *)pendingRegisteredEvents addObject:eventCopy];
  }

  v18 = MEMORY[0x1A58E3570](v13);

  objc_sync_exit(selfCopy);

  return v18;
}

- (id)registerRequest:(id)request callback:(id)callback
{
  requestCopy = request;
  callbackCopy = callback;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = [(NSMutableDictionary *)selfCopy->_requestCallbacks objectForKey:requestCopy];
  if (v10)
  {
    if (!callbackCopy)
    {
      goto LABEL_8;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"MRCompanionLinkClient.m" lineNumber:316 description:{@"Duplicate request handler for %@", requestCopy}];
  }

  else
  {
    if (!selfCopy->_requestCallbacks)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
      requestCallbacks = selfCopy->_requestCallbacks;
      selfCopy->_requestCallbacks = v12;
    }

    v10 = [callbackCopy copy];
    v14 = selfCopy->_requestCallbacks;
    currentHandler = MEMORY[0x1A58E3570]();
    [(NSMutableDictionary *)v14 setObject:currentHandler forKey:requestCopy];
  }

LABEL_8:
  if (selfCopy->_connection)
  {
    [(MRCompanionLinkClient *)selfCopy _registerRequest:requestCopy];
  }

  else
  {
    pendingRegisteredRequests = selfCopy->_pendingRegisteredRequests;
    if (!pendingRegisteredRequests)
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v17 = selfCopy->_pendingRegisteredRequests;
      selfCopy->_pendingRegisteredRequests = v16;

      pendingRegisteredRequests = selfCopy->_pendingRegisteredRequests;
    }

    [(NSMutableSet *)pendingRegisteredRequests addObject:requestCopy];
  }

  v18 = MEMORY[0x1A58E3570](v10);

  objc_sync_exit(selfCopy);

  return v18;
}

- (void)removeCallback:(id)callback
{
  v32 = *MEMORY[0x1E69E9840];
  callbackCopy = callback;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  allValues = [(NSMutableDictionary *)selfCopy->_eventCallbacks allValues];
  v7 = [allValues countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        v11 = MEMORY[0x1A58E3570](callbackCopy);
        [v10 removeObject:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v7);
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__4;
  v25 = __Block_byref_object_dispose__4;
  v26 = 0;
  requestCallbacks = selfCopy->_requestCallbacks;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __40__MRCompanionLinkClient_removeCallback___block_invoke;
  v18 = &unk_1E769B8E8;
  v13 = callbackCopy;
  v19 = v13;
  v20 = &v21;
  [(NSMutableDictionary *)requestCallbacks enumerateKeysAndObjectsUsingBlock:&v15];
  if (v22[5])
  {
    [(NSMutableDictionary *)selfCopy->_requestCallbacks removeObjectForKey:v15, v16, v17, v18];
  }

  _Block_object_dispose(&v21, 8);
  objc_sync_exit(selfCopy);

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

- (void)_registerEvent:(id)event
{
  eventCopy = event;
  registeredEvents = self->_registeredEvents;
  if (!registeredEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_registeredEvents;
    self->_registeredEvents = v6;

    registeredEvents = self->_registeredEvents;
  }

  if (([(NSMutableSet *)registeredEvents containsObject:eventCopy]& 1) == 0)
  {
    objc_initWeak(&location, self);
    connection = self->_connection;
    v9 = [(MRCompanionLinkClient *)self _resolveEventID:eventCopy];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __40__MRCompanionLinkClient__registerEvent___block_invoke;
    v11[3] = &unk_1E769B910;
    objc_copyWeak(&v13, &location);
    v10 = eventCopy;
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

- (void)_registerRequest:(id)request
{
  requestCopy = request;
  registeredRequests = self->_registeredRequests;
  if (!registeredRequests)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_registeredRequests;
    self->_registeredRequests = v6;

    registeredRequests = self->_registeredRequests;
  }

  if (([(NSMutableSet *)registeredRequests containsObject:requestCopy]& 1) == 0)
  {
    objc_initWeak(&location, self);
    connection = self->_connection;
    v9 = [(MRCompanionLinkClient *)self _resolveEventID:requestCopy];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __42__MRCompanionLinkClient__registerRequest___block_invoke;
    v11[3] = &unk_1E769B960;
    objc_copyWeak(&v13, &location);
    v10 = requestCopy;
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

- (void)sendEvent:(id)event toDevicesOfHomeUser:(id)user userInfo:(id)info
{
  v37 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  userCopy = user;
  selfCopy = self;
  infoCopy = info;
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
        homeKitUserIdentifiers = [v12 homeKitUserIdentifiers];
        v14 = [homeKitUserIdentifiers countByEnumeratingWithState:&v27 objects:v35 count:16];
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
                objc_enumerationMutation(homeKitUserIdentifiers);
              }

              uUIDString = [*(*(&v27 + 1) + 8 * j) UUIDString];
              v19 = [uUIDString isEqualToString:userCopy];

              if (v19)
              {
                effectiveIdentifier = [v12 effectiveIdentifier];
                [(MRCompanionLinkClient *)selfCopy sendEvent:eventCopy destination:effectiveIdentifier userInfo:infoCopy];

                goto LABEL_16;
              }
            }

            v15 = [homeKitUserIdentifiers countByEnumeratingWithState:&v27 objects:v35 count:16];
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

- (void)sendEvent:(id)event destination:(id)destination userInfo:(id)info
{
  eventCopy = event;
  destinationCopy = destination;
  infoCopy = info;
  v10 = [infoCopy copy];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_connection)
  {
    [(MRCompanionLinkClient *)selfCopy _sendEvent:eventCopy userInfo:v10 destination:destinationCopy uid:uUIDString];
  }

  else
  {
    [(MRCompanionLinkClient *)selfCopy _enqueueEvent:eventCopy userInfo:v10 destination:destinationCopy uid:uUIDString];
  }

  objc_sync_exit(selfCopy);
}

- (void)sendRequest:(id)request destination:(id)destination userInfo:(id)info timeout:(double)timeout response:(id)response
{
  v49 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  destinationCopy = destination;
  infoCopy = info;
  responseCopy = response;
  v15 = [infoCopy copy];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  date = [MEMORY[0x1E695DF00] date];
  v19 = [MRBlockGuard alloc];
  v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@<%@>", requestCopy, uUIDString];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __75__MRCompanionLinkClient_sendRequest_destination_userInfo_timeout_response___block_invoke;
  v39[3] = &unk_1E769AD80;
  v21 = responseCopy;
  v40 = v21;
  v22 = [(MRBlockGuard *)v19 initWithTimeout:v20 reason:v39 handler:timeout];

  v23 = _MRLogForCategory(7uLL);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v42 = requestCopy;
    v43 = 2114;
    v44 = uUIDString;
    v45 = 2112;
    v46 = destinationCopy;
    v47 = 2112;
    v48 = infoCopy;
    _os_log_impl(&dword_1A2860000, v23, OS_LOG_TYPE_DEFAULT, "[CompanionLinkClient] Request: %{public}@<%{public}@> to destination <%@> with userInfo %@", buf, 0x2Au);
  }

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __75__MRCompanionLinkClient_sendRequest_destination_userInfo_timeout_response___block_invoke_125;
  v33[3] = &unk_1E769B988;
  v24 = v22;
  v34 = v24;
  v25 = date;
  v35 = v25;
  v26 = requestCopy;
  v36 = v26;
  v27 = uUIDString;
  v37 = v27;
  v28 = v21;
  v38 = v28;
  v29 = MEMORY[0x1A58E3570](v33);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_connection)
  {
    [(MRCompanionLinkClient *)selfCopy _sendRequest:v26 userInfo:v15 destination:destinationCopy uid:v27 date:v25 response:v29];
  }

  else
  {
    [(MRCompanionLinkClient *)selfCopy _enqueueRequest:v26 userInfo:v15 destination:destinationCopy uid:v27 date:v25 response:v29];
  }

  objc_sync_exit(selfCopy);

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

- (void)_sendEvent:(id)event userInfo:(id)info destination:(id)destination uid:(id)uid
{
  v38 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  infoCopy = info;
  destinationCopy = destination;
  uidCopy = uid;
  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = +[MROrigin localOrigin];
  v16 = [MRDeviceInfoRequest deviceInfoForOrigin:v15];

  data = [v16 data];
  [v14 setObject:data forKeyedSubscript:@"deviceInfoData"];

  [v14 setObject:uidCopy forKeyedSubscript:@"uid"];
  if (infoCopy)
  {
    v18 = MRCreateEncodedUserInfo(infoCopy);
    [v14 setObject:v18 forKeyedSubscript:@"userInfoData"];
  }

  v19 = _MRLogForCategory(7uLL);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v31 = eventCopy;
    v32 = 2114;
    v33 = uidCopy;
    v34 = 2112;
    v35 = destinationCopy;
    v36 = 2112;
    v37 = infoCopy;
    _os_log_impl(&dword_1A2860000, v19, OS_LOG_TYPE_DEFAULT, "[CompanionLinkClient] Sending event %{public}@<%{public}@> to destination <%@> with userInfo %@", buf, 0x2Au);
  }

  connection = self->_connection;
  v21 = [(MRCompanionLinkClient *)self _resolveEventID:eventCopy];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __61__MRCompanionLinkClient__sendEvent_userInfo_destination_uid___block_invoke;
  v26[3] = &unk_1E769B9B0;
  v27 = eventCopy;
  v28 = uidCopy;
  v29 = destinationCopy;
  v22 = destinationCopy;
  v23 = uidCopy;
  v24 = eventCopy;
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

- (void)_enqueueEvent:(id)event userInfo:(id)info destination:(id)destination uid:(id)uid
{
  v27 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  infoCopy = info;
  destinationCopy = destination;
  uidCopy = uid;
  v14 = _MRLogForCategory(7uLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138544130;
    v20 = eventCopy;
    v21 = 2114;
    v22 = uidCopy;
    v23 = 2112;
    v24 = destinationCopy;
    v25 = 2112;
    v26 = infoCopy;
    _os_log_impl(&dword_1A2860000, v14, OS_LOG_TYPE_DEFAULT, "[CompanionLinkClient] Enqueing event %{public}@<%{public}@> to destination <%@> with userInfo %@", &v19, 0x2Au);
  }

  if (!self->_pendingEvents)
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingEvents = self->_pendingEvents;
    self->_pendingEvents = v15;
  }

  v17 = objc_alloc_init(MRCompanionLinkClientEvent);
  [(MRCompanionLinkClientEvent *)v17 setEventID:eventCopy];
  [(MRCompanionLinkClientEvent *)v17 setUserInfo:infoCopy];
  [(MRCompanionLinkClientEvent *)v17 setDestination:destinationCopy];
  [(MRCompanionLinkClientEvent *)v17 setUid:uidCopy];
  [(NSMutableArray *)self->_pendingEvents addObject:v17];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_sendRequest:(id)request userInfo:(id)info destination:(id)destination uid:(id)uid date:(id)date response:(id)response
{
  v38 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  infoCopy = info;
  destinationCopy = destination;
  uidCopy = uid;
  responseCopy = response;
  v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19 = +[MROrigin localOrigin];
  v20 = [MRDeviceInfoRequest deviceInfoForOrigin:v19];

  data = [v20 data];
  [v18 setObject:data forKeyedSubscript:@"deviceInfoData"];

  [v18 setObject:uidCopy forKeyedSubscript:@"uid"];
  if (infoCopy)
  {
    v22 = MRCreateEncodedUserInfo(infoCopy);
    [v18 setObject:v22 forKeyedSubscript:@"userInfoData"];
  }

  v23 = _MRLogForCategory(7uLL);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v31 = requestCopy;
    v32 = 2114;
    v33 = uidCopy;
    v34 = 2112;
    v35 = destinationCopy;
    v36 = 2112;
    v37 = infoCopy;
    _os_log_impl(&dword_1A2860000, v23, OS_LOG_TYPE_DEFAULT, "[CompanionLinkClient] Sending request %{public}@<%{public}@> to destination <%@> with userInfo %@", buf, 0x2Au);
  }

  connection = self->_connection;
  v25 = [(MRCompanionLinkClient *)self _resolveEventID:requestCopy];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __77__MRCompanionLinkClient__sendRequest_userInfo_destination_uid_date_response___block_invoke;
  v28[3] = &unk_1E769B9D8;
  v29 = responseCopy;
  v26 = responseCopy;
  [(RPCompanionLinkClient *)connection sendRequestID:v25 request:v18 destinationID:destinationCopy options:0 responseHandler:v28];

  v27 = *MEMORY[0x1E69E9840];
}

void __77__MRCompanionLinkClient__sendRequest_userInfo_destination_uid_date_response___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 32);
  v6 = a4;
  v7 = MRCreateDecodedUserInfo(a2);
  (*(v5 + 16))(v5, v7, v6);
}

- (void)_enqueueRequest:(id)request userInfo:(id)info destination:(id)destination uid:(id)uid date:(id)date response:(id)response
{
  v33 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  infoCopy = info;
  destinationCopy = destination;
  uidCopy = uid;
  responseCopy = response;
  dateCopy = date;
  v20 = _MRLogForCategory(7uLL);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138544130;
    v26 = requestCopy;
    v27 = 2114;
    v28 = uidCopy;
    v29 = 2112;
    v30 = destinationCopy;
    v31 = 2112;
    v32 = infoCopy;
    _os_log_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEFAULT, "[CompanionLinkClient] Enqueing request %{public}@<%{public}@> to destination <%@> with userInfo %@", &v25, 0x2Au);
  }

  if (!self->_pendingRequests)
  {
    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingRequests = self->_pendingRequests;
    self->_pendingRequests = v21;
  }

  v23 = objc_alloc_init(MRCompanionLinkClientRequest);
  [(MRCompanionLinkClientEvent *)v23 setEventID:requestCopy];
  [(MRCompanionLinkClientEvent *)v23 setUserInfo:infoCopy];
  [(MRCompanionLinkClientEvent *)v23 setDestination:destinationCopy];
  [(MRCompanionLinkClientEvent *)v23 setUid:uidCopy];
  [(MRCompanionLinkClientRequest *)v23 setDate:dateCopy];

  [(MRCompanionLinkClientRequest *)v23 setCallback:responseCopy];
  [(NSMutableArray *)self->_pendingRequests addObject:v23];

  v24 = *MEMORY[0x1E69E9840];
}

- (void)_handleEventID:(id)d event:(id)event options:(id)options
{
  v62 = *MEMORY[0x1E69E9840];
  dCopy = d;
  eventCopy = event;
  optionsCopy = options;
  v31 = *MEMORY[0x1E69C6BE8];
  v32 = optionsCopy;
  v9 = [optionsCopy objectForKeyedSubscript:?];
  v10 = [MRDeviceInfo alloc];
  v11 = [eventCopy objectForKeyedSubscript:@"deviceInfoData"];
  v12 = [(MRDeviceInfo *)v10 initWithData:v11];

  v13 = [eventCopy objectForKeyedSubscript:@"userInfoData"];
  v37 = MRCreateDecodedUserInfo(v13);

  v34 = [eventCopy objectForKeyedSubscript:@"uid"];
  deviceUID = [(MRDeviceInfo *)v12 deviceUID];
  name = [(MRDeviceInfo *)v12 name];
  v14 = _MRLogForCategory(7uLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544898;
    v49 = dCopy;
    v50 = 2114;
    v51 = v34;
    v52 = 2114;
    v53 = deviceUID;
    v54 = 2114;
    v55 = name;
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
  activeDevices = [(RPCompanionLinkClient *)self->_connection activeDevices];
  v16 = [activeDevices countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v16)
  {
    v17 = *v44;
LABEL_5:
    v18 = 0;
    while (1)
    {
      if (*v44 != v17)
      {
        objc_enumerationMutation(activeDevices);
      }

      v19 = *(*(&v43 + 1) + 8 * v18);
      effectiveIdentifier = [v19 effectiveIdentifier];
      v21 = [effectiveIdentifier isEqualToString:v9];

      if (v21)
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = [activeDevices countByEnumeratingWithState:&v43 objects:v47 count:16];
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

    selfCopy = self;
    objc_sync_enter(selfCopy);
    v24 = [(NSMutableDictionary *)selfCopy->_eventCallbacks objectForKey:dCopy];
    v25 = [v24 copy];

    objc_sync_exit(selfCopy);
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
      v49 = dCopy;
      v50 = 2114;
      v51 = deviceUID;
      v52 = 2114;
      v53 = name;
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

- (void)_handleRequestID:(id)d request:(id)request options:(id)options response:(id)response
{
  v72 = *MEMORY[0x1E69E9840];
  dCopy = d;
  requestCopy = request;
  optionsCopy = options;
  responseCopy = response;
  v35 = *MEMORY[0x1E69C6BE8];
  v36 = optionsCopy;
  v11 = [optionsCopy objectForKeyedSubscript:?];
  v12 = [MRDeviceInfo alloc];
  v13 = [requestCopy objectForKeyedSubscript:@"deviceInfoData"];
  v42 = [(MRDeviceInfo *)v12 initWithData:v13];

  v14 = [requestCopy objectForKeyedSubscript:@"userInfoData"];
  v41 = MRCreateDecodedUserInfo(v14);

  v15 = [requestCopy objectForKeyedSubscript:@"uid"];
  deviceUID = [(MRDeviceInfo *)v42 deviceUID];
  name = [(MRDeviceInfo *)v42 name];
  v16 = _MRLogForCategory(7uLL);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544898;
    v59 = dCopy;
    v60 = 2114;
    v61 = v15;
    v62 = 2114;
    v63 = deviceUID;
    v64 = 2114;
    v65 = name;
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
  activeDevices = [(RPCompanionLinkClient *)self->_connection activeDevices];
  v18 = [activeDevices countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v18)
  {
    v19 = *v54;
    while (2)
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v54 != v19)
        {
          objc_enumerationMutation(activeDevices);
        }

        v21 = *(*(&v53 + 1) + 8 * i);
        effectiveIdentifier = [v21 effectiveIdentifier];
        v23 = [effectiveIdentifier isEqualToString:v11];

        if (v23)
        {
          v18 = v21;
          goto LABEL_13;
        }
      }

      v18 = [activeDevices countByEnumeratingWithState:&v53 objects:v57 count:16];
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
  v24 = dCopy;
  v50 = v24;
  v25 = v15;
  v51 = v25;
  v26 = responseCopy;
  v52 = v26;
  v27 = MEMORY[0x1A58E3570](v49);
  if (v18)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v29 = [(NSMutableDictionary *)selfCopy->_requestCallbacks objectForKey:v24];
    v30 = [v29 copy];

    objc_sync_exit(selfCopy);
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

- (id)_resolveEventID:(id)d
{
  v3 = MEMORY[0x1E696AEC0];
  dCopy = d;
  dCopy = [[v3 alloc] initWithFormat:@"com.apple.mediaremote.%@", dCopy];

  return dCopy;
}

- (NSArray)companionLinkDevices
{
  connection = [(MRCompanionLinkClient *)self connection];
  activeDevices = [connection activeDevices];

  return activeDevices;
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
@interface COIDSServiceDirector
- (COIDSServiceDirector)initWithIDSService:(id)a3 meshName:(id)a4;
- (COIDSServiceDirectorOnDemandDiscoveryDelegate)discoveryDelegate;
- (NSString)description;
- (id)tokenFromURI:(id)a3;
- (id)transportWithDiscoveryRecord:(id)a3 withExecutionContext:(id)a4;
- (void)_withLock:(id)a3;
- (void)sendMessage:(id)a3 toDestination:(id)a4 completionHandler:(id)a5;
- (void)sendResponse:(id)a3 responseIdentifier:(id)a4 toDestination:(id)a5;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)start;
@end

@implementation COIDSServiceDirector

- (COIDSServiceDirector)initWithIDSService:(id)a3 meshName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = COIDSServiceDirector;
  v9 = [(COIDSServiceDirector *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_service, a3);
    objc_storeStrong(&v10->_meshName, a4);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.coordination.idsdirector", v11);
    queue = v10->_queue;
    v10->_queue = v12;

    v14 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    activeTransports = v10->_activeTransports;
    v10->_activeTransports = v14;

    v16 = objc_alloc_init(COIDSMessageFactory);
    messageFactory = v10->_messageFactory;
    v10->_messageFactory = v16;

    v10->_lock._os_unfair_lock_opaque = 0;
  }

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p, mesh = %@>", v5, self, self->_meshName];

  return v6;
}

- (void)start
{
  v4 = [(COIDSServiceDirector *)self service];
  v3 = [(COIDSServiceDirector *)self queue];
  [v4 addDelegate:self queue:v3];
}

- (id)transportWithDiscoveryRecord:(id)a3 withExecutionContext:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [[COIDSTransport alloc] initWithDiscoveryRecord:v6 executionContext:v7];

  v9 = COCoreLogForCategory(17);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 IDSIdentifier];
    v19 = 138543874;
    v20 = self;
    v21 = 2048;
    v22 = v8;
    v23 = 2114;
    v24 = v10;
    _os_log_impl(&dword_244378000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ created new transport %p for remote IDS identifier %{public}@", &v19, 0x20u);
  }

  v11 = [v6 deviceTokenURI];
  v12 = [(COIDSServiceDirector *)self service];
  v13 = [v12 conformsToProtocol:&unk_2857E6360];

  if (v13)
  {
    v14 = [(COIDSServiceDirector *)self service];
    v15 = [v14 tokenFromID:v11];
  }

  else
  {
    v15 = [(COIDSServiceDirector *)self tokenFromURI:v11];
  }

  v16 = [(COIDSServiceDirector *)self activeTransports];
  [v16 setObject:v8 forKey:v15];

  v17 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)sendMessage:(id)a3 toDestination:(id)a4 completionHandler:(id)a5
{
  v21[1] = *MEMORY[0x277D85DE8];
  v20 = *MEMORY[0x277D185B0];
  v21[0] = &unk_2857C8898;
  v8 = MEMORY[0x277CBEAC0];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v13 = [(COIDSServiceDirector *)self service];
  v14 = [MEMORY[0x277CBEB98] setWithObject:v10];

  v18 = 0;
  v19 = 0;
  [v13 sendMessage:v11 toDestinations:v14 priority:300 options:v12 identifier:&v19 error:&v18];

  v15 = v19;
  v16 = v18;

  v9[2](v9, v15, v16);
  v17 = *MEMORY[0x277D85DE8];
}

- (void)sendResponse:(id)a3 responseIdentifier:(id)a4 toDestination:(id)a5
{
  v20[1] = *MEMORY[0x277D85DE8];
  v19 = *MEMORY[0x277D18610];
  v20[0] = a4;
  v8 = MEMORY[0x277CBEAC0];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v13 = [(COIDSServiceDirector *)self service];
  v14 = [MEMORY[0x277CBEB98] setWithObject:v9];

  v17 = 0;
  v18 = 0;
  [v13 sendMessage:v11 toDestinations:v14 priority:300 options:v12 identifier:&v18 error:&v17];

  v15 = v18;
  v16 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v8 = a6;
  v21 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a7;
  v12 = COCoreLogForCategory(17);
  v13 = v12;
  if (v8)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543618;
      v16 = self;
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&dword_244378000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Did send message %{public}@ successfully", &v15, 0x16u);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v15 = 138543874;
    v16 = self;
    v17 = 2114;
    v18 = v10;
    v19 = 2114;
    v20 = v11;
    _os_log_error_impl(&dword_244378000, v13, OS_LOG_TYPE_ERROR, "%{public}@ Failed to send message %{public}@: %{public}@", &v15, 0x20u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a5;
  v11 = a6;
  v12 = a7;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__COIDSServiceDirector_service_account_incomingMessage_fromID_context___block_invoke;
  v16[3] = &unk_278E15C88;
  v16[4] = self;
  v17 = v11;
  v18 = v12;
  v19 = v10;
  v13 = v10;
  v14 = v12;
  v15 = v11;
  [(COIDSServiceDirector *)self _withLock:v16];
}

void __71__COIDSServiceDirector_service_account_incomingMessage_fromID_context___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) service];
  v3 = [v2 conformsToProtocol:&unk_2857E6360];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 service];
    v6 = [v5 tokenFromID:*(a1 + 40)];
  }

  else
  {
    v6 = [v4 tokenFromURI:*(a1 + 40)];
  }

  v7 = [*(a1 + 32) activeTransports];
  v8 = [v7 objectForKey:v6];

  v9 = [*(a1 + 48) outgoingResponseIdentifier];
  v10 = [*(a1 + 48) incomingResponseIdentifier];
  v11 = [*(a1 + 32) messageFactory];
  v12 = *(a1 + 56);
  v35 = 0;
  v13 = [v11 decodeDictionary:v12 error:&v35];
  v14 = v35;

  if (v13)
  {
    if (v8)
    {
      [v8 handleMessage:v13 requestIdentifier:v9 responseIdentifier:v10 from:*(a1 + 40)];
      goto LABEL_27;
    }

    if ([v13 type])
    {
      v20 = COCoreLogForCategory(17);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1 + 32);
        *buf = 138543874;
        v37 = v21;
        v38 = 2112;
        v39 = v9;
        v40 = 2112;
        v41 = v10;
        _os_log_error_impl(&dword_244378000, v20, OS_LOG_TYPE_ERROR, "%{public}@ dropping response '%@' for '%@' from unknown node", buf, 0x20u);
      }

LABEL_26:

      goto LABEL_27;
    }

    v22 = [*(a1 + 32) service];
    v23 = [v22 conformsToProtocol:&unk_2857E6360];

    if (v23)
    {
      v24 = [*(a1 + 32) service];
      v25 = [v24 localIDSIdentifierForDestination:*(a1 + 40)];
    }

    else
    {
      v26 = [v13 metadata];
      v24 = v26;
      if (!v26)
      {
        v20 = 0;
LABEL_18:

        v27 = [*(a1 + 32) discoveryDelegate];
        if (v20 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v28 = [[COOnDemandIDSNodeCreationRequest alloc] initWithMessage:v13 idsIdentifier:v20 uriToken:*(a1 + 40) requestIdentifier:v9 responseIdentifier:v10];
          log = COCoreLogForCategory(17);
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
          {
            v29 = *(a1 + 32);
            *buf = 138543618;
            v37 = v29;
            v38 = 2112;
            v39 = v9;
            _os_log_impl(&dword_244378000, log, OS_LOG_TYPE_DEFAULT, "%{public}@ received message '%@' from unknown node. Attempting to create node on demand.", buf, 0x16u);
          }

          [v27 onDemandDiscoveryForRequest:v28];
        }

        else
        {
          v28 = COCoreLogForCategory(17);
          if (os_log_type_enabled(&v28->super.super, OS_LOG_TYPE_ERROR))
          {
            v33 = *(a1 + 32);
            *buf = 138543874;
            v37 = v33;
            v38 = 2112;
            v39 = v9;
            v40 = 2114;
            v41 = v20;
            _os_log_error_impl(&dword_244378000, &v28->super.super, OS_LOG_TYPE_ERROR, "%{public}@ dropping message '%@' from unknown node. IDS identifier = %{public}@", buf, 0x20u);
          }
        }

        goto LABEL_26;
      }

      v25 = [v26 objectForKey:0x2857B6848];
    }

    v20 = v25;
    goto LABEL_18;
  }

  v15 = COCoreLogForCategory(17);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v31 = [*(a1 + 32) description];
    v32 = *(a1 + 40);
    *buf = 138543874;
    v37 = v31;
    v38 = 2114;
    v39 = v32;
    v40 = 2114;
    v41 = v14;
    _os_log_error_impl(&dword_244378000, v15, OS_LOG_TYPE_ERROR, "%{public}@ received invalid message from %{public}@: %{public}@", buf, 0x20u);
  }

  v16 = [*(a1 + 32) messageFactory];
  v17 = [v16 encodeError:v14];

  v18 = *(a1 + 32);
  v19 = [v17 dictionaryRepresentation];
  [v18 sendResponse:v19 responseIdentifier:v9 toDestination:*(a1 + 40)];

LABEL_27:
  v30 = *MEMORY[0x277D85DE8];
}

- (void)_withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (id)tokenFromURI:(id)a3
{
  v6 = 0;
  v3 = [a3 _stripPotentialTokenURIWithToken:&v6];
  v4 = v6;

  return v4;
}

- (COIDSServiceDirectorOnDemandDiscoveryDelegate)discoveryDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_discoveryDelegate);

  return WeakRetained;
}

@end
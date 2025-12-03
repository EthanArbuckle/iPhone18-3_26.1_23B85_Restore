@interface GKViceroyRelay
- (BOOL)shouldStartRelayForPlayerID:(id)d;
- (GKTransportClientDelegate)clientDelegate;
- (GKTransportMatchDataDelegate)matchDataDelegate;
- (GKViceroyRelay)initWithClientDelegate:(id)delegate connection:(id)connection matchDataDelegate:(id)dataDelegate daemonProxy:(id)proxy;
- (id)dataFromBase64String:(id)string;
- (id)initiateRelayInfoFromPush:(id)push forPlayerID:(id)d;
- (id)initiateRelayInfoFromServerResponse:(id)response forPlayerID:(id)d;
- (id)updateRelayInfoFromPush:(id)push forPlayerID:(id)d;
- (void)acceptRelayResponse:(id)response playerID:(id)d;
- (void)didReceiveRelayPushData:(id)data;
- (void)didReceiveRelayPushNotification:(id)notification;
- (void)disconnect;
- (void)handleRelayPushData:(id)data onlyIfPreemptive:(BOOL)preemptive;
- (void)initiateRelayConnectionForPlayerID:(id)d connectionContext:(id)context;
- (void)initiateRelayResponse:(id)response playerID:(id)d;
- (void)preemptRelay:(id)relay;
- (void)relayDidInitiateConnection:(id)connection forPlayerID:(id)d;
- (void)relayDidUpdateConnection:(id)connection forPlayerID:(id)d;
- (void)requestRelayInitiateForPlayerID:(id)d connectionContext:(id)context;
- (void)requestRelayUpdateForPlayerID:(id)d connectionContext:(id)context;
- (void)sessionDidInitiateOrUpdateRelay:(id)relay playerID:(id)d;
- (void)updateRelayConnectionForPlayerID:(id)d connectionContext:(id)context;
@end

@implementation GKViceroyRelay

- (GKViceroyRelay)initWithClientDelegate:(id)delegate connection:(id)connection matchDataDelegate:(id)dataDelegate daemonProxy:(id)proxy
{
  delegateCopy = delegate;
  connectionCopy = connection;
  dataDelegateCopy = dataDelegate;
  proxyCopy = proxy;
  v18.receiver = self;
  v18.super_class = GKViceroyRelay;
  v14 = [(GKViceroyRelay *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_weakClientDelegate, delegateCopy);
    objc_storeStrong(&v15->_connection, connection);
    objc_storeWeak(&v15->_matchDataDelegateWeak, dataDelegateCopy);
    objc_storeStrong(&v15->_daemonProxy, proxy);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v15 selector:sel_didReceiveRelayPushNotification_ name:@"GKRelayPushNotification" object:0];
  }

  return v15;
}

- (void)disconnect
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];
}

- (void)acceptRelayResponse:(id)response playerID:(id)d
{
  v16 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  dCopy = d;
  v8 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
    v8 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = dCopy;
    v14 = 2112;
    v15 = responseCopy;
    _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_DEFAULT, "[GKViceroyRelay] Accept relay response for playerID: %@ - response: %@", &v12, 0x16u);
  }

  if ([(GKViceroyRelay *)self shouldStartRelayForPlayerID:dCopy])
  {
    v10 = [(GKViceroyRelay *)self initiateRelayInfoFromServerResponse:responseCopy forPlayerID:dCopy];
    [(GKViceroyRelay *)self initiateRelayConnectionForPlayerID:dCopy connectionContext:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleRelayPushData:(id)data onlyIfPreemptive:(BOOL)preemptive
{
  dataCopy = data;
  v13 = dataCopy;
  if (preemptive)
  {
    v7 = +[GKPreferences shared];
    if (([v7 preemptiveRelay] & 1) == 0)
    {

      goto LABEL_8;
    }

    v8 = [v13 objectForKeyedSubscript:@"t"];

    v9 = v13;
    if (!v8)
    {
      goto LABEL_9;
    }

    selfCopy2 = self;
    v11 = v13;
  }

  else
  {
    v12 = dataCopy;
    selfCopy2 = self;
    v11 = v12;
  }

  [(GKViceroyRelay *)selfCopy2 didReceiveRelayPushData:v11];
LABEL_8:
  v9 = v13;
LABEL_9:
}

- (void)preemptRelay:(id)relay
{
  v12 = *MEMORY[0x277D85DE8];
  relayCopy = relay;
  v5 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v6 = GKOSLoggers();
    v5 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = relayCopy;
    _os_log_impl(&dword_227904000, v5, OS_LOG_TYPE_DEFAULT, "[GKViceroyRelay] Preempt relay for playerID:%@", &v10, 0xCu);
  }

  if ([(GKViceroyRelay *)self shouldStartRelayForPlayerID:relayCopy])
  {
    matchDataDelegate = [(GKViceroyRelay *)self matchDataDelegate];
    v8 = [matchDataDelegate getConnectionContextForPlayerID:relayCopy];

    [(GKViceroyRelay *)self requestRelayInitiateForPlayerID:relayCopy connectionContext:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveRelayPushNotification:(id)notification
{
  userInfo = [notification userInfo];
  [(GKViceroyRelay *)self didReceiveRelayPushData:userInfo];
}

- (void)didReceiveRelayPushData:(id)data
{
  dataCopy = data;
  clientDelegate = [(GKViceroyRelay *)self clientDelegate];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__GKViceroyRelay_didReceiveRelayPushData___block_invoke;
  v7[3] = &unk_2785DD5E0;
  v8 = dataCopy;
  selfCopy = self;
  v6 = dataCopy;
  [clientDelegate relayDidReceivePushData:v6 completionHandler:v7];
}

uint64_t __42__GKViceroyRelay_didReceiveRelayPushData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v8 = v3;
    v4 = [*(a1 + 32) objectForKey:@"c"];
    v5 = [v4 integerValue];

    if (v5 != 2)
    {
      if (v5 == 6)
      {
        v6 = [*(a1 + 40) updateRelayInfoFromPush:*(a1 + 32) forPlayerID:v8];
        if ([v6 hasInitRelayInfo])
        {
          [*(a1 + 40) updateRelayConnectionForPlayerID:v8 connectionContext:v6];
        }

LABEL_9:

        goto LABEL_10;
      }

      if (v5 != 5)
      {
        goto LABEL_10;
      }
    }

    if (![*(a1 + 40) shouldStartRelayForPlayerID:v8])
    {
      goto LABEL_10;
    }

    v6 = [*(a1 + 40) initiateRelayInfoFromPush:*(a1 + 32) forPlayerID:v8];
    [*(a1 + 40) initiateRelayConnectionForPlayerID:v8 connectionContext:v6];
    goto LABEL_9;
  }

LABEL_10:

  return MEMORY[0x2821F96F8]();
}

- (void)sessionDidInitiateOrUpdateRelay:(id)relay playerID:(id)d
{
  relayCopy = relay;
  dCopy = d;
  v7 = [relayCopy objectForKey:@"GKSRelayInitiateInfo"];
  if (v7)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v9 = [v7 objectForKey:*MEMORY[0x277CE5690]];
    [dictionary setObject:v9 forKey:@"self-blob"];

    v10 = [v7 objectForKey:*MEMORY[0x277CE5698]];
    [dictionary setObject:v10 forKey:@"self-nat-ip"];

    v11 = [v7 objectForKey:*MEMORY[0x277CE56A0]];
    [dictionary setObject:v11 forKey:@"self-nat-type"];

    v12 = [v7 objectForKey:*MEMORY[0x277CE5658]];
    [dictionary setObject:v12 forKey:@"peer-blob"];

    v13 = [v7 objectForKey:*MEMORY[0x277CE5660]];
    [dictionary setObject:v13 forKey:@"peer-nat-ip"];

    v14 = [v7 objectForKey:*MEMORY[0x277CE5668]];
    [dictionary setObject:v14 forKey:@"peer-nat-type"];

    [(GKViceroyRelay *)self relayDidInitiateConnection:dictionary forPlayerID:dCopy];
  }

  else
  {
    dictionary = [relayCopy objectForKey:@"GKSRelayUpdateInfo"];
    if (dictionary)
    {
      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      v16 = [dictionary objectForKey:*MEMORY[0x277CE56D8]];
      [dictionary2 setObject:v16 forKey:@"relay-type"];

      v17 = [dictionary objectForKey:*MEMORY[0x277CE5650]];
      [dictionary2 setObject:v17 forKey:@"relay-connection-id"];

      v18 = [dictionary objectForKey:*MEMORY[0x277CE56D0]];
      [dictionary2 setObject:v18 forKey:@"relay-transaction-id-alloc"];

      v19 = [dictionary objectForKey:*MEMORY[0x277CE56C8]];
      [dictionary2 setObject:v19 forKey:@"relay-token-alloc-res"];

      v20 = [dictionary objectForKey:*MEMORY[0x277CE5670]];
      [dictionary2 setObject:v20 forKey:@"peer-relay-ip"];

      v21 = [dictionary objectForKey:*MEMORY[0x277CE5688]];
      [dictionary2 setObject:v21 forKey:@"peer-relay-port"];

      v22 = [dictionary objectForKey:*MEMORY[0x277CE56A8]];
      [dictionary2 setObject:v22 forKey:@"self-relay-ip"];

      v23 = [dictionary objectForKey:*MEMORY[0x277CE56C0]];
      [dictionary2 setObject:v23 forKey:@"self-relay-port"];

      v24 = [dictionary objectForKey:*MEMORY[0x277CE56B0]];
      [dictionary2 setObject:v24 forKey:@"self-relay-nat-ip"];

      v25 = [dictionary objectForKey:*MEMORY[0x277CE56B8]];
      [dictionary2 setObject:v25 forKey:@"self-relay-nat-port"];

      v26 = [dictionary objectForKey:*MEMORY[0x277CE5648]];
      [dictionary2 setObject:v26 forKey:@"client-data"];

      [(GKViceroyRelay *)self relayDidUpdateConnection:dictionary2 forPlayerID:dCopy];
    }
  }
}

- (BOOL)shouldStartRelayForPlayerID:(id)d
{
  dCopy = d;
  matchDataDelegate = [(GKViceroyRelay *)self matchDataDelegate];
  v6 = [matchDataDelegate getConnectionContextForPlayerID:dCopy];

  if ([v6 relayInitiated] & 1) != 0 || (objc_msgSend(v6, "connected"))
  {
    v7 = 0;
  }

  else
  {
    v7 = 1;
    [v6 setRelayInitiated:1];
  }

  return v7;
}

- (void)relayDidInitiateConnection:(id)connection forPlayerID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  dCopy = d;
  if ([(GKViceroyRelay *)self shouldStartRelayForPlayerID:dCopy])
  {
    matchDataDelegate = [(GKViceroyRelay *)self matchDataDelegate];
    v9 = [matchDataDelegate updateConnectionInfo:connectionCopy forPlayerID:dCopy];

    [(GKViceroyRelay *)self requestRelayInitiateForPlayerID:dCopy connectionContext:v9];
  }

  else
  {
    v10 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
      v10 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = dCopy;
      _os_log_impl(&dword_227904000, v10, OS_LOG_TYPE_DEFAULT, "[GKViceroyRelay] Not starting relay for playerID: %@", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)requestRelayInitiateForPlayerID:(id)d connectionContext:(id)context
{
  v43 = *MEMORY[0x277D85DE8];
  dCopy = d;
  contextCopy = context;
  info = [contextCopy info];
  v9 = [info objectForKey:@"missing-client-data"];
  bOOLValue = [v9 BOOLValue];

  v11 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v12 = GKOSLoggers();
    v11 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v11;
    *buf = 138412802;
    v38 = dCopy;
    v39 = 1024;
    connected = [contextCopy connected];
    v41 = 1024;
    v42 = bOOLValue;
    _os_log_impl(&dword_227904000, v13, OS_LOG_TYPE_DEFAULT, "[GKViceroyRelay] Request relayInit for playerID: %@ connected: %d missingClientData: %d", buf, 0x18u);
  }

  if (!(bOOLValue & 1 | (([contextCopy connected] & 1) == 0)))
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    info2 = [contextCopy info];
    v16 = [info2 objectForKey:@"session-token"];
    [dictionary setObject:v16 forKey:@"session-token"];

    info3 = [contextCopy info];
    v18 = [info3 objectForKey:@"self-nat-ip"];
    [dictionary setObject:v18 forKey:@"self-nat-ip"];

    info4 = [contextCopy info];
    v20 = [info4 objectForKey:@"self-blob"];
    [dictionary setObject:v20 forKey:@"self-blob"];

    info5 = [contextCopy info];
    v22 = [info5 objectForKey:@"peer-id"];
    [dictionary setObject:v22 forKey:@"peer-id"];

    info6 = [contextCopy info];
    v24 = [info6 objectForKey:@"peer-push-token"];
    [dictionary setObject:v24 forKey:@"peer-push-token"];

    info7 = [contextCopy info];
    v26 = [info7 objectForKey:@"peer-nat-type"];
    [dictionary setObject:v26 forKey:@"peer-nat-type"];

    info8 = [contextCopy info];
    v28 = [info8 objectForKey:@"peer-nat-ip"];
    [dictionary setObject:v28 forKey:@"peer-nat-ip"];

    info9 = [contextCopy info];
    v30 = [info9 objectForKey:@"peer-blob"];
    [dictionary setObject:v30 forKey:@"peer-blob"];

    v31 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v32 = GKOSLoggers();
      v31 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_227904000, v31, OS_LOG_TYPE_DEFAULT, "[GKViceroyRelay] Client process calling method initiateRelayRequest in multiplayerService", buf, 2u);
    }

    daemonProxy = [(GKViceroyRelay *)self daemonProxy];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __68__GKViceroyRelay_requestRelayInitiateForPlayerID_connectionContext___block_invoke;
    v35[3] = &unk_2785DD608;
    v35[4] = self;
    v36 = dCopy;
    [daemonProxy initiateRelayRequest:dictionary completionHandler:v35];
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __68__GKViceroyRelay_requestRelayInitiateForPlayerID_connectionContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_GKGeneral;
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      __68__GKViceroyRelay_requestRelayInitiateForPlayerID_connectionContext___block_invoke_cold_1(v6, v9);
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
      v7 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_227904000, v7, OS_LOG_TYPE_DEFAULT, "[GKViceroyRelay] initiateRelayRequest successfully returned result", v11, 2u);
    }

    [*(a1 + 32) initiateRelayResponse:v5 playerID:*(a1 + 40)];
  }
}

- (id)initiateRelayInfoFromPush:(id)push forPlayerID:(id)d
{
  v32 = *MEMORY[0x277D85DE8];
  pushCopy = push;
  dCopy = d;
  v8 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
    v8 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 138412546;
    v29 = dCopy;
    v30 = 2112;
    v31 = pushCopy;
    _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_DEFAULT, "[GKViceroyRelay] Got initRelay info from push for playerID: %@ - userInfo: %@", &v28, 0x16u);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v11 = [pushCopy objectForKey:@"t"];
  [dictionary setObject:v11 forKey:@"relay-type"];

  v12 = [pushCopy objectForKey:@"k"];
  v13 = [(GKViceroyRelay *)self dataFromBase64String:v12];
  [dictionary setObject:v13 forKey:@"relay-connection-id"];

  v14 = [pushCopy objectForKey:@"q"];
  v15 = [(GKViceroyRelay *)self dataFromBase64String:v14];
  [dictionary setObject:v15 forKey:@"relay-transaction-id-alloc"];

  v16 = [pushCopy objectForKey:@"h"];
  v17 = [(GKViceroyRelay *)self dataFromBase64String:v16];
  [dictionary setObject:v17 forKey:@"self-relay-ip"];

  v18 = [pushCopy objectForKey:@"o"];
  [dictionary setObject:v18 forKey:@"self-relay-port"];

  v19 = [pushCopy objectForKey:@"H"];
  v20 = [(GKViceroyRelay *)self dataFromBase64String:v19];
  [dictionary setObject:v20 forKey:@"peer-relay-ip"];

  v21 = [pushCopy objectForKey:@"O"];
  [dictionary setObject:v21 forKey:@"peer-relay-port"];

  v22 = [pushCopy objectForKey:@"r"];
  v23 = [(GKViceroyRelay *)self dataFromBase64String:v22];
  [dictionary setObject:v23 forKey:@"relay-token-alloc-req"];

  matchDataDelegate = [(GKViceroyRelay *)self matchDataDelegate];
  v25 = [matchDataDelegate updateConnectionInfo:dictionary forPlayerID:dCopy];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (void)initiateRelayResponse:(id)response playerID:(id)d
{
  v16 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  dCopy = d;
  v8 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
    v8 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = dCopy;
    v14 = 2112;
    v15 = responseCopy;
    _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_DEFAULT, "[GKViceroyRelay] Initiate relay response for playerID: %@ - response: %@", &v12, 0x16u);
  }

  v10 = [(GKViceroyRelay *)self initiateRelayInfoFromServerResponse:responseCopy forPlayerID:dCopy];
  [(GKViceroyRelay *)self initiateRelayConnectionForPlayerID:dCopy connectionContext:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (id)initiateRelayInfoFromServerResponse:(id)response forPlayerID:(id)d
{
  v27 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  dCopy = d;
  v8 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
    v8 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412546;
    v24 = dCopy;
    v25 = 2112;
    v26 = responseCopy;
    _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_DEFAULT, "[GKViceroyRelay] Got initiateRelay info for playerID: %@ - from response: %@", &v23, 0x16u);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v11 = [responseCopy objectForKey:@"relay-type"];
  [dictionary setObject:v11 forKey:@"relay-type"];

  v12 = [responseCopy objectForKey:@"relay-connection-id"];
  [dictionary setObject:v12 forKey:@"relay-connection-id"];

  v13 = [responseCopy objectForKey:@"relay-transaction-id-alloc"];
  [dictionary setObject:v13 forKey:@"relay-transaction-id-alloc"];

  v14 = [responseCopy objectForKey:@"self-relay-ip"];
  [dictionary setObject:v14 forKey:@"self-relay-ip"];

  v15 = [responseCopy objectForKey:@"self-relay-port"];
  [dictionary setObject:v15 forKey:@"self-relay-port"];

  v16 = [responseCopy objectForKey:@"peer-relay-ip"];
  [dictionary setObject:v16 forKey:@"peer-relay-ip"];

  v17 = [responseCopy objectForKey:@"peer-relay-port"];
  [dictionary setObject:v17 forKey:@"peer-relay-port"];

  v18 = [responseCopy objectForKey:@"relay-token-alloc-req"];
  [dictionary setObject:v18 forKey:@"relay-token-alloc-req"];

  matchDataDelegate = [(GKViceroyRelay *)self matchDataDelegate];
  v20 = [matchDataDelegate updateConnectionInfo:dictionary forPlayerID:dCopy];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)initiateRelayConnectionForPlayerID:(id)d connectionContext:(id)context
{
  v38 = *MEMORY[0x277D85DE8];
  dCopy = d;
  contextCopy = context;
  v8 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
    v8 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v8;
    v34 = 138412546;
    v35 = dCopy;
    v36 = 1024;
    LODWORD(v37) = [contextCopy connected];
    _os_log_impl(&dword_227904000, v10, OS_LOG_TYPE_DEFAULT, "[GKViceroyRelay] Initiate relay connection for player: %@ connected: %d", &v34, 0x12u);
  }

  if ([contextCopy connected])
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    info = [contextCopy info];
    v13 = [info objectForKeyedSubscript:@"relay-type"];
    [dictionary setObject:v13 forKeyedSubscript:*MEMORY[0x277CE56D8]];

    info2 = [contextCopy info];
    v15 = [info2 objectForKeyedSubscript:@"relay-connection-id"];
    [dictionary setObject:v15 forKeyedSubscript:*MEMORY[0x277CE5650]];

    info3 = [contextCopy info];
    v17 = [info3 objectForKeyedSubscript:@"relay-transaction-id-alloc"];
    [dictionary setObject:v17 forKeyedSubscript:*MEMORY[0x277CE56D0]];

    info4 = [contextCopy info];
    v19 = [info4 objectForKeyedSubscript:@"relay-token-alloc-req"];
    [dictionary setObject:v19 forKeyedSubscript:*MEMORY[0x277CE56C8]];

    info5 = [contextCopy info];
    v21 = [info5 objectForKeyedSubscript:@"peer-relay-ip"];
    [dictionary setObject:v21 forKeyedSubscript:*MEMORY[0x277CE5670]];

    info6 = [contextCopy info];
    v23 = [info6 objectForKeyedSubscript:@"peer-relay-port"];
    [dictionary setObject:v23 forKeyedSubscript:*MEMORY[0x277CE5688]];

    info7 = [contextCopy info];
    v25 = [info7 objectForKeyedSubscript:@"self-relay-ip"];
    [dictionary setObject:v25 forKeyedSubscript:*MEMORY[0x277CE56A8]];

    info8 = [contextCopy info];
    v27 = [info8 objectForKeyedSubscript:@"self-relay-port"];
    [dictionary setObject:v27 forKeyedSubscript:*MEMORY[0x277CE56C0]];

    v28 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v29 = GKOSLoggers();
      v28 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 138412546;
      v35 = dCopy;
      v36 = 2112;
      v37 = dictionary;
      _os_log_impl(&dword_227904000, v28, OS_LOG_TYPE_DEFAULT, "[GKViceroyRelay] initiateRelayWithParticipant for playerID: %@ - with relayInfo: %@", &v34, 0x16u);
    }

    connection = [(GKViceroyRelay *)self connection];
    info9 = [contextCopy info];
    v32 = [info9 objectForKeyedSubscript:@"peer-blob"];
    [connection initiateRelayWithParticipant:dCopy withConnectionData:v32 withRelayInfo:dictionary didInitiate:0];

    [contextCopy setHasInitRelayInfo:1];
    if ([contextCopy hasUpdateRelayInfo])
    {
      [(GKViceroyRelay *)self updateRelayConnectionForPlayerID:dCopy connectionContext:contextCopy];
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)relayDidUpdateConnection:(id)connection forPlayerID:(id)d
{
  dCopy = d;
  connectionCopy = connection;
  matchDataDelegate = [(GKViceroyRelay *)self matchDataDelegate];
  v9 = [matchDataDelegate updateConnectionInfo:connectionCopy forPlayerID:dCopy];

  [(GKViceroyRelay *)self requestRelayUpdateForPlayerID:dCopy connectionContext:v9];
}

- (id)updateRelayInfoFromPush:(id)push forPlayerID:(id)d
{
  v31 = *MEMORY[0x277D85DE8];
  pushCopy = push;
  dCopy = d;
  v8 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
    v8 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138412546;
    v28 = dCopy;
    v29 = 2112;
    v30 = pushCopy;
    _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_DEFAULT, "[GKViceroyRelay] Got updateRelay info for playerID: %@ - userInfo: %@", &v27, 0x16u);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v11 = [pushCopy objectForKey:@"t"];
  [dictionary setObject:v11 forKey:@"relay-type"];

  v12 = [pushCopy objectForKey:@"k"];
  v13 = [(GKViceroyRelay *)self dataFromBase64String:v12];
  [dictionary setObject:v13 forKey:@"relay-connection-id"];

  v14 = [pushCopy objectForKey:@"q"];
  v15 = [(GKViceroyRelay *)self dataFromBase64String:v14];
  [dictionary setObject:v15 forKey:@"relay-transaction-id-chan-bind"];

  v16 = [pushCopy objectForKey:@"r"];
  v17 = [(GKViceroyRelay *)self dataFromBase64String:v16];
  [dictionary setObject:v17 forKey:@"relay-token-chan-bind"];

  v18 = [pushCopy objectForKey:@"U"];
  v19 = [(GKViceroyRelay *)self dataFromBase64String:v18];
  [dictionary setObject:v19 forKey:@"peer-relay-nat-ip"];

  v20 = [pushCopy objectForKey:@"V"];
  [dictionary setObject:v20 forKey:@"peer-relay-nat-port"];

  v21 = [pushCopy objectForKey:@"L"];
  v22 = [(GKViceroyRelay *)self dataFromBase64String:v21];
  [dictionary setObject:v22 forKey:@"client-data"];

  matchDataDelegate = [(GKViceroyRelay *)self matchDataDelegate];
  v24 = [matchDataDelegate updateConnectionInfo:dictionary forPlayerID:dCopy];

  [v24 setHasUpdateRelayInfo:1];
  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (void)requestRelayUpdateForPlayerID:(id)d connectionContext:(id)context
{
  v50 = *MEMORY[0x277D85DE8];
  dCopy = d;
  contextCopy = context;
  v8 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
    v8 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v8;
    *buf = 138412546;
    v47 = dCopy;
    v48 = 1024;
    connected = [contextCopy connected];
    _os_log_impl(&dword_227904000, v10, OS_LOG_TYPE_DEFAULT, "[GKViceroyRelay] Request relayUpdate for playerID: %@ connected: %d", buf, 0x12u);
  }

  if ([contextCopy connected])
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    info = [contextCopy info];
    v13 = [info objectForKey:@"session-token"];
    [dictionary setObject:v13 forKey:@"session-token"];

    info2 = [contextCopy info];
    v15 = [info2 objectForKey:@"peer-id"];
    [dictionary setObject:v15 forKey:@"peer-id"];

    info3 = [contextCopy info];
    v17 = [info3 objectForKey:@"peer-push-token"];
    [dictionary setObject:v17 forKey:@"peer-push-token"];

    info4 = [contextCopy info];
    v19 = [info4 objectForKey:@"relay-type"];
    [dictionary setObject:v19 forKey:@"relay-type"];

    info5 = [contextCopy info];
    v21 = [info5 objectForKey:@"relay-connection-id"];
    [dictionary setObject:v21 forKey:@"relay-connection-id"];

    info6 = [contextCopy info];
    v23 = [info6 objectForKey:@"relay-transaction-id-alloc"];
    [dictionary setObject:v23 forKey:@"relay-transaction-id-alloc"];

    info7 = [contextCopy info];
    v25 = [info7 objectForKey:@"self-relay-ip"];
    [dictionary setObject:v25 forKey:@"self-relay-ip"];

    info8 = [contextCopy info];
    v27 = [info8 objectForKey:@"self-relay-port"];
    [dictionary setObject:v27 forKey:@"self-relay-port"];

    info9 = [contextCopy info];
    v29 = [info9 objectForKey:@"peer-relay-ip"];
    [dictionary setObject:v29 forKey:@"peer-relay-ip"];

    info10 = [contextCopy info];
    v31 = [info10 objectForKey:@"peer-relay-port"];
    [dictionary setObject:v31 forKey:@"peer-relay-port"];

    info11 = [contextCopy info];
    v33 = [info11 objectForKey:@"self-relay-nat-ip"];
    [dictionary setObject:v33 forKey:@"self-relay-nat-ip"];

    info12 = [contextCopy info];
    v35 = [info12 objectForKey:@"self-relay-nat-port"];
    [dictionary setObject:v35 forKey:@"self-relay-nat-port"];

    info13 = [contextCopy info];
    v37 = [info13 objectForKey:@"relay-token-alloc-res"];
    [dictionary setObject:v37 forKey:@"relay-token-alloc-res"];

    info14 = [contextCopy info];
    v39 = [info14 objectForKey:@"client-data"];
    [dictionary setObject:v39 forKey:@"self-relay-blob"];

    v40 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v41 = GKOSLoggers();
      v40 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v47 = dCopy;
      _os_log_impl(&dword_227904000, v40, OS_LOG_TYPE_DEFAULT, "[GKViceroyRelay] Calling update relay request for playerID: %@", buf, 0xCu);
    }

    daemonProxy = [(GKViceroyRelay *)self daemonProxy];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __66__GKViceroyRelay_requestRelayUpdateForPlayerID_connectionContext___block_invoke;
    v44[3] = &unk_2785DD630;
    v45 = dCopy;
    [daemonProxy updateRelayRequest:dictionary completionHandler:v44];
  }

  v43 = *MEMORY[0x277D85DE8];
}

void __66__GKViceroyRelay_requestRelayUpdateForPlayerID_connectionContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = os_log_GKGeneral;
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      __66__GKViceroyRelay_requestRelayUpdateForPlayerID_connectionContext___block_invoke_cold_1(v6, v9);
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
      v7 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&dword_227904000, v7, OS_LOG_TYPE_DEFAULT, "[GKViceroyRelay] updateRelayRequest succeeded for playerID: %@", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateRelayConnectionForPlayerID:(id)d connectionContext:(id)context
{
  v40 = *MEMORY[0x277D85DE8];
  dCopy = d;
  contextCopy = context;
  v8 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
    v8 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v8;
    v36 = 138412546;
    v37 = dCopy;
    v38 = 1024;
    LODWORD(v39) = [contextCopy connected];
    _os_log_impl(&dword_227904000, v10, OS_LOG_TYPE_DEFAULT, "[GKViceroyRelay] Update relay connection for playerID: %@ connected: %d", &v36, 0x12u);
  }

  if ([contextCopy connected])
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    info = [contextCopy info];
    v13 = [info objectForKeyedSubscript:@"relay-type"];
    [dictionary setObject:v13 forKeyedSubscript:*MEMORY[0x277CE56D8]];

    info2 = [contextCopy info];
    v15 = [info2 objectForKeyedSubscript:@"relay-connection-id"];
    [dictionary setObject:v15 forKeyedSubscript:*MEMORY[0x277CE5650]];

    info3 = [contextCopy info];
    v17 = [info3 objectForKeyedSubscript:@"relay-transaction-id-chan-bind"];
    [dictionary setObject:v17 forKeyedSubscript:*MEMORY[0x277CE56D0]];

    info4 = [contextCopy info];
    v19 = [info4 objectForKeyedSubscript:@"relay-token-chan-bind"];
    [dictionary setObject:v19 forKeyedSubscript:*MEMORY[0x277CE56C8]];

    info5 = [contextCopy info];
    v21 = [info5 objectForKeyedSubscript:@"peer-relay-nat-ip"];
    [dictionary setObject:v21 forKeyedSubscript:*MEMORY[0x277CE5678]];

    info6 = [contextCopy info];
    v23 = [info6 objectForKeyedSubscript:@"peer-relay-nat-port"];
    [dictionary setObject:v23 forKeyedSubscript:*MEMORY[0x277CE5680]];

    info7 = [contextCopy info];
    v25 = [info7 objectForKeyedSubscript:@"client-data"];
    [dictionary setObject:v25 forKeyedSubscript:*MEMORY[0x277CE5648]];

    info8 = [contextCopy info];
    v27 = [info8 objectForKeyedSubscript:@"peer-relay-ip"];
    [dictionary setObject:v27 forKeyedSubscript:*MEMORY[0x277CE5670]];

    info9 = [contextCopy info];
    v29 = [info9 objectForKeyedSubscript:@"peer-relay-port"];
    [dictionary setObject:v29 forKeyedSubscript:*MEMORY[0x277CE5688]];

    v30 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v31 = GKOSLoggers();
      v30 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v36 = 138412546;
      v37 = dCopy;
      v38 = 2112;
      v39 = dictionary;
      _os_log_impl(&dword_227904000, v30, OS_LOG_TYPE_DEFAULT, "[GKViceroyRelay] updateRelayConnectionForPlayer for playerID: %@ - with relayInfo: %@", &v36, 0x16u);
    }

    connection = [(GKViceroyRelay *)self connection];
    info10 = [contextCopy info];
    v34 = [info10 objectForKeyedSubscript:@"peer-blob"];
    [connection updateRelayWithParticipant:dCopy withConnectionData:v34 withRelayInfo:dictionary didInitiate:0];
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (id)dataFromBase64String:(id)string
{
  v3 = MEMORY[0x277CBEA90];
  stringCopy = string;
  v5 = [[v3 alloc] initWithBase64EncodedString:stringCopy options:0];

  return v5;
}

- (GKTransportClientDelegate)clientDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_weakClientDelegate);

  return WeakRetained;
}

- (GKTransportMatchDataDelegate)matchDataDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_matchDataDelegateWeak);

  return WeakRetained;
}

void __68__GKViceroyRelay_requestRelayInitiateForPlayerID_connectionContext___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_227904000, a2, OS_LOG_TYPE_ERROR, "[GKViceroyRelay] initiateRelayRequest returned an error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __66__GKViceroyRelay_requestRelayUpdateForPlayerID_connectionContext___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_227904000, a2, OS_LOG_TYPE_ERROR, "[GKViceroyRelay] updateRelayRequest error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end
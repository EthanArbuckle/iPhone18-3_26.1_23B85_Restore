@interface GKViceroyRelay
- (BOOL)shouldStartRelayForPlayerID:(id)a3;
- (GKTransportClientDelegate)clientDelegate;
- (GKTransportMatchDataDelegate)matchDataDelegate;
- (GKViceroyRelay)initWithClientDelegate:(id)a3 connection:(id)a4 matchDataDelegate:(id)a5 daemonProxy:(id)a6;
- (id)dataFromBase64String:(id)a3;
- (id)initiateRelayInfoFromPush:(id)a3 forPlayerID:(id)a4;
- (id)initiateRelayInfoFromServerResponse:(id)a3 forPlayerID:(id)a4;
- (id)updateRelayInfoFromPush:(id)a3 forPlayerID:(id)a4;
- (void)acceptRelayResponse:(id)a3 playerID:(id)a4;
- (void)didReceiveRelayPushData:(id)a3;
- (void)didReceiveRelayPushNotification:(id)a3;
- (void)disconnect;
- (void)handleRelayPushData:(id)a3 onlyIfPreemptive:(BOOL)a4;
- (void)initiateRelayConnectionForPlayerID:(id)a3 connectionContext:(id)a4;
- (void)initiateRelayResponse:(id)a3 playerID:(id)a4;
- (void)preemptRelay:(id)a3;
- (void)relayDidInitiateConnection:(id)a3 forPlayerID:(id)a4;
- (void)relayDidUpdateConnection:(id)a3 forPlayerID:(id)a4;
- (void)requestRelayInitiateForPlayerID:(id)a3 connectionContext:(id)a4;
- (void)requestRelayUpdateForPlayerID:(id)a3 connectionContext:(id)a4;
- (void)sessionDidInitiateOrUpdateRelay:(id)a3 playerID:(id)a4;
- (void)updateRelayConnectionForPlayerID:(id)a3 connectionContext:(id)a4;
@end

@implementation GKViceroyRelay

- (GKViceroyRelay)initWithClientDelegate:(id)a3 connection:(id)a4 matchDataDelegate:(id)a5 daemonProxy:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = GKViceroyRelay;
  v14 = [(GKViceroyRelay *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_weakClientDelegate, v10);
    objc_storeStrong(&v15->_connection, a4);
    objc_storeWeak(&v15->_matchDataDelegateWeak, v12);
    objc_storeStrong(&v15->_daemonProxy, a6);
    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    [v16 addObserver:v15 selector:sel_didReceiveRelayPushNotification_ name:@"GKRelayPushNotification" object:0];
  }

  return v15;
}

- (void)disconnect
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];
}

- (void)acceptRelayResponse:(id)a3 playerID:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
    v8 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_DEFAULT, "[GKViceroyRelay] Accept relay response for playerID: %@ - response: %@", &v12, 0x16u);
  }

  if ([(GKViceroyRelay *)self shouldStartRelayForPlayerID:v7])
  {
    v10 = [(GKViceroyRelay *)self initiateRelayInfoFromServerResponse:v6 forPlayerID:v7];
    [(GKViceroyRelay *)self initiateRelayConnectionForPlayerID:v7 connectionContext:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleRelayPushData:(id)a3 onlyIfPreemptive:(BOOL)a4
{
  v6 = a3;
  v13 = v6;
  if (a4)
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

    v10 = self;
    v11 = v13;
  }

  else
  {
    v12 = v6;
    v10 = self;
    v11 = v12;
  }

  [(GKViceroyRelay *)v10 didReceiveRelayPushData:v11];
LABEL_8:
  v9 = v13;
LABEL_9:
}

- (void)preemptRelay:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v6 = GKOSLoggers();
    v5 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_227904000, v5, OS_LOG_TYPE_DEFAULT, "[GKViceroyRelay] Preempt relay for playerID:%@", &v10, 0xCu);
  }

  if ([(GKViceroyRelay *)self shouldStartRelayForPlayerID:v4])
  {
    v7 = [(GKViceroyRelay *)self matchDataDelegate];
    v8 = [v7 getConnectionContextForPlayerID:v4];

    [(GKViceroyRelay *)self requestRelayInitiateForPlayerID:v4 connectionContext:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveRelayPushNotification:(id)a3
{
  v4 = [a3 userInfo];
  [(GKViceroyRelay *)self didReceiveRelayPushData:v4];
}

- (void)didReceiveRelayPushData:(id)a3
{
  v4 = a3;
  v5 = [(GKViceroyRelay *)self clientDelegate];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__GKViceroyRelay_didReceiveRelayPushData___block_invoke;
  v7[3] = &unk_2785DD5E0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 relayDidReceivePushData:v6 completionHandler:v7];
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

- (void)sessionDidInitiateOrUpdateRelay:(id)a3 playerID:(id)a4
{
  v27 = a3;
  v6 = a4;
  v7 = [v27 objectForKey:@"GKSRelayInitiateInfo"];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
    v9 = [v7 objectForKey:*MEMORY[0x277CE5690]];
    [v8 setObject:v9 forKey:@"self-blob"];

    v10 = [v7 objectForKey:*MEMORY[0x277CE5698]];
    [v8 setObject:v10 forKey:@"self-nat-ip"];

    v11 = [v7 objectForKey:*MEMORY[0x277CE56A0]];
    [v8 setObject:v11 forKey:@"self-nat-type"];

    v12 = [v7 objectForKey:*MEMORY[0x277CE5658]];
    [v8 setObject:v12 forKey:@"peer-blob"];

    v13 = [v7 objectForKey:*MEMORY[0x277CE5660]];
    [v8 setObject:v13 forKey:@"peer-nat-ip"];

    v14 = [v7 objectForKey:*MEMORY[0x277CE5668]];
    [v8 setObject:v14 forKey:@"peer-nat-type"];

    [(GKViceroyRelay *)self relayDidInitiateConnection:v8 forPlayerID:v6];
  }

  else
  {
    v8 = [v27 objectForKey:@"GKSRelayUpdateInfo"];
    if (v8)
    {
      v15 = [MEMORY[0x277CBEB38] dictionary];
      v16 = [v8 objectForKey:*MEMORY[0x277CE56D8]];
      [v15 setObject:v16 forKey:@"relay-type"];

      v17 = [v8 objectForKey:*MEMORY[0x277CE5650]];
      [v15 setObject:v17 forKey:@"relay-connection-id"];

      v18 = [v8 objectForKey:*MEMORY[0x277CE56D0]];
      [v15 setObject:v18 forKey:@"relay-transaction-id-alloc"];

      v19 = [v8 objectForKey:*MEMORY[0x277CE56C8]];
      [v15 setObject:v19 forKey:@"relay-token-alloc-res"];

      v20 = [v8 objectForKey:*MEMORY[0x277CE5670]];
      [v15 setObject:v20 forKey:@"peer-relay-ip"];

      v21 = [v8 objectForKey:*MEMORY[0x277CE5688]];
      [v15 setObject:v21 forKey:@"peer-relay-port"];

      v22 = [v8 objectForKey:*MEMORY[0x277CE56A8]];
      [v15 setObject:v22 forKey:@"self-relay-ip"];

      v23 = [v8 objectForKey:*MEMORY[0x277CE56C0]];
      [v15 setObject:v23 forKey:@"self-relay-port"];

      v24 = [v8 objectForKey:*MEMORY[0x277CE56B0]];
      [v15 setObject:v24 forKey:@"self-relay-nat-ip"];

      v25 = [v8 objectForKey:*MEMORY[0x277CE56B8]];
      [v15 setObject:v25 forKey:@"self-relay-nat-port"];

      v26 = [v8 objectForKey:*MEMORY[0x277CE5648]];
      [v15 setObject:v26 forKey:@"client-data"];

      [(GKViceroyRelay *)self relayDidUpdateConnection:v15 forPlayerID:v6];
    }
  }
}

- (BOOL)shouldStartRelayForPlayerID:(id)a3
{
  v4 = a3;
  v5 = [(GKViceroyRelay *)self matchDataDelegate];
  v6 = [v5 getConnectionContextForPlayerID:v4];

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

- (void)relayDidInitiateConnection:(id)a3 forPlayerID:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(GKViceroyRelay *)self shouldStartRelayForPlayerID:v7])
  {
    v8 = [(GKViceroyRelay *)self matchDataDelegate];
    v9 = [v8 updateConnectionInfo:v6 forPlayerID:v7];

    [(GKViceroyRelay *)self requestRelayInitiateForPlayerID:v7 connectionContext:v9];
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
      v14 = v7;
      _os_log_impl(&dword_227904000, v10, OS_LOG_TYPE_DEFAULT, "[GKViceroyRelay] Not starting relay for playerID: %@", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)requestRelayInitiateForPlayerID:(id)a3 connectionContext:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 info];
  v9 = [v8 objectForKey:@"missing-client-data"];
  v10 = [v9 BOOLValue];

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
    v38 = v6;
    v39 = 1024;
    v40 = [v7 connected];
    v41 = 1024;
    v42 = v10;
    _os_log_impl(&dword_227904000, v13, OS_LOG_TYPE_DEFAULT, "[GKViceroyRelay] Request relayInit for playerID: %@ connected: %d missingClientData: %d", buf, 0x18u);
  }

  if (!(v10 & 1 | (([v7 connected] & 1) == 0)))
  {
    v14 = [MEMORY[0x277CBEB38] dictionary];
    v15 = [v7 info];
    v16 = [v15 objectForKey:@"session-token"];
    [v14 setObject:v16 forKey:@"session-token"];

    v17 = [v7 info];
    v18 = [v17 objectForKey:@"self-nat-ip"];
    [v14 setObject:v18 forKey:@"self-nat-ip"];

    v19 = [v7 info];
    v20 = [v19 objectForKey:@"self-blob"];
    [v14 setObject:v20 forKey:@"self-blob"];

    v21 = [v7 info];
    v22 = [v21 objectForKey:@"peer-id"];
    [v14 setObject:v22 forKey:@"peer-id"];

    v23 = [v7 info];
    v24 = [v23 objectForKey:@"peer-push-token"];
    [v14 setObject:v24 forKey:@"peer-push-token"];

    v25 = [v7 info];
    v26 = [v25 objectForKey:@"peer-nat-type"];
    [v14 setObject:v26 forKey:@"peer-nat-type"];

    v27 = [v7 info];
    v28 = [v27 objectForKey:@"peer-nat-ip"];
    [v14 setObject:v28 forKey:@"peer-nat-ip"];

    v29 = [v7 info];
    v30 = [v29 objectForKey:@"peer-blob"];
    [v14 setObject:v30 forKey:@"peer-blob"];

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

    v33 = [(GKViceroyRelay *)self daemonProxy];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __68__GKViceroyRelay_requestRelayInitiateForPlayerID_connectionContext___block_invoke;
    v35[3] = &unk_2785DD608;
    v35[4] = self;
    v36 = v6;
    [v33 initiateRelayRequest:v14 completionHandler:v35];
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

- (id)initiateRelayInfoFromPush:(id)a3 forPlayerID:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
    v8 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 138412546;
    v29 = v7;
    v30 = 2112;
    v31 = v6;
    _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_DEFAULT, "[GKViceroyRelay] Got initRelay info from push for playerID: %@ - userInfo: %@", &v28, 0x16u);
  }

  v10 = [MEMORY[0x277CBEB38] dictionary];
  v11 = [v6 objectForKey:@"t"];
  [v10 setObject:v11 forKey:@"relay-type"];

  v12 = [v6 objectForKey:@"k"];
  v13 = [(GKViceroyRelay *)self dataFromBase64String:v12];
  [v10 setObject:v13 forKey:@"relay-connection-id"];

  v14 = [v6 objectForKey:@"q"];
  v15 = [(GKViceroyRelay *)self dataFromBase64String:v14];
  [v10 setObject:v15 forKey:@"relay-transaction-id-alloc"];

  v16 = [v6 objectForKey:@"h"];
  v17 = [(GKViceroyRelay *)self dataFromBase64String:v16];
  [v10 setObject:v17 forKey:@"self-relay-ip"];

  v18 = [v6 objectForKey:@"o"];
  [v10 setObject:v18 forKey:@"self-relay-port"];

  v19 = [v6 objectForKey:@"H"];
  v20 = [(GKViceroyRelay *)self dataFromBase64String:v19];
  [v10 setObject:v20 forKey:@"peer-relay-ip"];

  v21 = [v6 objectForKey:@"O"];
  [v10 setObject:v21 forKey:@"peer-relay-port"];

  v22 = [v6 objectForKey:@"r"];
  v23 = [(GKViceroyRelay *)self dataFromBase64String:v22];
  [v10 setObject:v23 forKey:@"relay-token-alloc-req"];

  v24 = [(GKViceroyRelay *)self matchDataDelegate];
  v25 = [v24 updateConnectionInfo:v10 forPlayerID:v7];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (void)initiateRelayResponse:(id)a3 playerID:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
    v8 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_DEFAULT, "[GKViceroyRelay] Initiate relay response for playerID: %@ - response: %@", &v12, 0x16u);
  }

  v10 = [(GKViceroyRelay *)self initiateRelayInfoFromServerResponse:v6 forPlayerID:v7];
  [(GKViceroyRelay *)self initiateRelayConnectionForPlayerID:v7 connectionContext:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (id)initiateRelayInfoFromServerResponse:(id)a3 forPlayerID:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
    v8 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412546;
    v24 = v7;
    v25 = 2112;
    v26 = v6;
    _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_DEFAULT, "[GKViceroyRelay] Got initiateRelay info for playerID: %@ - from response: %@", &v23, 0x16u);
  }

  v10 = [MEMORY[0x277CBEB38] dictionary];
  v11 = [v6 objectForKey:@"relay-type"];
  [v10 setObject:v11 forKey:@"relay-type"];

  v12 = [v6 objectForKey:@"relay-connection-id"];
  [v10 setObject:v12 forKey:@"relay-connection-id"];

  v13 = [v6 objectForKey:@"relay-transaction-id-alloc"];
  [v10 setObject:v13 forKey:@"relay-transaction-id-alloc"];

  v14 = [v6 objectForKey:@"self-relay-ip"];
  [v10 setObject:v14 forKey:@"self-relay-ip"];

  v15 = [v6 objectForKey:@"self-relay-port"];
  [v10 setObject:v15 forKey:@"self-relay-port"];

  v16 = [v6 objectForKey:@"peer-relay-ip"];
  [v10 setObject:v16 forKey:@"peer-relay-ip"];

  v17 = [v6 objectForKey:@"peer-relay-port"];
  [v10 setObject:v17 forKey:@"peer-relay-port"];

  v18 = [v6 objectForKey:@"relay-token-alloc-req"];
  [v10 setObject:v18 forKey:@"relay-token-alloc-req"];

  v19 = [(GKViceroyRelay *)self matchDataDelegate];
  v20 = [v19 updateConnectionInfo:v10 forPlayerID:v7];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)initiateRelayConnectionForPlayerID:(id)a3 connectionContext:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
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
    v35 = v6;
    v36 = 1024;
    LODWORD(v37) = [v7 connected];
    _os_log_impl(&dword_227904000, v10, OS_LOG_TYPE_DEFAULT, "[GKViceroyRelay] Initiate relay connection for player: %@ connected: %d", &v34, 0x12u);
  }

  if ([v7 connected])
  {
    v11 = [MEMORY[0x277CBEB38] dictionary];
    v12 = [v7 info];
    v13 = [v12 objectForKeyedSubscript:@"relay-type"];
    [v11 setObject:v13 forKeyedSubscript:*MEMORY[0x277CE56D8]];

    v14 = [v7 info];
    v15 = [v14 objectForKeyedSubscript:@"relay-connection-id"];
    [v11 setObject:v15 forKeyedSubscript:*MEMORY[0x277CE5650]];

    v16 = [v7 info];
    v17 = [v16 objectForKeyedSubscript:@"relay-transaction-id-alloc"];
    [v11 setObject:v17 forKeyedSubscript:*MEMORY[0x277CE56D0]];

    v18 = [v7 info];
    v19 = [v18 objectForKeyedSubscript:@"relay-token-alloc-req"];
    [v11 setObject:v19 forKeyedSubscript:*MEMORY[0x277CE56C8]];

    v20 = [v7 info];
    v21 = [v20 objectForKeyedSubscript:@"peer-relay-ip"];
    [v11 setObject:v21 forKeyedSubscript:*MEMORY[0x277CE5670]];

    v22 = [v7 info];
    v23 = [v22 objectForKeyedSubscript:@"peer-relay-port"];
    [v11 setObject:v23 forKeyedSubscript:*MEMORY[0x277CE5688]];

    v24 = [v7 info];
    v25 = [v24 objectForKeyedSubscript:@"self-relay-ip"];
    [v11 setObject:v25 forKeyedSubscript:*MEMORY[0x277CE56A8]];

    v26 = [v7 info];
    v27 = [v26 objectForKeyedSubscript:@"self-relay-port"];
    [v11 setObject:v27 forKeyedSubscript:*MEMORY[0x277CE56C0]];

    v28 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v29 = GKOSLoggers();
      v28 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 138412546;
      v35 = v6;
      v36 = 2112;
      v37 = v11;
      _os_log_impl(&dword_227904000, v28, OS_LOG_TYPE_DEFAULT, "[GKViceroyRelay] initiateRelayWithParticipant for playerID: %@ - with relayInfo: %@", &v34, 0x16u);
    }

    v30 = [(GKViceroyRelay *)self connection];
    v31 = [v7 info];
    v32 = [v31 objectForKeyedSubscript:@"peer-blob"];
    [v30 initiateRelayWithParticipant:v6 withConnectionData:v32 withRelayInfo:v11 didInitiate:0];

    [v7 setHasInitRelayInfo:1];
    if ([v7 hasUpdateRelayInfo])
    {
      [(GKViceroyRelay *)self updateRelayConnectionForPlayerID:v6 connectionContext:v7];
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)relayDidUpdateConnection:(id)a3 forPlayerID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKViceroyRelay *)self matchDataDelegate];
  v9 = [v8 updateConnectionInfo:v7 forPlayerID:v6];

  [(GKViceroyRelay *)self requestRelayUpdateForPlayerID:v6 connectionContext:v9];
}

- (id)updateRelayInfoFromPush:(id)a3 forPlayerID:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
    v8 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138412546;
    v28 = v7;
    v29 = 2112;
    v30 = v6;
    _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_DEFAULT, "[GKViceroyRelay] Got updateRelay info for playerID: %@ - userInfo: %@", &v27, 0x16u);
  }

  v10 = [MEMORY[0x277CBEB38] dictionary];
  v11 = [v6 objectForKey:@"t"];
  [v10 setObject:v11 forKey:@"relay-type"];

  v12 = [v6 objectForKey:@"k"];
  v13 = [(GKViceroyRelay *)self dataFromBase64String:v12];
  [v10 setObject:v13 forKey:@"relay-connection-id"];

  v14 = [v6 objectForKey:@"q"];
  v15 = [(GKViceroyRelay *)self dataFromBase64String:v14];
  [v10 setObject:v15 forKey:@"relay-transaction-id-chan-bind"];

  v16 = [v6 objectForKey:@"r"];
  v17 = [(GKViceroyRelay *)self dataFromBase64String:v16];
  [v10 setObject:v17 forKey:@"relay-token-chan-bind"];

  v18 = [v6 objectForKey:@"U"];
  v19 = [(GKViceroyRelay *)self dataFromBase64String:v18];
  [v10 setObject:v19 forKey:@"peer-relay-nat-ip"];

  v20 = [v6 objectForKey:@"V"];
  [v10 setObject:v20 forKey:@"peer-relay-nat-port"];

  v21 = [v6 objectForKey:@"L"];
  v22 = [(GKViceroyRelay *)self dataFromBase64String:v21];
  [v10 setObject:v22 forKey:@"client-data"];

  v23 = [(GKViceroyRelay *)self matchDataDelegate];
  v24 = [v23 updateConnectionInfo:v10 forPlayerID:v7];

  [v24 setHasUpdateRelayInfo:1];
  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (void)requestRelayUpdateForPlayerID:(id)a3 connectionContext:(id)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
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
    v47 = v6;
    v48 = 1024;
    v49 = [v7 connected];
    _os_log_impl(&dword_227904000, v10, OS_LOG_TYPE_DEFAULT, "[GKViceroyRelay] Request relayUpdate for playerID: %@ connected: %d", buf, 0x12u);
  }

  if ([v7 connected])
  {
    v11 = [MEMORY[0x277CBEB38] dictionary];
    v12 = [v7 info];
    v13 = [v12 objectForKey:@"session-token"];
    [v11 setObject:v13 forKey:@"session-token"];

    v14 = [v7 info];
    v15 = [v14 objectForKey:@"peer-id"];
    [v11 setObject:v15 forKey:@"peer-id"];

    v16 = [v7 info];
    v17 = [v16 objectForKey:@"peer-push-token"];
    [v11 setObject:v17 forKey:@"peer-push-token"];

    v18 = [v7 info];
    v19 = [v18 objectForKey:@"relay-type"];
    [v11 setObject:v19 forKey:@"relay-type"];

    v20 = [v7 info];
    v21 = [v20 objectForKey:@"relay-connection-id"];
    [v11 setObject:v21 forKey:@"relay-connection-id"];

    v22 = [v7 info];
    v23 = [v22 objectForKey:@"relay-transaction-id-alloc"];
    [v11 setObject:v23 forKey:@"relay-transaction-id-alloc"];

    v24 = [v7 info];
    v25 = [v24 objectForKey:@"self-relay-ip"];
    [v11 setObject:v25 forKey:@"self-relay-ip"];

    v26 = [v7 info];
    v27 = [v26 objectForKey:@"self-relay-port"];
    [v11 setObject:v27 forKey:@"self-relay-port"];

    v28 = [v7 info];
    v29 = [v28 objectForKey:@"peer-relay-ip"];
    [v11 setObject:v29 forKey:@"peer-relay-ip"];

    v30 = [v7 info];
    v31 = [v30 objectForKey:@"peer-relay-port"];
    [v11 setObject:v31 forKey:@"peer-relay-port"];

    v32 = [v7 info];
    v33 = [v32 objectForKey:@"self-relay-nat-ip"];
    [v11 setObject:v33 forKey:@"self-relay-nat-ip"];

    v34 = [v7 info];
    v35 = [v34 objectForKey:@"self-relay-nat-port"];
    [v11 setObject:v35 forKey:@"self-relay-nat-port"];

    v36 = [v7 info];
    v37 = [v36 objectForKey:@"relay-token-alloc-res"];
    [v11 setObject:v37 forKey:@"relay-token-alloc-res"];

    v38 = [v7 info];
    v39 = [v38 objectForKey:@"client-data"];
    [v11 setObject:v39 forKey:@"self-relay-blob"];

    v40 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v41 = GKOSLoggers();
      v40 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v47 = v6;
      _os_log_impl(&dword_227904000, v40, OS_LOG_TYPE_DEFAULT, "[GKViceroyRelay] Calling update relay request for playerID: %@", buf, 0xCu);
    }

    v42 = [(GKViceroyRelay *)self daemonProxy];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __66__GKViceroyRelay_requestRelayUpdateForPlayerID_connectionContext___block_invoke;
    v44[3] = &unk_2785DD630;
    v45 = v6;
    [v42 updateRelayRequest:v11 completionHandler:v44];
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

- (void)updateRelayConnectionForPlayerID:(id)a3 connectionContext:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
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
    v37 = v6;
    v38 = 1024;
    LODWORD(v39) = [v7 connected];
    _os_log_impl(&dword_227904000, v10, OS_LOG_TYPE_DEFAULT, "[GKViceroyRelay] Update relay connection for playerID: %@ connected: %d", &v36, 0x12u);
  }

  if ([v7 connected])
  {
    v11 = [MEMORY[0x277CBEB38] dictionary];
    v12 = [v7 info];
    v13 = [v12 objectForKeyedSubscript:@"relay-type"];
    [v11 setObject:v13 forKeyedSubscript:*MEMORY[0x277CE56D8]];

    v14 = [v7 info];
    v15 = [v14 objectForKeyedSubscript:@"relay-connection-id"];
    [v11 setObject:v15 forKeyedSubscript:*MEMORY[0x277CE5650]];

    v16 = [v7 info];
    v17 = [v16 objectForKeyedSubscript:@"relay-transaction-id-chan-bind"];
    [v11 setObject:v17 forKeyedSubscript:*MEMORY[0x277CE56D0]];

    v18 = [v7 info];
    v19 = [v18 objectForKeyedSubscript:@"relay-token-chan-bind"];
    [v11 setObject:v19 forKeyedSubscript:*MEMORY[0x277CE56C8]];

    v20 = [v7 info];
    v21 = [v20 objectForKeyedSubscript:@"peer-relay-nat-ip"];
    [v11 setObject:v21 forKeyedSubscript:*MEMORY[0x277CE5678]];

    v22 = [v7 info];
    v23 = [v22 objectForKeyedSubscript:@"peer-relay-nat-port"];
    [v11 setObject:v23 forKeyedSubscript:*MEMORY[0x277CE5680]];

    v24 = [v7 info];
    v25 = [v24 objectForKeyedSubscript:@"client-data"];
    [v11 setObject:v25 forKeyedSubscript:*MEMORY[0x277CE5648]];

    v26 = [v7 info];
    v27 = [v26 objectForKeyedSubscript:@"peer-relay-ip"];
    [v11 setObject:v27 forKeyedSubscript:*MEMORY[0x277CE5670]];

    v28 = [v7 info];
    v29 = [v28 objectForKeyedSubscript:@"peer-relay-port"];
    [v11 setObject:v29 forKeyedSubscript:*MEMORY[0x277CE5688]];

    v30 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v31 = GKOSLoggers();
      v30 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v36 = 138412546;
      v37 = v6;
      v38 = 2112;
      v39 = v11;
      _os_log_impl(&dword_227904000, v30, OS_LOG_TYPE_DEFAULT, "[GKViceroyRelay] updateRelayConnectionForPlayer for playerID: %@ - with relayInfo: %@", &v36, 0x16u);
    }

    v32 = [(GKViceroyRelay *)self connection];
    v33 = [v7 info];
    v34 = [v33 objectForKeyedSubscript:@"peer-blob"];
    [v32 updateRelayWithParticipant:v6 withConnectionData:v34 withRelayInfo:v11 didInitiate:0];
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (id)dataFromBase64String:(id)a3
{
  v3 = MEMORY[0x277CBEA90];
  v4 = a3;
  v5 = [[v3 alloc] initWithBase64EncodedString:v4 options:0];

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
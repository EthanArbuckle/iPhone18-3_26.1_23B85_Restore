@interface DEDRequestAdvertiser
+ (id)sharedInstance;
- (id)displayName;
- (id)encodeRequestRecordAsJSON:(id)a3;
- (void)advertiser:(id)a3 didReceiveInvitationFromPeer:(id)a4 withContext:(id)a5 invitationHandler:(id)a6;
- (void)broadcastRecord:(id)a3;
- (void)sendRecord:(id)a3 toPeer:(id)a4;
- (void)session:(id)a3 peer:(id)a4 didChangeState:(int64_t)a5;
- (void)start;
- (void)stop;
@end

@implementation DEDRequestAdvertiser

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[DEDRequestAdvertiser sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_1;

  return v3;
}

uint64_t __38__DEDRequestAdvertiser_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_1 = objc_alloc_init(DEDRequestAdvertiser);

  return MEMORY[0x2821F96F8]();
}

- (id)displayName
{
  v3 = [(DEDRequestAdvertiser *)self hostIdentifier];
  if (v3 && (v4 = v3, -[DEDRequestAdvertiser hostIdentifier](self, "hostIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 length], v5, v4, v6))
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [(DEDRequestAdvertiser *)self hostIdentifier];
    v9 = +[DEDUtils deviceName];
    v10 = [v7 stringWithFormat:@"%@ @ %@", v8, v9];
  }

  else
  {
    v10 = +[DEDUtils deviceName];
  }

  return v10;
}

- (void)start
{
  if (+[DEDUtils isDebugRequestsEnabled]&& !self->_session)
  {
    v3 = objc_alloc(MEMORY[0x277CD7BA8]);
    v4 = [(DEDRequestAdvertiser *)self displayName];
    v5 = [v3 initWithDisplayName:v4];
    peerID = self->_peerID;
    self->_peerID = v5;

    v7 = objc_alloc(MEMORY[0x277CD7B98]);
    v8 = [(DEDRequestAdvertiser *)self peerID];
    v9 = [v7 initWithPeer:v8 discoveryInfo:0 serviceType:@"apple-frdb"];
    advertiser = self->_advertiser;
    self->_advertiser = v9;

    [(MCNearbyServiceAdvertiser *)self->_advertiser setDelegate:self];
    v11 = objc_alloc(MEMORY[0x277CD7BB0]);
    v12 = [(DEDRequestAdvertiser *)self peerID];
    v13 = [v11 initWithPeer:v12 securityIdentity:0 encryptionPreference:0];
    session = self->_session;
    self->_session = v13;

    [(MCSession *)self->_session setDelegate:self];
    v15 = [(DEDRequestAdvertiser *)self advertiser];
    [v15 startAdvertisingPeer];

    v16 = Log_3();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&dword_248AD7000, v16, OS_LOG_TYPE_INFO, "Request advertiser started", v17, 2u);
    }
  }
}

- (void)stop
{
  peerID = self->_peerID;
  self->_peerID = 0;

  v4 = [(DEDRequestAdvertiser *)self advertiser];
  [v4 stopAdvertisingPeer];

  v5 = [(DEDRequestAdvertiser *)self session];
  [v5 disconnect];

  advertiser = self->_advertiser;
  self->_advertiser = 0;

  session = self->_session;
  self->_session = 0;

  v8 = Log_3();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_INFO, "Request advertiser stopped", v9, 2u);
  }
}

- (void)broadcastRecord:(id)a3
{
  v4 = a3;
  if (+[DEDUtils isDebugRequestsEnabled])
  {
    v5 = [(DEDRequestAdvertiser *)self encodeRequestRecordAsJSON:v4];
    if (v5)
    {
      v6 = [(DEDRequestAdvertiser *)self session];
      v7 = [(DEDRequestAdvertiser *)self session];
      v8 = [v7 connectedPeers];
      v11 = 0;
      [v6 sendData:v5 toPeers:v8 withMode:0 error:&v11];
      v9 = v11;

      if (v9)
      {
        v10 = Log_3();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [DEDRequestAdvertiser broadcastRecord:v4];
        }
      }
    }

    else
    {
      v9 = Log_3();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [DEDRequestAdvertiser broadcastRecord:v4];
      }
    }
  }
}

- (void)sendRecord:(id)a3 toPeer:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (+[DEDUtils isDebugRequestsEnabled])
  {
    v8 = [(DEDRequestAdvertiser *)self encodeRequestRecordAsJSON:v6];
    if (v8)
    {
      v9 = [(DEDRequestAdvertiser *)self session];
      v15[0] = v7;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
      v14 = 0;
      [v9 sendData:v8 toPeers:v10 withMode:0 error:&v14];
      v11 = v14;

      if (v11)
      {
        v12 = Log_3();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [DEDRequestAdvertiser sendRecord:v6 toPeer:v7];
        }
      }
    }

    else
    {
      v11 = Log_3();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [DEDRequestAdvertiser sendRecord:v6 toPeer:?];
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)encodeRequestRecordAsJSON:(id)a3
{
  v30[8] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (encodeRequestRecordAsJSON__onceToken != -1)
  {
    [DEDRequestAdvertiser encodeRequestRecordAsJSON:];
  }

  v29[0] = @"URL";
  v27 = [v3 URL];
  v30[0] = v27;
  v29[1] = @"date";
  v4 = encodeRequestRecordAsJSON__dateFormatter;
  v5 = [v3 date];
  v6 = [v4 stringFromDate:v5];
  v30[1] = v6;
  v29[2] = @"method";
  v7 = [v3 method];
  v30[2] = v7;
  v29[3] = @"isFailure";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "isFailure")}];
  v30[3] = v8;
  v29[4] = @"requestHeader";
  v9 = [v3 requestHeader];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &stru_285B72378;
  }

  v30[4] = v11;
  v29[5] = @"requestBody";
  v12 = [v3 requestBody];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = &stru_285B72378;
  }

  v30[5] = v14;
  v29[6] = @"responseHeader";
  v15 = [v3 responseHeader];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = &stru_285B72378;
  }

  v30[6] = v17;
  v29[7] = @"responseBody";
  v18 = [v3 responseBody];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = &stru_285B72378;
  }

  v30[7] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:8];

  v28 = 0;
  v22 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v21 options:0 error:&v28];
  v23 = v28;
  if (v23)
  {
    v24 = Log_3();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [(DEDRequestAdvertiser *)v3 encodeRequestRecordAsJSON:v23];
    }
  }

  v25 = *MEMORY[0x277D85DE8];

  return v22;
}

uint64_t __50__DEDRequestAdvertiser_encodeRequestRecordAsJSON___block_invoke()
{
  encodeRequestRecordAsJSON__dateFormatter = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)session:(id)a3 peer:(id)a4 didChangeState:(int64_t)a5
{
  v7 = a4;
  if (a5 == 2)
  {
    v10 = v7;
    v8 = [(DEDRequestAdvertiser *)self onPeerJoin];

    v7 = v10;
    if (v8)
    {
      v9 = [(DEDRequestAdvertiser *)self onPeerJoin];
      (v9)[2](v9, v10);

      v7 = v10;
    }
  }
}

- (void)advertiser:(id)a3 didReceiveInvitationFromPeer:(id)a4 withContext:(id)a5 invitationHandler:(id)a6
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a6;
  v10 = +[DEDUtils isDebugRequestsEnabled];
  v11 = Log_3();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = [v8 displayName];
      v17 = 138412290;
      v18 = v13;
      _os_log_impl(&dword_248AD7000, v11, OS_LOG_TYPE_DEFAULT, "Connecting to Request Debugger: [%@]", &v17, 0xCu);
    }

    v14 = [(DEDRequestAdvertiser *)self session];
    v9[2](v9, 1, v14);

    v9 = v14;
  }

  else
  {
    if (v12)
    {
      v15 = [v8 displayName];
      v17 = 138412290;
      v18 = v15;
      _os_log_impl(&dword_248AD7000, v11, OS_LOG_TYPE_DEFAULT, "Debug requests are disabled, but we got an invitation from [%@]", &v17, 0xCu);
    }

    v9[2](v9, 0, 0);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)broadcastRecord:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 URL];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)broadcastRecord:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 URL];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)sendRecord:(void *)a1 toPeer:(void *)a2 .cold.1(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a1 URL];
  v4 = [a2 displayName];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)sendRecord:(void *)a1 toPeer:.cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 URL];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)encodeRequestRecordAsJSON:(void *)a1 .cold.2(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a1 URL];
  v4 = [a2 localizedDescription];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

@end
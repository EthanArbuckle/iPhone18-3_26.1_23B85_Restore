@interface DEDRequestAdvertiser
+ (id)sharedInstance;
- (id)displayName;
- (id)encodeRequestRecordAsJSON:(id)n;
- (void)advertiser:(id)advertiser didReceiveInvitationFromPeer:(id)peer withContext:(id)context invitationHandler:(id)handler;
- (void)broadcastRecord:(id)record;
- (void)sendRecord:(id)record toPeer:(id)peer;
- (void)session:(id)session peer:(id)peer didChangeState:(int64_t)state;
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
  hostIdentifier = [(DEDRequestAdvertiser *)self hostIdentifier];
  if (hostIdentifier && (v4 = hostIdentifier, -[DEDRequestAdvertiser hostIdentifier](self, "hostIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 length], v5, v4, v6))
  {
    v7 = MEMORY[0x277CCACA8];
    hostIdentifier2 = [(DEDRequestAdvertiser *)self hostIdentifier];
    v9 = +[DEDUtils deviceName];
    v10 = [v7 stringWithFormat:@"%@ @ %@", hostIdentifier2, v9];
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
    displayName = [(DEDRequestAdvertiser *)self displayName];
    v5 = [v3 initWithDisplayName:displayName];
    peerID = self->_peerID;
    self->_peerID = v5;

    v7 = objc_alloc(MEMORY[0x277CD7B98]);
    peerID = [(DEDRequestAdvertiser *)self peerID];
    v9 = [v7 initWithPeer:peerID discoveryInfo:0 serviceType:@"apple-frdb"];
    advertiser = self->_advertiser;
    self->_advertiser = v9;

    [(MCNearbyServiceAdvertiser *)self->_advertiser setDelegate:self];
    v11 = objc_alloc(MEMORY[0x277CD7BB0]);
    peerID2 = [(DEDRequestAdvertiser *)self peerID];
    v13 = [v11 initWithPeer:peerID2 securityIdentity:0 encryptionPreference:0];
    session = self->_session;
    self->_session = v13;

    [(MCSession *)self->_session setDelegate:self];
    advertiser = [(DEDRequestAdvertiser *)self advertiser];
    [advertiser startAdvertisingPeer];

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

  advertiser = [(DEDRequestAdvertiser *)self advertiser];
  [advertiser stopAdvertisingPeer];

  session = [(DEDRequestAdvertiser *)self session];
  [session disconnect];

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

- (void)broadcastRecord:(id)record
{
  recordCopy = record;
  if (+[DEDUtils isDebugRequestsEnabled])
  {
    v5 = [(DEDRequestAdvertiser *)self encodeRequestRecordAsJSON:recordCopy];
    if (v5)
    {
      session = [(DEDRequestAdvertiser *)self session];
      session2 = [(DEDRequestAdvertiser *)self session];
      connectedPeers = [session2 connectedPeers];
      v11 = 0;
      [session sendData:v5 toPeers:connectedPeers withMode:0 error:&v11];
      v9 = v11;

      if (v9)
      {
        v10 = Log_3();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [DEDRequestAdvertiser broadcastRecord:recordCopy];
        }
      }
    }

    else
    {
      v9 = Log_3();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [DEDRequestAdvertiser broadcastRecord:recordCopy];
      }
    }
  }
}

- (void)sendRecord:(id)record toPeer:(id)peer
{
  v15[1] = *MEMORY[0x277D85DE8];
  recordCopy = record;
  peerCopy = peer;
  if (+[DEDUtils isDebugRequestsEnabled])
  {
    v8 = [(DEDRequestAdvertiser *)self encodeRequestRecordAsJSON:recordCopy];
    if (v8)
    {
      session = [(DEDRequestAdvertiser *)self session];
      v15[0] = peerCopy;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
      v14 = 0;
      [session sendData:v8 toPeers:v10 withMode:0 error:&v14];
      v11 = v14;

      if (v11)
      {
        v12 = Log_3();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [DEDRequestAdvertiser sendRecord:recordCopy toPeer:peerCopy];
        }
      }
    }

    else
    {
      v11 = Log_3();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [DEDRequestAdvertiser sendRecord:recordCopy toPeer:?];
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)encodeRequestRecordAsJSON:(id)n
{
  v30[8] = *MEMORY[0x277D85DE8];
  nCopy = n;
  if (encodeRequestRecordAsJSON__onceToken != -1)
  {
    [DEDRequestAdvertiser encodeRequestRecordAsJSON:];
  }

  v29[0] = @"URL";
  v27 = [nCopy URL];
  v30[0] = v27;
  v29[1] = @"date";
  v4 = encodeRequestRecordAsJSON__dateFormatter;
  date = [nCopy date];
  v6 = [v4 stringFromDate:date];
  v30[1] = v6;
  v29[2] = @"method";
  method = [nCopy method];
  v30[2] = method;
  v29[3] = @"isFailure";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(nCopy, "isFailure")}];
  v30[3] = v8;
  v29[4] = @"requestHeader";
  requestHeader = [nCopy requestHeader];
  v10 = requestHeader;
  if (requestHeader)
  {
    v11 = requestHeader;
  }

  else
  {
    v11 = &stru_285B72378;
  }

  v30[4] = v11;
  v29[5] = @"requestBody";
  requestBody = [nCopy requestBody];
  v13 = requestBody;
  if (requestBody)
  {
    v14 = requestBody;
  }

  else
  {
    v14 = &stru_285B72378;
  }

  v30[5] = v14;
  v29[6] = @"responseHeader";
  responseHeader = [nCopy responseHeader];
  v16 = responseHeader;
  if (responseHeader)
  {
    v17 = responseHeader;
  }

  else
  {
    v17 = &stru_285B72378;
  }

  v30[6] = v17;
  v29[7] = @"responseBody";
  responseBody = [nCopy responseBody];
  v19 = responseBody;
  if (responseBody)
  {
    v20 = responseBody;
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
      [(DEDRequestAdvertiser *)nCopy encodeRequestRecordAsJSON:v23];
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

- (void)session:(id)session peer:(id)peer didChangeState:(int64_t)state
{
  peerCopy = peer;
  if (state == 2)
  {
    v10 = peerCopy;
    onPeerJoin = [(DEDRequestAdvertiser *)self onPeerJoin];

    peerCopy = v10;
    if (onPeerJoin)
    {
      onPeerJoin2 = [(DEDRequestAdvertiser *)self onPeerJoin];
      (onPeerJoin2)[2](onPeerJoin2, v10);

      peerCopy = v10;
    }
  }
}

- (void)advertiser:(id)advertiser didReceiveInvitationFromPeer:(id)peer withContext:(id)context invitationHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  handlerCopy = handler;
  v10 = +[DEDUtils isDebugRequestsEnabled];
  v11 = Log_3();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      displayName = [peerCopy displayName];
      v17 = 138412290;
      v18 = displayName;
      _os_log_impl(&dword_248AD7000, v11, OS_LOG_TYPE_DEFAULT, "Connecting to Request Debugger: [%@]", &v17, 0xCu);
    }

    session = [(DEDRequestAdvertiser *)self session];
    handlerCopy[2](handlerCopy, 1, session);

    handlerCopy = session;
  }

  else
  {
    if (v12)
    {
      displayName2 = [peerCopy displayName];
      v17 = 138412290;
      v18 = displayName2;
      _os_log_impl(&dword_248AD7000, v11, OS_LOG_TYPE_DEFAULT, "Debug requests are disabled, but we got an invitation from [%@]", &v17, 0xCu);
    }

    handlerCopy[2](handlerCopy, 0, 0);
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
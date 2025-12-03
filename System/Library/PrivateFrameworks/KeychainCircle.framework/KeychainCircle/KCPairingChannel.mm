@interface KCPairingChannel
+ (BOOL)_isRetryableNSURLError:(id)error;
+ (BOOL)retryable:(id)retryable;
+ (id)pairingChannelAcceptor:(id)acceptor;
+ (id)pairingChannelCompressData:(id)data;
+ (id)pairingChannelDecompressData:(id)data;
+ (id)pairingChannelInitiator:(id)initiator;
- (BOOL)createTempPacketAndCheckSize:(id)size pcsItem:(id)item octagonData:(id)data keyForItem:(id)forItem error:(id *)error;
- (BOOL)ensureControlChannel;
- (BOOL)fetchEpoch:(id)epoch error:(id *)error;
- (BOOL)fetchPrepare:(id *)prepare application:(id)application error:(id *)error;
- (BOOL)fetchVoucher:(id)voucher prepare:(id)prepare eventS:(id)s finishedPairing:(BOOL *)pairing maxCapability:(id)capability error:(id *)error;
- (BOOL)isPacketSizeAcceptable:(id)acceptable error:(id *)error;
- (BOOL)join:(id *)join voucher:(id)voucher eventS:(id)s setupPairingChannelSignPost:(octagon_signpost_s)post finishPairing:(BOOL *)pairing error:(id *)error;
- (BOOL)populateKeychainForTestingWithNumberOfKeychainItems:(int)items;
- (BOOL)populateKeychainWithLargeItemsForTestingWithCount:(int)count;
- (BOOL)populateKeychainWithTooLargeItemsForTestingWithCount:(int)count;
- (id)copySubsetFrom:(id)from begin:(unint64_t)begin end:(unint64_t)end;
- (id)createPacket:(id)packet results:(id)results endSession:(BOOL)session;
- (id)createTempPacket:(id)packet pcsItem:(id)item octagonData:(id)data keyForItem:(id)forItem;
- (id)evaluateResults:(void *)results;
- (id)exchangePacket:(id)packet complete:(BOOL *)complete error:(id *)error;
- (id)fetchItemForPersistentRef:(id)ref error:(id *)error;
- (id)formNextPacket;
- (id)updateItem:(id)item;
- (int)fetchCountOfReceivedItemsForTesting;
- (int)fetchCountOfSentItemsForTesting;
- (int)fetchPCSItemPersistentRefs:(const void *)refs error:(id *)error;
- (unint64_t)fetchNumberOfPCSKeychainItems;
- (unint64_t)fetchSizeOfPacketForTesting;
- (void)acceptorFirstOctagonPacket:(id)packet reply:(id)reply complete:(id)complete;
- (void)acceptorFirstPacket:(id)packet complete:(id)complete;
- (void)acceptorPCSDataPacket:(id)packet complete:(id)complete;
- (void)acceptorSecondOctagonPacket:(id)packet reply:(id)reply complete:(id)complete;
- (void)acceptorSecondPacket:(id)packet complete:(id)complete;
- (void)acceptorThirdPacket:(id)packet complete:(id)complete;
- (void)acceptorWaitForAck:(id)ack complete:(id)complete;
- (void)exchangePacket:(id)packet complete:(id)complete;
- (void)initiatorCompleteSecondPacketOctagon:(id)octagon application:(id)application complete:(id)complete;
- (void)initiatorCompleteSecondPacketWithSOS:(id)s complete:(id)complete;
- (void)initiatorFirstPacket:(id)packet complete:(id)complete;
- (void)initiatorFourthPacket:(id)packet complete:(id)complete;
- (void)initiatorPCSDataPacket:(id)packet complete:(id)complete;
- (void)initiatorSecondPacket:(id)packet complete:(id)complete;
- (void)initiatorThirdPacket:(id)packet complete:(id)complete;
- (void)oneStepTooMany:(id)many complete:(id)complete;
- (void)setNextStateError:(id)error complete:(id)complete;
- (void)validateStart:(id)start;
- (void)waitForOctagonUpgrade;
@end

@implementation KCPairingChannel

- (unint64_t)fetchSizeOfPacketForTesting
{
  sizeOfPacket = [(KCPairingChannel *)self sizeOfPacket];
  intValue = [sizeOfPacket intValue];

  return intValue;
}

- (unint64_t)fetchNumberOfPCSKeychainItems
{
  v14[8] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CDC248];
  v3 = *MEMORY[0x277CDC5C8];
  v13[0] = *MEMORY[0x277CDC228];
  v13[1] = v3;
  v14[0] = v2;
  v14[1] = MEMORY[0x277CBEC38];
  v4 = *MEMORY[0x277CDBEC8];
  v13[2] = *MEMORY[0x277CDC140];
  v13[3] = v4;
  v14[2] = MEMORY[0x277CBEC38];
  v14[3] = @"com.apple.ProtectedCloudStorage";
  v5 = *MEMORY[0x277CDC428];
  v13[4] = *MEMORY[0x277CDC118];
  v13[5] = v5;
  v6 = *MEMORY[0x277CDC430];
  v14[4] = @"123456";
  v14[5] = v6;
  v7 = *MEMORY[0x277CDC558];
  v13[6] = *MEMORY[0x277CDC550];
  v13[7] = v7;
  v14[6] = MEMORY[0x277CBEC38];
  v14[7] = MEMORY[0x277CBEC38];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:8];
  v12 = 0;
  SecItemCopyMatching(v8, &v12);
  v9 = [v12 count];

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)populateKeychainWithTooLargeItemsForTestingWithCount:(int)count
{
  v25[7] = *MEMORY[0x277D85DE8];
  v4 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:0x400000];
  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x400000uLL, [v4 mutableBytes]))
  {
    v5 = 0;
  }

  else if (count < 1)
  {
    v5 = 1;
  }

  else
  {
    v6 = 0;
    v22 = *MEMORY[0x277CDC228];
    v21 = *MEMORY[0x277CDC248];
    v20 = *MEMORY[0x277CDC5C8];
    v19 = *MEMORY[0x277CDC140];
    v18 = *MEMORY[0x277CDBEC8];
    v17 = *MEMORY[0x277CDC118];
    v5 = 1;
    v16 = *MEMORY[0x277CDBF20];
    v7 = *MEMORY[0x277CDC5E8];
    v8 = MEMORY[0x277CBEC38];
    do
    {
      v24[0] = v22;
      v24[1] = v20;
      v25[0] = v21;
      v25[1] = v8;
      v24[2] = v19;
      v24[3] = v18;
      v25[2] = v8;
      v25[3] = @"com.apple.ProtectedCloudStorage";
      v25[4] = @"123456";
      v24[4] = v17;
      v24[5] = v16;
      v9 = MEMORY[0x277CCACA8];
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      v12 = [v9 stringWithFormat:@"%@-%d", uUIDString, v6];
      v24[6] = v7;
      v25[5] = v12;
      v25[6] = v4;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:7];

      result = 0;
      v5 &= SecItemAdd(v13, &result) == 0;

      v6 = (v6 + 1);
    }

    while (count != v6);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)populateKeychainWithLargeItemsForTestingWithCount:(int)count
{
  v25[7] = *MEMORY[0x277D85DE8];
  v4 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:1625292];
  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x18CCCCuLL, [v4 mutableBytes]))
  {
    v5 = 0;
  }

  else if (count < 1)
  {
    v5 = 1;
  }

  else
  {
    v6 = 0;
    v22 = *MEMORY[0x277CDC228];
    v21 = *MEMORY[0x277CDC248];
    v20 = *MEMORY[0x277CDC5C8];
    v19 = *MEMORY[0x277CDC140];
    v18 = *MEMORY[0x277CDBEC8];
    v17 = *MEMORY[0x277CDC118];
    v5 = 1;
    v16 = *MEMORY[0x277CDBF20];
    v7 = *MEMORY[0x277CDC5E8];
    v8 = MEMORY[0x277CBEC38];
    do
    {
      v24[0] = v22;
      v24[1] = v20;
      v25[0] = v21;
      v25[1] = v8;
      v24[2] = v19;
      v24[3] = v18;
      v25[2] = v8;
      v25[3] = @"com.apple.ProtectedCloudStorage";
      v25[4] = @"123456";
      v24[4] = v17;
      v24[5] = v16;
      v9 = MEMORY[0x277CCACA8];
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      v12 = [v9 stringWithFormat:@"%@-%d", uUIDString, v6];
      v24[6] = v7;
      v25[5] = v12;
      v25[6] = v4;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:7];

      result = 0;
      v5 &= SecItemAdd(v13, &result) == 0;

      v6 = (v6 + 1);
    }

    while (count != v6);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)populateKeychainForTestingWithNumberOfKeychainItems:(int)items
{
  v25[7] = *MEMORY[0x277D85DE8];
  if (items < 1)
  {
    v5 = 1;
  }

  else
  {
    v4 = 0;
    v22 = *MEMORY[0x277CDC228];
    v21 = *MEMORY[0x277CDC248];
    v20 = *MEMORY[0x277CDC5C8];
    v19 = *MEMORY[0x277CDC140];
    v18 = *MEMORY[0x277CDBEC8];
    v17 = *MEMORY[0x277CDC118];
    v5 = 1;
    v16 = *MEMORY[0x277CDBF20];
    v6 = *MEMORY[0x277CDC5E8];
    v7 = MEMORY[0x277CBEC38];
    do
    {
      v24[0] = v22;
      v24[1] = v20;
      v25[0] = v21;
      v25[1] = v7;
      v24[2] = v19;
      v24[3] = v18;
      v25[2] = v7;
      v25[3] = @"com.apple.ProtectedCloudStorage";
      v25[4] = @"123456";
      v24[4] = v17;
      v24[5] = v16;
      v8 = MEMORY[0x277CCACA8];
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      v11 = [v8 stringWithFormat:@"%@-%d", uUIDString, v4];
      v25[5] = v11;
      v24[6] = v6;
      v12 = [@"zesty" dataUsingEncoding:4];
      v25[6] = v12;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:7];

      result = 0;
      v5 &= SecItemAdd(v13, &result) == 0;

      v4 = (v4 + 1);
    }

    while (items != v4);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (int)fetchCountOfSentItemsForTesting
{
  countOfSentItems = [(KCPairingChannel *)self countOfSentItems];
  intValue = [countOfSentItems intValue];

  return intValue;
}

- (int)fetchCountOfReceivedItemsForTesting
{
  countOfReceivedItems = [(KCPairingChannel *)self countOfReceivedItems];
  intValue = [countOfReceivedItems intValue];

  return intValue;
}

- (id)exchangePacket:(id)packet complete:(BOOL *)complete error:(id *)error
{
  packetCopy = packet;
  v9 = dispatch_semaphore_create(0);
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__KCPairingChannel_exchangePacket_complete_error___block_invoke;
  v13[3] = &unk_2788635E0;
  v16 = &v18;
  completeCopy = complete;
  v15 = &v24;
  v10 = v9;
  v14 = v10;
  [(KCPairingChannel *)self exchangePacket:packetCopy complete:v13];
  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    *error = v19[5];
  }

  v11 = v25[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

void __50__KCPairingChannel_exchangePacket_complete_error___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  **(a1 + 56) = a2;
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v14 = v7;

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
  v13 = v8;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)exchangePacket:(id)packet complete:(id)complete
{
  v23 = *MEMORY[0x277D85DE8];
  packetCopy = packet;
  completeCopy = complete;
  v8 = secLogObjForScope("pairing");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    counter = [(KCPairingChannel *)self counter];
    _os_log_impl(&dword_22EB09000, v8, OS_LOG_TYPE_DEFAULT, "Exchange packet: %u", buf, 8u);
  }

  [(KCPairingChannel *)self setCounter:[(KCPairingChannel *)self counter]+ 1];
  if (!packetCopy)
  {
    v12 = 0;
    goto LABEL_8;
  }

  v9 = [objc_opt_class() pairingChannelDecompressData:packetCopy];
  if (v9)
  {
    v10 = v9;
    v20 = 0;
    v11 = [MEMORY[0x277CCAC58] propertyListWithData:v9 options:512 format:0 error:&v20];
    if (v11)
    {
      v12 = v11;

LABEL_8:
      nextState = [(KCPairingChannel *)self nextState];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __44__KCPairingChannel_exchangePacket_complete___block_invoke;
      v18[3] = &unk_2788635B8;
      v18[4] = self;
      v19 = completeCopy;
      (nextState)[2](nextState, v12, v18);

      goto LABEL_15;
    }

    v15 = v20;
    v16 = secLogObjForScope("pairing");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22EB09000, v16, OS_LOG_TYPE_DEFAULT, "failed to deserialize", buf, 2u);
    }

    (*(completeCopy + 2))(completeCopy, 1, 0, v15);
  }

  else
  {
    v14 = secLogObjForScope("pairing");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22EB09000, v14, OS_LOG_TYPE_DEFAULT, "failed to decompress", buf, 2u);
    }

    (*(completeCopy + 2))(completeCopy, 1, 0, 0);
  }

LABEL_15:

  v17 = *MEMORY[0x277D85DE8];
}

void __44__KCPairingChannel_exchangePacket_complete___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v11 = 0;
    v8 = 0;
    goto LABEL_16;
  }

  v23 = 0;
  v8 = [MEMORY[0x277CCAC58] dataWithPropertyList:v6 format:200 options:0 error:&v23];
  v9 = v23;
  v10 = v9;
  if (v7 && !v8)
  {
    v11 = 0;
    v12 = v7;
    v7 = v9;
LABEL_13:

    goto LABEL_15;
  }

  if (!v8)
  {
    v11 = 0;
    goto LABEL_15;
  }

  v13 = *(a1 + 32);
  v11 = [objc_opt_class() pairingChannelCompressData:v8];
  if (v11)
  {
    v14 = *(a1 + 32);
    v15 = "acceptor";
    if (*(v14 + 9))
    {
      v15 = "initiator";
    }

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.ckks.pairing.packet-size.%s.%u", v15, *(v14 + 20)];
    v22 = MEMORY[0x277CDBD78];
    v26 = *MEMORY[0x277CDBE00];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "length")}];
    v27[0] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    [v22 sendEvent:v12 event:v17];

    v18 = secLogObjForScope("pairing");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v11 length];
      *buf = 134217984;
      v25[0] = v19;
      _os_log_impl(&dword_22EB09000, v18, OS_LOG_TYPE_DEFAULT, "pairing packet size %lu", buf, 0xCu);
    }

    goto LABEL_13;
  }

LABEL_15:

LABEL_16:
  v20 = secLogObjForScope("pairing");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    LODWORD(v25[0]) = v8 != 0;
    WORD2(v25[0]) = 2112;
    *(v25 + 6) = v7;
    _os_log_impl(&dword_22EB09000, v20, OS_LOG_TYPE_DEFAULT, "Exchange packet complete data: %{BOOL}d: %@", buf, 0x12u);
  }

  (*(*(a1 + 40) + 16))();
  v21 = *MEMORY[0x277D85DE8];
}

- (void)validateStart:(id)start
{
  startCopy = start;
  if ([(KCPairingChannel *)self initiator])
  {
    v5 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__KCPairingChannel_validateStart___block_invoke_3;
    block[3] = &unk_278863590;
    v6 = &v13;
    v13 = startCopy;
    v7 = startCopy;
    dispatch_async(v5, block);
  }

  else
  {
    connection = [(KCPairingChannel *)self connection];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __34__KCPairingChannel_validateStart___block_invoke;
    v16[3] = &unk_278863540;
    v6 = &v17;
    v9 = startCopy;
    v17 = v9;
    v10 = [connection remoteObjectProxyWithErrorHandler:v16];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __34__KCPairingChannel_validateStart___block_invoke_2;
    v14[3] = &unk_278863568;
    v15 = v9;
    v11 = v9;
    [v10 stashedCredentialPublicKey:v14];

    v5 = v15;
  }
}

- (BOOL)ensureControlChannel
{
  connection = [(KCPairingChannel *)self connection];

  if (connection)
  {
    return 1;
  }

  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28437C930];
  v6 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.securityd.sos" options:0];
  [(KCPairingChannel *)self setConnection:v6];

  connection2 = [(KCPairingChannel *)self connection];
  v4 = connection2 != 0;

  if (connection2)
  {
    connection3 = [(KCPairingChannel *)self connection];
    [connection3 setRemoteObjectInterface:v5];

    connection4 = [(KCPairingChannel *)self connection];
    [connection4 resume];
  }

  return v4;
}

- (void)acceptorWaitForAck:(id)ack complete:(id)complete
{
  v42 = *MEMORY[0x277D85DE8];
  ackCopy = ack;
  completeCopy = complete;
  v7 = secLogObjForScope("pairing");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22EB09000, v7, OS_LOG_TYPE_DEFAULT, "acceptor received ACK from initiator", buf, 2u);
  }

  v8 = [ackCopy objectForKeyedSubscript:@"o"];
  v9 = v8 == 0;

  if (v9)
  {
    v17 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22EB09000, v17, OS_LOG_TYPE_DEFAULT, "pairing: no octagon data, ending session", buf, 2u);
    }

    v18 = [AAFAnalyticsEventSecurity alloc];
    peerVersionContext = [(KCPairingChannel *)self peerVersionContext];
    altDSID = [peerVersionContext altDSID];
    peerVersionContext2 = [(KCPairingChannel *)self peerVersionContext];
    flowID = [peerVersionContext2 flowID];
    peerVersionContext3 = [(KCPairingChannel *)self peerVersionContext];
    deviceSessionID = [peerVersionContext3 deviceSessionID];
    LOBYTE(v35) = 1;
    v10 = [(AAFAnalyticsEventSecurity *)v18 initWithKeychainCircleMetrics:0 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:@"com.apple.security.pairingEmptyOctagonPayload" testsAreEnabled:metricsAreEnabled canSendMetrics:v35 category:&unk_2843768F0];

    [(AAFAnalyticsEventSecurity *)v10 sendMetricWithResult:0 error:0];
    (*(completeCopy + 2))(completeCopy, 1, 0, 0);
  }

  else
  {
    v10 = [ackCopy objectForKeyedSubscript:@"o"];
    v36 = [(AAFAnalyticsEventSecurity *)v10 objectForKeyedSubscript:@"k"];
    v11 = secLogObjForScope("pairing");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v36;
      _os_log_impl(&dword_22EB09000, v11, OS_LOG_TYPE_DEFAULT, "Received ack number: %@", buf, 0xCu);
    }

    ackNumber = [(KCPairingChannel *)self ackNumber];
    v13 = [v36 isEqualToNumber:ackNumber];

    if (v13)
    {
      itemIndex = [(KCPairingChannel *)self itemIndex];
      allPCSItemPersistentRefs = [(KCPairingChannel *)self allPCSItemPersistentRefs];
      LODWORD(itemIndex) = itemIndex < [allPCSItemPersistentRefs count];

      if (itemIndex)
      {
        objc_initWeak(buf, self);
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __48__KCPairingChannel_acceptorWaitForAck_complete___block_invoke;
        v38[3] = &unk_278863270;
        objc_copyWeak(&v39, buf);
        [(KCPairingChannel *)self setNextState:v38];
        formNextPacket = [(KCPairingChannel *)self formNextPacket];
        (*(completeCopy + 2))(completeCopy, 0, formNextPacket, 0);

        objc_destroyWeak(&v39);
        objc_destroyWeak(buf);
      }

      else
      {
        [(KCPairingChannel *)self setAllPCSItemPersistentRefs:0];
        (*(completeCopy + 2))(completeCopy, 1, 0, 0);
      }
    }

    else
    {
      v25 = secLogObjForScope("pairing");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22EB09000, v25, OS_LOG_TYPE_DEFAULT, "Did not receive expected ack number, re-attempting PCS key transfer", buf, 2u);
      }

      v26 = [AAFAnalyticsEventSecurity alloc];
      peerVersionContext4 = [(KCPairingChannel *)self peerVersionContext];
      altDSID2 = [peerVersionContext4 altDSID];
      peerVersionContext5 = [(KCPairingChannel *)self peerVersionContext];
      flowID2 = [peerVersionContext5 flowID];
      peerVersionContext6 = [(KCPairingChannel *)self peerVersionContext];
      deviceSessionID2 = [peerVersionContext6 deviceSessionID];
      LOBYTE(v35) = 1;
      v33 = [(AAFAnalyticsEventSecurity *)v26 initWithKeychainCircleMetrics:0 altDSID:altDSID2 flowID:flowID2 deviceSessionID:deviceSessionID2 eventName:@"com.apple.security.pairingEmptyAckPayload" testsAreEnabled:metricsAreEnabled canSendMetrics:v35 category:&unk_2843768F0];

      [(AAFAnalyticsEventSecurity *)v33 sendMetricWithResult:0 error:0];
      [(KCPairingChannel *)self acceptorPCSDataPacket:MEMORY[0x277CBEC10] complete:completeCopy];
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __48__KCPairingChannel_acceptorWaitForAck_complete___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained acceptorWaitForAck:v6 complete:v5];
}

- (id)formNextPacket
{
  v3 = [(KCPairingChannel *)self itemIndex]+ 400;
  allPCSItemPersistentRefs = [(KCPairingChannel *)self allPCSItemPersistentRefs];
  v5 = [allPCSItemPersistentRefs count];

  if (v3 < v5)
  {
    v7 = [(KCPairingChannel *)self itemIndex]+ 400;
  }

  else
  {
    allPCSItemPersistentRefs2 = [(KCPairingChannel *)self allPCSItemPersistentRefs];
    v7 = [allPCSItemPersistentRefs2 count];
  }

  v8 = v3 >= v5;
  allPCSItemPersistentRefs3 = [(KCPairingChannel *)self allPCSItemPersistentRefs];
  v10 = [(KCPairingChannel *)self copySubsetFrom:allPCSItemPersistentRefs3 begin:[(KCPairingChannel *)self itemIndex] end:v7];

  v11 = MEMORY[0x277CCABB0];
  ackNumber = [(KCPairingChannel *)self ackNumber];
  v13 = [v11 numberWithInteger:{objc_msgSend(ackNumber, "integerValue") + 1}];
  v14 = [(KCPairingChannel *)self createPacket:v13 results:v10 endSession:v8];

  return v14;
}

- (void)acceptorPCSDataPacket:(id)packet complete:(id)complete
{
  packetCopy = packet;
  completeCopy = complete;
  v8 = secLogObjForScope("pairing");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_22EB09000, v8, OS_LOG_TYPE_DEFAULT, "acceptor packet will include pcs data", buf, 2u);
  }

  v30 = completeCopy;

  objc_initWeak(buf, self);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __51__KCPairingChannel_acceptorPCSDataPacket_complete___block_invoke;
  v34[3] = &unk_278863270;
  objc_copyWeak(&v35, buf);
  [(KCPairingChannel *)self setNextState:v34];
  v29 = packetCopy;
  v32 = 0;
  cf = 0;
  v9 = [(KCPairingChannel *)self fetchPCSItemPersistentRefs:&cf error:&v32];
  v10 = v32;
  v11 = v10;
  if (v9 || !cf || v10)
  {
    v15 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v31 = 0;
      _os_log_impl(&dword_22EB09000, v15, OS_LOG_TYPE_DEFAULT, "pairing: fetched no results, ending session", v31, 2u);
    }

    v16 = [AAFAnalyticsEventSecurity alloc];
    peerVersionContext = [(KCPairingChannel *)self peerVersionContext];
    altDSID = [peerVersionContext altDSID];
    peerVersionContext2 = [(KCPairingChannel *)self peerVersionContext];
    flowID = [peerVersionContext2 flowID];
    peerVersionContext3 = [(KCPairingChannel *)self peerVersionContext];
    deviceSessionID = [peerVersionContext3 deviceSessionID];
    LOBYTE(v28) = 1;
    v13 = [(AAFAnalyticsEventSecurity *)v16 initWithKeychainCircleMetrics:0 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:@"com.apple.security.pairingFailedFetchPCSItems" testsAreEnabled:metricsAreEnabled canSendMetrics:v28 category:&unk_2843768F0];

    if (v11)
    {
      [(AAFAnalyticsEventSecurity *)v13 sendMetricWithResult:1 error:v11];
    }

    else
    {
      v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v9 description:@"SecItemCopyMatching: failed to fetch pcs data from the keychain"];
      [(AAFAnalyticsEventSecurity *)v13 sendMetricWithResult:1 error:v23];
    }

    [(KCPairingChannel *)self setAckNumber:&unk_2843768C0];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    [dictionary2 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"e"];
    ackNumber = [(KCPairingChannel *)self ackNumber];
    [dictionary2 setObject:ackNumber forKeyedSubscript:@"n"];

    [dictionary setObject:dictionary2 forKeyedSubscript:@"o"];
    v27 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v27);
    }

    v30[2](v30, 0, dictionary, v11);

    v12 = v30;
  }

  else
  {
    [(KCPairingChannel *)self evaluateResults:?];
    v13 = v12 = v30;
    v14 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v14);
    }

    v30[2](v30, 0, v13, 0);
  }

  objc_destroyWeak(&v35);
  objc_destroyWeak(buf);
}

void __51__KCPairingChannel_acceptorPCSDataPacket_complete___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained acceptorWaitForAck:v6 complete:v5];
}

- (int)fetchPCSItemPersistentRefs:(const void *)refs error:(id *)error
{
  v28[7] = *MEMORY[0x277D85DE8];
  dsidForTest = [(KCPairingChannel *)self dsidForTest];

  if (dsidForTest)
  {
    dsidForTest2 = [(KCPairingChannel *)self dsidForTest];
  }

  else
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2050000000;
    v9 = getACAccountStoreClass_softClass;
    v26 = getACAccountStoreClass_softClass;
    if (!getACAccountStoreClass_softClass)
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __getACAccountStoreClass_block_invoke;
      v22[3] = &unk_278863628;
      v22[4] = &v23;
      __getACAccountStoreClass_block_invoke(v22);
      v9 = v24[3];
    }

    v10 = v9;
    _Block_object_dispose(&v23, 8);
    defaultStore = [v9 defaultStore];
    aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];
    dsidForTest2 = [aa_primaryAppleAccount aa_personID];
  }

  if (dsidForTest2)
  {
    v13 = *MEMORY[0x277CDC248];
    v14 = *MEMORY[0x277CDC5C8];
    v27[0] = *MEMORY[0x277CDC228];
    v27[1] = v14;
    v15 = *MEMORY[0x277CDBEC8];
    v27[2] = *MEMORY[0x277CDC140];
    v27[3] = v15;
    v28[2] = MEMORY[0x277CBEC38];
    v28[3] = @"com.apple.ProtectedCloudStorage";
    v16 = *MEMORY[0x277CDC428];
    v27[4] = *MEMORY[0x277CDC118];
    v27[5] = v16;
    v17 = *MEMORY[0x277CDC430];
    v28[4] = dsidForTest2;
    v28[5] = v17;
    v28[0] = v13;
    v28[1] = MEMORY[0x277CBEC38];
    v27[6] = *MEMORY[0x277CDC560];
    v28[6] = MEMORY[0x277CBEC38];
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:7];
    v19 = SecItemCopyMatching(v18, refs);
  }

  else
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:kKCPairingChannelErrorDomain code:11 description:@"failed to fetch dsid"];
    }

    v19 = -26276;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (id)evaluateResults:(void *)results
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = CFGetTypeID(results);
  if (v5 == CFArrayGetTypeID())
  {
    resultsCopy = results;
    [(KCPairingChannel *)self setAllPCSItemPersistentRefs:resultsCopy];
    if ([resultsCopy count] < 0x191)
    {
      v8 = [(KCPairingChannel *)self createPacket:&unk_2843768C0 results:resultsCopy endSession:1];
    }

    else
    {
      v7 = [(KCPairingChannel *)self copySubsetFrom:resultsCopy begin:0 end:400];

      v8 = [(KCPairingChannel *)self createPacket:&unk_2843768C0 results:v7 endSession:0];
    }
  }

  else
  {
    v9 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134217984;
      v13 = CFGetTypeID(results);
      _os_log_impl(&dword_22EB09000, v9, OS_LOG_TYPE_DEFAULT, "acceptorPCSDataPacket: received unexpected return type from SecItemCopyMatching, typeID: %lu", &v12, 0xCu);
    }

    v8 = [(KCPairingChannel *)self createPacket:&unk_2843768C0 results:0 endSession:1];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)copySubsetFrom:(id)from begin:(unint64_t)begin end:(unint64_t)end
{
  fromCopy = from;
  array = [MEMORY[0x277CBEB18] array];
  if (begin < end)
  {
    v9 = 0;
    do
    {
      v10 = [fromCopy objectAtIndexedSubscript:begin];
      [array setObject:v10 atIndexedSubscript:v9];

      ++v9;
      ++begin;
    }

    while (end != begin);
  }

  return array;
}

- (id)createPacket:(id)packet results:(id)results endSession:(BOOL)session
{
  sessionCopy = session;
  v73 = *MEMORY[0x277D85DE8];
  packetCopy = packet;
  resultsCopy = results;
  [(KCPairingChannel *)self setCountOfSentItems:&unk_2843768A8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v11 = dictionary2;
  if (sessionCopy)
  {
    [dictionary2 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"e"];
  }

  v52 = packetCopy;
  [(KCPairingChannel *)self setAckNumber:packetCopy];
  ackNumber = [(KCPairingChannel *)self ackNumber];
  [v11 setObject:ackNumber forKeyedSubscript:@"n"];

  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = resultsCopy;
  v59 = [obj countByEnumeratingWithState:&v64 objects:v72 count:16];
  v14 = 0;
  if (!v59)
  {
    goto LABEL_39;
  }

  v57 = *v65;
  v58 = v11;
  v53 = dictionary3;
  while (2)
  {
    for (i = 0; i != v59; ++i)
    {
      if (*v65 != v57)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v64 + 1) + 8 * i);
      v17 = objc_autoreleasePoolPush();
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@+%ld", @"pcsdata", v14];
      v63 = 0;
      v19 = [(KCPairingChannel *)self fetchItemForPersistentRef:v16 error:&v63];
      v20 = v63;
      if (v19)
      {
        v21 = v20 == 0;
      }

      else
      {
        v21 = 0;
      }

      v60 = v19;
      v61 = v14;
      if (v21)
      {
        v34 = [(AAFAnalyticsEventSecurity *)v19 mutableCopy];
        v33 = [(KCPairingChannel *)self updateItem:v34];

        v62 = 0;
        v35 = [(KCPairingChannel *)self createTempPacketAndCheckSize:dictionary3 pcsItem:v33 octagonData:v11 keyForItem:v18 error:&v62];
        v36 = v62;
        v32 = v36;
        if (v35 && v36 == 0)
        {
          v38 = dictionary3;
          [(AAFAnalyticsEventSecurity *)dictionary3 setObject:v33 forKeyedSubscript:v18];
LABEL_28:
          v22 = v60;
          v11 = v58;
          dictionary3 = v38;
          v14 = v61 + 1;
          goto LABEL_29;
        }

        v38 = dictionary3;
        if (v35)
        {
          v41 = secLogObjForScope("SecError");
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v69 = v32;
            v42 = "pairing: failed to compress packet. will not add anymore items, error: %@";
            v43 = v41;
            v44 = 12;
LABEL_36:
            _os_log_impl(&dword_22EB09000, v43, OS_LOG_TYPE_DEFAULT, v42, buf, v44);
          }
        }

        else
        {
          if (![(AAFAnalyticsEventSecurity *)dictionary3 count])
          {
            v39 = secLogObjForScope("pairing");
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v69 = v33;
              _os_log_impl(&dword_22EB09000, v39, OS_LOG_TYPE_DEFAULT, "item by itself is too large for the pairing channel: %@", buf, 0xCu);
            }

            if ([obj count] < 2)
            {
              goto LABEL_38;
            }

            v40 = secLogObjForScope("pairing");
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_22EB09000, v40, OS_LOG_TYPE_DEFAULT, "will attempt to add more items to the packet", buf, 2u);
            }

            goto LABEL_28;
          }

          v41 = secLogObjForScope("SecError");
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v42 = "pairing: temp packet size is too large for the channel. will not add anymore items";
            v43 = v41;
            v44 = 2;
            goto LABEL_36;
          }
        }

        [v58 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"e"];
LABEL_38:

        objc_autoreleasePoolPop(v17);
        v11 = v58;
        v14 = v61;
        goto LABEL_39;
      }

      v22 = v20;
      v55 = v18;
      v56 = v17;
      v23 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v69 = v16;
        v70 = 2112;
        v71 = v22;
        _os_log_impl(&dword_22EB09000, v23, OS_LOG_TYPE_DEFAULT, "failed to fetch persistent ref %@, error: %@, continuing", buf, 0x16u);
      }

      v24 = [AAFAnalyticsEventSecurity alloc];
      peerVersionContext = [(KCPairingChannel *)self peerVersionContext];
      altDSID = [peerVersionContext altDSID];
      peerVersionContext2 = [(KCPairingChannel *)self peerVersionContext];
      flowID = [peerVersionContext2 flowID];
      [(KCPairingChannel *)self peerVersionContext];
      v30 = v29 = self;
      deviceSessionID = [v30 deviceSessionID];
      LOBYTE(v50) = 1;
      v32 = [(AAFAnalyticsEventSecurity *)v24 initWithKeychainCircleMetrics:0 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:@"com.apple.security.pairingFailedToFetchItemForPersistentRef" testsAreEnabled:metricsAreEnabled canSendMetrics:v50 category:&unk_2843768F0];

      self = v29;
      [(AAFAnalyticsEventSecurity *)v32 sendMetricWithResult:0 error:v22];
      v33 = v60;
      v14 = v61;
      v11 = v58;
      dictionary3 = v53;
      v18 = v55;
      v17 = v56;
LABEL_29:

      objc_autoreleasePoolPop(v17);
    }

    v59 = [obj countByEnumeratingWithState:&v64 objects:v72 count:16];
    if (v59)
    {
      continue;
    }

    break;
  }

LABEL_39:

  v45 = secLogObjForScope("pairing");
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v46 = [(AAFAnalyticsEventSecurity *)dictionary3 count];
    *buf = 134218242;
    v69 = v46;
    v70 = 2112;
    v71 = dictionary3;
    _os_log_impl(&dword_22EB09000, v45, OS_LOG_TYPE_DEFAULT, "acceptor will send initiator (%lu) items: %@", buf, 0x16u);
  }

  [(KCPairingChannel *)self setItemIndex:[(KCPairingChannel *)self itemIndex]+ v14];
  v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[AAFAnalyticsEventSecurity count](dictionary3, "count")}];
  [(KCPairingChannel *)self setCountOfSentItems:v47];

  [v11 setObject:dictionary3 forKeyedSubscript:@"a"];
  [dictionary setObject:v11 forKeyedSubscript:@"o"];

  v48 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (id)fetchItemForPersistentRef:(id)ref error:(id *)error
{
  v33[1] = *MEMORY[0x277D85DE8];
  refCopy = ref;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:*MEMORY[0x277CDC248] forKeyedSubscript:*MEMORY[0x277CDC228]];
  [dictionary setObject:refCopy forKeyedSubscript:*MEMORY[0x277CDC5F0]];
  v7 = MEMORY[0x277CBEC38];
  [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CDC550]];
  [dictionary setObject:v7 forKeyedSubscript:*MEMORY[0x277CDC558]];
  [dictionary setObject:*MEMORY[0x277CDC438] forKeyedSubscript:*MEMORY[0x277CDC428]];
  result = 0;
  v8 = SecItemCopyMatching(dictionary, &result);
  if (v8 || !result)
  {
    v11 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = refCopy;
      _os_log_impl(&dword_22EB09000, v11, OS_LOG_TYPE_DEFAULT, "fetchItemForPersistentRef: failed to fetch persistent ref: %@", buf, 0xCu);
    }

    if (error)
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = kKCPairingChannelErrorDomain;
      v14 = v8;
      v32 = *MEMORY[0x277CCA450];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"SecItemCopyMatching: %d", v8];
      v33[0] = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      *error = [v12 errorWithDomain:v13 code:v14 userInfo:v16];
    }
  }

  else
  {
    v9 = CFGetTypeID(result);
    if (v9 == CFDictionaryGetTypeID())
    {
      v10 = result;
      goto LABEL_16;
    }

    v17 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = CFGetTypeID(result);
      *buf = 138412546;
      v29 = refCopy;
      v30 = 2048;
      v31 = v18;
      _os_log_impl(&dword_22EB09000, v17, OS_LOG_TYPE_DEFAULT, "fetchItemForPersistentRef: unexpected keychain item type fetched for persistent ref: %@, type: %lu", buf, 0x16u);
    }

    if (error)
    {
      v19 = MEMORY[0x277CCA9B8];
      v20 = kKCPairingChannelErrorDomain;
      v26 = *MEMORY[0x277CCA450];
      v27 = @"unexpected keychain item type fetched for persistent ref";
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      *error = [v19 errorWithDomain:v20 code:10 userInfo:v21];
    }
  }

  v22 = result;
  if (result)
  {
    result = 0;
    CFRelease(v22);
  }

  v10 = 0;
LABEL_16:

  v23 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)createTempPacketAndCheckSize:(id)size pcsItem:(id)item octagonData:(id)data keyForItem:(id)forItem error:(id *)error
{
  v9 = [(KCPairingChannel *)self createTempPacket:size pcsItem:item octagonData:data keyForItem:forItem];
  LOBYTE(error) = [(KCPairingChannel *)self isPacketSizeAcceptable:v9 error:error];

  return error;
}

- (id)createTempPacket:(id)packet pcsItem:(id)item octagonData:(id)data keyForItem:(id)forItem
{
  forItemCopy = forItem;
  dataCopy = data;
  itemCopy = item;
  v12 = [packet mutableCopy];
  [v12 setObject:itemCopy forKeyedSubscript:forItemCopy];

  v13 = [dataCopy mutableCopy];
  [v13 setObject:v12 forKeyedSubscript:@"a"];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:v13 forKeyedSubscript:@"o"];

  return dictionary;
}

- (BOOL)isPacketSizeAcceptable:(id)acceptable error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v6 = [MEMORY[0x277CCAC58] dataWithPropertyList:acceptable format:200 options:0 error:&v17];
  v7 = v17;
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v12 = [objc_opt_class() pairingChannelCompressData:v6];
    if ([v12 length] <= 0x300000)
    {
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "length")}];
      [(KCPairingChannel *)self setSizeOfPacket:v14];

      v13 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

  v10 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v8;
    _os_log_impl(&dword_22EB09000, v10, OS_LOG_TYPE_DEFAULT, "pairing: failed to serialize temp packet: %@", buf, 0xCu);
  }

  if (!error)
  {
    v12 = 0;
    goto LABEL_12;
  }

  v11 = v8;
  v12 = 0;
  v13 = 0;
  *error = v8;
LABEL_13:

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)updateItem:(id)item
{
  itemCopy = item;
  [itemCopy setObject:0 forKeyedSubscript:*MEMORY[0x277CDBEC0]];
  [itemCopy setObject:*MEMORY[0x277CDC248] forKeyedSubscript:*MEMORY[0x277CDC228]];

  return itemCopy;
}

- (void)acceptorThirdPacket:(id)packet complete:(id)complete
{
  v59 = *MEMORY[0x277D85DE8];
  packetCopy = packet;
  completeCopy = complete;
  v7 = secLogObjForScope("pairing");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22EB09000, v7, OS_LOG_TYPE_DEFAULT, "acceptor packet 3", buf, 2u);
  }

  *buf = 0;
  v54 = buf;
  v55 = 0x2020000000;
  v56 = 0;
  v8 = _OctagonSignpostLogSystem();
  v9 = _OctagonSignpostCreate();
  v39 = v10;
  v11 = v9;

  v12 = _OctagonSignpostLogSystem();
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *v57 = 0;
    _os_signpost_emit_with_name_impl(&dword_22EB09000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PairingChannelAcceptorMessage3", " enableTelemetry=YES ", v57, 2u);
  }

  v14 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v57 = 134217984;
    v58 = v11;
    _os_log_impl(&dword_22EB09000, v14, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PairingChannelAcceptorMessage3  enableTelemetry=YES ", v57, 0xCu);
  }

  v15 = [AAFAnalyticsEventSecurity alloc];
  peerVersionContext = [(KCPairingChannel *)self peerVersionContext];
  altDSID = [peerVersionContext altDSID];
  peerVersionContext2 = [(KCPairingChannel *)self peerVersionContext];
  flowID = [peerVersionContext2 flowID];
  peerVersionContext3 = [(KCPairingChannel *)self peerVersionContext];
  deviceSessionID = [peerVersionContext3 deviceSessionID];
  LOBYTE(v34) = 1;
  v22 = [(AAFAnalyticsEventSecurity *)v15 initWithKeychainCircleMetrics:0 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:@"com.apple.security.acceptorCreatesPacket5" testsAreEnabled:metricsAreEnabled canSendMetrics:v34 category:&unk_2843768F0];

  acceptorInitialSyncCredentialsFlags = [(KCPairingChannel *)self acceptorInitialSyncCredentialsFlags];
  connection = [(KCPairingChannel *)self connection];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __49__KCPairingChannel_acceptorThirdPacket_complete___block_invoke;
  v47[3] = &unk_278863400;
  v51 = v11;
  v52 = v39;
  v50 = buf;
  v23 = v22;
  v48 = v23;
  v24 = completeCopy;
  v49 = v24;
  v37 = [connection remoteObjectProxyWithErrorHandler:v47];
  peerVersionContext4 = [(KCPairingChannel *)self peerVersionContext];
  altDSID2 = [peerVersionContext4 altDSID];
  peerVersionContext5 = [(KCPairingChannel *)self peerVersionContext];
  flowID2 = [peerVersionContext5 flowID];
  peerVersionContext6 = [(KCPairingChannel *)self peerVersionContext];
  deviceSessionID2 = [peerVersionContext6 deviceSessionID];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __49__KCPairingChannel_acceptorThirdPacket_complete___block_invoke_292;
  v40[3] = &unk_278863518;
  v44 = buf;
  v45 = v11;
  v46 = v39;
  v31 = v23;
  v41 = v31;
  selfCopy = self;
  v32 = v24;
  v43 = v32;
  [v37 initialSyncCredentials:acceptorInitialSyncCredentialsFlags altDSID:altDSID2 flowID:flowID2 deviceSessionID:deviceSessionID2 canSendMetrics:1 complete:v40];

  _Block_object_dispose(buf, 8);
  v33 = *MEMORY[0x277D85DE8];
}

void __49__KCPairingChannel_acceptorThirdPacket_complete___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = a2;
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v7 = _OctagonSignpostLogSystem();
  v8 = v7;
  v9 = *(a1 + 56);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = *(*(*(a1 + 48) + 8) + 24);
    v14 = 67240192;
    LODWORD(v15) = v10;
    _os_signpost_emit_with_name_impl(&dword_22EB09000, v8, OS_SIGNPOST_INTERVAL_END, v9, "PairingChannelAcceptorMessage3", " OctagonSignpostNamePairingChannelAcceptorMessage3=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorMessage3}d ", &v14, 8u);
  }

  v11 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134218496;
    v12 = *(*(*(a1 + 48) + 8) + 24);
    v15 = *(a1 + 56);
    v16 = 2048;
    v17 = Nanoseconds / 1000000000.0;
    v18 = 1026;
    v19 = v12;
    _os_log_impl(&dword_22EB09000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelAcceptorMessage3  OctagonSignpostNamePairingChannelAcceptorMessage3=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorMessage3}d ", &v14, 0x1Cu);
  }

  [*(a1 + 32) sendMetricWithResult:0 error:v5];
  (*(*(a1 + 40) + 16))();

  v13 = *MEMORY[0x277D85DE8];
}

void __49__KCPairingChannel_acceptorThirdPacket_complete___block_invoke_292(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = secLogObjForScope("pairing");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v24 = [v5 count];
    *&v24[4] = 2112;
    *&v24[6] = v6;
    _os_log_impl(&dword_22EB09000, v8, OS_LOG_TYPE_DEFAULT, "acceptor initialSyncCredentials complete: items %u: %@", buf, 0x12u);
  }

  if (v5)
  {
    [v7 setObject:v5 forKeyedSubscript:@"d"];
  }

  v9 = secLogObjForScope("pairing");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22EB09000, v9, OS_LOG_TYPE_DEFAULT, "acceptor reply to packet 3", buf, 2u);
  }

  *(*(*(a1 + 56) + 8) + 24) = 1;
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v13 = _OctagonSignpostLogSystem();
  v14 = v13;
  v15 = *(a1 + 64);
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    v16 = *(*(*(a1 + 56) + 8) + 24);
    *buf = 67240192;
    *v24 = v16;
    _os_signpost_emit_with_name_impl(&dword_22EB09000, v14, OS_SIGNPOST_INTERVAL_END, v15, "PairingChannelAcceptorMessage3", " OctagonSignpostNamePairingChannelAcceptorMessage3=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorMessage3}d ", buf, 8u);
  }

  v17 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v18 = *(*(*(a1 + 56) + 8) + 24);
    *v24 = *(a1 + 64);
    *&v24[8] = 2048;
    *&v24[10] = Nanoseconds / 1000000000.0;
    v25 = 1026;
    v26 = v18;
    _os_log_impl(&dword_22EB09000, v17, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelAcceptorMessage3  OctagonSignpostNamePairingChannelAcceptorMessage3=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorMessage3}d ", buf, 0x1Cu);
  }

  [*(a1 + 32) sendMetricWithResult:v6 == 0 error:v6];
  if (CloudServicesLibraryCore() && getSecureBackupIsGuitarfishEnabledSymbolLoc() && soft_SecureBackupIsGuitarfishEnabled() && [*(a1 + 40) acceptorWillSendPCSData])
  {
    v19 = secLogObjForScope(pairingScope);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22EB09000, v19, OS_LOG_TYPE_DEFAULT, "acceptor will send PCS data", buf, 2u);
    }

    objc_initWeak(buf, *(a1 + 40));
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __49__KCPairingChannel_acceptorThirdPacket_complete___block_invoke_293;
    v21[3] = &unk_278863270;
    objc_copyWeak(&v22, buf);
    [*(a1 + 40) setNextState:v21];
    (*(*(a1 + 48) + 16))();
    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __49__KCPairingChannel_acceptorThirdPacket_complete___block_invoke_293(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained acceptorPCSDataPacket:v6 complete:v5];
}

- (void)acceptorSecondOctagonPacket:(id)packet reply:(id)reply complete:(id)complete
{
  v51 = *MEMORY[0x277D85DE8];
  packetCopy = packet;
  replyCopy = reply;
  completeCopy = complete;
  v10 = [AAFAnalyticsEventSecurity alloc];
  peerVersionContext = [(KCPairingChannel *)self peerVersionContext];
  altDSID = [peerVersionContext altDSID];
  peerVersionContext2 = [(KCPairingChannel *)self peerVersionContext];
  flowID = [peerVersionContext2 flowID];
  peerVersionContext3 = [(KCPairingChannel *)self peerVersionContext];
  deviceSessionID = [peerVersionContext3 deviceSessionID];
  LOBYTE(v38) = 1;
  v17 = [(AAFAnalyticsEventSecurity *)v10 initWithKeychainCircleMetrics:0 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:@"com.apple.security.acceptorCreatesVoucher" testsAreEnabled:metricsAreEnabled canSendMetrics:v38 category:&unk_2843768F0];

  v18 = [packetCopy objectForKeyedSubscript:@"o"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = [[OTPairingMessage alloc] initWithData:v18];
    if ([(OTPairingMessage *)v19 hasPrepare])
    {
      v39 = v18;
      prepare = [(OTPairingMessage *)v19 prepare];
      v44 = 0;
      peerVersionContext4 = [(KCPairingChannel *)self peerVersionContext];
      capability = [peerVersionContext4 capability];

      if (capability)
      {
        peerVersionContext5 = [(KCPairingChannel *)self peerVersionContext];
        capability2 = [peerVersionContext5 capability];
      }

      else
      {
        capability2 = @"full";
      }

      v40 = completeCopy;
      v41 = packetCopy;
      v27 = secLogObjForScope(pairingScope);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v46 = capability2;
        _os_log_impl(&dword_22EB09000, v27, OS_LOG_TYPE_DEFAULT, "acceptor channel max capability set to %@", buf, 0xCu);
      }

      v28 = 0;
      v29 = 0;
      while (1)
      {
        v30 = secLogObjForScope(pairingScope);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v46) = v28 + 1;
          _os_log_impl(&dword_22EB09000, v30, OS_LOG_TYPE_DEFAULT, "Attempt %d fetching voucher", buf, 8u);
        }

        v43 = 0;
        v31 = [(KCPairingChannel *)self fetchVoucher:replyCopy prepare:prepare eventS:v17 finishedPairing:&v44 maxCapability:capability2 error:&v43];
        v29 = v43;
        if (v31)
        {
          completeCopy = v40;
          (*(v40 + 2))(v40, v44, replyCopy, 0);
          goto LABEL_29;
        }

        if (![KCPairingChannel retryable:v29])
        {
          break;
        }

        v32 = secLogObjForScope(pairingScope);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v46) = v28 + 2;
          _os_log_impl(&dword_22EB09000, v32, OS_LOG_TYPE_DEFAULT, "Attempt %d retrying fetching voucher", buf, 8u);
        }

        ++v28;

        if (v28 >= vouchMaxRetry)
        {
          v33 = secLogObjForScope("SecError");
          if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_28;
          }

          *buf = 67109120;
          LODWORD(v46) = vouchMaxRetry;
          v34 = "pairing: failed to fetch voucher %d times, bailing.";
          v35 = v33;
          v36 = 8;
          goto LABEL_27;
        }
      }

      v33 = secLogObjForScope("SecError");
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      *buf = 136315650;
      v46 = pairingScope;
      v47 = 1024;
      v48 = v28 + 1;
      v49 = 2112;
      v50 = v29;
      v34 = "%s Attempt %d failed fetching voucher: %@";
      v35 = v33;
      v36 = 28;
LABEL_27:
      _os_log_impl(&dword_22EB09000, v35, OS_LOG_TYPE_DEFAULT, v34, buf, v36);
LABEL_28:

      completeCopy = v40;
      (*(v40 + 2))(v40, 1, 0, v29);
LABEL_29:
      v18 = v39;

      packetCopy = v41;
    }

    else
    {
      v26 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22EB09000, v26, OS_LOG_TYPE_DEFAULT, "ot-pairing: acceptorSecondOctagonPacket: no octagon message", buf, 2u);
      }

      prepare = [MEMORY[0x277CCA9B8] errorWithDomain:kKCPairingChannelErrorDomain code:4 userInfo:0];
      [(KCPairingChannel *)self setNextStateError:prepare complete:completeCopy];
      [(AAFAnalyticsEventSecurity *)v17 sendMetricWithResult:0 error:prepare];
    }
  }

  else
  {
    v25 = secLogObjForScope(pairingScope);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22EB09000, v25, OS_LOG_TYPE_DEFAULT, "acceptorSecondOctagonPacket octagon data missing", buf, 2u);
    }

    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:kKCPairingChannelErrorDomain code:4 userInfo:0];
    [(KCPairingChannel *)self setNextStateError:v19 complete:completeCopy];
    [(AAFAnalyticsEventSecurity *)v17 sendMetricWithResult:0 error:v19];
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (BOOL)fetchVoucher:(id)voucher prepare:(id)prepare eventS:(id)s finishedPairing:(BOOL *)pairing maxCapability:(id)capability error:(id *)error
{
  voucherCopy = voucher;
  prepareCopy = prepare;
  sCopy = s;
  capabilityCopy = capability;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy_;
  v42 = __Block_byref_object_dispose_;
  v43 = 0;
  objc_initWeak(&location, self);
  otControl = [(KCPairingChannel *)self otControl];
  controlArguments = [(KCPairingChannel *)self controlArguments];
  joiningConfiguration = [(KCPairingChannel *)self joiningConfiguration];
  peerID = [prepareCopy peerID];
  permanentInfo = [prepareCopy permanentInfo];
  permanentInfoSig = [prepareCopy permanentInfoSig];
  stableInfo = [prepareCopy stableInfo];
  stableInfoSig = [prepareCopy stableInfoSig];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __84__KCPairingChannel_fetchVoucher_prepare_eventS_finishedPairing_maxCapability_error___block_invoke;
  v31[3] = &unk_2788634F0;
  v31[4] = self;
  v23 = sCopy;
  v32 = v23;
  v34 = &v38;
  objc_copyWeak(v36, &location);
  v22 = voucherCopy;
  v33 = v22;
  v35 = &v44;
  v36[1] = pairing;
  [otControl rpcVoucherWithArguments:controlArguments configuration:joiningConfiguration peerID:peerID permanentInfo:permanentInfo permanentInfoSig:permanentInfoSig stableInfo:stableInfo stableInfoSig:stableInfoSig maxCapability:capabilityCopy reply:v31];

  if (error)
  {
    v19 = v39[5];
    if (v19)
    {
      *error = v19;
    }
  }

  v20 = *(v45 + 24);

  objc_destroyWeak(v36);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v38, 8);

  _Block_object_dispose(&v44, 8);
  return v20;
}

void __84__KCPairingChannel_fetchVoucher_prepare_eventS_finishedPairing_maxCapability_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9 || [*(a1 + 32) testFailOctagon])
  {
    v10 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 32) counter];
      *buf = 67109120;
      v39 = v11;
      _os_log_impl(&dword_22EB09000, v10, OS_LOG_TYPE_DEFAULT, "error acceptor handling octagon packet %d", buf, 8u);
    }

    [*(a1 + 40) sendMetricWithResult:0 error:v9];
    v12 = *(*(a1 + 56) + 8);
    v13 = v9;
    v14 = *(v12 + 40);
    *(v12 + 40) = v13;
    goto LABEL_6;
  }

  v16 = secLogObjForScope(pairingScope);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [*(a1 + 32) counter];
    *buf = 67109120;
    v39 = v17;
    _os_log_impl(&dword_22EB09000, v16, OS_LOG_TYPE_DEFAULT, "acceptor handled octagon packet %d", buf, 8u);
  }

  if (SOSCCIsSOSTrustAndSyncingEnabled() && [*(a1 + 32) acceptorWillSendInitialSyncCredentials])
  {
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __84__KCPairingChannel_fetchVoucher_prepare_eventS_finishedPairing_maxCapability_error___block_invoke_288;
    v36[3] = &unk_278863270;
    v18 = &v37;
    objc_copyWeak(&v37, (a1 + 72));
    [*(a1 + 32) setNextState:v36];
    v19 = 0;
  }

  else
  {
    if (!CloudServicesLibraryCore() || !getSecureBackupIsGuitarfishEnabledSymbolLoc() || !soft_SecureBackupIsGuitarfishEnabled() || ![*(a1 + 32) acceptorWillSendPCSData])
    {
      v19 = 1;
      goto LABEL_21;
    }

    v20 = secLogObjForScope(pairingScope);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22EB09000, v20, OS_LOG_TYPE_DEFAULT, "acceptor will send PCS data", buf, 2u);
    }

    v31 = MEMORY[0x277D85DD0];
    v32 = 3221225472;
    v33 = __84__KCPairingChannel_fetchVoucher_prepare_eventS_finishedPairing_maxCapability_error___block_invoke_289;
    v34 = &unk_278863270;
    v18 = &v35;
    objc_copyWeak(&v35, (a1 + 72));
    [*(a1 + 32) setNextState:&v31];
    v19 = 1;
  }

  objc_destroyWeak(v18);
LABEL_21:
  v14 = objc_alloc_init(OTPairingMessage);
  v21 = objc_alloc_init(OTSupportSOSMessage);
  [(OTPairingMessage *)v14 setSupportsSOS:v21];

  v22 = objc_alloc_init(OTSupportOctagonMessage);
  [(OTPairingMessage *)v14 setSupportsOctagon:v22];

  v23 = objc_alloc_init(OTSponsorToApplicantRound2M2);
  [(OTPairingMessage *)v14 setVoucher:v23];

  v24 = [(OTPairingMessage *)v14 voucher];
  [v24 setVoucher:v7];

  v25 = [(OTPairingMessage *)v14 voucher];
  [v25 setVoucherSignature:v8];

  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v26 = 1;
  }

  else
  {
    v26 = 2;
  }

  v27 = [(OTPairingMessage *)v14 supportsSOS:v31];
  [v27 setSupported:v26];

  v28 = [(OTPairingMessage *)v14 supportsOctagon];
  [v28 setSupported:1];

  if ([*(a1 + 32) acceptorWillSendInitialSyncCredentials])
  {
    [*(a1 + 32) setAcceptorInitialSyncCredentialsFlags:{objc_msgSend(*(a1 + 32), "acceptorInitialSyncCredentialsFlags") & 0xFFFFFFFCLL}];
  }

  v29 = [(OTPairingMessage *)v14 data];
  [*(a1 + 48) setObject:v29 forKeyedSubscript:@"o"];

  v30 = secLogObjForScope("pairing");
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22EB09000, v30, OS_LOG_TYPE_DEFAULT, "acceptor reply to packet 2", buf, 2u);
  }

  [*(a1 + 40) sendMetricWithResult:1 error:0];
  *(*(*(a1 + 64) + 8) + 24) = 1;
  if (CloudServicesLibraryCore() && getSecureBackupIsGuitarfishEnabledSymbolLoc() && soft_SecureBackupIsGuitarfishEnabled() && [*(a1 + 32) acceptorWillSendPCSData])
  {
    **(a1 + 80) = 0;
  }

  else
  {
    **(a1 + 80) = v19;
  }

LABEL_6:

  v15 = *MEMORY[0x277D85DE8];
}

void __84__KCPairingChannel_fetchVoucher_prepare_eventS_finishedPairing_maxCapability_error___block_invoke_288(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained acceptorThirdPacket:v6 complete:v5];
}

void __84__KCPairingChannel_fetchVoucher_prepare_eventS_finishedPairing_maxCapability_error___block_invoke_289(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained acceptorPCSDataPacket:v6 complete:v5];
}

- (void)acceptorSecondPacket:(id)packet complete:(id)complete
{
  v82 = *MEMORY[0x277D85DE8];
  packetCopy = packet;
  completeCopy = complete;
  objc_initWeak(&location, self);
  [(KCPairingChannel *)self setNextStateError:0 complete:0];
  v72[0] = 0;
  v72[1] = v72;
  v72[2] = 0x2020000000;
  v73 = 0;
  v6 = _OctagonSignpostLogSystem();
  v7 = _OctagonSignpostCreate();
  v43 = v8;
  v9 = v7;

  v10 = _OctagonSignpostLogSystem();
  v11 = v10;
  if ((v9 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_22EB09000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "PairingChannelAcceptorMessage2", " enableTelemetry=YES ", &buf, 2u);
  }

  v12 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v9;
    _os_log_impl(&dword_22EB09000, v12, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PairingChannelAcceptorMessage2  enableTelemetry=YES ", &buf, 0xCu);
  }

  v13 = [AAFAnalyticsEventSecurity alloc];
  peerVersionContext = [(KCPairingChannel *)self peerVersionContext];
  altDSID = [peerVersionContext altDSID];
  peerVersionContext2 = [(KCPairingChannel *)self peerVersionContext];
  flowID = [peerVersionContext2 flowID];
  peerVersionContext3 = [(KCPairingChannel *)self peerVersionContext];
  deviceSessionID = [peerVersionContext3 deviceSessionID];
  LOBYTE(v37) = 1;
  v44 = [(AAFAnalyticsEventSecurity *)v13 initWithKeychainCircleMetrics:0 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:@"com.apple.security.acceptorCreatesPacket4" testsAreEnabled:metricsAreEnabled canSendMetrics:v37 category:&unk_2843768F0];

  v20 = secLogObjForScope("pairing");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_22EB09000, v20, OS_LOG_TYPE_DEFAULT, "acceptor packet 2", &buf, 2u);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v78 = 0x3032000000;
  v79 = __Block_byref_object_copy_;
  v80 = __Block_byref_object_dispose_;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v21 = [packetCopy objectForKeyedSubscript:@"p"];
  if ([(KCPairingChannel *)self sessionSupportsSOS]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v70[0] = 0;
    v70[1] = v70;
    v70[2] = 0x2020000000;
    v71 = 0;
    v22 = _OctagonSignpostLogSystem();
    v23 = _OctagonSignpostCreate();
    v42 = v24;
    v25 = v23;

    v26 = _OctagonSignpostLogSystem();
    v27 = v26;
    if ((v25 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *v75 = 0;
      _os_signpost_emit_with_name_impl(&dword_22EB09000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v25, "PairingChannelAcceptorCircleJoiningBlob", " enableTelemetry=YES ", v75, 2u);
    }

    v28 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *v75 = 134217984;
      v76 = v25;
      _os_log_impl(&dword_22EB09000, v28, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PairingChannelAcceptorCircleJoiningBlob  enableTelemetry=YES ", v75, 0xCu);
    }

    connection = [(KCPairingChannel *)self connection];
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __50__KCPairingChannel_acceptorSecondPacket_complete___block_invoke;
    v61[3] = &unk_2788632C0;
    v66 = v25;
    v67 = v42;
    v68 = v9;
    v69 = v43;
    v64 = v70;
    v65 = v72;
    v29 = v44;
    v62 = v29;
    v30 = completeCopy;
    v63 = v30;
    v39 = [connection remoteObjectProxyWithErrorHandler:v61];
    peerVersionContext4 = [(KCPairingChannel *)self peerVersionContext];
    altDSID2 = [peerVersionContext4 altDSID];
    peerVersionContext5 = [(KCPairingChannel *)self peerVersionContext];
    flowID2 = [peerVersionContext5 flowID];
    peerVersionContext6 = [(KCPairingChannel *)self peerVersionContext];
    deviceSessionID2 = [peerVersionContext6 deviceSessionID];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __50__KCPairingChannel_acceptorSecondPacket_complete___block_invoke_284;
    v53[3] = &unk_2788634C8;
    v60[1] = v25;
    v60[2] = v42;
    v57 = v70;
    v53[4] = self;
    p_buf = &buf;
    v54 = packetCopy;
    v59 = v72;
    v60[3] = v9;
    v60[4] = v43;
    v55 = v29;
    v56 = v30;
    objc_copyWeak(v60, &location);
    [v39 circleJoiningBlob:altDSID2 flowID:flowID2 deviceSessionID:deviceSessionID2 canSendMetrics:1 applicant:v21 complete:v53];

    objc_destroyWeak(v60);
    _Block_object_dispose(v70, 8);
  }

  else if ([(KCPairingChannel *)self sessionSupportsOctagon])
  {
    v35 = *(*(&buf + 1) + 40);
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __50__KCPairingChannel_acceptorSecondPacket_complete___block_invoke_287;
    v47[3] = &unk_2788632E8;
    v50 = v72;
    v51 = v9;
    v52 = v43;
    v48 = v44;
    v49 = completeCopy;
    [(KCPairingChannel *)self acceptorSecondOctagonPacket:packetCopy reply:v35 complete:v47];
  }

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(v72, 8);
  objc_destroyWeak(&location);

  v36 = *MEMORY[0x277D85DE8];
}

void __50__KCPairingChannel_acceptorSecondPacket_complete___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v5 = a2;
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v7 = _OctagonSignpostLogSystem();
  v8 = v7;
  v9 = *(a1 + 64);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = *(*(*(a1 + 48) + 8) + 24);
    v24 = 67240192;
    LODWORD(v25) = v10;
    _os_signpost_emit_with_name_impl(&dword_22EB09000, v8, OS_SIGNPOST_INTERVAL_END, v9, "PairingChannelAcceptorCircleJoiningBlob", " OctagonSignpostNamePairingChannelAcceptorCircleJoiningBlob=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorCircleJoiningBlob}d ", &v24, 8u);
  }

  v11 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 64);
    v13 = *(*(*(a1 + 48) + 8) + 24);
    v24 = 134218496;
    v25 = v12;
    v26 = 2048;
    v27 = Nanoseconds / 1000000000.0;
    v28 = 1026;
    v29 = v13;
    _os_log_impl(&dword_22EB09000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelAcceptorCircleJoiningBlob  OctagonSignpostNamePairingChannelAcceptorCircleJoiningBlob=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorCircleJoiningBlob}d ", &v24, 0x1Cu);
  }

  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  v16 = _OctagonSignpostGetNanoseconds();
  v17 = _OctagonSignpostLogSystem();
  v18 = v17;
  v19 = *(a1 + 80);
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    v20 = *(*(*(a1 + 56) + 8) + 24);
    v24 = 67240192;
    LODWORD(v25) = v20;
    _os_signpost_emit_with_name_impl(&dword_22EB09000, v18, OS_SIGNPOST_INTERVAL_END, v19, "PairingChannelAcceptorMessage2", " OctagonSignpostNamePairingChannelAcceptorMessage2=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorMessage2}d ", &v24, 8u);
  }

  v21 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 134218496;
    v22 = *(*(*(a1 + 56) + 8) + 24);
    v25 = *(a1 + 80);
    v26 = 2048;
    v27 = v16 / 1000000000.0;
    v28 = 1026;
    v29 = v22;
    _os_log_impl(&dword_22EB09000, v21, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelAcceptorMessage2  OctagonSignpostNamePairingChannelAcceptorMessage2=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorMessage2}d ", &v24, 0x1Cu);
  }

  [*(a1 + 32) sendMetricWithResult:0 error:v5];
  (*(*(a1 + 40) + 16))();

  v23 = *MEMORY[0x277D85DE8];
}

void __50__KCPairingChannel_acceptorSecondPacket_complete___block_invoke_284(uint64_t a1, void *a2, void *a3)
{
  v60 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  v8 = *(a1 + 96);
  v9 = *(a1 + 104);
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v11 = _OctagonSignpostLogSystem();
  v12 = v11;
  v13 = *(a1 + 96);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v14 = *(*(*(a1 + 64) + 8) + 24);
    *buf = 67240192;
    *v57 = v14;
    _os_signpost_emit_with_name_impl(&dword_22EB09000, v12, OS_SIGNPOST_INTERVAL_END, v13, "PairingChannelAcceptorCircleJoiningBlob", " OctagonSignpostNamePairingChannelAcceptorCircleJoiningBlob=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorCircleJoiningBlob}d ", buf, 8u);
  }

  v15 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 96);
    v17 = *(*(*(a1 + 64) + 8) + 24);
    *buf = 134218496;
    *v57 = v16;
    *&v57[8] = 2048;
    *&v57[10] = Nanoseconds / 1000000000.0;
    v58 = 1026;
    v59 = v17;
    _os_log_impl(&dword_22EB09000, v15, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelAcceptorCircleJoiningBlob  OctagonSignpostNamePairingChannelAcceptorCircleJoiningBlob=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorCircleJoiningBlob}d ", buf, 0x1Cu);
  }

  if (v5)
  {
    v18 = secLogObjForScope("pairing");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [*(a1 + 32) acceptorWillSendInitialSyncCredentials];
      *buf = 67109378;
      *v57 = v19;
      *&v57[4] = 2112;
      *&v57[6] = v7;
      _os_log_impl(&dword_22EB09000, v18, OS_LOG_TYPE_DEFAULT, "acceptor pairing complete (will send: %{BOOL}d): %@", buf, 0x12u);
    }

    [*(*(*(a1 + 72) + 8) + 40) setObject:v5 forKeyedSubscript:@"b"];
  }

  if ([*(a1 + 32) sessionSupportsOctagon])
  {
    v20 = *(a1 + 32);
    v21 = *(a1 + 40);
    v22 = *(*(*(a1 + 72) + 8) + 40);
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __50__KCPairingChannel_acceptorSecondPacket_complete___block_invoke_285;
    v51[3] = &unk_2788632E8;
    v54 = *(a1 + 80);
    v55 = *(a1 + 112);
    v52 = *(a1 + 48);
    v53 = *(a1 + 56);
    [v20 acceptorSecondOctagonPacket:v21 reply:v22 complete:v51];

    v23 = v52;
  }

  else
  {
    v24 = secLogObjForScope("pairing");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22EB09000, v24, OS_LOG_TYPE_DEFAULT, "posting kSOSCCCircleOctagonKeysChangedNotification", buf, 2u);
    }

    notify_post(*MEMORY[0x277CDBE70]);
    if ([*(a1 + 32) acceptorWillSendInitialSyncCredentials])
    {
      v46 = MEMORY[0x277D85DD0];
      v47 = 3221225472;
      v48 = __50__KCPairingChannel_acceptorSecondPacket_complete___block_invoke_286;
      v49 = &unk_278863270;
      objc_copyWeak(&v50, (a1 + 88));
      [*(a1 + 32) setNextState:&v46];
      *(*(*(a1 + 80) + 8) + 24) = 1;
      v25 = *(a1 + 112);
      v26 = *(a1 + 120);
      v27 = _OctagonSignpostGetNanoseconds();
      v28 = _OctagonSignpostLogSystem();
      v29 = v28;
      v30 = *(a1 + 112);
      if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
      {
        v31 = *(*(*(a1 + 80) + 8) + 24);
        *buf = 67240192;
        *v57 = v31;
        _os_signpost_emit_with_name_impl(&dword_22EB09000, v29, OS_SIGNPOST_INTERVAL_END, v30, "PairingChannelAcceptorMessage2", " OctagonSignpostNamePairingChannelAcceptorMessage2=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorMessage2}d ", buf, 8u);
      }

      v32 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v33 = *(*(*(a1 + 80) + 8) + 24);
        *v57 = *(a1 + 112);
        *&v57[8] = 2048;
        *&v57[10] = v27 / 1000000000.0;
        v58 = 1026;
        v59 = v33;
        _os_log_impl(&dword_22EB09000, v32, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelAcceptorMessage2  OctagonSignpostNamePairingChannelAcceptorMessage2=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorMessage2}d ", buf, 0x1Cu);
      }

      [*(a1 + 48) sendMetricWithResult:1 error:{0, v46, v47, v48, v49}];
      v34 = *(*(*(a1 + 72) + 8) + 40);
      (*(*(a1 + 56) + 16))();
      objc_destroyWeak(&v50);
    }

    else
    {
      *(*(*(a1 + 80) + 8) + 24) = 1;
      v35 = *(a1 + 112);
      v36 = *(a1 + 120);
      v37 = _OctagonSignpostGetNanoseconds();
      v38 = _OctagonSignpostLogSystem();
      v39 = v38;
      v40 = *(a1 + 112);
      if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
      {
        v41 = *(*(*(a1 + 80) + 8) + 24);
        *buf = 67240192;
        *v57 = v41;
        _os_signpost_emit_with_name_impl(&dword_22EB09000, v39, OS_SIGNPOST_INTERVAL_END, v40, "PairingChannelAcceptorMessage2", " OctagonSignpostNamePairingChannelAcceptorMessage2=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorMessage2}d ", buf, 8u);
      }

      v42 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v43 = *(*(*(a1 + 80) + 8) + 24);
        *v57 = *(a1 + 112);
        *&v57[8] = 2048;
        *&v57[10] = v37 / 1000000000.0;
        v58 = 1026;
        v59 = v43;
        _os_log_impl(&dword_22EB09000, v42, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelAcceptorMessage2  OctagonSignpostNamePairingChannelAcceptorMessage2=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorMessage2}d ", buf, 0x1Cu);
      }

      [*(a1 + 48) sendMetricWithResult:1 error:0];
      v44 = *(*(*(a1 + 72) + 8) + 40);
      (*(*(a1 + 56) + 16))();
    }

    v23 = secLogObjForScope("pairing");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22EB09000, v23, OS_LOG_TYPE_DEFAULT, "acceptor reply to packet 2", buf, 2u);
    }
  }

  v45 = *MEMORY[0x277D85DE8];
}

void __50__KCPairingChannel_acceptorSecondPacket_complete___block_invoke_287(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = a4;
  v9 = a3;
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v11 = _OctagonSignpostLogSystem();
  v12 = v11;
  v13 = *(a1 + 56);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v14 = *(*(*(a1 + 48) + 8) + 24);
    v18 = 67240192;
    LODWORD(v19) = v14;
    _os_signpost_emit_with_name_impl(&dword_22EB09000, v12, OS_SIGNPOST_INTERVAL_END, v13, "PairingChannelAcceptorMessage2", " OctagonSignpostNamePairingChannelAcceptorMessage2=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorMessage2}d ", &v18, 8u);
  }

  v15 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134218496;
    v16 = *(*(*(a1 + 48) + 8) + 24);
    v19 = *(a1 + 56);
    v20 = 2048;
    v21 = Nanoseconds / 1000000000.0;
    v22 = 1026;
    v23 = v16;
    _os_log_impl(&dword_22EB09000, v15, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelAcceptorMessage2  OctagonSignpostNamePairingChannelAcceptorMessage2=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorMessage2}d ", &v18, 0x1Cu);
  }

  [*(a1 + 32) sendMetricWithResult:*(*(*(a1 + 48) + 8) + 24) error:v8];
  (*(*(a1 + 40) + 16))();

  v17 = *MEMORY[0x277D85DE8];
}

void __50__KCPairingChannel_acceptorSecondPacket_complete___block_invoke_285(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = a4;
  v9 = a3;
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v11 = _OctagonSignpostLogSystem();
  v12 = v11;
  v13 = *(a1 + 56);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v14 = *(*(*(a1 + 48) + 8) + 24);
    v18 = 67240192;
    LODWORD(v19) = v14;
    _os_signpost_emit_with_name_impl(&dword_22EB09000, v12, OS_SIGNPOST_INTERVAL_END, v13, "PairingChannelAcceptorMessage2", " OctagonSignpostNamePairingChannelAcceptorMessage2=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorMessage2}d ", &v18, 8u);
  }

  v15 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134218496;
    v16 = *(*(*(a1 + 48) + 8) + 24);
    v19 = *(a1 + 56);
    v20 = 2048;
    v21 = Nanoseconds / 1000000000.0;
    v22 = 1026;
    v23 = v16;
    _os_log_impl(&dword_22EB09000, v15, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelAcceptorMessage2  OctagonSignpostNamePairingChannelAcceptorMessage2=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorMessage2}d ", &v18, 0x1Cu);
  }

  [*(a1 + 32) sendMetricWithResult:*(*(*(a1 + 48) + 8) + 24) error:v8];
  (*(*(a1 + 40) + 16))();

  v17 = *MEMORY[0x277D85DE8];
}

void __50__KCPairingChannel_acceptorSecondPacket_complete___block_invoke_286(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained acceptorThirdPacket:v6 complete:v5];
}

- (void)acceptorFirstOctagonPacket:(id)packet reply:(id)reply complete:(id)complete
{
  v32 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  completeCopy = complete;
  v10 = [packet objectForKeyedSubscript:@"o"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = secLogObjForScope(pairingScope);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v23 = "acceptorFirstOctagonPacket octagon data missing";
LABEL_17:
      _os_log_impl(&dword_22EB09000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 2u);
    }

LABEL_18:

    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:kKCPairingChannelErrorDomain code:4 userInfo:0];
    [(KCPairingChannel *)self setNextStateError:v13 complete:completeCopy];
    goto LABEL_24;
  }

  v11 = [v10 objectForKeyedSubscript:@"v"];
  v12 = [v11 isEqualToString:@"O"];

  if (!v12)
  {
    v22 = secLogObjForScope(pairingScope);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v23 = "acceptorFirstOctagonPacket 'v' contents wrong";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v13 = 0;
  v14 = 0;
  while (1)
  {
    v15 = secLogObjForScope(pairingScope);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v27) = v14 + 1;
      _os_log_impl(&dword_22EB09000, v15, OS_LOG_TYPE_DEFAULT, "Attempt %d fetching epoch", buf, 8u);
    }

    v25 = 0;
    v16 = [(KCPairingChannel *)self fetchEpoch:replyCopy error:&v25];
    v13 = v25;
    if (v16)
    {
      (*(completeCopy + 2))(completeCopy, 0, replyCopy, 0);
      goto LABEL_24;
    }

    if (![KCPairingChannel retryable:v13])
    {
      break;
    }

    v17 = secLogObjForScope(pairingScope);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v27) = v14 + 2;
      _os_log_impl(&dword_22EB09000, v17, OS_LOG_TYPE_DEFAULT, "Attempt %d retrying fetching epoch", buf, 8u);
    }

    ++v14;

    if (v14 >= epochMaxRetry)
    {
      v18 = secLogObjForScope("SecError");
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      *buf = 67109120;
      LODWORD(v27) = epochMaxRetry;
      v19 = "pairing: failed to fetch epoch %d times, bailing.";
      v20 = v18;
      v21 = 8;
      goto LABEL_22;
    }
  }

  v18 = secLogObjForScope("SecError");
  if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_23;
  }

  *buf = 136315650;
  v27 = pairingScope;
  v28 = 1024;
  v29 = v14 + 1;
  v30 = 2112;
  v31 = v13;
  v19 = "%s: Attempt %d failed fetching epoch: %@";
  v20 = v18;
  v21 = 28;
LABEL_22:
  _os_log_impl(&dword_22EB09000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
LABEL_23:

  (*(completeCopy + 2))(completeCopy, 1, 0, v13);
LABEL_24:

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)fetchEpoch:(id)epoch error:(id *)error
{
  epochCopy = epoch;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  objc_initWeak(&location, self);
  otControl = [(KCPairingChannel *)self otControl];
  controlArguments = [(KCPairingChannel *)self controlArguments];
  joiningConfiguration = [(KCPairingChannel *)self joiningConfiguration];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __37__KCPairingChannel_fetchEpoch_error___block_invoke;
  v14[3] = &unk_2788634A0;
  v14[4] = self;
  v16 = &v20;
  objc_copyWeak(&v18, &location);
  v10 = epochCopy;
  v15 = v10;
  v17 = &v26;
  [otControl rpcEpochWithArguments:controlArguments configuration:joiningConfiguration reply:v14];

  if (error)
  {
    v11 = v21[5];
    if (v11)
    {
      *error = v11;
    }
  }

  v12 = *(v27 + 24);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  return v12;
}

void __37__KCPairingChannel_fetchEpoch_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = secLogObjForScope("pairing");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v27 = a2;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&dword_22EB09000, v7, OS_LOG_TYPE_DEFAULT, "acceptor rpcEpochWithArguments: %ld (%@)", buf, 0x16u);
  }

  if (v6 || [*(a1 + 32) testFailOctagon])
  {
    v8 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) counter];
      *buf = 67109120;
      LODWORD(v27) = v9;
      _os_log_impl(&dword_22EB09000, v8, OS_LOG_TYPE_DEFAULT, "error acceptor handling packet %d", buf, 8u);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  else
  {
    v11 = secLogObjForScope(pairingScope);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 32) counter];
      *buf = 67109120;
      LODWORD(v27) = v12;
      _os_log_impl(&dword_22EB09000, v11, OS_LOG_TYPE_DEFAULT, "acceptor handled packet %d", buf, 8u);
    }

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __37__KCPairingChannel_fetchEpoch_error___block_invoke_281;
    v24[3] = &unk_278863270;
    objc_copyWeak(&v25, (a1 + 64));
    [*(a1 + 32) setNextState:v24];
    v13 = objc_alloc_init(OTPairingMessage);
    v14 = objc_alloc_init(OTSupportSOSMessage);
    [(OTPairingMessage *)v13 setSupportsSOS:v14];

    v15 = objc_alloc_init(OTSupportOctagonMessage);
    [(OTPairingMessage *)v13 setSupportsOctagon:v15];

    v16 = objc_alloc_init(OTSponsorToApplicantRound1M2);
    [(OTPairingMessage *)v13 setEpoch:v16];

    v17 = [(OTPairingMessage *)v13 epoch];
    [v17 setEpoch:a2];

    LODWORD(v17) = SOSCCIsSOSTrustAndSyncingEnabled();
    v18 = [(OTPairingMessage *)v13 supportsSOS];
    v19 = v18;
    if (v17)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }

    [v18 setSupported:v20];

    v21 = [(OTPairingMessage *)v13 supportsOctagon];
    [v21 setSupported:1];

    v22 = [(OTPairingMessage *)v13 data];
    [*(a1 + 40) setObject:v22 forKeyedSubscript:@"o"];

    v23 = secLogObjForScope(pairingScope);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22EB09000, v23, OS_LOG_TYPE_DEFAULT, "acceptor reply to packet 1", buf, 2u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
    objc_destroyWeak(&v25);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __37__KCPairingChannel_fetchEpoch_error___block_invoke_281(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained acceptorSecondPacket:v6 complete:v5];
}

- (void)acceptorFirstPacket:(id)packet complete:(id)complete
{
  v124[1] = *MEMORY[0x277D85DE8];
  packetCopy = packet;
  completeCopy = complete;
  objc_initWeak(&location, self);
  v6 = secLogObjForScope("pairing");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22EB09000, v6, OS_LOG_TYPE_DEFAULT, "acceptor packet 1", buf, 2u);
  }

  [(KCPairingChannel *)self setNextStateError:0 complete:0];
  if ([(KCPairingChannel *)self sessionSupportsSOS]&& [(KCPairingChannel *)self sessionSupportsOctagon])
  {
    sessionSupportsSOS = 3;
  }

  else if ([(KCPairingChannel *)self sessionSupportsOctagon])
  {
    sessionSupportsSOS = 2;
  }

  else
  {
    sessionSupportsSOS = [(KCPairingChannel *)self sessionSupportsSOS];
  }

  v8 = [AAFAnalyticsEventSecurity alloc];
  v123 = @"supportedTrustSystem";
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:sessionSupportsSOS];
  v124[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v124 forKeys:&v123 count:1];
  peerVersionContext = [(KCPairingChannel *)self peerVersionContext];
  altDSID = [peerVersionContext altDSID];
  peerVersionContext2 = [(KCPairingChannel *)self peerVersionContext];
  flowID = [peerVersionContext2 flowID];
  peerVersionContext3 = [(KCPairingChannel *)self peerVersionContext];
  deviceSessionID = [peerVersionContext3 deviceSessionID];
  LOBYTE(v72) = 1;
  v17 = [(AAFAnalyticsEventSecurity *)v8 initWithKeychainCircleMetrics:v10 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:@"com.apple.security.acceptorCreatesPacket2" testsAreEnabled:metricsAreEnabled canSendMetrics:v72 category:&unk_2843768F0];

  v112 = 0;
  v113 = &v112;
  v114 = 0x2020000000;
  v115 = 0;
  v18 = _OctagonSignpostLogSystem();
  v19 = _OctagonSignpostCreate();
  v21 = v20;

  v22 = _OctagonSignpostLogSystem();
  v23 = v22;
  v24 = (v19 - 1);
  if ((v19 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22EB09000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v19, "PairingChannelAcceptorMessage1", " enableTelemetry=YES ", buf, 2u);
  }

  v25 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v19;
    _os_log_impl(&dword_22EB09000, v25, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PairingChannelAcceptorMessage1  enableTelemetry=YES ", buf, 0xCu);
  }

  if ([(KCPairingChannel *)self sessionSupportsSOS]&& ![(KCPairingChannel *)self ensureControlChannel])
  {
    v37 = secLogObjForScope("pairing");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22EB09000, v37, OS_LOG_TYPE_DEFAULT, "unable to establish a channel to sos control", buf, 2u);
    }

    v31 = [MEMORY[0x277CCA9B8] errorWithDomain:kKCPairingChannelErrorDomain code:1 userInfo:0];
    [(KCPairingChannel *)self setNextStateError:v31 complete:completeCopy];
    [(AAFAnalyticsEventSecurity *)v17 sendMetricWithResult:0 error:v31];
    Nanoseconds = _OctagonSignpostGetNanoseconds();
    v39 = _OctagonSignpostLogSystem();
    v40 = v39;
    if (v24 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
    {
      v41 = *(v113 + 24);
      *buf = 67240192;
      *&buf[4] = v41;
      _os_signpost_emit_with_name_impl(&dword_22EB09000, v40, OS_SIGNPOST_INTERVAL_END, v19, "PairingChannelAcceptorMessage1", " OctagonSignpostNamePairingChannelAcceptorMessage1=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorMessage1}d ", buf, 8u);
    }

    dictionary = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(dictionary, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v43 = *(v113 + 24);
      *&buf[4] = v19;
      *&buf[12] = 2048;
      *&buf[14] = Nanoseconds / 1000000000.0;
      *&buf[22] = 1026;
      LODWORD(v120) = v43;
      _os_log_impl(&dword_22EB09000, dictionary, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelAcceptorMessage1  OctagonSignpostNamePairingChannelAcceptorMessage1=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorMessage1}d ", buf, 0x1Cu);
    }
  }

  else
  {
    if ([(KCPairingChannel *)self sessionSupportsSOS])
    {
      v26 = [packetCopy objectForKeyedSubscript:@"d"];
      v27 = v26 == 0;

      if (!v27)
      {
        v28 = secLogObjForScope("pairing");
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22EB09000, v28, OS_LOG_TYPE_DEFAULT, "acceptor initialSyncCredentials requested", buf, 2u);
        }

        [(KCPairingChannel *)self setAcceptorWillSendInitialSyncCredentials:1];
        [(KCPairingChannel *)self setAcceptorInitialSyncCredentialsFlags:11];
      }
    }

    v29 = [packetCopy objectForKeyedSubscript:@"o"];
    v30 = v29 == 0;

    if (v30)
    {
      v36 = secLogObjForScope("pairing");
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22EB09000, v36, OS_LOG_TYPE_DEFAULT, "initiator didn't send a octagon packet, so skipping all octagon flows", buf, 2u);
      }

      [(KCPairingChannel *)self setSessionSupportsOctagon:0];
      goto LABEL_47;
    }

    v31 = [packetCopy objectForKeyedSubscript:@"o"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (CloudServicesLibraryCore())
      {
        if (getSecureBackupIsGuitarfishEnabledSymbolLoc())
        {
          if (soft_SecureBackupIsGuitarfishEnabled())
          {
            v32 = [v31 objectForKeyedSubscript:@"s"];
            if (v32)
            {
              v33 = [v31 objectForKeyedSubscript:@"s"];
              if ([v33 isEqualToNumber:MEMORY[0x277CBEC38]])
              {
                peerVersionContext4 = [(KCPairingChannel *)self peerVersionContext];
                accountIsGuitarfish = [peerVersionContext4 accountIsGuitarfish];

                if (accountIsGuitarfish)
                {
                  [(KCPairingChannel *)self setAcceptorWillSendPCSData:1];
                }
              }

              else
              {
              }
            }
          }
        }
      }

LABEL_47:
      v31 = objc_alloc_init(MEMORY[0x277CDBD70]);
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      if (CloudServicesLibraryCore() && getSecureBackupIsGuitarfishEnabledSymbolLoc() && soft_SecureBackupIsGuitarfishEnabled() && [(KCPairingChannel *)self acceptorWillSendPCSData])
      {
        [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"y"];
      }

      v108 = 0;
      v109 = &v108;
      v110 = 0x2020000000;
      v111 = 1;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v120 = __Block_byref_object_copy_;
      v121 = __Block_byref_object_dispose_;
      v122 = 0;
      otControl = [(KCPairingChannel *)self otControl];
      controlArguments = [(KCPairingChannel *)self controlArguments];
      v107[0] = MEMORY[0x277D85DD0];
      v107[1] = 3221225472;
      v107[2] = __49__KCPairingChannel_acceptorFirstPacket_complete___block_invoke;
      v107[3] = &unk_278863450;
      v107[4] = &v108;
      v107[5] = buf;
      [otControl fetchTrustStatus:controlArguments configuration:v31 reply:v107];

      if (v109[3])
      {
        v48 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *v117 = 0;
          _os_log_impl(&dword_22EB09000, v48, OS_LOG_TYPE_DEFAULT, "pairing: device is not trusted, stopping the pairing flow", v117, 2u);
        }

        v49 = *(*&buf[8] + 40);
        v50 = v49;
        if (!v49)
        {
          v50 = [MEMORY[0x277CCA9B8] errorWithDomain:kKCPairingChannelErrorDomain code:8 description:{@"device cannot support pairing, not trusted in Octagon"}];
        }

        completeCopy[2](completeCopy, 1, 0, v50);
        if (!v49)
        {
        }
      }

      else if (*(*&buf[8] + 40))
      {
        v51 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          v52 = *(*&buf[8] + 40);
          *v117 = 138412290;
          *&v117[4] = v52;
          _os_log_impl(&dword_22EB09000, v51, OS_LOG_TYPE_DEFAULT, "pairing: failed to check trust status: %@", v117, 0xCu);
        }

        completeCopy[2](completeCopy, 1, 0, *(*&buf[8] + 40));
      }

      else if ([(KCPairingChannel *)self sessionSupportsSOS])
      {
        v53 = _OctagonSignpostLogSystem();
        v54 = _OctagonSignpostCreate();
        v79 = v55;
        spid = v54;

        v56 = _OctagonSignpostLogSystem();
        v57 = v56;
        if ((spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v56))
        {
          *v117 = 0;
          _os_signpost_emit_with_name_impl(&dword_22EB09000, v57, OS_SIGNPOST_INTERVAL_BEGIN, spid, "PairingChannelAcceptorFetchStashCredential", " enableTelemetry=YES ", v117, 2u);
        }

        v58 = _OctagonSignpostLogSystem();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          *v117 = 134217984;
          *&v117[4] = spid;
          _os_log_impl(&dword_22EB09000, v58, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PairingChannelAcceptorFetchStashCredential  enableTelemetry=YES ", v117, 0xCu);
        }

        *v117 = 0;
        *&v117[8] = v117;
        *&v117[16] = 0x2020000000;
        LOBYTE(v118) = 0;
        connection = [(KCPairingChannel *)self connection];
        v98[0] = MEMORY[0x277D85DD0];
        v98[1] = 3221225472;
        v98[2] = __49__KCPairingChannel_acceptorFirstPacket_complete___block_invoke_275;
        v98[3] = &unk_2788632C0;
        v103 = spid;
        v104 = v79;
        v105 = v19;
        v106 = v21;
        v101 = v117;
        v102 = &v112;
        v74 = v17;
        v99 = v74;
        v73 = completeCopy;
        v100 = v73;
        v75 = [connection remoteObjectProxyWithErrorHandler:v98];
        peerVersionContext5 = [(KCPairingChannel *)self peerVersionContext];
        altDSID2 = [peerVersionContext5 altDSID];
        peerVersionContext6 = [(KCPairingChannel *)self peerVersionContext];
        flowID2 = [peerVersionContext6 flowID];
        peerVersionContext7 = [(KCPairingChannel *)self peerVersionContext];
        deviceSessionID2 = [peerVersionContext7 deviceSessionID];
        v89[0] = MEMORY[0x277D85DD0];
        v89[1] = 3221225472;
        v89[2] = __49__KCPairingChannel_acceptorFirstPacket_complete___block_invoke_276;
        v89[3] = &unk_278863478;
        v95 = v117;
        v97[1] = spid;
        v97[2] = v79;
        v90 = dictionary;
        selfCopy = self;
        v92 = packetCopy;
        v96 = &v112;
        v97[3] = v19;
        v97[4] = v21;
        v93 = v74;
        v94 = v73;
        objc_copyWeak(v97, &location);
        [v75 validatedStashedAccountCredential:altDSID2 flowID:flowID2 deviceSessionID:deviceSessionID2 canSendMetrics:1 complete:v89];

        objc_destroyWeak(v97);
        _Block_object_dispose(v117, 8);
      }

      else if ([(KCPairingChannel *)self sessionSupportsOctagon])
      {
        v83[0] = MEMORY[0x277D85DD0];
        v83[1] = 3221225472;
        v83[2] = __49__KCPairingChannel_acceptorFirstPacket_complete___block_invoke_280;
        v83[3] = &unk_2788632E8;
        v86 = &v112;
        v87 = v19;
        v88 = v21;
        v84 = v17;
        v85 = completeCopy;
        [(KCPairingChannel *)self acceptorFirstOctagonPacket:packetCopy reply:dictionary complete:v83];
      }

      else
      {
        v63 = secLogObjForScope("pairing");
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          *v117 = 0;
          _os_log_impl(&dword_22EB09000, v63, OS_LOG_TYPE_DEFAULT, "acceptor neither of octagon nor SOS", v117, 2u);
        }

        v64 = [MEMORY[0x277CCA9B8] errorWithDomain:kKCPairingChannelErrorDomain code:6 userInfo:0];
        [(KCPairingChannel *)self setNextStateError:v64 complete:completeCopy];
        v65 = _OctagonSignpostGetNanoseconds();
        v66 = _OctagonSignpostLogSystem();
        v67 = v66;
        if (v24 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v66))
        {
          v68 = *(v113 + 24);
          *v117 = 67240192;
          *&v117[4] = v68;
          _os_signpost_emit_with_name_impl(&dword_22EB09000, v67, OS_SIGNPOST_INTERVAL_END, v19, "PairingChannelAcceptorMessage1", " OctagonSignpostNamePairingChannelAcceptorMessage1=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorMessage1}d ", v117, 8u);
        }

        v69 = _OctagonSignpostLogSystem();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          *v117 = 134218496;
          v70 = *(v113 + 24);
          *&v117[4] = v19;
          *&v117[12] = 2048;
          *&v117[14] = v65 / 1000000000.0;
          *&v117[22] = 1026;
          v118 = v70;
          _os_log_impl(&dword_22EB09000, v69, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelAcceptorMessage1  OctagonSignpostNamePairingChannelAcceptorMessage1=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorMessage1}d ", v117, 0x1Cu);
        }

        [(AAFAnalyticsEventSecurity *)v17 sendMetricWithResult:0 error:v64];
      }

      _Block_object_dispose(buf, 8);

      _Block_object_dispose(&v108, 8);
      goto LABEL_81;
    }

    v44 = secLogObjForScope(pairingScope);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22EB09000, v44, OS_LOG_TYPE_DEFAULT, "acceptorFirstPacket: expected NSDictionary type", buf, 2u);
    }

    if (_os_feature_enabled_impl())
    {
      v45 = [objc_alloc(MEMORY[0x277CDBD88]) initTapToRadar:@"Encountered unexpected packet format while proximity pairing" description:@"The source device expected an NSDictionary payload but received an unexpected packet format. Please include a sysdiagnose of both this device and the device signing in." radar:@"137694941"];
      [v45 trigger];
    }

    dictionary = [MEMORY[0x277CCA9B8] errorWithDomain:kKCPairingChannelErrorDomain code:9 userInfo:0];
    [(KCPairingChannel *)self setNextStateError:dictionary complete:completeCopy];
  }

LABEL_81:

  _Block_object_dispose(&v112, 8);
  objc_destroyWeak(&location);

  v71 = *MEMORY[0x277D85DE8];
}

void __49__KCPairingChannel_acceptorFirstPacket_complete___block_invoke_275(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v5 = a2;
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v7 = _OctagonSignpostLogSystem();
  v8 = v7;
  v9 = *(a1 + 64);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = *(*(*(a1 + 48) + 8) + 24);
    v24 = 67240192;
    LODWORD(v25) = v10;
    _os_signpost_emit_with_name_impl(&dword_22EB09000, v8, OS_SIGNPOST_INTERVAL_END, v9, "PairingChannelAcceptorFetchStashCredential", " OctagonSignpostNamePairingChannelAcceptorFetchStashCredential=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorFetchStashCredential}d ", &v24, 8u);
  }

  v11 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 64);
    v13 = *(*(*(a1 + 48) + 8) + 24);
    v24 = 134218496;
    v25 = v12;
    v26 = 2048;
    v27 = Nanoseconds / 1000000000.0;
    v28 = 1026;
    v29 = v13;
    _os_log_impl(&dword_22EB09000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelAcceptorFetchStashCredential  OctagonSignpostNamePairingChannelAcceptorFetchStashCredential=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorFetchStashCredential}d ", &v24, 0x1Cu);
  }

  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  v16 = _OctagonSignpostGetNanoseconds();
  v17 = _OctagonSignpostLogSystem();
  v18 = v17;
  v19 = *(a1 + 80);
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    v20 = *(*(*(a1 + 56) + 8) + 24);
    v24 = 67240192;
    LODWORD(v25) = v20;
    _os_signpost_emit_with_name_impl(&dword_22EB09000, v18, OS_SIGNPOST_INTERVAL_END, v19, "PairingChannelAcceptorMessage1", " OctagonSignpostNamePairingChannelAcceptorMessage1=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorMessage1}d ", &v24, 8u);
  }

  v21 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 134218496;
    v22 = *(*(*(a1 + 56) + 8) + 24);
    v25 = *(a1 + 80);
    v26 = 2048;
    v27 = v16 / 1000000000.0;
    v28 = 1026;
    v29 = v22;
    _os_log_impl(&dword_22EB09000, v21, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelAcceptorMessage1  OctagonSignpostNamePairingChannelAcceptorMessage1=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorMessage1}d ", &v24, 0x1Cu);
  }

  [*(a1 + 32) sendMetricWithResult:0 error:v5];
  (*(*(a1 + 40) + 16))();

  v23 = *MEMORY[0x277D85DE8];
}

void __49__KCPairingChannel_acceptorFirstPacket_complete___block_invoke_276(uint64_t a1, void *a2, void *a3)
{
  v63 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = secLogObjForScope("pairing");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v60 = v5 != 0;
    *&v60[4] = 2112;
    *&v60[6] = v6;
    _os_log_impl(&dword_22EB09000, v7, OS_LOG_TYPE_DEFAULT, "acceptor validatedStashedAccountCredential: %{BOOL}d (%@)", buf, 0x12u);
  }

  if (v5 && !v6)
  {
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  v8 = *(a1 + 96);
  v9 = *(a1 + 104);
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v11 = _OctagonSignpostLogSystem();
  v12 = v11;
  v13 = *(a1 + 96);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v14 = *(*(*(a1 + 72) + 8) + 24);
    *buf = 67240192;
    *v60 = v14;
    _os_signpost_emit_with_name_impl(&dword_22EB09000, v12, OS_SIGNPOST_INTERVAL_END, v13, "PairingChannelAcceptorFetchStashCredential", " OctagonSignpostNamePairingChannelAcceptorFetchStashCredential=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorFetchStashCredential}d ", buf, 8u);
  }

  v15 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 96);
    v17 = *(*(*(a1 + 72) + 8) + 24);
    *buf = 134218496;
    *v60 = v16;
    *&v60[8] = 2048;
    *&v60[10] = Nanoseconds / 1000000000.0;
    v61 = 1026;
    v62 = v17;
    _os_log_impl(&dword_22EB09000, v15, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelAcceptorFetchStashCredential  OctagonSignpostNamePairingChannelAcceptorFetchStashCredential=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorFetchStashCredential}d ", buf, 0x1Cu);
  }

  if (v5)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:@"c"];
    if ([*(a1 + 40) acceptorWillSendInitialSyncCredentials])
    {
      [*(a1 + 32) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"d"];
    }

    if ([*(a1 + 40) sessionSupportsOctagon])
    {
      v19 = *(a1 + 40);
      v18 = *(a1 + 48);
      v20 = *(a1 + 32);
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __49__KCPairingChannel_acceptorFirstPacket_complete___block_invoke_277;
      v54[3] = &unk_2788632E8;
      v57 = *(a1 + 80);
      v58 = *(a1 + 112);
      v55 = *(a1 + 56);
      v56 = *(a1 + 64);
      [v19 acceptorFirstOctagonPacket:v18 reply:v20 complete:v54];
    }

    else
    {
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __49__KCPairingChannel_acceptorFirstPacket_complete___block_invoke_278;
      v52[3] = &unk_278863270;
      objc_copyWeak(&v53, (a1 + 88));
      [*(a1 + 40) setNextState:v52];
      v32 = secLogObjForScope("pairing");
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22EB09000, v32, OS_LOG_TYPE_DEFAULT, "acceptor reply to packet 1", buf, 2u);
      }

      *(*(*(a1 + 80) + 8) + 24) = 1;
      v33 = *(a1 + 112);
      v34 = *(a1 + 120);
      v35 = _OctagonSignpostGetNanoseconds();
      v36 = _OctagonSignpostLogSystem();
      v37 = v36;
      v38 = *(a1 + 112);
      if (v38 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
      {
        v39 = *(*(*(a1 + 80) + 8) + 24);
        *buf = 67240192;
        *v60 = v39;
        _os_signpost_emit_with_name_impl(&dword_22EB09000, v37, OS_SIGNPOST_INTERVAL_END, v38, "PairingChannelAcceptorMessage1", " OctagonSignpostNamePairingChannelAcceptorMessage1=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorMessage1}d ", buf, 8u);
      }

      v40 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v41 = *(*(*(a1 + 80) + 8) + 24);
        *v60 = *(a1 + 112);
        *&v60[8] = 2048;
        *&v60[10] = v35 / 1000000000.0;
        v61 = 1026;
        v62 = v41;
        _os_log_impl(&dword_22EB09000, v40, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelAcceptorMessage1  OctagonSignpostNamePairingChannelAcceptorMessage1=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorMessage1}d ", buf, 0x1Cu);
      }

      [*(a1 + 56) sendMetricWithResult:1 error:0];
      v42 = *(a1 + 32);
      (*(*(a1 + 64) + 16))();
      objc_destroyWeak(&v53);
    }
  }

  else if ([*(a1 + 40) sessionSupportsOctagon] && !objc_msgSend(*(a1 + 40), "testFailSOS"))
  {
    if ([*(a1 + 40) sessionSupportsOctagon])
    {
      v45 = *(a1 + 40);
      v44 = *(a1 + 48);
      v46 = *(a1 + 32);
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __49__KCPairingChannel_acceptorFirstPacket_complete___block_invoke_279;
      v47[3] = &unk_2788632E8;
      v50 = *(a1 + 80);
      v51 = *(a1 + 112);
      v48 = *(a1 + 56);
      v49 = *(a1 + 64);
      [v45 acceptorFirstOctagonPacket:v44 reply:v46 complete:v47];
    }
  }

  else
  {
    v21 = secLogObjForScope("pairing");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v60 = v6;
      _os_log_impl(&dword_22EB09000, v21, OS_LOG_TYPE_DEFAULT, "acceptor doesn't have a stashed credential: %@", buf, 0xCu);
    }

    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:kKCPairingChannelErrorDomain code:7 userInfo:0];
    [*(a1 + 40) setNextStateError:v22 complete:*(a1 + 64)];
    v23 = *(a1 + 112);
    v24 = *(a1 + 120);
    v25 = _OctagonSignpostGetNanoseconds();
    v26 = _OctagonSignpostLogSystem();
    v27 = v26;
    v28 = *(a1 + 112);
    if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      v29 = *(*(*(a1 + 80) + 8) + 24);
      *buf = 67240192;
      *v60 = v29;
      _os_signpost_emit_with_name_impl(&dword_22EB09000, v27, OS_SIGNPOST_INTERVAL_END, v28, "PairingChannelAcceptorMessage1", " OctagonSignpostNamePairingChannelAcceptorMessage1=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorMessage1}d ", buf, 8u);
    }

    v30 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v31 = *(*(*(a1 + 80) + 8) + 24);
      *v60 = *(a1 + 112);
      *&v60[8] = 2048;
      *&v60[10] = v25 / 1000000000.0;
      v61 = 1026;
      v62 = v31;
      _os_log_impl(&dword_22EB09000, v30, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelAcceptorMessage1  OctagonSignpostNamePairingChannelAcceptorMessage1=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorMessage1}d ", buf, 0x1Cu);
    }

    [*(a1 + 56) sendMetricWithResult:0 error:v22];
  }

  v43 = *MEMORY[0x277D85DE8];
}

void __49__KCPairingChannel_acceptorFirstPacket_complete___block_invoke_280(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = a4;
  v9 = a3;
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v11 = _OctagonSignpostLogSystem();
  v12 = v11;
  v13 = *(a1 + 56);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v14 = *(*(*(a1 + 48) + 8) + 24);
    v18 = 67240192;
    LODWORD(v19) = v14;
    _os_signpost_emit_with_name_impl(&dword_22EB09000, v12, OS_SIGNPOST_INTERVAL_END, v13, "PairingChannelAcceptorMessage1", " OctagonSignpostNamePairingChannelAcceptorMessage1=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorMessage1}d ", &v18, 8u);
  }

  v15 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134218496;
    v16 = *(*(*(a1 + 48) + 8) + 24);
    v19 = *(a1 + 56);
    v20 = 2048;
    v21 = Nanoseconds / 1000000000.0;
    v22 = 1026;
    v23 = v16;
    _os_log_impl(&dword_22EB09000, v15, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelAcceptorMessage1  OctagonSignpostNamePairingChannelAcceptorMessage1=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorMessage1}d ", &v18, 0x1Cu);
  }

  [*(a1 + 32) sendMetricWithResult:*(*(*(a1 + 48) + 8) + 24) error:v8];
  (*(*(a1 + 40) + 16))();

  v17 = *MEMORY[0x277D85DE8];
}

void __49__KCPairingChannel_acceptorFirstPacket_complete___block_invoke_277(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = a4;
  v9 = a3;
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v11 = _OctagonSignpostLogSystem();
  v12 = v11;
  v13 = *(a1 + 56);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v14 = *(*(*(a1 + 48) + 8) + 24);
    v18 = 67240192;
    LODWORD(v19) = v14;
    _os_signpost_emit_with_name_impl(&dword_22EB09000, v12, OS_SIGNPOST_INTERVAL_END, v13, "PairingChannelAcceptorMessage1", " OctagonSignpostNamePairingChannelAcceptorMessage1=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorMessage1}d ", &v18, 8u);
  }

  v15 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134218496;
    v16 = *(*(*(a1 + 48) + 8) + 24);
    v19 = *(a1 + 56);
    v20 = 2048;
    v21 = Nanoseconds / 1000000000.0;
    v22 = 1026;
    v23 = v16;
    _os_log_impl(&dword_22EB09000, v15, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelAcceptorMessage1  OctagonSignpostNamePairingChannelAcceptorMessage1=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorMessage1}d ", &v18, 0x1Cu);
  }

  [*(a1 + 32) sendMetricWithResult:*(*(*(a1 + 48) + 8) + 24) error:v8];
  (*(*(a1 + 40) + 16))();

  v17 = *MEMORY[0x277D85DE8];
}

void __49__KCPairingChannel_acceptorFirstPacket_complete___block_invoke_278(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained acceptorSecondPacket:v6 complete:v5];
}

void __49__KCPairingChannel_acceptorFirstPacket_complete___block_invoke_279(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = a4;
  v9 = a3;
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v11 = _OctagonSignpostLogSystem();
  v12 = v11;
  v13 = *(a1 + 56);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v14 = *(*(*(a1 + 48) + 8) + 24);
    v18 = 67240192;
    LODWORD(v19) = v14;
    _os_signpost_emit_with_name_impl(&dword_22EB09000, v12, OS_SIGNPOST_INTERVAL_END, v13, "PairingChannelAcceptorMessage1", " OctagonSignpostNamePairingChannelAcceptorMessage1=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorMessage1}d ", &v18, 8u);
  }

  v15 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134218496;
    v16 = *(*(*(a1 + 48) + 8) + 24);
    v19 = *(a1 + 56);
    v20 = 2048;
    v21 = Nanoseconds / 1000000000.0;
    v22 = 1026;
    v23 = v16;
    _os_log_impl(&dword_22EB09000, v15, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelAcceptorMessage1  OctagonSignpostNamePairingChannelAcceptorMessage1=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorMessage1}d ", &v18, 0x1Cu);
  }

  [*(a1 + 32) sendMetricWithResult:*(*(*(a1 + 48) + 8) + 24) error:v8];
  (*(*(a1 + 40) + 16))();

  v17 = *MEMORY[0x277D85DE8];
}

- (void)initiatorPCSDataPacket:(id)packet complete:(id)complete
{
  v124 = *MEMORY[0x277D85DE8];
  packetCopy = packet;
  completeCopy = complete;
  v5 = secLogObjForScope("pairing");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22EB09000, v5, OS_LOG_TYPE_DEFAULT, "initiator will import PCS data", buf, 2u);
  }

  [(KCPairingChannel *)self setCountOfReceivedItems:&unk_2843768A8];
  v6 = [packetCopy objectForKeyedSubscript:@"o"];
  v7 = v6 == 0;

  if (v7)
  {
    v49 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22EB09000, v49, OS_LOG_TYPE_DEFAULT, "pairing: no octagon data, ending session", buf, 2u);
    }

    if ([(KCPairingChannel *)self grabbedLockAssertion])
    {
      result = 0;
      if (!SecAKSKeybagDropLockAssertion(0, &result))
      {
        v50 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v123 = result;
          _os_log_impl(&dword_22EB09000, v50, OS_LOG_TYPE_DEFAULT, "pairing: Failed to drop AKS lock assertion: %@", buf, 0xCu);
        }
      }

      v51 = result;
      if (result)
      {
        result = 0;
        CFRelease(v51);
      }

      [(KCPairingChannel *)self setGrabbedLockAssertion:0];
    }

    v52 = [AAFAnalyticsEventSecurity alloc];
    peerVersionContext = [(KCPairingChannel *)self peerVersionContext];
    altDSID = [peerVersionContext altDSID];
    peerVersionContext2 = [(KCPairingChannel *)self peerVersionContext];
    flowID = [peerVersionContext2 flowID];
    peerVersionContext3 = [(KCPairingChannel *)self peerVersionContext];
    deviceSessionID = [peerVersionContext3 deviceSessionID];
    LOBYTE(v79) = 1;
    v84 = [(AAFAnalyticsEventSecurity *)v52 initWithKeychainCircleMetrics:0 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:@"com.apple.security.pairingDidNotReceivePCSData" testsAreEnabled:metricsAreEnabled canSendMetrics:v79 category:&unk_2843768F0];

    [(AAFAnalyticsEventSecurity *)v84 sendMetricWithResult:0 error:0];
    (*(completeCopy + 2))(completeCopy, 1, 0, 0);
  }

  else
  {
    v84 = [packetCopy objectForKeyedSubscript:@"o"];
    v80 = [(AAFAnalyticsEventSecurity *)v84 objectForKeyedSubscript:@"e"];
    v97 = [(AAFAnalyticsEventSecurity *)v84 objectForKeyedSubscript:@"a"];
    v81 = [(AAFAnalyticsEventSecurity *)v84 objectForKeyedSubscript:@"n"];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v97, "count")}];
    [(KCPairingChannel *)self setCountOfReceivedItems:v8];

    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    obj = [v97 allKeys];
    v98 = [obj countByEnumeratingWithState:&v106 objects:v121 count:16];
    if (v98)
    {
      v99 = 0;
      v94 = 0;
      v96 = *v107;
      v95 = *MEMORY[0x277CDC228];
      v92 = *MEMORY[0x277CDC138];
      v93 = *MEMORY[0x277CDC140];
      v90 = *MEMORY[0x277CDBF20];
      v91 = *MEMORY[0x277CDBEC8];
      v89 = *MEMORY[0x277CDC118];
      v88 = *MEMORY[0x277CDC098];
      v87 = *MEMORY[0x277CDC5C8];
      v86 = *MEMORY[0x277CCA590];
      do
      {
        v9 = 0;
        do
        {
          if (*v107 != v96)
          {
            v10 = v9;
            objc_enumerationMutation(obj);
            v9 = v10;
          }

          v102 = v9;
          v11 = *(*(&v106 + 1) + 8 * v9);
          context = objc_autoreleasePoolPush();
          v12 = secLogObjForScope("pairing");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v123 = v11;
            _os_log_impl(&dword_22EB09000, v12, OS_LOG_TYPE_DEFAULT, "adding keychain entry key: %@", buf, 0xCu);
          }

          v13 = [v97 objectForKeyedSubscript:v11];
          result = 0;
          v14 = secLogObjForScope("pairing");
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v123 = v13;
            _os_log_impl(&dword_22EB09000, v14, OS_LOG_TYPE_DEFAULT, "adding keychain entry data %@", buf, 0xCu);
          }

          v15 = SecItemAdd(v13, &result);
          v16 = v15;
          if (v15 == -25299)
          {
            v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v19 = [(__CFDictionary *)v13 objectForKeyedSubscript:v95];
            [v18 setObject:v19 forKeyedSubscript:v95];

            v20 = [(__CFDictionary *)v13 objectForKeyedSubscript:v93];
            [v18 setObject:v20 forKeyedSubscript:v93];

            v21 = [(__CFDictionary *)v13 objectForKeyedSubscript:v92];
            [v18 setObject:v21 forKeyedSubscript:v92];

            v22 = [(__CFDictionary *)v13 objectForKeyedSubscript:v91];
            [v18 setObject:v22 forKeyedSubscript:v91];

            v23 = [(__CFDictionary *)v13 objectForKeyedSubscript:v90];
            [v18 setObject:v23 forKeyedSubscript:v90];

            v24 = [(__CFDictionary *)v13 objectForKeyedSubscript:v89];
            [v18 setObject:v24 forKeyedSubscript:v89];

            v25 = [(__CFDictionary *)v13 objectForKeyedSubscript:v88];
            [v18 setObject:v25 forKeyedSubscript:v88];

            v26 = [(__CFDictionary *)v13 objectForKeyedSubscript:v87];
            [v18 setObject:v26 forKeyedSubscript:v87];

            attributesToUpdate = [(__CFDictionary *)v13 mutableCopy];
            [(__CFDictionary *)attributesToUpdate setObject:0 forKeyedSubscript:v95];
            v27 = SecItemUpdate(v18, attributesToUpdate);
            if (v27)
            {
              v28 = [AAFAnalyticsEventSecurity alloc];
              peerVersionContext4 = [(KCPairingChannel *)self peerVersionContext];
              altDSID2 = [peerVersionContext4 altDSID];
              peerVersionContext5 = [(KCPairingChannel *)self peerVersionContext];
              flowID2 = [peerVersionContext5 flowID];
              peerVersionContext6 = [(KCPairingChannel *)self peerVersionContext];
              deviceSessionID2 = [peerVersionContext6 deviceSessionID];
              LOBYTE(v79) = 1;
              v35 = [(AAFAnalyticsEventSecurity *)v28 initWithKeychainCircleMetrics:0 altDSID:altDSID2 flowID:flowID2 deviceSessionID:deviceSessionID2 eventName:@"com.apple.security.pairingFailedToUpdateItemInKeychain" testsAreEnabled:metricsAreEnabled canSendMetrics:v79 category:&unk_2843768F0];

              v36 = [MEMORY[0x277CCA9B8] errorWithDomain:v86 code:v27 description:@"SecItemUpdate: failed to update PCS item in the keychain"];
              [(AAFAnalyticsEventSecurity *)v35 sendMetricWithResult:0 error:v36];

              v37 = secLogObjForScope("SecError");
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                LODWORD(v123) = v27;
                _os_log_impl(&dword_22EB09000, v37, OS_LOG_TYPE_DEFAULT, "pairing, SecItemUpdate failed %d", buf, 8u);
              }

              ++v99;
            }

            else
            {
              v48 = secLogObjForScope("pairing");
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v123 = v13;
                _os_log_impl(&dword_22EB09000, v48, OS_LOG_TYPE_DEFAULT, "successfully updated pcs item: %@", buf, 0xCu);
              }

              ++v94;
            }
          }

          else if (v15)
          {
            v38 = [AAFAnalyticsEventSecurity alloc];
            peerVersionContext7 = [(KCPairingChannel *)self peerVersionContext];
            altDSID3 = [peerVersionContext7 altDSID];
            peerVersionContext8 = [(KCPairingChannel *)self peerVersionContext];
            flowID3 = [peerVersionContext8 flowID];
            peerVersionContext9 = [(KCPairingChannel *)self peerVersionContext];
            deviceSessionID3 = [peerVersionContext9 deviceSessionID];
            LOBYTE(v79) = 1;
            v45 = [(AAFAnalyticsEventSecurity *)v38 initWithKeychainCircleMetrics:0 altDSID:altDSID3 flowID:flowID3 deviceSessionID:deviceSessionID3 eventName:@"com.apple.security.pairingFailedToAddItemToKeychain" testsAreEnabled:metricsAreEnabled canSendMetrics:v79 category:&unk_2843768F0];

            v46 = [MEMORY[0x277CCA9B8] errorWithDomain:v86 code:v16 description:@"SecItemAdd: failed to add PCS item to the keychain"];
            [(AAFAnalyticsEventSecurity *)v45 sendMetricWithResult:0 error:v46];

            v47 = secLogObjForScope("SecError");
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              LODWORD(v123) = v16;
              _os_log_impl(&dword_22EB09000, v47, OS_LOG_TYPE_DEFAULT, "pairing: failed to add PCS item: %d", buf, 8u);
            }

            ++v99;
          }

          else
          {
            v17 = secLogObjForScope("pairing");
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v123 = v13;
              _os_log_impl(&dword_22EB09000, v17, OS_LOG_TYPE_DEFAULT, "successfully added pcs item: %@", buf, 0xCu);
            }

            ++v94;
          }

          objc_autoreleasePoolPop(context);
          v9 = v102 + 1;
        }

        while (v98 != v102 + 1);
        v98 = [obj countByEnumeratingWithState:&v106 objects:v121 count:16];
      }

      while (v98);
    }

    else
    {
      v99 = 0;
      v94 = 0;
    }

    v59 = [AAFAnalyticsEventSecurity alloc];
    v119[0] = @"pairingSuccessfulImportCount";
    v60 = [MEMORY[0x277CCABB0] numberWithInt:v94];
    v119[1] = @"pairingFailedImportCount";
    v120[0] = v60;
    v61 = [MEMORY[0x277CCABB0] numberWithInt:v99];
    v120[1] = v61;
    v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v120 forKeys:v119 count:2];
    peerVersionContext10 = [(KCPairingChannel *)self peerVersionContext];
    altDSID4 = [peerVersionContext10 altDSID];
    peerVersionContext11 = [(KCPairingChannel *)self peerVersionContext];
    flowID4 = [peerVersionContext11 flowID];
    peerVersionContext12 = [(KCPairingChannel *)self peerVersionContext];
    deviceSessionID4 = [peerVersionContext12 deviceSessionID];
    LOBYTE(v79) = 1;
    v69 = [(AAFAnalyticsEventSecurity *)v59 initWithKeychainCircleMetrics:v62 altDSID:altDSID4 flowID:flowID4 deviceSessionID:deviceSessionID4 eventName:@"com.apple.security.pairingImportKeychainResults" testsAreEnabled:metricsAreEnabled canSendMetrics:v79 category:&unk_2843768F0];

    [(AAFAnalyticsEventSecurity *)v69 sendMetricWithResult:v99 != 0 error:0];
    if ([v80 isEqualToNumber:MEMORY[0x277CBEC38]])
    {
      if ([(KCPairingChannel *)self grabbedLockAssertion])
      {
        result = 0;
        if (!SecAKSKeybagDropLockAssertion(0, &result))
        {
          v70 = secLogObjForScope("SecError");
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v123 = result;
            _os_log_impl(&dword_22EB09000, v70, OS_LOG_TYPE_DEFAULT, "pairing: Failed to drop AKS lock assertion: %@", buf, 0xCu);
          }
        }

        v71 = result;
        if (result)
        {
          result = 0;
          CFRelease(v71);
        }

        [(KCPairingChannel *)self setGrabbedLockAssertion:0];
      }

      v72 = secLogObjForScope("pairing");
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v123 = v81;
        _os_log_impl(&dword_22EB09000, v72, OS_LOG_TYPE_DEFAULT, "Sending ack %@", buf, 0xCu);
      }

      v115 = @"k";
      v116 = v81;
      v117 = @"o";
      v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
      v118 = v73;
      v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
      (*(completeCopy + 2))(completeCopy, 1, v74, 0);
    }

    else
    {
      objc_initWeak(&result, self);
      v104[0] = MEMORY[0x277D85DD0];
      v104[1] = 3221225472;
      v104[2] = __52__KCPairingChannel_initiatorPCSDataPacket_complete___block_invoke;
      v104[3] = &unk_278863270;
      objc_copyWeak(&v105, &result);
      [(KCPairingChannel *)self setNextState:v104];
      v75 = secLogObjForScope("pairing");
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v123 = v81;
        _os_log_impl(&dword_22EB09000, v75, OS_LOG_TYPE_DEFAULT, "Sending ack %@", buf, 0xCu);
      }

      v111 = @"k";
      v112 = v81;
      v113 = @"o";
      v76 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
      v114 = v76;
      v77 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
      (*(completeCopy + 2))(completeCopy, 0, v77, 0);

      objc_destroyWeak(&v105);
      objc_destroyWeak(&result);
    }
  }

  v78 = *MEMORY[0x277D85DE8];
}

void __52__KCPairingChannel_initiatorPCSDataPacket_complete___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained initiatorPCSDataPacket:v6 complete:v5];
}

- (void)initiatorFourthPacket:(id)packet complete:(id)complete
{
  v72 = *MEMORY[0x277D85DE8];
  packetCopy = packet;
  completeCopy = complete;
  v5 = secLogObjForScope("pairing");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22EB09000, v5, OS_LOG_TYPE_DEFAULT, "initiator packet 4", buf, 2u);
  }

  *buf = 0;
  v61 = buf;
  v62 = 0x2020000000;
  v63 = 0;
  v6 = _OctagonSignpostLogSystem();
  v7 = _OctagonSignpostCreate();
  v9 = v8;

  v10 = _OctagonSignpostLogSystem();
  v11 = v10;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v66 = 0;
    _os_signpost_emit_with_name_impl(&dword_22EB09000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v7, "PairingChannelInitiatorMessage4", " enableTelemetry=YES ", v66, 2u);
  }

  v12 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v66 = 134217984;
    v67 = v7;
    _os_log_impl(&dword_22EB09000, v12, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PairingChannelInitiatorMessage4  enableTelemetry=YES ", v66, 0xCu);
  }

  v13 = [AAFAnalyticsEventSecurity alloc];
  peerVersionContext = [(KCPairingChannel *)self peerVersionContext];
  altDSID = [peerVersionContext altDSID];
  peerVersionContext2 = [(KCPairingChannel *)self peerVersionContext];
  flowID = [peerVersionContext2 flowID];
  peerVersionContext3 = [(KCPairingChannel *)self peerVersionContext];
  deviceSessionID = [peerVersionContext3 deviceSessionID];
  LOBYTE(v41) = 1;
  v20 = [(AAFAnalyticsEventSecurity *)v13 initWithKeychainCircleMetrics:0 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:@"com.apple.security.initiatorImportsInitialSyncData" testsAreEnabled:metricsAreEnabled canSendMetrics:v41 category:&unk_2843768F0];

  [(KCPairingChannel *)self setNextStateError:0 complete:0];
  v21 = [packetCopy objectForKeyedSubscript:@"d"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v64 = @"numberOfKeychainItemsAdded";
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v21, "count")}];
    v65 = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
    [(AAFAnalyticsEventSecurity *)v20 addMetrics:v23];

    v24 = secLogObjForScope("pairing");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v21 count];
      *v66 = 134217984;
      v67 = v25;
      _os_log_impl(&dword_22EB09000, v24, OS_LOG_TYPE_DEFAULT, "importing %lu items", v66, 0xCu);
    }

    connection = [(KCPairingChannel *)self connection];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __51__KCPairingChannel_initiatorFourthPacket_complete___block_invoke_248;
    v51[3] = &unk_278863400;
    v55 = v7;
    v56 = v9;
    v54 = buf;
    v27 = v20;
    v52 = v27;
    v28 = completeCopy;
    v53 = v28;
    v29 = [connection remoteObjectProxyWithErrorHandler:v51];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __51__KCPairingChannel_initiatorFourthPacket_complete___block_invoke_249;
    v45[3] = &unk_278863428;
    v45[4] = self;
    v48 = buf;
    v49 = v7;
    v50 = v9;
    v46 = v27;
    v47 = v28;
    [v29 importInitialSyncCredentials:v21 complete:v45];
  }

  else
  {
    v30 = secLogObjForScope("pairing");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *v66 = 0;
      _os_log_impl(&dword_22EB09000, v30, OS_LOG_TYPE_DEFAULT, "initiator no items to import", v66, 2u);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds();
    v32 = _OctagonSignpostLogSystem();
    v33 = v32;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      v34 = v61[24];
      *v66 = 67240192;
      LODWORD(v67) = v34;
      _os_signpost_emit_with_name_impl(&dword_22EB09000, v33, OS_SIGNPOST_INTERVAL_END, v7, "PairingChannelInitiatorMessage4", " OctagonSignpostNamePairingChannelInitiatorMessage4=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage4}d ", v66, 8u);
    }

    v35 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *v66 = 134218496;
      v36 = v61[24];
      v67 = v7;
      v68 = 2048;
      v69 = Nanoseconds / 1000000000.0;
      v70 = 1026;
      v71 = v36;
      _os_log_impl(&dword_22EB09000, v35, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelInitiatorMessage4  OctagonSignpostNamePairingChannelInitiatorMessage4=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage4}d ", v66, 0x1Cu);
    }

    [(AAFAnalyticsEventSecurity *)v20 sendMetricWithResult:1 error:0];
    if (CloudServicesLibraryCore() && getSecureBackupIsGuitarfishEnabledSymbolLoc() && soft_SecureBackupIsGuitarfishEnabled() && [(KCPairingChannel *)self initiatorExpectPCSData])
    {
      v37 = secLogObjForScope("pairing");
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *v66 = 0;
        _os_log_impl(&dword_22EB09000, v37, OS_LOG_TYPE_DEFAULT, "initiator will wait for PCS data", v66, 2u);
      }

      v59 = 0;
      if (SecAKSKeybagHoldLockAssertion(0, 600, &v59))
      {
        [(KCPairingChannel *)self setGrabbedLockAssertion:1];
      }

      else
      {
        v39 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *v66 = 138412290;
          v67 = v59;
          _os_log_impl(&dword_22EB09000, v39, OS_LOG_TYPE_DEFAULT, "pairing: Unable to acquire AKS lock assertion: %@", v66, 0xCu);
        }
      }

      v40 = v59;
      if (v59)
      {
        v59 = 0;
        CFRelease(v40);
      }

      objc_initWeak(v66, self);
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __51__KCPairingChannel_initiatorFourthPacket_complete___block_invoke;
      v57[3] = &unk_278863270;
      objc_copyWeak(&v58, v66);
      [(KCPairingChannel *)self setNextState:v57];
      objc_destroyWeak(&v58);
      objc_destroyWeak(v66);
    }

    else
    {
      (*(completeCopy + 2))(completeCopy, 1, 0, 0);
    }
  }

  _Block_object_dispose(buf, 8);
  v38 = *MEMORY[0x277D85DE8];
}

void __51__KCPairingChannel_initiatorFourthPacket_complete___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained initiatorPCSDataPacket:v6 complete:v5];
}

void __51__KCPairingChannel_initiatorFourthPacket_complete___block_invoke_248(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = a2;
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v7 = _OctagonSignpostLogSystem();
  v8 = v7;
  v9 = *(a1 + 56);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = *(*(*(a1 + 48) + 8) + 24);
    v14 = 67240192;
    LODWORD(v15) = v10;
    _os_signpost_emit_with_name_impl(&dword_22EB09000, v8, OS_SIGNPOST_INTERVAL_END, v9, "PairingChannelInitiatorMessage4", " OctagonSignpostNamePairingChannelInitiatorMessage4=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage4}d ", &v14, 8u);
  }

  v11 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134218496;
    v12 = *(*(*(a1 + 48) + 8) + 24);
    v15 = *(a1 + 56);
    v16 = 2048;
    v17 = Nanoseconds / 1000000000.0;
    v18 = 1026;
    v19 = v12;
    _os_log_impl(&dword_22EB09000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelInitiatorMessage4  OctagonSignpostNamePairingChannelInitiatorMessage4=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage4}d ", &v14, 0x1Cu);
  }

  [*(a1 + 32) sendMetricWithResult:0 error:v5];
  (*(*(a1 + 40) + 16))();

  v13 = *MEMORY[0x277D85DE8];
}

void __51__KCPairingChannel_initiatorFourthPacket_complete___block_invoke_249(uint64_t a1, int a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = secLogObjForScope("pairing");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v34 = a2;
    *&v34[4] = 2112;
    *&v34[6] = v5;
    _os_log_impl(&dword_22EB09000, v6, OS_LOG_TYPE_DEFAULT, "initiator importInitialSyncCredentials: %{BOOL}d: %@", buf, 0x12u);
  }

  if (a2)
  {
    *(*(a1 + 32) + 8) = 0;
  }

  if (CloudServicesLibraryCore() && getSecureBackupIsGuitarfishEnabledSymbolLoc() && soft_SecureBackupIsGuitarfishEnabled() && [*(a1 + 32) initiatorExpectPCSData])
  {
    v7 = secLogObjForScope("pairing");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22EB09000, v7, OS_LOG_TYPE_DEFAULT, "initiator will wait for PCS data", buf, 2u);
    }

    cf = 0;
    if (SecAKSKeybagHoldLockAssertion(0, 600, &cf))
    {
      [*(a1 + 32) setGrabbedLockAssertion:1];
    }

    else
    {
      v18 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v34 = cf;
        _os_log_impl(&dword_22EB09000, v18, OS_LOG_TYPE_DEFAULT, "pairing: Unable to acquire AKS lock assertion: %@", buf, 0xCu);
      }
    }

    v19 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v19);
    }

    objc_initWeak(&location, *(a1 + 32));
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __51__KCPairingChannel_initiatorFourthPacket_complete___block_invoke_250;
    v29[3] = &unk_278863270;
    objc_copyWeak(&v30, &location);
    [*(a1 + 32) setNextState:v29];
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v20 = *(a1 + 64);
    v21 = *(a1 + 72);
    Nanoseconds = _OctagonSignpostGetNanoseconds();
    v23 = _OctagonSignpostLogSystem();
    v24 = v23;
    v25 = *(a1 + 64);
    if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      v26 = *(*(*(a1 + 56) + 8) + 24);
      *buf = 67240192;
      *v34 = v26;
      _os_signpost_emit_with_name_impl(&dword_22EB09000, v24, OS_SIGNPOST_INTERVAL_END, v25, "PairingChannelInitiatorMessage4", " OctagonSignpostNamePairingChannelInitiatorMessage4=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage4}d ", buf, 8u);
    }

    v27 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v28 = *(*(*(a1 + 56) + 8) + 24);
      *v34 = *(a1 + 64);
      *&v34[8] = 2048;
      *&v34[10] = Nanoseconds / 1000000000.0;
      v35 = 1026;
      v36 = v28;
      _os_log_impl(&dword_22EB09000, v27, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelInitiatorMessage4  OctagonSignpostNamePairingChannelInitiatorMessage4=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage4}d ", buf, 0x1Cu);
    }

    [*(a1 + 40) sendMetricWithResult:1 error:v5];
    (*(*(a1 + 48) + 16))();
    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v8 = *(a1 + 64);
    v9 = *(a1 + 72);
    v10 = _OctagonSignpostGetNanoseconds();
    v11 = _OctagonSignpostLogSystem();
    v12 = v11;
    v13 = *(a1 + 64);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      v14 = *(*(*(a1 + 56) + 8) + 24);
      *buf = 67240192;
      *v34 = v14;
      _os_signpost_emit_with_name_impl(&dword_22EB09000, v12, OS_SIGNPOST_INTERVAL_END, v13, "PairingChannelInitiatorMessage4", " OctagonSignpostNamePairingChannelInitiatorMessage4=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage4}d ", buf, 8u);
    }

    v15 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v16 = *(*(*(a1 + 56) + 8) + 24);
      *v34 = *(a1 + 64);
      *&v34[8] = 2048;
      *&v34[10] = v10 / 1000000000.0;
      v35 = 1026;
      v36 = v16;
      _os_log_impl(&dword_22EB09000, v15, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelInitiatorMessage4  OctagonSignpostNamePairingChannelInitiatorMessage4=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage4}d ", buf, 0x1Cu);
    }

    [*(a1 + 40) sendMetricWithResult:1 error:v5];
    (*(*(a1 + 48) + 16))();
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __51__KCPairingChannel_initiatorFourthPacket_complete___block_invoke_250(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained initiatorPCSDataPacket:v6 complete:v5];
}

- (void)initiatorThirdPacket:(id)packet complete:(id)complete
{
  v110 = *MEMORY[0x277D85DE8];
  packetCopy = packet;
  completeCopy = complete;
  v6 = secLogObjForScope("pairing");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_22EB09000, v6, OS_LOG_TYPE_DEFAULT, "initiator packet 3", &buf, 2u);
  }

  v7 = _OctagonSignpostLogSystem();
  v8 = _OctagonSignpostCreate();
  v82 = v9;
  v10 = v8;

  v11 = _OctagonSignpostLogSystem();
  v12 = v11;
  v78 = (v10 - 1);
  if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_22EB09000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PairingChannelInitiatorMessage3", " enableTelemetry=YES ", &buf, 2u);
  }

  v13 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_22EB09000, v13, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PairingChannelInitiatorMessage3  enableTelemetry=YES ", &buf, 0xCu);
  }

  v14 = [AAFAnalyticsEventSecurity alloc];
  peerVersionContext = [(KCPairingChannel *)self peerVersionContext];
  altDSID = [peerVersionContext altDSID];
  peerVersionContext2 = [(KCPairingChannel *)self peerVersionContext];
  flowID = [peerVersionContext2 flowID];
  peerVersionContext3 = [(KCPairingChannel *)self peerVersionContext];
  deviceSessionID = [peerVersionContext3 deviceSessionID];
  LOBYTE(v73) = 1;
  v85 = [(AAFAnalyticsEventSecurity *)v14 initWithKeychainCircleMetrics:0 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:@"com.apple.security.initiatorJoinsTrustSystems" testsAreEnabled:metricsAreEnabled canSendMetrics:v73 category:&unk_2843768F0];

  [(KCPairingChannel *)self setNextStateError:0 complete:0];
  v84 = [packetCopy objectForKeyedSubscript:@"b"];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v108 = 0x2020000000;
  v109 = 0;
  objc_initWeak(&location, self);
  if (v84 && SOSCCIsSOSTrustAndSyncingEnabled())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      Nanoseconds = _OctagonSignpostGetNanoseconds();
      v55 = _OctagonSignpostLogSystem();
      v56 = v55;
      if (v78 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v55))
      {
        v57 = *(*(&buf + 1) + 24);
        *v106 = 67240192;
        *&v106[4] = v57;
        _os_signpost_emit_with_name_impl(&dword_22EB09000, v56, OS_SIGNPOST_INTERVAL_END, v10, "PairingChannelInitiatorMessage3", " OctagonSignpostNamePairingChannelInitiatorMessage3=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage3}d ", v106, 8u);
      }

      v58 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        *v106 = 134218496;
        v59 = *(*(&buf + 1) + 24);
        *&v106[4] = v10;
        *&v106[12] = 2048;
        *&v106[14] = Nanoseconds / 1000000000.0;
        *&v106[22] = 1026;
        *&v106[24] = v59;
        _os_log_impl(&dword_22EB09000, v58, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelInitiatorMessage3  OctagonSignpostNamePairingChannelInitiatorMessage3=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage3}d ", v106, 0x1Cu);
      }

      v60 = [MEMORY[0x277CCA9B8] errorWithDomain:kKCPairingChannelErrorDomain code:5 userInfo:0];
      [(AAFAnalyticsEventSecurity *)v85 sendMetricWithResult:0 error:v60];
      completeCopy[2](completeCopy, 1, 0, v60);
      goto LABEL_61;
    }

    *v106 = 0;
    *&v106[8] = v106;
    *&v106[16] = 0x2020000000;
    v106[24] = 0;
    v21 = _OctagonSignpostLogSystem();
    v22 = _OctagonSignpostCreate();
    v79 = v23;
    v24 = v22;

    v25 = _OctagonSignpostLogSystem();
    v26 = v25;
    if ((v24 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      *v104 = 0;
      _os_signpost_emit_with_name_impl(&dword_22EB09000, v26, OS_SIGNPOST_INTERVAL_BEGIN, v24, "PairingChannelInitiatorJoinSOS", " enableTelemetry=YES ", v104, 2u);
    }

    v27 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *v104 = 134217984;
      v105 = v24;
      _os_log_impl(&dword_22EB09000, v27, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PairingChannelInitiatorJoinSOS  enableTelemetry=YES ", v104, 0xCu);
    }

    connection = [(KCPairingChannel *)self connection];
    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = __50__KCPairingChannel_initiatorThirdPacket_complete___block_invoke;
    v94[3] = &unk_2788632C0;
    v99 = v24;
    v100 = v79;
    v101 = v10;
    v102 = v82;
    v97 = v106;
    p_buf = &buf;
    v28 = v85;
    v95 = v28;
    v29 = completeCopy;
    v96 = v29;
    v74 = [connection remoteObjectProxyWithErrorHandler:v94];
    peerVersionContext4 = [(KCPairingChannel *)self peerVersionContext];
    altDSID2 = [peerVersionContext4 altDSID];
    peerVersionContext5 = [(KCPairingChannel *)self peerVersionContext];
    flowID2 = [peerVersionContext5 flowID];
    peerVersionContext6 = [(KCPairingChannel *)self peerVersionContext];
    deviceSessionID2 = [peerVersionContext6 deviceSessionID];
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = __50__KCPairingChannel_initiatorThirdPacket_complete___block_invoke_244;
    v88[3] = &unk_2788633D8;
    v91 = v106;
    v88[4] = self;
    v93[2] = v79;
    v93[3] = v10;
    v93[4] = v82;
    v93[1] = v24;
    v92 = &buf;
    v89 = v28;
    v90 = v29;
    objc_copyWeak(v93, &location);
    [v74 joinCircleWithBlob:v84 altDSID:altDSID2 flowID:flowID2 deviceSessionID:deviceSessionID2 canSendMetrics:1 version:1 complete:v88];

    objc_destroyWeak(v93);
    _Block_object_dispose(v106, 8);
  }

  if ([(KCPairingChannel *)self sessionSupportsOctagon])
  {
    v80 = [packetCopy objectForKeyedSubscript:@"o"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v44 = secLogObjForScope(pairingScope);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *v106 = 0;
        _os_log_impl(&dword_22EB09000, v44, OS_LOG_TYPE_DEFAULT, "initiatorThirdPacket octagonData missing or wrong class", v106, 2u);
      }

      v45 = [MEMORY[0x277CCA9B8] errorWithDomain:kKCPairingChannelErrorDomain code:4 userInfo:0];
      [(KCPairingChannel *)self setNextStateError:v45 complete:completeCopy];
      v46 = v45;
      v47 = _OctagonSignpostGetNanoseconds();
      v48 = _OctagonSignpostLogSystem();
      v49 = v48;
      if (v78 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
      {
        v50 = *(*(&buf + 1) + 24);
        *v106 = 67240192;
        *&v106[4] = v50;
        _os_signpost_emit_with_name_impl(&dword_22EB09000, v49, OS_SIGNPOST_INTERVAL_END, v10, "PairingChannelInitiatorMessage3", " OctagonSignpostNamePairingChannelInitiatorMessage3=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage3}d ", v106, 8u);
      }

      v51 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *v106 = 134218496;
        v52 = *(*(&buf + 1) + 24);
        *&v106[4] = v10;
        *&v106[12] = 2048;
        *&v106[14] = v47 / 1000000000.0;
        *&v106[22] = 1026;
        *&v106[24] = v52;
        _os_log_impl(&dword_22EB09000, v51, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelInitiatorMessage3  OctagonSignpostNamePairingChannelInitiatorMessage3=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage3}d ", v106, 0x1Cu);
      }

      v53 = v46;
      [(AAFAnalyticsEventSecurity *)v85 sendMetricWithResult:0 error:v46];
      goto LABEL_60;
    }

    v77 = [[OTPairingMessage alloc] initWithData:v80];
    if (![(OTPairingMessage *)v77 hasVoucher])
    {
      v61 = secLogObjForScope(pairingScope);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *v106 = 0;
        _os_log_impl(&dword_22EB09000, v61, OS_LOG_TYPE_DEFAULT, "initiatorThirdPacket pairingMessage has no voucher", v106, 2u);
      }

      voucher = [MEMORY[0x277CCA9B8] errorWithDomain:kKCPairingChannelErrorDomain code:4 userInfo:0];
      [(KCPairingChannel *)self setNextStateError:voucher complete:completeCopy];
      v62 = _OctagonSignpostGetNanoseconds();
      v63 = _OctagonSignpostLogSystem();
      v64 = v63;
      if (v78 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v63))
      {
        v65 = *(*(&buf + 1) + 24);
        *v106 = 67240192;
        *&v106[4] = v65;
        _os_signpost_emit_with_name_impl(&dword_22EB09000, v64, OS_SIGNPOST_INTERVAL_END, v10, "PairingChannelInitiatorMessage3", " OctagonSignpostNamePairingChannelInitiatorMessage3=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage3}d ", v106, 8u);
      }

      v66 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        *v106 = 134218496;
        v67 = *(*(&buf + 1) + 24);
        *&v106[4] = v10;
        *&v106[12] = 2048;
        *&v106[14] = v62 / 1000000000.0;
        *&v106[22] = 1026;
        *&v106[24] = v67;
        _os_log_impl(&dword_22EB09000, v66, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelInitiatorMessage3  OctagonSignpostNamePairingChannelInitiatorMessage3=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage3}d ", v106, 0x1Cu);
      }

      [(AAFAnalyticsEventSecurity *)v85 sendMetricWithResult:0 error:voucher];
      goto LABEL_59;
    }

    voucher = [(OTPairingMessage *)v77 voucher];
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v104[0] = 0;
    while (1)
    {
      v39 = secLogObjForScope(pairingScope);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *v106 = 67109120;
        *&v106[4] = v38 + 1;
        _os_log_impl(&dword_22EB09000, v39, OS_LOG_TYPE_DEFAULT, "Attempt %d, calling join", v106, 8u);
      }

      v86 = 0;
      v87 = v36;
      v40 = [(KCPairingChannel *)self join:&v87 voucher:voucher eventS:v85 setupPairingChannelSignPost:v10 finishPairing:v82 error:v104, &v86];
      v41 = v87;

      v37 = v86;
      if (v40)
      {
        break;
      }

      if (![KCPairingChannel retryable:v37])
      {
        v71 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          *v106 = 136315650;
          *&v106[4] = pairingScope;
          *&v106[12] = 1024;
          *&v106[14] = v38 + 1;
          *&v106[18] = 2112;
          *&v106[20] = v37;
          _os_log_impl(&dword_22EB09000, v71, OS_LOG_TYPE_DEFAULT, "%s: Attempt %d failed join: %@", v106, 0x1Cu);
        }

        v70 = 0;
        v69 = 1;
        v68 = v37;
        goto LABEL_57;
      }

      v42 = secLogObjForScope(pairingScope);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *v106 = 67109120;
        *&v106[4] = v38 + 2;
        _os_log_impl(&dword_22EB09000, v42, OS_LOG_TYPE_DEFAULT, "Attempt %d retrying join", v106, 8u);
      }

      ++v38;
      v36 = v41;
      if (v38 >= joinMaxRetry)
      {
        v43 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *v106 = 67109120;
          *&v106[4] = joinMaxRetry;
          _os_log_impl(&dword_22EB09000, v43, OS_LOG_TYPE_DEFAULT, "pairing: failed to join %d times, bailing.", v106, 8u);
        }

        completeCopy[2](completeCopy, 1, 0, v37);
LABEL_58:

LABEL_59:
        v53 = v77;
LABEL_60:

        v60 = v80;
LABEL_61:

        goto LABEL_62;
      }
    }

    v68 = 0;
    v69 = v104[0];
    v70 = v41;
LABEL_57:
    (completeCopy)[2](completeCopy, v69 & 1, v70, v68);
    goto LABEL_58;
  }

LABEL_62:
  objc_destroyWeak(&location);
  _Block_object_dispose(&buf, 8);

  v72 = *MEMORY[0x277D85DE8];
}

void __50__KCPairingChannel_initiatorThirdPacket_complete___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v5 = a2;
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v7 = _OctagonSignpostLogSystem();
  v8 = v7;
  v9 = *(a1 + 64);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = *(*(*(a1 + 48) + 8) + 24);
    v24 = 67240192;
    LODWORD(v25) = v10;
    _os_signpost_emit_with_name_impl(&dword_22EB09000, v8, OS_SIGNPOST_INTERVAL_END, v9, "PairingChannelInitiatorJoinSOS", " OctagonSignpostNamePairingChannelInitiatorJoinSOS=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorJoinSOS}d ", &v24, 8u);
  }

  v11 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 64);
    v13 = *(*(*(a1 + 48) + 8) + 24);
    v24 = 134218496;
    v25 = v12;
    v26 = 2048;
    v27 = Nanoseconds / 1000000000.0;
    v28 = 1026;
    v29 = v13;
    _os_log_impl(&dword_22EB09000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelInitiatorJoinSOS  OctagonSignpostNamePairingChannelInitiatorJoinSOS=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorJoinSOS}d ", &v24, 0x1Cu);
  }

  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  v16 = _OctagonSignpostGetNanoseconds();
  v17 = _OctagonSignpostLogSystem();
  v18 = v17;
  v19 = *(a1 + 80);
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    v20 = *(*(*(a1 + 56) + 8) + 24);
    v24 = 67240192;
    LODWORD(v25) = v20;
    _os_signpost_emit_with_name_impl(&dword_22EB09000, v18, OS_SIGNPOST_INTERVAL_END, v19, "PairingChannelInitiatorMessage3", " OctagonSignpostNamePairingChannelInitiatorMessage3=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage3}d ", &v24, 8u);
  }

  v21 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 134218496;
    v22 = *(*(*(a1 + 56) + 8) + 24);
    v25 = *(a1 + 80);
    v26 = 2048;
    v27 = v16 / 1000000000.0;
    v28 = 1026;
    v29 = v22;
    _os_log_impl(&dword_22EB09000, v21, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelInitiatorMessage3  OctagonSignpostNamePairingChannelInitiatorMessage3=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage3}d ", &v24, 0x1Cu);
  }

  [*(a1 + 32) sendMetricWithResult:0 error:v5];
  (*(*(a1 + 40) + 16))();

  v23 = *MEMORY[0x277D85DE8];
}

void __50__KCPairingChannel_initiatorThirdPacket_complete___block_invoke_244(uint64_t a1, int a2, void *a3)
{
  v72 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5 && a2)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  v6 = *(a1 + 80);
  v7 = *(a1 + 88);
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v9 = _OctagonSignpostLogSystem();
  v10 = v9;
  v11 = *(a1 + 80);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v12 = *(*(*(a1 + 56) + 8) + 24);
    *buf = 67240192;
    *v69 = v12;
    _os_signpost_emit_with_name_impl(&dword_22EB09000, v10, OS_SIGNPOST_INTERVAL_END, v11, "PairingChannelInitiatorJoinSOS", " OctagonSignpostNamePairingChannelInitiatorJoinSOS=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorJoinSOS}d ", buf, 8u);
  }

  v13 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 80);
    v15 = *(*(*(a1 + 56) + 8) + 24);
    *buf = 134218496;
    *v69 = v14;
    *&v69[8] = 2048;
    *&v69[10] = Nanoseconds / 1000000000.0;
    v70 = 1026;
    v71 = v15;
    _os_log_impl(&dword_22EB09000, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelInitiatorJoinSOS  OctagonSignpostNamePairingChannelInitiatorJoinSOS=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorJoinSOS}d ", buf, 0x1Cu);
  }

  if (v5 || [*(a1 + 32) testFailSOS])
  {
    v16 = [*(a1 + 32) sessionSupportsOctagon];
    v17 = secLogObjForScope("pairing");
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v18)
      {
        *buf = 0;
        _os_log_impl(&dword_22EB09000, v17, OS_LOG_TYPE_DEFAULT, "failed to join circle with blob, continuing to handle octagon protocol", buf, 2u);
      }
    }

    else
    {
      if (v18)
      {
        *buf = 0;
        _os_log_impl(&dword_22EB09000, v17, OS_LOG_TYPE_DEFAULT, "failed to join circle with blob", buf, 2u);
      }

      v19 = *(a1 + 96);
      v20 = *(a1 + 104);
      v21 = _OctagonSignpostGetNanoseconds();
      v22 = _OctagonSignpostLogSystem();
      v23 = v22;
      v24 = *(a1 + 96);
      if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
      {
        v25 = *(*(*(a1 + 64) + 8) + 24);
        *buf = 67240192;
        *v69 = v25;
        _os_signpost_emit_with_name_impl(&dword_22EB09000, v23, OS_SIGNPOST_INTERVAL_END, v24, "PairingChannelInitiatorMessage3", " OctagonSignpostNamePairingChannelInitiatorMessage3=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage3}d ", buf, 8u);
      }

      v26 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v27 = *(*(*(a1 + 64) + 8) + 24);
        *v69 = *(a1 + 96);
        *&v69[8] = 2048;
        *&v69[10] = v21 / 1000000000.0;
        v70 = 1026;
        v71 = v27;
        _os_log_impl(&dword_22EB09000, v26, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelInitiatorMessage3  OctagonSignpostNamePairingChannelInitiatorMessage3=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage3}d ", buf, 0x1Cu);
      }

      [*(a1 + 40) sendMetricWithResult:0 error:v5];
      (*(*(a1 + 48) + 16))();
    }
  }

  else if ([*(a1 + 32) sessionSupportsOctagon])
  {
    v29 = secLogObjForScope("pairing");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22EB09000, v29, OS_LOG_TYPE_DEFAULT, "initiator circle join complete", buf, 2u);
    }
  }

  else
  {
    if (([*(a1 + 32) sessionSupportsOctagon] & 1) == 0)
    {
      [*(a1 + 32) waitForOctagonUpgrade];
    }

    WeakRetained = objc_loadWeakRetained((a1 + 72));
    v31 = secLogObjForScope("pairing");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = WeakRetained[10];
      *buf = 67109378;
      *v69 = v32;
      *&v69[4] = 2112;
      *&v69[6] = 0;
      _os_log_impl(&dword_22EB09000, v31, OS_LOG_TYPE_DEFAULT, "initiator circle join complete, more data: %{BOOL}d: %@", buf, 0x12u);
    }

    if (WeakRetained[10] == 1)
    {
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = __50__KCPairingChannel_initiatorThirdPacket_complete___block_invoke_245;
      v66[3] = &unk_278863270;
      objc_copyWeak(&v67, (a1 + 72));
      [WeakRetained setNextState:v66];
      *(*(*(a1 + 64) + 8) + 24) = 1;
      v33 = *(a1 + 96);
      v34 = *(a1 + 104);
      v35 = _OctagonSignpostGetNanoseconds();
      v36 = _OctagonSignpostLogSystem();
      v37 = v36;
      v38 = *(a1 + 96);
      if (v38 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
      {
        v39 = *(*(*(a1 + 64) + 8) + 24);
        *buf = 67240192;
        *v69 = v39;
        _os_signpost_emit_with_name_impl(&dword_22EB09000, v37, OS_SIGNPOST_INTERVAL_END, v38, "PairingChannelInitiatorMessage3", " OctagonSignpostNamePairingChannelInitiatorMessage3=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage3}d ", buf, 8u);
      }

      v40 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v41 = *(*(*(a1 + 64) + 8) + 24);
        *v69 = *(a1 + 96);
        *&v69[8] = 2048;
        *&v69[10] = v35 / 1000000000.0;
        v70 = 1026;
        v71 = v41;
        _os_log_impl(&dword_22EB09000, v40, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelInitiatorMessage3  OctagonSignpostNamePairingChannelInitiatorMessage3=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage3}d ", buf, 0x1Cu);
      }

      [*(a1 + 40) sendMetricWithResult:1 error:0];
      (*(*(a1 + 48) + 16))();
      objc_destroyWeak(&v67);
    }

    else if (CloudServicesLibraryCore() && getSecureBackupIsGuitarfishEnabledSymbolLoc() && soft_SecureBackupIsGuitarfishEnabled() && WeakRetained[12] == 1)
    {
      v42 = secLogObjForScope("pairing");
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22EB09000, v42, OS_LOG_TYPE_DEFAULT, "initiator will wait for PCS data", buf, 2u);
      }

      cf = 0;
      if (SecAKSKeybagHoldLockAssertion(0, 600, &cf))
      {
        [*(a1 + 32) setGrabbedLockAssertion:1];
      }

      else
      {
        v52 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v69 = cf;
          _os_log_impl(&dword_22EB09000, v52, OS_LOG_TYPE_DEFAULT, "pairing: Unable to acquire AKS lock assertion: %@", buf, 0xCu);
        }
      }

      v53 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v53);
      }

      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __50__KCPairingChannel_initiatorThirdPacket_complete___block_invoke_246;
      v63[3] = &unk_278863270;
      objc_copyWeak(&v64, (a1 + 72));
      [*(a1 + 32) setNextState:v63];
      *(*(*(a1 + 64) + 8) + 24) = 1;
      v54 = *(a1 + 96);
      v55 = *(a1 + 104);
      v56 = _OctagonSignpostGetNanoseconds();
      v57 = _OctagonSignpostLogSystem();
      v58 = v57;
      v59 = *(a1 + 96);
      if (v59 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v57))
      {
        v60 = *(*(*(a1 + 64) + 8) + 24);
        *buf = 67240192;
        *v69 = v60;
        _os_signpost_emit_with_name_impl(&dword_22EB09000, v58, OS_SIGNPOST_INTERVAL_END, v59, "PairingChannelInitiatorMessage3", " OctagonSignpostNamePairingChannelInitiatorMessage3=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage3}d ", buf, 8u);
      }

      v61 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v62 = *(*(*(a1 + 64) + 8) + 24);
        *v69 = *(a1 + 96);
        *&v69[8] = 2048;
        *&v69[10] = v56 / 1000000000.0;
        v70 = 1026;
        v71 = v62;
        _os_log_impl(&dword_22EB09000, v61, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelInitiatorMessage3  OctagonSignpostNamePairingChannelInitiatorMessage3=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage3}d ", buf, 0x1Cu);
      }

      [*(a1 + 40) sendMetricWithResult:1 error:0];
      (*(*(a1 + 48) + 16))();
      objc_destroyWeak(&v64);
    }

    else
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
      v43 = *(a1 + 96);
      v44 = *(a1 + 104);
      v45 = _OctagonSignpostGetNanoseconds();
      v46 = _OctagonSignpostLogSystem();
      v47 = v46;
      v48 = *(a1 + 96);
      if (v48 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
      {
        v49 = *(*(*(a1 + 64) + 8) + 24);
        *buf = 67240192;
        *v69 = v49;
        _os_signpost_emit_with_name_impl(&dword_22EB09000, v47, OS_SIGNPOST_INTERVAL_END, v48, "PairingChannelInitiatorMessage3", " OctagonSignpostNamePairingChannelInitiatorMessage3=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage3}d ", buf, 8u);
      }

      v50 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v51 = *(*(*(a1 + 64) + 8) + 24);
        *v69 = *(a1 + 96);
        *&v69[8] = 2048;
        *&v69[10] = v45 / 1000000000.0;
        v70 = 1026;
        v71 = v51;
        _os_log_impl(&dword_22EB09000, v50, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelInitiatorMessage3  OctagonSignpostNamePairingChannelInitiatorMessage3=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage3}d ", buf, 0x1Cu);
      }

      [*(a1 + 40) sendMetricWithResult:1 error:0];
      (*(*(a1 + 48) + 16))();
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __50__KCPairingChannel_initiatorThirdPacket_complete___block_invoke_245(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained initiatorFourthPacket:v6 complete:v5];
}

void __50__KCPairingChannel_initiatorThirdPacket_complete___block_invoke_246(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained initiatorPCSDataPacket:v6 complete:v5];
}

- (BOOL)join:(id *)join voucher:(id)voucher eventS:(id)s setupPairingChannelSignPost:(octagon_signpost_s)post finishPairing:(BOOL *)pairing error:(id *)error
{
  var1 = post.var1;
  var0 = post.var0;
  voucherCopy = voucher;
  sCopy = s;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy_;
  v45 = __Block_byref_object_dispose_;
  v46 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy_;
  v37 = __Block_byref_object_dispose_;
  v38 = 0;
  objc_initWeak(&location, self);
  otControl = [(KCPairingChannel *)self otControl];
  controlArguments = [(KCPairingChannel *)self controlArguments];
  joiningConfiguration = [(KCPairingChannel *)self joiningConfiguration];
  voucher = [voucherCopy voucher];
  voucherSignature = [voucherCopy voucherSignature];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __88__KCPairingChannel_join_voucher_eventS_setupPairingChannelSignPost_finishPairing_error___block_invoke;
  v25[3] = &unk_2788633B0;
  v31[1] = var0;
  v31[2] = var1;
  v25[4] = self;
  v27 = v39;
  v18 = sCopy;
  v26 = v18;
  v28 = &v41;
  v29 = &v47;
  objc_copyWeak(v31, &location);
  v30 = &v33;
  v31[3] = pairing;
  [otControl rpcJoinWithArguments:controlArguments configuration:joiningConfiguration vouchData:voucher vouchSig:voucherSignature reply:v25];

  if (error)
  {
    v19 = v42[5];
    if (v19)
    {
      *error = v19;
    }
  }

  if (join)
  {
    *join = v34[5];
  }

  v20 = *(v48 + 24);
  objc_destroyWeak(v31);

  objc_destroyWeak(&location);
  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(v39, 8);
  _Block_object_dispose(&v41, 8);

  _Block_object_dispose(&v47, 8);
  return v20;
}

void __88__KCPairingChannel_join_voucher_eventS_setupPairingChannelSignPost_finishPairing_error___block_invoke(uint64_t a1, void *a2)
{
  v64 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3 || [*(a1 + 32) testFailOctagon])
  {
    v4 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) counter];
      *buf = 67109378;
      *v61 = v5;
      *&v61[4] = 2112;
      *&v61[6] = v3;
      _os_log_impl(&dword_22EB09000, v4, OS_LOG_TYPE_DEFAULT, "ot-pairing: failed to create %d message: %@", buf, 0x12u);
    }

    v6 = *(a1 + 88);
    v7 = *(a1 + 96);
    Nanoseconds = _OctagonSignpostGetNanoseconds();
    v9 = _OctagonSignpostLogSystem();
    v10 = v9;
    v11 = *(a1 + 88);
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      v12 = *(*(*(a1 + 48) + 8) + 24);
      *buf = 67240192;
      *v61 = v12;
      _os_signpost_emit_with_name_impl(&dword_22EB09000, v10, OS_SIGNPOST_INTERVAL_END, v11, "PairingChannelInitiatorMessage3", " OctagonSignpostNamePairingChannelInitiatorMessage3=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage3}d ", buf, 8u);
    }

    v13 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v14 = *(*(*(a1 + 48) + 8) + 24);
      *v61 = *(a1 + 88);
      *&v61[8] = 2048;
      *&v61[10] = Nanoseconds / 1000000000.0;
      v62 = 1026;
      v63 = v14;
      _os_log_impl(&dword_22EB09000, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelInitiatorMessage3  OctagonSignpostNamePairingChannelInitiatorMessage3=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage3}d ", buf, 0x1Cu);
    }

    [*(a1 + 40) sendMetricWithResult:0 error:v3];
    v15 = *(*(a1 + 56) + 8);
    v16 = v3;
    WeakRetained = *(v15 + 40);
    *(v15 + 40) = v16;
  }

  else
  {
    v19 = secLogObjForScope(pairingScope);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22EB09000, v19, OS_LOG_TYPE_DEFAULT, "initiatorThirdPacket successfully joined Octagon", buf, 2u);
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
    WeakRetained = objc_loadWeakRetained((a1 + 80));
    if (SOSCCIsSOSTrustAndSyncingEnabled() && WeakRetained[10] == 1)
    {
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __88__KCPairingChannel_join_voucher_eventS_setupPairingChannelSignPost_finishPairing_error___block_invoke_242;
      v58[3] = &unk_278863270;
      objc_copyWeak(&v59, (a1 + 80));
      [WeakRetained setNextState:v58];
      *(*(*(a1 + 48) + 8) + 24) = 1;
      v20 = *(a1 + 88);
      v21 = *(a1 + 96);
      v22 = _OctagonSignpostGetNanoseconds();
      v23 = _OctagonSignpostLogSystem();
      v24 = v23;
      v25 = *(a1 + 88);
      if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        v26 = *(*(*(a1 + 48) + 8) + 24);
        *buf = 67240192;
        *v61 = v26;
        _os_signpost_emit_with_name_impl(&dword_22EB09000, v24, OS_SIGNPOST_INTERVAL_END, v25, "PairingChannelInitiatorMessage3", " OctagonSignpostNamePairingChannelInitiatorMessage3=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage3}d ", buf, 8u);
      }

      v27 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v28 = *(*(*(a1 + 48) + 8) + 24);
        *v61 = *(a1 + 88);
        *&v61[8] = 2048;
        *&v61[10] = v22 / 1000000000.0;
        v62 = 1026;
        v63 = v28;
        _os_log_impl(&dword_22EB09000, v27, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelInitiatorMessage3  OctagonSignpostNamePairingChannelInitiatorMessage3=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage3}d ", buf, 0x1Cu);
      }

      [*(a1 + 40) sendMetricWithResult:1 error:0];
      v29 = [MEMORY[0x277CBEC10] mutableCopy];
      v30 = *(*(a1 + 72) + 8);
      v31 = *(v30 + 40);
      *(v30 + 40) = v29;

      **(a1 + 104) = 0;
      objc_destroyWeak(&v59);
    }

    else if (CloudServicesLibraryCore() && getSecureBackupIsGuitarfishEnabledSymbolLoc() && soft_SecureBackupIsGuitarfishEnabled() && WeakRetained[12] == 1)
    {
      cf = 0;
      if (SecAKSKeybagHoldLockAssertion(0, 600, &cf))
      {
        [*(a1 + 32) setGrabbedLockAssertion:1];
      }

      else
      {
        v41 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v61 = cf;
          _os_log_impl(&dword_22EB09000, v41, OS_LOG_TYPE_DEFAULT, "pairing: Unable to acquire AKS lock assertion: %@", buf, 0xCu);
        }
      }

      v42 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v42);
      }

      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __88__KCPairingChannel_join_voucher_eventS_setupPairingChannelSignPost_finishPairing_error___block_invoke_243;
      v55[3] = &unk_278863270;
      objc_copyWeak(&v56, (a1 + 80));
      [WeakRetained setNextState:v55];
      *(*(*(a1 + 48) + 8) + 24) = 1;
      v43 = *(a1 + 88);
      v44 = *(a1 + 96);
      v45 = _OctagonSignpostGetNanoseconds();
      v46 = _OctagonSignpostLogSystem();
      v47 = v46;
      v48 = *(a1 + 88);
      if (v48 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
      {
        v49 = *(*(*(a1 + 48) + 8) + 24);
        *buf = 67240192;
        *v61 = v49;
        _os_signpost_emit_with_name_impl(&dword_22EB09000, v47, OS_SIGNPOST_INTERVAL_END, v48, "PairingChannelInitiatorMessage3", " OctagonSignpostNamePairingChannelInitiatorMessage3=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage3}d ", buf, 8u);
      }

      v50 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v51 = *(*(*(a1 + 48) + 8) + 24);
        *v61 = *(a1 + 88);
        *&v61[8] = 2048;
        *&v61[10] = v45 / 1000000000.0;
        v62 = 1026;
        v63 = v51;
        _os_log_impl(&dword_22EB09000, v50, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelInitiatorMessage3  OctagonSignpostNamePairingChannelInitiatorMessage3=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage3}d ", buf, 0x1Cu);
      }

      [*(a1 + 40) sendMetricWithResult:1 error:0];
      v52 = [MEMORY[0x277CBEC10] mutableCopy];
      v53 = *(*(a1 + 72) + 8);
      v54 = *(v53 + 40);
      *(v53 + 40) = v52;

      **(a1 + 104) = 0;
      objc_destroyWeak(&v56);
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      v32 = *(a1 + 88);
      v33 = *(a1 + 96);
      v34 = _OctagonSignpostGetNanoseconds();
      v35 = _OctagonSignpostLogSystem();
      v36 = v35;
      v37 = *(a1 + 88);
      if (v37 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
      {
        v38 = *(*(*(a1 + 48) + 8) + 24);
        *buf = 67240192;
        *v61 = v38;
        _os_signpost_emit_with_name_impl(&dword_22EB09000, v36, OS_SIGNPOST_INTERVAL_END, v37, "PairingChannelInitiatorMessage3", " OctagonSignpostNamePairingChannelInitiatorMessage3=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage3}d ", buf, 8u);
      }

      v39 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v40 = *(*(*(a1 + 48) + 8) + 24);
        *v61 = *(a1 + 88);
        *&v61[8] = 2048;
        *&v61[10] = v34 / 1000000000.0;
        v62 = 1026;
        v63 = v40;
        _os_log_impl(&dword_22EB09000, v39, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelInitiatorMessage3  OctagonSignpostNamePairingChannelInitiatorMessage3=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage3}d ", buf, 0x1Cu);
      }

      [*(a1 + 40) sendMetricWithResult:1 error:0];
      **(a1 + 104) = 1;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __88__KCPairingChannel_join_voucher_eventS_setupPairingChannelSignPost_finishPairing_error___block_invoke_242(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained initiatorFourthPacket:v6 complete:v5];
}

void __88__KCPairingChannel_join_voucher_eventS_setupPairingChannelSignPost_finishPairing_error___block_invoke_243(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained initiatorPCSDataPacket:v6 complete:v5];
}

- (void)initiatorCompleteSecondPacketOctagon:(id)octagon application:(id)application complete:(id)complete
{
  v33 = *MEMORY[0x277D85DE8];
  octagonCopy = octagon;
  applicationCopy = application;
  completeCopy = complete;
  v11 = secLogObjForScope("pairing");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22EB09000, v11, OS_LOG_TYPE_DEFAULT, "initiator complete second packet 2 with octagon", buf, 2u);
  }

  v12 = [octagonCopy objectForKeyedSubscript:@"o"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = secLogObjForScope(pairingScope);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22EB09000, v21, OS_LOG_TYPE_DEFAULT, "initiatorCompleteSecondPacketOctagon octagonData missing or wrong class", buf, 2u);
    }

    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:kKCPairingChannelErrorDomain code:4 userInfo:0];
    [(KCPairingChannel *)self setNextStateError:v14 complete:completeCopy];
    goto LABEL_24;
  }

  v24 = v12;
  v13 = 0;
  v14 = 0;
  do
  {

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v16 = secLogObjForScope(pairingScope);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v28) = v13 + 1;
      _os_log_impl(&dword_22EB09000, v16, OS_LOG_TYPE_DEFAULT, "Attempt %d, calling fetchPrepare", buf, 8u);
    }

    v25 = 0;
    v26 = dictionary;
    v17 = [(KCPairingChannel *)self fetchPrepare:&v26 application:applicationCopy error:&v25];
    v18 = v26;

    v14 = v25;
    if (v17)
    {
      (*(completeCopy + 2))(completeCopy, 0, v18, 0);
LABEL_22:

      goto LABEL_23;
    }

    if (![KCPairingChannel retryable:v14])
    {
      v22 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v28 = pairingScope;
        v29 = 1024;
        v30 = v13 + 1;
        v31 = 2112;
        v32 = v14;
        _os_log_impl(&dword_22EB09000, v22, OS_LOG_TYPE_DEFAULT, "%s: Attempt %d, failed fetching prepare %@", buf, 0x1Cu);
      }

      (*(completeCopy + 2))(completeCopy, 1, 0, v14);
      goto LABEL_22;
    }

    v19 = secLogObjForScope(pairingScope);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v28) = v13 + 2;
      _os_log_impl(&dword_22EB09000, v19, OS_LOG_TYPE_DEFAULT, "Attempt %d, retrying fetching prepare", buf, 8u);
    }

    ++v13;
  }

  while (v13 < prepareMaxRetry);
  v20 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v28) = prepareMaxRetry;
    _os_log_impl(&dword_22EB09000, v20, OS_LOG_TYPE_DEFAULT, "pairing: failed to fetch prepare %d times, bailing.", buf, 8u);
  }

  (*(completeCopy + 2))(completeCopy, 1, 0, v14);
LABEL_23:
  v12 = v24;
LABEL_24:

  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)fetchPrepare:(id *)prepare application:(id)application error:(id *)error
{
  applicationCopy = application;
  objc_initWeak(&location, self);
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  otControl = [(KCPairingChannel *)self otControl];
  controlArguments = [(KCPairingChannel *)self controlArguments];
  joiningConfiguration = [(KCPairingChannel *)self joiningConfiguration];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __51__KCPairingChannel_fetchPrepare_application_error___block_invoke;
  v17[3] = &unk_278863388;
  v17[4] = self;
  v19 = &v29;
  v20 = &v35;
  v12 = applicationCopy;
  v18 = v12;
  v21 = &v23;
  objc_copyWeak(&v22, &location);
  [otControl rpcPrepareIdentityAsApplicantWithArguments:controlArguments configuration:joiningConfiguration reply:v17];

  if (prepare)
  {
    v13 = v24[5];
    if (v13)
    {
      *prepare = v13;
    }
  }

  if (error)
  {
    v14 = v30[5];
    if (v14)
    {
      *error = v14;
    }
  }

  v15 = *(v36 + 24);
  objc_destroyWeak(&v22);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(&v35, 8);
  objc_destroyWeak(&location);

  return v15;
}

void __51__KCPairingChannel_fetchPrepare_application_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v52 = *MEMORY[0x277D85DE8];
  v41 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (v17 || [*(a1 + 32) testFailOctagon])
  {
    v18 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [*(a1 + 32) counter];
      *buf = 67109378;
      v49 = v19;
      v50 = 2112;
      v51 = v17;
      _os_log_impl(&dword_22EB09000, v18, OS_LOG_TYPE_DEFAULT, "ot-pairing: failed to create %d message: %@", buf, 0x12u);
    }

    v20 = *(*(a1 + 48) + 8);
    v21 = v17;
    v22 = *(v20 + 40);
    *(v20 + 40) = v21;
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v22 = objc_alloc_init(OTPairingMessage);
    v24 = objc_alloc_init(OTSupportSOSMessage);
    [(OTPairingMessage *)v22 setSupportsSOS:v24];

    v25 = objc_alloc_init(OTSupportOctagonMessage);
    [(OTPairingMessage *)v22 setSupportsOctagon:v25];

    v26 = objc_alloc_init(OTApplicantToSponsorRound2M1);
    [(OTApplicantToSponsorRound2M1 *)v26 setPeerID:v41];
    [(OTApplicantToSponsorRound2M1 *)v26 setPermanentInfo:v13];
    [(OTApplicantToSponsorRound2M1 *)v26 setPermanentInfoSig:v14];
    [(OTApplicantToSponsorRound2M1 *)v26 setStableInfo:v15];
    [(OTApplicantToSponsorRound2M1 *)v26 setStableInfoSig:v16];
    if (SOSCCIsSOSTrustAndSyncingEnabled())
    {
      v27 = 1;
    }

    else
    {
      v27 = 2;
    }

    v28 = [(OTPairingMessage *)v22 supportsSOS];
    [v28 setSupported:v27];

    v29 = [(OTPairingMessage *)v22 supportsOctagon];
    [v29 setSupported:1];

    [(OTPairingMessage *)v22 setPrepare:v26];
    v30 = *(a1 + 40);
    v31 = secLogObjForScope(pairingScope);
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
    if (v30)
    {
      if (v32)
      {
        *buf = 0;
        _os_log_impl(&dword_22EB09000, v31, OS_LOG_TYPE_DEFAULT, "initiatorCompleteSecondPacketOctagon returning octagon and sos data", buf, 2u);
      }

      v33 = *(a1 + 40);
      v46[0] = @"p";
      v46[1] = @"o";
      v47[0] = v33;
      v34 = [(OTPairingMessage *)v22 data];
      v47[1] = v34;
      v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];
    }

    else
    {
      if (v32)
      {
        *buf = 0;
        _os_log_impl(&dword_22EB09000, v31, OS_LOG_TYPE_DEFAULT, "initiatorCompleteSecondPacketOctagon returning octagon data", buf, 2u);
      }

      v44 = @"o";
      v34 = [(OTPairingMessage *)v22 data];
      v45 = v34;
      v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    }

    v36 = v35;
    v37 = [v35 mutableCopy];
    v38 = *(*(a1 + 64) + 8);
    v39 = *(v38 + 40);
    *(v38 + 40) = v37;

    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __51__KCPairingChannel_fetchPrepare_application_error___block_invoke_238;
    v42[3] = &unk_278863270;
    objc_copyWeak(&v43, (a1 + 72));
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    [WeakRetained setNextState:v42];

    objc_destroyWeak(&v43);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __51__KCPairingChannel_fetchPrepare_application_error___block_invoke_238(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained initiatorThirdPacket:v6 complete:v5];
}

- (void)initiatorCompleteSecondPacketWithSOS:(id)s complete:(id)complete
{
  v47 = *MEMORY[0x277D85DE8];
  sCopy = s;
  completeCopy = complete;
  v8 = secLogObjForScope("pairing");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22EB09000, v8, OS_LOG_TYPE_DEFAULT, "initiator complete second packet 2", buf, 2u);
  }

  objc_initWeak(&location, self);
  [(KCPairingChannel *)self setNextStateError:0 complete:0];
  *buf = 0;
  v41 = buf;
  v42 = 0x2020000000;
  v43 = 0;
  v9 = _OctagonSignpostLogSystem();
  v10 = _OctagonSignpostCreate();
  v29 = v11;
  v12 = v10;

  v13 = _OctagonSignpostLogSystem();
  v14 = v13;
  if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *v45 = 0;
    _os_signpost_emit_with_name_impl(&dword_22EB09000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PairingChannelInitiatorMakeSOSPeer", " enableTelemetry=YES ", v45, 2u);
  }

  v15 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *v45 = 134217984;
    v46 = v12;
    _os_log_impl(&dword_22EB09000, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PairingChannelInitiatorMakeSOSPeer  enableTelemetry=YES ", v45, 0xCu);
  }

  v27 = sCopy;
  connection = [(KCPairingChannel *)self connection];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __66__KCPairingChannel_initiatorCompleteSecondPacketWithSOS_complete___block_invoke;
  v35[3] = &unk_278863338;
  v38 = v12;
  v39 = v29;
  v37 = buf;
  v16 = completeCopy;
  v36 = v16;
  v17 = [connection remoteObjectProxyWithErrorHandler:v35];
  peerVersionContext = [(KCPairingChannel *)self peerVersionContext];
  altDSID = [peerVersionContext altDSID];
  peerVersionContext2 = [(KCPairingChannel *)self peerVersionContext];
  flowID = [peerVersionContext2 flowID];
  peerVersionContext3 = [(KCPairingChannel *)self peerVersionContext];
  deviceSessionID = [peerVersionContext3 deviceSessionID];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __66__KCPairingChannel_initiatorCompleteSecondPacketWithSOS_complete___block_invoke_231;
  v30[3] = &unk_278863360;
  v34[1] = v12;
  v34[2] = v29;
  v33 = buf;
  v30[4] = self;
  v24 = v27;
  v31 = v24;
  v25 = v16;
  v32 = v25;
  objc_copyWeak(v34, &location);
  [v17 myPeerInfo:altDSID flowID:flowID deviceSessionID:deviceSessionID canSendMetrics:1 complete:v30];

  objc_destroyWeak(v34);
  _Block_object_dispose(buf, 8);
  objc_destroyWeak(&location);

  v26 = *MEMORY[0x277D85DE8];
}

void __66__KCPairingChannel_initiatorCompleteSecondPacketWithSOS_complete___block_invoke(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a1[6];
  v4 = a1[7];
  v5 = a2;
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v7 = _OctagonSignpostLogSystem();
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = *(*(a1[5] + 8) + 24);
    v14 = 67240192;
    LODWORD(v15) = v10;
    _os_signpost_emit_with_name_impl(&dword_22EB09000, v8, OS_SIGNPOST_INTERVAL_END, v9, "PairingChannelInitiatorMakeSOSPeer", " OctagonSignpostNamePairingChannelInitiatorMakeSOSPeer=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMakeSOSPeer}d ", &v14, 8u);
  }

  v11 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134218496;
    v12 = *(*(a1[5] + 8) + 24);
    v15 = a1[6];
    v16 = 2048;
    v17 = Nanoseconds / 1000000000.0;
    v18 = 1026;
    v19 = v12;
    _os_log_impl(&dword_22EB09000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelInitiatorMakeSOSPeer  OctagonSignpostNamePairingChannelInitiatorMakeSOSPeer=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMakeSOSPeer}d ", &v14, 0x1Cu);
  }

  (*(a1[4] + 16))();
  v13 = *MEMORY[0x277D85DE8];
}

void __66__KCPairingChannel_initiatorCompleteSecondPacketWithSOS_complete___block_invoke_231(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v11 = _OctagonSignpostLogSystem();
  v12 = v11;
  v13 = *(a1 + 72);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v14 = *(*(*(a1 + 56) + 8) + 24);
    *buf = 67240192;
    LODWORD(v27) = v14;
    _os_signpost_emit_with_name_impl(&dword_22EB09000, v12, OS_SIGNPOST_INTERVAL_END, v13, "PairingChannelInitiatorMakeSOSPeer", " OctagonSignpostNamePairingChannelInitiatorMakeSOSPeer=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMakeSOSPeer}d ", buf, 8u);
  }

  v15 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v16 = *(*(*(a1 + 56) + 8) + 24);
    v27 = *(a1 + 72);
    v28 = 2048;
    v29 = Nanoseconds / 1000000000.0;
    v30 = 1026;
    v31 = v16;
    _os_log_impl(&dword_22EB09000, v15, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelInitiatorMakeSOSPeer  OctagonSignpostNamePairingChannelInitiatorMakeSOSPeer=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMakeSOSPeer}d ", buf, 0x1Cu);
  }

  if (v5 && ([*(a1 + 32) testFailSOS] & 1) == 0)
  {
    if (![*(a1 + 32) sessionSupportsOctagon])
    {
      v18 = *(a1 + 48);
      v24 = @"p";
      v25 = v5;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      (*(v18 + 16))(v18, 0, v19, v7);

      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __66__KCPairingChannel_initiatorCompleteSecondPacketWithSOS_complete___block_invoke_232;
      v22[3] = &unk_278863270;
      objc_copyWeak(&v23, (a1 + 64));
      WeakRetained = objc_loadWeakRetained((a1 + 64));
      [WeakRetained setNextState:v22];

      objc_destroyWeak(&v23);
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  if ([*(a1 + 32) sessionSupportsOctagon])
  {
LABEL_12:
    [*(a1 + 32) initiatorCompleteSecondPacketOctagon:*(a1 + 40) application:v5 complete:*(a1 + 48)];
    goto LABEL_18;
  }

  v17 = secLogObjForScope("pairing");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v7;
    _os_log_impl(&dword_22EB09000, v17, OS_LOG_TYPE_DEFAULT, "failed getting application: %@", buf, 0xCu);
  }

  (*(*(a1 + 48) + 16))();
LABEL_18:

  v21 = *MEMORY[0x277D85DE8];
}

void __66__KCPairingChannel_initiatorCompleteSecondPacketWithSOS_complete___block_invoke_232(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained initiatorThirdPacket:v6 complete:v5];
}

- (void)initiatorSecondPacket:(id)packet complete:(id)complete
{
  v92 = *MEMORY[0x277D85DE8];
  packetCopy = packet;
  completeCopy = complete;
  v6 = secLogObjForScope("pairing");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22EB09000, v6, OS_LOG_TYPE_DEFAULT, "initiator packet 2", buf, 2u);
  }

  *buf = 0;
  v84 = buf;
  v85 = 0x2020000000;
  v86 = 0;
  v7 = _OctagonSignpostLogSystem();
  v8 = _OctagonSignpostCreate();
  v51 = v9;
  v10 = v8;

  v11 = _OctagonSignpostLogSystem();
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(v89) = 0;
    _os_signpost_emit_with_name_impl(&dword_22EB09000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PairingChannelInitiatorMessage2", " enableTelemetry=YES ", &v89, 2u);
  }

  v13 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v89) = 134217984;
    *(&v89 + 4) = v10;
    _os_log_impl(&dword_22EB09000, v13, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PairingChannelInitiatorMessage2  enableTelemetry=YES ", &v89, 0xCu);
  }

  v56 = v10;
  v14 = [AAFAnalyticsEventSecurity alloc];
  peerVersionContext = [(KCPairingChannel *)self peerVersionContext];
  altDSID = [peerVersionContext altDSID];
  peerVersionContext2 = [(KCPairingChannel *)self peerVersionContext];
  flowID = [peerVersionContext2 flowID];
  peerVersionContext3 = [(KCPairingChannel *)self peerVersionContext];
  deviceSessionID = [peerVersionContext3 deviceSessionID];
  LOBYTE(v47) = 1;
  v53 = [(AAFAnalyticsEventSecurity *)v14 initWithKeychainCircleMetrics:0 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:@"com.apple.security.initiatorCreatesPacket3" testsAreEnabled:metricsAreEnabled canSendMetrics:v47 category:&unk_2843768F0];

  v55 = [packetCopy objectForKeyedSubscript:@"o"];
  if (!v55)
  {
    v21 = secLogObjForScope("pairing");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v89) = 0;
      _os_log_impl(&dword_22EB09000, v21, OS_LOG_TYPE_DEFAULT, "acceptor didn't send a octagon packet, so skipping all octagon flows", &v89, 2u);
    }

    [(KCPairingChannel *)self setSessionSupportsOctagon:0];
  }

  v52 = [packetCopy objectForKeyedSubscript:@"c"];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v22 = [packetCopy objectForKeyedSubscript:@"d"];
    v23 = v22 == 0;

    if (!v23)
    {
      v24 = secLogObjForScope("pairing");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v89) = 0;
        _os_log_impl(&dword_22EB09000, v24, OS_LOG_TYPE_DEFAULT, "acceptor will send initial credentials", &v89, 2u);
      }

      [(KCPairingChannel *)self setAcceptorWillSendInitialSyncCredentials:1];
    }
  }

  if (CloudServicesLibraryCore())
  {
    if (getSecureBackupIsGuitarfishEnabledSymbolLoc())
    {
      if (soft_SecureBackupIsGuitarfishEnabled())
      {
        peerVersionContext4 = [(KCPairingChannel *)self peerVersionContext];
        accountIsGuitarfish = [peerVersionContext4 accountIsGuitarfish];

        if (accountIsGuitarfish)
        {
          v27 = [packetCopy objectForKeyedSubscript:@"y"];
          if (v27)
          {
            v28 = [packetCopy objectForKeyedSubscript:@"y"];
            v29 = [v28 isEqualToNumber:MEMORY[0x277CBEC38]];

            if (v29)
            {
              v30 = secLogObjForScope("pairing");
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v89) = 0;
                _os_log_impl(&dword_22EB09000, v30, OS_LOG_TYPE_DEFAULT, "acceptor will send PCS data", &v89, 2u);
              }

              [(KCPairingChannel *)self setInitiatorExpectPCSData:1];
            }
          }
        }
      }
    }
  }

  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    *&v89 = 0;
    *(&v89 + 1) = &v89;
    v90 = 0x2020000000;
    v91 = 0;
    v31 = _OctagonSignpostLogSystem();
    v32 = _OctagonSignpostCreate();
    v50 = v33;
    v34 = v32;

    v35 = _OctagonSignpostLogSystem();
    v36 = v35;
    if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
    {
      *v87 = 0;
      _os_signpost_emit_with_name_impl(&dword_22EB09000, v36, OS_SIGNPOST_INTERVAL_BEGIN, v34, "PairingChannelInitiatorStashAccountCredential", " enableTelemetry=YES ", v87, 2u);
    }

    v37 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *v87 = 134217984;
      v88 = v34;
      _os_log_impl(&dword_22EB09000, v37, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PairingChannelInitiatorStashAccountCredential  enableTelemetry=YES ", v87, 0xCu);
    }

    connection = [(KCPairingChannel *)self connection];
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __51__KCPairingChannel_initiatorSecondPacket_complete___block_invoke;
    v74[3] = &unk_2788632C0;
    v79 = v34;
    v80 = v50;
    v81 = v56;
    v82 = v51;
    v77 = &v89;
    v78 = buf;
    v38 = v53;
    v75 = v38;
    v39 = completeCopy;
    v76 = v39;
    v48 = [connection remoteObjectProxyWithErrorHandler:v74];
    peerVersionContext5 = [(KCPairingChannel *)self peerVersionContext];
    altDSID2 = [peerVersionContext5 altDSID];
    peerVersionContext6 = [(KCPairingChannel *)self peerVersionContext];
    flowID2 = [peerVersionContext6 flowID];
    peerVersionContext7 = [(KCPairingChannel *)self peerVersionContext];
    deviceSessionID2 = [peerVersionContext7 deviceSessionID];
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __51__KCPairingChannel_initiatorSecondPacket_complete___block_invoke_225;
    v64[3] = &unk_278863310;
    v68 = &v89;
    v64[4] = self;
    v71 = v50;
    v72 = v56;
    v73 = v51;
    v69 = buf;
    v70 = v34;
    v65 = v38;
    v67 = v39;
    v66 = packetCopy;
    [v48 stashAccountCredential:v52 altDSID:altDSID2 flowID:flowID2 deviceSessionID:deviceSessionID2 canSendMetrics:1 complete:v64];

    _Block_object_dispose(&v89, 8);
  }

  else if ([(KCPairingChannel *)self sessionSupportsOctagon])
  {
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __51__KCPairingChannel_initiatorSecondPacket_complete___block_invoke_230;
    v58[3] = &unk_2788632E8;
    v61 = buf;
    v62 = v56;
    v63 = v51;
    v59 = v53;
    v60 = completeCopy;
    [(KCPairingChannel *)self initiatorCompleteSecondPacketOctagon:packetCopy application:0 complete:v58];
  }

  _Block_object_dispose(buf, 8);
  v46 = *MEMORY[0x277D85DE8];
}

void __51__KCPairingChannel_initiatorSecondPacket_complete___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v5 = a2;
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v7 = _OctagonSignpostLogSystem();
  v8 = v7;
  v9 = *(a1 + 64);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = *(*(*(a1 + 48) + 8) + 24);
    v24 = 67240192;
    LODWORD(v25) = v10;
    _os_signpost_emit_with_name_impl(&dword_22EB09000, v8, OS_SIGNPOST_INTERVAL_END, v9, "PairingChannelInitiatorStashAccountCredential", " OctagonSignpostNamePairingChannelInitiatorStashAccountCredential=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorStashAccountCredential}d ", &v24, 8u);
  }

  v11 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 64);
    v13 = *(*(*(a1 + 48) + 8) + 24);
    v24 = 134218496;
    v25 = v12;
    v26 = 2048;
    v27 = Nanoseconds / 1000000000.0;
    v28 = 1026;
    v29 = v13;
    _os_log_impl(&dword_22EB09000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelInitiatorStashAccountCredential  OctagonSignpostNamePairingChannelInitiatorStashAccountCredential=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorStashAccountCredential}d ", &v24, 0x1Cu);
  }

  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  v16 = _OctagonSignpostGetNanoseconds();
  v17 = _OctagonSignpostLogSystem();
  v18 = v17;
  v19 = *(a1 + 80);
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    v20 = *(*(*(a1 + 56) + 8) + 24);
    v24 = 67240192;
    LODWORD(v25) = v20;
    _os_signpost_emit_with_name_impl(&dword_22EB09000, v18, OS_SIGNPOST_INTERVAL_END, v19, "PairingChannelInitiatorMessage2", " OctagonSignpostNamePairingChannelInitiatorMessage2=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage2}d ", &v24, 8u);
  }

  v21 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 134218496;
    v22 = *(*(*(a1 + 56) + 8) + 24);
    v25 = *(a1 + 80);
    v26 = 2048;
    v27 = v16 / 1000000000.0;
    v28 = 1026;
    v29 = v22;
    _os_log_impl(&dword_22EB09000, v21, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelInitiatorMessage2  OctagonSignpostNamePairingChannelInitiatorMessage2=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage2}d ", &v24, 0x1Cu);
  }

  [*(a1 + 32) sendMetricWithResult:0 error:v5];
  (*(*(a1 + 40) + 16))();

  v23 = *MEMORY[0x277D85DE8];
}

void __51__KCPairingChannel_initiatorSecondPacket_complete___block_invoke_225(uint64_t a1, int a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5 && a2)
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  v6 = *(a1 + 80);
  v7 = *(a1 + 88);
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v9 = _OctagonSignpostLogSystem();
  v10 = v9;
  v11 = *(a1 + 80);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v12 = *(*(*(a1 + 64) + 8) + 24);
    *buf = 67240192;
    LODWORD(v43) = v12;
    _os_signpost_emit_with_name_impl(&dword_22EB09000, v10, OS_SIGNPOST_INTERVAL_END, v11, "PairingChannelInitiatorStashAccountCredential", " OctagonSignpostNamePairingChannelInitiatorStashAccountCredential=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorStashAccountCredential}d ", buf, 8u);
  }

  v13 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 80);
    v15 = *(*(*(a1 + 64) + 8) + 24);
    *buf = 134218496;
    v43 = v14;
    v44 = 2048;
    v45 = Nanoseconds / 1000000000.0;
    v46 = 1026;
    v47 = v15;
    _os_log_impl(&dword_22EB09000, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelInitiatorStashAccountCredential  OctagonSignpostNamePairingChannelInitiatorStashAccountCredential=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorStashAccountCredential}d ", buf, 0x1Cu);
  }

  [*(a1 + 32) setNextStateError:0 complete:0];
  if (a2 && ![*(a1 + 32) testFailSOS])
  {
    v29 = *(a1 + 48);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __51__KCPairingChannel_initiatorSecondPacket_complete___block_invoke_228;
    v32[3] = &unk_2788632E8;
    v35 = *(a1 + 72);
    v36 = *(a1 + 96);
    v30 = *(a1 + 32);
    v33 = *(a1 + 40);
    v34 = *(a1 + 56);
    [v30 initiatorCompleteSecondPacketWithSOS:v29 complete:v32];

    v19 = v33;
    goto LABEL_22;
  }

  v16 = secLogObjForScope("pairing");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v43 = v5;
    _os_log_impl(&dword_22EB09000, v16, OS_LOG_TYPE_DEFAULT, "failed stash credentials: %@", buf, 0xCu);
  }

  if ([*(a1 + 32) sessionSupportsOctagon])
  {
    v17 = *(a1 + 48);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __51__KCPairingChannel_initiatorSecondPacket_complete___block_invoke_226;
    v37[3] = &unk_2788632E8;
    v40 = *(a1 + 72);
    v41 = *(a1 + 96);
    v18 = *(a1 + 32);
    v38 = *(a1 + 40);
    v39 = *(a1 + 56);
    [v18 initiatorCompleteSecondPacketOctagon:v17 application:0 complete:v37];

    v19 = v38;
LABEL_22:

    goto LABEL_23;
  }

  v20 = *(a1 + 96);
  v21 = *(a1 + 104);
  v22 = _OctagonSignpostGetNanoseconds();
  v23 = _OctagonSignpostLogSystem();
  v24 = v23;
  v25 = *(a1 + 96);
  if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    v26 = *(*(*(a1 + 72) + 8) + 24);
    *buf = 67240192;
    LODWORD(v43) = v26;
    _os_signpost_emit_with_name_impl(&dword_22EB09000, v24, OS_SIGNPOST_INTERVAL_END, v25, "PairingChannelInitiatorMessage2", " OctagonSignpostNamePairingChannelInitiatorMessage2=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage2}d ", buf, 8u);
  }

  v27 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v28 = *(*(*(a1 + 72) + 8) + 24);
    v43 = *(a1 + 96);
    v44 = 2048;
    v45 = v22 / 1000000000.0;
    v46 = 1026;
    v47 = v28;
    _os_log_impl(&dword_22EB09000, v27, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelInitiatorMessage2  OctagonSignpostNamePairingChannelInitiatorMessage2=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage2}d ", buf, 0x1Cu);
  }

  [*(a1 + 40) sendMetricWithResult:0 error:v5];
  (*(*(a1 + 56) + 16))();
LABEL_23:

  v31 = *MEMORY[0x277D85DE8];
}

void __51__KCPairingChannel_initiatorSecondPacket_complete___block_invoke_230(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = a4;
  v9 = a3;
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v11 = _OctagonSignpostLogSystem();
  v12 = v11;
  v13 = *(a1 + 56);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v14 = *(*(*(a1 + 48) + 8) + 24);
    v18 = 67240192;
    LODWORD(v19) = v14;
    _os_signpost_emit_with_name_impl(&dword_22EB09000, v12, OS_SIGNPOST_INTERVAL_END, v13, "PairingChannelInitiatorMessage2", " OctagonSignpostNamePairingChannelInitiatorMessage2=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage2}d ", &v18, 8u);
  }

  v15 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134218496;
    v16 = *(*(*(a1 + 48) + 8) + 24);
    v19 = *(a1 + 56);
    v20 = 2048;
    v21 = Nanoseconds / 1000000000.0;
    v22 = 1026;
    v23 = v16;
    _os_log_impl(&dword_22EB09000, v15, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelInitiatorMessage2  OctagonSignpostNamePairingChannelInitiatorMessage2=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage2}d ", &v18, 0x1Cu);
  }

  [*(a1 + 32) sendMetricWithResult:*(*(*(a1 + 48) + 8) + 24) error:v8];
  (*(*(a1 + 40) + 16))();

  v17 = *MEMORY[0x277D85DE8];
}

void __51__KCPairingChannel_initiatorSecondPacket_complete___block_invoke_226(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = a4;
  v9 = a3;
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v11 = _OctagonSignpostLogSystem();
  v12 = v11;
  v13 = *(a1 + 56);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v14 = *(*(*(a1 + 48) + 8) + 24);
    v18 = 67240192;
    LODWORD(v19) = v14;
    _os_signpost_emit_with_name_impl(&dword_22EB09000, v12, OS_SIGNPOST_INTERVAL_END, v13, "PairingChannelInitiatorMessage2", " OctagonSignpostNamePairingChannelInitiatorMessage2=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage2}d ", &v18, 8u);
  }

  v15 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134218496;
    v16 = *(*(*(a1 + 48) + 8) + 24);
    v19 = *(a1 + 56);
    v20 = 2048;
    v21 = Nanoseconds / 1000000000.0;
    v22 = 1026;
    v23 = v16;
    _os_log_impl(&dword_22EB09000, v15, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelInitiatorMessage2  OctagonSignpostNamePairingChannelInitiatorMessage2=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage2}d ", &v18, 0x1Cu);
  }

  [*(a1 + 32) sendMetricWithResult:*(*(*(a1 + 48) + 8) + 24) error:v8];
  (*(*(a1 + 40) + 16))();

  v17 = *MEMORY[0x277D85DE8];
}

void __51__KCPairingChannel_initiatorSecondPacket_complete___block_invoke_228(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = a4;
  v9 = a3;
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v11 = _OctagonSignpostLogSystem();
  v12 = v11;
  v13 = *(a1 + 56);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v14 = *(*(*(a1 + 48) + 8) + 24);
    v18 = 67240192;
    LODWORD(v19) = v14;
    _os_signpost_emit_with_name_impl(&dword_22EB09000, v12, OS_SIGNPOST_INTERVAL_END, v13, "PairingChannelInitiatorMessage2", " OctagonSignpostNamePairingChannelInitiatorMessage2=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage2}d ", &v18, 8u);
  }

  v15 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134218496;
    v16 = *(*(*(a1 + 48) + 8) + 24);
    v19 = *(a1 + 56);
    v20 = 2048;
    v21 = Nanoseconds / 1000000000.0;
    v22 = 1026;
    v23 = v16;
    _os_log_impl(&dword_22EB09000, v15, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelInitiatorMessage2  OctagonSignpostNamePairingChannelInitiatorMessage2=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage2}d ", &v18, 0x1Cu);
  }

  [*(a1 + 32) sendMetricWithResult:*(*(*(a1 + 48) + 8) + 24) error:v8];
  (*(*(a1 + 40) + 16))();

  v17 = *MEMORY[0x277D85DE8];
}

- (void)initiatorFirstPacket:(id)packet complete:(id)complete
{
  v89[1] = *MEMORY[0x277D85DE8];
  packetCopy = packet;
  completeCopy = complete;
  v6 = secLogObjForScope("pairing");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22EB09000, v6, OS_LOG_TYPE_DEFAULT, "initiator packet 1", buf, 2u);
  }

  v7 = _OctagonSignpostLogSystem();
  spid = _OctagonSignpostCreate();

  v8 = _OctagonSignpostLogSystem();
  v9 = v8;
  v55 = spid - 1;
  if ((spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22EB09000, v9, OS_SIGNPOST_INTERVAL_BEGIN, spid, "PairingChannelInitiatorMessage1", " enableTelemetry=YES ", buf, 2u);
  }

  v10 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = spid;
    _os_log_impl(&dword_22EB09000, v10, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: PairingChannelInitiatorMessage1  enableTelemetry=YES ", buf, 0xCu);
  }

  if ([(KCPairingChannel *)self sessionSupportsSOS]&& [(KCPairingChannel *)self sessionSupportsOctagon])
  {
    sessionSupportsSOS = 3;
  }

  else if ([(KCPairingChannel *)self sessionSupportsOctagon])
  {
    sessionSupportsSOS = 2;
  }

  else
  {
    sessionSupportsSOS = [(KCPairingChannel *)self sessionSupportsSOS];
  }

  v12 = [AAFAnalyticsEventSecurity alloc];
  v88 = @"supportedTrustSystem";
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:sessionSupportsSOS];
  v89[0] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:&v88 count:1];
  peerVersionContext = [(KCPairingChannel *)self peerVersionContext];
  altDSID = [peerVersionContext altDSID];
  peerVersionContext2 = [(KCPairingChannel *)self peerVersionContext];
  flowID = [peerVersionContext2 flowID];
  peerVersionContext3 = [(KCPairingChannel *)self peerVersionContext];
  deviceSessionID = [peerVersionContext3 deviceSessionID];
  LOBYTE(v53) = 1;
  v21 = [(AAFAnalyticsEventSecurity *)v12 initWithKeychainCircleMetrics:v14 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:@"com.apple.security.initiatorCreatesPacket1" testsAreEnabled:metricsAreEnabled canSendMetrics:v53 category:&unk_2843768F0];

  if (SOSCCIsSOSTrustAndSyncingEnabled() && ![(KCPairingChannel *)self ensureControlChannel])
  {
    v31 = [MEMORY[0x277CCA9B8] errorWithDomain:kKCPairingChannelErrorDomain code:1 userInfo:0];
    [(KCPairingChannel *)self setNextStateError:v31 complete:completeCopy];
    Nanoseconds = _OctagonSignpostGetNanoseconds();
    v33 = _OctagonSignpostLogSystem();
    v34 = v33;
    if (v55 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v33))
    {
      *buf = 67240192;
      _os_signpost_emit_with_name_impl(&dword_22EB09000, v34, OS_SIGNPOST_INTERVAL_END, spid, "PairingChannelInitiatorMessage1", " OctagonSignpostNamePairingChannelInitiatorMessage1=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage1}d ", buf, 8u);
    }

    v35 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *&buf[4] = spid;
      v84 = 2048;
      v85 = Nanoseconds / 1000000000.0;
      v86 = 1026;
      v87 = 0;
      _os_log_impl(&dword_22EB09000, v35, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelInitiatorMessage1  OctagonSignpostNamePairingChannelInitiatorMessage1=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage1}d ", buf, 0x1Cu);
    }

    [(AAFAnalyticsEventSecurity *)v21 sendMetricWithResult:0 error:v31];
  }

  else if ([(KCPairingChannel *)self sessionSupportsOctagon]&& [(KCPairingChannel *)self sessionSupportsSOS]&& ![(KCPairingChannel *)self testFailOctagon])
  {
    objc_initWeak(&location, self);
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __50__KCPairingChannel_initiatorFirstPacket_complete___block_invoke;
    v62[3] = &unk_278863270;
    objc_copyWeak(&v63, &location);
    [(KCPairingChannel *)self setNextState:v62];
    v44 = _OctagonSignpostGetNanoseconds();
    v45 = _OctagonSignpostLogSystem();
    v46 = v45;
    if (v55 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
    {
      *buf = 67240192;
      *&buf[4] = 1;
      _os_signpost_emit_with_name_impl(&dword_22EB09000, v46, OS_SIGNPOST_INTERVAL_END, spid, "PairingChannelInitiatorMessage1", " OctagonSignpostNamePairingChannelInitiatorMessage1=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage1}d ", buf, 8u);
    }

    v47 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *&buf[4] = spid;
      v84 = 2048;
      v85 = v44 / 1000000000.0;
      v86 = 1026;
      v87 = 1;
      _os_log_impl(&dword_22EB09000, v47, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelInitiatorMessage1  OctagonSignpostNamePairingChannelInitiatorMessage1=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage1}d ", buf, 0x1Cu);
    }

    [(AAFAnalyticsEventSecurity *)v21 sendMetricWithResult:1 error:0];
    if (CloudServicesLibraryCore() && getSecureBackupIsGuitarfishEnabledSymbolLoc() && soft_SecureBackupIsGuitarfishEnabled() && (-[KCPairingChannel peerVersionContext](self, "peerVersionContext"), v48 = objc_claimAutoreleasedReturnValue(), v49 = [v48 accountIsGuitarfish], v48, v49))
    {
      v81[1] = @"o";
      v82[0] = MEMORY[0x277CBEC38];
      v80[1] = MEMORY[0x277CBEC38];
      v81[0] = @"d";
      v79[0] = @"v";
      v79[1] = @"s";
      v80[0] = @"O";
      v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:2];
      v82[1] = v50;
      v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:2];
      (*(completeCopy + 2))(completeCopy, 0, v51, 0);
    }

    else
    {
      v77[0] = @"d";
      v77[1] = @"o";
      v78[0] = MEMORY[0x277CBEC38];
      v75 = @"v";
      v76 = @"O";
      v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
      v78[1] = v50;
      v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:2];
      (*(completeCopy + 2))(completeCopy, 0, v51, 0);
    }

    objc_destroyWeak(&v63);
    objc_destroyWeak(&location);
  }

  else if ([(KCPairingChannel *)self sessionSupportsOctagon]&& [(KCPairingChannel *)self testFailOctagon])
  {
    v22 = _OctagonSignpostGetNanoseconds();
    v23 = _OctagonSignpostLogSystem();
    v24 = v23;
    if (v55 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v23))
    {
      *buf = 67240192;
      _os_signpost_emit_with_name_impl(&dword_22EB09000, v24, OS_SIGNPOST_INTERVAL_END, spid, "PairingChannelInitiatorMessage1", " OctagonSignpostNamePairingChannelInitiatorMessage1=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage1}d ", buf, 8u);
    }

    v25 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *&buf[4] = spid;
      v84 = 2048;
      v85 = v22 / 1000000000.0;
      v86 = 1026;
      v87 = 0;
      _os_log_impl(&dword_22EB09000, v25, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelInitiatorMessage1  OctagonSignpostNamePairingChannelInitiatorMessage1=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage1}d ", buf, 0x1Cu);
    }

    [(AAFAnalyticsEventSecurity *)v21 sendMetricWithResult:1 error:0];
    (*(completeCopy + 2))(completeCopy, 1, 0, 0);
  }

  else if ([(KCPairingChannel *)self sessionSupportsOctagon]&& ![(KCPairingChannel *)self sessionSupportsSOS])
  {
    objc_initWeak(&location, self);
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __50__KCPairingChannel_initiatorFirstPacket_complete___block_invoke_223;
    v60[3] = &unk_278863270;
    objc_copyWeak(&v61, &location);
    [(KCPairingChannel *)self setNextState:v60];
    v36 = _OctagonSignpostGetNanoseconds();
    v37 = _OctagonSignpostLogSystem();
    v38 = v37;
    if (v55 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
    {
      *buf = 67240192;
      *&buf[4] = 1;
      _os_signpost_emit_with_name_impl(&dword_22EB09000, v38, OS_SIGNPOST_INTERVAL_END, spid, "PairingChannelInitiatorMessage1", " OctagonSignpostNamePairingChannelInitiatorMessage1=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage1}d ", buf, 8u);
    }

    v39 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *&buf[4] = spid;
      v84 = 2048;
      v85 = v36 / 1000000000.0;
      v86 = 1026;
      v87 = 1;
      _os_log_impl(&dword_22EB09000, v39, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelInitiatorMessage1  OctagonSignpostNamePairingChannelInitiatorMessage1=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage1}d ", buf, 0x1Cu);
    }

    [(AAFAnalyticsEventSecurity *)v21 sendMetricWithResult:1 error:0];
    if (CloudServicesLibraryCore() && getSecureBackupIsGuitarfishEnabledSymbolLoc() && soft_SecureBackupIsGuitarfishEnabled() && (-[KCPairingChannel peerVersionContext](self, "peerVersionContext"), v40 = objc_claimAutoreleasedReturnValue(), v41 = [v40 accountIsGuitarfish], v40, v41))
    {
      v73 = @"o";
      v71[0] = @"v";
      v71[1] = @"s";
      v72[0] = @"O";
      v72[1] = MEMORY[0x277CBEC38];
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:2];
      v74 = v42;
      v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
      (*(completeCopy + 2))(completeCopy, 0, v43, 0);
    }

    else
    {
      v67 = @"v";
      v68 = @"O";
      v69 = @"o";
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
      v70 = v42;
      v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      (*(completeCopy + 2))(completeCopy, 0, v43, 0);
    }

    objc_destroyWeak(&v61);
    objc_destroyWeak(&location);
  }

  else
  {
    objc_initWeak(&location, self);
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __50__KCPairingChannel_initiatorFirstPacket_complete___block_invoke_224;
    v58[3] = &unk_278863270;
    objc_copyWeak(&v59, &location);
    [(KCPairingChannel *)self setNextState:v58];
    v26 = _OctagonSignpostGetNanoseconds();
    v27 = _OctagonSignpostLogSystem();
    v28 = v27;
    if (v55 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      *buf = 67240192;
      *&buf[4] = 1;
      _os_signpost_emit_with_name_impl(&dword_22EB09000, v28, OS_SIGNPOST_INTERVAL_END, spid, "PairingChannelInitiatorMessage1", " OctagonSignpostNamePairingChannelInitiatorMessage1=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage1}d ", buf, 8u);
    }

    v29 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *&buf[4] = spid;
      v84 = 2048;
      v85 = v26 / 1000000000.0;
      v86 = 1026;
      v87 = 1;
      _os_log_impl(&dword_22EB09000, v29, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelInitiatorMessage1  OctagonSignpostNamePairingChannelInitiatorMessage1=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorMessage1}d ", buf, 0x1Cu);
    }

    [(AAFAnalyticsEventSecurity *)v21 sendMetricWithResult:1 error:0];
    v65 = @"d";
    v66 = MEMORY[0x277CBEC38];
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    (*(completeCopy + 2))(completeCopy, 0, v30, 0);

    objc_destroyWeak(&v59);
    objc_destroyWeak(&location);
  }

  v52 = *MEMORY[0x277D85DE8];
}

void __50__KCPairingChannel_initiatorFirstPacket_complete___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained initiatorSecondPacket:v6 complete:v5];
}

void __50__KCPairingChannel_initiatorFirstPacket_complete___block_invoke_223(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained initiatorSecondPacket:v6 complete:v5];
}

void __50__KCPairingChannel_initiatorFirstPacket_complete___block_invoke_224(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained initiatorSecondPacket:v6 complete:v5];
}

- (void)waitForOctagonUpgrade
{
  v3 = [AAFAnalyticsEventSecurity alloc];
  peerVersionContext = [(KCPairingChannel *)self peerVersionContext];
  altDSID = [peerVersionContext altDSID];
  peerVersionContext2 = [(KCPairingChannel *)self peerVersionContext];
  flowID = [peerVersionContext2 flowID];
  peerVersionContext3 = [(KCPairingChannel *)self peerVersionContext];
  deviceSessionID = [peerVersionContext3 deviceSessionID];
  LOBYTE(v14) = 1;
  v10 = [(AAFAnalyticsEventSecurity *)v3 initWithKeychainCircleMetrics:0 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:@"com.apple.security.initiatorWaitsForUpgrade" testsAreEnabled:metricsAreEnabled canSendMetrics:v14 category:&unk_2843768F0];

  otControl = [(KCPairingChannel *)self otControl];
  controlArguments = [(KCPairingChannel *)self controlArguments];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __41__KCPairingChannel_waitForOctagonUpgrade__block_invoke;
  v15[3] = &unk_278863298;
  v16 = v10;
  v13 = v10;
  [otControl waitForOctagonUpgrade:controlArguments reply:v15];
}

void __41__KCPairingChannel_waitForOctagonUpgrade__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_22EB09000, v4, OS_LOG_TYPE_DEFAULT, "pairing: failed to upgrade initiator into Octagon: %@", &v9, 0xCu);
    }

    v5 = *(a1 + 32);
    v6 = 0;
    v7 = v3;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = 1;
    v7 = 0;
  }

  [v5 sendMetricWithResult:v6 error:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setNextStateError:(id)error complete:(id)complete
{
  v15 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  completeCopy = complete;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__KCPairingChannel_setNextStateError_complete___block_invoke;
  v10[3] = &unk_278863270;
  objc_copyWeak(&v11, &location);
  [(KCPairingChannel *)self setNextState:v10];
  if (completeCopy)
  {
    if (errorCopy)
    {
      v8 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = errorCopy;
        _os_log_impl(&dword_22EB09000, v8, OS_LOG_TYPE_DEFAULT, "pairingchannel: failed pairing with: %@", buf, 0xCu);
      }
    }

    (*(completeCopy + 2))(completeCopy, 0, 0, errorCopy);
  }

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  v9 = *MEMORY[0x277D85DE8];
}

void __47__KCPairingChannel_setNextStateError_complete___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained oneStepTooMany:v6 complete:v5];
}

- (void)oneStepTooMany:(id)many complete:(id)complete
{
  completeCopy = complete;
  v5 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_22EB09000, v5, OS_LOG_TYPE_DEFAULT, "pairingchannel: one step too many", v7, 2u);
  }

  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:kKCPairingChannelErrorDomain code:2 userInfo:0];
  (*(completeCopy + 2))(completeCopy, 0, 0, v6);
}

void __44__KCPairingChannel_initAsInitiator_version___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained initiatorFirstPacket:v6 complete:v5];
}

void __44__KCPairingChannel_initAsInitiator_version___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained acceptorFirstPacket:v6 complete:v5];
}

+ (id)pairingChannelDecompressData:(id)data
{
  dataCopy = data;
  if (pairingChannelDecompressData__once != -1)
  {
    dispatch_once(&pairingChannelDecompressData__once, &__block_literal_global_214);
  }

  v4 = [dataCopy length];
  v5 = 0;
  while ((v4 & 0x8000000000000000) == 0)
  {
    v4 *= 2;
    v6 = [MEMORY[0x277CBEB28] dataWithLength:v4];

    v5 = v6;
    mutableBytes = [v6 mutableBytes];
    bytes = [dataCopy bytes];
    v9 = [dataCopy length];
    v10 = compression_decode_buffer(mutableBytes, v4, bytes, v9, [pairingChannelDecompressData__scratch mutableBytes], COMPRESSION_LZFSE);
    if (!v10)
    {
      break;
    }

    if (v10 != v4)
    {
      [v5 setLength:v10];
      v5 = v5;
      v11 = v5;
      goto LABEL_9;
    }
  }

  v11 = 0;
LABEL_9:

  return v11;
}

uint64_t __49__KCPairingChannel_pairingChannelDecompressData___block_invoke()
{
  pairingChannelDecompressData__scratch = [MEMORY[0x277CBEB28] dataWithLength:compression_decode_scratch_buffer_size(COMPRESSION_LZFSE)];

  return MEMORY[0x2821F96F8]();
}

+ (id)pairingChannelCompressData:(id)data
{
  dataCopy = data;
  if (pairingChannelCompressData__once != -1)
  {
    dispatch_once(&pairingChannelCompressData__once, &__block_literal_global);
  }

  v4 = [dataCopy length];
  if (v4 <= 0xFFFFFFFFFFFFFF9BLL)
  {
    v6 = [MEMORY[0x277CBEB28] dataWithLength:v4 + 100];
    mutableBytes = [v6 mutableBytes];
    v8 = [v6 length];
    bytes = [dataCopy bytes];
    v10 = [dataCopy length];
    v11 = compression_encode_buffer(mutableBytes, v8, bytes, v10, [pairingChannelCompressData__scratch mutableBytes], COMPRESSION_LZFSE);
    if (v11)
    {
      [v6 setLength:v11];
      v5 = v6;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __47__KCPairingChannel_pairingChannelCompressData___block_invoke()
{
  pairingChannelCompressData__scratch = [MEMORY[0x277CBEB28] dataWithLength:compression_encode_scratch_buffer_size(COMPRESSION_LZFSE)];

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)retryable:(id)retryable
{
  retryableCopy = retryable;
  domain = [retryableCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277CCA050]] && objc_msgSend(retryableCopy, "code") == 4097)
  {
    v5 = 1;
  }

  else
  {
    domain2 = [retryableCopy domain];
    if ([domain2 isEqualToString:*MEMORY[0x277CDBDA8]] && objc_msgSend(retryableCopy, "code") == 56 || +[KCPairingChannel _isRetryableNSURLError:](KCPairingChannel, "_isRetryableNSURLError:", retryableCopy))
    {
      v5 = 1;
    }

    else
    {
      userInfo = [retryableCopy userInfo];
      v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];
      v5 = [KCPairingChannel _isRetryableNSURLError:v8];
    }
  }

  return v5;
}

+ (BOOL)_isRetryableNSURLError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqualToString:*MEMORY[0x277CCA738]];

  if (v5)
  {
    code = [errorCopy code];
    if ((code + 1009) <= 8)
    {
      v7 = 0x111u >> (code - 15);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

+ (id)pairingChannelAcceptor:(id)acceptor
{
  acceptorCopy = acceptor;
  v4 = [[KCPairingChannel alloc] initAsInitiator:0 version:acceptorCopy];

  return v4;
}

+ (id)pairingChannelInitiator:(id)initiator
{
  initiatorCopy = initiator;
  v4 = [[KCPairingChannel alloc] initAsInitiator:1 version:initiatorCopy];

  return v4;
}

@end
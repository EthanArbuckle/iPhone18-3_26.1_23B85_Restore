@interface KCJoiningRequestCircleSession
+ (id)sessionWithCircleDelegate:(id)delegate session:(id)session altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID error:(id *)error;
+ (id)sessionWithCircleDelegate:(id)delegate session:(id)session error:(id *)error;
- (BOOL)shouldJoinSOS:(id)s pairingMessage:(id)message;
- (KCJoiningRequestCircleSession)initWithCircleDelegate:(id)delegate session:(id)session altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID error:(id *)error;
- (KCJoiningRequestCircleSession)initWithCircleDelegate:(id)delegate session:(id)session otcontrol:(id)otcontrol altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID error:(id *)error;
- (id)encryptPeerInfo:(id *)info;
- (id)encryptedInitialMessage:(id)message error:(id *)error;
- (id)encryptedPeerInfo:(id *)info;
- (id)handleCircleBlob:(id)blob error:(id *)error;
- (id)initialMessage:(id *)message;
- (id)processMessage:(id)message error:(id *)error;
- (void)setContextIDForSession:(id)session;
- (void)waitForOctagonUpgrade;
@end

@implementation KCJoiningRequestCircleSession

- (KCJoiningRequestCircleSession)initWithCircleDelegate:(id)delegate session:(id)session otcontrol:(id)otcontrol altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID error:(id *)error
{
  v46 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  sessionCopy = session;
  otcontrolCopy = otcontrol;
  otcontrolCopy2 = otcontrol;
  dCopy = d;
  obj = iD;
  iDCopy = iD;
  sessionIDCopy = sessionID;
  sessionIDCopy2 = sessionID;
  v20 = secLogObjForScope("joining");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    [sessionCopy pairingUUID];
    v21 = iDCopy;
    v22 = dCopy;
    v23 = otcontrolCopy2;
    v25 = v24 = delegateCopy;
    *buf = 138412290;
    v45 = v25;
    _os_log_impl(&dword_22EB09000, v20, OS_LOG_TYPE_DEFAULT, "joining: KCJoiningRequestCircleSession initWithCircleDelegate called, uuid=%@", buf, 0xCu);

    delegateCopy = v24;
    otcontrolCopy2 = v23;
    dCopy = v22;
    iDCopy = v21;
  }

  v43.receiver = self;
  v43.super_class = KCJoiningRequestCircleSession;
  v26 = [(KCJoiningRequestCircleSession *)&v43 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_circleDelegate, delegate);
    objc_storeStrong(&v27->_session, session);
    v27->_state = 0;
    objc_storeStrong(&v27->_altDSID, d);
    objc_storeStrong(&v27->_flowID, obj);
    objc_storeStrong(&v27->_deviceSessionID, sessionIDCopy);
    objc_storeStrong(&v27->_otControl, otcontrolCopy);
    v28 = objc_alloc(MEMORY[0x277CDBD68]);
    pairingUUID = [sessionCopy pairingUUID];
    v30 = [v28 initWithProtocolType:@"OctagonPiggybacking" uniqueDeviceID:@"requester-id" uniqueClientID:@"requester-id" pairingUUID:pairingUUID epoch:objc_msgSend(sessionCopy isInitiator:{"epoch"), 1}];
    joiningConfiguration = v27->_joiningConfiguration;
    v27->_joiningConfiguration = v30;

    v32 = objc_alloc(MEMORY[0x277CDBD60]);
    altDSID = [sessionCopy altDSID];
    v34 = [v32 initWithAltDSID:altDSID];
    controlArguments = v27->_controlArguments;
    v27->_controlArguments = v34;

    v27->_piggy_version = [sessionCopy piggybackingVersion];
  }

  v36 = *MEMORY[0x277D85DE8];
  return v27;
}

- (KCJoiningRequestCircleSession)initWithCircleDelegate:(id)delegate session:(id)session altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID error:(id *)error
{
  v11 = MEMORY[0x277CDBD58];
  sessionCopy = session;
  delegateCopy = delegate;
  v14 = [v11 controlObject:1 error:error];
  v15 = [(KCJoiningRequestCircleSession *)self initWithCircleDelegate:delegateCopy session:sessionCopy otcontrol:v14 altDSID:0 flowID:0 deviceSessionID:0 error:error];

  return v15;
}

- (id)processMessage:(id)message error:(id *)error
{
  messageCopy = message;
  v7 = secLogObjForScope("joining");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&dword_22EB09000, v7, OS_LOG_TYPE_DEFAULT, "joining: KCJoiningRequestCircleSession processMessage called", &v17, 2u);
  }

  v8 = [KCJoiningMessage messageWithDER:messageCopy error:error];

  if (v8)
  {
    state = [(KCJoiningRequestCircleSession *)self state];
    if (state == 1)
    {
      KCJoiningErrorCreate(6, error, @"Done, no messages expected.", v10, v11, v12, v13, v14, v17);
    }

    else if (!state)
    {
      v15 = [(KCJoiningRequestCircleSession *)self handleCircleBlob:v8 error:error];
      goto LABEL_9;
    }
  }

  v15 = 0;
LABEL_9:

  return v15;
}

- (id)handleCircleBlob:(id)blob error:(id *)error
{
  v96 = *MEMORY[0x277D85DE8];
  blobCopy = blob;
  v6 = secLogObjForScope("joining");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_22EB09000, v6, OS_LOG_TYPE_DEFAULT, "joining: KCJoiningRequestCircleSession handleCircleBlob called", &buf, 2u);
  }

  v7 = [AAFAnalyticsEventSecurity alloc];
  altDSID = [(KCJoiningRequestCircleSession *)self altDSID];
  flowID = [(KCJoiningRequestCircleSession *)self flowID];
  deviceSessionID = [(KCJoiningRequestCircleSession *)self deviceSessionID];
  LOBYTE(v72) = 1;
  v78 = [(AAFAnalyticsEventSecurity *)v7 initWithKeychainCircleMetrics:0 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:@"com.apple.security.piggybackingCircleInitiatorHandleCircleBlobMessage" testsAreEnabled:metricsAreEnabled canSendMetrics:v72 category:&unk_2843768F0];

  if ([blobCopy type] != 5)
  {
    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:54 description:@"Expected CircleBlob!"];
    [(AAFAnalyticsEventSecurity *)v78 sendMetricWithResult:0 error:v18];
    if (error)
    {
      v19 = v18;
      data = 0;
      *error = v18;
      goto LABEL_83;
    }

    goto LABEL_46;
  }

  if (-[KCJoiningRequestCircleSession piggy_version](self, "piggy_version") != 2 || ([blobCopy firstData], v11 = objc_claimAutoreleasedReturnValue(), v12 = v11 == 0, v11, v12))
  {
    if (!SOSCCIsSOSTrustAndSyncingEnabled())
    {
      v23 = secLogObjForScope("joining");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_22EB09000, v23, OS_LOG_TYPE_DEFAULT, "SOS not enabled for this platform", &buf, 2u);
      }

      v18 = 0;
      goto LABEL_29;
    }

    session = [(KCJoiningRequestCircleSession *)self session];
    firstData = [blobCopy firstData];
    v80 = 0;
    v23 = [session decryptAndVerify:firstData error:&v80];
    v18 = v80;

    if (!v23 || v18)
    {
      if (!v18)
      {
        v18 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:17 description:@"Failed to decrypt and verify circleBlob"];
      }

      v28 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v18;
        _os_log_impl(&dword_22EB09000, v28, OS_LOG_TYPE_DEFAULT, "joining: failed to decrypt and verify circle blob message failed %@", &buf, 0xCu);
      }

      [(AAFAnalyticsEventSecurity *)v78 sendMetricWithResult:0 error:v18];
    }

    else
    {
      circleDelegate = [(KCJoiningRequestCircleSession *)self circleDelegate];
      v79 = 0;
      v25 = [circleDelegate processCircleJoinData:v23 version:1 error:&v79];
      v18 = v79;

      if (v25)
      {
        v26 = secLogObjForScope("joining");
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_22EB09000, v26, OS_LOG_TYPE_DEFAULT, "joined the SOS circle!", &buf, 2u);
        }

        v27 = secLogObjForScope("joining");
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_22EB09000, v27, OS_LOG_TYPE_DEFAULT, "kicking off SOS Upgrade into Octagon!", &buf, 2u);
        }

        [(KCJoiningRequestCircleSession *)self waitForOctagonUpgrade];
LABEL_29:

        self->_state = 1;
        [(AAFAnalyticsEventSecurity *)v78 sendMetricWithResult:1 error:0];
        data = [MEMORY[0x277CBEA90] data];
        goto LABEL_83;
      }

      if (!v18)
      {
        v18 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:18 description:@"Failed to process circleBlob"];
      }

      v41 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v18;
        _os_log_impl(&dword_22EB09000, v41, OS_LOG_TYPE_DEFAULT, "joining: failed to process SOS circle: %@", &buf, 0xCu);
      }

      [(AAFAnalyticsEventSecurity *)v78 sendMetricWithResult:0 error:v18];
    }

    if (error)
    {
      v42 = v18;
      *error = v18;
    }

LABEL_46:
    data = 0;
    goto LABEL_83;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v92 = 0x3032000000;
  v93 = __Block_byref_object_copy__377;
  v94 = __Block_byref_object_dispose__378;
  v95 = 0;
  session2 = [(KCJoiningRequestCircleSession *)self session];
  firstData2 = [blobCopy firstData];
  v85 = 0;
  v15 = [session2 decryptAndVerify:firstData2 error:&v85];
  v75 = v85;

  if (!v15 || v75)
  {
    v29 = secLogObjForScope("joining");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v88) = 138412290;
      *(&v88 + 4) = v75;
      _os_log_impl(&dword_22EB09000, v29, OS_LOG_TYPE_DEFAULT, "failed to decrypt voucher packet, fall back to legacy path, error: %@", &v88, 0xCu);
    }

    v30 = [OTPairingMessage alloc];
    firstData3 = [blobCopy firstData];
    v76 = [(OTPairingMessage *)v30 initWithData:firstData3];

    *&v88 = 0;
    *(&v88 + 1) = &v88;
    v89 = 0x2020000000;
    v90 = 1;
    otControl = [(KCJoiningRequestCircleSession *)self otControl];
    controlArguments = [(KCJoiningRequestCircleSession *)self controlArguments];
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = __56__KCJoiningRequestCircleSession_handleCircleBlob_error___block_invoke;
    v84[3] = &unk_278863DC0;
    v84[4] = &v88;
    [otControl fetchEscrowRecords:controlArguments source:2 reply:v84];

    v74 = v15;
    v34 = [AAFAnalyticsEventSecurity alloc];
    v86 = @"totalViableEscrowRecords";
    v35 = [MEMORY[0x277CCABB0] numberWithBool:*(*(&v88 + 1) + 24)];
    v87 = v35;
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
    altDSID2 = [(KCJoiningRequestCircleSession *)self altDSID];
    flowID2 = [(KCJoiningRequestCircleSession *)self flowID];
    deviceSessionID2 = [(KCJoiningRequestCircleSession *)self deviceSessionID];
    LOBYTE(v73) = 1;
    v40 = [(AAFAnalyticsEventSecurity *)v34 initWithKeychainCircleMetrics:v36 altDSID:altDSID2 flowID:flowID2 deviceSessionID:deviceSessionID2 eventName:@"com.apple.security.acceptorPreVersion3Change" testsAreEnabled:metricsAreEnabled canSendMetrics:v73 category:&unk_2843768F0];

    [(AAFAnalyticsEventSecurity *)v40 sendMetricWithResult:1 error:0];
    v15 = v74;
    _Block_object_dispose(&v88, 8);
  }

  else
  {
    v76 = [[OTPairingMessage alloc] initWithData:v15];
    if (![(OTPairingMessage *)v76 hasVersion]|| [(OTPairingMessage *)v76 version]<= 2)
    {
      v16 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        version = [(OTPairingMessage *)v76 version];
        LODWORD(v88) = 134217984;
        *(&v88 + 4) = version;
        _os_log_impl(&dword_22EB09000, v16, OS_LOG_TYPE_DEFAULT, "joining: unexpected piggybacking version, received: %llu", &v88, 0xCu);
      }

      if (error)
      {
        *error = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:58 description:@"Unexpected piggybacking version"];
      }

      [(AAFAnalyticsEventSecurity *)v78 sendMetricWithResult:0 error:0];
      v18 = 0;
LABEL_58:
      data = 0;
      goto LABEL_82;
    }

    v43 = [AAFAnalyticsEventSecurity alloc];
    altDSID3 = [(KCJoiningRequestCircleSession *)self altDSID];
    flowID3 = [(KCJoiningRequestCircleSession *)self flowID];
    deviceSessionID3 = [(KCJoiningRequestCircleSession *)self deviceSessionID];
    LOBYTE(v73) = 1;
    v47 = [(AAFAnalyticsEventSecurity *)v43 initWithKeychainCircleMetrics:0 altDSID:altDSID3 flowID:flowID3 deviceSessionID:deviceSessionID3 eventName:@"com.apple.security.initiatorChannelSecured" testsAreEnabled:metricsAreEnabled canSendMetrics:v73 category:&unk_2843768F0];

    [(AAFAnalyticsEventSecurity *)v47 sendMetricWithResult:1 error:0];
  }

  if ([(OTPairingMessage *)v76 hasVoucher])
  {
    voucher = [(OTPairingMessage *)v76 voucher];
    otControl2 = [(KCJoiningRequestCircleSession *)self otControl];
    controlArguments2 = [(KCJoiningRequestCircleSession *)self controlArguments];
    joiningConfiguration = [(KCJoiningRequestCircleSession *)self joiningConfiguration];
    v48Voucher = [voucher voucher];
    voucherSignature = [voucher voucherSignature];
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __56__KCJoiningRequestCircleSession_handleCircleBlob_error___block_invoke_46;
    v83[3] = &unk_2788636C8;
    v83[4] = &buf;
    [otControl2 rpcJoinWithArguments:controlArguments2 configuration:joiningConfiguration vouchData:v48Voucher vouchSig:voucherSignature reply:v83];

    if (*(*(&buf + 1) + 40))
    {
      v54 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v55 = *(*(&buf + 1) + 40);
        LODWORD(v88) = 138412290;
        *(&v88 + 4) = v55;
        _os_log_impl(&dword_22EB09000, v54, OS_LOG_TYPE_DEFAULT, "joining: failed to join octagon: %@", &v88, 0xCu);
      }

      [(AAFAnalyticsEventSecurity *)v78 sendMetricWithResult:0 error:*(*(&buf + 1) + 40)];
      v56 = voucher;
      v57 = v15;
      if (error)
      {
        v18 = 0;
        data = 0;
        *error = 0;
LABEL_81:

        v15 = v57;
        goto LABEL_82;
      }

      v18 = 0;
LABEL_80:
      data = 0;
      goto LABEL_81;
    }

    if ([(KCJoiningRequestCircleSession *)self shouldJoinSOS:blobCopy pairingMessage:v76])
    {
      v60 = secLogObjForScope("joining");
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v88) = 0;
        _os_log_impl(&dword_22EB09000, v60, OS_LOG_TYPE_DEFAULT, "doing SOS processCircleJoinData", &v88, 2u);
      }

      session3 = [(KCJoiningRequestCircleSession *)self session];
      secondData = [blobCopy secondData];
      v82 = 0;
      v63 = [session3 decryptAndVerify:secondData error:&v82];
      v18 = v82;

      if (!v63 || v18)
      {
        if (!v18)
        {
          v18 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:55 description:@"Failed to decrypt and verify message"];
        }

        v67 = secLogObjForScope("joining");
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v88) = 138412290;
          *(&v88 + 4) = v18;
          _os_log_impl(&dword_22EB09000, v67, OS_LOG_TYPE_DEFAULT, "decryptAndVerify failed: %@", &v88, 0xCu);
        }

        [(AAFAnalyticsEventSecurity *)v78 sendMetricWithResult:0 error:v18];
      }

      else
      {
        circleDelegate2 = [(KCJoiningRequestCircleSession *)self circleDelegate];
        v81 = 0;
        v65 = [circleDelegate2 processCircleJoinData:v63 version:1 error:&v81];
        v66 = v81;

        if (v65)
        {

          v56 = voucher;
          v57 = v15;
          v18 = v66;
LABEL_68:
          self->_state = 1;
          data = [MEMORY[0x277CBEA90] data];
          self->_state = 1;
          [(AAFAnalyticsEventSecurity *)v78 sendMetricWithResult:1 error:0];
          goto LABEL_81;
        }

        v18 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:56 description:@"Failed to process circle join data"];

        v68 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v88) = 138412290;
          *(&v88 + 4) = v18;
          _os_log_impl(&dword_22EB09000, v68, OS_LOG_TYPE_DEFAULT, "joining: processCircleJoinData failed %@", &v88, 0xCu);
        }

        [(AAFAnalyticsEventSecurity *)v78 sendMetricWithResult:0 error:v18];
      }

      if (error)
      {
        v69 = v18;
        *error = v18;
      }

      v56 = voucher;
      v57 = v15;
      goto LABEL_80;
    }

    v56 = voucher;
    v57 = v15;
    v18 = 0;
    goto LABEL_68;
  }

  v58 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v88) = 0;
    _os_log_impl(&dword_22EB09000, v58, OS_LOG_TYPE_DEFAULT, "octagon: expected voucher! returning from piggybacking.", &v88, 2u);
  }

  v18 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:15 description:@"Missing voucher from acceptor"];
  [(AAFAnalyticsEventSecurity *)v78 sendMetricWithResult:0 error:v18];
  if (!error)
  {
    goto LABEL_58;
  }

  v59 = v18;
  data = 0;
  *error = v18;
LABEL_82:

  _Block_object_dispose(&buf, 8);
LABEL_83:

  v70 = *MEMORY[0x277D85DE8];

  return data;
}

uint64_t __56__KCJoiningRequestCircleSession_handleCircleBlob_error___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 count];
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  return result;
}

void __56__KCJoiningRequestCircleSession_handleCircleBlob_error___block_invoke_46(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_22EB09000, v4, OS_LOG_TYPE_DEFAULT, "octagon: error joining octagon: %@", &v9, 0xCu);
    }

    v5 = *(*(a1 + 32) + 8);
    v6 = v3;
    v7 = *(v5 + 40);
    *(v5 + 40) = v6;
  }

  else
  {
    v7 = secLogObjForScope("octagon");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_22EB09000, v7, OS_LOG_TYPE_DEFAULT, "successfully joined octagon", &v9, 2u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldJoinSOS:(id)s pairingMessage:(id)message
{
  sCopy = s;
  messageCopy = message;
  if ((SOSCCIsSOSTrustAndSyncingEnabled() & 1) == 0)
  {
    v10 = secLogObjForScope("joining");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 0;
      v11 = "platform does not support SOS";
      v12 = &v17;
      goto LABEL_12;
    }

LABEL_13:

    v13 = 0;
    goto LABEL_14;
  }

  secondData = [sCopy secondData];

  if (!secondData)
  {
    v10 = secLogObjForScope("joining");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "message does not contain SOS data";
      v12 = buf;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if ([messageCopy hasSupportsSOS])
  {
    supportsSOS = [messageCopy supportsSOS];
    supported = [supportsSOS supported];

    if (supported == 2)
    {
      v10 = secLogObjForScope("joining");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 0;
        v11 = "acceptor explicitly does not support SOS";
        v12 = &v15;
LABEL_12:
        _os_log_impl(&dword_22EB09000, v10, OS_LOG_TYPE_DEFAULT, v11, v12, 2u);
        goto LABEL_13;
      }

      goto LABEL_13;
    }
  }

  v13 = 1;
LABEL_14:

  return v13;
}

- (void)waitForOctagonUpgrade
{
  otControl = [(KCJoiningRequestCircleSession *)self otControl];
  controlArguments = [(KCJoiningRequestCircleSession *)self controlArguments];
  [otControl waitForOctagonUpgrade:controlArguments reply:&__block_literal_global_419];
}

void __54__KCJoiningRequestCircleSession_waitForOctagonUpgrade__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_impl(&dword_22EB09000, v3, OS_LOG_TYPE_DEFAULT, "pairing: failed to upgrade initiator into Octagon: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)initialMessage:(id *)message
{
  v78 = *MEMORY[0x277D85DE8];
  v5 = secLogObjForScope("joining");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_22EB09000, v5, OS_LOG_TYPE_DEFAULT, "joining: KCJoiningRequestCircleSession initialMessage called", &buf, 2u);
  }

  v6 = [AAFAnalyticsEventSecurity alloc];
  altDSID = [(KCJoiningRequestCircleSession *)self altDSID];
  flowID = [(KCJoiningRequestCircleSession *)self flowID];
  deviceSessionID = [(KCJoiningRequestCircleSession *)self deviceSessionID];
  LOBYTE(v58) = 1;
  v10 = [(AAFAnalyticsEventSecurity *)v6 initWithKeychainCircleMetrics:0 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:@"com.apple.security.piggybackingCircleInitiatorInitialMessage" testsAreEnabled:metricsAreEnabled canSendMetrics:v58 category:&unk_2843768F0];

  if ([(KCJoiningRequestCircleSession *)self piggy_version]!= 2)
  {
    if (!SOSCCIsSOSTrustAndSyncingEnabled())
    {
      v23 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_22EB09000, v23, OS_LOG_TYPE_DEFAULT, "joining: device does not support SOS nor piggybacking version 2", &buf, 2u);
      }

      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:14 description:@"device does not support SOS nor piggybacking version 2"];
      [(AAFAnalyticsEventSecurity *)v10 sendMetricWithResult:0 error:v20];
      if (message)
      {
        v24 = v20;
        v22 = 0;
        *message = v20;
      }

      else
      {
        v22 = 0;
      }

      goto LABEL_54;
    }

    v60 = 0;
    v18 = [(KCJoiningRequestCircleSession *)self encryptPeerInfo:&v60];
    v19 = v60;
    v20 = v19;
    if (!v18 || v19)
    {
      if (!v19)
      {
        v20 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:53 description:@"failed to encrypt peer info"];
      }

      v29 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v20;
        _os_log_impl(&dword_22EB09000, v29, OS_LOG_TYPE_DEFAULT, "joining: failed to create encrypted peer info: %@", &buf, 0xCu);
      }

      [(AAFAnalyticsEventSecurity *)v10 sendMetricWithResult:0 error:v20];
      if (!message)
      {
        v22 = 0;
        goto LABEL_53;
      }

      v30 = v20;
      v22 = 0;
    }

    else
    {
      self->_state = 0;
      v59 = 0;
      v21 = [KCJoiningMessage messageWithType:4 data:v18 error:&v59];
      v20 = v59;
      v22 = [v21 der];

      if (v22 && !v20)
      {
        [(AAFAnalyticsEventSecurity *)v10 sendMetricWithResult:1 error:0];
        v20 = 0;
LABEL_53:

LABEL_54:
        goto LABEL_71;
      }

      if (!v20)
      {
        v20 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:53 description:@"failed to initial peerinfo message"];
      }

      v35 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v20;
        _os_log_impl(&dword_22EB09000, v35, OS_LOG_TYPE_DEFAULT, "joining: initial message creation failed: %@", &buf, 0xCu);
      }

      [(AAFAnalyticsEventSecurity *)v10 sendMetricWithResult:0 error:v20];
      if (!message)
      {
        goto LABEL_53;
      }

      v36 = v20;
    }

    *message = v20;
    goto LABEL_53;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v74 = 0x3032000000;
  v75 = __Block_byref_object_copy__377;
  v76 = __Block_byref_object_dispose__378;
  v77 = 0;
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__377;
  v69 = __Block_byref_object_dispose__378;
  v70 = 0;
  joiningConfiguration = [(KCJoiningRequestCircleSession *)self joiningConfiguration];
  v12 = [joiningConfiguration epoch] == 0;

  if (!v12)
  {
    otControl = [(KCJoiningRequestCircleSession *)self otControl];
    controlArguments = [(KCJoiningRequestCircleSession *)self controlArguments];
    joiningConfiguration2 = [(KCJoiningRequestCircleSession *)self joiningConfiguration];
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __48__KCJoiningRequestCircleSession_initialMessage___block_invoke;
    v64[3] = &unk_278863680;
    v64[4] = self;
    v64[5] = &v65;
    v64[6] = &buf;
    [otControl rpcPrepareIdentityAsApplicantWithArguments:controlArguments configuration:joiningConfiguration2 reply:v64];

    if (v66[5])
    {
      v16 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v66[5];
        *v71 = 138412290;
        v72 = v17;
        _os_log_impl(&dword_22EB09000, v16, OS_LOG_TYPE_DEFAULT, "joining: failed to prepare identity: %@", v71, 0xCu);
      }

      if (message)
      {
        *message = v66[5];
      }

      [(AAFAnalyticsEventSecurity *)v10 sendMetricWithResult:0 error:v66[5]];
LABEL_25:
      v22 = 0;
      goto LABEL_70;
    }

    if (SOSCCIsSOSTrustAndSyncingEnabled())
    {
      v31 = v66 + 5;
      obj = v66[5];
      v32 = [(KCJoiningRequestCircleSession *)self encryptPeerInfo:&obj];
      objc_storeStrong(v31, obj);
      v33 = v66;
      v34 = v66[5];
      if (v32)
      {
        if (!v34)
        {
          goto LABEL_47;
        }
      }

      else if (!v34)
      {
        v48 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:13 description:@"failed to encrypt peer info"];
        v49 = v66[5];
        v66[5] = v48;
      }

      v50 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v51 = v66[5];
        *v71 = 138412290;
        v72 = v51;
        _os_log_impl(&dword_22EB09000, v50, OS_LOG_TYPE_DEFAULT, "joining: failed to create encrypted peer info: %@", v71, 0xCu);
      }

      [(AAFAnalyticsEventSecurity *)v10 sendMetricWithResult:0 error:v66[5]];
      v22 = 0;
      if (message)
      {
        *message = v66[5];
      }

      goto LABEL_69;
    }

    v37 = secLogObjForScope("joining");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *v71 = 0;
      _os_log_impl(&dword_22EB09000, v37, OS_LOG_TYPE_DEFAULT, "SOS not enabled, skipping peer info encryption", v71, 2u);
    }

    v32 = 0;
    v33 = v66;
LABEL_47:
    self->_state = 0;
    v38 = *(*(&buf + 1) + 40);
    v62 = v33[5];
    v39 = [(KCJoiningRequestCircleSession *)self encryptedInitialMessage:v38 error:&v62];
    objc_storeStrong(v33 + 5, v62);
    v41 = v66 + 5;
    v40 = v66[5];
    if (v39)
    {
      if (!v40)
      {
        v61 = 0;
        v42 = [KCJoiningMessage messageWithType:4 data:v39 payload:v32 error:&v61];
        objc_storeStrong(v41, v61);
        v22 = [v42 der];

        v43 = v66[5];
        if (v22)
        {
          if (!v43)
          {
            [(AAFAnalyticsEventSecurity *)v10 sendMetricWithResult:1 error:0];
LABEL_62:

LABEL_69:
            goto LABEL_70;
          }
        }

        else if (!v43)
        {
          v54 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:53 description:@"failed to create peerinfo response"];
          v55 = v66[5];
          v66[5] = v54;
        }

        v56 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          v57 = v66[5];
          *v71 = 138412290;
          v72 = v57;
          _os_log_impl(&dword_22EB09000, v56, OS_LOG_TYPE_DEFAULT, "joining: initial message creation failed: %@", v71, 0xCu);
        }

        [(AAFAnalyticsEventSecurity *)v10 sendMetricWithResult:0 error:v66[5]];
LABEL_60:
        if (message)
        {
          *message = v66[5];
        }

        goto LABEL_62;
      }
    }

    else if (!v40)
    {
      v44 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:52 description:@"failed to encrypt initial message"];
      v45 = v66[5];
      v66[5] = v44;
    }

    v46 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = v66[5];
      *v71 = 138412290;
      v72 = v47;
      _os_log_impl(&dword_22EB09000, v46, OS_LOG_TYPE_DEFAULT, "joining: failed to encrypt initial message: %@", v71, 0xCu);
    }

    [(AAFAnalyticsEventSecurity *)v10 sendMetricWithResult:0 error:v66[5]];
    v22 = 0;
    goto LABEL_60;
  }

  v25 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:11 description:@"expected acceptor epoch"];
  v26 = v66[5];
  v66[5] = v25;

  v27 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = v66[5];
    *v71 = 138412290;
    v72 = v28;
    _os_log_impl(&dword_22EB09000, v27, OS_LOG_TYPE_DEFAULT, "joining: expected acceptor epoch! returning nil. error: %@", v71, 0xCu);
  }

  [(AAFAnalyticsEventSecurity *)v10 sendMetricWithResult:0 error:v66[5]];
  if (!message)
  {
    goto LABEL_25;
  }

  v22 = 0;
  *message = v66[5];
LABEL_70:
  _Block_object_dispose(&v65, 8);

  _Block_object_dispose(&buf, 8);
LABEL_71:

  v52 = *MEMORY[0x277D85DE8];

  return v22;
}

void __48__KCJoiningRequestCircleSession_initialMessage___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v40 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (v18)
  {
    v19 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = v18;
      _os_log_impl(&dword_22EB09000, v19, OS_LOG_TYPE_DEFAULT, "joining: error preparing identity: %@", buf, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a7);
  }

  else
  {
    v20 = objc_alloc_init(OTPairingMessage);
    v21 = objc_alloc_init(OTSupportSOSMessage);
    [(OTPairingMessage *)v20 setSupportsSOS:v21];

    v22 = objc_alloc_init(OTSupportOctagonMessage);
    [(OTPairingMessage *)v20 setSupportsOctagon:v22];

    v23 = objc_alloc_init(OTApplicantToSponsorRound2M1);
    [(OTApplicantToSponsorRound2M1 *)v23 setPeerID:v13];
    [(OTApplicantToSponsorRound2M1 *)v23 setPermanentInfo:v14];
    [(OTApplicantToSponsorRound2M1 *)v23 setPermanentInfoSig:v15];
    [(OTApplicantToSponsorRound2M1 *)v23 setStableInfo:v16];
    [(OTApplicantToSponsorRound2M1 *)v23 setStableInfoSig:v17];
    [(OTPairingMessage *)v20 setPrepare:v23];
    if (SOSCCIsSOSTrustAndSyncingEnabled())
    {
      v24 = 1;
    }

    else
    {
      v24 = 2;
    }

    [(OTPairingMessage *)v20 supportsSOS];
    v25 = v17;
    v26 = v16;
    v27 = v15;
    v28 = v14;
    v30 = v29 = v13;
    [v30 setSupported:v24];

    v31 = [(OTPairingMessage *)v20 supportsOctagon];
    [v31 setSupported:1];

    v13 = v29;
    v14 = v28;
    v15 = v27;
    v16 = v26;
    v17 = v25;
    v18 = 0;
    v32 = [*(a1 + 32) piggybacking_version_for_tests];
    if (v32)
    {
      v33 = v32;
    }

    else
    {
      v33 = 3;
    }

    [(OTPairingMessage *)v20 setVersion:v33];
    v34 = [(OTPairingMessage *)v20 data];
    v35 = *(*(a1 + 48) + 8);
    v36 = *(v35 + 40);
    *(v35 + 40) = v34;
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (id)encryptPeerInfo:(id *)info
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = secLogObjForScope("joining");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22EB09000, v5, OS_LOG_TYPE_DEFAULT, "doing SOS encryptedPeerInfo", buf, 2u);
  }

  v20 = 0;
  v6 = [(KCJoiningRequestCircleSession *)self encryptedPeerInfo:&v20];
  v7 = v20;
  v8 = v7;
  if (v6 && !v7)
  {
    v9 = v6;
    goto LABEL_13;
  }

  v10 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v8;
    _os_log_impl(&dword_22EB09000, v10, OS_LOG_TYPE_DEFAULT, "joining: failed to create encrypted peerInfo: %@", buf, 0xCu);
  }

  if (v8)
  {
    if (info)
    {
      v16 = v8;
      v9 = 0;
      *info = v8;
      goto LABEL_13;
    }
  }

  else
  {
    KCJoiningErrorCreate(13, info, @"failed to encrypt the SOS peer info", v11, v12, v13, v14, v15, v19);
  }

  v9 = 0;
LABEL_13:

  v17 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)encryptedInitialMessage:(id)message error:(id *)error
{
  messageCopy = message;
  if (self->_session)
  {
    v12 = objc_alloc_init(KCInitialMessageData);
    [(KCInitialMessageData *)v12 setPrepareMessage:messageCopy];
    session = self->_session;
    data = [(KCInitialMessageData *)v12 data];
    v15 = [(KCAESGCMDuplexSession *)session encrypt:data error:error];
  }

  else
  {
    KCJoiningErrorCreate(7, error, @"Attempt to encrypt with no session", v6, v7, v8, v9, v10, v17);
    v15 = 0;
  }

  return v15;
}

- (id)encryptedPeerInfo:(id *)info
{
  if (!self->_session)
  {
    KCJoiningErrorCreate(7, info, @"Attempt to encrypt with no session", v3, v4, v5, v6, v7, v15);
    goto LABEL_6;
  }

  circleDelegate = [(KCJoiningRequestCircleSession *)self circleDelegate];
  v11 = [circleDelegate copyPeerInfoError:info];

  if (!v11)
  {
LABEL_6:
    v13 = 0;
    goto LABEL_10;
  }

  v12 = SOSPeerInfoCopyEncodedData();
  CFRelease(v11);
  if (v12)
  {
    v13 = [(KCAESGCMDuplexSession *)self->_session encrypt:v12 error:info];
  }

  else
  {
    v13 = 0;
    if (info)
    {
      *info = 0;
    }
  }

LABEL_10:

  return v13;
}

- (void)setContextIDForSession:(id)session
{
  v4 = MEMORY[0x277CDBD60];
  sessionCopy = session;
  v6 = [v4 alloc];
  controlArguments = [(KCJoiningRequestCircleSession *)self controlArguments];
  containerName = [controlArguments containerName];
  controlArguments2 = [(KCJoiningRequestCircleSession *)self controlArguments];
  altDSID = [controlArguments2 altDSID];
  v10 = [v6 initWithContainerName:containerName contextID:sessionCopy altDSID:altDSID];

  [(KCJoiningRequestCircleSession *)self setControlArguments:v10];
}

+ (id)sessionWithCircleDelegate:(id)delegate session:(id)session error:(id *)error
{
  sessionCopy = session;
  delegateCopy = delegate;
  v9 = [[KCJoiningRequestCircleSession alloc] initWithCircleDelegate:delegateCopy session:sessionCopy altDSID:0 flowID:0 deviceSessionID:0 error:error];

  return v9;
}

+ (id)sessionWithCircleDelegate:(id)delegate session:(id)session altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID error:(id *)error
{
  sessionIDCopy = sessionID;
  iDCopy = iD;
  dCopy = d;
  sessionCopy = session;
  delegateCopy = delegate;
  v18 = [[KCJoiningRequestCircleSession alloc] initWithCircleDelegate:delegateCopy session:sessionCopy altDSID:dCopy flowID:iDCopy deviceSessionID:sessionIDCopy error:error];

  return v18;
}

@end
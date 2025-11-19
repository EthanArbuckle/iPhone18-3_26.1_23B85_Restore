@interface KCJoiningRequestCircleSession
+ (id)sessionWithCircleDelegate:(id)a3 session:(id)a4 altDSID:(id)a5 flowID:(id)a6 deviceSessionID:(id)a7 error:(id *)a8;
+ (id)sessionWithCircleDelegate:(id)a3 session:(id)a4 error:(id *)a5;
- (BOOL)shouldJoinSOS:(id)a3 pairingMessage:(id)a4;
- (KCJoiningRequestCircleSession)initWithCircleDelegate:(id)a3 session:(id)a4 altDSID:(id)a5 flowID:(id)a6 deviceSessionID:(id)a7 error:(id *)a8;
- (KCJoiningRequestCircleSession)initWithCircleDelegate:(id)a3 session:(id)a4 otcontrol:(id)a5 altDSID:(id)a6 flowID:(id)a7 deviceSessionID:(id)a8 error:(id *)a9;
- (id)encryptPeerInfo:(id *)a3;
- (id)encryptedInitialMessage:(id)a3 error:(id *)a4;
- (id)encryptedPeerInfo:(id *)a3;
- (id)handleCircleBlob:(id)a3 error:(id *)a4;
- (id)initialMessage:(id *)a3;
- (id)processMessage:(id)a3 error:(id *)a4;
- (void)setContextIDForSession:(id)a3;
- (void)waitForOctagonUpgrade;
@end

@implementation KCJoiningRequestCircleSession

- (KCJoiningRequestCircleSession)initWithCircleDelegate:(id)a3 session:(id)a4 otcontrol:(id)a5 altDSID:(id)a6 flowID:(id)a7 deviceSessionID:(id)a8 error:(id *)a9
{
  v46 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v40 = a5;
  v17 = a5;
  v18 = a6;
  obj = a7;
  v19 = a7;
  v39 = a8;
  v42 = a8;
  v20 = secLogObjForScope("joining");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    [v16 pairingUUID];
    v21 = v19;
    v22 = v18;
    v23 = v17;
    v25 = v24 = v15;
    *buf = 138412290;
    v45 = v25;
    _os_log_impl(&dword_22EB09000, v20, OS_LOG_TYPE_DEFAULT, "joining: KCJoiningRequestCircleSession initWithCircleDelegate called, uuid=%@", buf, 0xCu);

    v15 = v24;
    v17 = v23;
    v18 = v22;
    v19 = v21;
  }

  v43.receiver = self;
  v43.super_class = KCJoiningRequestCircleSession;
  v26 = [(KCJoiningRequestCircleSession *)&v43 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_circleDelegate, a3);
    objc_storeStrong(&v27->_session, a4);
    v27->_state = 0;
    objc_storeStrong(&v27->_altDSID, a6);
    objc_storeStrong(&v27->_flowID, obj);
    objc_storeStrong(&v27->_deviceSessionID, v39);
    objc_storeStrong(&v27->_otControl, v40);
    v28 = objc_alloc(MEMORY[0x277CDBD68]);
    v29 = [v16 pairingUUID];
    v30 = [v28 initWithProtocolType:@"OctagonPiggybacking" uniqueDeviceID:@"requester-id" uniqueClientID:@"requester-id" pairingUUID:v29 epoch:objc_msgSend(v16 isInitiator:{"epoch"), 1}];
    joiningConfiguration = v27->_joiningConfiguration;
    v27->_joiningConfiguration = v30;

    v32 = objc_alloc(MEMORY[0x277CDBD60]);
    v33 = [v16 altDSID];
    v34 = [v32 initWithAltDSID:v33];
    controlArguments = v27->_controlArguments;
    v27->_controlArguments = v34;

    v27->_piggy_version = [v16 piggybackingVersion];
  }

  v36 = *MEMORY[0x277D85DE8];
  return v27;
}

- (KCJoiningRequestCircleSession)initWithCircleDelegate:(id)a3 session:(id)a4 altDSID:(id)a5 flowID:(id)a6 deviceSessionID:(id)a7 error:(id *)a8
{
  v11 = MEMORY[0x277CDBD58];
  v12 = a4;
  v13 = a3;
  v14 = [v11 controlObject:1 error:a8];
  v15 = [(KCJoiningRequestCircleSession *)self initWithCircleDelegate:v13 session:v12 otcontrol:v14 altDSID:0 flowID:0 deviceSessionID:0 error:a8];

  return v15;
}

- (id)processMessage:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = secLogObjForScope("joining");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&dword_22EB09000, v7, OS_LOG_TYPE_DEFAULT, "joining: KCJoiningRequestCircleSession processMessage called", &v17, 2u);
  }

  v8 = [KCJoiningMessage messageWithDER:v6 error:a4];

  if (v8)
  {
    v9 = [(KCJoiningRequestCircleSession *)self state];
    if (v9 == 1)
    {
      KCJoiningErrorCreate(6, a4, @"Done, no messages expected.", v10, v11, v12, v13, v14, v17);
    }

    else if (!v9)
    {
      v15 = [(KCJoiningRequestCircleSession *)self handleCircleBlob:v8 error:a4];
      goto LABEL_9;
    }
  }

  v15 = 0;
LABEL_9:

  return v15;
}

- (id)handleCircleBlob:(id)a3 error:(id *)a4
{
  v96 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = secLogObjForScope("joining");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_22EB09000, v6, OS_LOG_TYPE_DEFAULT, "joining: KCJoiningRequestCircleSession handleCircleBlob called", &buf, 2u);
  }

  v7 = [AAFAnalyticsEventSecurity alloc];
  v8 = [(KCJoiningRequestCircleSession *)self altDSID];
  v9 = [(KCJoiningRequestCircleSession *)self flowID];
  v10 = [(KCJoiningRequestCircleSession *)self deviceSessionID];
  LOBYTE(v72) = 1;
  v78 = [(AAFAnalyticsEventSecurity *)v7 initWithKeychainCircleMetrics:0 altDSID:v8 flowID:v9 deviceSessionID:v10 eventName:@"com.apple.security.piggybackingCircleInitiatorHandleCircleBlobMessage" testsAreEnabled:metricsAreEnabled canSendMetrics:v72 category:&unk_2843768F0];

  if ([v5 type] != 5)
  {
    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:54 description:@"Expected CircleBlob!"];
    [(AAFAnalyticsEventSecurity *)v78 sendMetricWithResult:0 error:v18];
    if (a4)
    {
      v19 = v18;
      v20 = 0;
      *a4 = v18;
      goto LABEL_83;
    }

    goto LABEL_46;
  }

  if (-[KCJoiningRequestCircleSession piggy_version](self, "piggy_version") != 2 || ([v5 firstData], v11 = objc_claimAutoreleasedReturnValue(), v12 = v11 == 0, v11, v12))
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

    v21 = [(KCJoiningRequestCircleSession *)self session];
    v22 = [v5 firstData];
    v80 = 0;
    v23 = [v21 decryptAndVerify:v22 error:&v80];
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
      v24 = [(KCJoiningRequestCircleSession *)self circleDelegate];
      v79 = 0;
      v25 = [v24 processCircleJoinData:v23 version:1 error:&v79];
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
        v20 = [MEMORY[0x277CBEA90] data];
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

    if (a4)
    {
      v42 = v18;
      *a4 = v18;
    }

LABEL_46:
    v20 = 0;
    goto LABEL_83;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v92 = 0x3032000000;
  v93 = __Block_byref_object_copy__377;
  v94 = __Block_byref_object_dispose__378;
  v95 = 0;
  v13 = [(KCJoiningRequestCircleSession *)self session];
  v14 = [v5 firstData];
  v85 = 0;
  v15 = [v13 decryptAndVerify:v14 error:&v85];
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
    v31 = [v5 firstData];
    v76 = [(OTPairingMessage *)v30 initWithData:v31];

    *&v88 = 0;
    *(&v88 + 1) = &v88;
    v89 = 0x2020000000;
    v90 = 1;
    v32 = [(KCJoiningRequestCircleSession *)self otControl];
    v33 = [(KCJoiningRequestCircleSession *)self controlArguments];
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = __56__KCJoiningRequestCircleSession_handleCircleBlob_error___block_invoke;
    v84[3] = &unk_278863DC0;
    v84[4] = &v88;
    [v32 fetchEscrowRecords:v33 source:2 reply:v84];

    v74 = v15;
    v34 = [AAFAnalyticsEventSecurity alloc];
    v86 = @"totalViableEscrowRecords";
    v35 = [MEMORY[0x277CCABB0] numberWithBool:*(*(&v88 + 1) + 24)];
    v87 = v35;
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
    v37 = [(KCJoiningRequestCircleSession *)self altDSID];
    v38 = [(KCJoiningRequestCircleSession *)self flowID];
    v39 = [(KCJoiningRequestCircleSession *)self deviceSessionID];
    LOBYTE(v73) = 1;
    v40 = [(AAFAnalyticsEventSecurity *)v34 initWithKeychainCircleMetrics:v36 altDSID:v37 flowID:v38 deviceSessionID:v39 eventName:@"com.apple.security.acceptorPreVersion3Change" testsAreEnabled:metricsAreEnabled canSendMetrics:v73 category:&unk_2843768F0];

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
        v17 = [(OTPairingMessage *)v76 version];
        LODWORD(v88) = 134217984;
        *(&v88 + 4) = v17;
        _os_log_impl(&dword_22EB09000, v16, OS_LOG_TYPE_DEFAULT, "joining: unexpected piggybacking version, received: %llu", &v88, 0xCu);
      }

      if (a4)
      {
        *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:58 description:@"Unexpected piggybacking version"];
      }

      [(AAFAnalyticsEventSecurity *)v78 sendMetricWithResult:0 error:0];
      v18 = 0;
LABEL_58:
      v20 = 0;
      goto LABEL_82;
    }

    v43 = [AAFAnalyticsEventSecurity alloc];
    v44 = [(KCJoiningRequestCircleSession *)self altDSID];
    v45 = [(KCJoiningRequestCircleSession *)self flowID];
    v46 = [(KCJoiningRequestCircleSession *)self deviceSessionID];
    LOBYTE(v73) = 1;
    v47 = [(AAFAnalyticsEventSecurity *)v43 initWithKeychainCircleMetrics:0 altDSID:v44 flowID:v45 deviceSessionID:v46 eventName:@"com.apple.security.initiatorChannelSecured" testsAreEnabled:metricsAreEnabled canSendMetrics:v73 category:&unk_2843768F0];

    [(AAFAnalyticsEventSecurity *)v47 sendMetricWithResult:1 error:0];
  }

  if ([(OTPairingMessage *)v76 hasVoucher])
  {
    v48 = [(OTPairingMessage *)v76 voucher];
    v49 = [(KCJoiningRequestCircleSession *)self otControl];
    v50 = [(KCJoiningRequestCircleSession *)self controlArguments];
    v51 = [(KCJoiningRequestCircleSession *)self joiningConfiguration];
    v52 = [v48 voucher];
    v53 = [v48 voucherSignature];
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __56__KCJoiningRequestCircleSession_handleCircleBlob_error___block_invoke_46;
    v83[3] = &unk_2788636C8;
    v83[4] = &buf;
    [v49 rpcJoinWithArguments:v50 configuration:v51 vouchData:v52 vouchSig:v53 reply:v83];

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
      v56 = v48;
      v57 = v15;
      if (a4)
      {
        v18 = 0;
        v20 = 0;
        *a4 = 0;
LABEL_81:

        v15 = v57;
        goto LABEL_82;
      }

      v18 = 0;
LABEL_80:
      v20 = 0;
      goto LABEL_81;
    }

    if ([(KCJoiningRequestCircleSession *)self shouldJoinSOS:v5 pairingMessage:v76])
    {
      v60 = secLogObjForScope("joining");
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v88) = 0;
        _os_log_impl(&dword_22EB09000, v60, OS_LOG_TYPE_DEFAULT, "doing SOS processCircleJoinData", &v88, 2u);
      }

      v61 = [(KCJoiningRequestCircleSession *)self session];
      v62 = [v5 secondData];
      v82 = 0;
      v63 = [v61 decryptAndVerify:v62 error:&v82];
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
        v64 = [(KCJoiningRequestCircleSession *)self circleDelegate];
        v81 = 0;
        v65 = [v64 processCircleJoinData:v63 version:1 error:&v81];
        v66 = v81;

        if (v65)
        {

          v56 = v48;
          v57 = v15;
          v18 = v66;
LABEL_68:
          self->_state = 1;
          v20 = [MEMORY[0x277CBEA90] data];
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

      if (a4)
      {
        v69 = v18;
        *a4 = v18;
      }

      v56 = v48;
      v57 = v15;
      goto LABEL_80;
    }

    v56 = v48;
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
  if (!a4)
  {
    goto LABEL_58;
  }

  v59 = v18;
  v20 = 0;
  *a4 = v18;
LABEL_82:

  _Block_object_dispose(&buf, 8);
LABEL_83:

  v70 = *MEMORY[0x277D85DE8];

  return v20;
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

- (BOOL)shouldJoinSOS:(id)a3 pairingMessage:(id)a4
{
  v5 = a3;
  v6 = a4;
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

  v7 = [v5 secondData];

  if (!v7)
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

  if ([v6 hasSupportsSOS])
  {
    v8 = [v6 supportsSOS];
    v9 = [v8 supported];

    if (v9 == 2)
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
  v4 = [(KCJoiningRequestCircleSession *)self otControl];
  v3 = [(KCJoiningRequestCircleSession *)self controlArguments];
  [v4 waitForOctagonUpgrade:v3 reply:&__block_literal_global_419];
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

- (id)initialMessage:(id *)a3
{
  v78 = *MEMORY[0x277D85DE8];
  v5 = secLogObjForScope("joining");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_22EB09000, v5, OS_LOG_TYPE_DEFAULT, "joining: KCJoiningRequestCircleSession initialMessage called", &buf, 2u);
  }

  v6 = [AAFAnalyticsEventSecurity alloc];
  v7 = [(KCJoiningRequestCircleSession *)self altDSID];
  v8 = [(KCJoiningRequestCircleSession *)self flowID];
  v9 = [(KCJoiningRequestCircleSession *)self deviceSessionID];
  LOBYTE(v58) = 1;
  v10 = [(AAFAnalyticsEventSecurity *)v6 initWithKeychainCircleMetrics:0 altDSID:v7 flowID:v8 deviceSessionID:v9 eventName:@"com.apple.security.piggybackingCircleInitiatorInitialMessage" testsAreEnabled:metricsAreEnabled canSendMetrics:v58 category:&unk_2843768F0];

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
      if (a3)
      {
        v24 = v20;
        v22 = 0;
        *a3 = v20;
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
      if (!a3)
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
      if (!a3)
      {
        goto LABEL_53;
      }

      v36 = v20;
    }

    *a3 = v20;
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
  v11 = [(KCJoiningRequestCircleSession *)self joiningConfiguration];
  v12 = [v11 epoch] == 0;

  if (!v12)
  {
    v13 = [(KCJoiningRequestCircleSession *)self otControl];
    v14 = [(KCJoiningRequestCircleSession *)self controlArguments];
    v15 = [(KCJoiningRequestCircleSession *)self joiningConfiguration];
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __48__KCJoiningRequestCircleSession_initialMessage___block_invoke;
    v64[3] = &unk_278863680;
    v64[4] = self;
    v64[5] = &v65;
    v64[6] = &buf;
    [v13 rpcPrepareIdentityAsApplicantWithArguments:v14 configuration:v15 reply:v64];

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

      if (a3)
      {
        *a3 = v66[5];
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
      if (a3)
      {
        *a3 = v66[5];
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
        if (a3)
        {
          *a3 = v66[5];
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
  if (!a3)
  {
    goto LABEL_25;
  }

  v22 = 0;
  *a3 = v66[5];
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

- (id)encryptPeerInfo:(id *)a3
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
    if (a3)
    {
      v16 = v8;
      v9 = 0;
      *a3 = v8;
      goto LABEL_13;
    }
  }

  else
  {
    KCJoiningErrorCreate(13, a3, @"failed to encrypt the SOS peer info", v11, v12, v13, v14, v15, v19);
  }

  v9 = 0;
LABEL_13:

  v17 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)encryptedInitialMessage:(id)a3 error:(id *)a4
{
  v11 = a3;
  if (self->_session)
  {
    v12 = objc_alloc_init(KCInitialMessageData);
    [(KCInitialMessageData *)v12 setPrepareMessage:v11];
    session = self->_session;
    v14 = [(KCInitialMessageData *)v12 data];
    v15 = [(KCAESGCMDuplexSession *)session encrypt:v14 error:a4];
  }

  else
  {
    KCJoiningErrorCreate(7, a4, @"Attempt to encrypt with no session", v6, v7, v8, v9, v10, v17);
    v15 = 0;
  }

  return v15;
}

- (id)encryptedPeerInfo:(id *)a3
{
  if (!self->_session)
  {
    KCJoiningErrorCreate(7, a3, @"Attempt to encrypt with no session", v3, v4, v5, v6, v7, v15);
    goto LABEL_6;
  }

  v10 = [(KCJoiningRequestCircleSession *)self circleDelegate];
  v11 = [v10 copyPeerInfoError:a3];

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
    v13 = [(KCAESGCMDuplexSession *)self->_session encrypt:v12 error:a3];
  }

  else
  {
    v13 = 0;
    if (a3)
    {
      *a3 = 0;
    }
  }

LABEL_10:

  return v13;
}

- (void)setContextIDForSession:(id)a3
{
  v4 = MEMORY[0x277CDBD60];
  v5 = a3;
  v6 = [v4 alloc];
  v11 = [(KCJoiningRequestCircleSession *)self controlArguments];
  v7 = [v11 containerName];
  v8 = [(KCJoiningRequestCircleSession *)self controlArguments];
  v9 = [v8 altDSID];
  v10 = [v6 initWithContainerName:v7 contextID:v5 altDSID:v9];

  [(KCJoiningRequestCircleSession *)self setControlArguments:v10];
}

+ (id)sessionWithCircleDelegate:(id)a3 session:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[KCJoiningRequestCircleSession alloc] initWithCircleDelegate:v8 session:v7 altDSID:0 flowID:0 deviceSessionID:0 error:a5];

  return v9;
}

+ (id)sessionWithCircleDelegate:(id)a3 session:(id)a4 altDSID:(id)a5 flowID:(id)a6 deviceSessionID:(id)a7 error:(id *)a8
{
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [[KCJoiningRequestCircleSession alloc] initWithCircleDelegate:v17 session:v16 altDSID:v15 flowID:v14 deviceSessionID:v13 error:a8];

  return v18;
}

@end
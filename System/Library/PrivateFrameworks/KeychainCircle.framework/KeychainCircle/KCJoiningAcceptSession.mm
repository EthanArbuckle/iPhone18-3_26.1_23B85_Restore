@interface KCJoiningAcceptSession
+ (id)sessionWithInitialMessage:(id)message secretDelegate:(id)delegate circleDelegate:(id)circleDelegate dsid:(unint64_t)dsid altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID error:(id *)self0;
+ (id)sessionWithInitialMessage:(id)message secretDelegate:(id)delegate circleDelegate:(id)circleDelegate dsid:(unint64_t)dsid error:(id *)error;
- (BOOL)setupSession:(id *)session;
- (BOOL)shouldAcceptOctagonRequests;
- (BOOL)shouldProcessSOSApplication:(id)application pairingMessage:(id)message;
- (KCJoiningAcceptCircleDelegate)circleDelegate;
- (KCJoiningAcceptSecretDelegate)secretDelegate;
- (KCJoiningAcceptSession)initWithSecretDelegate:(id)delegate circleDelegate:(id)circleDelegate dsid:(unint64_t)dsid altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID rng:(ccrng_state *)rng error:(id *)self0;
- (id)copyChallengeMessage:(id *)message;
- (id)createPairingMessageFromJoiningMessage:(id)message error:(id *)error;
- (id)createTLKRequestResponse:(id *)response;
- (id)description;
- (id)processApplication:(id)application error:(id *)error;
- (id)processInitialMessage:(id)message error:(id *)error;
- (id)processMessage:(id)message error:(id *)error;
- (id)processResponse:(id)response error:(id *)error;
- (id)processSOSApplication:(id)application error:(id *)error;
- (id)stateString;
@end

@implementation KCJoiningAcceptSession

- (KCJoiningAcceptCircleDelegate)circleDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_circleDelegate);

  return WeakRetained;
}

- (KCJoiningAcceptSecretDelegate)secretDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_secretDelegate);

  return WeakRetained;
}

- (id)processMessage:(id)message error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v7 = secLogObjForScope("acceptor");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(KCJoiningAcceptSession *)self description];
    *v20 = 138412290;
    *&v20[4] = v8;
    _os_log_impl(&dword_22EB09000, v7, OS_LOG_TYPE_DEFAULT, "processMessages: %@", v20, 0xCu);
  }

  if ([(KCJoiningAcceptSession *)self state])
  {
    v9 = [KCJoiningMessage messageWithDER:messageCopy error:error];
  }

  else
  {
    v9 = 0;
  }

  state = [(KCJoiningAcceptSession *)self state];
  v16 = 0;
  if (state > 1)
  {
    if (state == 2)
    {
      if (v9)
      {
        v17 = [(KCJoiningAcceptSession *)self processApplication:v9 error:error];
        goto LABEL_17;
      }
    }

    else
    {
      if (state != 3)
      {
        goto LABEL_19;
      }

      KCJoiningErrorCreate(6, error, @"Unexpected message while done", v11, v12, v13, v14, v15, *v20);
    }
  }

  else
  {
    if (!state)
    {
      v17 = [(KCJoiningAcceptSession *)self processInitialMessage:messageCopy error:error];
      goto LABEL_17;
    }

    if (state != 1)
    {
      goto LABEL_19;
    }

    if (v9)
    {
      v17 = [(KCJoiningAcceptSession *)self processResponse:v9 error:error];
LABEL_17:
      v16 = v17;
      goto LABEL_19;
    }
  }

  v16 = 0;
LABEL_19:

  v18 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)processApplication:(id)application error:(id *)error
{
  v102 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  v6 = [AAFAnalyticsEventSecurity alloc];
  altDSID = [(KCJoiningAcceptSession *)self altDSID];
  flowID = [(KCJoiningAcceptSession *)self flowID];
  deviceSessionID = [(KCJoiningAcceptSession *)self deviceSessionID];
  LOBYTE(v66) = 1;
  v10 = [(AAFAnalyticsEventSecurity *)v6 initWithKeychainCircleMetrics:0 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:@"com.apple.security.piggybackingAcceptorProcessApplication" testsAreEnabled:metricsAreEnabled canSendMetrics:v66 category:&unk_2843768F0];

  if ([applicationCopy type] != 6)
  {
    if ([applicationCopy type] == 4)
    {
      if ([(KCJoiningAcceptSession *)self piggy_version]== 2)
      {
        *&buf = 0;
        *(&buf + 1) = &buf;
        v98 = 0x3032000000;
        v99 = __Block_byref_object_copy__915;
        v100 = __Block_byref_object_dispose__916;
        v101 = 0;
        v85 = 0;
        v86 = &v85;
        v87 = 0x3032000000;
        v88 = __Block_byref_object_copy__915;
        v89 = __Block_byref_object_dispose__916;
        v90 = 0;
        v84 = 0;
        v75 = [(KCJoiningAcceptSession *)self createPairingMessageFromJoiningMessage:applicationCopy error:&v84];
        v13 = v84;
        if (!v75 || v13)
        {
          if (!v13)
          {
            v13 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:46 description:@"Failed to create pairing message from JoiningMessage"];
          }

          v23 = secLogObjForScope("SecError");
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v94) = 138412290;
            *(&v94 + 4) = v13;
            _os_log_impl(&dword_22EB09000, v23, OS_LOG_TYPE_DEFAULT, "octagon, failed to create pairing message from JoiningMessage: %@", &v94, 0xCu);
          }

          [(AAFAnalyticsEventSecurity *)v10 sendMetricWithResult:0 error:v13];
        }

        else
        {
          if ([v75 hasPrepare])
          {
            prepare = [v75 prepare];
            if ([v75 hasVersion] && objc_msgSend(v75, "version") > 2)
            {
              v69 = 1;
            }

            else
            {
              *&v94 = 0;
              *(&v94 + 1) = &v94;
              v95 = 0x2020000000;
              v96 = 1;
              otControl = [(KCJoiningAcceptSession *)self otControl];
              controlArguments = [(KCJoiningAcceptSession *)self controlArguments];
              v83[0] = MEMORY[0x277D85DD0];
              v83[1] = 3221225472;
              v83[2] = __51__KCJoiningAcceptSession_processApplication_error___block_invoke;
              v83[3] = &unk_278863DC0;
              v83[4] = &v94;
              [otControl fetchEscrowRecords:controlArguments source:2 reply:v83];

              v28 = [AAFAnalyticsEventSecurity alloc];
              v92 = @"totalViableEscrowRecords";
              v72 = [MEMORY[0x277CCABB0] numberWithBool:*(*(&v94 + 1) + 24)];
              v93 = v72;
              v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
              altDSID2 = [(KCJoiningAcceptSession *)self altDSID];
              flowID2 = [(KCJoiningAcceptSession *)self flowID];
              deviceSessionID2 = [(KCJoiningAcceptSession *)self deviceSessionID];
              LOBYTE(v67) = 1;
              v33 = [(AAFAnalyticsEventSecurity *)v28 initWithKeychainCircleMetrics:v29 altDSID:altDSID2 flowID:flowID2 deviceSessionID:deviceSessionID2 eventName:@"com.apple.security.initiatorPreVersion3Change" testsAreEnabled:metricsAreEnabled canSendMetrics:v67 category:&unk_2843768F0];

              [(AAFAnalyticsEventSecurity *)v33 sendMetricWithResult:1 error:0];
              _Block_object_dispose(&v94, 8);
              v69 = 0;
            }

            v34 = @"full";
            otControl2 = [(KCJoiningAcceptSession *)self otControl];
            controlArguments2 = [(KCJoiningAcceptSession *)self controlArguments];
            joiningConfiguration = [(KCJoiningAcceptSession *)self joiningConfiguration];
            peerID = [prepare peerID];
            permanentInfo = [prepare permanentInfo];
            permanentInfoSig = [prepare permanentInfoSig];
            stableInfo = [prepare stableInfo];
            stableInfoSig = [prepare stableInfoSig];
            v82[0] = MEMORY[0x277D85DD0];
            v82[1] = 3221225472;
            v82[2] = __51__KCJoiningAcceptSession_processApplication_error___block_invoke_2;
            v82[3] = &unk_278863E00;
            v82[4] = self;
            v82[5] = &v85;
            v82[6] = &buf;
            [otControl2 rpcVoucherWithArguments:controlArguments2 configuration:joiningConfiguration peerID:peerID permanentInfo:permanentInfo permanentInfoSig:permanentInfoSig stableInfo:stableInfo stableInfoSig:stableInfoSig maxCapability:@"full" reply:v82];

            v40 = v86[5];
            if (*(*(&buf + 1) + 40))
            {
              if (!v40)
              {
                if ([(KCJoiningAcceptSession *)self shouldProcessSOSApplication:applicationCopy pairingMessage:v75])
                {
                  v41 = secLogObjForScope("joining");
                  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                  {
                    LOWORD(v94) = 0;
                    _os_log_impl(&dword_22EB09000, v41, OS_LOG_TYPE_DEFAULT, "doing SOS processSOSApplication", &v94, 2u);
                  }

                  secondData = [applicationCopy secondData];
                  v81 = 0;
                  v43 = [(KCJoiningAcceptSession *)self processSOSApplication:secondData error:&v81];
                  v13 = v81;

                  if (!v43 || v13)
                  {
                    if (!v13)
                    {
                      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:9 description:@"message failed to process application"];
                    }

                    v44 = secLogObjForScope("SecError");
                    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                    {
                      LODWORD(v94) = 138412290;
                      *(&v94 + 4) = v13;
                      _os_log_impl(&dword_22EB09000, v44, OS_LOG_TYPE_DEFAULT, "joining: failed to process SOS application: %@", &v94, 0xCu);
                    }

                    [(AAFAnalyticsEventSecurity *)v10 sendMetricWithResult:0 error:v13];
                    if (error)
                    {
                      v45 = v13;
                      v11 = 0;
                      *error = v13;
                    }

                    else
                    {
                      v11 = 0;
                    }

                    goto LABEL_98;
                  }
                }

                else
                {
                  v43 = 0;
                }

                if (v69 && ![(KCJoiningAcceptSession *)self piggybacking_version_for_tests])
                {
                  session = [(KCJoiningAcceptSession *)self session];
                  v54 = *(*(&buf + 1) + 40);
                  v80 = 0;
                  v49 = [session encrypt:v54 error:&v80];
                  v55 = v80;

                  if (!v49 || v55)
                  {
                    v61 = secLogObjForScope("SecError");
                    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
                    {
                      LODWORD(v94) = 138412290;
                      *(&v94 + 4) = v55;
                      _os_log_impl(&dword_22EB09000, v61, OS_LOG_TYPE_DEFAULT, "joining: failed to encrypt voucher payload: %@", &v94, 0xCu);
                    }

                    if (error)
                    {
                      if (v55)
                      {
                        v62 = v55;
                        v63 = v55;
                      }

                      else
                      {
                        v63 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:57 description:@"failed to encrypt the voucher"];
                      }

                      *error = v63;
                    }

                    [(AAFAnalyticsEventSecurity *)v10 sendMetricWithResult:0 error:0];

                    v13 = 0;
                    v11 = 0;
                    goto LABEL_97;
                  }

                  v56 = [AAFAnalyticsEventSecurity alloc];
                  altDSID3 = [(KCJoiningAcceptSession *)self altDSID];
                  flowID3 = [(KCJoiningAcceptSession *)self flowID];
                  deviceSessionID3 = [(KCJoiningAcceptSession *)self deviceSessionID];
                  LOBYTE(v68) = 1;
                  v60 = [(AAFAnalyticsEventSecurity *)v56 initWithKeychainCircleMetrics:0 altDSID:altDSID3 flowID:flowID3 deviceSessionID:deviceSessionID3 eventName:@"com.apple.security.acceptorChannelSecured" testsAreEnabled:metricsAreEnabled canSendMetrics:v68 category:&unk_2843768F0];

                  [(AAFAnalyticsEventSecurity *)v60 sendMetricWithResult:1 error:0];
                  self->_state = 3;
                  v50 = v49;
                }

                else
                {
                  v49 = 0;
                  self->_state = 3;
                  v50 = *(*(&buf + 1) + 40);
                }

                v79 = 0;
                v51 = [KCJoiningMessage messageWithType:5 data:v50 payload:v43 error:&v79];
                v13 = v79;
                v11 = [v51 der];

                if (!v11 || v13)
                {
                  if (!v13)
                  {
                    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:49 description:@"Failed to create circle blob response message"];
                  }

                  [(AAFAnalyticsEventSecurity *)v10 sendMetricWithResult:0 error:v13];
                  if (error)
                  {
                    v52 = v13;
                    *error = v13;
                  }
                }

                else
                {
                  [(AAFAnalyticsEventSecurity *)v10 sendMetricWithResult:1 error:0];
                }

LABEL_97:

LABEL_98:
LABEL_99:

LABEL_100:
                _Block_object_dispose(&v85, 8);

                _Block_object_dispose(&buf, 8);
                goto LABEL_101;
              }
            }

            else if (!v40)
            {
              v47 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:48 description:@"Voucher creation failed"];
              v48 = v86[5];
              v86[5] = v47;

              v40 = v86[5];
            }

            [(AAFAnalyticsEventSecurity *)v10 sendMetricWithResult:0 error:v40];
            v13 = 0;
            v11 = 0;
            if (error)
            {
              *error = v86[5];
            }

            goto LABEL_99;
          }

          v24 = secLogObjForScope("SecError");
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v94) = 0;
            _os_log_impl(&dword_22EB09000, v24, OS_LOG_TYPE_DEFAULT, "octagon, message does not contain prepare message", &v94, 2u);
          }

          v13 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:47 description:@"Expected prepare message!"];
          [(AAFAnalyticsEventSecurity *)v10 sendMetricWithResult:0 error:v13];
        }

        v11 = 0;
        if (error)
        {
          *error = 0;
        }

        goto LABEL_100;
      }

      if (SOSCCIsSOSTrustAndSyncingEnabled())
      {
        firstData = [applicationCopy firstData];
        v78 = 0;
        v17 = [(KCJoiningAcceptSession *)self processSOSApplication:firstData error:&v78];
        v13 = v78;

        if (!v17 || v13)
        {
          if (!v13)
          {
            v13 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:50 description:@"Failed to process SOS Application"];
          }

          [(AAFAnalyticsEventSecurity *)v10 sendMetricWithResult:0 error:v13];
          if (!error)
          {
            v11 = 0;
            goto LABEL_68;
          }

          v25 = v13;
          v11 = 0;
        }

        else
        {
          self->_state = 3;
          v18 = secLogObjForScope("joining");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_22EB09000, v18, OS_LOG_TYPE_DEFAULT, "posting kSOSCCCircleOctagonKeysChangedNotification", &buf, 2u);
          }

          notify_post(*MEMORY[0x277CDBE70]);
          v77 = 0;
          v19 = [KCJoiningMessage messageWithType:5 data:v17 error:&v77];
          v13 = v77;
          v11 = [v19 der];

          if (v11 && !v13)
          {
            [(AAFAnalyticsEventSecurity *)v10 sendMetricWithResult:1 error:0];
            v13 = 0;
LABEL_68:

            goto LABEL_101;
          }

          if (!v13)
          {
            v13 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:49 description:@"Failed to create circle blob response message"];
          }

          [(AAFAnalyticsEventSecurity *)v10 sendMetricWithResult:0 error:v13];
          if (!error)
          {
            goto LABEL_68;
          }

          v46 = v13;
        }

        *error = v13;
        goto LABEL_68;
      }

      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"cannot join piggyback version %d with SOS disabled", -[KCJoiningAcceptSession piggy_version](self, "piggy_version")];
      v21 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = [v20 UTF8String];
        _os_log_impl(&dword_22EB09000, v21, OS_LOG_TYPE_DEFAULT, "joining: %s", &buf, 0xCu);
      }

      v13 = [MEMORY[0x277CCA9B8] errorWithJoiningError:7 format:{@"%@", v20}];
      [(AAFAnalyticsEventSecurity *)v10 sendMetricWithResult:0 error:v13];
      if (error)
      {
        v22 = v13;
        *error = v13;
      }
    }

    else
    {
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:45 description:@"Expected peerInfo!"];
      [(AAFAnalyticsEventSecurity *)v10 sendMetricWithResult:0 error:v13];
      if (error)
      {
        v14 = v13;
        v11 = 0;
        *error = v13;
        goto LABEL_101;
      }
    }

    v11 = 0;
    goto LABEL_101;
  }

  v91 = 0;
  v11 = [(KCJoiningAcceptSession *)self createTLKRequestResponse:&v91];
  v12 = v91;
  v13 = v12;
  if (!v11 || v12)
  {
    if (!v12)
    {
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:44 description:@"Failed to create tlk request response message"];
    }

    [(AAFAnalyticsEventSecurity *)v10 sendMetricWithResult:0 error:v13];
    if (error)
    {
      v15 = v13;
      *error = v13;
    }
  }

  else
  {
    [(AAFAnalyticsEventSecurity *)v10 sendMetricWithResult:1 error:0];
    v13 = 0;
  }

LABEL_101:

  v64 = *MEMORY[0x277D85DE8];

  return v11;
}

uint64_t __51__KCJoiningAcceptSession_processApplication_error___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 count];
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  return result;
}

void __51__KCJoiningAcceptSession_processApplication_error___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = v9;
      _os_log_impl(&dword_22EB09000, v10, OS_LOG_TYPE_DEFAULT, "joining: error producing octagon voucher: %@", &v23, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  }

  else
  {
    v11 = objc_alloc_init(OTPairingMessage);
    v12 = objc_alloc_init(OTSupportSOSMessage);
    [(OTPairingMessage *)v11 setSupportsSOS:v12];

    v13 = objc_alloc_init(OTSupportOctagonMessage);
    [(OTPairingMessage *)v11 setSupportsOctagon:v13];

    v14 = objc_alloc_init(OTSponsorToApplicantRound2M2);
    [(OTPairingMessage *)v11 setVoucher:v14];

    v15 = [(OTPairingMessage *)v11 voucher];
    [v15 setVoucher:v7];

    v16 = [(OTPairingMessage *)v11 voucher];
    [v16 setVoucherSignature:v8];

    v17 = [*(a1 + 32) piggybacking_version_for_tests];
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = 3;
    }

    [(OTPairingMessage *)v11 setVersion:v18];
    v19 = [(OTPairingMessage *)v11 data];
    v20 = *(*(a1 + 48) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldProcessSOSApplication:(id)application pairingMessage:(id)message
{
  applicationCopy = application;
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

  secondData = [applicationCopy secondData];

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
        v11 = "requester explicitly does not support SOS";
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

- (id)createTLKRequestResponse:(id *)response
{
  v24 = *MEMORY[0x277D85DE8];
  circleDelegate = [(KCJoiningAcceptSession *)self circleDelegate];
  v21 = 0;
  v6 = [circleDelegate circleGetInitialSyncViews:4 error:&v21];
  v7 = v21;

  if (v6)
  {
    session = [(KCJoiningAcceptSession *)self session];
    v20 = v7;
    v9 = [session encrypt:v6 error:&v20];
    v10 = v20;

    if (v9)
    {
      self->_state = 3;
      v11 = secLogObjForScope("joining");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22EB09000, v11, OS_LOG_TYPE_DEFAULT, "TLKRequest done.", buf, 2u);
      }

      v12 = [KCJoiningMessage messageWithType:6 data:v9 error:response];
      v13 = [v12 der];
    }

    else
    {
      v16 = secLogObjForScope("joining");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v10;
        _os_log_impl(&dword_22EB09000, v16, OS_LOG_TYPE_DEFAULT, "TLK request failed to encrypt: %@", buf, 0xCu);
      }

      v13 = 0;
      if (response && v10)
      {
        v17 = v10;
        v13 = 0;
        *response = v10;
      }
    }
  }

  else
  {
    v14 = secLogObjForScope("joining");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v7;
      _os_log_impl(&dword_22EB09000, v14, OS_LOG_TYPE_DEFAULT, "Failed to get initial sync view: %@", buf, 0xCu);
    }

    v13 = 0;
    if (response && v7)
    {
      v15 = v7;
      v13 = 0;
      *response = v7;
    }

    v10 = v7;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)createPairingMessageFromJoiningMessage:(id)message error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  session = [(KCJoiningAcceptSession *)self session];
  firstData = [messageCopy firstData];
  v33 = 0;
  v9 = [session decryptAndVerify:firstData error:&v33];
  v10 = v33;

  if (!v9 || v10)
  {
    v16 = secLogObjForScope("KeychainCircle");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v35 = v10;
      _os_log_debug_impl(&dword_22EB09000, v16, OS_LOG_TYPE_DEBUG, "Failed to decrypt message first data: %@. Trying legacy OTPairingMessage construction.", buf, 0xCu);
    }

    v17 = [OTPairingMessage alloc];
    firstData2 = [messageCopy firstData];
    v15 = [(OTPairingMessage *)v17 initWithData:firstData2];
  }

  else
  {
    v11 = [[KCInitialMessageData alloc] initWithData:v9];
    if (v11)
    {
      firstData2 = v11;
      if ([(KCInitialMessageData *)v11 hasPrepareMessage])
      {
        v13 = [OTPairingMessage alloc];
        prepareMessage = [firstData2 prepareMessage];
        v15 = [(OTPairingMessage *)v13 initWithData:prepareMessage];

        goto LABEL_16;
      }

      v24 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22EB09000, v24, OS_LOG_TYPE_DEFAULT, "InitialMessageData does not contain prepare message", buf, 2u);
      }

      KCJoiningErrorCreate(6, error, @"Expected prepare message inside InitialMessageData", v25, v26, v27, v28, v29, v32);
    }

    else
    {
      v18 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22EB09000, v18, OS_LOG_TYPE_DEFAULT, "Failed to parse InitialMessageData from decrypted message data", buf, 2u);
      }

      KCJoiningErrorCreate(6, error, @"Failed to parse InitialMessageData from decrypted message data", v19, v20, v21, v22, v23, v32);
      firstData2 = 0;
    }

    v15 = 0;
  }

LABEL_16:

  v30 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)processSOSApplication:(id)application error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  session = [(KCJoiningAcceptSession *)self session];
  v8 = [session decryptAndVerify:applicationCopy error:error];

  if (!v8)
  {
    v16 = 0;
    goto LABEL_36;
  }

  circleDelegate = [(KCJoiningAcceptSession *)self circleDelegate];
  v28 = 0;
  v10 = SOSPeerInfoCreateFromData();
  if (v10)
  {
    v11 = v10;
    v12 = [circleDelegate circleJoinDataFor:v10 error:error];
    CFRelease(v11);
    if (v12)
    {
      piggy_version = [(KCJoiningAcceptSession *)self piggy_version];
      if (piggy_version > 1)
      {
        if (piggy_version == 2)
        {
          v14 = secLogObjForScope("acceptor");
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v15 = 2;
            _os_log_impl(&dword_22EB09000, v14, OS_LOG_TYPE_DEFAULT, "piggy version is 2", buf, 2u);
          }

          else
          {
            v15 = 2;
          }

LABEL_25:

          v27 = 0;
          v20 = [circleDelegate circleGetInitialSyncViews:v15 error:&v27];
          v17 = v27;
          v21 = [objc_alloc(MEMORY[0x277CBEB28]) initWithData:v12];
          v19 = v21;
          if (v20)
          {
            [v21 appendData:v20];
          }

          else
          {
            v22 = secLogObjForScope("piggy");
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v30 = v17;
              _os_log_impl(&dword_22EB09000, v22, OS_LOG_TYPE_DEFAULT, "PB threw an error: %@", buf, 0xCu);
            }
          }

          goto LABEL_31;
        }

        if (piggy_version != 3)
        {
LABEL_32:
          session2 = [(KCJoiningAcceptSession *)self session];
          v16 = [session2 encrypt:v12 error:error];

          if (v16)
          {
            v24 = v16;
          }

          goto LABEL_35;
        }

        v17 = secLogObjForScope("acceptor");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v18 = "piggy version is 3";
LABEL_20:
          _os_log_impl(&dword_22EB09000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 2u);
        }
      }

      else
      {
        if (piggy_version)
        {
          if (piggy_version == 1)
          {
            v14 = secLogObjForScope("acceptor");
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_22EB09000, v14, OS_LOG_TYPE_DEFAULT, "piggy version is 1", buf, 2u);
            }

            v15 = 3;
            goto LABEL_25;
          }

          goto LABEL_32;
        }

        v17 = secLogObjForScope("acceptor");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v18 = "piggy version is 0";
          goto LABEL_20;
        }
      }

      v19 = v12;
LABEL_31:

      v12 = v19;
      goto LABEL_32;
    }

    goto LABEL_13;
  }

  if (!error)
  {
LABEL_13:
    v16 = 0;
    goto LABEL_35;
  }

  v16 = 0;
  *error = v28;
LABEL_35:

LABEL_36:
  v25 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)processResponse:(id)response error:(id *)error
{
  v56 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v7 = [AAFAnalyticsEventSecurity alloc];
  altDSID = [(KCJoiningAcceptSession *)self altDSID];
  flowID = [(KCJoiningAcceptSession *)self flowID];
  deviceSessionID = [(KCJoiningAcceptSession *)self deviceSessionID];
  LOBYTE(v45) = 1;
  v11 = [(AAFAnalyticsEventSecurity *)v7 initWithKeychainCircleMetrics:0 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:@"com.apple.security.piggybackingAcceptorProcessMessage" testsAreEnabled:metricsAreEnabled canSendMetrics:v45 category:&unk_2843768F0];

  if ([responseCopy type] == 2)
  {
    secretDelegate = [(KCJoiningAcceptSession *)self secretDelegate];
    context = [(KCJoiningAcceptSession *)self context];
    firstData = [responseCopy firstData];
    v15 = [context copyConfirmationFor:firstData error:0];

    if (v15)
    {
      v16 = MEMORY[0x277CBEA90];
      accountCode = [secretDelegate accountCode];
      v49 = 0;
      data = [v16 dataWithEncodedString:accountCode error:&v49];
      v19 = v49;

      if (data && !v19)
      {
        session = [(KCJoiningAcceptSession *)self session];
        v48 = 0;
        v21 = [session encrypt:data error:&v48];
        v19 = v48;

        if (!v21 || v19)
        {
          if (!v19)
          {
            v19 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:42 description:@"Failed to encrypt encoded data"];
          }

          [(AAFAnalyticsEventSecurity *)v11 sendMetricWithResult:0 error:v19];
          if (!error)
          {
            v23 = 0;
            goto LABEL_54;
          }

          v31 = v19;
          v23 = 0;
        }

        else
        {
          self->_state = 2;
          v47 = 0;
          v22 = [KCJoiningMessage messageWithType:3 data:v15 payload:v21 error:&v47];
          v19 = v47;
          v23 = [v22 der];

          if (v23 && !v19)
          {
            [(AAFAnalyticsEventSecurity *)v11 sendMetricWithResult:1 error:0];
LABEL_54:

            goto LABEL_65;
          }

          if (!v19)
          {
            v19 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:43 description:@"Failed to create response message"];
          }

          [(AAFAnalyticsEventSecurity *)v11 sendMetricWithResult:0 error:v19];
          if (!error)
          {
            goto LABEL_54;
          }

          v40 = v19;
        }

        *error = v19;
        goto LABEL_54;
      }

      if (!v19)
      {
        v19 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:41 description:@"Failed to encode data"];
      }

LABEL_44:
      [(AAFAnalyticsEventSecurity *)v11 sendMetricWithResult:0 error:v19];
      if (error)
      {
        v39 = v19;
        goto LABEL_46;
      }

      goto LABEL_64;
    }

    v53 = 0;
    v25 = [secretDelegate verificationFailed:&v53];
    v19 = v53;
    v26 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v55) = v25;
      _os_log_impl(&dword_22EB09000, v26, OS_LOG_TYPE_DEFAULT, "processResponse: handle error: %d", buf, 8u);
    }

    switch(v25)
    {
      case 2:
        context2 = [(KCJoiningAcceptSession *)self context];
        v46 = secretDelegate;
        secret = [secretDelegate secret];
        v52 = v19;
        v34 = [context2 resetWithPassword:secret error:&v52];
        v35 = v52;

        if (!v34)
        {
          data = 0;
          v19 = v35;
          secretDelegate = v46;
          if (v35)
          {
            goto LABEL_41;
          }

          goto LABEL_40;
        }

        v51 = v35;
        data = [(KCJoiningAcceptSession *)self copyChallengeMessage:&v51];
        v19 = v51;

        secretDelegate = v46;
        if (!data)
        {
LABEL_39:
          if (v19)
          {
LABEL_41:
            v38 = secLogObjForScope("SecError");
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v55 = v19;
              _os_log_impl(&dword_22EB09000, v38, OS_LOG_TYPE_DEFAULT, "processResponse: errorData is nil, error: %@", buf, 0xCu);
            }

            goto LABEL_44;
          }

LABEL_40:
          v19 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:39 description:@"errorData is nil"];
          goto LABEL_41;
        }

        break;
      case 1:
        data = [MEMORY[0x277CBEA90] data];
        if (!data)
        {
          goto LABEL_39;
        }

        break;
      case 0:
        if (!v19)
        {
          v27 = MEMORY[0x277CCA9B8];
          v28 = KCErrorDomain;
          v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Delegate returned error without filling in error: %@", secretDelegate];
          v19 = [v27 errorWithDomain:v28 code:38 description:v29];
        }

        [(AAFAnalyticsEventSecurity *)v11 sendMetricWithResult:0 error:v19];
        if (error)
        {
          v30 = v19;
          data = 0;
LABEL_46:
          v23 = 0;
LABEL_47:
          *error = v19;
LABEL_65:

          goto LABEL_66;
        }

        data = 0;
LABEL_64:
        v23 = 0;
        goto LABEL_65;
      default:
        data = 0;
        goto LABEL_39;
    }

    if (!v19)
    {
      v50 = 0;
      v36 = [KCJoiningMessage messageWithType:0 data:data error:&v50];
      v19 = v50;
      v23 = [v36 der];

      if (v23 && !v19)
      {
        v37 = secLogObjForScope("joining");
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22EB09000, v37, OS_LOG_TYPE_DEFAULT, "processResponse: successfully created response message", buf, 2u);
        }

        [(AAFAnalyticsEventSecurity *)v11 sendMetricWithResult:1 error:0];
        v19 = 0;
        goto LABEL_65;
      }

      if (!v19)
      {
        v19 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:40 description:@"Failed to create error response message"];
      }

      v41 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v55 = v19;
        _os_log_impl(&dword_22EB09000, v41, OS_LOG_TYPE_DEFAULT, "processResponse: failed to create error response message: %@", buf, 0xCu);
      }

      [(AAFAnalyticsEventSecurity *)v11 sendMetricWithResult:0 error:v19];
      if (!error)
      {
        goto LABEL_65;
      }

      v42 = v19;
      goto LABEL_47;
    }

    goto LABEL_39;
  }

  v19 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:37 description:@"Expected response!"];
  [(AAFAnalyticsEventSecurity *)v11 sendMetricWithResult:0 error:v19];
  if (error)
  {
    v24 = v19;
    v23 = 0;
    *error = v19;
  }

  else
  {
    v23 = 0;
  }

LABEL_66:

  v43 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)processInitialMessage:(id)message error:(id *)error
{
  v73 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v60 = 0;
  v7 = [AAFAnalyticsEventSecurity alloc];
  altDSID = [(KCJoiningAcceptSession *)self altDSID];
  flowID = [(KCJoiningAcceptSession *)self flowID];
  deviceSessionID = [(KCJoiningAcceptSession *)self deviceSessionID];
  LOBYTE(v51) = 1;
  v11 = [(AAFAnalyticsEventSecurity *)v7 initWithKeychainCircleMetrics:0 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:@"com.apple.security.piggybackingAcceptorInitialMessage" testsAreEnabled:metricsAreEnabled canSendMetrics:v51 category:&unk_2843768F0];

  v58 = 0;
  v59 = 0;
  v57 = 0;
  v12 = extractStartFromInitialMessage(messageCopy, &v60, &v59, &v58, &v57);
  v13 = v59;
  v52 = v58;
  v14 = v57;
  [(KCJoiningAcceptSession *)self setStartMessage:v12];

  startMessage = [(KCJoiningAcceptSession *)self startMessage];
  if (startMessage)
  {
    v16 = v14 == 0;
  }

  else
  {
    v16 = 0;
  }

  v17 = !v16;

  if (v17)
  {
    if (!v14)
    {
      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:51 description:@"Failed to extract startMessage"];
    }

    v18 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v14;
      _os_log_impl(&dword_22EB09000, v18, OS_LOG_TYPE_DEFAULT, "joining: failed to extract startMessage: %@", &buf, 0xCu);
    }

    [(AAFAnalyticsEventSecurity *)v11 sendMetricWithResult:0 error:v14];
    if (error)
    {
LABEL_13:
      v19 = v14;
      v20 = 0;
      *error = v14;
      goto LABEL_71;
    }

    goto LABEL_57;
  }

  v21 = v60;
  if (v60 == 2)
  {
    if ([(KCJoiningAcceptSession *)self shouldAcceptOctagonRequests])
    {
      [(KCJoiningAcceptSession *)self setOctagon:v52];
      v21 = 2;
    }

    else
    {
      v22 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_22EB09000, v22, OS_LOG_TYPE_DEFAULT, "joining: octagon refusing octagon acceptor since we don't have a selfEgo", &buf, 2u);
      }

      if ((SOSCCIsSOSTrustAndSyncingEnabled() & 1) == 0)
      {
        joiningConfiguration = [(KCJoiningAcceptSession *)self joiningConfiguration];
        testsEnabled = [joiningConfiguration testsEnabled];

        if ((testsEnabled & 1) == 0)
        {
          v44 = secLogObjForScope("SecError");
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_22EB09000, v44, OS_LOG_TYPE_DEFAULT, "joining: device does not support SOS, failing flow", &buf, 2u);
          }

          v14 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:20 description:@"Unable to piggyback with device due to lack of trust system support"];
          [(AAFAnalyticsEventSecurity *)v11 sendMetricWithResult:0 error:v14];
          if (error)
          {
            goto LABEL_13;
          }

LABEL_57:
          v20 = 0;
          goto LABEL_71;
        }
      }

      v25 = secLogObjForScope("joining");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_22EB09000, v25, OS_LOG_TYPE_DEFAULT, "device supports SOS, continuing flow with piggyV1", &buf, 2u);
      }

      v21 = 1;
      v60 = 1;
    }
  }

  [(KCJoiningAcceptSession *)self setPiggy_uuid:v13];
  [(KCJoiningAcceptSession *)self setPiggy_version:v21];
  v56 = 0;
  v26 = [(KCJoiningAcceptSession *)self copyChallengeMessage:&v56];
  v27 = v56;
  v14 = v27;
  if (!v26 || v27)
  {
    if (!v27)
    {
      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:35 description:@"Failed to copy srpMessage"];
    }

    v36 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v14;
      _os_log_impl(&dword_22EB09000, v36, OS_LOG_TYPE_DEFAULT, "joining: failed to copy srpMessage: %@", &buf, 0xCu);
    }

    [(AAFAnalyticsEventSecurity *)v11 sendMetricWithResult:0 error:v14];
    if (error)
    {
      v37 = v14;
      v20 = 0;
      *error = v14;
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_70;
  }

  self->_state = 1;
  v28 = objc_alloc(MEMORY[0x277CCACA8]);
  octagon = [(KCJoiningAcceptSession *)self octagon];
  v30 = [v28 initWithData:octagon encoding:4];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__915;
  v71 = __Block_byref_object_dispose__916;
  v72 = 0;
  if (v21 == 2 && v30 && [v30 isEqualToString:@"o"])
  {
    *&v63 = 0;
    *(&v63 + 1) = &v63;
    v64 = 0x3032000000;
    v65 = __Block_byref_object_copy__915;
    v66 = __Block_byref_object_dispose__916;
    v67 = 0;
    otControl = [(KCJoiningAcceptSession *)self otControl];
    controlArguments = [(KCJoiningAcceptSession *)self controlArguments];
    joiningConfiguration2 = [(KCJoiningAcceptSession *)self joiningConfiguration];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __54__KCJoiningAcceptSession_processInitialMessage_error___block_invoke;
    v55[3] = &unk_278863D88;
    v55[4] = &buf;
    v55[5] = &v63;
    [otControl rpcEpochWithArguments:controlArguments configuration:joiningConfiguration2 reply:v55];

    v34 = *(*(&buf + 1) + 40);
    if (v34)
    {
      if (error)
      {
        v35 = v34;
        *error = v34;
        v34 = *(*(&buf + 1) + 40);
      }

      [(AAFAnalyticsEventSecurity *)v11 sendMetricWithResult:0 error:v34];
      v14 = 0;
      v20 = 0;
    }

    else
    {
      v45 = *(*(&v63 + 1) + 40);
      v54 = 0;
      v46 = [KCJoiningMessage messageWithType:1 data:v26 payload:v45 error:&v54];
      v14 = v54;
      v20 = [v46 der];

      if (!v20 || v14)
      {
        if (!v14)
        {
          v14 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:36 description:@"Failed to create challenge message"];
        }

        v47 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *v61 = 138412290;
          v62 = v14;
          _os_log_impl(&dword_22EB09000, v47, OS_LOG_TYPE_DEFAULT, "joining: failed to create challenge message: %@", v61, 0xCu);
        }

        [(AAFAnalyticsEventSecurity *)v11 sendMetricWithResult:0 error:v14];
        if (error)
        {
          v48 = v14;
          *error = v14;
        }
      }

      else
      {
        [(AAFAnalyticsEventSecurity *)v11 sendMetricWithResult:1 error:0];
        v14 = 0;
      }
    }

    _Block_object_dispose(&v63, 8);

    goto LABEL_69;
  }

  if ((SOSCCIsSOSTrustAndSyncingEnabled() & 1) == 0)
  {
    joiningConfiguration3 = [(KCJoiningAcceptSession *)self joiningConfiguration];
    testsEnabled2 = [joiningConfiguration3 testsEnabled];

    if (!testsEnabled2)
    {
      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:20 description:@"Unable to piggyback with device due to lack of trust system support"];
      [(AAFAnalyticsEventSecurity *)v11 sendMetricWithResult:0 error:v14];
      if (!error)
      {
        v20 = 0;
        goto LABEL_69;
      }

      v43 = v14;
      v20 = 0;
      goto LABEL_53;
    }
  }

  v53 = 0;
  v40 = [KCJoiningMessage messageWithType:1 data:v26 error:&v53];
  v14 = v53;
  v20 = [v40 der];

  if (!v20 || v14)
  {
    if (!v14)
    {
      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:36 description:@"Failed to create challenge message"];
    }

    v41 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v63) = 138412290;
      *(&v63 + 4) = v14;
      _os_log_impl(&dword_22EB09000, v41, OS_LOG_TYPE_DEFAULT, "joining: failed to create challenge message: %@", &v63, 0xCu);
    }

    [(AAFAnalyticsEventSecurity *)v11 sendMetricWithResult:0 error:v14];
    if (!error)
    {
      goto LABEL_69;
    }

    v42 = v14;
LABEL_53:
    *error = v14;
    goto LABEL_69;
  }

  [(AAFAnalyticsEventSecurity *)v11 sendMetricWithResult:1 error:0];
  v14 = 0;
LABEL_69:
  _Block_object_dispose(&buf, 8);

LABEL_70:
LABEL_71:

  v49 = *MEMORY[0x277D85DE8];

  return v20;
}

void __54__KCJoiningAcceptSession_processInitialMessage_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    v7 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = v6;
      _os_log_impl(&dword_22EB09000, v7, OS_LOG_TYPE_DEFAULT, "error retrieving next message! :%@", &v20, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  else
  {
    v8 = objc_alloc_init(OTPairingMessage);
    v9 = objc_alloc_init(OTSupportSOSMessage);
    [(OTPairingMessage *)v8 setSupportsSOS:v9];

    v10 = objc_alloc_init(OTSupportOctagonMessage);
    [(OTPairingMessage *)v8 setSupportsOctagon:v10];

    v11 = objc_alloc_init(OTSponsorToApplicantRound1M2);
    [(OTPairingMessage *)v8 setEpoch:v11];

    v12 = [(OTPairingMessage *)v8 epoch];
    [v12 setEpoch:a2];

    if (SOSCCIsSOSTrustAndSyncingEnabled())
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    v14 = [(OTPairingMessage *)v8 supportsSOS];
    [v14 setSupported:v13];

    v15 = [(OTPairingMessage *)v8 supportsOctagon];
    [v15 setSupported:1];

    v16 = [(OTPairingMessage *)v8 data];
    v17 = *(*(a1 + 40) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldAcceptOctagonRequests
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = objc_alloc_init(MEMORY[0x277CDBD70]);
  [v3 setDiscretionaryNetwork:1];
  otControl = [(KCJoiningAcceptSession *)self otControl];
  controlArguments = [(KCJoiningAcceptSession *)self controlArguments];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__KCJoiningAcceptSession_shouldAcceptOctagonRequests__block_invoke;
  v7[3] = &unk_278863D50;
  v7[4] = &v8;
  [otControl fetchTrustStatus:controlArguments configuration:v3 reply:v7];

  LOBYTE(otControl) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return otControl;
}

void __53__KCJoiningAcceptSession_shouldAcceptOctagonRequests__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5, void *a6)
{
  v25 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 67110146;
    v16[1] = a2;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v12;
    v21 = 1024;
    v22 = a5;
    v23 = 2112;
    v24 = v13;
    _os_log_impl(&dword_22EB09000, v14, OS_LOG_TYPE_DEFAULT, "octagon haveSelfEgo: status %d: %@ %@ %d: %@", v16, 0x2Cu);
  }

  if (!a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)copyChallengeMessage:(id *)message
{
  context = [(KCJoiningAcceptSession *)self context];
  startMessage = [(KCJoiningAcceptSession *)self startMessage];
  v7 = [context copyChallengeFor:startMessage error:message];

  if (v7)
  {
    v8 = MEMORY[0x277CBEA90];
    context2 = [(KCJoiningAcceptSession *)self context];
    salt = [context2 salt];
    v11 = [v8 dataWithEncodedSequenceData:salt data:v7 error:message];

    if ([(KCJoiningAcceptSession *)self setupSession:message])
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  dsid = [(KCJoiningAcceptSession *)self dsid];
  stateString = [(KCJoiningAcceptSession *)self stateString];
  context = [(KCJoiningAcceptSession *)self context];
  piggy_uuid = [(KCJoiningAcceptSession *)self piggy_uuid];
  v8 = [v3 stringWithFormat:@"<KCJoiningAcceptSession: %lld %@ %@ uuid: %@>", dsid, stateString, context, piggy_uuid];

  return v8;
}

- (id)stateString
{
  state = [(KCJoiningAcceptSession *)self state];
  if (state >= 4)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", -[KCJoiningAcceptSession state](self, "state")];
  }

  else
  {
    v4 = off_278863E28[state];
  }

  return v4;
}

- (KCJoiningAcceptSession)initWithSecretDelegate:(id)delegate circleDelegate:(id)circleDelegate dsid:(unint64_t)dsid altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID rng:(ccrng_state *)rng error:(id *)self0
{
  delegateCopy = delegate;
  circleDelegateCopy = circleDelegate;
  dCopy = d;
  iDCopy = iD;
  sessionIDCopy = sessionID;
  v47.receiver = self;
  v47.super_class = KCJoiningAcceptSession;
  v20 = [(KCJoiningAcceptSession *)&v47 init];
  if (v20)
  {
    sessionIDCopy2 = sessionID;
    v42 = iDCopy;
    v43 = dCopy;
    obj = circleDelegateCopy;
    v21 = secLogObjForScope("accepting");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22EB09000, v21, OS_LOG_TYPE_DEFAULT, "initWithSecretDelegate", buf, 2u);
    }

    dsid = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", dsid];
    v23 = [KCSRPServerContext alloc];
    secret = [delegateCopy secret];
    v25 = ccsha256_di();
    v26 = [(KCSRPServerContext *)v23 initWithUser:dsid password:secret digestInfo:v25 group:ccsrp_gp_rfc5054_3072() randomSource:rng];
    context = v20->_context;
    v20->_context = v26;

    objc_storeWeak(&v20->_secretDelegate, delegateCopy);
    circleDelegateCopy = obj;
    objc_storeWeak(&v20->_circleDelegate, obj);
    v20->_state = 0;
    v20->_dsid = dsid;
    piggy_uuid = v20->_piggy_uuid;
    v20->_piggy_uuid = 0;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    defaults = v20->_defaults;
    v20->_defaults = dictionary;

    objc_storeStrong(&v20->_altDSID, d);
    objc_storeStrong(&v20->_flowID, iD);
    objc_storeStrong(&v20->_deviceSessionID, sessionIDCopy2);
    v31 = [MEMORY[0x277CDBD58] controlObject:1 error:error];
    otControl = v20->_otControl;
    v20->_otControl = v31;

    v20->_piggy_version = 2;
    v33 = objc_alloc(MEMORY[0x277CDBD68]);
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v36 = [v33 initWithProtocolType:@"OctagonPiggybacking" uniqueDeviceID:@"acceptor-deviceid" uniqueClientID:@"requester-deviceid" pairingUUID:uUIDString epoch:0 isInitiator:0];
    joiningConfiguration = v20->_joiningConfiguration;
    v20->_joiningConfiguration = v36;

    v38 = objc_alloc_init(MEMORY[0x277CDBD60]);
    controlArguments = v20->_controlArguments;
    v20->_controlArguments = v38;

    iDCopy = v42;
    dCopy = v43;
  }

  return v20;
}

- (BOOL)setupSession:(id *)session
{
  getKey = [(KCSRPContext *)self->_context getKey];
  if (getKey)
  {
    v11 = [KCAESGCMDuplexSession sessionAsReceiver:getKey context:[(KCJoiningAcceptSession *)self dsid]];
    session = self->_session;
    self->_session = v11;

    joiningConfiguration = [(KCJoiningAcceptSession *)self joiningConfiguration];
    pairingUUID = [joiningConfiguration pairingUUID];
    session = [(KCJoiningAcceptSession *)self session];
    [session setPairingUUID:pairingUUID];

    altDSID = [(KCJoiningAcceptSession *)self altDSID];
    session2 = [(KCJoiningAcceptSession *)self session];
    [session2 setAltDSID:altDSID];

    flowID = [(KCJoiningAcceptSession *)self flowID];
    session3 = [(KCJoiningAcceptSession *)self session];
    [session3 setFlowID:flowID];

    deviceSessionID = [(KCJoiningAcceptSession *)self deviceSessionID];
    session4 = [(KCJoiningAcceptSession *)self session];
    [session4 setDeviceSessionID:deviceSessionID];

    piggy_version = [(KCJoiningAcceptSession *)self piggy_version];
    session5 = [(KCJoiningAcceptSession *)self session];
    [session5 setPiggybackingVersion:piggy_version];

    [(KCJoiningAcceptSession *)self setPiggybacking_version_for_tests:0];
    session6 = [(KCJoiningAcceptSession *)self session];
    v25 = session6 != 0;
  }

  else
  {
    KCJoiningErrorCreate(7, session, @"No session key available", v5, v6, v7, v8, v9, v27);
    v25 = 0;
  }

  return v25;
}

+ (id)sessionWithInitialMessage:(id)message secretDelegate:(id)delegate circleDelegate:(id)circleDelegate dsid:(unint64_t)dsid error:(id *)error
{
  delegateCopy = delegate;
  circleDelegateCopy = circleDelegate;
  v12 = ccrng();
  if (v12)
  {
    v18 = [[KCJoiningAcceptSession alloc] initWithSecretDelegate:delegateCopy circleDelegate:circleDelegateCopy dsid:dsid altDSID:0 flowID:0 deviceSessionID:0 rng:v12 error:error];
  }

  else
  {
    CoreCryptoError(0, error, @"RNG fetch failed", v13, v14, v15, v16, v17, v20);
    v18 = 0;
  }

  return v18;
}

+ (id)sessionWithInitialMessage:(id)message secretDelegate:(id)delegate circleDelegate:(id)circleDelegate dsid:(unint64_t)dsid altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID error:(id *)self0
{
  delegateCopy = delegate;
  circleDelegateCopy = circleDelegate;
  dCopy = d;
  iDCopy = iD;
  sessionIDCopy = sessionID;
  v19 = ccrng();
  if (v19)
  {
    v25 = [[KCJoiningAcceptSession alloc] initWithSecretDelegate:delegateCopy circleDelegate:circleDelegateCopy dsid:dsid altDSID:dCopy flowID:iDCopy deviceSessionID:sessionIDCopy rng:v19 error:error];
  }

  else
  {
    CoreCryptoError(0, error, @"RNG fetch failed", v20, v21, v22, v23, v24, v27);
    v25 = 0;
  }

  return v25;
}

@end
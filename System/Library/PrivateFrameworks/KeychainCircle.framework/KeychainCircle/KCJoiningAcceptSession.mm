@interface KCJoiningAcceptSession
+ (id)sessionWithInitialMessage:(id)a3 secretDelegate:(id)a4 circleDelegate:(id)a5 dsid:(unint64_t)a6 altDSID:(id)a7 flowID:(id)a8 deviceSessionID:(id)a9 error:(id *)a10;
+ (id)sessionWithInitialMessage:(id)a3 secretDelegate:(id)a4 circleDelegate:(id)a5 dsid:(unint64_t)a6 error:(id *)a7;
- (BOOL)setupSession:(id *)a3;
- (BOOL)shouldAcceptOctagonRequests;
- (BOOL)shouldProcessSOSApplication:(id)a3 pairingMessage:(id)a4;
- (KCJoiningAcceptCircleDelegate)circleDelegate;
- (KCJoiningAcceptSecretDelegate)secretDelegate;
- (KCJoiningAcceptSession)initWithSecretDelegate:(id)a3 circleDelegate:(id)a4 dsid:(unint64_t)a5 altDSID:(id)a6 flowID:(id)a7 deviceSessionID:(id)a8 rng:(ccrng_state *)a9 error:(id *)a10;
- (id)copyChallengeMessage:(id *)a3;
- (id)createPairingMessageFromJoiningMessage:(id)a3 error:(id *)a4;
- (id)createTLKRequestResponse:(id *)a3;
- (id)description;
- (id)processApplication:(id)a3 error:(id *)a4;
- (id)processInitialMessage:(id)a3 error:(id *)a4;
- (id)processMessage:(id)a3 error:(id *)a4;
- (id)processResponse:(id)a3 error:(id *)a4;
- (id)processSOSApplication:(id)a3 error:(id *)a4;
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

- (id)processMessage:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
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
    v9 = [KCJoiningMessage messageWithDER:v6 error:a4];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(KCJoiningAcceptSession *)self state];
  v16 = 0;
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      if (v9)
      {
        v17 = [(KCJoiningAcceptSession *)self processApplication:v9 error:a4];
        goto LABEL_17;
      }
    }

    else
    {
      if (v10 != 3)
      {
        goto LABEL_19;
      }

      KCJoiningErrorCreate(6, a4, @"Unexpected message while done", v11, v12, v13, v14, v15, *v20);
    }
  }

  else
  {
    if (!v10)
    {
      v17 = [(KCJoiningAcceptSession *)self processInitialMessage:v6 error:a4];
      goto LABEL_17;
    }

    if (v10 != 1)
    {
      goto LABEL_19;
    }

    if (v9)
    {
      v17 = [(KCJoiningAcceptSession *)self processResponse:v9 error:a4];
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

- (id)processApplication:(id)a3 error:(id *)a4
{
  v102 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [AAFAnalyticsEventSecurity alloc];
  v7 = [(KCJoiningAcceptSession *)self altDSID];
  v8 = [(KCJoiningAcceptSession *)self flowID];
  v9 = [(KCJoiningAcceptSession *)self deviceSessionID];
  LOBYTE(v66) = 1;
  v10 = [(AAFAnalyticsEventSecurity *)v6 initWithKeychainCircleMetrics:0 altDSID:v7 flowID:v8 deviceSessionID:v9 eventName:@"com.apple.security.piggybackingAcceptorProcessApplication" testsAreEnabled:metricsAreEnabled canSendMetrics:v66 category:&unk_2843768F0];

  if ([v5 type] != 6)
  {
    if ([v5 type] == 4)
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
        v75 = [(KCJoiningAcceptSession *)self createPairingMessageFromJoiningMessage:v5 error:&v84];
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
            v74 = [v75 prepare];
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
              v26 = [(KCJoiningAcceptSession *)self otControl];
              v27 = [(KCJoiningAcceptSession *)self controlArguments];
              v83[0] = MEMORY[0x277D85DD0];
              v83[1] = 3221225472;
              v83[2] = __51__KCJoiningAcceptSession_processApplication_error___block_invoke;
              v83[3] = &unk_278863DC0;
              v83[4] = &v94;
              [v26 fetchEscrowRecords:v27 source:2 reply:v83];

              v28 = [AAFAnalyticsEventSecurity alloc];
              v92 = @"totalViableEscrowRecords";
              v72 = [MEMORY[0x277CCABB0] numberWithBool:*(*(&v94 + 1) + 24)];
              v93 = v72;
              v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
              v30 = [(KCJoiningAcceptSession *)self altDSID];
              v31 = [(KCJoiningAcceptSession *)self flowID];
              v32 = [(KCJoiningAcceptSession *)self deviceSessionID];
              LOBYTE(v67) = 1;
              v33 = [(AAFAnalyticsEventSecurity *)v28 initWithKeychainCircleMetrics:v29 altDSID:v30 flowID:v31 deviceSessionID:v32 eventName:@"com.apple.security.initiatorPreVersion3Change" testsAreEnabled:metricsAreEnabled canSendMetrics:v67 category:&unk_2843768F0];

              [(AAFAnalyticsEventSecurity *)v33 sendMetricWithResult:1 error:0];
              _Block_object_dispose(&v94, 8);
              v69 = 0;
            }

            v34 = @"full";
            v73 = [(KCJoiningAcceptSession *)self otControl];
            v71 = [(KCJoiningAcceptSession *)self controlArguments];
            v70 = [(KCJoiningAcceptSession *)self joiningConfiguration];
            v35 = [v74 peerID];
            v36 = [v74 permanentInfo];
            v37 = [v74 permanentInfoSig];
            v38 = [v74 stableInfo];
            v39 = [v74 stableInfoSig];
            v82[0] = MEMORY[0x277D85DD0];
            v82[1] = 3221225472;
            v82[2] = __51__KCJoiningAcceptSession_processApplication_error___block_invoke_2;
            v82[3] = &unk_278863E00;
            v82[4] = self;
            v82[5] = &v85;
            v82[6] = &buf;
            [v73 rpcVoucherWithArguments:v71 configuration:v70 peerID:v35 permanentInfo:v36 permanentInfoSig:v37 stableInfo:v38 stableInfoSig:v39 maxCapability:@"full" reply:v82];

            v40 = v86[5];
            if (*(*(&buf + 1) + 40))
            {
              if (!v40)
              {
                if ([(KCJoiningAcceptSession *)self shouldProcessSOSApplication:v5 pairingMessage:v75])
                {
                  v41 = secLogObjForScope("joining");
                  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                  {
                    LOWORD(v94) = 0;
                    _os_log_impl(&dword_22EB09000, v41, OS_LOG_TYPE_DEFAULT, "doing SOS processSOSApplication", &v94, 2u);
                  }

                  v42 = [v5 secondData];
                  v81 = 0;
                  v43 = [(KCJoiningAcceptSession *)self processSOSApplication:v42 error:&v81];
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
                    if (a4)
                    {
                      v45 = v13;
                      v11 = 0;
                      *a4 = v13;
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
                  v53 = [(KCJoiningAcceptSession *)self session];
                  v54 = *(*(&buf + 1) + 40);
                  v80 = 0;
                  v49 = [v53 encrypt:v54 error:&v80];
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

                    if (a4)
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

                      *a4 = v63;
                    }

                    [(AAFAnalyticsEventSecurity *)v10 sendMetricWithResult:0 error:0];

                    v13 = 0;
                    v11 = 0;
                    goto LABEL_97;
                  }

                  v56 = [AAFAnalyticsEventSecurity alloc];
                  v57 = [(KCJoiningAcceptSession *)self altDSID];
                  v58 = [(KCJoiningAcceptSession *)self flowID];
                  v59 = [(KCJoiningAcceptSession *)self deviceSessionID];
                  LOBYTE(v68) = 1;
                  v60 = [(AAFAnalyticsEventSecurity *)v56 initWithKeychainCircleMetrics:0 altDSID:v57 flowID:v58 deviceSessionID:v59 eventName:@"com.apple.security.acceptorChannelSecured" testsAreEnabled:metricsAreEnabled canSendMetrics:v68 category:&unk_2843768F0];

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
                  if (a4)
                  {
                    v52 = v13;
                    *a4 = v13;
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
            if (a4)
            {
              *a4 = v86[5];
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
        if (a4)
        {
          *a4 = 0;
        }

        goto LABEL_100;
      }

      if (SOSCCIsSOSTrustAndSyncingEnabled())
      {
        v16 = [v5 firstData];
        v78 = 0;
        v17 = [(KCJoiningAcceptSession *)self processSOSApplication:v16 error:&v78];
        v13 = v78;

        if (!v17 || v13)
        {
          if (!v13)
          {
            v13 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:50 description:@"Failed to process SOS Application"];
          }

          [(AAFAnalyticsEventSecurity *)v10 sendMetricWithResult:0 error:v13];
          if (!a4)
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
          if (!a4)
          {
            goto LABEL_68;
          }

          v46 = v13;
        }

        *a4 = v13;
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
      if (a4)
      {
        v22 = v13;
        *a4 = v13;
      }
    }

    else
    {
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:45 description:@"Expected peerInfo!"];
      [(AAFAnalyticsEventSecurity *)v10 sendMetricWithResult:0 error:v13];
      if (a4)
      {
        v14 = v13;
        v11 = 0;
        *a4 = v13;
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
    if (a4)
    {
      v15 = v13;
      *a4 = v13;
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

- (BOOL)shouldProcessSOSApplication:(id)a3 pairingMessage:(id)a4
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

- (id)createTLKRequestResponse:(id *)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [(KCJoiningAcceptSession *)self circleDelegate];
  v21 = 0;
  v6 = [v5 circleGetInitialSyncViews:4 error:&v21];
  v7 = v21;

  if (v6)
  {
    v8 = [(KCJoiningAcceptSession *)self session];
    v20 = v7;
    v9 = [v8 encrypt:v6 error:&v20];
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

      v12 = [KCJoiningMessage messageWithType:6 data:v9 error:a3];
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
      if (a3 && v10)
      {
        v17 = v10;
        v13 = 0;
        *a3 = v10;
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
    if (a3 && v7)
    {
      v15 = v7;
      v13 = 0;
      *a3 = v7;
    }

    v10 = v7;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)createPairingMessageFromJoiningMessage:(id)a3 error:(id *)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(KCJoiningAcceptSession *)self session];
  v8 = [v6 firstData];
  v33 = 0;
  v9 = [v7 decryptAndVerify:v8 error:&v33];
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
    v12 = [v6 firstData];
    v15 = [(OTPairingMessage *)v17 initWithData:v12];
  }

  else
  {
    v11 = [[KCInitialMessageData alloc] initWithData:v9];
    if (v11)
    {
      v12 = v11;
      if ([(KCInitialMessageData *)v11 hasPrepareMessage])
      {
        v13 = [OTPairingMessage alloc];
        v14 = [v12 prepareMessage];
        v15 = [(OTPairingMessage *)v13 initWithData:v14];

        goto LABEL_16;
      }

      v24 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22EB09000, v24, OS_LOG_TYPE_DEFAULT, "InitialMessageData does not contain prepare message", buf, 2u);
      }

      KCJoiningErrorCreate(6, a4, @"Expected prepare message inside InitialMessageData", v25, v26, v27, v28, v29, v32);
    }

    else
    {
      v18 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22EB09000, v18, OS_LOG_TYPE_DEFAULT, "Failed to parse InitialMessageData from decrypted message data", buf, 2u);
      }

      KCJoiningErrorCreate(6, a4, @"Failed to parse InitialMessageData from decrypted message data", v19, v20, v21, v22, v23, v32);
      v12 = 0;
    }

    v15 = 0;
  }

LABEL_16:

  v30 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)processSOSApplication:(id)a3 error:(id *)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(KCJoiningAcceptSession *)self session];
  v8 = [v7 decryptAndVerify:v6 error:a4];

  if (!v8)
  {
    v16 = 0;
    goto LABEL_36;
  }

  v9 = [(KCJoiningAcceptSession *)self circleDelegate];
  v28 = 0;
  v10 = SOSPeerInfoCreateFromData();
  if (v10)
  {
    v11 = v10;
    v12 = [v9 circleJoinDataFor:v10 error:a4];
    CFRelease(v11);
    if (v12)
    {
      v13 = [(KCJoiningAcceptSession *)self piggy_version];
      if (v13 > 1)
      {
        if (v13 == 2)
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
          v20 = [v9 circleGetInitialSyncViews:v15 error:&v27];
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

        if (v13 != 3)
        {
LABEL_32:
          v23 = [(KCJoiningAcceptSession *)self session];
          v16 = [v23 encrypt:v12 error:a4];

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
        if (v13)
        {
          if (v13 == 1)
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

  if (!a4)
  {
LABEL_13:
    v16 = 0;
    goto LABEL_35;
  }

  v16 = 0;
  *a4 = v28;
LABEL_35:

LABEL_36:
  v25 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)processResponse:(id)a3 error:(id *)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [AAFAnalyticsEventSecurity alloc];
  v8 = [(KCJoiningAcceptSession *)self altDSID];
  v9 = [(KCJoiningAcceptSession *)self flowID];
  v10 = [(KCJoiningAcceptSession *)self deviceSessionID];
  LOBYTE(v45) = 1;
  v11 = [(AAFAnalyticsEventSecurity *)v7 initWithKeychainCircleMetrics:0 altDSID:v8 flowID:v9 deviceSessionID:v10 eventName:@"com.apple.security.piggybackingAcceptorProcessMessage" testsAreEnabled:metricsAreEnabled canSendMetrics:v45 category:&unk_2843768F0];

  if ([v6 type] == 2)
  {
    v12 = [(KCJoiningAcceptSession *)self secretDelegate];
    v13 = [(KCJoiningAcceptSession *)self context];
    v14 = [v6 firstData];
    v15 = [v13 copyConfirmationFor:v14 error:0];

    if (v15)
    {
      v16 = MEMORY[0x277CBEA90];
      v17 = [v12 accountCode];
      v49 = 0;
      v18 = [v16 dataWithEncodedString:v17 error:&v49];
      v19 = v49;

      if (v18 && !v19)
      {
        v20 = [(KCJoiningAcceptSession *)self session];
        v48 = 0;
        v21 = [v20 encrypt:v18 error:&v48];
        v19 = v48;

        if (!v21 || v19)
        {
          if (!v19)
          {
            v19 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:42 description:@"Failed to encrypt encoded data"];
          }

          [(AAFAnalyticsEventSecurity *)v11 sendMetricWithResult:0 error:v19];
          if (!a4)
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
          if (!a4)
          {
            goto LABEL_54;
          }

          v40 = v19;
        }

        *a4 = v19;
        goto LABEL_54;
      }

      if (!v19)
      {
        v19 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:41 description:@"Failed to encode data"];
      }

LABEL_44:
      [(AAFAnalyticsEventSecurity *)v11 sendMetricWithResult:0 error:v19];
      if (a4)
      {
        v39 = v19;
        goto LABEL_46;
      }

      goto LABEL_64;
    }

    v53 = 0;
    v25 = [v12 verificationFailed:&v53];
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
        v32 = [(KCJoiningAcceptSession *)self context];
        v46 = v12;
        v33 = [v12 secret];
        v52 = v19;
        v34 = [v32 resetWithPassword:v33 error:&v52];
        v35 = v52;

        if (!v34)
        {
          v18 = 0;
          v19 = v35;
          v12 = v46;
          if (v35)
          {
            goto LABEL_41;
          }

          goto LABEL_40;
        }

        v51 = v35;
        v18 = [(KCJoiningAcceptSession *)self copyChallengeMessage:&v51];
        v19 = v51;

        v12 = v46;
        if (!v18)
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
        v18 = [MEMORY[0x277CBEA90] data];
        if (!v18)
        {
          goto LABEL_39;
        }

        break;
      case 0:
        if (!v19)
        {
          v27 = MEMORY[0x277CCA9B8];
          v28 = KCErrorDomain;
          v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Delegate returned error without filling in error: %@", v12];
          v19 = [v27 errorWithDomain:v28 code:38 description:v29];
        }

        [(AAFAnalyticsEventSecurity *)v11 sendMetricWithResult:0 error:v19];
        if (a4)
        {
          v30 = v19;
          v18 = 0;
LABEL_46:
          v23 = 0;
LABEL_47:
          *a4 = v19;
LABEL_65:

          goto LABEL_66;
        }

        v18 = 0;
LABEL_64:
        v23 = 0;
        goto LABEL_65;
      default:
        v18 = 0;
        goto LABEL_39;
    }

    if (!v19)
    {
      v50 = 0;
      v36 = [KCJoiningMessage messageWithType:0 data:v18 error:&v50];
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
      if (!a4)
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
  if (a4)
  {
    v24 = v19;
    v23 = 0;
    *a4 = v19;
  }

  else
  {
    v23 = 0;
  }

LABEL_66:

  v43 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)processInitialMessage:(id)a3 error:(id *)a4
{
  v73 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v60 = 0;
  v7 = [AAFAnalyticsEventSecurity alloc];
  v8 = [(KCJoiningAcceptSession *)self altDSID];
  v9 = [(KCJoiningAcceptSession *)self flowID];
  v10 = [(KCJoiningAcceptSession *)self deviceSessionID];
  LOBYTE(v51) = 1;
  v11 = [(AAFAnalyticsEventSecurity *)v7 initWithKeychainCircleMetrics:0 altDSID:v8 flowID:v9 deviceSessionID:v10 eventName:@"com.apple.security.piggybackingAcceptorInitialMessage" testsAreEnabled:metricsAreEnabled canSendMetrics:v51 category:&unk_2843768F0];

  v58 = 0;
  v59 = 0;
  v57 = 0;
  v12 = extractStartFromInitialMessage(v6, &v60, &v59, &v58, &v57);
  v13 = v59;
  v52 = v58;
  v14 = v57;
  [(KCJoiningAcceptSession *)self setStartMessage:v12];

  v15 = [(KCJoiningAcceptSession *)self startMessage];
  if (v15)
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
    if (a4)
    {
LABEL_13:
      v19 = v14;
      v20 = 0;
      *a4 = v14;
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
        v23 = [(KCJoiningAcceptSession *)self joiningConfiguration];
        v24 = [v23 testsEnabled];

        if ((v24 & 1) == 0)
        {
          v44 = secLogObjForScope("SecError");
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_22EB09000, v44, OS_LOG_TYPE_DEFAULT, "joining: device does not support SOS, failing flow", &buf, 2u);
          }

          v14 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:20 description:@"Unable to piggyback with device due to lack of trust system support"];
          [(AAFAnalyticsEventSecurity *)v11 sendMetricWithResult:0 error:v14];
          if (a4)
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
    if (a4)
    {
      v37 = v14;
      v20 = 0;
      *a4 = v14;
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_70;
  }

  self->_state = 1;
  v28 = objc_alloc(MEMORY[0x277CCACA8]);
  v29 = [(KCJoiningAcceptSession *)self octagon];
  v30 = [v28 initWithData:v29 encoding:4];

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
    v31 = [(KCJoiningAcceptSession *)self otControl];
    v32 = [(KCJoiningAcceptSession *)self controlArguments];
    v33 = [(KCJoiningAcceptSession *)self joiningConfiguration];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __54__KCJoiningAcceptSession_processInitialMessage_error___block_invoke;
    v55[3] = &unk_278863D88;
    v55[4] = &buf;
    v55[5] = &v63;
    [v31 rpcEpochWithArguments:v32 configuration:v33 reply:v55];

    v34 = *(*(&buf + 1) + 40);
    if (v34)
    {
      if (a4)
      {
        v35 = v34;
        *a4 = v34;
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
        if (a4)
        {
          v48 = v14;
          *a4 = v14;
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
    v38 = [(KCJoiningAcceptSession *)self joiningConfiguration];
    v39 = [v38 testsEnabled];

    if (!v39)
    {
      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:20 description:@"Unable to piggyback with device due to lack of trust system support"];
      [(AAFAnalyticsEventSecurity *)v11 sendMetricWithResult:0 error:v14];
      if (!a4)
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
    if (!a4)
    {
      goto LABEL_69;
    }

    v42 = v14;
LABEL_53:
    *a4 = v14;
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
  v4 = [(KCJoiningAcceptSession *)self otControl];
  v5 = [(KCJoiningAcceptSession *)self controlArguments];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__KCJoiningAcceptSession_shouldAcceptOctagonRequests__block_invoke;
  v7[3] = &unk_278863D50;
  v7[4] = &v8;
  [v4 fetchTrustStatus:v5 configuration:v3 reply:v7];

  LOBYTE(v4) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
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

- (id)copyChallengeMessage:(id *)a3
{
  v5 = [(KCJoiningAcceptSession *)self context];
  v6 = [(KCJoiningAcceptSession *)self startMessage];
  v7 = [v5 copyChallengeFor:v6 error:a3];

  if (v7)
  {
    v8 = MEMORY[0x277CBEA90];
    v9 = [(KCJoiningAcceptSession *)self context];
    v10 = [v9 salt];
    v11 = [v8 dataWithEncodedSequenceData:v10 data:v7 error:a3];

    if ([(KCJoiningAcceptSession *)self setupSession:a3])
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
  v4 = [(KCJoiningAcceptSession *)self dsid];
  v5 = [(KCJoiningAcceptSession *)self stateString];
  v6 = [(KCJoiningAcceptSession *)self context];
  v7 = [(KCJoiningAcceptSession *)self piggy_uuid];
  v8 = [v3 stringWithFormat:@"<KCJoiningAcceptSession: %lld %@ %@ uuid: %@>", v4, v5, v6, v7];

  return v8;
}

- (id)stateString
{
  v3 = [(KCJoiningAcceptSession *)self state];
  if (v3 >= 4)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", -[KCJoiningAcceptSession state](self, "state")];
  }

  else
  {
    v4 = off_278863E28[v3];
  }

  return v4;
}

- (KCJoiningAcceptSession)initWithSecretDelegate:(id)a3 circleDelegate:(id)a4 dsid:(unint64_t)a5 altDSID:(id)a6 flowID:(id)a7 deviceSessionID:(id)a8 rng:(ccrng_state *)a9 error:(id *)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v19 = a7;
  v45 = a8;
  v47.receiver = self;
  v47.super_class = KCJoiningAcceptSession;
  v20 = [(KCJoiningAcceptSession *)&v47 init];
  if (v20)
  {
    v41 = a8;
    v42 = v19;
    v43 = v18;
    obj = v17;
    v21 = secLogObjForScope("accepting");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22EB09000, v21, OS_LOG_TYPE_DEFAULT, "initWithSecretDelegate", buf, 2u);
    }

    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", a5];
    v23 = [KCSRPServerContext alloc];
    v24 = [v16 secret];
    v25 = ccsha256_di();
    v26 = [(KCSRPServerContext *)v23 initWithUser:v22 password:v24 digestInfo:v25 group:ccsrp_gp_rfc5054_3072() randomSource:a9];
    context = v20->_context;
    v20->_context = v26;

    objc_storeWeak(&v20->_secretDelegate, v16);
    v17 = obj;
    objc_storeWeak(&v20->_circleDelegate, obj);
    v20->_state = 0;
    v20->_dsid = a5;
    piggy_uuid = v20->_piggy_uuid;
    v20->_piggy_uuid = 0;

    v29 = [MEMORY[0x277CBEB38] dictionary];
    defaults = v20->_defaults;
    v20->_defaults = v29;

    objc_storeStrong(&v20->_altDSID, a6);
    objc_storeStrong(&v20->_flowID, a7);
    objc_storeStrong(&v20->_deviceSessionID, v41);
    v31 = [MEMORY[0x277CDBD58] controlObject:1 error:a10];
    otControl = v20->_otControl;
    v20->_otControl = v31;

    v20->_piggy_version = 2;
    v33 = objc_alloc(MEMORY[0x277CDBD68]);
    v34 = [MEMORY[0x277CCAD78] UUID];
    v35 = [v34 UUIDString];
    v36 = [v33 initWithProtocolType:@"OctagonPiggybacking" uniqueDeviceID:@"acceptor-deviceid" uniqueClientID:@"requester-deviceid" pairingUUID:v35 epoch:0 isInitiator:0];
    joiningConfiguration = v20->_joiningConfiguration;
    v20->_joiningConfiguration = v36;

    v38 = objc_alloc_init(MEMORY[0x277CDBD60]);
    controlArguments = v20->_controlArguments;
    v20->_controlArguments = v38;

    v19 = v42;
    v18 = v43;
  }

  return v20;
}

- (BOOL)setupSession:(id *)a3
{
  v10 = [(KCSRPContext *)self->_context getKey];
  if (v10)
  {
    v11 = [KCAESGCMDuplexSession sessionAsReceiver:v10 context:[(KCJoiningAcceptSession *)self dsid]];
    session = self->_session;
    self->_session = v11;

    v13 = [(KCJoiningAcceptSession *)self joiningConfiguration];
    v14 = [v13 pairingUUID];
    v15 = [(KCJoiningAcceptSession *)self session];
    [v15 setPairingUUID:v14];

    v16 = [(KCJoiningAcceptSession *)self altDSID];
    v17 = [(KCJoiningAcceptSession *)self session];
    [v17 setAltDSID:v16];

    v18 = [(KCJoiningAcceptSession *)self flowID];
    v19 = [(KCJoiningAcceptSession *)self session];
    [v19 setFlowID:v18];

    v20 = [(KCJoiningAcceptSession *)self deviceSessionID];
    v21 = [(KCJoiningAcceptSession *)self session];
    [v21 setDeviceSessionID:v20];

    v22 = [(KCJoiningAcceptSession *)self piggy_version];
    v23 = [(KCJoiningAcceptSession *)self session];
    [v23 setPiggybackingVersion:v22];

    [(KCJoiningAcceptSession *)self setPiggybacking_version_for_tests:0];
    v24 = [(KCJoiningAcceptSession *)self session];
    v25 = v24 != 0;
  }

  else
  {
    KCJoiningErrorCreate(7, a3, @"No session key available", v5, v6, v7, v8, v9, v27);
    v25 = 0;
  }

  return v25;
}

+ (id)sessionWithInitialMessage:(id)a3 secretDelegate:(id)a4 circleDelegate:(id)a5 dsid:(unint64_t)a6 error:(id *)a7
{
  v10 = a4;
  v11 = a5;
  v12 = ccrng();
  if (v12)
  {
    v18 = [[KCJoiningAcceptSession alloc] initWithSecretDelegate:v10 circleDelegate:v11 dsid:a6 altDSID:0 flowID:0 deviceSessionID:0 rng:v12 error:a7];
  }

  else
  {
    CoreCryptoError(0, a7, @"RNG fetch failed", v13, v14, v15, v16, v17, v20);
    v18 = 0;
  }

  return v18;
}

+ (id)sessionWithInitialMessage:(id)a3 secretDelegate:(id)a4 circleDelegate:(id)a5 dsid:(unint64_t)a6 altDSID:(id)a7 flowID:(id)a8 deviceSessionID:(id)a9 error:(id *)a10
{
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = ccrng();
  if (v19)
  {
    v25 = [[KCJoiningAcceptSession alloc] initWithSecretDelegate:v14 circleDelegate:v15 dsid:a6 altDSID:v16 flowID:v17 deviceSessionID:v18 rng:v19 error:a10];
  }

  else
  {
    CoreCryptoError(0, a10, @"RNG fetch failed", v20, v21, v22, v23, v24, v27);
    v25 = 0;
  }

  return v25;
}

@end
@interface KCJoiningRequestSecretSession
+ (id)sessionWithSecretDelegate:(id)a3 dsid:(unint64_t)a4 altDSID:(id)a5 flowID:(id)a6 deviceSessionID:(id)a7 error:(id *)a8;
+ (id)sessionWithSecretDelegate:(id)a3 dsid:(unint64_t)a4 error:(id *)a5;
- (BOOL)setupSession:(id *)a3;
- (KCJoiningRequestSecretDelegate)secretDelegate;
- (KCJoiningRequestSecretSession)initWithSecretDelegate:(id)a3 dsid:(unint64_t)a4 altDSID:(id)a5 flowID:(id)a6 deviceSessionID:(id)a7 error:(id *)a8;
- (KCJoiningRequestSecretSession)initWithSecretDelegate:(id)a3 dsid:(unint64_t)a4 altDSID:(id)a5 flowID:(id)a6 deviceSessionID:(id)a7 rng:(ccrng_state *)a8 error:(id *)a9;
- (id)copyResponseForChallenge:(id)a3 salt:(id)a4 secret:(id)a5 error:(id *)a6;
- (id)copyResponseForSecret:(id)a3 error:(id *)a4;
- (id)createUUID;
- (id)description;
- (id)handleChallenge:(id)a3 error:(id *)a4;
- (id)handleChallenge:(id)a3 secret:(id)a4 error:(id *)a5;
- (id)handleChallengeData:(id)a3 secret:(id)a4 error:(id *)a5;
- (id)handleVerification:(id)a3 error:(id *)a4;
- (id)initialMessage:(id *)a3;
- (id)processMessage:(id)a3 error:(id *)a4;
- (id)stateString;
- (void)setAltDSID:(id)a3;
@end

@implementation KCJoiningRequestSecretSession

- (KCJoiningRequestSecretDelegate)secretDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_secretDelegate);

  return WeakRetained;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(KCJoiningRequestSecretSession *)self dsid];
  v5 = [(KCJoiningRequestSecretSession *)self stateString];
  v6 = [(KCJoiningRequestSecretSession *)self context];
  v7 = [v3 stringWithFormat:@"<KCJoiningAcceptSession@%p %lld %@ %@>", self, v4, v5, v6];

  return v7;
}

- (id)stateString
{
  v3 = [(KCJoiningRequestSecretSession *)self state];
  if (v3 >= 3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", -[KCJoiningRequestSecretSession state](self, "state")];
  }

  else
  {
    v4 = off_278863660[v3];
  }

  return v4;
}

- (KCJoiningRequestSecretSession)initWithSecretDelegate:(id)a3 dsid:(unint64_t)a4 altDSID:(id)a5 flowID:(id)a6 deviceSessionID:(id)a7 rng:(ccrng_state *)a8 error:(id *)a9
{
  v39 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = secLogObjForScope("joining");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22EB09000, v18, OS_LOG_TYPE_DEFAULT, "joining: initWithSecretDelegate called", buf, 2u);
  }

  v36.receiver = self;
  v36.super_class = KCJoiningRequestSecretSession;
  v19 = [(KCJoiningRequestSecretSession *)&v36 init];
  v20 = v19;
  if (v19)
  {
    objc_storeWeak(&v19->_secretDelegate, v14);
    v20->_state = 0;
    v20->_dsid = a4;
    objc_storeStrong(&v20->_altDSID, a5);
    objc_storeStrong(&v20->_flowID, a6);
    objc_storeStrong(&v20->_deviceSessionID, a7);
    v21 = [MEMORY[0x277CBEB38] dictionary];
    defaults = v20->_defaults;
    v20->_defaults = v21;

    v20->_piggy_version = 2;
    v23 = [MEMORY[0x277CCAD78] UUID];
    v24 = [v23 UUIDString];
    sessionUUID = v20->_sessionUUID;
    v20->_sessionUUID = v24;

    v26 = secLogObjForScope("joining");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [(KCJoiningRequestSecretSession *)v20 sessionUUID];
      *buf = 138412290;
      v38 = v27;
      _os_log_impl(&dword_22EB09000, v26, OS_LOG_TYPE_DEFAULT, "joining: initWithSecretDelegate called, uuid=%@", buf, 0xCu);
    }

    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", a4];
    v29 = [KCSRPClientContext alloc];
    v30 = ccsha256_di();
    v31 = [(KCSRPContext *)v29 initWithUser:v28 digestInfo:v30 group:ccsrp_gp_rfc5054_3072() randomSource:a8];
    context = v20->_context;
    v20->_context = v31;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v20;
}

- (KCJoiningRequestSecretSession)initWithSecretDelegate:(id)a3 dsid:(unint64_t)a4 altDSID:(id)a5 flowID:(id)a6 deviceSessionID:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = ccrng();
  if (v18)
  {
    self = [(KCJoiningRequestSecretSession *)self initWithSecretDelegate:v14 dsid:a4 altDSID:v15 flowID:v16 deviceSessionID:v17 rng:v18 error:a8];
    v24 = self;
  }

  else
  {
    CoreCryptoError(0, a8, @"RNG fetch failed", v19, v20, v21, v22, v23, v26);
    v24 = 0;
  }

  return v24;
}

- (id)processMessage:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = secLogObjForScope("joining");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_22EB09000, v7, OS_LOG_TYPE_DEFAULT, "joining: KCJoiningRequestSecretSession processMessage called", &v18, 2u);
  }

  v8 = [KCJoiningMessage messageWithDER:v6 error:a4];

  if (v8)
  {
    state = self->_state;
    switch(state)
    {
      case 2:
        KCJoiningErrorCreate(6, a4, @"Done, no messages expected.", v9, v10, v11, v12, v13, v18);
        break;
      case 1:
        v15 = [(KCJoiningRequestSecretSession *)self handleVerification:v8 error:a4];
        goto LABEL_9;
      case 0:
        v15 = [(KCJoiningRequestSecretSession *)self handleChallenge:v8 error:a4];
LABEL_9:
        v16 = v15;
        goto LABEL_12;
    }
  }

  v16 = 0;
LABEL_12:

  return v16;
}

- (id)handleVerification:(id)a3 error:(id *)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = secLogObjForScope("joining");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22EB09000, v7, OS_LOG_TYPE_DEFAULT, "joining: KCJoiningRequestSecretSession handleVerification called", buf, 2u);
  }

  v8 = [AAFAnalyticsEventSecurity alloc];
  v9 = [(KCJoiningRequestSecretSession *)self altDSID];
  v10 = [(KCJoiningRequestSecretSession *)self flowID];
  v11 = [(KCJoiningRequestSecretSession *)self deviceSessionID];
  LOBYTE(v51) = 1;
  v12 = [(AAFAnalyticsEventSecurity *)v8 initWithKeychainCircleMetrics:0 altDSID:v9 flowID:v10 deviceSessionID:v11 eventName:@"com.apple.security.piggybackingSessionInitiatorHandleVerification" testsAreEnabled:metricsAreEnabled canSendMetrics:v51 category:&unk_2843768F0];

  v13 = [(KCJoiningRequestSecretSession *)self secretDelegate];
  if (![v6 type])
  {
    v26 = [v6 firstData];
    v27 = [v26 length];

    v28 = [v13 verificationFailed:v27 == 0];
    if (!v28)
    {
      v21 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:29 description:@"next secret is nil"];
      v39 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v58 = v21;
        _os_log_impl(&dword_22EB09000, v39, OS_LOG_TYPE_DEFAULT, "joining: next secret is nil: %@", buf, 0xCu);
      }

      [(AAFAnalyticsEventSecurity *)v12 sendMetricWithResult:0 error:v21];
      if (!a4)
      {
        v25 = 0;
        goto LABEL_59;
      }

      v40 = v21;
      v25 = 0;
LABEL_58:
      *a4 = v21;
      goto LABEL_59;
    }

    if (v27)
    {
      v29 = [v6 firstData];
      v55 = 0;
      v25 = [(KCJoiningRequestSecretSession *)self handleChallengeData:v29 secret:v28 error:&v55];
      v21 = v55;

      if (v25 && !v21)
      {
        v30 = secLogObjForScope("joining");
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v31 = "successfully handled challenge data";
LABEL_36:
          _os_log_impl(&dword_22EB09000, v30, OS_LOG_TYPE_DEFAULT, v31, buf, 2u);
          goto LABEL_37;
        }

        goto LABEL_37;
      }

      if (!v21)
      {
        v21 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:28 description:@"failed to handle challenge data"];
      }

      v44 = secLogObjForScope("SecError");
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_56;
      }

      *buf = 138412290;
      v58 = v21;
      v45 = "joining: failed to handle challenge data: %@";
    }

    else
    {
      v56 = 0;
      v25 = [(KCJoiningRequestSecretSession *)self copyResponseForSecret:v28 error:&v56];
      v41 = v56;
      v21 = v41;
      if (v25 && !v41)
      {
        v30 = secLogObjForScope("joining");
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v31 = "successfully copied response message";
          goto LABEL_36;
        }

LABEL_37:

        [(AAFAnalyticsEventSecurity *)v12 sendMetricWithResult:1 error:0];
        v21 = 0;
LABEL_59:

        goto LABEL_69;
      }

      if (!v41)
      {
        v21 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:34 description:@"failed to copy response"];
      }

      v44 = secLogObjForScope("SecError");
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_56;
      }

      *buf = 138412290;
      v58 = v21;
      v45 = "joining: Failed to copy response message: %@";
    }

    _os_log_impl(&dword_22EB09000, v44, OS_LOG_TYPE_DEFAULT, v45, buf, 0xCu);
LABEL_56:

    [(AAFAnalyticsEventSecurity *)v12 sendMetricWithResult:0 error:v21];
    if (!a4)
    {
      goto LABEL_59;
    }

    v46 = v21;
    goto LABEL_58;
  }

  if ([v6 type] != 3)
  {
    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:30 description:@"Expected verification!"];
    v32 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v58 = v21;
      _os_log_impl(&dword_22EB09000, v32, OS_LOG_TYPE_DEFAULT, "joining: expected vertification message type: %@", buf, 0xCu);
    }

    [(AAFAnalyticsEventSecurity *)v12 sendMetricWithResult:0 error:v21];
    if (a4)
    {
      v33 = v21;
      v25 = 0;
      *a4 = v21;
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  v14 = [(KCJoiningRequestSecretSession *)self context];
  v15 = [v6 firstData];
  v54 = 0;
  v16 = [v14 verifyConfirmation:v15 error:&v54];
  v17 = v54;

  if (v16)
  {
    v18 = [(KCJoiningRequestSecretSession *)self session];
    v19 = [v6 secondData];
    v53 = v17;
    v20 = [v18 decryptAndVerify:v19 error:&v53];
    v21 = v53;

    if (!v20 || v21)
    {
      if (!v21)
      {
        v21 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:32 description:@"decrypt and verify failed"];
      }

      v42 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v58 = v21;
        _os_log_impl(&dword_22EB09000, v42, OS_LOG_TYPE_DEFAULT, "joining: decrypt and verify failed: %@", buf, 0xCu);
      }

      [(AAFAnalyticsEventSecurity *)v12 sendMetricWithResult:0 error:v21];
      if (a4)
      {
        v43 = v21;
        *a4 = v21;
      }
    }

    else
    {
      v52 = 0;
      v22 = [MEMORY[0x277CCACA8] decodeFromDER:v20 error:&v52];
      v23 = v52;
      v21 = v23;
      if (v22 && !v23)
      {
        v24 = [v13 processAccountCode:v22 error:a4];

        if (v24)
        {
          self->_state = 2;
          [(AAFAnalyticsEventSecurity *)v12 sendMetricWithResult:1 error:0];
          v25 = [MEMORY[0x277CBEA90] data];
          v21 = 0;
          goto LABEL_69;
        }

        v21 = 0;
        goto LABEL_68;
      }

      if (!v23)
      {
        v21 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:33 description:@"decode from der failed"];
      }

      v47 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v58 = v21;
        _os_log_impl(&dword_22EB09000, v47, OS_LOG_TYPE_DEFAULT, "joining: decode from der failed: %@", buf, 0xCu);
      }

      [(AAFAnalyticsEventSecurity *)v12 sendMetricWithResult:0 error:v21];
      if (a4)
      {
        v48 = v21;
        *a4 = v21;
      }
    }

LABEL_68:
    v25 = 0;
    goto LABEL_69;
  }

  if (!v17)
  {
    v34 = MEMORY[0x277CCA9B8];
    v35 = KCErrorDomain;
    v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"Got verification but  acceptor doesn't have matching secret: %@", self];
    v17 = [v34 errorWithDomain:v35 code:31 description:v36];
  }

  v37 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v58 = self;
    v59 = 2112;
    v60 = v17;
    _os_log_impl(&dword_22EB09000, v37, OS_LOG_TYPE_DEFAULT, "joining: Verification failed: %@, error: %@", buf, 0x16u);
  }

  [(AAFAnalyticsEventSecurity *)v12 sendMetricWithResult:0 error:v17];
  if (a4)
  {
    v38 = v17;
    v25 = 0;
    *a4 = v17;
  }

  else
  {
    v25 = 0;
  }

  v21 = v17;
LABEL_69:

  v49 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)handleChallenge:(id)a3 error:(id *)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [AAFAnalyticsEventSecurity alloc];
  v8 = [(KCJoiningRequestSecretSession *)self altDSID];
  v9 = [(KCJoiningRequestSecretSession *)self flowID];
  v10 = [(KCJoiningRequestSecretSession *)self deviceSessionID];
  LOBYTE(v20) = 1;
  v11 = [(AAFAnalyticsEventSecurity *)v7 initWithKeychainCircleMetrics:0 altDSID:v8 flowID:v9 deviceSessionID:v10 eventName:@"com.apple.security.piggybackingSessionInitiatorHandleChallenge" testsAreEnabled:metricsAreEnabled canSendMetrics:v20 category:&unk_2843768F0];

  v12 = [(KCJoiningRequestSecretSession *)self secretDelegate];
  v13 = [v12 secret];
  v21 = 0;
  v14 = [(KCJoiningRequestSecretSession *)self handleChallenge:v6 secret:v13 error:&v21];

  v15 = v21;
  if (!v14 || v15)
  {
    if (!v15)
    {
      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:27 description:@"failed to create response message"];
    }

    v16 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v15;
      _os_log_impl(&dword_22EB09000, v16, OS_LOG_TYPE_DEFAULT, "Failed to create response message: %@", buf, 0xCu);
    }

    [(AAFAnalyticsEventSecurity *)v11 sendMetricWithResult:0 error:v15];
    if (a4)
    {
      v17 = v15;
      *a4 = v15;
    }
  }

  else
  {
    [(AAFAnalyticsEventSecurity *)v11 sendMetricWithResult:1 error:0];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)handleChallenge:(id)a3 secret:(id)a4 error:(id *)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = secLogObjForScope("joining");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v34 = 0;
    _os_log_impl(&dword_22EB09000, v10, OS_LOG_TYPE_DEFAULT, "joining: KCJoiningRequestSecretSession handleChallenge called", v34, 2u);
  }

  if ([v8 type] == 1)
  {
    v16 = [v8 secondData];
    if (v16)
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    [(KCJoiningRequestSecretSession *)self setPiggy_version:v17];

    v18 = [(KCJoiningRequestSecretSession *)self piggy_version];
    v19 = [(KCJoiningRequestSecretSession *)self session];
    [v19 setPiggybackingVersion:v18];

    v20 = [(KCJoiningRequestSecretSession *)self altDSID];
    v21 = [(KCJoiningRequestSecretSession *)self session];
    [v21 setAltDSID:v20];

    if ([(KCJoiningRequestSecretSession *)self piggy_version]== 2)
    {
      v22 = [OTPairingMessage alloc];
      v23 = [v8 secondData];
      v24 = [(OTPairingMessage *)v22 initWithData:v23];

      if ([(OTPairingMessage *)v24 hasEpoch])
      {
        v25 = secLogObjForScope("octagon");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [(OTPairingMessage *)v24 epoch];
          v27 = [v26 dictionaryRepresentation];
          *v34 = 138412290;
          *&v34[4] = v27;
          _os_log_impl(&dword_22EB09000, v25, OS_LOG_TYPE_DEFAULT, "received epoch message: %@", v34, 0xCu);
        }

        v28 = [(OTPairingMessage *)v24 epoch];
        -[KCJoiningRequestSecretSession setEpoch:](self, "setEpoch:", [v28 epoch]);
      }

      else
      {
        v30 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *v34 = 0;
          _os_log_impl(&dword_22EB09000, v30, OS_LOG_TYPE_DEFAULT, "octagon: acceptor did not send its epoch. discontinuing octagon protocol. downgrading to verison 1", v34, 2u);
        }

        [(KCJoiningRequestSecretSession *)self setPiggy_version:1];
      }
    }

    v31 = [v8 firstData];
    v29 = [(KCJoiningRequestSecretSession *)self handleChallengeData:v31 secret:v9 error:a5];
  }

  else
  {
    KCJoiningErrorCreate(6, a5, @"Expected challenge!", v11, v12, v13, v14, v15, *v34);
    v29 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v29;
}

- (id)handleChallengeData:(id)a3 secret:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = secLogObjForScope("joining");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22EB09000, v10, OS_LOG_TYPE_DEFAULT, "joining: KCJoiningRequestSecretSession handleChallengeData called", buf, 2u);
  }

  v16 = 0;
  v17 = 0;
  v11 = [v9 decodeSequenceData:&v17 data:&v16 error:a5];

  v12 = v17;
  v13 = v16;
  v14 = 0;
  if (v11)
  {
    v14 = [(KCJoiningRequestSecretSession *)self copyResponseForChallenge:v13 salt:v12 secret:v8 error:a5];
  }

  return v14;
}

- (id)copyResponseForSecret:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(KCJoiningRequestSecretSession *)self challenge];
  v8 = [(KCJoiningRequestSecretSession *)self salt];
  v9 = [(KCJoiningRequestSecretSession *)self copyResponseForChallenge:v7 salt:v8 secret:v6 error:a4];

  return v9;
}

- (id)copyResponseForChallenge:(id)a3 salt:(id)a4 secret:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = secLogObjForScope("joining");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_22EB09000, v13, OS_LOG_TYPE_DEFAULT, "joining: KCJoiningRequestSecretSession copyResponseForChallenge called", v18, 2u);
  }

  v14 = [(KCSRPClientContext *)self->_context copyResposeToChallenge:v10 password:v12 salt:v11 error:a6];
  if (v14 && [(KCJoiningRequestSecretSession *)self setupSession:a6])
  {
    [(KCJoiningRequestSecretSession *)self setChallenge:v10];
    [(KCJoiningRequestSecretSession *)self setSalt:v11];
    self->_state = 1;
    v15 = [KCJoiningMessage messageWithType:2 data:v14 error:a6];
    v16 = [v15 der];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)setAltDSID:(id)a3
{
  objc_storeStrong(&self->_altDSID, a3);
  v5 = a3;
  v6 = [(KCJoiningRequestSecretSession *)self session];
  [v6 setAltDSID:v5];
}

- (BOOL)setupSession:(id *)a3
{
  v10 = [(KCSRPContext *)self->_context getKey];
  if (v10)
  {
    v11 = [KCAESGCMDuplexSession sessionAsSender:v10 context:[(KCJoiningRequestSecretSession *)self dsid]];
    session = self->_session;
    self->_session = v11;

    v13 = [(KCJoiningRequestSecretSession *)self sessionUUID];
    v14 = [(KCJoiningRequestSecretSession *)self session];
    [v14 setPairingUUID:v13];

    v15 = [(KCJoiningRequestSecretSession *)self altDSID];
    v16 = [(KCJoiningRequestSecretSession *)self session];
    [v16 setAltDSID:v15];

    v17 = [(KCJoiningRequestSecretSession *)self piggy_version];
    v18 = [(KCJoiningRequestSecretSession *)self session];
    [v18 setPiggybackingVersion:v17];

    v19 = [(KCJoiningRequestSecretSession *)self session];
    v20 = v19 != 0;
  }

  else
  {
    KCJoiningErrorCreate(7, a3, @"No session key available", v5, v6, v7, v8, v9, v22);
    v20 = 0;
  }

  return v20;
}

- (id)initialMessage:(id *)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = [AAFAnalyticsEventSecurity alloc];
  v6 = [(KCJoiningRequestSecretSession *)self altDSID];
  v7 = [(KCJoiningRequestSecretSession *)self flowID];
  v8 = [(KCJoiningRequestSecretSession *)self deviceSessionID];
  LOBYTE(v28) = 1;
  v9 = [(AAFAnalyticsEventSecurity *)v5 initWithKeychainCircleMetrics:0 altDSID:v6 flowID:v7 deviceSessionID:v8 eventName:@"com.apple.security.piggybackingSessionInitiatorInitialMessage" testsAreEnabled:metricsAreEnabled canSendMetrics:v28 category:&unk_2843768F0];

  context = self->_context;
  v29 = 0;
  v11 = [(KCSRPClientContext *)context copyStart:&v29];
  v12 = v29;
  v13 = v12;
  if (v11 && !v12)
  {
    v14 = secLogObjForScope("joining");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22EB09000, v14, OS_LOG_TYPE_DEFAULT, "joining: KCJoiningRequestSecretSession initialMessage called", buf, 2u);
    }

    if ([(KCJoiningRequestSecretSession *)self piggy_version]== 2)
    {
      v15 = [(KCJoiningRequestSecretSession *)self createUUID];
      v16 = [@"o" dataUsingEncoding:134217984];
      v17 = [MEMORY[0x277CBEB28] dataWithLength:{sizeof_initialmessage_version2(v11, 1, v15, v16)}];
      [v17 mutableBytes];
      [v17 mutableBytes];
      [v17 length];
      if (encode_initialmessage_version2(v11, v15, v16))
      {

LABEL_14:
LABEL_17:
        [(AAFAnalyticsEventSecurity *)v9 sendMetricWithResult:1 error:0];
        v17 = v17;
        v13 = 0;
        v19 = v17;
LABEL_29:

        goto LABEL_30;
      }

      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:24 description:@"failed to create version 2 message"];
      v20 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = v13;
        _os_log_impl(&dword_22EB09000, v20, OS_LOG_TYPE_DEFAULT, "failed to create version 2 message: %@", buf, 0xCu);
      }

      [(AAFAnalyticsEventSecurity *)v9 sendMetricWithResult:0 error:v13];
      if (a3)
      {
        v21 = v13;
        *a3 = v13;
      }
    }

    else
    {
      if ([(KCJoiningRequestSecretSession *)self piggy_version]!= 1)
      {
        v17 = [MEMORY[0x277CBEB28] dataWithLength:sizeof_initialmessage(v11)];
        [v17 mutableBytes];
        [v17 mutableBytes];
        [v17 length];
        if (encode_initialmessage(v11))
        {
          goto LABEL_17;
        }

        v13 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:26 description:@"failed to create initial message"];
        v26 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v31 = v13;
          _os_log_impl(&dword_22EB09000, v26, OS_LOG_TYPE_DEFAULT, "failed to create version initial message: %@", buf, 0xCu);
        }

        [(AAFAnalyticsEventSecurity *)v9 sendMetricWithResult:0 error:v13];
        if (a3)
        {
          v27 = v13;
          v19 = 0;
          *a3 = v13;
          goto LABEL_29;
        }

LABEL_28:
        v19 = 0;
        goto LABEL_29;
      }

      v15 = [(KCJoiningRequestSecretSession *)self createUUID];
      v17 = [MEMORY[0x277CBEB28] dataWithLength:{sizeof_initialmessage_version1(v11, 1, v15)}];
      [v17 mutableBytes];
      [v17 mutableBytes];
      [v17 length];
      if (encode_initialmessage_version1(v11, v15))
      {
        goto LABEL_14;
      }

      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:25 description:@"failed to create version 1 message"];
      v22 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = v13;
        _os_log_impl(&dword_22EB09000, v22, OS_LOG_TYPE_DEFAULT, "failed to create version 1 message: %@", buf, 0xCu);
      }

      [(AAFAnalyticsEventSecurity *)v9 sendMetricWithResult:0 error:v13];
      if (a3)
      {
        v23 = v13;
        *a3 = v13;
      }
    }

    goto LABEL_28;
  }

  if (!v12)
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:23 description:@"Failed to copy start message"];
  }

  [(AAFAnalyticsEventSecurity *)v9 sendMetricWithResult:0 error:v13];
  if (a3)
  {
    v18 = v13;
    v19 = 0;
    *a3 = v13;
  }

  else
  {
    v19 = 0;
  }

LABEL_30:

  v24 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)createUUID
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAD78] UUID];
  v8[0] = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = [v3 UUIDString];
  [(KCJoiningRequestSecretSession *)self setPiggy_uuid:v4];

  [v3 getUUIDBytes:v8];
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:v8 length:16];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)sessionWithSecretDelegate:(id)a3 dsid:(unint64_t)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [[KCJoiningRequestSecretSession alloc] initWithSecretDelegate:v7 dsid:a4 altDSID:0 flowID:0 deviceSessionID:0 error:a5];

  return v8;
}

+ (id)sessionWithSecretDelegate:(id)a3 dsid:(unint64_t)a4 altDSID:(id)a5 flowID:(id)a6 deviceSessionID:(id)a7 error:(id *)a8
{
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a3;
  v17 = [[KCJoiningRequestSecretSession alloc] initWithSecretDelegate:v16 dsid:a4 altDSID:v15 flowID:v14 deviceSessionID:v13 error:a8];

  return v17;
}

@end
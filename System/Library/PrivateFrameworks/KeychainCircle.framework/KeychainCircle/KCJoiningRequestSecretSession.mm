@interface KCJoiningRequestSecretSession
+ (id)sessionWithSecretDelegate:(id)delegate dsid:(unint64_t)dsid altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID error:(id *)error;
+ (id)sessionWithSecretDelegate:(id)delegate dsid:(unint64_t)dsid error:(id *)error;
- (BOOL)setupSession:(id *)session;
- (KCJoiningRequestSecretDelegate)secretDelegate;
- (KCJoiningRequestSecretSession)initWithSecretDelegate:(id)delegate dsid:(unint64_t)dsid altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID error:(id *)error;
- (KCJoiningRequestSecretSession)initWithSecretDelegate:(id)delegate dsid:(unint64_t)dsid altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID rng:(ccrng_state *)rng error:(id *)error;
- (id)copyResponseForChallenge:(id)challenge salt:(id)salt secret:(id)secret error:(id *)error;
- (id)copyResponseForSecret:(id)secret error:(id *)error;
- (id)createUUID;
- (id)description;
- (id)handleChallenge:(id)challenge error:(id *)error;
- (id)handleChallenge:(id)challenge secret:(id)secret error:(id *)error;
- (id)handleChallengeData:(id)data secret:(id)secret error:(id *)error;
- (id)handleVerification:(id)verification error:(id *)error;
- (id)initialMessage:(id *)message;
- (id)processMessage:(id)message error:(id *)error;
- (id)stateString;
- (void)setAltDSID:(id)d;
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
  dsid = [(KCJoiningRequestSecretSession *)self dsid];
  stateString = [(KCJoiningRequestSecretSession *)self stateString];
  context = [(KCJoiningRequestSecretSession *)self context];
  v7 = [v3 stringWithFormat:@"<KCJoiningAcceptSession@%p %lld %@ %@>", self, dsid, stateString, context];

  return v7;
}

- (id)stateString
{
  state = [(KCJoiningRequestSecretSession *)self state];
  if (state >= 3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", -[KCJoiningRequestSecretSession state](self, "state")];
  }

  else
  {
    v4 = off_278863660[state];
  }

  return v4;
}

- (KCJoiningRequestSecretSession)initWithSecretDelegate:(id)delegate dsid:(unint64_t)dsid altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID rng:(ccrng_state *)rng error:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  dCopy = d;
  iDCopy = iD;
  sessionIDCopy = sessionID;
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
    objc_storeWeak(&v19->_secretDelegate, delegateCopy);
    v20->_state = 0;
    v20->_dsid = dsid;
    objc_storeStrong(&v20->_altDSID, d);
    objc_storeStrong(&v20->_flowID, iD);
    objc_storeStrong(&v20->_deviceSessionID, sessionID);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    defaults = v20->_defaults;
    v20->_defaults = dictionary;

    v20->_piggy_version = 2;
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    sessionUUID = v20->_sessionUUID;
    v20->_sessionUUID = uUIDString;

    v26 = secLogObjForScope("joining");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      sessionUUID = [(KCJoiningRequestSecretSession *)v20 sessionUUID];
      *buf = 138412290;
      v38 = sessionUUID;
      _os_log_impl(&dword_22EB09000, v26, OS_LOG_TYPE_DEFAULT, "joining: initWithSecretDelegate called, uuid=%@", buf, 0xCu);
    }

    dsid = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", dsid];
    v29 = [KCSRPClientContext alloc];
    v30 = ccsha256_di();
    v31 = [(KCSRPContext *)v29 initWithUser:dsid digestInfo:v30 group:ccsrp_gp_rfc5054_3072() randomSource:rng];
    context = v20->_context;
    v20->_context = v31;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v20;
}

- (KCJoiningRequestSecretSession)initWithSecretDelegate:(id)delegate dsid:(unint64_t)dsid altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID error:(id *)error
{
  delegateCopy = delegate;
  dCopy = d;
  iDCopy = iD;
  sessionIDCopy = sessionID;
  v18 = ccrng();
  if (v18)
  {
    self = [(KCJoiningRequestSecretSession *)self initWithSecretDelegate:delegateCopy dsid:dsid altDSID:dCopy flowID:iDCopy deviceSessionID:sessionIDCopy rng:v18 error:error];
    selfCopy = self;
  }

  else
  {
    CoreCryptoError(0, error, @"RNG fetch failed", v19, v20, v21, v22, v23, v26);
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)processMessage:(id)message error:(id *)error
{
  messageCopy = message;
  v7 = secLogObjForScope("joining");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_22EB09000, v7, OS_LOG_TYPE_DEFAULT, "joining: KCJoiningRequestSecretSession processMessage called", &v18, 2u);
  }

  v8 = [KCJoiningMessage messageWithDER:messageCopy error:error];

  if (v8)
  {
    state = self->_state;
    switch(state)
    {
      case 2:
        KCJoiningErrorCreate(6, error, @"Done, no messages expected.", v9, v10, v11, v12, v13, v18);
        break;
      case 1:
        v15 = [(KCJoiningRequestSecretSession *)self handleVerification:v8 error:error];
        goto LABEL_9;
      case 0:
        v15 = [(KCJoiningRequestSecretSession *)self handleChallenge:v8 error:error];
LABEL_9:
        v16 = v15;
        goto LABEL_12;
    }
  }

  v16 = 0;
LABEL_12:

  return v16;
}

- (id)handleVerification:(id)verification error:(id *)error
{
  v61 = *MEMORY[0x277D85DE8];
  verificationCopy = verification;
  v7 = secLogObjForScope("joining");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22EB09000, v7, OS_LOG_TYPE_DEFAULT, "joining: KCJoiningRequestSecretSession handleVerification called", buf, 2u);
  }

  v8 = [AAFAnalyticsEventSecurity alloc];
  altDSID = [(KCJoiningRequestSecretSession *)self altDSID];
  flowID = [(KCJoiningRequestSecretSession *)self flowID];
  deviceSessionID = [(KCJoiningRequestSecretSession *)self deviceSessionID];
  LOBYTE(v51) = 1;
  v12 = [(AAFAnalyticsEventSecurity *)v8 initWithKeychainCircleMetrics:0 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:@"com.apple.security.piggybackingSessionInitiatorHandleVerification" testsAreEnabled:metricsAreEnabled canSendMetrics:v51 category:&unk_2843768F0];

  secretDelegate = [(KCJoiningRequestSecretSession *)self secretDelegate];
  if (![verificationCopy type])
  {
    firstData = [verificationCopy firstData];
    v27 = [firstData length];

    v28 = [secretDelegate verificationFailed:v27 == 0];
    if (!v28)
    {
      v21 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:29 description:@"next secret is nil"];
      v39 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy = v21;
        _os_log_impl(&dword_22EB09000, v39, OS_LOG_TYPE_DEFAULT, "joining: next secret is nil: %@", buf, 0xCu);
      }

      [(AAFAnalyticsEventSecurity *)v12 sendMetricWithResult:0 error:v21];
      if (!error)
      {
        data = 0;
        goto LABEL_59;
      }

      v40 = v21;
      data = 0;
LABEL_58:
      *error = v21;
      goto LABEL_59;
    }

    if (v27)
    {
      firstData2 = [verificationCopy firstData];
      v55 = 0;
      data = [(KCJoiningRequestSecretSession *)self handleChallengeData:firstData2 secret:v28 error:&v55];
      v21 = v55;

      if (data && !v21)
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
      selfCopy = v21;
      v45 = "joining: failed to handle challenge data: %@";
    }

    else
    {
      v56 = 0;
      data = [(KCJoiningRequestSecretSession *)self copyResponseForSecret:v28 error:&v56];
      v41 = v56;
      v21 = v41;
      if (data && !v41)
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
      selfCopy = v21;
      v45 = "joining: Failed to copy response message: %@";
    }

    _os_log_impl(&dword_22EB09000, v44, OS_LOG_TYPE_DEFAULT, v45, buf, 0xCu);
LABEL_56:

    [(AAFAnalyticsEventSecurity *)v12 sendMetricWithResult:0 error:v21];
    if (!error)
    {
      goto LABEL_59;
    }

    v46 = v21;
    goto LABEL_58;
  }

  if ([verificationCopy type] != 3)
  {
    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:30 description:@"Expected verification!"];
    v32 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = v21;
      _os_log_impl(&dword_22EB09000, v32, OS_LOG_TYPE_DEFAULT, "joining: expected vertification message type: %@", buf, 0xCu);
    }

    [(AAFAnalyticsEventSecurity *)v12 sendMetricWithResult:0 error:v21];
    if (error)
    {
      v33 = v21;
      data = 0;
      *error = v21;
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  context = [(KCJoiningRequestSecretSession *)self context];
  firstData3 = [verificationCopy firstData];
  v54 = 0;
  v16 = [context verifyConfirmation:firstData3 error:&v54];
  v17 = v54;

  if (v16)
  {
    session = [(KCJoiningRequestSecretSession *)self session];
    secondData = [verificationCopy secondData];
    v53 = v17;
    v20 = [session decryptAndVerify:secondData error:&v53];
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
        selfCopy = v21;
        _os_log_impl(&dword_22EB09000, v42, OS_LOG_TYPE_DEFAULT, "joining: decrypt and verify failed: %@", buf, 0xCu);
      }

      [(AAFAnalyticsEventSecurity *)v12 sendMetricWithResult:0 error:v21];
      if (error)
      {
        v43 = v21;
        *error = v21;
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
        v24 = [secretDelegate processAccountCode:v22 error:error];

        if (v24)
        {
          self->_state = 2;
          [(AAFAnalyticsEventSecurity *)v12 sendMetricWithResult:1 error:0];
          data = [MEMORY[0x277CBEA90] data];
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
        selfCopy = v21;
        _os_log_impl(&dword_22EB09000, v47, OS_LOG_TYPE_DEFAULT, "joining: decode from der failed: %@", buf, 0xCu);
      }

      [(AAFAnalyticsEventSecurity *)v12 sendMetricWithResult:0 error:v21];
      if (error)
      {
        v48 = v21;
        *error = v21;
      }
    }

LABEL_68:
    data = 0;
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
    selfCopy = self;
    v59 = 2112;
    v60 = v17;
    _os_log_impl(&dword_22EB09000, v37, OS_LOG_TYPE_DEFAULT, "joining: Verification failed: %@, error: %@", buf, 0x16u);
  }

  [(AAFAnalyticsEventSecurity *)v12 sendMetricWithResult:0 error:v17];
  if (error)
  {
    v38 = v17;
    data = 0;
    *error = v17;
  }

  else
  {
    data = 0;
  }

  v21 = v17;
LABEL_69:

  v49 = *MEMORY[0x277D85DE8];

  return data;
}

- (id)handleChallenge:(id)challenge error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  challengeCopy = challenge;
  v7 = [AAFAnalyticsEventSecurity alloc];
  altDSID = [(KCJoiningRequestSecretSession *)self altDSID];
  flowID = [(KCJoiningRequestSecretSession *)self flowID];
  deviceSessionID = [(KCJoiningRequestSecretSession *)self deviceSessionID];
  LOBYTE(v20) = 1;
  v11 = [(AAFAnalyticsEventSecurity *)v7 initWithKeychainCircleMetrics:0 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:@"com.apple.security.piggybackingSessionInitiatorHandleChallenge" testsAreEnabled:metricsAreEnabled canSendMetrics:v20 category:&unk_2843768F0];

  secretDelegate = [(KCJoiningRequestSecretSession *)self secretDelegate];
  secret = [secretDelegate secret];
  v21 = 0;
  v14 = [(KCJoiningRequestSecretSession *)self handleChallenge:challengeCopy secret:secret error:&v21];

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
    if (error)
    {
      v17 = v15;
      *error = v15;
    }
  }

  else
  {
    [(AAFAnalyticsEventSecurity *)v11 sendMetricWithResult:1 error:0];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)handleChallenge:(id)challenge secret:(id)secret error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  challengeCopy = challenge;
  secretCopy = secret;
  v10 = secLogObjForScope("joining");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v34 = 0;
    _os_log_impl(&dword_22EB09000, v10, OS_LOG_TYPE_DEFAULT, "joining: KCJoiningRequestSecretSession handleChallenge called", v34, 2u);
  }

  if ([challengeCopy type] == 1)
  {
    secondData = [challengeCopy secondData];
    if (secondData)
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    [(KCJoiningRequestSecretSession *)self setPiggy_version:v17];

    piggy_version = [(KCJoiningRequestSecretSession *)self piggy_version];
    session = [(KCJoiningRequestSecretSession *)self session];
    [session setPiggybackingVersion:piggy_version];

    altDSID = [(KCJoiningRequestSecretSession *)self altDSID];
    session2 = [(KCJoiningRequestSecretSession *)self session];
    [session2 setAltDSID:altDSID];

    if ([(KCJoiningRequestSecretSession *)self piggy_version]== 2)
    {
      v22 = [OTPairingMessage alloc];
      secondData2 = [challengeCopy secondData];
      v24 = [(OTPairingMessage *)v22 initWithData:secondData2];

      if ([(OTPairingMessage *)v24 hasEpoch])
      {
        v25 = secLogObjForScope("octagon");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          epoch = [(OTPairingMessage *)v24 epoch];
          dictionaryRepresentation = [epoch dictionaryRepresentation];
          *v34 = 138412290;
          *&v34[4] = dictionaryRepresentation;
          _os_log_impl(&dword_22EB09000, v25, OS_LOG_TYPE_DEFAULT, "received epoch message: %@", v34, 0xCu);
        }

        epoch2 = [(OTPairingMessage *)v24 epoch];
        -[KCJoiningRequestSecretSession setEpoch:](self, "setEpoch:", [epoch2 epoch]);
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

    firstData = [challengeCopy firstData];
    v29 = [(KCJoiningRequestSecretSession *)self handleChallengeData:firstData secret:secretCopy error:error];
  }

  else
  {
    KCJoiningErrorCreate(6, error, @"Expected challenge!", v11, v12, v13, v14, v15, *v34);
    v29 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v29;
}

- (id)handleChallengeData:(id)data secret:(id)secret error:(id *)error
{
  secretCopy = secret;
  dataCopy = data;
  v10 = secLogObjForScope("joining");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22EB09000, v10, OS_LOG_TYPE_DEFAULT, "joining: KCJoiningRequestSecretSession handleChallengeData called", buf, 2u);
  }

  v16 = 0;
  v17 = 0;
  v11 = [dataCopy decodeSequenceData:&v17 data:&v16 error:error];

  v12 = v17;
  v13 = v16;
  v14 = 0;
  if (v11)
  {
    v14 = [(KCJoiningRequestSecretSession *)self copyResponseForChallenge:v13 salt:v12 secret:secretCopy error:error];
  }

  return v14;
}

- (id)copyResponseForSecret:(id)secret error:(id *)error
{
  secretCopy = secret;
  challenge = [(KCJoiningRequestSecretSession *)self challenge];
  salt = [(KCJoiningRequestSecretSession *)self salt];
  v9 = [(KCJoiningRequestSecretSession *)self copyResponseForChallenge:challenge salt:salt secret:secretCopy error:error];

  return v9;
}

- (id)copyResponseForChallenge:(id)challenge salt:(id)salt secret:(id)secret error:(id *)error
{
  challengeCopy = challenge;
  saltCopy = salt;
  secretCopy = secret;
  v13 = secLogObjForScope("joining");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_22EB09000, v13, OS_LOG_TYPE_DEFAULT, "joining: KCJoiningRequestSecretSession copyResponseForChallenge called", v18, 2u);
  }

  v14 = [(KCSRPClientContext *)self->_context copyResposeToChallenge:challengeCopy password:secretCopy salt:saltCopy error:error];
  if (v14 && [(KCJoiningRequestSecretSession *)self setupSession:error])
  {
    [(KCJoiningRequestSecretSession *)self setChallenge:challengeCopy];
    [(KCJoiningRequestSecretSession *)self setSalt:saltCopy];
    self->_state = 1;
    v15 = [KCJoiningMessage messageWithType:2 data:v14 error:error];
    v16 = [v15 der];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)setAltDSID:(id)d
{
  objc_storeStrong(&self->_altDSID, d);
  dCopy = d;
  session = [(KCJoiningRequestSecretSession *)self session];
  [session setAltDSID:dCopy];
}

- (BOOL)setupSession:(id *)session
{
  getKey = [(KCSRPContext *)self->_context getKey];
  if (getKey)
  {
    v11 = [KCAESGCMDuplexSession sessionAsSender:getKey context:[(KCJoiningRequestSecretSession *)self dsid]];
    session = self->_session;
    self->_session = v11;

    sessionUUID = [(KCJoiningRequestSecretSession *)self sessionUUID];
    session = [(KCJoiningRequestSecretSession *)self session];
    [session setPairingUUID:sessionUUID];

    altDSID = [(KCJoiningRequestSecretSession *)self altDSID];
    session2 = [(KCJoiningRequestSecretSession *)self session];
    [session2 setAltDSID:altDSID];

    piggy_version = [(KCJoiningRequestSecretSession *)self piggy_version];
    session3 = [(KCJoiningRequestSecretSession *)self session];
    [session3 setPiggybackingVersion:piggy_version];

    session4 = [(KCJoiningRequestSecretSession *)self session];
    v20 = session4 != 0;
  }

  else
  {
    KCJoiningErrorCreate(7, session, @"No session key available", v5, v6, v7, v8, v9, v22);
    v20 = 0;
  }

  return v20;
}

- (id)initialMessage:(id *)message
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = [AAFAnalyticsEventSecurity alloc];
  altDSID = [(KCJoiningRequestSecretSession *)self altDSID];
  flowID = [(KCJoiningRequestSecretSession *)self flowID];
  deviceSessionID = [(KCJoiningRequestSecretSession *)self deviceSessionID];
  LOBYTE(v28) = 1;
  v9 = [(AAFAnalyticsEventSecurity *)v5 initWithKeychainCircleMetrics:0 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID eventName:@"com.apple.security.piggybackingSessionInitiatorInitialMessage" testsAreEnabled:metricsAreEnabled canSendMetrics:v28 category:&unk_2843768F0];

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
      createUUID = [(KCJoiningRequestSecretSession *)self createUUID];
      v16 = [@"o" dataUsingEncoding:134217984];
      v17 = [MEMORY[0x277CBEB28] dataWithLength:{sizeof_initialmessage_version2(v11, 1, createUUID, v16)}];
      [v17 mutableBytes];
      [v17 mutableBytes];
      [v17 length];
      if (encode_initialmessage_version2(v11, createUUID, v16))
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
      if (message)
      {
        v21 = v13;
        *message = v13;
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
        if (message)
        {
          v27 = v13;
          v19 = 0;
          *message = v13;
          goto LABEL_29;
        }

LABEL_28:
        v19 = 0;
        goto LABEL_29;
      }

      createUUID = [(KCJoiningRequestSecretSession *)self createUUID];
      v17 = [MEMORY[0x277CBEB28] dataWithLength:{sizeof_initialmessage_version1(v11, 1, createUUID)}];
      [v17 mutableBytes];
      [v17 mutableBytes];
      [v17 length];
      if (encode_initialmessage_version1(v11, createUUID))
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
      if (message)
      {
        v23 = v13;
        *message = v13;
      }
    }

    goto LABEL_28;
  }

  if (!v12)
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:KCErrorDomain code:23 description:@"Failed to copy start message"];
  }

  [(AAFAnalyticsEventSecurity *)v9 sendMetricWithResult:0 error:v13];
  if (message)
  {
    v18 = v13;
    v19 = 0;
    *message = v13;
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
  uUID = [MEMORY[0x277CCAD78] UUID];
  v8[0] = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = 0xAAAAAAAAAAAAAAAALL;
  uUIDString = [uUID UUIDString];
  [(KCJoiningRequestSecretSession *)self setPiggy_uuid:uUIDString];

  [uUID getUUIDBytes:v8];
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:v8 length:16];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)sessionWithSecretDelegate:(id)delegate dsid:(unint64_t)dsid error:(id *)error
{
  delegateCopy = delegate;
  v8 = [[KCJoiningRequestSecretSession alloc] initWithSecretDelegate:delegateCopy dsid:dsid altDSID:0 flowID:0 deviceSessionID:0 error:error];

  return v8;
}

+ (id)sessionWithSecretDelegate:(id)delegate dsid:(unint64_t)dsid altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID error:(id *)error
{
  sessionIDCopy = sessionID;
  iDCopy = iD;
  dCopy = d;
  delegateCopy = delegate;
  v17 = [[KCJoiningRequestSecretSession alloc] initWithSecretDelegate:delegateCopy dsid:dsid altDSID:dCopy flowID:iDCopy deviceSessionID:sessionIDCopy error:error];

  return v17;
}

@end
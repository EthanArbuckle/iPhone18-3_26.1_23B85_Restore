@interface CDPCircleProxyImpl
+ (unint64_t)syncingStatusForAltDSID:(id)d;
- (BOOL)_registerCredentialsOnlyIfNeeded:(BOOL)needed;
- (BOOL)anyPeerHasEnabledViewsInSet:(id)set error:(id *)error;
- (BOOL)canAuthenticate;
- (BOOL)hasNonViewAwarePeers;
- (BOOL)removeNonViewAwarePeers:(id *)peers;
- (BOOL)removeThisDeviceFromCircle:(id *)circle;
- (BOOL)requestToJoinCircle:(id *)circle;
- (BOOL)requestToJoinCircleAfterRestore:(id *)restore;
- (BOOL)synchronizeCircleViews;
- (BOOL)tryRegisteringCredentials;
- (BOOL)waitForInitialSync:(id *)sync;
- (CDPCircleProxyImpl)initWithContext:(id)context;
- (CDPCircleProxyImpl)initWithContext:(id)context clique:(id)clique;
- (id)_initializeRecoveryKeyWithInfo:(id)info error:(id *)error;
- (id)_pairingChannelContext;
- (id)contextType;
- (id)pairingChannelAcceptor;
- (id)pairingChannelInitiator;
- (id)peerDeviceNamesByPeerID;
- (id)requestToResetProtectedData:(id *)data;
- (int)_sos_authenticatedCircleStatus:(id *)status;
- (int)_sos_circleStatus:(id *)status;
- (int)cachedSOSCircleStatus:(id *)status;
- (int)nonCachedSOSCircleStatus:(id *)status;
- (int64_t)_authenticatedCliqueStatus:(id *)status;
- (int64_t)cliqueStatus:(id *)status;
- (unint64_t)cachedCliqueStatus:(id *)status;
- (unint64_t)cdpStatusFromOT:(int64_t)t;
- (unint64_t)cdpStatusFromSOS:(int)s;
- (unint64_t)combinedCachedCircleStatus:(id *)status;
- (unint64_t)combinedCircleStatus:(id *)status;
- (void)_recoverOctagonUsingRecoveryKey:(id)key completion:(id)completion;
- (void)didJoinCircleAfterRecovery:(id)recovery;
- (void)hasNonViewAwarePeers;
- (void)recoverOctagonUsingCustodianInfo:(id)info completion:(id)completion;
- (void)reportFailure:(id)failure;
- (void)reportSuccess;
- (void)tryRegisteringCredentials;
- (void)waitForUpdate;
@end

@implementation CDPCircleProxyImpl

- (CDPCircleProxyImpl)initWithContext:(id)context
{
  contextCopy = context;
  cliqueConfiguration = [contextCopy cliqueConfiguration];

  if (cliqueConfiguration)
  {
    v6 = objc_alloc(MEMORY[0x1E697AA80]);
    cliqueConfiguration2 = [contextCopy cliqueConfiguration];
    v8 = [v6 initWithContextData:cliqueConfiguration2];
    self = [(CDPCircleProxyImpl *)self initWithContext:contextCopy clique:v8];

    selfCopy = self;
  }

  else
  {
    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [CDPCircleProxyImpl initWithContext:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (CDPCircleProxyImpl)initWithContext:(id)context clique:(id)clique
{
  v31 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  cliqueCopy = clique;
  dsid = [contextCopy dsid];

  if (dsid)
  {
    v20.receiver = self;
    v20.super_class = CDPCircleProxyImpl;
    v10 = [(CDPCircleProxyImpl *)&v20 init];
    p_isa = &v10->super.isa;
    if (v10)
    {
      objc_storeStrong(&v10->_cdpContext, context);
      objc_storeStrong(p_isa + 1, clique);
    }

    v12 = _CDPLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      appleID = [contextCopy appleID];
      dsid2 = [contextCopy dsid];
      type = [contextCopy type];
      *buf = 141559042;
      v22 = 1752392040;
      v23 = 2112;
      v24 = appleID;
      v25 = 2160;
      v26 = 1752392040;
      v27 = 2112;
      v28 = dsid2;
      v29 = 2048;
      v30 = type;
      _os_log_impl(&dword_1DED99000, v12, OS_LOG_TYPE_DEFAULT, "CDPCircleProxyImpl: appleID:%{mask.hash}@, dsid: %{mask.hash}@, type: %ld", buf, 0x34u);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    v17 = _CDPLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [CDPCircleProxyImpl initWithContext:clique:];
    }

    selfCopy = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)didJoinCircleAfterRecovery:(id)recovery
{
  recoveryCopy = recovery;
  if (recoveryCopy)
  {
    v6 = recoveryCopy;
    objc_storeStrong(&self->_clique, recovery);
    recoveryCopy = v6;
  }
}

- (unint64_t)cachedCliqueStatus:(id *)status
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (self->_clique)
  {
    v5 = objc_alloc_init(MEMORY[0x1E697AA98]);
    [v5 setUseCachedAccountStatus:1];
    clique = self->_clique;
    v16 = 0;
    v7 = [(OTClique *)clique fetchCliqueStatus:v5 error:&v16];
    v8 = v16;
    v9 = _CDPLogSystem();
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [CDPCircleProxyImpl cachedCliqueStatus:];
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
      *buf = 138412290;
      v18 = v12;
      _os_log_impl(&dword_1DED99000, v10, OS_LOG_TYPE_DEFAULT, "Call to cachedCliqueStatus returned a status: %@", buf, 0xCu);
    }

    if (status)
    {
      v13 = v8;
      *status = v8;
    }

    v11 = [(CDPCircleProxyImpl *)self cdpStatusFromOT:v7];
  }

  else
  {
    v19 = *MEMORY[0x1E696A578];
    v20[0] = @"CDPContext was missing DSID when CircleProxyImpl was initialized. Its OTClique was not created.";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    if (!status)
    {
      v11 = -1;
      goto LABEL_15;
    }

    *status = _CDPStateError(-5003, v8);
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CDPCircleProxyImpl cachedCliqueStatus:status];
    }

    v11 = -1;
  }

LABEL_15:
  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

- (unint64_t)combinedCachedCircleStatus:(id *)status
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = _CDPSignpostLogSystem();
  v6 = _CDPSignpostCreate(v5);
  v8 = v7;

  v9 = _CDPSignpostLogSystem();
  v10 = v9;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    LOWORD(v19) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v6, "CachedCircleStatus", " enableTelemetry=YES ", &v19, 2u);
  }

  v11 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 134217984;
    v20 = v6;
    _os_log_impl(&dword_1DED99000, v11, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: CachedCircleStatus  enableTelemetry=YES ", &v19, 0xCu);
  }

  v12 = [(CDPCircleProxyImpl *)self cachedCliqueStatus:status];
  if (!+[CDPUtilities deferSOSFromSignIn]&& v12 == 1)
  {
    if ([(CDPCircleProxyImpl *)self platformSupportsSOS])
    {
      v12 = [(CDPCircleProxyImpl *)self cdpStatusFromSOS:[(CDPCircleProxyImpl *)self cachedSOSCircleStatus:status]];
    }

    else
    {
      v12 = 1;
    }
  }

  Nanoseconds = _CDPSignpostGetNanoseconds(v6, v8);
  v14 = _CDPSignpostLogSystem();
  v15 = v14;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    v19 = 67240192;
    LODWORD(v20) = v12;
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v15, OS_SIGNPOST_INTERVAL_END, v6, "CachedCircleStatus", " status=%{public,signpost.telemetry:number1,name=status}d ", &v19, 8u);
  }

  v16 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 134218496;
    v20 = v6;
    v21 = 2048;
    v22 = Nanoseconds / 1000000000.0;
    v23 = 1026;
    v24 = v12;
    _os_log_impl(&dword_1DED99000, v16, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CachedCircleStatus  status=%{public,signpost.telemetry:number1,name=status}d ", &v19, 0x1Cu);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v12;
}

- (int)cachedSOSCircleStatus:(id *)status
{
  v13 = *MEMORY[0x1E69E9840];
  if ([(CDPContext *)self->_cdpContext isBeneficiaryAccount])
  {
    v4 = _CDPLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&dword_1DED99000, v4, OS_LOG_TYPE_DEFAULT, "Beneficiary account detected. Faking cached SOS circle status.", v10, 2u);
    }

    v5 = 0;
  }

  else
  {
    v10[0] = 0;
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DED99000, v6, OS_LOG_TYPE_DEFAULT, "Checking circle status with SOSCCThisDeviceIsInCircle", buf, 2u);
    }

    v5 = SOSCCThisDeviceIsInCircle();
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v12 = v5;
      _os_log_impl(&dword_1DED99000, v7, OS_LOG_TYPE_DEFAULT, "Call to SOSCCThisDeviceIsInCircle returned a status: %d", buf, 8u);
    }

    if (status)
    {
      *status = v10[0];
    }

    else if (v10[0])
    {
      CFRelease(v10[0]);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)combinedCircleStatus:(id *)status
{
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DED99000, v5, OS_LOG_TYPE_DEFAULT, "Checking combined circle status", buf, 2u);
  }

  v6 = [(CDPCircleProxyImpl *)self _authenticatedCliqueStatus:status];
  if (+[CDPUtilities deferSOSFromSignIn]|| v6 || ![(CDPCircleProxyImpl *)self platformSupportsSOS])
  {
    return [(CDPCircleProxyImpl *)self cdpStatusFromOT:v6];
  }

  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1DED99000, v7, OS_LOG_TYPE_DEFAULT, "Checking SOS status.", v9, 2u);
  }

  return [(CDPCircleProxyImpl *)self cdpStatusFromSOS:[(CDPCircleProxyImpl *)self _sos_circleStatus:status]];
}

- (void)waitForUpdate
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *v14 = "[CDPCircleProxyImpl waitForUpdate]";
    *&v14[8] = 1024;
    *&v14[10] = 147;
    _os_log_impl(&dword_1DED99000, v3, OS_LOG_TYPE_DEFAULT, "%s (%d) called", buf, 0x12u);
  }

  if ([(CDPContext *)self->_cdpContext isiCDPEligible])
  {
    clique = self->_clique;
    v12 = 0;
    v5 = [(OTClique *)clique waitForOctagonUpgrade:&v12];
    v6 = v12;
    altDSID = _CDPLogSystem();
    if (!os_log_type_enabled(altDSID, OS_LOG_TYPE_DEFAULT))
    {
LABEL_9:

      goto LABEL_10;
    }

    *buf = 67109378;
    *v14 = v5;
    *&v14[4] = 2114;
    *&v14[6] = v6;
    v8 = "Clique waitForOctagonUpgrade %{BOOL}d with error %{public}@";
    v9 = altDSID;
    v10 = 18;
LABEL_8:
    _os_log_impl(&dword_1DED99000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
    goto LABEL_9;
  }

  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    altDSID = [(CDPContext *)self->_cdpContext altDSID];
    *buf = 141558274;
    *v14 = 1752392040;
    *&v14[8] = 2112;
    *&v14[10] = altDSID;
    v8 = "Account for %{mask.hash}@ is not eligible for iCDP, not calling waitForOctagonUpgrade";
    v9 = v6;
    v10 = 22;
    goto LABEL_8;
  }

LABEL_10:

  v11 = *MEMORY[0x1E69E9840];
}

- (void)reportSuccess
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    clique = self->_clique;
    v8 = 138412290;
    v9 = clique;
    _os_log_impl(&dword_1DED99000, v3, OS_LOG_TYPE_DEFAULT, "Reporting success for %@", &v8, 0xCu);
  }

  v5 = self->_clique;
  contextType = [(CDPCircleProxyImpl *)self contextType];
  [(OTClique *)v5 performedSuccessfulCDPStateMachineRun:contextType reply:&__block_literal_global];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)reportFailure:(id)failure
{
  v12 = *MEMORY[0x1E69E9840];
  failureCopy = failure;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    clique = self->_clique;
    v10 = 138412290;
    v11 = clique;
    _os_log_impl(&dword_1DED99000, v5, OS_LOG_TYPE_DEFAULT, "Reporting failure for %@", &v10, 0xCu);
  }

  v7 = self->_clique;
  contextType = [(CDPCircleProxyImpl *)self contextType];
  [(OTClique *)v7 performedFailureCDPStateMachineRun:contextType error:failureCopy reply:&__block_literal_global_25];

  v9 = *MEMORY[0x1E69E9840];
}

- (id)contextType
{
  type = [(CDPContext *)self->_cdpContext type];
  if ((type - 1) > 6)
  {
    v3 = MEMORY[0x1E697AAC8];
  }

  else
  {
    v3 = qword_1E869D460[type - 1];
  }

  v4 = *v3;

  return v4;
}

- (unint64_t)cdpStatusFromSOS:(int)s
{
  if ((s + 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_1DEDEDE68[s + 1];
  }
}

- (unint64_t)cdpStatusFromOT:(int64_t)t
{
  if ((t + 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_1DEDEDE90[t + 1];
  }
}

- (int64_t)cliqueStatus:(id *)status
{
  v35[1] = *MEMORY[0x1E69E9840];
  v5 = _CDPSignpostLogSystem();
  v6 = _CDPSignpostCreate(v5);
  v8 = v7;

  v9 = _CDPSignpostLogSystem();
  v10 = v9;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v6, "CircleStatus", " enableTelemetry=YES ", buf, 2u);
  }

  v11 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v29 = v6;
    _os_log_impl(&dword_1DED99000, v11, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: CircleStatus  enableTelemetry=YES ", buf, 0xCu);
  }

  clique = self->_clique;
  if (clique)
  {
    v13 = clique;
    v14 = _CDPLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v13;
      _os_log_impl(&dword_1DED99000, v14, OS_LOG_TYPE_DEFAULT, "Checking clique status with fetchCliqueStatus from %@", buf, 0xCu);
    }

    v27 = 0;
    v15 = [v13 fetchCliqueStatus:&v27];
    v16 = v27;
    v17 = _CDPLogSystem();
    v18 = v17;
    if (v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [CDPCircleProxyImpl cliqueStatus:];
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
      *buf = 138412290;
      v29 = v19;
      _os_log_impl(&dword_1DED99000, v18, OS_LOG_TYPE_DEFAULT, "Call to fetchCliqueStatus returned a status: %@", buf, 0xCu);
    }

    if (status)
    {
      v20 = v16;
      *status = v16;
    }

    Nanoseconds = _CDPSignpostGetNanoseconds(v6, v8);
    v22 = _CDPSignpostLogSystem();
    v23 = v22;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 67240192;
      LODWORD(v29) = v15;
      _os_signpost_emit_with_name_impl(&dword_1DED99000, v23, OS_SIGNPOST_INTERVAL_END, v6, "CircleStatus", " status=%{public,signpost.telemetry:number1,name=status}d ", buf, 8u);
    }

    v24 = _CDPSignpostLogSystem();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v29 = v6;
      v30 = 2048;
      v31 = Nanoseconds / 1000000000.0;
      v32 = 1026;
      v33 = v15;
      _os_log_impl(&dword_1DED99000, v24, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CircleStatus  status=%{public,signpost.telemetry:number1,name=status}d ", buf, 0x1Cu);
    }
  }

  else
  {
    v34 = *MEMORY[0x1E696A578];
    v35[0] = @"CDPContext was missing DSID when CircleProxyImpl was initialized. Its OTClique was not created.";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    if (!status)
    {
      v15 = -1;
      goto LABEL_27;
    }

    *status = _CDPStateError(-5003, v16);
    v13 = _CDPLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CDPCircleProxyImpl cachedCliqueStatus:status];
    }

    v15 = -1;
  }

LABEL_27:
  v25 = *MEMORY[0x1E69E9840];
  return v15;
}

- (int64_t)_authenticatedCliqueStatus:(id *)status
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v4 = [(CDPCircleProxyImpl *)self cliqueStatus:&v11];
  v5 = v11;
  v6 = v5;
  if (status)
  {
    v7 = v5;
    *status = v6;
  }

  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v13 = v4;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_1DED99000, v8, OS_LOG_TYPE_DEFAULT, "Got authenticated clique status %lu with error: %@", buf, 0x16u);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v4;
}

- (int)_sos_authenticatedCircleStatus:(id *)status
{
  v12 = 0;
  v5 = [(CDPCircleProxyImpl *)self _sos_circleStatus:&v12];
  v6 = v12;
  if ((v5 + 1) <= 4 && ((1 << (v5 + 1)) & 0x15) != 0)
  {
    if (![(CDPCircleProxyImpl *)self tryRegisteringCredentials])
    {
      [(CDPCircleProxyImpl *)self registerCredentials];
    }

    v11 = v6;
    v5 = [(CDPCircleProxyImpl *)self _sos_circleStatus:&v11];
    v8 = v11;

    v6 = v8;
  }

  if (status)
  {
    v9 = v6;
    *status = v6;
  }

  return v5;
}

- (int)_sos_circleStatus:(id *)status
{
  v25 = *MEMORY[0x1E69E9840];
  if ([(CDPContext *)self->_cdpContext isBeneficiaryAccount])
  {
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1DED99000, v5, OS_LOG_TYPE_DEFAULT, "Beneficiary account detected. Faking non-cached SOS circle status.", &v19, 2u);
    }

    v6 = 0;
  }

  else
  {
    v7 = _CDPSignpostLogSystem();
    v8 = _CDPSignpostCreate(v7);
    v10 = v9;

    v11 = _CDPSignpostLogSystem();
    v12 = v11;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      LOWORD(v19) = 0;
      _os_signpost_emit_with_name_impl(&dword_1DED99000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v8, "SOSCircleStatus", " enableTelemetry=YES ", &v19, 2u);
    }

    v13 = _CDPSignpostLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134217984;
      v20 = v8;
      _os_log_impl(&dword_1DED99000, v13, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCircleStatus  enableTelemetry=YES ", &v19, 0xCu);
    }

    v6 = [(CDPCircleProxyImpl *)self nonCachedSOSCircleStatus:status];
    Nanoseconds = _CDPSignpostGetNanoseconds(v8, v10);
    v15 = _CDPSignpostLogSystem();
    v16 = v15;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      v19 = 67240192;
      LODWORD(v20) = v6;
      _os_signpost_emit_with_name_impl(&dword_1DED99000, v16, OS_SIGNPOST_INTERVAL_END, v8, "SOSCircleStatus", " status=%{public,signpost.telemetry:number1,name=status}d ", &v19, 8u);
    }

    v5 = _CDPSignpostLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134218496;
      v20 = v8;
      v21 = 2048;
      v22 = Nanoseconds / 1000000000.0;
      v23 = 1026;
      v24 = v6;
      _os_log_impl(&dword_1DED99000, v5, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCircleStatus  status=%{public,signpost.telemetry:number1,name=status}d ", &v19, 0x1Cu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v6;
}

- (int)nonCachedSOSCircleStatus:(id *)status
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DED99000, v4, OS_LOG_TYPE_DEFAULT, "Checking circle status with SOSCCThisDeviceIsInCircle", buf, 2u);
  }

  v5 = SOSCCThisDeviceIsInCircleNonCached();
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v11 = v5;
    _os_log_impl(&dword_1DED99000, v6, OS_LOG_TYPE_DEFAULT, "Call to SOSCCThisDeviceIsInCircle returned a status: %d", buf, 8u);
  }

  if (status)
  {
    *status = v9;
  }

  else if (v9)
  {
    CFRelease(v9);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)peerDeviceNamesByPeerID
{
  clique = self->_clique;
  v5 = 0;
  v3 = [(OTClique *)clique peerDeviceNamesByPeerID:&v5];

  return v3;
}

- (BOOL)waitForInitialSync:(id *)sync
{
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_1DED99000, v5, OS_LOG_TYPE_DEFAULT, "Calling waitForPriorityViewKeychainDataRecovery", v13, 2u);
  }

  v6 = MEMORY[0x1E6985DB0];
  cdpContext = [(CDPCircleProxyImpl *)self cdpContext];
  v8 = [v6 analyticsEventWithContext:cdpContext eventName:@"com.apple.corecdp.waitForPriorityViewKeychainDataRecovery" category:0x1F5A168E0];

  v9 = [(OTClique *)self->_clique waitForPriorityViewKeychainDataRecovery:sync];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:v9];
  [v8 setObject:v10 forKeyedSubscript:*MEMORY[0x1E6985E40]];

  if (sync)
  {
    [v8 populateUnderlyingErrorsStartingWithRootError:*sync];
  }

  v11 = +[CDPAnalyticsReporterRTC rtcAnalyticsReporter];
  [v11 sendEvent:v8];

  return v9;
}

- (BOOL)synchronizeCircleViews
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = _CDPSignpostLogSystem();
  v4 = _CDPSignpostCreate(v3);
  v6 = v5;

  v7 = _CDPSignpostLogSystem();
  v8 = v7;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v4, "SynchronizeCircleViews", " enableTelemetry=YES ", buf, 2u);
  }

  v9 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *v21 = v4;
    _os_log_impl(&dword_1DED99000, v9, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SynchronizeCircleViews  enableTelemetry=YES ", buf, 0xCu);
  }

  if ([(CDPCircleProxyImpl *)self combinedCircleStatus:0]== 1)
  {
    v19 = 0;
    v10 = [(CDPCircleProxyImpl *)self waitForInitialSync:&v19];
    v11 = v19;
    v12 = _CDPLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *v21 = v10;
      *&v21[4] = 2112;
      *&v21[6] = v11;
      _os_log_impl(&dword_1DED99000, v12, OS_LOG_TYPE_DEFAULT, "Finished calling waitForPriorityViewKeychainDataRecovery didSync=%i error=%@", buf, 0x12u);
    }
  }

  else
  {
    v11 = _CDPLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DED99000, v11, OS_LOG_TYPE_DEFAULT, "Skipping initial sync because we are not in a circle", buf, 2u);
    }

    v10 = 1;
  }

  Nanoseconds = _CDPSignpostGetNanoseconds(v4, v6);
  v14 = _CDPSignpostLogSystem();
  v15 = v14;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 67240192;
    *v21 = v10;
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v15, OS_SIGNPOST_INTERVAL_END, v4, "SynchronizeCircleViews", " didSync=%{public,signpost.telemetry:number1,name=didSync}d ", buf, 8u);
  }

  v16 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    *v21 = v4;
    *&v21[8] = 2048;
    *&v21[10] = Nanoseconds / 1000000000.0;
    v22 = 1026;
    v23 = v10;
    _os_log_impl(&dword_1DED99000, v16, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SynchronizeCircleViews  didSync=%{public,signpost.telemetry:number1,name=didSync}d ", buf, 0x1Cu);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)removeThisDeviceFromCircle:(id *)circle
{
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DED99000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to remove self from circle", buf, 2u);
  }

  clique = self->_clique;
  v14 = 0;
  v7 = [(OTClique *)clique leaveClique:&v14];
  v8 = v14;
  v9 = v8;
  if (v7)
  {
    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1DED99000, v10, OS_LOG_TYPE_DEFAULT, "Removed device from circle successfully", v13, 2u);
    }
  }

  else
  {
    v11 = v8;
    *circle = v9;
    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CDPCircleProxyImpl removeThisDeviceFromCircle:circle];
    }
  }

  return v7;
}

- (BOOL)requestToJoinCircle:(id *)circle
{
  v45 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v5 = [(CDPCircleProxyImpl *)self cliqueStatus:&v38];
  v6 = v38;
  if (v6)
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CDPCircleProxyImpl requestToJoinCircle:];
    }

    if (circle)
    {
      v8 = v6;
      v9 = 0;
      *circle = v6;
    }

    else
    {
      v9 = 0;
    }
  }

  else if (v5 == 3)
  {
    v10 = _CDPSignpostLogSystem();
    v11 = _CDPSignpostCreate(v10);
    v13 = v12;

    v14 = _CDPSignpostLogSystem();
    v15 = v14;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1DED99000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v11, "CliqueEstablish", " enableTelemetry=YES ", buf, 2u);
    }

    v16 = _CDPSignpostLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v40 = v11;
      _os_log_impl(&dword_1DED99000, v16, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: CliqueEstablish  enableTelemetry=YES ", buf, 0xCu);
    }

    v17 = _CDPLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [CDPCircleProxyImpl requestToJoinCircle:];
    }

    v18 = objc_alloc_init(MEMORY[0x1E697AA88]);
    altDSID = [(CDPContext *)self->_cdpContext altDSID];
    [v18 setAltDSID:altDSID];

    telemetryFlowID = [(CDPContext *)self->_cdpContext telemetryFlowID];
    [v18 setFlowID:telemetryFlowID];

    telemetryDeviceSessionID = [(CDPContext *)self->_cdpContext telemetryDeviceSessionID];
    [v18 setDeviceSessionID:telemetryDeviceSessionID];

    clique = self->_clique;
    v37 = 0;
    [(OTClique *)clique establish:v18 error:&v37];
    v23 = v37;
    v24 = _CDPLogSystem();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [CDPCircleProxyImpl requestToJoinCircle:];
    }

    Nanoseconds = _CDPSignpostGetNanoseconds(v11, v13);
    v26 = _CDPSignpostLogSystem();
    v27 = v26;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      code = [v23 code];
      *buf = 67240192;
      LODWORD(v40) = code;
      _os_signpost_emit_with_name_impl(&dword_1DED99000, v27, OS_SIGNPOST_INTERVAL_END, v11, "CliqueEstablish", " Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 8u);
    }

    v29 = _CDPSignpostLogSystem();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      code2 = [v23 code];
      *buf = 134218496;
      v40 = v11;
      v41 = 2048;
      v42 = Nanoseconds / 1000000000.0;
      v43 = 1026;
      v44 = code2;
      _os_log_impl(&dword_1DED99000, v29, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CliqueEstablish  Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 0x1Cu);
    }

    v9 = v23 == 0;
    v31 = _CDPLogSystem();
    v32 = v31;
    if (v23)
    {
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [CDPCircleProxyImpl requestToJoinCircle:];
      }

      if (circle)
      {
        v33 = v23;
        *circle = v23;
      }
    }

    else
    {
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        [CDPCircleProxyImpl requestToJoinCircle:];
      }
    }
  }

  else
  {
    v34 = _CDPLogSystem();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      [CDPCircleProxyImpl requestToJoinCircle:v5];
    }

    v9 = 1;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)requestToJoinCircleAfterRestore:(id *)restore
{
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CDPCircleProxyImpl requestToJoinCircleAfterRestore:];
  }

  return [(OTClique *)self->_clique joinAfterRestore:restore];
}

- (id)requestToResetProtectedData:(id *)data
{
  cliqueConfiguration = [(CDPContext *)self->_cdpContext cliqueConfiguration];
  passwordEquivToken = [(CDPContext *)self->_cdpContext passwordEquivToken];
  [cliqueConfiguration setPasswordEquivalentToken:passwordEquivToken];

  appleID = [(CDPContext *)self->_cdpContext appleID];
  [cliqueConfiguration setAuthenticationAppleID:appleID];

  v14 = 0;
  v8 = [MEMORY[0x1E697AA80] resetProtectedData:cliqueConfiguration error:&v14];
  v9 = v14;
  v10 = v9;
  if (!v8 || v9)
  {
    v11 = 0;
    if (data && v9)
    {
      v12 = v9;
      v11 = 0;
      *data = v10;
    }
  }

  else
  {
    v11 = v8;
  }

  return v11;
}

- (BOOL)anyPeerHasEnabledViewsInSet:(id)set error:(id *)error
{
  setCopy = set;
  if (MEMORY[0x1E12C9950]())
  {
    clique = self->_clique;
    allObjects = [setCopy allObjects];
    v9 = [(OTClique *)clique peersHaveViewsEnabled:allObjects error:error];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)hasNonViewAwarePeers
{
  clique = self->_clique;
  v8 = 0;
  v3 = [(OTClique *)clique copyViewUnawarePeerInfo:&v8];
  v4 = v8;
  if (v4)
  {
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CDPCircleProxyImpl hasNonViewAwarePeers];
    }
  }

  v6 = [v3 count] != 0;

  return v6;
}

- (BOOL)removeNonViewAwarePeers:(id *)peers
{
  [(CDPCircleProxyImpl *)self registerCredentials];
  clique = self->_clique;
  v18 = 0;
  v6 = [(OTClique *)clique copyViewUnawarePeerInfo:&v18];
  v7 = v18;
  v8 = v7;
  if (peers)
  {
    v9 = v7;
    *peers = v8;
  }

  if (v6)
  {
    v10 = self->_clique;
    v17 = 0;
    v11 = [(OTClique *)v10 removeFriendsInClique:v6 error:&v17];
    v12 = v17;
    v13 = _CDPLogSystem();
    v14 = v13;
    if (v11)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [CDPCircleProxyImpl removeNonViewAwarePeers:];
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CDPCircleProxyImpl removeNonViewAwarePeers:];
    }

    if (peers)
    {
      v15 = v12;
      *peers = v12;
    }
  }

  else
  {
    v12 = _CDPLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [CDPCircleProxyImpl removeNonViewAwarePeers:];
    }

    LOBYTE(v11) = 0;
  }

  return v11;
}

- (BOOL)_registerCredentialsOnlyIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v54 = *MEMORY[0x1E69E9840];
  v5 = self->_cdpContext;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    appleID = [(CDPContext *)v5 appleID];
    dsid = [(CDPContext *)v5 dsid];
    *buf = 141559042;
    *&buf[4] = 1752392040;
    v46 = 2112;
    v47 = *&appleID;
    v48 = 2160;
    v49 = 1752392040;
    v50 = 2112;
    v51 = dsid;
    v52 = 2048;
    type = [(CDPContext *)v5 type];
    _os_log_impl(&dword_1DED99000, v6, OS_LOG_TYPE_DEFAULT, "_registerCredentialsOnlyIfNeeded: appleID:%{mask.hash}@, dsid: %{mask.hash}@, type: %ld", buf, 0x34u);
  }

  appleID2 = [(CDPContext *)v5 appleID];
  if (!appleID2)
  {
    goto LABEL_11;
  }

  v10 = appleID2;
  password = [(CDPContext *)v5 password];
  if (!password)
  {

LABEL_11:
    v14 = _CDPLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [CDPCircleProxyImpl _registerCredentialsOnlyIfNeeded:];
    }

    goto LABEL_13;
  }

  v12 = password;
  dsid2 = [(CDPContext *)v5 dsid];

  if (!dsid2)
  {
    goto LABEL_11;
  }

  if (neededCopy && [(CDPCircleProxyImpl *)self canAuthenticate])
  {
    v14 = _CDPLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DED99000, v14, OS_LOG_TYPE_DEFAULT, "Security indicated that no credential is needed nor did we force", buf, 2u);
    }

LABEL_13:
    v15 = 0;
    goto LABEL_14;
  }

  v18 = _CDPLogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DED99000, v18, OS_LOG_TYPE_DEFAULT, "Calling Clique setUserCredentialsAndDSID", buf, 2u);
  }

  password2 = [(CDPContext *)v5 password];
  v20 = [password2 dataUsingEncoding:4];

  v21 = _CDPSignpostLogSystem();
  v22 = _CDPSignpostCreate(v21);
  v24 = v23;

  v25 = _CDPSignpostLogSystem();
  v26 = v25;
  if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v26, OS_SIGNPOST_INTERVAL_BEGIN, v22, "SetUserCredentialsAndDSID", " enableTelemetry=YES ", buf, 2u);
  }

  v27 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v22;
    _os_log_impl(&dword_1DED99000, v27, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SetUserCredentialsAndDSID  enableTelemetry=YES ", buf, 0xCu);
  }

  v44[1] = 0;
  if (+[CDPUtilities deferSOSFromSignIn]&& SOSCCFetchCompatibilityMode())
  {
    v28 = _CDPLogSystem();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DED99000, v28, OS_LOG_TYPE_DEFAULT, "Calling SOSCCSetUserCredentialsAndDSID", buf, 2u);
    }

    *buf = 0;
    appleID3 = [(CDPContext *)v5 appleID];
    dsid3 = [(CDPContext *)v5 dsid];
    [dsid3 stringValue];
    v15 = SOSCCSetUserCredentialsAndDSID();

    if ((v15 & 1) == 0)
    {
      v31 = _CDPLogSystem();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [CDPCircleProxyImpl _registerCredentialsOnlyIfNeeded:buf];
      }
    }

    v14 = 0;
  }

  else
  {
    clique = self->_clique;
    dsid4 = [(CDPContext *)v5 dsid];
    stringValue = [dsid4 stringValue];
    v44[0] = 0;
    v35 = [(OTClique *)clique setUserCredentialsAndDSID:stringValue password:v20 error:v44];
    v14 = v44[0];

    v36 = _CDPLogSystem();
    v37 = v36;
    if (v35)
    {
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DED99000, v37, OS_LOG_TYPE_DEFAULT, "Credentials set through Clique setUserCredentialsAndDSID", buf, 2u);
      }

      v15 = 1;
    }

    else
    {
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        [CDPCircleProxyImpl _registerCredentialsOnlyIfNeeded:];
      }

      v15 = 0;
    }
  }

  Nanoseconds = _CDPSignpostGetNanoseconds(v22, v24);
  v39 = _CDPSignpostLogSystem();
  v40 = v39;
  if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
  {
    code = [v14 code];
    *buf = 67240192;
    *&buf[4] = code;
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v40, OS_SIGNPOST_INTERVAL_END, v22, "SetUserCredentialsAndDSID", " Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 8u);
  }

  v42 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    code2 = [v14 code];
    *buf = 134218496;
    *&buf[4] = v22;
    v46 = 2048;
    v47 = Nanoseconds / 1000000000.0;
    v48 = 1026;
    LODWORD(v49) = code2;
    _os_log_impl(&dword_1DED99000, v42, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SetUserCredentialsAndDSID  Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 0x1Cu);
  }

LABEL_14:
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)tryRegisteringCredentials
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = self->_cdpContext;
  appleID = [(CDPContext *)v3 appleID];
  if (appleID)
  {
    v5 = appleID;
    dsid = [(CDPContext *)v3 dsid];
    if (dsid)
    {
      v7 = dsid;
      password = [(CDPContext *)v3 password];

      if (password)
      {
        password2 = [(CDPContext *)v3 password];
        v10 = [password2 dataUsingEncoding:4];

        dsid2 = [(CDPContext *)v3 dsid];
        stringValue = [dsid2 stringValue];

        v13 = _CDPSignpostLogSystem();
        v14 = _CDPSignpostCreate(v13);
        v16 = v15;

        v17 = _CDPSignpostLogSystem();
        v18 = v17;
        if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1DED99000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v14, "TryUserCredentialsAndDSID", " enableTelemetry=YES ", buf, 2u);
        }

        v19 = _CDPSignpostLogSystem();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v14;
          _os_log_impl(&dword_1DED99000, v19, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: TryUserCredentialsAndDSID  enableTelemetry=YES ", buf, 0xCu);
        }

        v40 = 0;
        if (+[CDPUtilities deferSOSFromSignIn]&& SOSCCFetchCompatibilityMode())
        {
          *buf = 0;
          appleID2 = [(CDPContext *)v3 appleID];
          dsid3 = [(CDPContext *)v3 dsid];
          [dsid3 stringValue];
          v22 = SOSCCTryUserCredentialsAndDSID();

          v23 = _CDPLogSystem();
          v24 = v23;
          if (v22)
          {
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *v39 = 0;
              _os_log_impl(&dword_1DED99000, v24, OS_LOG_TYPE_DEFAULT, "Registered credentials through try attempt", v39, 2u);
            }
          }

          else if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            [(CDPCircleProxyImpl *)buf tryRegisteringCredentials];
          }

          v25 = 0;
        }

        else
        {
          clique = self->_clique;
          v38 = 0;
          v27 = [(OTClique *)clique tryUserCredentialsAndDSID:stringValue password:v10 error:&v38];
          v25 = v38;
          v28 = _CDPLogSystem();
          v29 = v28;
          if (v27)
          {
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1DED99000, v29, OS_LOG_TYPE_DEFAULT, "Registered credentials through OT tryUserCredentialsAndDSID", buf, 2u);
            }

            v22 = 1;
          }

          else
          {
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              [CDPCircleProxyImpl tryRegisteringCredentials];
            }

            v22 = 0;
          }
        }

        Nanoseconds = _CDPSignpostGetNanoseconds(v14, v16);
        v31 = _CDPSignpostLogSystem();
        v32 = v31;
        if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
        {
          code = [v25 code];
          *buf = 67240192;
          *&buf[4] = code;
          _os_signpost_emit_with_name_impl(&dword_1DED99000, v32, OS_SIGNPOST_INTERVAL_END, v14, "TryUserCredentialsAndDSID", " Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 8u);
        }

        v34 = _CDPSignpostLogSystem();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          code2 = [v25 code];
          *buf = 134218496;
          *&buf[4] = v14;
          v42 = 2048;
          v43 = Nanoseconds / 1000000000.0;
          v44 = 1026;
          v45 = code2;
          _os_log_impl(&dword_1DED99000, v34, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: TryUserCredentialsAndDSID  Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 0x1Cu);
        }

        goto LABEL_34;
      }
    }

    else
    {
    }
  }

  v25 = _CDPLogSystem();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    [CDPCircleProxyImpl tryRegisteringCredentials];
  }

  v22 = 0;
LABEL_34:

  v36 = *MEMORY[0x1E69E9840];
  return v22;
}

- (BOOL)canAuthenticate
{
  accountUserKeyAvailable = [(OTClique *)self->_clique accountUserKeyAvailable];
  if ((accountUserKeyAvailable & 1) == 0)
  {
    v3 = _CDPLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [CDPCircleProxyImpl canAuthenticate];
    }
  }

  return accountUserKeyAvailable;
}

- (id)pairingChannelInitiator
{
  clique = self->_clique;
  _pairingChannelContext = [(CDPCircleProxyImpl *)self _pairingChannelContext];
  v4 = [(OTClique *)clique setupPairingChannelAsInitiator:_pairingChannelContext];

  return v4;
}

- (id)pairingChannelAcceptor
{
  clique = self->_clique;
  _pairingChannelContext = [(CDPCircleProxyImpl *)self _pairingChannelContext];
  v4 = [(OTClique *)clique setupPairingChannelAsAcceptor:_pairingChannelContext];

  return v4;
}

- (id)_pairingChannelContext
{
  v3 = objc_alloc_init(MEMORY[0x1E69ABBE8]);
  v4 = +[CDPLocalDevice sharedInstance];
  hardwareModel = [v4 hardwareModel];
  [v3 setModel:hardwareModel];

  v6 = +[CDPLocalDevice sharedInstance];
  modelVersion = [v6 modelVersion];
  [v3 setModelVersion:modelVersion];

  v8 = +[CDPLocalDevice sharedInstance];
  deviceClass = [v8 deviceClass];
  [v3 setModelClass:deviceClass];

  v10 = +[CDPLocalDevice sharedInstance];
  osVersion = [v10 osVersion];
  [v3 setOsVersion:osVersion];

  telemetryFlowID = [(CDPContext *)self->_cdpContext telemetryFlowID];
  [v3 setFlowID:telemetryFlowID];

  telemetryDeviceSessionID = [(CDPContext *)self->_cdpContext telemetryDeviceSessionID];
  [v3 setDeviceSessionID:telemetryDeviceSessionID];

  return v3;
}

- (void)recoverOctagonUsingCustodianInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  v8 = MEMORY[0x1E6985DB0];
  cdpContext = [(CDPCircleProxyImpl *)self cdpContext];
  v10 = [v8 analyticsEventWithContext:cdpContext eventName:@"com.apple.corecdp.custodianRecovery" category:0x1F5A168E0];

  if (objc_opt_respondsToSelector())
  {
    recordBuildVersion = [infoCopy recordBuildVersion];
    [v10 setObject:recordBuildVersion forKeyedSubscript:@"recordBuildVersion"];
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __66__CDPCircleProxyImpl_recoverOctagonUsingCustodianInfo_completion___block_invoke;
  v21[3] = &unk_1E869D440;
  v12 = v10;
  v22 = v12;
  v13 = completionCopy;
  v23 = v13;
  v14 = MEMORY[0x1E12CA380](v21);
  v20 = 0;
  v15 = [(CDPCircleProxyImpl *)self _initializeRecoveryKeyWithInfo:infoCopy error:&v20];
  v16 = v20;
  v17 = _CDPLogSystem();
  v18 = v17;
  if (v16)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CDPCircleProxyImpl recoverOctagonUsingCustodianInfo:completion:];
    }

    (v14)[2](v14, v16);
  }

  else
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_1DED99000, v18, OS_LOG_TYPE_DEFAULT, "Attempting to recover octagon usign custodian recovery key", v19, 2u);
    }

    [(CDPCircleProxyImpl *)self _recoverOctagonUsingRecoveryKey:v15 completion:v14];
  }
}

void __66__CDPCircleProxyImpl_recoverOctagonUsingCustodianInfo_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  if (v3)
  {
    [v4 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"didSucceed"];
    [*(a1 + 32) populateUnderlyingErrorsStartingWithRootError:v6];
  }

  else
  {
    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"didSucceed"];
  }

  v5 = +[CDPAnalyticsReporterRTC rtcAnalyticsReporter];
  [v5 sendEvent:*(a1 + 32)];

  (*(*(a1 + 40) + 16))();
}

- (void)_recoverOctagonUsingRecoveryKey:(id)key completion:(id)completion
{
  v5 = MEMORY[0x1E697AA80];
  cdpContext = self->_cdpContext;
  completionCopy = completion;
  keyCopy = key;
  cliqueConfiguration = [(CDPContext *)cdpContext cliqueConfiguration];
  [v5 recoverOctagonUsingCustodianRecoveryKey:cliqueConfiguration custodianRecoveryKey:keyCopy reply:completionCopy];
}

- (id)_initializeRecoveryKeyWithInfo:(id)info error:(id *)error
{
  infoCopy = info;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [CDPCircleProxyImpl _initializeRecoveryKeyWithInfo:infoCopy error:?];
  }

  v7 = objc_alloc(MEMORY[0x1E69B7CD0]);
  wrappedRKC = [infoCopy wrappedRKC];
  wrappingKey = [infoCopy wrappingKey];
  custodianUUID = [infoCopy custodianUUID];
  v11 = [v7 initWithWrappedKey:wrappedRKC wrappingKey:wrappingKey uuid:custodianUUID error:error];

  return v11;
}

+ (unint64_t)syncingStatusForAltDSID:(id)d
{
  dCopy = d;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(CDPCircleProxyImpl *)dCopy syncingStatusForAltDSID:v4];
  }

  v5 = [CDPContext contextForAccountWithAltDSID:dCopy];
  v6 = [[CDPCircleProxyImpl alloc] initWithContext:v5];
  v11 = 0;
  v7 = [(CDPCircleProxyImpl *)v6 combinedCircleStatus:&v11];
  v8 = v11;
  if (v8)
  {
    v9 = _CDPLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[CDPCircleProxyImpl syncingStatusForAltDSID:];
    }
  }

  return v7;
}

- (void)cachedCliqueStatus:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "Failed to retrieve cachedCliqueStatus: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)cachedCliqueStatus:(uint64_t *)a1 .cold.2(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v1, v2, "Circle status check failed with error: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)cachedSOSCircleStatus:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v1, v2, "Failed to check circle status: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)cliqueStatus:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "Failed to check circle status: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)removeThisDeviceFromCircle:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v1, v2, "Failed to remove self from circle - %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)requestToJoinCircle:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "CDPCircleProxyImpl requestToJoinCircle fetchCliqueStatus failed with error=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)requestToJoinCircle:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_1DED99000, v2, v3, "CDPCircleProxyImpl requestToJoinCircle cliqueStatus is %@. No need to establish a new clique.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)requestToJoinCircle:.cold.3()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AD98] numberWithInteger:3];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_1DED99000, v1, v2, "cliqueStatus is %@, Requesting to join circle with OT establish", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)requestToJoinCircle:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_1DED99000, v1, OS_LOG_TYPE_DEBUG, "CDPCircleProxyImpl requestToJoinCircle establish finished with success=%@, error=%@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)requestToJoinCircle:.cold.5()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "CDPCircleProxyImpl requestToJoinCircle establish failed with error=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)requestToJoinCircle:.cold.6()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)requestToJoinCircleAfterRestore:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)hasNonViewAwarePeers
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "Failed to check for non-view-aware peers with error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)removeNonViewAwarePeers:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_1DED99000, v1, OS_LOG_TYPE_ERROR, "Failed to remove old peers from circle with error %@ (peers: %@)", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)removeNonViewAwarePeers:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)removeNonViewAwarePeers:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_registerCredentialsOnlyIfNeeded:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "Failed Clique setUserCredentialsAndDSID with error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_registerCredentialsOnlyIfNeeded:(uint64_t *)a1 .cold.2(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v1, v2, "Failed to call SOSCCSetUserCredentialsAndDSID with error %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_registerCredentialsOnlyIfNeeded:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)tryRegisteringCredentials
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)recoverOctagonUsingCustodianInfo:completion:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "Failed to obtain custodian recovery key from security with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_initializeRecoveryKeyWithInfo:(void *)a1 error:.cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 custodianUUID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_1DED99000, v2, v3, "Obtaining recovery key from security for custodian recovery with UUID: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)syncingStatusForAltDSID:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 141558274;
  v4 = 1752392040;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_1DED99000, a2, OS_LOG_TYPE_ERROR, "CDPCircleProxyImpl: fetching OT Status for altDSID: %{mask.hash}@", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)syncingStatusForAltDSID:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "CDPDFollowUpController: Error fetching OT Status: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end
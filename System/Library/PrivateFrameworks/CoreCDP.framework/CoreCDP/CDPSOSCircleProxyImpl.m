@interface CDPSOSCircleProxyImpl
+ (unint64_t)syncingStatusForAltDSID:(id)a3;
- (BOOL)_performSOSCBlock:(id)a3 error:(id *)a4;
- (BOOL)_registerCredentialsOnlyIfNeeded:(BOOL)a3;
- (BOOL)_viewMemberForView:(__CFString *)a3 error:(id *)a4;
- (BOOL)anyPeerHasEnabledViewsInSet:(id)a3 error:(id *)a4;
- (BOOL)canAuthenticate;
- (BOOL)fetchUserControllableViewsSyncingEnabled:(id *)a3;
- (BOOL)hasNonViewAwarePeers;
- (BOOL)removeNonViewAwarePeers:(id *)a3;
- (BOOL)removeThisDeviceFromCircle:(id *)a3;
- (BOOL)requestToResetCloudKitDataForReason:(id)a3 error:(id *)a4;
- (BOOL)resetToOffering:(id *)a3;
- (BOOL)setUserControllableViewsSyncStatus:(BOOL)a3 error:(id *)a4;
- (BOOL)synchronizeCircleViews;
- (BOOL)tryRegisteringCredentials;
- (BOOL)viewMemberForAllUserFacingViews:(id *)a3;
- (CDPSOSCircleProxyImpl)initWithContext:(id)a3;
- (id)generateVerifierWithRecoveryKey:(id)a3 error:(id *)a4;
- (id)peerDeviceNamesByPeerID;
- (id)peerId;
- (id)requestToResetProtectedData:(id *)a3;
- (int)_authenticatedCircleStatus:(id *)a3;
- (int)_circleStatus:(id *)a3;
- (int)cachedSOSCircleStatus:(id *)a3;
- (int64_t)cliqueStatus:(id *)a3;
- (unint64_t)cachedCliqueStatus:(id *)a3;
- (unint64_t)cdpStatusFromSOS:(int)a3;
- (unint64_t)combinedCachedCircleStatus:(id *)a3;
- (unint64_t)combinedCircleStatus:(id *)a3;
- (unint64_t)peerCount;
- (void)hasNonViewAwarePeers;
- (void)peerCount;
- (void)peerDeviceNamesByPeerID;
- (void)peerId;
- (void)recoverOctagonUsingCustodianInfo:(id)a3 completion:(id)a4;
- (void)reportFailure:(id)a3;
- (void)reportSuccess;
- (void)synchronizeCircleViews;
- (void)waitForUpdate;
@end

@implementation CDPSOSCircleProxyImpl

- (CDPSOSCircleProxyImpl)initWithContext:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 dsid];

  if (v6)
  {
    v17.receiver = self;
    v17.super_class = CDPSOSCircleProxyImpl;
    v7 = [(CDPSOSCircleProxyImpl *)&v17 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_cdpContext, a3);
    }

    v9 = _CDPLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v5 appleID];
      v11 = [v5 dsid];
      v12 = [v5 type];
      *buf = 141559042;
      v19 = 1752392040;
      v20 = 2112;
      v21 = v10;
      v22 = 2160;
      v23 = 1752392040;
      v24 = 2112;
      v25 = v11;
      v26 = 2048;
      v27 = v12;
      _os_log_impl(&dword_1DED99000, v9, OS_LOG_TYPE_DEFAULT, "CDPSOSCircleProxyImpl: appleID:%{mask.hash}@, dsid: %{mask.hash}@, type: %ld", buf, 0x34u);
    }

    self = v8;
    v13 = self;
  }

  else
  {
    v14 = _CDPLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [CDPSOSCircleProxyImpl initWithContext:];
    }

    v13 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

- (unint64_t)cdpStatusFromSOS:(int)a3
{
  if ((a3 + 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_1DEDEDF08[a3 + 1];
  }
}

- (void)waitForUpdate
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (unint64_t)combinedCircleStatus:(id *)a3
{
  v4 = [(CDPSOSCircleProxyImpl *)self _authenticatedCircleStatus:a3];

  return [(CDPSOSCircleProxyImpl *)self cdpStatusFromSOS:v4];
}

- (int)cachedSOSCircleStatus:(id *)a3
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

    if (a3)
    {
      *a3 = v10[0];
    }

    else if (v10[0])
    {
      CFRelease(v10[0]);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)combinedCachedCircleStatus:(id *)a3
{
  v4 = [(CDPSOSCircleProxyImpl *)self cachedSOSCircleStatus:a3];

  return [(CDPSOSCircleProxyImpl *)self cdpStatusFromSOS:v4];
}

- (int)_circleStatus:(id *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  if ([(CDPContext *)self->_cdpContext isBeneficiaryAccount])
  {
    v4 = _CDPLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DED99000, v4, OS_LOG_TYPE_DEFAULT, "Beneficiary account detected. Faking non-cached SOS circle status.", buf, 2u);
    }

    v5 = 0;
  }

  else
  {
    v21 = 0;
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DED99000, v6, OS_LOG_TYPE_DEFAULT, "Checking circle status with SOSCCThisDeviceIsInCircle", buf, 2u);
    }

    v7 = _CDPSignpostLogSystem();
    v8 = _CDPSignpostCreate(v7);
    v10 = v9;

    v11 = _CDPSignpostLogSystem();
    v12 = v11;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1DED99000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v8, "SOSCircleStatus", " enableTelemetry=YES ", buf, 2u);
    }

    v13 = _CDPSignpostLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v23 = v8;
      _os_log_impl(&dword_1DED99000, v13, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCircleStatus  enableTelemetry=YES ", buf, 0xCu);
    }

    v5 = SOSCCThisDeviceIsInCircleNonCached();
    v14 = _CDPLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v23) = v5;
      _os_log_impl(&dword_1DED99000, v14, OS_LOG_TYPE_DEFAULT, "Call to SOSCCThisDeviceIsInCircle returned a status: %d", buf, 8u);
    }

    if (a3)
    {
      *a3 = v21;
    }

    else if (v21)
    {
      CFRelease(v21);
    }

    Nanoseconds = _CDPSignpostGetNanoseconds(v8, v10);
    v16 = _CDPSignpostLogSystem();
    v17 = v16;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 67240192;
      LODWORD(v23) = v5;
      _os_signpost_emit_with_name_impl(&dword_1DED99000, v17, OS_SIGNPOST_INTERVAL_END, v8, "SOSCircleStatus", " status=%{public,signpost.telemetry:number1,name=status}d ", buf, 8u);
    }

    v18 = _CDPSignpostLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v23 = v8;
      v24 = 2048;
      v25 = Nanoseconds / 1000000000.0;
      v26 = 1026;
      v27 = v5;
      _os_log_impl(&dword_1DED99000, v18, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCircleStatus  status=%{public,signpost.telemetry:number1,name=status}d ", buf, 0x1Cu);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

- (int)_authenticatedCircleStatus:(id *)a3
{
  v12 = 0;
  v5 = [(CDPSOSCircleProxyImpl *)self _circleStatus:&v12];
  v6 = v12;
  if ((v5 + 1) <= 4 && ((1 << (v5 + 1)) & 0x15) != 0)
  {
    if (![(CDPSOSCircleProxyImpl *)self tryRegisteringCredentials])
    {
      [(CDPSOSCircleProxyImpl *)self registerCredentials];
    }

    v11 = v6;
    v5 = [(CDPSOSCircleProxyImpl *)self _circleStatus:&v11];
    v8 = v11;

    v6 = v8;
  }

  if (a3)
  {
    v9 = v6;
    *a3 = v6;
  }

  return v5;
}

- (id)peerId
{
  cf = 0;
  v2 = SOSCCCopyMyPeerInfo();
  if (v2)
  {
    v3 = v2;
    v4 = [SOSPeerInfoGetPeerID() copy];
    CFRelease(v3);
  }

  else
  {
    v4 = 0;
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(CDPSOSCircleProxyImpl *)&cf peerId];
    }

    CFRelease(cf);
    cf = 0;
  }

  return v4;
}

- (unint64_t)peerCount
{
  cf = 0;
  v2 = SOSCCCopyPeerPeerInfo();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  Count = CFArrayGetCount(v2);
  CFRelease(v3);
  return Count;
}

- (id)peerDeviceNamesByPeerID
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  cf = 0;
  v3 = SOSCCCopyPeerPeerInfo();
  if (v3)
  {
    v4 = v3;
    if (CFArrayGetCount(v3) >= 1)
    {
      v5 = 0;
      do
      {
        CFArrayGetValueAtIndex(v4, v5);
        v6 = SOSPeerInfoGetPeerName();
        v7 = SOSPeerInfoGetPeerID();
        v8 = [v6 copy];
        [v2 setObject:v8 forKey:v7];

        ++v5;
      }

      while (v5 < CFArrayGetCount(v4));
    }

    CFRelease(v4);
  }

  return v2;
}

- (BOOL)synchronizeCircleViews
{
  v26 = *MEMORY[0x1E69E9840];
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
    *v23 = v4;
    _os_log_impl(&dword_1DED99000, v9, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SynchronizeCircleViews  enableTelemetry=YES ", buf, 0xCu);
  }

  v10 = [(CDPSOSCircleProxyImpl *)self combinedCircleStatus:0];
  v11 = _CDPLogSystem();
  v12 = v11;
  if (v10 == 1)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DED99000, v12, OS_LOG_TYPE_DEFAULT, "Calling SOSCCWaitForInitialSync to wait for views to sync", buf, 2u);
    }

    v21 = 0;
    v13 = [(CDPSOSCircleProxyImpl *)self _performSOSCBlock:&__block_literal_global_13 error:&v21];
    v12 = v21;
    v14 = _CDPLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *v23 = v13;
      *&v23[4] = 2112;
      *&v23[6] = v12;
      _os_log_impl(&dword_1DED99000, v14, OS_LOG_TYPE_DEFAULT, "Finished calling SOSCCWaitForInitialSync didSync=%i error=%@", buf, 0x12u);
    }

    Nanoseconds = _CDPSignpostGetNanoseconds(v4, v6);
    v16 = _CDPSignpostLogSystem();
    v17 = v16;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 67240192;
      *v23 = v13;
      _os_signpost_emit_with_name_impl(&dword_1DED99000, v17, OS_SIGNPOST_INTERVAL_END, v4, "SynchronizeCircleViews", " didSync=%{public,signpost.telemetry:number1,name=didSync}d ", buf, 8u);
    }

    v18 = _CDPSignpostLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *v23 = v4;
      *&v23[8] = 2048;
      *&v23[10] = Nanoseconds / 1000000000.0;
      v24 = 1026;
      v25 = v13;
      _os_log_impl(&dword_1DED99000, v18, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SynchronizeCircleViews  didSync=%{public,signpost.telemetry:number1,name=didSync}d ", buf, 0x1Cu);
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [CDPSOSCircleProxyImpl synchronizeCircleViews];
    }

    LOBYTE(v13) = 1;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)removeThisDeviceFromCircle:(id *)a3
{
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DED99000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to remove self from circle", buf, 2u);
  }

  v6 = [(CDPSOSCircleProxyImpl *)self _performSOSCBlock:&__block_literal_global_18 error:a3];
  v7 = _CDPLogSystem();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1DED99000, v8, OS_LOG_TYPE_DEFAULT, "Removed device from circle successfully", v10, 2u);
    }

LABEL_11:

    return v6;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [CDPSOSCircleProxyImpl removeThisDeviceFromCircle:a3];
  }

  if (a3)
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CDPCircleProxyImpl removeThisDeviceFromCircle:a3];
    }

    goto LABEL_11;
  }

  return v6;
}

- (BOOL)resetToOffering:(id *)a3
{
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DED99000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to reset to offering", buf, 2u);
  }

  v6 = [(CDPSOSCircleProxyImpl *)self _performSOSCBlock:&__block_literal_global_20 error:a3];
  v7 = _CDPLogSystem();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1DED99000, v8, OS_LOG_TYPE_DEFAULT, "Reset to offering succeeded.", v10, 2u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [CDPSOSCircleProxyImpl resetToOffering:a3];
  }

  return v6;
}

- (BOOL)requestToResetCloudKitDataForReason:(id)a3 error:(id *)a4
{
  v5 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v22 = 0;
  v23[0] = &v22;
  v23[1] = 0x3032000000;
  v23[2] = __Block_byref_object_copy__5;
  v23[3] = __Block_byref_object_dispose__5;
  v24 = 0;
  v21 = 0;
  v6 = [MEMORY[0x1E697AA20] controlObject:&v21];
  v7 = v21;
  if (v6)
  {
    v8 = dispatch_semaphore_create(0);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __67__CDPSOSCircleProxyImpl_requestToResetCloudKitDataForReason_error___block_invoke;
    v16[3] = &unk_1E869E390;
    v18 = &v22;
    v19 = &v25;
    v9 = v8;
    v17 = v9;
    [v6 rpcResetCloudKit:0 reason:v5 reply:v16];
    dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DED99000, v10, OS_LOG_TYPE_DEFAULT, "CKKS control unavailable", buf, 2u);
    }

    v11 = v23[0];
    v12 = v7;
    v9 = *(v11 + 40);
    *(v11 + 40) = v12;
  }

  if (*(v23[0] + 40))
  {
    v13 = _CDPLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CDPSOSCircleProxyImpl requestToResetCloudKitDataForReason:v23 error:?];
    }

    if (a4)
    {
      *a4 = *(v23[0] + 40);
    }
  }

  v14 = *(v26 + 24);

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v25, 8);

  return v14;
}

void __67__CDPSOSCircleProxyImpl_requestToResetCloudKitDataForReason_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else
  {
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1DED99000, v5, OS_LOG_TYPE_DEFAULT, "Cloud data reset!", v6, 2u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)viewMemberForAllUserFacingViews:(id *)a3
{
  if (![(CDPSOSCircleProxyImpl *)self viewMemberForWiFi:?]|| ![(CDPSOSCircleProxyImpl *)self viewMemberForCreditCards:a3]|| ![(CDPSOSCircleProxyImpl *)self viewMemberForAutofillPasswords:a3])
  {
    return 0;
  }

  return [(CDPSOSCircleProxyImpl *)self viewMemberForOtherSyncable:a3];
}

- (BOOL)_viewMemberForView:(__CFString *)a3 error:(id *)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = SOSCCView();
  v7 = _CDPLogSystem();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6 == 1)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    *buf = 138412546;
    *v15 = a3;
    *&v15[8] = 2112;
    *&v15[10] = 0;
    v9 = "Calling SOSCCView for view %@ reported device is MEMBER - (error: %@)";
    v10 = v7;
    v11 = 22;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    *buf = 67109634;
    *v15 = v6;
    *&v15[4] = 2112;
    *&v15[6] = a3;
    *&v15[14] = 2112;
    *&v15[16] = 0;
    v9 = "Calling SOSCCView returned status %i for view %@ - (error: %@)";
    v10 = v7;
    v11 = 28;
  }

  _os_log_impl(&dword_1DED99000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
LABEL_7:

  if (a4)
  {
    *a4 = 0;
  }

  result = v6 == 1;
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)anyPeerHasEnabledViewsInSet:(id)a3 error:(id *)a4
{
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__CDPSOSCircleProxyImpl_anyPeerHasEnabledViewsInSet_error___block_invoke;
  v9[3] = &unk_1E869D190;
  v10 = v6;
  v7 = v6;
  LOBYTE(a4) = [(CDPSOSCircleProxyImpl *)self _performSOSCBlock:v9 error:a4];

  return a4;
}

- (BOOL)hasNonViewAwarePeers
{
  cf = 0;
  v2 = SOSCCCopyViewUnawarePeerInfo();
  if (!v2)
  {
    return 0;
  }

  v3 = CFArrayGetCount(v2) > 0;
  CFRelease(v2);
  return v3;
}

- (BOOL)removeNonViewAwarePeers:(id *)a3
{
  [(CDPSOSCircleProxyImpl *)self registerCredentials];
  v4 = SOSCCCopyViewUnawarePeerInfo();
  if (v4)
  {
    v5 = v4;
    LODWORD(v6) = SOSCCRemovePeersFromCircle();

    v7 = _CDPLogSystem();
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [CDPCircleProxyImpl removeNonViewAwarePeers:];
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CDPCircleProxyImpl removeNonViewAwarePeers:];
    }

    CFRelease(v5);
    if (a3)
    {
LABEL_12:
      v9 = 0;
      *a3 = 0;
    }
  }

  else
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [CDPCircleProxyImpl removeNonViewAwarePeers:];
    }

    LOBYTE(v6) = 0;
    if (a3)
    {
      goto LABEL_12;
    }
  }

  return v6;
}

- (BOOL)setUserControllableViewsSyncStatus:(BOOL)a3 error:(id *)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_1DED99000, "cdp: Updating keychain views", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  v7 = *MEMORY[0x1E697AB40];
  v8 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E697AB68], *MEMORY[0x1E697AB40], *MEMORY[0x1E697AB60], *MEMORY[0x1E697AB50], 0}];
  v9 = v8;
  if (a3)
  {
    v10 = v8;
    v11 = [MEMORY[0x1E695DFD8] set];
  }

  else
  {
    v10 = [MEMORY[0x1E695DFD8] set];
    v11 = v9;
  }

  v12 = v11;
  v13 = [(CDPSOSCircleProxyImpl *)self setViewsWithEnableSet:v10 disableSet:v11];
  v14 = _CDPLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v19 = v10;
    v20 = 2112;
    v21 = v12;
    v22 = 1024;
    v23 = v13;
    _os_log_debug_impl(&dword_1DED99000, v14, OS_LOG_TYPE_DEBUG, "Calling SOSCCViewSet with enable=%@ disable=%@ returned success=%i", buf, 0x1Cu);
  }

  os_activity_scope_leave(&state);
  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)_performSOSCBlock:(id)a3 error:(id *)a4
{
  v6 = a3;
  err = 0;
  if (v6[2](v6, &err))
  {
    v7 = 1;
  }

  else if (err && (v8 = *MEMORY[0x1E697AB38], Domain = CFErrorGetDomain(err), CFStringCompare(v8, Domain, 0) == kCFCompareEqualTo) && (CFErrorGetCode(err) == 1 || CFErrorGetCode(err) == 2) && [(CDPSOSCircleProxyImpl *)self registerCredentials])
  {
    CFRelease(err);
    err = 0;
    v7 = v6[2](v6, &err);
  }

  else
  {
    v7 = 0;
  }

  if (a4)
  {
    *a4 = err;
  }

  else if (err)
  {
    CFRelease(err);
  }

  return v7;
}

- (BOOL)_registerCredentialsOnlyIfNeeded:(BOOL)a3
{
  v3 = a3;
  v49 = *MEMORY[0x1E69E9840];
  v5 = self->_cdpContext;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(CDPContext *)v5 appleID];
    v8 = [(CDPContext *)v5 dsid];
    *buf = 141559042;
    v40 = 1752392040;
    v41 = 2112;
    v42 = *&v7;
    v43 = 2160;
    v44 = 1752392040;
    v45 = 2112;
    v46 = v8;
    v47 = 2048;
    v48 = [(CDPContext *)v5 type];
    _os_log_impl(&dword_1DED99000, v6, OS_LOG_TYPE_DEFAULT, "_registerCredentialsOnlyIfNeeded: appleID:%{mask.hash}@, dsid: %{mask.hash}@, type: %ld", buf, 0x34u);
  }

  v9 = [(CDPContext *)v5 appleID];
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = v9;
  v11 = [(CDPContext *)v5 password];
  if (!v11)
  {

LABEL_11:
    v14 = _CDPLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [CDPCircleProxyImpl _registerCredentialsOnlyIfNeeded:];
    }

    goto LABEL_13;
  }

  v12 = v11;
  v13 = [(CDPContext *)v5 dsid];

  if (!v13)
  {
    goto LABEL_11;
  }

  if (v3 && [(CDPSOSCircleProxyImpl *)self canAuthenticate])
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
    _os_log_impl(&dword_1DED99000, v18, OS_LOG_TYPE_DEFAULT, "Calling SOSCCSetUserCredentialsAndDSID", buf, 2u);
  }

  cf = 0;
  v19 = [(CDPContext *)v5 password];
  v20 = [v19 dataUsingEncoding:4];

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
    v40 = v22;
    _os_log_impl(&dword_1DED99000, v27, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SetUserCredentialsAndDSID  enableTelemetry=YES ", buf, 0xCu);
  }

  v28 = [(CDPContext *)v5 appleID];
  v29 = [(CDPContext *)v5 dsid];
  [v29 stringValue];
  v15 = SOSCCSetUserCredentialsAndDSID();

  if ((v15 & 1) == 0)
  {
    v30 = _CDPLogSystem();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [CDPCircleProxyImpl _registerCredentialsOnlyIfNeeded:?];
    }
  }

  v31 = cf;
  Nanoseconds = _CDPSignpostGetNanoseconds(v22, v24);
  v33 = _CDPSignpostLogSystem();
  v34 = v33;
  if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
  {
    v35 = [v31 code];
    *buf = 67240192;
    LODWORD(v40) = v35;
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v34, OS_SIGNPOST_INTERVAL_END, v22, "SetUserCredentialsAndDSID", " Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 8u);
  }

  v36 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = [v31 code];
    *buf = 134218496;
    v40 = v22;
    v41 = 2048;
    v42 = Nanoseconds / 1000000000.0;
    v43 = 1026;
    LODWORD(v44) = v37;
    _os_log_impl(&dword_1DED99000, v36, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SetUserCredentialsAndDSID  Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 0x1Cu);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

LABEL_14:
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)tryRegisteringCredentials
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = self->_cdpContext;
  v3 = [(CDPContext *)v2 appleID];
  if (v3)
  {
    v4 = v3;
    v5 = [(CDPContext *)v2 dsid];
    if (v5)
    {
      v6 = v5;
      v7 = [(CDPContext *)v2 password];

      if (v7)
      {
        cf = 0;
        v8 = [(CDPContext *)v2 password];
        v9 = [v8 dataUsingEncoding:4];

        v10 = _CDPSignpostLogSystem();
        v11 = _CDPSignpostCreate(v10);
        v13 = v12;

        v14 = _CDPSignpostLogSystem();
        v15 = v14;
        if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1DED99000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v11, "TryUserCredentialsAndDSID", " enableTelemetry=YES ", buf, 2u);
        }

        v16 = _CDPSignpostLogSystem();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v34 = v11;
          _os_log_impl(&dword_1DED99000, v16, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: TryUserCredentialsAndDSID  enableTelemetry=YES ", buf, 0xCu);
        }

        v17 = [(CDPContext *)v2 appleID];
        v18 = [(CDPContext *)v2 dsid];
        [v18 stringValue];
        v19 = SOSCCTryUserCredentialsAndDSID();

        v20 = _CDPLogSystem();
        v21 = v20;
        if (v19)
        {
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1DED99000, v21, OS_LOG_TYPE_DEFAULT, "Registered credentials through try attempt", buf, 2u);
          }
        }

        else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [(CDPCircleProxyImpl *)&cf tryRegisteringCredentials];
        }

        v23 = cf;
        Nanoseconds = _CDPSignpostGetNanoseconds(v11, v13);
        v25 = _CDPSignpostLogSystem();
        v26 = v25;
        if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
        {
          v27 = [v23 code];
          *buf = 67240192;
          LODWORD(v34) = v27;
          _os_signpost_emit_with_name_impl(&dword_1DED99000, v26, OS_SIGNPOST_INTERVAL_END, v11, "TryUserCredentialsAndDSID", " Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 8u);
        }

        v28 = _CDPSignpostLogSystem();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = [v23 code];
          *buf = 134218496;
          v34 = v11;
          v35 = 2048;
          v36 = Nanoseconds / 1000000000.0;
          v37 = 1026;
          v38 = v29;
          _os_log_impl(&dword_1DED99000, v28, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: TryUserCredentialsAndDSID  Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 0x1Cu);
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        goto LABEL_26;
      }
    }

    else
    {
    }
  }

  v22 = _CDPLogSystem();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    [CDPCircleProxyImpl tryRegisteringCredentials];
  }

  v19 = 0;
LABEL_26:

  v30 = *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)canAuthenticate
{
  v2 = SOSCCCanAuthenticate();
  if ((v2 & 1) == 0)
  {
    v3 = _CDPLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [CDPCircleProxyImpl canAuthenticate];
    }
  }

  return v2;
}

- (void)reportSuccess
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[CDPSOSCircleProxyImpl reportSuccess]";
    v6 = 1024;
    v7 = 550;
    _os_log_impl(&dword_1DED99000, v2, OS_LOG_TYPE_DEFAULT, "%s (%d) called", &v4, 0x12u);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)reportFailure:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[CDPSOSCircleProxyImpl reportFailure:]";
    v7 = 1024;
    v8 = 556;
    _os_log_impl(&dword_1DED99000, v3, OS_LOG_TYPE_DEFAULT, "%s (%d) called", &v5, 0x12u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

+ (unint64_t)syncingStatusForAltDSID:(id)a3
{
  v3 = a3;
  v4 = SOSCCFetchCompatibilityMode();
  v5 = [CDPContext contextForAccountWithAltDSID:v3];

  if (v4)
  {
    v6 = [[CDPSOSCircleProxyImpl alloc] initWithContext:v5];
    v11 = 0;
    v7 = [(CDPSOSCircleProxyImpl *)v6 combinedCircleStatus:&v11];
    v8 = v11;
    if (v8)
    {
      v9 = _CDPLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[CDPSOSCircleProxyImpl syncingStatusForAltDSID:];
      }
    }
  }

  else
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      +[CDPSOSCircleProxyImpl syncingStatusForAltDSID:];
    }

    v7 = 0;
  }

  return v7;
}

- (int64_t)cliqueStatus:(id *)a3
{
  if (a3)
  {
    *a3 = [MEMORY[0x1E696ABC0] cdp_errorWithCode:-5004];
  }

  return -1;
}

- (BOOL)fetchUserControllableViewsSyncingEnabled:(id *)a3
{
  if (a3)
  {
    *a3 = [MEMORY[0x1E696ABC0] cdp_errorWithCode:-5004];
  }

  return 0;
}

- (unint64_t)cachedCliqueStatus:(id *)a3
{
  if (a3)
  {
    *a3 = [MEMORY[0x1E696ABC0] cdp_errorWithCode:-5004];
  }

  return -1;
}

- (id)generateVerifierWithRecoveryKey:(id)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = [MEMORY[0x1E696ABC0] cdp_errorWithCode:-5004];
  }

  return 0;
}

- (void)recoverOctagonUsingCustodianInfo:(id)a3 completion:(id)a4
{
  if (a4)
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = a4;
    v7 = [v5 cdp_errorWithCode:-5004];
    (*(a4 + 2))(v6, v7);
  }
}

- (id)requestToResetProtectedData:(id *)a3
{
  if (a3)
  {
    *a3 = [MEMORY[0x1E696ABC0] cdp_errorWithCode:-5004];
  }

  return 0;
}

- (void)peerId
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v1, v2, "Failed to get peer ID: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)peerCount
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v1, v2, "Failed to get peer info from circle: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)peerDeviceNamesByPeerID
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v1, v2, "Failed to get peer info to find device names: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)synchronizeCircleViews
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)removeThisDeviceFromCircle:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *a1;
  }

  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v2, v3, "Failed to remove self from circle - %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)resetToOffering:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *a1;
  }

  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v2, v3, "Failed to reset to offering - %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)requestToResetCloudKitDataForReason:(uint64_t *)a1 error:.cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x1E69E9840]);
  v2 = *(v1 + 40);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v3, v4, "Failed to reset cloud data with error: %@", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)hasNonViewAwarePeers
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v1, v2, "Failed to check for non-view-aware peers with error %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

+ (void)syncingStatusForAltDSID:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)syncingStatusForAltDSID:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "CDPDFollowUpController: Error fetching SOS Status: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end
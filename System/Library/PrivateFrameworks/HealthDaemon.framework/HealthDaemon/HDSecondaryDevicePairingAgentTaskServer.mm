@interface HDSecondaryDevicePairingAgentTaskServer
- (HDSecondaryDevicePairingAgentTaskServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)_cancelTaskTimeout;
- (void)_finishWithSuccess:(void *)success error:;
- (void)_removePrivacyAlerts;
- (void)_scheduleTaskTimeout:(double)timeout timeoutHandler:;
- (void)remote_fetchSharingStatusForCurrentAppleIDWithOwnerEmailAddress:(id)address completion:(id)completion;
- (void)remote_fetchSharingStatusWithPairedGuardianWithCompletion:(id)completion;
- (void)remote_performEndToEndCloudSyncWithNRDeviceUUID:(id)d syncParticipantFirst:(BOOL)first completion:(id)completion;
- (void)remote_requestTinkerSharingOptInWithGuardianDisplayName:(id)name NRDeviceUUID:(id)d completion:(id)completion;
- (void)remote_setupHealthSharingForSecondaryPairedDeviceWithConfiguration:(id)configuration completion:(id)completion;
- (void)remote_tearDownHealthSharingWithPairedGuardianWithCompletion:(id)completion;
- (void)remote_tearDownHealthSharingWithTinkerDeviceWithNRUUID:(id)d completion:(id)completion;
@end

@implementation HDSecondaryDevicePairingAgentTaskServer

- (HDSecondaryDevicePairingAgentTaskServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  v7.receiver = self;
  v7.super_class = HDSecondaryDevicePairingAgentTaskServer;
  result = [(HDStandardTaskServer *)&v7 initWithUUID:d configuration:configuration client:client delegate:delegate];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
    result->_tinkerSharingSetupTimeout = 300.0;
  }

  return result;
}

- (void)_finishWithSuccess:(void *)success error:
{
  v48 = *MEMORY[0x277D85DE8];
  successCopy = success;
  if (self)
  {
    [(HDSecondaryDevicePairingAgentTaskServer *)self _cancelTaskTimeout];
    os_unfair_lock_lock((self + 40));
    v6 = *(self + 64);
    if (v6)
    {
      v7 = v6;
      v8 = *(self + 64);
      *(self + 64) = 0;

      os_unfair_lock_unlock((self + 40));
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC328];
      v10 = *MEMORY[0x277CCC328];
      if (a2)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = v9;
          v12 = objc_opt_class();
          v13 = *(v7 + 7);
          v14 = v12;
          profileIdentifier = [v13 profileIdentifier];
          *buf = 138543618;
          v45 = v12;
          v46 = 2114;
          *v47 = profileIdentifier;
          _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@: Finish successfully, profile: %{public}@ (#t0)", buf, 0x16u);
        }

        profile = [self profile];
        daemon = [profile daemon];
        analyticsSubmissionCoordinator = [daemon analyticsSubmissionCoordinator];
        v19 = *(v7 + 4);
        [analyticsSubmissionCoordinator tinker_pairingDidFinishForConfiguration:v19 duration:CFAbsoluteTimeGetCurrent() - *(v7 + 2)];
        goto LABEL_19;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v40 = v9;
        *buf = 138543618;
        v45 = objc_opt_class();
        v46 = 2114;
        *v47 = successCopy;
        v41 = v45;
        _os_log_error_impl(&dword_228986000, v40, OS_LOG_TYPE_ERROR, "[sharing-setup] %{public}@: Failed to successfully setup pairing: %{public}@ (#t0)", buf, 0x16u);
      }

      if (!*(v7 + 7))
      {
LABEL_18:
        profile = [self profile];
        daemon = [profile daemon];
        analyticsSubmissionCoordinator = [daemon analyticsSubmissionCoordinator];
        v19 = *(v7 + 4);
        [analyticsSubmissionCoordinator tinker_pairingDidFailWithError:successCopy configuration:v19 duration:*(v7 + 6) stage:CFAbsoluteTimeGetCurrent() - *(v7 + 2)];
LABEL_19:

        v36 = successCopy;
        os_unfair_lock_lock(v7 + 2);
        v37 = _Block_copy(*(v7 + 5));
        v38 = *(v7 + 5);
        *(v7 + 5) = 0;

        os_unfair_lock_unlock(v7 + 2);
        v37[2](v37, a2, v36);

        [*(v7 + 3) invalidate];
        goto LABEL_20;
      }

      profile2 = [self profile];
      daemon2 = [profile2 daemon];
      profileManager = [daemon2 profileManager];
      v25 = *(v7 + 7);
      profileIdentifier2 = [v25 profileIdentifier];
      v43 = 0;
      v27 = [profileManager deleteProfile:profileIdentifier2 error:&v43];
      v28 = v43;

      _HKInitializeLogging();
      v29 = *MEMORY[0x277CCC328];
      v30 = *MEMORY[0x277CCC328];
      if (v27)
      {
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
LABEL_17:

          a2 = 0;
          goto LABEL_18;
        }

        v31 = v29;
        v32 = objc_opt_class();
        v33 = *(v7 + 7);
        v34 = v32;
        profileIdentifier3 = [v33 profileIdentifier];
        *buf = 138543618;
        v45 = v32;
        v46 = 2114;
        *v47 = profileIdentifier3;
        _os_log_impl(&dword_228986000, v31, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@: Completed profile teardown after pairing failure for %{public}@ (#t0)", buf, 0x16u);
      }

      else
      {
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_17;
        }

        v31 = v29;
        v42 = objc_opt_class();
        v33 = *(v7 + 7);
        v34 = v42;
        profileIdentifier3 = [v33 profileIdentifier];
        *buf = 138543874;
        v45 = v42;
        v46 = 2114;
        *v47 = profileIdentifier3;
        *&v47[8] = 2114;
        *&v47[10] = v28;
        _os_log_error_impl(&dword_228986000, v31, OS_LOG_TYPE_ERROR, "[sharing-setup] %{public}@: Failed to tear down profile %{public}@ after pairing failure: %{public}@ (#t0)", buf, 0x20u);
      }

      goto LABEL_17;
    }

    os_unfair_lock_unlock((self + 40));
    _HKInitializeLogging();
    v20 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v20;
      *buf = 138543874;
      v45 = objc_opt_class();
      v46 = 1024;
      *v47 = a2;
      *&v47[4] = 2114;
      *&v47[6] = successCopy;
      v21 = v45;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@: Attempting to finish with no active request (success: %{BOOL}d, %{public}@)", buf, 0x1Cu);

LABEL_20:
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)_cancelTaskTimeout
{
  if (self)
  {
    *(self + 56) = 0;
    v2 = *(self + 48);
    if (v2)
    {
      dispatch_source_cancel(v2);
      v3 = *(self + 48);
      *(self + 48) = 0;
    }
  }
}

- (void)remote_requestTinkerSharingOptInWithGuardianDisplayName:(id)name NRDeviceUUID:(id)d completion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dCopy = d;
  nameCopy = name;
  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    *buf = 138543362;
    v29 = objc_opt_class();
    v13 = v29;
    _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Preparing to send message to Tinker watch (#t0)", buf, 0xCu);
  }

  v14 = objc_alloc_init(HDCodableTinkerOptInRequest);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [(HDCodableTinkerOptInRequest *)v14 setRequestIdentifier:uUIDString];

  [(HDCodableTinkerOptInRequest *)v14 setGuardianDisplayName:nameCopy];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __123__HDSecondaryDevicePairingAgentTaskServer_remote_requestTinkerSharingOptInWithGuardianDisplayName_NRDeviceUUID_completion___block_invoke;
  v26[3] = &unk_278614E28;
  v26[4] = self;
  v17 = completionCopy;
  v27 = v17;
  [(HDSecondaryDevicePairingAgentTaskServer *)self _scheduleTaskTimeout:v26 timeoutHandler:60.0];
  profile = [(HDStandardTaskServer *)self profile];
  daemon = [profile daemon];
  primaryProfile = [daemon primaryProfile];
  nanoSyncManager = [primaryProfile nanoSyncManager];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __123__HDSecondaryDevicePairingAgentTaskServer_remote_requestTinkerSharingOptInWithGuardianDisplayName_NRDeviceUUID_completion___block_invoke_299;
  v24[3] = &unk_2786173C8;
  v24[4] = self;
  v25 = v17;
  v22 = v17;
  [nanoSyncManager sendTinkerSharingOptInRequest:v14 forNRDeviceUUID:dCopy completion:v24];

  v23 = *MEMORY[0x277D85DE8];
}

void __123__HDSecondaryDevicePairingAgentTaskServer_remote_requestTinkerSharingOptInWithGuardianDisplayName_NRDeviceUUID_completion___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = v2;
    *v8 = 138543362;
    *&v8[4] = objc_opt_class();
    v7 = *&v8[4];
    _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "[sharing-setup] %{public}@ Sharing Opt In timed out", v8, 0xCu);
  }

  v3 = [MEMORY[0x277CCA9B8] hk_error:103 description:{@"Operation timed out", *v8}];
  (*(*(a1 + 40) + 16))();

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleTaskTimeout:(double)timeout timeoutHandler:
{
  v5 = a2;
  if (self)
  {
    [(HDSecondaryDevicePairingAgentTaskServer *)self _cancelTaskTimeout];
    v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
    v7 = self[6];
    self[6] = v6;

    v8 = self[6];
    v9 = dispatch_time(0, (timeout * 1000000000.0));
    dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
    objc_initWeak(&location, self);
    v10 = self[6];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __79__HDSecondaryDevicePairingAgentTaskServer__scheduleTaskTimeout_timeoutHandler___block_invoke;
    handler[3] = &unk_27861B320;
    objc_copyWeak(&v13, &location);
    v12 = v5;
    dispatch_source_set_event_handler(v10, handler);
    dispatch_resume(self[6]);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __123__HDSecondaryDevicePairingAgentTaskServer_remote_requestTinkerSharingOptInWithGuardianDisplayName_NRDeviceUUID_completion___block_invoke_299(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  if ((*(v3 + 56) & 1) == 0)
  {
    v5 = a3;
    [(HDSecondaryDevicePairingAgentTaskServer *)v3 _cancelTaskTimeout];
    (*(*(a1 + 40) + 16))();
  }
}

- (void)remote_setupHealthSharingForSecondaryPairedDeviceWithConfiguration:(id)configuration completion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  completionCopy = completion;
  _HKInitializeLogging();
  v10 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    LODWORD(buf.receiver) = 138543362;
    *(&buf.receiver + 4) = objc_opt_class();
    v12 = *(&buf.receiver + 4);
    _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@: Received setupHealthSharing call (#t0)", &buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_currentRequest)
  {
    os_unfair_lock_unlock(&self->_lock);
    v13 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"A secondary device setup request is already in progress."];
    completionCopy[2](completionCopy, 0, v13);
  }

  else
  {
    v14 = [HDSecondaryDevicePairingRequest alloc];
    v15 = configurationCopy;
    v16 = completionCopy;
    if (v14)
    {
      buf.receiver = v14;
      buf.super_class = HDSecondaryDevicePairingRequest;
      v17 = [(HDSecondaryDevicePairingAgentTaskServer *)&buf init];
      v14 = v17;
      if (v17)
      {
        LODWORD(v17->super._taskUUID) = 0;
        objc_storeStrong(&v17->super._delegate, configuration);
        v18 = [v16 copy];
        completion = v14->_completion;
        v14->_completion = v18;

        v20 = [MEMORY[0x277CCD288] transactionWithOwner:v14];
        transaction = v14->_transaction;
        v14->_transaction = v20;

        v14->_startTime = CFAbsoluteTimeGetCurrent();
        v14->_stage = 1;
      }
    }

    currentRequest = self->_currentRequest;
    self->_currentRequest = v14;
    v23 = v14;

    os_unfair_lock_unlock(&self->_lock);
    tinkerSharingSetupTimeout = self->_tinkerSharingSetupTimeout;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __121__HDSecondaryDevicePairingAgentTaskServer_remote_setupHealthSharingForSecondaryPairedDeviceWithConfiguration_completion___block_invoke;
    v31[3] = &unk_278613968;
    v31[4] = self;
    [(HDSecondaryDevicePairingAgentTaskServer *)self _scheduleTaskTimeout:v31 timeoutHandler:tinkerSharingSetupTimeout];
    v25 = v23;
    v26 = v25;
    if (v25)
    {
      v25->_stage = 2;
    }

    profile = [(HDStandardTaskServer *)self profile];
    cloudSyncManager = [profile cloudSyncManager];
    buf.receiver = MEMORY[0x277D85DD0];
    buf.super_class = 3221225472;
    v33 = __80__HDSecondaryDevicePairingAgentTaskServer__prepareGuardianForSharingForRequest___block_invoke;
    v34 = &unk_278616020;
    selfCopy = self;
    v13 = v26;
    v36 = v13;
    v29 = [cloudSyncManager prepareForSharingWithCompletion:&buf];
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __121__HDSecondaryDevicePairingAgentTaskServer_remote_setupHealthSharingForSecondaryPairedDeviceWithConfiguration_completion___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = v2;
    *v8 = 138543362;
    *&v8[4] = objc_opt_class();
    v7 = *&v8[4];
    _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "[sharing-setup] %{public}@ Sharing Setup timed out", v8, 0xCu);
  }

  v3 = [MEMORY[0x277CCA9B8] hk_error:103 description:{@"Operation timed out", *v8}];
  [(HDSecondaryDevicePairingAgentTaskServer *)*(a1 + 32) _finishWithSuccess:v3 error:?];

  v4 = *MEMORY[0x277D85DE8];
}

- (void)remote_performEndToEndCloudSyncWithNRDeviceUUID:(id)d syncParticipantFirst:(BOOL)first completion:(id)completion
{
  firstCopy = first;
  dCopy = d;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __123__HDSecondaryDevicePairingAgentTaskServer_remote_performEndToEndCloudSyncWithNRDeviceUUID_syncParticipantFirst_completion___block_invoke;
  aBlock[3] = &unk_27861B280;
  aBlock[4] = self;
  v11 = dCopy;
  v28 = v11;
  v12 = _Block_copy(aBlock);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __123__HDSecondaryDevicePairingAgentTaskServer_remote_performEndToEndCloudSyncWithNRDeviceUUID_syncParticipantFirst_completion___block_invoke_310;
  v24[3] = &unk_27861B2A8;
  v24[4] = self;
  v13 = v11;
  v25 = v13;
  v26 = a2;
  v14 = _Block_copy(v24);
  v15 = v14;
  if (firstCopy)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __123__HDSecondaryDevicePairingAgentTaskServer_remote_performEndToEndCloudSyncWithNRDeviceUUID_syncParticipantFirst_completion___block_invoke_317;
    v21[3] = &unk_27861B2D0;
    v16 = &v22;
    v22 = v12;
    v17 = &v23;
    v23 = completionCopy;
    (v15)[2](v15, 2, v21);
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __123__HDSecondaryDevicePairingAgentTaskServer_remote_performEndToEndCloudSyncWithNRDeviceUUID_syncParticipantFirst_completion___block_invoke_2;
    v18[3] = &unk_27861B2D0;
    v16 = &v19;
    v19 = v14;
    v17 = &v20;
    v20 = completionCopy;
    (*(v12 + 2))(v12, v18);
  }
}

void __123__HDSecondaryDevicePairingAgentTaskServer_remote_performEndToEndCloudSyncWithNRDeviceUUID_syncParticipantFirst_completion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    *buf = 138543362;
    v18 = objc_opt_class();
    v7 = v18;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Preparing to send message to Tinker watch for end to end Cloud Sync (#t0)", buf, 0xCu);
  }

  v8 = [*(a1 + 32) profile];
  v9 = [v8 daemon];
  v10 = [v9 primaryProfile];
  v11 = [v10 nanoSyncManager];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __123__HDSecondaryDevicePairingAgentTaskServer_remote_performEndToEndCloudSyncWithNRDeviceUUID_syncParticipantFirst_completion___block_invoke_308;
  v15[3] = &unk_2786173C8;
  v12 = *(a1 + 40);
  v15[4] = *(a1 + 32);
  v16 = v3;
  v13 = v3;
  [v11 sendTinkerEndToEndCloudSyncRequestForNRDeviceUUID:v12 completion:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __123__HDSecondaryDevicePairingAgentTaskServer_remote_performEndToEndCloudSyncWithNRDeviceUUID_syncParticipantFirst_completion___block_invoke_308(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = v6;
    v12 = 138543874;
    v13 = objc_opt_class();
    v14 = 1024;
    v15 = a2;
    v16 = 2114;
    v17 = v5;
    v10 = v13;
    _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Did finish Gizmo Sync with success: %d, error: %{public}@ (#t0)", &v12, 0x1Cu);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), a2, v5, v7);

  v11 = *MEMORY[0x277D85DE8];
}

void __123__HDSecondaryDevicePairingAgentTaskServer_remote_performEndToEndCloudSyncWithNRDeviceUUID_syncParticipantFirst_completion___block_invoke_310(uint64_t a1, uint64_t a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [*(a1 + 32) profile];
  v7 = [v6 daemon];
  v8 = [v7 profileManager];
  v9 = [v8 profileAssociatedWithNRDeviceUUID:*(a1 + 40)];

  v10 = [*(a1 + 32) profile];
  v11 = [v10 daemon];
  v12 = [v11 profileManager];
  v13 = [v12 profileForIdentifier:v9];

  _HKInitializeLogging();
  v14 = *MEMORY[0x277CCC328];
  v15 = *MEMORY[0x277CCC328];
  if (v13)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v17 = v14;
      *buf = 138543362;
      v29 = objc_opt_class();
      v18 = v29;
      _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Performing Sync for local device (reason: end to end Cloud Sync) (#t0)", buf, 0xCu);
    }

    v19 = [[HDCloudSyncContext alloc] initForPurpose:a2 options:0 reason:20];
    v20 = [v13 cloudSyncManager];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __123__HDSecondaryDevicePairingAgentTaskServer_remote_performEndToEndCloudSyncWithNRDeviceUUID_syncParticipantFirst_completion___block_invoke_315;
    v26[3] = &unk_2786173C8;
    v26[4] = *(a1 + 32);
    v27 = v5;
    v21 = [v20 syncWithContext:v19 completion:v26];
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 32);
      v25 = *(a1 + 40);
      *buf = 138543618;
      v29 = v24;
      v30 = 2114;
      v31 = v25;
      _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "%{public}@: Unable to find profile for end-to-end sync for device %{public}@", buf, 0x16u);
    }

    v22 = *(a1 + 32);
    v19 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:*(a1 + 48) format:{@"No profile for device UUID %@", *(a1 + 40)}];
    (*(v5 + 2))(v5, 0, v19);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __123__HDSecondaryDevicePairingAgentTaskServer_remote_performEndToEndCloudSyncWithNRDeviceUUID_syncParticipantFirst_completion___block_invoke_315(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = v6;
    v12 = 138543618;
    v13 = objc_opt_class();
    v14 = 2114;
    v15 = v5;
    v10 = v13;
    _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Did finish local device sync for end to end Cloud Sync with error: %{public}@ (#t0)", &v12, 0x16u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), a2, v5, v7);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)remote_tearDownHealthSharingWithPairedGuardianWithCompletion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  _HKInitializeLogging();
  v6 = MEMORY[0x277CCC328];
  v7 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = objc_opt_class();
    v10 = v9;
    v11 = NSStringFromSelector(a2);
    *buf = 138543618;
    v36 = v9;
    v37 = 2114;
    v38 = v11;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ %{public}@ called (#t0)", buf, 0x16u);
  }

  profile = [(HDStandardTaskServer *)self profile];
  daemon = [profile daemon];
  behavior = [daemon behavior];
  isAppleWatch = [behavior isAppleWatch];

  if ((isAppleWatch & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v31 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSecondaryDevicePairingAgentTaskServer.m" lineNumber:257 description:{@"%@ must be called from a watch.", v31}];
  }

  profile2 = [(HDStandardTaskServer *)self profile];
  v34 = 0;
  v17 = [profile2 pairedGuardianParticipantWithError:&v34];
  v18 = v34;

  if (v18)
  {
    completionCopy[2](completionCopy, 0, v18);
  }

  else if (v17)
  {
    profile3 = [(HDStandardTaskServer *)self profile];
    daemon2 = [profile3 daemon];
    primaryProfile = [daemon2 primaryProfile];
    cloudSyncManager = [primaryProfile cloudSyncManager];
    v23 = [MEMORY[0x277CBEB98] setWithObject:v17];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __104__HDSecondaryDevicePairingAgentTaskServer_remote_tearDownHealthSharingWithPairedGuardianWithCompletion___block_invoke;
    v32[3] = &unk_2786173C8;
    v32[4] = self;
    v33 = completionCopy;
    v24 = [cloudSyncManager removeParticipants:v23 fromSharesWithCompletion:v32];
  }

  else
  {
    _HKInitializeLogging();
    v26 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v26;
      v28 = objc_opt_class();
      *buf = 138543362;
      v36 = v28;
      v29 = v28;
      _os_log_impl(&dword_228986000, v27, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Guardian participant is nil (#t0)", buf, 0xCu);
    }

    [(HDSecondaryDevicePairingAgentTaskServer *)self _removePrivacyAlerts];
    completionCopy[2](completionCopy, 1, 0);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_removePrivacyAlerts
{
  v17 = *MEMORY[0x277D85DE8];
  if (self)
  {
    profile = [self profile];
    daemon = [profile daemon];
    primaryProfile = [daemon primaryProfile];
    tinkerPrivacyAlertCoordinator = [primaryProfile tinkerPrivacyAlertCoordinator];
    v12 = 0;
    v5 = [tinkerPrivacyAlertCoordinator removeAllEventsWithError:&v12];
    v6 = v12;

    if ((v5 & 1) == 0)
    {
      _HKInitializeLogging();
      v7 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v9 = v7;
        v10 = objc_opt_class();
        *buf = 138543618;
        v14 = v10;
        v15 = 2112;
        v16 = v6;
        v11 = v10;
        _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "[sharing-setup] %{public}@: Error %@ removing alerts", buf, 0x16u);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __104__HDSecondaryDevicePairingAgentTaskServer_remote_tearDownHealthSharingWithPairedGuardianWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  if (a2)
  {
    [(HDSecondaryDevicePairingAgentTaskServer *)v5 _removePrivacyAlerts];
  }

  else if (v5)
  {
    v7 = objc_alloc_init(MEMORY[0x277D10BC0]);
    v8 = HKHealthKitFrameworkBundle();
    v9 = [v8 localizedStringForKey:@"STOP_SHARING_FAILED_NOTIFICATION_TITLE" value:&stru_283BF39C8 table:@"Localizable-tinker"];
    [v7 setTitle:v9];

    v10 = HKHealthKitFrameworkBundle();
    v11 = [v10 localizedStringForKey:@"STOP_SHARING_FAILED_NOTIFICATION_MESSAGE" value:&stru_283BF39C8 table:@"Localizable-tinker"];
    [v7 setMessage:v11];

    [v7 presentWithResponseHandler:&__block_literal_global_59];
  }

  v12 = *(a1 + 40);
  v13 = [v6 hk_sanitizedError];

  (*(v12 + 16))(v12, a2, v13);
}

- (void)remote_tearDownHealthSharingWithTinkerDeviceWithNRUUID:(id)d completion:(id)completion
{
  v58 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  _HKInitializeLogging();
  v9 = MEMORY[0x277CCC328];
  v10 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = objc_opt_class();
    v13 = v12;
    v14 = NSStringFromSelector(a2);
    *buf = 138543874;
    selfCopy = v12;
    v54 = 2114;
    v55 = v14;
    v56 = 2114;
    v57 = dCopy;
    _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ %{public}@ called with NR UUID %{public}@ (#t0)", buf, 0x20u);
  }

  profile = [(HDStandardTaskServer *)self profile];
  daemon = [profile daemon];
  behavior = [daemon behavior];
  isAppleWatch = [behavior isAppleWatch];

  if (isAppleWatch)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v46 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSecondaryDevicePairingAgentTaskServer.m" lineNumber:303 description:{@"%@ must be called from a phone.", v46}];
  }

  profile2 = [(HDStandardTaskServer *)self profile];
  profileType = [profile2 profileType];

  if (profileType == 1)
  {
    profile3 = [(HDStandardTaskServer *)self profile];
    daemon2 = [profile3 daemon];
    profileManager = [daemon2 profileManager];
    v24 = [profileManager profileAssociatedWithNRDeviceUUID:dCopy];

    profile4 = [(HDStandardTaskServer *)self profile];
    daemon3 = [profile4 daemon];
    profileManager2 = [daemon3 profileManager];
    v28 = [profileManager2 profileForIdentifier:v24];

    if ([v28 profileType] == 1)
    {
      _HKInitializeLogging();
      v29 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        v39 = v29;
        v40 = objc_opt_class();
        *buf = 138543874;
        selfCopy = v40;
        v54 = 2114;
        v55 = v28;
        v56 = 2114;
        v57 = dCopy;
        v41 = v40;
        _os_log_error_impl(&dword_228986000, v39, OS_LOG_TYPE_ERROR, "[sharing-setup] %{public}@ Profile %{public}@ associated with NRDeviceUUID:%{public}@ is primary profile. Abort sharing tear down flow (#t0)", buf, 0x20u);
      }

      [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Profile associated with NRDeviceUUID: %@ is primary profile.", dCopy}];
    }

    else
    {
      if (v28)
      {
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __109__HDSecondaryDevicePairingAgentTaskServer_remote_tearDownHealthSharingWithTinkerDeviceWithNRUUID_completion___block_invoke;
        v50[3] = &unk_278614E28;
        v50[4] = self;
        v31 = completionCopy;
        v51 = v31;
        [(HDSecondaryDevicePairingAgentTaskServer *)self _scheduleTaskTimeout:v50 timeoutHandler:60.0];
        cloudSyncManager = [v28 cloudSyncManager];
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __109__HDSecondaryDevicePairingAgentTaskServer_remote_tearDownHealthSharingWithTinkerDeviceWithNRUUID_completion___block_invoke_338;
        v47[3] = &unk_278613150;
        v47[4] = self;
        v48 = v28;
        v49 = v31;
        v33 = [cloudSyncManager leaveSharesWithCompletion:v47];

LABEL_19:
        goto LABEL_20;
      }

      _HKInitializeLogging();
      v34 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        v42 = v34;
        v43 = objc_opt_class();
        *buf = 138543618;
        selfCopy = v43;
        v54 = 2114;
        v55 = dCopy;
        v44 = v43;
        _os_log_error_impl(&dword_228986000, v42, OS_LOG_TYPE_ERROR, "[sharing-setup] %{public}@ Unable to find secondary profile associated with NRDeviceUUID: %{public}@ (#t0)", buf, 0x16u);
      }

      [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Unable to find secondary profile associated with NRDeviceUUID: %@", dCopy}];
    }
    v35 = ;
    (*(completionCopy + 2))(completionCopy, 0, v35);

    goto LABEL_19;
  }

  _HKInitializeLogging();
  v30 = *v9;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
  {
    v37 = v30;
    v38 = NSStringFromSelector(a2);
    *buf = 138543618;
    selfCopy = self;
    v54 = 2114;
    v55 = v38;
    _os_log_error_impl(&dword_228986000, v37, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ Health sharing pairing agent must be intialized with primary profile health store.", buf, 0x16u);
  }

  v24 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Tear down health sharing pairing agent not initialized with primary profile health store."];
  (*(completionCopy + 2))(completionCopy, 0, v24);
LABEL_20:

  v36 = *MEMORY[0x277D85DE8];
}

void __109__HDSecondaryDevicePairingAgentTaskServer_remote_tearDownHealthSharingWithTinkerDeviceWithNRUUID_completion___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = v2;
    *v8 = 138543362;
    *&v8[4] = objc_opt_class();
    v7 = *&v8[4];
    _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "[sharing-setup] %{public}@ Sharing Tear Down timed out", v8, 0xCu);
  }

  v3 = [MEMORY[0x277CCA9B8] hk_error:103 description:{@"Operation timed out", *v8}];
  (*(*(a1 + 40) + 16))();

  v4 = *MEMORY[0x277D85DE8];
}

void __109__HDSecondaryDevicePairingAgentTaskServer_remote_tearDownHealthSharingWithTinkerDeviceWithNRUUID_completion___block_invoke_338(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if ((*(v6 + 56) & 1) == 0)
  {
    [(HDSecondaryDevicePairingAgentTaskServer *)v6 _cancelTaskTimeout];
    if (a2)
    {
      v7 = [*(a1 + 32) profile];
      v8 = [v7 daemon];
      v9 = [v8 profileManager];
      v10 = [*(a1 + 40) profileIdentifier];
      v12 = 0;
      [v9 deleteProfile:v10 error:&v12];
      v11 = v12;

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }
}

- (void)remote_fetchSharingStatusWithPairedGuardianWithCompletion:(id)completion
{
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  daemon = [profile daemon];
  behavior = [daemon behavior];
  isAppleWatch = [behavior isAppleWatch];

  if ((isAppleWatch & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v15 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSecondaryDevicePairingAgentTaskServer.m" lineNumber:360 description:{@"%@ must be called from a watch.", v15}];
  }

  profile2 = [(HDStandardTaskServer *)self profile];
  cloudSyncManager = [profile2 cloudSyncManager];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __101__HDSecondaryDevicePairingAgentTaskServer_remote_fetchSharingStatusWithPairedGuardianWithCompletion___block_invoke;
  v16[3] = &unk_27861B2F8;
  v16[4] = self;
  v17 = completionCopy;
  v12 = completionCopy;
  v13 = [cloudSyncManager fetchShareParticipantsForSharingType:1 completion:v16];
}

void __101__HDSecondaryDevicePairingAgentTaskServer_remote_fetchSharingStatusWithPairedGuardianWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) profile];
    v20 = v6;
    v8 = [v7 pairedGuardianParticipantWithError:&v20];
    v9 = v20;

    if (v8)
    {
      (*(*(a1 + 40) + 16))(*(a1 + 40), [v5 containsObject:v8], 0);
    }

    else
    {
      _HKInitializeLogging();
      v11 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 32);
        v17 = v11;
        v18 = objc_opt_class();
        *buf = 138543618;
        v22 = v18;
        v23 = 2114;
        v24 = v9;
        v19 = v18;
        _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "[sharing-setup] %{public}@ Failed to fetch persisted paired Guardian participant from key value store, error: %{public}@", buf, 0x16u);
      }

      (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v9);
    }

    v6 = v9;
  }

  else
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = v10;
      *buf = 138543618;
      v22 = objc_opt_class();
      v23 = 2114;
      v24 = v6;
      v15 = v22;
      _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "[sharing-setup] %{public}@ Failed to fetch participants from cloud zones, error: %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)remote_fetchSharingStatusForCurrentAppleIDWithOwnerEmailAddress:(id)address completion:(id)completion
{
  addressCopy = address;
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  cloudSyncManager = [profile cloudSyncManager];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __118__HDSecondaryDevicePairingAgentTaskServer_remote_fetchSharingStatusForCurrentAppleIDWithOwnerEmailAddress_completion___block_invoke;
  v12[3] = &unk_2786130D8;
  v13 = completionCopy;
  v10 = completionCopy;
  v11 = [cloudSyncManager fetchSharingStatusForCurrentAppleIDWithOwnerEmailAddress:addressCopy completion:v12];
}

void __79__HDSecondaryDevicePairingAgentTaskServer__scheduleTaskTimeout_timeoutHandler___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  if (WeakRetained)
  {
    *(WeakRetained + 56) = 1;
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v7 = v3;
      *buf = 138543362;
      v11 = objc_opt_class();
      v8 = v11;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "[sharing-setup] %{public}@ Operation timed out", buf, 0xCu);
    }

    v4 = _Block_copy(*(WeakRetained + 10));
    v5 = v4;
    if (v4)
    {
      (*(v4 + 2))(v4);
    }

    v2[2](v2);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __80__HDSecondaryDevicePairingAgentTaskServer__prepareGuardianForSharingForRequest___block_invoke(uint64_t a1, char a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 32) profile];
    v7 = [v6 cloudSyncManager];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __80__HDSecondaryDevicePairingAgentTaskServer__prepareGuardianForSharingForRequest___block_invoke_354;
    v14[3] = &unk_27861B348;
    v8 = *(a1 + 40);
    v14[4] = *(a1 + 32);
    v15 = v8;
    [v7 fetchCloudKitAccountInfoWithCompletion:v14];
  }

  else
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = v9;
      *buf = 138543618;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = v5;
      v13 = v17;
      _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "[sharing-setup] %{public}@: Failed to prepare for sharing during setup: %{public}@ (#t0)", buf, 0x16u);
    }

    [(HDSecondaryDevicePairingAgentTaskServer *)*(a1 + 32) _finishWithSuccess:v5 error:?];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __80__HDSecondaryDevicePairingAgentTaskServer__prepareGuardianForSharingForRequest___block_invoke_354(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  _HKInitializeLogging();
  v7 = MEMORY[0x277CCC328];
  v8 = *MEMORY[0x277CCC328];
  v9 = *MEMORY[0x277CCC328];
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v40 = *(a1 + 32);
      v41 = v8;
      *buf = 138543618;
      *&buf[4] = objc_opt_class();
      *&buf[12] = 2114;
      *&buf[14] = v6;
      v42 = *&buf[4];
      _os_log_error_impl(&dword_228986000, v41, OS_LOG_TYPE_ERROR, "[sharing-setup] %{public}@: Unable to fetch iCloud ID with error: %{public}@ (#t0)", buf, 0x16u);
    }

    [(HDSecondaryDevicePairingAgentTaskServer *)*(a1 + 32) _finishWithSuccess:v6 error:?];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = v8;
      v12 = objc_opt_class();
      v13 = v12;
      v14 = [v5 emailAddress];
      *buf = 138543619;
      *&buf[4] = v12;
      *&buf[12] = 2113;
      *&buf[14] = v14;
      _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@: Fetched icloud address for guardian: %{private}@ (#t0)", buf, 0x16u);
    }

    v16 = [v5 emailAddress];
    v17 = *(a1 + 40);
    if (v17)
    {
      objc_setProperty_nonatomic_copy(v17, v15, v16, 64);
    }

    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    if (v18)
    {
      _HKInitializeLogging();
      v20 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
        v22 = objc_opt_class();
        *buf = 138543362;
        *&buf[4] = v22;
        v23 = v22;
        _os_log_impl(&dword_228986000, v21, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Preparing to send message to Tinker watch (#t0)", buf, 0xCu);
      }

      if (v19)
      {
        *(v19 + 6) = 3;
      }

      v43 = [v18 profile];
      v24 = [v43 daemon];
      v25 = [v24 primaryProfile];
      v26 = [v25 nanoSyncManager];
      if (v19)
      {
        v27 = objc_alloc_init(HDCodableTinkerPairingRequest);
        v28 = [MEMORY[0x277CCAD78] UUID];
        v29 = [v28 UUIDString];
        [(HDCodableTinkerPairingRequest *)v27 setRequestIdentifier:v29];

        -[HDCodableTinkerPairingRequest setSetupType:](v27, "setSetupType:", [*(v19 + 4) setupType]);
        [(HDCodableTinkerPairingRequest *)v27 setGuardianIcloudIdentifier:*(v19 + 8)];
        v30 = [*(v19 + 4) guardianFirstName];
        [(HDCodableTinkerPairingRequest *)v27 setGuardianFirstName:v30];

        v31 = [*(v19 + 4) guardianLastName];
        [(HDCodableTinkerPairingRequest *)v27 setGuardianLastName:v31];

        v32 = [*(v19 + 4) guardianDSID];
        -[HDCodableTinkerPairingRequest setGuardianDSID:](v27, "setGuardianDSID:", [v32 longLongValue]);

        v33 = [*(v19 + 4) firstName];
        [(HDCodableTinkerPairingRequest *)v27 setTinkerFirstName:v33];

        v34 = [*(v19 + 4) lastName];
        [(HDCodableTinkerPairingRequest *)v27 setTinkerLastName:v34];

        v35 = *(v19 + 4);
      }

      else
      {
        v27 = 0;
        v35 = 0;
      }

      v36 = v35;
      v37 = [v36 nanoRegistryDeviceUUID];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __77__HDSecondaryDevicePairingAgentTaskServer__sendSharingRequestToTinkerDevice___block_invoke;
      v45 = &unk_27861B370;
      v46 = v18;
      v38 = v19;

      v47 = v38;
      [v26 sendTinkerWatchPairingRequest:v27 forNRDeviceUUID:v37 completion:buf];
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

void __77__HDSecondaryDevicePairingAgentTaskServer__sendSharingRequestToTinkerDevice___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = v6;
LABEL_3:
    [(HDSecondaryDevicePairingAgentTaskServer *)v7 _finishWithSuccess:v8 error:?];
    goto LABEL_4;
  }

  if (!v5)
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v16 = v14;
      *buf = 138543362;
      *&buf[4] = objc_opt_class();
      v17 = *&buf[4];
      _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Tinker health sharing is disabled (#t0)", buf, 0xCu);
    }

    v7 = *(a1 + 32);
    v8 = 0;
    goto LABEL_3;
  }

  if (*(*(a1 + 32) + 56) == 1)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = v10;
      *buf = 138543362;
      *&buf[4] = objc_opt_class();
      v13 = *&buf[4];
      _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ We received a response from the tinker watch but the request has timed out.(#t0)", buf, 0xCu);
    }
  }

  else
  {
    v34 = 0;
    v18 = [HDCloudSyncShareSetupMetadata cloudSyncShareSetupMetadataWithCodableSharingSetupMetadata:v5 error:&v34];
    v19 = v34;
    if (v18)
    {
      v20 = *(a1 + 32);
      v21 = *(a1 + 40);
      v22 = v18;
      if (v20)
      {
        _HKInitializeLogging();
        v23 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          v24 = v23;
          v25 = objc_opt_class();
          *buf = 138543619;
          *&buf[4] = v25;
          *&buf[12] = 2113;
          *&buf[14] = v22;
          v26 = v25;
          _os_log_impl(&dword_228986000, v24, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Accept shares with %{private}@ (#t0)", buf, 0x16u);
        }

        if (v21)
        {
          v21[6] = 4;
        }

        v27 = [v20 profile];
        v28 = [v27 cloudSyncManager];
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __77__HDSecondaryDevicePairingAgentTaskServer__acceptSharingForRequest_metadata___block_invoke;
        v36 = &unk_27861B398;
        v37 = v20;
        v38 = v21;
        v39 = v22;
        [v28 acceptShare:v39 completion:buf];
      }
    }

    else
    {
      _HKInitializeLogging();
      v29 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(a1 + 32);
        v31 = v29;
        v32 = objc_opt_class();
        *buf = 138543618;
        *&buf[4] = v32;
        *&buf[12] = 2114;
        *&buf[14] = v19;
        v33 = v32;
        _os_log_impl(&dword_228986000, v31, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@: Failed to decode share setup metadata: %{public}@", buf, 0x16u);
      }

      [(HDSecondaryDevicePairingAgentTaskServer *)*(a1 + 32) _finishWithSuccess:v19 error:?];
    }
  }

LABEL_4:

  v9 = *MEMORY[0x277D85DE8];
}

void __77__HDSecondaryDevicePairingAgentTaskServer__acceptSharingForRequest_metadata___block_invoke(uint64_t *a1, void *a2, void *a3)
{
  v213 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (!v5)
  {
    [(HDSecondaryDevicePairingAgentTaskServer *)a1[4] _finishWithSuccess:a3 error:?];
    goto LABEL_113;
  }

  v6 = a1[5];
  if (v6)
  {
    v6[6] = 5;
    v6 = a1[5];
  }

  v172 = a1;
  v7 = a1[6];
  v8 = a1[4];
  v174 = v6;
  v9 = v7;
  v173 = v5;
  v171 = v9;
  if (!v8)
  {
    v60 = 0;
    goto LABEL_54;
  }

  v199 = 0;
  v10 = v9;
  v11 = [v5 firstObject];
  v12 = [v11 owner];

  v180 = v8;
  v13 = [v8 profile];
  v14 = [v13 daemon];
  v15 = [v14 profileManager];

  v202 = 0u;
  v203 = 0u;
  v200 = 0u;
  v201 = 0u;
  v16 = [v15 allProfileIdentifiers];
  v17 = [v16 countByEnumeratingWithState:&v200 objects:v210 count:16];
  v18 = off_27860F000;
  if (!v17)
  {
    v8 = 0;
    goto LABEL_45;
  }

  v19 = v17;
  v20 = *v201;
  v186 = v10;
  v188 = *v201;
  v182 = v16;
  v184 = v15;
LABEL_7:
  v21 = 0;
  v196 = v19;
  while (1)
  {
    if (*v201 != v20)
    {
      objc_enumerationMutation(v16);
    }

    v22 = *(*(&v200 + 1) + 8 * v21);
    if ([v22 type] != 3)
    {
      goto LABEL_26;
    }

    v23 = [v15 profileForIdentifier:v22];
    if (v23)
    {
      break;
    }

    _HKInitializeLogging();
    v39 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v40 = v39;
      v41 = objc_opt_class();
      *buf = 138543618;
      *&buf[4] = v41;
      v206 = 2114;
      v207 = v22;
      v42 = v41;
      _os_log_impl(&dword_228986000, v40, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@: Profile %{public}@ deleted during iteration; skipping.", buf, 0x16u);
LABEL_23:

      v20 = v188;
    }

LABEL_25:

    v19 = v196;
LABEL_26:
    if (v19 == ++v21)
    {
      v45 = [v16 countByEnumeratingWithState:&v200 objects:v210 count:16];
      v19 = v45;
      if (!v45)
      {
        v8 = 0;
        v5 = v173;
        goto LABEL_45;
      }

      goto LABEL_7;
    }
  }

  v24 = v18[197];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _HKInitializeLogging();
    v43 = *MEMORY[0x277CCC328];
    if (!os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    v40 = v43;
    v44 = objc_opt_class();
    *buf = 138543618;
    *&buf[4] = v44;
    v206 = 2114;
    v207 = v23;
    v42 = v44;
    _os_log_fault_impl(&dword_228986000, v40, OS_LOG_TYPE_FAULT, "[sharing-setup] %{public}@: Profile %{public}@ is not actually a Tinker profile; skipping.", buf, 0x16u);
    goto LABEL_23;
  }

  v194 = v23;
  v25 = [v23 cloudSyncManager];
  v204 = 0;
  v26 = [v25 shareOwnerParticipantWithError:&v204];
  v27 = v204;

  if (v26)
  {
    v28 = 1;
  }

  else
  {
    v28 = v27 == 0;
  }

  if (!v28)
  {
    _HKInitializeLogging();
    v46 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v48 = v46;
      v49 = objc_opt_class();
      v50 = v49;
      v51 = [v194 profileIdentifier];
      *buf = 138543874;
      *&buf[4] = v49;
      v206 = 2114;
      v207 = v51;
      v208 = 2114;
      v209 = v27;
      _os_log_impl(&dword_228986000, v48, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@: Failed to lookup owner participant at existing tinker profile %{public}@: %{public}@", buf, 0x20u);
    }

    v52 = v27;
    v8 = 0;
    v199 = v27;
    goto LABEL_43;
  }

  v29 = [v10 profileIdentifier];
  v30 = [v29 isEqual:v22];

  if (!v30)
  {
    v191 = v27;
    v31 = [v26 userIdentity];
    v32 = [v31 userRecordID];
    v33 = [v32 recordName];
    v34 = v12;
    v35 = [v12 userIdentity];
    v36 = [v35 userRecordID];
    v37 = [v36 recordName];
    v38 = [v33 isEqual:v37];

    if (v38)
    {
      v56 = v194;
      v8 = v194;

      v5 = v173;
      v18 = off_27860F000;
      v15 = v184;
      v10 = v186;
      v12 = v34;
      v16 = v182;
      v27 = v191;
      goto LABEL_44;
    }

    v18 = off_27860F000;
    v15 = v184;
    v10 = v186;
    v12 = v34;
    v16 = v182;
    v23 = v194;
    v20 = v188;
    goto LABEL_25;
  }

  if (!v12)
  {
    goto LABEL_38;
  }

  v197 = [v26 userIdentity];
  v192 = [v197 userRecordID];
  v53 = [v192 recordName];
  v178 = [v12 userIdentity];
  v54 = [v178 userRecordID];
  v55 = [v54 recordName];
  v189 = [v53 isEqual:v55];

  if (v189)
  {
LABEL_38:
    v56 = v194;
    v8 = v194;

    v5 = v173;
    goto LABEL_44;
  }

  _HKInitializeLogging();
  v57 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
  {
    *buf = 138543874;
    *&buf[4] = v180;
    v206 = 2114;
    v207 = v26;
    v208 = 2114;
    v209 = v12;
    _os_log_fault_impl(&dword_228986000, v57, OS_LOG_TYPE_FAULT, "%{public}@: Existing profile identifier has an owner (%{public}@) which does not match the incoming owner (%{public}@)", buf, 0x20u);
  }

  [MEMORY[0x277CCA9B8] hk_assignError:&v199 code:721 format:{@"Existing profile identifier has an owner (%@) which does not match the incoming owner (%@)", v26, v12, v171}];

  v8 = 0;
LABEL_43:
  v5 = v173;
  v56 = v194;
LABEL_44:

LABEL_45:
  v58 = v199;
  v59 = v58;
  if (v8)
  {
    v60 = 0;
    goto LABEL_47;
  }

  if (v58)
  {
    v62 = v58;
    v8 = 0;
    v60 = v59;
  }

  else
  {
    v114 = v5;
    if (v174)
    {
      v115 = v174[4];
    }

    else
    {
      v115 = 0;
    }

    v116 = [v115 firstName];
    v117 = v116;
    v118 = @"Health Jr";
    if (v116)
    {
      v118 = v116;
    }

    v119 = v118;
    v120 = [v10 profileIdentifier];
    if ([v120 type] != 3)
    {
      v121 = MEMORY[0x277CCD7C8];
      v122 = [MEMORY[0x277CCAD78] UUID];
      v123 = [v121 _profileWithUUID:v122 type:3];

      v120 = v123;
    }

    v124 = [v180 profile];
    v125 = [v124 daemon];
    v126 = [v125 profileManager];
    *&v200 = 0;
    v8 = [v126 createProfileForIdentifier:v120 firstName:v119 lastName:0 error:&v200];

    v127 = v200;
    if (v8)
    {
      v128 = v8;
      v60 = 0;
      v5 = v114;
    }

    else
    {
      _HKInitializeLogging();
      v146 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v167 = v146;
        v168 = objc_opt_class();
        *v210 = 138543874;
        *&v210[4] = v168;
        *&v210[12] = 2114;
        *&v210[14] = v120;
        *&v210[22] = 2114;
        v211 = v127;
        v169 = v168;
        _os_log_error_impl(&dword_228986000, v167, OS_LOG_TYPE_ERROR, "[sharing-setup] %{public}@: Failed to create profile %{public}@ with error: %{public}@ (#t0)", v210, 0x20u);
      }

      v147 = v127;
      v60 = v147;
      v5 = v114;
      if (v147)
      {
        v148 = v147;
      }
    }

    if (v8)
    {
      v18 = off_27860F000;
LABEL_47:
      v61 = v18[197];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v170 = [MEMORY[0x277CCA890] currentHandler];
        [v170 handleFailureInMethod:sel__lookupOrCreateTinkerProfileForRequest_metadata_acceptedShares_error_ object:v180 file:@"HDSecondaryDevicePairingAgentTaskServer.m" lineNumber:681 description:{@"Invalid parameter not satisfying: %@", @"[tinkerProfile isKindOfClass:HDTinkerProfile.class]"}];
      }

      if (v174)
      {
        objc_storeStrong(v174 + 7, v8);
      }
    }
  }

LABEL_54:
  v63 = v60;
  v64 = v63;
  v65 = v172[4];
  if (v8)
  {
    v187 = v63;
    v66 = v172[6];
    v67 = v172[5];
    v195 = v66;
    v193 = v5;
    if (v65)
    {
      if (v67)
      {
        *(v67 + 6) = 6;
        v68 = *(v67 + 7);
        v69 = *(v67 + 4);
      }

      else
      {
        v68 = 0;
        v69 = 0;
      }

      v70 = v69;
      v71 = [v70 dateOfBirth];
      v198 = v65;
      v185 = v70;
      if (v67)
      {
        v72 = *(v67 + 4);
      }

      else
      {
        v72 = 0;
      }

      v73 = v72;
      v74 = [v73 firstName];
      if (v67)
      {
        v75 = *(v67 + 4);
      }

      else
      {
        v75 = 0;
      }

      v76 = v75;
      v77 = [v76 lastName];
      v181 = v76;
      v183 = v73;
      if (v67)
      {
        v78 = *(v67 + 4);
      }

      else
      {
        v78 = 0;
      }

      v179 = v78;
      v79 = [v179 dsid];
      v80 = v68;
      v81 = v71;
      v82 = v74;
      v83 = v77;
      v84 = v79;
      v190 = v8;
      if (v81)
      {
        v85 = [MEMORY[0x277CCD0D0] characteristicTypeForIdentifier:*MEMORY[0x277CCBB18]];
        v86 = [v80 userCharacteristicsManager];
        *&v200 = 0;
        [v86 setUserCharacteristic:v81 forType:v85 error:&v200];
        v87 = v200;

        if (v87)
        {
          _HKInitializeLogging();
          v88 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            v149 = v88;
            v150 = objc_opt_class();
            v176 = v150;
            v151 = [v80 profileIdentifier];
            *v210 = 138543874;
            *&v210[4] = v150;
            *&v210[12] = 2114;
            *&v210[14] = v87;
            *&v210[22] = 2114;
            v211 = v151;
            v152 = v151;
            _os_log_error_impl(&dword_228986000, v149, OS_LOG_TYPE_ERROR, "[sharing-setup] %{public}@ Error %{public}@ saving date of birth into profile %{public}@ (#t0)", v210, 0x20u);
          }

          v89 = v87;

          v90 = 0;
          goto LABEL_81;
        }
      }

      else
      {
        _HKInitializeLogging();
        v91 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          v92 = v91;
          v93 = objc_opt_class();
          *v210 = 138543362;
          *&v210[4] = v93;
          v94 = v93;
          _os_log_error_impl(&dword_228986000, v92, OS_LOG_TYPE_ERROR, "[sharing-setup] %{public}@ Did not receive birthdate for user (#t0)", v210, 0xCu);
        }
      }

      *buf = 0;
      [v80 setDisplayFirstName:v82 lastName:v83 error:buf];
      v95 = *buf;
      if (v95)
      {
        v87 = v95;
        _HKInitializeLogging();
        v96 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          v153 = v96;
          v154 = objc_opt_class();
          *v210 = 138544130;
          *&v210[4] = v154;
          *&v210[12] = 2114;
          *&v210[14] = v87;
          *&v210[22] = 2114;
          v211 = v82;
          LOWORD(v212) = 2114;
          *(&v212 + 2) = v83;
          v155 = v154;
          _os_log_error_impl(&dword_228986000, v153, OS_LOG_TYPE_ERROR, "[sharing-setup] %{public}@ Error %{public}@ saving first %{public}@ and last %{public}@ name (#t0)", v210, 0x2Au);
        }

        v97 = v87;
        v90 = 0;
        v85 = v87;
      }

      else
      {
        v204 = 0;
        [v80 setDSID:v84 error:&v204];
        v98 = v204;
        v90 = v98 == 0;
        if (v98)
        {
          _HKInitializeLogging();
          v99 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            v164 = v99;
            v165 = objc_opt_class();
            *v210 = 138543874;
            *&v210[4] = v165;
            *&v210[12] = 2114;
            *&v210[14] = v98;
            *&v210[22] = 2114;
            v211 = v84;
            v166 = v165;
            _os_log_error_impl(&dword_228986000, v164, OS_LOG_TYPE_ERROR, "[sharing-setup] %{public}@ Error %{public}@ saving DSID %{public}@ (#t0)", v210, 0x20u);
          }
        }

        v87 = 0;
        v85 = 0;
      }

LABEL_81:

      v100 = v87;
      if (v90)
      {
        _HKInitializeLogging();
        v101 = MEMORY[0x277CCC328];
        v102 = *MEMORY[0x277CCC328];
        v103 = v198;
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          v104 = v102;
          v105 = objc_opt_class();
          *v210 = 138543362;
          *&v210[4] = v105;
          v106 = v105;
          _os_log_impl(&dword_228986000, v104, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Profile name, DoB, DSID saved successfully (#t0)", v210, 0xCu);
        }

        if (v67)
        {
          v107 = *(v67 + 7);
          v108 = *(v67 + 4);
        }

        else
        {
          v107 = 0;
          v108 = 0;
        }

        v109 = v108;
        v110 = [v109 nanoRegistryDeviceUUID];
        *&v200 = 0;
        [v107 setPairedNRDeviceUUID:v110 error:&v200];
        v111 = v200;

        _HKInitializeLogging();
        v112 = *v101;
        v113 = v112;
        v8 = v190;
        if (v111)
        {
          v5 = v173;
          if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
          {
            v156 = objc_opt_class();
            if (v67)
            {
              v157 = *(v67 + 7);
            }

            else
            {
              v157 = 0;
            }

            v158 = v157;
            v159 = v156;
            v160 = [v158 profileIdentifier];
            v177 = v100;
            if (v67)
            {
              v161 = *(v67 + 4);
            }

            else
            {
              v161 = 0;
            }

            v162 = v161;
            v163 = [v162 nanoRegistryDeviceUUID];
            *v210 = 138544130;
            *&v210[4] = v156;
            *&v210[12] = 2114;
            *&v210[14] = v160;
            *&v210[22] = 2114;
            v211 = v163;
            LOWORD(v212) = 2114;
            *(&v212 + 2) = v111;
            _os_log_error_impl(&dword_228986000, v113, OS_LOG_TYPE_ERROR, "[sharing-setup] %{public}@: Failed to associate profile (%{public}@) with NRDeviceUUID: (%{public}@) error: %{public}@ (#t0)", v210, 0x2Au);

            v5 = v173;
            v8 = v190;
            v103 = v198;
            v100 = v177;
          }

          [(HDSecondaryDevicePairingAgentTaskServer *)v103 _finishWithSuccess:v100 error:?];
        }

        else
        {
          if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
          {
            v129 = objc_opt_class();
            if (v67)
            {
              v130 = *(v67 + 4);
            }

            else
            {
              v130 = 0;
            }

            v131 = v130;
            v132 = v129;
            v133 = [v131 nanoRegistryDeviceUUID];
            v175 = v100;
            if (v67)
            {
              v134 = *(v67 + 7);
            }

            else
            {
              v134 = 0;
            }

            v135 = v134;
            v136 = [v135 profileIdentifier];
            *v210 = 138543874;
            *&v210[4] = v129;
            *&v210[12] = 2114;
            *&v210[14] = v133;
            *&v210[22] = 2114;
            v211 = v136;
            _os_log_impl(&dword_228986000, v113, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Device %{public}@ associated successfully with profile %{public}@ (#t0)", v210, 0x20u);

            v103 = v198;
            v100 = v175;
            v101 = MEMORY[0x277CCC328];
          }

          _HKInitializeLogging();
          v137 = *v101;
          if (os_log_type_enabled(*v101, OS_LOG_TYPE_DEFAULT))
          {
            v138 = v137;
            v139 = objc_opt_class();
            *v210 = 138543362;
            *&v210[4] = v139;
            v140 = v139;
            _os_log_impl(&dword_228986000, v138, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Configuring profile for share setup metadata (#t0)", v210, 0xCu);
          }

          if (v67)
          {
            v141 = *(v67 + 7);
          }

          else
          {
            v141 = 0;
          }

          v142 = v141;
          v143 = [v142 cloudSyncManager];
          *v210 = MEMORY[0x277D85DD0];
          *&v210[8] = 3221225472;
          *&v210[16] = __97__HDSecondaryDevicePairingAgentTaskServer__setupTinkerProfileForRequest_metadata_acceptedShares___block_invoke;
          v211 = &unk_278616020;
          *&v212 = v103;
          v144 = v67;

          *(&v212 + 1) = v144;
          [v143 configureForShareSetupMetadata:v195 acceptedShares:v193 completion:v210];

          v5 = v173;
        }
      }

      else
      {
        [(HDSecondaryDevicePairingAgentTaskServer *)v198 _finishWithSuccess:v100 error:?];
        v5 = v173;
        v8 = v190;
      }
    }

    v64 = v187;
  }

  else
  {
    [(HDSecondaryDevicePairingAgentTaskServer *)v172[4] _finishWithSuccess:v63 error:?];
  }

LABEL_113:
  v145 = *MEMORY[0x277D85DE8];
}

void __97__HDSecondaryDevicePairingAgentTaskServer__setupTinkerProfileForRequest_metadata_acceptedShares___block_invoke(uint64_t a1, char a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      *buf = 138543362;
      v17 = objc_opt_class();
      v7 = v17;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ Subscribing to data available notifications (#t0)", buf, 0xCu);
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      v8 = v8[7];
    }

    v9 = v8;
    v10 = [v9 cloudSyncManager];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __97__HDSecondaryDevicePairingAgentTaskServer__setupTinkerProfileForRequest_metadata_acceptedShares___block_invoke_362;
    v15[3] = &unk_2786130B0;
    v11 = *(a1 + 32);

    v15[4] = v11;
    [v10 subscribeToDataAvailableNotificationsWithCompletion:v15];

    [(HDSecondaryDevicePairingAgentTaskServer *)*(a1 + 32) _finishWithSuccess:0 error:?];
    v12 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v13 = *(a1 + 32);
    v14 = *MEMORY[0x277D85DE8];

    [(HDSecondaryDevicePairingAgentTaskServer *)v13 _finishWithSuccess:a3 error:?];
  }
}

void __97__HDSecondaryDevicePairingAgentTaskServer__setupTinkerProfileForRequest_metadata_acceptedShares___block_invoke_362(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 32);
      v9 = v6;
      v11 = 138543618;
      v12 = objc_opt_class();
      v13 = 2114;
      v14 = v5;
      v10 = v12;
      _os_log_fault_impl(&dword_228986000, v9, OS_LOG_TYPE_FAULT, "[sharing-setup] %{public}@: Failed to set up subscriptions: %{public}@ (#t0)", &v11, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end
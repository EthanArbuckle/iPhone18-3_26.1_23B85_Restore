@interface HMDCameraRecordingManager
+ (id)logCategory;
- (BOOL)supportsDeviceWithCapabilities:(id)a3;
- (HMDCameraProfile)camera;
- (HMDCameraRecordingManager)initWithCamera:(id)a3 recordingManagementService:(id)a4;
- (HMDCameraRecordingManager)initWithCamera:(id)a3 recordingManagementService:(id)a4 workQueue:(id)a5 dependencyFactory:(id)a6 notificationCenter:(id)a7;
- (HMDHAPAccessory)accessory;
- (NSDictionary)stateDump;
- (id)_createRecordingSessionWithGeneralConfiguration:(id)a3 homePresenceByPairingIdentity:(id)a4;
- (id)homePresenceByPairingIdentity;
- (id)logIdentifier;
- (id)messagePayloadForStartRecordingSessionWithTriggerType:(unint64_t)a3;
- (unsigned)_closeEventReasonForRecordingSessionError:(id)a3;
- (void)_clipManagerDidStartUpCloudZone;
- (void)_configureRecordingSession:(id)a3 withTrigger:(unint64_t)a4;
- (void)_coordinateRecordingSessionForTrigger:(unint64_t)a3;
- (void)_forwardRecordingSessionForTrigger:(unint64_t)a3 withLoadBalancerDecision:(id)a4 deviceFilter:(id)a5 sessionCoordinationLogEvent:(id)a6 retryAttemptNumber:(int64_t)a7;
- (void)_loadBalanceRecordingSessionForTrigger:(unint64_t)a3;
- (void)_prepareRecordingSessionForTrigger:(unint64_t)a3 homePresenceByPairingIdentity:(id)a4 reason:(id)a5;
- (void)_prepareRecordingSessionForTrigger:(unint64_t)a3 homePresenceByPairingIdentity:(id)a4 reason:(id)a5 completionCallback:(id)a6;
- (void)_resetCurrentRecordingSession:(id)a3;
- (void)_resetRetryContextWithReason:(id)a3;
- (void)_shutDown;
- (void)_start;
- (void)_startReadingFromBulkSendSession:(id)a3;
- (void)_startRecordingSessionForTrigger:(unint64_t)a3 homePresenceByPairingIdentity:(id)a4 reason:(id)a5 generalConfiguration:(id)a6 completionCallback:(id)a7;
- (void)_startSessionRetryTimer;
- (void)_submitLoadBalancingEventWithDecision:(id)a3 numberOfRetries:(unint64_t)a4;
- (void)_submitRecordingSessionLogEventWithError:(id)a3;
- (void)assignAccessoryConnectionInfoUsingMessagePayload:(id)a3;
- (void)bulkSendSessionReader:(id)a3 didReadFragment:(id)a4;
- (void)clipManagerDidStartUpCloudZone:(id)a3;
- (void)clipManagerDidStop:(id)a3;
- (void)dealloc;
- (void)handleCameraSettingsDidChangeNotification:(id)a3;
- (void)handleStartRecordingSessionRequest:(id)a3;
- (void)handleStopRecordingSessionRequest:(id)a3;
- (void)recordingSettingsControlDidConfigure:(id)a3;
- (void)residentMeshDidUpdate:(id)a3 activeRecordingSessionCameraUUIDs:(id)a4;
- (void)session:(id)a3 didEndWithError:(id)a4;
- (void)shutDown;
- (void)start;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDCameraRecordingManager

- (HMDCameraProfile)camera
{
  WeakRetained = objc_loadWeakRetained(&self->_camera);

  return WeakRetained;
}

- (HMDHAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (BOOL)supportsDeviceWithCapabilities:(id)a3
{
  v3 = a3;
  if ([v3 supportsCameraRecording] && objc_msgSend(v3, "supportsFaceClassification"))
  {
    v4 = [v3 supportsCameraPackageDetection];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)handleCameraSettingsDidChangeNotification:(id)a3
{
  v4 = [(HMDCameraRecordingManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HMDCameraRecordingManager_handleCameraSettingsDidChangeNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v4, block);
}

void __71__HMDCameraRecordingManager_handleCameraSettingsDidChangeNotification___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) didShutDown])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v5;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Ignoring handleCameraSettingsDidChangeNotification: because recording manager was shut down", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    v6 = [*(a1 + 32) camera];
    v7 = [v6 currentSettings];
    [v7 currentAccessMode];

    if (HMIsRecordingAllowedForCameraAccessMode())
    {
      if ([*(a1 + 32) isMotionActive])
      {
        [*(a1 + 32) _resetRetryContextWithReason:@"Settings changed to allow recording"];
        v8 = objc_autoreleasePoolPush();
        v9 = *(a1 + 32);
        v10 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = HMFGetLogIdentifier();
          v18 = 138543362;
          v19 = v11;
          _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Motion is active and settings changed to allow recording, attempting to coordinate a recording session", &v18, 0xCu);
        }

        objc_autoreleasePoolPop(v8);
        [*(a1 + 32) _coordinateRecordingSessionForTrigger:0];
      }
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 32);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v16 = HMCameraAccessModeAsString();
        v18 = 138543618;
        v19 = v15;
        v20 = 2112;
        v21 = v16;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Closing current session because current access mode is: %@", &v18, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      [*(a1 + 32) _closeCurrentSessionsWithReason:3];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)a3 didEndWithError:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  if ([(HMDCameraRecordingManager *)self didShutDown])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Ignoring closeSession:withError: delegate callback because recording manager was shut down", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v13 = [(HMDCameraRecordingManager *)self currentRecordingSession];

    if (v13 == v6)
    {
      v14 = [(HMDCameraRecordingManager *)self _closeEventReasonForRecordingSessionError:v7];
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v23 = 138543618;
        v24 = v18;
        v25 = 1024;
        v26 = v14;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Closing current session with reason: %d", &v23, 0x12u);
      }

      objc_autoreleasePoolPop(v15);
      [(HMDCameraRecordingManager *)v16 _closeCurrentSessionsWithReason:v14 error:v7];
    }

    v19 = [(HMDCameraRecordingManager *)self activeRecordingSessions];
    [v19 removeObject:v6];

    v20 = [(HMDCameraRecordingManager *)self cameraLoadBalancer];
    v21 = [(HMDCameraRecordingManager *)self cameraUUID];
    [v20 recordingDidEndForCameraWithUUID:v21];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  v2 = [(HMDCameraRecordingManager *)self camera];
  v3 = [v2 logIdentifier];

  return v3;
}

- (void)bulkSendSessionReader:(id)a3 didReadFragment:(id)a4
{
  v5 = a4;
  v6 = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(HMDCameraRecordingManager *)self recordingSessionLogEvent];
  [v7 setDidReadFirstFragment:1];

  v8 = [(HMDCameraRecordingManager *)self currentRecordingSession];
  [v8 handleFragment:v5];
}

- (void)_resetCurrentRecordingSession:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraRecordingManager *)self currentRecordingSession];

  if (v6)
  {
    v7 = [(HMDCameraRecordingManager *)self currentRecordingSession];
    [(HMDCameraRecordingManager *)self setCurrentRecordingSession:0];
    [v7 handleNoMoreFragmentsAvailable];
    v8 = [v7 identifier];
    v9 = [(HMDCameraRecordingManager *)self isMotionActive];
    if (v4)
    {
      v10 = v9;
      if ([v4 code] != 14)
      {
        if ([v4 code] == 21)
        {
          v11 = [(HMDCameraRecordingManager *)self recordingSettingsControl];
          [v11 handleAccessoryIsNotConfiguredError];
LABEL_7:

          goto LABEL_8;
        }

        if (v10)
        {
          v18 = objc_autoreleasePoolPush();
          v19 = self;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = HMFGetLogIdentifier();
            [(HMDCameraRecordingManager *)v19 isMotionActive];
            v22 = HMFBooleanToString();
            *buf = 138544130;
            v33 = v21;
            v34 = 2112;
            v35 = v8;
            v36 = 2112;
            v37 = v22;
            v38 = 2112;
            v39 = v4;
            _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Retrying session with identifier: %@ because motion active: %@, error: %@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v18);
          v23 = [(HMDCameraRecordingManager *)v19 sessionRetryContext];

          if (!v23)
          {
            v24 = objc_autoreleasePoolPush();
            v25 = v19;
            v26 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              v27 = HMFGetLogIdentifier();
              *buf = 138543362;
              v33 = v27;
              _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Creating session retry context", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v24);
            v28 = [(HMDCameraRecordingManager *)v25 dependencyFactory];
            v29 = [(HMDCameraRecordingManager *)v25 workQueue];
            v30 = [v7 homePresenceByPairingIdentity];
            v31 = [v28 createRecordingSessionRetryContextWithWorkQueue:v29 homePresenceByPairingIdentity:v30];
            [(HMDCameraRecordingManager *)v25 setSessionRetryContext:v31];
          }

          [(HMDCameraRecordingManager *)v19 _startSessionRetryTimer];
          goto LABEL_11;
        }
      }

LABEL_8:
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        [(HMDCameraRecordingManager *)v13 isMotionActive];
        v16 = HMFBooleanToString();
        *buf = 138544130;
        v33 = v15;
        v34 = 2112;
        v35 = v8;
        v36 = 2112;
        v37 = v16;
        v38 = 2112;
        v39 = v4;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Not retrying session with identifier: %@ because motion active: %@, error: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v12);
LABEL_11:

      goto LABEL_12;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Session with identifier: %@ succeeded", v8];
    [(HMDCameraRecordingManager *)self _resetRetryContextWithReason:v11];
    goto LABEL_7;
  }

LABEL_12:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_startSessionRetryTimer
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraRecordingManager *)self sessionRetryTimer];

  if (v4)
  {
    _HMFPreconditionFailure();
  }

  v5 = [(HMDCameraRecordingManager *)self sessionRetryContext];
  [v5 retryInterval];
  v7 = v6;

  v8 = [(HMDCameraRecordingManager *)self sessionRetryContext];
  [v8 computeNextRetryInterval];

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v20 = 138543618;
    v21 = v12;
    v22 = 2048;
    v23 = v7;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Starting session retry timer with interval: %f", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [(HMDCameraRecordingManager *)v10 dependencyFactory];
  v14 = [v13 createTimerWithTimeInterval:v7];
  [(HMDCameraRecordingManager *)v10 setSessionRetryTimer:v14];

  v15 = [(HMDCameraRecordingManager *)v10 sessionRetryTimer];
  [v15 setDelegate:v10];

  v16 = [(HMDCameraRecordingManager *)v10 workQueue];
  v17 = [(HMDCameraRecordingManager *)v10 sessionRetryTimer];
  [v17 setDelegateQueue:v16];

  v18 = [(HMDCameraRecordingManager *)v10 sessionRetryTimer];
  [v18 resume];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_resetRetryContextWithReason:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraRecordingManager *)self sessionRetryContext];

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Resetting session retry context with reason: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDCameraRecordingManager *)v8 setSessionRetryTimer:0];
    [(HMDCameraRecordingManager *)v8 setSessionRetryContext:0];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (unsigned)_closeEventReasonForRecordingSessionError:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if (v4)
  {
    if ([v4 code] == 1)
    {
      v6 = 8;
    }

    else
    {
      v6 = 5;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)timerDidFire:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraRecordingManager *)self sessionRetryTimer];

  if (v6 == v4)
  {
    [(HMDCameraRecordingManager *)self setSessionRetryTimer:0];
    if ([(HMDCameraRecordingManager *)self isMotionActive])
    {
      v7 = objc_autoreleasePoolPush();
      v8 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v14 = 138543362;
        v15 = v10;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Starting recording session after session retry timer has expired", &v14, 0xCu);
      }

      objc_autoreleasePoolPop(v7);
      v11 = [(HMDCameraRecordingManager *)v8 sessionRetryContext];
      v12 = [v11 homePresenceByPairingIdentity];
      [(HMDCameraRecordingManager *)v8 _prepareRecordingSessionForTrigger:0 homePresenceByPairingIdentity:v12 reason:@"Retry timer expired"];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_startReadingFromBulkSendSession:(id)a3
{
  v26 = a3;
  v4 = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(HMDCameraRecordingManager *)self dependencyFactory];
  v6 = [v5 preferences];
  v7 = [v6 preferenceForKey:@"bulkSendSessionReadTimeoutFactor"];
  v8 = [v7 numberValue];

  v9 = [v8 integerValue];
  if (v9 <= 0)
  {
    v19 = _HMFPreconditionFailureWithFormat();
    [(HMDCameraRecordingManager *)v19 _startRecordingSessionForTrigger:v20 homePresenceByPairingIdentity:v21 reason:v22 generalConfiguration:v23 completionCallback:v24, v25];
  }

  else
  {
    v10 = [(HMDCameraRecordingManager *)self currentRecordingSession];
    [v10 configuredFragmentDuration];
    v12 = v11 * v9;

    v13 = [(HMDCameraRecordingManager *)self dependencyFactory];
    v14 = [(HMDCameraRecordingManager *)self workQueue];
    v15 = [(HMDCameraRecordingManager *)self logIdentifier];
    v16 = [v13 createBulkSendSessionReaderWithWorkQueue:v14 session:v26 readTimeout:v15 logIdentifier:v12];
    [(HMDCameraRecordingManager *)self setCurrentBulkSendSessionReader:v16];

    v17 = [(HMDCameraRecordingManager *)self currentBulkSendSessionReader];
    [v17 setDelegate:self];

    v18 = [(HMDCameraRecordingManager *)self currentBulkSendSessionReader];
    [v18 start];
  }
}

- (void)_startRecordingSessionForTrigger:(unint64_t)a3 homePresenceByPairingIdentity:(id)a4 reason:(id)a5 generalConfiguration:(id)a6 completionCallback:(id)a7
{
  v62 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(v16);

  v17 = objc_autoreleasePoolPush();
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543618;
    v59 = v20;
    v60 = 2112;
    v61 = v13;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Starting recording session with reason: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  v21 = [(HMDCameraRecordingManager *)v18 sessionRetryTimer];

  if (v21)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v18;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [(HMDCameraRecordingManager *)v23 sessionRetryTimer];
      [v26 timeInterval];
      *buf = 138543618;
      v59 = v25;
      v60 = 2048;
      v61 = v27;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Waiting for retry timer with duration: %f to expire", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v15[2](v15, 0);
    goto LABEL_16;
  }

  v28 = [(HMDCameraRecordingManager *)v18 cameraLoadBalancer];
  v29 = [(HMDCameraRecordingManager *)v18 cameraUUID];
  v30 = [v28 isReadyToRecordForCameraWithUUID:v29];

  if ((v30 & 1) == 0)
  {
    v38 = objc_autoreleasePoolPush();
    v39 = v18;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543362;
      v59 = v41;
      _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_ERROR, "%{public}@Unable to start recording session, no backing store available", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v38);
    v36 = MEMORY[0x277CCA9B8];
    v37 = 3302;
    goto LABEL_15;
  }

  v31 = [(HMDCameraRecordingManager *)v18 currentBulkSendSessionReader];

  if (v31)
  {
    v32 = objc_autoreleasePoolPush();
    v33 = v18;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543362;
      v59 = v35;
      _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@A bulk send session is already opened", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v32);
    v36 = MEMORY[0x277CCA9B8];
    v37 = 3303;
LABEL_15:
    v42 = [v36 hmInternalErrorWithCode:v37];
    (v15)[2](v15, v42);

    goto LABEL_16;
  }

  v44 = [(HMDCameraRecordingManager *)v18 bulkSendSessionInitiator];
  v45 = [v44 isSessionOpenInProgress];

  v46 = objc_autoreleasePoolPush();
  v47 = v18;
  v48 = HMFGetOSLogHandle();
  v49 = os_log_type_enabled(v48, OS_LOG_TYPE_INFO);
  if (v45)
  {
    if (v49)
    {
      v50 = HMFGetLogIdentifier();
      *buf = 138543362;
      v59 = v50;
      _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_INFO, "%{public}@A bulk send session open is already in progress", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v46);
    v36 = MEMORY[0x277CCA9B8];
    v37 = 3304;
    goto LABEL_15;
  }

  if (v49)
  {
    v51 = HMFGetLogIdentifier();
    *buf = 138543362;
    v59 = v51;
    _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_INFO, "%{public}@Opening new bulk send session", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v46);
  v52 = [(HMDCameraRecordingManager *)v47 bulkSendSessionInitiator];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __139__HMDCameraRecordingManager__startRecordingSessionForTrigger_homePresenceByPairingIdentity_reason_generalConfiguration_completionCallback___block_invoke;
  v53[3] = &unk_279720B08;
  v53[4] = v47;
  v56 = v15;
  v54 = v14;
  v55 = v12;
  v57 = a3;
  [v52 openNewSessionWithCallback:v53];

LABEL_16:
  v43 = *MEMORY[0x277D85DE8];
}

void __139__HMDCameraRecordingManager__startRecordingSessionForTrigger_homePresenceByPairingIdentity_reason_generalConfiguration_completionCallback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v5)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v5 session];
      v28 = 138543618;
      v29 = v12;
      v30 = 2112;
      v31 = v13;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Opened bulk send session: %@", &v28, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v14 = [*(a1 + 32) _createRecordingSessionWithGeneralConfiguration:*(a1 + 40) homePresenceByPairingIdentity:*(a1 + 48)];
    if (v14)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = *(a1 + 32);
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v28 = 138543618;
        v29 = v18;
        v30 = 2112;
        v31 = v14;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Created recording session: %@", &v28, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      [*(a1 + 32) setCurrentRecordingSession:v14];
      v19 = [*(a1 + 32) activeRecordingSessions];
      [v19 addObject:v14];

      [*(a1 + 32) _configureRecordingSession:v14 withTrigger:*(a1 + 64)];
      v20 = *(a1 + 32);
      v21 = [v5 session];
      [v20 _startReadingFromBulkSendSession:v21];

      v22 = [*(a1 + 32) cameraLoadBalancer];
      v23 = [*(a1 + 32) cameraUUID];
      [v22 recordingDidStartForCameraWithUUID:v23];

      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v25 = *(a1 + 56);
      v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
      (*(v25 + 16))(v25, v26);
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v28 = 138543618;
      v29 = v24;
      v30 = 2112;
      v31 = v6;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to open bulk send session: %@", &v28, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    (*(*(a1 + 56) + 16))();
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_prepareRecordingSessionForTrigger:(unint64_t)a3 homePresenceByPairingIdentity:(id)a4 reason:(id)a5 completionCallback:(id)a6
{
  v43 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543618;
    v40 = v16;
    v41 = 2112;
    v42 = v11;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Configuring recording session with reason: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  v17 = [HMDCameraRecordingSessionLogEvent alloc];
  v18 = [(HMDCameraRecordingManager *)v14 accessory];
  v19 = [v18 identifier];
  v20 = [(HMDCameraRecordingSessionLogEvent *)v17 initWithAccessoryIdentifier:v19];
  [(HMDCameraRecordingManager *)v14 setRecordingSessionLogEvent:v20];

  v21 = [(HMDCameraRecordingManager *)v14 sessionRetryContext];

  if (v21)
  {
    v22 = [(HMDCameraRecordingManager *)v14 sessionRetryContext];
    v23 = [v22 retryCount];
    v24 = [(HMDCameraRecordingManager *)v14 recordingSessionLogEvent];
    [v24 setRetryCount:v23];
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __120__HMDCameraRecordingManager__prepareRecordingSessionForTrigger_homePresenceByPairingIdentity_reason_completionCallback___block_invoke;
  aBlock[3] = &unk_279733F30;
  aBlock[4] = v14;
  v38 = v12;
  v25 = v12;
  v26 = _Block_copy(aBlock);
  v27 = [(HMDCameraRecordingManager *)v14 recordingSettingsControl];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __120__HMDCameraRecordingManager__prepareRecordingSessionForTrigger_homePresenceByPairingIdentity_reason_completionCallback___block_invoke_2;
  v32[3] = &unk_279720AE0;
  v35 = v26;
  v36 = a3;
  v32[4] = v14;
  v33 = v10;
  v34 = v11;
  v28 = v11;
  v29 = v10;
  v30 = v26;
  [v27 configureCameraRecordingSettingsWithCompletion:v32];

  v31 = *MEMORY[0x277D85DE8];
}

void __120__HMDCameraRecordingManager__prepareRecordingSessionForTrigger_homePresenceByPairingIdentity_reason_completionCallback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [*(a1 + 32) _submitRecordingSessionLogEventWithError:v3];
  }

  (*(*(a1 + 40) + 16))();
}

void __120__HMDCameraRecordingManager__prepareRecordingSessionForTrigger_homePresenceByPairingIdentity_reason_completionCallback___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [*(a1 + 32) _startRecordingSessionForTrigger:*(a1 + 64) homePresenceByPairingIdentity:*(a1 + 40) reason:*(a1 + 48) generalConfiguration:v5 completionCallback:*(a1 + 56)];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to configure camera recording settings: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    (*(*(a1 + 56) + 16))();
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_prepareRecordingSessionForTrigger:(unint64_t)a3 homePresenceByPairingIdentity:(id)a4 reason:(id)a5
{
  v8 = a5;
  v10 = a4;
  v9 = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(v9);

  [(HMDCameraRecordingManager *)self _prepareRecordingSessionForTrigger:a3 homePresenceByPairingIdentity:v10 reason:v8 completionCallback:&__block_literal_global_1308];
}

- (void)_submitRecordingSessionLogEventWithError:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingManager *)self recordingSessionLogEvent];
  if (v5)
  {
    v6 = [(HMDCameraRecordingManager *)self logEventSubmitter];
    [v6 submitLogEvent:v5 error:v4];

    [(HMDCameraRecordingManager *)self setRecordingSessionLogEvent:0];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@There is no recording session log event to submit.", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleStopRecordingSessionRequest:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 shortDescription];
    v18 = 138543618;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Received message to stop recording session: %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMDCameraRecordingManager *)v7 currentRecordingSession];

  if (v11)
  {
    [(HMDCameraRecordingManager *)v7 _closeCurrentSessionsWithReason:0];
    [v4 respondWithSuccess];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v7;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Session not in progress", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    [v4 respondWithError:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)handleStartRecordingSessionRequest:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 shortDescription];
    *buf = 138543618;
    v32 = v9;
    v33 = 2112;
    v34 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Received message to handle recording session: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [v4 messagePayload];
  v12 = [v11 hmf_dictionaryForKey:@"HMDCameraRecordingHomePresenceByPairingIdentity"];

  if (v12)
  {
    v13 = [v4 messagePayload];
    [(HMDCameraRecordingManager *)v7 assignAccessoryConnectionInfoUsingMessagePayload:v13];

    v14 = [v4 messagePayload];
    v15 = [v14 hmf_numberForKey:@"notificationTriggerType"];

    if (v15)
    {
      [(HMDCameraRecordingManager *)v7 _resetRetryContextWithReason:@"Received recording session trigger from primary resident"];
      v16 = [v15 integerValue];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __64__HMDCameraRecordingManager_handleStartRecordingSessionRequest___block_invoke;
      v29[3] = &unk_2797359D8;
      v30 = v4;
      [(HMDCameraRecordingManager *)v7 _prepareRecordingSessionForTrigger:v16 homePresenceByPairingIdentity:v12 reason:@"request from primary resident" completionCallback:v29];
      v17 = v30;
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = v7;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        v27 = [v4 messagePayload];
        *buf = 138543618;
        v32 = v26;
        v33 = 2112;
        v34 = v27;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Could not find trigger in message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      [v4 respondWithError:v17];
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v7;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [v4 messagePayload];
      *buf = 138543618;
      v32 = v21;
      v33 = 2112;
      v34 = v22;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Could not find home presence by pairing identity in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [v4 respondWithError:v15];
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __64__HMDCameraRecordingManager_handleStartRecordingSessionRequest___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 responseHandler];
  v4[2](v4, v3, 0);
}

- (void)assignAccessoryConnectionInfoUsingMessagePayload:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 hmf_dictionaryForKey:@"HMDCameraRecordingAccessorySocketInfo"];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CFEC48]) initWithDictionary:v5];
    if (v6)
    {
      v7 = [v4 hmf_dictionaryForKey:@"HMDCameraRecordingAccessoryBonjourDeviceInfo"];
      v8 = objc_autoreleasePoolPush();
      v9 = self;
      v10 = HMFGetOSLogHandle();
      v11 = v10;
      if (v7)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v12 = HMFGetLogIdentifier();
          v24 = 138543362;
          v25 = v12;
          _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Assigning connection info to accessory", &v24, 0xCu);
        }

        objc_autoreleasePoolPop(v8);
        v13 = [(HMDCameraRecordingManager *)v9 accessory];
        [v13 assignBonjourDeviceInfo:v7 socketInfo:v6];
      }

      else
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v22 = HMFGetLogIdentifier();
          v24 = 138543362;
          v25 = v22;
          _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@No bonjour device info received for start recording session request", &v24, 0xCu);
        }

        objc_autoreleasePoolPop(v8);
      }
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      v19 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        v24 = 138543618;
        v25 = v21;
        v26 = 2112;
        v27 = v5;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to create HAPSocketInfo for start recording request with dictionary: %@", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@No socket info received for start recording session request", &v24, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_configureRecordingSession:(id)a3 withTrigger:(unint64_t)a4
{
  v14 = a3;
  v6 = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(v6);

  [v14 setDelegate:self];
  [v14 configure];
  v7 = [v14 timelineManager];
  v8 = [v7 creationDateForFragmentAtTimeOffset:0.0];

  if (a4 != 2)
  {
    if (a4 == 1)
    {
      v13 = [v14 timelineManager];
      [v13 handleDoorbellDidActivateAtDate:v8];
      goto LABEL_6;
    }

    if (a4)
    {
      goto LABEL_7;
    }
  }

  v9 = [v14 timelineManager];
  [v9 handleMotionActive:1 didChangeAtDate:v8];

  v10 = [v14 timelineManager];
  v11 = [(HMDCameraRecordingManager *)self isMotionActive];
  v12 = [MEMORY[0x277CBEAA8] date];
  [v10 handleMotionActive:v11 didChangeAtDate:v12];

  v13 = [(HMDCameraRecordingManager *)self currentRecordingSession];
  [v13 handleMotionActive:{-[HMDCameraRecordingManager isMotionActive](self, "isMotionActive")}];
LABEL_6:

LABEL_7:
}

- (id)_createRecordingSessionWithGeneralConfiguration:(id)a3 homePresenceByPairingIdentity:(id)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(HMDCameraRecordingManager *)self camera];
  v10 = [v9 hapAccessory];
  v11 = [v10 home];
  v12 = [v9 clipManager];
  v13 = [v12 localZone];

  if (v9 && v10 && v11 && v13)
  {
    v14 = [v6 mediaContainerConfigurations];
    v15 = [v14 firstObject];
    [v15 parameters];
    v16 = v41 = v7;
    v17 = [v16 fragmentLength];
    [v17 doubleValue];
    v19 = v18 / 1000.0;

    v20 = [v6 prebufferLength];
    [v20 doubleValue];
    v22 = v21;

    v40 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v22 / -1000.0];
    v23 = [(HMDCameraRecordingManager *)self dependencyFactory];
    v24 = [(HMDCameraRecordingManager *)self workQueue];
    v25 = [v9 uniqueIdentifier];
    [v25 UUIDString];
    v26 = v42 = v6;
    [v23 createTimelineManagerWithWorkQueue:v24 fragmentDuration:v40 fragmentCreationReferenceDate:v26 logIdentifier:v19];
    v27 = v13;
    v29 = v28 = v11;

    v7 = v41;
    v30 = [(HMDCameraRecordingManager *)self dependencyFactory];
    v31 = [(HMDCameraRecordingManager *)self workQueue];
    v32 = [v30 createRecordingSessionWithWorkQueue:v31 camera:v9 hapAccessory:v10 home:v28 localZone:v27 configuredFragmentDuration:v29 timelineManager:v19 homePresenceByPairingIdentity:v41];

    v6 = v42;
    v11 = v28;
    v13 = v27;
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    v34 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v37 = v36 = v7;
      *buf = 138544386;
      v44 = v37;
      v45 = 2112;
      v46 = v9;
      v47 = 2112;
      v48 = v10;
      v49 = 2112;
      v50 = v11;
      v51 = 2112;
      v52 = v13;
      _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@Cannot start recording session because camera=%@ accessory=%@ home=%@ localZone=%@", buf, 0x34u);

      v7 = v36;
    }

    objc_autoreleasePoolPop(v33);
    v32 = 0;
  }

  v38 = *MEMORY[0x277D85DE8];

  return v32;
}

- (void)_submitLoadBalancingEventWithDecision:(id)a3 numberOfRetries:(unint64_t)a4
{
  v6 = a3;
  v36 = [v6 analysisNode];
  v30 = [HMDCameraRecordingLoadBalancerLogEvent alloc];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "numberOfAvailableDevices")}];
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v34 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "totalNumberOfJobSlots")}];
  v8 = MEMORY[0x277CCABB0];
  v9 = [v6 remainingNumberOfJobSlots];

  v10 = [v8 numberWithInteger:v9];
  v11 = [v36 residentDevice];
  v31 = [v11 device];
  v29 = [v31 productInfo];
  [v29 productClass];
  v33 = HMFProductClassToString();
  v12 = MEMORY[0x277CCABB0];
  v28 = [v36 metrics];
  v13 = [v28 numberOfActiveRecordingSessions];
  v27 = [v36 metrics];
  v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(v27, "numberOfPendingRecordingSessions") + v13}];
  v15 = MEMORY[0x277CCABB0];
  v16 = [v36 metrics];
  v17 = [v15 numberWithInteger:{objc_msgSend(v16, "systemResourceUsageLevel")}];
  v18 = [v36 metrics];
  v19 = [v18 maxNumberOfAnalyzers];
  v20 = [v36 metrics];
  v32 = v7;
  if ([v20 hasActiveSessionWithCamera])
  {
    LOBYTE(v25) = 1;
    v21 = [(HMDCameraRecordingLoadBalancerLogEvent *)v30 initWithNumberOfResidents:v7 numberOfRetries:v35 totalNumberOfJobSlots:v34 remainingNumberOfJobSlots:v10 selectedResidentDeviceType:v33 selectedResidentNumberOfActiveStreams:v14 selectedResidentSystemResourceUsageLevel:v17 selectedResidentJobSlots:v19 selectedResidentPartialJobSlots:0 selectedResidentHasActiveSessionWithCamera:v25];
  }

  else
  {
    [v36 metrics];
    v26 = v11;
    v23 = v22 = self;
    LOBYTE(v25) = [v23 hasPendingSessionWithCamera];
    v21 = [(HMDCameraRecordingLoadBalancerLogEvent *)v30 initWithNumberOfResidents:v7 numberOfRetries:v35 totalNumberOfJobSlots:v34 remainingNumberOfJobSlots:v10 selectedResidentDeviceType:v33 selectedResidentNumberOfActiveStreams:v14 selectedResidentSystemResourceUsageLevel:v17 selectedResidentJobSlots:v19 selectedResidentPartialJobSlots:0 selectedResidentHasActiveSessionWithCamera:v25];

    self = v22;
    v11 = v26;
  }

  v24 = [(HMDCameraRecordingManager *)self logEventSubmitter];
  [v24 submitLogEvent:v21];
}

- (void)_forwardRecordingSessionForTrigger:(unint64_t)a3 withLoadBalancerDecision:(id)a4 deviceFilter:(id)a5 sessionCoordinationLogEvent:(id)a6 retryAttemptNumber:(int64_t)a7
{
  v59 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(v15);

  if (a7 >= 4)
  {
    _HMFPreconditionFailure();
  }

  [v14 setRetryCount:a7];
  v44 = [v12 analysisNode];
  v43 = [v44 residentDevice];
  v16 = [v43 device];
  v42 = a3;
  if ([v16 isCurrentDevice])
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v54 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@We are the best device for recording session, starting locally", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    [v14 setUsingRemoteDeviceAnalysisNode:0];
    v21 = [(HMDCameraRecordingManager *)v18 cameraLoadBalancer];
    [v21 handleProcessedDecision:v12];

    v22 = [(HMDCameraRecordingManager *)v18 homePresenceByPairingIdentity];
    [(HMDCameraRecordingManager *)v18 _prepareRecordingSessionForTrigger:v42 homePresenceByPairingIdentity:v22 reason:@"current device picked itself"];

    [(HMDCameraRecordingManager *)v18 _submitLoadBalancingEventWithDecision:v12 numberOfRetries:a7];
    v23 = [(HMDCameraRecordingManager *)v18 logEventSubmitter];
    [(HMDRemoteDeviceMessageDestination *)v23 submitLogEvent:v14];
    v24 = v43;
  }

  else
  {
    v40 = v13;
    [v14 setUsingRemoteDeviceAnalysisNode:1];
    v25 = [HMDRemoteDeviceMessageDestination alloc];
    v26 = [(HMDCameraRecordingManager *)self messageTargetUUID];
    v23 = [(HMDRemoteDeviceMessageDestination *)v25 initWithTarget:v26 device:v16];

    v39 = [(HMDCameraRecordingManager *)self messagePayloadForStartRecordingSessionWithTriggerType:a3];
    v41 = [[HMDRemoteMessage alloc] initWithName:@"kStartRecordingSessionRequestKey" qualityOfService:25 destination:v23 payload:v39 type:0 timeout:1 secure:120.0];
    v27 = objc_autoreleasePoolPush();
    v28 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = HMFGetLogIdentifier();
      [v16 shortDescription];
      v31 = v38 = v12;
      v32 = [(HMFObject *)v41 shortDescription];
      *buf = 138543874;
      v54 = v30;
      v55 = 2114;
      v56 = v31;
      v57 = 2114;
      v58 = v32;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@Forwarding recording session to %{public}@ via message: %{public}@", buf, 0x20u);

      v12 = v38;
    }

    objc_autoreleasePoolPop(v27);
    v33 = [(HMDCameraRecordingManager *)v28 dependencyFactory];
    v34 = [(HMDCameraRecordingManager *)v28 logIdentifier];
    v35 = [v33 createLoadBalancingAttemptWithLocalResponseTimeout:v34 logIdentifier:2.0];

    v36 = [(HMDCameraRecordingManager *)v28 msgDispatcher];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __149__HMDCameraRecordingManager__forwardRecordingSessionForTrigger_withLoadBalancerDecision_deviceFilter_sessionCoordinationLogEvent_retryAttemptNumber___block_invoke;
    v45[3] = &unk_279720AB8;
    v45[4] = v28;
    v46 = v12;
    v47 = v16;
    v48 = v14;
    v51 = a7;
    v24 = v43;
    v49 = v43;
    v13 = v40;
    v50 = v40;
    v52 = v42;
    [v35 startWithMessage:v41 messageDispatcher:v36 completion:v45];
  }

  v37 = *MEMORY[0x277D85DE8];
}

void __149__HMDCameraRecordingManager__forwardRecordingSessionForTrigger_withLoadBalancerDecision_deviceFilter_sessionCoordinationLogEvent_retryAttemptNumber___block_invoke(uint64_t a1, void *a2)
{
  v81 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) cameraLoadBalancer];
  [v4 handleProcessedDecision:*(a1 + 40)];

  if (v3)
  {
    if ([HMDCameraRecordingSessionLogEvent isRecordingSessionAlreadyInProgressError:v3])
    {
      v5 = objc_autoreleasePoolPush();
      v6 = *(a1 + 32);
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        v9 = [*(a1 + 48) shortDescription];
        *buf = 138543874;
        v76 = v8;
        v77 = 2114;
        v78 = v9;
        v79 = 2112;
        v80 = v3;
        v10 = "%{public}@Received error that a session is already in progress on device %{public}@: %@";
LABEL_11:
        _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, v10, buf, 0x20u);

        goto LABEL_12;
      }

      goto LABEL_12;
    }

    if ([v3 code] == 14)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = *(a1 + 32);
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        v9 = [*(a1 + 48) shortDescription];
        *buf = 138543874;
        v76 = v8;
        v77 = 2114;
        v78 = v9;
        v79 = 2112;
        v80 = v3;
        v10 = "%{public}@Received error that accessory is already in a recording session from device %{public}@: %@";
        goto LABEL_11;
      }

LABEL_12:

      objc_autoreleasePoolPop(v5);
      v18 = [*(a1 + 32) logEventSubmitter];
      [v18 submitLogEvent:*(a1 + 56) error:v3];
LABEL_13:

      goto LABEL_14;
    }

    v20 = [v3 code];
    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 32);
    v23 = HMFGetOSLogHandle();
    v24 = v23;
    if (v20 == 21)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        v26 = [*(a1 + 48) shortDescription];
        *buf = 138543874;
        v76 = v25;
        v77 = 2114;
        v78 = v26;
        v79 = 2112;
        v80 = v3;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Received error that accessory is not configured from device %{public}@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v21);
      v27 = [*(a1 + 32) logEventSubmitter];
      [v27 submitLogEvent:*(a1 + 56) error:v3];

      v18 = [*(a1 + 32) workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __149__HMDCameraRecordingManager__forwardRecordingSessionForTrigger_withLoadBalancerDecision_deviceFilter_sessionCoordinationLogEvent_retryAttemptNumber___block_invoke_75;
      block[3] = &unk_279735D00;
      block[4] = *(a1 + 32);
      dispatch_async(v18, block);
      goto LABEL_13;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      v29 = [*(a1 + 48) shortDescription];
      *buf = 138543874;
      v76 = v28;
      v77 = 2114;
      v78 = v29;
      v79 = 2112;
      v80 = v3;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to forward recording session to device %{public}@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    v30 = [*(a1 + 32) logEventSubmitter];
    [v30 submitLogEvent:*(a1 + 56) error:v3];

    v31 = [*(a1 + 32) cameraLoadBalancer];
    [v31 handleRecordingSessionForwardingFailureForDecision:*(a1 + 40)];

    v32 = [HMDCameraRecordingSessionCoordinationLogEvent alloc];
    [*(a1 + 56) startTime];
    v18 = [(HMMLogEvent *)v32 initWithStartTime:?];
    v33 = [*(a1 + 32) camera];
    if (!v33)
    {
      v45 = objc_autoreleasePoolPush();
      v46 = *(a1 + 32);
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = HMFGetLogIdentifier();
        *buf = 138543362;
        v76 = v48;
        _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_ERROR, "%{public}@Camera reference is nil", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v45);
      v49 = [*(a1 + 32) logEventSubmitter];
      v50 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [v49 submitLogEvent:v18 error:v50];

      goto LABEL_36;
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __149__HMDCameraRecordingManager__forwardRecordingSessionForTrigger_withLoadBalancerDecision_deviceFilter_sessionCoordinationLogEvent_retryAttemptNumber___block_invoke_76;
    aBlock[3] = &unk_279720A68;
    v72 = *(a1 + 64);
    v73 = *(a1 + 72);
    v34 = _Block_copy(aBlock);
    v35 = [*(a1 + 32) cameraLoadBalancer];
    v36 = [v35 makeLoadBalancingDecisionForCamera:v33 deviceFilter:v34];

    if (*(a1 + 80) < 3)
    {
      v51 = [v36 analysisNode];

      if (v51)
      {
        v52 = [*(a1 + 32) workQueue];
        v65[0] = MEMORY[0x277D85DD0];
        v65[1] = 3221225472;
        v65[2] = __149__HMDCameraRecordingManager__forwardRecordingSessionForTrigger_withLoadBalancerDecision_deviceFilter_sessionCoordinationLogEvent_retryAttemptNumber___block_invoke_77;
        v65[3] = &unk_279720A90;
        v53 = *(a1 + 88);
        v65[4] = *(a1 + 32);
        v69 = v53;
        v66 = v36;
        v68 = v34;
        v54 = v18;
        v55 = *(a1 + 80);
        v67 = v54;
        v70 = v55;
        dispatch_async(v52, v65);

LABEL_35:
        v49 = v72;
LABEL_36:

        goto LABEL_13;
      }

      v64 = v36;
      v56 = objc_autoreleasePoolPush();
      v57 = *(a1 + 32);
      v58 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        v59 = HMFGetLogIdentifier();
        [*(a1 + 32) accessory];
        v60 = v63 = v18;
        *buf = 138543618;
        v76 = v59;
        v77 = 2112;
        v78 = v60;
        _os_log_impl(&dword_2531F8000, v58, OS_LOG_TYPE_ERROR, "%{public}@Exhausted devices, failed to start recording session for accessory %@", buf, 0x16u);

        v18 = v63;
      }

      objc_autoreleasePoolPop(v56);
      v42 = [*(a1 + 32) logEventSubmitter];
      v43 = MEMORY[0x277CCA9B8];
      v44 = 3301;
    }

    else
    {
      v64 = v36;
      v37 = objc_autoreleasePoolPush();
      v38 = *(a1 + 32);
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v40 = v62 = v18;
        v41 = [*(a1 + 32) accessory];
        *buf = 138543618;
        v76 = v40;
        v77 = 2112;
        v78 = v41;
        _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_ERROR, "%{public}@Reached retry limit, failed to start recording session for accessory %@", buf, 0x16u);

        v18 = v62;
      }

      objc_autoreleasePoolPop(v37);
      v42 = [*(a1 + 32) logEventSubmitter];
      v43 = MEMORY[0x277CCA9B8];
      v44 = 3300;
    }

    v61 = [v43 hmInternalErrorWithCode:v44];
    [v42 submitLogEvent:v18 error:v61];

    v36 = v64;
    goto LABEL_35;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = *(a1 + 32);
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [*(a1 + 48) shortDescription];
    *buf = 138543618;
    v76 = v14;
    v77 = 2114;
    v78 = v15;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Successfully forwarded recording session to %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v16 = [*(a1 + 32) logEventSubmitter];
  [v16 submitLogEvent:*(a1 + 56)];

  v17 = [*(a1 + 32) cameraLoadBalancer];
  [v17 handleRecordingSessionForwardingSuccessForDecision:*(a1 + 40)];

  [*(a1 + 32) _submitLoadBalancingEventWithDecision:*(a1 + 40) numberOfRetries:*(a1 + 80)];
LABEL_14:

  v19 = *MEMORY[0x277D85DE8];
}

void __149__HMDCameraRecordingManager__forwardRecordingSessionForTrigger_withLoadBalancerDecision_deviceFilter_sessionCoordinationLogEvent_retryAttemptNumber___block_invoke_75(uint64_t a1)
{
  v1 = [*(a1 + 32) recordingSettingsControl];
  [v1 handleAccessoryIsNotConfiguredError];
}

uint64_t __149__HMDCameraRecordingManager__forwardRecordingSessionForTrigger_withLoadBalancerDecision_deviceFilter_sessionCoordinationLogEvent_retryAttemptNumber___block_invoke_76(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isEqual:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = (*(*(a1 + 40) + 16))();
  }

  return v4;
}

- (id)messagePayloadForStartRecordingSessionWithTriggerType:(unint64_t)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v5 setObject:v6 forKeyedSubscript:@"notificationTriggerType"];

  v7 = [(HMDCameraRecordingManager *)self homePresenceByPairingIdentity];
  [v5 setObject:v7 forKeyedSubscript:@"HMDCameraRecordingHomePresenceByPairingIdentity"];

  v8 = [(HMDCameraRecordingManager *)self accessory];
  v9 = [v8 socketInfo];
  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v9 dictionaryRepresentation];
      v24 = 138543618;
      v25 = v13;
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Adding socket info to outgoing start recording message payload: %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = [v9 dictionaryRepresentation];
    [v5 setObject:v15 forKeyedSubscript:@"HMDCameraRecordingAccessorySocketInfo"];
  }

  v16 = [v8 bonjourDeviceInfo];
  if (v16)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v20;
      v26 = 2112;
      v27 = v16;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Adding bonjour device info to outgoing start recording message: %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    [v5 setObject:v16 forKeyedSubscript:@"HMDCameraRecordingAccessoryBonjourDeviceInfo"];
  }

  v21 = [v5 copy];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)homePresenceByPairingIdentity
{
  v3 = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraRecordingManager *)self accessory];
  v5 = [v4 home];
  v6 = [v5 presenceMonitor];
  v7 = [v6 currentHomePresence];
  v8 = [v7 serializedIdentifierDictionary];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = MEMORY[0x277CBEC10];
  }

  return v9;
}

- (void)_loadBalanceRecordingSessionForTrigger:(unint64_t)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(HMDCameraRecordingSessionCoordinationLogEvent);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__HMDCameraRecordingManager__loadBalanceRecordingSessionForTrigger___block_invoke;
  aBlock[3] = &unk_27972AE10;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  v7 = [(HMDCameraRecordingManager *)self camera];
  if (!v7)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [(HMDCameraRecordingManager *)v22 cameraUUID];
      *buf = 138543618;
      v57 = v24;
      v58 = 2112;
      v59 = v25;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Camera object with UUID:%@ is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v9 = [(HMDCameraRecordingManager *)v22 logEventSubmitter];
    v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [v9 submitLogEvent:v5 error:v26];
    goto LABEL_19;
  }

  v8 = [(HMDCameraRecordingManager *)self cameraLoadBalancer];
  v9 = [v8 makeLoadBalancingDecisionForCamera:v7 deviceFilter:v6];

  if (a3 == 2)
  {
    v10 = [v9 deviceWithSessionToHandOff];

    if (!v10)
    {
      v35 = objc_autoreleasePoolPush();
      v36 = self;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138543362;
        v57 = v38;
        _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Handoff condition not met, ignoring trigger", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v35);
      v39 = [(HMDCameraRecordingManager *)v36 logEventSubmitter];
      v40 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1057];
      [v39 submitLogEvent:v5 error:v40];

      v26 = [(HMDCameraRecordingManager *)v36 cameraLoadBalancer];
      [v26 handleProcessedDecision:v9];
LABEL_19:

      goto LABEL_20;
    }
  }

  v11 = [v9 deviceWithSessionToHandOff];

  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    self = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v14 = v49 = v5;
      [v9 deviceWithSessionToHandOff];
      v15 = v48 = v6;
      v16 = [v15 identifier];
      v17 = [v9 deviceUUID];
      *buf = 138543874;
      v57 = v14;
      v58 = 2112;
      v59 = v16;
      v60 = 2112;
      v61 = v17;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Handing off recording session from resident device: %@ to: %@", buf, 0x20u);

      v6 = v48;
      v5 = v49;
    }

    objc_autoreleasePoolPop(v12);
    v18 = [v9 deviceWithSessionToHandOff];
    v19 = [v18 isCurrentDevice];

    if (!v19)
    {
      v28 = [HMDRemoteDeviceMessageDestination alloc];
      v29 = [(HMDCameraRecordingManager *)self messageTargetUUID];
      v30 = [v9 deviceWithSessionToHandOff];
      v31 = [(HMDRemoteDeviceMessageDestination *)v28 initWithTarget:v29 device:v30];

      v32 = [HMDRemoteMessage alloc];
      v33 = [(HMDRemoteMessage *)v32 initWithName:@"kStopRecordingSessionRequestKey" qualityOfService:-1 destination:v31 payload:MEMORY[0x277CBEC10] type:0 timeout:1 secure:120.0];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __68__HMDCameraRecordingManager__loadBalanceRecordingSessionForTrigger___block_invoke_61;
      v50[3] = &unk_279721B78;
      v50[4] = self;
      v54 = a3;
      v9 = v9;
      v51 = v9;
      v53 = v6;
      v52 = v5;
      [(HMDRemoteMessage *)v33 setResponseHandler:v50];
      v34 = [(HMDCameraRecordingManager *)self msgDispatcher];
      [v34 sendMessage:v33];

      goto LABEL_20;
    }

    v20 = [(HMDCameraRecordingManager *)self currentRecordingSession];

    if (v20)
    {
      [(HMDCameraRecordingManager *)self _closeCurrentSessionsWithReason:0];
    }

    goto LABEL_14;
  }

  v27 = [v9 analysisNode];

  if (v27)
  {
LABEL_14:
    [(HMDCameraRecordingManager *)self _forwardRecordingSessionForTrigger:a3 withLoadBalancerDecision:v9 deviceFilter:v6 sessionCoordinationLogEvent:v5 retryAttemptNumber:0];
    goto LABEL_20;
  }

  v42 = objc_autoreleasePoolPush();
  v43 = self;
  v44 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
  {
    v45 = HMFGetLogIdentifier();
    *buf = 138543362;
    v57 = v45;
    _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_INFO, "%{public}@No device found for recording session, optimistically trying self", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v42);
  v46 = [(HMDCameraRecordingManager *)v43 logEventSubmitter];
  [v46 submitLogEvent:v5];

  v47 = [(HMDCameraRecordingManager *)v43 homePresenceByPairingIdentity];
  [(HMDCameraRecordingManager *)v43 _prepareRecordingSessionForTrigger:a3 homePresenceByPairingIdentity:v47 reason:@"primary resident picked itself"];

LABEL_20:
  v41 = *MEMORY[0x277D85DE8];
}

uint64_t __68__HMDCameraRecordingManager__loadBalanceRecordingSessionForTrigger___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) camera];
  v5 = [v4 currentSettings];
  v6 = [v5 activityZones];
  if ([v6 count])
  {
    v7 = [v3 capabilities];
    v8 = [v7 supportsCameraActivityZones];

    if (!v8)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v9 = [v4 hapAccessory];
  v10 = [v9 home];
  v11 = [v10 personManagerSettings];
  if ([v11 isFaceClassificationEnabled])
  {
    v12 = [v3 capabilities];
    v13 = [v12 supportsFaceClassification];

    if (!v13)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v14 = [v4 currentSettings];
  if (([v14 recordingEventTriggers] & 0x10) != 0)
  {
    v15 = [v3 capabilities];
    v16 = [v15 supportsCameraPackageDetection];

    if (!v16)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v17 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v18 = [v17 preferenceForKey:@"HMDCameraRecordingManagerExcludePrimaryResident"];
  v19 = [v18 BOOLValue];

  if (!v19 || ![v3 isCurrentDevice] || (objc_msgSend(*(a1 + 32), "accessory"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "home"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isCurrentDeviceConfirmedPrimaryResident"), v21, v20, !v22))
  {
    v29 = 1;
    goto LABEL_20;
  }

  v23 = objc_autoreleasePoolPush();
  v24 = *(a1 + 32);
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = HMFGetLogIdentifier();
    v27 = [v3 device];
    v28 = [v27 shortDescription];
    v32 = 138543618;
    v33 = v26;
    v34 = 2112;
    v35 = v28;
    _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Excluding current device from camera recording load balancing because it is the primary resident: %@", &v32, 0x16u);
  }

  objc_autoreleasePoolPop(v23);
LABEL_18:
  v29 = 0;
LABEL_20:

  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

void __68__HMDCameraRecordingManager__loadBalanceRecordingSessionForTrigger___block_invoke_61(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v11;
      v28 = 2112;
      v29 = v5;
      v12 = "%{public}@Recording session stop failed with error: %@, forwarding new session anyway";
      v13 = v10;
      v14 = OS_LOG_TYPE_DEFAULT;
      v15 = 22;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v13, v14, v12, buf, v15);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v27 = v11;
    v12 = "%{public}@Successfully stopped recording session for handoff, forwarding new session";
    v13 = v10;
    v14 = OS_LOG_TYPE_INFO;
    v15 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v16 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMDCameraRecordingManager__loadBalanceRecordingSessionForTrigger___block_invoke_62;
  block[3] = &unk_2797309E0;
  v25 = *(a1 + 64);
  v21 = *(a1 + 32);
  v17 = *(&v21 + 1);
  v18 = *(a1 + 56);
  *&v19 = *(a1 + 48);
  *(&v19 + 1) = v18;
  v23 = v21;
  v24 = v19;
  dispatch_async(v16, block);

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_coordinateRecordingSessionForTrigger:(unint64_t)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraRecordingManager *)self camera];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 hapAccessory];
    v9 = v8;
    if (!v8)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v40 = v22;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Cannot coordinate recording session because accessory reference is nil", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      goto LABEL_21;
    }

    v10 = [v8 home];
    v11 = v10;
    if (v10)
    {
      if ([v10 isCurrentDeviceConfirmedPrimaryResident])
      {
        v12 = [v7 currentSettings];
        [v12 currentAccessMode];

        if (HMIsRecordingAllowedForCameraAccessMode())
        {
          v13 = [(HMDCameraRecordingManager *)self recordingSettingsControl];
          v14 = [v13 isCameraConfiguredForRecording];

          if (v14)
          {
            [(HMDCameraRecordingManager *)self _loadBalanceRecordingSessionForTrigger:a3];
          }

          else
          {
            v33 = objc_autoreleasePoolPush();
            v34 = self;
            v35 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
            {
              v36 = HMFGetLogIdentifier();
              *buf = 138543362;
              v40 = v36;
              _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@Synchronizing settings with camera because settings have recording enabled, but camera is not configured for recording", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v33);
            v37 = [v9 cameraProfileSettingsManager];
            v38[0] = MEMORY[0x277D85DD0];
            v38[1] = 3221225472;
            v38[2] = __67__HMDCameraRecordingManager__coordinateRecordingSessionForTrigger___block_invoke;
            v38[3] = &unk_279735878;
            v38[4] = v34;
            v38[5] = a3;
            [v37 synchronizeSettingsToCameraWithCompletion:v38];
          }

          goto LABEL_20;
        }

        v23 = objc_autoreleasePoolPush();
        v24 = self;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v31 = HMFGetLogIdentifier();
          v32 = HMCameraAccessModeAsString();
          *buf = 138543618;
          v40 = v31;
          v41 = 2112;
          v42 = v32;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Current access mode does not allow recording: %@", buf, 0x16u);
        }

LABEL_19:

        objc_autoreleasePoolPop(v23);
LABEL_20:

LABEL_21:
        goto LABEL_22;
      }

      v23 = objc_autoreleasePoolPush();
      v24 = self;
      v25 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v40 = v26;
      v27 = "%{public}@Current device is not the primary resident, not coordinating recording session";
      v28 = v25;
      v29 = OS_LOG_TYPE_INFO;
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = self;
      v25 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v40 = v26;
      v27 = "%{public}@Cannot coordinate recording session because home reference is nil";
      v28 = v25;
      v29 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&dword_2531F8000, v28, v29, v27, buf, 0xCu);

    goto LABEL_19;
  }

  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543362;
    v40 = v18;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Cannot coordinate recording session because camera reference is nil", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v15);
LABEL_22:

  v30 = *MEMORY[0x277D85DE8];
}

void __67__HMDCameraRecordingManager__coordinateRecordingSessionForTrigger___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543618;
      v13 = v7;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to synchronize settings with camera while coordinating recording session: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v8 = [*(a1 + 32) workQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __67__HMDCameraRecordingManager__coordinateRecordingSessionForTrigger___block_invoke_54;
    v11[3] = &unk_279734BB8;
    v9 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v11[5] = v9;
    dispatch_async(v8, v11);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __67__HMDCameraRecordingManager__coordinateRecordingSessionForTrigger___block_invoke_54(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Successfully synchronized settings with camera while coordinating recording session", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _loadBalanceRecordingSessionForTrigger:*(a1 + 40)];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_clipManagerDidStartUpCloudZone
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  if ([(HMDCameraRecordingManager *)self didShutDown])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Ignoring clipManagerDidStartUpCloudZone because recording manager was shut down", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v8 = [(HMDCameraRecordingManager *)self cameraLoadBalancer];
    v9 = [(HMDCameraRecordingManager *)self cameraUUID];
    [v8 setReadyToRecord:1 forCameraWithUUID:v9];

    [(HMDCameraRecordingManager *)self _resetRetryContextWithReason:@"Clip manager started up cloud zone"];
    if ([(HMDCameraRecordingManager *)self isMotionActive])
    {
      v10 = objc_autoreleasePoolPush();
      v11 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v15 = 138543362;
        v16 = v13;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Clip manager started up cloud zone and motion is active, attempting to coordinate a recording session", &v15, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      [(HMDCameraRecordingManager *)v11 _coordinateRecordingSessionForTrigger:0];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_shutDown
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(HMDCameraRecordingManager *)self didShutDown])
  {
    _HMFPreconditionFailure();
  }

  v3 = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Shutting down", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [(HMDCameraRecordingManager *)v5 setDidShutDown:1];
  v8 = [(HMDCameraRecordingManager *)v5 cameraLoadBalancer];
  v9 = [(HMDCameraRecordingManager *)v5 cameraUUID];
  [v8 setReadyToRecord:0 forCameraWithUUID:v9];

  [(HMDCameraRecordingManager *)v5 _closeCurrentSessionsWithReason:3];
  v10 = [(HMDCameraRecordingManager *)v5 residentMesh];
  [v10 removeObserver:v5];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_start
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  if ([(HMDCameraRecordingManager *)self didShutDown])
  {
    _HMFPreconditionFailure();
  }

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v39 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Starting camera recording manager", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [(HMDCameraRecordingManager *)v5 accessory];
  v9 = [v8 home];

  if (v9)
  {
    v10 = [(HMDCameraRecordingManager *)v5 cameraLoadBalancer];
    v11 = [(HMDCameraRecordingManager *)v5 cameraUUID];
    [v10 setReadyToRecord:0 forCameraWithUUID:v11];

    v12 = [v9 residentDeviceManager];
    [v12 addDataSource:v5];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __35__HMDCameraRecordingManager__start__block_invoke;
    v35[3] = &unk_2797359D8;
    v35[4] = v5;
    [v12 confirmWithCompletionHandler:v35];
    v13 = [(HMDCameraRecordingManager *)v5 recordingSettingsControl];
    [v13 setDelegate:v5];

    v14 = [(HMDCameraRecordingManager *)v5 recordingSettingsControl];
    [v14 start];

    v15 = [(HMDCameraRecordingManager *)v5 bulkSendSessionInitiator];
    [v15 configure];

    v16 = [(HMDCameraRecordingManager *)v5 notificationTrigger];
    [v16 setDelegate:v5];

    v17 = [(HMDCameraRecordingManager *)v5 notificationTrigger];
    [v17 start];

    v18 = [(HMDCameraRecordingManager *)v5 residentMesh];
    [v18 addObserver:v5];

    v19 = [HMDUserMessagePolicy userMessagePolicyWithHome:v9 userPrivilege:0 remoteAccessRequired:1];
    v20 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
    [v20 setRoles:{objc_msgSend(v20, "roles") | 4}];
    v21 = [v20 copy];
    v22 = [(HMDCameraRecordingManager *)v5 camera];
    v23 = [(HMDCameraRecordingManager *)v5 msgDispatcher];
    v37[0] = v19;
    v37[1] = v21;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
    [v23 registerForMessage:@"kStartRecordingSessionRequestKey" receiver:v5 policies:v24 selector:sel_handleStartRecordingSessionRequest_];

    v25 = [(HMDCameraRecordingManager *)v5 msgDispatcher];
    v36[0] = v19;
    v36[1] = v21;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
    [v25 registerForMessage:@"kStopRecordingSessionRequestKey" receiver:v5 policies:v26 selector:sel_handleStopRecordingSessionRequest_];

    v27 = [(HMDCameraRecordingManager *)v5 notificationCenter];
    v28 = [v22 accessory];
    [v27 addObserver:v5 selector:sel_handleCameraSettingsDidChangeNotification_ name:@"HMDCameraProfileSettingsDidChangeNotification" object:v28];

    v29 = [v22 clipManager];
    LODWORD(v26) = [v29 hasStartedUpCloudZone];

    if (v26)
    {
      [(HMDCameraRecordingManager *)v5 _clipManagerDidStartUpCloudZone];
    }
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    v31 = v5;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v33;
      _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Not starting camera recording manager because home reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v30);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __35__HMDCameraRecordingManager__start__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = v3;
      v9 = "%{public}@Failed to confirm primary resident with error: %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v10, v11, v9, &v14, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v8;
    v9 = "%{public}@Successfully confirmed primary resident";
    v10 = v7;
    v11 = OS_LOG_TYPE_INFO;
    v12 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)recordingSettingsControlDidConfigure:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v22 = 138543362;
    v23 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Recording settings control did configure", &v22, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraRecordingManager *)v7 didShutDown];
  v11 = objc_autoreleasePoolPush();
  v12 = v7;
  v13 = HMFGetOSLogHandle();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (v10)
  {
    if (v14)
    {
      v15 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v15;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Ignoring recordingSettingsControlDidConfigure: because recording manager was shut down", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    if (v14)
    {
      v16 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v16;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Closing current session if one exists because recording settings have been configured", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    [(HMDCameraRecordingManager *)v12 _closeCurrentSessionsWithReason:0];
    if ([(HMDCameraRecordingManager *)v12 isMotionActive])
    {
      v17 = objc_autoreleasePoolPush();
      v18 = v12;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v22 = 138543362;
        v23 = v20;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Motion is active and camera did configure successfully, attempting to coordinate a recording session", &v22, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      [(HMDCameraRecordingManager *)v18 _coordinateRecordingSessionForTrigger:0];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)clipManagerDidStop:(id)a3
{
  v4 = [(HMDCameraRecordingManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HMDCameraRecordingManager_clipManagerDidStop___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v4, block);
}

void __48__HMDCameraRecordingManager_clipManagerDidStop___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) didShutDown])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v5;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Ignoring clipManagerDidStop: because recording manager was shut down", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    v6 = [*(a1 + 32) cameraLoadBalancer];
    v7 = [*(a1 + 32) cameraUUID];
    [v6 setReadyToRecord:0 forCameraWithUUID:v7];

    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Closing current session because clip manager became unavailable", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    [*(a1 + 32) _closeCurrentSessionsWithReason:3];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)clipManagerDidStartUpCloudZone:(id)a3
{
  v4 = [(HMDCameraRecordingManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HMDCameraRecordingManager_clipManagerDidStartUpCloudZone___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)residentMeshDidUpdate:(id)a3 activeRecordingSessionCameraUUIDs:(id)a4
{
  v5 = a4;
  v6 = [(HMDCameraRecordingManager *)self cameraUUID];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    v8 = [(HMDCameraRecordingManager *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __85__HMDCameraRecordingManager_residentMeshDidUpdate_activeRecordingSessionCameraUUIDs___block_invoke;
    block[3] = &unk_279735D00;
    block[4] = self;
    dispatch_async(v8, block);
  }
}

uint64_t __85__HMDCameraRecordingManager_residentMeshDidUpdate_activeRecordingSessionCameraUUIDs___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v5;
    v10 = 2048;
    v11 = 2;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Coordinating recording session for active trigger of type %lu", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _coordinateRecordingSessionForTrigger:2];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)shutDown
{
  v3 = [(HMDCameraRecordingManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__HMDCameraRecordingManager_shutDown__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)start
{
  v3 = [(HMDCameraRecordingManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__HMDCameraRecordingManager_start__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v3, block);
}

- (NSDictionary)stateDump
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMDCameraRecordingManager *)self currentRecordingSession];
  v5 = [v4 stateDump];
  [v3 setObject:v5 forKeyedSubscript:@"Recording Session"];

  v6 = [v3 copy];

  return v6;
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543618;
    v10 = v6;
    v11 = 2048;
    v12 = v4;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Camera recording manager: %p destroyed", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDCameraRecordingLoadBalancer *)v4->_cameraLoadBalancer removeDataForCameraWithUUID:v4->_cameraUUID];
  v8.receiver = v4;
  v8.super_class = HMDCameraRecordingManager;
  [(HMDCameraRecordingManager *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDCameraRecordingManager)initWithCamera:(id)a3 recordingManagementService:(id)a4 workQueue:(id)a5 dependencyFactory:(id)a6 notificationCenter:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v45.receiver = self;
  v45.super_class = HMDCameraRecordingManager;
  v17 = [(HMDCameraRecordingManager *)&v45 init];
  if (v17)
  {
    [v12 hapAccessory];
    v18 = v44 = v16;
    v19 = [v18 home];
    v43 = [v19 homeManager];

    v20 = [v12 uniqueIdentifier];
    cameraUUID = v17->_cameraUUID;
    v17->_cameraUUID = v20;

    objc_storeStrong(&v17->_dependencyFactory, a6);
    objc_storeStrong(&v17->_notificationCenter, a7);
    objc_storeWeak(&v17->_accessory, v18);
    v22 = [v12 msgDispatcher];
    msgDispatcher = v17->_msgDispatcher;
    v17->_msgDispatcher = v22;

    objc_storeWeak(&v17->_camera, v12);
    v24 = [v12 messageTargetUUID];
    messageTargetUUID = v17->_messageTargetUUID;
    v17->_messageTargetUUID = v24;

    v26 = [v43 cameraLoadBalancer];
    cameraLoadBalancer = v17->_cameraLoadBalancer;
    v17->_cameraLoadBalancer = v26;

    v28 = [v43 residentMesh];
    residentMesh = v17->_residentMesh;
    v17->_residentMesh = v28;

    objc_storeStrong(&v17->_workQueue, a5);
    v30 = [v15 createSessionNotificationTrigger:v12 workQueue:v14];
    notificationTrigger = v17->_notificationTrigger;
    v17->_notificationTrigger = v30;

    v32 = [v15 createSettingsControl:v14 accessory:v18 managementService:v13];
    recordingSettingsControl = v17->_recordingSettingsControl;
    v17->_recordingSettingsControl = v32;

    v34 = [v15 createBulkSendSessionInitiatorWithWorkQueue:v14 accessory:v18];
    bulkSendSessionInitiator = v17->_bulkSendSessionInitiator;
    v17->_bulkSendSessionInitiator = v34;

    v36 = [MEMORY[0x277CBEB58] set];
    activeRecordingSessions = v17->_activeRecordingSessions;
    v17->_activeRecordingSessions = v36;

    v38 = [v15 featuresDataSource];
    featuresDataSource = v17->_featuresDataSource;
    v17->_featuresDataSource = v38;

    v40 = [v15 logEventSubmitter];
    logEventSubmitter = v17->_logEventSubmitter;
    v17->_logEventSubmitter = v40;

    v16 = v44;
  }

  return v17;
}

- (HMDCameraRecordingManager)initWithCamera:(id)a3 recordingManagementService:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = HMDispatchQueueNameString();
  v9 = [v8 UTF8String];
  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = dispatch_queue_create(v9, v10);
  v12 = objc_alloc_init(HMDCameraRecordingManagerDependencyFactory);
  v13 = [MEMORY[0x277CCAB98] defaultCenter];
  v14 = [(HMDCameraRecordingManager *)self initWithCamera:v7 recordingManagementService:v6 workQueue:v11 dependencyFactory:v12 notificationCenter:v13];

  return v14;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t73 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t73, &__block_literal_global_105);
  }

  v3 = logCategory__hmf_once_v74;

  return v3;
}

uint64_t __40__HMDCameraRecordingManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v74 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end
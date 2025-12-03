@interface HMDCameraSnapshotManager
+ (id)logCategory;
+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver;
+ (void)cleanStaleSnapshotDirectoriesUsingCurrentAccessories:(id)accessories;
- (HMDCameraSnapshotManager)initWithAccessory:(id)accessory workQueue:(id)queue streamSnapshotHandler:(id)handler uniqueIdentifier:(id)identifier msgDispatcher:(id)dispatcher networkMonitor:(id)monitor;
- (HMDCameraSnapshotManager)initWithAccessory:(id)accessory workQueue:(id)queue streamSnapshotHandler:(id)handler uniqueIdentifier:(id)identifier msgDispatcher:(id)dispatcher networkMonitor:(id)monitor logIdentifier:(id)logIdentifier imageCacheDirectory:(id)self0 residentMessageHandler:(id)self1 snapshotFileManager:(id)self2 dataSource:(id)self3;
- (NSDictionary)encodedMostRecentSnapshot;
- (id)_createSnapshotSessionIDWithMessage:(void *)message error:;
- (id)_sessionWithID:(id *)d;
- (id)accessory;
- (void)_endSession:(void *)session error:;
- (void)_handleCreateSnapshotFromBulletinContextMessage:(id)message;
- (void)_handleFillSnapshotSlotMessage:(id)message;
- (void)_handleReleaseSnapshotMessage:(id)message;
- (void)_handleRemoteSnapshotReceivedMessage:(id)message;
- (void)_handleTakeRemoteSnapshotFailureMessage:(id)message;
- (void)_handleTakeRemoteSnapshotMessage:(id)message;
- (void)_handleTakeSnapshotMessage:(id)message;
- (void)_issueGetSnapshot:(void *)snapshot;
- (void)_removeAllPendingRequests:(uint64_t)requests;
- (void)_sendRemoteResponseForSessionID:(void *)d;
- (void)_sendResponse:(void *)response error:(void *)error sessionID:;
- (void)_sendSnapshotRequestRelayReceiver:(void *)receiver snapshotSessionID:;
- (void)_sendSnapshotRequestStreamReceiver:(void *)receiver snapshotSessionID:;
- (void)dealloc;
- (void)handleAccessoryUnconfigured:(id)unconfigured;
- (void)handleCameraSettingsDidChangeNotification:(id)notification;
- (void)registerForMessages;
- (void)releaseSnapshotWithSlotIdentifier:(id)identifier;
- (void)snapshotLocal:(id)local didSaveSnapshotFile:(id)file error:(id)error sessionID:(id)d;
- (void)snapshotRelayReceiver:(id)receiver didSaveSnapshotFile:(id)file error:(id)error sessionID:(id)d;
- (void)snapshotRelayReceiver:(id)receiver didStartImageCaptureForSessionID:(id)d;
- (void)snapshotRelaySender:(id)sender didCompleteSendImage:(id)image sessionID:(id)d;
- (void)snapshotRelaySender:(id)sender didSaveSnapshotFile:(id)file sessionID:(id)d;
- (void)snapshotRelaySender:(id)sender didStartImageCaptureForSessionID:(id)d;
- (void)snapshotRelayStream:(id)stream didCompleteSendImage:(id)image sessionID:(id)d;
- (void)snapshotRelayStream:(id)stream didStartImageCaptureForSessionID:(id)d;
- (void)snapshotStreamReceiver:(id)receiver didSaveSnapshotFile:(id)file error:(id)error sessionID:(id)d;
- (void)snapshotStreamReceiver:(id)receiver didStartImageCaptureForSessionID:(id)d;
- (void)snapshotStreamSender:(id)sender didCompleteSendImage:(id)image sessionID:(id)d;
- (void)snapshotStreamSender:(id)sender didStartImageCaptureForSessionID:(id)d;
- (void)streamSnapshotHandler:(id)handler didChangeStreamSetupInProgress:(BOOL)progress;
- (void)streamSnapshotHandler:(id)handler didGetLastSnapshot:(id)snapshot;
- (void)streamSnapshotHandler:(id)handler didGetNewSnapshot:(id)snapshot;
- (void)takeSnapshot:(id)snapshot;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDCameraSnapshotManager

- (void)handleCameraSettingsDidChangeNotification:(id)notification
{
  workQueue = [(HMDCameraSnapshotManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HMDCameraSnapshotManager_handleCameraSettingsDidChangeNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __70__HMDCameraSnapshotManager_handleCameraSettingsDidChangeNotification___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [(HMDCameraSnapshotManager *)*(a1 + 32) accessory];
  v3 = [v2 cameraProfiles];
  v4 = [v3 anyObject];
  v5 = [v4 currentSettings];

  if (v5)
  {
    [v5 currentAccessMode];
    if ((HMAreSnapshotsAllowedForCameraAccessMode() & 1) == 0)
    {
      v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10];
      [(HMDCameraSnapshotManager *)*(a1 + 32) _removeAllPendingRequests:v6];
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Camera profile settings are not initialized, skipping cancelling pending snapshot requests", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)accessory
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 6);
    v1 = vars8;
  }

  return WeakRetained;
}

- (void)_removeAllPendingRequests:(uint64_t)requests
{
  v64 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (requests)
  {
    if (*(requests + 32))
    {
      v4 = objc_autoreleasePoolPush();
      requestsCopy = requests;
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = HMFGetLogIdentifier();
        v8 = requestsCopy[4];
        *buf = 138543874;
        v59 = v7;
        v60 = 2112;
        v61 = v8;
        v62 = 2112;
        v63 = v3;
        _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failing current local session %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v4);
      [requestsCopy[4] respondWithPayload:0 error:v3];
      objc_storeStrong(requestsCopy + 4, 0);
    }

    if ([*(requests + 40) count])
    {
      v9 = objc_autoreleasePoolPush();
      requestsCopy2 = requests;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v13 = requestsCopy2[5];
        *buf = 138543874;
        v59 = v12;
        v60 = 2112;
        v61 = v13;
        v62 = 2112;
        v63 = v3;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failing current remote sessions %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v9);
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v14 = requestsCopy2[5];
      v15 = [v14 countByEnumeratingWithState:&v51 objects:v57 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v52;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v52 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v51 + 1) + 8 * i);
            v20 = requestsCopy2[5];
            v21 = [v20 objectForKeyedSubscript:v19];
            [v21 respondWithPayload:0 error:v3];
          }

          v16 = [v14 countByEnumeratingWithState:&v51 objects:v57 count:16];
        }

        while (v16);
      }

      [requestsCopy2[5] removeAllObjects];
    }

    if ([*(requests + 104) count])
    {
      v22 = objc_autoreleasePoolPush();
      requestsCopy3 = requests;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v26 = requestsCopy3[13];
        *buf = 138543874;
        v59 = v25;
        v60 = 2112;
        v61 = v26;
        v62 = 2112;
        v63 = v3;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failing pending snapshot requests during stream setup %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v22);
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v27 = requestsCopy3[13];
      v28 = [v27 countByEnumeratingWithState:&v47 objects:v56 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v48;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v48 != v30)
            {
              objc_enumerationMutation(v27);
            }

            [*(*(&v47 + 1) + 8 * j) respondWithError:v3];
          }

          v29 = [v27 countByEnumeratingWithState:&v47 objects:v56 count:16];
        }

        while (v29);
      }

      [requestsCopy3[13] removeAllObjects];
    }

    if ([*(requests + 112) count])
    {
      v32 = objc_autoreleasePoolPush();
      requestsCopy4 = requests;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = HMFGetLogIdentifier();
        v36 = requestsCopy4[14];
        *buf = 138543874;
        v59 = v35;
        v60 = 2112;
        v61 = v36;
        v62 = 2112;
        v63 = v3;
        _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@Failing pending remote snapshot requests during stream setup %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v32);
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v37 = requestsCopy4[14];
      v38 = [v37 countByEnumeratingWithState:&v43 objects:v55 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v44;
        do
        {
          for (k = 0; k != v39; ++k)
          {
            if (*v44 != v40)
            {
              objc_enumerationMutation(v37);
            }

            [*(*(&v43 + 1) + 8 * k) respondWithError:{v3, v43}];
          }

          v39 = [v37 countByEnumeratingWithState:&v43 objects:v55 count:16];
        }

        while (v39);
      }

      [requestsCopy4[14] removeAllObjects];
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)streamSnapshotHandler:(id)handler didChangeStreamSetupInProgress:(BOOL)progress
{
  v39 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  workQueue = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (!progress)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v38 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Received callback that stream setup is not in progress anymore", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    if (selfCopy)
    {
      v12 = [(NSMutableArray *)selfCopy->_pendingSnapshotRequestDuringStreamSetup copy];
      pendingSnapshotRequestDuringStreamSetup = selfCopy->_pendingSnapshotRequestDuringStreamSetup;
    }

    else
    {
      v12 = [0 copy];
      pendingSnapshotRequestDuringStreamSetup = 0;
    }

    [(NSMutableArray *)pendingSnapshotRequestDuringStreamSetup removeAllObjects];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v32;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v32 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [(HMDCameraSnapshotManager *)selfCopy _handleTakeSnapshotMessage:*(*(&v31 + 1) + 8 * i)];
        }

        v16 = [v14 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v16);
    }

    if (selfCopy)
    {
      v19 = [(NSMutableArray *)selfCopy->_pendingRemoteSnapshotRequestDuringStreamSetup copy];
      pendingRemoteSnapshotRequestDuringStreamSetup = selfCopy->_pendingRemoteSnapshotRequestDuringStreamSetup;
    }

    else
    {
      v19 = [0 copy];
      pendingRemoteSnapshotRequestDuringStreamSetup = 0;
    }

    [(NSMutableArray *)pendingRemoteSnapshotRequestDuringStreamSetup removeAllObjects];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v21 = v19;
    v22 = [v21 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v28;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v28 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [(HMDCameraSnapshotManager *)selfCopy _handleTakeRemoteSnapshotMessage:*(*(&v27 + 1) + 8 * j), v27];
        }

        v23 = [v21 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v23);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)streamSnapshotHandler:(id)handler didGetLastSnapshot:(id)snapshot
{
  v41 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  snapshotCopy = snapshot;
  workQueue = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    if (selfCopy)
    {
      currentLocalSession = selfCopy->_currentLocalSession;
    }

    else
    {
      currentLocalSession = 0;
    }

    v14 = currentLocalSession;
    sessionID = [(HMDCameraSnapshotSession *)v14 sessionID];
    v15SessionID = [sessionID sessionID];
    *buf = 138543874;
    v36 = v12;
    v37 = 2112;
    v38 = v15SessionID;
    v39 = 2112;
    v40 = snapshotCopy;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[%@] Stream captured last snapshot: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v17 = [HMDCameraSnapshotFile alloc];
  if (selfCopy)
  {
    imageCacheDirectory = selfCopy->_imageCacheDirectory;
  }

  else
  {
    imageCacheDirectory = 0;
  }

  v34 = 0;
  v19 = imageCacheDirectory;
  v20 = [(HMDCameraSnapshotFile *)v17 initWithDirectory:v19 snapshot:snapshotCopy error:&v34];
  v21 = v34;

  if (v20)
  {
    if (selfCopy)
    {
      snapshotFileManager = selfCopy->_snapshotFileManager;
    }

    else
    {
      snapshotFileManager = 0;
    }

    v23 = [(HMDCameraSnapshotFileManager *)snapshotFileManager createSlotForSnapshotFile:v20 requestMessages:MEMORY[0x277CBEBF8] shouldNotifyClients:1];
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      v33 = handlerCopy;
      if (selfCopy)
      {
        v28 = v25->_currentLocalSession;
      }

      else
      {
        v28 = 0;
      }

      v29 = v28;
      sessionID2 = [(HMDCameraSnapshotSession *)v29 sessionID];
      v30SessionID = [sessionID2 sessionID];
      *buf = 138543874;
      v36 = v27;
      v37 = 2112;
      v38 = v30SessionID;
      v39 = 2112;
      v40 = v21;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to create snapshot file from last stream snapshot: %@", buf, 0x20u);

      handlerCopy = v33;
    }

    objc_autoreleasePoolPop(v24);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)streamSnapshotHandler:(id)handler didGetNewSnapshot:(id)snapshot
{
  v51 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  snapshotCopy = snapshot;
  workQueue = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (snapshotCopy)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      if (selfCopy)
      {
        currentLocalSession = selfCopy->_currentLocalSession;
      }

      else
      {
        currentLocalSession = 0;
      }

      v15 = currentLocalSession;
      sessionID = [(HMDCameraSnapshotSession *)v15 sessionID];
      v16SessionID = [sessionID sessionID];
      *buf = 138543874;
      v46 = v13;
      v47 = 2112;
      v48 = v16SessionID;
      v49 = 2112;
      v50 = snapshotCopy;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[%@] Stream captured a new snapshot: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v18 = [HMDCameraSnapshotFile alloc];
    if (selfCopy)
    {
      imageCacheDirectory = selfCopy->_imageCacheDirectory;
    }

    else
    {
      imageCacheDirectory = 0;
    }

    v44 = 0;
    v20 = imageCacheDirectory;
    sessionID5 = [(HMDCameraSnapshotFile *)v18 initWithDirectory:v20 snapshot:snapshotCopy error:&v44];
    v22 = v44;

    if (sessionID5)
    {
      if (selfCopy)
      {
        v23 = selfCopy->_currentLocalSession;
      }

      else
      {
        v23 = 0;
      }

      sessionID2 = [(HMDCameraSnapshotSession *)v23 sessionID];
      [(HMDCameraSnapshotManager *)selfCopy _sendResponse:sessionID5 error:0 sessionID:sessionID2];
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      v32 = selfCopy;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        v42 = v31;
        v43 = handlerCopy;
        if (selfCopy)
        {
          v35 = v32->_currentLocalSession;
        }

        else
        {
          v35 = 0;
        }

        v36 = v35;
        sessionID3 = [(HMDCameraSnapshotSession *)v36 sessionID];
        v37SessionID = [sessionID3 sessionID];
        *buf = 138543874;
        v46 = v34;
        v47 = 2112;
        v48 = v37SessionID;
        v49 = 2112;
        v50 = v22;
        _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to create snapshot file from new stream snapshot: %@", buf, 0x20u);

        v31 = v42;
        handlerCopy = v43;
      }

      objc_autoreleasePoolPop(v31);
      if (selfCopy)
      {
        v39 = v32->_currentLocalSession;
      }

      else
      {
        v39 = 0;
      }

      v40 = v39;
      sessionID2 = [(HMDCameraSnapshotSession *)v40 sessionID];
      [(HMDCameraSnapshotManager *)v32 _sendResponse:v22 error:sessionID2 sessionID:?];
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      if (selfCopy)
      {
        v26 = selfCopy->_currentLocalSession;
      }

      else
      {
        v26 = 0;
      }

      v27 = v26;
      sessionID4 = [(HMDCameraSnapshotSession *)v27 sessionID];
      v28SessionID = [sessionID4 sessionID];
      *buf = 138543618;
      v46 = v25;
      v47 = 2112;
      v48 = v28SessionID;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@[%@] Stream failed to capture a new snapshot", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    if (selfCopy)
    {
      v30 = selfCopy->_currentLocalSession;
    }

    else
    {
      v30 = 0;
    }

    sessionID5 = [(HMDCameraSnapshotSession *)v30 sessionID];
    [(HMDCameraSnapshotManager *)selfCopy _sendResponse:v22 error:sessionID5 sessionID:?];
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)_sendResponse:(void *)response error:(void *)error sessionID:
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a2;
  responseCopy = response;
  errorCopy = error;
  if (self)
  {
    workQueue = [self workQueue];
    dispatch_assert_queue_V2(workQueue);

    v11 = [(HMDCameraSnapshotManager *)self _sessionWithID:errorCopy];
    v12 = v11;
    if (v11)
    {
      v28 = v11;
      v29 = errorCopy;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      sessionMessages = [v11 sessionMessages];
      v14 = [sessionMessages countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v31;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v31 != v16)
            {
              objc_enumerationMutation(sessionMessages);
            }

            v18 = [*(*(&v30 + 1) + 8 * i) stringForKey:@"kCameraProactiveSessionID"];
            if (v18)
            {
              v19 = *(self + 80);
              if (v7)
              {
                [v19 setSnapshotFile:v7 forEntryWithCharacteristicEventUUID:v18];
              }

              else
              {
                [v19 removeEntryWithCharacteristicEventUUID:v18 error:responseCopy];
              }
            }
          }

          v15 = [sessionMessages countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v15);
      }

      if (v7)
      {
        v20 = *(self + 88);
        v12 = v28;
        sessionMessages2 = [v28 sessionMessages];
        v22 = [v20 createSlotForSnapshotFile:v7 requestMessages:sessionMessages2 shouldNotifyClients:1];

        [v28 respondWithPayload:v22 error:0];
      }

      else
      {
        v12 = v28;
        [v28 respondWithPayload:0 error:responseCopy];
      }

      errorCopy = v29;
      [(HMDCameraSnapshotManager *)self _endSession:v29 error:responseCopy];
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      selfCopy = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543618;
        v36 = v26;
        v37 = 2112;
        v38 = errorCopy;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Asked to send response for an unknown session ID: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (id)_sessionWithID:(id *)d
{
  v3 = a2;
  if (d)
  {
    workQueue = [d workQueue];
    dispatch_assert_queue_V2(workQueue);

    sessionID = [d[4] sessionID];
    v6 = [sessionID isEqual:v3];

    if (v6)
    {
      v7 = d[4];
    }

    else
    {
      v7 = [d[5] objectForKeyedSubscript:v3];
    }

    d = v7;
  }

  return d;
}

- (void)_endSession:(void *)session error:
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  sessionCopy = session;
  if (self)
  {
    workQueue = [self workQueue];
    dispatch_assert_queue_V2(workQueue);

    v8 = self[4];
    sessionID = [v8 sessionID];
    v10 = [sessionID isEqual:v5];

    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
    if (v10)
    {
      if (v14)
      {
        v15 = HMFGetLogIdentifier();
        v19 = 138543618;
        v20 = v15;
        v21 = 2112;
        v22 = v5;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Resetting local session with ID: %@", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      [selfCopy[4] respondWithPayload:0 error:sessionCopy];
      v16 = selfCopy[4];
      selfCopy[4] = 0;
    }

    else
    {
      if (v14)
      {
        v17 = HMFGetLogIdentifier();
        v19 = 138543618;
        v20 = v17;
        v21 = 2112;
        v22 = v5;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Resetting remote session with ID: %@", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v16 = [selfCopy[5] objectForKeyedSubscript:v5];
      [v16 respondWithPayload:0 error:sessionCopy];
      [selfCopy[5] removeObjectForKey:v5];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)snapshotRelayStream:(id)stream didCompleteSendImage:(id)image sessionID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  imageCopy = image;
  dCopy = d;
  workQueue = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v17 = 138543874;
    v18 = v15;
    v19 = 2112;
    v20 = dCopy;
    v21 = 2112;
    v22 = imageCopy;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@%@ Received HMDCameraSnapshotRemoteRelayStreamDelegate callback that the image transfer has completed with error %@", &v17, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  [(HMDCameraSnapshotManager *)&selfCopy->super.super.isa _endSession:dCopy error:imageCopy];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)snapshotRelayStream:(id)stream didStartImageCaptureForSessionID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  dCopy = d;
  workQueue = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v12;
    v16 = 2112;
    v17 = dCopy;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@%@ Received HMDCameraSnapshotRemoteRelayStreamDelegate callback that the image capture has started", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDCameraSnapshotManager *)selfCopy _sendRemoteResponseForSessionID:dCopy];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_sendRemoteResponseForSessionID:(void *)d
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (d)
  {
    workQueue = [d workQueue];
    dispatch_assert_queue_V2(workQueue);

    v5 = [(HMDCameraSnapshotManager *)d _sessionWithID:v3];
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v5 respondWithPayload:0 error:0];
LABEL_11:

        goto LABEL_12;
      }

      v6 = objc_autoreleasePoolPush();
      dCopy2 = d;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        v14 = 138543874;
        v15 = v9;
        v16 = 2112;
        v17 = v3;
        v18 = 2112;
        v19 = objc_opt_class();
        v10 = "%{public}@Asked to send remote response for a snapshot session of unexpected type: %@ (class: %@)";
        v11 = v8;
        v12 = 32;
        goto LABEL_9;
      }
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      dCopy2 = d;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        v14 = 138543618;
        v15 = v9;
        v16 = 2112;
        v17 = v3;
        v10 = "%{public}@Asked to send remote response for an unknown session ID: %@";
        v11 = v8;
        v12 = 22;
LABEL_9:
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, v10, &v14, v12);
      }
    }

    objc_autoreleasePoolPop(v6);
    goto LABEL_11;
  }

LABEL_12:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)snapshotStreamSender:(id)sender didCompleteSendImage:(id)image sessionID:(id)d
{
  v24 = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  imageCopy = image;
  dCopy = d;
  workQueue = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    sessionID = [dCopy sessionID];
    v18 = 138543874;
    v19 = v15;
    v20 = 2112;
    v21 = sessionID;
    v22 = 2112;
    v23 = imageCopy;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@[%@] Received HMDCameraSnapshotRemoteStreamSenderDelegate callback that the image transfer has completed with error %@", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  [(HMDCameraSnapshotManager *)&selfCopy->super.super.isa _endSession:dCopy error:imageCopy];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)snapshotStreamSender:(id)sender didStartImageCaptureForSessionID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  dCopy = d;
  workQueue = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    sessionID = [dCopy sessionID];
    v15 = 138543618;
    v16 = v12;
    v17 = 2112;
    v18 = sessionID;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[%@] Received HMDCameraSnapshotRemoteStreamSenderDelegate callback that the image capture has started", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDCameraSnapshotManager *)selfCopy _sendRemoteResponseForSessionID:dCopy];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)snapshotStreamReceiver:(id)receiver didSaveSnapshotFile:(id)file error:(id)error sessionID:(id)d
{
  v27 = *MEMORY[0x277D85DE8];
  receiverCopy = receiver;
  fileCopy = file;
  errorCopy = error;
  dCopy = d;
  workQueue = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    sessionID = [dCopy sessionID];
    v21 = 138543874;
    v22 = v18;
    v23 = 2112;
    v24 = sessionID;
    v25 = 2112;
    v26 = errorCopy;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@[%@] Received HMDCameraSnapshotRemoteStreamReceiverDelegate callback that the image has been saved after relay with error %@", &v21, 0x20u);
  }

  objc_autoreleasePoolPop(v15);
  [(HMDCameraSnapshotManager *)selfCopy _sendResponse:fileCopy error:errorCopy sessionID:dCopy];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)snapshotStreamReceiver:(id)receiver didStartImageCaptureForSessionID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  receiverCopy = receiver;
  dCopy = d;
  workQueue = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    sessionID = [dCopy sessionID];
    v15 = 138543618;
    v16 = v12;
    v17 = 2112;
    v18 = sessionID;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[%@] Received HMDCameraSnapshotRemoteStreamReceiverDelegate callback that the image capture has started after relay", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)snapshotRelaySender:(id)sender didSaveSnapshotFile:(id)file sessionID:(id)d
{
  v31 = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  fileCopy = file;
  dCopy = d;
  workQueue = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    sessionID = [dCopy sessionID];
    snapshotCharacteristicEventUUID = [dCopy snapshotCharacteristicEventUUID];
    v23 = 138544130;
    v24 = v15;
    v25 = 2112;
    v26 = sessionID;
    v27 = 2112;
    v28 = fileCopy;
    v29 = 2112;
    v30 = snapshotCharacteristicEventUUID;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@[%@] Received HMDCameraSnapshotRemoteRelaySenderDelegate callback that snapshotFile:%@ has been saved for snapshotCharacteristicEventUUID:%@", &v23, 0x2Au);
  }

  objc_autoreleasePoolPop(v12);
  snapshotCharacteristicEventUUID2 = [dCopy snapshotCharacteristicEventUUID];

  if (snapshotCharacteristicEventUUID2)
  {
    if (selfCopy)
    {
      snapshotCache = selfCopy->_snapshotCache;
    }

    else
    {
      snapshotCache = 0;
    }

    v20 = snapshotCache;
    snapshotCharacteristicEventUUID3 = [dCopy snapshotCharacteristicEventUUID];
    [(HMDCameraSnapshotCache *)v20 setSnapshotFile:fileCopy forEntryWithCharacteristicEventUUID:snapshotCharacteristicEventUUID3];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)snapshotRelaySender:(id)sender didCompleteSendImage:(id)image sessionID:(id)d
{
  v24 = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  imageCopy = image;
  dCopy = d;
  workQueue = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    sessionID = [dCopy sessionID];
    v18 = 138543874;
    v19 = v15;
    v20 = 2112;
    v21 = sessionID;
    v22 = 2112;
    v23 = imageCopy;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@[%@] Received HMDCameraSnapshotRemoteRelaySenderDelegate callback that the image transfer has completed with error %@", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  [(HMDCameraSnapshotManager *)&selfCopy->super.super.isa _endSession:dCopy error:imageCopy];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)snapshotRelaySender:(id)sender didStartImageCaptureForSessionID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  dCopy = d;
  workQueue = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    sessionID = [dCopy sessionID];
    v15 = 138543618;
    v16 = v12;
    v17 = 2112;
    v18 = sessionID;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[%@] Received HMDCameraSnapshotRemoteRelaySenderDelegate callback that the image capture has started", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDCameraSnapshotManager *)selfCopy _sendRemoteResponseForSessionID:dCopy];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)snapshotRelayReceiver:(id)receiver didSaveSnapshotFile:(id)file error:(id)error sessionID:(id)d
{
  v27 = *MEMORY[0x277D85DE8];
  receiverCopy = receiver;
  fileCopy = file;
  errorCopy = error;
  dCopy = d;
  workQueue = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    sessionID = [dCopy sessionID];
    v21 = 138543874;
    v22 = v18;
    v23 = 2112;
    v24 = sessionID;
    v25 = 2112;
    v26 = errorCopy;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@[%@] Received HMDCameraSnapshotRemoteRelayReceiverDelegate callback that the image has been saved after relay with error %@", &v21, 0x20u);
  }

  objc_autoreleasePoolPop(v15);
  [(HMDCameraSnapshotManager *)selfCopy _sendResponse:fileCopy error:errorCopy sessionID:dCopy];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)snapshotRelayReceiver:(id)receiver didStartImageCaptureForSessionID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  receiverCopy = receiver;
  dCopy = d;
  workQueue = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    sessionID = [dCopy sessionID];
    v15 = 138543618;
    v16 = v12;
    v17 = 2112;
    v18 = sessionID;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[%@] Received HMDCameraSnapshotRemoteRelayReceiverDelegate callback that the image capture has started after relay", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)snapshotLocal:(id)local didSaveSnapshotFile:(id)file error:(id)error sessionID:(id)d
{
  v27 = *MEMORY[0x277D85DE8];
  localCopy = local;
  fileCopy = file;
  errorCopy = error;
  dCopy = d;
  workQueue = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    sessionID = [dCopy sessionID];
    v21 = 138543874;
    v22 = v18;
    v23 = 2112;
    v24 = sessionID;
    v25 = 2112;
    v26 = errorCopy;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@[%@] Received HMDCameraSnapshotLocalDelegate callback that the image has been saved %@", &v21, 0x20u);
  }

  objc_autoreleasePoolPop(v15);
  [(HMDCameraSnapshotManager *)selfCopy _sendResponse:fileCopy error:errorCopy sessionID:dCopy];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_handleTakeRemoteSnapshotFailureMessage:(id)message
{
  v41 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [HMDCameraSnapshotSessionID alloc];
  accessory = [(HMDCameraSnapshotManager *)&self->super.super.isa accessory];
  v8 = [(HMDCameraSnapshotSessionID *)v6 initWithAccessory:accessory message:messageCopy];

  if (v8)
  {
    v9 = [(HMDCameraSnapshotManager *)&self->super.super.isa _sessionWithID:v8];
    v10 = v9;
    if (v9)
    {
      snapshotGetter = [v9 snapshotGetter];
      if ([snapshotGetter conformsToProtocol:&unk_2866B91B8])
      {
        v12 = snapshotGetter;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      if (v13)
      {
        messagePayload = [(HMDCameraSnapshotSessionID *)messageCopy messagePayload];
        v15 = [messagePayload errorFromDataForKey:@"kCameraSessionError"];

        v16 = objc_autoreleasePoolPush();
        selfCopy = self;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = HMFGetLogIdentifier();
          sessionID = [(HMDCameraSessionID *)v8 sessionID];
          v35 = 138543874;
          v36 = v19;
          v37 = 2112;
          v38 = sessionID;
          v39 = 2112;
          v40 = v15;
          _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@[%@] Handling remote snapshot failure: %@", &v35, 0x20u);
        }

        objc_autoreleasePoolPop(v16);
        [v13 snapshotSendFailed:v15];
        [(HMDCameraSnapshotSessionID *)messageCopy respondWithSuccess];
      }

      else
      {
        v29 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = HMFGetLogIdentifier();
          sessionID2 = [(HMDCameraSessionID *)v8 sessionID];
          v35 = 138543618;
          v36 = v32;
          v37 = 2112;
          v38 = sessionID2;
          _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@[%@] Cannot handle remote snapshot failure for session without a receiver", &v35, 0x16u);
        }

        objc_autoreleasePoolPop(v29);
        v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
        [(HMDCameraSnapshotSessionID *)messageCopy respondWithError:v15];
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        v35 = 138543618;
        v36 = v28;
        v37 = 2112;
        v38 = v8;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Cannot handle remote snapshot failure for unknown session ID: %@", &v35, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [(HMDCameraSnapshotSessionID *)messageCopy respondWithError:v13];
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v35 = 138543618;
      v36 = v24;
      v37 = 2112;
      v38 = messageCopy;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to create snapshot session ID from remote snapshot failure message: %@", &v35, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [(HMDCameraSnapshotSessionID *)messageCopy respondWithError:v10];
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_handleRemoteSnapshotReceivedMessage:(id)message
{
  v33 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [HMDCameraSnapshotSessionID alloc];
  accessory = [(HMDCameraSnapshotManager *)&self->super.super.isa accessory];
  v8 = [(HMDCameraSnapshotSessionID *)v6 initWithAccessory:accessory message:messageCopy];

  if (v8)
  {
    v9 = [(HMDCameraSnapshotManager *)&self->super.super.isa _sessionWithID:v8];
    if (v9)
    {
      v10 = v9;
      snapshotGetter = [v9 snapshotGetter];
      v12 = [snapshotGetter conformsToProtocol:&unk_28665F1F8];

      if (v12)
      {
        snapshotGetter2 = [v10 snapshotGetter];
        v14 = objc_autoreleasePoolPush();
        selfCopy = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = HMFGetLogIdentifier();
          sessionID = [(HMDCameraSessionID *)v8 sessionID];
          v29 = 138543618;
          v30 = v17;
          v31 = 2112;
          v32 = sessionID;
          _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@[%@] Sending snapshot received confirmation to the sender", &v29, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
        [snapshotGetter2 snapshotTransferComplete];
      }

      [(HMDCameraSnapshotSessionID *)messageCopy respondWithSuccess];
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        v29 = 138543618;
        v30 = v26;
        v31 = 2112;
        v32 = v8;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Cannot handle remote snapshot received for unknown session ID: %@", &v29, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      [(HMDCameraSnapshotSessionID *)messageCopy respondWithError:v27];

      v10 = 0;
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v29 = 138543618;
      v30 = v22;
      v31 = 2112;
      v32 = messageCopy;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to create snapshot session ID from remote snapshot received message: %@", &v29, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [(HMDCameraSnapshotSessionID *)messageCopy respondWithError:v10];
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)timerDidFire:(id)fire
{
  v21 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  workQueue = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = fireCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    snapshotSession = [v8 snapshotSession];
    if (snapshotSession)
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v17 = 138543618;
        v18 = v13;
        v19 = 2112;
        v20 = snapshotSession;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Session has timed out: %@", &v17, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:8];
      sessionID = [snapshotSession sessionID];
      [(HMDCameraSnapshotManager *)selfCopy _sendResponse:v14 error:sessionID sessionID:?];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_handleTakeRemoteSnapshotMessage:(id)message
{
  v134 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v129 = 0;
  v6 = [(HMDCameraSnapshotManager *)&self->super.super.isa _createSnapshotSessionIDWithMessage:messageCopy error:&v129];
  v7 = v129;
  if (!v6)
  {
    [messageCopy respondWithError:v7];
    goto LABEL_62;
  }

  if (self)
  {
    streamSnapshotHandler = self->_streamSnapshotHandler;
  }

  else
  {
    streamSnapshotHandler = 0;
  }

  if (![(HMDCameraStreamSnapshotHandler *)streamSnapshotHandler isStreamSetupInProgress])
  {
    accessory = [(HMDCameraSnapshotManager *)&self->super.super.isa accessory];
    v16 = +[HMDDeviceCapabilities deviceCapabilities];
    isResidentCapable = [v16 isResidentCapable];

    if (isResidentCapable)
    {
      isReachable = [accessory isReachable];
      v19 = objc_autoreleasePoolPush();
      selfCopy = self;
      v21 = HMFGetOSLogHandle();
      v22 = v21;
      if (isReachable)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v23 = HMFGetLogIdentifier();
          sessionID = [v6 sessionID];
          *buf = 138543618;
          v131 = v23;
          v132 = 2112;
          v133 = sessionID;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@[%@] Accessory is reachable and this is remote gateway capable device", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v19);
        v25 = messageCopy;
        v26 = v6;
        if (self)
        {
          workQueue2 = [(HMDCameraSnapshotManager *)selfCopy workQueue];
          dispatch_assert_queue_V2(workQueue2);

          v28 = objc_autoreleasePoolPush();
          v29 = selfCopy;
          v30 = HMFGetOSLogHandle();
          v124 = v25;
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v31 = HMFGetLogIdentifier();
            [v26 sessionID];
            v33 = v32 = accessory;
            *buf = 138543618;
            v131 = v31;
            v132 = 2112;
            v133 = v33;
            _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@[%@] Creating a snapshot session with HMDCameraSnapshotRemoteRelaySender", buf, 0x16u);

            accessory = v32;
            v25 = v124;
          }

          objc_autoreleasePoolPop(v28);
          v34 = [v25 stringForKey:@"kCameraProactiveSessionID"];
          v117 = [v25 numberForKey:@"kCameraStreamingTierType"];
          remoteSourceDevice = [v25 remoteSourceDevice];
          WeakRetained = objc_loadWeakRetained(v29 + 6);
          v127 = accessory;
          v121 = v34;
          if (v34 && [v29[10] isEntryPresentForCharacteristicEventUUID:v34])
          {
            v35 = objc_autoreleasePoolPush();
            v36 = v29;
            v37 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              v38 = HMFGetLogIdentifier();
              *buf = 138543618;
              v131 = v38;
              v132 = 2112;
              v133 = v34;
              _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Using cache request handler because snapshot file is present in cache for %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v35);
            v39 = &OBJC_IVAR___HMDCameraSnapshotManager__snapshotCache;
          }

          else
          {
            v39 = &OBJC_IVAR___HMDCameraSnapshotManager__snapshotRequestHandler;
          }

          v66 = *(v29 + *v39);
          v67 = [HMDCameraSnapshotRemoteRelaySender alloc];
          workQueue3 = [v29 workQueue];
          uniqueIdentifier = [v29 uniqueIdentifier];
          v70 = [(HMDCameraSnapshotRemoteRelaySender *)v67 initWithSessionID:v26 workQueue:workQueue3 device:remoteSourceDevice accessory:WeakRetained delegate:v29 uniqueIdentifier:uniqueIdentifier snapshotRequestHandler:v66];

          v71 = -[HMDCameraSnapshotRemoteSession initWithSessionID:accessory:snapshotGetter:message:waitPeriod:streamingTierType:cameraLocallyReachable:]([HMDCameraSnapshotRemoteSession alloc], "initWithSessionID:accessory:snapshotGetter:message:waitPeriod:streamingTierType:cameraLocallyReachable:", v26, WeakRetained, v70, v124, [v117 unsignedIntegerValue], 1, 40.0);
          [v29[5] setObject:v71 forKeyedSubscript:v26];
          [(HMDCameraSnapshotManager *)v29 _issueGetSnapshot:v71];

          v25 = v124;
          accessory = v127;
        }

        goto LABEL_60;
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v62 = HMFGetLogIdentifier();
        sessionID2 = [v6 sessionID];
        *buf = 138543618;
        v131 = v62;
        v132 = 2112;
        v133 = sessionID2;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@[%@] Accessory is not reachable and this is a remote gateway capable device", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v64 = MEMORY[0x277CCA9B8];
      v65 = 4;
    }

    else
    {
      if (isiOSDevice())
      {
        isReachable2 = [accessory isReachable];
        v41 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v43 = HMFGetOSLogHandle();
        v44 = os_log_type_enabled(v43, OS_LOG_TYPE_INFO);
        v128 = accessory;
        if (isReachable2)
        {
          if (v44)
          {
            v45 = HMFGetLogIdentifier();
            sessionID3 = [v6 sessionID];
            *buf = 138543618;
            v131 = v45;
            v132 = 2112;
            v133 = sessionID3;
            _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_INFO, "%{public}@[%@] Accessory is reachable and this is iOS device", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v41);
          v25 = messageCopy;
          v26 = v6;
          if (!self)
          {
            goto LABEL_60;
          }

          v125 = v25;
          workQueue4 = [(HMDCameraSnapshotManager *)selfCopy2 workQueue];
          dispatch_assert_queue_V2(workQueue4);

          v48 = objc_autoreleasePoolPush();
          v49 = selfCopy2;
          v50 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
          {
            v51 = HMFGetLogIdentifier();
            sessionID4 = [v26 sessionID];
            *buf = 138543618;
            v131 = v51;
            v132 = 2112;
            v133 = sessionID4;
            _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_INFO, "%{public}@[%@] Creating a snapshot session with HMDCameraSnapshotRemoteStreamSender", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v48);
          streamingTier = [v26 streamingTier];
          remoteSourceDevice2 = [v125 remoteSourceDevice];
          v55 = objc_loadWeakRetained(&v49->_accessory);
          v122 = remoteSourceDevice2;
          if (v55)
          {
            v56 = [HMDCameraSnapshotRemoteStreamSender alloc];
            [(HMDCameraSnapshotManager *)v49 workQueue];
            v57 = v118 = streamingTier;
            [(HMDCameraSnapshotManager *)v49 uniqueIdentifier];
            v59 = v58 = v55;
            v60 = [(HMDCameraSnapshotRemoteStreamSender *)v56 initWithSessionID:v26 workQueue:v57 device:remoteSourceDevice2 accessory:v58 delegate:v49 uniqueIdentifier:v59 snapshotRequestHandler:v49->_snapshotRequestHandler];

            v55 = v58;
            streamingTier = v118;
            v61 = -[HMDCameraSnapshotRemoteSession initWithSessionID:accessory:snapshotGetter:message:waitPeriod:streamingTierType:cameraLocallyReachable:]([HMDCameraSnapshotRemoteSession alloc], "initWithSessionID:accessory:snapshotGetter:message:waitPeriod:streamingTierType:cameraLocallyReachable:", v26, v58, v60, v125, [v118 unsignedIntegerValue], 1, 40.0);
            [(NSMutableDictionary *)v49->_currentRemoteSessions setObject:v61 forKeyedSubscript:v26];
            [(HMDCameraSnapshotManager *)v49 _issueGetSnapshot:v61];

            v25 = v125;
          }

          else
          {
            v92 = objc_autoreleasePoolPush();
            v93 = v49;
            v94 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
            {
              v95 = HMFGetLogIdentifier();
              [v26 sessionID];
              v96 = v120 = v92;
              *buf = 138543618;
              v131 = v95;
              v132 = 2112;
              v133 = v96;
              _os_log_impl(&dword_2531F8000, v94, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to create snapshot session with HMDCameraSnapshotRemoteStreamSender: accessory reference is nil", buf, 0x16u);

              v92 = v120;
            }

            objc_autoreleasePoolPop(v92);
            v60 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
            v25 = v125;
            [v125 respondWithError:v60];
          }
        }

        else
        {
          if (v44)
          {
            v72 = HMFGetLogIdentifier();
            sessionID5 = [v6 sessionID];
            *buf = 138543618;
            v131 = v72;
            v132 = 2112;
            v133 = sessionID5;
            _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_INFO, "%{public}@[%@] Accessory is not reachable and this is iOS device", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v41);
          v25 = messageCopy;
          v26 = v6;
          if (!self)
          {
            goto LABEL_60;
          }

          workQueue5 = [(HMDCameraSnapshotManager *)selfCopy2 workQueue];
          dispatch_assert_queue_V2(workQueue5);

          v75 = objc_autoreleasePoolPush();
          v76 = selfCopy2;
          v77 = HMFGetOSLogHandle();
          v119 = v26;
          if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
          {
            v78 = HMFGetLogIdentifier();
            [v26 sessionID];
            v80 = v79 = v25;
            *buf = 138543618;
            v131 = v78;
            v132 = 2112;
            v133 = v80;
            _os_log_impl(&dword_2531F8000, v77, OS_LOG_TYPE_INFO, "%{public}@[%@] Creating a snapshot session with HMDCameraSnapshotRemoteRelayStream", buf, 0x16u);

            v25 = v79;
            v26 = v119;
          }

          objc_autoreleasePoolPop(v75);
          streamingTier2 = [v26 streamingTier];
          remoteSourceDevice3 = [v25 remoteSourceDevice];
          v82 = objc_loadWeakRetained(v76 + 6);
          if (v82)
          {
            remoteAccessDevice = [v76[16] remoteAccessDevice];
            v112 = remoteAccessDevice;
            if (remoteAccessDevice)
            {
              v84 = remoteAccessDevice;
              contexta = [HMDCameraSnapshotRemoteRelayStream alloc];
              [v76 workQueue];
              v85 = v114 = remoteSourceDevice3;
              uniqueIdentifier2 = [v76 uniqueIdentifier];
              v123 = v82;
              v87 = v25;
              v88 = v76[16];
              v89 = v76[9];
              v108 = v88;
              v25 = v87;
              v90 = [(HMDCameraSnapshotRemoteRelayStream *)contexta initWithSessionID:v119 workQueue:v85 sourceDevice:v114 remoteDevice:v84 accessory:v123 delegate:v76 uniqueIdentifier:uniqueIdentifier2 snapshotRequestHandler:v89 residentMessageHandler:v108];

              v26 = v119;
              v82 = v123;

              v91 = -[HMDCameraSnapshotRemoteSession initWithSessionID:accessory:snapshotGetter:message:waitPeriod:streamingTierType:cameraLocallyReachable:]([HMDCameraSnapshotRemoteSession alloc], "initWithSessionID:accessory:snapshotGetter:message:waitPeriod:streamingTierType:cameraLocallyReachable:", v119, v123, v90, v25, [streamingTier2 unsignedIntegerValue], 0, 60.0);
              [v76[5] setObject:v91 forKeyedSubscript:v119];
              [(HMDCameraSnapshotManager *)v76 _issueGetSnapshot:v91];

              remoteSourceDevice3 = v114;
            }

            else
            {
              context = objc_autoreleasePoolPush();
              v103 = v76;
              v104 = HMFGetOSLogHandle();
              v26 = v119;
              if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
              {
                HMFGetLogIdentifier();
                v105 = v116 = remoteSourceDevice3;
                sessionID6 = [v119 sessionID];
                *buf = 138543618;
                v131 = v105;
                v132 = 2112;
                v133 = sessionID6;
                _os_log_impl(&dword_2531F8000, v104, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to create snapshot session with HMDCameraSnapshotRemoteRelayStream: no remote access device", buf, 0x16u);

                remoteSourceDevice3 = v116;
              }

              objc_autoreleasePoolPop(context);
              v90 = [MEMORY[0x277CCA9B8] hmErrorWithCode:91];
              [v25 respondWithError:v90];
            }

            v102 = v112;
          }

          else
          {
            v97 = objc_autoreleasePoolPush();
            v98 = v76;
            v99 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v100 = v115 = remoteSourceDevice3;
              sessionID7 = [v26 sessionID];
              *buf = 138543618;
              v131 = v100;
              v132 = 2112;
              v133 = sessionID7;
              _os_log_impl(&dword_2531F8000, v99, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to create snapshot session with HMDCameraSnapshotRemoteRelayStream: accessory reference is nil", buf, 0x16u);

              remoteSourceDevice3 = v115;
            }

            objc_autoreleasePoolPop(v97);
            v102 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
            [v25 respondWithError:v102];
            v82 = 0;
          }
        }

        accessory = v128;
LABEL_60:

        goto LABEL_61;
      }

      v64 = MEMORY[0x277CCA9B8];
      v65 = 3;
    }

    v25 = [v64 hmErrorWithCode:v65];
    [messageCopy respondWithError:v25];
LABEL_61:

    goto LABEL_62;
  }

  v9 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    sessionID8 = [v6 sessionID];
    *buf = 138543618;
    v131 = v12;
    v132 = 2112;
    v133 = sessionID8;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[%@] Stream setup is in progress, adding this to remote pending request queue", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  if (self)
  {
    pendingRemoteSnapshotRequestDuringStreamSetup = selfCopy3->_pendingRemoteSnapshotRequestDuringStreamSetup;
  }

  else
  {
    pendingRemoteSnapshotRequestDuringStreamSetup = 0;
  }

  [(NSMutableArray *)pendingRemoteSnapshotRequestDuringStreamSetup addObject:messageCopy];
LABEL_62:

  v107 = *MEMORY[0x277D85DE8];
}

- (id)_createSnapshotSessionIDWithMessage:(void *)message error:
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (self)
  {
    workQueue = [self workQueue];
    dispatch_assert_queue_V2(workQueue);

    WeakRetained = objc_loadWeakRetained(self + 6);
    v8 = [[HMDCameraSnapshotSessionID alloc] initWithAccessory:WeakRetained message:v5];
    if (!v8)
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v27 = 138543618;
        v28 = v20;
        v29 = 2112;
        v30 = v5;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unable to create snapshot session identifier for: %@", &v27, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      if (message)
      {
        [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
        *message = self = 0;
      }

      else
      {
        self = 0;
      }

      goto LABEL_18;
    }

    cameraProfiles = [WeakRetained cameraProfiles];
    anyObject = [cameraProfiles anyObject];
    currentSettings = [anyObject currentSettings];

    if (currentSettings)
    {
      [currentSettings currentAccessMode];
      if ((HMAreSnapshotsAllowedForCameraAccessMode() & 1) == 0)
      {
        v12 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = HMFGetLogIdentifier();
          v16 = HMCameraAccessModeAsString();
          v27 = 138543618;
          v28 = v15;
          v29 = 2112;
          v30 = v16;
          _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Snapshots are not allowed for camera access mode: %@", &v27, 0x16u);
        }

        objc_autoreleasePoolPop(v12);
        if (message)
        {
          [MEMORY[0x277CCA9B8] hmErrorWithCode:10];
          *message = self = 0;
        }

        else
        {
          self = 0;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        v27 = 138543362;
        v28 = v24;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Camera profile settings is not initialized, skipping controller side checks to disallow snapshot requests", &v27, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
    }

    self = v8;
LABEL_17:

LABEL_18:
  }

  v25 = *MEMORY[0x277D85DE8];

  return self;
}

- (void)_issueGetSnapshot:(void *)snapshot
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  workQueue = [snapshot workQueue];
  dispatch_assert_queue_V2(workQueue);

  v5 = objc_autoreleasePoolPush();
  snapshotCopy = snapshot;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    sessionID = [v3 sessionID];
    snapshotReason = [sessionID snapshotReason];
    if (snapshotReason == 1)
    {
      v11 = @"HMDCameraSnapshotReasonEvent";
    }

    else if (snapshotReason)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown snapshot reason: %lu", snapshotReason];
    }

    else
    {
      v11 = @"HMDCameraSnapshotReasonPeriodic";
    }

    sessionID2 = [v3 sessionID];
    v12SessionID = [sessionID2 sessionID];
    *buf = 138543874;
    v22 = v8;
    v23 = 2112;
    v24 = v11;
    v25 = 2112;
    v26 = v12SessionID;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@[%@] Issuing get snapshot request for reason: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  sessionID3 = [v3 sessionID];
  [sessionID3 markMilestoneFor:@"ReceivedSnapshotRequest"];

  snapshotGetter = [v3 snapshotGetter];
  [snapshotGetter getSnapshot:{objc_msgSend(v3, "streamingTierType")}];

  snapshotCompletionTimer = [v3 snapshotCompletionTimer];
  [snapshotCompletionTimer setDelegate:snapshotCopy];

  workQueue2 = [snapshotCopy workQueue];
  snapshotCompletionTimer2 = [v3 snapshotCompletionTimer];
  [snapshotCompletionTimer2 setDelegateQueue:workQueue2];

  snapshotCompletionTimer3 = [v3 snapshotCompletionTimer];
  [snapshotCompletionTimer3 resume];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_handleTakeSnapshotMessage:(id)message
{
  v115 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v108 = 0;
  v6 = [(HMDCameraSnapshotManager *)&self->super.super.isa _createSnapshotSessionIDWithMessage:messageCopy error:&v108];
  v7 = v108;
  if (v6)
  {
    snapshotCharacteristicEventUUID = [v6 snapshotCharacteristicEventUUID];
    v9 = snapshotCharacteristicEventUUID;
    if (self)
    {
      if (self->_currentLocalSession)
      {
        v10 = objc_autoreleasePoolPush();
        selfCopy = self;
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = HMFGetLogIdentifier();
          sessionID = [v6 sessionID];
          currentLocalSession = selfCopy->_currentLocalSession;
          *buf = 138543874;
          v110 = v13;
          v111 = 2112;
          v112 = sessionID;
          v113 = 2112;
          v114 = currentLocalSession;
          _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[%@] There is already a local session %@ in progress, adding this request to that", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v10);
        [(HMDCameraSnapshotLocalSession *)selfCopy->_currentLocalSession addMessage:messageCopy];
        if (v9)
        {
          [(HMDCameraSnapshotCache *)selfCopy->_snapshotCache addEntryWithCharacteristicEventUUID:v9];
        }

        goto LABEL_33;
      }

      if (snapshotCharacteristicEventUUID)
      {
LABEL_10:
        if ([(HMDCameraStreamSnapshotHandler *)self->_streamSnapshotHandler isStreamSetupInProgress])
        {
LABEL_11:
          v16 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = HMFGetLogIdentifier();
            sessionID2 = [v6 sessionID];
            *buf = 138543618;
            v110 = v19;
            v111 = 2112;
            v112 = sessionID2;
            _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@[%@] Stream setup is in progress, adding this to pending request queue", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v16);
          if (self)
          {
            pendingSnapshotRequestDuringStreamSetup = selfCopy2->_pendingSnapshotRequestDuringStreamSetup;
          }

          else
          {
            pendingSnapshotRequestDuringStreamSetup = 0;
          }

          [(NSMutableArray *)pendingSnapshotRequestDuringStreamSetup addObject:messageCopy];
          goto LABEL_33;
        }

        streamSnapshotHandler = self->_streamSnapshotHandler;
LABEL_17:
        if ([(HMDCameraStreamSnapshotHandler *)streamSnapshotHandler isStreamAvailable])
        {
          v23 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = HMFGetLogIdentifier();
            sessionID3 = [v6 sessionID];
            *buf = 138543618;
            v110 = v26;
            v111 = 2112;
            v112 = sessionID3;
            _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@[%@] Taking snapshot through available camera stream", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v23);
          v28 = messageCopy;
          v29 = v6;
          if (self)
          {
            v106 = v28;
            workQueue2 = [(HMDCameraSnapshotManager *)selfCopy3 workQueue];
            dispatch_assert_queue_V2(workQueue2);

            v31 = objc_autoreleasePoolPush();
            v32 = selfCopy3;
            v33 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              v34 = HMFGetLogIdentifier();
              sessionID4 = [v29 sessionID];
              *buf = 138543618;
              v110 = v34;
              v111 = 2112;
              v112 = sessionID4;
              _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@[%@] Creating a snapshot session with HMDCameraStreamSnapshot", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v31);
            snapshotCharacteristicEventUUID2 = [v29 snapshotCharacteristicEventUUID];
            isSnapshotRequestForBulletin = [v29 isSnapshotRequestForBulletin];
            v36 = v29;
            v37 = v32->_dataSource;
            WeakRetained = objc_loadWeakRetained(&v32->_accessory);
            v39 = v32->_streamSnapshotHandler;
            v40 = v32->_networkMonitor;
            v41 = v39;
            reachabilityPath = [(HMFNetMonitor *)v40 reachabilityPath];
            LOBYTE(v98) = isSnapshotRequestForBulletin;
            v104 = v36;
            v43 = v36;
            v28 = v106;
            v44 = [(HMDCameraSnapshotManagerDataSource *)v37 createLocalSnapshotSessionWithID:v43 accessory:WeakRetained snapshotGetter:v41 message:v106 waitPeriod:reachabilityPath reachabilityPath:1 cameraLocallyReachable:30.0 snapshotForNotification:v98];
            v45 = v32->_currentLocalSession;
            v32->_currentLocalSession = v44;

            if (snapshotCharacteristicEventUUID2)
            {
              [(HMDCameraSnapshotCache *)v32->_snapshotCache addEntryWithCharacteristicEventUUID:snapshotCharacteristicEventUUID2];
            }

            [(HMDCameraSnapshotManager *)v32 _issueGetSnapshot:?];

            v29 = v104;
          }

LABEL_32:
LABEL_33:

          goto LABEL_34;
        }

        accessory = [(HMDCameraSnapshotManager *)&self->super.super.isa accessory];
        isReachable = [accessory isReachable];

        if (isReachable)
        {
          v56 = objc_autoreleasePoolPush();
          selfCopy4 = self;
          v58 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
          {
            v59 = HMFGetLogIdentifier();
            sessionID5 = [v6 sessionID];
            *buf = 138543618;
            v110 = v59;
            v111 = 2112;
            v112 = sessionID5;
            _os_log_impl(&dword_2531F8000, v58, OS_LOG_TYPE_INFO, "%{public}@[%@] Taking local snapshot because accessory is reachable", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v56);
          v61 = messageCopy;
          v107 = v6;
          if (self)
          {
            v105 = v61;
            workQueue3 = [(HMDCameraSnapshotManager *)selfCopy4 workQueue];
            dispatch_assert_queue_V2(workQueue3);

            v63 = objc_autoreleasePoolPush();
            v64 = selfCopy4;
            v65 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
            {
              v66 = HMFGetLogIdentifier();
              sessionID6 = [v107 sessionID];
              *buf = 138543618;
              v110 = v66;
              v111 = 2112;
              v112 = sessionID6;
              _os_log_impl(&dword_2531F8000, v65, OS_LOG_TYPE_INFO, "%{public}@[%@] Creating a snapshot session with HMDCameraSnapshotLocal", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v63);
            isSnapshotRequestForBulletin2 = [v107 isSnapshotRequestForBulletin];
            snapshotCharacteristicEventUUID3 = [v107 snapshotCharacteristicEventUUID];
            v68 = objc_loadWeakRetained(&v64->_accessory);
            v69 = v64->_dataSource;
            workQueue4 = [(HMDCameraSnapshotManager *)v64 workQueue];
            v99 = [(HMDCameraSnapshotManagerDataSource *)v69 createSnapshotLocalWithSessionID:v107 workQueue:workQueue4 accessory:v68 delegate:v64 snapshotRequestHandler:v64->_snapshotRequestHandler];

            dataSource = v64->_dataSource;
            v72 = v64->_networkMonitor;
            v73 = dataSource;
            LOBYTE(v98) = isSnapshotRequestForBulletin2;
            v61 = v105;
            v74 = [(HMDCameraSnapshotManagerDataSource *)v73 createLocalSnapshotSessionWithID:v107 accessory:v68 snapshotGetter:v99 message:v105 waitPeriod:[(HMFNetMonitor *)v72 reachabilityPath] reachabilityPath:1 cameraLocallyReachable:30.0 snapshotForNotification:v98];
            v75 = v64->_currentLocalSession;
            v64->_currentLocalSession = v74;

            if (snapshotCharacteristicEventUUID3)
            {
              [(HMDCameraSnapshotCache *)v64->_snapshotCache addEntryWithCharacteristicEventUUID:snapshotCharacteristicEventUUID3];
            }

            [(HMDCameraSnapshotManager *)v64 _issueGetSnapshot:?];
          }

          goto LABEL_33;
        }

        if (self)
        {
          if ([(HMDCameraSnapshotManagerDataSource *)self->_dataSource supportsCameraSnapshotRequestViaRelay])
          {
            v76 = self->_dataSource;
            goto LABEL_50;
          }
        }

        else
        {
          supportsCameraSnapshotRequestViaRelay = [0 supportsCameraSnapshotRequestViaRelay];
          v76 = 0;
          if (supportsCameraSnapshotRequestViaRelay)
          {
LABEL_50:
            v77 = v76;
            if ([(HMDCameraSnapshotManagerDataSource *)v77 isWatchDevice])
            {
              if (self)
              {
                residentMessageHandler = self->_residentMessageHandler;
              }

              else
              {
                residentMessageHandler = 0;
              }

              isUsingCompanionForRemoteAccessDevice = [(HMDCameraResidentMessageHandler *)residentMessageHandler isUsingCompanionForRemoteAccessDevice];

              if (isUsingCompanionForRemoteAccessDevice)
              {
                v80 = objc_autoreleasePoolPush();
                selfCopy5 = self;
                v82 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
                {
                  v83 = HMFGetLogIdentifier();
                  sessionID7 = [v6 sessionID];
                  *buf = 138543618;
                  v110 = v83;
                  v111 = 2112;
                  v112 = sessionID7;
                  _os_log_impl(&dword_2531F8000, v82, OS_LOG_TYPE_INFO, "%{public}@[%@] Taking remote snapshot via stream because accessory is unreachable", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v80);
                [(HMDCameraSnapshotManager *)selfCopy5 _sendSnapshotRequestStreamReceiver:messageCopy snapshotSessionID:v6];
                goto LABEL_33;
              }
            }

            else
            {
            }

            v85 = objc_autoreleasePoolPush();
            selfCopy6 = self;
            v87 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
            {
              v88 = HMFGetLogIdentifier();
              sessionID8 = [v6 sessionID];
              *buf = 138543618;
              v110 = v88;
              v111 = 2112;
              v112 = sessionID8;
              _os_log_impl(&dword_2531F8000, v87, OS_LOG_TYPE_INFO, "%{public}@[%@] Taking remote snapshot via relay because accessory is unreachable", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v85);
            [(HMDCameraSnapshotManager *)selfCopy6 _sendSnapshotRequestRelayReceiver:messageCopy snapshotSessionID:v6];
            goto LABEL_33;
          }
        }

        v92 = objc_autoreleasePoolPush();
        selfCopy7 = self;
        v94 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
        {
          v95 = HMFGetLogIdentifier();
          sessionID9 = [v6 sessionID];
          *buf = 138543618;
          v110 = v95;
          v111 = 2112;
          v112 = sessionID9;
          _os_log_impl(&dword_2531F8000, v94, OS_LOG_TYPE_ERROR, "%{public}@[%@] Cannot take snapshot because accessory is unreachable remote and remote snapshots are unsupported", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v92);
        v97 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
        [messageCopy respondWithError:v97];

        goto LABEL_33;
      }

      snapshotFileManager = self->_snapshotFileManager;
    }

    else
    {
      if (snapshotCharacteristicEventUUID)
      {
        goto LABEL_62;
      }

      snapshotFileManager = 0;
    }

    v47 = snapshotFileManager;
    v28 = [(HMDCameraSnapshotFileManager *)v47 encodedMostRecentSnapshotForMessage:messageCopy];

    if (v28)
    {
      v48 = objc_autoreleasePoolPush();
      selfCopy8 = self;
      v50 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        v51 = HMFGetLogIdentifier();
        sessionID10 = [v6 sessionID];
        *buf = 138543874;
        v110 = v51;
        v111 = 2112;
        v112 = sessionID10;
        v113 = 2112;
        v114 = v28;
        _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_INFO, "%{public}@[%@] Most recent snapshot is still valid, sending it with payload %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v48);
      [messageCopy respondWithPayload:v28];
      goto LABEL_32;
    }

    if (self)
    {
      goto LABEL_10;
    }

LABEL_62:
    isStreamSetupInProgress = [0 isStreamSetupInProgress];
    streamSnapshotHandler = 0;
    if (isStreamSetupInProgress)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  [messageCopy respondWithError:v7];
LABEL_34:

  v53 = *MEMORY[0x277D85DE8];
}

- (void)_sendSnapshotRequestStreamReceiver:(void *)receiver snapshotSessionID:
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  receiverCopy = receiver;
  if (self)
  {
    workQueue = [self workQueue];
    dispatch_assert_queue_V2(workQueue);

    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      sessionID = [receiverCopy sessionID];
      *buf = 138543618;
      v39 = v11;
      v40 = 2112;
      v41 = sessionID;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[%@] Creating a snapshot session with HMDCameraSnapshotRemoteStreamReceiver", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    WeakRetained = objc_loadWeakRetained(selfCopy + 6);
    if (WeakRetained)
    {
      remoteAccessDevice = [selfCopy[16] remoteAccessDevice];
      if (remoteAccessDevice)
      {
        v15 = [HMDCameraSnapshotRemoteStreamReceiver alloc];
        workQueue2 = [selfCopy workQueue];
        uniqueIdentifier = [selfCopy uniqueIdentifier];
        v18 = selfCopy[16];
        v19 = selfCopy[9];
        v20 = [(HMDCameraSnapshotRemoteStreamReceiver *)v15 initWithSessionID:receiverCopy workQueue:workQueue2 accessory:WeakRetained delegate:selfCopy uniqueIdentifier:uniqueIdentifier snapshotRequestHandler:v19 residentMessageHandler:v18 remoteDevice:remoteAccessDevice];

        v21 = selfCopy[17];
        v22 = selfCopy[15];
        v23 = v21;
        reachabilityPath = [v22 reachabilityPath];
        LOBYTE(v37) = [receiverCopy isSnapshotRequestForBulletin];
        v25 = [v23 createLocalSnapshotSessionWithID:receiverCopy accessory:WeakRetained snapshotGetter:v20 message:v5 waitPeriod:reachabilityPath reachabilityPath:0 cameraLocallyReachable:60.0 snapshotForNotification:v37];

        objc_storeStrong(selfCopy + 4, v25);
        [(HMDCameraSnapshotManager *)selfCopy _issueGetSnapshot:?];
      }

      else
      {
        v31 = objc_autoreleasePoolPush();
        v32 = selfCopy;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = HMFGetLogIdentifier();
          sessionID2 = [receiverCopy sessionID];
          *buf = 138543618;
          v39 = v34;
          v40 = 2112;
          v41 = sessionID2;
          _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to create snapshot session with HMDCameraSnapshotRemoteStreamReceiver: no remote access device", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v31);
        v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:91];
        [v5 respondWithError:v20];
      }
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = selfCopy;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        sessionID3 = [receiverCopy sessionID];
        *buf = 138543618;
        v39 = v29;
        v40 = 2112;
        v41 = sessionID3;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to create snapshot session with HMDCameraSnapshotRemoteStreamReceiver: accessory reference is nil", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
      remoteAccessDevice = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [v5 respondWithError:remoteAccessDevice];
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)_sendSnapshotRequestRelayReceiver:(void *)receiver snapshotSessionID:
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a2;
  receiverCopy = receiver;
  if (self)
  {
    workQueue = [self workQueue];
    dispatch_assert_queue_V2(workQueue);

    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      sessionID = [receiverCopy sessionID];
      *buf = 138543618;
      v40 = v11;
      v41 = 2112;
      v42 = sessionID;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[%@] Creating a snapshot session with HMDCameraSnapshotRemoteRelayReceiver", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    WeakRetained = objc_loadWeakRetained(selfCopy + 6);
    if (WeakRetained)
    {
      remoteAccessDevice = [selfCopy[16] remoteAccessDevice];
      if (remoteAccessDevice)
      {
        v15 = selfCopy[17];
        workQueue2 = [selfCopy workQueue];
        uniqueIdentifier = [selfCopy uniqueIdentifier];
        v18 = selfCopy[16];
        v19 = v5;
        v20 = selfCopy[9];
        v21 = [v15 createSnapshotRemoteRelayReceiverWithSessionID:receiverCopy workQueue:workQueue2 accessory:WeakRetained delegate:selfCopy uniqueIdentifier:uniqueIdentifier snapshotRequestHandler:v20 residentMessageHandler:v18 remoteDevice:remoteAccessDevice];

        v5 = v19;
        v22 = selfCopy[17];
        v23 = selfCopy[15];
        v24 = v22;
        reachabilityPath = [v23 reachabilityPath];
        LOBYTE(v38) = [receiverCopy isSnapshotRequestForBulletin];
        v26 = [v24 createLocalSnapshotSessionWithID:receiverCopy accessory:WeakRetained snapshotGetter:v21 message:v5 waitPeriod:reachabilityPath reachabilityPath:0 cameraLocallyReachable:60.0 snapshotForNotification:v38];

        objc_storeStrong(selfCopy + 4, v26);
        [(HMDCameraSnapshotManager *)selfCopy _issueGetSnapshot:?];
      }

      else
      {
        v32 = objc_autoreleasePoolPush();
        v33 = selfCopy;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          sessionID2 = [receiverCopy sessionID];
          *buf = 138543618;
          v40 = v35;
          v41 = 2112;
          v42 = sessionID2;
          _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to create snapshot session with HMDCameraSnapshotRemoteRelayReceiver: no remote access device", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v32);
        v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:91];
        [v5 respondWithError:v21];
      }
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      v28 = selfCopy;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        sessionID3 = [receiverCopy sessionID];
        *buf = 138543618;
        v40 = v30;
        v41 = 2112;
        v42 = sessionID3;
        _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to create snapshot session with HMDCameraSnapshotRemoteRelayReceiver: accessory reference is nil", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
      remoteAccessDevice = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [v5 respondWithError:remoteAccessDevice];
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (NSDictionary)encodedMostRecentSnapshot
{
  v16 = *MEMORY[0x277D85DE8];
  if (self)
  {
    snapshotFileManager = self->_snapshotFileManager;
  }

  else
  {
    snapshotFileManager = 0;
  }

  v4 = snapshotFileManager;
  encodedMostRecentSnapshot = [(HMDCameraSnapshotFileManager *)v4 encodedMostRecentSnapshot];

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = encodedMostRecentSnapshot;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Responding to most recent snapshot with payload: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = *MEMORY[0x277D85DE8];

  return encodedMostRecentSnapshot;
}

- (void)_handleCreateSnapshotFromBulletinContextMessage:(id)message
{
  v43 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [messageCopy stringForKey:@"kCameraSessionID"];
  v7 = [messageCopy stringForKey:*MEMORY[0x277CD26B8]];
  v8 = [messageCopy dateForKey:*MEMORY[0x277CD26B0]];
  v9 = v8;
  if (!v6 || (v7 ? (v10 = v8 == 0) : (v10 = 1), v10))
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      messagePayload = [messageCopy messagePayload];
      *buf = 138543618;
      v38 = v25;
      v39 = 2112;
      v40 = messagePayload;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Snapshot session ID or path or capture date is not present in request: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [messageCopy respondWithError:v12];
  }

  else
  {
    v35 = 0;
    v11 = [HMDCameraSnapshotFile unmanagedSnapshotFileWithFilePath:v7 dateCaptured:v8 error:&v35];
    v12 = v35;
    if (v11)
    {
      if (self)
      {
        snapshotFileManager = self->_snapshotFileManager;
      }

      else
      {
        snapshotFileManager = 0;
      }

      v36 = messageCopy;
      v14 = MEMORY[0x277CBEA60];
      v15 = snapshotFileManager;
      v16 = [v14 arrayWithObjects:&v36 count:1];
      v17 = [(HMDCameraSnapshotFileManager *)v15 createSlotForSnapshotFile:v11 requestMessages:v16 shouldNotifyClients:0];

      v18 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v21 = v33 = v18;
        *buf = 138543874;
        v38 = v21;
        v39 = 2112;
        v40 = v17;
        v41 = 2112;
        v42 = v7;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Created a slot %@ for the snapshot file %@", buf, 0x20u);

        v18 = v33;
      }

      objc_autoreleasePoolPop(v18);
      [messageCopy respondWithPayload:v17];
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        [messageCopy shortDescription];
        v31 = v34 = v27;
        *buf = 138543874;
        v38 = v30;
        v39 = 2112;
        v40 = v31;
        v41 = 2112;
        v42 = v12;
        _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to create snapshot file for request %@: %@", buf, 0x20u);

        v27 = v34;
      }

      objc_autoreleasePoolPop(v27);
      [messageCopy respondWithError:v12];
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_handleReleaseSnapshotMessage:(id)message
{
  messageCopy = message;
  workQueue = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (self)
  {
    snapshotFileManager = self->_snapshotFileManager;
  }

  else
  {
    snapshotFileManager = 0;
  }

  [(HMDCameraSnapshotFileManager *)snapshotFileManager handleReleaseSnapshot:messageCopy];
}

- (void)_handleFillSnapshotSlotMessage:(id)message
{
  messageCopy = message;
  workQueue = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (self)
  {
    snapshotFileManager = self->_snapshotFileManager;
  }

  else
  {
    snapshotFileManager = 0;
  }

  [(HMDCameraSnapshotFileManager *)snapshotFileManager handleFillSnapshotSlot:messageCopy];
}

- (void)handleAccessoryUnconfigured:(id)unconfigured
{
  workQueue = [(HMDCameraSnapshotManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HMDCameraSnapshotManager_handleAccessoryUnconfigured___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __56__HMDCameraSnapshotManager_handleAccessoryUnconfigured___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
  [(HMDCameraSnapshotManager *)v1 _removeAllPendingRequests:v2];
}

- (void)releaseSnapshotWithSlotIdentifier:(id)identifier
{
  v10[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  workQueue = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = *MEMORY[0x277CD1060];
  v10[0] = identifierCopy;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [MEMORY[0x277D0F818] messageWithName:*MEMORY[0x277CCF5C8] messagePayload:v6 responseHandler:&__block_literal_global_45_106242];

  [(HMDCameraSnapshotManager *)self _handleReleaseSnapshotMessage:v7];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)takeSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  workQueue = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDCameraSnapshotManager *)self _handleTakeSnapshotMessage:snapshotCopy];
}

- (void)registerForMessages
{
  v59 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  accessory = [(HMDCameraSnapshotManager *)&self->super.super.isa accessory];
  home = [accessory home];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_handleAccessoryUnconfigured_ name:@"HMDAccessoryDisconnectedNotification" object:accessory];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_handleCameraSettingsDidChangeNotification_ name:@"HMDCameraProfileSettingsDidChangeNotification" object:accessory];

  if (self)
  {
    [(HMDCameraSnapshotMonitorEvents *)self->_monitorServicesManager registerForMessages];
    snapshotFileManager = self->_snapshotFileManager;
  }

  else
  {
    [0 registerForMessages];
    snapshotFileManager = 0;
  }

  [(HMDCameraSnapshotFileManager *)snapshotFileManager registerForMessages];
  v9 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:1 requiresCameraStreamingAccess:1];
  v10 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
  [v10 setRoles:{objc_msgSend(v10, "roles") | 6}];
  v11 = [v10 copy];
  v12 = v11;
  if (self)
  {
    msgDispatcher = self->_msgDispatcher;
    v57 = v11;
    v58 = v9;
    v14 = MEMORY[0x277CBEA60];
    v15 = msgDispatcher;
    v16 = [v14 arrayWithObjects:&v57 count:2];
    [(HMFMessageDispatcher *)v15 registerForMessage:@"kTakeSnapshotRemoteRequestKey" receiver:self policies:v16 selector:sel__handleTakeRemoteSnapshotMessage_];

    v17 = self->_msgDispatcher;
  }

  else
  {
    v57 = v11;
    v58 = v9;
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:2];
    [0 registerForMessage:@"kTakeSnapshotRemoteRequestKey" receiver:0 policies:v50 selector:sel__handleTakeRemoteSnapshotMessage_];

    v17 = 0;
  }

  v56[0] = v12;
  v56[1] = v9;
  v18 = MEMORY[0x277CBEA60];
  v19 = v17;
  v20 = [v18 arrayWithObjects:v56 count:2];
  [(HMFMessageDispatcher *)v19 registerForMessage:@"kTakeSnapshotRemoteReceivedKey" receiver:self policies:v20 selector:sel__handleRemoteSnapshotReceivedMessage_];

  v21 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v22 = v21;
  if (self)
  {
    v23 = self->_msgDispatcher;
  }

  else
  {
    v23 = 0;
  }

  v55[0] = v21;
  v55[1] = v9;
  v24 = MEMORY[0x277CBEA60];
  v25 = v23;
  v26 = [v24 arrayWithObjects:v55 count:2];
  [(HMFMessageDispatcher *)v25 registerForMessage:@"kTakeSnapshotSendFailedNotificationKey" receiver:self policies:v26 selector:sel__handleTakeRemoteSnapshotFailureMessage_];

  v27 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v28 = v27;
  if (self)
  {
    v29 = self->_msgDispatcher;
  }

  else
  {
    v29 = 0;
  }

  v30 = *MEMORY[0x277CCF5D0];
  v54[0] = v27;
  v54[1] = v9;
  v31 = MEMORY[0x277CBEA60];
  v32 = v29;
  v33 = [v31 arrayWithObjects:v54 count:2];
  [(HMFMessageDispatcher *)v32 registerForMessage:v30 receiver:self policies:v33 selector:sel__handleTakeSnapshotMessage_];

  if (self)
  {
    v34 = self->_msgDispatcher;
  }

  else
  {
    v34 = 0;
  }

  v35 = *MEMORY[0x277CCF5C8];
  v53[0] = v28;
  v53[1] = v9;
  v36 = MEMORY[0x277CBEA60];
  v37 = v34;
  v38 = [v36 arrayWithObjects:v53 count:2];
  [(HMFMessageDispatcher *)v37 registerForMessage:v35 receiver:self policies:v38 selector:sel__handleReleaseSnapshotMessage_];

  if (self)
  {
    v39 = self->_msgDispatcher;
  }

  else
  {
    v39 = 0;
  }

  v40 = *MEMORY[0x277CCF5B0];
  v52[0] = v28;
  v52[1] = v9;
  v41 = MEMORY[0x277CBEA60];
  v42 = v39;
  v43 = [v41 arrayWithObjects:v52 count:2];
  [(HMFMessageDispatcher *)v42 registerForMessage:v40 receiver:self policies:v43 selector:sel__handleFillSnapshotSlotMessage_];

  if (self)
  {
    v44 = self->_msgDispatcher;
  }

  else
  {
    v44 = 0;
  }

  v45 = *MEMORY[0x277CCF5A8];
  v51[0] = v28;
  v51[1] = v9;
  v46 = MEMORY[0x277CBEA60];
  v47 = v44;
  v48 = [v46 arrayWithObjects:v51 count:2];
  [(HMFMessageDispatcher *)v47 registerForMessage:v45 receiver:self policies:v48 selector:sel__handleCreateSnapshotFromBulletinContextMessage_];

  v49 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1039];
  [(HMDCameraSnapshotManager *)self _removeAllPendingRequests:v3];

  if (self)
  {
    msgDispatcher = self->_msgDispatcher;
  }

  else
  {
    msgDispatcher = 0;
  }

  [(HMFMessageDispatcher *)msgDispatcher deregisterReceiver:self];
  v5.receiver = self;
  v5.super_class = HMDCameraSnapshotManager;
  [(HMDCameraSnapshotManager *)&v5 dealloc];
}

- (HMDCameraSnapshotManager)initWithAccessory:(id)accessory workQueue:(id)queue streamSnapshotHandler:(id)handler uniqueIdentifier:(id)identifier msgDispatcher:(id)dispatcher networkMonitor:(id)monitor logIdentifier:(id)logIdentifier imageCacheDirectory:(id)self0 residentMessageHandler:(id)self1 snapshotFileManager:(id)self2 dataSource:(id)self3
{
  obj = accessory;
  queueCopy = queue;
  handlerCopy = handler;
  handlerCopy2 = handler;
  identifierCopy = identifier;
  dispatcherCopy = dispatcher;
  dispatcherCopy2 = dispatcher;
  monitorCopy = monitor;
  monitorCopy2 = monitor;
  logIdentifierCopy = logIdentifier;
  directoryCopy = directory;
  messageHandlerCopy = messageHandler;
  managerCopy = manager;
  sourceCopy = source;
  v57.receiver = self;
  v57.super_class = HMDCameraSnapshotManager;
  v24 = [(HMDCameraSnapshotManager *)&v57 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_workQueue, queue);
    objc_storeStrong(&v25->_msgDispatcher, dispatcherCopy);
    objc_storeWeak(&v25->_accessory, obj);
    v26 = [identifierCopy copy];
    uniqueIdentifier = v25->_uniqueIdentifier;
    v25->_uniqueIdentifier = v26;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    currentRemoteSessions = v25->_currentRemoteSessions;
    v25->_currentRemoteSessions = dictionary;

    objc_storeStrong(&v25->_networkMonitor, monitorCopy);
    objc_storeStrong(&v25->_residentMessageHandler, messageHandler);
    objc_storeStrong(&v25->_dataSource, source);
    v30 = logIdentifierCopy;
    v31 = [logIdentifierCopy copy];
    logIdentifier = v25->_logIdentifier;
    v25->_logIdentifier = v31;

    v33 = [directoryCopy copy];
    imageCacheDirectory = v25->_imageCacheDirectory;
    v25->_imageCacheDirectory = v33;

    if (!isWatch())
    {
      v35 = [[HMDCameraSnapshotMonitorEvents alloc] initWithSnapshotManager:v25 accessory:obj workQueue:v25->_workQueue msgDispatcher:dispatcherCopy2];
      monitorServicesManager = v25->_monitorServicesManager;
      v25->_monitorServicesManager = v35;
    }

    v37 = [[HMDCameraSnapshotRequestHandler alloc] initWithAccessory:obj workQueue:queueCopy streamSnapshotHandler:handlerCopy2 imageCacheDirectory:v25->_imageCacheDirectory logID:v25->_logIdentifier];
    snapshotRequestHandler = v25->_snapshotRequestHandler;
    v25->_snapshotRequestHandler = v37;

    v39 = +[HMDDeviceCapabilities deviceCapabilities];
    isResidentCapable = [v39 isResidentCapable];

    if (isResidentCapable)
    {
      v41 = [[HMDCameraSnapshotCache alloc] initWithWorkQueue:queueCopy logIdentifier:v25->_logIdentifier];
      snapshotCache = v25->_snapshotCache;
      v25->_snapshotCache = v41;
    }

    objc_storeStrong(&v25->_snapshotFileManager, manager);
    objc_storeStrong(&v25->_streamSnapshotHandler, handlerCopy);
    array = [MEMORY[0x277CBEB18] array];
    pendingSnapshotRequestDuringStreamSetup = v25->_pendingSnapshotRequestDuringStreamSetup;
    v25->_pendingSnapshotRequestDuringStreamSetup = array;

    array2 = [MEMORY[0x277CBEB18] array];
    pendingRemoteSnapshotRequestDuringStreamSetup = v25->_pendingRemoteSnapshotRequestDuringStreamSetup;
    v25->_pendingRemoteSnapshotRequestDuringStreamSetup = array2;

    [(HMDCameraStreamSnapshotHandler *)v25->_streamSnapshotHandler addDelegate:v25];
    logIdentifierCopy = v30;
  }

  return v25;
}

- (HMDCameraSnapshotManager)initWithAccessory:(id)accessory workQueue:(id)queue streamSnapshotHandler:(id)handler uniqueIdentifier:(id)identifier msgDispatcher:(id)dispatcher networkMonitor:(id)monitor
{
  accessoryCopy = accessory;
  identifierCopy = identifier;
  monitorCopy = monitor;
  dispatcherCopy = dispatcher;
  handlerCopy = handler;
  queueCopy = queue;
  if (isInternalBuild())
  {
    v18 = MEMORY[0x277CCACA8];
    home = [accessoryCopy home];
    name = [home name];
    name2 = [accessoryCopy name];
    identifierCopy = [v18 stringWithFormat:@"%@/%@/%@", name, name2, identifierCopy];
  }

  else
  {
    identifierCopy = [identifierCopy UUIDString];
  }

  v23 = getImagesPath();
  uuid = [accessoryCopy uuid];
  uUIDString = [uuid UUIDString];
  v26 = [v23 stringByAppendingPathComponent:uUIDString];

  v27 = [[HMDCameraResidentMessageHandler alloc] initWithAccessory:accessoryCopy logIdentifier:identifierCopy];
  v28 = [[HMDCameraSnapshotFileManager alloc] initWithWorkQueue:queueCopy imageCacheDirectory:v26 logIdentifier:identifierCopy uniqueIdentifier:identifierCopy messageDispatcher:dispatcherCopy];
  v29 = objc_alloc_init(HMDCameraSnapshotManagerDataSource);
  v33 = [(HMDCameraSnapshotManager *)self initWithAccessory:accessoryCopy workQueue:queueCopy streamSnapshotHandler:handlerCopy uniqueIdentifier:identifierCopy msgDispatcher:dispatcherCopy networkMonitor:monitorCopy logIdentifier:identifierCopy imageCacheDirectory:v26 residentMessageHandler:v27 snapshotFileManager:v28 dataSource:v29];

  return v33;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t77 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t77, &__block_literal_global_103);
  }

  v3 = logCategory__hmf_once_v78;

  return v3;
}

uint64_t __39__HMDCameraSnapshotManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v78;
  logCategory__hmf_once_v78 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver
{
  v46[2] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  receiverCopy = receiver;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = receiverCopy;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  accessory = [(HMDCameraSnapshotManager *)v9 accessory];
  home = [accessory home];

  v12 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:1 requiresCameraStreamingAccess:1];
  v13 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
  [v13 setRoles:{objc_msgSend(v13, "roles") | 6}];
  name5 = [v13 copy];
  name = [messageCopy name];
  v16 = [name isEqualToString:@"kTakeSnapshotRemoteRequestKey"];

  name2 = [messageCopy name];
  name3 = name2;
  if (v16)
  {
    v46[0] = name5;
    v19 = &selRef__handleTakeRemoteSnapshotMessage_;
    v20 = v46;
LABEL_8:
    v20[1] = v12;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    v23 = *v19;
    v24 = HMFCreateMessageBindingWithReceiver();

LABEL_21:
    goto LABEL_22;
  }

  v21 = [name2 isEqualToString:@"kTakeSnapshotRemoteReceivedKey"];

  if (v21)
  {
    name3 = [messageCopy name];
    v45 = name5;
    v19 = &selRef__handleRemoteSnapshotReceivedMessage_;
    v20 = &v45;
    goto LABEL_8;
  }

  v13 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  name4 = [messageCopy name];
  v26 = [name4 isEqualToString:@"kTakeSnapshotSendFailedNotificationKey"];

  if (v26)
  {
    name5 = [messageCopy name];
    v44[0] = v13;
    v44[1] = v12;
    name3 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
LABEL_20:
    v24 = HMFCreateMessageBindingWithReceiver();
    goto LABEL_21;
  }

  v13 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  name6 = [messageCopy name];
  v28 = [name6 isEqualToString:*MEMORY[0x277CCF5D0]];

  name7 = [messageCopy name];
  name5 = name7;
  if (v28)
  {
    v43 = v13;
    v30 = &selRef__handleTakeSnapshotMessage_;
    v31 = &v43;
LABEL_19:
    v31[1] = v12;
    name3 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    v37 = *v30;
    goto LABEL_20;
  }

  v32 = [name7 isEqualToString:*MEMORY[0x277CCF5C8]];

  name8 = [messageCopy name];
  name5 = name8;
  if (v32)
  {
    v42 = v13;
    v30 = &selRef__handleReleaseSnapshotMessage_;
    v31 = &v42;
    goto LABEL_19;
  }

  v34 = [name8 isEqualToString:*MEMORY[0x277CCF5B0]];

  name9 = [messageCopy name];
  name5 = name9;
  if (v34)
  {
    v41 = v13;
    v30 = &selRef__handleFillSnapshotSlotMessage_;
    v31 = &v41;
    goto LABEL_19;
  }

  v36 = [name9 isEqualToString:*MEMORY[0x277CCF5A8]];

  if (v36)
  {
    name5 = [messageCopy name];
    v40 = v13;
    v30 = &selRef__handleCreateSnapshotFromBulletinContextMessage_;
    v31 = &v40;
    goto LABEL_19;
  }

  v24 = 0;
LABEL_22:

  v38 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (void)cleanStaleSnapshotDirectoriesUsingCurrentAccessories:(id)accessories
{
  v45 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  v4 = MEMORY[0x277CBEB98];
  v30 = accessoriesCopy;
  v5 = [accessoriesCopy na_map:&__block_literal_global_106285];
  v6 = [v4 setWithArray:v5];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v8 = getImagesPath();
  v9 = [defaultManager contentsOfDirectoryAtPath:v8 error:0];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v35;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        if (([v6 containsObject:v14] & 1) == 0)
        {
          v15 = getImagesPath();
          v16 = [v15 stringByAppendingPathComponent:v14];

          defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
          v33 = 0;
          v18 = [defaultManager2 removeItemAtPath:v16 error:&v33];
          v19 = v33;

          v20 = objc_autoreleasePoolPush();
          selfCopy = self;
          v22 = HMFGetOSLogHandle();
          v23 = v22;
          if (v18)
          {
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              v24 = HMFGetLogIdentifier();
              *buf = 138543618;
              v39 = v24;
              v40 = 2112;
              v41 = v16;
              v25 = v23;
              v26 = OS_LOG_TYPE_INFO;
              v27 = "%{public}@Removed snapshot directory at path: %@";
              v28 = 22;
              goto LABEL_12;
            }
          }

          else if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v24 = HMFGetLogIdentifier();
            *buf = 138543874;
            v39 = v24;
            v40 = 2112;
            v41 = v16;
            v42 = 2112;
            v43 = v19;
            v25 = v23;
            v26 = OS_LOG_TYPE_ERROR;
            v27 = "%{public}@Failed to remove snapshot directory at path %@: %@";
            v28 = 32;
LABEL_12:
            _os_log_impl(&dword_2531F8000, v25, v26, v27, buf, v28);
          }

          objc_autoreleasePoolPop(v20);
          continue;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v11);
  }

  v29 = *MEMORY[0x277D85DE8];
}

id __81__HMDCameraSnapshotManager_cleanStaleSnapshotDirectoriesUsingCurrentAccessories___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 uuid];
  v3 = [v2 UUIDString];

  return v3;
}

@end
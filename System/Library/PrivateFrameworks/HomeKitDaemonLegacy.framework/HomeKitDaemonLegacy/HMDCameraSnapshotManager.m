@interface HMDCameraSnapshotManager
+ (id)logCategory;
+ (id)messageBindingForDispatcher:(id)a3 message:(id)a4 receiver:(id)a5;
+ (void)cleanStaleSnapshotDirectoriesUsingCurrentAccessories:(id)a3;
- (HMDCameraSnapshotManager)initWithAccessory:(id)a3 workQueue:(id)a4 streamSnapshotHandler:(id)a5 uniqueIdentifier:(id)a6 msgDispatcher:(id)a7 networkMonitor:(id)a8;
- (HMDCameraSnapshotManager)initWithAccessory:(id)a3 workQueue:(id)a4 streamSnapshotHandler:(id)a5 uniqueIdentifier:(id)a6 msgDispatcher:(id)a7 networkMonitor:(id)a8 logIdentifier:(id)a9 imageCacheDirectory:(id)a10 residentMessageHandler:(id)a11 snapshotFileManager:(id)a12 dataSource:(id)a13;
- (NSDictionary)encodedMostRecentSnapshot;
- (id)_createSnapshotSessionIDWithMessage:(void *)a3 error:;
- (id)_sessionWithID:(id *)a1;
- (id)accessory;
- (void)_endSession:(void *)a3 error:;
- (void)_handleCreateSnapshotFromBulletinContextMessage:(id)a3;
- (void)_handleFillSnapshotSlotMessage:(id)a3;
- (void)_handleReleaseSnapshotMessage:(id)a3;
- (void)_handleRemoteSnapshotReceivedMessage:(id)a3;
- (void)_handleTakeRemoteSnapshotFailureMessage:(id)a3;
- (void)_handleTakeRemoteSnapshotMessage:(id)a3;
- (void)_handleTakeSnapshotMessage:(id)a3;
- (void)_issueGetSnapshot:(void *)a1;
- (void)_removeAllPendingRequests:(uint64_t)a1;
- (void)_sendRemoteResponseForSessionID:(void *)a1;
- (void)_sendResponse:(void *)a3 error:(void *)a4 sessionID:;
- (void)_sendSnapshotRequestRelayReceiver:(void *)a3 snapshotSessionID:;
- (void)_sendSnapshotRequestStreamReceiver:(void *)a3 snapshotSessionID:;
- (void)dealloc;
- (void)handleAccessoryUnconfigured:(id)a3;
- (void)handleCameraSettingsDidChangeNotification:(id)a3;
- (void)registerForMessages;
- (void)releaseSnapshotWithSlotIdentifier:(id)a3;
- (void)snapshotLocal:(id)a3 didSaveSnapshotFile:(id)a4 error:(id)a5 sessionID:(id)a6;
- (void)snapshotRelayReceiver:(id)a3 didSaveSnapshotFile:(id)a4 error:(id)a5 sessionID:(id)a6;
- (void)snapshotRelayReceiver:(id)a3 didStartImageCaptureForSessionID:(id)a4;
- (void)snapshotRelaySender:(id)a3 didCompleteSendImage:(id)a4 sessionID:(id)a5;
- (void)snapshotRelaySender:(id)a3 didSaveSnapshotFile:(id)a4 sessionID:(id)a5;
- (void)snapshotRelaySender:(id)a3 didStartImageCaptureForSessionID:(id)a4;
- (void)snapshotRelayStream:(id)a3 didCompleteSendImage:(id)a4 sessionID:(id)a5;
- (void)snapshotRelayStream:(id)a3 didStartImageCaptureForSessionID:(id)a4;
- (void)snapshotStreamReceiver:(id)a3 didSaveSnapshotFile:(id)a4 error:(id)a5 sessionID:(id)a6;
- (void)snapshotStreamReceiver:(id)a3 didStartImageCaptureForSessionID:(id)a4;
- (void)snapshotStreamSender:(id)a3 didCompleteSendImage:(id)a4 sessionID:(id)a5;
- (void)snapshotStreamSender:(id)a3 didStartImageCaptureForSessionID:(id)a4;
- (void)streamSnapshotHandler:(id)a3 didChangeStreamSetupInProgress:(BOOL)a4;
- (void)streamSnapshotHandler:(id)a3 didGetLastSnapshot:(id)a4;
- (void)streamSnapshotHandler:(id)a3 didGetNewSnapshot:(id)a4;
- (void)takeSnapshot:(id)a3;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDCameraSnapshotManager

- (void)handleCameraSettingsDidChangeNotification:(id)a3
{
  v4 = [(HMDCameraSnapshotManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HMDCameraSnapshotManager_handleCameraSettingsDidChangeNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v4, block);
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

- (void)_removeAllPendingRequests:(uint64_t)a1
{
  v64 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    if (*(a1 + 32))
    {
      v4 = objc_autoreleasePoolPush();
      v5 = a1;
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = HMFGetLogIdentifier();
        v8 = v5[4];
        *buf = 138543874;
        v59 = v7;
        v60 = 2112;
        v61 = v8;
        v62 = 2112;
        v63 = v3;
        _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failing current local session %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v4);
      [v5[4] respondWithPayload:0 error:v3];
      objc_storeStrong(v5 + 4, 0);
    }

    if ([*(a1 + 40) count])
    {
      v9 = objc_autoreleasePoolPush();
      v10 = a1;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v13 = v10[5];
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
      v14 = v10[5];
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
            v20 = v10[5];
            v21 = [v20 objectForKeyedSubscript:v19];
            [v21 respondWithPayload:0 error:v3];
          }

          v16 = [v14 countByEnumeratingWithState:&v51 objects:v57 count:16];
        }

        while (v16);
      }

      [v10[5] removeAllObjects];
    }

    if ([*(a1 + 104) count])
    {
      v22 = objc_autoreleasePoolPush();
      v23 = a1;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v26 = v23[13];
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
      v27 = v23[13];
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

      [v23[13] removeAllObjects];
    }

    if ([*(a1 + 112) count])
    {
      v32 = objc_autoreleasePoolPush();
      v33 = a1;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = HMFGetLogIdentifier();
        v36 = v33[14];
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
      v37 = v33[14];
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

      [v33[14] removeAllObjects];
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)streamSnapshotHandler:(id)a3 didChangeStreamSetupInProgress:(BOOL)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(v7);

  if (!a4)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v38 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Received callback that stream setup is not in progress anymore", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    if (v9)
    {
      v12 = [(NSMutableArray *)v9->_pendingSnapshotRequestDuringStreamSetup copy];
      pendingSnapshotRequestDuringStreamSetup = v9->_pendingSnapshotRequestDuringStreamSetup;
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

          [(HMDCameraSnapshotManager *)v9 _handleTakeSnapshotMessage:*(*(&v31 + 1) + 8 * i)];
        }

        v16 = [v14 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v16);
    }

    if (v9)
    {
      v19 = [(NSMutableArray *)v9->_pendingRemoteSnapshotRequestDuringStreamSetup copy];
      pendingRemoteSnapshotRequestDuringStreamSetup = v9->_pendingRemoteSnapshotRequestDuringStreamSetup;
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

          [(HMDCameraSnapshotManager *)v9 _handleTakeRemoteSnapshotMessage:*(*(&v27 + 1) + 8 * j), v27];
        }

        v23 = [v21 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v23);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)streamSnapshotHandler:(id)a3 didGetLastSnapshot:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    if (v10)
    {
      currentLocalSession = v10->_currentLocalSession;
    }

    else
    {
      currentLocalSession = 0;
    }

    v14 = currentLocalSession;
    v15 = [(HMDCameraSnapshotSession *)v14 sessionID];
    v16 = [v15 sessionID];
    *buf = 138543874;
    v36 = v12;
    v37 = 2112;
    v38 = v16;
    v39 = 2112;
    v40 = v7;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[%@] Stream captured last snapshot: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v17 = [HMDCameraSnapshotFile alloc];
  if (v10)
  {
    imageCacheDirectory = v10->_imageCacheDirectory;
  }

  else
  {
    imageCacheDirectory = 0;
  }

  v34 = 0;
  v19 = imageCacheDirectory;
  v20 = [(HMDCameraSnapshotFile *)v17 initWithDirectory:v19 snapshot:v7 error:&v34];
  v21 = v34;

  if (v20)
  {
    if (v10)
    {
      snapshotFileManager = v10->_snapshotFileManager;
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
    v25 = v10;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      v33 = v6;
      if (v10)
      {
        v28 = v25->_currentLocalSession;
      }

      else
      {
        v28 = 0;
      }

      v29 = v28;
      v30 = [(HMDCameraSnapshotSession *)v29 sessionID];
      v31 = [v30 sessionID];
      *buf = 138543874;
      v36 = v27;
      v37 = 2112;
      v38 = v31;
      v39 = 2112;
      v40 = v21;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to create snapshot file from last stream snapshot: %@", buf, 0x20u);

      v6 = v33;
    }

    objc_autoreleasePoolPop(v24);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)streamSnapshotHandler:(id)a3 didGetNewSnapshot:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v7)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      if (v10)
      {
        currentLocalSession = v10->_currentLocalSession;
      }

      else
      {
        currentLocalSession = 0;
      }

      v15 = currentLocalSession;
      v16 = [(HMDCameraSnapshotSession *)v15 sessionID];
      v17 = [v16 sessionID];
      *buf = 138543874;
      v46 = v13;
      v47 = 2112;
      v48 = v17;
      v49 = 2112;
      v50 = v7;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[%@] Stream captured a new snapshot: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v18 = [HMDCameraSnapshotFile alloc];
    if (v10)
    {
      imageCacheDirectory = v10->_imageCacheDirectory;
    }

    else
    {
      imageCacheDirectory = 0;
    }

    v44 = 0;
    v20 = imageCacheDirectory;
    v21 = [(HMDCameraSnapshotFile *)v18 initWithDirectory:v20 snapshot:v7 error:&v44];
    v22 = v44;

    if (v21)
    {
      if (v10)
      {
        v23 = v10->_currentLocalSession;
      }

      else
      {
        v23 = 0;
      }

      v24 = [(HMDCameraSnapshotSession *)v23 sessionID];
      [(HMDCameraSnapshotManager *)v10 _sendResponse:v21 error:0 sessionID:v24];
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      v32 = v10;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        v42 = v31;
        v43 = v6;
        if (v10)
        {
          v35 = v32->_currentLocalSession;
        }

        else
        {
          v35 = 0;
        }

        v36 = v35;
        v37 = [(HMDCameraSnapshotSession *)v36 sessionID];
        v38 = [v37 sessionID];
        *buf = 138543874;
        v46 = v34;
        v47 = 2112;
        v48 = v38;
        v49 = 2112;
        v50 = v22;
        _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to create snapshot file from new stream snapshot: %@", buf, 0x20u);

        v31 = v42;
        v6 = v43;
      }

      objc_autoreleasePoolPop(v31);
      if (v10)
      {
        v39 = v32->_currentLocalSession;
      }

      else
      {
        v39 = 0;
      }

      v40 = v39;
      v24 = [(HMDCameraSnapshotSession *)v40 sessionID];
      [(HMDCameraSnapshotManager *)v32 _sendResponse:v22 error:v24 sessionID:?];
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      if (v10)
      {
        v26 = v10->_currentLocalSession;
      }

      else
      {
        v26 = 0;
      }

      v27 = v26;
      v28 = [(HMDCameraSnapshotSession *)v27 sessionID];
      v29 = [v28 sessionID];
      *buf = 138543618;
      v46 = v25;
      v47 = 2112;
      v48 = v29;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@[%@] Stream failed to capture a new snapshot", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    if (v10)
    {
      v30 = v10->_currentLocalSession;
    }

    else
    {
      v30 = 0;
    }

    v21 = [(HMDCameraSnapshotSession *)v30 sessionID];
    [(HMDCameraSnapshotManager *)v10 _sendResponse:v22 error:v21 sessionID:?];
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)_sendResponse:(void *)a3 error:(void *)a4 sessionID:
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = [a1 workQueue];
    dispatch_assert_queue_V2(v10);

    v11 = [(HMDCameraSnapshotManager *)a1 _sessionWithID:v9];
    v12 = v11;
    if (v11)
    {
      v28 = v11;
      v29 = v9;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v13 = [v11 sessionMessages];
      v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
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
              objc_enumerationMutation(v13);
            }

            v18 = [*(*(&v30 + 1) + 8 * i) stringForKey:@"kCameraProactiveSessionID"];
            if (v18)
            {
              v19 = *(a1 + 80);
              if (v7)
              {
                [v19 setSnapshotFile:v7 forEntryWithCharacteristicEventUUID:v18];
              }

              else
              {
                [v19 removeEntryWithCharacteristicEventUUID:v18 error:v8];
              }
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v15);
      }

      if (v7)
      {
        v20 = *(a1 + 88);
        v12 = v28;
        v21 = [v28 sessionMessages];
        v22 = [v20 createSlotForSnapshotFile:v7 requestMessages:v21 shouldNotifyClients:1];

        [v28 respondWithPayload:v22 error:0];
      }

      else
      {
        v12 = v28;
        [v28 respondWithPayload:0 error:v8];
      }

      v9 = v29;
      [(HMDCameraSnapshotManager *)a1 _endSession:v29 error:v8];
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = a1;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543618;
        v36 = v26;
        v37 = 2112;
        v38 = v9;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Asked to send response for an unknown session ID: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (id)_sessionWithID:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 workQueue];
    dispatch_assert_queue_V2(v4);

    v5 = [a1[4] sessionID];
    v6 = [v5 isEqual:v3];

    if (v6)
    {
      v7 = a1[4];
    }

    else
    {
      v7 = [a1[5] objectForKeyedSubscript:v3];
    }

    a1 = v7;
  }

  return a1;
}

- (void)_endSession:(void *)a3 error:
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [a1 workQueue];
    dispatch_assert_queue_V2(v7);

    v8 = a1[4];
    v9 = [v8 sessionID];
    v10 = [v9 isEqual:v5];

    v11 = objc_autoreleasePoolPush();
    v12 = a1;
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
      [v12[4] respondWithPayload:0 error:v6];
      v16 = v12[4];
      v12[4] = 0;
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
      v16 = [v12[5] objectForKeyedSubscript:v5];
      [v16 respondWithPayload:0 error:v6];
      [v12[5] removeObjectForKey:v5];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)snapshotRelayStream:(id)a3 didCompleteSendImage:(id)a4 sessionID:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v17 = 138543874;
    v18 = v15;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@%@ Received HMDCameraSnapshotRemoteRelayStreamDelegate callback that the image transfer has completed with error %@", &v17, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  [(HMDCameraSnapshotManager *)&v13->super.super.isa _endSession:v10 error:v9];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)snapshotRelayStream:(id)a3 didStartImageCaptureForSessionID:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v12;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@%@ Received HMDCameraSnapshotRemoteRelayStreamDelegate callback that the image capture has started", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDCameraSnapshotManager *)v10 _sendRemoteResponseForSessionID:v7];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_sendRemoteResponseForSessionID:(void *)a1
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = [a1 workQueue];
    dispatch_assert_queue_V2(v4);

    v5 = [(HMDCameraSnapshotManager *)a1 _sessionWithID:v3];
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
      v7 = a1;
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
      v7 = a1;
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

- (void)snapshotStreamSender:(id)a3 didCompleteSendImage:(id)a4 sessionID:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v10 sessionID];
    v18 = 138543874;
    v19 = v15;
    v20 = 2112;
    v21 = v16;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@[%@] Received HMDCameraSnapshotRemoteStreamSenderDelegate callback that the image transfer has completed with error %@", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  [(HMDCameraSnapshotManager *)&v13->super.super.isa _endSession:v10 error:v9];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)snapshotStreamSender:(id)a3 didStartImageCaptureForSessionID:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v7 sessionID];
    v15 = 138543618;
    v16 = v12;
    v17 = 2112;
    v18 = v13;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[%@] Received HMDCameraSnapshotRemoteStreamSenderDelegate callback that the image capture has started", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDCameraSnapshotManager *)v10 _sendRemoteResponseForSessionID:v7];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)snapshotStreamReceiver:(id)a3 didSaveSnapshotFile:(id)a4 error:(id)a5 sessionID:(id)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(v14);

  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    v19 = [v13 sessionID];
    v21 = 138543874;
    v22 = v18;
    v23 = 2112;
    v24 = v19;
    v25 = 2112;
    v26 = v12;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@[%@] Received HMDCameraSnapshotRemoteStreamReceiverDelegate callback that the image has been saved after relay with error %@", &v21, 0x20u);
  }

  objc_autoreleasePoolPop(v15);
  [(HMDCameraSnapshotManager *)v16 _sendResponse:v11 error:v12 sessionID:v13];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)snapshotStreamReceiver:(id)a3 didStartImageCaptureForSessionID:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v7 sessionID];
    v15 = 138543618;
    v16 = v12;
    v17 = 2112;
    v18 = v13;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[%@] Received HMDCameraSnapshotRemoteStreamReceiverDelegate callback that the image capture has started after relay", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)snapshotRelaySender:(id)a3 didSaveSnapshotFile:(id)a4 sessionID:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v10 sessionID];
    v17 = [v10 snapshotCharacteristicEventUUID];
    v23 = 138544130;
    v24 = v15;
    v25 = 2112;
    v26 = v16;
    v27 = 2112;
    v28 = v9;
    v29 = 2112;
    v30 = v17;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@[%@] Received HMDCameraSnapshotRemoteRelaySenderDelegate callback that snapshotFile:%@ has been saved for snapshotCharacteristicEventUUID:%@", &v23, 0x2Au);
  }

  objc_autoreleasePoolPop(v12);
  v18 = [v10 snapshotCharacteristicEventUUID];

  if (v18)
  {
    if (v13)
    {
      snapshotCache = v13->_snapshotCache;
    }

    else
    {
      snapshotCache = 0;
    }

    v20 = snapshotCache;
    v21 = [v10 snapshotCharacteristicEventUUID];
    [(HMDCameraSnapshotCache *)v20 setSnapshotFile:v9 forEntryWithCharacteristicEventUUID:v21];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)snapshotRelaySender:(id)a3 didCompleteSendImage:(id)a4 sessionID:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v10 sessionID];
    v18 = 138543874;
    v19 = v15;
    v20 = 2112;
    v21 = v16;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@[%@] Received HMDCameraSnapshotRemoteRelaySenderDelegate callback that the image transfer has completed with error %@", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  [(HMDCameraSnapshotManager *)&v13->super.super.isa _endSession:v10 error:v9];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)snapshotRelaySender:(id)a3 didStartImageCaptureForSessionID:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v7 sessionID];
    v15 = 138543618;
    v16 = v12;
    v17 = 2112;
    v18 = v13;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[%@] Received HMDCameraSnapshotRemoteRelaySenderDelegate callback that the image capture has started", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDCameraSnapshotManager *)v10 _sendRemoteResponseForSessionID:v7];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)snapshotRelayReceiver:(id)a3 didSaveSnapshotFile:(id)a4 error:(id)a5 sessionID:(id)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(v14);

  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    v19 = [v13 sessionID];
    v21 = 138543874;
    v22 = v18;
    v23 = 2112;
    v24 = v19;
    v25 = 2112;
    v26 = v12;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@[%@] Received HMDCameraSnapshotRemoteRelayReceiverDelegate callback that the image has been saved after relay with error %@", &v21, 0x20u);
  }

  objc_autoreleasePoolPop(v15);
  [(HMDCameraSnapshotManager *)v16 _sendResponse:v11 error:v12 sessionID:v13];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)snapshotRelayReceiver:(id)a3 didStartImageCaptureForSessionID:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v7 sessionID];
    v15 = 138543618;
    v16 = v12;
    v17 = 2112;
    v18 = v13;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[%@] Received HMDCameraSnapshotRemoteRelayReceiverDelegate callback that the image capture has started after relay", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)snapshotLocal:(id)a3 didSaveSnapshotFile:(id)a4 error:(id)a5 sessionID:(id)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(v14);

  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    v19 = [v13 sessionID];
    v21 = 138543874;
    v22 = v18;
    v23 = 2112;
    v24 = v19;
    v25 = 2112;
    v26 = v12;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@[%@] Received HMDCameraSnapshotLocalDelegate callback that the image has been saved %@", &v21, 0x20u);
  }

  objc_autoreleasePoolPop(v15);
  [(HMDCameraSnapshotManager *)v16 _sendResponse:v11 error:v12 sessionID:v13];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_handleTakeRemoteSnapshotFailureMessage:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [HMDCameraSnapshotSessionID alloc];
  v7 = [(HMDCameraSnapshotManager *)&self->super.super.isa accessory];
  v8 = [(HMDCameraSnapshotSessionID *)v6 initWithAccessory:v7 message:v4];

  if (v8)
  {
    v9 = [(HMDCameraSnapshotManager *)&self->super.super.isa _sessionWithID:v8];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 snapshotGetter];
      if ([v11 conformsToProtocol:&unk_2866B91B8])
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      if (v13)
      {
        v14 = [(HMDCameraSnapshotSessionID *)v4 messagePayload];
        v15 = [v14 errorFromDataForKey:@"kCameraSessionError"];

        v16 = objc_autoreleasePoolPush();
        v17 = self;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = HMFGetLogIdentifier();
          v20 = [(HMDCameraSessionID *)v8 sessionID];
          v35 = 138543874;
          v36 = v19;
          v37 = 2112;
          v38 = v20;
          v39 = 2112;
          v40 = v15;
          _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@[%@] Handling remote snapshot failure: %@", &v35, 0x20u);
        }

        objc_autoreleasePoolPop(v16);
        [v13 snapshotSendFailed:v15];
        [(HMDCameraSnapshotSessionID *)v4 respondWithSuccess];
      }

      else
      {
        v29 = objc_autoreleasePoolPush();
        v30 = self;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = HMFGetLogIdentifier();
          v33 = [(HMDCameraSessionID *)v8 sessionID];
          v35 = 138543618;
          v36 = v32;
          v37 = 2112;
          v38 = v33;
          _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@[%@] Cannot handle remote snapshot failure for session without a receiver", &v35, 0x16u);
        }

        objc_autoreleasePoolPop(v29);
        v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
        [(HMDCameraSnapshotSessionID *)v4 respondWithError:v15];
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = self;
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
      [(HMDCameraSnapshotSessionID *)v4 respondWithError:v13];
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v35 = 138543618;
      v36 = v24;
      v37 = 2112;
      v38 = v4;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to create snapshot session ID from remote snapshot failure message: %@", &v35, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [(HMDCameraSnapshotSessionID *)v4 respondWithError:v10];
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_handleRemoteSnapshotReceivedMessage:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [HMDCameraSnapshotSessionID alloc];
  v7 = [(HMDCameraSnapshotManager *)&self->super.super.isa accessory];
  v8 = [(HMDCameraSnapshotSessionID *)v6 initWithAccessory:v7 message:v4];

  if (v8)
  {
    v9 = [(HMDCameraSnapshotManager *)&self->super.super.isa _sessionWithID:v8];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 snapshotGetter];
      v12 = [v11 conformsToProtocol:&unk_28665F1F8];

      if (v12)
      {
        v13 = [v10 snapshotGetter];
        v14 = objc_autoreleasePoolPush();
        v15 = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = HMFGetLogIdentifier();
          v18 = [(HMDCameraSessionID *)v8 sessionID];
          v29 = 138543618;
          v30 = v17;
          v31 = 2112;
          v32 = v18;
          _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@[%@] Sending snapshot received confirmation to the sender", &v29, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
        [v13 snapshotTransferComplete];
      }

      [(HMDCameraSnapshotSessionID *)v4 respondWithSuccess];
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = self;
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
      [(HMDCameraSnapshotSessionID *)v4 respondWithError:v27];

      v10 = 0;
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v29 = 138543618;
      v30 = v22;
      v31 = 2112;
      v32 = v4;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to create snapshot session ID from remote snapshot received message: %@", &v29, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [(HMDCameraSnapshotSessionID *)v4 respondWithError:v10];
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)timerDidFire:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = v4;
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
    v9 = [v8 snapshotSession];
    if (v9)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v17 = 138543618;
        v18 = v13;
        v19 = 2112;
        v20 = v9;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Session has timed out: %@", &v17, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:8];
      v15 = [v9 sessionID];
      [(HMDCameraSnapshotManager *)v11 _sendResponse:v14 error:v15 sessionID:?];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_handleTakeRemoteSnapshotMessage:(id)a3
{
  v134 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v129 = 0;
  v6 = [(HMDCameraSnapshotManager *)&self->super.super.isa _createSnapshotSessionIDWithMessage:v4 error:&v129];
  v7 = v129;
  if (!v6)
  {
    [v4 respondWithError:v7];
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
    v15 = [(HMDCameraSnapshotManager *)&self->super.super.isa accessory];
    v16 = +[HMDDeviceCapabilities deviceCapabilities];
    v17 = [v16 isResidentCapable];

    if (v17)
    {
      v18 = [v15 isReachable];
      v19 = objc_autoreleasePoolPush();
      v20 = self;
      v21 = HMFGetOSLogHandle();
      v22 = v21;
      if (v18)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v23 = HMFGetLogIdentifier();
          v24 = [v6 sessionID];
          *buf = 138543618;
          v131 = v23;
          v132 = 2112;
          v133 = v24;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@[%@] Accessory is reachable and this is remote gateway capable device", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v19);
        v25 = v4;
        v26 = v6;
        if (self)
        {
          v27 = [(HMDCameraSnapshotManager *)v20 workQueue];
          dispatch_assert_queue_V2(v27);

          v28 = objc_autoreleasePoolPush();
          v29 = v20;
          v30 = HMFGetOSLogHandle();
          v124 = v25;
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v31 = HMFGetLogIdentifier();
            [v26 sessionID];
            v33 = v32 = v15;
            *buf = 138543618;
            v131 = v31;
            v132 = 2112;
            v133 = v33;
            _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@[%@] Creating a snapshot session with HMDCameraSnapshotRemoteRelaySender", buf, 0x16u);

            v15 = v32;
            v25 = v124;
          }

          objc_autoreleasePoolPop(v28);
          v34 = [v25 stringForKey:@"kCameraProactiveSessionID"];
          v117 = [v25 numberForKey:@"kCameraStreamingTierType"];
          v113 = [v25 remoteSourceDevice];
          WeakRetained = objc_loadWeakRetained(v29 + 6);
          v127 = v15;
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
          v68 = [v29 workQueue];
          v69 = [v29 uniqueIdentifier];
          v70 = [(HMDCameraSnapshotRemoteRelaySender *)v67 initWithSessionID:v26 workQueue:v68 device:v113 accessory:WeakRetained delegate:v29 uniqueIdentifier:v69 snapshotRequestHandler:v66];

          v71 = -[HMDCameraSnapshotRemoteSession initWithSessionID:accessory:snapshotGetter:message:waitPeriod:streamingTierType:cameraLocallyReachable:]([HMDCameraSnapshotRemoteSession alloc], "initWithSessionID:accessory:snapshotGetter:message:waitPeriod:streamingTierType:cameraLocallyReachable:", v26, WeakRetained, v70, v124, [v117 unsignedIntegerValue], 1, 40.0);
          [v29[5] setObject:v71 forKeyedSubscript:v26];
          [(HMDCameraSnapshotManager *)v29 _issueGetSnapshot:v71];

          v25 = v124;
          v15 = v127;
        }

        goto LABEL_60;
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v62 = HMFGetLogIdentifier();
        v63 = [v6 sessionID];
        *buf = 138543618;
        v131 = v62;
        v132 = 2112;
        v133 = v63;
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
        v40 = [v15 isReachable];
        v41 = objc_autoreleasePoolPush();
        v42 = self;
        v43 = HMFGetOSLogHandle();
        v44 = os_log_type_enabled(v43, OS_LOG_TYPE_INFO);
        v128 = v15;
        if (v40)
        {
          if (v44)
          {
            v45 = HMFGetLogIdentifier();
            v46 = [v6 sessionID];
            *buf = 138543618;
            v131 = v45;
            v132 = 2112;
            v133 = v46;
            _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_INFO, "%{public}@[%@] Accessory is reachable and this is iOS device", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v41);
          v25 = v4;
          v26 = v6;
          if (!self)
          {
            goto LABEL_60;
          }

          v125 = v25;
          v47 = [(HMDCameraSnapshotManager *)v42 workQueue];
          dispatch_assert_queue_V2(v47);

          v48 = objc_autoreleasePoolPush();
          v49 = v42;
          v50 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
          {
            v51 = HMFGetLogIdentifier();
            v52 = [v26 sessionID];
            *buf = 138543618;
            v131 = v51;
            v132 = 2112;
            v133 = v52;
            _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_INFO, "%{public}@[%@] Creating a snapshot session with HMDCameraSnapshotRemoteStreamSender", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v48);
          v53 = [v26 streamingTier];
          v54 = [v125 remoteSourceDevice];
          v55 = objc_loadWeakRetained(&v49->_accessory);
          v122 = v54;
          if (v55)
          {
            v56 = [HMDCameraSnapshotRemoteStreamSender alloc];
            [(HMDCameraSnapshotManager *)v49 workQueue];
            v57 = v118 = v53;
            [(HMDCameraSnapshotManager *)v49 uniqueIdentifier];
            v59 = v58 = v55;
            v60 = [(HMDCameraSnapshotRemoteStreamSender *)v56 initWithSessionID:v26 workQueue:v57 device:v54 accessory:v58 delegate:v49 uniqueIdentifier:v59 snapshotRequestHandler:v49->_snapshotRequestHandler];

            v55 = v58;
            v53 = v118;
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
            v73 = [v6 sessionID];
            *buf = 138543618;
            v131 = v72;
            v132 = 2112;
            v133 = v73;
            _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_INFO, "%{public}@[%@] Accessory is not reachable and this is iOS device", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v41);
          v25 = v4;
          v26 = v6;
          if (!self)
          {
            goto LABEL_60;
          }

          v74 = [(HMDCameraSnapshotManager *)v42 workQueue];
          dispatch_assert_queue_V2(v74);

          v75 = objc_autoreleasePoolPush();
          v76 = v42;
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
          v126 = [v26 streamingTier];
          v81 = [v25 remoteSourceDevice];
          v82 = objc_loadWeakRetained(v76 + 6);
          if (v82)
          {
            v83 = [v76[16] remoteAccessDevice];
            v112 = v83;
            if (v83)
            {
              v84 = v83;
              contexta = [HMDCameraSnapshotRemoteRelayStream alloc];
              [v76 workQueue];
              v85 = v114 = v81;
              v86 = [v76 uniqueIdentifier];
              v123 = v82;
              v87 = v25;
              v88 = v76[16];
              v89 = v76[9];
              v108 = v88;
              v25 = v87;
              v90 = [(HMDCameraSnapshotRemoteRelayStream *)contexta initWithSessionID:v119 workQueue:v85 sourceDevice:v114 remoteDevice:v84 accessory:v123 delegate:v76 uniqueIdentifier:v86 snapshotRequestHandler:v89 residentMessageHandler:v108];

              v26 = v119;
              v82 = v123;

              v91 = -[HMDCameraSnapshotRemoteSession initWithSessionID:accessory:snapshotGetter:message:waitPeriod:streamingTierType:cameraLocallyReachable:]([HMDCameraSnapshotRemoteSession alloc], "initWithSessionID:accessory:snapshotGetter:message:waitPeriod:streamingTierType:cameraLocallyReachable:", v119, v123, v90, v25, [v126 unsignedIntegerValue], 0, 60.0);
              [v76[5] setObject:v91 forKeyedSubscript:v119];
              [(HMDCameraSnapshotManager *)v76 _issueGetSnapshot:v91];

              v81 = v114;
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
                v105 = v116 = v81;
                v106 = [v119 sessionID];
                *buf = 138543618;
                v131 = v105;
                v132 = 2112;
                v133 = v106;
                _os_log_impl(&dword_2531F8000, v104, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to create snapshot session with HMDCameraSnapshotRemoteRelayStream: no remote access device", buf, 0x16u);

                v81 = v116;
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
              v100 = v115 = v81;
              v101 = [v26 sessionID];
              *buf = 138543618;
              v131 = v100;
              v132 = 2112;
              v133 = v101;
              _os_log_impl(&dword_2531F8000, v99, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to create snapshot session with HMDCameraSnapshotRemoteRelayStream: accessory reference is nil", buf, 0x16u);

              v81 = v115;
            }

            objc_autoreleasePoolPop(v97);
            v102 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
            [v25 respondWithError:v102];
            v82 = 0;
          }
        }

        v15 = v128;
LABEL_60:

        goto LABEL_61;
      }

      v64 = MEMORY[0x277CCA9B8];
      v65 = 3;
    }

    v25 = [v64 hmErrorWithCode:v65];
    [v4 respondWithError:v25];
LABEL_61:

    goto LABEL_62;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v6 sessionID];
    *buf = 138543618;
    v131 = v12;
    v132 = 2112;
    v133 = v13;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[%@] Stream setup is in progress, adding this to remote pending request queue", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  if (self)
  {
    pendingRemoteSnapshotRequestDuringStreamSetup = v10->_pendingRemoteSnapshotRequestDuringStreamSetup;
  }

  else
  {
    pendingRemoteSnapshotRequestDuringStreamSetup = 0;
  }

  [(NSMutableArray *)pendingRemoteSnapshotRequestDuringStreamSetup addObject:v4];
LABEL_62:

  v107 = *MEMORY[0x277D85DE8];
}

- (id)_createSnapshotSessionIDWithMessage:(void *)a3 error:
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a1)
  {
    v6 = [a1 workQueue];
    dispatch_assert_queue_V2(v6);

    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v8 = [[HMDCameraSnapshotSessionID alloc] initWithAccessory:WeakRetained message:v5];
    if (!v8)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = a1;
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
      if (a3)
      {
        [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
        *a3 = a1 = 0;
      }

      else
      {
        a1 = 0;
      }

      goto LABEL_18;
    }

    v9 = [WeakRetained cameraProfiles];
    v10 = [v9 anyObject];
    v11 = [v10 currentSettings];

    if (v11)
    {
      [v11 currentAccessMode];
      if ((HMAreSnapshotsAllowedForCameraAccessMode() & 1) == 0)
      {
        v12 = objc_autoreleasePoolPush();
        v13 = a1;
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
        if (a3)
        {
          [MEMORY[0x277CCA9B8] hmErrorWithCode:10];
          *a3 = a1 = 0;
        }

        else
        {
          a1 = 0;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v22 = a1;
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

    a1 = v8;
LABEL_17:

LABEL_18:
  }

  v25 = *MEMORY[0x277D85DE8];

  return a1;
}

- (void)_issueGetSnapshot:(void *)a1
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1 workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = objc_autoreleasePoolPush();
  v6 = a1;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v3 sessionID];
    v10 = [v9 snapshotReason];
    if (v10 == 1)
    {
      v11 = @"HMDCameraSnapshotReasonEvent";
    }

    else if (v10)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown snapshot reason: %lu", v10];
    }

    else
    {
      v11 = @"HMDCameraSnapshotReasonPeriodic";
    }

    v12 = [v3 sessionID];
    v13 = [v12 sessionID];
    *buf = 138543874;
    v22 = v8;
    v23 = 2112;
    v24 = v11;
    v25 = 2112;
    v26 = v13;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@[%@] Issuing get snapshot request for reason: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v14 = [v3 sessionID];
  [v14 markMilestoneFor:@"ReceivedSnapshotRequest"];

  v15 = [v3 snapshotGetter];
  [v15 getSnapshot:{objc_msgSend(v3, "streamingTierType")}];

  v16 = [v3 snapshotCompletionTimer];
  [v16 setDelegate:v6];

  v17 = [v6 workQueue];
  v18 = [v3 snapshotCompletionTimer];
  [v18 setDelegateQueue:v17];

  v19 = [v3 snapshotCompletionTimer];
  [v19 resume];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_handleTakeSnapshotMessage:(id)a3
{
  v115 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v108 = 0;
  v6 = [(HMDCameraSnapshotManager *)&self->super.super.isa _createSnapshotSessionIDWithMessage:v4 error:&v108];
  v7 = v108;
  if (v6)
  {
    v8 = [v6 snapshotCharacteristicEventUUID];
    v9 = v8;
    if (self)
    {
      if (self->_currentLocalSession)
      {
        v10 = objc_autoreleasePoolPush();
        v11 = self;
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = HMFGetLogIdentifier();
          v14 = [v6 sessionID];
          currentLocalSession = v11->_currentLocalSession;
          *buf = 138543874;
          v110 = v13;
          v111 = 2112;
          v112 = v14;
          v113 = 2112;
          v114 = currentLocalSession;
          _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[%@] There is already a local session %@ in progress, adding this request to that", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v10);
        [(HMDCameraSnapshotLocalSession *)v11->_currentLocalSession addMessage:v4];
        if (v9)
        {
          [(HMDCameraSnapshotCache *)v11->_snapshotCache addEntryWithCharacteristicEventUUID:v9];
        }

        goto LABEL_33;
      }

      if (v8)
      {
LABEL_10:
        if ([(HMDCameraStreamSnapshotHandler *)self->_streamSnapshotHandler isStreamSetupInProgress])
        {
LABEL_11:
          v16 = objc_autoreleasePoolPush();
          v17 = self;
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = HMFGetLogIdentifier();
            v20 = [v6 sessionID];
            *buf = 138543618;
            v110 = v19;
            v111 = 2112;
            v112 = v20;
            _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@[%@] Stream setup is in progress, adding this to pending request queue", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v16);
          if (self)
          {
            pendingSnapshotRequestDuringStreamSetup = v17->_pendingSnapshotRequestDuringStreamSetup;
          }

          else
          {
            pendingSnapshotRequestDuringStreamSetup = 0;
          }

          [(NSMutableArray *)pendingSnapshotRequestDuringStreamSetup addObject:v4];
          goto LABEL_33;
        }

        streamSnapshotHandler = self->_streamSnapshotHandler;
LABEL_17:
        if ([(HMDCameraStreamSnapshotHandler *)streamSnapshotHandler isStreamAvailable])
        {
          v23 = objc_autoreleasePoolPush();
          v24 = self;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = HMFGetLogIdentifier();
            v27 = [v6 sessionID];
            *buf = 138543618;
            v110 = v26;
            v111 = 2112;
            v112 = v27;
            _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@[%@] Taking snapshot through available camera stream", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v23);
          v28 = v4;
          v29 = v6;
          if (self)
          {
            v106 = v28;
            v30 = [(HMDCameraSnapshotManager *)v24 workQueue];
            dispatch_assert_queue_V2(v30);

            v31 = objc_autoreleasePoolPush();
            v32 = v24;
            v33 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              v34 = HMFGetLogIdentifier();
              v35 = [v29 sessionID];
              *buf = 138543618;
              v110 = v34;
              v111 = 2112;
              v112 = v35;
              _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@[%@] Creating a snapshot session with HMDCameraStreamSnapshot", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v31);
            v101 = [v29 snapshotCharacteristicEventUUID];
            v103 = [v29 isSnapshotRequestForBulletin];
            v36 = v29;
            v37 = v32->_dataSource;
            WeakRetained = objc_loadWeakRetained(&v32->_accessory);
            v39 = v32->_streamSnapshotHandler;
            v40 = v32->_networkMonitor;
            v41 = v39;
            v42 = [(HMFNetMonitor *)v40 reachabilityPath];
            LOBYTE(v98) = v103;
            v104 = v36;
            v43 = v36;
            v28 = v106;
            v44 = [(HMDCameraSnapshotManagerDataSource *)v37 createLocalSnapshotSessionWithID:v43 accessory:WeakRetained snapshotGetter:v41 message:v106 waitPeriod:v42 reachabilityPath:1 cameraLocallyReachable:30.0 snapshotForNotification:v98];
            v45 = v32->_currentLocalSession;
            v32->_currentLocalSession = v44;

            if (v101)
            {
              [(HMDCameraSnapshotCache *)v32->_snapshotCache addEntryWithCharacteristicEventUUID:v101];
            }

            [(HMDCameraSnapshotManager *)v32 _issueGetSnapshot:?];

            v29 = v104;
          }

LABEL_32:
LABEL_33:

          goto LABEL_34;
        }

        v54 = [(HMDCameraSnapshotManager *)&self->super.super.isa accessory];
        v55 = [v54 isReachable];

        if (v55)
        {
          v56 = objc_autoreleasePoolPush();
          v57 = self;
          v58 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
          {
            v59 = HMFGetLogIdentifier();
            v60 = [v6 sessionID];
            *buf = 138543618;
            v110 = v59;
            v111 = 2112;
            v112 = v60;
            _os_log_impl(&dword_2531F8000, v58, OS_LOG_TYPE_INFO, "%{public}@[%@] Taking local snapshot because accessory is reachable", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v56);
          v61 = v4;
          v107 = v6;
          if (self)
          {
            v105 = v61;
            v62 = [(HMDCameraSnapshotManager *)v57 workQueue];
            dispatch_assert_queue_V2(v62);

            v63 = objc_autoreleasePoolPush();
            v64 = v57;
            v65 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
            {
              v66 = HMFGetLogIdentifier();
              v67 = [v107 sessionID];
              *buf = 138543618;
              v110 = v66;
              v111 = 2112;
              v112 = v67;
              _os_log_impl(&dword_2531F8000, v65, OS_LOG_TYPE_INFO, "%{public}@[%@] Creating a snapshot session with HMDCameraSnapshotLocal", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v63);
            v100 = [v107 isSnapshotRequestForBulletin];
            v102 = [v107 snapshotCharacteristicEventUUID];
            v68 = objc_loadWeakRetained(&v64->_accessory);
            v69 = v64->_dataSource;
            v70 = [(HMDCameraSnapshotManager *)v64 workQueue];
            v99 = [(HMDCameraSnapshotManagerDataSource *)v69 createSnapshotLocalWithSessionID:v107 workQueue:v70 accessory:v68 delegate:v64 snapshotRequestHandler:v64->_snapshotRequestHandler];

            dataSource = v64->_dataSource;
            v72 = v64->_networkMonitor;
            v73 = dataSource;
            LOBYTE(v98) = v100;
            v61 = v105;
            v74 = [(HMDCameraSnapshotManagerDataSource *)v73 createLocalSnapshotSessionWithID:v107 accessory:v68 snapshotGetter:v99 message:v105 waitPeriod:[(HMFNetMonitor *)v72 reachabilityPath] reachabilityPath:1 cameraLocallyReachable:30.0 snapshotForNotification:v98];
            v75 = v64->_currentLocalSession;
            v64->_currentLocalSession = v74;

            if (v102)
            {
              [(HMDCameraSnapshotCache *)v64->_snapshotCache addEntryWithCharacteristicEventUUID:v102];
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
          v91 = [0 supportsCameraSnapshotRequestViaRelay];
          v76 = 0;
          if (v91)
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

              v79 = [(HMDCameraResidentMessageHandler *)residentMessageHandler isUsingCompanionForRemoteAccessDevice];

              if (v79)
              {
                v80 = objc_autoreleasePoolPush();
                v81 = self;
                v82 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
                {
                  v83 = HMFGetLogIdentifier();
                  v84 = [v6 sessionID];
                  *buf = 138543618;
                  v110 = v83;
                  v111 = 2112;
                  v112 = v84;
                  _os_log_impl(&dword_2531F8000, v82, OS_LOG_TYPE_INFO, "%{public}@[%@] Taking remote snapshot via stream because accessory is unreachable", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v80);
                [(HMDCameraSnapshotManager *)v81 _sendSnapshotRequestStreamReceiver:v4 snapshotSessionID:v6];
                goto LABEL_33;
              }
            }

            else
            {
            }

            v85 = objc_autoreleasePoolPush();
            v86 = self;
            v87 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
            {
              v88 = HMFGetLogIdentifier();
              v89 = [v6 sessionID];
              *buf = 138543618;
              v110 = v88;
              v111 = 2112;
              v112 = v89;
              _os_log_impl(&dword_2531F8000, v87, OS_LOG_TYPE_INFO, "%{public}@[%@] Taking remote snapshot via relay because accessory is unreachable", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v85);
            [(HMDCameraSnapshotManager *)v86 _sendSnapshotRequestRelayReceiver:v4 snapshotSessionID:v6];
            goto LABEL_33;
          }
        }

        v92 = objc_autoreleasePoolPush();
        v93 = self;
        v94 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
        {
          v95 = HMFGetLogIdentifier();
          v96 = [v6 sessionID];
          *buf = 138543618;
          v110 = v95;
          v111 = 2112;
          v112 = v96;
          _os_log_impl(&dword_2531F8000, v94, OS_LOG_TYPE_ERROR, "%{public}@[%@] Cannot take snapshot because accessory is unreachable remote and remote snapshots are unsupported", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v92);
        v97 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
        [v4 respondWithError:v97];

        goto LABEL_33;
      }

      snapshotFileManager = self->_snapshotFileManager;
    }

    else
    {
      if (v8)
      {
        goto LABEL_62;
      }

      snapshotFileManager = 0;
    }

    v47 = snapshotFileManager;
    v28 = [(HMDCameraSnapshotFileManager *)v47 encodedMostRecentSnapshotForMessage:v4];

    if (v28)
    {
      v48 = objc_autoreleasePoolPush();
      v49 = self;
      v50 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        v51 = HMFGetLogIdentifier();
        v52 = [v6 sessionID];
        *buf = 138543874;
        v110 = v51;
        v111 = 2112;
        v112 = v52;
        v113 = 2112;
        v114 = v28;
        _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_INFO, "%{public}@[%@] Most recent snapshot is still valid, sending it with payload %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v48);
      [v4 respondWithPayload:v28];
      goto LABEL_32;
    }

    if (self)
    {
      goto LABEL_10;
    }

LABEL_62:
    v90 = [0 isStreamSetupInProgress];
    streamSnapshotHandler = 0;
    if (v90)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  [v4 respondWithError:v7];
LABEL_34:

  v53 = *MEMORY[0x277D85DE8];
}

- (void)_sendSnapshotRequestStreamReceiver:(void *)a3 snapshotSessionID:
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [a1 workQueue];
    dispatch_assert_queue_V2(v7);

    v8 = objc_autoreleasePoolPush();
    v9 = a1;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v6 sessionID];
      *buf = 138543618;
      v39 = v11;
      v40 = 2112;
      v41 = v12;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[%@] Creating a snapshot session with HMDCameraSnapshotRemoteStreamReceiver", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    WeakRetained = objc_loadWeakRetained(v9 + 6);
    if (WeakRetained)
    {
      v14 = [v9[16] remoteAccessDevice];
      if (v14)
      {
        v15 = [HMDCameraSnapshotRemoteStreamReceiver alloc];
        v16 = [v9 workQueue];
        v17 = [v9 uniqueIdentifier];
        v18 = v9[16];
        v19 = v9[9];
        v20 = [(HMDCameraSnapshotRemoteStreamReceiver *)v15 initWithSessionID:v6 workQueue:v16 accessory:WeakRetained delegate:v9 uniqueIdentifier:v17 snapshotRequestHandler:v19 residentMessageHandler:v18 remoteDevice:v14];

        v21 = v9[17];
        v22 = v9[15];
        v23 = v21;
        v24 = [v22 reachabilityPath];
        LOBYTE(v37) = [v6 isSnapshotRequestForBulletin];
        v25 = [v23 createLocalSnapshotSessionWithID:v6 accessory:WeakRetained snapshotGetter:v20 message:v5 waitPeriod:v24 reachabilityPath:0 cameraLocallyReachable:60.0 snapshotForNotification:v37];

        objc_storeStrong(v9 + 4, v25);
        [(HMDCameraSnapshotManager *)v9 _issueGetSnapshot:?];
      }

      else
      {
        v31 = objc_autoreleasePoolPush();
        v32 = v9;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = HMFGetLogIdentifier();
          v35 = [v6 sessionID];
          *buf = 138543618;
          v39 = v34;
          v40 = 2112;
          v41 = v35;
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
      v27 = v9;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        v30 = [v6 sessionID];
        *buf = 138543618;
        v39 = v29;
        v40 = 2112;
        v41 = v30;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to create snapshot session with HMDCameraSnapshotRemoteStreamReceiver: accessory reference is nil", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
      v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [v5 respondWithError:v14];
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)_sendSnapshotRequestRelayReceiver:(void *)a3 snapshotSessionID:
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [a1 workQueue];
    dispatch_assert_queue_V2(v7);

    v8 = objc_autoreleasePoolPush();
    v9 = a1;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v6 sessionID];
      *buf = 138543618;
      v40 = v11;
      v41 = 2112;
      v42 = v12;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[%@] Creating a snapshot session with HMDCameraSnapshotRemoteRelayReceiver", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    WeakRetained = objc_loadWeakRetained(v9 + 6);
    if (WeakRetained)
    {
      v14 = [v9[16] remoteAccessDevice];
      if (v14)
      {
        v15 = v9[17];
        v16 = [v9 workQueue];
        v17 = [v9 uniqueIdentifier];
        v18 = v9[16];
        v19 = v5;
        v20 = v9[9];
        v21 = [v15 createSnapshotRemoteRelayReceiverWithSessionID:v6 workQueue:v16 accessory:WeakRetained delegate:v9 uniqueIdentifier:v17 snapshotRequestHandler:v20 residentMessageHandler:v18 remoteDevice:v14];

        v5 = v19;
        v22 = v9[17];
        v23 = v9[15];
        v24 = v22;
        v25 = [v23 reachabilityPath];
        LOBYTE(v38) = [v6 isSnapshotRequestForBulletin];
        v26 = [v24 createLocalSnapshotSessionWithID:v6 accessory:WeakRetained snapshotGetter:v21 message:v5 waitPeriod:v25 reachabilityPath:0 cameraLocallyReachable:60.0 snapshotForNotification:v38];

        objc_storeStrong(v9 + 4, v26);
        [(HMDCameraSnapshotManager *)v9 _issueGetSnapshot:?];
      }

      else
      {
        v32 = objc_autoreleasePoolPush();
        v33 = v9;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          v36 = [v6 sessionID];
          *buf = 138543618;
          v40 = v35;
          v41 = 2112;
          v42 = v36;
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
      v28 = v9;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        v31 = [v6 sessionID];
        *buf = 138543618;
        v40 = v30;
        v41 = 2112;
        v42 = v31;
        _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to create snapshot session with HMDCameraSnapshotRemoteRelayReceiver: accessory reference is nil", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
      v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [v5 respondWithError:v14];
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
  v5 = [(HMDCameraSnapshotFileManager *)v4 encodedMostRecentSnapshot];

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Responding to most recent snapshot with payload: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_handleCreateSnapshotFromBulletinContextMessage:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 stringForKey:@"kCameraSessionID"];
  v7 = [v4 stringForKey:*MEMORY[0x277CD26B8]];
  v8 = [v4 dateForKey:*MEMORY[0x277CD26B0]];
  v9 = v8;
  if (!v6 || (v7 ? (v10 = v8 == 0) : (v10 = 1), v10))
  {
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [v4 messagePayload];
      *buf = 138543618;
      v38 = v25;
      v39 = 2112;
      v40 = v26;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Snapshot session ID or path or capture date is not present in request: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [v4 respondWithError:v12];
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

      v36 = v4;
      v14 = MEMORY[0x277CBEA60];
      v15 = snapshotFileManager;
      v16 = [v14 arrayWithObjects:&v36 count:1];
      v17 = [(HMDCameraSnapshotFileManager *)v15 createSlotForSnapshotFile:v11 requestMessages:v16 shouldNotifyClients:0];

      v18 = objc_autoreleasePoolPush();
      v19 = self;
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
      [v4 respondWithPayload:v17];
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      v28 = self;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        [v4 shortDescription];
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
      [v4 respondWithError:v12];
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_handleReleaseSnapshotMessage:(id)a3
{
  v6 = a3;
  v4 = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(v4);

  if (self)
  {
    snapshotFileManager = self->_snapshotFileManager;
  }

  else
  {
    snapshotFileManager = 0;
  }

  [(HMDCameraSnapshotFileManager *)snapshotFileManager handleReleaseSnapshot:v6];
}

- (void)_handleFillSnapshotSlotMessage:(id)a3
{
  v6 = a3;
  v4 = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(v4);

  if (self)
  {
    snapshotFileManager = self->_snapshotFileManager;
  }

  else
  {
    snapshotFileManager = 0;
  }

  [(HMDCameraSnapshotFileManager *)snapshotFileManager handleFillSnapshotSlot:v6];
}

- (void)handleAccessoryUnconfigured:(id)a3
{
  v4 = [(HMDCameraSnapshotManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HMDCameraSnapshotManager_handleAccessoryUnconfigured___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v4, block);
}

void __56__HMDCameraSnapshotManager_handleAccessoryUnconfigured___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
  [(HMDCameraSnapshotManager *)v1 _removeAllPendingRequests:v2];
}

- (void)releaseSnapshotWithSlotIdentifier:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v9 = *MEMORY[0x277CD1060];
  v10[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [MEMORY[0x277D0F818] messageWithName:*MEMORY[0x277CCF5C8] messagePayload:v6 responseHandler:&__block_literal_global_45_106242];

  [(HMDCameraSnapshotManager *)self _handleReleaseSnapshotMessage:v7];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)takeSnapshot:(id)a3
{
  v5 = a3;
  v4 = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(v4);

  [(HMDCameraSnapshotManager *)self _handleTakeSnapshotMessage:v5];
}

- (void)registerForMessages
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraSnapshotManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraSnapshotManager *)&self->super.super.isa accessory];
  v5 = [v4 home];
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 addObserver:self selector:sel_handleAccessoryUnconfigured_ name:@"HMDAccessoryDisconnectedNotification" object:v4];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 addObserver:self selector:sel_handleCameraSettingsDidChangeNotification_ name:@"HMDCameraProfileSettingsDidChangeNotification" object:v4];

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
  v9 = [HMDUserMessagePolicy userMessagePolicyWithHome:v5 userPrivilege:0 remoteAccessRequired:1 requiresCameraStreamingAccess:1];
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

- (HMDCameraSnapshotManager)initWithAccessory:(id)a3 workQueue:(id)a4 streamSnapshotHandler:(id)a5 uniqueIdentifier:(id)a6 msgDispatcher:(id)a7 networkMonitor:(id)a8 logIdentifier:(id)a9 imageCacheDirectory:(id)a10 residentMessageHandler:(id)a11 snapshotFileManager:(id)a12 dataSource:(id)a13
{
  obj = a3;
  v55 = a4;
  v49 = a5;
  v54 = a5;
  v18 = a6;
  v19 = a7;
  v53 = a7;
  v48 = a8;
  v52 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  v51 = a13;
  v57.receiver = self;
  v57.super_class = HMDCameraSnapshotManager;
  v24 = [(HMDCameraSnapshotManager *)&v57 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_workQueue, a4);
    objc_storeStrong(&v25->_msgDispatcher, v19);
    objc_storeWeak(&v25->_accessory, obj);
    v26 = [v18 copy];
    uniqueIdentifier = v25->_uniqueIdentifier;
    v25->_uniqueIdentifier = v26;

    v28 = [MEMORY[0x277CBEB38] dictionary];
    currentRemoteSessions = v25->_currentRemoteSessions;
    v25->_currentRemoteSessions = v28;

    objc_storeStrong(&v25->_networkMonitor, v48);
    objc_storeStrong(&v25->_residentMessageHandler, a11);
    objc_storeStrong(&v25->_dataSource, a13);
    v30 = v20;
    v31 = [v20 copy];
    logIdentifier = v25->_logIdentifier;
    v25->_logIdentifier = v31;

    v33 = [v21 copy];
    imageCacheDirectory = v25->_imageCacheDirectory;
    v25->_imageCacheDirectory = v33;

    if (!isWatch())
    {
      v35 = [[HMDCameraSnapshotMonitorEvents alloc] initWithSnapshotManager:v25 accessory:obj workQueue:v25->_workQueue msgDispatcher:v53];
      monitorServicesManager = v25->_monitorServicesManager;
      v25->_monitorServicesManager = v35;
    }

    v37 = [[HMDCameraSnapshotRequestHandler alloc] initWithAccessory:obj workQueue:v55 streamSnapshotHandler:v54 imageCacheDirectory:v25->_imageCacheDirectory logID:v25->_logIdentifier];
    snapshotRequestHandler = v25->_snapshotRequestHandler;
    v25->_snapshotRequestHandler = v37;

    v39 = +[HMDDeviceCapabilities deviceCapabilities];
    v40 = [v39 isResidentCapable];

    if (v40)
    {
      v41 = [[HMDCameraSnapshotCache alloc] initWithWorkQueue:v55 logIdentifier:v25->_logIdentifier];
      snapshotCache = v25->_snapshotCache;
      v25->_snapshotCache = v41;
    }

    objc_storeStrong(&v25->_snapshotFileManager, a12);
    objc_storeStrong(&v25->_streamSnapshotHandler, v49);
    v43 = [MEMORY[0x277CBEB18] array];
    pendingSnapshotRequestDuringStreamSetup = v25->_pendingSnapshotRequestDuringStreamSetup;
    v25->_pendingSnapshotRequestDuringStreamSetup = v43;

    v45 = [MEMORY[0x277CBEB18] array];
    pendingRemoteSnapshotRequestDuringStreamSetup = v25->_pendingRemoteSnapshotRequestDuringStreamSetup;
    v25->_pendingRemoteSnapshotRequestDuringStreamSetup = v45;

    [(HMDCameraStreamSnapshotHandler *)v25->_streamSnapshotHandler addDelegate:v25];
    v20 = v30;
  }

  return v25;
}

- (HMDCameraSnapshotManager)initWithAccessory:(id)a3 workQueue:(id)a4 streamSnapshotHandler:(id)a5 uniqueIdentifier:(id)a6 msgDispatcher:(id)a7 networkMonitor:(id)a8
{
  v13 = a3;
  v14 = a6;
  v31 = a8;
  v15 = a7;
  v16 = a5;
  v17 = a4;
  if (isInternalBuild())
  {
    v18 = MEMORY[0x277CCACA8];
    v19 = [v13 home];
    v20 = [v19 name];
    v21 = [v13 name];
    v22 = [v18 stringWithFormat:@"%@/%@/%@", v20, v21, v14];
  }

  else
  {
    v22 = [v14 UUIDString];
  }

  v23 = getImagesPath();
  v24 = [v13 uuid];
  v25 = [v24 UUIDString];
  v26 = [v23 stringByAppendingPathComponent:v25];

  v27 = [[HMDCameraResidentMessageHandler alloc] initWithAccessory:v13 logIdentifier:v22];
  v28 = [[HMDCameraSnapshotFileManager alloc] initWithWorkQueue:v17 imageCacheDirectory:v26 logIdentifier:v22 uniqueIdentifier:v14 messageDispatcher:v15];
  v29 = objc_alloc_init(HMDCameraSnapshotManagerDataSource);
  v33 = [(HMDCameraSnapshotManager *)self initWithAccessory:v13 workQueue:v17 streamSnapshotHandler:v16 uniqueIdentifier:v14 msgDispatcher:v15 networkMonitor:v31 logIdentifier:v22 imageCacheDirectory:v26 residentMessageHandler:v27 snapshotFileManager:v28 dataSource:v29];

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

+ (id)messageBindingForDispatcher:(id)a3 message:(id)a4 receiver:(id)a5
{
  v46[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = [(HMDCameraSnapshotManager *)v9 accessory];
  v11 = [v10 home];

  v12 = [HMDUserMessagePolicy userMessagePolicyWithHome:v11 userPrivilege:0 remoteAccessRequired:1 requiresCameraStreamingAccess:1];
  v13 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
  [v13 setRoles:{objc_msgSend(v13, "roles") | 6}];
  v14 = [v13 copy];
  v15 = [v6 name];
  v16 = [v15 isEqualToString:@"kTakeSnapshotRemoteRequestKey"];

  v17 = [v6 name];
  v18 = v17;
  if (v16)
  {
    v46[0] = v14;
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

  v21 = [v17 isEqualToString:@"kTakeSnapshotRemoteReceivedKey"];

  if (v21)
  {
    v18 = [v6 name];
    v45 = v14;
    v19 = &selRef__handleRemoteSnapshotReceivedMessage_;
    v20 = &v45;
    goto LABEL_8;
  }

  v13 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v25 = [v6 name];
  v26 = [v25 isEqualToString:@"kTakeSnapshotSendFailedNotificationKey"];

  if (v26)
  {
    v14 = [v6 name];
    v44[0] = v13;
    v44[1] = v12;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
LABEL_20:
    v24 = HMFCreateMessageBindingWithReceiver();
    goto LABEL_21;
  }

  v13 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v27 = [v6 name];
  v28 = [v27 isEqualToString:*MEMORY[0x277CCF5D0]];

  v29 = [v6 name];
  v14 = v29;
  if (v28)
  {
    v43 = v13;
    v30 = &selRef__handleTakeSnapshotMessage_;
    v31 = &v43;
LABEL_19:
    v31[1] = v12;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    v37 = *v30;
    goto LABEL_20;
  }

  v32 = [v29 isEqualToString:*MEMORY[0x277CCF5C8]];

  v33 = [v6 name];
  v14 = v33;
  if (v32)
  {
    v42 = v13;
    v30 = &selRef__handleReleaseSnapshotMessage_;
    v31 = &v42;
    goto LABEL_19;
  }

  v34 = [v33 isEqualToString:*MEMORY[0x277CCF5B0]];

  v35 = [v6 name];
  v14 = v35;
  if (v34)
  {
    v41 = v13;
    v30 = &selRef__handleFillSnapshotSlotMessage_;
    v31 = &v41;
    goto LABEL_19;
  }

  v36 = [v35 isEqualToString:*MEMORY[0x277CCF5A8]];

  if (v36)
  {
    v14 = [v6 name];
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

+ (void)cleanStaleSnapshotDirectoriesUsingCurrentAccessories:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x277CBEB98];
  v30 = v3;
  v5 = [v3 na_map:&__block_literal_global_106285];
  v6 = [v4 setWithArray:v5];

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = getImagesPath();
  v9 = [v7 contentsOfDirectoryAtPath:v8 error:0];

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

          v17 = [MEMORY[0x277CCAA00] defaultManager];
          v33 = 0;
          v18 = [v17 removeItemAtPath:v16 error:&v33];
          v19 = v33;

          v20 = objc_autoreleasePoolPush();
          v21 = a1;
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
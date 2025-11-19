@interface HMDCameraClipManager
+ (double)maximumClipDuration;
+ (id)logCategory;
- (BOOL)_fetchClipsWithDateInterval:(id)a3 quality:(int64_t)a4 isAscending:(BOOL)a5 error:(id *)a6 handler:(id)a7;
- (BOOL)areShareModificationsEnabledForManager:(id)a3;
- (BOOL)hasStartedUpCloudZone;
- (BOOL)manager:(id)a3 shouldGrantWriteAccessToUser:(id)a4;
- (BOOL)manager:(id)a3 shouldShareWithUser:(id)a4;
- (BOOL)zoneManager:(id)a3 shouldRequestShareInvitationFromUser:(id)a4;
- (HMDCameraClipManager)initWithHome:(id)a3 zoneName:(id)a4 messageDispatcher:(id)a5 workQueue:(id)a6 cameraProfileUUID:(id)a7;
- (HMDCameraClipManager)initWithZoneManager:(id)a3 quotaManager:(id)a4 faceClassificationResolver:(id)a5 clientConnectionsTimer:(id)a6 messageDispatcher:(id)a7 workQueue:(id)a8 cameraProfileUUID:(id)a9 fileManager:(id)a10 featuresDataSource:(id)a11;
- (HMDCameraClipManagerDelegate)delegate;
- (NSDictionary)stateDump;
- (NSString)zoneName;
- (NSUUID)messageTargetUUID;
- (id)_disableCloudStorage;
- (id)_enableCloudStorage;
- (id)_faceClassificationsForSignificantEventWithUUID:(id)a3;
- (id)_fetchCanonicalHeroFrameURLForClipModel:(id)a3;
- (id)_fetchFaceCropURLForSignificantEventModel:(id)a3;
- (id)_fetchHeroFrameURLForSignificantEventModel:(id)a3;
- (id)_handleFaceMisclassificationForSignificantEvent:(id)a3 personUUID:(id)a4 faceClassificationPersonManagerUUID:(id)a5 homePersonManagerUUID:(id)a6;
- (id)_performCloudPull;
- (id)_removeClipsWithUUIDs:(id)a3 options:(id)a4;
- (id)_significantEventFromSignificantEventModel:(id)a3;
- (id)_significantEventModelsForClipWithUUID:(id)a3;
- (id)_significantEventModelsWithUUIDs:(id)a3;
- (id)_significantEventsWithUUIDs:(id)a3;
- (id)_updateModelsForMisclassificationForSignificantEvent:(id)a3 unassociatedFaceCropUUID:(id)a4 personManagerUUID:(id)a5;
- (id)fetchHeroFrameURLForSignificantEventWithUUID:(id)a3;
- (id)fetchSignificantEventsForClipWithSignificantEventWithUUID:(id)a3;
- (id)fetchSignificantEventsWithDateInterval:(id)a3;
- (id)heroFrameURLForSignificantEventWithUUID:(id)a3;
- (id)home;
- (id)performCloudPull;
- (id)remove;
- (id)significantEventsForClipWithUUID:(id)a3;
- (id)significantEventsWithDateInterval:(id)a3;
- (void)_cleanUpClipsForInitialStartup:(BOOL)a3;
- (void)_cleanUpExpiredClips;
- (void)_cleanUpIncompleteClipsForInitialStartup:(BOOL)a3;
- (void)_fetchAssetContextForMessage:(id)a3 propertyName:(id)a4;
- (void)_handleChangedClipModel:(id)a3 wasCreated:(BOOL)a4 mirrorOutputFuture:(id)a5;
- (void)_handleChangedFaceClassificationModel:(id)a3;
- (void)_handleChangedSignificantEventNotificationModel:(id)a3 mirrorOutputFuture:(id)a4;
- (void)_notifyForChangedSignificantEventModel:(id)a3 mirrorOutputFuture:(id)a4;
- (void)_notifyPrimaryResidentAboutFaceMisclassificationForFaceCropData:(id)a3 personUUID:(id)a4 personManagerUUID:(id)a5;
- (void)_notifyTransportsOfUpdatedClips:(id)a3 removedClipUUIDs:(id)a4;
- (void)_notifyTransportsOfUpdatedSignificantEvents:(id)a3 removedSignificantEventUUIDs:(id)a4;
- (void)_removeAllFaceClassificationModels;
- (void)cleanUpClips;
- (void)clientConnectionsTimerDidFire:(id)a3;
- (void)cloudZone:(id)a3 didEncounterZoneDisabledError:(id)a4;
- (void)configure;
- (void)handleDeleteAllClipsMessage:(id)a3;
- (void)handleDeleteClipMessage:(id)a3;
- (void)handleFetchClipForSignificantEventMessage:(id)a3;
- (void)handleFetchClipMessage:(id)a3;
- (void)handleFetchClipsMessage:(id)a3;
- (void)handleFetchCountOfClipsMessage:(id)a3;
- (void)handleFetchFaceCropDataRepresentationMessage:(id)a3;
- (void)handleFetchFaceCropURLMessage:(id)a3;
- (void)handleFetchHeroFrameDataRepresentationMessage:(id)a3;
- (void)handleFetchHeroFrameURLMessage:(id)a3;
- (void)handleFetchIsCloudStorageEnabledMessage:(id)a3;
- (void)handleFetchSignificantEventsMessage:(id)a3;
- (void)handleFetchVideoSegmentsAssetContextMessage:(id)a3;
- (void)handleHandleFaceMisclassificationMessage:(id)a3;
- (void)handleHomePersonManagerSettingsDidChangeNotification:(id)a3;
- (void)handleImportClipsMessage:(id)a3;
- (void)handlePerformCloudPullMessage:(id)a3;
- (void)handleRemoteHandleFaceMisclassificationMessage:(id)a3;
- (void)handleSubscribeMessage:(id)a3;
- (void)handleUnsubscribeMessage:(id)a3;
- (void)handleUpdateCloudStorageMessage:(id)a3;
- (void)handleUserCamerasAccessLevelDidChangeNotification:(id)a3;
- (void)handleUserPrivilegeDidChangeNotification:(id)a3;
- (void)handleUserRemoteAccessDidChangeNotification:(id)a3;
- (void)localZone:(id)a3 didProcessModelCreation:(id)a4;
- (void)localZone:(id)a3 didProcessModelDeletion:(id)a4;
- (void)localZone:(id)a3 didProcessModelUpdate:(id)a4;
- (void)setHasWriteAccess:(BOOL)a3;
- (void)submitLogEvent:(id)a3 error:(id)a4;
- (void)zoneManager:(id)a3 didReceiveMessageWithUserInfo:(id)a4;
- (void)zoneManagerDidStart:(id)a3;
- (void)zoneManagerDidStop:(id)a3;
@end

@implementation HMDCameraClipManager

- (HMDCameraClipManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)submitLogEvent:(id)a3 error:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v7 submitLogEvent:v6 error:v5];
}

- (void)clientConnectionsTimerDidFire:(id)a3
{
  v4 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(HMDCameraClipManager *)self _performCloudPull];
}

- (void)zoneManager:(id)a3 didReceiveMessageWithUserInfo:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [[HMDCameraClipsQuotaServerNotification alloc] initWithDictionaryRepresentation:v7];
  v10 = [(HMDCameraClipsQuotaServerNotification *)v9 containerIdentifier];
  v11 = [(HMDCameraClipManager *)self zoneManager];
  v12 = [v11 containerIdentifier];
  v13 = [v10 isEqualToString:v12];

  if (v13)
  {
    v14 = [(HMDCameraClipManager *)self delegate];
    v15 = [(HMDCameraClipsQuotaServerNotification *)v9 reason];
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    v19 = v18;
    if (v15 == 1)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v23 = 138543362;
        v24 = v20;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Received all storage disabled notification", &v23, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      if (objc_opt_respondsToSelector())
      {
        [v14 clipManagerDidDisableCloudStorage:v17];
      }
    }

    else
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v21 = HMFGetLogIdentifier();
        v23 = 138543618;
        v24 = v21;
        v25 = 2112;
        v26 = v9;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Received unknown notification: %@", &v23, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)zoneManagerDidStop:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Camera clips zone manager stopped", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDCameraClipManager *)v7 setLocalZone:0];
  [(HMDCameraClipManager *)v7 setCloudZone:0];
  v10 = [(HMDCameraClipManager *)v7 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v10 clipManagerDidStop:v7];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)zoneManagerDidStart:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v49 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Camera clips zone manager started", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [v4 localZone];
  [(HMDCameraClipManager *)v7 setLocalZone:v10];

  v11 = [(HMDCameraClipManager *)v7 localZone];
  [v11 addObserverForAllModels:v7];

  v12 = [(HMDCameraClipManager *)v7 localZone];
  [v12 startUp];

  [(HMDCameraClipManager *)v7 _cleanUpClipsForInitialStartup:1];
  v13 = [v4 cloudZone];
  [(HMDCameraClipManager *)v7 setCloudZone:v13];

  v14 = [(HMDCameraClipManager *)v7 cloudZone];
  v15 = [v14 hasPerformedInitialFetch];

  if ((v15 & 1) == 0)
  {
    v16 = [MEMORY[0x277CBEAA8] date];
    [(HMDCameraClipManager *)v7 setSuppressNotificationsBeforeDate:v16];

    v17 = objc_autoreleasePoolPush();
    v18 = v7;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [(HMDCameraClipManager *)v18 suppressNotificationsBeforeDate];
      *buf = 138543618;
      v49 = v20;
      v50 = 2112;
      v51 = v21;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Suppressing all clip-related notifications before %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
  }

  v22 = [(HMDCameraClipManager *)v7 cloudZone];
  v23 = [v22 startUp];
  v24 = MEMORY[0x277D2C938];
  v25 = [(HMDCameraClipManager *)v7 workQueue];
  v26 = [v24 schedulerWithDispatchQueue:v25];
  v27 = [v23 reschedule:v26];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __44__HMDCameraClipManager_zoneManagerDidStart___block_invoke;
  v47[3] = &unk_27868A200;
  v47[4] = v7;
  v28 = [v27 addSuccessBlock:v47];

  v29 = [(HMDCameraClipManager *)v7 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v29 clipManagerDidStart:v7];
  }

  v30 = [v4 home];
  if (v30)
  {
    v31 = [HMDCameraClipFeedbackManager alloc];
    v32 = [(HMDCameraClipManager *)v7 localZone];
    v33 = [(HMDCameraClipManager *)v7 cloudZone];
    v34 = [(HMDCameraClipManager *)v7 messageDispatcher];
    v35 = [(HMDCameraClipManager *)v7 cameraProfileUUID];
    v36 = [(HMDCameraClipManager *)v7 messageTargetUUID];
    [(HMDCameraClipManager *)v7 workQueue];
    v37 = v46 = v4;
    v38 = [(HMDCameraClipFeedbackManager *)v31 initWithLocalZone:v32 cloudZone:v33 home:v30 messageDispatcher:v34 cameraProfileUUID:v35 messageTargetUUID:v36 workQueue:v37];
    [(HMDCameraClipManager *)v7 setFeedbackManager:v38];

    v39 = [(HMDCameraClipManager *)v7 feedbackManager];
    v40 = +[HMDDeviceCapabilities deviceCapabilities];
    [v39 configureWithIsCurrentDeviceResidentCapable:{objc_msgSend(v40, "isResidentCapable")}];

    v4 = v46;
  }

  else
  {
    v41 = objc_autoreleasePoolPush();
    v42 = v7;
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = HMFGetLogIdentifier();
      *buf = 138543362;
      v49 = v44;
      _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot create feedback manager because home reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v41);
  }

  v45 = *MEMORY[0x277D85DE8];
}

void __44__HMDCameraClipManager_zoneManagerDidStart___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Camera clips cloud zone finished starting up", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v9 clipManagerDidStartUpCloudZone:*(a1 + 32)];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)zoneManager:(id)a3 shouldRequestShareInvitationFromUser:(id)a4
{
  v5 = a4;
  v6 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v6);

  LOBYTE(v6) = [v5 isOwner];
  return v6;
}

- (BOOL)areShareModificationsEnabledForManager:(id)a3
{
  v4 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v4);

  return [(HMDCameraClipManager *)self hasWriteAccess];
}

- (BOOL)manager:(id)a3 shouldGrantWriteAccessToUser:(id)a4
{
  v5 = a4;
  v6 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v6);

  LOBYTE(v6) = [v5 isAdministrator];
  return v6;
}

- (BOOL)manager:(id)a3 shouldShareWithUser:(id)a4
{
  v5 = a4;
  v6 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v6);

  LOBYTE(v6) = [v5 hasCameraClipsAccess];
  return v6;
}

- (void)localZone:(id)a3 didProcessModelDeletion:(id)a4
{
  v5 = a4;
  v6 = [(HMDCameraClipManager *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__HMDCameraClipManager_localZone_didProcessModelDeletion___block_invoke;
  v8[3] = &unk_27868A750;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_sync(v6, v8);
}

void __58__HMDCameraClipManager_localZone_didProcessModelDeletion___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) model];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (!v4)
  {
    v11 = [*(a1 + 32) model];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
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
      v14 = objc_autoreleasePoolPush();
      v15 = *(a1 + 40);
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 0;
        *&buf[8] = 0;
        v18 = [v13 hmbModelID];

        if (v18)
        {
          v19 = [v13 hmbModelID];
          [v19 getUUIDBytes:buf];
        }

        else
        {
          *buf = *MEMORY[0x277D0F960];
        }

        v41 = *buf;
        *buf = 138543874;
        *&buf[4] = v17;
        *&buf[12] = 1042;
        *&buf[14] = 16;
        v44 = 2098;
        v45 = &v41;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Significant event notification deleted with UUID: %{public,uuid_t}.16P", buf, 0x1Cu);
      }

      objc_autoreleasePoolPop(v14);
      v35 = *(a1 + 40);
      v22 = [MEMORY[0x277CBEB98] set];
      v36 = MEMORY[0x277CBEB98];
      v37 = [v13 hmbModelID];
      v38 = [v36 setWithObject:v37];
      [v35 _notifyTransportsOfUpdatedSignificantEvents:v22 removedSignificantEventUUIDs:v38];
    }

    else
    {
      v20 = [*(a1 + 32) model];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v22 = v21;

      if (v22)
      {
        v23 = objc_autoreleasePoolPush();
        v24 = *(a1 + 40);
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          v26 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          v27 = [v22 hmbModelID];

          if (v27)
          {
            v28 = [v22 hmbModelID];
            [v28 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v40 = *buf;
          *buf = 138543874;
          *&buf[4] = v26;
          *&buf[12] = 1042;
          *&buf[14] = 16;
          v44 = 2098;
          v45 = &v40;
          _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Significant event face classification deleted with UUID: %{public,uuid_t}.16P", buf, 0x1Cu);
        }

        objc_autoreleasePoolPop(v23);
        [*(a1 + 40) _handleChangedFaceClassificationModel:v22];
      }

      v13 = 0;
    }

    goto LABEL_33;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 40);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 0;
    *&buf[8] = 0;
    v9 = [v4 hmbModelID];

    if (v9)
    {
      v10 = [v4 hmbModelID];
      [v10 getUUIDBytes:buf];
    }

    else
    {
      *buf = *MEMORY[0x277D0F960];
    }

    v42 = *buf;
    *buf = 138543874;
    *&buf[4] = v8;
    *&buf[12] = 1042;
    *&buf[14] = 16;
    v44 = 2098;
    v45 = &v42;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Clip deleted with UUID: %{public,uuid_t}.16P", buf, 0x1Cu);
  }

  objc_autoreleasePoolPop(v5);
  v29 = *(a1 + 40);
  v30 = [MEMORY[0x277CBEB98] set];
  v31 = MEMORY[0x277CBEB98];
  v32 = [v4 hmbModelID];
  v33 = [v31 setWithObject:v32];
  [v29 _notifyTransportsOfUpdatedClips:v30 removedClipUUIDs:v33];

  v13 = [*(a1 + 40) delegate];
  if (objc_opt_respondsToSelector())
  {
    v34 = *(a1 + 40);
    v22 = [v4 hmbModelID];
    [v13 clipManager:v34 didDeleteClipWithUUID:v22];
LABEL_33:
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)localZone:(id)a3 didProcessModelUpdate:(id)a4
{
  v5 = a4;
  v6 = [(HMDCameraClipManager *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__HMDCameraClipManager_localZone_didProcessModelUpdate___block_invoke;
  v8[3] = &unk_27868A750;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_sync(v6, v8);
}

void __56__HMDCameraClipManager_localZone_didProcessModelUpdate___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) model];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 40);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      v9 = [v4 hmbModelID];

      if (v9)
      {
        v10 = [v4 hmbModelID];
        [v10 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v34 = *buf;
      *buf = 138543874;
      *&buf[4] = v8;
      *&buf[12] = 1042;
      *&buf[14] = 16;
      v36 = 2098;
      v37 = &v34;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Clip updated with UUID: %{public,uuid_t}.16P", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v5);
    v29 = *(a1 + 40);
    v13 = [*(a1 + 32) mirrorOutputFuture];
    [v29 _handleChangedClipModel:v4 wasCreated:0 mirrorOutputFuture:v13];
  }

  else
  {
    v11 = [*(a1 + 32) model];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
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
      v14 = objc_autoreleasePoolPush();
      v15 = *(a1 + 40);
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 0;
        *&buf[8] = 0;
        v18 = [v13 hmbModelID];

        if (v18)
        {
          v19 = [v13 hmbModelID];
          [v19 getUUIDBytes:buf];
        }

        else
        {
          *buf = *MEMORY[0x277D0F960];
        }

        v33 = *buf;
        *buf = 138543874;
        *&buf[4] = v17;
        *&buf[12] = 1042;
        *&buf[14] = 16;
        v36 = 2098;
        v37 = &v33;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Significant event notification updated with UUID: %{public,uuid_t}.16P", buf, 0x1Cu);
      }

      objc_autoreleasePoolPop(v14);
      v30 = *(a1 + 40);
      v22 = [*(a1 + 32) mirrorOutputFuture];
      [v30 _handleChangedSignificantEventNotificationModel:v13 mirrorOutputFuture:v22];
    }

    else
    {
      v20 = [*(a1 + 32) model];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v22 = v21;

      if (v22)
      {
        v23 = objc_autoreleasePoolPush();
        v24 = *(a1 + 40);
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          v27 = [v22 hmbModelID];

          if (v27)
          {
            v28 = [v22 hmbModelID];
            [v28 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v32 = *buf;
          *buf = 138543874;
          *&buf[4] = v26;
          *&buf[12] = 1042;
          *&buf[14] = 16;
          v36 = 2098;
          v37 = &v32;
          _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Face classification updated with UUID: %{public,uuid_t}.16P", buf, 0x1Cu);
        }

        objc_autoreleasePoolPop(v23);
        [*(a1 + 40) _handleChangedFaceClassificationModel:v22];
      }
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)localZone:(id)a3 didProcessModelCreation:(id)a4
{
  v5 = a4;
  v6 = [(HMDCameraClipManager *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__HMDCameraClipManager_localZone_didProcessModelCreation___block_invoke;
  v8[3] = &unk_27868A750;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_sync(v6, v8);
}

void __58__HMDCameraClipManager_localZone_didProcessModelCreation___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) model];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 40);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      v9 = [v4 hmbModelID];

      if (v9)
      {
        v10 = [v4 hmbModelID];
        [v10 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v34 = *buf;
      *buf = 138543874;
      *&buf[4] = v8;
      *&buf[12] = 1042;
      *&buf[14] = 16;
      v36 = 2098;
      v37 = &v34;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@New clip received with UUID: %{public,uuid_t}.16P", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v5);
    v29 = *(a1 + 40);
    v13 = [*(a1 + 32) mirrorOutputFuture];
    [v29 _handleChangedClipModel:v4 wasCreated:1 mirrorOutputFuture:v13];
  }

  else
  {
    v11 = [*(a1 + 32) model];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
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
      v14 = objc_autoreleasePoolPush();
      v15 = *(a1 + 40);
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 0;
        *&buf[8] = 0;
        v18 = [v13 hmbModelID];

        if (v18)
        {
          v19 = [v13 hmbModelID];
          [v19 getUUIDBytes:buf];
        }

        else
        {
          *buf = *MEMORY[0x277D0F960];
        }

        v33 = *buf;
        *buf = 138543874;
        *&buf[4] = v17;
        *&buf[12] = 1042;
        *&buf[14] = 16;
        v36 = 2098;
        v37 = &v33;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@New significant event notification received with UUID: %{public,uuid_t}.16P", buf, 0x1Cu);
      }

      objc_autoreleasePoolPop(v14);
      v30 = *(a1 + 40);
      v22 = [*(a1 + 32) mirrorOutputFuture];
      [v30 _handleChangedSignificantEventNotificationModel:v13 mirrorOutputFuture:v22];
    }

    else
    {
      v20 = [*(a1 + 32) model];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v22 = v21;

      if (v22)
      {
        v23 = objc_autoreleasePoolPush();
        v24 = *(a1 + 40);
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          v27 = [v22 hmbModelID];

          if (v27)
          {
            v28 = [v22 hmbModelID];
            [v28 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v32 = *buf;
          *buf = 138543874;
          *&buf[4] = v26;
          *&buf[12] = 1042;
          *&buf[14] = 16;
          v36 = 2098;
          v37 = &v32;
          _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@New face classification received with UUID: %{public,uuid_t}.16P", buf, 0x1Cu);
        }

        objc_autoreleasePoolPop(v23);
      }
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)cloudZone:(id)a3 didEncounterZoneDisabledError:(id)a4
{
  v5 = [(HMDCameraClipManager *)self workQueue:a3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HMDCameraClipManager_cloudZone_didEncounterZoneDisabledError___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v5, block);
}

void __64__HMDCameraClipManager_cloudZone_didEncounterZoneDisabledError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 clipManagerDidEncounterDisabledCloudStorage:*(a1 + 32)];
  }
}

- (NSUUID)messageTargetUUID
{
  v2 = [(HMDCameraClipManager *)self zoneManager];
  v3 = [v2 messageTargetUUID];

  return v3;
}

- (void)handleHomePersonManagerSettingsDidChangeNotification:(id)a3
{
  v4 = [(HMDCameraClipManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__HMDCameraClipManager_handleHomePersonManagerSettingsDidChangeNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
}

void __77__HMDCameraClipManager_handleHomePersonManagerSettingsDidChangeNotification___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) zoneManager];
  v3 = [v2 defaultConfiguration];
  v4 = [v3 isZoneOwner];

  if (v4)
  {
    v5 = [*(a1 + 32) home];
    v6 = [v5 personManagerSettings];
    v7 = [v6 isFaceClassificationEnabled];

    if ((v7 & 1) == 0)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 32);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v13 = 138543362;
        v14 = v11;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Home person manager face classification is disabled; removing all face classification models", &v13, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      [*(a1 + 32) _removeAllFaceClassificationModels];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleUserRemoteAccessDidChangeNotification:(id)a3
{
  v4 = [(HMDCameraClipManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMDCameraClipManager_handleUserRemoteAccessDidChangeNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
}

void __68__HMDCameraClipManager_handleUserRemoteAccessDidChangeNotification___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) zoneManager];
  [v1 updateShareParticipants];
}

- (void)handleUserCamerasAccessLevelDidChangeNotification:(id)a3
{
  v4 = [(HMDCameraClipManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HMDCameraClipManager_handleUserCamerasAccessLevelDidChangeNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
}

void __74__HMDCameraClipManager_handleUserCamerasAccessLevelDidChangeNotification___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) zoneManager];
  [v1 updateShareParticipants];
}

- (void)handleUserPrivilegeDidChangeNotification:(id)a3
{
  v4 = [(HMDCameraClipManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HMDCameraClipManager_handleUserPrivilegeDidChangeNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
}

void __65__HMDCameraClipManager_handleUserPrivilegeDidChangeNotification___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) zoneManager];
  [v1 updateShareParticipants];
}

- (void)handleUpdateCloudStorageMessage:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 identifier];
    *buf = 138543618;
    v27 = v9;
    v28 = 2114;
    v29 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling update cloud storage message: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMDCameraClipManager *)v7 cloudZone];

  if (v11)
  {
    if ([v4 BOOLForKey:*MEMORY[0x277CCF460]])
    {
      v12 = [(HMDCameraClipManager *)v7 _enableCloudStorage];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __56__HMDCameraClipManager_handleUpdateCloudStorageMessage___block_invoke;
      v24[3] = &unk_278687CC0;
      v25 = v4;
      v13 = [v12 addCompletionBlock:v24];

      v14 = v25;
    }

    else
    {
      v19 = [(HMDCameraClipManager *)v7 _disableCloudStorage];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __56__HMDCameraClipManager_handleUpdateCloudStorageMessage___block_invoke_2;
      v22[3] = &unk_278687CC0;
      v23 = v4;
      v20 = [v19 addCompletionBlock:v22];

      v14 = v23;
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v7;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Cannot update cloud storage because zones are not ready", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [v4 respondWithError:v14];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handleFetchIsCloudStorageEnabledMessage:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 identifier];
    *buf = 138543618;
    v40 = v9;
    v41 = 2114;
    v42 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling fetch is cloud storage enabled message: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMDCameraClipManager *)v7 cloudZone];

  if (!v11)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = v7;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v40 = v27;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch is cloud storage enabled because zones are not ready", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    v28 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    goto LABEL_12;
  }

  v12 = [(HMDCameraClipManager *)v7 zoneManager];
  v13 = [v12 defaultConfiguration];
  v14 = [v13 isZoneOwner];

  if ((v14 & 1) == 0)
  {
    v29 = objc_autoreleasePoolPush();
    v30 = v7;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543362;
      v40 = v32;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@User is not the zone owner; cannot fetch is cloud storage enabled", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v29);
    v28 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
LABEL_12:
    v33 = v28;
    [v4 respondWithError:v28];

    goto LABEL_13;
  }

  v15 = [(HMDCameraClipManager *)v7 quotaManager];
  v16 = [v15 fetchNamesForZonesWithEnabledCloudStorage];
  v17 = MEMORY[0x277D2C938];
  v18 = [(HMDCameraClipManager *)v7 workQueue];
  v19 = [v17 schedulerWithDispatchQueue:v18];
  v20 = [v16 reschedule:v19];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __64__HMDCameraClipManager_handleFetchIsCloudStorageEnabledMessage___block_invoke;
  v37[3] = &unk_2786811A0;
  v37[4] = v7;
  v21 = v4;
  v38 = v21;
  v22 = [v20 addSuccessBlock:v37];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __64__HMDCameraClipManager_handleFetchIsCloudStorageEnabledMessage___block_invoke_221;
  v35[3] = &unk_27868A1D8;
  v35[4] = v7;
  v36 = v21;
  v23 = [v22 addFailureBlock:v35];

LABEL_13:
  v34 = *MEMORY[0x277D85DE8];
}

void __64__HMDCameraClipManager_handleFetchIsCloudStorageEnabledMessage___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) zoneManager];
  v5 = [v4 zoneName];
  v6 = [v3 containsObject:v5];

  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = HMFEnabledStatusToString();
    *buf = 138543618;
    v19 = v10;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Fetched is cloud storage enabled: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = *(a1 + 40);
  v13 = [MEMORY[0x277CCABB0] numberWithBool:{v6, *MEMORY[0x277CCF460]}];
  v17 = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  [v12 respondWithPayload:v14];

  v15 = *MEMORY[0x277D85DE8];
}

void __64__HMDCameraClipManager_handleFetchIsCloudStorageEnabledMessage___block_invoke_221(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch is cloud storage enabled: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 40) respondWithError:v3];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleImportClipsMessage:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 identifier];
    *buf = 138543618;
    v46 = v9;
    v47 = 2114;
    v48 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling import clips message: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMDCameraClipManager *)v7 localZone];

  if (v11)
  {
    v12 = [v4 dataForKey:*MEMORY[0x277CCF420]];
    if (v12)
    {
      v13 = MEMORY[0x277CCAAC8];
      v14 = MEMORY[0x277CBEB98];
      v44[0] = objc_opt_class();
      v44[1] = objc_opt_class();
      v44[2] = objc_opt_class();
      v44[3] = objc_opt_class();
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:4];
      v16 = [v14 setWithArray:v15];
      v43 = 0;
      v17 = [v13 unarchivedObjectOfClasses:v16 fromData:v12 error:&v43];
      v18 = v43;

      if (v17)
      {
        v19 = [HMDCameraClipImporter alloc];
        v20 = [(HMDCameraClipManager *)v7 localZone];
        v21 = [(HMDCameraClipManager *)v7 cameraProfileUUID];
        v22 = [(HMDCameraClipManager *)v7 home];
        v23 = [v22 cameraBulletinNotificationManager];
        v24 = [(HMDCameraClipImporter *)v19 initWithLocalZone:v20 cameraProfileUUID:v21 bulletinNotificationManager:v23];

        v25 = [(HMDCameraClipImporter *)v24 importClipsWithImportData:v17];
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __49__HMDCameraClipManager_handleImportClipsMessage___block_invoke;
        v41[3] = &unk_278687CC0;
        v42 = v4;
        v26 = [v25 addCompletionBlock:v41];
      }

      else
      {
        v36 = objc_autoreleasePoolPush();
        v37 = v7;
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = HMFGetLogIdentifier();
          *buf = 138543618;
          v46 = v39;
          v47 = 2112;
          v48 = v18;
          _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive camera clips import dictionary from clip data: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v36);
        [v4 respondWithError:v18];
      }
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      v32 = v7;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        v35 = [v4 messagePayload];
        *buf = 138543618;
        v46 = v34;
        v47 = 2112;
        v48 = v35;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Could not find serialized import data in message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v31);
      v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [v4 respondWithError:v18];
    }
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = v7;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v46 = v30;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Cannot import clips because zones are not ready", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [v4 respondWithError:v12];
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (void)handleRemoteHandleFaceMisclassificationMessage:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 identifier];
    *buf = 138543618;
    *&buf[4] = v9;
    *&buf[12] = 2114;
    *&buf[14] = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling remote handle face misclassification message: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMDCameraClipManager *)v7 localZone];

  if (v11)
  {
    v12 = [v4 dataForKey:@"HMDCCM.mk.fmfcd"];
    v13 = [v4 uuidForKey:@"HMDCCM.mk.fmpu"];
    v14 = [v4 uuidForKey:@"HMDCCM.mk.fmpmu"];
    v15 = v14;
    if (v12 && v14 && v13)
    {
      v16 = [(HMDCameraClipManager *)v7 faceClassificationResolver];
      v17 = [v16 personManagerWithUUID:v15];

      if (v17)
      {
        [v17 handleFaceMisclassificationForFaceCropData:v12 personUUID:v13];
        [v4 respondWithSuccess];
      }

      else
      {
        v27 = objc_autoreleasePoolPush();
        v28 = v7;
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          [v15 getUUIDBytes:buf];
          v33 = *buf;
          *buf = 138543874;
          *&buf[4] = v30;
          *&buf[12] = 1042;
          *&buf[14] = 16;
          *&buf[18] = 2098;
          *&buf[20] = &v33;
          _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Could not find person manager with UUID %{public,uuid_t}.16P to handle misclassified person", buf, 0x1Cu);
        }

        objc_autoreleasePoolPop(v27);
        v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [v4 respondWithError:v31];

        v17 = 0;
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = v7;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v26 = [v4 messagePayload];
        *buf = 138543618;
        *&buf[4] = v25;
        *&buf[12] = 2112;
        *&buf[14] = v26;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Could not find all face misclassification information in message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
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
      *buf = 138543362;
      *&buf[4] = v21;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to handle face misclassification because zones are not ready", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [v4 respondWithError:v12];
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)handleHandleFaceMisclassificationMessage:(id)a3
{
  v62[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 identifier];
    *buf = 138543618;
    v57 = v9;
    v58 = 2114;
    v59 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling handle face misclassification message: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMDCameraClipManager *)v7 localZone];

  if (v11)
  {
    v12 = *MEMORY[0x277CCF498];
    v62[0] = objc_opt_class();
    v62[1] = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:2];
    v14 = [v4 unarchivedObjectForKey:v12 ofClasses:v13];

    v15 = [v14 firstObject];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 faceClassification];
      v18 = v17;
      if (v17)
      {
        v19 = [v17 person];
        if (v19)
        {
          v20 = [(HMDCameraClipManager *)v7 home];
          v21 = [v20 personManager];
          v22 = [v21 UUID];

          if (v22)
          {
            v51 = [v19 UUID];
            v23 = [v18 personManagerUUID];
            v24 = [(HMDCameraClipManager *)v7 _handleFaceMisclassificationForSignificantEvent:v16 personUUID:v51 faceClassificationPersonManagerUUID:v23 homePersonManagerUUID:v22];
            v54[0] = MEMORY[0x277D85DD0];
            v54[1] = 3221225472;
            v54[2] = __65__HMDCameraClipManager_handleHandleFaceMisclassificationMessage___block_invoke;
            v54[3] = &unk_27868A200;
            v25 = v4;
            v55 = v25;
            v26 = [v24 addSuccessBlock:v54];
            v52[0] = MEMORY[0x277D85DD0];
            v52[1] = 3221225472;
            v52[2] = __65__HMDCameraClipManager_handleHandleFaceMisclassificationMessage___block_invoke_2;
            v52[3] = &unk_27868A250;
            v53 = v25;
            v27 = [v26 addFailureBlock:v52];

            v28 = v55;
          }

          else
          {
            v46 = objc_autoreleasePoolPush();
            v47 = v7;
            v48 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              v49 = HMFGetLogIdentifier();
              *buf = 138543362;
              v57 = v49;
              _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_ERROR, "%{public}@Cannot handle misclassification because the home person manager can't be found", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v46);
            v28 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
            [v4 respondWithError:v28];
          }
        }

        else
        {
          v42 = objc_autoreleasePoolPush();
          v43 = v7;
          v44 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            v45 = HMFGetLogIdentifier();
            *buf = 138543618;
            v57 = v45;
            v58 = 2112;
            v59 = v18;
            _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_ERROR, "%{public}@Cannot handle misclassification for face classification without a person: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v42);
          v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
          [v4 respondWithError:v22];
        }
      }

      else
      {
        v38 = objc_autoreleasePoolPush();
        v39 = v7;
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = HMFGetLogIdentifier();
          *buf = 138543618;
          v57 = v41;
          v58 = 2112;
          v59 = v16;
          _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@Could not find face classification on significant event: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v38);
        v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [v4 respondWithError:v19];
      }
    }

    else
    {
      v33 = objc_autoreleasePoolPush();
      v34 = v7;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        v37 = [v4 messagePayload];
        *buf = 138543874;
        v57 = v36;
        v58 = 2112;
        v59 = v14;
        v60 = 2112;
        v61 = v37;
        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Could not find significant event in decoded significant events %@ in message payload: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v33);
      v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [v4 respondWithError:v18];
    }
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    v30 = v7;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543362;
      v57 = v32;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed to handle face misclassification because zones are not ready", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v29);
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [v4 respondWithError:v14];
  }

  v50 = *MEMORY[0x277D85DE8];
}

- (void)handleDeleteAllClipsMessage:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v28 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling delete all clips message", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraClipManager *)v7 localZone];

  if (v10)
  {
    v11 = [(HMDCameraClipManager *)v7 localZone];
    v26[0] = objc_opt_class();
    v26[1] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    v13 = MEMORY[0x277D17108];
    v14 = [v4 name];
    v15 = [v13 optionsWithLabel:v14];
    v16 = [v11 removeAllModelsOfTypes:v12 options:v15];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __52__HMDCameraClipManager_handleDeleteAllClipsMessage___block_invoke;
    v24[3] = &unk_278681178;
    v25 = v4;
    v17 = [v16 addCompletionBlock:v24];

    v18 = v25;
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = v7;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Cannot delete clips because zones are not ready", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [v4 respondWithError:v18];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)handleDeleteClipMessage:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 identifier];
    *buf = 138543618;
    v33 = v9;
    v34 = 2114;
    v35 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling delete clip message: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMDCameraClipManager *)v7 localZone];

  if (v11)
  {
    v12 = [v4 uuidForKey:*MEMORY[0x277CCF428]];
    if (v12)
    {
      v13 = [MEMORY[0x277CBEB98] setWithObject:v12];
      v14 = MEMORY[0x277D17108];
      v15 = [v4 name];
      v16 = [v14 optionsWithLabel:v15];
      v17 = [(HMDCameraClipManager *)v7 _removeClipsWithUUIDs:v13 options:v16];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __48__HMDCameraClipManager_handleDeleteClipMessage___block_invoke;
      v30[3] = &unk_278687CC0;
      v31 = v4;
      v18 = [v17 addCompletionBlock:v30];

      v19 = v31;
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = v7;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        v28 = [v4 messagePayload];
        *buf = 138543618;
        v33 = v27;
        v34 = 2112;
        v35 = v28;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Could not find clip UUID in message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [v4 respondWithError:v19];
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = v7;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Cannot delete clip because zones are not ready", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [v4 respondWithError:v12];
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)handleFetchSignificantEventsMessage:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 identifier];
    *buf = 138543618;
    v58 = v9;
    v59 = 2114;
    v60 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling fetch significant event message: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMDCameraClipManager *)v7 localZone];

  if (v11)
  {
    v12 = [v4 setForKey:*MEMORY[0x277CCF490]];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 allObjects];
      v15 = [(HMDCameraClipManager *)v7 _significantEventsWithUUIDs:v14];

      v55 = *MEMORY[0x277CCF498];
      v16 = encodeRootObjectForIncomingXPCMessage(v15, 0);
      v56 = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
      [v4 respondWithPayload:v17];
    }

    else
    {
      v22 = [(HMDCameraClipManager *)v7 fetchServerFactory];
      v15 = (v22)[2](v22, v4);

      if (v15)
      {
        v16 = [v4 dateForKey:*MEMORY[0x277CCF448]];
        v23 = [v4 dateForKey:*MEMORY[0x277CCF450]];
        v24 = [v4 numberForKey:*MEMORY[0x277CCF468]];
        v25 = [v4 numberForKey:*MEMORY[0x277CCF488]];
        v26 = v25;
        if (v16 && v23 && v24 && v25)
        {
          v27 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v16 endDate:v23];
          v48 = v26;
          v28 = [v26 BOOLValue];
          [v15 setTotalFetchedObjectsLimit:{objc_msgSend(v24, "unsignedIntegerValue")}];
          v54 = 0;
          v52[0] = MEMORY[0x277D85DD0];
          v52[1] = 3221225472;
          v52[2] = __60__HMDCameraClipManager_handleFetchSignificantEventsMessage___block_invoke;
          v52[3] = &unk_278680E78;
          v29 = v15;
          v53 = v29;
          LOBYTE(v28) = [(HMDCameraClipManager *)v7 _fetchSignificantEventsWithDateInterval:v27 isAscending:v28 error:&v54 handler:v52];
          v46 = v54;
          if (v28)
          {
            v50[0] = MEMORY[0x277D85DD0];
            v50[1] = 3221225472;
            v50[2] = __60__HMDCameraClipManager_handleFetchSignificantEventsMessage___block_invoke_215;
            v50[3] = &unk_27868A728;
            v51 = v4;
            [v29 sendCurrentlyBatchedFetchedObjectsWithCompletion:v50];

            v30 = v46;
          }

          else
          {
            v40 = objc_autoreleasePoolPush();
            v41 = v7;
            v42 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v43 = v45 = v40;
              *buf = 138543618;
              v58 = v43;
              v59 = 2112;
              v60 = v46;
              _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch significant event models from local zone: %@", buf, 0x16u);

              v40 = v45;
            }

            objc_autoreleasePoolPop(v40);
            v30 = v46;
            [v4 respondWithError:v46];
          }

          v26 = v48;
        }

        else
        {
          v35 = objc_autoreleasePoolPush();
          v36 = v7;
          v37 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v38 = v49 = v26;
            [v4 messagePayload];
            v39 = v47 = v23;
            *buf = 138543618;
            v58 = v38;
            v59 = 2112;
            v60 = v39;
            _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Could not find required value in message payload: %@", buf, 0x16u);

            v23 = v47;
            v26 = v49;
          }

          objc_autoreleasePoolPop(v35);
          v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
          [v4 respondWithError:v27];
        }
      }

      else
      {
        v31 = objc_autoreleasePoolPush();
        v32 = v7;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = HMFGetLogIdentifier();
          *buf = 138543618;
          v58 = v34;
          v59 = 2112;
          v60 = v4;
          _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to create fetch server from message: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v31);
        v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
        [v4 respondWithError:v16];
        v15 = 0;
      }
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
      *buf = 138543362;
      v58 = v21;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch significant events because zones are not ready", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [v4 respondWithError:v13];
  }

  v44 = *MEMORY[0x277D85DE8];
}

uint64_t __60__HMDCameraClipManager_handleFetchSignificantEventsMessage___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  [*(a1 + 32) handleFetchedObject:a2];
  result = [*(a1 + 32) canHandleMoreFetchedObjects];
  *a3 = result ^ 1;
  return result;
}

- (void)handleFetchFaceCropURLMessage:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 identifier];
    *buf = 138543618;
    *&buf[4] = v9;
    *&buf[12] = 2114;
    *&buf[14] = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling fetch face crop for message: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMDCameraClipManager *)v7 localZone];

  if (v11)
  {
    v12 = [v4 setForKey:*MEMORY[0x277CCF490]];
    v13 = [v12 anyObject];
    if (v13)
    {
      v14 = [(HMDCameraClipManager *)v7 localZone];
      v40 = 0;
      v15 = [v14 fetchModelWithModelID:v13 ofType:objc_opt_class() error:&v40];
      v16 = v40;

      if (v15)
      {
        v17 = [(HMDCameraClipManager *)v7 _fetchFaceCropURLForSignificantEventModel:v15];
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __54__HMDCameraClipManager_handleFetchFaceCropURLMessage___block_invoke;
        v38[3] = &unk_278681150;
        v18 = v4;
        v39 = v18;
        v19 = [v17 addSuccessBlock:v38];
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __54__HMDCameraClipManager_handleFetchFaceCropURLMessage___block_invoke_2;
        v36[3] = &unk_27868A250;
        v37 = v18;
        v20 = [v19 addFailureBlock:v36];

        v21 = v39;
      }

      else
      {
        v31 = objc_autoreleasePoolPush();
        v32 = v7;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          [v13 getUUIDBytes:buf];
          v41 = *buf;
          *buf = 138544130;
          *&buf[4] = v34;
          *&buf[12] = 1042;
          *&buf[14] = 16;
          *&buf[18] = 2098;
          *&buf[20] = &v41;
          *&buf[28] = 2112;
          *&buf[30] = v16;
          _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Could not find significant event model with UUID %{public,uuid_t}.16P: %@", buf, 0x26u);
        }

        objc_autoreleasePoolPop(v31);
        v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [v4 respondWithError:v21];
      }
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = v7;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        v30 = [v4 messagePayload];
        *buf = 138543874;
        *&buf[4] = v29;
        *&buf[12] = 2112;
        *&buf[14] = v12;
        *&buf[22] = 2112;
        *&buf[24] = v30;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Could not find significant event UUID in decoded UUIDs %@ in message payload: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v26);
      v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [v4 respondWithError:v16];
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v7;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v25;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch face crop url because zones are not ready", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [v4 respondWithError:v12];
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __54__HMDCameraClipManager_handleFetchFaceCropURLMessage___block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v6 = *MEMORY[0x277CCF458];
  v3 = [a2 absoluteString];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 respondWithPayload:v4];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleFetchFaceCropDataRepresentationMessage:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 identifier];
    *buf = 138543618;
    *&buf[4] = v9;
    *&buf[12] = 2114;
    *&buf[14] = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling fetch face crop data representation with message: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMDCameraClipManager *)v7 localZone];

  if (v11)
  {
    v12 = [v4 setForKey:*MEMORY[0x277CCF490]];
    v13 = [v12 anyObject];
    if (v13)
    {
      v14 = [(HMDCameraClipManager *)v7 localZone];
      v42 = 0;
      v15 = [v14 fetchModelWithModelID:v13 ofType:objc_opt_class() error:&v42];
      v16 = v42;

      if (v15)
      {
        v17 = [(HMDCameraClipManager *)v7 _fetchFaceCropURLForSignificantEventModel:v15];
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __69__HMDCameraClipManager_handleFetchFaceCropDataRepresentationMessage___block_invoke;
        v41[3] = &unk_278681100;
        v41[4] = v7;
        v18 = [v17 flatMap:v41];
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __69__HMDCameraClipManager_handleFetchFaceCropDataRepresentationMessage___block_invoke_214;
        v39[3] = &unk_278681128;
        v19 = v4;
        v40 = v19;
        v20 = [v18 addSuccessBlock:v39];
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __69__HMDCameraClipManager_handleFetchFaceCropDataRepresentationMessage___block_invoke_2;
        v37[3] = &unk_27868A250;
        v38 = v19;
        v21 = [v20 addFailureBlock:v37];
      }

      else
      {
        v31 = objc_autoreleasePoolPush();
        v32 = v7;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          [v13 getUUIDBytes:buf];
          v43 = *buf;
          *buf = 138544130;
          *&buf[4] = v34;
          *&buf[12] = 1042;
          *&buf[14] = 16;
          *&buf[18] = 2098;
          *&buf[20] = &v43;
          *&buf[28] = 2112;
          *&buf[30] = v16;
          _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Could not find significant event model with UUID %{public,uuid_t}.16P: %@", buf, 0x26u);
        }

        objc_autoreleasePoolPop(v31);
        v35 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [v4 respondWithError:v35];
      }
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = v7;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        v30 = [v4 messagePayload];
        *buf = 138543874;
        *&buf[4] = v29;
        *&buf[12] = 2112;
        *&buf[14] = v12;
        *&buf[22] = 2112;
        *&buf[24] = v30;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Could not find significant event UUID in decoded UUIDs %@ in message payload: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v26);
      v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [v4 respondWithError:v16];
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v7;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v25;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch face crop data representation because zones are not ready", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [v4 respondWithError:v12];
  }

  v36 = *MEMORY[0x277D85DE8];
}

id __69__HMDCameraClipManager_handleFetchFaceCropDataRepresentationMessage___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) fileManager];
  v16 = 0;
  v5 = [v4 dataWithContentsOfURL:v3 options:0 error:&v16];
  v6 = v16;

  if (v5)
  {
    v7 = [MEMORY[0x277D2C900] futureWithResult:v5];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543874;
      v18 = v11;
      v19 = 2112;
      v20 = v3;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get data from URL %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = MEMORY[0x277D2C900];
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    v7 = [v12 futureWithError:v13];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

void __69__HMDCameraClipManager_handleFetchFaceCropDataRepresentationMessage___block_invoke_214(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v7 = *MEMORY[0x277CCF440];
  v8[0] = a2;
  v3 = MEMORY[0x277CBEAC0];
  v4 = a2;
  v5 = [v3 dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v2 respondWithPayload:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleFetchHeroFrameURLMessage:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 messagePayload];
    *buf = 138543618;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling fetch hero frame URL message with payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMDCameraClipManager *)v7 localZone];

  if (v11)
  {
    v12 = [v4 uuidForKey:*MEMORY[0x277CCF428]];
    if (v12)
    {
      v13 = [(HMDCameraClipManager *)v7 localZone];
      v38 = 0;
      v14 = [v13 fetchModelWithModelID:v12 ofType:objc_opt_class() error:&v38];
      v15 = v38;

      if (v14)
      {
        v16 = [(HMDCameraClipManager *)v7 _fetchCanonicalHeroFrameURLForClipModel:v14];
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __55__HMDCameraClipManager_handleFetchHeroFrameURLMessage___block_invoke;
        v36[3] = &unk_278681150;
        v17 = v4;
        v37 = v17;
        v18 = [v16 addSuccessBlock:v36];
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __55__HMDCameraClipManager_handleFetchHeroFrameURLMessage___block_invoke_2;
        v34[3] = &unk_27868A250;
        v35 = v17;
        v19 = [v18 addFailureBlock:v34];

        v20 = v37;
      }

      else
      {
        v29 = objc_autoreleasePoolPush();
        v30 = v7;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          [v12 getUUIDBytes:buf];
          v39 = *buf;
          *buf = 138543874;
          *&buf[4] = v32;
          *&buf[12] = 1042;
          *&buf[14] = 16;
          *&buf[18] = 2098;
          *&buf[20] = &v39;
          _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed requesting to fetch hero frame url because no clip could be found for UUID %{public,uuid_t}.16P", buf, 0x1Cu);
        }

        objc_autoreleasePoolPop(v29);
        v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [v4 respondWithError:v20];
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = v7;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v28;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch hero frame url because clip uuid cannot be found in message payload", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
      v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [v4 respondWithError:v15];
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = v7;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v24;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch hero frame url because zones are not ready", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [v4 respondWithError:v12];
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __55__HMDCameraClipManager_handleFetchHeroFrameURLMessage___block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v6 = *MEMORY[0x277CCF458];
  v3 = [a2 absoluteString];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 respondWithPayload:v4];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleFetchHeroFrameDataRepresentationMessage:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 identifier];
    *buf = 138543618;
    v43 = v9;
    v44 = 2114;
    v45 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling fetch hero frame data representation with message: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMDCameraClipManager *)v7 localZone];

  if (v11)
  {
    v12 = [v4 uuidForKey:*MEMORY[0x277CCF428]];
    if (v12)
    {
      v13 = [(HMDCameraClipManager *)v7 localZone];
      v41 = 0;
      v14 = [v13 fetchModelWithModelID:v12 ofType:objc_opt_class() error:&v41];
      v15 = v41;

      if (v14)
      {
        v16 = [(HMDCameraClipManager *)v7 _fetchCanonicalHeroFrameURLForClipModel:v14];
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __70__HMDCameraClipManager_handleFetchHeroFrameDataRepresentationMessage___block_invoke;
        v40[3] = &unk_278681100;
        v40[4] = v7;
        v17 = [v16 flatMap:v40];
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __70__HMDCameraClipManager_handleFetchHeroFrameDataRepresentationMessage___block_invoke_211;
        v38[3] = &unk_278681128;
        v18 = v4;
        v39 = v18;
        v19 = [v17 addSuccessBlock:v38];
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __70__HMDCameraClipManager_handleFetchHeroFrameDataRepresentationMessage___block_invoke_2;
        v36[3] = &unk_27868A250;
        v37 = v18;
        v20 = [v19 addFailureBlock:v36];
      }

      else
      {
        v30 = objc_autoreleasePoolPush();
        v31 = v7;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = HMFGetLogIdentifier();
          *buf = 138543874;
          v43 = v33;
          v44 = 2112;
          v45 = v12;
          v46 = 2112;
          v47 = v15;
          _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Could not find clip with UUID %@: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v30);
        v34 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [v4 respondWithError:v34];
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = v7;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        v29 = [v4 messagePayload];
        *buf = 138543618;
        v43 = v28;
        v44 = 2112;
        v45 = v29;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Cannot find clip UUID in message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [v4 respondWithError:v15];
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = v7;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v43 = v24;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch hero frame data representation because zones are not ready", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [v4 respondWithError:v12];
  }

  v35 = *MEMORY[0x277D85DE8];
}

id __70__HMDCameraClipManager_handleFetchHeroFrameDataRepresentationMessage___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) fileManager];
  v16 = 0;
  v5 = [v4 dataWithContentsOfURL:v3 options:0 error:&v16];
  v6 = v16;

  if (v5)
  {
    v7 = [MEMORY[0x277D2C900] futureWithResult:v5];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543874;
      v18 = v11;
      v19 = 2112;
      v20 = v3;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get data from URL %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = MEMORY[0x277D2C900];
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    v7 = [v12 futureWithError:v13];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

void __70__HMDCameraClipManager_handleFetchHeroFrameDataRepresentationMessage___block_invoke_211(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v7 = *MEMORY[0x277CCF440];
  v8[0] = a2;
  v3 = MEMORY[0x277CBEAC0];
  v4 = a2;
  v5 = [v3 dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v2 respondWithPayload:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleFetchVideoSegmentsAssetContextMessage:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling fetch video segments asset context message", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDCameraClipManager *)v7 _fetchAssetContextForMessage:v4 propertyName:@"videoStreamingAsset"];
  v10 = [HMDCameraClipManagerRequestLogEvent alloc];
  v11 = [(HMDCameraClipManager *)v7 zoneManager];
  v12 = [v11 home];
  v13 = [v12 uuid];
  v14 = [(HMDCameraClipManagerRequestLogEvent *)v10 initWithRequestName:@"HMDCameraClipManagerRequestLogEventFetchVideoSegmentsAssetRequestName" homeUUID:v13];
  [(HMDCameraClipManager *)v7 submitLogEvent:v14 error:0];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleFetchCountOfClipsMessage:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 identifier];
    *buf = 138543618;
    v49 = v9;
    v50 = 2114;
    v51 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling fetch count of clips message: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMDCameraClipManager *)v7 localZone];

  if (v11)
  {
    v12 = [v4 dateForKey:*MEMORY[0x277CCF448]];
    v13 = [v4 dateForKey:*MEMORY[0x277CCF450]];
    v14 = [v4 numberForKey:*MEMORY[0x277CCF470]];
    v15 = v14;
    if (v12 && v13 && v14)
    {
      v16 = [v14 integerValue];
      v17 = objc_autoreleasePoolPush();
      v18 = v7;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543874;
        v49 = v20;
        v50 = 2112;
        v51 = v12;
        v52 = 2112;
        v53 = v13;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Fetching count of clips between %@ and %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
      v46[0] = @"dateAfter";
      v46[1] = @"dateBefore";
      v47[0] = v12;
      v47[1] = v13;
      v46[2] = @"quality";
      v21 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
      v47[2] = v21;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:3];

      v23 = [(HMDCameraClipManager *)v18 localZone];
      v24 = +[HMDCameraClipModel countOfClipsWithQualityBetweenDatesQuery];
      v43 = 0;
      v25 = [v23 countModelsUsingQuery:v24 arguments:v22 error:&v43];
      v26 = v43;

      if (v25)
      {
        v44 = *MEMORY[0x277CCF438];
        v45 = v25;
        v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        [v4 respondWithPayload:v27];
      }

      else
      {
        v37 = objc_autoreleasePoolPush();
        v38 = v18;
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v40 = v42 = v37;
          *buf = 138543618;
          v49 = v40;
          v50 = 2112;
          v51 = v26;
          _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch count of clip models from local zone: %@", buf, 0x16u);

          v37 = v42;
        }

        objc_autoreleasePoolPop(v37);
        [v4 respondWithError:v26];
      }
    }

    else
    {
      v32 = objc_autoreleasePoolPush();
      v33 = v7;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = HMFGetLogIdentifier();
        v36 = [v4 messagePayload];
        *buf = 138543618;
        v49 = v35;
        v50 = 2112;
        v51 = v36;
        _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Could not find required value in message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v32);
      v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [v4 respondWithError:v22];
    }
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v29 = v7;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543362;
      v49 = v31;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch count of clips because zones are not ready", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v28);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [v4 respondWithError:v12];
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)handleFetchClipForSignificantEventMessage:(id)a3
{
  v72 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 identifier];
    *buf = 138543618;
    *&buf[4] = v9;
    *&buf[12] = 2114;
    *&buf[14] = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling fetch clip for significant event message: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMDCameraClipManager *)v7 localZone];

  if (v11)
  {
    v12 = [v4 setForKey:*MEMORY[0x277CCF490]];
    v13 = [v12 anyObject];
    if (!v13)
    {
      v30 = objc_autoreleasePoolPush();
      v31 = v7;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        v34 = [v4 messagePayload];
        *buf = 138543874;
        *&buf[4] = v33;
        *&buf[12] = 2112;
        *&buf[14] = v12;
        *&buf[22] = 2112;
        *&buf[24] = v34;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Could not find significant event UUID in decoded UUIDs %@ in message payload: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v30);
      v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [v4 respondWithError:v16];
      goto LABEL_40;
    }

    v14 = [(HMDCameraClipManager *)v7 localZone];
    v65 = 0;
    v15 = [v14 fetchModelWithModelID:v13 ofType:objc_opt_class() error:&v65];
    v16 = v65;

    if (!v15)
    {
      v35 = objc_autoreleasePoolPush();
      v36 = v7;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = HMFGetLogIdentifier();
        *buf = 0;
        *&buf[8] = 0;
        [v13 getUUIDBytes:buf];
        v70 = *buf;
        *buf = 138544130;
        *&buf[4] = v38;
        *&buf[12] = 1042;
        *&buf[14] = 16;
        *&buf[18] = 2098;
        *&buf[20] = &v70;
        *&buf[28] = 2112;
        *&buf[30] = v16;
        _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Could not find significant event with UUID %{public,uuid_t}.16P: %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v35);
      v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [v4 respondWithError:v19];
      goto LABEL_39;
    }

    v17 = [(HMDCameraClipManager *)v7 localZone];
    v18 = [v15 hmbParentModelID];
    v64 = v16;
    v19 = [v17 fetchModelWithModelID:v18 ofType:objc_opt_class() error:&v64];
    v20 = v64;

    if (v19)
    {
      v16 = v20;
LABEL_8:
      v21 = [v19 hmbModelID];
      v22 = [(HMDCameraClipManager *)v7 significantEventsForClipWithUUID:v21];

      v23 = [v19 createClipWithSignificantEvents:v22];
      v66 = *MEMORY[0x277CCF418];
      v24 = encodeRootObjectForIncomingXPCMessage(v23, 0);
      v67 = v24;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
      [v4 respondWithPayload:v25];

LABEL_38:
LABEL_39:

LABEL_40:
      goto LABEL_41;
    }

    v39 = objc_autoreleasePoolPush();
    v40 = v7;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      context = v39;
      v42 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      v43 = [v15 hmbParentModelID];

      if (v43)
      {
        v44 = [v15 hmbParentModelID];
        [v44 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v69 = *buf;
      *buf = 138543874;
      *&buf[4] = v42;
      *&buf[12] = 1042;
      *&buf[14] = 16;
      *&buf[18] = 2098;
      *&buf[20] = &v69;
      _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@Could not find clip model with UUID %{public,uuid_t}.16P. Falling back to using the associated clip", buf, 0x1Cu);

      v39 = context;
    }

    objc_autoreleasePoolPop(v39);
    v19 = [v15 associatedClip];
    contexta = objc_autoreleasePoolPush();
    v45 = v40;
    v46 = HMFGetOSLogHandle();
    v47 = v46;
    if (v19)
    {
      v60 = v20;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        v48 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v48;
        *&buf[12] = 2112;
        *&buf[14] = v19;
        _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_INFO, "%{public}@Fetching clip model using associated clip reference: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(contexta);
      [(HMDCameraClipManager *)v45 localZone];
      v49 = v59 = v45;
      v50 = [v19 hmbModelID];
      v63 = v60;
      v51 = [v49 fetchModelWithModelID:v50 ofType:objc_opt_class() error:&v63];
      v16 = v63;

      if (v51)
      {

        v19 = v51;
        goto LABEL_8;
      }

      v53 = objc_autoreleasePoolPush();
      v45 = v59;
      v54 = v59;
      v47 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
LABEL_37:

        objc_autoreleasePoolPop(v53);
        v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [v4 respondWithError:v22];
        goto LABEL_38;
      }

      contexta = v53;
      v55 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      v56 = [v19 hmbModelID];

      if (v56)
      {
        v57 = [v19 hmbModelID];
        [v57 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v68 = *buf;
      *buf = 138544130;
      *&buf[4] = v55;
      *&buf[12] = 1042;
      *&buf[14] = 16;
      *&buf[18] = 2098;
      *&buf[20] = &v68;
      *&buf[28] = 2112;
      *&buf[30] = v16;
      _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_ERROR, "%{public}@Could not find clip with UUID %{public,uuid_t}.16P: %@", buf, 0x26u);
    }

    else
    {
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v52 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v52;
        *&buf[12] = 2112;
        *&buf[14] = v15;
        _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_ERROR, "%{public}@No associatedClip found for significant event model: %@", buf, 0x16u);
      }

      v16 = v20;
    }

    v53 = contexta;
    goto LABEL_37;
  }

  v26 = objc_autoreleasePoolPush();
  v27 = v7;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v29 = HMFGetLogIdentifier();
    *buf = 138543362;
    *&buf[4] = v29;
    _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch clip for significant event because zones are not ready", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v26);
  v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  [v4 respondWithError:v12];
LABEL_41:

  v58 = *MEMORY[0x277D85DE8];
}

- (void)handleFetchClipsMessage:(id)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 identifier];
    *buf = 138543618;
    v57 = v9;
    v58 = 2114;
    v59 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling fetch clips message: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMDCameraClipManager *)v7 localZone];

  if (v11)
  {
    v12 = [(HMDCameraClipManager *)v7 fetchServerFactory];
    v13 = (v12)[2](v12, v4);

    if (v13)
    {
      v14 = [v4 dateForKey:*MEMORY[0x277CCF448]];
      v15 = [v4 dateForKey:*MEMORY[0x277CCF450]];
      v16 = [v4 numberForKey:*MEMORY[0x277CCF468]];
      v17 = [v4 numberForKey:*MEMORY[0x277CCF488]];
      v18 = [v4 numberForKey:*MEMORY[0x277CCF470]];
      v19 = v18;
      if (v14 && v15 && v16 && v17 && v18)
      {
        v49 = v15;
        v20 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v14 endDate:v15];
        v21 = v16;
        v22 = [v17 BOOLValue];
        v23 = [v19 integerValue];
        v47 = v21;
        [v13 setTotalFetchedObjectsLimit:{objc_msgSend(v21, "unsignedIntegerValue")}];
        v55 = 0;
        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = __48__HMDCameraClipManager_handleFetchClipsMessage___block_invoke;
        v53[3] = &unk_2786810D8;
        v24 = v13;
        v54 = v24;
        LOBYTE(v22) = [(HMDCameraClipManager *)v7 _fetchClipsWithDateInterval:v20 quality:v23 isAscending:v22 error:&v55 handler:v53];
        v25 = v55;
        if (v22)
        {
          v51[0] = MEMORY[0x277D85DD0];
          v51[1] = 3221225472;
          v51[2] = __48__HMDCameraClipManager_handleFetchClipsMessage___block_invoke_206;
          v51[3] = &unk_27868A728;
          v52 = v4;
          [v24 sendCurrentlyBatchedFetchedObjectsWithCompletion:v51];
        }

        else
        {
          v41 = objc_autoreleasePoolPush();
          v42 = v7;
          v43 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v44 = v46 = v41;
            *buf = 138543618;
            v57 = v44;
            v58 = 2112;
            v59 = v25;
            _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch clip models from local zone: %@", buf, 0x16u);

            v41 = v46;
          }

          objc_autoreleasePoolPop(v41);
          [v4 respondWithError:v25];
        }

        v16 = v47;
        v15 = v49;
      }

      else
      {
        v34 = objc_autoreleasePoolPush();
        v35 = v7;
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v37 = v50 = v15;
          [v4 messagePayload];
          v48 = v17;
          v38 = v19;
          v40 = v39 = v16;
          *buf = 138543618;
          v57 = v37;
          v58 = 2112;
          v59 = v40;
          _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@Could not find required value in message payload: %@", buf, 0x16u);

          v16 = v39;
          v19 = v38;
          v17 = v48;

          v15 = v50;
        }

        objc_autoreleasePoolPop(v34);
        v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
        [v4 respondWithError:v20];
      }
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      v31 = v7;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543618;
        v57 = v33;
        v58 = 2112;
        v59 = v4;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Failed to create fetch server from message: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
      v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [v4 respondWithError:v14];
    }
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = v7;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v57 = v29;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch clips because zones are not ready", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [v4 respondWithError:v13];
  }

  v45 = *MEMORY[0x277D85DE8];
}

uint64_t __48__HMDCameraClipManager_handleFetchClipsMessage___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  [*(a1 + 32) handleFetchedObject:a2];
  result = [*(a1 + 32) canHandleMoreFetchedObjects];
  *a3 = result ^ 1;
  return result;
}

- (void)handleFetchClipMessage:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 identifier];
    *buf = 138543618;
    v39 = v9;
    v40 = 2114;
    v41 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling fetch clip message: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMDCameraClipManager *)v7 localZone];

  if (v11)
  {
    v12 = [v4 uuidForKey:*MEMORY[0x277CCF428]];
    if (v12)
    {
      v13 = [(HMDCameraClipManager *)v7 localZone];
      v35 = 0;
      v14 = [v13 fetchModelWithModelID:v12 ofType:objc_opt_class() error:&v35];
      v15 = v35;

      if (v14)
      {
        v16 = [v14 hmbModelID];
        v17 = [(HMDCameraClipManager *)v7 significantEventsForClipWithUUID:v16];

        v18 = [v14 createClipWithSignificantEvents:v17];
        v36 = *MEMORY[0x277CCF418];
        v19 = encodeRootObjectForIncomingXPCMessage(v18, 0);
        v37 = v19;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        [v4 respondWithPayload:v20];
      }

      else
      {
        v30 = objc_autoreleasePoolPush();
        v31 = v7;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = HMFGetLogIdentifier();
          *buf = 138543874;
          v39 = v33;
          v40 = 2112;
          v41 = v12;
          v42 = 2112;
          v43 = v15;
          _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Could not find clip with UUID %@: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v30);
        v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [v4 respondWithError:v17];
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = v7;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        v29 = [v4 messagePayload];
        *buf = 138543618;
        v39 = v28;
        v40 = 2112;
        v41 = v29;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Could not find clip UUID in message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [v4 respondWithError:v15];
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = v7;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v24;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch clip because zones are not ready", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [v4 respondWithError:v12];
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)handlePerformCloudPullMessage:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v21 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling perform cloud pull message", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraClipManager *)v7 _performCloudPull];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __54__HMDCameraClipManager_handlePerformCloudPullMessage___block_invoke;
  v18[3] = &unk_27868A200;
  v11 = v4;
  v19 = v11;
  v12 = [v10 addSuccessBlock:v18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __54__HMDCameraClipManager_handlePerformCloudPullMessage___block_invoke_2;
  v16[3] = &unk_27868A250;
  v17 = v11;
  v13 = v11;
  v14 = [v12 addFailureBlock:v16];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleUnsubscribeMessage:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v22 = 138543362;
    v23 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling unsubscribe message", &v22, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [v4 transport];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    v13 = [(HMDCameraClipManager *)v7 clientConnectionsTimer];
    [v13 removeClientConnection:v12];

    [v4 respondWithPayload:0];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v7;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = objc_opt_class();
      v19 = [v4 transport];
      v22 = 138543874;
      v23 = v17;
      v24 = 2112;
      v25 = v18;
      v26 = 2112;
      v27 = v19;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unsubscribing transport was not of expected class %@: %@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [v4 respondWithError:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handleSubscribeMessage:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v28 = 138543362;
    v29 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling subscribe message", &v28, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [v4 transport];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    v13 = [(HMDCameraClipManager *)v7 clientConnectionsTimer];
    [v13 addClientConnection:v12];

    v14 = [(HMDCameraClipManager *)v7 cloudZone];

    if (!v14)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = v7;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = HMFGetLogIdentifier();
        v28 = 138543362;
        v29 = v18;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Asked to subscribe to changes when no cloud zone exists; Restarting zone manager", &v28, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      v19 = [(HMDCameraClipManager *)v16 zoneManager];
      [v19 start];
    }

    [v4 respondWithPayload:0];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = v7;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = objc_opt_class();
      v25 = [v4 transport];
      v28 = 138543874;
      v29 = v23;
      v30 = 2112;
      v31 = v24;
      v32 = 2112;
      v33 = v25;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Subscribing transport was not of expected class %@: %@", &v28, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
    v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [v4 respondWithError:v26];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (id)_disableCloudStorage
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v26 = 138543362;
    v27 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Disabling cloud storage", &v26, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [(HMDCameraClipManager *)v5 zoneManager];
  v9 = [v8 defaultConfiguration];
  v10 = [v9 isZoneOwner];

  if (v10)
  {
    v11 = [(HMDCameraClipManager *)v5 quotaManager];
    v12 = [(HMDCameraClipManager *)v5 zoneManager];
    v13 = [v12 zoneName];
    v14 = [v11 disableCloudStorageForZoneWithName:v13];
    v15 = MEMORY[0x277D2C938];
    v16 = [(HMDCameraClipManager *)v5 workQueue];
    v17 = [v15 schedulerWithDispatchQueue:v16];
    v18 = [v14 reschedule:v17];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = v5;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@User is not the zone owner; cannot disable cloud storage", &v26, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v23 = MEMORY[0x277D2C900];
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    v18 = [v23 futureWithError:v11];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_enableCloudStorage
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v23 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Enabling cloud storage", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [(HMDCameraClipManager *)v5 zoneManager];
  v9 = [v8 defaultConfiguration];
  v10 = [v9 isZoneOwner];

  if (v10)
  {
    v11 = [(HMDCameraClipManager *)v5 cloudZone];
    v12 = [v11 startUp];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __43__HMDCameraClipManager__enableCloudStorage__block_invoke;
    v21[3] = &unk_2786837F8;
    v21[4] = v5;
    v13 = [v12 flatMap:v21];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v5;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@User is not the zone owner; cannot enable cloud storage", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v18 = MEMORY[0x277D2C900];
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    v13 = [v18 futureWithError:v11];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v13;
}

id __43__HMDCameraClipManager__enableCloudStorage__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) quotaManager];
  v3 = [*(a1 + 32) zoneManager];
  v4 = [v3 zoneName];
  v5 = [v2 enableCloudStorageForZoneWithName:v4];
  v6 = MEMORY[0x277D2C938];
  v7 = [*(a1 + 32) workQueue];
  v8 = [v6 schedulerWithDispatchQueue:v7];
  v9 = [v5 reschedule:v8];

  return v9;
}

- (void)_removeAllFaceClassificationModels
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [MEMORY[0x277D17108] optionsWithLabel:@"Remove all face classification models"];
  v5 = [(HMDCameraClipManager *)self localZone];
  v9[0] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v7 = [v5 removeAllModelsOfTypes:v6 options:v4];

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_removeClipsWithUUIDs:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDCameraClipManager *)self localZone];
  v9 = [v8 removeModelsAndDescendantModelsWithIDs:v7 depth:3 options:v6];

  v10 = [v9 flatMap:&__block_literal_global_198];

  return v10;
}

- (void)_notifyPrimaryResidentAboutFaceMisclassificationForFaceCropData:(id)a3 personUUID:(id)a4 personManagerUUID:(id)a5
{
  v46[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [(HMDCameraClipManager *)self home];
  v13 = [v12 primaryResident];

  if (v13)
  {
    v14 = [HMDRemoteDeviceMessageDestination alloc];
    v15 = [(HMDCameraClipManager *)self messageTargetUUID];
    v16 = [v13 device];
    v17 = [(HMDRemoteDeviceMessageDestination *)v14 initWithTarget:v15 device:v16];

    v39 = v8;
    v46[0] = v8;
    v45[0] = @"HMDCCM.mk.fmfcd";
    v45[1] = @"HMDCCM.mk.fmpu";
    v18 = [v9 UUIDString];
    v46[1] = v18;
    v45[2] = @"HMDCCM.mk.fmpmu";
    v19 = [v10 UUIDString];
    v46[2] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:3];

    v21 = [[HMDRemoteMessage alloc] initWithName:@"HMDCCM.m.rhfm" destination:v17 payload:v20 type:0 timeout:1 secure:0.0];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __117__HMDCameraClipManager__notifyPrimaryResidentAboutFaceMisclassificationForFaceCropData_personUUID_personManagerUUID___block_invoke;
    v40[3] = &unk_278689DC0;
    v40[4] = self;
    [(HMDRemoteMessage *)v21 setResponseHandler:v40];
    v22 = [v13 isCurrentDevice];
    v23 = objc_autoreleasePoolPush();
    v24 = self;
    v25 = HMFGetOSLogHandle();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);
    if (v22)
    {
      if (v26)
      {
        v27 = HMFGetLogIdentifier();
        [(HMFObject *)v21 shortDescription];
        v28 = v37 = v9;
        *buf = 138543618;
        v42 = v27;
        v43 = 2112;
        v44 = v28;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Directly handling face misclassification message because we are the primary resident: %@", buf, 0x16u);

        v9 = v37;
      }

      objc_autoreleasePoolPop(v23);
      [(HMDCameraClipManager *)v24 handleRemoteHandleFaceMisclassificationMessage:v21];
    }

    else
    {
      if (v26)
      {
        v33 = HMFGetLogIdentifier();
        [(HMFObject *)v21 shortDescription];
        v34 = v38 = v9;
        *buf = 138543618;
        v42 = v33;
        v43 = 2112;
        v44 = v34;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Sending remote handle face misclassification message to primary resident: %@", buf, 0x16u);

        v9 = v38;
      }

      objc_autoreleasePoolPop(v23);
      v35 = [(HMDCameraClipManager *)v24 messageDispatcher];
      [v35 sendMessage:v21];
    }

    v8 = v39;
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    v30 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v32;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Could not find primary resident to send face misclassification message to", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v29);
  }

  v36 = *MEMORY[0x277D85DE8];
}

void __117__HMDCameraClipManager__notifyPrimaryResidentAboutFaceMisclassificationForFaceCropData_personUUID_personManagerUUID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = v5;
      v12 = "%{public}@Failed to notify primary resident of face misclassification: %@";
      v13 = v10;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 22;
LABEL_6:
      _os_log_impl(&dword_229538000, v13, v14, v12, &v17, v15);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v11;
    v12 = "%{public}@Successfully notified primary resident of face misclassification";
    v13 = v10;
    v14 = OS_LOG_TYPE_INFO;
    v15 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v16 = *MEMORY[0x277D85DE8];
}

- (id)_updateModelsForMisclassificationForSignificantEvent:(id)a3 unassociatedFaceCropUUID:(id)a4 personManagerUUID:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [(HMDCameraClipManager *)self localZone];
  v13 = [v8 uniqueIdentifier];
  v30 = 0;
  v14 = [v12 fetchModelWithModelID:v13 ofType:objc_opt_class() error:&v30];
  v15 = v30;

  if (v14)
  {
    v16 = [(HMDCameraClipManager *)self _fetchFaceCropURLForSignificantEventModel:v14];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __120__HMDCameraClipManager__updateModelsForMisclassificationForSignificantEvent_unassociatedFaceCropUUID_personManagerUUID___block_invoke;
    v27[3] = &unk_278681090;
    v27[4] = self;
    v28 = v14;
    v29 = v9;
    v17 = [v16 flatMap:v27];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      v22 = [v8 uniqueIdentifier];

      if (v22)
      {
        v23 = [v8 uniqueIdentifier];
        [v23 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v31 = *buf;
      *buf = 138544130;
      *&buf[4] = v21;
      *&buf[12] = 1042;
      *&buf[14] = 16;
      v33 = 2098;
      v34 = &v31;
      v35 = 2112;
      v36 = v15;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Could not find significant event model with UUID %{public,uuid_t}.16P: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v18);
    v24 = MEMORY[0x277D2C900];
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v17 = [v24 futureWithError:v16];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v17;
}

id __120__HMDCameraClipManager__updateModelsForMisclassificationForSignificantEvent_unassociatedFaceCropUUID_personManagerUUID___block_invoke(id *a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1[4] fileManager];
  v28 = 0;
  v5 = [v4 dataWithContentsOfURL:v3 options:0 error:&v28];
  v6 = v28;

  v7 = objc_autoreleasePoolPush();
  v8 = a1[4];
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = a1[5];
      *buf = 138543618;
      v30 = v11;
      v31 = 2112;
      v32 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Removing all face classifications for significant event model: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [MEMORY[0x277D17108] optionsWithLabel:@"Remove all face classifications from significant event"];
    v14 = [a1[4] localZone];
    v15 = [a1[5] hmbModelID];
    v16 = [v14 removeModelsWithParentModelID:v15 options:v13];

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __120__HMDCameraClipManager__updateModelsForMisclassificationForSignificantEvent_unassociatedFaceCropUUID_personManagerUUID___block_invoke_187;
    v25[3] = &unk_278681068;
    v25[4] = a1[4];
    v26 = a1[6];
    v27 = a1[5];
    v17 = [v16 flatMap:v25];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __120__HMDCameraClipManager__updateModelsForMisclassificationForSignificantEvent_unassociatedFaceCropUUID_personManagerUUID___block_invoke_192;
    v23[3] = &unk_278686CE8;
    v24 = v5;
    v18 = [v17 flatMap:v23];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543874;
      v30 = v19;
      v31 = 2112;
      v32 = v3;
      v33 = 2112;
      v34 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not load face crop data at URL %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v20 = MEMORY[0x277D2C900];
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    v18 = [v20 futureWithError:v13];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v18;
}

id __120__HMDCameraClipManager__updateModelsForMisclassificationForSignificantEvent_unassociatedFaceCropUUID_personManagerUUID___block_invoke_187(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v22 = 138543618;
    v23 = v7;
    v24 = 2112;
    v25 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Creating face classification to use unassociated face crop with UUID: %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = [HMDCameraSignificantEventFaceClassificationModel alloc];
  v10 = [MEMORY[0x277CCAD78] UUID];
  v11 = [*(a1 + 48) hmbModelID];
  v12 = [(HMBModel *)v9 initWithModelID:v10 parentModelID:v11];

  v13 = [*(a1 + 32) home];
  v14 = [v13 personManager];
  v15 = [v14 UUID];
  [(HMDCameraSignificantEventFaceClassificationModel *)v12 setPersonManagerUUID:v15];

  [(HMDCameraSignificantEventFaceClassificationModel *)v12 setUnassociatedFaceCropUUID:*(a1 + 40)];
  v16 = [MEMORY[0x277D17108] optionsWithLabel:@"Create face classification with unassociated face crop"];
  v17 = [*(a1 + 32) localZone];
  v18 = [MEMORY[0x277CBEB98] setWithObject:v12];
  v19 = [v17 createModels:v18 options:v16];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_handleFaceMisclassificationForSignificantEvent:(id)a3 personUUID:(id)a4 faceClassificationPersonManagerUUID:(id)a5 homePersonManagerUUID:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a3;
  v12 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v12);

  v13 = objc_alloc_init(MEMORY[0x277D2C900]);
  v14 = [MEMORY[0x277CCAD78] UUID];
  v15 = [(HMDCameraClipManager *)self _updateModelsForMisclassificationForSignificantEvent:v11 unassociatedFaceCropUUID:v14 personManagerUUID:v10];

  v16 = [v13 completionHandlerAdapter];
  v17 = [v15 addCompletionBlock:v16];

  v18 = MEMORY[0x277D2C938];
  v19 = [(HMDCameraClipManager *)self workQueue];
  v20 = [v18 schedulerWithDispatchQueue:v19];
  v21 = [v13 reschedule:v20];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __141__HMDCameraClipManager__handleFaceMisclassificationForSignificantEvent_personUUID_faceClassificationPersonManagerUUID_homePersonManagerUUID___block_invoke;
  v27[3] = &unk_278681040;
  v27[4] = self;
  v28 = v9;
  v29 = v10;
  v30 = v14;
  v22 = v14;
  v23 = v10;
  v24 = v9;
  v25 = [v21 flatMap:v27];

  return v25;
}

id __141__HMDCameraClipManager__handleFaceMisclassificationForSignificantEvent_personUUID_faceClassificationPersonManagerUUID_homePersonManagerUUID___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) _notifyPrimaryResidentAboutFaceMisclassificationForFaceCropData:v3 personUUID:*(a1 + 40) personManagerUUID:*(a1 + 48)];
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Adding unassociated face crop to home person dataset for misclassified face classification", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) home];
  v9 = [v8 personManager];
  v10 = [v9 addUnassociatedFaceCropWithUUID:*(a1 + 56) data:v3];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)_notifyForChangedSignificantEventModel:(id)a3 mirrorOutputFuture:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  if (v7)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v12;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Waiting for mirror output future to complete: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = MEMORY[0x277D2C938];
    v14 = [(HMDCameraClipManager *)v10 workQueue];
    v15 = [v13 schedulerWithDispatchQueue:v14];
    v16 = [v7 reschedule:v15];
    v17 = [v16 flatMap:&__block_literal_global_178];
  }

  else
  {
    v17 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __82__HMDCameraClipManager__notifyForChangedSignificantEventModel_mirrorOutputFuture___block_invoke_2;
  v21[3] = &unk_278681018;
  v21[4] = self;
  v22 = v6;
  v18 = v6;
  v19 = [v17 addCompletionBlock:v21];

  v20 = *MEMORY[0x277D85DE8];
}

void __82__HMDCameraClipManager__notifyForChangedSignificantEventModel_mirrorOutputFuture___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) _significantEventFromSignificantEventModel:*(a1 + 40)];
  if (!v7)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = *(a1 + 40);
      v25 = 138543618;
      v26 = v20;
      v27 = 2112;
      v28 = v21;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to create significant event from model: %@", &v25, 0x16u);
LABEL_12:
    }

LABEL_13:

    objc_autoreleasePoolPop(v14);
    goto LABEL_14;
  }

  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CBEB98] setWithObject:v7];
  v10 = [MEMORY[0x277CBEB98] set];
  [v8 _notifyTransportsOfUpdatedSignificantEvents:v9 removedSignificantEventUUIDs:v10];

  v11 = [v7 dateOfOccurrence];
  v12 = [*(a1 + 32) suppressNotificationsBeforeDate];
  v13 = [v11 compare:v12];

  v14 = objc_autoreleasePoolPush();
  v15 = *(a1 + 32);
  v16 = HMFGetOSLogHandle();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
  if (v13 == -1)
  {
    if (v17)
    {
      v20 = HMFGetLogIdentifier();
      v22 = [v7 dateOfOccurrence];
      v23 = [*(a1 + 32) suppressNotificationsBeforeDate];
      v25 = 138543874;
      v26 = v20;
      v27 = 2112;
      v28 = v22;
      v29 = 2112;
      v30 = v23;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring significant event with date of occurrence %@ because it is before %@", &v25, 0x20u);

      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (v17)
  {
    v18 = HMFGetLogIdentifier();
    v25 = 138543618;
    v26 = v18;
    v27 = 2112;
    v28 = v7;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Notifying delegate about updated significant event: %@", &v25, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  v19 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v19 clipManager:*(a1 + 32) didUpdateSignificantEvent:v7];
  }

LABEL_14:
  v24 = *MEMORY[0x277D85DE8];
}

- (void)_handleChangedFaceClassificationModel:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraClipManager *)self localZone];
  v7 = [v4 hmbParentModelID];
  v8 = [v6 fetchModelWithModelID:v7 ofType:objc_opt_class() error:0];

  if (v8)
  {
    v9 = [(HMDCameraClipManager *)self _significantEventFromSignificantEventModel:v8];
    if (v9)
    {
      v10 = [MEMORY[0x277CBEB98] setWithObject:v9];
      v11 = [MEMORY[0x277CBEB98] set];
      [(HMDCameraClipManager *)self _notifyTransportsOfUpdatedSignificantEvents:v10 removedSignificantEventUUIDs:v11];
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v21 = 138543618;
        v22 = v19;
        v23 = 2112;
        v24 = v4;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Ignoring changed face classification model because it could not be converted into a HMCameraClipSignificantEvent: %@", &v21, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v15;
      v23 = 2112;
      v24 = v4;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring changed face classification model because its associated significant event does not exist: %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_handleChangedSignificantEventNotificationModel:(id)a3 mirrorOutputFuture:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v6 associatedClip];
  v10 = objc_opt_class();
  v11 = [(HMDCameraClipManager *)self localZone];
  v12 = [v9 referencedModelOfType:v10 fromLocalZone:v11 error:0];

  if (v12)
  {
    [(HMDCameraClipManager *)self _handleChangedClipModel:v12 wasCreated:0 mirrorOutputFuture:0];
    [(HMDCameraClipManager *)self _notifyForChangedSignificantEventModel:v6 mirrorOutputFuture:v7];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v16;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring changed significant event notification model because its associated clip model does not exist: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_handleChangedClipModel:(id)a3 wasCreated:(BOOL)a4 mirrorOutputFuture:(id)a5
{
  v6 = a4;
  v48 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v10);

  v34 = v8;
  v11 = [v8 hmbModelID];
  v12 = [(HMDCameraClipManager *)self _significantEventModelsForClipWithUUID:v11];

  if (v6)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v33 = v12;
    obj = v12;
    v13 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v38;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v38 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v37 + 1) + 8 * i);
          v18 = objc_autoreleasePoolPush();
          v19 = self;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            HMFGetLogIdentifier();
            v22 = v21 = v9;
            *buf = 138543874;
            v42 = v22;
            v43 = 2112;
            v44 = v17;
            v45 = 2112;
            v46 = v34;
            _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Found existing significant event model %@ associated with new clip model %@", buf, 0x20u);

            v9 = v21;
          }

          objc_autoreleasePoolPop(v18);
          [(HMDCameraClipManager *)v19 _notifyForChangedSignificantEventModel:v17 mirrorOutputFuture:v9];
        }

        v14 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
      }

      while (v14);
    }

    v12 = v33;
  }

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __78__HMDCameraClipManager__handleChangedClipModel_wasCreated_mirrorOutputFuture___block_invoke;
  v36[3] = &unk_278680E50;
  v36[4] = self;
  v23 = [v12 na_map:v36];
  v24 = [v34 createClipWithSignificantEvents:v23];
  if (v24)
  {
    v25 = [MEMORY[0x277CBEB98] setWithObject:v24];
    v26 = [MEMORY[0x277CBEB98] set];
    [(HMDCameraClipManager *)self _notifyTransportsOfUpdatedClips:v25 removedClipUUIDs:v26];
  }

  else
  {
    v27 = v9;
    v28 = objc_autoreleasePoolPush();
    v29 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v31;
      v43 = 2112;
      v44 = v34;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to create clip from clip model: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    v9 = v27;
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_fetchAssetContextForMessage:(id)a3 propertyName:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(HMDCameraClipManager *)self localZone];

  if (v9)
  {
    v10 = [v6 uuidForKey:*MEMORY[0x277CCF428]];
    if (v10)
    {
      v11 = v10;
      v12 = [(HMDCameraClipManager *)self cloudZone];
      v13 = [v12 fetchCompleteModelWithID:v11];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __66__HMDCameraClipManager__fetchAssetContextForMessage_propertyName___block_invoke;
      v27[3] = &unk_278680FD0;
      v27[4] = self;
      v14 = v11;
      v28 = v14;
      v29 = v6;
      v30 = v7;
      v15 = [v13 addCompletionBlock:v27];
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        v24 = [v6 messagePayload];
        *buf = 138543618;
        v32 = v23;
        v33 = 2112;
        v34 = v24;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failing request to fetch asset context because message has no clip UUID: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v25 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
      [v6 respondWithError:v25];

      v14 = 0;
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v19;
      v33 = 2112;
      v34 = v6;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch asset context for message because zones are not ready: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [v6 respondWithError:v14];
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __66__HMDCameraClipManager__fetchAssetContextForMessage_propertyName___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v80 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 hmbPropertyNamed:*(a1 + 56)];
    v8 = [v7 downloadStreamingAsset];

    if (v8)
    {
      v9 = [v8 contentDownloadURL];
      if (v9)
      {
        v10 = [v8 contentDownloadURLExpirationDate];
        if (v10)
        {
          v65 = v6;
          v11 = MEMORY[0x277CD18C8];
          v12 = [v5 streamingAssetVersion];
          v13 = [v11 requiredHTTPHeadersForStreamingAssetVersion:v12];

          v64 = [v5 videoSegments];
          v14 = [objc_alloc(MEMORY[0x277CD18D0]) initWithURL:v9 expirationDate:v10 requiredHTTPHeaders:v13 videoSegments:v64];
          v15 = objc_autoreleasePoolPush();
          v16 = *(a1 + 32);
          v17 = HMFGetOSLogHandle();
          v66 = v14;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v61 = v13;
            v62 = v15;
            v18 = HMFGetLogIdentifier();
            v19 = *(a1 + 56);
            *buf = 0;
            *&buf[8] = 0;
            v20 = [v5 hmbModelID];

            if (v20)
            {
              v21 = [v5 hmbModelID];
              [v21 getUUIDBytes:buf];
            }

            else
            {
              *buf = *MEMORY[0x277D0F960];
            }

            v70 = *buf;
            *buf = 138544386;
            *&buf[4] = v18;
            *&buf[12] = 2112;
            *&buf[14] = v19;
            *&buf[22] = 1042;
            *&buf[24] = 16;
            v72 = 2098;
            v73 = &v70;
            v74 = 2112;
            v14 = v66;
            v75 = v66;
            _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Successfully fetched streaming asset with property name %@ for clip UUID %{public,uuid_t}.16P with context %@", buf, 0x30u);

            v13 = v61;
            v15 = v62;
          }

          objc_autoreleasePoolPop(v15);
          v63 = *(a1 + 48);
          v68[0] = *MEMORY[0x277CCF410];
          v49 = encodeRootObjectForIncomingXPCMessage(v14, 0);
          v69[0] = v49;
          v68[1] = *MEMORY[0x277CCF418];
          v50 = [MEMORY[0x277CBEB98] set];
          v51 = [v5 createClipWithSignificantEvents:v50];
          v52 = encodeRootObjectForIncomingXPCMessage(v51, 0);
          v69[1] = v52;
          [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:2];
          v53 = v9;
          v54 = v10;
          v56 = v55 = v13;
          [v63 respondWithPayload:v56];

          v57 = v55;
          v10 = v54;
          v9 = v53;

          v6 = v65;
        }

        else
        {
          v41 = objc_autoreleasePoolPush();
          v42 = *(a1 + 32);
          v43 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v67 = v41;
            v44 = HMFGetLogIdentifier();
            *buf = 0;
            *&buf[8] = 0;
            v45 = [v5 hmbModelID];

            if (v45)
            {
              v46 = [v5 hmbModelID];
              [v46 getUUIDBytes:buf];
            }

            else
            {
              *buf = *MEMORY[0x277D0F960];
            }

            v76 = *buf;
            *buf = 138544130;
            *&buf[4] = v44;
            *&buf[12] = 2112;
            *&buf[14] = v8;
            *&buf[22] = 1042;
            *&buf[24] = 16;
            v72 = 2098;
            v73 = &v76;
            _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_ERROR, "%{public}@Could not find content download URL expiration date on streaming asset %@ for clip with UUID: %{public,uuid_t}.16P", buf, 0x26u);

            v41 = v67;
          }

          objc_autoreleasePoolPop(v41);
          v59 = *(a1 + 48);
          v57 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
          [v59 respondWithError:v57];
        }
      }

      else
      {
        v35 = objc_autoreleasePoolPush();
        v36 = *(a1 + 32);
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = HMFGetLogIdentifier();
          *buf = 0;
          *&buf[8] = 0;
          v39 = [v5 hmbModelID];

          if (v39)
          {
            v40 = [v5 hmbModelID];
            [v40 getUUIDBytes:buf];
          }

          else
          {
            *buf = *MEMORY[0x277D0F960];
          }

          v77 = *buf;
          *buf = 138544130;
          *&buf[4] = v38;
          *&buf[12] = 2112;
          *&buf[14] = v8;
          *&buf[22] = 1042;
          *&buf[24] = 16;
          v72 = 2098;
          v73 = &v77;
          _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Could not find content download URL on streaming asset %@ for clip with UUID: %{public,uuid_t}.16P", buf, 0x26u);
        }

        objc_autoreleasePoolPop(v35);
        v58 = *(a1 + 48);
        v10 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
        [v58 respondWithError:v10];
      }
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      v28 = *(a1 + 32);
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = v6;
        v31 = HMFGetLogIdentifier();
        v32 = *(a1 + 56);
        *buf = 0;
        *&buf[8] = 0;
        v33 = [v5 hmbModelID];

        if (v33)
        {
          v34 = [v5 hmbModelID];
          [v34 getUUIDBytes:buf];
        }

        else
        {
          *buf = *MEMORY[0x277D0F960];
        }

        v78 = *buf;
        *buf = 138544130;
        *&buf[4] = v31;
        *&buf[12] = 2112;
        *&buf[14] = v32;
        *&buf[22] = 1042;
        *&buf[24] = 16;
        v72 = 2098;
        v73 = &v78;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Could not find streaming asset on property named %@ for clip with UUID: %{public,uuid_t}.16P", buf, 0x26u);

        v6 = v30;
      }

      objc_autoreleasePoolPop(v27);
      v48 = *(a1 + 48);
      v9 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      [v48 respondWithError:v9];
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = *(a1 + 32);
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      v26 = *(a1 + 40);
      if (v26)
      {
        [v26 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v79 = *buf;
      *buf = 138544130;
      *&buf[4] = v25;
      *&buf[12] = 1042;
      *&buf[14] = 16;
      *&buf[18] = 2098;
      *&buf[20] = &v79;
      v72 = 2112;
      v73 = v6;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch complete model for clip UUID %{public,uuid_t}.16P: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v22);
    v47 = *(a1 + 48);
    v8 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    [v47 respondWithError:v8];
  }

  v60 = *MEMORY[0x277D85DE8];
}

- (void)_notifyTransportsOfUpdatedSignificantEvents:(id)a3 removedSignificantEventUUIDs:(id)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(HMDCameraClipManager *)self clientConnectionsTimer];
  v10 = [v9 clientConnections];
  v11 = [v10 count];

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  v15 = v14;
  if (v11)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [(HMDCameraClipManager *)v13 clientConnectionsTimer];
      v18 = [v17 clientConnections];
      *buf = 138544130;
      v47 = v16;
      v48 = 2048;
      v49 = [v18 count];
      v50 = 2048;
      v51 = [v6 count];
      v52 = 2048;
      v53 = [v7 count];
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Notifying %lu subscribed transports of %lu updated significant events, %lu removed significant events", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v12);
    v44[0] = *MEMORY[0x277CCF4A8];
    v37 = v6;
    v19 = encodeRootObjectForIncomingXPCMessage(v6, 0);
    v44[1] = *MEMORY[0x277CCF480];
    v45[0] = v19;
    v36 = v7;
    v45[1] = v7;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v21 = [(HMDCameraClipManager *)v13 clientConnectionsTimer];
    v22 = [v21 clientConnections];

    obj = v22;
    v23 = [v22 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v40;
      v26 = *MEMORY[0x277CCF3A0];
      do
      {
        v27 = 0;
        do
        {
          if (*v40 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v39 + 1) + 8 * v27);
          v29 = [MEMORY[0x277D0F848] entitledMessageWithName:v26 messagePayload:v20];
          [v29 setTransport:v28];
          v30 = objc_alloc(MEMORY[0x277D0F820]);
          v31 = [(HMDCameraClipManager *)v13 messageTargetUUID];
          v32 = [v30 initWithTarget:v31];
          [v29 setDestination:v32];

          [v29 setRequiresCameraClipsEntitlement];
          v33 = [(HMDCameraClipManager *)v13 messageDispatcher];
          [v33 sendMessage:v29 completionHandler:0];

          ++v27;
        }

        while (v24 != v27);
        v24 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v24);
    }

    v7 = v36;
    v6 = v37;
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543874;
      v47 = v34;
      v48 = 2048;
      v49 = [v6 count];
      v50 = 2048;
      v51 = [v7 count];
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEBUG, "%{public}@No subscribed transports to notify of %lu updated significant events, %lu removed significant events", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)_notifyTransportsOfUpdatedClips:(id)a3 removedClipUUIDs:(id)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(HMDCameraClipManager *)self clientConnectionsTimer];
  v10 = [v9 clientConnections];
  v11 = [v10 count];

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  v15 = v14;
  if (v11)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [(HMDCameraClipManager *)v13 clientConnectionsTimer];
      v18 = [v17 clientConnections];
      *buf = 138544130;
      v47 = v16;
      v48 = 2048;
      v49 = [v18 count];
      v50 = 2048;
      v51 = [v6 count];
      v52 = 2048;
      v53 = [v7 count];
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Notifying %lu subscribed transports of %lu updated clips, %lu removed clips", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v12);
    v44[0] = *MEMORY[0x277CCF4A0];
    v37 = v6;
    v19 = encodeRootObjectForIncomingXPCMessage(v6, 0);
    v44[1] = *MEMORY[0x277CCF478];
    v45[0] = v19;
    v36 = v7;
    v45[1] = v7;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v21 = [(HMDCameraClipManager *)v13 clientConnectionsTimer];
    v22 = [v21 clientConnections];

    obj = v22;
    v23 = [v22 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v40;
      v26 = *MEMORY[0x277CCF398];
      do
      {
        v27 = 0;
        do
        {
          if (*v40 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v39 + 1) + 8 * v27);
          v29 = [MEMORY[0x277D0F848] entitledMessageWithName:v26 messagePayload:v20];
          [v29 setTransport:v28];
          v30 = objc_alloc(MEMORY[0x277D0F820]);
          v31 = [(HMDCameraClipManager *)v13 messageTargetUUID];
          v32 = [v30 initWithTarget:v31];
          [v29 setDestination:v32];

          [v29 setRequiresCameraClipsEntitlement];
          v33 = [(HMDCameraClipManager *)v13 messageDispatcher];
          [v33 sendMessage:v29 completionHandler:0];

          ++v27;
        }

        while (v24 != v27);
        v24 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v24);
    }

    v7 = v36;
    v6 = v37;
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543874;
      v47 = v34;
      v48 = 2048;
      v49 = [v6 count];
      v50 = 2048;
      v51 = [v7 count];
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEBUG, "%{public}@No subscribed transports to notify of %lu updated clips, %lu removed clips", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)_cleanUpExpiredClips
{
  v28[1] = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraClipManager *)self cleanupQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-*MEMORY[0x277CCF518]];
  v27 = @"dateBefore";
  v28[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  v6 = [MEMORY[0x277CBEB58] setWithCapacity:{-[HMDCameraClipManager fetchBatchLimit](self, "fetchBatchLimit")}];
  v7 = [MEMORY[0x277D17108] optionsWithLabel:@"Remove expired clips"];
  [v7 setShouldEnqueueMirrorOutput:0];
  v8 = +[HMDCameraClipModel clipsBeforeDateQuery];
  v9 = [(HMDCameraClipManager *)self localZone];
  v10 = [v9 queryModelsUsingQuery:v8 arguments:v5];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __44__HMDCameraClipManager__cleanUpExpiredClips__block_invoke;
  v20[3] = &unk_278680FA8;
  v20[4] = self;
  v11 = v6;
  v21 = v11;
  v12 = v7;
  v22 = v12;
  [v10 enumerateObjectsUsingBlock:v20];
  if ([v11 count])
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v11 count];
      *buf = 138543618;
      v24 = v16;
      v25 = 2048;
      v26 = v17;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Removing %lu expired clips", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v18 = [(HMDCameraClipManager *)v14 _removeClipsWithUUIDs:v11 options:v12];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __44__HMDCameraClipManager__cleanUpExpiredClips__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [v3 debugDescription];
    v19 = 138543618;
    v20 = v7;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Removing expired clip: %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *(a1 + 40);
  v10 = [v3 hmbModelID];
  [v9 addObject:v10];

  v11 = [*(a1 + 40) count];
  if (v11 >= [*(a1 + 32) fetchBatchLimit])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [*(a1 + 40) count];
      v19 = 138543618;
      v20 = v15;
      v21 = 2048;
      v22 = v16;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Removing %lu expired clips", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v17 = [*(a1 + 32) _removeClipsWithUUIDs:*(a1 + 40) options:*(a1 + 48)];
    [*(a1 + 40) removeAllObjects];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_cleanUpIncompleteClipsForInitialStartup:(BOOL)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = [(HMDCameraClipManager *)self cleanupQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraClipManager *)self localZone];
  v7 = +[HMDCameraClipModel incompleteClipsQuery];
  v8 = [v6 queryModelsUsingQuery:v7];

  v9 = [MEMORY[0x277CBEB38] dictionary];
  v10 = [MEMORY[0x277CBEB58] set];
  v11 = [MEMORY[0x277CBEB58] set];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__HMDCameraClipManager__cleanUpIncompleteClipsForInitialStartup___block_invoke;
  aBlock[3] = &unk_278680F80;
  aBlock[4] = self;
  v12 = v9;
  v32 = v12;
  v35 = a3;
  v13 = v10;
  v33 = v13;
  v14 = v11;
  v34 = v14;
  v15 = _Block_copy(aBlock);
  [v8 enumerateObjectsUsingBlock:v15];
  v16 = 0x277D17000;
  if ([v13 count])
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v20;
      v38 = 2112;
      v39 = v13;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Completing incomplete clips: %@", buf, 0x16u);

      v16 = 0x277D17000uLL;
    }

    objc_autoreleasePoolPop(v17);
    v21 = [(HMDCameraClipManager *)v18 localZone];
    v22 = [*(v16 + 264) optionsWithLabel:@"Complete Incomplete Clips"];
    v23 = [v21 updateModels:v13 options:v22];
  }

  if ([v14 count])
  {
    v24 = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v27;
      v38 = 2112;
      v39 = v14;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Removing incomplete 0-duration clip UUIDs: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v28 = [*(v16 + 264) optionsWithLabel:@"Remove 0-duration Incomplete Clips"];
    v29 = [(HMDCameraClipManager *)v25 _removeClipsWithUUIDs:v14 options:v28];
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __65__HMDCameraClipManager__cleanUpIncompleteClipsForInitialStartup___block_invoke(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [v3 debugDescription];
    v48 = 138543618;
    v49 = v7;
    v50 = 2112;
    v51 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Cleaning up incomplete clip: %@", &v48, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *(a1 + 40);
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "quality")}];
  v11 = [v9 objectForKeyedSubscript:v10];
  v12 = [v11 unsignedIntegerValue];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12 + 1];
  v14 = *(a1 + 40);
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "quality")}];
  [v14 setObject:v13 forKeyedSubscript:v15];

  if (!v12)
  {
    v24 = [v3 recordedLocally];
    if (([v24 BOOLValue] & 1) == 0)
    {

      goto LABEL_19;
    }

    v25 = *(a1 + 64);

    if (v25 != 1)
    {
      goto LABEL_19;
    }
  }

  v16 = [v3 duration];
  [v16 doubleValue];
  v18 = v17;

  if (v18 <= 0.0)
  {
    v26 = *(a1 + 56);
    v22 = [v3 hmbModelID];
    v23 = v26;
  }

  else
  {
    v19 = [HMDCameraClipModel alloc];
    v20 = [v3 hmbModelID];
    v21 = [v3 hmbParentModelID];
    v22 = [(HMBModel *)v19 initWithModelID:v20 parentModelID:v21];

    [(HMDCameraClipModel *)v22 setIsComplete:MEMORY[0x277CBEC38]];
    v23 = *(a1 + 48);
  }

  [v23 addObject:v22];

  v27 = [*(a1 + 48) count];
  if (v27 >= [*(a1 + 32) fetchBatchLimit])
  {
    v28 = objc_autoreleasePoolPush();
    v29 = *(a1 + 32);
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = HMFGetLogIdentifier();
      v32 = *(a1 + 48);
      v48 = 138543618;
      v49 = v31;
      v50 = 2112;
      v51 = v32;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@Completing batch of incomplete clips: %@", &v48, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    v33 = [*(a1 + 32) localZone];
    v34 = *(a1 + 48);
    v35 = [MEMORY[0x277D17108] optionsWithLabel:@"Complete Incomplete Clips"];
    v36 = [v33 updateModels:v34 options:v35];

    [*(a1 + 48) removeAllObjects];
  }

  v37 = [*(a1 + 56) count];
  if (v37 >= [*(a1 + 32) fetchBatchLimit])
  {
    v38 = objc_autoreleasePoolPush();
    v39 = *(a1 + 32);
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = HMFGetLogIdentifier();
      v42 = *(a1 + 56);
      v48 = 138543618;
      v49 = v41;
      v50 = 2112;
      v51 = v42;
      _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@Removing batch of incomplete 0-duration clip UUIDs: %@", &v48, 0x16u);
    }

    objc_autoreleasePoolPop(v38);
    v43 = *(a1 + 32);
    v44 = *(a1 + 56);
    v45 = [MEMORY[0x277D17108] optionsWithLabel:@"Remove 0-duration Incomplete Clips"];
    v46 = [v43 _removeClipsWithUUIDs:v44 options:v45];

    [*(a1 + 56) removeAllObjects];
  }

LABEL_19:

  v47 = *MEMORY[0x277D85DE8];
}

- (void)_cleanUpClipsForInitialStartup:(BOOL)a3
{
  v5 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraClipManager *)self cleanupQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HMDCameraClipManager__cleanUpClipsForInitialStartup___block_invoke;
  v7[3] = &unk_278688650;
  v7[4] = self;
  v8 = a3;
  dispatch_async(v6, v7);
}

uint64_t __55__HMDCameraClipManager__cleanUpClipsForInitialStartup___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cleanUpIncompleteClipsForInitialStartup:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _cleanUpExpiredClips];
}

- (id)_performCloudPull
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraClipManager *)self cloudZone];

  if (v4)
  {
    v5 = [MEMORY[0x277D17108] optionsWithLabel:@"Explicit fetch"];
    v6 = [(HMDCameraClipManager *)self cloudZone];
    v7 = [v6 performCloudPullWithOptions:v5];
    v8 = MEMORY[0x277D2C938];
    v9 = [(HMDCameraClipManager *)self workQueue];
    v10 = [v8 schedulerWithDispatchQueue:v9];
    v11 = [v7 reschedule:v10];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __41__HMDCameraClipManager__performCloudPull__block_invoke;
    v20[3] = &unk_27868A250;
    v20[4] = self;
    v12 = [v11 addFailureBlock:v20];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Cannot perform cloud pull because zones are not ready", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v17 = MEMORY[0x277D2C900];
    v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    v12 = [v17 futureWithError:v5];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v12;
}

void __41__HMDCameraClipManager__performCloudPull__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to perform cloud pull due to cloud zone fetch timer firing: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (id)_fetchFaceCropURLForSignificantEventModel:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 faceCropAsset];
  v6 = [v5 fileURL];

  if (v6 && (-[HMDCameraClipManager fileManager](self, "fileManager"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 fileExistsAtURL:v6], v7, v8))
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v12;
      v27 = 2112;
      v28 = v6;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Using existing cached face crop URL: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [MEMORY[0x277D2C900] futureWithResult:v6];
  }

  else
  {
    v14 = [(HMDCameraClipManager *)self cloudZone];
    v15 = [v14 fetchCompleteModel:v4];

    v16 = MEMORY[0x277D2C938];
    v17 = [(HMDCameraClipManager *)self workQueue];
    v18 = [v16 schedulerWithDispatchQueue:v17];
    v19 = [v15 reschedule:v18];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __66__HMDCameraClipManager__fetchFaceCropURLForSignificantEventModel___block_invoke;
    v24[3] = &unk_278680F58;
    v24[4] = self;
    v20 = [v19 flatMap:v24];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __66__HMDCameraClipManager__fetchFaceCropURLForSignificantEventModel___block_invoke_155;
    v23[3] = &unk_27868A250;
    v23[4] = self;
    v13 = [v20 addFailureBlock:v23];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v13;
}

id __66__HMDCameraClipManager__fetchFaceCropURLForSignificantEventModel___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 faceCropAsset];
  v5 = [v4 fileURL];

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v10;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Successfully fetched face crop URL: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v11 = [MEMORY[0x277D2C900] futureWithResult:v5];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v3 faceCropAsset];
      v18 = 138543618;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Could not find face crop file URL on fetched asset: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v14 = MEMORY[0x277D2C900];
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v11 = [v14 futureWithError:v15];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

void __66__HMDCameraClipManager__fetchFaceCropURLForSignificantEventModel___block_invoke_155(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch complete significant event notification model: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (id)_fetchHeroFrameURLForSignificantEventModel:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 heroFrameAsset];
  v6 = [v5 fileURL];

  if (v6 && (-[HMDCameraClipManager fileManager](self, "fileManager"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 fileExistsAtURL:v6], v7, v8))
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      v13 = [v4 hmbModelID];

      if (v13)
      {
        v14 = [v4 hmbModelID];
        [v14 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v31 = *buf;
      *buf = 138544130;
      *&buf[4] = v12;
      *&buf[12] = 1042;
      *&buf[14] = 16;
      v33 = 2098;
      v34 = &v31;
      v35 = 2112;
      v36 = v6;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Using existing cached hero frame URL for significant event with UUID %{public,uuid_t}.16P: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v9);
    v26 = [MEMORY[0x277D2C900] futureWithResult:v6];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Force fetching significant event model from cloud for hero frame url", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [(HMDCameraClipManager *)v16 cloudZone];
    v20 = [v19 fetchCompleteModel:v4];

    v21 = MEMORY[0x277D2C938];
    v22 = [(HMDCameraClipManager *)v16 workQueue];
    v23 = [v21 schedulerWithDispatchQueue:v22];
    v24 = [v20 reschedule:v23];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __67__HMDCameraClipManager__fetchHeroFrameURLForSignificantEventModel___block_invoke;
    v30[3] = &unk_278680F58;
    v30[4] = v16;
    v25 = [v24 flatMap:v30];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __67__HMDCameraClipManager__fetchHeroFrameURLForSignificantEventModel___block_invoke_153;
    v29[3] = &unk_27868A250;
    v29[4] = v16;
    v26 = [v25 addFailureBlock:v29];
  }

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

id __67__HMDCameraClipManager__fetchHeroFrameURLForSignificantEventModel___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 heroFrameAsset];
  v5 = [v4 fileURL];

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v10;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Successfully fetched hero frame URL: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v11 = [MEMORY[0x277D2C900] futureWithResult:v5];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v3 heroFrameAsset];
      v18 = 138543618;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Could not find hero frame file URL on fetched asset: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v14 = MEMORY[0x277D2C900];
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v11 = [v14 futureWithError:v15];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

void __67__HMDCameraClipManager__fetchHeroFrameURLForSignificantEventModel___block_invoke_153(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch complete significant event notification model: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (id)_fetchCanonicalHeroFrameURLForClipModel:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v37 = v4;
  v6 = [v4 hmbModelID];
  v7 = [(HMDCameraClipManager *)self significantEventsForClipWithUUID:v6];

  v36 = v7;
  v8 = [v7 allObjects];
  v9 = [v8 sortedArrayUsingComparator:&__block_literal_global_150_218301];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v40 objects:v48 count:16];
  v38 = v10;
  if (v11)
  {
    v12 = v11;
    v13 = *v41;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v40 + 1) + 8 * i);
        v16 = [(HMDCameraClipManager *)self localZone];
        v17 = [v15 uniqueIdentifier];
        v18 = objc_opt_class();
        v39 = 0;
        v19 = [v16 fetchModelWithModelID:v17 ofType:v18 error:&v39];
        v20 = v39;

        if (v19)
        {
          v32 = [(HMDCameraClipManager *)self _fetchHeroFrameURLForSignificantEventModel:v19];

          v31 = v10;
          v33 = v10;
          v28 = v37;
          goto LABEL_15;
        }

        v21 = objc_autoreleasePoolPush();
        v22 = self;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          *buf = 138543618;
          v45 = v24;
          v46 = 2112;
          v47 = v20;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch significant event notification model: %@", buf, 0x16u);

          v10 = v38;
        }

        objc_autoreleasePoolPop(v21);
      }

      v12 = [v10 countByEnumeratingWithState:&v40 objects:v48 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v25 = objc_autoreleasePoolPush();
  v26 = self;
  v27 = HMFGetOSLogHandle();
  v28 = v37;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v29 = HMFGetLogIdentifier();
    *buf = 138543618;
    v45 = v29;
    v46 = 2112;
    v47 = v37;
    _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Could not find hero frame on any significant event for clip model: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v25);
  v30 = MEMORY[0x277D2C900];
  v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  v32 = [v30 futureWithError:v31];
  v33 = v38;
LABEL_15:

  v34 = *MEMORY[0x277D85DE8];

  return v32;
}

uint64_t __64__HMDCameraClipManager__fetchCanonicalHeroFrameURLForClipModel___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v4 reason] == 1 || objc_msgSend(v5, "reason") == 1)
  {
    if ([v4 reason] == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = -1;
    }
  }

  else
  {
    v7 = [v4 confidenceLevel];
    if (v7 == [v5 confidenceLevel])
    {
      v8 = [v4 dateOfOccurrence];
      [v5 dateOfOccurrence];
    }

    else
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "confidenceLevel")}];
      [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "confidenceLevel")}];
    }
    v9 = ;
    v6 = [v8 compare:v9];
  }

  return v6;
}

- (BOOL)_fetchClipsWithDateInterval:(id)a3 quality:(int64_t)a4 isAscending:(BOOL)a5 error:(id *)a6 handler:(id)a7
{
  v9 = a5;
  v48 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a7;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__HMDCameraClipManager__fetchClipsWithDateInterval_quality_isAscending_error_handler___block_invoke;
  aBlock[3] = &unk_278680F30;
  aBlock[4] = self;
  v37 = &v38;
  v14 = v13;
  v36 = v14;
  v15 = _Block_copy(aBlock);
  v16 = objc_autoreleasePoolPush();
  v17 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543618;
    v45 = v19;
    v46 = 2112;
    v47 = v12;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Fetching clips with date interval: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  if (v9)
  {
    +[HMDCameraClipModel clipsWithQualityBetweenDatesAscendingQuery];
  }

  else
  {
    +[HMDCameraClipModel clipsWithQualityBetweenDatesDescendingQuery];
  }
  v20 = ;
  v42[0] = @"dateAfter";
  v21 = [v12 startDate];
  v43[0] = v21;
  v42[1] = @"dateBefore";
  v22 = [v12 endDate];
  v43[1] = v22;
  v42[2] = @"quality";
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v43[2] = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:3];

  v25 = [(HMDCameraClipManager *)v17 localZone];
  v26 = [v25 queryModelsUsingQuery:v20 arguments:v24];

  [v26 enumerateObjectsUsingBlock:v15];
  v27 = [v26 error];

  if (v27)
  {
    *(v39 + 24) = 0;
    if (a6)
    {
      *a6 = [v26 error];
    }
  }

  v28 = objc_autoreleasePoolPush();
  v29 = v17;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    v31 = HMFGetLogIdentifier();
    *buf = 138543362;
    v45 = v31;
    _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_DEBUG, "%{public}@Finished fetching clips", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v28);
  v32 = *(v39 + 24);

  _Block_object_dispose(&v38, 8);
  v33 = *MEMORY[0x277D85DE8];
  return v32 & 1;
}

void __86__HMDCameraClipManager__fetchClipsWithDateInterval_quality_isAscending_error_handler___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = [v5 hmbModelID];
  v8 = [v6 significantEventsForClipWithUUID:v7];

  if (v8)
  {
    v9 = [v5 createClipWithSignificantEvents:v8];
    if (v9)
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v13;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch significant events for clip model %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a3 = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __90__HMDCameraClipManager__fetchSignificantEventsWithDateInterval_isAscending_error_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _significantEventFromSignificantEventModel:a2];
  if (v3)
  {
    v4 = v3;
    (*(*(a1 + 40) + 16))();
    v3 = v4;
  }
}

- (id)_faceClassificationsForSignificantEventWithUUID:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraClipManager *)self localZone];
  v16 = 0;
  v6 = [v5 fetchModelsWithParentModelID:v4 ofType:objc_opt_class() error:&v16];
  v7 = v16;

  if (v6)
  {
    v8 = [v6 na_map:&__block_literal_global_134_218312];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      if (v4)
      {
        [v4 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v17 = *buf;
      *buf = 138544130;
      *&buf[4] = v12;
      *&buf[12] = 1042;
      *&buf[14] = 16;
      v19 = 2098;
      v20 = &v17;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch face classification models for significant event UUID %{public,uuid_t}.16P: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v9);
    v8 = [MEMORY[0x277CBEB98] set];
  }

  v13 = v8;

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_significantEventsWithUUIDs:(id)a3
{
  v4 = [(HMDCameraClipManager *)self _significantEventModelsWithUUIDs:a3];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HMDCameraClipManager__significantEventsWithUUIDs___block_invoke;
  v7[3] = &unk_278680E50;
  v7[4] = self;
  v5 = [v4 na_map:v7];

  return v5;
}

- (id)_significantEventFromSignificantEventModel:(id)a3
{
  v4 = a3;
  v5 = [v4 hmbModelID];
  v6 = [(HMDCameraClipManager *)self _faceClassificationsForSignificantEventWithUUID:v5];

  v7 = [(HMDCameraClipManager *)self faceClassificationResolver];
  v8 = [v7 faceClassificationForSignificantEventFaceClassifications:v6];

  v9 = [(HMDCameraClipManager *)self cameraProfileUUID];
  v10 = [v4 createClipSignificantEventWithCameraProfileUUID:v9 faceClassification:v8];

  return v10;
}

- (id)_significantEventModelsForClipWithUUID:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraClipManager *)self localZone];
  v16 = 0;
  v6 = [v5 fetchModelsWithParentModelID:v4 ofType:objc_opt_class() error:&v16];
  v7 = v16;

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      if (v4)
      {
        [v4 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v17 = *buf;
      *buf = 138544130;
      *&buf[4] = v12;
      *&buf[12] = 1042;
      *&buf[14] = 16;
      v19 = 2098;
      v20 = &v17;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch significant events for clip UUID %{public,uuid_t}.16P: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v9);
    v8 = [MEMORY[0x277CBEB98] set];
  }

  v13 = v8;

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_significantEventModelsWithUUIDs:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v31;
    *&v7 = 138544130;
    v25 = v7;
    v26 = *v31;
    do
    {
      v10 = 0;
      v27 = v8;
      do
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v30 + 1) + 8 * v10);
        v12 = [(HMDCameraClipManager *)self localZone];
        v13 = objc_opt_class();
        v29 = 0;
        v14 = [v12 fetchModelWithModelID:v11 ofType:v13 error:&v29];
        v15 = v29;

        if (v14)
        {
          [v5 addObject:v14];
        }

        else if (![v15 isHMFError] || objc_msgSend(v15, "code") != 2)
        {
          v16 = v5;
          v17 = objc_autoreleasePoolPush();
          v18 = self;
          v19 = self;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = HMFGetLogIdentifier();
            *buf = 0;
            *&buf[8] = 0;
            if (v11)
            {
              [v11 getUUIDBytes:buf];
            }

            else
            {
              *buf = *MEMORY[0x277D0F960];
            }

            v34 = *buf;
            *buf = v25;
            *&buf[4] = v21;
            *&buf[12] = 1042;
            *&buf[14] = 16;
            v36 = 2098;
            v37 = &v34;
            v38 = 2112;
            v39 = v15;
            _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch significant notification model with UUID %{public,uuid_t}.16P: %@", buf, 0x26u);
          }

          objc_autoreleasePoolPop(v17);
          v5 = v16;
          self = v18;
          v9 = v26;
          v8 = v27;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v8);
  }

  v22 = [v5 copy];
  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)home
{
  v2 = [(HMDCameraClipManager *)self zoneManager];
  v3 = [v2 home];

  return v3;
}

- (id)performCloudPull
{
  v3 = objc_alloc_init(MEMORY[0x277D2C900]);
  v4 = [(HMDCameraClipManager *)self workQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__HMDCameraClipManager_performCloudPull__block_invoke;
  v9[3] = &unk_27868A750;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_async(v4, v9);

  v6 = v10;
  v7 = v5;

  return v5;
}

void __40__HMDCameraClipManager_performCloudPull__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _performCloudPull];
  v2 = [*(a1 + 40) completionHandlerAdapter];
  v3 = [v4 addCompletionBlock:v2];
}

- (void)cleanUpClips
{
  v3 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  [(HMDCameraClipManager *)self _cleanUpClipsForInitialStartup:0];
}

- (id)remove
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Asked to remove clip manager zones", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [(HMDCameraClipManager *)v5 zoneManager];
  v9 = [v8 remove];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)fetchHeroFrameURLForSignificantEventWithUUID:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraClipManager *)self localZone];
  v18 = 0;
  v7 = [v6 fetchModelWithModelID:v4 ofType:objc_opt_class() error:&v18];
  v8 = v18;

  if (v7)
  {
    v9 = [(HMDCameraClipManager *)self _fetchHeroFrameURLForSignificantEventModel:v7];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      if (v4)
      {
        [v4 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v19 = *buf;
      *buf = 138544130;
      *&buf[4] = v13;
      *&buf[12] = 1042;
      *&buf[14] = 16;
      v21 = 2098;
      v22 = &v19;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch significant notification model with UUID %{public,uuid_t}.16P: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = MEMORY[0x277D2C900];
    v15 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    v9 = [v14 futureWithError:v15];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)heroFrameURLForSignificantEventWithUUID:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraClipManager *)self localZone];
  v17 = 0;
  v7 = [v6 fetchModelWithModelID:v4 ofType:objc_opt_class() error:&v17];
  v8 = v17;

  if (v7)
  {
    v9 = [v7 heroFrameAsset];
    v10 = [v9 fileURL];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      if (v4)
      {
        [v4 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v18 = *buf;
      *buf = 138544130;
      *&buf[4] = v14;
      *&buf[12] = 1042;
      *&buf[14] = 16;
      v20 = 2098;
      v21 = &v18;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch significant notification model with UUID %{public,uuid_t}.16P: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)fetchSignificantEventsForClipWithSignificantEventWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraClipManager *)self _performCloudPull];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__HMDCameraClipManager_fetchSignificantEventsForClipWithSignificantEventWithUUID___block_invoke;
  v10[3] = &unk_278680EA0;
  v10[4] = self;
  v11 = v4;
  v7 = v4;
  v8 = [v6 flatMap:v10];

  return v8;
}

id __82__HMDCameraClipManager_fetchSignificantEventsForClipWithSignificantEventWithUUID___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v13[0] = *(a1 + 40);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v4 = [v2 _significantEventsWithUUIDs:v3];
  v5 = [v4 firstObject];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [v5 clipUUID];
    v8 = [v6 significantEventsForClipWithUUID:v7];

    [MEMORY[0x277D2C900] futureWithResult:v8];
  }

  else
  {
    v9 = MEMORY[0x277D2C900];
    v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v9 futureWithError:v8];
  }
  v10 = ;

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)configure
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraClipManager *)self zoneManager];
  v5 = [v4 home];

  if (v5)
  {
    v6 = [(HMDCameraClipManager *)self messageDispatcher];
    v7 = [HMDXPCMessagePolicy policyWithEntitlements:133];
    v8 = [HMDUserMessagePolicy userMessagePolicyWithHome:v5 userPrivilege:0 remoteAccessRequired:0];
    v9 = [HMDUserMessagePolicy userMessagePolicyWithHome:v5 userPrivilege:4 remoteAccessRequired:0];
    [HMDUserMessagePolicy userMessagePolicyWithHome:v5 userPrivilege:3 remoteAccessRequired:0];
    v46 = v45 = v8;
    v52[0] = v7;
    v52[1] = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
    [v6 registerForMessage:*MEMORY[0x277CCF3F8] receiver:self policies:v10 selector:sel_handleFetchVideoSegmentsAssetContextMessage_];
    [v6 registerForMessage:*MEMORY[0x277CCF4C0] receiver:self policies:v10 selector:sel_handleSubscribeMessage_];
    [v6 registerForMessage:*MEMORY[0x277CCF4C8] receiver:self policies:v10 selector:sel_handleUnsubscribeMessage_];
    [v6 registerForMessage:*MEMORY[0x277CCF4B0] receiver:self policies:v10 selector:sel_handlePerformCloudPullMessage_];
    [v6 registerForMessage:*MEMORY[0x277CCF3B0] receiver:self policies:v10 selector:sel_handleFetchClipMessage_];
    [v6 registerForMessage:*MEMORY[0x277CCF3B8] receiver:self policies:v10 selector:sel_handleFetchClipsMessage_];
    [v6 registerForMessage:*MEMORY[0x277CCF3A8] receiver:self policies:v10 selector:sel_handleFetchClipForSignificantEventMessage_];
    [v6 registerForMessage:*MEMORY[0x277CCF3C0] receiver:self policies:v10 selector:sel_handleFetchCountOfClipsMessage_];
    [v6 registerForMessage:*MEMORY[0x277CCF3D8] receiver:self policies:v10 selector:sel_handleFetchHeroFrameDataRepresentationMessage_];
    [v6 registerForMessage:*MEMORY[0x277CCF3E0] receiver:self policies:v10 selector:sel_handleFetchHeroFrameURLMessage_];
    [v6 registerForMessage:*MEMORY[0x277CCF3C8] receiver:self policies:v10 selector:sel_handleFetchFaceCropDataRepresentationMessage_];
    [v6 registerForMessage:*MEMORY[0x277CCF3D0] receiver:self policies:v10 selector:sel_handleFetchFaceCropURLMessage_];
    [v6 registerForMessage:*MEMORY[0x277CCF3F0] receiver:self policies:v10 selector:sel_handleFetchSignificantEventsMessage_];
    v11 = [HMDConfigurationMessagePolicy policyWithOperationTypes:4];
    v51[0] = v7;
    v51[1] = v9;
    v51[2] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:3];
    [v6 registerForMessage:*MEMORY[0x277CCF390] receiver:self policies:v12 selector:sel_handleDeleteClipMessage_];
    [v6 registerForMessage:*MEMORY[0x277CCF388] receiver:self policies:v12 selector:sel_handleDeleteAllClipsMessage_];
    [v6 registerForMessage:*MEMORY[0x277CCF400] receiver:self policies:v12 selector:sel_handleHandleFaceMisclassificationMessage_];
    v43 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
    v44 = v9;
    v50[0] = v9;
    v50[1] = v11;
    v50[2] = v43;
    v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:3];
    [v6 registerForMessage:@"HMDCCM.m.rhfm" receiver:self policies:? selector:?];
    if (isInternalBuild())
    {
      v13 = [HMDConfigurationMessagePolicy policyWithOperationTypes:1];
      v14 = *MEMORY[0x277CCF408];
      v49[0] = v7;
      v49[1] = v46;
      v49[2] = v13;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:3];
      [v6 registerForMessage:v14 receiver:self policies:v15 selector:sel_handleImportClipsMessage_];

      v16 = *MEMORY[0x277CCF3E8];
      v48[0] = v7;
      v48[1] = v46;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
      [v6 registerForMessage:v16 receiver:self policies:v17 selector:sel_handleFetchIsCloudStorageEnabledMessage_];

      v18 = *MEMORY[0x277CCF4D0];
      v47[0] = v7;
      v47[1] = v46;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
      [v6 registerForMessage:v18 receiver:self policies:v19 selector:sel_handleUpdateCloudStorageMessage_];
    }

    v20 = [MEMORY[0x277CCAB98] defaultCenter];
    [v20 addObserver:self selector:sel_handleUserPrivilegeDidChangeNotification_ name:@"HMDUserPrivilegeDidChangeNotification" object:0];

    v21 = [MEMORY[0x277CCAB98] defaultCenter];
    [v21 addObserver:self selector:sel_handleUserCamerasAccessLevelDidChangeNotification_ name:@"HMDUserCamerasAccessLevelDidChangeNotification" object:0];

    v22 = [MEMORY[0x277CCAB98] defaultCenter];
    [v22 addObserver:self selector:sel_handleUserRemoteAccessDidChangeNotification_ name:@"HMDUserRemoteAccessDidChangeNotification" object:0];

    v23 = [MEMORY[0x277CCAB98] defaultCenter];
    [v23 addObserver:self selector:sel_handleHomePersonManagerSettingsDidChangeNotification_ name:@"HMDHomePersonManagerSettingsDidChangeNotification" object:v5];

    v24 = [(HMDCameraClipManager *)self zoneManager];
    v25 = [v24 defaultConfiguration];
    v26 = [v25 mutableCopy];

    [v26 setZoneOwner:{objc_msgSend(v5, "isOwnerUser")}];
    v27 = [(HMDCameraClipManager *)self featuresDataSource];
    LOBYTE(v25) = [v27 isPersistentBulletinRegistrationsFeatureEnabled];

    if ((v25 & 1) == 0)
    {
      v28 = MEMORY[0x277CBEB98];
      v29 = +[HMDCameraSignificantEventNotificationModel hmbExternalRecordType];
      v30 = [v28 setWithObject:v29];
      [v26 setExternalRecordTypesForSubscriptions:v30];
    }

    v31 = [(HMDCameraClipManager *)self zoneManager];
    [v31 setDefaultConfiguration:v26];

    v32 = [(HMDCameraClipManager *)self zoneManager];
    [v32 setDelegate:self];

    v33 = [(HMDCameraClipManager *)self zoneManager];
    [v33 setDataSource:self];

    v34 = [(HMDCameraClipManager *)self zoneManager];
    [v34 configure];

    v35 = [(HMDCameraClipManager *)self zoneManager];
    [v35 start];

    v36 = [(HMDCameraClipManager *)self clientConnectionsTimer];
    [v36 setDelegate:self];
  }

  else
  {
    v37 = objc_autoreleasePoolPush();
    v38 = self;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = HMFGetLogIdentifier();
      *buf = 138543362;
      v54 = v40;
      _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Skipping camera clip manager configure because home reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v37);
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (NSDictionary)stateDump
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"Subscribed Clients";
  v2 = [(HMDCameraClipManager *)self clientConnectionsTimer];
  v3 = [v2 clientConnections];
  v4 = [v3 na_map:&__block_literal_global_218351];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)hasStartedUpCloudZone
{
  v2 = [(HMDCameraClipManager *)self cloudZone];
  v3 = [v2 startUp];
  v4 = [v3 isFinished];

  return v4;
}

- (void)setHasWriteAccess:(BOOL)a3
{
  v3 = a3;
  v21 = *MEMORY[0x277D85DE8];
  v5 = [(HMDCameraClipManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if (self->_hasWriteAccess != v3)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      hasWriteAccess = self->_hasWriteAccess;
      v11 = HMFBooleanToString();
      v12 = HMFBooleanToString();
      v15 = 138543874;
      v16 = v9;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating has write access from %@ to %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    self->_hasWriteAccess = v3;
    if (v3)
    {
      v13 = [(HMDCameraClipManager *)v7 zoneManager];
      [v13 updateShareParticipants];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)fetchSignificantEventsWithDateInterval:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraClipManager *)self performCloudPull];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__HMDCameraClipManager_fetchSignificantEventsWithDateInterval___block_invoke;
  v9[3] = &unk_278680EA0;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [v5 flatMap:v9];

  return v7;
}

id __63__HMDCameraClipManager_fetchSignificantEventsWithDateInterval___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277D2C900];
  v2 = [*(a1 + 32) significantEventsWithDateInterval:*(a1 + 40)];
  v3 = [v1 futureWithResult:v2];

  return v3;
}

- (id)significantEventsWithDateInterval:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = [v4 array];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__HMDCameraClipManager_significantEventsWithDateInterval___block_invoke;
  v10[3] = &unk_278680E78;
  v11 = v6;
  v7 = v6;
  [(HMDCameraClipManager *)self _fetchSignificantEventsWithDateInterval:v5 isAscending:1 error:0 handler:v10];

  v8 = [v7 copy];

  return v8;
}

- (id)significantEventsForClipWithUUID:(id)a3
{
  v4 = [(HMDCameraClipManager *)self _significantEventModelsForClipWithUUID:a3];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HMDCameraClipManager_significantEventsForClipWithUUID___block_invoke;
  v7[3] = &unk_278680E50;
  v7[4] = self;
  v5 = [v4 na_map:v7];

  return v5;
}

- (NSString)zoneName
{
  v2 = [(HMDCameraClipManager *)self zoneManager];
  v3 = [v2 zoneName];

  return v3;
}

- (HMDCameraClipManager)initWithZoneManager:(id)a3 quotaManager:(id)a4 faceClassificationResolver:(id)a5 clientConnectionsTimer:(id)a6 messageDispatcher:(id)a7 workQueue:(id)a8 cameraProfileUUID:(id)a9 fileManager:(id)a10 featuresDataSource:(id)a11
{
  v17 = a3;
  obj = a4;
  v18 = a4;
  v47 = a5;
  v19 = a5;
  v20 = a7;
  v55 = v19;
  v54 = a6;
  v53 = a7;
  v48 = a8;
  v21 = a8;
  v22 = a9;
  v52 = a10;
  v23 = a11;
  if (!v17)
  {
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!v18)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!v55)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  if (!v54)
  {
LABEL_16:
    _HMFPreconditionFailure();
    goto LABEL_17;
  }

  if (!v53)
  {
LABEL_17:
    _HMFPreconditionFailure();
    goto LABEL_18;
  }

  if (!v21)
  {
LABEL_18:
    _HMFPreconditionFailure();
    goto LABEL_19;
  }

  if (!v22)
  {
LABEL_19:
    _HMFPreconditionFailure();
    goto LABEL_20;
  }

  if (!v52)
  {
LABEL_20:
    _HMFPreconditionFailure();
    goto LABEL_21;
  }

  if (!v23)
  {
LABEL_21:
    v44 = _HMFPreconditionFailure();
    return __184__HMDCameraClipManager_initWithZoneManager_quotaManager_faceClassificationResolver_clientConnectionsTimer_messageDispatcher_workQueue_cameraProfileUUID_fileManager_featuresDataSource___block_invoke(v44, v45);
  }

  v49 = v23;
  v50 = v18;
  v58.receiver = self;
  v58.super_class = HMDCameraClipManager;
  v24 = [(HMDCameraClipManager *)&v58 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_zoneManager, a3);
    objc_storeStrong(&v25->_messageDispatcher, v20);
    objc_storeStrong(&v25->_quotaManager, obj);
    objc_storeStrong(&v25->_faceClassificationResolver, v47);
    objc_storeStrong(&v25->_clientConnectionsTimer, a6);
    objc_storeStrong(&v25->_workQueue, v48);
    objc_storeStrong(&v25->_cameraProfileUUID, a9);
    objc_storeStrong(&v25->_fileManager, a10);
    objc_storeStrong(&v25->_featuresDataSource, a11);
    v26 = MEMORY[0x277CCACA8];
    [v17 zoneName];
    v28 = v27 = v17;
    v29 = [v26 stringWithFormat:@"%@/%@", v22, v28];
    logIdentifier = v25->_logIdentifier;
    v25->_logIdentifier = v29;

    v31 = [MEMORY[0x277CBEAA8] distantPast];
    suppressNotificationsBeforeDate = v25->_suppressNotificationsBeforeDate;
    v25->_suppressNotificationsBeforeDate = v31;

    v25->_fetchBatchLimit = 100;
    v33 = HMDispatchQueueNameString();
    v34 = [v33 UTF8String];
    v35 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    dispatch_get_global_queue(9, 0);
    v37 = v36 = v21;
    v38 = v34;
    v17 = v27;
    v39 = dispatch_queue_create_with_target_V2(v38, v35, v37);
    cleanupQueue = v25->_cleanupQueue;
    v25->_cleanupQueue = v39;

    v21 = v36;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __184__HMDCameraClipManager_initWithZoneManager_quotaManager_faceClassificationResolver_clientConnectionsTimer_messageDispatcher_workQueue_cameraProfileUUID_fileManager_featuresDataSource___block_invoke;
    aBlock[3] = &unk_278680E28;
    v57 = v36;
    v41 = _Block_copy(aBlock);
    fetchServerFactory = v25->_fetchServerFactory;
    v25->_fetchServerFactory = v41;
  }

  return v25;
}

id __184__HMDCameraClipManager_initWithZoneManager_quotaManager_faceClassificationResolver_clientConnectionsTimer_messageDispatcher_workQueue_cameraProfileUUID_fileManager_featuresDataSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CD1918];
  v4 = a2;
  v5 = [[v3 alloc] initWithFetchMessage:v4 workQueue:*(a1 + 32)];

  return v5;
}

- (HMDCameraClipManager)initWithHome:(id)a3 zoneName:(id)a4 messageDispatcher:(id)a5 workQueue:(id)a6 cameraProfileUUID:(id)a7
{
  v12 = a3;
  v13 = a4;
  v34 = a5;
  v14 = a6;
  v15 = a7;
  if (!v12)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!v13)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!v34)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v14)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v16 = v15;
  if (v15)
  {
    v17 = [HMDDatabaseZoneManager alloc];
    v18 = +[HMDDatabase cameraClipsDatabase];
    v19 = [(HMDDatabaseZoneManager *)v17 initWithDatabase:v18 zoneName:v13 home:v12 messageTargetUUID:v16 workQueue:v14];

    v20 = [[HMDCameraSignificantEventFaceClassificationResolver alloc] initWithHome:v12];
    v21 = [HMDActiveXPCClientConnectionsPeriodicTimer alloc];
    v22 = [(HMDDatabaseZoneManager *)v19 zoneName];
    v23 = [(HMDActiveXPCClientConnectionsPeriodicTimer *)v21 initWithTimeInterval:v22 logIdentifier:v14 workQueue:4.0];

    v24 = objc_alloc_init(HMDFileManager);
    v25 = self;
    v26 = objc_alloc_init(HMDFeaturesDataSource);
    +[HMDCameraClipsQuotaManager defaultManager];
    v32 = v13;
    v27 = v33 = v12;
    v28 = [(HMDCameraClipManager *)v25 initWithZoneManager:v19 quotaManager:v27 faceClassificationResolver:v20 clientConnectionsTimer:v23 messageDispatcher:v34 workQueue:v14 cameraProfileUUID:v16 fileManager:v24 featuresDataSource:v26];

    return v28;
  }

LABEL_11:
  v30 = _HMFPreconditionFailure();
  return +[(HMDCameraClipManager *)v30];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t148[0] != -1)
  {
    dispatch_once(logCategory__hmf_once_t148, &__block_literal_global_223_218413);
  }

  v3 = logCategory__hmf_once_v149;

  return v3;
}

void __35__HMDCameraClipManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v149;
  logCategory__hmf_once_v149 = v1;
}

+ (double)maximumClipDuration
{
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"maxClipDuration"];
  v4 = [v3 numberValue];

  [v4 doubleValue];
  v6 = v5;

  return v6;
}

@end
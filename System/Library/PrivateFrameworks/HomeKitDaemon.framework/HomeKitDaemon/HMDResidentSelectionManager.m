@interface HMDResidentSelectionManager
+ (id)logCategory;
- (BOOL)allowExternalUpdateOfPrimaryResidentTo:(id)a3 selectionTimestamp:(id)a4;
- (BOOL)devicesInHomeSupportResidentSelection;
- (BOOL)residentIsLocallyReachable:(id)a3;
- (BOOL)residentIsPresentInCurrentAccount:(id)a3;
- (BOOL)weAreTheOnlyActingResident;
- (HMDIDSServerBag)idsServerBag;
- (HMDPreferredResidentsList)localPreferredResidentsList;
- (HMDResidentDeviceManagerContext)context;
- (HMDResidentSelectionManager)initWithContext:(id)a3;
- (HMDResidentSelectionManager)initWithContext:(id)a3 dataSource:(id)a4;
- (HMDResidentSelectionManagerDelegate)delegate;
- (NSUUID)messageTargetUUID;
- (double)preferredResidentEvaluationDelay;
- (id)_idsIdentifierForResidentDeviceWithIdentifier:(id)a3;
- (id)createResidentSelectionModeWithType:(unint64_t)a3;
- (id)dumpState;
- (id)locallyReachableResidents;
- (id)logIdentifier;
- (id)minimumHomeKitVersionForResidentSelection;
- (id)notificationCenter;
- (id)residentWithIdentifier:(id)a3;
- (id)residentsNotPresentInPreferredResidentsList:(id)a3;
- (id)shortDescription;
- (unint64_t)primaryChangedReason;
- (void)_handleModeChangeWithPreviousMode:(unint64_t)a3;
- (void)_processSelectedAsPreferredMessage:(id)a3;
- (void)_registerForMessages;
- (void)_removeScheduledAutoModeEvaluation;
- (void)_scheduleAutoModeEvaluationWithRetryNeeded:(BOOL)a3;
- (void)currentDeviceReadyAsAResident;
- (void)didRemoveResidentsFromHome:(id)a3;
- (void)didUpdateResidentSelectionModelTo:(id)a3;
- (void)didUpdateResidentSelectionVersion;
- (void)didUpdateResidentStatus:(id)a3 residentsFound:(id)a4 residentsLost:(id)a5;
- (void)evaluateSelectionMode;
- (void)handleSelectedAsPreferredMessage:(id)a3;
- (void)makeSureCurrentModeIsOfType:(unint64_t)a3;
- (void)primaryResidentChanged:(id)a3 previousResidentDevice:(id)a4;
- (void)primarySelectionMode:(id)a3 didFailToSelectWithError:(id)a4;
- (void)primarySelectionMode:(id)a3 didReceivePrimaryResidentIdsIdentifier:(id)a4 selectionTimestamp:(id)a5;
- (void)primarySelectionMode:(id)a3 didSelectPrimaryResident:(id)a4 selectionInfo:(id)a5 selectionLogEvent:(id)a6 completion:(id)a7;
- (void)primarySelectionMode:(id)a3 didUpdateActiveNodes:(id)a4;
- (void)primarySelectionMode:(id)a3 didUpdatePreferredResidentsList:(id)a4;
- (void)primarySelectionMode:(id)a3 didUpdateResidentDevice:(id)a4;
- (void)primarySelectionMode:(id)a3 didUpdateResidentSelectionInfo:(id)a4 completion:(id)a5;
- (void)primarySelectionMode:(id)a3 reassertAsCurrentPrimaryWithSelectionTimestamp:(id)a4;
- (void)primarySelectionModeReadyAsResident:(id)a3;
- (void)start;
- (void)stop;
- (void)triggerAutoModeEvaluationWithCompletion:(id)a3;
@end

@implementation HMDResidentSelectionManager

- (HMDResidentDeviceManagerContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (HMDResidentSelectionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)shortDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDResidentSelectionManager *)self messageTargetUUID];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (id)logIdentifier
{
  v2 = [(HMDResidentSelectionManager *)self context];
  v3 = [v2 home];
  v4 = [v3 uuid];
  v5 = [v4 UUIDString];

  return v5;
}

- (NSUUID)messageTargetUUID
{
  v2 = [(HMDResidentSelectionManager *)self context];
  v3 = [v2 home];
  v4 = [v3 uuid];

  return v4;
}

- (HMDIDSServerBag)idsServerBag
{
  v3 = [(HMDResidentSelectionManager *)self dataSource];
  v4 = [(HMDResidentSelectionManager *)self context];
  v5 = [v4 home];
  v6 = [v3 idsServerBagForHome:v5];

  return v6;
}

- (id)minimumHomeKitVersionForResidentSelection
{
  v3 = [(HMDResidentSelectionManager *)self idsServerBag];
  v4 = [v3 residentSelectionMinHomeKitVersion];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [(HMDResidentSelectionManager *)self dataSource];
    v5 = [v6 minimumHomeKitVersionForResidentSelection];
  }

  return v5;
}

- (void)primarySelectionMode:(id)a3 didUpdatePreferredResidentsList:(id)a4
{
  v5 = a4;
  v6 = [(HMDResidentSelectionManager *)self delegate];
  [v6 residentSelectionManager:self didUpdatePreferredResidentsList:v5];
}

- (void)primarySelectionMode:(id)a3 didUpdateResidentSelectionInfo:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(HMDResidentSelectionManager *)self delegate];
  [v9 residentSelectionManager:self didUpdateResidentSelectionInfo:v8 completion:v7];
}

- (void)primarySelectionMode:(id)a3 didReceivePrimaryResidentIdsIdentifier:(id)a4 selectionTimestamp:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(HMDResidentSelectionManager *)self delegate];
  [v9 residentSelectionManager:self didReceivePrimaryResidentIdsIdentifier:v8 selectionTimestamp:v7];
}

- (void)primarySelectionModeReadyAsResident:(id)a3
{
  v4 = [(HMDResidentSelectionManager *)self delegate];
  [v4 residentSelectionManagerReadyAsResident:self];
}

- (void)primarySelectionMode:(id)a3 reassertAsCurrentPrimaryWithSelectionTimestamp:(id)a4
{
  v5 = a4;
  v6 = [(HMDResidentSelectionManager *)self delegate];
  [v6 residentSelectionManager:self reassertAsTheCurrentPrimaryWithSelectionTimestamp:v5];
}

- (void)primarySelectionMode:(id)a3 didUpdateResidentDevice:(id)a4
{
  v5 = a4;
  v6 = [(HMDResidentSelectionManager *)self delegate];
  [v6 residentSelectionManager:self didUpdateResidentDevice:v5];
}

- (void)primarySelectionMode:(id)a3 didUpdateActiveNodes:(id)a4
{
  v5 = a4;
  v6 = [(HMDResidentSelectionManager *)self delegate];
  [v6 residentSelectionManager:self didUpdateActiveNodes:v5];
}

- (void)primarySelectionMode:(id)a3 didFailToSelectWithError:(id)a4
{
  v5 = a4;
  v6 = [(HMDResidentSelectionManager *)self delegate];
  [v6 residentSelectionManager:self didFailToSelectWithError:v5];
}

- (void)primarySelectionMode:(id)a3 didSelectPrimaryResident:(id)a4 selectionInfo:(id)a5 selectionLogEvent:(id)a6 completion:(id)a7
{
  v28 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(HMDResidentSelectionManager *)self delegate];
  [v17 residentSelectionManager:self didSelectPrimaryResident:v13 selectionInfo:v14 electionLogEvent:v15 completion:v16];

  if ([v12 currentModeType] == 1)
  {
    v18 = [(HMDResidentSelectionManager *)self context];
    v19 = [v18 currentResidentDevice];
    v20 = [v13 isEqual:v19];

    if (v20)
    {
      v21 = objc_autoreleasePoolPush();
      v22 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        v26 = 138543362;
        v27 = v24;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@We are the Coordination elected resident. Scheduling an evaluation.", &v26, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      [(HMDResidentSelectionManager *)v22 _scheduleAutoModeEvaluationWithRetryNeeded:1];
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (unint64_t)primaryChangedReason
{
  v2 = [(HMDResidentSelectionManager *)self currentResidentSelectionMode];
  v3 = [v2 primaryChangedReason];

  return v3;
}

- (void)didUpdateResidentSelectionModelTo:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v8;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Resident Selection info in the working store updated to: %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDResidentSelectionManager *)v6 setResidentSelectionInfoFromWorkingStore:v4];
  v9 = [(HMDResidentSelectionManager *)v6 context];
  v10 = [v9 homeSupportsResidentSelection];

  if (v10)
  {
    [(HMDResidentSelectionManager *)v6 evaluateSelectionMode];
    v11 = [(HMDResidentSelectionManager *)v6 currentResidentSelectionMode];
    [v11 didUpdateResidentSelectionModelTo:v4];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v6;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Ignoring the Resident Selection model update since the home does not support Resident Selection.", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)residentWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HMDResidentSelectionManager *)self context];
  v6 = [v5 availableResidentDevices];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__HMDResidentSelectionManager_residentWithIdentifier___block_invoke;
  v10[3] = &unk_2786850E0;
  v11 = v4;
  v7 = v4;
  v8 = [v6 na_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __54__HMDResidentSelectionManager_residentWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 identifier];

  v7 = [v6 isEqual:*(a1 + 32)];
  return v7;
}

- (void)_processSelectedAsPreferredMessage:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(HMDResidentSelectionManager *)self context];
  v6 = [v5 isActingAsResident];

  if (v6)
  {
    v7 = [v4 messagePayload];
    v8 = [v7 hmf_numberForKey:@"primary.selection.mode"];

    if (v8)
    {
      v9 = [v8 unsignedIntegerValue];
      v10 = objc_autoreleasePoolPush();
      v11 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v14 = [v4 remoteSourceDevice];
        v25 = 138543618;
        v26 = v13;
        v27 = 2112;
        v28 = v14;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Received preferred primary selection message from: %@", &v25, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      [(HMDResidentSelectionManager *)v11 makeSureCurrentModeIsOfType:v9];
      v15 = [(HMDResidentSelectionManager *)v11 currentResidentSelectionMode];
      [v15 didReceiveSelectionMessage:v4];
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        v25 = 138543618;
        v26 = v23;
        v27 = 2112;
        v28 = v4;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Selection message did not contain any mode: %@", &v25, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
      [v4 respondWithError:v15];
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
      v25 = 138543618;
      v26 = v19;
      v27 = 2112;
      v28 = v4;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Received the selection message: %@ but we are not acting as a resident.", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [v4 respondWithError:v8];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)handleSelectedAsPreferredMessage:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  [(HMDResidentSelectionManager *)self _processSelectedAsPreferredMessage:v5];
}

- (id)_idsIdentifierForResidentDeviceWithIdentifier:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [(HMDResidentSelectionManager *)self context];
    v6 = [v5 availableResidentDevices];

    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [v10 identifier];
          v12 = [v11 isEqual:v4];

          if (v12)
          {
            v13 = [v10 device];
            v7 = [v13 idsIdentifier];

            goto LABEL_12;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v7 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)residentIsPresentInCurrentAccount:(id)a3
{
  v4 = a3;
  v5 = [(HMDResidentSelectionManager *)self context];
  v6 = [v5 appleAccountManager];
  v7 = [v6 account];

  v8 = [v4 device];

  v9 = [v8 identifier];
  v10 = [v7 deviceForIdentifier:v9];

  return v10 != 0;
}

- (BOOL)devicesInHomeSupportResidentSelection
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v54 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Evaluating if devices in home are ready to support Resident Selection", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDResidentSelectionManager *)v4 context];
  v8 = [v7 availableResidentDevices];
  v9 = [v8 count];

  if (v9)
  {
    v47 = [(HMDResidentSelectionManager *)v4 minimumHomeKitVersionForResidentSelection];
    v10 = objc_autoreleasePoolPush();
    v11 = v4;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v54 = v13;
      v55 = 2112;
      v56 = v47;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Minimum version for support evaluation is %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v44 = v7;
    obj = [v7 availableResidentDevices];
    v14 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
    if (v14)
    {
      v15 = v14;
      v46 = 0;
      v16 = *v50;
      v45 = *v50;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v50 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v49 + 1) + 8 * i);
          v19 = [v18 device];
          v20 = [v19 version];

          if ([(HMDResidentSelectionManager *)v11 residentIsPresentInCurrentAccount:v18])
          {
            if ([v20 isAtLeastVersion:v47])
            {
              ++v46;
            }

            else
            {
              v26 = objc_autoreleasePoolPush();
              v27 = v11;
              v28 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
              {
                HMFGetLogIdentifier();
                v30 = v29 = v9;
                *buf = 138543618;
                v54 = v30;
                v55 = 2112;
                v56 = v18;
                _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Cannot support Resident Selection because resident: %@ has too low a version", buf, 0x16u);

                v9 = v29;
                v16 = v45;
              }

              objc_autoreleasePoolPop(v26);
            }
          }

          else
          {
            v21 = objc_autoreleasePoolPush();
            v22 = v11;
            v23 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v25 = v24 = v9;
              *buf = 138543618;
              v54 = v25;
              v55 = 2112;
              v56 = v18;
              _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Resident: %@ is not present in the current account. Excluding it from the RS migration check.", buf, 0x16u);

              v9 = v24;
              v16 = v45;
            }

            objc_autoreleasePoolPop(v21);
            --v9;
          }
        }

        v15 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
      }

      while (v15);
    }

    else
    {
      v46 = 0;
    }

    v36 = objc_autoreleasePoolPush();
    v37 = v11;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v40 = v39 = v9;
      *buf = 138543874;
      v54 = v40;
      v55 = 2048;
      v56 = v46;
      v57 = 2048;
      v58 = v39;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@%ld of %lu residents are eligible to support Resident Selection", buf, 0x20u);

      v9 = v39;
    }

    objc_autoreleasePoolPop(v36);
    v7 = v44;
    if (v46 == v9)
    {
      v35 = 1;
    }

    else
    {
      v41 = isInternalBuild();
      if (v46 > 1)
      {
        v35 = v41;
      }

      else
      {
        v35 = 0;
      }
    }
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    v32 = v4;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543362;
      v54 = v34;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Cannot support resident selection in a home that has no residents", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v31);
    v35 = 0;
  }

  v42 = *MEMORY[0x277D85DE8];
  return v35;
}

- (void)_removeScheduledAutoModeEvaluation
{
  v3 = [(HMDResidentSelectionManager *)self backgroundScheduler];
  [v3 invalidate];

  [(HMDResidentSelectionManager *)self setBackgroundScheduler:0];
}

- (void)_scheduleAutoModeEvaluationWithRetryNeeded:(BOOL)a3
{
  v3 = a3;
  v25 = *MEMORY[0x277D85DE8];
  v5 = [(HMDResidentSelectionManager *)self backgroundScheduler];

  if (!v5)
  {
    v6 = [(HMDResidentSelectionManager *)self dataSource];
    v7 = [v6 autoModeEvaluationScheduler];
    [(HMDResidentSelectionManager *)self setBackgroundScheduler:v7];

    v8 = [(HMDResidentSelectionManager *)self backgroundScheduler];
    [v8 setQualityOfService:17];

    [(HMDResidentSelectionManager *)self preferredResidentEvaluationDelay];
    v10 = v9;
    v11 = [(HMDResidentSelectionManager *)self backgroundScheduler];
    [v11 setInterval:v10];

    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v15;
      v23 = 2048;
      v24 = v10;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Scheduling auto mode evaluation in %f", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    if (v3)
    {
      v16 = [(HMDResidentSelectionManager *)v13 backgroundScheduler];
      [v16 setRepeats:1];
    }

    objc_initWeak(buf, v13);
    v17 = [(HMDResidentSelectionManager *)v13 backgroundScheduler];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __74__HMDResidentSelectionManager__scheduleAutoModeEvaluationWithRetryNeeded___block_invoke;
    v19[3] = &unk_27867B450;
    objc_copyWeak(&v20, buf);
    [v17 scheduleWithBlock:v19];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __74__HMDResidentSelectionManager__scheduleAutoModeEvaluationWithRetryNeeded___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __74__HMDResidentSelectionManager__scheduleAutoModeEvaluationWithRetryNeeded___block_invoke_77;
    v11[3] = &unk_27868A7A0;
    v11[4] = v5;
    v12 = v3;
    dispatch_async(v6, v11);
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v14 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Resident Selection Manager instance is gone", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    (*(v3 + 2))(v3, 1);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __74__HMDResidentSelectionManager__scheduleAutoModeEvaluationWithRetryNeeded___block_invoke_77(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v12 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Kicking off an evaluation in Auto mode", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__HMDResidentSelectionManager__scheduleAutoModeEvaluationWithRetryNeeded___block_invoke_78;
  v9[3] = &unk_278689A90;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v7;
  [v6 triggerAutoModeEvaluationWithCompletion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __74__HMDResidentSelectionManager__scheduleAutoModeEvaluationWithRetryNeeded___block_invoke_78(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  (*(*(a1 + 40) + 16))();
  if (v6 || ![*(a1 + 32) weAreInResidentSelection])
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Auto mode evaluation failed. Will try again in sometime.", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Auto mode evaluation is complete", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 32) _removeScheduledAutoModeEvaluation];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)triggerAutoModeEvaluationWithCompletion:(id)a3
{
  v4 = a3;
  if (-[HMDResidentSelectionManager devicesInHomeSupportResidentSelection](self, "devicesInHomeSupportResidentSelection") || (-[HMDResidentSelectionManager context](self, "context"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 homeSupportsResidentSelection], v5, (v6 & 1) != 0))
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __71__HMDResidentSelectionManager_triggerAutoModeEvaluationWithCompletion___block_invoke;
    v8[3] = &unk_27867B428;
    v9 = v4;
    [(HMDResidentSelectionManager *)self performSelectionInMode:3 preferredPrimaryResident:0 requireAutoUpdate:0 reason:7 completion:v8];
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    (*(v4 + 2))(v4, 0, v7);
  }
}

- (id)createResidentSelectionModeWithType:(unint64_t)a3
{
  v5 = [(HMDResidentSelectionManager *)self dataSource];
  v6 = [(HMDResidentSelectionManager *)self context];
  v7 = [v5 createResidentSelectionModeWithType:a3 context:v6];

  return v7;
}

- (void)_handleModeChangeWithPreviousMode:(unint64_t)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [(HMDResidentSelectionManager *)self context];
  v6 = [v5 isActingAsResident];

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      if (a3 - 1 > 2)
      {
        v11 = @"unknown";
      }

      else
      {
        v11 = off_2786841A8[a3 - 1];
      }

      v12 = v11;
      v13 = [(HMDResidentSelectionManager *)v8 currentModeType];
      if ((v13 - 1) > 2)
      {
        v14 = @"unknown";
      }

      else
      {
        v14 = off_2786841A8[v13 - 1];
      }

      v15 = v14;
      v18 = 138543874;
      v19 = v10;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v15;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@We just switched from %@ to %@.", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v16 = [(HMDResidentSelectionManager *)v8 currentResidentSelectionMode];
    [v16 configureAsAResidentWithRunPrimaryEvaluation:0];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)makeSureCurrentModeIsOfType:(unint64_t)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = [(HMDResidentSelectionManager *)self currentResidentSelectionMode];
  v6 = [v5 currentModeType];

  if (v6 != a3)
  {
    v7 = [(HMDResidentSelectionManager *)self currentResidentSelectionMode];
    v8 = [v7 currentModeType];

    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      if ((v8 - 1) > 2)
      {
        v13 = @"unknown";
      }

      else
      {
        v13 = off_2786841A8[v8 - 1];
      }

      v14 = v13;
      if (a3 - 1 > 2)
      {
        v15 = @"unknown";
      }

      else
      {
        v15 = off_2786841A8[a3 - 1];
      }

      v16 = v15;
      v22 = 138543874;
      v23 = v12;
      v24 = 2112;
      v25 = v14;
      v26 = 2112;
      v27 = v16;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Switching from %@ to %@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v17 = [(HMDResidentSelectionManager *)v10 currentResidentSelectionMode];
    [v17 stop];

    v18 = [(HMDResidentSelectionManager *)v10 createResidentSelectionModeWithType:a3];
    [(HMDResidentSelectionManager *)v10 setCurrentResidentSelectionMode:v18];

    v19 = [(HMDResidentSelectionManager *)v10 currentResidentSelectionMode];
    [v19 setDelegate:v10];

    [(HMDResidentSelectionManager *)v10 setCurrentModeType:a3];
    v20 = [(HMDResidentSelectionManager *)v10 currentResidentSelectionMode];
    [v20 start];

    [(HMDResidentSelectionManager *)v10 _handleModeChangeWithPreviousMode:v8];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)weAreTheOnlyActingResident
{
  v2 = [(HMDResidentSelectionManager *)self context];
  v3 = [v2 residentStatusChannel];
  v4 = [v3 isConnected];

  if (v4)
  {
    v5 = [v2 currentResidentDevice];
    v6 = [v5 device];
    v7 = [v6 idsIdentifier];

    v8 = [v2 residentsPresentOnStatusKit];
    if ([v8 count])
    {
      v9 = [v2 residentsPresentOnStatusKit];
      if ([v9 count] == 1)
      {
        v10 = [v2 residentsPresentOnStatusKit];
        v11 = [v10 objectAtIndexedSubscript:0];
        v12 = [v11 isEqual:v7];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 1;
  }

  if ([v2 isCurrentDeviceAvailableResident])
  {
    v13 = [v2 availableResidentDevices];
    if ([v13 count] == 1)
    {
      v14 = [v2 isActingAsResident];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v12 & v14;
}

- (void)evaluateSelectionMode
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(HMDResidentSelectionManager *)self context];
  if ([(HMDResidentSelectionManager *)self weAreTheOnlyActingResident]&& ![(HMDResidentSelectionManager *)self weAreInResidentSelection])
  {
    v6 = 3;
  }

  else if ([v3 homeSupportsResidentSelection])
  {
    v4 = [(HMDResidentSelectionManager *)self residentSelectionInfoFromWorkingStore];
    v5 = [v4 currentModeType];

    if (v5 == 2)
    {
      v6 = 2;
    }

    else
    {
      v6 = 3;
    }
  }

  else
  {
    v6 = 1;
  }

  v7 = [v3 residentSelectionInfo];
  v8 = [v7 currentModeType] == 3 || objc_msgSend(v7, "currentModeType") == 2;
  v9 = [v3 homeSupportsResidentSelection];
  if (![(HMDResidentSelectionManager *)self weAreTheOnlyActingResident]|| (v9 & v8 & 1) != 0)
  {
    [(HMDResidentSelectionManager *)self makeSureCurrentModeIsOfType:v6];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@We are the only resident in the home and we are not in RS. Starting an Auto mode evaluation. Resident Selection info from the working store: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __52__HMDResidentSelectionManager_evaluateSelectionMode__block_invoke;
    v15[3] = &unk_2786899A0;
    v15[4] = v11;
    [(HMDResidentSelectionManager *)v11 triggerAutoModeEvaluationWithCompletion:v15];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __52__HMDResidentSelectionManager_evaluateSelectionMode__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Auto mode evaluation to switch to RS while we were the only resident in the home failed. Going to Coordination", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 32) makeSureCurrentModeIsOfType:1];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (double)preferredResidentEvaluationDelay
{
  v2 = [(HMDResidentSelectionManager *)self idsServerBag];
  v3 = [v2 residentSelectionPreferredResidentEvaluationDelay];

  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 3600.0;
  }

  return v5;
}

- (id)notificationCenter
{
  v2 = [(HMDResidentSelectionManager *)self dataSource];
  v3 = [v2 notificationCenter];

  return v3;
}

- (void)_registerForMessages
{
  v11[2] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(HMDResidentSelectionManager *)self context];
  v4 = [v3 messageDispatcher];
  v5 = [v3 home];
  v6 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
  [v6 setRoles:{objc_msgSend(v6, "roles") | 4}];
  v7 = [v6 copy];
  v8 = [HMDUserMessagePolicy userMessagePolicyWithHome:v5 userPrivilege:4 remoteAccessRequired:0];
  v11[0] = v7;
  v11[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  [v4 registerForMessage:@"residentSelection.preferred" receiver:self policies:v9 selector:sel_handleSelectedAsPreferredMessage_];

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)allowExternalUpdateOfPrimaryResidentTo:(id)a3 selectionTimestamp:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDResidentSelectionManager *)self currentResidentSelectionMode];

  if (v8)
  {
    v9 = [(HMDResidentSelectionManager *)self currentResidentSelectionMode];
    v10 = [v9 allowExternalUpdateOfPrimaryResidentTo:v6 selectionTimestamp:v7];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [(HMDResidentSelectionManager *)v12 currentModeType];
      if ((v15 - 1) > 2)
      {
        v16 = @"unknown";
      }

      else
      {
        v16 = off_2786841A8[v15 - 1];
      }

      v17 = v16;
      v20 = 138543874;
      v21 = v14;
      v22 = 2112;
      v23 = v6;
      v24 = 2112;
      v25 = v17;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Allowing external update of primary resident to: %@ in mode: %@.", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 1;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)residentsNotPresentInPreferredResidentsList:(id)a3
{
  v4 = a3;
  v5 = [(HMDResidentSelectionManager *)self currentResidentSelectionMode];
  v6 = [v4 residentIDSIdentifiers];

  v7 = [v5 residentsNotPresentInPreferredResidentsList:v6];

  return v7;
}

- (BOOL)residentIsLocallyReachable:(id)a3
{
  v4 = a3;
  v5 = [(HMDResidentSelectionManager *)self currentResidentSelectionMode];
  v6 = [v5 residentIsLocallyReachable:v4];

  return v6;
}

- (id)locallyReachableResidents
{
  v2 = [(HMDResidentSelectionManager *)self currentResidentSelectionMode];
  v3 = [v2 locallyReachableResidents];

  return v3;
}

- (id)dumpState
{
  v2 = [(HMDResidentSelectionManager *)self currentResidentSelectionMode];
  v3 = [v2 dumpState];

  return v3;
}

- (void)primaryResidentChanged:(id)a3 previousResidentDevice:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 isCurrentDevice] && !-[HMDResidentSelectionManager weAreInResidentSelection](self, "weAreInResidentSelection"))
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@We are the new primary and the home is in REv2. Scheduling an Auto mode evaluation.", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    [(HMDResidentSelectionManager *)v9 _scheduleAutoModeEvaluationWithRetryNeeded:1];
  }

  else if (([v6 isCurrentDevice] & 1) == 0)
  {
    [(HMDResidentSelectionManager *)self _removeScheduledAutoModeEvaluation];
  }

  v12 = [(HMDResidentSelectionManager *)self currentResidentSelectionMode];
  [v12 primaryResidentChanged:v6 previousResidentDevice:v7];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)didUpdateResidentStatus:(id)a3 residentsFound:(id)a4 residentsLost:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(HMDResidentSelectionManager *)self currentResidentSelectionMode];
  [v11 didUpdateResidentStatus:v10 residentsFound:v9 residentsLost:v8];
}

- (void)didUpdateResidentSelectionVersion
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HMDResidentSelectionManager *)v4 context];
    v9 = 138543618;
    v10 = v6;
    v11 = 1024;
    v12 = [v7 homeSupportsResidentSelection];
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Home's resident selection version updated. Home supports Resident Selection: %d.", &v9, 0x12u);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDResidentSelectionManager *)v4 evaluateSelectionMode];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)didRemoveResidentsFromHome:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDResidentSelectionManager *)self context];
  v6 = [v5 primaryResidentDevice];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v18 = v10;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Residents: %@ are removed from the home.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  if (!-[HMDResidentSelectionManager weAreInResidentSelection](v8, "weAreInResidentSelection") && [v6 isCurrentDevice])
  {
    v11 = objc_autoreleasePoolPush();
    v12 = v8;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Evaluating if we are ready to switch to Resident Selection after the removal.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __58__HMDResidentSelectionManager_didRemoveResidentsFromHome___block_invoke;
    v16[3] = &unk_2786899A0;
    v16[4] = v12;
    [(HMDResidentSelectionManager *)v12 triggerAutoModeEvaluationWithCompletion:v16];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __58__HMDResidentSelectionManager_didRemoveResidentsFromHome___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
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
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Attempt to switch to RS triggered by the removal of a resident failed with error: %@.", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)currentDeviceReadyAsAResident
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HMDResidentSelectionManager *)v4 currentModeType];
    if ((v7 - 1) > 2)
    {
      v8 = @"unknown";
    }

    else
    {
      v8 = off_2786841A8[v7 - 1];
    }

    v9 = v8;
    v12 = 138543618;
    v13 = v6;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Notified that current device is ready as a resident. Current Mode: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDResidentSelectionManager *)v4 _registerForMessages];
  [(HMDResidentSelectionManager *)v4 evaluateSelectionMode];
  v10 = [(HMDResidentSelectionManager *)v4 currentResidentSelectionMode];
  [v10 currentDeviceReadyAsAResident];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v3 = [(HMDResidentSelectionManager *)self currentResidentSelectionMode];
  [v3 stop];

  v5 = [(HMDResidentSelectionManager *)self context];
  v4 = [v5 messageDispatcher];
  [v4 deregisterReceiver:self];
}

- (void)start
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting.", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDResidentSelectionManager *)v4 evaluateSelectionMode];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDPreferredResidentsList)localPreferredResidentsList
{
  v2 = [(HMDResidentSelectionManager *)self currentResidentSelectionMode];
  v3 = [v2 localPreferredResidentsList];

  return v3;
}

- (HMDResidentSelectionManager)initWithContext:(id)a3 dataSource:(id)a4
{
  v6 = a4;
  v16.receiver = self;
  v16.super_class = HMDResidentSelectionManager;
  v7 = a3;
  v8 = [(HMDResidentSelectionManager *)&v16 init];
  objc_storeWeak(&v8->_context, v7);
  v9 = [v7 queue];

  queue = v8->_queue;
  v8->_queue = v9;

  dataSource = v8->_dataSource;
  v8->_dataSource = v6;
  v12 = v6;

  currentResidentSelectionMode = v8->_currentResidentSelectionMode;
  v8->_currentResidentSelectionMode = 0;

  v8->_currentModeType = 0;
  residentSelectionInfoFromWorkingStore = v8->_residentSelectionInfoFromWorkingStore;
  v8->_residentSelectionInfoFromWorkingStore = 0;

  return v8;
}

- (HMDResidentSelectionManager)initWithContext:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(HMDResidentSelectionManagerDefaultDataSource);
  v6 = [(HMDResidentSelectionManager *)self initWithContext:v4 dataSource:v5];

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t34 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t34, &__block_literal_global_146515);
  }

  v3 = logCategory__hmf_once_v35;

  return v3;
}

void __42__HMDResidentSelectionManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v35;
  logCategory__hmf_once_v35 = v1;
}

@end
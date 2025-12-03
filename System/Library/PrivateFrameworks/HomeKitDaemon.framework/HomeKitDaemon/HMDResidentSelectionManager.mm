@interface HMDResidentSelectionManager
+ (id)logCategory;
- (BOOL)allowExternalUpdateOfPrimaryResidentTo:(id)to selectionTimestamp:(id)timestamp;
- (BOOL)devicesInHomeSupportResidentSelection;
- (BOOL)residentIsLocallyReachable:(id)reachable;
- (BOOL)residentIsPresentInCurrentAccount:(id)account;
- (BOOL)weAreTheOnlyActingResident;
- (HMDIDSServerBag)idsServerBag;
- (HMDPreferredResidentsList)localPreferredResidentsList;
- (HMDResidentDeviceManagerContext)context;
- (HMDResidentSelectionManager)initWithContext:(id)context;
- (HMDResidentSelectionManager)initWithContext:(id)context dataSource:(id)source;
- (HMDResidentSelectionManagerDelegate)delegate;
- (NSUUID)messageTargetUUID;
- (double)preferredResidentEvaluationDelay;
- (id)_idsIdentifierForResidentDeviceWithIdentifier:(id)identifier;
- (id)createResidentSelectionModeWithType:(unint64_t)type;
- (id)dumpState;
- (id)locallyReachableResidents;
- (id)logIdentifier;
- (id)minimumHomeKitVersionForResidentSelection;
- (id)notificationCenter;
- (id)residentWithIdentifier:(id)identifier;
- (id)residentsNotPresentInPreferredResidentsList:(id)list;
- (id)shortDescription;
- (unint64_t)primaryChangedReason;
- (void)_handleModeChangeWithPreviousMode:(unint64_t)mode;
- (void)_processSelectedAsPreferredMessage:(id)message;
- (void)_registerForMessages;
- (void)_removeScheduledAutoModeEvaluation;
- (void)_scheduleAutoModeEvaluationWithRetryNeeded:(BOOL)needed;
- (void)currentDeviceReadyAsAResident;
- (void)didRemoveResidentsFromHome:(id)home;
- (void)didUpdateResidentSelectionModelTo:(id)to;
- (void)didUpdateResidentSelectionVersion;
- (void)didUpdateResidentStatus:(id)status residentsFound:(id)found residentsLost:(id)lost;
- (void)evaluateSelectionMode;
- (void)handleSelectedAsPreferredMessage:(id)message;
- (void)makeSureCurrentModeIsOfType:(unint64_t)type;
- (void)primaryResidentChanged:(id)changed previousResidentDevice:(id)device;
- (void)primarySelectionMode:(id)mode didFailToSelectWithError:(id)error;
- (void)primarySelectionMode:(id)mode didReceivePrimaryResidentIdsIdentifier:(id)identifier selectionTimestamp:(id)timestamp;
- (void)primarySelectionMode:(id)mode didSelectPrimaryResident:(id)resident selectionInfo:(id)info selectionLogEvent:(id)event completion:(id)completion;
- (void)primarySelectionMode:(id)mode didUpdateActiveNodes:(id)nodes;
- (void)primarySelectionMode:(id)mode didUpdatePreferredResidentsList:(id)list;
- (void)primarySelectionMode:(id)mode didUpdateResidentDevice:(id)device;
- (void)primarySelectionMode:(id)mode didUpdateResidentSelectionInfo:(id)info completion:(id)completion;
- (void)primarySelectionMode:(id)mode reassertAsCurrentPrimaryWithSelectionTimestamp:(id)timestamp;
- (void)primarySelectionModeReadyAsResident:(id)resident;
- (void)start;
- (void)stop;
- (void)triggerAutoModeEvaluationWithCompletion:(id)completion;
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
  messageTargetUUID = [(HMDResidentSelectionManager *)self messageTargetUUID];
  v4 = [v2 stringWithFormat:@"%@", messageTargetUUID];

  return v4;
}

- (id)logIdentifier
{
  context = [(HMDResidentSelectionManager *)self context];
  home = [context home];
  uuid = [home uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (NSUUID)messageTargetUUID
{
  context = [(HMDResidentSelectionManager *)self context];
  home = [context home];
  uuid = [home uuid];

  return uuid;
}

- (HMDIDSServerBag)idsServerBag
{
  dataSource = [(HMDResidentSelectionManager *)self dataSource];
  context = [(HMDResidentSelectionManager *)self context];
  home = [context home];
  v6 = [dataSource idsServerBagForHome:home];

  return v6;
}

- (id)minimumHomeKitVersionForResidentSelection
{
  idsServerBag = [(HMDResidentSelectionManager *)self idsServerBag];
  residentSelectionMinHomeKitVersion = [idsServerBag residentSelectionMinHomeKitVersion];

  if (residentSelectionMinHomeKitVersion)
  {
    minimumHomeKitVersionForResidentSelection = residentSelectionMinHomeKitVersion;
  }

  else
  {
    dataSource = [(HMDResidentSelectionManager *)self dataSource];
    minimumHomeKitVersionForResidentSelection = [dataSource minimumHomeKitVersionForResidentSelection];
  }

  return minimumHomeKitVersionForResidentSelection;
}

- (void)primarySelectionMode:(id)mode didUpdatePreferredResidentsList:(id)list
{
  listCopy = list;
  delegate = [(HMDResidentSelectionManager *)self delegate];
  [delegate residentSelectionManager:self didUpdatePreferredResidentsList:listCopy];
}

- (void)primarySelectionMode:(id)mode didUpdateResidentSelectionInfo:(id)info completion:(id)completion
{
  completionCopy = completion;
  infoCopy = info;
  delegate = [(HMDResidentSelectionManager *)self delegate];
  [delegate residentSelectionManager:self didUpdateResidentSelectionInfo:infoCopy completion:completionCopy];
}

- (void)primarySelectionMode:(id)mode didReceivePrimaryResidentIdsIdentifier:(id)identifier selectionTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  identifierCopy = identifier;
  delegate = [(HMDResidentSelectionManager *)self delegate];
  [delegate residentSelectionManager:self didReceivePrimaryResidentIdsIdentifier:identifierCopy selectionTimestamp:timestampCopy];
}

- (void)primarySelectionModeReadyAsResident:(id)resident
{
  delegate = [(HMDResidentSelectionManager *)self delegate];
  [delegate residentSelectionManagerReadyAsResident:self];
}

- (void)primarySelectionMode:(id)mode reassertAsCurrentPrimaryWithSelectionTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  delegate = [(HMDResidentSelectionManager *)self delegate];
  [delegate residentSelectionManager:self reassertAsTheCurrentPrimaryWithSelectionTimestamp:timestampCopy];
}

- (void)primarySelectionMode:(id)mode didUpdateResidentDevice:(id)device
{
  deviceCopy = device;
  delegate = [(HMDResidentSelectionManager *)self delegate];
  [delegate residentSelectionManager:self didUpdateResidentDevice:deviceCopy];
}

- (void)primarySelectionMode:(id)mode didUpdateActiveNodes:(id)nodes
{
  nodesCopy = nodes;
  delegate = [(HMDResidentSelectionManager *)self delegate];
  [delegate residentSelectionManager:self didUpdateActiveNodes:nodesCopy];
}

- (void)primarySelectionMode:(id)mode didFailToSelectWithError:(id)error
{
  errorCopy = error;
  delegate = [(HMDResidentSelectionManager *)self delegate];
  [delegate residentSelectionManager:self didFailToSelectWithError:errorCopy];
}

- (void)primarySelectionMode:(id)mode didSelectPrimaryResident:(id)resident selectionInfo:(id)info selectionLogEvent:(id)event completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  residentCopy = resident;
  infoCopy = info;
  eventCopy = event;
  completionCopy = completion;
  delegate = [(HMDResidentSelectionManager *)self delegate];
  [delegate residentSelectionManager:self didSelectPrimaryResident:residentCopy selectionInfo:infoCopy electionLogEvent:eventCopy completion:completionCopy];

  if ([modeCopy currentModeType] == 1)
  {
    context = [(HMDResidentSelectionManager *)self context];
    currentResidentDevice = [context currentResidentDevice];
    v20 = [residentCopy isEqual:currentResidentDevice];

    if (v20)
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        v26 = 138543362;
        v27 = v24;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@We are the Coordination elected resident. Scheduling an evaluation.", &v26, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      [(HMDResidentSelectionManager *)selfCopy _scheduleAutoModeEvaluationWithRetryNeeded:1];
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (unint64_t)primaryChangedReason
{
  currentResidentSelectionMode = [(HMDResidentSelectionManager *)self currentResidentSelectionMode];
  primaryChangedReason = [currentResidentSelectionMode primaryChangedReason];

  return primaryChangedReason;
}

- (void)didUpdateResidentSelectionModelTo:(id)to
{
  v21 = *MEMORY[0x277D85DE8];
  toCopy = to;
  dispatch_assert_queue_V2(self->_queue);
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v8;
    v19 = 2112;
    v20 = toCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Resident Selection info in the working store updated to: %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDResidentSelectionManager *)selfCopy setResidentSelectionInfoFromWorkingStore:toCopy];
  context = [(HMDResidentSelectionManager *)selfCopy context];
  homeSupportsResidentSelection = [context homeSupportsResidentSelection];

  if (homeSupportsResidentSelection)
  {
    [(HMDResidentSelectionManager *)selfCopy evaluateSelectionMode];
    currentResidentSelectionMode = [(HMDResidentSelectionManager *)selfCopy currentResidentSelectionMode];
    [currentResidentSelectionMode didUpdateResidentSelectionModelTo:toCopy];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
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

- (id)residentWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  context = [(HMDResidentSelectionManager *)self context];
  availableResidentDevices = [context availableResidentDevices];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__HMDResidentSelectionManager_residentWithIdentifier___block_invoke;
  v10[3] = &unk_2786850E0;
  v11 = identifierCopy;
  v7 = identifierCopy;
  v8 = [availableResidentDevices na_firstObjectPassingTest:v10];

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

- (void)_processSelectedAsPreferredMessage:(id)message
{
  v29 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dispatch_assert_queue_V2(self->_queue);
  context = [(HMDResidentSelectionManager *)self context];
  isActingAsResident = [context isActingAsResident];

  if (isActingAsResident)
  {
    messagePayload = [messageCopy messagePayload];
    v8 = [messagePayload hmf_numberForKey:@"primary.selection.mode"];

    if (v8)
    {
      unsignedIntegerValue = [v8 unsignedIntegerValue];
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        remoteSourceDevice = [messageCopy remoteSourceDevice];
        v25 = 138543618;
        v26 = v13;
        v27 = 2112;
        v28 = remoteSourceDevice;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Received preferred primary selection message from: %@", &v25, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      [(HMDResidentSelectionManager *)selfCopy makeSureCurrentModeIsOfType:unsignedIntegerValue];
      currentResidentSelectionMode = [(HMDResidentSelectionManager *)selfCopy currentResidentSelectionMode];
      [currentResidentSelectionMode didReceiveSelectionMessage:messageCopy];
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        v25 = 138543618;
        v26 = v23;
        v27 = 2112;
        v28 = messageCopy;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Selection message did not contain any mode: %@", &v25, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      currentResidentSelectionMode = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
      [messageCopy respondWithError:currentResidentSelectionMode];
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v25 = 138543618;
      v26 = v19;
      v27 = 2112;
      v28 = messageCopy;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Received the selection message: %@ but we are not acting as a resident.", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v8];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)handleSelectedAsPreferredMessage:(id)message
{
  queue = self->_queue;
  messageCopy = message;
  dispatch_assert_queue_V2(queue);
  [(HMDResidentSelectionManager *)self _processSelectedAsPreferredMessage:messageCopy];
}

- (id)_idsIdentifierForResidentDeviceWithIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    context = [(HMDResidentSelectionManager *)self context];
    availableResidentDevices = [context availableResidentDevices];

    idsIdentifier = [availableResidentDevices countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (idsIdentifier)
    {
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != idsIdentifier; i = i + 1)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(availableResidentDevices);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          identifier = [v10 identifier];
          v12 = [identifier isEqual:identifierCopy];

          if (v12)
          {
            device = [v10 device];
            idsIdentifier = [device idsIdentifier];

            goto LABEL_12;
          }
        }

        idsIdentifier = [availableResidentDevices countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (idsIdentifier)
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
    idsIdentifier = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return idsIdentifier;
}

- (BOOL)residentIsPresentInCurrentAccount:(id)account
{
  accountCopy = account;
  context = [(HMDResidentSelectionManager *)self context];
  appleAccountManager = [context appleAccountManager];
  account = [appleAccountManager account];

  device = [accountCopy device];

  identifier = [device identifier];
  v10 = [account deviceForIdentifier:identifier];

  return v10 != 0;
}

- (BOOL)devicesInHomeSupportResidentSelection
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v54 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Evaluating if devices in home are ready to support Resident Selection", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  context = [(HMDResidentSelectionManager *)selfCopy context];
  availableResidentDevices = [context availableResidentDevices];
  v9 = [availableResidentDevices count];

  if (v9)
  {
    minimumHomeKitVersionForResidentSelection = [(HMDResidentSelectionManager *)selfCopy minimumHomeKitVersionForResidentSelection];
    v10 = objc_autoreleasePoolPush();
    v11 = selfCopy;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v54 = v13;
      v55 = 2112;
      v56 = minimumHomeKitVersionForResidentSelection;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Minimum version for support evaluation is %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v44 = context;
    obj = [context availableResidentDevices];
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
          device = [v18 device];
          version = [device version];

          if ([(HMDResidentSelectionManager *)v11 residentIsPresentInCurrentAccount:v18])
          {
            if ([version isAtLeastVersion:minimumHomeKitVersionForResidentSelection])
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
    context = v44;
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
    v32 = selfCopy;
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
  backgroundScheduler = [(HMDResidentSelectionManager *)self backgroundScheduler];
  [backgroundScheduler invalidate];

  [(HMDResidentSelectionManager *)self setBackgroundScheduler:0];
}

- (void)_scheduleAutoModeEvaluationWithRetryNeeded:(BOOL)needed
{
  neededCopy = needed;
  v25 = *MEMORY[0x277D85DE8];
  backgroundScheduler = [(HMDResidentSelectionManager *)self backgroundScheduler];

  if (!backgroundScheduler)
  {
    dataSource = [(HMDResidentSelectionManager *)self dataSource];
    autoModeEvaluationScheduler = [dataSource autoModeEvaluationScheduler];
    [(HMDResidentSelectionManager *)self setBackgroundScheduler:autoModeEvaluationScheduler];

    backgroundScheduler2 = [(HMDResidentSelectionManager *)self backgroundScheduler];
    [backgroundScheduler2 setQualityOfService:17];

    [(HMDResidentSelectionManager *)self preferredResidentEvaluationDelay];
    v10 = v9;
    backgroundScheduler3 = [(HMDResidentSelectionManager *)self backgroundScheduler];
    [backgroundScheduler3 setInterval:v10];

    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
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
    if (neededCopy)
    {
      backgroundScheduler4 = [(HMDResidentSelectionManager *)selfCopy backgroundScheduler];
      [backgroundScheduler4 setRepeats:1];
    }

    objc_initWeak(buf, selfCopy);
    backgroundScheduler5 = [(HMDResidentSelectionManager *)selfCopy backgroundScheduler];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __74__HMDResidentSelectionManager__scheduleAutoModeEvaluationWithRetryNeeded___block_invoke;
    v19[3] = &unk_27867B450;
    objc_copyWeak(&v20, buf);
    [backgroundScheduler5 scheduleWithBlock:v19];

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

- (void)triggerAutoModeEvaluationWithCompletion:(id)completion
{
  completionCopy = completion;
  if (-[HMDResidentSelectionManager devicesInHomeSupportResidentSelection](self, "devicesInHomeSupportResidentSelection") || (-[HMDResidentSelectionManager context](self, "context"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 homeSupportsResidentSelection], v5, (v6 & 1) != 0))
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __71__HMDResidentSelectionManager_triggerAutoModeEvaluationWithCompletion___block_invoke;
    v8[3] = &unk_27867B428;
    v9 = completionCopy;
    [(HMDResidentSelectionManager *)self performSelectionInMode:3 preferredPrimaryResident:0 requireAutoUpdate:0 reason:7 completion:v8];
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    (*(completionCopy + 2))(completionCopy, 0, v7);
  }
}

- (id)createResidentSelectionModeWithType:(unint64_t)type
{
  dataSource = [(HMDResidentSelectionManager *)self dataSource];
  context = [(HMDResidentSelectionManager *)self context];
  v7 = [dataSource createResidentSelectionModeWithType:type context:context];

  return v7;
}

- (void)_handleModeChangeWithPreviousMode:(unint64_t)mode
{
  v24 = *MEMORY[0x277D85DE8];
  context = [(HMDResidentSelectionManager *)self context];
  isActingAsResident = [context isActingAsResident];

  if (isActingAsResident)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      if (mode - 1 > 2)
      {
        v11 = @"unknown";
      }

      else
      {
        v11 = off_2786841A8[mode - 1];
      }

      v12 = v11;
      currentModeType = [(HMDResidentSelectionManager *)selfCopy currentModeType];
      if ((currentModeType - 1) > 2)
      {
        v14 = @"unknown";
      }

      else
      {
        v14 = off_2786841A8[currentModeType - 1];
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
    currentResidentSelectionMode = [(HMDResidentSelectionManager *)selfCopy currentResidentSelectionMode];
    [currentResidentSelectionMode configureAsAResidentWithRunPrimaryEvaluation:0];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)makeSureCurrentModeIsOfType:(unint64_t)type
{
  v28 = *MEMORY[0x277D85DE8];
  currentResidentSelectionMode = [(HMDResidentSelectionManager *)self currentResidentSelectionMode];
  currentModeType = [currentResidentSelectionMode currentModeType];

  if (currentModeType != type)
  {
    currentResidentSelectionMode2 = [(HMDResidentSelectionManager *)self currentResidentSelectionMode];
    currentModeType2 = [currentResidentSelectionMode2 currentModeType];

    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      if ((currentModeType2 - 1) > 2)
      {
        v13 = @"unknown";
      }

      else
      {
        v13 = off_2786841A8[currentModeType2 - 1];
      }

      v14 = v13;
      if (type - 1 > 2)
      {
        v15 = @"unknown";
      }

      else
      {
        v15 = off_2786841A8[type - 1];
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
    currentResidentSelectionMode3 = [(HMDResidentSelectionManager *)selfCopy currentResidentSelectionMode];
    [currentResidentSelectionMode3 stop];

    v18 = [(HMDResidentSelectionManager *)selfCopy createResidentSelectionModeWithType:type];
    [(HMDResidentSelectionManager *)selfCopy setCurrentResidentSelectionMode:v18];

    currentResidentSelectionMode4 = [(HMDResidentSelectionManager *)selfCopy currentResidentSelectionMode];
    [currentResidentSelectionMode4 setDelegate:selfCopy];

    [(HMDResidentSelectionManager *)selfCopy setCurrentModeType:type];
    currentResidentSelectionMode5 = [(HMDResidentSelectionManager *)selfCopy currentResidentSelectionMode];
    [currentResidentSelectionMode5 start];

    [(HMDResidentSelectionManager *)selfCopy _handleModeChangeWithPreviousMode:currentModeType2];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)weAreTheOnlyActingResident
{
  context = [(HMDResidentSelectionManager *)self context];
  residentStatusChannel = [context residentStatusChannel];
  isConnected = [residentStatusChannel isConnected];

  if (isConnected)
  {
    currentResidentDevice = [context currentResidentDevice];
    device = [currentResidentDevice device];
    idsIdentifier = [device idsIdentifier];

    residentsPresentOnStatusKit = [context residentsPresentOnStatusKit];
    if ([residentsPresentOnStatusKit count])
    {
      residentsPresentOnStatusKit2 = [context residentsPresentOnStatusKit];
      if ([residentsPresentOnStatusKit2 count] == 1)
      {
        residentsPresentOnStatusKit3 = [context residentsPresentOnStatusKit];
        v11 = [residentsPresentOnStatusKit3 objectAtIndexedSubscript:0];
        v12 = [v11 isEqual:idsIdentifier];
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

  if ([context isCurrentDeviceAvailableResident])
  {
    availableResidentDevices = [context availableResidentDevices];
    if ([availableResidentDevices count] == 1)
    {
      isActingAsResident = [context isActingAsResident];
    }

    else
    {
      isActingAsResident = 0;
    }
  }

  else
  {
    isActingAsResident = 0;
  }

  return v12 & isActingAsResident;
}

- (void)evaluateSelectionMode
{
  v20 = *MEMORY[0x277D85DE8];
  context = [(HMDResidentSelectionManager *)self context];
  if ([(HMDResidentSelectionManager *)self weAreTheOnlyActingResident]&& ![(HMDResidentSelectionManager *)self weAreInResidentSelection])
  {
    v6 = 3;
  }

  else if ([context homeSupportsResidentSelection])
  {
    residentSelectionInfoFromWorkingStore = [(HMDResidentSelectionManager *)self residentSelectionInfoFromWorkingStore];
    currentModeType = [residentSelectionInfoFromWorkingStore currentModeType];

    if (currentModeType == 2)
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

  residentSelectionInfo = [context residentSelectionInfo];
  v8 = [residentSelectionInfo currentModeType] == 3 || objc_msgSend(residentSelectionInfo, "currentModeType") == 2;
  homeSupportsResidentSelection = [context homeSupportsResidentSelection];
  if (![(HMDResidentSelectionManager *)self weAreTheOnlyActingResident]|| (homeSupportsResidentSelection & v8 & 1) != 0)
  {
    [(HMDResidentSelectionManager *)self makeSureCurrentModeIsOfType:v6];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = residentSelectionInfo;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@We are the only resident in the home and we are not in RS. Starting an Auto mode evaluation. Resident Selection info from the working store: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __52__HMDResidentSelectionManager_evaluateSelectionMode__block_invoke;
    v15[3] = &unk_2786899A0;
    v15[4] = selfCopy;
    [(HMDResidentSelectionManager *)selfCopy triggerAutoModeEvaluationWithCompletion:v15];
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
  idsServerBag = [(HMDResidentSelectionManager *)self idsServerBag];
  residentSelectionPreferredResidentEvaluationDelay = [idsServerBag residentSelectionPreferredResidentEvaluationDelay];

  if (residentSelectionPreferredResidentEvaluationDelay)
  {
    [residentSelectionPreferredResidentEvaluationDelay doubleValue];
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
  dataSource = [(HMDResidentSelectionManager *)self dataSource];
  notificationCenter = [dataSource notificationCenter];

  return notificationCenter;
}

- (void)_registerForMessages
{
  v11[2] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  context = [(HMDResidentSelectionManager *)self context];
  messageDispatcher = [context messageDispatcher];
  home = [context home];
  v6 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
  [v6 setRoles:{objc_msgSend(v6, "roles") | 4}];
  v7 = [v6 copy];
  v8 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:4 remoteAccessRequired:0];
  v11[0] = v7;
  v11[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  [messageDispatcher registerForMessage:@"residentSelection.preferred" receiver:self policies:v9 selector:sel_handleSelectedAsPreferredMessage_];

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)allowExternalUpdateOfPrimaryResidentTo:(id)to selectionTimestamp:(id)timestamp
{
  v26 = *MEMORY[0x277D85DE8];
  toCopy = to;
  timestampCopy = timestamp;
  currentResidentSelectionMode = [(HMDResidentSelectionManager *)self currentResidentSelectionMode];

  if (currentResidentSelectionMode)
  {
    currentResidentSelectionMode2 = [(HMDResidentSelectionManager *)self currentResidentSelectionMode];
    v10 = [currentResidentSelectionMode2 allowExternalUpdateOfPrimaryResidentTo:toCopy selectionTimestamp:timestampCopy];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      currentModeType = [(HMDResidentSelectionManager *)selfCopy currentModeType];
      if ((currentModeType - 1) > 2)
      {
        v16 = @"unknown";
      }

      else
      {
        v16 = off_2786841A8[currentModeType - 1];
      }

      v17 = v16;
      v20 = 138543874;
      v21 = v14;
      v22 = 2112;
      v23 = toCopy;
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

- (id)residentsNotPresentInPreferredResidentsList:(id)list
{
  listCopy = list;
  currentResidentSelectionMode = [(HMDResidentSelectionManager *)self currentResidentSelectionMode];
  residentIDSIdentifiers = [listCopy residentIDSIdentifiers];

  v7 = [currentResidentSelectionMode residentsNotPresentInPreferredResidentsList:residentIDSIdentifiers];

  return v7;
}

- (BOOL)residentIsLocallyReachable:(id)reachable
{
  reachableCopy = reachable;
  currentResidentSelectionMode = [(HMDResidentSelectionManager *)self currentResidentSelectionMode];
  v6 = [currentResidentSelectionMode residentIsLocallyReachable:reachableCopy];

  return v6;
}

- (id)locallyReachableResidents
{
  currentResidentSelectionMode = [(HMDResidentSelectionManager *)self currentResidentSelectionMode];
  locallyReachableResidents = [currentResidentSelectionMode locallyReachableResidents];

  return locallyReachableResidents;
}

- (id)dumpState
{
  currentResidentSelectionMode = [(HMDResidentSelectionManager *)self currentResidentSelectionMode];
  dumpState = [currentResidentSelectionMode dumpState];

  return dumpState;
}

- (void)primaryResidentChanged:(id)changed previousResidentDevice:(id)device
{
  v16 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  deviceCopy = device;
  if ([changedCopy isCurrentDevice] && !-[HMDResidentSelectionManager weAreInResidentSelection](self, "weAreInResidentSelection"))
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@We are the new primary and the home is in REv2. Scheduling an Auto mode evaluation.", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    [(HMDResidentSelectionManager *)selfCopy _scheduleAutoModeEvaluationWithRetryNeeded:1];
  }

  else if (([changedCopy isCurrentDevice] & 1) == 0)
  {
    [(HMDResidentSelectionManager *)self _removeScheduledAutoModeEvaluation];
  }

  currentResidentSelectionMode = [(HMDResidentSelectionManager *)self currentResidentSelectionMode];
  [currentResidentSelectionMode primaryResidentChanged:changedCopy previousResidentDevice:deviceCopy];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)didUpdateResidentStatus:(id)status residentsFound:(id)found residentsLost:(id)lost
{
  lostCopy = lost;
  foundCopy = found;
  statusCopy = status;
  currentResidentSelectionMode = [(HMDResidentSelectionManager *)self currentResidentSelectionMode];
  [currentResidentSelectionMode didUpdateResidentStatus:statusCopy residentsFound:foundCopy residentsLost:lostCopy];
}

- (void)didUpdateResidentSelectionVersion
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    context = [(HMDResidentSelectionManager *)selfCopy context];
    v9 = 138543618;
    v10 = v6;
    v11 = 1024;
    homeSupportsResidentSelection = [context homeSupportsResidentSelection];
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Home's resident selection version updated. Home supports Resident Selection: %d.", &v9, 0x12u);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDResidentSelectionManager *)selfCopy evaluateSelectionMode];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)didRemoveResidentsFromHome:(id)home
{
  v21 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  context = [(HMDResidentSelectionManager *)self context];
  primaryResidentDevice = [context primaryResidentDevice];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v18 = v10;
    v19 = 2112;
    v20 = homeCopy;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Residents: %@ are removed from the home.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  if (!-[HMDResidentSelectionManager weAreInResidentSelection](selfCopy, "weAreInResidentSelection") && [primaryResidentDevice isCurrentDevice])
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
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
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    currentModeType = [(HMDResidentSelectionManager *)selfCopy currentModeType];
    if ((currentModeType - 1) > 2)
    {
      v8 = @"unknown";
    }

    else
    {
      v8 = off_2786841A8[currentModeType - 1];
    }

    v9 = v8;
    v12 = 138543618;
    v13 = v6;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Notified that current device is ready as a resident. Current Mode: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDResidentSelectionManager *)selfCopy _registerForMessages];
  [(HMDResidentSelectionManager *)selfCopy evaluateSelectionMode];
  currentResidentSelectionMode = [(HMDResidentSelectionManager *)selfCopy currentResidentSelectionMode];
  [currentResidentSelectionMode currentDeviceReadyAsAResident];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  currentResidentSelectionMode = [(HMDResidentSelectionManager *)self currentResidentSelectionMode];
  [currentResidentSelectionMode stop];

  context = [(HMDResidentSelectionManager *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher deregisterReceiver:self];
}

- (void)start
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting.", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDResidentSelectionManager *)selfCopy evaluateSelectionMode];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDPreferredResidentsList)localPreferredResidentsList
{
  currentResidentSelectionMode = [(HMDResidentSelectionManager *)self currentResidentSelectionMode];
  localPreferredResidentsList = [currentResidentSelectionMode localPreferredResidentsList];

  return localPreferredResidentsList;
}

- (HMDResidentSelectionManager)initWithContext:(id)context dataSource:(id)source
{
  sourceCopy = source;
  v16.receiver = self;
  v16.super_class = HMDResidentSelectionManager;
  contextCopy = context;
  v8 = [(HMDResidentSelectionManager *)&v16 init];
  objc_storeWeak(&v8->_context, contextCopy);
  queue = [contextCopy queue];

  queue = v8->_queue;
  v8->_queue = queue;

  dataSource = v8->_dataSource;
  v8->_dataSource = sourceCopy;
  v12 = sourceCopy;

  currentResidentSelectionMode = v8->_currentResidentSelectionMode;
  v8->_currentResidentSelectionMode = 0;

  v8->_currentModeType = 0;
  residentSelectionInfoFromWorkingStore = v8->_residentSelectionInfoFromWorkingStore;
  v8->_residentSelectionInfoFromWorkingStore = 0;

  return v8;
}

- (HMDResidentSelectionManager)initWithContext:(id)context
{
  contextCopy = context;
  v5 = objc_alloc_init(HMDResidentSelectionManagerDefaultDataSource);
  v6 = [(HMDResidentSelectionManager *)self initWithContext:contextCopy dataSource:v5];

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
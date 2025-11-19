@interface HMDResidentSelectionCoordinationElection
- (BOOL)allowExternalUpdateOfPrimaryResidentTo:(id)a3 selectionTimestamp:(id)a4;
- (BOOL)residentIsLocallyReachable:(id)a3;
- (HMDResidentDeviceManagerContext)context;
- (HMDResidentSelectionCoordinationElection)initWithContext:(id)a3;
- (HMDResidentSelectionModeDelegate)delegate;
- (NSSet)locallyReachableResidents;
- (id)_residentDeviceWithIdentifier:(id)a3;
- (id)createElectionAddOnWithContext:(id)a3;
- (id)dumpState;
- (id)residentsNotPresentInPreferredResidentsList:(id)a3;
- (id)sortedResidents;
- (void)configureAsAResidentWithRunPrimaryEvaluation:(BOOL)a3;
- (void)currentDeviceReadyAsAResident;
- (void)didReceiveSelectionMessage:(id)a3;
- (void)didUpdateResidentSelectionModelTo:(id)a3;
- (void)didUpdateResidentStatus:(id)a3 residentsFound:(id)a4 residentsLost:(id)a5;
- (void)performSelectionWithPreferredPrimaryResident:(id)a3 requireAutoUpdate:(BOOL)a4 reason:(unint64_t)a5 completion:(id)a6;
- (void)primaryElectionAddOn:(id)a3 didElectPrimaryResident:(id)a4 confirmed:(BOOL)a5 electionLogEvent:(id)a6;
- (void)primaryElectionAddOn:(id)a3 didFailToElectWithError:(id)a4;
- (void)primaryElectionAddOn:(id)a3 didReceivePrimaryResidentUUIDFromLeader:(id)a4;
- (void)primaryElectionAddOn:(id)a3 didUpdateActiveNodes:(id)a4;
- (void)primaryElectionAddOn:(id)a3 didUpdateResidentDevice:(id)a4;
- (void)primaryResidentChanged:(id)a3 previousResidentDevice:(id)a4;
- (void)registerForMessages;
- (void)start;
- (void)stop;
@end

@implementation HMDResidentSelectionCoordinationElection

- (HMDResidentDeviceManagerContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (HMDResidentSelectionModeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)primaryElectionAddOn:(id)a3 didUpdateResidentDevice:(id)a4
{
  v5 = a4;
  v6 = [(HMDResidentSelectionCoordinationElection *)self delegate];
  [v6 primarySelectionMode:self didUpdateResidentDevice:v5];
}

- (void)primaryElectionAddOn:(id)a3 didUpdateActiveNodes:(id)a4
{
  v5 = a4;
  v6 = [(HMDResidentSelectionCoordinationElection *)self delegate];
  [v6 primarySelectionMode:self didUpdateActiveNodes:v5];
}

- (void)primaryElectionAddOn:(id)a3 didReceivePrimaryResidentUUIDFromLeader:(id)a4
{
  v8 = [(HMDResidentSelectionCoordinationElection *)self _residentDeviceWithIdentifier:a4];
  v5 = [(HMDResidentSelectionCoordinationElection *)self delegate];
  v6 = [v8 device];
  v7 = [v6 idsIdentifier];
  [v5 primarySelectionMode:self didReceivePrimaryResidentIdsIdentifier:v7 selectionTimestamp:0];
}

- (void)primaryElectionAddOn:(id)a3 didFailToElectWithError:(id)a4
{
  v5 = a4;
  v6 = [(HMDResidentSelectionCoordinationElection *)self delegate];
  [v6 primarySelectionMode:self didFailToSelectWithError:v5];
}

- (void)primaryElectionAddOn:(id)a3 didElectPrimaryResident:(id)a4 confirmed:(BOOL)a5 electionLogEvent:(id)a6
{
  v8 = a6;
  v9 = a4;
  v10 = [(HMDResidentSelectionCoordinationElection *)self delegate];
  [v10 primarySelectionMode:self didSelectPrimaryResident:v9 selectionInfo:0 selectionLogEvent:v8 completion:0];
}

- (id)_residentDeviceWithIdentifier:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(HMDResidentSelectionCoordinationElection *)self context];
  v6 = [v5 availableResidentDevices];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 identifier];
        v12 = [v11 isEqual:v4];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)sortedResidents
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v8 = NSStringFromSelector(a2);
    v11 = 138543618;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Method %@ not relevant in REv2", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)didUpdateResidentStatus:(id)a3 residentsFound:(id)a4 residentsLost:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = HMFGetLogIdentifier();
    v16 = NSStringFromSelector(a2);
    v18 = 138543618;
    v19 = v15;
    v20 = 2112;
    v21 = v16;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Method %@ not relevant in REv2", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  v17 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveSelectionMessage:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v10 = NSStringFromSelector(a2);
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Method %@ not relevant in REv2", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)configureAsAResidentWithRunPrimaryEvaluation:(BOOL)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = NSStringFromSelector(a2);
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Method %@ not relevant in REv2", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)currentDeviceReadyAsAResident
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v8 = NSStringFromSelector(a2);
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Method %@ not relevant in REv2", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)didUpdateResidentSelectionModelTo:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v10 = NSStringFromSelector(a2);
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Method %@ not relevant in REv2", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)performSelectionWithPreferredPrimaryResident:(id)a3 requireAutoUpdate:(BOOL)a4 reason:(unint64_t)a5 completion:(id)a6
{
  v21 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a6;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = HMFGetLogIdentifier();
    v15 = NSStringFromSelector(a2);
    v17 = 138543618;
    v18 = v14;
    v19 = 2112;
    v20 = v15;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Method %@ not relevant in REv2", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)allowExternalUpdateOfPrimaryResidentTo:(id)a3 selectionTimestamp:(id)a4
{
  v5 = a3;
  v6 = [(HMDResidentSelectionCoordinationElection *)self coordinationAddOn];
  v7 = [v6 allowExternalUpdateOfPrimaryResidentTo:v5];

  return v7;
}

- (id)dumpState
{
  v2 = [(HMDResidentSelectionCoordinationElection *)self coordinationAddOn];
  v3 = [v2 dumpState];

  return v3;
}

- (id)residentsNotPresentInPreferredResidentsList:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v10 = NSStringFromSelector(a2);
    v13 = 138543618;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Method %@ not relevant in REv2", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)residentIsLocallyReachable:(id)a3
{
  v4 = a3;
  v5 = [(HMDResidentSelectionCoordinationElection *)self coordinationAddOn];
  v6 = [v5 residentIsPartOfTheCurrentMesh:v4];

  return v6;
}

- (void)registerForMessages
{
  v2 = [(HMDResidentSelectionCoordinationElection *)self coordinationAddOn];
  [v2 registerForMessages];
}

- (void)primaryResidentChanged:(id)a3 previousResidentDevice:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDResidentSelectionCoordinationElection *)self coordinationAddOn];
  [v8 primaryResidentChanged:v7 previousResidentDevice:v6];
}

- (NSSet)locallyReachableResidents
{
  v2 = [(HMDResidentSelectionCoordinationElection *)self coordinationAddOn];
  v3 = [v2 residentsInMesh];

  return v3;
}

- (void)stop
{
  v2 = [(HMDResidentSelectionCoordinationElection *)self coordinationAddOn];
  [v2 stop];
}

- (void)start
{
  v3 = [(HMDResidentSelectionCoordinationElection *)self coordinationAddOn];
  [v3 registerForMessages];

  v4 = [(HMDResidentSelectionCoordinationElection *)self coordinationAddOn];
  [v4 start];
}

- (id)createElectionAddOnWithContext:(id)a3
{
  v3 = a3;
  v4 = [[HMDPrimaryElectionCoordinationAddOn alloc] initWithContext:v3];

  return v4;
}

- (HMDResidentSelectionCoordinationElection)initWithContext:(id)a3
{
  v8.receiver = self;
  v8.super_class = HMDResidentSelectionCoordinationElection;
  v3 = a3;
  v4 = [(HMDResidentSelectionCoordinationElection *)&v8 init];
  objc_storeWeak(&v4->_context, v3);
  v5 = [(HMDResidentSelectionCoordinationElection *)v4 createElectionAddOnWithContext:v3, v8.receiver, v8.super_class];

  coordinationAddOn = v4->_coordinationAddOn;
  v4->_coordinationAddOn = v5;

  [(HMDPrimaryElectionCoordinationAddOn *)v4->_coordinationAddOn setDelegate:v4];
  return v4;
}

@end
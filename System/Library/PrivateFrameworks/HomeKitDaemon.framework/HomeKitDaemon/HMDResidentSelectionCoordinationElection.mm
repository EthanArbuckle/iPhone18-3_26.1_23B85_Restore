@interface HMDResidentSelectionCoordinationElection
- (BOOL)allowExternalUpdateOfPrimaryResidentTo:(id)to selectionTimestamp:(id)timestamp;
- (BOOL)residentIsLocallyReachable:(id)reachable;
- (HMDResidentDeviceManagerContext)context;
- (HMDResidentSelectionCoordinationElection)initWithContext:(id)context;
- (HMDResidentSelectionModeDelegate)delegate;
- (NSSet)locallyReachableResidents;
- (id)_residentDeviceWithIdentifier:(id)identifier;
- (id)createElectionAddOnWithContext:(id)context;
- (id)dumpState;
- (id)residentsNotPresentInPreferredResidentsList:(id)list;
- (id)sortedResidents;
- (void)configureAsAResidentWithRunPrimaryEvaluation:(BOOL)evaluation;
- (void)currentDeviceReadyAsAResident;
- (void)didReceiveSelectionMessage:(id)message;
- (void)didUpdateResidentSelectionModelTo:(id)to;
- (void)didUpdateResidentStatus:(id)status residentsFound:(id)found residentsLost:(id)lost;
- (void)performSelectionWithPreferredPrimaryResident:(id)resident requireAutoUpdate:(BOOL)update reason:(unint64_t)reason completion:(id)completion;
- (void)primaryElectionAddOn:(id)on didElectPrimaryResident:(id)resident confirmed:(BOOL)confirmed electionLogEvent:(id)event;
- (void)primaryElectionAddOn:(id)on didFailToElectWithError:(id)error;
- (void)primaryElectionAddOn:(id)on didReceivePrimaryResidentUUIDFromLeader:(id)leader;
- (void)primaryElectionAddOn:(id)on didUpdateActiveNodes:(id)nodes;
- (void)primaryElectionAddOn:(id)on didUpdateResidentDevice:(id)device;
- (void)primaryResidentChanged:(id)changed previousResidentDevice:(id)device;
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

- (void)primaryElectionAddOn:(id)on didUpdateResidentDevice:(id)device
{
  deviceCopy = device;
  delegate = [(HMDResidentSelectionCoordinationElection *)self delegate];
  [delegate primarySelectionMode:self didUpdateResidentDevice:deviceCopy];
}

- (void)primaryElectionAddOn:(id)on didUpdateActiveNodes:(id)nodes
{
  nodesCopy = nodes;
  delegate = [(HMDResidentSelectionCoordinationElection *)self delegate];
  [delegate primarySelectionMode:self didUpdateActiveNodes:nodesCopy];
}

- (void)primaryElectionAddOn:(id)on didReceivePrimaryResidentUUIDFromLeader:(id)leader
{
  v8 = [(HMDResidentSelectionCoordinationElection *)self _residentDeviceWithIdentifier:leader];
  delegate = [(HMDResidentSelectionCoordinationElection *)self delegate];
  device = [v8 device];
  idsIdentifier = [device idsIdentifier];
  [delegate primarySelectionMode:self didReceivePrimaryResidentIdsIdentifier:idsIdentifier selectionTimestamp:0];
}

- (void)primaryElectionAddOn:(id)on didFailToElectWithError:(id)error
{
  errorCopy = error;
  delegate = [(HMDResidentSelectionCoordinationElection *)self delegate];
  [delegate primarySelectionMode:self didFailToSelectWithError:errorCopy];
}

- (void)primaryElectionAddOn:(id)on didElectPrimaryResident:(id)resident confirmed:(BOOL)confirmed electionLogEvent:(id)event
{
  eventCopy = event;
  residentCopy = resident;
  delegate = [(HMDResidentSelectionCoordinationElection *)self delegate];
  [delegate primarySelectionMode:self didSelectPrimaryResident:residentCopy selectionInfo:0 selectionLogEvent:eventCopy completion:0];
}

- (id)_residentDeviceWithIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  context = [(HMDResidentSelectionCoordinationElection *)self context];
  availableResidentDevices = [context availableResidentDevices];

  v7 = [availableResidentDevices countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(availableResidentDevices);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        identifier = [v10 identifier];
        v12 = [identifier isEqual:identifierCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [availableResidentDevices countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  selfCopy = self;
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

- (void)didUpdateResidentStatus:(id)status residentsFound:(id)found residentsLost:(id)lost
{
  v22 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  foundCopy = found;
  lostCopy = lost;
  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
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

- (void)didReceiveSelectionMessage:(id)message
{
  v16 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
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

- (void)configureAsAResidentWithRunPrimaryEvaluation:(BOOL)evaluation
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
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
  selfCopy = self;
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

- (void)didUpdateResidentSelectionModelTo:(id)to
{
  v16 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
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

- (void)performSelectionWithPreferredPrimaryResident:(id)resident requireAutoUpdate:(BOOL)update reason:(unint64_t)reason completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  residentCopy = resident;
  completionCopy = completion;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
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

- (BOOL)allowExternalUpdateOfPrimaryResidentTo:(id)to selectionTimestamp:(id)timestamp
{
  toCopy = to;
  coordinationAddOn = [(HMDResidentSelectionCoordinationElection *)self coordinationAddOn];
  v7 = [coordinationAddOn allowExternalUpdateOfPrimaryResidentTo:toCopy];

  return v7;
}

- (id)dumpState
{
  coordinationAddOn = [(HMDResidentSelectionCoordinationElection *)self coordinationAddOn];
  dumpState = [coordinationAddOn dumpState];

  return dumpState;
}

- (id)residentsNotPresentInPreferredResidentsList:(id)list
{
  v17 = *MEMORY[0x277D85DE8];
  listCopy = list;
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
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

- (BOOL)residentIsLocallyReachable:(id)reachable
{
  reachableCopy = reachable;
  coordinationAddOn = [(HMDResidentSelectionCoordinationElection *)self coordinationAddOn];
  v6 = [coordinationAddOn residentIsPartOfTheCurrentMesh:reachableCopy];

  return v6;
}

- (void)registerForMessages
{
  coordinationAddOn = [(HMDResidentSelectionCoordinationElection *)self coordinationAddOn];
  [coordinationAddOn registerForMessages];
}

- (void)primaryResidentChanged:(id)changed previousResidentDevice:(id)device
{
  deviceCopy = device;
  changedCopy = changed;
  coordinationAddOn = [(HMDResidentSelectionCoordinationElection *)self coordinationAddOn];
  [coordinationAddOn primaryResidentChanged:changedCopy previousResidentDevice:deviceCopy];
}

- (NSSet)locallyReachableResidents
{
  coordinationAddOn = [(HMDResidentSelectionCoordinationElection *)self coordinationAddOn];
  residentsInMesh = [coordinationAddOn residentsInMesh];

  return residentsInMesh;
}

- (void)stop
{
  coordinationAddOn = [(HMDResidentSelectionCoordinationElection *)self coordinationAddOn];
  [coordinationAddOn stop];
}

- (void)start
{
  coordinationAddOn = [(HMDResidentSelectionCoordinationElection *)self coordinationAddOn];
  [coordinationAddOn registerForMessages];

  coordinationAddOn2 = [(HMDResidentSelectionCoordinationElection *)self coordinationAddOn];
  [coordinationAddOn2 start];
}

- (id)createElectionAddOnWithContext:(id)context
{
  contextCopy = context;
  v4 = [[HMDPrimaryElectionCoordinationAddOn alloc] initWithContext:contextCopy];

  return v4;
}

- (HMDResidentSelectionCoordinationElection)initWithContext:(id)context
{
  v8.receiver = self;
  v8.super_class = HMDResidentSelectionCoordinationElection;
  contextCopy = context;
  v4 = [(HMDResidentSelectionCoordinationElection *)&v8 init];
  objc_storeWeak(&v4->_context, contextCopy);
  v5 = [(HMDResidentSelectionCoordinationElection *)v4 createElectionAddOnWithContext:contextCopy, v8.receiver, v8.super_class];

  coordinationAddOn = v4->_coordinationAddOn;
  v4->_coordinationAddOn = v5;

  [(HMDPrimaryElectionCoordinationAddOn *)v4->_coordinationAddOn setDelegate:v4];
  return v4;
}

@end
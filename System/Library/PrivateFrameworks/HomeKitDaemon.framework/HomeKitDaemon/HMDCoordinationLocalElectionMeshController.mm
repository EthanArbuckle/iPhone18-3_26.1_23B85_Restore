@interface HMDCoordinationLocalElectionMeshController
+ (id)logCategory;
- (BOOL)isLeader;
- (BOOL)isProcessing;
- (HMDCoordinationLocalElectionMeshController)initWithQueue:(id)queue;
- (HMDLocalElectionMeshControllerDelegate)delegate;
- (HMDLocalElectionMeshNode)leaderNode;
- (NSArray)meshNodes;
- (id)debugDescriptionForControllerType;
- (id)debugDescriptionForMeshState;
- (id)logIdentifier;
- (id)meshNodeFor:(id)for;
- (void)_setupMessageRegistrations;
- (void)meshControllerDidElectLeader;
- (void)meshControllerDidStartElection;
- (void)meshControllerDidUpdatesNodes;
- (void)sendPingCommandToLeaderWithCompletion:(id)completion;
- (void)sendPingNotificationToFollowersWithPrimaryResident:(id)resident;
- (void)sendPingRequestToNode:(id)node withCompletion:(id)completion;
- (void)startMeshWithName:(id)name;
- (void)stop;
@end

@implementation HMDCoordinationLocalElectionMeshController

- (HMDLocalElectionMeshControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)meshControllerDidUpdatesNodes
{
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  delegate = [(HMDCoordinationLocalElectionMeshController *)self delegate];
  [delegate meshControllerDidUpdatesNodes:self];
}

- (void)meshControllerDidStartElection
{
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  delegate = [(HMDCoordinationLocalElectionMeshController *)self delegate];
  [delegate meshControllerDidStartElection:self];
}

- (void)meshControllerDidElectLeader
{
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  delegate = [(HMDCoordinationLocalElectionMeshController *)self delegate];
  [delegate meshControllerDidElectLeader:self];
}

- (id)logIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  meshName = [(COMeshController *)self meshName];
  v4 = [v2 stringWithFormat:@"%@", meshName];

  return v4;
}

- (id)debugDescriptionForMeshState
{
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  state = [(COMeshController *)self state];
  if (state >= 5)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown(%d)", -[COMeshController state](self, "state")];
  }

  else
  {
    v5 = off_278683EB0[state];
  }

  return v5;
}

- (id)debugDescriptionForControllerType
{
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v4 = [(COMeshController *)self me];
  type = [v4 type];

  switch(type)
  {
    case 61440:
      v6 = @"LongLived";
      break;
    case 4096:
      v6 = @"Permanent";
      break;
    case -1:
      v6 = @"Ephemeral";
      break;
    default:
      v7 = MEMORY[0x277CCACA8];
      v8 = [(COMeshController *)self me];
      v6 = [v7 stringWithFormat:@"Unknown(%llu)", objc_msgSend(v8, "type")];

      break;
  }

  return v6;
}

- (NSArray)meshNodes
{
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v7.receiver = self;
  v7.super_class = HMDCoordinationLocalElectionMeshController;
  nodes = [(COMeshController *)&v7 nodes];
  v5 = [nodes na_map:&__block_literal_global_22_239449];

  return v5;
}

HMDCoordinationLocalElectionMeshNode *__55__HMDCoordinationLocalElectionMeshController_meshNodes__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HMDCoordinationLocalElectionMeshNode alloc] initWithMeshNode:v2];

  return v3;
}

- (HMDLocalElectionMeshNode)leaderNode
{
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v9.receiver = self;
  v9.super_class = HMDCoordinationLocalElectionMeshController;
  nodes = [(COMeshController *)&v9 nodes];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__HMDCoordinationLocalElectionMeshController_leaderNode__block_invoke;
  v8[3] = &unk_278683E48;
  v8[4] = self;
  v5 = [nodes na_firstObjectPassingTest:v8];

  v6 = [[HMDCoordinationLocalElectionMeshNode alloc] initWithMeshNode:v5];

  return v6;
}

uint64_t __56__HMDCoordinationLocalElectionMeshController_leaderNode__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 leader];
  v5 = [v3 remote];

  v6 = [v4 isEqual:v5];
  return v6;
}

- (BOOL)isProcessing
{
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  return [(COMeshController *)self state]== 3;
}

- (BOOL)isLeader
{
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  leader = [(COMeshController *)self leader];
  v5 = [(COMeshController *)self me];
  v6 = [leader isEqual:v5];

  return v6;
}

- (void)sendPingRequestToNode:(id)node withCompletion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  completionCopy = completion;
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v9 = [(HMDCoordinationLocalElectionMeshController *)self meshNodeFor:nodeCopy];
  if (v9)
  {
    v10 = objc_alloc_init(HMDCoordinationPingRequest);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __83__HMDCoordinationLocalElectionMeshController_sendPingRequestToNode_withCompletion___block_invoke;
    v16[3] = &unk_278683E70;
    v17 = completionCopy;
    [(COMeshController *)self sendRequest:v10 toPeer:v9 withCompletionHandler:v16];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Could not find the destination node to send the ping request", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)meshNodeFor:(id)for
{
  forCopy = for;
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v12.receiver = self;
  v12.super_class = HMDCoordinationLocalElectionMeshController;
  nodes = [(COMeshController *)&v12 nodes];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__HMDCoordinationLocalElectionMeshController_meshNodeFor___block_invoke;
  v10[3] = &unk_278683E48;
  v11 = forCopy;
  v7 = forCopy;
  v8 = [nodes na_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __58__HMDCoordinationLocalElectionMeshController_meshNodeFor___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 idsIdentifier];
  v5 = [v3 IDSIdentifier];

  v6 = [v4 isEqual:v5];
  return v6;
}

- (void)sendPingNotificationToFollowersWithPrimaryResident:(id)resident
{
  residentCopy = resident;
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v6 = [[HMDCoordinationPingNotification alloc] initWithPrimaryResidentUUID:residentCopy];
  [(COMeshController *)self sendNotification:v6];
}

- (void)sendPingCommandToLeaderWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v6 = objc_alloc_init(HMDCoordinationPingCommand);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__HMDCoordinationLocalElectionMeshController_sendPingCommandToLeaderWithCompletion___block_invoke;
  v8[3] = &unk_278683E20;
  v9 = completionCopy;
  v7 = completionCopy;
  [(COMeshController *)self sendCommand:v6 withCompletionHandler:v8];
}

- (void)stop
{
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v4.receiver = self;
  v4.super_class = HMDCoordinationLocalElectionMeshController;
  [(COMeshController *)&v4 stop];
}

- (void)startMeshWithName:(id)name
{
  nameCopy = name;
  dispatchQueue = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  [(COMeshController *)self setMeshName:nameCopy];

  [(COMeshController *)self start];
}

- (void)_setupMessageRegistrations
{
  objc_initWeak(&location, self);
  [(COMeshController *)self registerHandler:&__block_literal_global_239522 forCommandClass:objc_opt_class()];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__HMDCoordinationLocalElectionMeshController__setupMessageRegistrations__block_invoke_2;
  v6[3] = &unk_278683DD0;
  objc_copyWeak(&v7, &location);
  [(COMeshController *)self registerHandler:v6 forNotificationClass:objc_opt_class()];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__HMDCoordinationLocalElectionMeshController__setupMessageRegistrations__block_invoke_3;
  v4[3] = &unk_278683DF8;
  objc_copyWeak(&v5, &location);
  [(COMeshController *)self registerHandler:v4 forRequestClass:objc_opt_class()];
  v3 = objc_alloc_init(HMDCoordinationAddOnImpl);
  [(HMDCoordinationAddOnImpl *)v3 setDelegate:self];
  [(COMeshController *)self addAddOn:v3];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __72__HMDCoordinationLocalElectionMeshController__setupMessageRegistrations__block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    v7 = [WeakRetained delegate];
    v8 = [v6 primaryResidentUUID];

    [v7 meshController:WeakRetained didReceivePingFromLeaderWithPrimaryResidentUUID:v8];
  }
}

void __72__HMDCoordinationLocalElectionMeshController__setupMessageRegistrations__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Responding to ping request", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = objc_alloc_init(HMDCoordinationPingResponse);
    v6[2](v6, v12, 0);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (HMDCoordinationLocalElectionMeshController)initWithQueue:(id)queue
{
  queueCopy = queue;
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v6 = [mEMORY[0x277D0F8D0] preferenceForKey:@"meshElectionConstituentType"];
  numberValue = [v6 numberValue];

  if (numberValue)
  {
    unsignedLongLongValue = [numberValue unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 4096;
  }

  v12.receiver = self;
  v12.super_class = HMDCoordinationLocalElectionMeshController;
  v9 = [(COMeshController *)&v12 initWithConstituentType:unsignedLongLongValue];
  v10 = v9;
  if (v9)
  {
    [(COMeshController *)v9 setDispatchQueue:queueCopy];
    [(HMDCoordinationLocalElectionMeshController *)v10 _setupMessageRegistrations];
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_239549 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_239549, &__block_literal_global_59_239550);
  }

  v3 = logCategory__hmf_once_v4_239551;

  return v3;
}

void __57__HMDCoordinationLocalElectionMeshController_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_239551;
  logCategory__hmf_once_v4_239551 = v1;
}

@end
@interface HMDCoordinationLocalElectionMeshController
+ (id)logCategory;
- (BOOL)isLeader;
- (BOOL)isProcessing;
- (HMDCoordinationLocalElectionMeshController)initWithQueue:(id)a3;
- (HMDLocalElectionMeshControllerDelegate)delegate;
- (HMDLocalElectionMeshNode)leaderNode;
- (NSArray)meshNodes;
- (id)debugDescriptionForControllerType;
- (id)debugDescriptionForMeshState;
- (id)logIdentifier;
- (id)meshNodeFor:(id)a3;
- (void)_setupMessageRegistrations;
- (void)meshControllerDidElectLeader;
- (void)meshControllerDidStartElection;
- (void)meshControllerDidUpdatesNodes;
- (void)sendPingCommandToLeaderWithCompletion:(id)a3;
- (void)sendPingNotificationToFollowersWithPrimaryResident:(id)a3;
- (void)sendPingRequestToNode:(id)a3 withCompletion:(id)a4;
- (void)startMeshWithName:(id)a3;
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
  v3 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCoordinationLocalElectionMeshController *)self delegate];
  [v4 meshControllerDidUpdatesNodes:self];
}

- (void)meshControllerDidStartElection
{
  v3 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCoordinationLocalElectionMeshController *)self delegate];
  [v4 meshControllerDidStartElection:self];
}

- (void)meshControllerDidElectLeader
{
  v3 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCoordinationLocalElectionMeshController *)self delegate];
  [v4 meshControllerDidElectLeader:self];
}

- (id)logIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(COMeshController *)self meshName];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (id)debugDescriptionForMeshState
{
  v3 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(COMeshController *)self state];
  if (v4 >= 5)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown(%d)", -[COMeshController state](self, "state")];
  }

  else
  {
    v5 = off_27972CBA8[v4];
  }

  return v5;
}

- (id)debugDescriptionForControllerType
{
  v3 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(COMeshController *)self me];
  v5 = [v4 type];

  switch(v5)
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
  v3 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v7.receiver = self;
  v7.super_class = HMDCoordinationLocalElectionMeshController;
  v4 = [(COMeshController *)&v7 nodes];
  v5 = [v4 na_map:&__block_literal_global_22_128982];

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
  v3 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v9.receiver = self;
  v9.super_class = HMDCoordinationLocalElectionMeshController;
  v4 = [(COMeshController *)&v9 nodes];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__HMDCoordinationLocalElectionMeshController_leaderNode__block_invoke;
  v8[3] = &unk_27972CB40;
  v8[4] = self;
  v5 = [v4 na_firstObjectPassingTest:v8];

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
  v3 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  return [(COMeshController *)self state]== 3;
}

- (BOOL)isLeader
{
  v3 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(COMeshController *)self leader];
  v5 = [(COMeshController *)self me];
  v6 = [v4 isEqual:v5];

  return v6;
}

- (void)sendPingRequestToNode:(id)a3 withCompletion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(HMDCoordinationLocalElectionMeshController *)self meshNodeFor:v6];
  if (v9)
  {
    v10 = objc_alloc_init(HMDCoordinationPingRequest);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __83__HMDCoordinationLocalElectionMeshController_sendPingRequestToNode_withCompletion___block_invoke;
    v16[3] = &unk_27972CB68;
    v17 = v7;
    [(COMeshController *)self sendRequest:v10 toPeer:v9 withCompletionHandler:v16];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Could not find the destination node to send the ping request", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)meshNodeFor:(id)a3
{
  v4 = a3;
  v5 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v12.receiver = self;
  v12.super_class = HMDCoordinationLocalElectionMeshController;
  v6 = [(COMeshController *)&v12 nodes];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__HMDCoordinationLocalElectionMeshController_meshNodeFor___block_invoke;
  v10[3] = &unk_27972CB40;
  v11 = v4;
  v7 = v4;
  v8 = [v6 na_firstObjectPassingTest:v10];

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

- (void)sendPingNotificationToFollowersWithPrimaryResident:(id)a3
{
  v4 = a3;
  v5 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [[HMDCoordinationPingNotification alloc] initWithPrimaryResidentUUID:v4];
  [(COMeshController *)self sendNotification:v6];
}

- (void)sendPingCommandToLeaderWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_alloc_init(HMDCoordinationPingCommand);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__HMDCoordinationLocalElectionMeshController_sendPingCommandToLeaderWithCompletion___block_invoke;
  v8[3] = &unk_27972CB18;
  v9 = v4;
  v7 = v4;
  [(COMeshController *)self sendCommand:v6 withCompletionHandler:v8];
}

- (void)stop
{
  v3 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4.receiver = self;
  v4.super_class = HMDCoordinationLocalElectionMeshController;
  [(COMeshController *)&v4 stop];
}

- (void)startMeshWithName:(id)a3
{
  v4 = a3;
  v5 = [(COMeshController *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  [(COMeshController *)self setMeshName:v4];

  [(COMeshController *)self start];
}

- (void)_setupMessageRegistrations
{
  objc_initWeak(&location, self);
  [(COMeshController *)self registerHandler:&__block_literal_global_129054 forCommandClass:objc_opt_class()];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__HMDCoordinationLocalElectionMeshController__setupMessageRegistrations__block_invoke_2;
  v6[3] = &unk_27972CAC8;
  objc_copyWeak(&v7, &location);
  [(COMeshController *)self registerHandler:v6 forNotificationClass:objc_opt_class()];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__HMDCoordinationLocalElectionMeshController__setupMessageRegistrations__block_invoke_3;
  v4[3] = &unk_27972CAF0;
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
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Responding to ping request", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = objc_alloc_init(HMDCoordinationPingResponse);
    v6[2](v6, v12, 0);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (HMDCoordinationLocalElectionMeshController)initWithQueue:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v6 = [v5 preferenceForKey:@"meshElectionConstituentType"];
  v7 = [v6 numberValue];

  if (v7)
  {
    v8 = [v7 unsignedLongLongValue];
  }

  else
  {
    v8 = 4096;
  }

  v12.receiver = self;
  v12.super_class = HMDCoordinationLocalElectionMeshController;
  v9 = [(COMeshController *)&v12 initWithConstituentType:v8];
  v10 = v9;
  if (v9)
  {
    [(COMeshController *)v9 setDispatchQueue:v4];
    [(HMDCoordinationLocalElectionMeshController *)v10 _setupMessageRegistrations];
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_129081 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_129081, &__block_literal_global_59_129082);
  }

  v3 = logCategory__hmf_once_v4_129083;

  return v3;
}

uint64_t __57__HMDCoordinationLocalElectionMeshController_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_129083;
  logCategory__hmf_once_v4_129083 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end
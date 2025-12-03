@interface HMDPrimaryElectionCoordinationAddOn
+ (id)logCategory;
- (BOOL)residentIsPartOfTheCurrentMesh:(id)mesh;
- (HMDPrimaryElectionCoordinationAddOn)initWithContext:(id)context meshController:(id)controller dataSource:(id)source;
- (HMDPrimaryResidentElectionAddOnDelegate)delegate;
- (HMDResidentDeviceManagerContext)context;
- (NSUUID)messageTargetUUID;
- (__HMDPrimaryElectionCandidate)candidateRepresentation;
- (dispatch_queue_t)_anotherNodeBecameLeader;
- (dispatch_queue_t)_doesLocalMeshContainPrimaryResident:(dispatch_queue_t *)result;
- (id)_consensusPrimaryFromResidentCandidates:(uint64_t)candidates;
- (id)_createDebounceTimerWithInterval:(void *)interval;
- (id)_meshNodesToResidentDevices;
- (id)_retrievePrimaryMeshInformationWithContext:(void *)context otherResidents:;
- (id)dumpState;
- (id)logIdentifier;
- (id)meshLeaderResidentDevice;
- (id)meshNodeForResident:(uint64_t)resident;
- (id)primarySortComparatorForCurrentPrimary:(id)primary;
- (id)residentDevicesNotFoundInMesh;
- (uint64_t)_currentStateRequiresElection;
- (uint64_t)_doesLocalMeshContainPrimaryResident:(void *)resident meshCandidates:;
- (uint64_t)_expectState:(void *)state action:;
- (uint64_t)_handlePrimaryResidentPingFailed;
- (uint64_t)_maybeNotifyDelegateUpdatedPrimary:(void *)primary currentPrimary:;
- (void)_clearPessimisticMeshState;
- (void)_determineIfPrimaryMesh;
- (void)_didBecomeLeaderAndPerformElection:(uint64_t)election;
- (void)_doMetaMeshElection;
- (void)_findPrimaryMeshWithContext:(id)context otherResidents:(id)residents;
- (void)_maybeStartPingTimer;
- (void)_pingPrimaryResident;
- (void)_requestElectionParametersFromCandidates:(void *)candidates completionHandler:;
- (void)_selectPrimaryResidentFromCandidates:(void *)candidates meshCandidates:(void *)meshCandidates meshCandidateNodes:(void *)nodes context:(uint64_t)context electionTriggerReason:;
- (void)_selectPrimaryResidentWithReason:(unint64_t)reason;
- (void)_startSecondaryMeshTimer;
- (void)_stopBeingLeader;
- (void)_stopSecondaryMeshTimer;
- (void)handleCurrentPrimaryNotification:(id)notification;
- (void)handleCurrentPrimaryRequest:(id)request;
- (void)handleDeviceCapabilitiesRequest:(id)request;
- (void)handleMeshInformationRequest:(id)request;
- (void)handleSetPreferredPrimaryDebugRequest:(id)request;
- (void)meshController:(id)controller didReceivePingFromLeaderWithPrimaryResidentUUID:(id)d;
- (void)meshControllerDidElectLeader:(id)leader;
- (void)meshControllerDidStartElection:(id)election;
- (void)meshControllerDidUpdatesNodes:(id)nodes;
- (void)performElection;
- (void)primaryResidentChanged:(id)changed previousResidentDevice:(id)device;
- (void)registerForMessages;
- (void)resumeDebounceWithInterval:(void *)interval;
- (void)selectPrimaryResidentWithReason:(unint64_t)reason;
- (void)sendNewPrimaryNotification:(void *)notification to:;
- (void)setState:(unint64_t)state;
- (void)start;
- (void)stop;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDPrimaryElectionCoordinationAddOn

- (HMDResidentDeviceManagerContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (HMDPrimaryResidentElectionAddOnDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)dumpState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__179762;
  v10 = __Block_byref_object_dispose__179763;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__HMDPrimaryElectionCoordinationAddOn_dumpState__block_invoke;
  v5[3] = &unk_279734898;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __48__HMDPrimaryElectionCoordinationAddOn_dumpState__block_invoke(uint64_t a1)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v19[0] = @"Leader";
  v2 = [*(*(a1 + 32) + 8) leaderNode];
  v3 = [v2 description];
  v4 = v3;
  v5 = @"<no leader>";
  if (v3)
  {
    v5 = v3;
  }

  v20[0] = v5;
  v19[1] = @"Nodes";
  v6 = [*(*(a1 + 32) + 8) meshNodes];
  v7 = [v6 description];
  v8 = v7;
  v9 = @"<no nodes>";
  if (v7)
  {
    v9 = v7;
  }

  v20[1] = v9;
  v19[2] = @"Missing Residents";
  v10 = [(HMDPrimaryElectionCoordinationAddOn *)*(a1 + 32) residentDevicesNotFoundInMesh];
  v11 = [v10 na_map:&__block_literal_global_120_179769];
  v20[2] = v11;
  v19[3] = @"State";
  v12 = [*(a1 + 32) state];
  if (v12 > 5)
  {
    v13 = @"<unknown state>";
  }

  else
  {
    v13 = off_279733680[v12];
  }

  v14 = v13;
  v20[3] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];
  v16 = *(*(a1 + 40) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  v18 = *MEMORY[0x277D85DE8];
}

- (id)residentDevicesNotFoundInMesh
{
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 16));
    context = [self context];
    availableResidentDevices = [context availableResidentDevices];
    v4 = [availableResidentDevices mutableCopy];

    currentResidentDevice = [context currentResidentDevice];
    [v4 removeObject:currentResidentDevice];

    meshNodes = [*(self + 8) meshNodes];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __68__HMDPrimaryElectionCoordinationAddOn_residentDevicesNotFoundInMesh__block_invoke;
    v13[3] = &unk_279733428;
    v14 = v4;
    v7 = v4;
    v8 = [meshNodes na_map:v13];

    v9 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v7];
    v10 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v8];
    v11 = [v9 hmf_removedObjectsFromSet:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)logIdentifier
{
  context = [(HMDPrimaryElectionCoordinationAddOn *)self context];
  home = [context home];
  uuid = [home uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)timerDidFire:(id)fire
{
  v127 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  dispatch_assert_queue_V2(self->_queue);
  debounceTimer = [(HMDPrimaryElectionCoordinationAddOn *)self debounceTimer];

  if (debounceTimer == fireCopy)
  {
    dispatch_assert_queue_V2(self->_queue);
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      state = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy state];
      if (state > 5)
      {
        v21 = @"<unknown state>";
      }

      else
      {
        v21 = off_279733680[state];
      }

      v34 = v21;
      *buf = 138543618;
      *&buf[4] = v19;
      *&buf[12] = 2114;
      *&buf[14] = v34;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Debounce expired, current state = %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    if (([(HMDLocalElectionMeshController *)selfCopy->_meshController isLeader]& 1) != 0)
    {
      state2 = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy state];
      if (state2 > 2)
      {
        if (state2 != 3)
        {
          if (state2 == 4)
          {
            dispatch_assert_queue_V2(self->_queue);
            _meshNodesToResidentDevices = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy _meshNodesToResidentDevices];
            context = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy context];
            primaryResidentDevice = [context primaryResidentDevice];

            if (_meshNodesToResidentDevices && ([(HMDPrimaryElectionCoordinationAddOn *)_meshNodesToResidentDevices hmf_isEmpty]& 1) == 0 && primaryResidentDevice)
            {
              v73 = objc_autoreleasePoolPush();
              v74 = selfCopy;
              v75 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
              {
                v76 = HMFGetLogIdentifier();
                *buf = 138543874;
                *&buf[4] = v76;
                *&buf[12] = 2112;
                *&buf[14] = primaryResidentDevice;
                *&buf[22] = 2114;
                v124 = _meshNodesToResidentDevices;
                _os_log_impl(&dword_2531F8000, v75, OS_LOG_TYPE_INFO, "%{public}@Broadcasting the current primary %@ to nodes %{public}@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v73);
              [(HMDPrimaryElectionCoordinationAddOn *)v74 sendNewPrimaryNotification:primaryResidentDevice to:_meshNodesToResidentDevices];
            }

            goto LABEL_82;
          }

          if (state2 != 5)
          {
            goto LABEL_105;
          }
        }
      }

      else
      {
        if (!state2)
        {
          _meshNodesToResidentDevices = [objc_alloc(MEMORY[0x277D0F7A8]) initWithQueue:self->_queue];
          primaryResidentDevice = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy context];
          firstPrimaryResidentDiscoveryAttemptCompletionFuture = [primaryResidentDevice firstPrimaryResidentDiscoveryAttemptCompletionFuture];
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __101__HMDPrimaryElectionCoordinationAddOn__determineIfPrimaryMeshAfterWaitingForPrimaryResidentDiscovery__block_invoke;
          v124 = &unk_2797333D8;
          v125 = selfCopy;
          v122[0] = MEMORY[0x277D85DD0];
          v122[1] = 3221225472;
          v122[2] = __101__HMDPrimaryElectionCoordinationAddOn__determineIfPrimaryMeshAfterWaitingForPrimaryResidentDiscovery__block_invoke_2;
          v122[3] = &unk_279733400;
          v122[4] = selfCopy;
          v71 = [firstPrimaryResidentDiscoveryAttemptCompletionFuture inContext:_meshNodesToResidentDevices then:buf orRecover:v122];
LABEL_81:

LABEL_82:
LABEL_83:

          goto LABEL_105;
        }

        if (state2 != 1)
        {
          if (state2 == 2)
          {
            [(HMDPrimaryElectionCoordinationAddOn *)selfCopy _selectPrimaryResidentWithReason:[(HMDPrimaryElectionCoordinationAddOn *)selfCopy coordinationUpdateElectionTriggerReason]];
          }

          goto LABEL_105;
        }
      }

      v36 = objc_autoreleasePoolPush();
      v37 = selfCopy;
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = HMFGetLogIdentifier();
        state3 = [(HMDPrimaryElectionCoordinationAddOn *)v37 state];
        if (state3 > 5)
        {
          v42 = @"<unknown state>";
        }

        else
        {
          v42 = off_279733680[state3];
        }

        v80 = v42;
        *buf = 138543618;
        *&buf[4] = v39;
        *&buf[12] = 2114;
        *&buf[14] = v80;
        _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@Primary resident election or mesh change cannot be kicked off while in the state %{public}@", buf, 0x16u);

        goto LABEL_73;
      }
    }

    else
    {
      v36 = objc_autoreleasePoolPush();
      v37 = selfCopy;
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v39;
        v40 = "%{public}@Ignoring debounce timer fire because we're no longer leader";
LABEL_52:
        _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, v40, buf, 0xCu);
LABEL_73:
      }
    }

LABEL_74:

    objc_autoreleasePoolPop(v36);
    goto LABEL_105;
  }

  pingTimer = [(HMDPrimaryElectionCoordinationAddOn *)self pingTimer];

  if (pingTimer == fireCopy)
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      state4 = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy2 state];
      if (state4 > 5)
      {
        v27 = @"<unknown state>";
      }

      else
      {
        v27 = off_279733680[state4];
      }

      v49 = v27;
      *buf = 138543618;
      *&buf[4] = v25;
      *&buf[12] = 2114;
      *&buf[14] = v49;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Ping timer fired, current state = %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    dispatch_assert_queue_V2(self->_queue);
    if ([(HMDPrimaryElectionCoordinationAddOn *)selfCopy2 state]== 2 || [(HMDPrimaryElectionCoordinationAddOn *)selfCopy2 state]== 4)
    {
      if (![(HMDLocalElectionMeshController *)selfCopy2->_meshController isLeader])
      {
        v60 = objc_autoreleasePoolPush();
        v61 = selfCopy2;
        v62 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
        {
          v63 = HMFGetLogIdentifier();
          *buf = 138543362;
          *&buf[4] = v63;
          _os_log_impl(&dword_2531F8000, v62, OS_LOG_TYPE_INFO, "%{public}@Ping timer expired and we haven't heard from the leader. Sending a ping command to the leader", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v60);
        pingTimer2 = [(HMDPrimaryElectionCoordinationAddOn *)v61 pingTimer];
        [pingTimer2 suspend];

        pingTimer3 = [(HMDPrimaryElectionCoordinationAddOn *)v61 pingTimer];
        meshController = selfCopy2->_meshController;
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __68__HMDPrimaryElectionCoordinationAddOn__handlePingTimerExpiredAsNode__block_invoke;
        v124 = &unk_2797358C8;
        v125 = v61;
        v126 = pingTimer3;
        _meshNodesToResidentDevices = pingTimer3;
        [(HMDLocalElectionMeshController *)meshController sendPingCommandToLeaderWithCompletion:buf];

        goto LABEL_83;
      }

      context2 = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy2 context];
      v51 = context2;
      if (!context2)
      {
LABEL_104:

        goto LABEL_105;
      }

      primaryResidentDevice2 = [context2 primaryResidentDevice];
      v53 = objc_autoreleasePoolPush();
      v54 = selfCopy2;
      v55 = HMFGetOSLogHandle();
      v56 = os_log_type_enabled(v55, OS_LOG_TYPE_INFO);
      if (primaryResidentDevice2)
      {
        if (v56)
        {
          v120 = v51;
          v57 = HMFGetLogIdentifier();
          state5 = [(HMDPrimaryElectionCoordinationAddOn *)v54 state];
          if (state5 > 5)
          {
            v59 = @"<unknown state>";
          }

          else
          {
            v59 = off_279733680[state5];
          }

          v88 = v59;
          shortDescription = [primaryResidentDevice2 shortDescription];
          *buf = 138543874;
          *&buf[4] = v57;
          *&buf[12] = 2114;
          *&buf[14] = v88;
          *&buf[22] = 2114;
          v124 = shortDescription;
          _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_INFO, "%{public}@We are the leader in state: %{public}@. Sending periodic ping notification to followers with primary resident: %{public}@", buf, 0x20u);

          v51 = v120;
        }

        objc_autoreleasePoolPop(v53);
        v90 = selfCopy2->_meshController;
        identifier = [primaryResidentDevice2 identifier];
        [(HMDLocalElectionMeshController *)v90 sendPingNotificationToFollowersWithPrimaryResident:identifier];

        if ([(HMDPrimaryElectionCoordinationAddOn *)v54 state]!= 2)
        {
          goto LABEL_103;
        }

        currentResidentDevice = [v51 currentResidentDevice];
        v93 = [primaryResidentDevice2 isEqual:currentResidentDevice];

        if (!v93)
        {
          v121 = v51;
          v98 = primaryResidentDevice2;
          v99 = primaryResidentDevice2;
          v100 = [(HMDPrimaryElectionCoordinationAddOn *)v54 meshNodeForResident:v99];
          v101 = objc_autoreleasePoolPush();
          v102 = v54;
          v103 = HMFGetOSLogHandle();
          v104 = v103;
          if (v100)
          {
            if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
            {
              v105 = HMFGetLogIdentifier();
              *buf = 138543362;
              *&buf[4] = v105;
              _os_log_impl(&dword_2531F8000, v104, OS_LOG_TYPE_INFO, "%{public}@We are the leader. Sending periodic ping request to the primary resident", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v101);
            meshLeaderToPrimaryResidentPingResponseTimer = [(HMDPrimaryElectionCoordinationAddOn *)v102 meshLeaderToPrimaryResidentPingResponseTimer];
            [meshLeaderToPrimaryResidentPingResponseTimer suspend];

            dataSource = [(HMDPrimaryElectionCoordinationAddOn *)v102 dataSource];
            v108 = dataSource;
            if (dataSource)
            {
              v109 = [dataSource createPingResponseTimerWithInterval:0 options:20.0];
            }

            else
            {
              v109 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:20.0];
            }

            v112 = v109;

            [(HMDPrimaryElectionCoordinationAddOn *)v102 setMeshLeaderToPrimaryResidentPingResponseTimer:v112];
            meshLeaderToPrimaryResidentPingResponseTimer2 = [(HMDPrimaryElectionCoordinationAddOn *)v102 meshLeaderToPrimaryResidentPingResponseTimer];
            [meshLeaderToPrimaryResidentPingResponseTimer2 setDelegate:v102];

            queue = self->_queue;
            meshLeaderToPrimaryResidentPingResponseTimer3 = [(HMDPrimaryElectionCoordinationAddOn *)v102 meshLeaderToPrimaryResidentPingResponseTimer];
            [meshLeaderToPrimaryResidentPingResponseTimer3 setDelegateQueue:queue];

            meshLeaderToPrimaryResidentPingResponseTimer4 = [(HMDPrimaryElectionCoordinationAddOn *)v102 meshLeaderToPrimaryResidentPingResponseTimer];
            [(HMDPrimaryElectionCoordinationAddOn *)meshLeaderToPrimaryResidentPingResponseTimer4 resume];
            v117 = selfCopy2->_meshController;
            *buf = MEMORY[0x277D85DD0];
            *&buf[8] = 3221225472;
            *&buf[16] = __72__HMDPrimaryElectionCoordinationAddOn_sendPingRequestToPrimaryResident___block_invoke;
            v124 = &unk_2797358C8;
            v125 = meshLeaderToPrimaryResidentPingResponseTimer4;
            v126 = v102;
            v118 = meshLeaderToPrimaryResidentPingResponseTimer4;
            [(HMDLocalElectionMeshController *)v117 sendPingRequestToNode:v100 withCompletion:buf];
          }

          else
          {
            if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
            {
              v110 = HMFGetLogIdentifier();
              shortDescription2 = [v99 shortDescription];
              *buf = 138543618;
              *&buf[4] = v110;
              *&buf[12] = 2114;
              *&buf[14] = shortDescription2;
              _os_log_impl(&dword_2531F8000, v104, OS_LOG_TYPE_ERROR, "%{public}@Not sending the ping request. Unable to find the mesh node for primary resident %{public}@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v101);
          }

          primaryResidentDevice2 = v98;
          v51 = v121;
          goto LABEL_103;
        }

        v94 = objc_autoreleasePoolPush();
        v95 = v54;
        v96 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
        {
          v97 = HMFGetLogIdentifier();
          *buf = 138543362;
          *&buf[4] = v97;
          _os_log_impl(&dword_2531F8000, v96, OS_LOG_TYPE_INFO, "%{public}@Not sending the ping request. We are the primary resident.", buf, 0xCu);
        }

        v79 = v94;
      }

      else
      {
        if (v56)
        {
          v78 = HMFGetLogIdentifier();
          *buf = 138543362;
          *&buf[4] = v78;
          _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_INFO, "%{public}@Not sending the periodic ping request to the primary and notification to the followers. Primary resident is nil.", buf, 0xCu);
        }

        v79 = v53;
      }

      objc_autoreleasePoolPop(v79);
LABEL_103:

      goto LABEL_104;
    }

    v36 = objc_autoreleasePoolPush();
    v37 = selfCopy2;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v39;
      v40 = "%{public}@Ignoring ping timer since we're not idle";
      goto LABEL_52;
    }

    goto LABEL_74;
  }

  secondaryMeshTimer = [(HMDPrimaryElectionCoordinationAddOn *)self secondaryMeshTimer];

  if (secondaryMeshTimer == fireCopy)
  {
    v28 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      state6 = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy3 state];
      if (state6 > 5)
      {
        v33 = @"<unknown state>";
      }

      else
      {
        v33 = off_279733680[state6];
      }

      v68 = v33;
      *buf = 138543618;
      *&buf[4] = v31;
      *&buf[12] = 2114;
      *&buf[14] = v68;
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@Secondary mesh timer fired, current state = %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    if ([(HMDPrimaryElectionCoordinationAddOn *)selfCopy3 state]== 4 && [(HMDLocalElectionMeshController *)selfCopy3->_meshController isLeader])
    {
      [(HMDPrimaryElectionCoordinationAddOn *)selfCopy3 _pingPrimaryResident];
    }
  }

  else
  {
    meshLeaderToPrimaryResidentPingResponseTimer5 = [(HMDPrimaryElectionCoordinationAddOn *)self meshLeaderToPrimaryResidentPingResponseTimer];

    if (meshLeaderToPrimaryResidentPingResponseTimer5 == fireCopy)
    {
      v43 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v45 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v46 = HMFGetLogIdentifier();
        state7 = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy4 state];
        if (state7 > 5)
        {
          v48 = @"<unknown state>";
        }

        else
        {
          v48 = off_279733680[state7];
        }

        v77 = v48;
        *buf = 138543618;
        *&buf[4] = v46;
        *&buf[12] = 2114;
        *&buf[14] = v77;
        _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_ERROR, "%{public}@Timer fired and the primary resident did not respond to ping request from the leader, current state = %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v43);
      [(HMDPrimaryElectionCoordinationAddOn *)selfCopy4 _handlePrimaryResidentPingFailed];
      [(HMDPrimaryElectionCoordinationAddOn *)selfCopy4 setMeshLeaderToPrimaryResidentPingResponseTimer:0];
    }

    else
    {
      activeNodesUpdateDebounceTimer = [(HMDPrimaryElectionCoordinationAddOn *)self activeNodesUpdateDebounceTimer];

      if (activeNodesUpdateDebounceTimer == fireCopy)
      {
        v10 = objc_autoreleasePoolPush();
        selfCopy5 = self;
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = HMFGetLogIdentifier();
          state8 = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy5 state];
          if (state8 > 5)
          {
            v15 = @"<unknown state>";
          }

          else
          {
            v15 = off_279733680[state8];
          }

          v81 = v15;
          *buf = 138543618;
          *&buf[4] = v13;
          *&buf[12] = 2114;
          *&buf[14] = v81;
          _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Active nodes update timer fired, current state = %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v10);
        dispatch_assert_queue_V2(self->_queue);
        context3 = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy5 context];
        _meshNodesToResidentDevices = [context3 currentResidentDevice];

        if (!_meshNodesToResidentDevices)
        {
          goto LABEL_83;
        }

        primaryResidentDevice = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy5 _meshNodesToResidentDevices];
        firstPrimaryResidentDiscoveryAttemptCompletionFuture = [primaryResidentDevice setByAddingObject:_meshNodesToResidentDevices];
        v83 = objc_autoreleasePoolPush();
        v84 = selfCopy5;
        v85 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
        {
          v86 = HMFGetLogIdentifier();
          *buf = 138543618;
          *&buf[4] = v86;
          *&buf[12] = 2114;
          *&buf[14] = firstPrimaryResidentDiscoveryAttemptCompletionFuture;
          _os_log_impl(&dword_2531F8000, v85, OS_LOG_TYPE_DEBUG, "%{public}@Notifying delegate of active mesh nodes: %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v83);
        delegate = [(HMDPrimaryElectionCoordinationAddOn *)v84 delegate];
        [delegate primaryElectionAddOn:v84 didUpdateActiveNodes:firstPrimaryResidentDiscoveryAttemptCompletionFuture];

        goto LABEL_81;
      }
    }
  }

LABEL_105:

  v119 = *MEMORY[0x277D85DE8];
}

- (void)_pingPrimaryResident
{
  v31 = *MEMORY[0x277D85DE8];
  if (self)
  {
    dispatch_assert_queue_V2(self[2]);
    context = [(dispatch_queue_t *)self context];
    if (context)
    {
      if ([(dispatch_queue_t *)self inPessimisticSecondaryMesh]== 1)
      {
        v3 = objc_autoreleasePoolPush();
        selfCopy = self;
        v5 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v6 = HMFGetLogIdentifier();
          *buf = 138543362;
          v30 = v6;
          _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Pessimistic secondary mesh state pinging over IDS", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v3);
        [(dispatch_queue_t *)selfCopy setInPessimisticSecondaryMesh:2];
      }

      [(dispatch_queue_t *)self setState:5];
      primaryResidentDevice = [context primaryResidentDevice];
      if (primaryResidentDevice)
      {
        remoteDeviceMonitor = [(dispatch_queue_t *)self remoteDeviceMonitor];
        if ([remoteDeviceMonitor isReachable])
        {
          v9 = [MEMORY[0x277CBEB98] setWithObject:primaryResidentDevice];
          v10 = [(HMDPrimaryElectionCoordinationAddOn *)self _retrievePrimaryMeshInformationWithContext:context otherResidents:v9];

          objc_initWeak(buf, self);
          objc_initWeak(&location, context);
          v12 = objc_getProperty(self, v11, 136, 1);
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __59__HMDPrimaryElectionCoordinationAddOn__pingPrimaryResident__block_invoke;
          v25[3] = &unk_2797334C0;
          objc_copyWeak(&v26, buf);
          objc_copyWeak(&v27, &location);
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __59__HMDPrimaryElectionCoordinationAddOn__pingPrimaryResident__block_invoke_58;
          v23[3] = &unk_2797334E8;
          objc_copyWeak(&v24, buf);
          v13 = [v10 inContext:v12 then:v25 orRecover:v23];

          objc_destroyWeak(&v24);
          objc_destroyWeak(&v27);
          objc_destroyWeak(&v26);
          objc_destroyWeak(&location);
          objc_destroyWeak(buf);
        }

        else
        {
          v18 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = HMFGetLogIdentifier();
            *buf = 138543362;
            v30 = v21;
            _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@We're not online, restarting ping timer", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v18);
          [(dispatch_queue_t *)selfCopy2 setState:4];
          [(HMDPrimaryElectionCoordinationAddOn *)selfCopy2 _startSecondaryMeshTimer];
        }
      }

      else
      {
        v14 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543362;
          v30 = v17;
          _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@No current primary resident, doing meta mesh election", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v14);
        [(dispatch_queue_t *)selfCopy3 setState:2];
        [(HMDPrimaryElectionCoordinationAddOn *)selfCopy3 _doMetaMeshElection];
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_handlePrimaryResidentPingFailed
{
  v9 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    result = [*(result + 8) isLeader];
    if (result)
    {
      result = [v1 state];
      if (result == 2)
      {
        v2 = objc_autoreleasePoolPush();
        v3 = v1;
        v4 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          v5 = HMFGetLogIdentifier();
          v7 = 138543362;
          v8 = v5;
          _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@The ping request to the primary resident failed. Starting an election", &v7, 0xCu);
        }

        objc_autoreleasePoolPop(v2);
        result = [v3 _selectPrimaryResidentWithReason:0];
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_meshNodesToResidentDevices
{
  selfCopy = self;
  if (self)
  {
    dispatch_assert_queue_V2(self[2]);
    context = [selfCopy context];
    availableResidentDevices = [context availableResidentDevices];

    meshNodes = [selfCopy[1] meshNodes];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __66__HMDPrimaryElectionCoordinationAddOn__meshNodesToResidentDevices__block_invoke;
    v8[3] = &unk_279733428;
    v9 = availableResidentDevices;
    v5 = availableResidentDevices;
    v6 = [meshNodes na_map:v8];

    selfCopy = [MEMORY[0x277CBEB98] setWithArray:v6];
  }

  return selfCopy;
}

- (void)_doMetaMeshElection
{
  if (self)
  {
    dispatch_assert_queue_V2(self[2]);
    [(dispatch_queue_t *)self setState:5];
    context = [(dispatch_queue_t *)self context];
    residentDevicesNotFoundInMesh = [(HMDPrimaryElectionCoordinationAddOn *)self residentDevicesNotFoundInMesh];
    v4 = [(HMDPrimaryElectionCoordinationAddOn *)self _retrievePrimaryMeshInformationWithContext:context otherResidents:residentDevicesNotFoundInMesh];

    objc_initWeak(&location, self);
    objc_initWeak(&from, context);
    v6 = objc_getProperty(self, v5, 136, 1);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __58__HMDPrimaryElectionCoordinationAddOn__doMetaMeshElection__block_invoke;
    v10[3] = &unk_2797334C0;
    objc_copyWeak(&v11, &location);
    objc_copyWeak(&v12, &from);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __58__HMDPrimaryElectionCoordinationAddOn__doMetaMeshElection__block_invoke_57;
    v8[3] = &unk_2797334E8;
    objc_copyWeak(&v9, &location);
    v7 = [v4 inContext:v6 then:v10 orRecover:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

- (void)_startSecondaryMeshTimer
{
  v27 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    goto LABEL_17;
  }

  dispatch_assert_queue_V2(self[2]);
  secondaryMeshTimer = [(dispatch_queue_t *)self secondaryMeshTimer];

  if (!secondaryMeshTimer)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Starting secondary mesh timer", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    dataSource = [(dispatch_queue_t *)selfCopy dataSource];
    v15 = dataSource;
    if (dataSource)
    {
      v16 = [dataSource createSecondaryMeshTimerWithInterval:9 options:300.0];
    }

    else
    {
      v16 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:9 options:300.0];
    }

    v19 = v16;

    [(dispatch_queue_t *)selfCopy setSecondaryMeshTimer:v19];
    v20 = self[2];
    secondaryMeshTimer2 = [(dispatch_queue_t *)selfCopy secondaryMeshTimer];
    [secondaryMeshTimer2 setDelegateQueue:v20];

    secondaryMeshTimer3 = [(dispatch_queue_t *)selfCopy secondaryMeshTimer];
    [secondaryMeshTimer3 setDelegate:selfCopy];

    v18 = selfCopy;
    goto LABEL_16;
  }

  secondaryMeshTimer4 = [(dispatch_queue_t *)self secondaryMeshTimer];
  isRunning = [secondaryMeshTimer4 isRunning];

  v5 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v7 = HMFGetOSLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (!isRunning)
  {
    if (v8)
    {
      v17 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v17;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Resuming secondary mesh timer", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v18 = selfCopy2;
LABEL_16:
    secondaryMeshTimer5 = [(dispatch_queue_t *)v18 secondaryMeshTimer];
    [secondaryMeshTimer5 resume];

    goto LABEL_17;
  }

  if (v8)
  {
    v9 = HMFGetLogIdentifier();
    v25 = 138543362;
    v26 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Secondary mesh timer is already running", &v25, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
LABEL_17:
  v24 = *MEMORY[0x277D85DE8];
}

- (id)_retrievePrimaryMeshInformationWithContext:(void *)context otherResidents:
{
  v5 = a2;
  contextCopy = context;
  dispatch_assert_queue_V2(self[2]);
  v7 = v5;
  v8 = contextCopy;
  dataSource = [(dispatch_queue_t *)self dataSource];
  v10 = dataSource;
  if (dataSource)
  {
    v11 = [dataSource createFindPrimaryMeshOperationWithContext:v7 otherResidents:v8];
  }

  else
  {
    v11 = [[HMDPrimaryElectionFindPrimaryMeshOperation alloc] initWithContext:v7 otherResidents:v8];
  }

  v12 = v11;

  [(dispatch_queue_t *)self setFindPrimaryMeshOperation:v12];
  v13 = MEMORY[0x277D0F7C0];
  findPrimaryMeshOperation = [(dispatch_queue_t *)self findPrimaryMeshOperation];
  v15 = [v13 futureForOperation:findPrimaryMeshOperation];
  [(dispatch_queue_t *)self setFindPrimaryMeshFuture:v15];

  objc_initWeak(&location, self);
  objc_initWeak(&from, v7);
  findPrimaryMeshFuture = [(dispatch_queue_t *)self findPrimaryMeshFuture];
  v18 = objc_getProperty(self, v17, 136, 1);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __97__HMDPrimaryElectionCoordinationAddOn__retrievePrimaryMeshInformationWithContext_otherResidents___block_invoke;
  v25[3] = &unk_279733510;
  objc_copyWeak(&v27, &location);
  objc_copyWeak(&v28, &from);
  v19 = v12;
  v26 = v19;
  v20 = [findPrimaryMeshFuture inContext:v18 then:v25];

  defaultScheduler = [MEMORY[0x277D0F8F0] defaultScheduler];
  findPrimaryMeshOperation2 = [(dispatch_queue_t *)self findPrimaryMeshOperation];
  v23 = [defaultScheduler performOperation:findPrimaryMeshOperation2];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v20;
}

uint64_t __59__HMDPrimaryElectionCoordinationAddOn__pingPrimaryResident__block_invoke(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = v5;
  if (WeakRetained && v5 && [(HMDPrimaryElectionCoordinationAddOn *)WeakRetained _expectState:@"pinging primary" action:?])
  {
    if ([v3 count])
    {
      v7 = WeakRetained[1];
      v8 = [v6 home];
      v9 = [HMDPrimaryElectionMeshInformation meshInformationWithMeshController:v7 home:v8];

      if (!v9)
      {
        [WeakRetained setState:4];
        [(HMDPrimaryElectionCoordinationAddOn *)WeakRetained _startSecondaryMeshTimer];
LABEL_26:

        goto LABEL_27;
      }

      v10 = objc_autoreleasePoolPush();
      v11 = WeakRetained;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v38 = 138543618;
        v39 = v13;
        v40 = 2112;
        v41 = v9;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Our mesh info: %@", &v38, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      v14 = [v3 firstObject];
      v15 = [v9 reachableIPAccessories];
      v16 = [v14 reachableIPAccessories];
      v17 = v16;
      if (v15 && !v16)
      {
        v18 = objc_autoreleasePoolPush();
        v19 = v11;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = HMFGetLogIdentifier();
          v22 = [v9 reachableIPAccessories];
          v38 = 138543618;
          v39 = v21;
          v40 = 1024;
          LODWORD(v41) = v22;
          _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@The current primary mesh has 0 reachable IP accessories and we have %d, taking over the primary mesh", &v38, 0x12u);
        }

        objc_autoreleasePoolPop(v18);
        [v19 setState:2];
        [v19 _selectPrimaryResidentWithReason:2];
        goto LABEL_25;
      }

      v27 = objc_autoreleasePoolPush();
      v28 = v11;
      v29 = HMFGetOSLogHandle();
      v30 = os_log_type_enabled(v29, OS_LOG_TYPE_INFO);
      if (v15 || !v17)
      {
        if (v30)
        {
          v31 = HMFGetLogIdentifier();
          v38 = 138543362;
          v39 = v31;
          v33 = "%{public}@The current primary responded and we are not better than it, staying in secondary mesh and restarting ping timer";
          v34 = v29;
          v35 = 12;
          goto LABEL_23;
        }
      }

      else if (v30)
      {
        v31 = HMFGetLogIdentifier();
        v32 = [v14 reachableIPAccessories];
        v38 = 138543618;
        v39 = v31;
        v40 = 1024;
        LODWORD(v41) = v32;
        v33 = "%{public}@The current primary has reachable %d IP accessories (we have 0), staying in secondary mesh and restarting ping timer";
        v34 = v29;
        v35 = 18;
LABEL_23:
        _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, v33, &v38, v35);
      }

      objc_autoreleasePoolPop(v27);
      [v28 setState:4];
      [(HMDPrimaryElectionCoordinationAddOn *)v28 _startSecondaryMeshTimer];
LABEL_25:

      goto LABEL_26;
    }

    v23 = objc_autoreleasePoolPush();
    v24 = WeakRetained;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      v38 = 138543362;
      v39 = v26;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Primary resident didn't respond, doing meta mesh election", &v38, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
    [v24 setState:2];
    [(HMDPrimaryElectionCoordinationAddOn *)v24 _doMetaMeshElection];
  }

LABEL_27:

  v36 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __59__HMDPrimaryElectionCoordinationAddOn__pingPrimaryResident__block_invoke_58(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (![v3 isHMError] || objc_msgSend(v3, "code") != 23))
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Ping operation completed with error: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [v6 setState:4];
    [(HMDPrimaryElectionCoordinationAddOn *)v6 _startSecondaryMeshTimer];
  }

  v9 = *MEMORY[0x277D85DE8];
  return 1;
}

- (uint64_t)_expectState:(void *)state action:
{
  v27 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if (!self)
  {
LABEL_13:
    v7 = 0;
    goto LABEL_14;
  }

  state = [self state];
  if (state != a2)
  {
    v8 = state;
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      if (a2 > 5)
      {
        v13 = @"<unknown state>";
      }

      else
      {
        v13 = off_279733680[a2];
      }

      v14 = v13;
      if (v8 > 5)
      {
        v15 = @"<unknown state>";
      }

      else
      {
        v15 = off_279733680[v8];
      }

      v16 = v15;
      v19 = 138544130;
      v20 = v12;
      v21 = 2114;
      v22 = v14;
      v23 = 2114;
      v24 = v16;
      v25 = 2114;
      v26 = stateCopy;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Expecting state %{public}@, got %{public}@ - action: %{public}@", &v19, 0x2Au);
    }

    objc_autoreleasePoolPop(v9);
    goto LABEL_13;
  }

  v7 = 1;
LABEL_14:

  v17 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t __97__HMDPrimaryElectionCoordinationAddOn__retrievePrimaryMeshInformationWithContext_otherResidents___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && ([WeakRetained findPrimaryMeshOperation], v6 = objc_claimAutoreleasedReturnValue(), v7 = *(a1 + 32), v6, v6 == v7))
  {
    [WeakRetained setFindPrimaryMeshOperation:0];
    [WeakRetained setFindPrimaryMeshFuture:0];
    if (v5)
    {
      [v3 results];
      objc_claimAutoreleasedReturnValue();
      v16 = 1;
      goto LABEL_10;
    }

    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v11;
      v12 = "%{public}@No context, bailing";
      goto LABEL_5;
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v11;
      v12 = "%{public}@Ignoring stale find primary mesh operation";
LABEL_5:
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, v12, &v19, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v8);
  v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  v16 = 2;
LABEL_10:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t __58__HMDPrimaryElectionCoordinationAddOn__doMetaMeshElection__block_invoke(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = v5;
  if (WeakRetained && v5 && [(HMDPrimaryElectionCoordinationAddOn *)WeakRetained _expectState:@"pinging primary" action:?])
  {
    v7 = [WeakRetained remoteDeviceMonitor];
    v8 = [v7 isReachable];

    if (v8)
    {
      if ([v3 count])
      {
        v9 = [v6 primaryResidentDevice];
        v10 = v9;
        if (v9)
        {
          v43[0] = MEMORY[0x277D85DD0];
          v43[1] = 3221225472;
          v43[2] = __58__HMDPrimaryElectionCoordinationAddOn__doMetaMeshElection__block_invoke_53;
          v43[3] = &unk_279733478;
          v44 = v9;
          v11 = [v3 na_firstObjectPassingTest:v43];
        }

        else
        {
          v11 = 0;
        }

        v20 = WeakRetained[1];
        v21 = [v6 home];
        v22 = [HMDPrimaryElectionMeshInformation meshInformationWithMeshController:v20 home:v21];

        if (!v22)
        {
          [WeakRetained setState:4];
          v34 = WeakRetained;
LABEL_32:
          [(HMDPrimaryElectionCoordinationAddOn *)v34 _startSecondaryMeshTimer];
LABEL_33:

          goto LABEL_34;
        }

        v23 = [v3 na_any:&__block_literal_global_179844];
        if ([v22 reachableIPAccessories])
        {
          v24 = [v11 reachableIPAccessories];
          v25 = objc_autoreleasePoolPush();
          v26 = WeakRetained;
          v27 = HMFGetOSLogHandle();
          v28 = v27;
          if (v24)
          {
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              v29 = HMFGetLogIdentifier();
              v30 = [v11 reachableIPAccessories];
              *buf = 138543618;
              v46 = v29;
              v47 = 1024;
              v48 = v30;
              v31 = "%{public}@The current primary responded and has %d accessories, staying secondary";
              v32 = v28;
              v33 = 18;
LABEL_30:
              _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, v31, buf, v33);
            }

LABEL_31:

            objc_autoreleasePoolPop(v25);
            [v26 setState:4];
            v34 = v26;
            goto LABEL_32;
          }

          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v36 = HMFGetLogIdentifier();
            v37 = [v22 reachableIPAccessories];
            *buf = 138543618;
            v46 = v36;
            v47 = 1024;
            v48 = v37;
            v38 = "%{public}@We have %d reachable accessories trying to become primary";
            v39 = v28;
            v40 = 18;
LABEL_37:
            _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_DEFAULT, v38, buf, v40);

            goto LABEL_38;
          }

          goto LABEL_38;
        }

        v25 = objc_autoreleasePoolPush();
        v26 = WeakRetained;
        v35 = HMFGetOSLogHandle();
        v28 = v35;
        if (v11)
        {
          if (!os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            goto LABEL_31;
          }

          v29 = HMFGetLogIdentifier();
          *buf = 138543362;
          v46 = v29;
          v31 = "%{public}@The primary responded, staying secondary";
        }

        else
        {
          if ((v23 & 1) == 0)
          {
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              v36 = HMFGetLogIdentifier();
              *buf = 138543362;
              v46 = v36;
              v38 = "%{public}@Nobody has reachable IP accessories, becoming primary";
              v39 = v28;
              v40 = 12;
              goto LABEL_37;
            }

LABEL_38:

            objc_autoreleasePoolPop(v25);
            [v26 setState:2];
            [v26 _selectPrimaryResidentWithReason:2];
            goto LABEL_33;
          }

          if (!os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            goto LABEL_31;
          }

          v29 = HMFGetLogIdentifier();
          *buf = 138543362;
          v46 = v29;
          v31 = "%{public}@Another mesh has accessories and we don't, staying secondary";
        }

        v32 = v28;
        v33 = 12;
        goto LABEL_30;
      }

      v16 = objc_autoreleasePoolPush();
      v17 = WeakRetained;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v46 = v19;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@No other residents responded to us, becoming primary", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      [v17 setState:2];
      [v17 _selectPrimaryResidentWithReason:2];
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = WeakRetained;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543362;
        v46 = v15;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@We're not online, going to secondary state and resuming pinging", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      [v13 setState:4];
      [(HMDPrimaryElectionCoordinationAddOn *)v13 _startSecondaryMeshTimer];
    }
  }

LABEL_34:

  v41 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __58__HMDPrimaryElectionCoordinationAddOn__doMetaMeshElection__block_invoke_57(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (![v3 isHMError] || objc_msgSend(v3, "code") != 23))
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Ping operation completed with error: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [v6 setState:4];
    [(HMDPrimaryElectionCoordinationAddOn *)v6 _startSecondaryMeshTimer];
  }

  v9 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __58__HMDPrimaryElectionCoordinationAddOn__doMetaMeshElection__block_invoke_53(uint64_t a1, void *a2)
{
  v3 = [a2 responder];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __68__HMDPrimaryElectionCoordinationAddOn__handlePingTimerExpiredAsNode__block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v8 = HMFGetLogIdentifier();
    v26 = 138543618;
    v27 = v8;
    v28 = 2112;
    v29 = v3;
    v9 = "%{public}@Ping command to leader failed with error: %@.";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
  }

  else
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v8 = HMFGetLogIdentifier();
    v26 = 138543362;
    v27 = v8;
    v9 = "%{public}@Ping command to leader succeeded";
    v10 = v7;
    v11 = OS_LOG_TYPE_INFO;
    v12 = 12;
  }

  _os_log_impl(&dword_2531F8000, v10, v11, v9, &v26, v12);

LABEL_7:
  objc_autoreleasePoolPop(v4);
  v13 = [*(a1 + 32) pingTimer];
  v14 = v13;
  if (v13 != *(a1 + 40))
  {

LABEL_13:
    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 32);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v24;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Not resuming ping timer", &v26, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    goto LABEL_16;
  }

  v15 = [*(*(a1 + 32) + 8) isProcessing];

  if (!v15)
  {
    goto LABEL_13;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = *(a1 + 32);
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v26 = 138543362;
    v27 = v19;
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Resuming ping timer", &v26, 0xCu);
  }

  objc_autoreleasePoolPop(v16);
  v20 = [*(a1 + 32) pingTimer];
  [v20 resume];

LABEL_16:
  v25 = *MEMORY[0x277D85DE8];
}

- (id)meshNodeForResident:(uint64_t)resident
{
  v3 = a2;
  if (resident)
  {
    dispatch_assert_queue_V2(*(resident + 16));
    device = [v3 device];
    idsIdentifier = [device idsIdentifier];
    leaderNode = [*(resident + 8) leaderNode];
    idsIdentifier2 = [leaderNode idsIdentifier];
    v8 = [idsIdentifier hmf_isEqualToUUIDString:idsIdentifier2];

    if (v8)
    {
      resident = [*(resident + 8) leaderNode];
    }

    else
    {
      device2 = [v3 device];
      idsIdentifier3 = [device2 idsIdentifier];

      meshNodes = [*(resident + 8) meshNodes];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __59__HMDPrimaryElectionCoordinationAddOn_meshNodeForResident___block_invoke;
      v14[3] = &unk_279733450;
      v15 = idsIdentifier3;
      v12 = idsIdentifier3;
      resident = [meshNodes na_firstObjectPassingTest:v14];
    }
  }

  return resident;
}

void __72__HMDPrimaryElectionCoordinationAddOn_sendPingRequestToPrimaryResident___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) meshLeaderToPrimaryResidentPingResponseTimer];

  if (v4 == v5)
  {
    v10 = [*(a1 + 40) meshLeaderToPrimaryResidentPingResponseTimer];
    [v10 cancel];

    [*(a1 + 40) setMeshLeaderToPrimaryResidentPingResponseTimer:0];
    if (v3)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = *(a1 + 40);
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v16 = 138543618;
        v17 = v14;
        v18 = 2112;
        v19 = v3;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Ping request to the primary resident failed with error: %@.", &v16, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      [(HMDPrimaryElectionCoordinationAddOn *)*(a1 + 40) _handlePrimaryResidentPingFailed];
    }
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 40);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v9;
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Ignoring the error response to the ping request from the primary resident since the response timer has changed. Error: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __59__HMDPrimaryElectionCoordinationAddOn_meshNodeForResident___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 idsIdentifier];
  v4 = [v2 hmf_isEqualToUUIDString:v3];

  return v4;
}

- (void)sendNewPrimaryNotification:(void *)notification to:
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  notificationCopy = notification;
  dispatch_assert_queue_V2(self[2]);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = notificationCopy;
  v7 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * v10);
        v12 = [HMDRemoteDeviceMessageDestination alloc];
        messageTargetUUID = [(dispatch_queue_t *)self messageTargetUUID];
        device = [v11 device];
        v15 = [(HMDRemoteDeviceMessageDestination *)v12 initWithTarget:messageTargetUUID device:device];

        v16 = [HMDRemoteMessage alloc];
        v29 = @"uuid";
        identifier = [v5 identifier];
        uUIDString = [identifier UUIDString];
        v30 = uUIDString;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        v20 = [(HMDRemoteMessage *)v16 initWithName:@"mesh.currentPrimaryUpdate" qualityOfService:17 destination:v15 payload:v19 type:3 timeout:1 secure:0.0 restriction:[(dispatch_queue_t *)self messageTransportRestriction]];

        context = [(dispatch_queue_t *)self context];
        messageDispatcher = [context messageDispatcher];
        [messageDispatcher sendMessage:v20];

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v8);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_determineIfPrimaryMesh
{
  v36 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    goto LABEL_21;
  }

  dispatch_assert_queue_V2(self[2]);
  if (![(dispatch_queue_t *)self state])
  {
    [(dispatch_queue_t *)self setState:1];
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Determining if we're in the primary mesh", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    context = [selfCopy context];
    if (context)
    {
      if ([selfCopy[1] isLeader])
      {
        _meshNodesToResidentDevices = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy _meshNodesToResidentDevices];
        v14 = MEMORY[0x277CBEB98];
        meshNodes = [selfCopy[1] meshNodes];
        v16 = [v14 setWithArray:meshNodes];

        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __62__HMDPrimaryElectionCoordinationAddOn__determineIfPrimaryMesh__block_invoke;
        v28[3] = &unk_279735220;
        v28[4] = selfCopy;
        v29 = context;
        v30 = _meshNodesToResidentDevices;
        v31 = v16;
        v17 = v16;
        v18 = _meshNodesToResidentDevices;
        [(HMDPrimaryElectionCoordinationAddOn *)selfCopy _requestElectionParametersFromCandidates:v18 completionHandler:v28];

LABEL_20:
        goto LABEL_21;
      }

      v20 = objc_autoreleasePoolPush();
      v21 = selfCopy;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v33 = v23;
        v24 = "%{public}@No longer leader, waiting for broadcast from the leader";
        v25 = v22;
        v26 = OS_LOG_TYPE_INFO;
        goto LABEL_18;
      }
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = selfCopy;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v33 = v23;
        v24 = "%{public}@Nil context in determineIfPrimaryMesh";
        v25 = v22;
        v26 = OS_LOG_TYPE_ERROR;
LABEL_18:
        _os_log_impl(&dword_2531F8000, v25, v26, v24, buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v20);
    [v21 setState:0];
    goto LABEL_20;
  }

  v2 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    state = [(dispatch_queue_t *)selfCopy2 state];
    if (state > 5)
    {
      v7 = @"<unknown state>";
    }

    else
    {
      v7 = off_279733680[state];
    }

    v19 = v7;
    *buf = 138543618;
    v33 = v5;
    v34 = 2112;
    v35 = v19;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Not determining if we are in the primary mesh due to current state: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
LABEL_21:
  v27 = *MEMORY[0x277D85DE8];
}

void __62__HMDPrimaryElectionCoordinationAddOn__determineIfPrimaryMesh__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([(HMDPrimaryElectionCoordinationAddOn *)*(a1 + 32) _expectState:@"aborting determining primary mesh" action:?])
  {
    v4 = [(HMDPrimaryElectionCoordinationAddOn *)*(a1 + 32) _consensusPrimaryFromResidentCandidates:v3];
    if (v4)
    {
      v5 = [*(a1 + 40) availableResidentDevices];
      v6 = [v5 hmd_residentWithIdentifier:v4];

      if (v6)
      {
        if (([(HMDPrimaryElectionCoordinationAddOn *)*(a1 + 32) _doesLocalMeshContainPrimaryResident:v6 meshCandidates:*(a1 + 48)]& 1) != 0)
        {
          goto LABEL_17;
        }

        goto LABEL_10;
      }

      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 32);
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        v19 = 138543618;
        v20 = v10;
        v21 = 2114;
        v22 = v4;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Unknown resident %{public}@", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
    }

    v6 = 0;
LABEL_10:
    v11 = [(HMDPrimaryElectionCoordinationAddOn *)*(a1 + 32) residentDevicesNotFoundInMesh];
    if ([v11 count])
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 32);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v19 = 138543618;
        v20 = v15;
        v21 = 2114;
        v22 = v11;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Found other residents that could be in a primary mesh, checking if they are: %{public}@", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      if (v6)
      {
        [(HMDPrimaryElectionCoordinationAddOn *)*(a1 + 32) _maybeNotifyDelegateUpdatedPrimary:v6 currentPrimary:0];
      }

      [*(a1 + 32) _findPrimaryMeshWithContext:*(a1 + 40) otherResidents:v11];
      goto LABEL_18;
    }

LABEL_17:
    v11 = [(HMDPrimaryElectionCoordinationAddOn *)*(a1 + 32) candidateRepresentation];
    v16 = [*(a1 + 40) currentResidentDevice];
    [v11 setResidentDevice:v16];

    v17 = [v3 arrayByAddingObject:v11];

    [*(a1 + 32) setState:3];
    [(HMDPrimaryElectionCoordinationAddOn *)*(a1 + 32) _selectPrimaryResidentFromCandidates:v17 meshCandidates:*(a1 + 48) meshCandidateNodes:*(a1 + 56) context:*(a1 + 40) electionTriggerReason:3];
    v3 = v17;
LABEL_18:
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_requestElectionParametersFromCandidates:(void *)candidates completionHandler:
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a2;
  candidatesCopy = candidates;
  if (self)
  {
    dispatch_assert_queue_V2(self[2]);
    context = [(dispatch_queue_t *)self context];
    if (context)
    {
      v32 = candidatesCopy;
      v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543618;
        v46 = v11;
        v47 = 2114;
        v48 = v5;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Requesting election parameters from candidates: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v33 = v5;
      obj = v5;
      v12 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v41;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v41 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v40 + 1) + 8 * i);
            if ([v16 isCurrentDevice])
            {
              candidateRepresentation = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy candidateRepresentation];
              currentResidentDevice = [context currentResidentDevice];
              [(HMDRemoteDeviceMessageDestination *)candidateRepresentation setResidentDevice:currentResidentDevice];

              v19 = [MEMORY[0x277D0F7C0] futureWithValue:candidateRepresentation];
              [v7 addObject:v19];
            }

            else
            {
              v20 = [HMDRemoteDeviceMessageDestination alloc];
              messageTargetUUID = [(dispatch_queue_t *)selfCopy messageTargetUUID];
              device = [v16 device];
              candidateRepresentation = [(HMDRemoteDeviceMessageDestination *)v20 initWithTarget:messageTargetUUID device:device];

              v19 = [[HMDRemoteMessage alloc] initWithName:@"mesh.requestCapabilities" qualityOfService:17 destination:candidateRepresentation payload:0 type:0 timeout:1 secure:15.0 restriction:[(dispatch_queue_t *)selfCopy messageTransportRestriction]];
              messageDispatcher = [context messageDispatcher];
              v24 = [messageDispatcher sendMessageExpectingResponse:v19];

              Property = objc_getProperty(selfCopy, v25, 136, 1);
              v39[0] = MEMORY[0x277D85DD0];
              v39[1] = 3221225472;
              v39[2] = __98__HMDPrimaryElectionCoordinationAddOn__requestElectionParametersFromCandidates_completionHandler___block_invoke;
              v39[3] = &unk_2797335F8;
              v39[4] = v16;
              v39[5] = selfCopy;
              v38[0] = MEMORY[0x277D85DD0];
              v38[1] = 3221225472;
              v38[2] = __98__HMDPrimaryElectionCoordinationAddOn__requestElectionParametersFromCandidates_completionHandler___block_invoke_86;
              v38[3] = &unk_279733F08;
              v38[4] = selfCopy;
              v38[5] = v16;
              v27 = [v24 inContext:Property then:v39 orRecover:v38];
              [v7 addObject:v27];
            }
          }

          v13 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
        }

        while (v13);
      }

      v28 = MEMORY[0x277D0F7C0];
      v29 = [v7 copy];
      v30 = [v28 allSettled:v29];

      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __98__HMDPrimaryElectionCoordinationAddOn__requestElectionParametersFromCandidates_completionHandler___block_invoke_87;
      v36[3] = &unk_279734A00;
      v36[4] = selfCopy;
      candidatesCopy = v32;
      v37 = v32;
      [v30 getResultWithCompletion:v36];

      v5 = v33;
    }

    else
    {
      (*(candidatesCopy + 2))(candidatesCopy, MEMORY[0x277CBEBF8]);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (__HMDPrimaryElectionCandidate)candidateRepresentation
{
  if (self)
  {
    context = [self context];
    currentResidentDevice = [context currentResidentDevice];
    device = [currentResidentDevice device];

    dataSource = [self dataSource];
    if (dataSource)
    {
      dataSource2 = [self dataSource];
      homeKitVersion = [dataSource2 homeKitVersion];
    }

    else
    {
      homeKitVersion = +[HMDHomeKitVersion currentVersion];
    }

    dataSource3 = [self dataSource];
    if (dataSource3)
    {
      dataSource4 = [self dataSource];
      pcsEnabled = [dataSource4 pcsEnabled];
    }

    else
    {
      dataSource4 = [context home];
      homeManager = [dataSource4 homeManager];
      pcsEnabled = [homeManager pcsEnabled];
    }

    dataSource5 = [self dataSource];

    if (dataSource5)
    {
      default_evaluator = [self dataSource];
      connectionType = [default_evaluator connectionType];
    }

    else
    {
      default_evaluator = nw_path_create_default_evaluator();
      v14 = nw_path_evaluator_copy_path();
      connectionType = MEMORY[0x259C03440](v14, 3);
    }

    productInfo = [device productInfo];
    softwareVersion = [productInfo softwareVersion];

    v17 = [__HMDPrimaryElectionCandidate alloc];
    idsIdentifier = [device idsIdentifier];
    name = [device name];
    primaryResidentDevice = [context primaryResidentDevice];
    identifier = [primaryResidentDevice identifier];
    LOBYTE(v24) = pcsEnabled;
    v22 = -[__HMDPrimaryElectionCandidate initWithVersion:deviceIdentifier:name:currentPrimaryIdentifier:enabledAsResident:supportsPingRequest:connectionType:pcsEnabled:swVersion:](v17, "initWithVersion:deviceIdentifier:name:currentPrimaryIdentifier:enabledAsResident:supportsPingRequest:connectionType:pcsEnabled:swVersion:", homeKitVersion, idsIdentifier, name, identifier, [context isCurrentDeviceAvailableResident], 1, connectionType, v24, softwareVersion);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

uint64_t __98__HMDPrimaryElectionCoordinationAddOn__requestElectionParametersFromCandidates_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [__HMDPrimaryElectionCandidate fromMessagePayload:v3];
  v5 = v4;
  if (v4)
  {
    [v4 setResidentDevice:*(a1 + 32)];
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 40);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [*(a1 + 32) device];
      v11 = [v10 shortDescription];
      v23 = 138543874;
      v24 = v9;
      v25 = 2114;
      v26 = v11;
      v27 = 2112;
      v28 = v5;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Adding election candidate %{public}@: %@", &v23, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v5;
    v12 = 1;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 40);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v17 = *(a1 + 32);
      v23 = 138543874;
      v24 = v16;
      v25 = 2112;
      v26 = v17;
      v27 = 2112;
      v28 = v3;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Candidate %@ responded with invalid payload: %@", &v23, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    v12 = 2;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t __98__HMDPrimaryElectionCoordinationAddOn__requestElectionParametersFromCandidates_completionHandler___block_invoke_86(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v14 = 138543874;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Candidate %@ responded with error: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = v3;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  v12 = *MEMORY[0x277D85DE8];
  return 2;
}

void __98__HMDPrimaryElectionCoordinationAddOn__requestElectionParametersFromCandidates_completionHandler___block_invoke_87(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __98__HMDPrimaryElectionCoordinationAddOn__requestElectionParametersFromCandidates_completionHandler___block_invoke_2;
  v6[3] = &unk_279735738;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __98__HMDPrimaryElectionCoordinationAddOn__requestElectionParametersFromCandidates_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) na_filter:&__block_literal_global_89_179879];
  (*(*(a1 + 40) + 16))();
}

uint64_t __98__HMDPrimaryElectionCoordinationAddOn__requestElectionParametersFromCandidates_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_consensusPrimaryFromResidentCandidates:(uint64_t)candidates
{
  if (candidates)
  {
    v2 = MEMORY[0x277CCA940];
    v3 = [a2 na_map:&__block_literal_global_77_180026];
    v4 = [v2 setWithArray:v3];

    v5 = v4;
    if ([v5 count])
    {
      if ([v5 count] == 1)
      {
        anyObject = [v5 anyObject];
      }

      else
      {
        allObjects = [v5 allObjects];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __74__HMDPrimaryElectionCoordinationAddOn__consensusPrimaryFromResidentUUIDs___block_invoke;
        v14[3] = &unk_2797335A8;
        v8 = v5;
        v15 = v8;
        v9 = [allObjects sortedArrayUsingComparator:v14];

        v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v9, "count") - 1}];
        v11 = [v9 objectAtIndexedSubscript:{objc_msgSend(v9, "count") - 2}];
        v12 = [v8 countForObject:v10];
        if (v12 <= [v8 countForObject:v11])
        {
          anyObject = 0;
        }

        else
        {
          anyObject = v10;
        }
      }
    }

    else
    {
      anyObject = 0;
    }
  }

  else
  {
    anyObject = 0;
  }

  return anyObject;
}

- (uint64_t)_doesLocalMeshContainPrimaryResident:(void *)resident meshCandidates:
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  residentCopy = resident;
  if (!self)
  {
    v13 = 0;
    goto LABEL_14;
  }

  context = [self context];
  currentResidentDevice = [context currentResidentDevice];
  v9 = [v5 isEqual:currentResidentDevice];

  if (!v9)
  {
    v16 = [residentCopy containsObject:v5];
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    v18 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
    if (!v16)
    {
      if (v18)
      {
        v19 = HMFGetLogIdentifier();
        v22 = 138543362;
        v23 = v19;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@We are not the current primary and it isn't in our mesh", &v22, 0xCu);
      }

      v13 = 0;
      goto LABEL_13;
    }

    if (!v18)
    {
      v13 = 1;
      goto LABEL_13;
    }

    v14 = HMFGetLogIdentifier();
    v22 = 138543362;
    v23 = v14;
    v15 = "%{public}@The current primary resident is in our mesh, we are in the primary mesh";
    v13 = 1;
    goto LABEL_8;
  }

  v10 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v12 = HMFGetOSLogHandle();
  v13 = 1;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v22 = 138543362;
    v23 = v14;
    v15 = "%{public}@We are the current primary resident, we are in the primary mesh";
LABEL_8:
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, v15, &v22, 0xCu);
  }

LABEL_13:

  objc_autoreleasePoolPop(v10);
LABEL_14:

  v20 = *MEMORY[0x277D85DE8];
  return v13;
}

- (uint64_t)_maybeNotifyDelegateUpdatedPrimary:(void *)primary currentPrimary:
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  primaryCopy = primary;
  if (self)
  {
    if (([v5 isEqual:primaryCopy] & 1) == 0)
    {
      delegate = [self delegate];
      v13 = 1;
      [delegate primaryElectionAddOn:self didElectPrimaryResident:v5 confirmed:1 electionLogEvent:0];

      goto LABEL_8;
    }

    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      context = [selfCopy context];
      primaryResidentDevice = [context primaryResidentDevice];
      v17 = 138543618;
      v18 = v10;
      v19 = 2112;
      v20 = primaryResidentDevice;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Selected primary is current primary: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v13 = 0;
LABEL_8:

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)_selectPrimaryResidentFromCandidates:(void *)candidates meshCandidates:(void *)meshCandidates meshCandidateNodes:(void *)nodes context:(uint64_t)context electionTriggerReason:
{
  v60 = *MEMORY[0x277D85DE8];
  v11 = a2;
  candidatesCopy = candidates;
  meshCandidatesCopy = meshCandidates;
  nodesCopy = nodes;
  v51 = meshCandidatesCopy;
  v55 = nodesCopy;
  if (!self)
  {
    goto LABEL_20;
  }

  v14 = nodesCopy;
  dispatch_assert_queue_V2(self[2]);
  if (![(__CFString *)v11 count])
  {
    _HMFPreconditionFailure();
LABEL_20:
    v18 = v11;
    v25 = candidatesCopy;
    goto LABEL_18;
  }

  contextCopy = context;
  v15 = [(HMDPrimaryElectionCoordinationAddOn *)self _consensusPrimaryFromResidentCandidates:v11];
  availableResidentDevices = [v14 availableResidentDevices];
  v54 = v15;
  v17 = [availableResidentDevices hmd_residentWithIdentifier:v15];

  v53 = v17;
  v50 = [(dispatch_queue_t *)self primarySortComparatorForCurrentPrimary:v17];
  v18 = [(__CFString *)v11 sortedArrayUsingComparator:?];

  v19 = objc_autoreleasePoolPush();
  selfCopy = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138543618;
    v57 = v22;
    v58 = 2114;
    v59 = v18;
    _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Sorted primary candidates: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v19);
  lastObject = [(__CFString *)v18 lastObject];
  [selfCopy setSelectedPrimaryResidentCandidate:lastObject];
  residentDevice = [lastObject residentDevice];
  v25 = candidatesCopy;
  if ([(__CFString *)v18 count]>= 2)
  {
    v26 = objc_autoreleasePoolPush();
    v27 = selfCopy;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = HMFGetLogIdentifier();
      v30 = @"same device";
      *buf = 138543618;
      v57 = v29;
      v58 = 2114;
      v59 = @"same device";
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@The primary resident was chosen because of: %{public}@", buf, 0x16u);

      v25 = candidatesCopy;
      meshCandidatesCopy = v51;
    }

    objc_autoreleasePoolPop(v26);
  }

  [selfCopy setElectionGotAborted:0];
  [selfCopy setLastEvaluatedMeshNodes:meshCandidatesCopy];
  primaryResidentDevice = [v55 primaryResidentDevice];
  v32 = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy _maybeNotifyDelegateUpdatedPrimary:residentDevice currentPrimary:primaryResidentDevice];

  currentResidentDevice = [v55 currentResidentDevice];
  identifier = [currentResidentDevice identifier];
  v35 = [identifier isEqual:v54];

  v36 = -[HMDCoordinationPrimaryElectionDetailedLogEvent initWithIsPrimary:didChangePrimary:electionTriggerReason:confirmationCriteria:meshAndPrimaryCandidateCountEqual:previousPrimaryInMesh:]([HMDCoordinationPrimaryElectionDetailedLogEvent alloc], "initWithIsPrimary:didChangePrimary:electionTriggerReason:confirmationCriteria:meshAndPrimaryCandidateCountEqual:previousPrimaryInMesh:", v35, v32, contextCopy, 0, -[__CFString count](v18, "count") == [v25 count], objc_msgSend(v25, "containsObject:", v53));
  v37 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v37 submitLogEvent:v36];

  [selfCopy setState:2];
  [(HMDPrimaryElectionCoordinationAddOn *)selfCopy sendNewPrimaryNotification:residentDevice to:v25];
  [(HMDPrimaryElectionCoordinationAddOn *)selfCopy _maybeStartPingTimer];
  dispatch_assert_queue_V2(self[2]);
  if ([selfCopy[1] isLeader])
  {
    v38 = objc_autoreleasePoolPush();
    v39 = selfCopy;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543362;
      v57 = v41;
      _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_DEBUG, "%{public}@Checking for split network", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v38);
    residentDevicesNotFoundInMesh = [(HMDPrimaryElectionCoordinationAddOn *)v39 residentDevicesNotFoundInMesh];
    if ([(__CFString *)residentDevicesNotFoundInMesh count])
    {
      v43 = objc_autoreleasePoolPush();
      v44 = v39;
      v45 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        HMFGetLogIdentifier();
        v47 = v46 = v43;
        *buf = 138543618;
        v57 = v47;
        v58 = 2114;
        v59 = residentDevicesNotFoundInMesh;
        _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_DEFAULT, "%{public}@Expected resident devices not found in mesh, we have a split network: %{public}@", buf, 0x16u);

        v43 = v46;
      }

      objc_autoreleasePoolPop(v43);
    }
  }

LABEL_18:
  v48 = *MEMORY[0x277D85DE8];
}

- (void)_maybeStartPingTimer
{
  v30 = *MEMORY[0x277D85DE8];
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 16));
    if ([*(self + 8) isProcessing])
    {
      isLeader = [*(self + 8) isLeader];
      v3 = objc_autoreleasePoolPush();
      selfCopy = self;
      v5 = HMFGetOSLogHandle();
      v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
      if (isLeader)
      {
        if (v6)
        {
          v7 = HMFGetLogIdentifier();
          v26 = 138543362;
          v27 = v7;
          _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting ping timer as a leader", &v26, 0xCu);
        }

        objc_autoreleasePoolPop(v3);
        v8 = 5;
        v9 = 60.0;
      }

      else
      {
        if (v6)
        {
          v15 = HMFGetLogIdentifier();
          v26 = 138543362;
          v27 = v15;
          _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting ping timer as a node", &v26, 0xCu);
        }

        objc_autoreleasePoolPop(v3);
        v8 = 0;
        v9 = vcvtd_n_f64_u32(arc4random(), 0x20uLL) * 11.25 + 75.0;
      }

      pingTimer = [selfCopy pingTimer];
      [pingTimer suspend];

      dataSource = [selfCopy dataSource];
      v18 = dataSource;
      if (dataSource)
      {
        v19 = [dataSource createPingTimerWithInterval:v8 options:v9];
      }

      else
      {
        v19 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:v8 options:v9];
      }

      v20 = v19;

      [selfCopy setPingTimer:v20];
      pingTimer2 = [selfCopy pingTimer];
      [pingTimer2 setDelegate:selfCopy];

      v22 = *(self + 16);
      pingTimer3 = [selfCopy pingTimer];
      [pingTimer3 setDelegateQueue:v22];

      pingTimer4 = [selfCopy pingTimer];
      [pingTimer4 resume];
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = HMFGetLogIdentifier();
        debugDescriptionForMeshState = [*(self + 8) debugDescriptionForMeshState];
        v26 = 138543618;
        v27 = v13;
        v28 = 2114;
        v29 = debugDescriptionForMeshState;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Not starting ping timer in state %{public}@", &v26, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __74__HMDPrimaryElectionCoordinationAddOn__consensusPrimaryFromResidentUUIDs___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 countForObject:a2];
  v8 = [*(a1 + 32) countForObject:v6];

  if (v7 < v8)
  {
    return -1;
  }

  else
  {
    return v7 > v8;
  }
}

- (void)meshControllerDidUpdatesNodes:(id)nodes
{
  v37 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  dispatch_assert_queue_V2(self->_queue);
  if (([nodesCopy isEqual:self->_meshController] & 1) == 0)
  {
    _HMFPreconditionFailure();
  }

  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v35 = 138543362;
    v36 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Mesh nodes updated", &v35, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDPrimaryElectionCoordinationAddOn *)selfCopy _clearPessimisticMeshState];
  state = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy state];
  context = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy context];
  primaryResidentDevice = [context primaryResidentDevice];
  v12 = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy _doesLocalMeshContainPrimaryResident:primaryResidentDevice];

  dispatch_assert_queue_V2(self->_queue);
  activeNodesUpdateDebounceTimer = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy activeNodesUpdateDebounceTimer];
  [activeNodesUpdateDebounceTimer suspend];

  dataSource = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy dataSource];
  v15 = dataSource;
  if (dataSource)
  {
    v16 = [dataSource createActiveNodesUpdateDebounceTimerWithInterval:0 options:5.0];
  }

  else
  {
    v16 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:5.0];
  }

  v17 = v16;

  [(HMDPrimaryElectionCoordinationAddOn *)selfCopy setActiveNodesUpdateDebounceTimer:v17];
  activeNodesUpdateDebounceTimer2 = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy activeNodesUpdateDebounceTimer];
  [activeNodesUpdateDebounceTimer2 setDelegate:selfCopy];

  queue = self->_queue;
  activeNodesUpdateDebounceTimer3 = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy activeNodesUpdateDebounceTimer];
  [activeNodesUpdateDebounceTimer3 setDelegateQueue:queue];

  activeNodesUpdateDebounceTimer4 = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy activeNodesUpdateDebounceTimer];
  [activeNodesUpdateDebounceTimer4 resume];

  if (([(HMDPrimaryElectionCoordinationAddOn *)selfCopy state]& 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    context2 = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy context];
    primaryResidentDevice2 = [context2 primaryResidentDevice];
    v24 = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy _doesLocalMeshContainPrimaryResident:primaryResidentDevice2];

    if (v24)
    {
      v25 = objc_autoreleasePoolPush();
      v26 = selfCopy;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        v35 = 138543362;
        v36 = v28;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Primary resident is in our mesh", &v35, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
      [(HMDPrimaryElectionCoordinationAddOn *)v26 setState:2];
    }
  }

  if ([nodesCopy isProcessing])
  {
    if ([nodesCopy isLeader])
    {
      _currentStateRequiresElection = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy _currentStateRequiresElection];
      [(HMDPrimaryElectionCoordinationAddOn *)selfCopy _didBecomeLeaderAndPerformElection:_currentStateRequiresElection];
    }

    else
    {
      [(HMDPrimaryElectionCoordinationAddOn *)selfCopy _anotherNodeBecameLeader];
    }
  }

  v30 = (state < 6) & (0xCu >> state);
  v31 = objc_alloc_init(HMDCoordinationPrimaryMeshLogEvent);
  -[HMDCoordinationPrimaryMeshLogEvent setIsLeader:](v31, "setIsLeader:", [nodesCopy isLeader]);
  [(HMDCoordinationPrimaryMeshLogEvent *)v31 setDidChangeLeader:0];
  [(HMDCoordinationPrimaryMeshLogEvent *)v31 setDidElectLeader:0];
  state2 = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy state];
  [(HMDCoordinationPrimaryMeshLogEvent *)v31 setIsInSecondaryMesh:(state2 < 6) & (0x30u >> state2)];
  [(HMDCoordinationPrimaryMeshLogEvent *)v31 setDidCurrentDeviceLeavePrimaryMesh:v30 & (v12 ^ 1)];
  v33 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v33 submitLogEvent:v31];

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_clearPessimisticMeshState
{
  v10 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    result = [result inPessimisticSecondaryMesh];
    if (result)
    {
      if (result == 2)
      {
        v2 = objc_autoreleasePoolPush();
        v7 = v1;
        v4 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          v5 = HMFGetLogIdentifier();
          *v9 = 138543362;
          *&v9[4] = v5;
          v6 = "%{public}@Pessimistic secondary mesh state terminated while performing an IDS ping";
          goto LABEL_9;
        }
      }

      else
      {
        if (result != 1)
        {
LABEL_11:
          result = [v1 setInPessimisticSecondaryMesh:{0, *v9}];
          goto LABEL_12;
        }

        v2 = objc_autoreleasePoolPush();
        v3 = v1;
        v4 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          v5 = HMFGetLogIdentifier();
          *v9 = 138543362;
          *&v9[4] = v5;
          v6 = "%{public}@Pessimistic secondary mesh state terminated before an IDS ping";
LABEL_9:
          _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, v6, v9, 0xCu);
        }
      }

      objc_autoreleasePoolPop(v2);
      goto LABEL_11;
    }
  }

LABEL_12:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (dispatch_queue_t)_doesLocalMeshContainPrimaryResident:(dispatch_queue_t *)result
{
  if (result)
  {
    v2 = result;
    v3 = a2;
    _meshNodesToResidentDevices = [(HMDPrimaryElectionCoordinationAddOn *)v2 _meshNodesToResidentDevices];
    v5 = [(HMDPrimaryElectionCoordinationAddOn *)v2 _doesLocalMeshContainPrimaryResident:v3 meshCandidates:_meshNodesToResidentDevices];

    return v5;
  }

  return result;
}

- (uint64_t)_currentStateRequiresElection
{
  v49 = *MEMORY[0x277D85DE8];
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 16));
    leaderNode = [*(self + 8) leaderNode];
    lastKnownLeaderNode = [self lastKnownLeaderNode];
    v3 = [leaderNode isEqual:lastKnownLeaderNode];

    context = [self context];
    primaryResidentDevice = [context primaryResidentDevice];

    device = [primaryResidentDevice device];
    idsIdentifier = [device idsIdentifier];

    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = [primaryResidentDevice isCurrentDevice] ^ 1;
    meshNodes = [*(self + 8) meshNodes];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __68__HMDPrimaryElectionCoordinationAddOn__currentStateRequiresElection__block_invoke;
    v29[3] = &unk_279733640;
    v31 = &v37;
    v29[4] = self;
    v32 = &v33;
    v9 = idsIdentifier;
    v30 = v9;
    [meshNodes hmf_enumerateWithAutoreleasePoolUsingBlock:v29];

    if (v38[3])
    {
      v10 = 1;
    }

    else
    {
      v10 = *(v34 + 24);
    }

    if (v3 && (([self electionGotAborted] | v10) & 1) == 0)
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543362;
        v42 = v25;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@We don't need an election now. No major changes since the last election", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
      v21 = 0;
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = HMFBooleanToString();
        v16 = HMFBooleanToString();
        [selfCopy2 electionGotAborted];
        v17 = HMFBooleanToString();
        *buf = 138544130;
        v42 = v14;
        v43 = 2112;
        v44 = v15;
        v45 = 2112;
        v46 = v16;
        v47 = 2112;
        v48 = v17;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@We need an election, leader changed: %@, nodes changed: %@, previous election aborted: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v11);
      v18 = 4;
      if (!*(v34 + 24))
      {
        v18 = 1;
      }

      v19 = 5;
      if (!*(v38 + 24))
      {
        v19 = v18;
      }

      if (v3)
      {
        v20 = v19;
      }

      else
      {
        v20 = 6;
      }

      [selfCopy2 setCoordinationUpdateElectionTriggerReason:v20];
      v21 = 1;
    }

    _Block_object_dispose(&v33, 8);
    _Block_object_dispose(&v37, 8);
  }

  else
  {
    v21 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)_didBecomeLeaderAndPerformElection:(uint64_t)election
{
  if (election)
  {
    dispatch_assert_queue_V2(*(election + 16));
    state = [election state];
    switch(state)
    {
      case 4:
        dispatch_assert_queue_V2(*(election + 16));
        [(HMDPrimaryElectionCoordinationAddOn *)election resumeDebounceWithInterval:?];

        [(HMDPrimaryElectionCoordinationAddOn *)election _startSecondaryMeshTimer];
        break;
      case 2:
        if (a2)
        {

          [election performElection];
        }

        else
        {
          v5 = MEMORY[0x277CBEB98];
          meshNodes = [*(election + 8) meshNodes];
          v6 = [v5 setWithArray:meshNodes];
          v7 = *(election + 176);
          *(election + 176) = v6;
        }

        break;
      case 0:

        [(HMDPrimaryElectionCoordinationAddOn *)election resumeDebounceWithInterval:?];
        break;
    }
  }
}

- (dispatch_queue_t)_anotherNodeBecameLeader
{
  if (result)
  {
    v1 = result;
    [(HMDPrimaryElectionCoordinationAddOn *)result _stopBeingLeader];
    v2 = [MEMORY[0x277CBEB98] set];
    v3 = v1[22];
    v1[22] = v2;

    return [(dispatch_queue_t *)v1 setElectionGotAborted:0];
  }

  return result;
}

- (void)_stopBeingLeader
{
  if (!self)
  {
    return;
  }

  dispatch_assert_queue_V2(self[2]);
  state = [(dispatch_queue_t *)self state];
  switch(state)
  {
    case 5:
      selfCopy2 = self;
      v4 = 4;
      goto LABEL_8;
    case 3:
      [(dispatch_queue_t *)self setState:2];
      [(dispatch_queue_t *)self setElectionGotAborted:1];
      break;
    case 1:
      selfCopy2 = self;
      v4 = 0;
LABEL_8:
      [(dispatch_queue_t *)selfCopy2 setState:v4];
      break;
  }

  [(HMDPrimaryElectionCoordinationAddOn *)self _stopSecondaryMeshTimer];
}

- (void)_stopSecondaryMeshTimer
{
  v11 = *MEMORY[0x277D85DE8];
  if (self)
  {
    dispatch_assert_queue_V2(self[2]);
    secondaryMeshTimer = [(dispatch_queue_t *)self secondaryMeshTimer];

    if (secondaryMeshTimer)
    {
      v3 = objc_autoreleasePoolPush();
      selfCopy = self;
      v5 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = HMFGetLogIdentifier();
        v9 = 138543362;
        v10 = v6;
        _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Stopping secondary mesh timer", &v9, 0xCu);
      }

      objc_autoreleasePoolPop(v3);
      secondaryMeshTimer2 = [(dispatch_queue_t *)selfCopy secondaryMeshTimer];
      [secondaryMeshTimer2 cancel];

      [(dispatch_queue_t *)selfCopy setSecondaryMeshTimer:0];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)resumeDebounceWithInterval:(void *)interval
{
  if (interval)
  {
    debounceTimer = [interval debounceTimer];
    [debounceTimer timeInterval];
    v6 = v5;

    if (v6 != a2)
    {
      debounceTimer2 = [interval debounceTimer];
      [debounceTimer2 suspend];

      v8 = [(HMDPrimaryElectionCoordinationAddOn *)interval _createDebounceTimerWithInterval:a2];
      [interval setDebounceTimer:v8];

      v9 = interval[2];
      debounceTimer3 = [interval debounceTimer];
      [debounceTimer3 setDelegateQueue:v9];

      debounceTimer4 = [interval debounceTimer];
      [debounceTimer4 setDelegate:interval];
    }

    debounceTimer5 = [interval debounceTimer];
    [debounceTimer5 resume];
  }
}

- (id)_createDebounceTimerWithInterval:(void *)interval
{
  if (interval)
  {
    dataSource = [interval dataSource];
    v4 = dataSource;
    if (dataSource)
    {
      v5 = [dataSource createDebounceTimerWithInterval:0 options:a2];
    }

    else
    {
      v5 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:a2];
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __68__HMDPrimaryElectionCoordinationAddOn__currentStateRequiresElection__block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  *(*(a1[6] + 8) + 24) = [*(a1[4] + 176) containsObject:?] ^ 1;
  if (*(*(a1[7] + 8) + 24) == 1)
  {
    v6 = a1[5];
    v7 = [v8 idsIdentifier];
    *(*(a1[7] + 8) + 24) = [v6 hmf_isEqualToUUIDString:v7] ^ 1;
  }

  *a4 = *(*(a1[6] + 8) + 24);
}

- (void)meshControllerDidElectLeader:(id)leader
{
  v30 = *MEMORY[0x277D85DE8];
  leaderCopy = leader;
  dispatch_assert_queue_V2(self->_queue);
  leaderNode = [(HMDLocalElectionMeshController *)self->_meshController leaderNode];
  lastKnownLeaderNode = [(HMDPrimaryElectionCoordinationAddOn *)self lastKnownLeaderNode];
  v7 = [leaderNode isEqual:lastKnownLeaderNode];

  if ([leaderCopy isLeader])
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      state = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy state];
      if (state > 5)
      {
        v13 = @"<unknown state>";
      }

      else
      {
        v13 = off_279733680[state];
      }

      v19 = v13;
      v26 = 138543618;
      v27 = v11;
      v28 = 2114;
      v29 = v19;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@We are now the mesh leader in state: %{public}@", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    _currentStateRequiresElection = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy _currentStateRequiresElection];
    [(HMDPrimaryElectionCoordinationAddOn *)selfCopy _didBecomeLeaderAndPerformElection:_currentStateRequiresElection];
  }

  else
  {
    meshLeaderResidentDevice = [(HMDPrimaryElectionCoordinationAddOn *)self meshLeaderResidentDevice];
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v18;
      v28 = 2112;
      v29 = meshLeaderResidentDevice;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Other device elected mesh leader: %@", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    [(HMDPrimaryElectionCoordinationAddOn *)selfCopy2 _anotherNodeBecameLeader];
  }

  meshNodes = [(HMDLocalElectionMeshController *)self->_meshController meshNodes];
  -[HMDPrimaryElectionCoordinationAddOn setResidentCountDuringLastElection:](self, "setResidentCountDuringLastElection:", [meshNodes count]);

  v22 = objc_alloc_init(HMDCoordinationPrimaryMeshLogEvent);
  -[HMDCoordinationPrimaryMeshLogEvent setIsLeader:](v22, "setIsLeader:", [leaderCopy isLeader]);
  [(HMDCoordinationPrimaryMeshLogEvent *)v22 setDidChangeLeader:v7 ^ 1u];
  [(HMDCoordinationPrimaryMeshLogEvent *)v22 setDidElectLeader:1];
  state2 = [(HMDPrimaryElectionCoordinationAddOn *)self state];
  [(HMDCoordinationPrimaryMeshLogEvent *)v22 setIsInSecondaryMesh:(state2 < 6) & (0x30u >> state2)];
  [(HMDCoordinationPrimaryMeshLogEvent *)v22 setDidCurrentDeviceLeavePrimaryMesh:0];
  v24 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v24 submitLogEvent:v22];

  [(HMDPrimaryElectionCoordinationAddOn *)self setLastKnownLeaderNode:leaderNode];
  [(HMDPrimaryElectionCoordinationAddOn *)self _maybeStartPingTimer];

  v25 = *MEMORY[0x277D85DE8];
}

- (id)meshLeaderResidentDevice
{
  selfCopy = self;
  if (self)
  {
    dispatch_assert_queue_V2(self[2]);
    leaderNode = [selfCopy[1] leaderNode];
    context = [selfCopy context];
    availableResidentDevices = [context availableResidentDevices];

    selfCopy = [availableResidentDevices hmd_residentDeviceForMeshNode:leaderNode];
  }

  return selfCopy;
}

- (void)meshControllerDidStartElection:(id)election
{
  v14 = *MEMORY[0x277D85DE8];
  electionCopy = election;
  dispatch_assert_queue_V2(self->_queue);
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Election started, suspending ping timer", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  pingTimer = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy pingTimer];
  [pingTimer cancel];

  [(HMDPrimaryElectionCoordinationAddOn *)selfCopy setPingTimer:0];
  meshLeaderToPrimaryResidentPingResponseTimer = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy meshLeaderToPrimaryResidentPingResponseTimer];
  [meshLeaderToPrimaryResidentPingResponseTimer cancel];

  [(HMDPrimaryElectionCoordinationAddOn *)selfCopy setMeshLeaderToPrimaryResidentPingResponseTimer:0];
  [(HMDPrimaryElectionCoordinationAddOn *)selfCopy _clearPessimisticMeshState];
  [(HMDPrimaryElectionCoordinationAddOn *)selfCopy _stopBeingLeader];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)meshController:(id)controller didReceivePingFromLeaderWithPrimaryResidentUUID:(id)d
{
  v4 = [(HMDPrimaryElectionCoordinationAddOn *)self pingTimer:controller];
  [v4 kick];
}

- (void)handleSetPreferredPrimaryDebugRequest:(id)request
{
  v51 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  dispatch_assert_queue_V2(self->_queue);
  messagePayload = [requestCopy messagePayload];
  v6 = [messagePayload hmf_stringForKey:@"preferred.primary.identifier"];

  messagePayload2 = [requestCopy messagePayload];
  v8 = [messagePayload2 hmf_BOOLForKey:@"preferred.primary.one.time"];

  messagePayload3 = [requestCopy messagePayload];
  v10 = [messagePayload3 hmf_BOOLForKey:@"preferred.primary.trigger.election"];

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v14)
    {
      v15 = HMFGetLogIdentifier();
      v16 = HMFBooleanToString();
      *buf = 138543874;
      v44 = v15;
      v45 = 2112;
      v46 = v6;
      v47 = 2112;
      v48 = v16;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Received SetPreferredPrimaryDebugRequest with primary: %@ ...isOneTime: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v17 = v6;
    v18 = @"hmd.preferred.primary.homeutil";
    v19 = objc_autoreleasePoolPush();
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = HMFGetLogIdentifier();
      HMFBooleanToString();
      v42 = v8;
      v22 = requestCopy;
      v23 = v10;
      v25 = v24 = v6;
      *buf = 138544130;
      v44 = v21;
      v45 = 2112;
      v46 = v17;
      v47 = 2112;
      v48 = v25;
      v49 = 2112;
      v50 = @"hmd.preferred.primary.homeutil";
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Setting preferred primary: %@, isOneTime: %@, applicationKey: %@", buf, 0x2Au);

      v6 = v24;
      v10 = v23;
      requestCopy = v22;
      v8 = v42;
    }

    objc_autoreleasePoolPop(v19);
    CFPreferencesSetAppValue(@"hmd.preferred.primary", v17, @"hmd.preferred.primary.homeutil");
    if (v8)
    {
      v26 = MEMORY[0x277CBEC38];
    }

    else
    {
      v26 = MEMORY[0x277CBEC28];
    }

    CFPreferencesSetAppValue(@"hmd.preferred.primary.one.time", v26, @"hmd.preferred.primary.homeutil");

    if (!v10)
    {
      goto LABEL_27;
    }

LABEL_14:
    v29 = objc_autoreleasePoolPush();
    v30 = selfCopy;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543362;
      v44 = v32;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@SetPreferredPrimary - Triggering resident election", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v29);
    if ([v30[1] isLeader])
    {
      state = [v30 state];
      v34 = objc_autoreleasePoolPush();
      v35 = v30;
      v36 = HMFGetOSLogHandle();
      v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
      if (state == 2)
      {
        if (v37)
        {
          v38 = HMFGetLogIdentifier();
          *buf = 138543362;
          v44 = v38;
          _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@Handling force resident election request: This device is the leader. Starting election.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v34);
        [v35 _selectPrimaryResidentWithReason:7];
        goto LABEL_27;
      }

      if (v37)
      {
        v39 = HMFGetLogIdentifier();
        *buf = 138543362;
        v44 = v39;
        v40 = "%{public}@Handling force resident election request: This device is not in the primary mesh. Discarding message.";
        goto LABEL_25;
      }
    }

    else
    {
      v34 = objc_autoreleasePoolPush();
      v35 = v30;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v39 = HMFGetLogIdentifier();
        *buf = 138543362;
        v44 = v39;
        v40 = "%{public}@Handling force resident election request: This device is not the leader. Discarding message.";
LABEL_25:
        _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_DEFAULT, v40, buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v34);
    goto LABEL_27;
  }

  if (v14)
  {
    v27 = HMFGetLogIdentifier();
    v28 = HMFBooleanToString();
    *buf = 138543618;
    v44 = v27;
    v45 = 2112;
    v46 = v28;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Received SetPreferredPrimaryDebugRequest with nil primary, requireOneTime: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  clearPrimaryPreference(v8);
  if (v10)
  {
    goto LABEL_14;
  }

LABEL_27:

  v41 = *MEMORY[0x277D85DE8];
}

- (void)handleMeshInformationRequest:(id)request
{
  v22 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  dispatch_assert_queue_V2(self->_queue);
  context = [(HMDPrimaryElectionCoordinationAddOn *)self context];
  v6 = context;
  if (context)
  {
    meshController = self->_meshController;
    home = [context home];
    v9 = [HMDPrimaryElectionMeshInformation meshInformationWithMeshController:meshController home:home];

    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
    if (v9)
    {
      if (v13)
      {
        v14 = HMFGetLogIdentifier();
        v18 = 138543618;
        v19 = v14;
        v20 = 2112;
        v21 = v9;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Handling mesh information request and responding with: %@", &v18, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      toMessagePayload = [v9 toMessagePayload];
      [requestCopy respondWithPayload:toMessagePayload];
    }

    else
    {
      if (v13)
      {
        v16 = HMFGetLogIdentifier();
        v18 = 138543362;
        v19 = v16;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Handling mesh information request and responding with error", &v18, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      toMessagePayload = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      [requestCopy respondWithError:toMessagePayload];
    }
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [requestCopy respondWithError:v9];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)handleCurrentPrimaryNotification:(id)notification
{
  v60 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  dispatch_assert_queue_V2(self->_queue);
  [notificationCopy respondWithSuccess];
  context = [(HMDPrimaryElectionCoordinationAddOn *)self context];
  if (context)
  {
    messagePayload = [notificationCopy messagePayload];
    v7 = [messagePayload hmf_UUIDForKey:@"uuid"];

    if (v7)
    {
      meshLeaderResidentDevice = [(HMDPrimaryElectionCoordinationAddOn *)self meshLeaderResidentDevice];
      if (meshLeaderResidentDevice && ([notificationCopy remoteSourceDevice], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(meshLeaderResidentDevice, "device"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqual:", v10), v10, v9, (v11 & 1) == 0))
      {
        v20 = objc_autoreleasePoolPush();
        selfCopy = self;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = HMFGetLogIdentifier();
          shortDescription = [meshLeaderResidentDevice shortDescription];
          [notificationCopy remoteSourceDevice];
          v52 = v20;
          v26 = v25 = meshLeaderResidentDevice;
          shortDescription2 = [v26 shortDescription];
          *buf = 138543874;
          v55 = v23;
          v56 = 2114;
          v57 = shortDescription;
          v58 = 2114;
          v59 = shortDescription2;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Received a current primary update from an unexpected device: Leader: %{public}@, Source: %{public}@", buf, 0x20u);

          meshLeaderResidentDevice = v25;
          v20 = v52;
        }

        objc_autoreleasePoolPop(v20);
      }

      else
      {
        availableResidentDevices = [context availableResidentDevices];
        v13 = [availableResidentDevices hmd_residentWithIdentifier:v7];

        if (v13)
        {
          selfCopy2 = self;
          v15 = v13;
        }

        else
        {
          v28 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v32 = v31 = meshLeaderResidentDevice;
            *buf = 138543618;
            v55 = v32;
            v56 = 2114;
            v57 = v7;
            _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Unable to map %{public}@ to known resident", buf, 0x16u);

            meshLeaderResidentDevice = v31;
          }

          objc_autoreleasePoolPop(v28);
          selfCopy2 = selfCopy3;
          v15 = 0;
        }

        if ([(HMDPrimaryElectionCoordinationAddOn *)selfCopy2 _doesLocalMeshContainPrimaryResident:v15])
        {
          v33 = 2;
        }

        else
        {
          v33 = 4;
        }

        [(HMDPrimaryElectionCoordinationAddOn *)self setState:v33];
        primaryResidentDevice = [context primaryResidentDevice];
        identifier = [primaryResidentDevice identifier];
        v36 = [identifier isEqual:v7];

        v37 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v39 = HMFGetOSLogHandle();
        v40 = os_log_type_enabled(v39, OS_LOG_TYPE_INFO);
        if (v36)
        {
          if (v40)
          {
            HMFGetLogIdentifier();
            v41 = v53 = meshLeaderResidentDevice;
            primaryResidentDevice2 = [context primaryResidentDevice];
            *buf = 138543618;
            v55 = v41;
            v56 = 2112;
            v57 = primaryResidentDevice2;
            _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_INFO, "%{public}@Broadcasted primary is current primary: %@", buf, 0x16u);

            meshLeaderResidentDevice = v53;
          }

          objc_autoreleasePoolPop(v37);
        }

        else
        {
          if (v40)
          {
            HMFGetLogIdentifier();
            v44 = v43 = meshLeaderResidentDevice;
            *buf = 138543618;
            v55 = v44;
            v56 = 2112;
            v57 = v13;
            _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_INFO, "%{public}@Received update for current primary: %@", buf, 0x16u);

            meshLeaderResidentDevice = v43;
          }

          objc_autoreleasePoolPop(v37);
          if (v13)
          {
            delegate = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy4 delegate];
            [delegate primaryElectionAddOn:selfCopy4 didElectPrimaryResident:v13 confirmed:1 electionLogEvent:0];
          }
        }

        currentResidentDevice = [context currentResidentDevice];
        identifier2 = [currentResidentDevice identifier];
        v48 = [identifier2 isEqual:v7];

        v49 = [[HMDCoordinationPrimaryElectionLogEvent alloc] initWithIsPrimary:v48 didChangePrimary:v36 ^ 1u];
        v50 = +[HMDMetricsManager sharedLogEventSubmitter];
        [v50 submitLogEvent:v49];
      }
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v55 = v19;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Message did not contain a primary resident value", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
    }
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (void)handleCurrentPrimaryRequest:(id)request
{
  v39 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  dispatch_assert_queue_V2(self->_queue);
  if (([(HMDLocalElectionMeshController *)self->_meshController isLeader]& 1) == 0)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Not responding to current primary request because we're not the leader", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v11 = MEMORY[0x277CCA9B8];
    v12 = 91;
    goto LABEL_9;
  }

  debounceTimer = [(HMDPrimaryElectionCoordinationAddOn *)self debounceTimer];
  isRunning = [debounceTimer isRunning];

  if (isRunning)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Not responding to current primary request because we are debouncing an election", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = MEMORY[0x277CCA9B8];
    v12 = 15;
LABEL_9:
    primaryResidentDevice = [v11 hmErrorWithCode:v12];
    [requestCopy respondWithError:primaryResidentDevice];
    goto LABEL_18;
  }

  context = [(HMDPrimaryElectionCoordinationAddOn *)self context];
  primaryResidentDevice = [context primaryResidentDevice];

  v19 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v21 = HMFGetOSLogHandle();
  v22 = v21;
  if (primaryResidentDevice)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      remoteSourceDevice = [requestCopy remoteSourceDevice];
      identifier = [primaryResidentDevice identifier];
      *buf = 138543874;
      v34 = v23;
      v35 = 2114;
      v36 = remoteSourceDevice;
      v37 = 2114;
      v38 = identifier;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Responding to current primary request from: %{public}@ with: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    identifier2 = [primaryResidentDevice identifier];
    uUIDString = [identifier2 UUIDString];
    v32 = uUIDString;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    [requestCopy respondWithPayload:v28];
  }

  else
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v29;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Not responding to current primary request because our primary resident is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    identifier2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [requestCopy respondWithError:identifier2];
  }

LABEL_18:
  v30 = *MEMORY[0x277D85DE8];
}

- (void)handleDeviceCapabilitiesRequest:(id)request
{
  v18 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  dispatch_assert_queue_V2(self->_queue);
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    remoteSourceDevice = [requestCopy remoteSourceDevice];
    v14 = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = remoteSourceDevice;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Received capabilities request from: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  pingTimer = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy pingTimer];
  [pingTimer kick];

  candidateRepresentation = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy candidateRepresentation];
  toMessagePayload = [candidateRepresentation toMessagePayload];
  [requestCopy respondWithPayload:toMessagePayload];

  v13 = *MEMORY[0x277D85DE8];
}

- (NSUUID)messageTargetUUID
{
  context = [(HMDPrimaryElectionCoordinationAddOn *)self context];
  home = [context home];
  uuid = [home uuid];

  return uuid;
}

- (id)primarySortComparatorForCurrentPrimary:(id)primary
{
  primaryCopy = primary;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__HMDPrimaryElectionCoordinationAddOn_primarySortComparatorForCurrentPrimary___block_invoke;
  aBlock[3] = &unk_2797335D0;
  v8 = primaryCopy;
  v4 = primaryCopy;
  v5 = _Block_copy(aBlock);

  return v5;
}

- (void)_selectPrimaryResidentWithReason:(unint64_t)reason
{
  v42 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v41 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Electing a primary resident", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  if (reason == 7)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = selfCopy;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v41 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Calling _selectPrimaryResidentFromCandidates due to forced primary election from debug/tools", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  debounceTimer = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy debounceTimer];
  isRunning = [debounceTimer isRunning];

  if (isRunning)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v41 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Debounce timer active, deferring election", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
  }

  else
  {
    context = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy context];
    currentResidentDevice = [context currentResidentDevice];

    if (currentResidentDevice)
    {
      [(HMDPrimaryElectionCoordinationAddOn *)selfCopy setState:3];
      context2 = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy context];
      v22 = MEMORY[0x277CBEB98];
      meshNodes = [(HMDLocalElectionMeshController *)selfCopy->_meshController meshNodes];
      v24 = [v22 setWithArray:meshNodes];

      _meshNodesToResidentDevices = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy _meshNodesToResidentDevices];
      v26 = [_meshNodesToResidentDevices setByAddingObject:currentResidentDevice];
      objc_initWeak(buf, selfCopy);
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __72__HMDPrimaryElectionCoordinationAddOn__selectPrimaryResidentWithReason___block_invoke;
      v35[3] = &unk_279733560;
      objc_copyWeak(v39, buf);
      v27 = _meshNodesToResidentDevices;
      v36 = v27;
      v28 = v24;
      v37 = v28;
      v29 = context2;
      v38 = v29;
      v39[1] = reason;
      [(HMDPrimaryElectionCoordinationAddOn *)selfCopy _requestElectionParametersFromCandidates:v26 completionHandler:v35];

      objc_destroyWeak(v39);
      objc_destroyWeak(buf);
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      v31 = selfCopy;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543362;
        v41 = v33;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@No current resident device, bailing", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v30);
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __72__HMDPrimaryElectionCoordinationAddOn__selectPrimaryResidentWithReason___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = WeakRetained;
  if (WeakRetained && [(HMDPrimaryElectionCoordinationAddOn *)WeakRetained _expectState:@"aborting election" action:?])
  {
    [(HMDPrimaryElectionCoordinationAddOn *)v4 _selectPrimaryResidentFromCandidates:v5 meshCandidates:*(a1 + 32) meshCandidateNodes:*(a1 + 40) context:*(a1 + 48) electionTriggerReason:*(a1 + 64)];
    clearPrimaryPreference(1);
  }
}

- (void)selectPrimaryResidentWithReason:(unint64_t)reason
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__HMDPrimaryElectionCoordinationAddOn_selectPrimaryResidentWithReason___block_invoke;
  v4[3] = &unk_279734BB8;
  v4[4] = self;
  v4[5] = reason;
  dispatch_async(queue, v4);
}

void __71__HMDPrimaryElectionCoordinationAddOn_selectPrimaryResidentWithReason___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 8) isLeader])
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *MEMORY[0x277D85DE8];

    [v2 _selectPrimaryResidentWithReason:v3];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Not running primary resident election because this device is not the leader", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = *MEMORY[0x277D85DE8];
  }
}

- (void)_findPrimaryMeshWithContext:(id)context otherResidents:(id)residents
{
  contextCopy = context;
  dispatch_assert_queue_V2(self->_queue);
  v6 = [objc_alloc(MEMORY[0x277D0F7A8]) initWithQueue:self->_queue];
  cloudReady = [contextCopy cloudReady];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__HMDPrimaryElectionCoordinationAddOn__findPrimaryMeshWithContext_otherResidents___block_invoke;
  v10[3] = &unk_279733538;
  v10[4] = self;
  v11 = contextCopy;
  v8 = contextCopy;
  v9 = [cloudReady inContext:v6 then:v10];
}

uint64_t __82__HMDPrimaryElectionCoordinationAddOn__findPrimaryMeshWithContext_otherResidents___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([(HMDPrimaryElectionCoordinationAddOn *)*(a1 + 32) _expectState:@"deciding if we're in primary mesh" action:?])
  {
    v4 = [*(a1 + 40) primaryResidentDevice];
    if (v4)
    {
      if ([(HMDPrimaryElectionCoordinationAddOn *)*(a1 + 32) _doesLocalMeshContainPrimaryResident:v4])
      {
        [*(a1 + 32) setState:2];
        [*(a1 + 32) _selectPrimaryResidentWithReason:2];
      }

      else
      {
        v9 = objc_autoreleasePoolPush();
        v10 = *(a1 + 32);
        v11 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = HMFGetLogIdentifier();
          v15 = 138543362;
          v16 = v12;
          _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Pinging primary resident", &v15, 0xCu);
        }

        objc_autoreleasePoolPop(v9);
        [*(a1 + 32) setState:4];
        [(HMDPrimaryElectionCoordinationAddOn *)*(a1 + 32) _pingPrimaryResident];
      }
    }

    else
    {
      v5 = objc_autoreleasePoolPush();
      v6 = *(a1 + 32);
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        v15 = 138543362;
        v16 = v8;
        _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@No primary resident after cloud ready, doing a meta mesh election", &v15, 0xCu);
      }

      objc_autoreleasePoolPop(v5);
      [*(a1 + 32) setState:2];
      [(HMDPrimaryElectionCoordinationAddOn *)*(a1 + 32) _doMetaMeshElection];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)setState:(unint64_t)state
{
  v26 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  state = self->_state;
  if (state == state)
  {
    goto LABEL_25;
  }

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = HMFGetLogIdentifier();
    if (state > 5)
    {
      v10 = @"<unknown state>";
    }

    else
    {
      v10 = off_279733680[state];
    }

    v11 = v10;
    if (state > 5)
    {
      v12 = @"<unknown state>";
    }

    else
    {
      v12 = off_279733680[state];
    }

    v13 = v12;
    *v23 = 138543874;
    *&v23[4] = v9;
    *&v23[12] = 2114;
    *&v23[14] = v11;
    v24 = 2114;
    v25 = v13;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Transitioning state from %{public}@ -> %{public}@", v23, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  self->_state = state;
  switch(state)
  {
    case 5uLL:
      if ([(HMDPrimaryElectionCoordinationAddOn *)selfCopy inPessimisticSecondaryMesh]!= 2)
      {
        goto LABEL_24;
      }

      state = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy state];
      if (state == 4)
      {
        v16 = objc_autoreleasePoolPush();
        v21 = selfCopy;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          *v23 = 138543362;
          *&v23[4] = v19;
          v20 = "%{public}@Staying in secondary mesh state after being in pessimistic secondary mesh";
          goto LABEL_21;
        }
      }

      else
      {
        if (state != 2)
        {
LABEL_23:
          [(HMDPrimaryElectionCoordinationAddOn *)selfCopy setInPessimisticSecondaryMesh:0, *v23];
          goto LABEL_24;
        }

        v16 = objc_autoreleasePoolPush();
        v17 = selfCopy;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          *v23 = 138543362;
          *&v23[4] = v19;
          v20 = "%{public}@Becoming primary after pinging in pessimistic secondary mesh";
LABEL_21:
          _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, v20, v23, 0xCu);
        }
      }

      objc_autoreleasePoolPop(v16);
      goto LABEL_23;
    case 4uLL:
LABEL_24:
      [(HMDPrimaryElectionCoordinationAddOn *)selfCopy _stopSecondaryMeshTimer];
      break;
    case 1uLL:
      dispatch_assert_queue_V2(self->_queue);
      findPrimaryMeshOperation = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy findPrimaryMeshOperation];
      [(HMDPrimaryElectionCoordinationAddOn *)selfCopy setFindPrimaryMeshOperation:0];
      [(HMDPrimaryElectionCoordinationAddOn *)selfCopy setFindPrimaryMeshFuture:0];
      [findPrimaryMeshOperation cancel];

      break;
  }

LABEL_25:
  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)residentIsPartOfTheCurrentMesh:(id)mesh
{
  queue = self->_queue;
  meshCopy = mesh;
  dispatch_assert_queue_V2(queue);
  v6 = [(HMDPrimaryElectionCoordinationAddOn *)self meshNodeForResident:meshCopy];

  return v6 != 0;
}

- (void)primaryResidentChanged:(id)changed previousResidentDevice:(id)device
{
  changedCopy = changed;
  deviceCopy = device;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__HMDPrimaryElectionCoordinationAddOn_primaryResidentChanged_previousResidentDevice___block_invoke;
  block[3] = &unk_279734960;
  v12 = changedCopy;
  selfCopy = self;
  v14 = deviceCopy;
  v9 = deviceCopy;
  v10 = changedCopy;
  dispatch_async(queue, block);
}

void __85__HMDPrimaryElectionCoordinationAddOn_primaryResidentChanged_previousResidentDevice___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    v4 = [v2 state];
    if ([*(a1 + 32) isEqual:*(a1 + 48)])
    {
      v5 = v4 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = *(a1 + 40);
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v10 = *(a1 + 32);
        v24 = 138543618;
        v25 = v9;
        v26 = 2112;
        v27 = v10;
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling new primary resident: %@", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
      if ([(HMDPrimaryElectionCoordinationAddOn *)*(a1 + 40) _doesLocalMeshContainPrimaryResident:?])
      {
        v11 = 2;
      }

      else
      {
        v11 = 4;
      }

      if (v11 != v4)
      {
        [*(a1 + 40) setState:?];
        if ([*(*(a1 + 40) + 8) isLeader])
        {
          v12 = objc_autoreleasePoolPush();
          v13 = *(a1 + 40);
          v14 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = HMFGetLogIdentifier();
            v16 = [*(a1 + 40) state];
            if (v16 > 5)
            {
              v17 = @"<unknown state>";
            }

            else
            {
              v17 = off_279733680[v16];
            }

            v22 = v17;
            v24 = 138543618;
            v25 = v15;
            v26 = 2112;
            v27 = v22;
            _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Received a primary resident change while we are the leader in state: %@.", &v24, 0x16u);
          }

          objc_autoreleasePoolPop(v12);
          [(HMDPrimaryElectionCoordinationAddOn *)*(a1 + 40) _didBecomeLeaderAndPerformElection:?];
        }
      }
    }
  }

  else if ([v2[1] isLeader] && objc_msgSend(*(a1 + 40), "state") == 2)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 40);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v21;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Primary resident was set to nil, calling an election", &v24, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    [*(a1 + 40) performElection];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)performElection
{
  v26 = *MEMORY[0x277D85DE8];
  meshNodes = [(HMDLocalElectionMeshController *)self->_meshController meshNodes];
  v4 = [meshNodes count];

  if ([(HMDPrimaryElectionCoordinationAddOn *)self residentCountDuringLastElection]< 2 || v4)
  {
    v17 = *MEMORY[0x277D85DE8];

    [(HMDPrimaryElectionCoordinationAddOn *)self resumeDebounceWithInterval:?];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v20 = 138543874;
      v21 = v8;
      v22 = 2048;
      residentCountDuringLastElection = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy residentCountDuringLastElection];
      v24 = 2048;
      v25 = 0;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Rapportd might have died (%lu -> %lu visible devices)", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    context = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy context];
    primaryResidentDevice = [context primaryResidentDevice];
    isCurrentDevice = [primaryResidentDevice isCurrentDevice];

    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
    v14 = HMFGetOSLogHandle();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
    if (isCurrentDevice)
    {
      if (v15)
      {
        v16 = HMFGetLogIdentifier();
        v20 = 138543362;
        v21 = v16;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@We are the current primary resident, using the cautious debounce timeout", &v20, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      [(HMDPrimaryElectionCoordinationAddOn *)v13 resumeDebounceWithInterval:?];
    }

    else
    {
      if (v15)
      {
        v18 = HMFGetLogIdentifier();
        v20 = 138543362;
        v21 = v18;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@We are not the current primary, going to pessimistic secondary mesh state", &v20, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      [(HMDPrimaryElectionCoordinationAddOn *)v13 setState:4];
      [(HMDPrimaryElectionCoordinationAddOn *)v13 setInPessimisticSecondaryMesh:1];
      [(HMDPrimaryElectionCoordinationAddOn *)v13 _startSecondaryMeshTimer];
    }

    v19 = *MEMORY[0x277D85DE8];
  }
}

- (void)stop
{
  v15 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    debugDescriptionForControllerType = [(HMDLocalElectionMeshController *)selfCopy->_meshController debugDescriptionForControllerType];
    v11 = 138543618;
    v12 = v6;
    v13 = 2114;
    v14 = debugDescriptionForControllerType;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Stopping mesh controller with type: %{public}@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  debounceTimer = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy debounceTimer];
  [debounceTimer suspend];

  pingTimer = [(HMDPrimaryElectionCoordinationAddOn *)selfCopy pingTimer];
  [pingTimer suspend];

  [(HMDPrimaryElectionCoordinationAddOn *)selfCopy _stopSecondaryMeshTimer];
  [(HMDLocalElectionMeshController *)selfCopy->_meshController stop];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v20 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = MEMORY[0x277CCACA8];
  context = [(HMDPrimaryElectionCoordinationAddOn *)self context];
  home = [context home];
  uuid = [home uuid];
  v7 = [v3 stringWithFormat:@"%@.%@", @"com.apple.HomeKit", uuid];

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    debugDescriptionForControllerType = [(HMDLocalElectionMeshController *)selfCopy->_meshController debugDescriptionForControllerType];
    *buf = 138543874;
    v15 = v11;
    v16 = 2114;
    v17 = debugDescriptionForControllerType;
    v18 = 2114;
    v19 = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Starting mesh controller with type: %{public}@, name: %{public}@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMDLocalElectionMeshController *)selfCopy->_meshController startMeshWithName:v7];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)registerForMessages
{
  v21[2] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  context = [(HMDPrimaryElectionCoordinationAddOn *)self context];
  messageDispatcher = [context messageDispatcher];
  home = [context home];
  v6 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
  [v6 setRequiresSecureMessage:1];
  [v6 setRequiresAccountMessage:1];
  v7 = [v6 copy];
  v8 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:3 remoteAccessRequired:0];
  v21[0] = v7;
  v21[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  [messageDispatcher registerForMessage:@"mesh.requestCapabilities" receiver:self policies:v9 selector:sel_handleDeviceCapabilitiesRequest_];

  v20[0] = v7;
  v20[1] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  [messageDispatcher registerForMessage:@"mesh.requestCurrentPrimary" receiver:self policies:v10 selector:sel_handleCurrentPrimaryRequest_];

  v19[0] = v7;
  v19[1] = v8;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  [messageDispatcher registerForMessage:@"mesh.currentPrimaryUpdate" receiver:self policies:v11 selector:sel_handleCurrentPrimaryNotification_];

  if (isInternalBuild())
  {
    v18[0] = v7;
    v18[1] = v8;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    [messageDispatcher registerForMessage:@"mesh.setPreferredPrimary.debug" receiver:self policies:v12 selector:sel_handleSetPreferredPrimaryDebugRequest_];
  }

  v13 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
  [v13 setRequiresSecureMessage:1];
  [v6 setRequiresAccountMessage:1];
  [v13 setRoles:{objc_msgSend(v13, "roles") | 4}];
  v14 = [v13 copy];
  v17[0] = v14;
  v17[1] = v8;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  [messageDispatcher registerForMessage:@"mesh.meshInformationRequest" receiver:self policies:v15 selector:sel_handleMeshInformationRequest_];

  v16 = *MEMORY[0x277D85DE8];
}

- (HMDPrimaryElectionCoordinationAddOn)initWithContext:(id)context meshController:(id)controller dataSource:(id)source
{
  contextCopy = context;
  controllerCopy = controller;
  sourceCopy = source;
  v32.receiver = self;
  v32.super_class = HMDPrimaryElectionCoordinationAddOn;
  v11 = [(HMDPrimaryElectionCoordinationAddOn *)&v32 init];
  objc_storeWeak(v11 + 10, contextCopy);
  queue = [contextCopy queue];
  v13 = *(v11 + 2);
  *(v11 + 2) = queue;

  v14 = [objc_alloc(MEMORY[0x277D0F7A8]) initWithQueue:*(v11 + 2)];
  v15 = *(v11 + 17);
  *(v11 + 17) = v14;

  if (controllerCopy)
  {
    v16 = controllerCopy;
    v17 = *(v11 + 1);
    *(v11 + 1) = v16;
  }

  else
  {
    v18 = *(v11 + 2);
    v19 = [[HMDCoordinationLocalElectionMeshController alloc] initWithQueue:v18];

    v17 = *(v11 + 1);
    *(v11 + 1) = v19;
  }

  [*(v11 + 1) setDelegate:v11];
  objc_storeStrong(v11 + 11, source);
  v20 = [(HMDPrimaryElectionCoordinationAddOn *)v11 _createDebounceTimerWithInterval:?];
  v21 = *(v11 + 6);
  *(v11 + 6) = v20;

  [*(v11 + 6) setDelegate:v11];
  [*(v11 + 6) setDelegateQueue:*(v11 + 2)];
  remoteDeviceMonitor = [sourceCopy remoteDeviceMonitor];
  v23 = remoteDeviceMonitor;
  if (remoteDeviceMonitor)
  {
    v24 = remoteDeviceMonitor;
    messageDispatcher = *(v11 + 16);
    *(v11 + 16) = v24;
  }

  else
  {
    messageDispatcher = [contextCopy messageDispatcher];
    secureRemoteTransport = [messageDispatcher secureRemoteTransport];
    deviceMonitor = [secureRemoteTransport deviceMonitor];
    v28 = *(v11 + 16);
    *(v11 + 16) = deviceMonitor;
  }

  *(v11 + 5) = 0;
  v29 = [MEMORY[0x277CBEB98] set];
  v30 = *(v11 + 22);
  *(v11 + 22) = v29;

  v11[24] = 0;
  *(v11 + 152) = xmmword_253D490B0;

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t119 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t119, &__block_literal_global_99);
  }

  v3 = logCategory__hmf_once_v120;

  return v3;
}

uint64_t __50__HMDPrimaryElectionCoordinationAddOn_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v120;
  logCategory__hmf_once_v120 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end
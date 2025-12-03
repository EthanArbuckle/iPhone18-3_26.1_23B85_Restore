@interface HMDHomeActivityStateSchedule
+ (id)logCategory;
- (BOOL)isEqual:(id)equal;
- (HMDHome)home;
- (HMDHomeActivityStateSchedule)initWithActivityState:(unint64_t)state;
- (HMDHomeActivityStateScheduleDelegate)delegate;
- (NSArray)scheduleEntries;
- (id)_relayMessageToPrimaryResident:(id)resident inContext:(id)context;
- (id)_scheduleEntriesFromPayload:(id)payload;
- (id)endDateIfActiveScheduleEntry;
- (id)nextStartDate;
- (void)_handleUpdateScheduleEntriesMessage:(id)message;
- (void)_registerForMessages;
- (void)_relayOrHandleMessage:(id)message inContext:(id)context then:(id)then;
- (void)configureWithDataSource:(id)source;
- (void)encodeWithCoder:(id)coder;
- (void)notifyObserversOfHomeActivityStateScheduleUpdate;
- (void)setScheduleEntries:(id)entries;
@end

@implementation HMDHomeActivityStateSchedule

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (HMDHomeActivityStateScheduleDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(HMDHomeActivityStateSchedule *)self uuid];
  uUIDString = [uuid UUIDString];
  [coderCopy encodeObject:uUIDString forKey:*MEMORY[0x277CCFDF8]];

  scheduleEntries = [(HMDHomeActivityStateSchedule *)self scheduleEntries];
  [coderCopy encodeObject:scheduleEntries forKey:*MEMORY[0x277CCFDE8]];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeActivityStateSchedule state](self, "state")}];
  [coderCopy encodeObject:v8 forKey:*MEMORY[0x277CCFDE0]];

  home = [(HMDHomeActivityStateSchedule *)self home];
  [coderCopy encodeObject:home forKey:@"home"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;

      uuid = [(HMDHomeActivityStateSchedule *)self uuid];
      uuid2 = [(HMDHomeActivityStateSchedule *)v7 uuid];

      v10 = [uuid isEqual:uuid2];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)_handleUpdateScheduleEntriesMessage:(id)message
{
  v27 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  messagePayload = [messageCopy messagePayload];
  v6 = [(HMDHomeActivityStateSchedule *)self _scheduleEntriesFromPayload:messagePayload];

  if (v6)
  {
    v7 = [MEMORY[0x277CD1A70] sortedScheduleEntries:v6];
    if ([(HMDHomeActivityStateSchedule *)self _validateScheduleEntries:v7])
    {
      workContext = [(HMDHomeActivityStateSchedule *)self workContext];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __68__HMDHomeActivityStateSchedule__handleUpdateScheduleEntriesMessage___block_invoke;
      v19[3] = &unk_27867C6C8;
      v20 = v7;
      selfCopy = self;
      v22 = messageCopy;
      [(HMDHomeActivityStateSchedule *)self _relayOrHandleMessage:v22 inContext:workContext then:v19];

      v9 = v20;
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543618;
        v24 = v17;
        v25 = 2112;
        v26 = v7;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to validate schedule entries: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      [messageCopy respondWithError:v9];
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Ignoring the set schedule entries message because the schedules entries are nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [messageCopy respondWithError:v7];
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __68__HMDHomeActivityStateSchedule__handleUpdateScheduleEntriesMessage___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) scheduleEntries];
  v6 = [v4 isEqual:v5];

  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 40);
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) scheduleEntries];
      v20 = 138543618;
      v21 = v11;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Schedule Entries are already %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 48) respondWithSuccess];
  }

  else
  {
    if (v10)
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(a1 + 32);
      v20 = 138543618;
      v21 = v13;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Setting schedule entries to: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 40) setScheduleEntries:*(a1 + 32)];
    [*(a1 + 40) notifyObserversOfHomeActivityStateScheduleUpdate];
    v15 = [*(a1 + 40) home];
    v16 = [v15 homeManager];
    v17 = [*(a1 + 40) uuid];
    [v16 updateGenerationCounterWithReason:@"Home Activity State Schedule Schedule Entries Updated" sourceUUID:v17 shouldNotifyClients:1];
  }

  v18 = *MEMORY[0x277D85DE8];
  return 1;
}

- (NSArray)scheduleEntries
{
  os_unfair_lock_lock_with_options();
  v3 = self->_scheduleEntries;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setScheduleEntries:(id)entries
{
  entriesCopy = entries;
  os_unfair_lock_lock_with_options();
  scheduleEntries = self->_scheduleEntries;
  self->_scheduleEntries = entriesCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)notifyObserversOfHomeActivityStateScheduleUpdate
{
  delegate = [(HMDHomeActivityStateSchedule *)self delegate];
  dataSource = [(HMDHomeActivityStateSchedule *)self dataSource];
  queue = [dataSource queue];

  if (objc_opt_respondsToSelector())
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__HMDHomeActivityStateSchedule_notifyObserversOfHomeActivityStateScheduleUpdate__block_invoke;
    block[3] = &unk_27868A728;
    v7 = delegate;
    dispatch_async(queue, block);
  }
}

- (id)_scheduleEntriesFromPayload:(id)payload
{
  v36 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  array = [MEMORY[0x277CBEB18] array];
  [payloadCopy hmf_arrayForKey:*MEMORY[0x277CCFDF0]];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = v30 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v28 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v27 + 1) + 8 * v9);
      objc_opt_class();
      v11 = (objc_opt_isKindOfClass() & 1) != 0 ? v10 : 0;
      v12 = v11;

      if (!v12)
      {
        break;
      }

      v13 = [objc_alloc(MEMORY[0x277CD1F28]) initWithDictionary:v12];
      if (!v13)
      {
        v20 = objc_autoreleasePoolPush();
        selfCopy = self;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = HMFGetLogIdentifier();
          *buf = 138543618;
          v32 = v23;
          v33 = 2112;
          v34 = v12;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to get schedule entry from serialized schedule entry %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v20);
LABEL_20:

        v15 = 0;
        goto LABEL_21;
      }

      v14 = v13;
      [array addObject:v13];

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }

    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v19;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unable to serialize schedule entry from payload", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    goto LABEL_20;
  }

LABEL_13:

  v15 = [array copy];
LABEL_21:

  v24 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_relayMessageToPrimaryResident:(id)resident inContext:(id)context
{
  v38 = *MEMORY[0x277D85DE8];
  residentCopy = resident;
  contextCopy = context;
  home = [(HMDHomeActivityStateSchedule *)self home];
  if (([home hasAnyResident] & 1) == 0)
  {
    v11 = MEMORY[0x277D0F7C0];
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48 description:@"This operation requires a resident" reason:0 suggestion:0];
    goto LABEL_6;
  }

  administratorHandler = [home administratorHandler];
  shouldRelayMessages = [administratorHandler shouldRelayMessages];

  if (shouldRelayMessages)
  {
    if ([residentCopy isRemote])
    {
      v11 = MEMORY[0x277D0F7C0];
      v12 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3202];
LABEL_6:
      v13 = v12;
      futureWithNoValue = [v11 futureWithError:v12];

      goto LABEL_11;
    }

    v15 = [residentCopy mutableCopy];
    identifier = [residentCopy identifier];
    [v15 setIdentifier:identifier];

    [v15 setSecureRemote:1];
    v17 = [HMDRemoteHomeMessageDestination alloc];
    destination = [residentCopy destination];
    target = [destination target];
    uuid = [home uuid];
    v21 = [(HMDRemoteHomeMessageDestination *)v17 initWithTarget:target homeUUID:uuid];
    [v15 setDestination:v21];

    [v15 setResponseHandler:0];
    v22 = objc_autoreleasePoolPush();
    selfCopy = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      identifier2 = [residentCopy identifier];
      *buf = 138543618;
      v35 = v25;
      v36 = 2114;
      v37 = identifier2;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@(RequestID: %{public}@) Relaying to the primary resident", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    msgDispatcher = [(HMDHomeActivityStateSchedule *)selfCopy msgDispatcher];
    v28 = [v15 copy];
    v29 = [msgDispatcher sendMessageExpectingResponse:v28];

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __73__HMDHomeActivityStateSchedule__relayMessageToPrimaryResident_inContext___block_invoke;
    v32[3] = &unk_2786882F0;
    v32[4] = selfCopy;
    v33 = residentCopy;
    futureWithNoValue = [v29 inContext:contextCopy recover:v32];
  }

  else
  {
    futureWithNoValue = [MEMORY[0x277D0F7C0] futureWithNoValue];
  }

LABEL_11:

  v30 = *MEMORY[0x277D85DE8];

  return futureWithNoValue;
}

uint64_t __73__HMDHomeActivityStateSchedule__relayMessageToPrimaryResident_inContext___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) identifier];
    v14 = 138543874;
    v15 = v7;
    v16 = 2114;
    v17 = v8;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@(RequestID: %{public}@) Relayed request failed with error: %@", &v14, 0x20u);
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

- (void)_relayOrHandleMessage:(id)message inContext:(id)context then:(id)then
{
  thenCopy = then;
  contextCopy = context;
  messageCopy = message;
  v12 = [(HMDHomeActivityStateSchedule *)self _relayMessageToPrimaryResident:messageCopy inContext:contextCopy];
  v11 = [v12 inContext:contextCopy then:thenCopy];

  [messageCopy respondWithOutcomeOf:v11];
}

- (void)_registerForMessages
{
  v18 = *MEMORY[0x277D85DE8];
  home = [(HMDHomeActivityStateSchedule *)self home];
  if (home)
  {
    msgDispatcher = [(HMDHomeActivityStateSchedule *)self msgDispatcher];
    v5 = *MEMORY[0x277CCFE00];
    v6 = +[HMDRemoteMessagePolicy defaultSecurePrimaryResidentPolicy];
    v15[0] = v6;
    v7 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:4 remoteAccessRequired:0];
    v15[1] = v7;
    v8 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v15[2] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
    [msgDispatcher registerForMessage:v5 receiver:self policies:v9 selector:sel__handleUpdateScheduleEntriesMessage_];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Not going to register for messages as home is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)nextStartDate
{
  v30 = *MEMORY[0x277D85DE8];
  scheduleEntries = [(HMDHomeActivityStateSchedule *)self scheduleEntries];
  v4 = [scheduleEntries count];

  if (v4)
  {
    dataSource = [(HMDHomeActivityStateSchedule *)self dataSource];
    currentDate = [dataSource currentDate];

    scheduleEntries2 = [(HMDHomeActivityStateSchedule *)self scheduleEntries];
    firstObject = [scheduleEntries2 firstObject];

    gregorian = [(HMDHomeActivityStateSchedule *)self gregorian];
    v24 = firstObject;
    start = [firstObject start];
    v11 = [gregorian nextDateAfterDate:currentDate matchingComponents:start options:0];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    scheduleEntries3 = [(HMDHomeActivityStateSchedule *)self scheduleEntries];
    v13 = [scheduleEntries3 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(scheduleEntries3);
          }

          v17 = *(*(&v25 + 1) + 8 * i);
          gregorian2 = [(HMDHomeActivityStateSchedule *)self gregorian];
          start2 = [v17 start];
          v20 = [gregorian2 nextDateAfterDate:currentDate matchingComponents:start2 options:0];

          if ([v20 compare:v11] == -1)
          {
            v21 = v20;

            v11 = v21;
          }
        }

        v14 = [scheduleEntries3 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v11 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)endDateIfActiveScheduleEntry
{
  v26 = *MEMORY[0x277D85DE8];
  scheduleEntries = [(HMDHomeActivityStateSchedule *)self scheduleEntries];
  v4 = [scheduleEntries count];

  if (v4)
  {
    dataSource = [(HMDHomeActivityStateSchedule *)self dataSource];
    currentDate = [dataSource currentDate];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    scheduleEntries2 = [(HMDHomeActivityStateSchedule *)self scheduleEntries];
    v8 = [scheduleEntries2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(scheduleEntries2);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          gregorian = [(HMDHomeActivityStateSchedule *)self gregorian];
          start = [v12 start];
          v15 = [gregorian nextDateAfterDate:currentDate matchingComponents:start options:0];

          gregorian2 = [(HMDHomeActivityStateSchedule *)self gregorian];
          v17 = [v12 end];
          v18 = [gregorian2 nextDateAfterDate:currentDate matchingComponents:v17 options:0];

          if ([v18 compare:v15] == -1)
          {

            goto LABEL_12;
          }
        }

        v9 = [scheduleEntries2 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v18 = 0;
LABEL_12:
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)configureWithDataSource:(id)source
{
  v32 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    messageDispatcher = [(HMDHomeActivityStateManagerDataSource *)sourceCopy messageDispatcher];
    home = [(HMDHomeActivityStateManagerDataSource *)sourceCopy home];
    queue = [(HMDHomeActivityStateManagerDataSource *)sourceCopy queue];
    v24 = 138544130;
    v25 = v8;
    v26 = 2112;
    v27 = messageDispatcher;
    v28 = 2112;
    v29 = home;
    v30 = 2112;
    v31 = queue;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Configuring Home Activity State Schedule with message dispatcher: %@, home: %@, queue: %@", &v24, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  dataSource = selfCopy->_dataSource;
  selfCopy->_dataSource = sourceCopy;
  v13 = sourceCopy;

  messageDispatcher2 = [(HMDHomeActivityStateManagerDataSource *)v13 messageDispatcher];
  msgDispatcher = selfCopy->_msgDispatcher;
  selfCopy->_msgDispatcher = messageDispatcher2;

  home2 = [(HMDHomeActivityStateManagerDataSource *)v13 home];
  objc_storeWeak(&selfCopy->_home, home2);

  queue2 = [(HMDHomeActivityStateManagerDataSource *)v13 queue];
  workQueue = selfCopy->_workQueue;
  selfCopy->_workQueue = queue2;

  v19 = objc_alloc(MEMORY[0x277D0F7A8]);
  queue3 = [(HMDHomeActivityStateManagerDataSource *)v13 queue];
  v21 = [v19 initWithQueue:queue3];
  workContext = selfCopy->_workContext;
  selfCopy->_workContext = v21;

  [(HMDHomeActivityStateSchedule *)selfCopy _registerForMessages];
  v23 = *MEMORY[0x277D85DE8];
}

- (HMDHomeActivityStateSchedule)initWithActivityState:(unint64_t)state
{
  v12.receiver = self;
  v12.super_class = HMDHomeActivityStateSchedule;
  v4 = [(HMDHomeActivityStateSchedule *)&v12 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
    gregorian = v4->_gregorian;
    v4->_gregorian = v5;

    uUID = [MEMORY[0x277CCAD78] UUID];
    uuid = v4->_uuid;
    v4->_uuid = uUID;

    array = [MEMORY[0x277CBEA60] array];
    scheduleEntries = v4->_scheduleEntries;
    v4->_scheduleEntries = array;

    v4->_state = state;
  }

  return v4;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t14_165284 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t14_165284, &__block_literal_global_165285);
  }

  v3 = logCategory__hmf_once_v15_165286;

  return v3;
}

void __43__HMDHomeActivityStateSchedule_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v15_165286;
  logCategory__hmf_once_v15_165286 = v1;
}

@end
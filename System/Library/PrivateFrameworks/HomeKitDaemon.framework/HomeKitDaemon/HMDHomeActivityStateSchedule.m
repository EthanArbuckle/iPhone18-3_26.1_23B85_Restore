@interface HMDHomeActivityStateSchedule
+ (id)logCategory;
- (BOOL)isEqual:(id)a3;
- (HMDHome)home;
- (HMDHomeActivityStateSchedule)initWithActivityState:(unint64_t)a3;
- (HMDHomeActivityStateScheduleDelegate)delegate;
- (NSArray)scheduleEntries;
- (id)_relayMessageToPrimaryResident:(id)a3 inContext:(id)a4;
- (id)_scheduleEntriesFromPayload:(id)a3;
- (id)endDateIfActiveScheduleEntry;
- (id)nextStartDate;
- (void)_handleUpdateScheduleEntriesMessage:(id)a3;
- (void)_registerForMessages;
- (void)_relayOrHandleMessage:(id)a3 inContext:(id)a4 then:(id)a5;
- (void)configureWithDataSource:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)notifyObserversOfHomeActivityStateScheduleUpdate;
- (void)setScheduleEntries:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomeActivityStateSchedule *)self uuid];
  v6 = [v5 UUIDString];
  [v4 encodeObject:v6 forKey:*MEMORY[0x277CCFDF8]];

  v7 = [(HMDHomeActivityStateSchedule *)self scheduleEntries];
  [v4 encodeObject:v7 forKey:*MEMORY[0x277CCFDE8]];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeActivityStateSchedule state](self, "state")}];
  [v4 encodeObject:v8 forKey:*MEMORY[0x277CCFDE0]];

  v9 = [(HMDHomeActivityStateSchedule *)self home];
  [v4 encodeObject:v9 forKey:@"home"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

      v8 = [(HMDHomeActivityStateSchedule *)self uuid];
      v9 = [(HMDHomeActivityStateSchedule *)v7 uuid];

      v10 = [v8 isEqual:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)_handleUpdateScheduleEntriesMessage:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 messagePayload];
  v6 = [(HMDHomeActivityStateSchedule *)self _scheduleEntriesFromPayload:v5];

  if (v6)
  {
    v7 = [MEMORY[0x277CD1A70] sortedScheduleEntries:v6];
    if ([(HMDHomeActivityStateSchedule *)self _validateScheduleEntries:v7])
    {
      v8 = [(HMDHomeActivityStateSchedule *)self workContext];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __68__HMDHomeActivityStateSchedule__handleUpdateScheduleEntriesMessage___block_invoke;
      v19[3] = &unk_27867C6C8;
      v20 = v7;
      v21 = self;
      v22 = v4;
      [(HMDHomeActivityStateSchedule *)self _relayOrHandleMessage:v22 inContext:v8 then:v19];

      v9 = v20;
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = self;
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
      [v4 respondWithError:v9];
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
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
    [v4 respondWithError:v7];
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

- (void)setScheduleEntries:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  scheduleEntries = self->_scheduleEntries;
  self->_scheduleEntries = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)notifyObserversOfHomeActivityStateScheduleUpdate
{
  v3 = [(HMDHomeActivityStateSchedule *)self delegate];
  v4 = [(HMDHomeActivityStateSchedule *)self dataSource];
  v5 = [v4 queue];

  if (objc_opt_respondsToSelector())
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__HMDHomeActivityStateSchedule_notifyObserversOfHomeActivityStateScheduleUpdate__block_invoke;
    block[3] = &unk_27868A728;
    v7 = v3;
    dispatch_async(v5, block);
  }
}

- (id)_scheduleEntriesFromPayload:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  [v3 hmf_arrayForKey:*MEMORY[0x277CCFDF0]];
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
        v21 = self;
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
      [v4 addObject:v13];

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
    v17 = self;
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

  v15 = [v4 copy];
LABEL_21:

  v24 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_relayMessageToPrimaryResident:(id)a3 inContext:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeActivityStateSchedule *)self home];
  if (([v8 hasAnyResident] & 1) == 0)
  {
    v11 = MEMORY[0x277D0F7C0];
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48 description:@"This operation requires a resident" reason:0 suggestion:0];
    goto LABEL_6;
  }

  v9 = [v8 administratorHandler];
  v10 = [v9 shouldRelayMessages];

  if (v10)
  {
    if ([v6 isRemote])
    {
      v11 = MEMORY[0x277D0F7C0];
      v12 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3202];
LABEL_6:
      v13 = v12;
      v14 = [v11 futureWithError:v12];

      goto LABEL_11;
    }

    v15 = [v6 mutableCopy];
    v16 = [v6 identifier];
    [v15 setIdentifier:v16];

    [v15 setSecureRemote:1];
    v17 = [HMDRemoteHomeMessageDestination alloc];
    v18 = [v6 destination];
    v19 = [v18 target];
    v20 = [v8 uuid];
    v21 = [(HMDRemoteHomeMessageDestination *)v17 initWithTarget:v19 homeUUID:v20];
    [v15 setDestination:v21];

    [v15 setResponseHandler:0];
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [v6 identifier];
      *buf = 138543618;
      v35 = v25;
      v36 = 2114;
      v37 = v26;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@(RequestID: %{public}@) Relaying to the primary resident", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v27 = [(HMDHomeActivityStateSchedule *)v23 msgDispatcher];
    v28 = [v15 copy];
    v29 = [v27 sendMessageExpectingResponse:v28];

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __73__HMDHomeActivityStateSchedule__relayMessageToPrimaryResident_inContext___block_invoke;
    v32[3] = &unk_2786882F0;
    v32[4] = v23;
    v33 = v6;
    v14 = [v29 inContext:v7 recover:v32];
  }

  else
  {
    v14 = [MEMORY[0x277D0F7C0] futureWithNoValue];
  }

LABEL_11:

  v30 = *MEMORY[0x277D85DE8];

  return v14;
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

- (void)_relayOrHandleMessage:(id)a3 inContext:(id)a4 then:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = [(HMDHomeActivityStateSchedule *)self _relayMessageToPrimaryResident:v10 inContext:v9];
  v11 = [v12 inContext:v9 then:v8];

  [v10 respondWithOutcomeOf:v11];
}

- (void)_registerForMessages
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(HMDHomeActivityStateSchedule *)self home];
  if (v3)
  {
    v4 = [(HMDHomeActivityStateSchedule *)self msgDispatcher];
    v5 = *MEMORY[0x277CCFE00];
    v6 = +[HMDRemoteMessagePolicy defaultSecurePrimaryResidentPolicy];
    v15[0] = v6;
    v7 = [HMDUserMessagePolicy userMessagePolicyWithHome:v3 userPrivilege:4 remoteAccessRequired:0];
    v15[1] = v7;
    v8 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v15[2] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
    [v4 registerForMessage:v5 receiver:self policies:v9 selector:sel__handleUpdateScheduleEntriesMessage_];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
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
  v3 = [(HMDHomeActivityStateSchedule *)self scheduleEntries];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(HMDHomeActivityStateSchedule *)self dataSource];
    v6 = [v5 currentDate];

    v7 = [(HMDHomeActivityStateSchedule *)self scheduleEntries];
    v8 = [v7 firstObject];

    v9 = [(HMDHomeActivityStateSchedule *)self gregorian];
    v24 = v8;
    v10 = [v8 start];
    v11 = [v9 nextDateAfterDate:v6 matchingComponents:v10 options:0];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = [(HMDHomeActivityStateSchedule *)self scheduleEntries];
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v25 + 1) + 8 * i);
          v18 = [(HMDHomeActivityStateSchedule *)self gregorian];
          v19 = [v17 start];
          v20 = [v18 nextDateAfterDate:v6 matchingComponents:v19 options:0];

          if ([v20 compare:v11] == -1)
          {
            v21 = v20;

            v11 = v21;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
  v3 = [(HMDHomeActivityStateSchedule *)self scheduleEntries];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(HMDHomeActivityStateSchedule *)self dataSource];
    v6 = [v5 currentDate];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [(HMDHomeActivityStateSchedule *)self scheduleEntries];
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          v13 = [(HMDHomeActivityStateSchedule *)self gregorian];
          v14 = [v12 start];
          v15 = [v13 nextDateAfterDate:v6 matchingComponents:v14 options:0];

          v16 = [(HMDHomeActivityStateSchedule *)self gregorian];
          v17 = [v12 end];
          v18 = [v16 nextDateAfterDate:v6 matchingComponents:v17 options:0];

          if ([v18 compare:v15] == -1)
          {

            goto LABEL_12;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
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

- (void)configureWithDataSource:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(HMDHomeActivityStateManagerDataSource *)v4 messageDispatcher];
    v10 = [(HMDHomeActivityStateManagerDataSource *)v4 home];
    v11 = [(HMDHomeActivityStateManagerDataSource *)v4 queue];
    v24 = 138544130;
    v25 = v8;
    v26 = 2112;
    v27 = v9;
    v28 = 2112;
    v29 = v10;
    v30 = 2112;
    v31 = v11;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Configuring Home Activity State Schedule with message dispatcher: %@, home: %@, queue: %@", &v24, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  dataSource = v6->_dataSource;
  v6->_dataSource = v4;
  v13 = v4;

  v14 = [(HMDHomeActivityStateManagerDataSource *)v13 messageDispatcher];
  msgDispatcher = v6->_msgDispatcher;
  v6->_msgDispatcher = v14;

  v16 = [(HMDHomeActivityStateManagerDataSource *)v13 home];
  objc_storeWeak(&v6->_home, v16);

  v17 = [(HMDHomeActivityStateManagerDataSource *)v13 queue];
  workQueue = v6->_workQueue;
  v6->_workQueue = v17;

  v19 = objc_alloc(MEMORY[0x277D0F7A8]);
  v20 = [(HMDHomeActivityStateManagerDataSource *)v13 queue];
  v21 = [v19 initWithQueue:v20];
  workContext = v6->_workContext;
  v6->_workContext = v21;

  [(HMDHomeActivityStateSchedule *)v6 _registerForMessages];
  v23 = *MEMORY[0x277D85DE8];
}

- (HMDHomeActivityStateSchedule)initWithActivityState:(unint64_t)a3
{
  v12.receiver = self;
  v12.super_class = HMDHomeActivityStateSchedule;
  v4 = [(HMDHomeActivityStateSchedule *)&v12 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
    gregorian = v4->_gregorian;
    v4->_gregorian = v5;

    v7 = [MEMORY[0x277CCAD78] UUID];
    uuid = v4->_uuid;
    v4->_uuid = v7;

    v9 = [MEMORY[0x277CBEA60] array];
    scheduleEntries = v4->_scheduleEntries;
    v4->_scheduleEntries = v9;

    v4->_state = a3;
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
@interface HMDAccessoryPairingProgressStateMap
- (HMDAccessoryPairingProgressStateMap)initWithDate:(id)a3;
- (NSString)lastProgressState;
- (NSString)longestProgressState;
- (double)getTimeDurationForLongestProgressState;
- (void)updateWithProgressState:(id)a3 date:(id)a4;
@end

@implementation HMDAccessoryPairingProgressStateMap

- (double)getTimeDurationForLongestProgressState
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_progressStateMap objectForKey:self->_longestProgressState];

  if (v3)
  {
    v4 = [(NSMutableDictionary *)self->_progressStateMap objectForKey:self->_longestProgressState];
    [v4 doubleValue];
    v6 = v5 * 1000.0;
  }

  else
  {
    v6 = 0.0;
  }

  os_unfair_lock_unlock(&self->_accessoryPairingProgressStateMapLock);
  return v6;
}

- (NSString)lastProgressState
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSString *)self->_lastProgressState copy];
  os_unfair_lock_unlock(&self->_accessoryPairingProgressStateMapLock);

  return v3;
}

- (NSString)longestProgressState
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSString *)self->_longestProgressState copy];
  os_unfair_lock_unlock(&self->_accessoryPairingProgressStateMapLock);

  return v3;
}

- (void)updateWithProgressState:(id)a3 date:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock_with_options();
  [v7 timeIntervalSinceDate:self->_lastProgressStateEventTime];
  v9 = v8;
  if (v6)
  {
    v10 = [(HMDAccessoryPairingProgressStateMap *)self progressStateMap];
    [v10 setObject:&unk_286627DA8 forKey:v6];

    if (self->_lastProgressState)
    {
      v11 = [(HMDAccessoryPairingProgressStateMap *)self progressStateMap];
      v12 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
      [v11 setObject:v12 forKey:self->_lastProgressState];
    }

    [(HMDAccessoryPairingProgressStateMap *)self setLastProgressState:v6];
    [(HMDAccessoryPairingProgressStateMap *)self setLastProgressStateEventTime:v7];
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = HMFGetLogIdentifier();
      progressStateMap = v14->_progressStateMap;
      v36 = 138543874;
      v37 = v16;
      v38 = 2112;
      v39 = v6;
      v40 = 2112;
      v41 = progressStateMap;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Successfully added progress state: %@ to the pairing progress state map: %@", &v36, 0x20u);
    }

LABEL_9:

    objc_autoreleasePoolPop(v13);
    v23 = [(NSMutableDictionary *)self->_progressStateMap keysSortedByValueUsingComparator:&__block_literal_global_38367];
    v24 = [v23 count];
    if (v24)
    {
      v25 = [v23 objectAtIndexedSubscript:0];
    }

    else
    {
      v25 = &stru_286509E58;
    }

    [(HMDAccessoryPairingProgressStateMap *)self setLongestProgressState:v25];
    if (v24)
    {
    }

    v26 = objc_autoreleasePoolPush();
    v27 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v29 = HMFGetLogIdentifier();
      longestProgressState = v27->_longestProgressState;
      v36 = 138543618;
      v37 = v29;
      v38 = 2112;
      v39 = longestProgressState;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_DEBUG, "%{public}@Updated longest progress state to: %@", &v36, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    goto LABEL_17;
  }

  if (self->_lastProgressState)
  {
    v18 = [(HMDAccessoryPairingProgressStateMap *)self progressStateMap];
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
    [v18 setObject:v19 forKey:self->_lastProgressState];

    v13 = objc_autoreleasePoolPush();
    v20 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
      v36 = 138543618;
      v37 = v21;
      v38 = 2112;
      v39 = v22;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Successfully updated duration of last progress state to: %@", &v36, 0x16u);
    }

    goto LABEL_9;
  }

  v32 = objc_autoreleasePoolPush();
  v33 = self;
  v34 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    v35 = HMFGetLogIdentifier();
    v36 = 138543362;
    v37 = v35;
    _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_DEBUG, "%{public}@No previous state information to update last state duration", &v36, 0xCu);
  }

  objc_autoreleasePoolPop(v32);
LABEL_17:
  os_unfair_lock_unlock(&self->_accessoryPairingProgressStateMapLock);

  v31 = *MEMORY[0x277D85DE8];
}

- (HMDAccessoryPairingProgressStateMap)initWithDate:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = HMDAccessoryPairingProgressStateMap;
  v6 = [(HMDAccessoryPairingProgressStateMap *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    progressStateMap = v6->_progressStateMap;
    v6->_progressStateMap = v7;

    objc_storeStrong(&v6->_lastProgressStateEventTime, a3);
  }

  return v6;
}

@end
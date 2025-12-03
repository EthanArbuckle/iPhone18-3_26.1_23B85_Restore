@interface HMMStateTracker
- (NSArray)states;
- (id)initAutoStopPreviousState:(BOOL)state;
- (void)_exitState:(id)state exitTime:(unint64_t)time exitData:(id)data;
- (void)endWithTime:(unint64_t)time;
- (void)enterState:(id)state enterTime:(unint64_t)time enterData:(id)data;
- (void)exitState:(id)state exitTime:(unint64_t)time exitData:(id)data;
- (void)updateStateDuration:(unint64_t)duration;
@end

@implementation HMMStateTracker

- (NSArray)states
{
  v2 = [(NSMutableArray *)self->_closedStates copy];

  return v2;
}

- (void)updateStateDuration:(unint64_t)duration
{
  if ([(HMMStateTracker *)self stateEntryTransitionTime]< duration)
  {
    self->_totalStateDuration += duration - [(HMMStateTracker *)self stateEntryTransitionTime];
  }
}

- (void)_exitState:(id)state exitTime:(unint64_t)time exitData:(id)data
{
  stateCopy = state;
  [stateCopy exitTime:time exitData:data];
  closedStates = [(HMMStateTracker *)self closedStates];
  [closedStates addObject:stateCopy];

  duration = [stateCopy duration];
  if (duration > [(HMMStateTracker *)self longestStateDuration])
  {
    objc_storeStrong(&self->_longestState, state);
    -[HMMStateTracker setLongestStateDuration:](self, "setLongestStateDuration:", [stateCopy duration]);
  }
}

- (void)exitState:(id)state exitTime:(unint64_t)time exitData:(id)data
{
  v24 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  dataCopy = data;
  openStates = [(HMMStateTracker *)self openStates];
  v11 = [openStates objectForKeyedSubscript:stateCopy];

  if (v11)
  {
    [(HMMStateTracker *)self _exitState:v11 exitTime:time exitData:dataCopy];
    openStates2 = [(HMMStateTracker *)self openStates];
    [openStates2 removeObjectForKey:stateCopy];

    openStates3 = [(HMMStateTracker *)self openStates];
    v14 = [openStates3 count];

    if (!v14)
    {
      [(HMMStateTracker *)self updateStateDuration:time];
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v18;
      v22 = 2112;
      v23 = stateCopy;
      _os_log_impl(&dword_22B074000, v17, OS_LOG_TYPE_ERROR, "%{public}@Exiting state %@ that hasn't been entered", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)enterState:(id)state enterTime:(unint64_t)time enterData:(id)data
{
  v34 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  dataCopy = data;
  if (![(HMMStateTracker *)self isStarted])
  {
    [(HMMStateTracker *)self startWithTime:time];
  }

  openStates = [(HMMStateTracker *)self openStates];
  v11 = [openStates count];
  if ([(HMMStateTracker *)self autoStopPreviousState]&& v11)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    allValues = [openStates allValues];
    v13 = [allValues countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      do
      {
        v16 = 0;
        do
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(allValues);
          }

          [(HMMStateTracker *)self _exitState:*(*(&v25 + 1) + 8 * v16++) exitTime:time exitData:0];
        }

        while (v14 != v16);
        v14 = [allValues countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v14);
    }

    [openStates removeAllObjects];
  }

  v17 = [openStates objectForKeyedSubscript:stateCopy];

  if (v17)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v21;
      v31 = 2112;
      v32 = stateCopy;
      _os_log_impl(&dword_22B074000, v20, OS_LOG_TYPE_ERROR, "%{public}@State %@ has already been entered", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
  }

  else
  {
    v22 = [[HMMStateData alloc] initWithName:stateCopy enterTime:time enterData:dataCopy];
    [openStates setObject:v22 forKey:stateCopy];
    v23 = [openStates count];
    if (v11 || !v23)
    {
      if (v11 && !v23)
      {
        [(HMMStateTracker *)self updateStateDuration:time];
      }
    }

    else
    {
      [(HMMStateTracker *)self setStateEntryTransitionTime:time];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)endWithTime:(unint64_t)time
{
  v34 = *MEMORY[0x277D85DE8];
  if (self->_started)
  {
    self->_started = 0;
    if ([(HMMStateTracker *)self startTime]<= time)
    {
      self->_totalDuration = time - [(HMMStateTracker *)self startTime];
    }

    else
    {
      v5 = objc_autoreleasePoolPush();
      selfCopy = self;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = HMFGetLogIdentifier();
        *buf = 138543362;
        v31 = v8;
        _os_log_impl(&dword_22B074000, v7, OS_LOG_TYPE_ERROR, "%{public}@State tracker end time less than start time", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v5);
    }

    openStates = [(HMMStateTracker *)self openStates];
    v15 = [openStates count];

    if (v15)
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      openStates2 = [(HMMStateTracker *)self openStates];
      allValues = [openStates2 allValues];

      v18 = [allValues countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v26;
        do
        {
          v21 = 0;
          do
          {
            if (*v26 != v20)
            {
              objc_enumerationMutation(allValues);
            }

            v22 = *(*(&v25 + 1) + 8 * v21);
            if ([(HMMStateTracker *)self autoStopPreviousState])
            {
              [(HMMStateTracker *)self _exitState:v22 exitTime:time exitData:0];
            }

            else
            {
              [v22 forceExit:time];
              closedStates = [(HMMStateTracker *)self closedStates];
              [closedStates addObject:v22];
            }

            ++v21;
          }

          while (v19 != v21);
          v19 = [allValues countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v19);
      }

      [(HMMStateTracker *)self updateStateDuration:time];
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      states = [(HMMStateTracker *)selfCopy2 states];
      *buf = 138543618;
      v31 = v12;
      v32 = 2112;
      v33 = states;
      _os_log_impl(&dword_22B074000, v11, OS_LOG_TYPE_ERROR, "%{public}@Trying to end a state tracker that is already closed with states %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (id)initAutoStopPreviousState:(BOOL)state
{
  v11.receiver = self;
  v11.super_class = HMMStateTracker;
  v4 = [(HMMStateTracker *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_autoStopPreviousState = state;
    v4->_started = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    openStates = v5->_openStates;
    v5->_openStates = dictionary;

    array = [MEMORY[0x277CBEB18] array];
    closedStates = v5->_closedStates;
    v5->_closedStates = array;
  }

  return v5;
}

@end
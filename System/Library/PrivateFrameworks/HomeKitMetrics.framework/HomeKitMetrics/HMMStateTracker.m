@interface HMMStateTracker
- (NSArray)states;
- (id)initAutoStopPreviousState:(BOOL)a3;
- (void)_exitState:(id)a3 exitTime:(unint64_t)a4 exitData:(id)a5;
- (void)endWithTime:(unint64_t)a3;
- (void)enterState:(id)a3 enterTime:(unint64_t)a4 enterData:(id)a5;
- (void)exitState:(id)a3 exitTime:(unint64_t)a4 exitData:(id)a5;
- (void)updateStateDuration:(unint64_t)a3;
@end

@implementation HMMStateTracker

- (NSArray)states
{
  v2 = [(NSMutableArray *)self->_closedStates copy];

  return v2;
}

- (void)updateStateDuration:(unint64_t)a3
{
  if ([(HMMStateTracker *)self stateEntryTransitionTime]< a3)
  {
    self->_totalStateDuration += a3 - [(HMMStateTracker *)self stateEntryTransitionTime];
  }
}

- (void)_exitState:(id)a3 exitTime:(unint64_t)a4 exitData:(id)a5
{
  v11 = a3;
  [v11 exitTime:a4 exitData:a5];
  v9 = [(HMMStateTracker *)self closedStates];
  [v9 addObject:v11];

  v10 = [v11 duration];
  if (v10 > [(HMMStateTracker *)self longestStateDuration])
  {
    objc_storeStrong(&self->_longestState, a3);
    -[HMMStateTracker setLongestStateDuration:](self, "setLongestStateDuration:", [v11 duration]);
  }
}

- (void)exitState:(id)a3 exitTime:(unint64_t)a4 exitData:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(HMMStateTracker *)self openStates];
  v11 = [v10 objectForKeyedSubscript:v8];

  if (v11)
  {
    [(HMMStateTracker *)self _exitState:v11 exitTime:a4 exitData:v9];
    v12 = [(HMMStateTracker *)self openStates];
    [v12 removeObjectForKey:v8];

    v13 = [(HMMStateTracker *)self openStates];
    v14 = [v13 count];

    if (!v14)
    {
      [(HMMStateTracker *)self updateStateDuration:a4];
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v18;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_22B074000, v17, OS_LOG_TYPE_ERROR, "%{public}@Exiting state %@ that hasn't been entered", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)enterState:(id)a3 enterTime:(unint64_t)a4 enterData:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (![(HMMStateTracker *)self isStarted])
  {
    [(HMMStateTracker *)self startWithTime:a4];
  }

  v10 = [(HMMStateTracker *)self openStates];
  v11 = [v10 count];
  if ([(HMMStateTracker *)self autoStopPreviousState]&& v11)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = [v10 allValues];
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
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
            objc_enumerationMutation(v12);
          }

          [(HMMStateTracker *)self _exitState:*(*(&v25 + 1) + 8 * v16++) exitTime:a4 exitData:0];
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v14);
    }

    [v10 removeAllObjects];
  }

  v17 = [v10 objectForKeyedSubscript:v8];

  if (v17)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v21;
      v31 = 2112;
      v32 = v8;
      _os_log_impl(&dword_22B074000, v20, OS_LOG_TYPE_ERROR, "%{public}@State %@ has already been entered", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
  }

  else
  {
    v22 = [[HMMStateData alloc] initWithName:v8 enterTime:a4 enterData:v9];
    [v10 setObject:v22 forKey:v8];
    v23 = [v10 count];
    if (v11 || !v23)
    {
      if (v11 && !v23)
      {
        [(HMMStateTracker *)self updateStateDuration:a4];
      }
    }

    else
    {
      [(HMMStateTracker *)self setStateEntryTransitionTime:a4];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)endWithTime:(unint64_t)a3
{
  v34 = *MEMORY[0x277D85DE8];
  if (self->_started)
  {
    self->_started = 0;
    if ([(HMMStateTracker *)self startTime]<= a3)
    {
      self->_totalDuration = a3 - [(HMMStateTracker *)self startTime];
    }

    else
    {
      v5 = objc_autoreleasePoolPush();
      v6 = self;
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

    v14 = [(HMMStateTracker *)self openStates];
    v15 = [v14 count];

    if (v15)
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v16 = [(HMMStateTracker *)self openStates];
      v17 = [v16 allValues];

      v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v25 + 1) + 8 * v21);
            if ([(HMMStateTracker *)self autoStopPreviousState])
            {
              [(HMMStateTracker *)self _exitState:v22 exitTime:a3 exitData:0];
            }

            else
            {
              [v22 forceExit:a3];
              v23 = [(HMMStateTracker *)self closedStates];
              [v23 addObject:v22];
            }

            ++v21;
          }

          while (v19 != v21);
          v19 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v19);
      }

      [(HMMStateTracker *)self updateStateDuration:a3];
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [(HMMStateTracker *)v10 states];
      *buf = 138543618;
      v31 = v12;
      v32 = 2112;
      v33 = v13;
      _os_log_impl(&dword_22B074000, v11, OS_LOG_TYPE_ERROR, "%{public}@Trying to end a state tracker that is already closed with states %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (id)initAutoStopPreviousState:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = HMMStateTracker;
  v4 = [(HMMStateTracker *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_autoStopPreviousState = a3;
    v4->_started = 0;
    v6 = [MEMORY[0x277CBEB38] dictionary];
    openStates = v5->_openStates;
    v5->_openStates = v6;

    v8 = [MEMORY[0x277CBEB18] array];
    closedStates = v5->_closedStates;
    v5->_closedStates = v8;
  }

  return v5;
}

@end
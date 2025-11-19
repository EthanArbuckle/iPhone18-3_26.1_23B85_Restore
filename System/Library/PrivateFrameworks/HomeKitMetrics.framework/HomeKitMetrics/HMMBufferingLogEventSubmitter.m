@interface HMMBufferingLogEventSubmitter
- (HMMBufferingLogEventSubmitter)initWithBufferSize:(int64_t)a3;
- (void)processLogEventsWithSubmitter:(id)a3;
- (void)submitLogEvent:(id)a3;
- (void)submitLogEvent:(id)a3 error:(id)a4;
@end

@implementation HMMBufferingLogEventSubmitter

- (void)processLogEventsWithSubmitter:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_bufferedLogEvents;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [v4 submitLogEvent:{*(*(&v12 + 1) + 8 * v8++), v12}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  bufferedLogEvents = self->_bufferedLogEvents;
  self->_bufferedLogEvents = 0;

  submitter = self->_submitter;
  self->_submitter = v4;

  os_unfair_lock_unlock(&self->_lock);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)submitLogEvent:(id)a3 error:(id)a4
{
  v6 = a3;
  [v6 setError:a4];
  [(HMMBufferingLogEventSubmitter *)self submitLogEvent:v6];
}

- (void)submitLogEvent:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  submitter = self->_submitter;
  if (submitter)
  {
    [(HMMLogEventSubmitting *)submitter submitLogEvent:v4];
  }

  else if ([(NSMutableArray *)self->_bufferedLogEvents count]>= self->_bufferSize)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      bufferSize = self->_bufferSize;
      v12 = 138543618;
      v13 = v9;
      v14 = 2048;
      v15 = bufferSize;
      _os_log_impl(&dword_22B074000, v8, OS_LOG_TYPE_ERROR, "%{public}@Log event not buffered. Buffer full, size: %ld", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    [(NSMutableArray *)self->_bufferedLogEvents addObject:v4];
  }

  os_unfair_lock_unlock(&self->_lock);

  v11 = *MEMORY[0x277D85DE8];
}

- (HMMBufferingLogEventSubmitter)initWithBufferSize:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = HMMBufferingLogEventSubmitter;
  v4 = [(HMMBufferingLogEventSubmitter *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_bufferSize = a3;
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:a3];
    bufferedLogEvents = v5->_bufferedLogEvents;
    v5->_bufferedLogEvents = v6;

    submitter = v5->_submitter;
    v5->_submitter = 0;
  }

  return v5;
}

@end
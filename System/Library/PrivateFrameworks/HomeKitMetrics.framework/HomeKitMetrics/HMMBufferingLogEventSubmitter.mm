@interface HMMBufferingLogEventSubmitter
- (HMMBufferingLogEventSubmitter)initWithBufferSize:(int64_t)size;
- (void)processLogEventsWithSubmitter:(id)submitter;
- (void)submitLogEvent:(id)event;
- (void)submitLogEvent:(id)event error:(id)error;
@end

@implementation HMMBufferingLogEventSubmitter

- (void)processLogEventsWithSubmitter:(id)submitter
{
  v17 = *MEMORY[0x277D85DE8];
  submitterCopy = submitter;
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

        [submitterCopy submitLogEvent:{*(*(&v12 + 1) + 8 * v8++), v12}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  bufferedLogEvents = self->_bufferedLogEvents;
  self->_bufferedLogEvents = 0;

  submitter = self->_submitter;
  self->_submitter = submitterCopy;

  os_unfair_lock_unlock(&self->_lock);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)submitLogEvent:(id)event error:(id)error
{
  eventCopy = event;
  [eventCopy setError:error];
  [(HMMBufferingLogEventSubmitter *)self submitLogEvent:eventCopy];
}

- (void)submitLogEvent:(id)event
{
  v16 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  os_unfair_lock_lock_with_options();
  submitter = self->_submitter;
  if (submitter)
  {
    [(HMMLogEventSubmitting *)submitter submitLogEvent:eventCopy];
  }

  else if ([(NSMutableArray *)self->_bufferedLogEvents count]>= self->_bufferSize)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
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
    [(NSMutableArray *)self->_bufferedLogEvents addObject:eventCopy];
  }

  os_unfair_lock_unlock(&self->_lock);

  v11 = *MEMORY[0x277D85DE8];
}

- (HMMBufferingLogEventSubmitter)initWithBufferSize:(int64_t)size
{
  v10.receiver = self;
  v10.super_class = HMMBufferingLogEventSubmitter;
  v4 = [(HMMBufferingLogEventSubmitter *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_bufferSize = size;
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:size];
    bufferedLogEvents = v5->_bufferedLogEvents;
    v5->_bufferedLogEvents = v6;

    submitter = v5->_submitter;
    v5->_submitter = 0;
  }

  return v5;
}

@end
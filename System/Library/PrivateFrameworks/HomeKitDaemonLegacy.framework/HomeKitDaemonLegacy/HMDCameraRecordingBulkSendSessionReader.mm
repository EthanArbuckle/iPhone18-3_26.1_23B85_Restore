@interface HMDCameraRecordingBulkSendSessionReader
+ (id)logCategory;
- (HMDCameraRecordingBulkSendSessionReader)initWithWorkQueue:(id)queue session:(id)session readCallbackTimer:(id)timer logIdentifier:(id)identifier;
- (HMDCameraRecordingBulkSendSessionReader)initWithWorkQueue:(id)queue session:(id)session readTimeout:(double)timeout logIdentifier:(id)identifier;
- (HMDCameraRecordingBulkSendSessionReaderDelegate)delegate;
- (void)_readNextDataChunk;
- (void)_stopWithReason:(void *)reason;
- (void)start;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDCameraRecordingBulkSendSessionReader

- (HMDCameraRecordingBulkSendSessionReaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)timerDidFire:(id)fire
{
  v16 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  if (self)
  {
    Property = objc_getProperty(self, v4, 32, 1);
    dispatch_assert_queue_V2(Property);
    v8 = objc_getProperty(self, v7, 40, 1);
  }

  else
  {
    dispatch_assert_queue_V2(0);
    v8 = 0;
  }

  if (v8 == fireCopy)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Read callback timer fired, closing bulk send session", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDCameraRecordingBulkSendSessionReader *)selfCopy _stopWithReason:?];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_stopWithReason:(void *)reason
{
  v17 = *MEMORY[0x277D85DE8];
  if (reason)
  {
    Property = objc_getProperty(reason, a2, 32, 1);
    dispatch_assert_queue_V2(Property);
    v5 = objc_autoreleasePoolPush();
    reasonCopy = reason;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v8;
      v15 = 1024;
      v16 = a2;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Stopping bulk send session reader with reason: %d", &v13, 0x12u);
    }

    objc_autoreleasePoolPop(v5);
    session = [reasonCopy session];
    [session cancelWithReason:a2];

    delegate = [reasonCopy delegate];
    [delegate bulkSendSessionReader:reasonCopy didFinishWithReason:a2];

    objc_setProperty_atomic(reasonCopy, v11, 0, 40);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  selfCopy = self;
  v15 = *MEMORY[0x277D85DE8];
  if (self)
  {
    self = objc_getProperty(self, a2, 32, 1);
  }

  dispatch_assert_queue_V2(&self->super.super);
  v3 = objc_autoreleasePoolPush();
  v4 = selfCopy;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting bulk send session reader", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  if (selfCopy)
  {
    [objc_getProperty(v4 v7];
    selfCopy = objc_getProperty(v4, v8, 32, 1);
    Property = objc_getProperty(v4, v9, 40, 1);
  }

  else
  {
    [0 setDelegate:0];
    Property = 0;
  }

  [Property setDelegateQueue:selfCopy];

  [(HMDCameraRecordingBulkSendSessionReader *)v4 _readNextDataChunk];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_readNextDataChunk
{
  if (self)
  {
    Property = objc_getProperty(self, a2, 32, 1);
    dispatch_assert_queue_V2(Property);
    [objc_getProperty(self v4];
    session = [self session];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __61__HMDCameraRecordingBulkSendSessionReader__readNextDataChunk__block_invoke;
    v6[3] = &unk_279734EB8;
    v6[4] = self;
    [session read:v6];
  }
}

void __61__HMDCameraRecordingBulkSendSessionReader__readNextDataChunk__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v69 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v7 = a3;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v6, 32, 1);
  }

  dispatch_assert_queue_V2(Property);
  v9 = [*(a1 + 32) session];
  v10 = [v9 isActive];

  if (v10)
  {
    if (v5)
    {
      v11 = *(a1 + 32);
      v13 = v5;
      if (!v11)
      {
        goto LABEL_30;
      }

      v14 = objc_getProperty(v11, v12, 32, 1);
      dispatch_assert_queue_V2(v14);
      v16 = [[HMDDataStreamFragmentChunk alloc] initWithDictionaryRepresentation:v13];
      if (v16)
      {
        if (!objc_getProperty(v11, v15, 48, 1))
        {
          v18 = [HMDDataStreamFragmentAssembler alloc];
          v19 = [(HMDDataStreamFragmentChunk *)v16 fragmentSequenceNumber];
          v20 = [(HMDDataStreamFragmentChunk *)v16 type];
          v21 = [(HMDDataStreamFragmentAssembler *)v18 initWithSequenceNumber:v19 type:v20];
          objc_setProperty_atomic(v11, v22, v21, 48);
        }

        v23 = [objc_getProperty(v11 v17];
        v24 = [(HMDDataStreamFragmentChunk *)v16 fragmentSequenceNumber];
        v25 = [v23 isEqual:v24];

        if (v25)
        {
          v60 = v13;
          v62 = 0;
          v27 = [objc_getProperty(v11 v26];
          v29 = v62;
          if (v27)
          {
            v31 = [objc_getProperty(v11 v28];
            if (v31)
            {
              objc_setProperty_atomic(v11, v30, 0, 48);
              v32 = objc_autoreleasePoolPush();
              v33 = v11;
              v34 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
              {
                v35 = HMFGetLogIdentifier();
                *buf = 138543618;
                v64 = v35;
                v65 = 2112;
                v66 = v31;
                _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_DEBUG, "%{public}@Assembled fragment: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v32);
              v36 = [v33 delegate];
              [v36 bulkSendSessionReader:v33 didReadFragment:v31];
            }
          }

          else
          {
            v49 = objc_autoreleasePoolPush();
            v50 = v11;
            v51 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              v52 = HMFGetLogIdentifier();
              *buf = 138543874;
              v64 = v52;
              v65 = 2112;
              v66 = v16;
              v67 = 2112;
              v68 = v29;
              _os_log_impl(&dword_2531F8000, v51, OS_LOG_TYPE_ERROR, "%{public}@Failed to add data chunk %@ to assembler: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v49);
            [(HMDCameraRecordingBulkSendSessionReader *)v50 _stopWithReason:?];
          }

          v13 = v60;
          goto LABEL_29;
        }

        v41 = objc_autoreleasePoolPush();
        v42 = v11;
        v43 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v44 = HMFGetLogIdentifier();
          [(HMDDataStreamFragmentChunk *)v16 fragmentSequenceNumber];
          v45 = v61 = v41;
          [objc_getProperty(v42 v46];
          v48 = v47 = v13;
          *buf = 138543874;
          v64 = v44;
          v65 = 2112;
          v66 = v45;
          v67 = 2112;
          v68 = v48;
          _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_ERROR, "%{public}@Received fragment chunk for fragment sequence number %@ even though we haven't received last chunk for fragment sequence number %@", buf, 0x20u);

          v13 = v47;
          v41 = v61;
          goto LABEL_23;
        }
      }

      else
      {
        v41 = objc_autoreleasePoolPush();
        v42 = v11;
        v43 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v44 = HMFGetLogIdentifier();
          *buf = 138543362;
          v64 = v44;
          _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_ERROR, "%{public}@Failed to create fragment chunk from stream data dictionary", buf, 0xCu);
LABEL_23:
        }
      }

      objc_autoreleasePoolPop(v41);
      [(HMDCameraRecordingBulkSendSessionReader *)v42 _stopWithReason:?];
LABEL_29:

LABEL_30:
      v53 = [*(a1 + 32) session];
      v54 = [v53 isActive];

      if (v54)
      {
        [(HMDCameraRecordingBulkSendSessionReader *)*(a1 + 32) _readNextDataChunk];
      }

      else
      {
        v55 = objc_autoreleasePoolPush();
        v56 = *(a1 + 32);
        v57 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
        {
          v58 = HMFGetLogIdentifier();
          *buf = 138543362;
          v64 = v58;
          _os_log_impl(&dword_2531F8000, v57, OS_LOG_TYPE_INFO, "%{public}@Data processing marked the bulk send session as inactive", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v55);
      }

      goto LABEL_35;
    }

    v37 = objc_autoreleasePoolPush();
    v38 = *(a1 + 32);
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = HMFGetLogIdentifier();
      *buf = 138543618;
      v64 = v40;
      v65 = 2112;
      v66 = v7;
      _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_ERROR, "%{public}@Failed to read from bulk send session: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v37);
    [(HMDCameraRecordingBulkSendSessionReader *)*(a1 + 32) _stopWithReason:?];
  }

LABEL_35:

  v59 = *MEMORY[0x277D85DE8];
}

- (HMDCameraRecordingBulkSendSessionReader)initWithWorkQueue:(id)queue session:(id)session readCallbackTimer:(id)timer logIdentifier:(id)identifier
{
  queueCopy = queue;
  sessionCopy = session;
  timerCopy = timer;
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = HMDCameraRecordingBulkSendSessionReader;
  v15 = [(HMDCameraRecordingBulkSendSessionReader *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_workQueue, queue);
    objc_storeStrong(&v16->_session, session);
    objc_storeStrong(&v16->_readCallbackTimer, timer);
    v17 = [identifierCopy copy];
    logIdentifier = v16->_logIdentifier;
    v16->_logIdentifier = v17;
  }

  return v16;
}

- (HMDCameraRecordingBulkSendSessionReader)initWithWorkQueue:(id)queue session:(id)session readTimeout:(double)timeout logIdentifier:(id)identifier
{
  v10 = MEMORY[0x277D0F920];
  identifierCopy = identifier;
  sessionCopy = session;
  queueCopy = queue;
  v14 = [[v10 alloc] initWithTimeInterval:0 options:timeout];
  v15 = [(HMDCameraRecordingBulkSendSessionReader *)self initWithWorkQueue:queueCopy session:sessionCopy readCallbackTimer:v14 logIdentifier:identifierCopy];

  return v15;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t8_126971 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t8_126971, &__block_literal_global_126972);
  }

  v3 = logCategory__hmf_once_v9_126973;

  return v3;
}

uint64_t __54__HMDCameraRecordingBulkSendSessionReader_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v9_126973;
  logCategory__hmf_once_v9_126973 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end
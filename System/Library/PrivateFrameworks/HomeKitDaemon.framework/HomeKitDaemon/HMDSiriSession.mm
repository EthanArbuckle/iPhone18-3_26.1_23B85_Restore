@interface HMDSiriSession
- (BOOL)_startStream;
- (BOOL)activateAfterHubInitiation;
- (HMDSiriRemoteInputServer)server;
- (HMDSiriSession)initWithIdentifier:(id)a3 deviceType:(id)a4;
- (HMDSiriSession)initWithIdentifier:(id)a3 logEventSubmitter:(id)a4 deviceType:(id)a5;
- (id)_createArgsDictionaryWithError:(id)a3;
- (void)activeSiriSession:(id)a3 didCreateAudioFrame:(id)a4 sequenceNumber:(id)a5 gain:(id)a6;
- (void)activeSiriSessionDidStop:(id)a3;
- (void)beginTrackingStreamStartMetricWithActivationType:(unint64_t)a3;
- (void)handleResetStream;
- (void)handleStartStream;
- (void)handleStopStream;
- (void)invalidate;
- (void)maybeSubmitStreamStartMetricWithError:(id)a3;
- (void)publish;
- (void)sendMsg:(const char *)a3 args:(id)a4;
- (void)setActiveBulkSendSession:(id)a3;
- (void)stopStream;
@end

@implementation HMDSiriSession

- (HMDSiriRemoteInputServer)server
{
  WeakRetained = objc_loadWeakRetained(&self->_server);

  return WeakRetained;
}

- (id)_createArgsDictionaryWithError:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAAB0];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 encodeObject:v4 forKey:@"kMsgArgError"];

  v10 = @"kMsgArgError";
  v6 = [v5 encodedData];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)sendMsg:(const char *)a3 args:(id)a4
{
  v11 = a4;
  v6 = MEMORY[0x277CBEB38];
  v7 = [(HMDSiriSession *)self identifier];
  v8 = [v6 dictionaryWithObject:v7 forKey:@"kMsgArgIdentifier"];

  if (v11)
  {
    [v8 addEntriesFromDictionary:v11];
  }

  v9 = [(HMDSiriSession *)self server];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3];
  [v9 sendMsgIfCheckedIn:v10 args:v8];
}

- (BOOL)_startStream
{
  v3 = [(HMDSiriSession *)self activeSessionInfo];

  if (v3 || (v4 = [(HMDSiriSession *)self activateAfterHubInitiation]))
  {
    v5 = [(HMDSiriSession *)self activeSessionInfo];
    [v5 markSiriPluginReady];

    LOBYTE(v4) = 1;
  }

  return v4;
}

- (void)maybeSubmitStreamStartMetricWithError:(id)a3
{
  v7 = a3;
  v4 = [(HMDSiriSession *)self streamStartMetric];

  if (v4)
  {
    v5 = [(HMDSiriSession *)self logEventSubmitter];
    v6 = [(HMDSiriSession *)self streamStartMetric];
    [v5 submitLogEvent:v6 error:v7];

    [(HMDSiriSession *)self setStreamStartMetric:0];
  }
}

- (void)beginTrackingStreamStartMetricWithActivationType:(unint64_t)a3
{
  v24 = *MEMORY[0x277D85DE8];
  logger = self->_logger;
  v6 = [(HMDSiriSession *)self activeSessionInfo];
  v7 = os_signpost_id_make_with_pointer(logger, v6);

  v8 = self->_logger;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    if (a3 - 1 > 3)
    {
      v10 = @"Unknown";
    }

    else
    {
      v10 = off_27867D1A0[a3 - 1];
    }

    v11 = v10;
    v12 = [(HMDSiriSession *)self identifier];
    v20 = 138412546;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    _os_signpost_emit_with_name_impl(&dword_229538000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "SiriSession", "ActivationType=%@ AccessoryID=%@", &v20, 0x16u);
  }

  v13 = [(HMDSiriSession *)self streamStartMetric];

  if (v13)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Resetting start stream metric", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }

  v18 = [[HMDSiriStreamStartEvent alloc] initWithActivationType:a3];
  [(HMDSiriSession *)self setStreamStartMetric:v18];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)stopStream
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(HMDSiriSession *)self activeSessionInfo];

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v9 = [(HMDSiriSession *)v5 identifier];
      v25 = 138543618;
      v26 = v8;
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Session %@ stopped the audio", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v10 = v5->_logger;
    logger = v5->_logger;
    v12 = [(HMDSiriSession *)v5 activeSessionInfo];
    v13 = os_signpost_id_make_with_pointer(logger, v12);

    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      v14 = [(HMDSiriSession *)v5 identifier];
      v25 = 138412290;
      v26 = v14;
      _os_signpost_emit_with_name_impl(&dword_229538000, v10, OS_SIGNPOST_INTERVAL_END, v13, "SiriSession", "AccessoryID=%@", &v25, 0xCu);
    }

    v15 = [(HMDSiriSession *)v5 activeSessionInfo];
    [v15 markSiriPluginStopped];

    v16 = [(HMDSiriSession *)v5 activeSessionInfo];
    [v16 invalidate];

    [(HMDSiriSession *)v5 setActiveSessionInfo:0];
  }

  else
  {
    if (v7)
    {
      v17 = HMFGetLogIdentifier();
      v18 = [(HMDSiriSession *)v5 identifier];
      v25 = 138543618;
      v26 = v17;
      v27 = 2112;
      v28 = v18;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Session %@ did stop but was not active (stale notification?)", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v19 = [(HMDSiriSession *)v5 boostMessage];

  if (v19)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = v5;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Releasing boost message", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    [(HMDSiriSession *)v21 setBoostMessage:0];
  }

  [(HMDSiriSession *)v5 setIsActivationPending:0];
  v24 = *MEMORY[0x277D85DE8];
}

- (void)activeSiriSessionDidStop:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(HMDSiriSession *)v6 identifier];
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@[session %@] Deactivating Siri Session", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDSiriSession *)v6 deactivate];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleResetStream
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HMDSiriSession *)v4 identifier];
    v9 = 138543618;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@[session %@] Resetting stream", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDSiriSession *)v4 stopStream];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleStopStream
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HMDSiriSession *)v4 identifier];
    v9 = 138543618;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@[session %@] Stopping stream", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDSiriSession *)v4 stopStream];
  [(HMDSiriSession *)v4 sendMsg:"TransportDidStop" args:0];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleStartStream
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HMDSiriSession *)v4 identifier];
    v16 = 138543618;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@[session %@] Starting stream", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = v4->_logger;
  logger = v4->_logger;
  v10 = [(HMDSiriSession *)v4 activeSessionInfo];
  v11 = os_signpost_id_make_with_pointer(logger, v10);

  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v12 = [(HMDSiriSession *)v4 identifier];
    v16 = 138412290;
    v17 = v12;
    _os_signpost_emit_with_name_impl(&dword_229538000, v8, OS_SIGNPOST_EVENT, v11, "SiriRecording", "AccessoryID=%@", &v16, 0xCu);
  }

  if ([(HMDSiriSession *)v4 _startStream])
  {
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1055];
    v14 = [(HMDSiriSession *)v4 _createArgsDictionaryWithError:v13];
  }

  [(HMDSiriSession *)v4 maybeSubmitStreamStartMetricWithError:v13];
  [(HMDSiriSession *)v4 sendMsg:"TransportDidStart" args:v14];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)publish
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HMDSiriSession *)v4 identifier];
    *buf = 138543618;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@[session %@] Telling plugin to add this session as device", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = [(HMDSiriSession *)v4 deviceType];
  v12 = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [(HMDSiriSession *)v4 sendMsg:"Publish" args:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HMDSiriSession *)v4 identifier];
    v9 = 138543618;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@[session %@] Invalidate", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDSiriSession *)v4 sendMsg:"Unpublish" args:0];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)activeSiriSession:(id)a3 didCreateAudioFrame:(id)a4 sequenceNumber:(id)a5 gain:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [(HMDSiriSession *)v15 identifier];
    *buf = 138543874;
    v24 = v17;
    v25 = 2112;
    v26 = v18;
    v27 = 2048;
    v28 = [v11 length];
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@[session %@] Send frame (%lu bytes)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  v21[0] = @"kMsgArgData";
  v21[1] = @"kSeqNum";
  v22[0] = v11;
  v22[1] = v12;
  v21[2] = @"kGain";
  v22[2] = v13;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
  [(HMDSiriSession *)v15 sendMsg:"AudioFrame" args:v19];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)setActiveBulkSendSession:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDSiriSession *)self activeSessionInfo];
  [v5 setActiveBulkSendSession:v4];

  v6 = [(HMDSiriSession *)self activeSessionInfo];
  if ([v6 isSiriSessionActive])
  {
LABEL_6:

    goto LABEL_7;
  }

  v7 = [(HMDSiriSession *)self isActivationPending];

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [(HMDSiriSession *)v9 identifier];
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Siri session is inactive and activation is pending, reading first frame (%@)", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v6 = [(HMDSiriSession *)v9 activeSessionInfo];
    [v6 readFirstFrame];
    goto LABEL_6;
  }

LABEL_7:

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)activateAfterHubInitiation
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HMDSiriSession *)v4 identifier];
    v10 = 138543618;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_ERROR, "%{public}@Hub initiated Siri input not supported for this Siri session (%@)", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = *MEMORY[0x277D85DE8];
  return 0;
}

- (HMDSiriSession)initWithIdentifier:(id)a3 deviceType:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[HMDMetricsManager sharedLogEventSubmitter];
  v9 = [(HMDSiriSession *)self initWithIdentifier:v7 logEventSubmitter:v8 deviceType:v6];

  return v9;
}

- (HMDSiriSession)initWithIdentifier:(id)a3 logEventSubmitter:(id)a4 deviceType:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = HMDSiriSession;
  v12 = [(HMDSiriSession *)&v16 init];
  if (v12)
  {
    v13 = HMFGetOSLogHandle();
    logger = v12->_logger;
    v12->_logger = v13;

    objc_storeStrong(&v12->_deviceType, a5);
    objc_storeStrong(&v12->_identifier, a3);
    objc_storeStrong(&v12->_logEventSubmitter, a4);
    v12->_isActivationPending = 0;
  }

  return v12;
}

@end
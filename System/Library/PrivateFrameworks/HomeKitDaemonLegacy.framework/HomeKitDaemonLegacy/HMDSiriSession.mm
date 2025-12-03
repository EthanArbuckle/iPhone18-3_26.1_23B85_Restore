@interface HMDSiriSession
- (BOOL)_startStream;
- (BOOL)activateAfterHubInitiation;
- (HMDSiriRemoteInputServer)server;
- (HMDSiriSession)initWithIdentifier:(id)identifier deviceType:(id)type;
- (HMDSiriSession)initWithIdentifier:(id)identifier logEventSubmitter:(id)submitter deviceType:(id)type;
- (id)_createArgsDictionaryWithError:(id)error;
- (void)activeSiriSession:(id)session didCreateAudioFrame:(id)frame sequenceNumber:(id)number gain:(id)gain;
- (void)activeSiriSessionDidStop:(id)stop;
- (void)beginTrackingStreamStartMetricWithActivationType:(unint64_t)type;
- (void)handleResetStream;
- (void)handleStartStream;
- (void)handleStopStream;
- (void)invalidate;
- (void)maybeSubmitStreamStartMetricWithError:(id)error;
- (void)publish;
- (void)sendMsg:(const char *)msg args:(id)args;
- (void)setActiveBulkSendSession:(id)session;
- (void)stopStream;
@end

@implementation HMDSiriSession

- (HMDSiriRemoteInputServer)server
{
  WeakRetained = objc_loadWeakRetained(&self->_server);

  return WeakRetained;
}

- (id)_createArgsDictionaryWithError:(id)error
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAAB0];
  errorCopy = error;
  v5 = objc_alloc_init(v3);
  [v5 encodeObject:errorCopy forKey:@"kMsgArgError"];

  v10 = @"kMsgArgError";
  encodedData = [v5 encodedData];
  v11[0] = encodedData;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)sendMsg:(const char *)msg args:(id)args
{
  argsCopy = args;
  v6 = MEMORY[0x277CBEB38];
  identifier = [(HMDSiriSession *)self identifier];
  v8 = [v6 dictionaryWithObject:identifier forKey:@"kMsgArgIdentifier"];

  if (argsCopy)
  {
    [v8 addEntriesFromDictionary:argsCopy];
  }

  server = [(HMDSiriSession *)self server];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:msg];
  [server sendMsgIfCheckedIn:v10 args:v8];
}

- (BOOL)_startStream
{
  activeSessionInfo = [(HMDSiriSession *)self activeSessionInfo];

  if (activeSessionInfo || (v4 = [(HMDSiriSession *)self activateAfterHubInitiation]))
  {
    activeSessionInfo2 = [(HMDSiriSession *)self activeSessionInfo];
    [activeSessionInfo2 markSiriPluginReady];

    LOBYTE(v4) = 1;
  }

  return v4;
}

- (void)maybeSubmitStreamStartMetricWithError:(id)error
{
  errorCopy = error;
  streamStartMetric = [(HMDSiriSession *)self streamStartMetric];

  if (streamStartMetric)
  {
    logEventSubmitter = [(HMDSiriSession *)self logEventSubmitter];
    streamStartMetric2 = [(HMDSiriSession *)self streamStartMetric];
    [logEventSubmitter submitLogEvent:streamStartMetric2 error:errorCopy];

    [(HMDSiriSession *)self setStreamStartMetric:0];
  }
}

- (void)beginTrackingStreamStartMetricWithActivationType:(unint64_t)type
{
  v24 = *MEMORY[0x277D85DE8];
  logger = self->_logger;
  activeSessionInfo = [(HMDSiriSession *)self activeSessionInfo];
  v7 = os_signpost_id_make_with_pointer(logger, activeSessionInfo);

  v8 = self->_logger;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    if (type - 1 > 3)
    {
      v10 = @"Unknown";
    }

    else
    {
      v10 = off_27972BAF0[type - 1];
    }

    v11 = v10;
    identifier = [(HMDSiriSession *)self identifier];
    v20 = 138412546;
    v21 = v11;
    v22 = 2112;
    v23 = identifier;
    _os_signpost_emit_with_name_impl(&dword_2531F8000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "SiriSession", "ActivationType=%@ AccessoryID=%@", &v20, 0x16u);
  }

  streamStartMetric = [(HMDSiriSession *)self streamStartMetric];

  if (streamStartMetric)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Resetting start stream metric", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }

  v18 = [[HMDSiriStreamStartEvent alloc] initWithActivationType:type];
  [(HMDSiriSession *)self setStreamStartMetric:v18];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)stopStream
{
  v29 = *MEMORY[0x277D85DE8];
  activeSessionInfo = [(HMDSiriSession *)self activeSessionInfo];

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (activeSessionInfo)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      identifier = [(HMDSiriSession *)selfCopy identifier];
      v25 = 138543618;
      v26 = v8;
      v27 = 2112;
      v28 = identifier;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Session %@ stopped the audio", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v10 = selfCopy->_logger;
    logger = selfCopy->_logger;
    activeSessionInfo2 = [(HMDSiriSession *)selfCopy activeSessionInfo];
    v13 = os_signpost_id_make_with_pointer(logger, activeSessionInfo2);

    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      identifier2 = [(HMDSiriSession *)selfCopy identifier];
      v25 = 138412290;
      v26 = identifier2;
      _os_signpost_emit_with_name_impl(&dword_2531F8000, v10, OS_SIGNPOST_INTERVAL_END, v13, "SiriSession", "AccessoryID=%@", &v25, 0xCu);
    }

    activeSessionInfo3 = [(HMDSiriSession *)selfCopy activeSessionInfo];
    [activeSessionInfo3 markSiriPluginStopped];

    activeSessionInfo4 = [(HMDSiriSession *)selfCopy activeSessionInfo];
    [activeSessionInfo4 invalidate];

    [(HMDSiriSession *)selfCopy setActiveSessionInfo:0];
  }

  else
  {
    if (v7)
    {
      v17 = HMFGetLogIdentifier();
      identifier3 = [(HMDSiriSession *)selfCopy identifier];
      v25 = 138543618;
      v26 = v17;
      v27 = 2112;
      v28 = identifier3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Session %@ did stop but was not active (stale notification?)", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  boostMessage = [(HMDSiriSession *)selfCopy boostMessage];

  if (boostMessage)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v23;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Releasing boost message", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    [(HMDSiriSession *)v21 setBoostMessage:0];
  }

  [(HMDSiriSession *)selfCopy setIsActivationPending:0];
  v24 = *MEMORY[0x277D85DE8];
}

- (void)activeSiriSessionDidStop:(id)stop
{
  v15 = *MEMORY[0x277D85DE8];
  stopCopy = stop;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    identifier = [(HMDSiriSession *)selfCopy identifier];
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = identifier;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@[session %@] Deactivating Siri Session", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDSiriSession *)selfCopy deactivate];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleResetStream
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    identifier = [(HMDSiriSession *)selfCopy identifier];
    v9 = 138543618;
    v10 = v6;
    v11 = 2112;
    v12 = identifier;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@[session %@] Resetting stream", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDSiriSession *)selfCopy stopStream];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleStopStream
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    identifier = [(HMDSiriSession *)selfCopy identifier];
    v9 = 138543618;
    v10 = v6;
    v11 = 2112;
    v12 = identifier;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@[session %@] Stopping stream", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDSiriSession *)selfCopy stopStream];
  [(HMDSiriSession *)selfCopy sendMsg:"TransportDidStop" args:0];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleStartStream
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    identifier = [(HMDSiriSession *)selfCopy identifier];
    v16 = 138543618;
    v17 = v6;
    v18 = 2112;
    v19 = identifier;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@[session %@] Starting stream", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = selfCopy->_logger;
  logger = selfCopy->_logger;
  activeSessionInfo = [(HMDSiriSession *)selfCopy activeSessionInfo];
  v11 = os_signpost_id_make_with_pointer(logger, activeSessionInfo);

  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    identifier2 = [(HMDSiriSession *)selfCopy identifier];
    v16 = 138412290;
    v17 = identifier2;
    _os_signpost_emit_with_name_impl(&dword_2531F8000, v8, OS_SIGNPOST_EVENT, v11, "SiriRecording", "AccessoryID=%@", &v16, 0xCu);
  }

  if ([(HMDSiriSession *)selfCopy _startStream])
  {
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1055];
    v14 = [(HMDSiriSession *)selfCopy _createArgsDictionaryWithError:v13];
  }

  [(HMDSiriSession *)selfCopy maybeSubmitStreamStartMetricWithError:v13];
  [(HMDSiriSession *)selfCopy sendMsg:"TransportDidStart" args:v14];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)publish
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    identifier = [(HMDSiriSession *)selfCopy identifier];
    *buf = 138543618;
    v14 = v6;
    v15 = 2112;
    v16 = identifier;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@[session %@] Telling plugin to add this session as device", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  deviceType = [(HMDSiriSession *)selfCopy deviceType];
  v12 = deviceType;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [(HMDSiriSession *)selfCopy sendMsg:"Publish" args:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    identifier = [(HMDSiriSession *)selfCopy identifier];
    v9 = 138543618;
    v10 = v6;
    v11 = 2112;
    v12 = identifier;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@[session %@] Invalidate", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDSiriSession *)selfCopy sendMsg:"Unpublish" args:0];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)activeSiriSession:(id)session didCreateAudioFrame:(id)frame sequenceNumber:(id)number gain:(id)gain
{
  v29 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  frameCopy = frame;
  numberCopy = number;
  gainCopy = gain;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    identifier = [(HMDSiriSession *)selfCopy identifier];
    *buf = 138543874;
    v24 = v17;
    v25 = 2112;
    v26 = identifier;
    v27 = 2048;
    v28 = [frameCopy length];
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@[session %@] Send frame (%lu bytes)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  v21[0] = @"kMsgArgData";
  v21[1] = @"kSeqNum";
  v22[0] = frameCopy;
  v22[1] = numberCopy;
  v21[2] = @"kGain";
  v22[2] = gainCopy;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
  [(HMDSiriSession *)selfCopy sendMsg:"AudioFrame" args:v19];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)setActiveBulkSendSession:(id)session
{
  v18 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  activeSessionInfo = [(HMDSiriSession *)self activeSessionInfo];
  [activeSessionInfo setActiveBulkSendSession:sessionCopy];

  activeSessionInfo2 = [(HMDSiriSession *)self activeSessionInfo];
  if ([activeSessionInfo2 isSiriSessionActive])
  {
LABEL_6:

    goto LABEL_7;
  }

  isActivationPending = [(HMDSiriSession *)self isActivationPending];

  if (isActivationPending)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      identifier = [(HMDSiriSession *)selfCopy identifier];
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = identifier;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Siri session is inactive and activation is pending, reading first frame (%@)", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    activeSessionInfo2 = [(HMDSiriSession *)selfCopy activeSessionInfo];
    [activeSessionInfo2 readFirstFrame];
    goto LABEL_6;
  }

LABEL_7:

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)activateAfterHubInitiation
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = HMFGetLogIdentifier();
    identifier = [(HMDSiriSession *)selfCopy identifier];
    v10 = 138543618;
    v11 = v6;
    v12 = 2112;
    v13 = identifier;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_ERROR, "%{public}@Hub initiated Siri input not supported for this Siri session (%@)", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = *MEMORY[0x277D85DE8];
  return 0;
}

- (HMDSiriSession)initWithIdentifier:(id)identifier deviceType:(id)type
{
  typeCopy = type;
  identifierCopy = identifier;
  v8 = +[HMDMetricsManager sharedLogEventSubmitter];
  v9 = [(HMDSiriSession *)self initWithIdentifier:identifierCopy logEventSubmitter:v8 deviceType:typeCopy];

  return v9;
}

- (HMDSiriSession)initWithIdentifier:(id)identifier logEventSubmitter:(id)submitter deviceType:(id)type
{
  identifierCopy = identifier;
  submitterCopy = submitter;
  typeCopy = type;
  v16.receiver = self;
  v16.super_class = HMDSiriSession;
  v12 = [(HMDSiriSession *)&v16 init];
  if (v12)
  {
    v13 = HMFGetOSLogHandle();
    logger = v12->_logger;
    v12->_logger = v13;

    objc_storeStrong(&v12->_deviceType, type);
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeStrong(&v12->_logEventSubmitter, submitter);
    v12->_isActivationPending = 0;
  }

  return v12;
}

@end
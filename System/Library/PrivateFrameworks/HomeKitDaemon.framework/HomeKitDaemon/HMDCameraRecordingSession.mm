@interface HMDCameraRecordingSession
+ (id)logCategory;
- (BOOL)_createSessionDirectory;
- (BOOL)_isValidFirstSessionFragment:(id)fragment;
- (BOOL)_isValidNonFirstSessionFragment:(id)fragment;
- (BOOL)_shouldEndSessionAfterFragment:(id)fragment;
- (BOOL)_shouldRecordFragmentWithAnalyzerResult:(id)result sequenceNumber:(unint64_t)number recordingEventTriggers:(unint64_t)triggers fragmentAnalyzedEvent:(id)event;
- (BOOL)_shouldWriteSessionLogToDisk;
- (BOOL)activityZonesIncludedForSignificantEventDetection;
- (HMDCameraRecordingSession)initWithWorkQueue:(id)queue camera:(id)camera hapAccessory:(id)accessory home:(id)home localZone:(id)zone configuredFragmentDuration:(double)duration timelineManager:(id)manager;
- (HMDCameraRecordingSession)initWithWorkQueue:(id)queue camera:(id)camera hapAccessory:(id)accessory home:(id)home localZone:(id)zone configuredFragmentDuration:(double)duration timelineManager:(id)manager factory:(id)self0;
- (HMDCameraRecordingSessionDelegate)delegate;
- (NSDictionary)stateDump;
- (id)activityZones;
- (id)attributeDescriptions;
- (unint64_t)recordingEventTriggers;
- (void)_endSessionWithError:(id)error;
- (void)_finishCurrentClipUploader;
- (void)_finishCurrentTimelapseClipUploader;
- (void)_handleDidFailAnalysisWithError:(id)error;
- (void)_handleFragmentResult:(id)result;
- (void)_notifyForAnalyzerResult:(id)result fragment:(id)fragment timeOffsetWithinClip:(double)clip recordingEventTriggers:(unint64_t)triggers;
- (void)_notifyForSignificantEvent:(id)event recordingEventTriggers:(unint64_t)triggers fragmentNumber:(unint64_t)number;
- (void)_submitNotificationSuccessMetricWithRecordingEventTriggers:(unint64_t)triggers fragmentNumber:(unint64_t)number;
- (void)_uploadTimelapseFragment:(id)fragment;
- (void)_writeEvent:(id)event;
- (void)_writeFragment:(id)fragment;
- (void)analyzer:(id)analyzer didAnalyzeFragmentWithResult:(id)result;
- (void)analyzer:(id)analyzer didCreateTimelapseFragment:(id)fragment;
- (void)analyzer:(id)analyzer didFailWithError:(id)error;
- (void)clipUploaderDidFail:(id)fail;
- (void)configure;
- (void)dealloc;
- (void)handleFragment:(id)fragment;
- (void)handleNoMoreFragmentsAvailable;
- (void)variantFragmentManager:(id)manager didSelectVariantFragment:(id)fragment overlapsFullFragment:(BOOL)fullFragment;
@end

@implementation HMDCameraRecordingSession

- (HMDCameraRecordingSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  identifier = [(HMDCameraRecordingSession *)self identifier];
  v5 = [v3 initWithName:@"Identifier" value:identifier];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  timelineManager = [(HMDCameraRecordingSession *)self timelineManager];
  v8 = [v6 initWithName:@"Timeline Manager" value:timelineManager];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)variantFragmentManager:(id)manager didSelectVariantFragment:(id)fragment overlapsFullFragment:(BOOL)fullFragment
{
  v22 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  fragmentCopy = fragment;
  workQueue = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (fullFragment)
  {
LABEL_4:
    [(HMDCameraRecordingSession *)self _uploadTimelapseFragment:fragmentCopy];
    if (![(HMDCameraRecordingSession *)self isActive])
    {
      [(HMDCameraRecordingSession *)self _finishCurrentTimelapseClipUploader];
    }

    goto LABEL_9;
  }

  timelapseClipUploader = [(HMDCameraRecordingSession *)self timelapseClipUploader];

  if (timelapseClipUploader)
  {
    placeholderCopy = [fragmentCopy placeholderCopy];

    fragmentCopy = placeholderCopy;
    goto LABEL_4;
  }

  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v16;
    v20 = 2112;
    v21 = fragmentCopy;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Skipping upload for placeholder fragment because the timelapse clip uploader is not created yet, fragment: %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
LABEL_9:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)clipUploaderDidFail:(id)fail
{
  v21 = *MEMORY[0x277D85DE8];
  failCopy = fail;
  workQueue = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  clipUploader = [(HMDCameraRecordingSession *)self clipUploader];

  if (clipUploader == failCopy)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Current clip uploader did fail upload", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    [(HMDCameraRecordingSession *)selfCopy _finishCurrentClipUploader];
  }

  else
  {
    timelapseClipUploader = [(HMDCameraRecordingSession *)self timelapseClipUploader];

    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (timelapseClipUploader == failCopy)
    {
      if (v11)
      {
        v17 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v17;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Timelapse clip uploader did fail upload", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      [(HMDCameraRecordingSession *)selfCopy2 _finishCurrentTimelapseClipUploader];
    }

    else
    {
      if (v11)
      {
        v12 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v12;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Previous clip uploader did fail upload", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      [failCopy finishWithCompletionHandler:0];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_finishCurrentTimelapseClipUploader
{
  v13 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  timelapseClipUploader = [(HMDCameraRecordingSession *)self timelapseClipUploader];

  if (timelapseClipUploader)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      timelapseClipUploader2 = [(HMDCameraRecordingSession *)selfCopy timelapseClipUploader];
      *v12 = 138543618;
      *&v12[4] = v8;
      *&v12[12] = 2112;
      *&v12[14] = timelapseClipUploader2;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Finishing timelapse clip uploader: %@", v12, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    timelapseClipUploader3 = [(HMDCameraRecordingSession *)selfCopy timelapseClipUploader];
    [timelapseClipUploader3 finishWithCompletionHandler:0];

    [(HMDCameraRecordingSession *)selfCopy setTimelapseClipUploader:0];
    *v12 = *MEMORY[0x277CC0898];
    *&v12[16] = *(MEMORY[0x277CC0898] + 16);
    [(HMDCameraRecordingSession *)selfCopy setTimelapseClipStartTime:v12];
    [(HMDCameraRecordingSession *)selfCopy setAnalysisTimelapseVideoInitData:0];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_finishCurrentClipUploader
{
  v14 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  clipUploader = [(HMDCameraRecordingSession *)self clipUploader];

  if (clipUploader)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      clipUploader2 = [(HMDCameraRecordingSession *)selfCopy clipUploader];
      *v13 = 138543618;
      *&v13[4] = v8;
      *&v13[12] = 2112;
      *&v13[14] = clipUploader2;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Finishing clip uploader: %@", v13, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    clipUploader3 = [(HMDCameraRecordingSession *)selfCopy clipUploader];
    [clipUploader3 finishWithCompletionHandler:0];

    [(HMDCameraRecordingSession *)selfCopy setClipUploader:0];
    *v13 = *MEMORY[0x277CC0898];
    *&v13[16] = *(MEMORY[0x277CC0898] + 16);
    [(HMDCameraRecordingSession *)selfCopy setClipStartTime:v13];
    [(HMDCameraRecordingSession *)selfCopy setAnalysisVideoInitData:0];
    [(HMDCameraRecordingSession *)selfCopy setRemainingRecordingExtensionDuration:0];
    significantEventManager = [(HMDCameraRecordingSession *)selfCopy significantEventManager];
    [significantEventManager resetState];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isValidNonFirstSessionFragment:(id)fragment
{
  fragmentCopy = fragment;
  workQueue = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([fragmentCopy isInitial])
  {
    v6 = 0;
  }

  else
  {
    type = [fragmentCopy type];
    v6 = [type isEqual:@"mediaFragment"];
  }

  return v6;
}

- (BOOL)_isValidFirstSessionFragment:(id)fragment
{
  fragmentCopy = fragment;
  workQueue = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([fragmentCopy isInitial])
  {
    type = [fragmentCopy type];
    v7 = [type isEqual:@"mediaInitialization"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_writeEvent:(id)event
{
  v46 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  workQueue = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDCameraRecordingSession *)self _shouldWriteSessionLogToDisk]&& [(HMDCameraRecordingSession *)self _createSessionDirectory])
  {
    v6 = objc_alloc_init(MEMORY[0x277CCAA68]);
    localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
    [v6 setTimeZone:localTimeZone];

    [v6 setFormatOptions:{objc_msgSend(v6, "formatOptions") | 0x800}];
    v8 = [eventCopy mutableCopy];
    date = [MEMORY[0x277CBEAA8] date];
    v10 = [v6 stringFromDate:date];
    [v8 setValue:v10 forKey:@"date"];

    v39 = 0;
    v11 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v8 options:0 error:&v39];
    v12 = v39;
    if (!v11)
    {
      v27 = objc_autoreleasePoolPush();
      selfCopy = self;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543874;
        v41 = v30;
        v42 = 2112;
        v43 = eventCopy;
        v44 = 2112;
        v45 = v12;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize log event: %@ error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v27);
      goto LABEL_17;
    }

    v13 = [v11 mutableCopy];
    v14 = [@"\n" dataUsingEncoding:4];
    [v13 appendData:v14];

    identifier = [(HMDCameraRecordingSession *)self identifier];
    uUIDString = [identifier UUIDString];
    v17 = [uUIDString stringByAppendingPathExtension:@"jsonl"];

    sessionDirectoryPath = [(HMDCameraRecordingSession *)self sessionDirectoryPath];
    v35 = v17;
    v19 = [sessionDirectoryPath stringByAppendingPathComponent:v17];

    v20 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:v19];
    v21 = v20;
    if (v20)
    {
      [v20 seekToEndOfFile];
      v38 = 0;
      v22 = [v21 writeData:v13 error:&v38];
      v36 = v38;

      if ((v22 & 1) == 0)
      {
        context = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138543874;
          v41 = v25;
          v42 = 2112;
          v43 = v19;
          v44 = 2112;
          v45 = v36;
          v26 = "%{public}@Failed to append log event to file at path: %@ error: %@";
LABEL_14:
          _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, v26, buf, 0x20u);

          goto LABEL_15;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v37 = v12;
      v31 = [v13 writeToFile:v19 options:0 error:&v37];
      v36 = v37;

      if ((v31 & 1) == 0)
      {
        context = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138543874;
          v41 = v25;
          v42 = 2112;
          v43 = v19;
          v44 = 2112;
          v45 = v36;
          v26 = "%{public}@Failed to write log event to file at path: %@ error: %@";
          goto LABEL_14;
        }

LABEL_15:

        objc_autoreleasePoolPop(context);
      }
    }

    v12 = v36;
LABEL_17:
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldWriteSessionLogToDisk
{
  workQueue = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v4 = [mEMORY[0x277D0F8D0] preferenceForKey:@"writeSessionLogToDisk"];
  numberValue = [v4 numberValue];

  if ([numberValue BOOLValue])
  {
    v6 = 1;
  }

  else
  {
    v7 = _os_feature_enabled_impl();
    if (numberValue)
    {
      v6 = 0;
    }

    else
    {
      v6 = v7;
    }
  }

  return v6;
}

- (void)_writeFragment:(id)fragment
{
  v36 = *MEMORY[0x277D85DE8];
  fragmentCopy = fragment;
  workQueue = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v7 = [mEMORY[0x277D0F8D0] preferenceForKey:@"writeAllReceivedVideoFragmentsToDisk"];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue && [(HMDCameraRecordingSession *)self _createSessionDirectory])
  {
    identifier = [(HMDCameraRecordingSession *)self identifier];
    uUIDString = [identifier UUIDString];
    v11 = [uUIDString stringByAppendingPathExtension:@"mp4"];

    sessionDirectoryPath = [(HMDCameraRecordingSession *)self sessionDirectoryPath];
    v13 = [sessionDirectoryPath stringByAppendingPathComponent:v11];

    v14 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:v13];
    v15 = v14;
    if (v14)
    {
      [v14 seekToEndOfFile];
      data = [fragmentCopy data];
      v29 = 0;
      v17 = [v15 writeData:data error:&v29];
      v18 = v29;

      if ((v17 & 1) == 0)
      {
        v19 = objc_autoreleasePoolPush();
        selfCopy = self;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543874;
          v31 = v22;
          v32 = 2112;
          v33 = v13;
          v34 = 2112;
          v35 = v18;
          v23 = "%{public}@Failed to append fragment data to file at path: %@ error: %@";
LABEL_10:
          _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, v23, buf, 0x20u);

          goto LABEL_11;
        }

        goto LABEL_11;
      }
    }

    else
    {
      data2 = [fragmentCopy data];
      v28 = 0;
      v25 = [data2 writeToFile:v13 options:0 error:&v28];
      v18 = v28;

      if ((v25 & 1) == 0)
      {
        v19 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543874;
          v31 = v22;
          v32 = 2112;
          v33 = v13;
          v34 = 2112;
          v35 = v18;
          v23 = "%{public}@Failed to write fragment data to file at path: %@ error: %@";
          goto LABEL_10;
        }

LABEL_11:

        objc_autoreleasePoolPop(v19);
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (BOOL)_createSessionDirectory
{
  v33 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  sessionDirectoryPath = [(HMDCameraRecordingSession *)self sessionDirectoryPath];

  if (sessionDirectoryPath)
  {
    v5 = 1;
  }

  else
  {
    v6 = NSTemporaryDirectory();
    v7 = [v6 stringByAppendingPathComponent:@"HKSV"];

    identifier = [(HMDCameraRecordingSession *)self identifier];
    uUIDString = [identifier UUIDString];
    v10 = [v7 stringByAppendingPathComponent:uUIDString];
    [(HMDCameraRecordingSession *)self setSessionDirectoryPath:v10];

    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      sessionDirectoryPath2 = [(HMDCameraRecordingSession *)selfCopy sessionDirectoryPath];
      *buf = 138543618;
      v28 = v14;
      v29 = 2112;
      v30 = sessionDirectoryPath2;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Writing session data to directory: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    sessionDirectoryPath3 = [(HMDCameraRecordingSession *)selfCopy sessionDirectoryPath];
    v26 = 0;
    v5 = [defaultManager createDirectoryAtPath:sessionDirectoryPath3 withIntermediateDirectories:1 attributes:0 error:&v26];
    v18 = v26;

    if ((v5 & 1) == 0)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = selfCopy;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        sessionDirectoryPath4 = [(HMDCameraRecordingSession *)v20 sessionDirectoryPath];
        *buf = 138543874;
        v28 = v22;
        v29 = 2112;
        v30 = sessionDirectoryPath4;
        v31 = 2112;
        v32 = v18;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to create directory at path: %@ error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v19);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)_shouldEndSessionAfterFragment:(id)fragment
{
  v38 = *MEMORY[0x277D85DE8];
  fragmentCopy = fragment;
  workQueue = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (![(HMDCameraRecordingSession *)self noMoreFragmentsAvailable]|| [(HMDCameraRecordingSession *)self pendingFragmentsCount])
  {
    remainingRecordingExtensionDuration = [(HMDCameraRecordingSession *)self remainingRecordingExtensionDuration];

    if (remainingRecordingExtensionDuration)
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        LODWORD(range.start.value) = 138543362;
        *(&range.start.value + 4) = v10;
        v11 = "%{public}@Recording extension active, continue session";
LABEL_6:
        v12 = v9;
        v13 = 12;
LABEL_19:
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, v11, &range, v13);
      }

LABEL_20:
      v15 = 0;
      goto LABEL_21;
    }

    if (fragmentCopy)
    {
      [fragmentCopy timeRange];
    }

    else
    {
      memset(&range, 0, sizeof(range));
    }

    CMTimeRangeGetEnd(&time, &range);
    Seconds = CMTimeGetSeconds(&time);
    timelineManager = [(HMDCameraRecordingSession *)self timelineManager];
    factory = [(HMDCameraRecordingSession *)self factory];
    [factory recordingExtensionDuration];
    v22 = [timelineManager isDoorbellTriggerActiveAtAnyTimeAfterOffset:Seconds forDuration:v21];

    if (v22)
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v9 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        goto LABEL_20;
      }

      v10 = HMFGetLogIdentifier();
      LODWORD(range.start.value) = 138543618;
      *(&range.start.value + 4) = v10;
      LOWORD(range.start.flags) = 2048;
      *(&range.start.flags + 2) = Seconds;
      v11 = "%{public}@Doorbell is active for next fragment at time offset: %f";
LABEL_18:
      v12 = v9;
      v13 = 22;
      goto LABEL_19;
    }

    timelineManager2 = [(HMDCameraRecordingSession *)self timelineManager];
    factory2 = [(HMDCameraRecordingSession *)self factory];
    [factory2 recordingExtensionDuration];
    v27 = [timelineManager2 isMotionTriggerActiveAtAnyTimeAfterOffset:Seconds forDuration:v26];

    if (v27)
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v9 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        goto LABEL_20;
      }

      v10 = HMFGetLogIdentifier();
      LODWORD(range.start.value) = 138543618;
      *(&range.start.value + 4) = v10;
      LOWORD(range.start.flags) = 2048;
      *(&range.start.flags + 2) = Seconds;
      v11 = "%{public}@Motion is active for next fragment at time offset: %f";
      goto LABEL_18;
    }

    if (_os_feature_enabled_impl())
    {
      camera = [(HMDCameraRecordingSession *)self camera];
      hapAccessory = [camera hapAccessory];
      hasBattery = [hapAccessory hasBattery];

      if ((hasBattery & 1) == 0)
      {
        v7 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v9 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          goto LABEL_20;
        }

        v10 = HMFGetLogIdentifier();
        LODWORD(range.start.value) = 138543362;
        *(&range.start.value + 4) = v10;
        v11 = "%{public}@Continuous video analysis is enabled on powered camera, continue session";
        goto LABEL_6;
      }
    }

    v7 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v9 = HMFGetOSLogHandle();
    v15 = 1;
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_21;
    }

    v16 = HMFGetLogIdentifier();
    LODWORD(range.start.value) = 138543362;
    *(&range.start.value + 4) = v16;
    v17 = "%{public}@Should end session";
LABEL_26:
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, v17, &range, 0xCu);

    goto LABEL_21;
  }

  v7 = objc_autoreleasePoolPush();
  selfCopy6 = self;
  v9 = HMFGetOSLogHandle();
  v15 = 1;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    LODWORD(range.start.value) = 138543362;
    *(&range.start.value + 4) = v16;
    v17 = "%{public}@No more fragment data to process, must end session";
    goto LABEL_26;
  }

LABEL_21:

  objc_autoreleasePoolPop(v7);
  v29 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)_shouldRecordFragmentWithAnalyzerResult:(id)result sequenceNumber:(unint64_t)number recordingEventTriggers:(unint64_t)triggers fragmentAnalyzedEvent:(id)event
{
  v62 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  eventCopy = event;
  workQueue = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  fragment = [resultCopy fragment];
  v13 = fragment;
  if (fragment)
  {
    [fragment duration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  Seconds = CMTimeGetSeconds(&time);

  fragment2 = [resultCopy fragment];
  v16 = fragment2;
  if (fragment2)
  {
    [fragment2 timeRange];
  }

  else
  {
    memset(&v57, 0, sizeof(v57));
  }

  time = v57;
  v17 = CMTimeGetSeconds(&time);

  timelineManager = [(HMDCameraRecordingSession *)self timelineManager];
  v19 = [timelineManager isMotionTriggerActiveAtAnyTimeAfterOffset:v17 forDuration:Seconds];

  [eventCopy setMotionActive:1];
  v20 = objc_autoreleasePoolPush();
  selfCopy = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    v24 = HMFBooleanToString();
    LODWORD(time.value) = 138544130;
    *(&time.value + 4) = v23;
    LOWORD(time.flags) = 2112;
    *(&time.flags + 2) = v24;
    HIWORD(time.epoch) = 2048;
    v59 = v17;
    v60 = 2048;
    v61 = Seconds;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Motion is active: %@ for fragment at time offset: %f and duration: %f", &time, 0x2Au);
  }

  objc_autoreleasePoolPop(v20);
  timelineManager2 = [(HMDCameraRecordingSession *)selfCopy timelineManager];
  v26 = [timelineManager2 isDoorbellTriggerActiveAtAnyTimeAfterOffset:v17 forDuration:Seconds];

  v27 = objc_autoreleasePoolPush();
  v28 = selfCopy;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = HMFGetLogIdentifier();
    HMFBooleanToString();
    v31 = eventCopy;
    v32 = v19;
    v34 = v33 = triggers;
    LODWORD(time.value) = 138544130;
    *(&time.value + 4) = v30;
    LOWORD(time.flags) = 2112;
    *(&time.flags + 2) = v34;
    HIWORD(time.epoch) = 2048;
    v59 = v17;
    v60 = 2048;
    v61 = Seconds;
    _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@Doorbell is active: %@ for fragment at time offset: %f and duration: %f", &time, 0x2Au);

    triggers = v33;
    v19 = v32;
    eventCopy = v31;
  }

  objc_autoreleasePoolPop(v27);
  if (v26)
  {
    [eventCopy setRecordingReason:2];
    v35 = objc_autoreleasePoolPush();
    v36 = v28;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = HMFGetLogIdentifier();
      LODWORD(time.value) = 138543362;
      *(&time.value + 4) = v38;
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@Doorbell event detected, starting recording", &time, 0xCu);
    }

    objc_autoreleasePoolPop(v35);
    goto LABEL_15;
  }

  outcome = [resultCopy outcome];
  isSuccess = [outcome isSuccess];

  if (isSuccess)
  {
    significantEventManager = [(HMDCameraRecordingSession *)v28 significantEventManager];
    v43 = [significantEventManager isAnyEventInAnalyzerFragmentResult:resultCopy includedInRecordingEventTriggers:triggers];

    if (v43)
    {
      v39 = 1;
      [eventCopy setRecordingReason:1];
      goto LABEL_27;
    }

    v51 = objc_autoreleasePoolPush();
    v52 = v28;
    v53 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = HMFGetLogIdentifier();
      LODWORD(time.value) = 138543362;
      *(&time.value + 4) = v54;
      _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_DEFAULT, "%{public}@No user recording trigger events match any detected significant events", &time, 0xCu);
    }

    objc_autoreleasePoolPop(v51);
LABEL_26:
    v39 = 0;
    goto LABEL_27;
  }

  v44 = objc_autoreleasePoolPush();
  v45 = v28;
  v46 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    v47 = HMFGetLogIdentifier();
    v48 = HMCameraSignificantEventTypesAsString();
    HMFBooleanToString();
    v50 = v49 = triggers;
    LODWORD(time.value) = 138543874;
    *(&time.value + 4) = v47;
    LOWORD(time.flags) = 2112;
    *(&time.flags + 2) = v48;
    HIWORD(time.epoch) = 2112;
    v59 = *&v50;
    _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_DEFAULT, "%{public}@Fragment analysis was skipped, recordingTriggerEvent is %@ and motion is %@", &time, 0x20u);

    triggers = v49;
  }

  objc_autoreleasePoolPop(v44);
  if (((triggers != 0) & v19) != 1)
  {
    goto LABEL_26;
  }

  [eventCopy setRecordingReason:3];
LABEL_15:
  v39 = 1;
LABEL_27:

  v55 = *MEMORY[0x277D85DE8];
  return v39;
}

- (void)_endSessionWithError:(id)error
{
  v25 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  workQueue = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (errorCopy)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v10;
      v23 = 2112;
      v24 = errorCopy;
      v11 = "%{public}@Ending session with error: %@";
      v12 = v9;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 22;
LABEL_6:
      _os_log_impl(&dword_229538000, v12, v13, v11, buf, v14);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543362;
    v22 = v10;
    v11 = "%{public}@Ending session";
    v12 = v9;
    v13 = OS_LOG_TYPE_INFO;
    v14 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v6);
  [(HMDCameraRecordingSession *)selfCopy setActive:0];
  [(HMDCameraRecordingSession *)selfCopy _finishCurrentClipUploader];
  videoAnalyzer = [(HMDCameraRecordingSession *)selfCopy videoAnalyzer];
  [videoAnalyzer cancel];

  videoAnalyzer2 = [(HMDCameraRecordingSession *)selfCopy videoAnalyzer];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __50__HMDCameraRecordingSession__endSessionWithError___block_invoke;
  v19[3] = &unk_27868A1D8;
  v19[4] = selfCopy;
  v20 = errorCopy;
  v17 = errorCopy;
  [videoAnalyzer2 finishWithCompletionHandler:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void __50__HMDCameraRecordingSession__endSessionWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__HMDCameraRecordingSession__endSessionWithError___block_invoke_2;
  block[3] = &unk_27868A010;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

void __50__HMDCameraRecordingSession__endSessionWithError___block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 32);
      v21 = 138543618;
      v22 = v5;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_ERROR, "%{public}@Video analyzer finished with error: %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
  }

  v7 = [*(a1 + 40) timelapseFragmentManager];
  v8 = [v7 expectsVariantFragment];

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 40);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Timelapse clip uploader is still expecting a timelapse fragment", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = objc_autoreleasePoolPush();
  v14 = *(a1 + 40);
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = [*(a1 + 40) timelapseClipUploader];
    v21 = 138543618;
    v22 = v16;
    v23 = 2112;
    v24 = v17;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Finishing timelapse clip uploader: %@", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  v18 = [*(a1 + 40) timelapseClipUploader];
  [v18 finishWithCompletionHandler:0];

  v19 = [*(a1 + 40) delegate];
  [v19 session:*(a1 + 40) didEndWithError:*(a1 + 48)];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_handleDidFailAnalysisWithError:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  workQueue = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDCameraRecordingSession *)self setPendingFragmentsCount:[(HMDCameraRecordingSession *)self pendingFragmentsCount]- 1];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = errorCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Analysis failed with error: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMDCameraRecordingSessionErrorDomain" code:2 userInfo:0];
  [(HMDCameraRecordingSession *)selfCopy _endSessionWithError:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_submitNotificationSuccessMetricWithRecordingEventTriggers:(unint64_t)triggers fragmentNumber:(unint64_t)number
{
  workQueue = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v8 = [HMDCameraRecordingClipNotificationEvent alloc];
  identifier = [(HMDCameraRecordingSession *)self identifier];
  camera = [(HMDCameraRecordingSession *)self camera];
  uniqueIdentifier = [camera uniqueIdentifier];
  v13 = [(HMDCameraRecordingClipNotificationEvent *)v8 initWithSessionID:identifier cameraID:uniqueIdentifier sequenceNumber:number recordingEventTriggers:triggers];

  v12 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v12 submitLogEvent:v13];
}

- (void)_notifyForSignificantEvent:(id)event recordingEventTriggers:(unint64_t)triggers fragmentNumber:(unint64_t)number
{
  eventCopy = event;
  workQueue = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  objc_initWeak(&location, self);
  clipUploader = [(HMDCameraRecordingSession *)self clipUploader];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __94__HMDCameraRecordingSession__notifyForSignificantEvent_recordingEventTriggers_fragmentNumber___block_invoke;
  v12[3] = &unk_278683D00;
  objc_copyWeak(v14, &location);
  v11 = eventCopy;
  v13 = v11;
  v14[1] = triggers;
  v14[2] = number;
  [clipUploader addSignificantEvent:v11 completionHandler:v12];

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

void __94__HMDCameraRecordingSession__notifyForSignificantEvent_recordingEventTriggers_fragmentNumber___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!a2)
  {
    v12 = WeakRetained;
    v5 = [WeakRetained camera];
    v6 = [v5 hapAccessory];
    v7 = [v6 home];
    v8 = [v7 cameraBulletinNotificationManager];
    v9 = *(a1 + 32);
    v10 = [v12 camera];
    v11 = [v10 uniqueIdentifier];
    [v8 handleSignificantEvent:v9 cameraProfileUUID:v11];

    [v12 _submitNotificationSuccessMetricWithRecordingEventTriggers:*(a1 + 48) fragmentNumber:*(a1 + 56)];
    WeakRetained = v12;
  }
}

- (void)_notifyForAnalyzerResult:(id)result fragment:(id)fragment timeOffsetWithinClip:(double)clip recordingEventTriggers:(unint64_t)triggers
{
  v32 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  fragmentCopy = fragment;
  workQueue = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  timelineManager = [(HMDCameraRecordingSession *)self timelineManager];
  if (fragmentCopy)
  {
    [fragmentCopy timeRange];
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
  }

  *&time.value = v27;
  time.epoch = v28;
  v14 = [timelineManager creationDateForFragmentAtTimeOffset:CMTimeGetSeconds(&time)];

  significantEventManager = [(HMDCameraRecordingSession *)self significantEventManager];
  v16 = [significantEventManager significantEventsForAnalyzerFragmentResult:resultCopy dateOfOccurrence:v14 timeOffsetWithinClip:triggers recordingEventTriggers:clip];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v24;
    do
    {
      v21 = 0;
      do
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(v17);
        }

        -[HMDCameraRecordingSession _notifyForSignificantEvent:recordingEventTriggers:fragmentNumber:](self, "_notifyForSignificantEvent:recordingEventTriggers:fragmentNumber:", *(*(&v23 + 1) + 8 * v21++), triggers, [fragmentCopy sequenceNumber]);
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v19);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_uploadTimelapseFragment:(id)fragment
{
  v52 = *MEMORY[0x277D85DE8];
  fragmentCopy = fragment;
  workQueue = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    LODWORD(buf.value) = 138543618;
    *(&buf.value + 4) = v9;
    LOWORD(buf.flags) = 2112;
    *(&buf.flags + 2) = fragmentCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Uploading timelapse fragment: %@", &buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  timelapseClipUploader = [(HMDCameraRecordingSession *)selfCopy timelapseClipUploader];

  if (!timelapseClipUploader)
  {
    if (fragmentCopy)
    {
      [fragmentCopy timeRange];
    }

    else
    {
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
    }

    *&buf.value = v47;
    buf.epoch = v48;
    [(HMDCameraRecordingSession *)selfCopy setTimelapseClipStartTime:&buf];
    timelineManager = [(HMDCameraRecordingSession *)selfCopy timelineManager];
    [(HMDCameraRecordingSession *)selfCopy timelapseClipStartTime];
    v12 = [timelineManager creationDateForFragmentAtTimeOffset:CMTimeGetSeconds(&buf)];

    factory = [(HMDCameraRecordingSession *)selfCopy factory];
    uUID = [MEMORY[0x277CCAD78] UUID];
    localZone = [(HMDCameraRecordingSession *)selfCopy localZone];
    workQueue2 = [(HMDCameraRecordingSession *)selfCopy workQueue];
    logIdentifier = [(HMDCameraRecordingSession *)selfCopy logIdentifier];
    v18 = [factory createUploaderWithClipUUID:uUID startDate:v12 targetFragmentDuration:1 quality:localZone localZone:workQueue2 workQueue:logIdentifier logIdentifier:60.0];
    [(HMDCameraRecordingSession *)selfCopy setTimelapseClipUploader:v18];

    timelapseClipUploader2 = [(HMDCameraRecordingSession *)selfCopy timelapseClipUploader];
    [timelapseClipUploader2 setDelegate:selfCopy];

    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      timelapseClipUploader3 = [(HMDCameraRecordingSession *)v21 timelapseClipUploader];
      LODWORD(buf.value) = 138543618;
      *(&buf.value + 4) = v23;
      LOWORD(buf.flags) = 2112;
      *(&buf.flags + 2) = timelapseClipUploader3;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Created new timelapse clip uploader: %@", &buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    timelapseClipUploader4 = [(HMDCameraRecordingSession *)v21 timelapseClipUploader];
    [timelapseClipUploader4 createClipWithCompletionHandler:0];
  }

  analysisTimelapseVideoInitData = [(HMDCameraRecordingSession *)selfCopy analysisTimelapseVideoInitData];
  initializationSegment = [fragmentCopy initializationSegment];
  if (!analysisTimelapseVideoInitData || (-[HMDCameraRecordingSession factory](selfCopy, "factory"), v28 = objc_claimAutoreleasedReturnValue(), v29 = [v28 isVideoInitData:analysisTimelapseVideoInitData combinableWithVideoInitData:initializationSegment], v28, (v29 & 1) == 0))
  {
    v30 = objc_autoreleasePoolPush();
    v31 = selfCopy;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = HMFGetLogIdentifier();
      LODWORD(buf.value) = 138543874;
      *(&buf.value + 4) = v33;
      LOWORD(buf.flags) = 2112;
      *(&buf.flags + 2) = analysisTimelapseVideoInitData;
      HIWORD(buf.epoch) = 2112;
      v51 = initializationSegment;
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Analysis timelapse video init fragment changed from %@ to %@", &buf, 0x20u);
    }

    objc_autoreleasePoolPop(v30);
    [(HMDCameraRecordingSession *)v31 setAnalysisTimelapseVideoInitData:initializationSegment];
    timelapseClipUploader5 = [(HMDCameraRecordingSession *)v31 timelapseClipUploader];
    [timelapseClipUploader5 addVideoInitData:initializationSegment completionHandler:0];
  }

  if (fragmentCopy)
  {
    [fragmentCopy timeRange];
    buf = *&v46[1];
    Seconds = CMTimeGetSeconds(&buf);
    [fragmentCopy timeRange];
  }

  else
  {
    v45 = 0u;
    memset(v46, 0, sizeof(v46));
    *&buf.value = *&v46[1];
    buf.epoch = 0;
    Seconds = CMTimeGetSeconds(&buf);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
  }

  *&lhs.value = v41;
  lhs.epoch = v42;
  [(HMDCameraRecordingSession *)selfCopy timelapseClipStartTime];
  CMTimeSubtract(&buf, &lhs, &rhs);
  v36 = CMTimeGetSeconds(&buf);
  timelapseClipUploader6 = [(HMDCameraRecordingSession *)selfCopy timelapseClipUploader];
  separableSegment = [fragmentCopy separableSegment];
  [timelapseClipUploader6 addVideoSegmentData:separableSegment timeOffsetWithinClip:0 duration:0 clipFinalizedBecauseMaxDurationExceeded:v36 completionHandler:Seconds];

  v39 = *MEMORY[0x277D85DE8];
}

- (void)_handleFragmentResult:(id)result
{
  v111 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  workQueue = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDCameraRecordingSession *)self setPendingFragmentsCount:[(HMDCameraRecordingSession *)self pendingFragmentsCount]- 1];
  if (![(HMDCameraRecordingSession *)self isActive])
  {
    goto LABEL_65;
  }

  fragment = [resultCopy fragment];
  [(HMDCameraRecordingSession *)self clipStartTime];
  if ((v107 & 1) == 0)
  {
    goto LABEL_10;
  }

  if (fragment)
  {
    [fragment timeRange];
  }

  else
  {
    memset(&range, 0, sizeof(range));
  }

  CMTimeRangeGetEnd(&lhs, &range);
  [(HMDCameraRecordingSession *)self clipStartTime];
  CMTimeSubtract(&range.start, &lhs, &rhs);
  Seconds = CMTimeGetSeconds(&range.start);
  factory = [(HMDCameraRecordingSession *)self factory];
  [factory maximumClipDuration];
  v10 = v9;

  if (Seconds > v10)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      if (fragment)
      {
        [fragment timeRange];
      }

      else
      {
        memset(&range, 0, sizeof(range));
      }

      CMTimeRangeGetEnd(&lhs, &range);
      [(HMDCameraRecordingSession *)selfCopy clipStartTime];
      CMTimeSubtract(&range.start, &lhs, &rhs);
      v15 = CMTimeGetSeconds(&range.start);
      factory2 = [(HMDCameraRecordingSession *)selfCopy factory];
      [factory2 maximumClipDuration];
      LODWORD(range.start.value) = 138543874;
      *(&range.start.value + 4) = v14;
      LOWORD(range.start.flags) = 2048;
      *(&range.start.flags + 2) = v15;
      HIWORD(range.start.epoch) = 2048;
      range.duration.value = v17;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Finishing current clip upload because segment would exceed max duration (%.2f > %.2f)", &range, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    [(HMDCameraRecordingSession *)selfCopy _finishCurrentClipUploader];
    v101 = 1;
  }

  else
  {
LABEL_10:
    v101 = 0;
  }

  configuration = [resultCopy configuration];
  eventTriggers = [configuration eventTriggers];

  v20 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    v24 = HMCameraSignificantEventTypesAsString();
    LODWORD(range.start.value) = 138543618;
    *(&range.start.value + 4) = v23;
    LOWORD(range.start.flags) = 2112;
    *(&range.start.flags + 2) = v24;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Comparing fragment with recording event triggers: %@", &range, 0x16u);
  }

  objc_autoreleasePoolPop(v20);
  v25 = [HMDCameraRecordingFragmentAnalyzedEvent alloc];
  identifier = [(HMDCameraRecordingSession *)selfCopy2 identifier];
  camera = [(HMDCameraRecordingSession *)selfCopy2 camera];
  uniqueIdentifier = [camera uniqueIdentifier];
  v29 = -[HMDCameraRecordingFragmentAnalyzedEvent initWithSessionID:cameraID:sequenceNumber:](v25, "initWithSessionID:cameraID:sequenceNumber:", identifier, uniqueIdentifier, [fragment sequenceNumber]);

  outcome = [resultCopy outcome];
  -[HMDCameraRecordingFragmentAnalyzedEvent setIsSuccess:](v29, "setIsSuccess:", [outcome isSuccess]);

  v100 = eventTriggers;
  if (-[HMDCameraRecordingSession _shouldRecordFragmentWithAnalyzerResult:sequenceNumber:recordingEventTriggers:fragmentAnalyzedEvent:](selfCopy2, "_shouldRecordFragmentWithAnalyzerResult:sequenceNumber:recordingEventTriggers:fragmentAnalyzedEvent:", resultCopy, [fragment sequenceNumber], eventTriggers & 0x1F, v29))
  {
    v31 = MEMORY[0x277CCABB0];
    factory3 = [(HMDCameraRecordingSession *)selfCopy2 factory];
    [factory3 recordingExtensionDuration];
    v33 = [v31 numberWithDouble:?];
    [(HMDCameraRecordingSession *)selfCopy2 setRemainingRecordingExtensionDuration:v33];
  }

  else
  {
    remainingRecordingExtensionDuration = [(HMDCameraRecordingSession *)selfCopy2 remainingRecordingExtensionDuration];

    if (!remainingRecordingExtensionDuration)
    {
      v38 = 0;
      goto LABEL_31;
    }

    [(HMDCameraRecordingFragmentAnalyzedEvent *)v29 setRecordingReason:4];
    remainingRecordingExtensionDuration2 = [(HMDCameraRecordingSession *)selfCopy2 remainingRecordingExtensionDuration];
    [remainingRecordingExtensionDuration2 doubleValue];
    v37 = v36;
    if (fragment)
    {
      [fragment duration];
    }

    else
    {
      memset(&range, 0, 24);
    }

    v39 = v37 - CMTimeGetSeconds(&range.start);

    v40 = objc_autoreleasePoolPush();
    v41 = selfCopy2;
    v42 = HMFGetOSLogHandle();
    v43 = os_log_type_enabled(v42, OS_LOG_TYPE_INFO);
    if (v39 <= 0.0)
    {
      if (v43)
      {
        v47 = HMFGetLogIdentifier();
        remainingRecordingExtensionDuration3 = [(HMDCameraRecordingSession *)v41 remainingRecordingExtensionDuration];
        LODWORD(range.start.value) = 138543618;
        *(&range.start.value + 4) = v47;
        LOWORD(range.start.flags) = 2112;
        *(&range.start.flags + 2) = remainingRecordingExtensionDuration3;
        _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_INFO, "%{public}@Flagging fragment for recording because remaining recording extension duration is %@s. Extension duration will be cleared", &range, 0x16u);
      }

      objc_autoreleasePoolPop(v40);
      [(HMDCameraRecordingSession *)v41 setRemainingRecordingExtensionDuration:0];
    }

    else
    {
      if (v43)
      {
        v44 = HMFGetLogIdentifier();
        remainingRecordingExtensionDuration4 = [(HMDCameraRecordingSession *)v41 remainingRecordingExtensionDuration];
        LODWORD(range.start.value) = 138543874;
        *(&range.start.value + 4) = v44;
        LOWORD(range.start.flags) = 2112;
        *(&range.start.flags + 2) = remainingRecordingExtensionDuration4;
        HIWORD(range.start.epoch) = 2048;
        *&range.duration.value = v39;
        _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_INFO, "%{public}@Flagging fragment for recording because remaining recording extension duration is %@s. New extension duration will be %fs", &range, 0x20u);
      }

      objc_autoreleasePoolPop(v40);
      v46 = [MEMORY[0x277CCABB0] numberWithDouble:v39];
      [(HMDCameraRecordingSession *)v41 setRemainingRecordingExtensionDuration:v46];
    }
  }

  v38 = 1;
LABEL_31:
  v109[0] = @"FragmentResult";
  v108[0] = @"type";
  v108[1] = @"shouldRecordFragment";
  v49 = [MEMORY[0x277CCABB0] numberWithBool:v38];
  v109[1] = v49;
  v108[2] = @"sequenceNumber";
  v50 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(fragment, "sequenceNumber")}];
  v109[2] = v50;
  v108[3] = @"analysisFPS";
  v51 = MEMORY[0x277CCABB0];
  outcome2 = [resultCopy outcome];
  [outcome2 analysisFPS];
  v53 = [v51 numberWithDouble:?];
  v109[3] = v53;
  v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v109 forKeys:v108 count:4];
  [(HMDCameraRecordingSession *)selfCopy2 _writeEvent:v54];

  v55 = objc_autoreleasePoolPush();
  v56 = selfCopy2;
  v57 = HMFGetOSLogHandle();
  v58 = os_log_type_enabled(v57, OS_LOG_TYPE_INFO);
  if (!v38)
  {
    if (v58)
    {
      v65 = HMFGetLogIdentifier();
      sequenceNumber = [fragment sequenceNumber];
      LODWORD(range.start.value) = 138543618;
      *(&range.start.value + 4) = v65;
      LOWORD(range.start.flags) = 2048;
      *(&range.start.flags + 2) = sequenceNumber;
      _os_log_impl(&dword_229538000, v57, OS_LOG_TYPE_INFO, "%{public}@Fragment %lu was not flagged for recording", &range, 0x16u);
    }

    objc_autoreleasePoolPop(v55);
    [(HMDCameraRecordingSession *)v56 _finishCurrentClipUploader];
    [(HMDCameraRecordingSession *)v56 setIntroFragment:fragment];
    [(HMDCameraRecordingSession *)v56 setIntroAnalyzerResult:resultCopy];
    goto LABEL_62;
  }

  if (v58)
  {
    v59 = HMFGetLogIdentifier();
    sequenceNumber2 = [fragment sequenceNumber];
    LODWORD(range.start.value) = 138543618;
    *(&range.start.value + 4) = v59;
    LOWORD(range.start.flags) = 2048;
    *(&range.start.flags + 2) = sequenceNumber2;
    _os_log_impl(&dword_229538000, v57, OS_LOG_TYPE_INFO, "%{public}@Fragment %lu was flagged for recording", &range, 0x16u);
  }

  objc_autoreleasePoolPop(v55);
  introFragment = [(HMDCameraRecordingSession *)v56 introFragment];
  introAnalyzerResult = [(HMDCameraRecordingSession *)v56 introAnalyzerResult];
  clipUploader = [(HMDCameraRecordingSession *)v56 clipUploader];

  v64 = v100;
  if (clipUploader)
  {
    if (fragment)
    {
LABEL_36:
      [fragment timeRange];
      goto LABEL_50;
    }
  }

  else
  {
    if (introFragment)
    {
      v67 = introFragment;
    }

    else
    {
      v67 = fragment;
    }

    v68 = v67;
    v98 = introAnalyzerResult;
    v99 = introFragment;
    v97 = v68;
    if (v68)
    {
      [v68 timeRange];
    }

    else
    {
      *&v104 = 0;
      v103 = 0u;
    }

    *&range.start.value = v103;
    range.start.epoch = v104;
    [(HMDCameraRecordingSession *)v56 setClipStartTime:&range];
    timelineManager = [(HMDCameraRecordingSession *)v56 timelineManager];
    [(HMDCameraRecordingSession *)v56 clipStartTime];
    v70 = [timelineManager creationDateForFragmentAtTimeOffset:CMTimeGetSeconds(&range.start)];

    factory4 = [(HMDCameraRecordingSession *)v56 factory];
    uUID = [MEMORY[0x277CCAD78] UUID];
    [(HMDCameraRecordingSession *)v56 configuredFragmentDuration];
    v74 = v73;
    localZone = [(HMDCameraRecordingSession *)v56 localZone];
    workQueue2 = [(HMDCameraRecordingSession *)v56 workQueue];
    logIdentifier = [(HMDCameraRecordingSession *)v56 logIdentifier];
    v96 = v70;
    v78 = [factory4 createUploaderWithClipUUID:uUID startDate:v70 targetFragmentDuration:0 quality:localZone localZone:workQueue2 workQueue:logIdentifier logIdentifier:v74];
    [(HMDCameraRecordingSession *)v56 setClipUploader:v78];

    clipUploader2 = [(HMDCameraRecordingSession *)v56 clipUploader];
    [clipUploader2 setDelegate:v56];

    v80 = objc_autoreleasePoolPush();
    v81 = v56;
    v82 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
    {
      v83 = HMFGetLogIdentifier();
      clipUploader3 = [(HMDCameraRecordingSession *)v81 clipUploader];
      LODWORD(range.start.value) = 138543618;
      *(&range.start.value + 4) = v83;
      LOWORD(range.start.flags) = 2112;
      *(&range.start.flags + 2) = clipUploader3;
      _os_log_impl(&dword_229538000, v82, OS_LOG_TYPE_INFO, "%{public}@Created new clip uploader: %@", &range, 0x16u);
    }

    objc_autoreleasePoolPop(v80);
    introFragment = v99;
    v64 = v100;
    introAnalyzerResult = v98;
    if (fragment)
    {
      goto LABEL_36;
    }
  }

  memset(&v102, 0, sizeof(v102));
LABEL_50:
  lhs = v102;
  [(HMDCameraRecordingSession *)v56 clipStartTime];
  CMTimeSubtract(&range.start, &lhs, &rhs);
  [(HMDCameraRecordingSession *)v56 _notifyForAnalyzerResult:resultCopy fragment:fragment timeOffsetWithinClip:v64 & 0x1F recordingEventTriggers:CMTimeGetSeconds(&range.start)];
  if (introFragment && introAnalyzerResult)
  {
    v85 = objc_autoreleasePoolPush();
    v86 = v56;
    v87 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
    {
      v88 = HMFGetLogIdentifier();
      sequenceNumber3 = [introFragment sequenceNumber];
      LODWORD(range.start.value) = 138543618;
      *(&range.start.value + 4) = v88;
      LOWORD(range.start.flags) = 2048;
      *(&range.start.flags + 2) = sequenceNumber3;
      _os_log_impl(&dword_229538000, v87, OS_LOG_TYPE_INFO, "%{public}@Uploading intro fragment %lu", &range, 0x16u);
    }

    objc_autoreleasePoolPop(v85);
    fragment2 = [introAnalyzerResult fragment];
    v91 = fragment2;
    if (fragment2)
    {
      [fragment2 duration];
    }

    else
    {
      memset(&range, 0, 24);
    }

    [(HMDCameraRecordingSession *)v86 _uploadFragment:introFragment withDuration:v101 clipFinalizedBecauseMaxDurationExceeded:CMTimeGetSeconds(&range.start)];

    [(HMDCameraRecordingSession *)v86 setIntroFragment:0];
    [(HMDCameraRecordingSession *)v86 setIntroAnalyzerResult:0];
  }

  if (fragment)
  {
    [fragment duration];
  }

  else
  {
    memset(&range, 0, 24);
  }

  [(HMDCameraRecordingSession *)v56 _uploadFragment:fragment withDuration:v101 clipFinalizedBecauseMaxDurationExceeded:CMTimeGetSeconds(&range.start)];
  clipUploader4 = [(HMDCameraRecordingSession *)v56 clipUploader];
  clipUUID = [clipUploader4 clipUUID];
  [(HMDCameraRecordingFragmentAnalyzedEvent *)v29 setClipModelID:clipUUID];

LABEL_62:
  if ([(HMDCameraRecordingSession *)v56 _shouldEndSessionAfterFragment:fragment])
  {
    [(HMDCameraRecordingSession *)v56 _endSessionWithError:0];
  }

  v94 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v94 submitLogEvent:v29];

LABEL_65:
  v95 = *MEMORY[0x277D85DE8];
}

- (void)analyzer:(id)analyzer didCreateTimelapseFragment:(id)fragment
{
  fragmentCopy = fragment;
  workQueue = [(HMDCameraRecordingSession *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__HMDCameraRecordingSession_analyzer_didCreateTimelapseFragment___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = fragmentCopy;
  v7 = fragmentCopy;
  dispatch_async(workQueue, v8);
}

void __65__HMDCameraRecordingSession_analyzer_didCreateTimelapseFragment___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Timelapse fragment was created: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) timelapseFragmentManager];
  [v7 handleVariantFragment:*(a1 + 40)];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)analyzer:(id)analyzer didFailWithError:(id)error
{
  errorCopy = error;
  workQueue = [(HMDCameraRecordingSession *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__HMDCameraRecordingSession_analyzer_didFailWithError___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = errorCopy;
  v7 = errorCopy;
  dispatch_async(workQueue, v8);
}

- (void)analyzer:(id)analyzer didAnalyzeFragmentWithResult:(id)result
{
  resultCopy = result;
  workQueue = [(HMDCameraRecordingSession *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__HMDCameraRecordingSession_analyzer_didAnalyzeFragmentWithResult___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = resultCopy;
  v7 = resultCopy;
  dispatch_async(workQueue, v8);
}

uint64_t __67__HMDCameraRecordingSession_analyzer_didAnalyzeFragmentWithResult___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) fragment];
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Fragment was analyzed: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _handleFragmentResult:*(a1 + 40)];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleNoMoreFragmentsAvailable
{
  v15 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Accessory has no more fragments available for analysis", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [(HMDCameraRecordingSession *)selfCopy setNoMoreFragmentsAvailable:1];
  if (![(HMDCameraRecordingSession *)selfCopy pendingFragmentsCount]&& [(HMDCameraRecordingSession *)selfCopy isActive])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = selfCopy;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Finalizing session because all fragments have been analyzed", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    [(HMDCameraRecordingSession *)v9 _endSessionWithError:0];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleFragment:(id)fragment
{
  v56 = *MEMORY[0x277D85DE8];
  fragmentCopy = fragment;
  workQueue = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  delegate = [(HMDCameraRecordingSession *)self delegate];
  cameraVideoInitFragment = [(HMDCameraRecordingSession *)self cameraVideoInitFragment];
  if (!cameraVideoInitFragment)
  {
    if ([(HMDCameraRecordingSession *)self _isValidFirstSessionFragment:fragmentCopy])
    {
      [(HMDCameraRecordingSession *)self setCameraVideoInitFragment:fragmentCopy];
      [(HMDCameraRecordingSession *)self _writeFragment:fragmentCopy];
      v13 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:&unk_283E765C0];
      camera = [(HMDCameraRecordingSession *)self camera];
      accessory = [camera accessory];

      name = [accessory name];
      [v13 setObject:name forKeyedSubscript:@"cameraName"];

      manufacturer = [accessory manufacturer];
      [v13 setObject:manufacturer forKeyedSubscript:@"cameraManufacturer"];

      model = [accessory model];
      [v13 setObject:model forKeyedSubscript:@"cameraModel"];

      camera2 = [(HMDCameraRecordingSession *)self camera];
      uniqueIdentifier = [camera2 uniqueIdentifier];
      uUIDString = [uniqueIdentifier UUIDString];
      [v13 setObject:uUIDString forKeyedSubscript:@"uniqueIdentifier"];

      camera3 = [(HMDCameraRecordingSession *)self camera];
      currentSettings = [camera3 currentSettings];
      [currentSettings recordingEventTriggers];
      v39 = HMCameraSignificantEventTypesAsString();
      [v13 setObject:v39 forKeyedSubscript:@"recordingEventTriggers"];

      room = [accessory room];
      name2 = [room name];
      [v13 setObject:name2 forKeyedSubscript:@"room"];

      [(HMDCameraRecordingSession *)self _writeEvent:v13];
LABEL_9:

LABEL_19:
      goto LABEL_20;
    }

    v46 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v48 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v49;
      *&buf[12] = 2112;
      *&buf[14] = fragmentCopy;
      v50 = "%{public}@Received invalid first session fragment: %@";
LABEL_17:
      _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_ERROR, v50, buf, 0x16u);
    }

LABEL_18:

    objc_autoreleasePoolPop(v46);
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMDCameraRecordingSessionErrorDomain" code:1 userInfo:0];
    [delegate session:selfCopy3 didEndWithError:v13];
    goto LABEL_19;
  }

  [(HMDCameraRecordingSession *)self _writeFragment:fragmentCopy];
  if ([(HMDCameraRecordingSession *)self isActive])
  {
    if ([(HMDCameraRecordingSession *)self _isValidNonFirstSessionFragment:fragmentCopy])
    {
      v8 = objc_alloc(MEMORY[0x277D14E18]);
      data = [cameraVideoInitFragment data];
      data2 = [fragmentCopy data];
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCameraRecordingSession currentFragmentNumber](self, "currentFragmentNumber")}];
      v52 = v11;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
      v13 = [v8 initWithInitializationSegment:data separableSegment:data2 sequenceNumbers:v12];

      sessionActivity = [(HMDCameraRecordingSession *)self sessionActivity];
      [sessionActivity markWithFormat:@"Analyze fragment %lu", -[HMDCameraRecordingSession currentFragmentNumber](self, "currentFragmentNumber")];

      [(HMDCameraRecordingSession *)self setCurrentFragmentNumber:[(HMDCameraRecordingSession *)self currentFragmentNumber]+ 1];
      [(HMDCameraRecordingSession *)self setPendingFragmentsCount:[(HMDCameraRecordingSession *)self pendingFragmentsCount]+ 1];
      v15 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v18;
        *&buf[12] = 2112;
        *&buf[14] = v13;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Requesting analysis for fragment: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      accessory = objc_alloc_init(MEMORY[0x277D14DE0]);
      [accessory setEventTriggers:{-[HMDCameraRecordingSession recordingEventTriggers](selfCopy2, "recordingEventTriggers") & 0x1F}];
      activityZones = [(HMDCameraRecordingSession *)selfCopy2 activityZones];
      activityZonesIncludedForSignificantEventDetection = [(HMDCameraRecordingSession *)selfCopy2 activityZonesIncludedForSignificantEventDetection];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __hmiActivityZonesFromActivityZones_block_invoke;
      v54 = &__block_descriptor_33_e53___HMICameraActivityZone_16__0__HMCameraActivityZone_8l;
      v55 = activityZonesIncludedForSignificantEventDetection;
      v22 = [activityZones na_map:buf];
      allObjects = [v22 allObjects];

      [accessory setActivityZones:allObjects];
      camera4 = [(HMDCameraRecordingSession *)selfCopy2 camera];
      hapAccessory = [camera4 hapAccessory];
      home = [hapAccessory home];
      personManagerSettings = [home personManagerSettings];
      [accessory setRecognizeFaces:{objc_msgSend(personManagerSettings, "isFaceClassificationEnabled")}];

      videoAnalyzer = [(HMDCameraRecordingSession *)selfCopy2 videoAnalyzer];
      [videoAnalyzer analyzeFragment:v13 configuration:accessory];

      videoAnalyzer2 = [(HMDCameraRecordingSession *)selfCopy2 videoAnalyzer];
      [videoAnalyzer2 flushAsync];

      goto LABEL_9;
    }

    v46 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v48 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v49;
      *&buf[12] = 2112;
      *&buf[14] = fragmentCopy;
      v50 = "%{public}@Received invalid non-first session fragment: %@";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v42 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v44 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
  {
    v45 = HMFGetLogIdentifier();
    *buf = 138543362;
    *&buf[4] = v45;
    _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@Dropping fragment for analysis as session is no longer active", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v42);
  [delegate session:selfCopy4 didEndWithError:0];
LABEL_20:

  v51 = *MEMORY[0x277D85DE8];
}

- (void)configure
{
  v26 = *MEMORY[0x277D85DE8];
  camera = [(HMDCameraRecordingSession *)self camera];
  hapAccessory = [camera hapAccessory];
  home = [hapAccessory home];

  if (home)
  {
    timelapseFragmentManager = [(HMDCameraRecordingSession *)self timelapseFragmentManager];
    [timelapseFragmentManager setDelegate:self];

    videoAnalyzer = [(HMDCameraRecordingSession *)self videoAnalyzer];
    [videoAnalyzer setDelegate:self];

    personManager = [home personManager];
    hmiPersonManager = [personManager hmiPersonManager];
    videoAnalyzer2 = [(HMDCameraRecordingSession *)self videoAnalyzer];
    [videoAnalyzer2 setHomePersonManager:hmiPersonManager];

    v11 = MEMORY[0x277CBEB98];
    users = [home users];
    v13 = [users na_map:&__block_literal_global_238660];
    v14 = [v11 setWithArray:v13];
    videoAnalyzer3 = [(HMDCameraRecordingSession *)self videoAnalyzer];
    [videoAnalyzer3 setExternalPersonManagers:v14];

    analysisStatePublisher = [home analysisStatePublisher];
    analysisStateManager = [analysisStatePublisher analysisStateManager];
    videoAnalyzer4 = [(HMDCameraRecordingSession *)self videoAnalyzer];
    [videoAnalyzer4 setAnalysisStateManager:analysisStateManager];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Can't configure recording session because home reference is nil", &v24, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
  }

  v23 = *MEMORY[0x277D85DE8];
}

id __38__HMDCameraRecordingSession_configure__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 photosPersonManager];
  v3 = [v2 hmiPersonManager];

  return v3;
}

- (BOOL)activityZonesIncludedForSignificantEventDetection
{
  workQueue = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  camera = [(HMDCameraRecordingSession *)self camera];
  currentSettings = [camera currentSettings];
  areActivityZonesIncludedForSignificantEventDetection = [currentSettings areActivityZonesIncludedForSignificantEventDetection];

  return areActivityZonesIncludedForSignificantEventDetection;
}

- (id)activityZones
{
  workQueue = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  camera = [(HMDCameraRecordingSession *)self camera];
  currentSettings = [camera currentSettings];
  activityZones = [currentSettings activityZones];

  return activityZones;
}

- (unint64_t)recordingEventTriggers
{
  workQueue = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  camera = [(HMDCameraRecordingSession *)self camera];
  currentSettings = [camera currentSettings];
  recordingEventTriggers = [currentSettings recordingEventTriggers];

  return recordingEventTriggers;
}

- (NSDictionary)stateDump
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCameraRecordingSession isActive](self, "isActive")}];
  [dictionary setObject:v4 forKeyedSubscript:@"Active"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCameraRecordingSession currentFragmentNumber](self, "currentFragmentNumber")}];
  [dictionary setObject:v5 forKeyedSubscript:@"Current Fragment Number"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCameraRecordingSession pendingFragmentsCount](self, "pendingFragmentsCount")}];
  [dictionary setObject:v6 forKeyedSubscript:@"Pending Fragments Count"];

  clipUploader = [(HMDCameraRecordingSession *)self clipUploader];
  stateDump = [clipUploader stateDump];
  [dictionary setObject:stateDump forKeyedSubscript:@"Clip Uploader"];

  timelapseClipUploader = [(HMDCameraRecordingSession *)self timelapseClipUploader];
  stateDump2 = [timelapseClipUploader stateDump];
  [dictionary setObject:stateDump2 forKeyedSubscript:@"Timelapse Clip Uploader"];

  v11 = [dictionary copy];

  return v11;
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543618;
    v10 = v6;
    v11 = 2112;
    v12 = selfCopy;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Deallocating recording session: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8.receiver = selfCopy;
  v8.super_class = HMDCameraRecordingSession;
  [(HMDCameraRecordingSession *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDCameraRecordingSession)initWithWorkQueue:(id)queue camera:(id)camera hapAccessory:(id)accessory home:(id)home localZone:(id)zone configuredFragmentDuration:(double)duration timelineManager:(id)manager factory:(id)self0
{
  queueCopy = queue;
  cameraCopy = camera;
  accessoryCopy = accessory;
  homeCopy = home;
  zoneCopy = zone;
  managerCopy = manager;
  factoryCopy = factory;
  if (!queueCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!cameraCopy)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!accessoryCopy)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  if (!homeCopy)
  {
LABEL_16:
    _HMFPreconditionFailure();
    goto LABEL_17;
  }

  if (!zoneCopy)
  {
LABEL_17:
    _HMFPreconditionFailure();
LABEL_18:
    _HMFPreconditionFailure();
    goto LABEL_19;
  }

  if (duration <= 0.0 || duration < 2.22044605e-16)
  {
    goto LABEL_18;
  }

  if (!managerCopy)
  {
LABEL_19:
    _HMFPreconditionFailure();
    goto LABEL_20;
  }

  if (!factoryCopy)
  {
LABEL_20:
    v55 = _HMFPreconditionFailure();
    return [(HMDCameraRecordingSession *)v55 initWithWorkQueue:v56 camera:v57 hapAccessory:v58 home:v59 localZone:v60 configuredFragmentDuration:v61 timelineManager:v63, v62];
  }

  v66 = factoryCopy;
  v73.receiver = self;
  v73.super_class = HMDCameraRecordingSession;
  v23 = [(HMDCameraRecordingSession *)&v73 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_workQueue, queue);
    objc_storeStrong(&v24->_camera, camera);
    objc_storeStrong(&v24->_localZone, zone);
    v24->_configuredFragmentDuration = duration;
    objc_storeStrong(&v24->_timelineManager, manager);
    objc_storeStrong(&v24->_factory, factory);
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v24->_identifier;
    v24->_identifier = uUID;

    v24->_active = 1;
    v27 = MEMORY[0x277CC0898];
    v28 = *(MEMORY[0x277CC0898] + 16);
    v24->_clipStartTime.epoch = v28;
    v29 = *v27;
    *&v24->_clipStartTime.value = *v27;
    *&v24->_timelapseClipStartTime.value = v29;
    v24->_timelapseClipStartTime.epoch = v28;
    v30 = MEMORY[0x277CCACA8];
    name = [accessoryCopy name];
    v32 = [v30 stringWithFormat:@"%@/%@", name, v24->_identifier];
    logIdentifier = v24->_logIdentifier;
    v24->_logIdentifier = v32;

    v64 = [[HMDAccessoryMetricVendorDetails alloc] initWithAccessory:accessoryCopy];
    v34 = objc_alloc(MEMORY[0x277D14D68]);
    uniqueIdentifier = [cameraCopy uniqueIdentifier];
    name2 = [accessoryCopy name];
    [(HMDAccessoryMetricVendorDetails *)v64 manufacturer];
    v37 = v65 = cameraCopy;
    [(HMDAccessoryMetricVendorDetails *)v64 model];
    v38 = homeCopy;
    v40 = v39 = queueCopy;
    firmwareVersion = [(HMDAccessoryMetricVendorDetails *)v64 firmwareVersion];
    v42 = [v34 initWithIdentifier:uniqueIdentifier name:name2 manufacturer:v37 model:v40 firmwareVersion:firmwareVersion hasBattery:{objc_msgSend(accessoryCopy, "hasBattery")}];

    queueCopy = v39;
    homeCopy = v38;

    v43 = objc_alloc_init(MEMORY[0x277D14DD8]);
    [v43 setMaxFragmentAnalysisDuration:20.0];
    CMTimeMakeWithSeconds(&v72, duration * 2.5, 1000);
    v71 = v72;
    [v43 setMaxFragmentDuration:&v71];
    [v43 setCamera:v42];
    [v43 setTranscode:0];
    uuid = [v38 uuid];
    [v43 setHomeUUID:uuid];

    CMTimeMake(&v70, 1, 1);
    v71 = v70;
    [v43 setTimelapseInterval:&v71];
    CMTimeMakeWithSeconds(&v69, 60.0, 1000);
    v71 = v69;
    [v43 setTimelapsePreferredFragmentDuration:&v71];
    v45 = [(HMDCameraRecordingSessionFactory *)v24->_factory createTimelapseFragmentManagerWithLogIdentifier:v24->_logIdentifier];
    timelapseFragmentManager = v24->_timelapseFragmentManager;
    v24->_timelapseFragmentManager = v45;

    v47 = [(HMDCameraRecordingSessionFactory *)v24->_factory createVideoAnalyzerWithConfiguration:v43 identifier:v24->_identifier];
    videoAnalyzer = v24->_videoAnalyzer;
    v24->_videoAnalyzer = v47;

    v49 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Recording Session" parent:0 options:3];
    sessionActivity = v24->_sessionActivity;
    v24->_sessionActivity = v49;

    v51 = [[HMDCameraSignificantEventFaceClassificationResolver alloc] initWithHome:v38];
    v52 = [(HMDCameraRecordingSessionFactory *)v24->_factory createSignificantEventManagerWithWorkQueue:queueCopy faceClassificationResolver:v51 logIdentifier:v24->_logIdentifier];
    significantEventManager = v24->_significantEventManager;
    v24->_significantEventManager = v52;

    cameraCopy = v65;
  }

  return v24;
}

- (HMDCameraRecordingSession)initWithWorkQueue:(id)queue camera:(id)camera hapAccessory:(id)accessory home:(id)home localZone:(id)zone configuredFragmentDuration:(double)duration timelineManager:(id)manager
{
  managerCopy = manager;
  zoneCopy = zone;
  homeCopy = home;
  accessoryCopy = accessory;
  cameraCopy = camera;
  queueCopy = queue;
  v22 = objc_alloc_init(HMDCameraRecordingSessionFactory);
  v23 = [(HMDCameraRecordingSession *)self initWithWorkQueue:queueCopy camera:cameraCopy hapAccessory:accessoryCopy home:homeCopy localZone:zoneCopy configuredFragmentDuration:managerCopy timelineManager:duration factory:v22];

  return v23;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t52_238723 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t52_238723, &__block_literal_global_146_238724);
  }

  v3 = logCategory__hmf_once_v53_238725;

  return v3;
}

void __40__HMDCameraRecordingSession_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v53_238725;
  logCategory__hmf_once_v53_238725 = v1;
}

@end
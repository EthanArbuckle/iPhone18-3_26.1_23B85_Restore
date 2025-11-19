@interface HMDCameraRecordingSession
+ (id)logCategory;
- (BOOL)_createSessionDirectory;
- (BOOL)_isValidFirstSessionFragment:(id)a3;
- (BOOL)_isValidNonFirstSessionFragment:(id)a3;
- (BOOL)_shouldEndSessionAfterFragment:(id)a3;
- (BOOL)_shouldRecordFragmentWithAnalyzerResult:(id)a3 sequenceNumber:(unint64_t)a4 recordingEventTriggers:(unint64_t)a5 fragmentAnalyzedEvent:(id)a6;
- (BOOL)_shouldWriteSessionLogToDisk;
- (BOOL)activityZonesIncludedForSignificantEventDetection;
- (HMDCameraRecordingSession)initWithWorkQueue:(id)a3 camera:(id)a4 hapAccessory:(id)a5 home:(id)a6 localZone:(id)a7 configuredFragmentDuration:(double)a8 timelineManager:(id)a9 homePresenceByPairingIdentity:(id)a10;
- (HMDCameraRecordingSession)initWithWorkQueue:(id)a3 camera:(id)a4 hapAccessory:(id)a5 home:(id)a6 localZone:(id)a7 configuredFragmentDuration:(double)a8 timelineManager:(id)a9 homePresenceByPairingIdentity:(id)a10 factory:(id)a11;
- (HMDCameraRecordingSessionDelegate)delegate;
- (NSDictionary)homePresenceByPairingIdentity;
- (NSDictionary)stateDump;
- (id)activityZones;
- (id)attributeDescriptions;
- (unint64_t)recordingEventTriggers;
- (void)_endSessionWithError:(id)a3;
- (void)_finishCurrentClipUploader;
- (void)_finishCurrentTimelapseClipUploader;
- (void)_handleDidFailAnalysisWithError:(id)a3;
- (void)_handleFragmentResult:(id)a3;
- (void)_notifyForAnalyzerResult:(id)a3 fragment:(id)a4 timeOffsetWithinClip:(double)a5 recordingEventTriggers:(unint64_t)a6;
- (void)_notifyForSignificantEvent:(id)a3 recordingEventTriggers:(unint64_t)a4 fragmentNumber:(unint64_t)a5;
- (void)_submitNotificationSuccessMetricWithRecordingEventTriggers:(unint64_t)a3 fragmentNumber:(unint64_t)a4;
- (void)_uploadTimelapseFragment:(id)a3;
- (void)_writeEvent:(id)a3;
- (void)_writeFragment:(id)a3;
- (void)analyzer:(id)a3 didAnalyzeFragmentWithResult:(id)a4;
- (void)analyzer:(id)a3 didCreateTimelapseFragment:(id)a4;
- (void)analyzer:(id)a3 didFailWithError:(id)a4;
- (void)clipUploaderDidFail:(id)a3;
- (void)configure;
- (void)dealloc;
- (void)handleFragment:(id)a3;
- (void)handleNoMoreFragmentsAvailable;
- (void)variantFragmentManager:(id)a3 didSelectVariantFragment:(id)a4 overlapsFullFragment:(BOOL)a5;
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
  v4 = [(HMDCameraRecordingSession *)self identifier];
  v5 = [v3 initWithName:@"Identifier" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDCameraRecordingSession *)self timelineManager];
  v8 = [v6 initWithName:@"Timeline Manager" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)variantFragmentManager:(id)a3 didSelectVariantFragment:(id)a4 overlapsFullFragment:(BOOL)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(v10);

  if (a5)
  {
LABEL_4:
    [(HMDCameraRecordingSession *)self _uploadTimelapseFragment:v9];
    if (![(HMDCameraRecordingSession *)self isActive])
    {
      [(HMDCameraRecordingSession *)self _finishCurrentTimelapseClipUploader];
    }

    goto LABEL_9;
  }

  v11 = [(HMDCameraRecordingSession *)self timelapseClipUploader];

  if (v11)
  {
    v12 = [v9 placeholderCopy];

    v9 = v12;
    goto LABEL_4;
  }

  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v16;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Skipping upload for placeholder fragment because the timelapse clip uploader is not created yet, fragment: %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
LABEL_9:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)clipUploaderDidFail:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraRecordingSession *)self clipUploader];

  if (v6 == v4)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Current clip uploader did fail upload", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    [(HMDCameraRecordingSession *)v14 _finishCurrentClipUploader];
  }

  else
  {
    v7 = [(HMDCameraRecordingSession *)self timelapseClipUploader];

    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (v7 == v4)
    {
      if (v11)
      {
        v17 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v17;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Timelapse clip uploader did fail upload", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      [(HMDCameraRecordingSession *)v9 _finishCurrentTimelapseClipUploader];
    }

    else
    {
      if (v11)
      {
        v12 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v12;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Previous clip uploader did fail upload", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      [v4 finishWithCompletionHandler:0];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_finishCurrentTimelapseClipUploader
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraRecordingSession *)self timelapseClipUploader];

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [(HMDCameraRecordingSession *)v6 timelapseClipUploader];
      *v12 = 138543618;
      *&v12[4] = v8;
      *&v12[12] = 2112;
      *&v12[14] = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Finishing timelapse clip uploader: %@", v12, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = [(HMDCameraRecordingSession *)v6 timelapseClipUploader];
    [v10 finishWithCompletionHandler:0];

    [(HMDCameraRecordingSession *)v6 setTimelapseClipUploader:0];
    *v12 = *MEMORY[0x277CC0898];
    *&v12[16] = *(MEMORY[0x277CC0898] + 16);
    [(HMDCameraRecordingSession *)v6 setTimelapseClipStartTime:v12];
    [(HMDCameraRecordingSession *)v6 setAnalysisTimelapseVideoInitData:0];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_finishCurrentClipUploader
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraRecordingSession *)self clipUploader];

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [(HMDCameraRecordingSession *)v6 clipUploader];
      *v13 = 138543618;
      *&v13[4] = v8;
      *&v13[12] = 2112;
      *&v13[14] = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Finishing clip uploader: %@", v13, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = [(HMDCameraRecordingSession *)v6 clipUploader];
    [v10 finishWithCompletionHandler:0];

    [(HMDCameraRecordingSession *)v6 setClipUploader:0];
    *v13 = *MEMORY[0x277CC0898];
    *&v13[16] = *(MEMORY[0x277CC0898] + 16);
    [(HMDCameraRecordingSession *)v6 setClipStartTime:v13];
    [(HMDCameraRecordingSession *)v6 setAnalysisVideoInitData:0];
    [(HMDCameraRecordingSession *)v6 setRemainingRecordingExtensionDuration:0];
    v11 = [(HMDCameraRecordingSession *)v6 significantEventManager];
    [v11 resetState];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isValidNonFirstSessionFragment:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if ([v4 isInitial])
  {
    v6 = 0;
  }

  else
  {
    v7 = [v4 type];
    v6 = [v7 isEqual:@"mediaFragment"];
  }

  return v6;
}

- (BOOL)_isValidFirstSessionFragment:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if ([v4 isInitial])
  {
    v6 = [v4 type];
    v7 = [v6 isEqual:@"mediaInitialization"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_writeEvent:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if ([(HMDCameraRecordingSession *)self _shouldWriteSessionLogToDisk]&& [(HMDCameraRecordingSession *)self _createSessionDirectory])
  {
    v6 = objc_alloc_init(MEMORY[0x277CCAA68]);
    v7 = [MEMORY[0x277CBEBB0] localTimeZone];
    [v6 setTimeZone:v7];

    [v6 setFormatOptions:{objc_msgSend(v6, "formatOptions") | 0x800}];
    v8 = [v4 mutableCopy];
    v9 = [MEMORY[0x277CBEAA8] date];
    v10 = [v6 stringFromDate:v9];
    [v8 setValue:v10 forKey:@"date"];

    v39 = 0;
    v11 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v8 options:0 error:&v39];
    v12 = v39;
    if (!v11)
    {
      v27 = objc_autoreleasePoolPush();
      v28 = self;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543874;
        v41 = v30;
        v42 = 2112;
        v43 = v4;
        v44 = 2112;
        v45 = v12;
        _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize log event: %@ error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v27);
      goto LABEL_17;
    }

    v13 = [v11 mutableCopy];
    v14 = [@"\n" dataUsingEncoding:4];
    [v13 appendData:v14];

    v15 = [(HMDCameraRecordingSession *)self identifier];
    v16 = [v15 UUIDString];
    v17 = [v16 stringByAppendingPathExtension:@"jsonl"];

    v18 = [(HMDCameraRecordingSession *)self sessionDirectoryPath];
    v35 = v17;
    v19 = [v18 stringByAppendingPathComponent:v17];

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
        v23 = self;
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
          _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, v26, buf, 0x20u);

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
        v32 = self;
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
  v2 = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(v2);

  v3 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v4 = [v3 preferenceForKey:@"writeSessionLogToDisk"];
  v5 = [v4 numberValue];

  if ([v5 BOOLValue])
  {
    v6 = 1;
  }

  else
  {
    v7 = _os_feature_enabled_impl();
    if (v5)
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

- (void)_writeFragment:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v7 = [v6 preferenceForKey:@"writeAllReceivedVideoFragmentsToDisk"];
  v8 = [v7 BOOLValue];

  if (v8 && [(HMDCameraRecordingSession *)self _createSessionDirectory])
  {
    v9 = [(HMDCameraRecordingSession *)self identifier];
    v10 = [v9 UUIDString];
    v11 = [v10 stringByAppendingPathExtension:@"mp4"];

    v12 = [(HMDCameraRecordingSession *)self sessionDirectoryPath];
    v13 = [v12 stringByAppendingPathComponent:v11];

    v14 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:v13];
    v15 = v14;
    if (v14)
    {
      [v14 seekToEndOfFile];
      v16 = [v4 data];
      v29 = 0;
      v17 = [v15 writeData:v16 error:&v29];
      v18 = v29;

      if ((v17 & 1) == 0)
      {
        v19 = objc_autoreleasePoolPush();
        v20 = self;
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
          _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, v23, buf, 0x20u);

          goto LABEL_11;
        }

        goto LABEL_11;
      }
    }

    else
    {
      v24 = [v4 data];
      v28 = 0;
      v25 = [v24 writeToFile:v13 options:0 error:&v28];
      v18 = v28;

      if ((v25 & 1) == 0)
      {
        v19 = objc_autoreleasePoolPush();
        v26 = self;
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
  v3 = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraRecordingSession *)self sessionDirectoryPath];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = NSTemporaryDirectory();
    v7 = [v6 stringByAppendingPathComponent:@"HKSV"];

    v8 = [(HMDCameraRecordingSession *)self identifier];
    v9 = [v8 UUIDString];
    v10 = [v7 stringByAppendingPathComponent:v9];
    [(HMDCameraRecordingSession *)self setSessionDirectoryPath:v10];

    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [(HMDCameraRecordingSession *)v12 sessionDirectoryPath];
      *buf = 138543618;
      v28 = v14;
      v29 = 2112;
      v30 = v15;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Writing session data to directory: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = [MEMORY[0x277CCAA00] defaultManager];
    v17 = [(HMDCameraRecordingSession *)v12 sessionDirectoryPath];
    v26 = 0;
    v5 = [v16 createDirectoryAtPath:v17 withIntermediateDirectories:1 attributes:0 error:&v26];
    v18 = v26;

    if ((v5 & 1) == 0)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = v12;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        v23 = [(HMDCameraRecordingSession *)v20 sessionDirectoryPath];
        *buf = 138543874;
        v28 = v22;
        v29 = 2112;
        v30 = v23;
        v31 = 2112;
        v32 = v18;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to create directory at path: %@ error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v19);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)_shouldEndSessionAfterFragment:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if (![(HMDCameraRecordingSession *)self noMoreFragmentsAvailable]|| [(HMDCameraRecordingSession *)self pendingFragmentsCount])
  {
    v6 = [(HMDCameraRecordingSession *)self remainingRecordingExtensionDuration];

    if (v6)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = self;
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
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, v11, &range, v13);
      }

LABEL_20:
      v15 = 0;
      goto LABEL_21;
    }

    if (v4)
    {
      [v4 timeRange];
    }

    else
    {
      memset(&range, 0, sizeof(range));
    }

    CMTimeRangeGetEnd(&time, &range);
    Seconds = CMTimeGetSeconds(&time);
    v19 = [(HMDCameraRecordingSession *)self timelineManager];
    v20 = [(HMDCameraRecordingSession *)self factory];
    [v20 recordingExtensionDuration];
    v22 = [v19 isDoorbellTriggerActiveAtAnyTimeAfterOffset:Seconds forDuration:v21];

    if (v22)
    {
      v7 = objc_autoreleasePoolPush();
      v23 = self;
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

    v24 = [(HMDCameraRecordingSession *)self timelineManager];
    v25 = [(HMDCameraRecordingSession *)self factory];
    [v25 recordingExtensionDuration];
    v27 = [v24 isMotionTriggerActiveAtAnyTimeAfterOffset:Seconds forDuration:v26];

    if (v27)
    {
      v7 = objc_autoreleasePoolPush();
      v28 = self;
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
      v31 = [(HMDCameraRecordingSession *)self camera];
      v32 = [v31 hapAccessory];
      v33 = [v32 hasBattery];

      if ((v33 & 1) == 0)
      {
        v7 = objc_autoreleasePoolPush();
        v35 = self;
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
    v34 = self;
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
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, v17, &range, 0xCu);

    goto LABEL_21;
  }

  v7 = objc_autoreleasePoolPush();
  v14 = self;
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

- (BOOL)_shouldRecordFragmentWithAnalyzerResult:(id)a3 sequenceNumber:(unint64_t)a4 recordingEventTriggers:(unint64_t)a5 fragmentAnalyzedEvent:(id)a6
{
  v62 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a6;
  v11 = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [v9 fragment];
  v13 = v12;
  if (v12)
  {
    [v12 duration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  Seconds = CMTimeGetSeconds(&time);

  v15 = [v9 fragment];
  v16 = v15;
  if (v15)
  {
    [v15 timeRange];
  }

  else
  {
    memset(&v57, 0, sizeof(v57));
  }

  time = v57;
  v17 = CMTimeGetSeconds(&time);

  v18 = [(HMDCameraRecordingSession *)self timelineManager];
  v19 = [v18 isMotionTriggerActiveAtAnyTimeAfterOffset:v17 forDuration:Seconds];

  [v10 setMotionActive:1];
  v20 = objc_autoreleasePoolPush();
  v21 = self;
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
    _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Motion is active: %@ for fragment at time offset: %f and duration: %f", &time, 0x2Au);
  }

  objc_autoreleasePoolPop(v20);
  v25 = [(HMDCameraRecordingSession *)v21 timelineManager];
  v26 = [v25 isDoorbellTriggerActiveAtAnyTimeAfterOffset:v17 forDuration:Seconds];

  v27 = objc_autoreleasePoolPush();
  v28 = v21;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = HMFGetLogIdentifier();
    HMFBooleanToString();
    v31 = v10;
    v32 = v19;
    v34 = v33 = a5;
    LODWORD(time.value) = 138544130;
    *(&time.value + 4) = v30;
    LOWORD(time.flags) = 2112;
    *(&time.flags + 2) = v34;
    HIWORD(time.epoch) = 2048;
    v59 = v17;
    v60 = 2048;
    v61 = Seconds;
    _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@Doorbell is active: %@ for fragment at time offset: %f and duration: %f", &time, 0x2Au);

    a5 = v33;
    v19 = v32;
    v10 = v31;
  }

  objc_autoreleasePoolPop(v27);
  if (v26)
  {
    [v10 setRecordingReason:2];
    v35 = objc_autoreleasePoolPush();
    v36 = v28;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = HMFGetLogIdentifier();
      LODWORD(time.value) = 138543362;
      *(&time.value + 4) = v38;
      _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@Doorbell event detected, starting recording", &time, 0xCu);
    }

    objc_autoreleasePoolPop(v35);
    goto LABEL_15;
  }

  v40 = [v9 outcome];
  v41 = [v40 isSuccess];

  if (v41)
  {
    v42 = [(HMDCameraRecordingSession *)v28 significantEventManager];
    v43 = [v42 isAnyEventInAnalyzerFragmentResult:v9 includedInRecordingEventTriggers:a5];

    if (v43)
    {
      v39 = 1;
      [v10 setRecordingReason:1];
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
      _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_DEFAULT, "%{public}@No user recording trigger events match any detected significant events", &time, 0xCu);
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
    v50 = v49 = a5;
    LODWORD(time.value) = 138543874;
    *(&time.value + 4) = v47;
    LOWORD(time.flags) = 2112;
    *(&time.flags + 2) = v48;
    HIWORD(time.epoch) = 2112;
    v59 = *&v50;
    _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_DEFAULT, "%{public}@Fragment analysis was skipped, recordingTriggerEvent is %@ and motion is %@", &time, 0x20u);

    a5 = v49;
  }

  objc_autoreleasePoolPop(v44);
  if (((a5 != 0) & v19) != 1)
  {
    goto LABEL_26;
  }

  [v10 setRecordingReason:3];
LABEL_15:
  v39 = 1;
LABEL_27:

  v55 = *MEMORY[0x277D85DE8];
  return v39;
}

- (void)_endSessionWithError:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v4)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v10;
      v23 = 2112;
      v24 = v4;
      v11 = "%{public}@Ending session with error: %@";
      v12 = v9;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 22;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v12, v13, v11, buf, v14);
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
  [(HMDCameraRecordingSession *)v7 setActive:0];
  [(HMDCameraRecordingSession *)v7 _finishCurrentClipUploader];
  v15 = [(HMDCameraRecordingSession *)v7 videoAnalyzer];
  [v15 cancel];

  v16 = [(HMDCameraRecordingSession *)v7 videoAnalyzer];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __50__HMDCameraRecordingSession__endSessionWithError___block_invoke;
  v19[3] = &unk_2797358C8;
  v19[4] = v7;
  v20 = v4;
  v17 = v4;
  [v16 finishWithCompletionHandler:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void __50__HMDCameraRecordingSession__endSessionWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__HMDCameraRecordingSession__endSessionWithError___block_invoke_2;
  block[3] = &unk_279734960;
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
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_ERROR, "%{public}@Video analyzer finished with error: %@", &v21, 0x16u);
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
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Timelapse clip uploader is still expecting a timelapse fragment", &v21, 0xCu);
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
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Finishing timelapse clip uploader: %@", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  v18 = [*(a1 + 40) timelapseClipUploader];
  [v18 finishWithCompletionHandler:0];

  v19 = [*(a1 + 40) delegate];
  [v19 session:*(a1 + 40) didEndWithError:*(a1 + 48)];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_handleDidFailAnalysisWithError:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(v5);

  [(HMDCameraRecordingSession *)self setPendingFragmentsCount:[(HMDCameraRecordingSession *)self pendingFragmentsCount]- 1];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Analysis failed with error: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMDCameraRecordingSessionErrorDomain" code:2 userInfo:0];
  [(HMDCameraRecordingSession *)v7 _endSessionWithError:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_submitNotificationSuccessMetricWithRecordingEventTriggers:(unint64_t)a3 fragmentNumber:(unint64_t)a4
{
  v7 = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [HMDCameraRecordingClipNotificationEvent alloc];
  v9 = [(HMDCameraRecordingSession *)self identifier];
  v10 = [(HMDCameraRecordingSession *)self camera];
  v11 = [v10 uniqueIdentifier];
  v13 = [(HMDCameraRecordingClipNotificationEvent *)v8 initWithSessionID:v9 cameraID:v11 sequenceNumber:a4 recordingEventTriggers:a3];

  v12 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v12 submitLogEvent:v13];
}

- (void)_notifyForSignificantEvent:(id)a3 recordingEventTriggers:(unint64_t)a4 fragmentNumber:(unint64_t)a5
{
  v8 = a3;
  v9 = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(v9);

  objc_initWeak(&location, self);
  v10 = [(HMDCameraRecordingSession *)self clipUploader];
  v11 = [(HMDCameraRecordingSession *)self homePresenceByPairingIdentity];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __94__HMDCameraRecordingSession__notifyForSignificantEvent_recordingEventTriggers_fragmentNumber___block_invoke;
  v12[3] = &unk_279730B70;
  objc_copyWeak(v13, &location);
  v13[1] = a4;
  v13[2] = a5;
  [v10 addSignificantEvent:v8 homePresenceByPairingIdentity:v11 completionHandler:v12];

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

void __94__HMDCameraRecordingSession__notifyForSignificantEvent_recordingEventTriggers_fragmentNumber___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!a2)
  {
    v5 = WeakRetained;
    [WeakRetained _submitNotificationSuccessMetricWithRecordingEventTriggers:*(a1 + 40) fragmentNumber:*(a1 + 48)];
    WeakRetained = v5;
  }
}

- (void)_notifyForAnalyzerResult:(id)a3 fragment:(id)a4 timeOffsetWithinClip:(double)a5 recordingEventTriggers:(unint64_t)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(v12);

  v13 = [(HMDCameraRecordingSession *)self timelineManager];
  if (v11)
  {
    [v11 timeRange];
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
  }

  *&time.value = v27;
  time.epoch = v28;
  v14 = [v13 creationDateForFragmentAtTimeOffset:CMTimeGetSeconds(&time)];

  v15 = [(HMDCameraRecordingSession *)self significantEventManager];
  v16 = [v15 significantEventsForAnalyzerFragmentResult:v10 dateOfOccurrence:v14 timeOffsetWithinClip:a6 recordingEventTriggers:a5];

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

        -[HMDCameraRecordingSession _notifyForSignificantEvent:recordingEventTriggers:fragmentNumber:](self, "_notifyForSignificantEvent:recordingEventTriggers:fragmentNumber:", *(*(&v23 + 1) + 8 * v21++), a6, [v11 sequenceNumber]);
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v19);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_uploadTimelapseFragment:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    LODWORD(buf.value) = 138543618;
    *(&buf.value + 4) = v9;
    LOWORD(buf.flags) = 2112;
    *(&buf.flags + 2) = v4;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Uploading timelapse fragment: %@", &buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraRecordingSession *)v7 timelapseClipUploader];

  if (!v10)
  {
    if (v4)
    {
      [v4 timeRange];
    }

    else
    {
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
    }

    *&buf.value = v47;
    buf.epoch = v48;
    [(HMDCameraRecordingSession *)v7 setTimelapseClipStartTime:&buf];
    v11 = [(HMDCameraRecordingSession *)v7 timelineManager];
    [(HMDCameraRecordingSession *)v7 timelapseClipStartTime];
    v12 = [v11 creationDateForFragmentAtTimeOffset:CMTimeGetSeconds(&buf)];

    v13 = [(HMDCameraRecordingSession *)v7 factory];
    v14 = [MEMORY[0x277CCAD78] UUID];
    v15 = [(HMDCameraRecordingSession *)v7 localZone];
    v16 = [(HMDCameraRecordingSession *)v7 workQueue];
    v17 = [(HMDCameraRecordingSession *)v7 logIdentifier];
    v18 = [v13 createUploaderWithClipUUID:v14 startDate:v12 targetFragmentDuration:1 quality:v15 localZone:v16 workQueue:v17 logIdentifier:60.0];
    [(HMDCameraRecordingSession *)v7 setTimelapseClipUploader:v18];

    v19 = [(HMDCameraRecordingSession *)v7 timelapseClipUploader];
    [v19 setDelegate:v7];

    v20 = objc_autoreleasePoolPush();
    v21 = v7;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [(HMDCameraRecordingSession *)v21 timelapseClipUploader];
      LODWORD(buf.value) = 138543618;
      *(&buf.value + 4) = v23;
      LOWORD(buf.flags) = 2112;
      *(&buf.flags + 2) = v24;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Created new timelapse clip uploader: %@", &buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v25 = [(HMDCameraRecordingSession *)v21 timelapseClipUploader];
    [v25 createClipWithCompletionHandler:0];
  }

  v26 = [(HMDCameraRecordingSession *)v7 analysisTimelapseVideoInitData];
  v27 = [v4 initializationSegment];
  if (!v26 || (-[HMDCameraRecordingSession factory](v7, "factory"), v28 = objc_claimAutoreleasedReturnValue(), v29 = [v28 isVideoInitData:v26 combinableWithVideoInitData:v27], v28, (v29 & 1) == 0))
  {
    v30 = objc_autoreleasePoolPush();
    v31 = v7;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = HMFGetLogIdentifier();
      LODWORD(buf.value) = 138543874;
      *(&buf.value + 4) = v33;
      LOWORD(buf.flags) = 2112;
      *(&buf.flags + 2) = v26;
      HIWORD(buf.epoch) = 2112;
      v51 = v27;
      _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Analysis timelapse video init fragment changed from %@ to %@", &buf, 0x20u);
    }

    objc_autoreleasePoolPop(v30);
    [(HMDCameraRecordingSession *)v31 setAnalysisTimelapseVideoInitData:v27];
    v34 = [(HMDCameraRecordingSession *)v31 timelapseClipUploader];
    [v34 addVideoInitData:v27 completionHandler:0];
  }

  if (v4)
  {
    [v4 timeRange];
    buf = *&v46[1];
    Seconds = CMTimeGetSeconds(&buf);
    [v4 timeRange];
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
  [(HMDCameraRecordingSession *)v7 timelapseClipStartTime];
  CMTimeSubtract(&buf, &lhs, &rhs);
  v36 = CMTimeGetSeconds(&buf);
  v37 = [(HMDCameraRecordingSession *)v7 timelapseClipUploader];
  v38 = [v4 separableSegment];
  [v37 addVideoSegmentData:v38 timeOffsetWithinClip:0 duration:0 clipFinalizedBecauseMaxDurationExceeded:v36 completionHandler:Seconds];

  v39 = *MEMORY[0x277D85DE8];
}

- (void)_handleFragmentResult:(id)a3
{
  v111 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(v5);

  [(HMDCameraRecordingSession *)self setPendingFragmentsCount:[(HMDCameraRecordingSession *)self pendingFragmentsCount]- 1];
  if (![(HMDCameraRecordingSession *)self isActive])
  {
    goto LABEL_65;
  }

  v6 = [v4 fragment];
  [(HMDCameraRecordingSession *)self clipStartTime];
  if ((v107 & 1) == 0)
  {
    goto LABEL_10;
  }

  if (v6)
  {
    [v6 timeRange];
  }

  else
  {
    memset(&range, 0, sizeof(range));
  }

  CMTimeRangeGetEnd(&lhs, &range);
  [(HMDCameraRecordingSession *)self clipStartTime];
  CMTimeSubtract(&range.start, &lhs, &rhs);
  Seconds = CMTimeGetSeconds(&range.start);
  v8 = [(HMDCameraRecordingSession *)self factory];
  [v8 maximumClipDuration];
  v10 = v9;

  if (Seconds > v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      if (v6)
      {
        [v6 timeRange];
      }

      else
      {
        memset(&range, 0, sizeof(range));
      }

      CMTimeRangeGetEnd(&lhs, &range);
      [(HMDCameraRecordingSession *)v12 clipStartTime];
      CMTimeSubtract(&range.start, &lhs, &rhs);
      v15 = CMTimeGetSeconds(&range.start);
      v16 = [(HMDCameraRecordingSession *)v12 factory];
      [v16 maximumClipDuration];
      LODWORD(range.start.value) = 138543874;
      *(&range.start.value + 4) = v14;
      LOWORD(range.start.flags) = 2048;
      *(&range.start.flags + 2) = v15;
      HIWORD(range.start.epoch) = 2048;
      range.duration.value = v17;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Finishing current clip upload because segment would exceed max duration (%.2f > %.2f)", &range, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    [(HMDCameraRecordingSession *)v12 _finishCurrentClipUploader];
    v101 = 1;
  }

  else
  {
LABEL_10:
    v101 = 0;
  }

  v18 = [v4 configuration];
  v19 = [v18 eventTriggers];

  v20 = objc_autoreleasePoolPush();
  v21 = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    v24 = HMCameraSignificantEventTypesAsString();
    LODWORD(range.start.value) = 138543618;
    *(&range.start.value + 4) = v23;
    LOWORD(range.start.flags) = 2112;
    *(&range.start.flags + 2) = v24;
    _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Comparing fragment with recording event triggers: %@", &range, 0x16u);
  }

  objc_autoreleasePoolPop(v20);
  v25 = [HMDCameraRecordingFragmentAnalyzedEvent alloc];
  v26 = [(HMDCameraRecordingSession *)v21 identifier];
  v27 = [(HMDCameraRecordingSession *)v21 camera];
  v28 = [v27 uniqueIdentifier];
  v29 = -[HMDCameraRecordingFragmentAnalyzedEvent initWithSessionID:cameraID:sequenceNumber:](v25, "initWithSessionID:cameraID:sequenceNumber:", v26, v28, [v6 sequenceNumber]);

  v30 = [v4 outcome];
  -[HMDCameraRecordingFragmentAnalyzedEvent setIsSuccess:](v29, "setIsSuccess:", [v30 isSuccess]);

  v100 = v19;
  if (-[HMDCameraRecordingSession _shouldRecordFragmentWithAnalyzerResult:sequenceNumber:recordingEventTriggers:fragmentAnalyzedEvent:](v21, "_shouldRecordFragmentWithAnalyzerResult:sequenceNumber:recordingEventTriggers:fragmentAnalyzedEvent:", v4, [v6 sequenceNumber], v19 & 0x1F, v29))
  {
    v31 = MEMORY[0x277CCABB0];
    v32 = [(HMDCameraRecordingSession *)v21 factory];
    [v32 recordingExtensionDuration];
    v33 = [v31 numberWithDouble:?];
    [(HMDCameraRecordingSession *)v21 setRemainingRecordingExtensionDuration:v33];
  }

  else
  {
    v34 = [(HMDCameraRecordingSession *)v21 remainingRecordingExtensionDuration];

    if (!v34)
    {
      v38 = 0;
      goto LABEL_31;
    }

    [(HMDCameraRecordingFragmentAnalyzedEvent *)v29 setRecordingReason:4];
    v35 = [(HMDCameraRecordingSession *)v21 remainingRecordingExtensionDuration];
    [v35 doubleValue];
    v37 = v36;
    if (v6)
    {
      [v6 duration];
    }

    else
    {
      memset(&range, 0, 24);
    }

    v39 = v37 - CMTimeGetSeconds(&range.start);

    v40 = objc_autoreleasePoolPush();
    v41 = v21;
    v42 = HMFGetOSLogHandle();
    v43 = os_log_type_enabled(v42, OS_LOG_TYPE_INFO);
    if (v39 <= 0.0)
    {
      if (v43)
      {
        v47 = HMFGetLogIdentifier();
        v48 = [(HMDCameraRecordingSession *)v41 remainingRecordingExtensionDuration];
        LODWORD(range.start.value) = 138543618;
        *(&range.start.value + 4) = v47;
        LOWORD(range.start.flags) = 2112;
        *(&range.start.flags + 2) = v48;
        _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@Flagging fragment for recording because remaining recording extension duration is %@s. Extension duration will be cleared", &range, 0x16u);
      }

      objc_autoreleasePoolPop(v40);
      [(HMDCameraRecordingSession *)v41 setRemainingRecordingExtensionDuration:0];
    }

    else
    {
      if (v43)
      {
        v44 = HMFGetLogIdentifier();
        v45 = [(HMDCameraRecordingSession *)v41 remainingRecordingExtensionDuration];
        LODWORD(range.start.value) = 138543874;
        *(&range.start.value + 4) = v44;
        LOWORD(range.start.flags) = 2112;
        *(&range.start.flags + 2) = v45;
        HIWORD(range.start.epoch) = 2048;
        *&range.duration.value = v39;
        _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@Flagging fragment for recording because remaining recording extension duration is %@s. New extension duration will be %fs", &range, 0x20u);
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
  v50 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "sequenceNumber")}];
  v109[2] = v50;
  v108[3] = @"analysisFPS";
  v51 = MEMORY[0x277CCABB0];
  v52 = [v4 outcome];
  [v52 analysisFPS];
  v53 = [v51 numberWithDouble:?];
  v109[3] = v53;
  v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v109 forKeys:v108 count:4];
  [(HMDCameraRecordingSession *)v21 _writeEvent:v54];

  v55 = objc_autoreleasePoolPush();
  v56 = v21;
  v57 = HMFGetOSLogHandle();
  v58 = os_log_type_enabled(v57, OS_LOG_TYPE_INFO);
  if (!v38)
  {
    if (v58)
    {
      v65 = HMFGetLogIdentifier();
      v66 = [v6 sequenceNumber];
      LODWORD(range.start.value) = 138543618;
      *(&range.start.value + 4) = v65;
      LOWORD(range.start.flags) = 2048;
      *(&range.start.flags + 2) = v66;
      _os_log_impl(&dword_2531F8000, v57, OS_LOG_TYPE_INFO, "%{public}@Fragment %lu was not flagged for recording", &range, 0x16u);
    }

    objc_autoreleasePoolPop(v55);
    [(HMDCameraRecordingSession *)v56 _finishCurrentClipUploader];
    [(HMDCameraRecordingSession *)v56 setIntroFragment:v6];
    [(HMDCameraRecordingSession *)v56 setIntroAnalyzerResult:v4];
    goto LABEL_62;
  }

  if (v58)
  {
    v59 = HMFGetLogIdentifier();
    v60 = [v6 sequenceNumber];
    LODWORD(range.start.value) = 138543618;
    *(&range.start.value + 4) = v59;
    LOWORD(range.start.flags) = 2048;
    *(&range.start.flags + 2) = v60;
    _os_log_impl(&dword_2531F8000, v57, OS_LOG_TYPE_INFO, "%{public}@Fragment %lu was flagged for recording", &range, 0x16u);
  }

  objc_autoreleasePoolPop(v55);
  v61 = [(HMDCameraRecordingSession *)v56 introFragment];
  v62 = [(HMDCameraRecordingSession *)v56 introAnalyzerResult];
  v63 = [(HMDCameraRecordingSession *)v56 clipUploader];

  v64 = v100;
  if (v63)
  {
    if (v6)
    {
LABEL_36:
      [v6 timeRange];
      goto LABEL_50;
    }
  }

  else
  {
    if (v61)
    {
      v67 = v61;
    }

    else
    {
      v67 = v6;
    }

    v68 = v67;
    v98 = v62;
    v99 = v61;
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
    v69 = [(HMDCameraRecordingSession *)v56 timelineManager];
    [(HMDCameraRecordingSession *)v56 clipStartTime];
    v70 = [v69 creationDateForFragmentAtTimeOffset:CMTimeGetSeconds(&range.start)];

    v71 = [(HMDCameraRecordingSession *)v56 factory];
    v72 = [MEMORY[0x277CCAD78] UUID];
    [(HMDCameraRecordingSession *)v56 configuredFragmentDuration];
    v74 = v73;
    v75 = [(HMDCameraRecordingSession *)v56 localZone];
    v76 = [(HMDCameraRecordingSession *)v56 workQueue];
    v77 = [(HMDCameraRecordingSession *)v56 logIdentifier];
    v96 = v70;
    v78 = [v71 createUploaderWithClipUUID:v72 startDate:v70 targetFragmentDuration:0 quality:v75 localZone:v76 workQueue:v77 logIdentifier:v74];
    [(HMDCameraRecordingSession *)v56 setClipUploader:v78];

    v79 = [(HMDCameraRecordingSession *)v56 clipUploader];
    [v79 setDelegate:v56];

    v80 = objc_autoreleasePoolPush();
    v81 = v56;
    v82 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
    {
      v83 = HMFGetLogIdentifier();
      v84 = [(HMDCameraRecordingSession *)v81 clipUploader];
      LODWORD(range.start.value) = 138543618;
      *(&range.start.value + 4) = v83;
      LOWORD(range.start.flags) = 2112;
      *(&range.start.flags + 2) = v84;
      _os_log_impl(&dword_2531F8000, v82, OS_LOG_TYPE_INFO, "%{public}@Created new clip uploader: %@", &range, 0x16u);
    }

    objc_autoreleasePoolPop(v80);
    v61 = v99;
    v64 = v100;
    v62 = v98;
    if (v6)
    {
      goto LABEL_36;
    }
  }

  memset(&v102, 0, sizeof(v102));
LABEL_50:
  lhs = v102;
  [(HMDCameraRecordingSession *)v56 clipStartTime];
  CMTimeSubtract(&range.start, &lhs, &rhs);
  [(HMDCameraRecordingSession *)v56 _notifyForAnalyzerResult:v4 fragment:v6 timeOffsetWithinClip:v64 & 0x1F recordingEventTriggers:CMTimeGetSeconds(&range.start)];
  if (v61 && v62)
  {
    v85 = objc_autoreleasePoolPush();
    v86 = v56;
    v87 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
    {
      v88 = HMFGetLogIdentifier();
      v89 = [v61 sequenceNumber];
      LODWORD(range.start.value) = 138543618;
      *(&range.start.value + 4) = v88;
      LOWORD(range.start.flags) = 2048;
      *(&range.start.flags + 2) = v89;
      _os_log_impl(&dword_2531F8000, v87, OS_LOG_TYPE_INFO, "%{public}@Uploading intro fragment %lu", &range, 0x16u);
    }

    objc_autoreleasePoolPop(v85);
    v90 = [v62 fragment];
    v91 = v90;
    if (v90)
    {
      [v90 duration];
    }

    else
    {
      memset(&range, 0, 24);
    }

    [(HMDCameraRecordingSession *)v86 _uploadFragment:v61 withDuration:v101 clipFinalizedBecauseMaxDurationExceeded:CMTimeGetSeconds(&range.start)];

    [(HMDCameraRecordingSession *)v86 setIntroFragment:0];
    [(HMDCameraRecordingSession *)v86 setIntroAnalyzerResult:0];
  }

  if (v6)
  {
    [v6 duration];
  }

  else
  {
    memset(&range, 0, 24);
  }

  [(HMDCameraRecordingSession *)v56 _uploadFragment:v6 withDuration:v101 clipFinalizedBecauseMaxDurationExceeded:CMTimeGetSeconds(&range.start)];
  v92 = [(HMDCameraRecordingSession *)v56 clipUploader];
  v93 = [v92 clipUUID];
  [(HMDCameraRecordingFragmentAnalyzedEvent *)v29 setClipModelID:v93];

LABEL_62:
  if ([(HMDCameraRecordingSession *)v56 _shouldEndSessionAfterFragment:v6])
  {
    [(HMDCameraRecordingSession *)v56 _endSessionWithError:0];
  }

  v94 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v94 submitLogEvent:v29];

LABEL_65:
  v95 = *MEMORY[0x277D85DE8];
}

- (void)analyzer:(id)a3 didCreateTimelapseFragment:(id)a4
{
  v5 = a4;
  v6 = [(HMDCameraRecordingSession *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__HMDCameraRecordingSession_analyzer_didCreateTimelapseFragment___block_invoke;
  v8[3] = &unk_2797359B0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Timelapse fragment was created: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) timelapseFragmentManager];
  [v7 handleVariantFragment:*(a1 + 40)];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)analyzer:(id)a3 didFailWithError:(id)a4
{
  v5 = a4;
  v6 = [(HMDCameraRecordingSession *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__HMDCameraRecordingSession_analyzer_didFailWithError___block_invoke;
  v8[3] = &unk_2797359B0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)analyzer:(id)a3 didAnalyzeFragmentWithResult:(id)a4
{
  v5 = a4;
  v6 = [(HMDCameraRecordingSession *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__HMDCameraRecordingSession_analyzer_didAnalyzeFragmentWithResult___block_invoke;
  v8[3] = &unk_2797359B0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Fragment was analyzed: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _handleFragmentResult:*(a1 + 40)];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (NSDictionary)homePresenceByPairingIdentity
{
  v3 = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(v3);

  homePresenceByPairingIdentity = self->_homePresenceByPairingIdentity;

  return homePresenceByPairingIdentity;
}

- (void)handleNoMoreFragmentsAvailable
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Accessory has no more fragments available for analysis", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [(HMDCameraRecordingSession *)v5 setNoMoreFragmentsAvailable:1];
  if (![(HMDCameraRecordingSession *)v5 pendingFragmentsCount]&& [(HMDCameraRecordingSession *)v5 isActive])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = v5;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Finalizing session because all fragments have been analyzed", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    [(HMDCameraRecordingSession *)v9 _endSessionWithError:0];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleFragment:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraRecordingSession *)self delegate];
  v7 = [(HMDCameraRecordingSession *)self cameraVideoInitFragment];
  if (!v7)
  {
    if ([(HMDCameraRecordingSession *)self _isValidFirstSessionFragment:v4])
    {
      [(HMDCameraRecordingSession *)self setCameraVideoInitFragment:v4];
      [(HMDCameraRecordingSession *)self _writeFragment:v4];
      v13 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:&unk_28662BDD0];
      v30 = [(HMDCameraRecordingSession *)self camera];
      v19 = [v30 accessory];

      v31 = [v19 name];
      [v13 setObject:v31 forKeyedSubscript:@"cameraName"];

      v32 = [v19 manufacturer];
      [v13 setObject:v32 forKeyedSubscript:@"cameraManufacturer"];

      v33 = [v19 model];
      [v13 setObject:v33 forKeyedSubscript:@"cameraModel"];

      v34 = [(HMDCameraRecordingSession *)self camera];
      v35 = [v34 uniqueIdentifier];
      v36 = [v35 UUIDString];
      [v13 setObject:v36 forKeyedSubscript:@"uniqueIdentifier"];

      v37 = [(HMDCameraRecordingSession *)self camera];
      v38 = [v37 currentSettings];
      [v38 recordingEventTriggers];
      v39 = HMCameraSignificantEventTypesAsString();
      [v13 setObject:v39 forKeyedSubscript:@"recordingEventTriggers"];

      v40 = [v19 room];
      v41 = [v40 name];
      [v13 setObject:v41 forKeyedSubscript:@"room"];

      [(HMDCameraRecordingSession *)self _writeEvent:v13];
LABEL_9:

LABEL_19:
      goto LABEL_20;
    }

    v46 = objc_autoreleasePoolPush();
    v47 = self;
    v48 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v49;
      *&buf[12] = 2112;
      *&buf[14] = v4;
      v50 = "%{public}@Received invalid first session fragment: %@";
LABEL_17:
      _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_ERROR, v50, buf, 0x16u);
    }

LABEL_18:

    objc_autoreleasePoolPop(v46);
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMDCameraRecordingSessionErrorDomain" code:1 userInfo:0];
    [v6 session:v47 didEndWithError:v13];
    goto LABEL_19;
  }

  [(HMDCameraRecordingSession *)self _writeFragment:v4];
  if ([(HMDCameraRecordingSession *)self isActive])
  {
    if ([(HMDCameraRecordingSession *)self _isValidNonFirstSessionFragment:v4])
    {
      v8 = objc_alloc(MEMORY[0x277D14E18]);
      v9 = [v7 data];
      v10 = [v4 data];
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCameraRecordingSession currentFragmentNumber](self, "currentFragmentNumber")}];
      v52 = v11;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
      v13 = [v8 initWithInitializationSegment:v9 separableSegment:v10 sequenceNumbers:v12];

      v14 = [(HMDCameraRecordingSession *)self sessionActivity];
      [v14 markWithFormat:@"Analyze fragment %lu", -[HMDCameraRecordingSession currentFragmentNumber](self, "currentFragmentNumber")];

      [(HMDCameraRecordingSession *)self setCurrentFragmentNumber:[(HMDCameraRecordingSession *)self currentFragmentNumber]+ 1];
      [(HMDCameraRecordingSession *)self setPendingFragmentsCount:[(HMDCameraRecordingSession *)self pendingFragmentsCount]+ 1];
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v18;
        *&buf[12] = 2112;
        *&buf[14] = v13;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Requesting analysis for fragment: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      v19 = objc_alloc_init(MEMORY[0x277D14DE0]);
      [v19 setEventTriggers:{-[HMDCameraRecordingSession recordingEventTriggers](v16, "recordingEventTriggers") & 0x1F}];
      v20 = [(HMDCameraRecordingSession *)v16 activityZones];
      v21 = [(HMDCameraRecordingSession *)v16 activityZonesIncludedForSignificantEventDetection];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __hmiActivityZonesFromActivityZones_block_invoke;
      v54 = &__block_descriptor_33_e53___HMICameraActivityZone_16__0__HMCameraActivityZone_8l;
      v55 = v21;
      v22 = [v20 na_map:buf];
      v23 = [v22 allObjects];

      [v19 setActivityZones:v23];
      v24 = [(HMDCameraRecordingSession *)v16 camera];
      v25 = [v24 hapAccessory];
      v26 = [v25 home];
      v27 = [v26 personManagerSettings];
      [v19 setRecognizeFaces:{objc_msgSend(v27, "isFaceClassificationEnabled")}];

      v28 = [(HMDCameraRecordingSession *)v16 videoAnalyzer];
      [v28 analyzeFragment:v13 configuration:v19];

      v29 = [(HMDCameraRecordingSession *)v16 videoAnalyzer];
      [v29 flushAsync];

      goto LABEL_9;
    }

    v46 = objc_autoreleasePoolPush();
    v47 = self;
    v48 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v49;
      *&buf[12] = 2112;
      *&buf[14] = v4;
      v50 = "%{public}@Received invalid non-first session fragment: %@";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v42 = objc_autoreleasePoolPush();
  v43 = self;
  v44 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
  {
    v45 = HMFGetLogIdentifier();
    *buf = 138543362;
    *&buf[4] = v45;
    _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_INFO, "%{public}@Dropping fragment for analysis as session is no longer active", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v42);
  [v6 session:v43 didEndWithError:0];
LABEL_20:

  v51 = *MEMORY[0x277D85DE8];
}

- (void)configure
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraRecordingSession *)self camera];
  v4 = [v3 hapAccessory];
  v5 = [v4 home];

  if (v5)
  {
    v6 = [(HMDCameraRecordingSession *)self timelapseFragmentManager];
    [v6 setDelegate:self];

    v7 = [(HMDCameraRecordingSession *)self videoAnalyzer];
    [v7 setDelegate:self];

    v8 = [v5 personManager];
    v9 = [v8 hmiPersonManager];
    v10 = [(HMDCameraRecordingSession *)self videoAnalyzer];
    [v10 setHomePersonManager:v9];

    v11 = MEMORY[0x277CBEB98];
    v12 = [v5 users];
    v13 = [v12 na_map:&__block_literal_global_161851];
    v14 = [v11 setWithArray:v13];
    v15 = [(HMDCameraRecordingSession *)self videoAnalyzer];
    [v15 setExternalPersonManagers:v14];

    v16 = [v5 analysisStatePublisher];
    v17 = [v16 analysisStateManager];
    v18 = [(HMDCameraRecordingSession *)self videoAnalyzer];
    [v18 setAnalysisStateManager:v17];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v22;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Can't configure recording session because home reference is nil", &v24, 0xCu);
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
  v3 = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraRecordingSession *)self camera];
  v5 = [v4 currentSettings];
  v6 = [v5 areActivityZonesIncludedForSignificantEventDetection];

  return v6;
}

- (id)activityZones
{
  v3 = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraRecordingSession *)self camera];
  v5 = [v4 currentSettings];
  v6 = [v5 activityZones];

  return v6;
}

- (unint64_t)recordingEventTriggers
{
  v3 = [(HMDCameraRecordingSession *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraRecordingSession *)self camera];
  v5 = [v4 currentSettings];
  v6 = [v5 recordingEventTriggers];

  return v6;
}

- (NSDictionary)stateDump
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCameraRecordingSession isActive](self, "isActive")}];
  [v3 setObject:v4 forKeyedSubscript:@"Active"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCameraRecordingSession currentFragmentNumber](self, "currentFragmentNumber")}];
  [v3 setObject:v5 forKeyedSubscript:@"Current Fragment Number"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCameraRecordingSession pendingFragmentsCount](self, "pendingFragmentsCount")}];
  [v3 setObject:v6 forKeyedSubscript:@"Pending Fragments Count"];

  v7 = [(HMDCameraRecordingSession *)self clipUploader];
  v8 = [v7 stateDump];
  [v3 setObject:v8 forKeyedSubscript:@"Clip Uploader"];

  v9 = [(HMDCameraRecordingSession *)self timelapseClipUploader];
  v10 = [v9 stateDump];
  [v3 setObject:v10 forKeyedSubscript:@"Timelapse Clip Uploader"];

  v11 = [v3 copy];

  return v11;
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543618;
    v10 = v6;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Deallocating recording session: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8.receiver = v4;
  v8.super_class = HMDCameraRecordingSession;
  [(HMDCameraRecordingSession *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDCameraRecordingSession)initWithWorkQueue:(id)a3 camera:(id)a4 hapAccessory:(id)a5 home:(id)a6 localZone:(id)a7 configuredFragmentDuration:(double)a8 timelineManager:(id)a9 homePresenceByPairingIdentity:(id)a10 factory:(id)a11
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  obj = a7;
  v70 = a7;
  v69 = a9;
  v68 = a10;
  v22 = a11;
  v67 = v18;
  if (!v18)
  {
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!v19)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  if (!v20)
  {
LABEL_16:
    _HMFPreconditionFailure();
    goto LABEL_17;
  }

  if (!v21)
  {
LABEL_17:
    _HMFPreconditionFailure();
    goto LABEL_18;
  }

  if (!v70)
  {
LABEL_18:
    _HMFPreconditionFailure();
LABEL_19:
    _HMFPreconditionFailure();
    goto LABEL_20;
  }

  if (a8 <= 0.0 || a8 < 2.22044605e-16)
  {
    goto LABEL_19;
  }

  if (!v69)
  {
LABEL_20:
    _HMFPreconditionFailure();
    goto LABEL_21;
  }

  if (!v68)
  {
LABEL_21:
    _HMFPreconditionFailure();
    goto LABEL_22;
  }

  if (!v22)
  {
LABEL_22:
    v53 = _HMFPreconditionFailure();
    return [(HMDCameraRecordingSession *)v53 initWithWorkQueue:v54 camera:v55 hapAccessory:v56 home:v57 localZone:v58 configuredFragmentDuration:v59 timelineManager:v61 homePresenceByPairingIdentity:v60, a10];
  }

  v65 = v22;
  v75.receiver = self;
  v75.super_class = HMDCameraRecordingSession;
  v23 = [(HMDCameraRecordingSession *)&v75 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_workQueue, a3);
    objc_storeStrong(&v24->_camera, a4);
    objc_storeStrong(&v24->_localZone, obj);
    v24->_configuredFragmentDuration = a8;
    objc_storeStrong(&v24->_timelineManager, a9);
    objc_storeStrong(&v24->_homePresenceByPairingIdentity, a10);
    objc_storeStrong(&v24->_factory, a11);
    v25 = [MEMORY[0x277CCAD78] UUID];
    v64 = v19;
    identifier = v24->_identifier;
    v24->_identifier = v25;

    v24->_active = 1;
    v27 = MEMORY[0x277CC0898];
    v28 = *(MEMORY[0x277CC0898] + 16);
    v24->_clipStartTime.epoch = v28;
    v29 = *v27;
    *&v24->_clipStartTime.value = *v27;
    *&v24->_timelapseClipStartTime.value = v29;
    v24->_timelapseClipStartTime.epoch = v28;
    v30 = MEMORY[0x277CCACA8];
    v31 = [v20 name];
    v32 = [v30 stringWithFormat:@"%@/%@", v31, v24->_identifier];
    logIdentifier = v24->_logIdentifier;
    v24->_logIdentifier = v32;

    obja = [[HMDAccessoryMetricVendorDetails alloc] initWithAccessory:v20];
    v34 = objc_alloc(MEMORY[0x277D14D68]);
    v35 = [v19 uniqueIdentifier];
    v36 = [v20 name];
    v37 = [(HMDAccessoryMetricVendorDetails *)obja manufacturer];
    v38 = [(HMDAccessoryMetricVendorDetails *)obja model];
    v39 = [(HMDAccessoryMetricVendorDetails *)obja firmwareVersion];
    v40 = [v34 initWithIdentifier:v35 name:v36 manufacturer:v37 model:v38 firmwareVersion:v39 hasBattery:{objc_msgSend(v20, "hasBattery")}];

    v41 = objc_alloc_init(MEMORY[0x277D14DD8]);
    [v41 setMaxFragmentAnalysisDuration:20.0];
    CMTimeMakeWithSeconds(&v74, a8 * 2.5, 1000);
    v73 = v74;
    [v41 setMaxFragmentDuration:&v73];
    [v41 setCamera:v40];
    [v41 setTranscode:0];
    v42 = [v21 uuid];
    [v41 setHomeUUID:v42];

    CMTimeMake(&v72, 1, 1);
    v73 = v72;
    [v41 setTimelapseInterval:&v73];
    CMTimeMakeWithSeconds(&v71, 60.0, 1000);
    v73 = v71;
    [v41 setTimelapsePreferredFragmentDuration:&v73];
    v43 = [(HMDCameraRecordingSessionFactory *)v24->_factory createTimelapseFragmentManagerWithLogIdentifier:v24->_logIdentifier];
    timelapseFragmentManager = v24->_timelapseFragmentManager;
    v24->_timelapseFragmentManager = v43;

    v19 = v64;
    v45 = [(HMDCameraRecordingSessionFactory *)v24->_factory createVideoAnalyzerWithConfiguration:v41 identifier:v24->_identifier];
    videoAnalyzer = v24->_videoAnalyzer;
    v24->_videoAnalyzer = v45;

    v47 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Recording Session" parent:0 options:3];
    sessionActivity = v24->_sessionActivity;
    v24->_sessionActivity = v47;

    v49 = [[HMDCameraSignificantEventFaceClassificationResolver alloc] initWithHome:v21];
    v50 = [(HMDCameraRecordingSessionFactory *)v24->_factory createSignificantEventManagerWithWorkQueue:v67 faceClassificationResolver:v49 logIdentifier:v24->_logIdentifier];
    significantEventManager = v24->_significantEventManager;
    v24->_significantEventManager = v50;
  }

  return v24;
}

- (HMDCameraRecordingSession)initWithWorkQueue:(id)a3 camera:(id)a4 hapAccessory:(id)a5 home:(id)a6 localZone:(id)a7 configuredFragmentDuration:(double)a8 timelineManager:(id)a9 homePresenceByPairingIdentity:(id)a10
{
  v18 = a10;
  v19 = a9;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v25 = objc_alloc_init(HMDCameraRecordingSessionFactory);
  v26 = [(HMDCameraRecordingSession *)self initWithWorkQueue:v24 camera:v23 hapAccessory:v22 home:v21 localZone:v20 configuredFragmentDuration:v19 timelineManager:a8 homePresenceByPairingIdentity:v18 factory:v25];

  return v26;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t52 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t52, &__block_literal_global_149_161917);
  }

  v3 = logCategory__hmf_once_v53;

  return v3;
}

uint64_t __40__HMDCameraRecordingSession_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v53;
  logCategory__hmf_once_v53 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end
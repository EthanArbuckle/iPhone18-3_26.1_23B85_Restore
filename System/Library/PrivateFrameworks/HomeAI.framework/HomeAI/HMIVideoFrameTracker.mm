@interface HMIVideoFrameTracker
+ (__CVBuffer)resizePixelBuffer:(__CVBuffer *)buffer;
- (HMIVideoFrameTracker)initWithConfiguration:(id)configuration workQueue:(id)queue;
- (HMIVideoFrameTrackerDelegate)delegate;
- (id)_motionDetectionsFromTarget:(opaqueCMSampleBuffer *)target reference:(opaqueCMSampleBuffer *)reference dynamicConfiguration:(id)configuration motionScore:(float *)score;
- (id)_tracksFromTarget:(opaqueCMSampleBuffer *)target reference:(opaqueCMSampleBuffer *)reference background:(opaqueCMSampleBuffer *)background dynamicConfiguration:(id)configuration motionDetections:(id)detections;
- (opaqueCMSampleBuffer)_backgroundAtTimeStamp:(id *)stamp;
- (opaqueCMSampleBuffer)prepareSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)_addCandidateForTarget:(opaqueCMSampleBuffer *)target motionScore:(float)score motionDetections:(id)detections tracks:(id)tracks;
- (void)_appendTarget:(opaqueCMSampleBuffer *)target timeStamp:(id *)stamp motionDetections:(id)detections;
- (void)_drainCandidateThatExpiredBefore:(id *)before;
- (void)_drainResizedBuffersThatExpiredBefore:(id *)before;
- (void)_synthesizeMotionDetectionWithTarget:(opaqueCMSampleBuffer *)target;
- (void)_visualizeFrames:(id)frames targetEvents:(id)events backgroundEvents:(id)backgroundEvents regionOfInterest:(CGRect)interest;
- (void)_visualizeTargetEvents:(id)events backgroundEvents:(id)backgroundEvents regionOfInterest:(CGRect)interest targetTimeStamp:(id *)stamp;
- (void)_visualizeTargetsThatExpiredBefore:(id *)before;
- (void)dealloc;
- (void)flush;
- (void)handleFrameAnalyzerResult:(id)result;
- (void)handleSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)handleSampleBuffer:(opaqueCMSampleBuffer *)buffer reference:(opaqueCMSampleBuffer *)reference;
@end

@implementation HMIVideoFrameTracker

- (HMIVideoFrameTracker)initWithConfiguration:(id)configuration workQueue:(id)queue
{
  configurationCopy = configuration;
  v31.receiver = self;
  v31.super_class = HMIVideoFrameTracker;
  v7 = [(HMIVideoAnalyzerProcessingNode *)&v31 initWithConfiguration:configurationCopy workQueue:queue];
  if (v7)
  {
    CMTimeMakeWithSeconds(&v30, 2.0, 1000);
    v8 = *&v30.value;
    *(v7 + 18) = v30.epoch;
    *(v7 + 8) = v8;
    v9 = *(v7 + 10);
    *(v7 + 10) = 0;

    *(v7 + 9) = 0;
    v10 = +[HMIPreference sharedInstance];
    v11 = [v10 numberPreferenceForKey:@"videoFrameTrackerMaxCandidates" defaultValue:&unk_284075318];
    *(v7 + 8) = [v11 unsignedIntegerValue];

    v12 = objc_alloc_init(HMIMotionDetector);
    v13 = *(v7 + 7);
    *(v7 + 7) = v12;

    CMTimeMakeWithSeconds(&v30, 3.0, 1000);
    v14 = *&v30.value;
    *(v7 + 21) = v30.epoch;
    *(v7 + 152) = v14;
    v15 = MEMORY[0x277CC08F0];
    *(v7 + 11) = *MEMORY[0x277CC08F0];
    *(v7 + 24) = *(v15 + 16);
    *(v7 + 12) = 0;
    CMTimeMake(&v30, 100, 1000);
    v16 = *&v30.value;
    *(v7 + 27) = v30.epoch;
    *(v7 + 200) = v16;
    *(v7 + 13) = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    if ([configurationCopy saveAnalyzerResultsToDisk])
    {
      v17 = objc_alloc_init(MEMORY[0x277CCA968]);
      [v17 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
      v18 = [MEMORY[0x277CBEAA8] now];
      v19 = [v17 stringFromDate:v18];

      v20 = MEMORY[0x277CCACA8];
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      v23 = [uUIDString substringToIndex:4];
      v24 = [v20 stringWithFormat:@"/tmp/TrackerReport-%@-%@.html", v19, v23];

      v25 = [[HMIHTMLReport alloc] initWithTitle:@"Tracker" outputPath:v24];
      v26 = *(v7 + 14);
      *(v7 + 14) = v25;

      array = [MEMORY[0x277CBEB18] array];
      v28 = *(v7 + 15);
      *(v7 + 15) = array;
    }
  }

  return v7;
}

- (void)flush
{
  workQueue = [(HMIVideoAnalyzerProcessingNode *)self workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  workQueue2 = [(HMIVideoAnalyzerProcessingNode *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__HMIVideoFrameTracker_flush__block_invoke;
  block[3] = &unk_278752868;
  block[4] = self;
  dispatch_sync(workQueue2, block);
}

void __29__HMIVideoFrameTracker_flush__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *MEMORY[0x277CC08B0];
  v4 = *(MEMORY[0x277CC08B0] + 16);
  [v2 _drainCandidateThatExpiredBefore:&v3];
  CFArrayRemoveAllValues(*(*(a1 + 32) + 104));
}

- (void)dealloc
{
  background = self->_background;
  if (background)
  {
    CFRelease(background);
  }

  CFRelease(self->_resizedSampleBuffers);
  report = [(HMIVideoFrameTracker *)self report];

  if (report)
  {
    v6 = *MEMORY[0x277CC08B0];
    v7 = *(MEMORY[0x277CC08B0] + 16);
    [(HMIVideoFrameTracker *)self _visualizeTargetsThatExpiredBefore:&v6];
  }

  v5.receiver = self;
  v5.super_class = HMIVideoFrameTracker;
  [(HMIVideoFrameTracker *)&v5 dealloc];
}

- (void)handleSampleBuffer:(opaqueCMSampleBuffer *)buffer reference:(opaqueCMSampleBuffer *)reference
{
  workQueue = [(HMIVideoAnalyzerProcessingNode *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  dynamicConfiguration = [(HMIVideoAnalyzerProcessingNode *)self dynamicConfiguration];

  if (dynamicConfiguration)
  {
    v9 = +[HMIPreference sharedInstance];
    v10 = [v9 hasPreferenceForKey:@"syntheticEvents"];

    if (v10)
    {

      [(HMIVideoFrameTracker *)self _synthesizeMotionDetectionWithTarget:buffer];
    }

    else
    {
      memset(&v26, 0, sizeof(v26));
      CMSampleBufferGetPresentationTimeStamp(&v26, buffer);
      memset(&v25, 0, sizeof(v25));
      CMSampleBufferGetPresentationTimeStamp(&v25, reference);
      v11 = [(HMIVideoFrameTracker *)self prepareSampleBuffer:buffer];
      v24 = 0;
      dynamicConfiguration2 = [(HMIVideoAnalyzerProcessingNode *)self dynamicConfiguration];
      v13 = [(HMIVideoFrameTracker *)self _motionDetectionsFromTarget:v11 reference:reference dynamicConfiguration:dynamicConfiguration2 motionScore:&v24];

      dynamicConfiguration3 = [(HMIVideoAnalyzerProcessingNode *)self dynamicConfiguration];
      v15 = [(HMIVideoFrameTracker *)self _tracksFromTarget:v11 reference:reference background:buffer dynamicConfiguration:dynamicConfiguration3 motionDetections:v13];

      LODWORD(v16) = v24;
      [(HMIVideoFrameTracker *)self _addCandidateForTarget:buffer motionScore:v13 motionDetections:v15 tracks:v16];
      report = [(HMIVideoFrameTracker *)self report];

      if (report)
      {
        v23 = v26;
        [(HMIVideoFrameTracker *)self _appendTarget:v11 timeStamp:&v23 motionDetections:v13];
      }

      lhs = v26;
      expirationInterval = self->_expirationInterval;
      CMTimeSubtract(&v23, &lhs, &expirationInterval);
      [(HMIVideoFrameTracker *)self _drainCandidateThatExpiredBefore:&v23];
      v23 = v25;
      [(HMIVideoFrameTracker *)self _drainResizedBuffersThatExpiredBefore:&v23];
      CFRelease(v11);
    }
  }

  else
  {
    v18 = [HMIVideoFrameAnalyzer handleSampleBuffer:background:motionDetections:tracks:];
    [(HMIVideoFrameTracker *)v18 handleSampleBuffer:v19, v20];
  }
}

- (void)handleSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  workQueue = [(HMIVideoAnalyzerProcessingNode *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  memset(&v9, 0, sizeof(v9));
  CMSampleBufferGetPresentationTimeStamp(&v9, buffer);
  lhs = v9;
  expirationInterval = self->_expirationInterval;
  CMTimeSubtract(&v8, &lhs, &expirationInterval);
  [(HMIVideoFrameTracker *)self _drainCandidateThatExpiredBefore:&v8];
}

- (void)handleFrameAnalyzerResult:(id)result
{
  resultCopy = result;
  workQueue = [(HMIVideoAnalyzerProcessingNode *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  backgroundEstimator = [(HMIVideoFrameTracker *)self backgroundEstimator];

  if (backgroundEstimator)
  {
    backgroundEstimator2 = [(HMIVideoFrameTracker *)self backgroundEstimator];
    events = [resultCopy events];
    frame = [resultCopy frame];
    v10 = frame;
    if (frame)
    {
      [frame presentationTimeStamp];
    }

    else
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
    }

    [backgroundEstimator2 assignForegroundEvents:events timeStamp:&v26];

    backgroundEstimator3 = [(HMIVideoFrameTracker *)self backgroundEstimator];
    backgroundEvents = [resultCopy backgroundEvents];
    if (resultCopy)
    {
      [resultCopy backgroundTimeStamp];
    }

    else
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
    }

    [backgroundEstimator3 assignBackgroundEvents:backgroundEvents timeStamp:&v26];
  }

  report = [(HMIVideoFrameTracker *)self report];

  if (report)
  {
    events2 = [resultCopy events];
    backgroundEvents2 = [resultCopy backgroundEvents];
    [resultCopy regionOfInterest];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    frame2 = [resultCopy frame];
    v25 = frame2;
    if (frame2)
    {
      [frame2 presentationTimeStamp];
    }

    else
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
    }

    [(HMIVideoFrameTracker *)self _visualizeTargetEvents:events2 backgroundEvents:backgroundEvents2 regionOfInterest:&v26 targetTimeStamp:v17, v19, v21, v23];
  }
}

- (opaqueCMSampleBuffer)prepareSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  workQueue = [(HMIVideoAnalyzerProcessingNode *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  memset(&v17, 0, sizeof(v17));
  CMSampleBufferGetPresentationTimeStamp(&v17, buffer);
  if (CFArrayGetCount([(HMIVideoFrameTracker *)self resizedSampleBuffers]) < 1)
  {
    goto LABEL_6;
  }

  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex([(HMIVideoFrameTracker *)self resizedSampleBuffers], v6);
    memset(&v16, 0, sizeof(v16));
    CMSampleBufferGetPresentationTimeStamp(&v16, ValueAtIndex);
    time1 = v17;
    time2 = v16;
    if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
    {
      time2 = v16;
      approximationInterval = self->_approximationInterval;
      CMTimeAdd(&time1, &time2, &approximationInterval);
      time2 = v17;
      if (CMTimeCompare(&time2, &time1) < 0)
      {
        break;
      }
    }

    if (++v6 >= CFArrayGetCount([(HMIVideoFrameTracker *)self resizedSampleBuffers]))
    {
      goto LABEL_6;
    }
  }

  CopyWithPixelBuffer = CFRetain(ValueAtIndex);
  if (!CopyWithPixelBuffer)
  {
LABEL_6:
    v8 = [HMIVideoFrameTracker resizePixelBuffer:CMSampleBufferGetImageBuffer(buffer)];
    if (v8)
    {
      v9 = v8;
      CopyWithPixelBuffer = HMICMSampleBufferCreateCopyWithPixelBuffer(buffer, v8);
      CVPixelBufferRelease(v9);
      CFArrayAppendValue([(HMIVideoFrameTracker *)self resizedSampleBuffers], CopyWithPixelBuffer);
      resizedSampleBuffers = [(HMIVideoFrameTracker *)self resizedSampleBuffers];
      v18.length = CFArrayGetCount([(HMIVideoFrameTracker *)self resizedSampleBuffers]);
      v18.location = 0;
      CFArraySortValues(resizedSampleBuffers, v18, HMICMSampleBufferTimeAscendingComparator, 0);
    }

    else
    {
      return 0;
    }
  }

  return CopyWithPixelBuffer;
}

+ (__CVBuffer)resizePixelBuffer:(__CVBuffer *)buffer
{
  v23 = *MEMORY[0x277D85DE8];
  Size = HMICVPixelBufferGetSize(buffer);
  v6 = v5;
  v7 = HMIAspectRatioMake(Size, v5);
  if (HMIAspectRatioEqualToAspectRatio(v7, 0x900000010))
  {
    v8 = 180.0;
LABEL_3:
    v9 = 0x4074000000000000;
LABEL_4:
    v10 = *&v9;
    goto LABEL_7;
  }

  if (HMIAspectRatioEqualToAspectRatio(v7, 0x1000000009))
  {
    v8 = 320.0;
    v10 = 180.0;
  }

  else
  {
    if (HMIAspectRatioEqualToAspectRatio(v7, 0x300000004))
    {
      v8 = 240.0;
      goto LABEL_3;
    }

    if (HMIAspectRatioEqualToAspectRatio(v7, 0x400000003))
    {
      v8 = 320.0;
      v9 = 0x406E000000000000;
      goto LABEL_4;
    }

    if ((HMIAspectRatioEqualToAspectRatio(v7, 0x100000001) & 1) == 0)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543874;
        v18 = v15;
        v19 = 1024;
        v20 = v7;
        v21 = 1024;
        v22 = HIDWORD(v7);
        _os_log_impl(&dword_22D12F000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unsupported aspect ratio: (%d, %d)", buf, 0x18u);
      }

      objc_autoreleasePoolPop(v13);
      v8 = (320.0 / (v7 / SHIDWORD(v7)));
      goto LABEL_3;
    }

    v10 = 240.0;
    v8 = 240.0;
  }

LABEL_7:
  v11 = Size == v10 && v6 == v8;
  if (v11 && CVPixelBufferGetPixelFormatType(buffer) == 875704438)
  {
    return CVPixelBufferRetain(buffer);
  }

  v16 = 0;
  return [HMIVisionUtilities resizePixelBuffer:buffer size:875704438 pixelFormat:8 options:&v16 error:v10, v8];
}

- (void)_addCandidateForTarget:(opaqueCMSampleBuffer *)target motionScore:(float)score motionDetections:(id)detections tracks:(id)tracks
{
  v30 = *MEMORY[0x277D85DE8];
  detectionsCopy = detections;
  tracksCopy = tracks;
  v12 = [HMIVideoFrameTrackerFrameCandidate alloc];
  *&v13 = score;
  v14 = [(HMIVideoFrameTrackerFrameCandidate *)v12 initWithSampleBuffer:target score:detectionsCopy motionDetections:tracksCopy tracks:v13];
  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = HMFGetLogIdentifier();
    v26 = 138543618;
    v27 = v18;
    v28 = 2112;
    v29 = v14;
    _os_log_impl(&dword_22D12F000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Adding Candidate: %@", &v26, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  ++selfCopy->_numCandidates;
  candidate = [(HMIVideoFrameTracker *)selfCopy candidate];
  if (!candidate || (v20 = candidate, -[HMIVideoFrameTracker candidate](selfCopy, "candidate"), v21 = objc_claimAutoreleasedReturnValue(), [v21 score], v23 = v22, -[HMIVideoFrameTrackerFrameCandidate score](v14, "score"), v25 = v24, v21, v20, v23 < v25))
  {
    objc_storeStrong(&selfCopy->_candidate, v14);
  }
}

- (void)_drainCandidateThatExpiredBefore:(id *)before
{
  v28 = *MEMORY[0x277D85DE8];
  candidate = [(HMIVideoFrameTracker *)self candidate];
  v6 = candidate;
  if (candidate)
  {
    memset(&v26, 0, sizeof(v26));
    CMSampleBufferGetPresentationTimeStamp(&v26, [candidate sbuf]);
    numCandidates = [(HMIVideoFrameTracker *)self numCandidates];
    if (numCandidates >= [(HMIVideoFrameTracker *)self maxCandidates]|| (time1 = v26, time2 = *before, CMTimeCompare(&time1, &time2) < 0))
    {
      [v6 score];
      v9 = v8;
      if (v8 <= 0.0)
      {
        tracks = [v6 tracks];
        if ([tracks count])
        {
          time1 = v26;
          time2 = self->_trackAnalysisPTS;
          v11 = CMTimeCompare(&time1, &time2);

          if ((v11 & 0x80000000) == 0)
          {
            goto LABEL_7;
          }
        }

        else
        {
        }

LABEL_12:
        candidate = self->_candidate;
        self->_candidate = 0;

        self->_numCandidates = 0;
        goto LABEL_13;
      }

LABEL_7:
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = HMFGetLogIdentifier();
        LODWORD(time1.value) = 138543618;
        *(&time1.value + 4) = v15;
        LOWORD(time1.flags) = 2112;
        *(&time1.flags + 2) = v6;
        _os_log_impl(&dword_22D12F000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Selected: %@", &time1, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      delegate = [(HMIVideoFrameTracker *)selfCopy delegate];
      sbuf = [v6 sbuf];
      time1 = v26;
      v18 = [(HMIVideoFrameTracker *)selfCopy _backgroundAtTimeStamp:&time1];
      motionDetections = [v6 motionDetections];
      tracks2 = [v6 tracks];
      [delegate frameTracker:selfCopy didTrackFrame:sbuf background:v18 motionDetections:motionDetections tracks:tracks2];

      if (v9 <= 0.0)
      {
        time2 = v26;
        v21 = *&selfCopy->_trackInterval.value;
        v24.epoch = selfCopy->_trackInterval.epoch;
        *&v24.value = v21;
        CMTimeAdd(&time1, &time2, &v24);
        v22 = *&time1.value;
        selfCopy->_trackAnalysisPTS.epoch = time1.epoch;
        *&selfCopy->_trackAnalysisPTS.value = v22;
      }

      goto LABEL_12;
    }
  }

LABEL_13:
}

- (void)_drainResizedBuffersThatExpiredBefore:(id *)before
{
  if (CFArrayGetCount([(HMIVideoFrameTracker *)self resizedSampleBuffers]) >= 1)
  {
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex([(HMIVideoFrameTracker *)self resizedSampleBuffers], 0);
      memset(&v8, 0, sizeof(v8));
      CMSampleBufferGetPresentationTimeStamp(&v8, ValueAtIndex);
      time1 = v8;
      v6 = *before;
      if ((CMTimeCompare(&time1, &v6) & 0x80000000) == 0)
      {
        break;
      }

      CFArrayRemoveValueAtIndex([(HMIVideoFrameTracker *)self resizedSampleBuffers], 0);
    }

    while (CFArrayGetCount([(HMIVideoFrameTracker *)self resizedSampleBuffers]) > 0);
  }
}

- (void)_synthesizeMotionDetectionWithTarget:(opaqueCMSampleBuffer *)target
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMICMSampleBufferTinyDescription(target);
    *buf = 138543618;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Synthesizing Motion Detections, Target: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = *MEMORY[0x277CBF3A8];
  v11 = *(MEMORY[0x277CBF3A8] + 8);
  v12 = [HMIMotionDetection alloc];
  v13 = MEMORY[0x277CBEBF8];
  LODWORD(v14) = 1148846080;
  v15 = [(HMIMotionDetection *)v12 initWithBoundingBox:MEMORY[0x277CBEBF8] size:2 motionVectors:0.1 motionScore:0.1 motionMode:0.8, 0.8, v10, v11, v14];
  v16 = [HMIMotionDetection alloc];
  LODWORD(v17) = 1148846080;
  v18 = [(HMIMotionDetection *)v16 initWithBoundingBox:v13 size:1 motionVectors:0.1 motionScore:0.1 motionMode:0.8, 0.8, v10, v11, v17, v15];
  v22[1] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];

  delegate = [(HMIVideoFrameTracker *)selfCopy delegate];
  v21 = [MEMORY[0x277CBEB98] set];
  [delegate frameTracker:selfCopy didTrackFrame:target background:0 motionDetections:v19 tracks:v21];
}

- (id)_motionDetectionsFromTarget:(opaqueCMSampleBuffer *)target reference:(opaqueCMSampleBuffer *)reference dynamicConfiguration:(id)configuration motionScore:(float *)score
{
  configurationCopy = configuration;
  eventTriggers = [configurationCopy eventTriggers];
  if ([configurationCopy eventTriggers])
  {
    activityZones = [configurationCopy activityZones];
  }

  else
  {
    activityZones = MEMORY[0x277CBEBF8];
  }

  v19 = 0;
  motionDetector = [(HMIVideoFrameTracker *)self motionDetector];
  ImageBuffer = CMSampleBufferGetImageBuffer(reference);
  v15 = [motionDetector detectWithGlobalMotionScore:&v19 referencePixelBuffer:ImageBuffer targetPixelBuffer:CMSampleBufferGetImageBuffer(target) activityZones:activityZones detectorMode:eventTriggers & 1 | 2];

  v16 = [HMIMotionDetection firstMotionDetectionInArray:v15 withMode:2];
  [v16 motionScore];
  *score = v17;

  return v15;
}

- (id)_tracksFromTarget:(opaqueCMSampleBuffer *)target reference:(opaqueCMSampleBuffer *)reference background:(opaqueCMSampleBuffer *)background dynamicConfiguration:(id)configuration motionDetections:(id)detections
{
  detectionsCopy = detections;
  if (([configuration eventTriggers] & 0x10) != 0)
  {
    backgroundEstimator = [(HMIVideoFrameTracker *)self backgroundEstimator];

    if (!backgroundEstimator)
    {
      v16 = [HMIBackgroundEstimator alloc];
      configuration = [(HMIVideoAnalyzerProcessingNode *)self configuration];
      v18 = [(HMIBackgroundEstimator *)v16 initWithConfiguration:configuration];
      [(HMIVideoFrameTracker *)self setBackgroundEstimator:v18];

      backgroundEstimator2 = [(HMIVideoFrameTracker *)self backgroundEstimator];
      ImageBuffer = CMSampleBufferGetImageBuffer(reference);
      CMSampleBufferGetPresentationTimeStamp(&v30, reference);
      v21 = [backgroundEstimator2 analyzePixelBuffer:ImageBuffer timeStamp:&v30];
    }

    memset(&v30, 0, sizeof(v30));
    CMSampleBufferGetPresentationTimeStamp(&v30, target);
    backgroundEstimator3 = [(HMIVideoFrameTracker *)self backgroundEstimator];
    [backgroundEstimator3 handleMotionDetection:detectionsCopy inFrame:target];

    backgroundEstimator4 = [(HMIVideoFrameTracker *)self backgroundEstimator];
    v24 = CMSampleBufferGetImageBuffer(target);
    v29 = v30;
    v14 = [backgroundEstimator4 analyzePixelBuffer:v24 timeStamp:&v29];

    backgroundEstimator5 = [(HMIVideoFrameTracker *)self backgroundEstimator];
    hasNewBackground = [backgroundEstimator5 hasNewBackground];

    if (hasNewBackground)
    {
      background = self->_background;
      if (background)
      {
        CFRelease(background);
      }

      self->_background = CFRetain(background);
    }
  }

  else
  {
    if ([(HMIVideoFrameTracker *)self background])
    {
      CFRelease(self->_background);
      self->_background = 0;
    }

    backgroundEstimator6 = [(HMIVideoFrameTracker *)self backgroundEstimator];

    if (backgroundEstimator6)
    {
      [(HMIVideoFrameTracker *)self setBackgroundEstimator:0];
    }

    v14 = [MEMORY[0x277CBEB98] set];
  }

  return v14;
}

- (opaqueCMSampleBuffer)_backgroundAtTimeStamp:(id *)stamp
{
  result = [(HMIVideoFrameTracker *)self background];
  if (result)
  {
    CMSampleBufferGetPresentationTimeStamp(&time2, [(HMIVideoFrameTracker *)self background]);
    v6 = *stamp;
    if (CMTimeCompare(&v6, &time2) < 1)
    {
      return 0;
    }

    else
    {
      return [(HMIVideoFrameTracker *)self background];
    }
  }

  return result;
}

- (void)_appendTarget:(opaqueCMSampleBuffer *)target timeStamp:(id *)stamp motionDetections:(id)detections
{
  detectionsCopy = detections;
  array = [MEMORY[0x277CBEB18] array];
  v10 = [HMIVideoFrame alloc];
  ImageBuffer = CMSampleBufferGetImageBuffer(target);
  v28 = *stamp;
  v12 = [(HMIVideoFrame *)v10 initWithPixelBuffer:ImageBuffer presentationTimeStamp:&v28];
  [array addObject:v12];
  motionDetector = [(HMIVideoFrameTracker *)self motionDetector];
  [(HMIVideoFrame *)v12 size];
  v15 = v14;
  v17 = v16;
  if (v12)
  {
    [(HMIVideoFrame *)v12 presentationTimeStamp];
  }

  else
  {
    memset(&v28, 0, sizeof(v28));
  }

  v18 = [motionDetector visualizeMotionDetections:detectionsCopy frameSize:&v28 timeStamp:{v15, v17}];
  [array addObject:v18];

  backgroundEstimator = [(HMIVideoFrameTracker *)self backgroundEstimator];

  if (backgroundEstimator)
  {
    backgroundEstimator2 = [(HMIVideoFrameTracker *)self backgroundEstimator];
    visualizeBackgroundMean = [backgroundEstimator2 visualizeBackgroundMean];
    [array addObject:visualizeBackgroundMean];

    backgroundEstimator3 = [(HMIVideoFrameTracker *)self backgroundEstimator];
    visualizeBackgroundStd = [backgroundEstimator3 visualizeBackgroundStd];
    [array addObject:visualizeBackgroundStd];

    backgroundEstimator4 = [(HMIVideoFrameTracker *)self backgroundEstimator];
    visualizeForegroundAssignment = [backgroundEstimator4 visualizeForegroundAssignment];
    [array addObject:visualizeForegroundAssignment];
  }

  v26 = [(HMIVideoFrameTracker *)self reportBuffer:*&v28.var0];
  v27 = [array copy];
  [v26 addObject:v27];
}

- (void)_visualizeTargetsThatExpiredBefore:(id *)before
{
  v5 = [MEMORY[0x277CBEB98] set];
  v6 = [MEMORY[0x277CBEB98] set];
  v7 = *MEMORY[0x277CBF398];
  v8 = *(MEMORY[0x277CBF398] + 8);
  v9 = *(MEMORY[0x277CBF398] + 16);
  v10 = *(MEMORY[0x277CBF398] + 24);
  v11 = *before;
  [(HMIVideoFrameTracker *)self _visualizeTargetEvents:v5 backgroundEvents:v6 regionOfInterest:&v11 targetTimeStamp:v7, v8, v9, v10];
}

- (void)_visualizeTargetEvents:(id)events backgroundEvents:(id)backgroundEvents regionOfInterest:(CGRect)interest targetTimeStamp:(id *)stamp
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  eventsCopy = events;
  backgroundEventsCopy = backgroundEvents;
  reportBuffer = [(HMIVideoFrameTracker *)self reportBuffer];
  v16 = [reportBuffer count];

  if (v16)
  {
    v17 = *MEMORY[0x277CBF398];
    v18 = *(MEMORY[0x277CBF398] + 8);
    v19 = *(MEMORY[0x277CBF398] + 16);
    v20 = *(MEMORY[0x277CBF398] + 24);
    while (1)
    {
      reportBuffer2 = [(HMIVideoFrameTracker *)self reportBuffer];
      firstObject = [reportBuffer2 firstObject];

      v22FirstObject = [firstObject firstObject];
      v24 = v22FirstObject;
      if (v22FirstObject)
      {
        [v22FirstObject presentationTimeStamp];
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
      }

      v31 = *stamp;
      v25 = CMTimeCompare(&time1, &v31);

      if (v25 >= 1)
      {
        break;
      }

      if (v25)
      {
        v26 = [MEMORY[0x277CBEB98] set];
        v27 = [MEMORY[0x277CBEB98] set];
        [(HMIVideoFrameTracker *)self _visualizeFrames:firstObject targetEvents:v26 backgroundEvents:v27 regionOfInterest:v17, v18, v19, v20];
      }

      else
      {
        [(HMIVideoFrameTracker *)self _visualizeFrames:firstObject targetEvents:eventsCopy backgroundEvents:backgroundEventsCopy regionOfInterest:x, y, width, height];
      }

      reportBuffer3 = [(HMIVideoFrameTracker *)self reportBuffer];
      [reportBuffer3 hmf_removeFirstObject];

      reportBuffer4 = [(HMIVideoFrameTracker *)self reportBuffer];
      v30 = [reportBuffer4 count];

      if (!v30)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_13:
}

- (void)_visualizeFrames:(id)frames targetEvents:(id)events backgroundEvents:(id)backgroundEvents regionOfInterest:(CGRect)interest
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  framesCopy = frames;
  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __88__HMIVideoFrameTracker__visualizeFrames_targetEvents_backgroundEvents_regionOfInterest___block_invoke;
  v29 = &unk_278755468;
  v30 = framesCopy;
  selfCopy = self;
  v14 = framesCopy;
  backgroundEventsCopy = backgroundEvents;
  eventsCopy = events;
  v17 = MEMORY[0x2318CB8E0](&v26);
  (v17)[2](v17, 0, eventsCopy, @"Target", x, y, width, height);

  (v17)[2](v17, 2, backgroundEventsCopy, @"Mean", x, y, width, height);
  v18 = [MEMORY[0x277CBEB98] set];
  v19 = *MEMORY[0x277CBF398];
  v20 = *(MEMORY[0x277CBF398] + 8);
  v21 = *(MEMORY[0x277CBF398] + 16);
  v22 = *(MEMORY[0x277CBF398] + 24);
  (v17)[2](v17, 3, v18, @"Std", *MEMORY[0x277CBF398], v20, v21, v22);

  v23 = [MEMORY[0x277CBEB98] set];
  (v17)[2](v17, 1, v23, @"Motion", v19, v20, v21, v22);

  v24 = [MEMORY[0x277CBEB98] set];
  (v17)[2](v17, 4, v24, @"Assign", v19, v20, v21, v22);

  report = [(HMIVideoFrameTracker *)self report];
  [report appendText:&stru_284057FB8];
}

void __88__HMIVideoFrameTracker__visualizeFrames_targetEvents_backgroundEvents_regionOfInterest___block_invoke(uint64_t a1, unint64_t a2, void *a3, void *a4, double a5, double a6, double a7, double a8)
{
  v15 = a3;
  v16 = a4;
  if ([*(a1 + 32) count] > a2)
  {
    v17 = [*(a1 + 32) objectAtIndexedSubscript:a2];
    v18 = v17;
    if (v17)
    {
      [v17 presentationTimeStamp];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);

    v20 = [*(a1 + 40) report];
    v21 = [HMIVideoAnalyzerFrameResult alloc];
    v22 = [*(a1 + 32) objectAtIndexedSubscript:a2];
    v23 = [(HMIVideoAnalyzerFrameResult *)v21 initWithFrame:v22 events:v15 regionOfInterest:a5, a6, a7, a8];
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f %@", *&Seconds, v16];
    [v20 appendFrameResult:v23 frameTruth:0 description:v24];
  }
}

- (HMIVideoFrameTrackerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
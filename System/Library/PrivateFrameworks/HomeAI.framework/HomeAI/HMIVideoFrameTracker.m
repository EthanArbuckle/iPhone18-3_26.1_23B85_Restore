@interface HMIVideoFrameTracker
+ (__CVBuffer)resizePixelBuffer:(__CVBuffer *)a3;
- (HMIVideoFrameTracker)initWithConfiguration:(id)a3 workQueue:(id)a4;
- (HMIVideoFrameTrackerDelegate)delegate;
- (id)_motionDetectionsFromTarget:(opaqueCMSampleBuffer *)a3 reference:(opaqueCMSampleBuffer *)a4 dynamicConfiguration:(id)a5 motionScore:(float *)a6;
- (id)_tracksFromTarget:(opaqueCMSampleBuffer *)a3 reference:(opaqueCMSampleBuffer *)a4 background:(opaqueCMSampleBuffer *)a5 dynamicConfiguration:(id)a6 motionDetections:(id)a7;
- (opaqueCMSampleBuffer)_backgroundAtTimeStamp:(id *)a3;
- (opaqueCMSampleBuffer)prepareSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)_addCandidateForTarget:(opaqueCMSampleBuffer *)a3 motionScore:(float)a4 motionDetections:(id)a5 tracks:(id)a6;
- (void)_appendTarget:(opaqueCMSampleBuffer *)a3 timeStamp:(id *)a4 motionDetections:(id)a5;
- (void)_drainCandidateThatExpiredBefore:(id *)a3;
- (void)_drainResizedBuffersThatExpiredBefore:(id *)a3;
- (void)_synthesizeMotionDetectionWithTarget:(opaqueCMSampleBuffer *)a3;
- (void)_visualizeFrames:(id)a3 targetEvents:(id)a4 backgroundEvents:(id)a5 regionOfInterest:(CGRect)a6;
- (void)_visualizeTargetEvents:(id)a3 backgroundEvents:(id)a4 regionOfInterest:(CGRect)a5 targetTimeStamp:(id *)a6;
- (void)_visualizeTargetsThatExpiredBefore:(id *)a3;
- (void)dealloc;
- (void)flush;
- (void)handleFrameAnalyzerResult:(id)a3;
- (void)handleSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)handleSampleBuffer:(opaqueCMSampleBuffer *)a3 reference:(opaqueCMSampleBuffer *)a4;
@end

@implementation HMIVideoFrameTracker

- (HMIVideoFrameTracker)initWithConfiguration:(id)a3 workQueue:(id)a4
{
  v6 = a3;
  v31.receiver = self;
  v31.super_class = HMIVideoFrameTracker;
  v7 = [(HMIVideoAnalyzerProcessingNode *)&v31 initWithConfiguration:v6 workQueue:a4];
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
    if ([v6 saveAnalyzerResultsToDisk])
    {
      v17 = objc_alloc_init(MEMORY[0x277CCA968]);
      [v17 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
      v18 = [MEMORY[0x277CBEAA8] now];
      v19 = [v17 stringFromDate:v18];

      v20 = MEMORY[0x277CCACA8];
      v21 = [MEMORY[0x277CCAD78] UUID];
      v22 = [v21 UUIDString];
      v23 = [v22 substringToIndex:4];
      v24 = [v20 stringWithFormat:@"/tmp/TrackerReport-%@-%@.html", v19, v23];

      v25 = [[HMIHTMLReport alloc] initWithTitle:@"Tracker" outputPath:v24];
      v26 = *(v7 + 14);
      *(v7 + 14) = v25;

      v27 = [MEMORY[0x277CBEB18] array];
      v28 = *(v7 + 15);
      *(v7 + 15) = v27;
    }
  }

  return v7;
}

- (void)flush
{
  v3 = [(HMIVideoAnalyzerProcessingNode *)self workQueue];
  dispatch_assert_queue_not_V2(v3);

  v4 = [(HMIVideoAnalyzerProcessingNode *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__HMIVideoFrameTracker_flush__block_invoke;
  block[3] = &unk_278752868;
  block[4] = self;
  dispatch_sync(v4, block);
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
  v4 = [(HMIVideoFrameTracker *)self report];

  if (v4)
  {
    v6 = *MEMORY[0x277CC08B0];
    v7 = *(MEMORY[0x277CC08B0] + 16);
    [(HMIVideoFrameTracker *)self _visualizeTargetsThatExpiredBefore:&v6];
  }

  v5.receiver = self;
  v5.super_class = HMIVideoFrameTracker;
  [(HMIVideoFrameTracker *)&v5 dealloc];
}

- (void)handleSampleBuffer:(opaqueCMSampleBuffer *)a3 reference:(opaqueCMSampleBuffer *)a4
{
  v7 = [(HMIVideoAnalyzerProcessingNode *)self workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(HMIVideoAnalyzerProcessingNode *)self dynamicConfiguration];

  if (v8)
  {
    v9 = +[HMIPreference sharedInstance];
    v10 = [v9 hasPreferenceForKey:@"syntheticEvents"];

    if (v10)
    {

      [(HMIVideoFrameTracker *)self _synthesizeMotionDetectionWithTarget:a3];
    }

    else
    {
      memset(&v26, 0, sizeof(v26));
      CMSampleBufferGetPresentationTimeStamp(&v26, a3);
      memset(&v25, 0, sizeof(v25));
      CMSampleBufferGetPresentationTimeStamp(&v25, a4);
      v11 = [(HMIVideoFrameTracker *)self prepareSampleBuffer:a3];
      v24 = 0;
      v12 = [(HMIVideoAnalyzerProcessingNode *)self dynamicConfiguration];
      v13 = [(HMIVideoFrameTracker *)self _motionDetectionsFromTarget:v11 reference:a4 dynamicConfiguration:v12 motionScore:&v24];

      v14 = [(HMIVideoAnalyzerProcessingNode *)self dynamicConfiguration];
      v15 = [(HMIVideoFrameTracker *)self _tracksFromTarget:v11 reference:a4 background:a3 dynamicConfiguration:v14 motionDetections:v13];

      LODWORD(v16) = v24;
      [(HMIVideoFrameTracker *)self _addCandidateForTarget:a3 motionScore:v13 motionDetections:v15 tracks:v16];
      v17 = [(HMIVideoFrameTracker *)self report];

      if (v17)
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

- (void)handleSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  v5 = [(HMIVideoAnalyzerProcessingNode *)self workQueue];
  dispatch_assert_queue_V2(v5);

  memset(&v9, 0, sizeof(v9));
  CMSampleBufferGetPresentationTimeStamp(&v9, a3);
  lhs = v9;
  expirationInterval = self->_expirationInterval;
  CMTimeSubtract(&v8, &lhs, &expirationInterval);
  [(HMIVideoFrameTracker *)self _drainCandidateThatExpiredBefore:&v8];
}

- (void)handleFrameAnalyzerResult:(id)a3
{
  v4 = a3;
  v5 = [(HMIVideoAnalyzerProcessingNode *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMIVideoFrameTracker *)self backgroundEstimator];

  if (v6)
  {
    v7 = [(HMIVideoFrameTracker *)self backgroundEstimator];
    v8 = [v4 events];
    v9 = [v4 frame];
    v10 = v9;
    if (v9)
    {
      [v9 presentationTimeStamp];
    }

    else
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
    }

    [v7 assignForegroundEvents:v8 timeStamp:&v26];

    v11 = [(HMIVideoFrameTracker *)self backgroundEstimator];
    v12 = [v4 backgroundEvents];
    if (v4)
    {
      [v4 backgroundTimeStamp];
    }

    else
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
    }

    [v11 assignBackgroundEvents:v12 timeStamp:&v26];
  }

  v13 = [(HMIVideoFrameTracker *)self report];

  if (v13)
  {
    v14 = [v4 events];
    v15 = [v4 backgroundEvents];
    [v4 regionOfInterest];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = [v4 frame];
    v25 = v24;
    if (v24)
    {
      [v24 presentationTimeStamp];
    }

    else
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
    }

    [(HMIVideoFrameTracker *)self _visualizeTargetEvents:v14 backgroundEvents:v15 regionOfInterest:&v26 targetTimeStamp:v17, v19, v21, v23];
  }
}

- (opaqueCMSampleBuffer)prepareSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  v5 = [(HMIVideoAnalyzerProcessingNode *)self workQueue];
  dispatch_assert_queue_V2(v5);

  memset(&v17, 0, sizeof(v17));
  CMSampleBufferGetPresentationTimeStamp(&v17, a3);
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
    v8 = [HMIVideoFrameTracker resizePixelBuffer:CMSampleBufferGetImageBuffer(a3)];
    if (v8)
    {
      v9 = v8;
      CopyWithPixelBuffer = HMICMSampleBufferCreateCopyWithPixelBuffer(a3, v8);
      CVPixelBufferRelease(v9);
      CFArrayAppendValue([(HMIVideoFrameTracker *)self resizedSampleBuffers], CopyWithPixelBuffer);
      v11 = [(HMIVideoFrameTracker *)self resizedSampleBuffers];
      v18.length = CFArrayGetCount([(HMIVideoFrameTracker *)self resizedSampleBuffers]);
      v18.location = 0;
      CFArraySortValues(v11, v18, HMICMSampleBufferTimeAscendingComparator, 0);
    }

    else
    {
      return 0;
    }
  }

  return CopyWithPixelBuffer;
}

+ (__CVBuffer)resizePixelBuffer:(__CVBuffer *)a3
{
  v23 = *MEMORY[0x277D85DE8];
  Size = HMICVPixelBufferGetSize(a3);
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
  if (v11 && CVPixelBufferGetPixelFormatType(a3) == 875704438)
  {
    return CVPixelBufferRetain(a3);
  }

  v16 = 0;
  return [HMIVisionUtilities resizePixelBuffer:a3 size:875704438 pixelFormat:8 options:&v16 error:v10, v8];
}

- (void)_addCandidateForTarget:(opaqueCMSampleBuffer *)a3 motionScore:(float)a4 motionDetections:(id)a5 tracks:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a6;
  v12 = [HMIVideoFrameTrackerFrameCandidate alloc];
  *&v13 = a4;
  v14 = [(HMIVideoFrameTrackerFrameCandidate *)v12 initWithSampleBuffer:a3 score:v10 motionDetections:v11 tracks:v13];
  v15 = objc_autoreleasePoolPush();
  v16 = self;
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
  ++v16->_numCandidates;
  v19 = [(HMIVideoFrameTracker *)v16 candidate];
  if (!v19 || (v20 = v19, -[HMIVideoFrameTracker candidate](v16, "candidate"), v21 = objc_claimAutoreleasedReturnValue(), [v21 score], v23 = v22, -[HMIVideoFrameTrackerFrameCandidate score](v14, "score"), v25 = v24, v21, v20, v23 < v25))
  {
    objc_storeStrong(&v16->_candidate, v14);
  }
}

- (void)_drainCandidateThatExpiredBefore:(id *)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = [(HMIVideoFrameTracker *)self candidate];
  v6 = v5;
  if (v5)
  {
    memset(&v26, 0, sizeof(v26));
    CMSampleBufferGetPresentationTimeStamp(&v26, [v5 sbuf]);
    v7 = [(HMIVideoFrameTracker *)self numCandidates];
    if (v7 >= [(HMIVideoFrameTracker *)self maxCandidates]|| (time1 = v26, time2 = *a3, CMTimeCompare(&time1, &time2) < 0))
    {
      [v6 score];
      v9 = v8;
      if (v8 <= 0.0)
      {
        v10 = [v6 tracks];
        if ([v10 count])
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
      v13 = self;
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
      v16 = [(HMIVideoFrameTracker *)v13 delegate];
      v17 = [v6 sbuf];
      time1 = v26;
      v18 = [(HMIVideoFrameTracker *)v13 _backgroundAtTimeStamp:&time1];
      v19 = [v6 motionDetections];
      v20 = [v6 tracks];
      [v16 frameTracker:v13 didTrackFrame:v17 background:v18 motionDetections:v19 tracks:v20];

      if (v9 <= 0.0)
      {
        time2 = v26;
        v21 = *&v13->_trackInterval.value;
        v24.epoch = v13->_trackInterval.epoch;
        *&v24.value = v21;
        CMTimeAdd(&time1, &time2, &v24);
        v22 = *&time1.value;
        v13->_trackAnalysisPTS.epoch = time1.epoch;
        *&v13->_trackAnalysisPTS.value = v22;
      }

      goto LABEL_12;
    }
  }

LABEL_13:
}

- (void)_drainResizedBuffersThatExpiredBefore:(id *)a3
{
  if (CFArrayGetCount([(HMIVideoFrameTracker *)self resizedSampleBuffers]) >= 1)
  {
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex([(HMIVideoFrameTracker *)self resizedSampleBuffers], 0);
      memset(&v8, 0, sizeof(v8));
      CMSampleBufferGetPresentationTimeStamp(&v8, ValueAtIndex);
      time1 = v8;
      v6 = *a3;
      if ((CMTimeCompare(&time1, &v6) & 0x80000000) == 0)
      {
        break;
      }

      CFArrayRemoveValueAtIndex([(HMIVideoFrameTracker *)self resizedSampleBuffers], 0);
    }

    while (CFArrayGetCount([(HMIVideoFrameTracker *)self resizedSampleBuffers]) > 0);
  }
}

- (void)_synthesizeMotionDetectionWithTarget:(opaqueCMSampleBuffer *)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMICMSampleBufferTinyDescription(a3);
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

  v20 = [(HMIVideoFrameTracker *)v6 delegate];
  v21 = [MEMORY[0x277CBEB98] set];
  [v20 frameTracker:v6 didTrackFrame:a3 background:0 motionDetections:v19 tracks:v21];
}

- (id)_motionDetectionsFromTarget:(opaqueCMSampleBuffer *)a3 reference:(opaqueCMSampleBuffer *)a4 dynamicConfiguration:(id)a5 motionScore:(float *)a6
{
  v10 = a5;
  v11 = [v10 eventTriggers];
  if ([v10 eventTriggers])
  {
    v12 = [v10 activityZones];
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  v19 = 0;
  v13 = [(HMIVideoFrameTracker *)self motionDetector];
  ImageBuffer = CMSampleBufferGetImageBuffer(a4);
  v15 = [v13 detectWithGlobalMotionScore:&v19 referencePixelBuffer:ImageBuffer targetPixelBuffer:CMSampleBufferGetImageBuffer(a3) activityZones:v12 detectorMode:v11 & 1 | 2];

  v16 = [HMIMotionDetection firstMotionDetectionInArray:v15 withMode:2];
  [v16 motionScore];
  *a6 = v17;

  return v15;
}

- (id)_tracksFromTarget:(opaqueCMSampleBuffer *)a3 reference:(opaqueCMSampleBuffer *)a4 background:(opaqueCMSampleBuffer *)a5 dynamicConfiguration:(id)a6 motionDetections:(id)a7
{
  v12 = a7;
  if (([a6 eventTriggers] & 0x10) != 0)
  {
    v15 = [(HMIVideoFrameTracker *)self backgroundEstimator];

    if (!v15)
    {
      v16 = [HMIBackgroundEstimator alloc];
      v17 = [(HMIVideoAnalyzerProcessingNode *)self configuration];
      v18 = [(HMIBackgroundEstimator *)v16 initWithConfiguration:v17];
      [(HMIVideoFrameTracker *)self setBackgroundEstimator:v18];

      v19 = [(HMIVideoFrameTracker *)self backgroundEstimator];
      ImageBuffer = CMSampleBufferGetImageBuffer(a4);
      CMSampleBufferGetPresentationTimeStamp(&v30, a4);
      v21 = [v19 analyzePixelBuffer:ImageBuffer timeStamp:&v30];
    }

    memset(&v30, 0, sizeof(v30));
    CMSampleBufferGetPresentationTimeStamp(&v30, a3);
    v22 = [(HMIVideoFrameTracker *)self backgroundEstimator];
    [v22 handleMotionDetection:v12 inFrame:a3];

    v23 = [(HMIVideoFrameTracker *)self backgroundEstimator];
    v24 = CMSampleBufferGetImageBuffer(a3);
    v29 = v30;
    v14 = [v23 analyzePixelBuffer:v24 timeStamp:&v29];

    v25 = [(HMIVideoFrameTracker *)self backgroundEstimator];
    v26 = [v25 hasNewBackground];

    if (v26)
    {
      background = self->_background;
      if (background)
      {
        CFRelease(background);
      }

      self->_background = CFRetain(a5);
    }
  }

  else
  {
    if ([(HMIVideoFrameTracker *)self background])
    {
      CFRelease(self->_background);
      self->_background = 0;
    }

    v13 = [(HMIVideoFrameTracker *)self backgroundEstimator];

    if (v13)
    {
      [(HMIVideoFrameTracker *)self setBackgroundEstimator:0];
    }

    v14 = [MEMORY[0x277CBEB98] set];
  }

  return v14;
}

- (opaqueCMSampleBuffer)_backgroundAtTimeStamp:(id *)a3
{
  result = [(HMIVideoFrameTracker *)self background];
  if (result)
  {
    CMSampleBufferGetPresentationTimeStamp(&time2, [(HMIVideoFrameTracker *)self background]);
    v6 = *a3;
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

- (void)_appendTarget:(opaqueCMSampleBuffer *)a3 timeStamp:(id *)a4 motionDetections:(id)a5
{
  v8 = a5;
  v9 = [MEMORY[0x277CBEB18] array];
  v10 = [HMIVideoFrame alloc];
  ImageBuffer = CMSampleBufferGetImageBuffer(a3);
  v28 = *a4;
  v12 = [(HMIVideoFrame *)v10 initWithPixelBuffer:ImageBuffer presentationTimeStamp:&v28];
  [v9 addObject:v12];
  v13 = [(HMIVideoFrameTracker *)self motionDetector];
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

  v18 = [v13 visualizeMotionDetections:v8 frameSize:&v28 timeStamp:{v15, v17}];
  [v9 addObject:v18];

  v19 = [(HMIVideoFrameTracker *)self backgroundEstimator];

  if (v19)
  {
    v20 = [(HMIVideoFrameTracker *)self backgroundEstimator];
    v21 = [v20 visualizeBackgroundMean];
    [v9 addObject:v21];

    v22 = [(HMIVideoFrameTracker *)self backgroundEstimator];
    v23 = [v22 visualizeBackgroundStd];
    [v9 addObject:v23];

    v24 = [(HMIVideoFrameTracker *)self backgroundEstimator];
    v25 = [v24 visualizeForegroundAssignment];
    [v9 addObject:v25];
  }

  v26 = [(HMIVideoFrameTracker *)self reportBuffer:*&v28.var0];
  v27 = [v9 copy];
  [v26 addObject:v27];
}

- (void)_visualizeTargetsThatExpiredBefore:(id *)a3
{
  v5 = [MEMORY[0x277CBEB98] set];
  v6 = [MEMORY[0x277CBEB98] set];
  v7 = *MEMORY[0x277CBF398];
  v8 = *(MEMORY[0x277CBF398] + 8);
  v9 = *(MEMORY[0x277CBF398] + 16);
  v10 = *(MEMORY[0x277CBF398] + 24);
  v11 = *a3;
  [(HMIVideoFrameTracker *)self _visualizeTargetEvents:v5 backgroundEvents:v6 regionOfInterest:&v11 targetTimeStamp:v7, v8, v9, v10];
}

- (void)_visualizeTargetEvents:(id)a3 backgroundEvents:(id)a4 regionOfInterest:(CGRect)a5 targetTimeStamp:(id *)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v13 = a3;
  v14 = a4;
  v15 = [(HMIVideoFrameTracker *)self reportBuffer];
  v16 = [v15 count];

  if (v16)
  {
    v17 = *MEMORY[0x277CBF398];
    v18 = *(MEMORY[0x277CBF398] + 8);
    v19 = *(MEMORY[0x277CBF398] + 16);
    v20 = *(MEMORY[0x277CBF398] + 24);
    while (1)
    {
      v21 = [(HMIVideoFrameTracker *)self reportBuffer];
      v22 = [v21 firstObject];

      v23 = [v22 firstObject];
      v24 = v23;
      if (v23)
      {
        [v23 presentationTimeStamp];
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
      }

      v31 = *a6;
      v25 = CMTimeCompare(&time1, &v31);

      if (v25 >= 1)
      {
        break;
      }

      if (v25)
      {
        v26 = [MEMORY[0x277CBEB98] set];
        v27 = [MEMORY[0x277CBEB98] set];
        [(HMIVideoFrameTracker *)self _visualizeFrames:v22 targetEvents:v26 backgroundEvents:v27 regionOfInterest:v17, v18, v19, v20];
      }

      else
      {
        [(HMIVideoFrameTracker *)self _visualizeFrames:v22 targetEvents:v13 backgroundEvents:v14 regionOfInterest:x, y, width, height];
      }

      v28 = [(HMIVideoFrameTracker *)self reportBuffer];
      [v28 hmf_removeFirstObject];

      v29 = [(HMIVideoFrameTracker *)self reportBuffer];
      v30 = [v29 count];

      if (!v30)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_13:
}

- (void)_visualizeFrames:(id)a3 targetEvents:(id)a4 backgroundEvents:(id)a5 regionOfInterest:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v13 = a3;
  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __88__HMIVideoFrameTracker__visualizeFrames_targetEvents_backgroundEvents_regionOfInterest___block_invoke;
  v29 = &unk_278755468;
  v30 = v13;
  v31 = self;
  v14 = v13;
  v15 = a5;
  v16 = a4;
  v17 = MEMORY[0x2318CB8E0](&v26);
  (v17)[2](v17, 0, v16, @"Target", x, y, width, height);

  (v17)[2](v17, 2, v15, @"Mean", x, y, width, height);
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

  v25 = [(HMIVideoFrameTracker *)self report];
  [v25 appendText:&stru_284057FB8];
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
@interface HMIBackgroundEstimator
- (BOOL)_adjustBackgroundAtAttribute:(const char *)attribute backgroundChanged:(BOOL)changed timeStamp:(id *)stamp;
- (BOOL)_invalidateBackgroundForPixelBuffer:(__CVBuffer *)buffer timeStamp:(id *)stamp;
- (BOOL)_updateBackgroundFromPixelBuffer:(__CVBuffer *)buffer timeStamp:(id *)stamp;
- (BOOL)hasNewBackground;
- (CGSize)imageSize;
- (CGSize)modelSize;
- (HMIBackgroundEstimator)initWithConfiguration:(id)configuration;
- (float)_intersectionOverUnionFromBlob:(id)blob boundingBox:(CGRect)box assignment:(unsigned __int16 *)assignment;
- (id)_blobsFromAssignment:(unsigned __int16 *)assignment timeStamp:(id *)stamp;
- (id)_exportInternalStateForPixelBuffer:(__CVBuffer *)buffer exportMode:(unint64_t)mode;
- (id)_foregroundBlobsFromBlobs:(id)blobs backgroundChanged:(BOOL *)changed;
- (id)_predictForegroundFromPixelBuffer:(__CVBuffer *)buffer timeStamp:(id *)stamp;
- (id)_stationaryTracks:(id)tracks timeStamp:(id *)stamp;
- (id)analyzePixelBuffer:(__CVBuffer *)buffer timeStamp:(id *)stamp;
- (void)_copyFromOutputBuffer:(const float *)buffer toPixelBuffer:(__CVBuffer *)pixelBuffer;
- (void)_copyFromPixelBuffer:(__CVBuffer *)buffer toInputBuffer:(float *)inputBuffer translateCol:(int)col translateRow:(int)row;
- (void)_correctRunningMeanBrightnessAtAttribute:(const char *)attribute;
- (void)_ensureInternalBuffersForPixelBuffer:(__CVBuffer *)buffer;
- (void)_expireMotionDetectionsAtTimeStamp:(id *)stamp;
- (void)_foregroundDifferencesFromPixelBuffer:(__CVBuffer *)buffer differences:(float *)differences;
- (void)_foregroundPixelsFromPixelBuffer:(__CVBuffer *)buffer attribute:(char *)attribute assignment:(unsigned __int16 *)assignment useChromaOnly:(BOOL)only;
- (void)_setAssignment:(unsigned __int16 *)assignment greaterThanType:(unsigned __int16)type value:(unsigned __int16)value boundingBox:(CGRect)box scale:(float)scale;
- (void)_updateCurrentTracks:(id)tracks inactiveTracks:(id)inactiveTracks blobs:(id)blobs timeStamp:(id *)stamp;
- (void)_updateRunningMean:(float *)mean runningSquaredMean:(float *)squaredMean fromInputBuffer:(const float *)buffer decay:(float)decay;
- (void)_updateRunningStd:(float *)std withAuxBuffer:(float *)buffer runningMean:(const float *)mean runningSquaredMean:(const float *)squaredMean;
- (void)assignBackgroundEvents:(id)events timeStamp:(id *)stamp;
- (void)assignForegroundEvents:(id)events timeStamp:(id *)stamp;
- (void)dealloc;
- (void)handleMotionDetection:(id)detection inFrame:(opaqueCMSampleBuffer *)frame;
- (void)reset;
@end

@implementation HMIBackgroundEstimator

- (HMIBackgroundEstimator)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v22.receiver = self;
  v22.super_class = HMIBackgroundEstimator;
  v6 = [(HMIBackgroundEstimator *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    v7->_numTracks = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    tracks = v7->_tracks;
    v7->_tracks = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    inactiveTracks = v7->_inactiveTracks;
    v7->_inactiveTracks = dictionary2;

    v7->_minSampleSize = 4;
    CMTimeMakeWithSeconds(&v21, 180.0, 1000);
    epoch = v21.epoch;
    *&v7->_backgroundExpireInterval.value = *&v21.value;
    v7->_backgroundExpireInterval.epoch = epoch;
    CMTimeMakeWithSeconds(&v21, 7.0, 1000);
    v13 = v21.epoch;
    *&v7->_backgroundChangeInterval.value = *&v21.value;
    v7->_backgroundChangeInterval.epoch = v13;
    CMTimeMakeWithSeconds(&v21, 30.0, 1000);
    v14 = v21.epoch;
    *&v7->_backgroundChangeResetInterval.value = *&v21.value;
    v7->_backgroundChangeResetInterval.epoch = v14;
    v7->_assignment = 0;
    v7->_runningMean = 0;
    v7->_runningStd = 0;
    array = [MEMORY[0x277CBEB18] array];
    motionDetections = v7->_motionDetections;
    v7->_motionDetections = array;

    array2 = [MEMORY[0x277CBEB18] array];
    motionTimeStamps = v7->_motionTimeStamps;
    v7->_motionTimeStamps = array2;

    CMTimeMakeWithSeconds(&v21, 1.0, 1000);
    v19 = v21.epoch;
    *&v7->_motionValidInterval.value = *&v21.value;
    v7->_motionValidInterval.epoch = v19;
    [(HMIBackgroundEstimator *)v7 reset];
  }

  return v7;
}

- (void)reset
{
  self->_numImages = 0;
  v3 = MEMORY[0x277CBF3A8];
  self->_imageSize = *MEMORY[0x277CBF3A8];
  self->_modelSize = *v3;
  v4 = MEMORY[0x277CC08F0];
  v5 = *(MEMORY[0x277CC08F0] + 16);
  *&self->_foregroundTimeStamp.value = *MEMORY[0x277CC08F0];
  self->_foregroundTimeStamp.epoch = v5;
  v6 = *(v4 + 16);
  *&self->_backgroundTimeStamp.value = *v4;
  self->_backgroundTimeStamp.epoch = v6;
  v7 = *(v4 + 16);
  *&self->_backgroundChangeTimeStamp.value = *v4;
  self->_backgroundChangeTimeStamp.epoch = v7;
  self->_adjustBrightness = 0;
  [(NSMutableDictionary *)self->_tracks removeAllObjects];
  [(NSMutableDictionary *)self->_inactiveTracks removeAllObjects];
  assignment = self->_assignment;
  if (assignment)
  {
    free(assignment);
    self->_assignment = 0;
  }

  runningMean = self->_runningMean;
  if (runningMean)
  {
    free(runningMean);
    self->_runningMean = 0;
  }

  runningStd = self->_runningStd;
  if (runningStd)
  {
    free(runningStd);
    self->_runningStd = 0;
  }
}

- (void)dealloc
{
  [(HMIBackgroundEstimator *)self reset];
  v3.receiver = self;
  v3.super_class = HMIBackgroundEstimator;
  [(HMIBackgroundEstimator *)&v3 dealloc];
}

- (id)analyzePixelBuffer:(__CVBuffer *)buffer timeStamp:(id *)stamp
{
  v22 = *MEMORY[0x277D85DE8];
  if (CVPixelBufferGetPixelFormatType(buffer) != 875704438 && CVPixelBufferGetPixelFormatType(buffer) != 875704422)
  {
    [HMIBackgroundEstimator analyzePixelBuffer:timeStamp:];
    __break(1u);
  }

  *buf = *&stamp->var0;
  *&buf[16] = stamp->var3;
  if ([(HMIBackgroundEstimator *)self _invalidateBackgroundForPixelBuffer:buffer timeStamp:buf])
  {
    [(HMIBackgroundEstimator *)self reset];
    *buf = *&stamp->var0;
    *&buf[16] = stamp->var3;
    [(HMIBackgroundEstimator *)self setBackgroundChangeTimeStamp:buf];
  }

  [(HMIBackgroundEstimator *)self _ensureInternalBuffersForPixelBuffer:buffer];
  numImages = [(HMIBackgroundEstimator *)self numImages];
  if (numImages >= [(HMIBackgroundEstimator *)self minSampleSize])
  {
    *buf = *&stamp->var0;
    *&buf[16] = stamp->var3;
    v15 = [(HMIBackgroundEstimator *)self _predictForegroundFromPixelBuffer:buffer timeStamp:buf];
  }

  else
  {
    *buf = *&stamp->var0;
    *&buf[16] = stamp->var3;
    if (![(HMIBackgroundEstimator *)self _updateBackgroundFromPixelBuffer:buffer timeStamp:buf])
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v17 = *stamp;
        Seconds = CMTimeGetSeconds(&v17);
        numImages2 = [(HMIBackgroundEstimator *)selfCopy numImages];
        minSampleSize = [(HMIBackgroundEstimator *)selfCopy minSampleSize];
        *buf = 138544130;
        *&buf[4] = v11;
        *&buf[12] = 2048;
        *&buf[14] = Seconds;
        *&buf[22] = 2048;
        v19 = numImages2;
        v20 = 2048;
        v21 = minSampleSize;
        _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_ERROR, "%{public}@BackgroundEstimator(PTS:%.2f) Unable to update background model (%lu/%lu)", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v8);
    }

    v15 = [MEMORY[0x277CBEB98] set];
  }

  return v15;
}

- (BOOL)hasNewBackground
{
  numImages = [(HMIBackgroundEstimator *)self numImages];
  if (numImages != [(HMIBackgroundEstimator *)self minSampleSize])
  {
    return 0;
  }

  [(HMIBackgroundEstimator *)self foregroundTimeStamp];
  v5 = **&MEMORY[0x277CC08F0];
  return CMTimeCompare(&time1, &v5) == 0;
}

- (void)assignBackgroundEvents:(id)events timeStamp:(id *)stamp
{
  v15 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  [(HMIBackgroundEstimator *)self backgroundTimeStamp];
  time2 = *stamp;
  if (!CMTimeCompare(&time1, &time2))
  {
    if ([(HMIBackgroundEstimator *)self assignment])
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __59__HMIBackgroundEstimator_assignBackgroundEvents_timeStamp___block_invoke;
      v12[3] = &unk_278752F68;
      v12[4] = self;
      [eventsCopy na_each:v12];
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        [(HMIBackgroundEstimator *)selfCopy backgroundTimeStamp];
        Seconds = CMTimeGetSeconds(&time1);
        LODWORD(time2.value) = 138543618;
        *(&time2.value + 4) = v10;
        LOWORD(time2.flags) = 2048;
        *(&time2.flags + 2) = Seconds;
        _os_log_impl(&dword_22D12F000, v9, OS_LOG_TYPE_ERROR, "%{public}@Background model assignment is NULL %.2f", &time2, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
    }
  }
}

void __59__HMIBackgroundEstimator_assignBackgroundEvents_timeStamp___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = objc_opt_class();
  v4 = v3 != objc_opt_class();
  v5 = *(a1 + 32);
  v6 = [v5 assignment];
  [v7 boundingBox];
  [v5 _setAssignment:v6 greaterThanType:1 value:v4 boundingBox:? scale:?];
}

- (void)assignForegroundEvents:(id)events timeStamp:(id *)stamp
{
  v29 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  if ([(HMIBackgroundEstimator *)self assignment])
  {
    v7 = [eventsCopy na_filter:&__block_literal_global_7];
    tracks = [(HMIBackgroundEstimator *)self tracks];
    allValues = [tracks allValues];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __59__HMIBackgroundEstimator_assignForegroundEvents_timeStamp___block_invoke_2;
    v19[3] = &unk_278752FD8;
    v22 = *&stamp->var0;
    var3 = stamp->var3;
    v10 = v7;
    v20 = v10;
    selfCopy = self;
    [allValues na_each:v19];

    tracks2 = [(HMIBackgroundEstimator *)self tracks];
    allValues2 = [tracks2 allValues];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __59__HMIBackgroundEstimator_assignForegroundEvents_timeStamp___block_invoke_4;
    v18[3] = &unk_278753000;
    v18[4] = self;
    [allValues2 na_each:v18];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      [(HMIBackgroundEstimator *)selfCopy2 backgroundTimeStamp];
      Seconds = CMTimeGetSeconds(&time);
      *buf = 138543618;
      v26 = v16;
      v27 = 2048;
      v28 = Seconds;
      _os_log_impl(&dword_22D12F000, v15, OS_LOG_TYPE_ERROR, "%{public}@Background model assignment is NULL %.2f", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }
}

BOOL __59__HMIBackgroundEstimator_assignForegroundEvents_timeStamp___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  if (v4 == v5)
  {
    v19 = [v3 confidence];
    [v19 value];
    if (v6 > 0.41)
    {
      v7 = 1;
LABEL_18:

      goto LABEL_19;
    }
  }

  v8 = objc_opt_class();
  v9 = objc_opt_class();
  if (v8 == v9 && ([v3 confidence], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "value"), v10 > 0.44))
  {

    v7 = 1;
  }

  else
  {
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    if (v11 == v12 && ([v3 confidence], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "value"), v13 > 0.42))
    {

      v7 = 1;
    }

    else
    {
      v14 = objc_opt_class();
      if (v14 == objc_opt_class())
      {
        v15 = [v3 confidence];
        [v15 value];
        v7 = v16 > 0.24;
      }

      else
      {
        v7 = 0;
      }

      if (v11 == v12)
      {
      }
    }

    if (v8 == v9)
    {
    }
  }

  if (v4 == v5)
  {
    goto LABEL_18;
  }

LABEL_19:

  return v7;
}

void __59__HMIBackgroundEstimator_assignForegroundEvents_timeStamp___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = *(a1 + 48);
  v9 = *(a1 + 64);
  v4 = [v3 blobAtTimeStamp:&v8];
  if (v4)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __59__HMIBackgroundEstimator_assignForegroundEvents_timeStamp___block_invoke_3;
    v6[3] = &unk_278752FB0;
    v5 = *(a1 + 32);
    v6[4] = *(a1 + 40);
    v7 = v3;
    [v5 na_each:v6];
  }
}

void __59__HMIBackgroundEstimator_assignForegroundEvents_timeStamp___block_invoke_3(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) lastBlob];
  [v15 boundingBox];
  [v3 _intersectionOverUnionFromBlob:v4 boundingBox:objc_msgSend(*(a1 + 32) assignment:{"assignment"), v5, v6, v7, v8}];
  v10 = v9;

  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = 0.1;
  if (v11 != v12)
  {
    v13 = 0.5;
  }

  if (v10 > v13)
  {
    v14 = [*(a1 + 40) eventClasses];
    [v14 addObject:objc_opt_class()];
  }
}

void __59__HMIBackgroundEstimator_assignForegroundEvents_timeStamp___block_invoke_4(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 eventClasses];
  v4 = [v3 containsObject:objc_opt_class()];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v5 assignment];
    v7 = [v8 lastBlob];
    [v7 boundingBox];
    [v5 _setAssignment:v6 greaterThanType:1 value:0 boundingBox:? scale:?];
  }
}

- (void)handleMotionDetection:(id)detection inFrame:(opaqueCMSampleBuffer *)frame
{
  v6 = [HMIMotionDetection firstMotionDetectionInArray:detection withMode:2];
  memset(&v11, 0, sizeof(v11));
  CMSampleBufferGetPresentationTimeStamp(&v11, frame);
  if (v6)
  {
    motionVectors = [v6 motionVectors];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __56__HMIBackgroundEstimator_handleMotionDetection_inFrame___block_invoke;
    v9[3] = &unk_278753028;
    v9[4] = self;
    v10 = v11;
    [motionVectors na_each:v9];
  }

  v8 = v11;
  [(HMIBackgroundEstimator *)self _expireMotionDetectionsAtTimeStamp:&v8];
}

void __56__HMIBackgroundEstimator_handleMotionDetection_inFrame___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) motionTimeStamps];
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  v5 = [MEMORY[0x277CCAE60] valueWithCMTime:&v14];
  [v4 addObject:v5];

  v6 = [*(a1 + 32) motionDetections];
  v7 = MEMORY[0x277CCAE60];
  [v3 boundingBox];
  v13[0] = v8;
  v13[1] = v9;
  v13[2] = v10;
  v13[3] = v11;
  v12 = [v7 valueWithBytes:v13 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [v6 addObject:v12];
}

- (BOOL)_invalidateBackgroundForPixelBuffer:(__CVBuffer *)buffer timeStamp:(id *)stamp
{
  v43 = *MEMORY[0x277D85DE8];
  time1 = *stamp;
  [(HMIBackgroundEstimator *)self backgroundTimeStamp];
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v32 = HMFGetLogIdentifier();
      time2 = *stamp;
      Seconds = CMTimeGetSeconds(&time2);
      [(HMIBackgroundEstimator *)selfCopy backgroundTimeStamp];
      v34 = CMTimeGetSeconds(&time2);
      LODWORD(time1.value) = 138543874;
      *(&time1.value + 4) = v32;
      LOWORD(time1.flags) = 2048;
      *(&time1.flags + 2) = Seconds;
      HIWORD(time1.epoch) = 2048;
      v41 = v34;
      _os_log_impl(&dword_22D12F000, v31, OS_LOG_TYPE_DEBUG, "%{public}@BackgroundEstimator(PTS:%.2f) Reset background model due to past timestamp %.2f", &time1, 0x20u);
    }

    objc_autoreleasePoolPop(v29);
    return 1;
  }

  time1 = *stamp;
  [(HMIBackgroundEstimator *)self backgroundTimeStamp];
  [(HMIBackgroundEstimator *)self backgroundExpireInterval];
  CMTimeAdd(&time2, &lhs, &v38);
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    motionDetections = [(HMIBackgroundEstimator *)self motionDetections];
    hmf_isEmpty = [motionDetections hmf_isEmpty];

    if (hmf_isEmpty)
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = HMFGetLogIdentifier();
        time2 = *stamp;
        v13 = CMTimeGetSeconds(&time2);
        [(HMIBackgroundEstimator *)selfCopy3 backgroundTimeStamp];
        v14 = CMTimeGetSeconds(&time2);
        LODWORD(time1.value) = 138543874;
        *(&time1.value + 4) = v12;
        LOWORD(time1.flags) = 2048;
        *(&time1.flags + 2) = v13;
        HIWORD(time1.epoch) = 2048;
        v41 = v14;
        _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_DEBUG, "%{public}@BackgroundEstimator(PTS:%.2f) Reset outdated background model %.2f", &time1, 0x20u);
      }

LABEL_19:

      objc_autoreleasePoolPop(v9);
      return 1;
    }
  }

  [(HMIBackgroundEstimator *)self imageSize];
  v16 = v15;
  if (v18 != HMICVPixelBufferGetSize(buffer) || v16 != v17)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v35 = HMFGetLogIdentifier();
      time1 = *stamp;
      v36 = CMTimeGetSeconds(&time1);
      LODWORD(time2.value) = 138543618;
      *(&time2.value + 4) = v35;
      LOWORD(time2.flags) = 2048;
      *(&time2.flags + 2) = v36;
      _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_DEBUG, "%{public}@BackgroundEstimator(PTS:%.2f) Reset background model due to image size change", &time2, 0x16u);
    }

    goto LABEL_19;
  }

  time1 = *stamp;
  [(HMIBackgroundEstimator *)self backgroundChangeTimeStamp];
  [(HMIBackgroundEstimator *)self backgroundChangeResetInterval];
  CMTimeAdd(&time2, &lhs, &v38);
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    motionDetections2 = [(HMIBackgroundEstimator *)self motionDetections];
    hmf_isEmpty2 = [motionDetections2 hmf_isEmpty];

    if (hmf_isEmpty2)
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        time1 = *stamp;
        v25 = CMTimeGetSeconds(&time1);
        LODWORD(time2.value) = 138543618;
        *(&time2.value + 4) = v24;
        LOWORD(time2.flags) = 2048;
        *(&time2.flags + 2) = v25;
        _os_log_impl(&dword_22D12F000, v23, OS_LOG_TYPE_INFO, "%{public}@BackgroundEstimator(PTS:%.2f) Reset background model due to very large foreground object", &time2, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      [(HMIBackgroundEstimator *)selfCopy4 backgroundTimeStamp];
      v26 = CMTimeGetSeconds(&time1);
      configuration = [(HMIBackgroundEstimator *)selfCopy4 configuration];
      camera = [configuration camera];
      [HMIAnalytics videoPackageAnalyzerDidResetReferenceImageWithInterval:camera camera:v26];

      return 1;
    }
  }

  return 0;
}

- (BOOL)_updateBackgroundFromPixelBuffer:(__CVBuffer *)buffer timeStamp:(id *)stamp
{
  v28 = *MEMORY[0x277D85DE8];
  if (self->_runningMean && self->_runningStd)
  {
    v23 = *stamp;
    [(HMIBackgroundEstimator *)self setBackgroundTimeStamp:&v23];
    [(HMIBackgroundEstimator *)self modelSize];
    v8 = v7;
    [(HMIBackgroundEstimator *)self modelSize];
    v10 = malloc_type_malloc(4 * (v8 * 3.0 * v9), 0x100004052888210uLL);
    for (i = 0; i != 5; ++i)
    {
      [(HMIBackgroundEstimator *)self _copyFromPixelBuffer:buffer toInputBuffer:v10 translateCol:kHMIBackgroundEstimatorTranslateCol[i] translateRow:kHMIBackgroundEstimatorTranslateRow[i]];
      numImages = [(HMIBackgroundEstimator *)self numImages];
      runningMean = [(HMIBackgroundEstimator *)self runningMean];
      runningStd = [(HMIBackgroundEstimator *)self runningStd];
      *&v15 = (i + 5 * numImages) / ((i + 5 * numImages) + 1.0);
      [(HMIBackgroundEstimator *)self _updateRunningMean:runningMean runningSquaredMean:runningStd fromInputBuffer:v10 decay:v15];
    }

    ++self->_numImages;
    numImages2 = [(HMIBackgroundEstimator *)self numImages];
    if (numImages2 == [(HMIBackgroundEstimator *)self minSampleSize])
    {
      [(HMIBackgroundEstimator *)self _updateRunningStd:[(HMIBackgroundEstimator *)self runningStd] withAuxBuffer:v10 runningMean:[(HMIBackgroundEstimator *)self runningMean] runningSquaredMean:[(HMIBackgroundEstimator *)self runningStd]];
    }

    free(v10);
    return 1;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v23 = *stamp;
      Seconds = CMTimeGetSeconds(&v23);
      *buf = 138543618;
      v25 = v21;
      v26 = 2048;
      v27 = Seconds;
      _os_log_impl(&dword_22D12F000, v20, OS_LOG_TYPE_ERROR, "%{public}@BackgroundEstimator(PTS:%.2f) Unable to alloc buffer", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    return 0;
  }
}

- (id)_predictForegroundFromPixelBuffer:(__CVBuffer *)buffer timeStamp:(id *)stamp
{
  v29 = *MEMORY[0x277D85DE8];
  if (self->_runningMean && self->_runningStd && self->_assignment)
  {
    v24 = *stamp;
    [(HMIBackgroundEstimator *)self _expireMotionDetectionsAtTimeStamp:&v24];
    v24 = *stamp;
    [(HMIBackgroundEstimator *)self setForegroundTimeStamp:&v24];
    [(HMIBackgroundEstimator *)self modelSize];
    v8 = v7;
    [(HMIBackgroundEstimator *)self modelSize];
    v10 = malloc_type_calloc((v8 * v9), 1uLL, 0x100004077774924uLL);
    [(HMIBackgroundEstimator *)self _foregroundPixelsFromPixelBuffer:buffer attribute:v10 assignment:[(HMIBackgroundEstimator *)self assignment] useChromaOnly:[(HMIBackgroundEstimator *)self adjustBrightness]];
    assignment = [(HMIBackgroundEstimator *)self assignment];
    v24 = *stamp;
    v12 = [(HMIBackgroundEstimator *)self _blobsFromAssignment:assignment timeStamp:&v24];
    buf[0] = 0;
    v13 = [(HMIBackgroundEstimator *)self _foregroundBlobsFromBlobs:v12 backgroundChanged:buf];
    tracks = [(HMIBackgroundEstimator *)self tracks];
    inactiveTracks = [(HMIBackgroundEstimator *)self inactiveTracks];
    v24 = *stamp;
    [(HMIBackgroundEstimator *)self _updateCurrentTracks:tracks inactiveTracks:inactiveTracks blobs:v13 timeStamp:&v24];

    v24 = *stamp;
    LODWORD(tracks) = [(HMIBackgroundEstimator *)self _adjustBackgroundAtAttribute:v10 backgroundChanged:buf[0] timeStamp:&v24];
    free(v10);
    if (tracks)
    {
      v16 = [MEMORY[0x277CBEB98] set];
    }

    else
    {
      tracks2 = [(HMIBackgroundEstimator *)self tracks];
      v24 = *stamp;
      v16 = [(HMIBackgroundEstimator *)self _stationaryTracks:tracks2 timeStamp:&v24];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v24 = *stamp;
      Seconds = CMTimeGetSeconds(&v24);
      *buf = 138543618;
      v26 = v20;
      v27 = 2048;
      v28 = Seconds;
      _os_log_impl(&dword_22D12F000, v19, OS_LOG_TYPE_ERROR, "%{public}@BackgroundEstimator(PTS:%.2f) No background model", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v16 = [MEMORY[0x277CBEB98] set];
  }

  return v16;
}

- (BOOL)_adjustBackgroundAtAttribute:(const char *)attribute backgroundChanged:(BOOL)changed timeStamp:(id *)stamp
{
  if (!changed)
  {
    time1 = *stamp;
    [(HMIBackgroundEstimator *)self setBackgroundChangeTimeStamp:&time1];
  }

  if (![(HMIBackgroundEstimator *)self adjustBrightness])
  {
    time1 = *stamp;
    [(HMIBackgroundEstimator *)self backgroundChangeTimeStamp];
    [(HMIBackgroundEstimator *)self backgroundChangeInterval];
    CMTimeAdd(&time2, &lhs, &rhs);
    if (CMTimeCompare(&time1, &time2) >= 1)
    {
      [(HMIBackgroundEstimator *)self setAdjustBrightness:1];
    }
  }

  return changed & ~[(HMIBackgroundEstimator *)self adjustBrightness];
}

- (void)_expireMotionDetectionsAtTimeStamp:(id *)stamp
{
  while (1)
  {
    motionTimeStamps = [(HMIBackgroundEstimator *)self motionTimeStamps];
    if ([motionTimeStamps hmf_isEmpty])
    {
      break;
    }

    time1 = *stamp;
    motionTimeStamps2 = [(HMIBackgroundEstimator *)self motionTimeStamps];
    firstObject = [motionTimeStamps2 firstObject];
    v8 = firstObject;
    if (firstObject)
    {
      [firstObject CMTimeValue];
    }

    else
    {
      memset(&lhs, 0, sizeof(lhs));
    }

    [(HMIBackgroundEstimator *)self motionValidInterval];
    CMTimeAdd(&time2, &lhs, &rhs);
    v9 = CMTimeCompare(&time1, &time2);

    if (v9 < 1)
    {
      return;
    }

    motionTimeStamps3 = [(HMIBackgroundEstimator *)self motionTimeStamps];
    [motionTimeStamps3 hmf_removeFirstObject];

    motionDetections = [(HMIBackgroundEstimator *)self motionDetections];
    [motionDetections hmf_removeFirstObject];
  }
}

- (id)_foregroundBlobsFromBlobs:(id)blobs backgroundChanged:(BOOL *)changed
{
  blobsCopy = blobs;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x5012000000;
  v11[3] = __Block_byref_object_copy__1;
  v11[4] = __Block_byref_object_dispose__1;
  v11[5] = &unk_22D2C2491;
  v6 = *(MEMORY[0x277CBF398] + 16);
  v12 = *MEMORY[0x277CBF398];
  v13 = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__HMIBackgroundEstimator__foregroundBlobsFromBlobs_backgroundChanged___block_invoke;
  v10[3] = &unk_278753050;
  v10[4] = v11;
  v7 = [blobsCopy na_filter:v10];
  v8 = [v7 count];
  *changed = v8 < [blobsCopy count];
  _Block_object_dispose(v11, 8);

  return v7;
}

BOOL __70__HMIBackgroundEstimator__foregroundBlobsFromBlobs_backgroundChanged___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v5 = v4[6];
  v6 = v4[7];
  v7 = v4[8];
  v8 = v4[9];
  [v3 boundingBox];
  v20.origin.x = v9;
  v20.origin.y = v10;
  v20.size.width = v11;
  v20.size.height = v12;
  v19.origin.x = v5;
  v19.origin.y = v6;
  v19.size.width = v7;
  v19.size.height = v8;
  *(*(*(a1 + 32) + 8) + 48) = CGRectUnion(v19, v20);
  [v3 boundingBox];
  v17 = HMICGRectArea(v13, v14, v15, v16) < 0.600000024;

  return v17;
}

- (void)_updateCurrentTracks:(id)tracks inactiveTracks:(id)inactiveTracks blobs:(id)blobs timeStamp:(id *)stamp
{
  tracksCopy = tracks;
  inactiveTracksCopy = inactiveTracks;
  blobsCopy = blobs;
  allValues = [tracksCopy allValues];
  allObjects = [blobsCopy allObjects];
  array = [MEMORY[0x277CBEB18] array];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __78__HMIBackgroundEstimator__updateCurrentTracks_inactiveTracks_blobs_timeStamp___block_invoke;
  v48[3] = &unk_2787530A0;
  v13 = allObjects;
  v49 = v13;
  v14 = array;
  v50 = v14;
  [allValues enumerateObjectsUsingBlock:v48];
  v29 = [MEMORY[0x277CCAB58] indexSetWithIndexesInRange:{0, objc_msgSend(tracksCopy, "count")}];
  v15 = [MEMORY[0x277CCAB58] indexSetWithIndexesInRange:{0, objc_msgSend(blobsCopy, "count")}];
  v16 = [v14 sortedArrayUsingComparator:{&__block_literal_global_2, v15}];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __78__HMIBackgroundEstimator__updateCurrentTracks_inactiveTracks_blobs_timeStamp___block_invoke_3;
  v43[3] = &unk_2787530C8;
  v17 = v29;
  v44 = v17;
  v18 = v15;
  v45 = v18;
  v19 = allValues;
  v46 = v19;
  v20 = v13;
  v47 = v20;
  [v16 na_each:v43];

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __78__HMIBackgroundEstimator__updateCurrentTracks_inactiveTracks_blobs_timeStamp___block_invoke_4;
  v38[3] = &unk_2787530F0;
  v21 = v19;
  v39 = v21;
  v42 = *stamp;
  v22 = inactiveTracksCopy;
  v40 = v22;
  v23 = tracksCopy;
  v41 = v23;
  [v17 enumerateIndexesUsingBlock:v38];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __78__HMIBackgroundEstimator__updateCurrentTracks_inactiveTracks_blobs_timeStamp___block_invoke_5;
  v35[3] = &unk_278753118;
  v35[4] = self;
  v24 = v23;
  v36 = v24;
  v25 = v20;
  v37 = v25;
  [v18 enumerateIndexesUsingBlock:v35];
  allValues2 = [v22 allValues];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __78__HMIBackgroundEstimator__updateCurrentTracks_inactiveTracks_blobs_timeStamp___block_invoke_6;
  v32[3] = &unk_278753140;
  v34 = *stamp;
  v27 = v22;
  v33 = v27;
  [allValues2 na_each:v32];
}

void __78__HMIBackgroundEstimator__updateCurrentTracks_inactiveTracks_blobs_timeStamp___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__HMIBackgroundEstimator__updateCurrentTracks_inactiveTracks_blobs_timeStamp___block_invoke_2;
  v8[3] = &unk_278753078;
  v9 = v5;
  v6 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = a3;
  v7 = v5;
  [v6 enumerateObjectsUsingBlock:v8];
}

void __78__HMIBackgroundEstimator__updateCurrentTracks_inactiveTracks_blobs_timeStamp___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  [*(a1 + 32) similarityToBlob:?];
  v6 = v5;
  if (v5 > 0.0)
  {
    v7 = *(a1 + 40);
    v8 = [HMIPairwiseMatch alloc];
    *&v9 = v6;
    v10 = [(HMIPairwiseMatch *)v8 initWithFirstIndex:*(a1 + 48) secondIndex:a3 score:v9];
    [v7 addObject:v10];
  }
}

void __78__HMIBackgroundEstimator__updateCurrentTracks_inactiveTracks_blobs_timeStamp___block_invoke_3(id *a1, void *a2)
{
  v5 = a2;
  if ([a1[4] containsIndex:{objc_msgSend(v5, "firstIndex")}] && objc_msgSend(a1[5], "containsIndex:", objc_msgSend(v5, "secondIndex")))
  {
    v3 = [a1[6] objectAtIndexedSubscript:{objc_msgSend(v5, "firstIndex")}];
    v4 = [a1[7] objectAtIndexedSubscript:{objc_msgSend(v5, "secondIndex")}];
    [v3 appendBlob:v4];

    [a1[4] removeIndex:{objc_msgSend(v5, "firstIndex")}];
    [a1[5] removeIndex:{objc_msgSend(v5, "secondIndex")}];
  }
}

void __78__HMIBackgroundEstimator__updateCurrentTracks_inactiveTracks_blobs_timeStamp___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v15 = *(a1 + 56);
  v16 = *(a1 + 72);
  v5 = [v4 isLostAtTimeStamp:&v15];

  if (v5)
  {
    v6 = [*(a1 + 32) objectAtIndexedSubscript:a2];
    v7 = MEMORY[0x277CCABB0];
    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) objectAtIndexedSubscript:a2];
    v10 = [v7 numberWithUnsignedInteger:{objc_msgSend(v9, "trackIndex")}];
    [v8 setObject:v6 forKeyedSubscript:v10];

    v11 = *(a1 + 48);
    v12 = MEMORY[0x277CCABB0];
    v13 = [*(a1 + 32) objectAtIndexedSubscript:a2];
    v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(v13, "trackIndex")}];
    [v11 removeObjectForKey:v14];
  }
}

void __78__HMIBackgroundEstimator__updateCurrentTracks_inactiveTracks_blobs_timeStamp___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [v4 numTracks];
  [v4 setNumTracks:v5 + 1];
  v6 = [HMIVideoAnalyzerTrack alloc];
  v10 = [*(a1 + 48) objectAtIndexedSubscript:a2];
  v7 = [HMIVideoAnalyzerTrack initWithBlob:v6 trackIndex:"initWithBlob:trackIndex:"];
  v8 = *(a1 + 40);
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
  [v8 setObject:v7 forKeyedSubscript:v9];
}

void __78__HMIBackgroundEstimator__updateCurrentTracks_inactiveTracks_blobs_timeStamp___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  if ([v3 isExpiredAtTimeStamp:&v6])
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "trackIndex")}];
    [v4 removeObjectForKey:v5];
  }
}

- (id)_stationaryTracks:(id)tracks timeStamp:(id *)stamp
{
  v6 = MEMORY[0x277CBEB98];
  allValues = [tracks allValues];
  v8 = [v6 setWithArray:allValues];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__HMIBackgroundEstimator__stationaryTracks_timeStamp___block_invoke;
  v13[3] = &__block_descriptor_56_e31_B16__0__HMIVideoAnalyzerTrack_8l;
  v14 = *stamp;
  v9 = [v8 na_filter:v13];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__HMIBackgroundEstimator__stationaryTracks_timeStamp___block_invoke_2;
  v12[3] = &unk_2787531B0;
  v12[4] = self;
  v10 = [v9 na_filter:v12];

  return v10;
}

uint64_t __54__HMIBackgroundEstimator__stationaryTracks_timeStamp___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  if ([v3 isStationaryAtTimeStamp:&v6])
  {
    v4 = [v3 isClassified] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __54__HMIBackgroundEstimator__stationaryTracks_timeStamp___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) motionDetections];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__HMIBackgroundEstimator__stationaryTracks_timeStamp___block_invoke_3;
  v8[3] = &unk_278753188;
  v5 = v3;
  v9 = v5;
  v6 = [v4 na_any:v8];

  return v6 ^ 1u;
}

BOOL __54__HMIBackgroundEstimator__stationaryTracks_timeStamp___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) lastBlob];
  [v4 boundingBox];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v3 rectValue];
  v20.origin.x = v13;
  v20.origin.y = v14;
  v20.size.width = v15;
  v20.size.height = v16;
  v19.origin.x = v6;
  v19.origin.y = v8;
  v19.size.width = v10;
  v19.size.height = v12;
  v17 = CGRectIntersectsRect(v19, v20);

  return v17;
}

- (void)_ensureInternalBuffersForPixelBuffer:(__CVBuffer *)buffer
{
  if (!self->_runningMean || !self->_runningStd || !self->_assignment)
  {
    v5 = (CVPixelBufferGetWidth(buffer) + 1) >> 1;
    v6 = (CVPixelBufferGetHeight(buffer) + 1) >> 1;
    self->_imageSize.width = HMICVPixelBufferGetSize(buffer);
    self->_imageSize.height = v7;
    self->_modelSize.width = v5;
    self->_modelSize.height = v6;
    self->_runningMean = malloc_type_calloc(3 * v6 * v5, 4uLL, 0x100004052888210uLL);
    self->_runningStd = malloc_type_calloc(3 * v6 * v5, 4uLL, 0x100004052888210uLL);
    v8 = malloc_type_malloc(2 * v6 * v5, 0x1000040BDFB0063uLL);
    self->_assignment = v8;

    memset(v8, 2, 2 * v6 * v5);
  }
}

- (void)_copyFromPixelBuffer:(__CVBuffer *)buffer toInputBuffer:(float *)inputBuffer translateCol:(int)col translateRow:(int)row
{
  [(HMIBackgroundEstimator *)self modelSize];
  v12 = v11;
  [(HMIBackgroundEstimator *)self modelSize];
  v14 = v13;
  v15 = v13 * v12;
  v16 = col & ~(col >> 31);
  v17 = -col & ~(-col >> 31);
  if (col)
  {
    memcpy(inputBuffer, self->_runningMean, 12 * v15);
  }

  CVPixelBufferLockBaseAddress(buffer, 1uLL);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, 0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, 0);
  pixelBuffer = buffer;
  v19 = CVPixelBufferGetBaseAddressOfPlane(buffer, 1uLL);
  if (v16 <= v17)
  {
    v20 = -col & ~(-col >> 31);
  }

  else
  {
    v20 = col & ~(col >> 31);
  }

  if (v14)
  {
    v21 = 8 * v15;
    v22 = v12 - v20;
    v23 = &inputBuffer[v16];
    v24 = v17;
    v25 = v14 - 1;
    v26 = v15;
    v27 = &v19[2 * v24];
    v36 = v21;
    v28 = 4 * v12;
    v29 = v26;
    v30 = BaseAddressOfPlane;
    v31 = -row;
    v32 = &v30[2 * v24];
    do
    {
      if (v31 >= v25)
      {
        v33 = v25;
      }

      else
      {
        v33 = v31;
      }

      v34 = BytesPerRowOfPlane * (v33 & ~(v33 >> 31));
      vDSP_vfltu8(&v32[2 * v34], 2, v23, 1, v22);
      vDSP_vfltu8(&v27[v34], 2, &v23[v29], 1, v22);
      vDSP_vfltu8(&v27[v34 + 1], 2, (v23 + v36), 1, v22);
      v23 = (v23 + v28);
      ++v31;
      --v14;
    }

    while (v14);
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
}

- (void)_copyFromOutputBuffer:(const float *)buffer toPixelBuffer:(__CVBuffer *)pixelBuffer
{
  if (CVPixelBufferGetPixelFormatType(pixelBuffer) == 875704422)
  {
    [(HMIBackgroundEstimator *)self modelSize];
    v8 = v7;
    [(HMIBackgroundEstimator *)self modelSize];
    v10 = v9;
    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
    pixelBuffer = pixelBuffer;
    v13 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 1uLL);
    if (v10)
    {
      v14 = v13;
      v15 = v10 * v8;
      v22 = 2 * v15;
      v16 = v15;
      do
      {
        vDSP_vfixru8(buffer, 1, BaseAddressOfPlane, 2, v8);
        vDSP_vfixru8(buffer, 1, BaseAddressOfPlane + 1, 2, v8);
        vDSP_vfixru8(buffer, 1, &BaseAddressOfPlane[BytesPerRowOfPlane], 2, v8);
        vDSP_vfixru8(buffer, 1, &BaseAddressOfPlane[BytesPerRowOfPlane + 1], 2, v8);
        vDSP_vfixru8(&buffer[v16], 1, v14, 2, v8);
        vDSP_vfixru8(&buffer[v22], 1, v14 + 1, 2, v8);
        v14 += BytesPerRowOfPlane;
        buffer += v8;
        BaseAddressOfPlane += 2 * BytesPerRowOfPlane;
        --v10;
      }

      while (v10);
    }

    CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  }

  else
  {
    v17 = [HMIBackgroundEstimator _copyFromOutputBuffer:toPixelBuffer:];
    [(HMIBackgroundEstimator *)v17 _intersectionOverUnionFromBlob:v18 boundingBox:v19 assignment:v24, v20];
  }
}

- (float)_intersectionOverUnionFromBlob:(id)blob boundingBox:(CGRect)box assignment:(unsigned __int16 *)assignment
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  blobCopy = blob;
  [(HMIBackgroundEstimator *)self modelSize];
  v13 = v12;
  [(HMIBackgroundEstimator *)self modelSize];
  v15 = v14;
  v60.origin.x = x;
  v60.origin.y = y;
  v60.size.width = width;
  v60.size.height = height;
  MinX = CGRectGetMinX(v60);
  v17 = v13;
  v18 = v13 - 1;
  v19 = MinX * v13;
  v20 = v18;
  if (v19 > v18)
  {
    v19 = v18;
  }

  v56 = v19;
  v61.origin.x = x;
  v61.origin.y = y;
  v61.size.width = width;
  v61.size.height = height;
  MinY = CGRectGetMinY(v61);
  v22 = v15;
  v23 = v15 - 1;
  v24 = MinY * v22;
  v25 = v23;
  if (v24 > v23)
  {
    v24 = v23;
  }

  v58 = v24;
  v62.origin.x = x;
  v62.origin.y = y;
  v62.size.width = width;
  v62.size.height = height;
  v26 = CGRectGetMaxX(v62) * v17;
  if (v26 > v20)
  {
    v26 = v20;
  }

  v55 = v26;
  v63.origin.x = x;
  v63.origin.y = y;
  v63.size.width = width;
  v63.size.height = height;
  MaxY = CGRectGetMaxY(v63);
  v28 = fmax(v58, 0.0);
  v29 = MaxY * v22;
  if (v29 > v25)
  {
    v29 = v25;
  }

  v30 = fmax(v29, 0.0);
  v31 = v30 - v28;
  if (v30 < v28)
  {
    v31 = v30 - v28 + 3;
  }

  LODWORD(v32) = v31 >> 2;
  if (v32 <= 1)
  {
    v32 = 1;
  }

  else
  {
    v32 = v32;
  }

  v59 = v32;
  v33 = 0.0;
  v34 = 0.0;
  if ((v28 + (v32 >> 1)) < v30)
  {
    v35 = fmax(v56, 0.0);
    v36 = fmax(v55, 0.0);
    v37 = v36 - v35;
    if (v36 < v35)
    {
      v37 += 3;
    }

    v38 = v37 >> 2;
    if (v38 <= 1)
    {
      v39 = 1;
    }

    else
    {
      v39 = v38;
    }

    v40 = (v35 + (v39 >> 1));
    v57 = v36;
    v41 = v36;
    v42 = (v59 >> 1) + v28;
    v43 = v17;
    v44 = v30;
    v45 = &assignment[v42 * v43];
    v46 = 2 * v43 * v59;
    do
    {
      v47 = v40;
      if (v40 < v57)
      {
        do
        {
          v48 = v45[v47];
          if (v48 == [blobCopy blobID])
          {
            v34 = v34 + 1.0;
          }

          v33 = v33 + 1.0;
          v47 += v39;
        }

        while (v47 < v41);
      }

      v42 += v59;
      v45 = (v45 + v46);
    }

    while (v42 < v44);
  }

  [blobCopy blobArea];
  v49 = width * height;
  v50 = (v34 * v49) / v33;
  v52 = (v51 + v49) - v50;
  if (v52 < 0.000000001)
  {
    v52 = 0.000000001;
  }

  v53 = v50 / v52;

  return v53;
}

- (void)_setAssignment:(unsigned __int16 *)assignment greaterThanType:(unsigned __int16)type value:(unsigned __int16)value boundingBox:(CGRect)box scale:(float)scale
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  typeCopy = type;
  selfCopy = self;
  [(HMIBackgroundEstimator *)self modelSize];
  v45 = v16;
  [(HMIBackgroundEstimator *)selfCopy modelSize];
  LODWORD(selfCopy) = v17;
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  v44 = CGRectGetWidth(v46);
  v47.origin.x = x;
  v47.origin.y = y;
  v47.size.width = width;
  v47.size.height = height;
  scaleCopy = scale;
  v18 = CGRectGetHeight(v47) * scale;
  v48.origin.x = x;
  v48.origin.y = y;
  v48.size.width = width;
  v48.size.height = height;
  MinX = CGRectGetMinX(v48);
  v19 = selfCopy - 1;
  v20 = selfCopy;
  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  v21 = v18;
  v22 = (CGRectGetMinY(v49) - v18) * selfCopy;
  v23 = (selfCopy - 1);
  if (v22 > v23)
  {
    v22 = v19;
  }

  v24 = fmax(v22, 0.0);
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  MaxX = CGRectGetMaxX(v50);
  v51.origin.x = x;
  v51.origin.y = y;
  v51.size.width = width;
  v51.size.height = height;
  v26 = (CGRectGetMaxY(v51) + v21) * v20;
  if (v26 > v23)
  {
    v26 = v19;
  }

  v27 = fmax(v26, 0.0);
  if (v24 <= v27)
  {
    v28 = v44 * scaleCopy;
    v29 = v28;
    v30 = v45;
    v31 = (MaxX + v29) * v45;
    v32 = (v45 - 1);
    if (v31 > v32)
    {
      v31 = (v30 - 1);
    }

    v33 = fmax(v31, 0.0);
    v34 = (MinX - v29) * v30;
    if (v34 > v32)
    {
      v34 = (v30 - 1);
    }

    v35 = fmax(v34, 0.0);
    v36 = v24;
    v37 = v27 + 1;
    v38 = &assignment[v24 * v30 + v35];
    v39 = 2 * v30;
    do
    {
      v40 = v33 - v35 + 1;
      v41 = v38;
      if (v35 <= v33)
      {
        do
        {
          if (*v41 > typeCopy)
          {
            *v41 = value;
          }

          ++v41;
          --v40;
        }

        while (v40);
      }

      ++v36;
      v38 = (v38 + v39);
    }

    while (v37 != v36);
  }
}

- (void)_updateRunningMean:(float *)mean runningSquaredMean:(float *)squaredMean fromInputBuffer:(const float *)buffer decay:(float)decay
{
  decayCopy = decay;
  [(HMIBackgroundEstimator *)self modelSize];
  v12 = v11;
  [(HMIBackgroundEstimator *)self modelSize];
  v16 = 1.0 - decay;
  if ((1.0 - decay) != 0.0)
  {
    v14 = (v12 * 3.0 * v13);
    MEMORY[0x2318CBC50](mean, 1, &decayCopy, buffer, 1, &v16, mean, 1, v14);
    v15 = decayCopy / v16;
    MEMORY[0x2318CBC60](squaredMean, 1, &v15, squaredMean, 1, v14);
    MEMORY[0x2318CBC40](buffer, 1, buffer, 1, squaredMean, 1, squaredMean, 1, v14);
    MEMORY[0x2318CBC60](squaredMean, 1, &v16, squaredMean, 1, v14);
  }
}

- (void)_updateRunningStd:(float *)std withAuxBuffer:(float *)buffer runningMean:(const float *)mean runningSquaredMean:(const float *)squaredMean
{
  [(HMIBackgroundEstimator *)self modelSize];
  v12 = v11 * 3.0;
  [(HMIBackgroundEstimator *)self modelSize];
  v14 = (v12 * v13);
  MEMORY[0x2318CBC80](mean, 1, buffer, 1, v14);
  v17 = -1082130432;
  v18 = 1065353216;
  MEMORY[0x2318CBC50](squaredMean, 1, &v18, buffer, 1, &v17, std, 1, v14);
  __B = 0.0;
  vDSP_vthr(std, 1, &__B, std, 1, v14);
  v15 = v14;
  vvsqrtf(std, std, &v15);
}

- (void)_correctRunningMeanBrightnessAtAttribute:(const char *)attribute
{
  [(HMIBackgroundEstimator *)self modelSize];
  v6 = v5;
  [(HMIBackgroundEstimator *)self modelSize];
  if ((v6 * v7))
  {
    v8 = 0;
    do
    {
      v9 = attribute[v8];
      if (v9)
      {
        runningMean = self->_runningMean;
        v11 = runningMean[v8] + 15.0;
        if (v11 > 255.0)
        {
          v11 = 255.0;
        }

        runningMean[v8] = fmaxf(v11, 0.0);
        v9 = attribute[v8];
      }

      if ((v9 & 2) != 0)
      {
        v12 = self->_runningMean;
        v13 = v12[v8] + -15.0;
        if (v13 > 255.0)
        {
          v13 = 255.0;
        }

        v12[v8] = fmaxf(v13, 0.0);
      }

      ++v8;
      [(HMIBackgroundEstimator *)self modelSize];
      v15 = v14;
      [(HMIBackgroundEstimator *)self modelSize];
    }

    while (v8 < (v15 * v16));
  }
}

- (void)_foregroundPixelsFromPixelBuffer:(__CVBuffer *)buffer attribute:(char *)attribute assignment:(unsigned __int16 *)assignment useChromaOnly:(BOOL)only
{
  onlyCopy = only;
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, 0);
  [(HMIBackgroundEstimator *)self modelSize];
  v13 = v12;
  [(HMIBackgroundEstimator *)self modelSize];
  v15 = v14;
  [(HMIBackgroundEstimator *)self modelSize];
  v17 = (v15 * v16);
  CVPixelBufferLockBaseAddress(buffer, 1uLL);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, 0);
  v19 = CVPixelBufferGetBaseAddressOfPlane(buffer, 1uLL);
  if (v17)
  {
    v21 = 0;
    v22 = v13;
    v23 = v17;
    v24 = 2 * v17;
    do
    {
      if (assignment[v21] >= 2u)
      {
        v25 = v21 / v22;
        if (onlyCopy)
        {
          runningMean = self->_runningMean;
          runningStd = self->_runningStd;
          v28 = v25 * BytesPerRowOfPlane;
          v29 = v21 % v22;
LABEL_13:
          v32 = v28 + 2 * v29;
          LOBYTE(v20) = v19[v32];
          v33 = LODWORD(v20) - runningMean[v23 + v21];
          if (v33 < 0.0)
          {
            v33 = -v33;
          }

          v34 = runningStd[v23 + v21];
          v20 = v33 + (v34 * -2.0);
          LOBYTE(v34) = v19[v32 + 1];
          v35 = LODWORD(v34) - runningMean[v24 + v21];
          if (v35 < 0.0)
          {
            v35 = -v35;
          }

          v36 = v35 + (runningStd[v24 + v21] * -2.0);
          if (v20 < v36)
          {
            v20 = v36;
          }

          if (v20 <= 6.0)
          {
            v37 = 3;
          }

          else
          {
            v37 = 2;
          }

          assignment[v21] = v37;
          goto LABEL_23;
        }

        v28 = v25 * BytesPerRowOfPlane;
        v29 = v21 % v22;
        LOBYTE(v20) = BaseAddressOfPlane[2 * v28 + 2 * (v21 % v22)];
        runningMean = self->_runningMean;
        v20 = LODWORD(v20) - runningMean[v21];
        v30 = -v20;
        if (v20 >= 0.0)
        {
          v30 = v20;
        }

        runningStd = self->_runningStd;
        if ((v30 + (runningStd[v21] * -2.0)) <= 15.0)
        {
          goto LABEL_13;
        }

        assignment[v21] = 2;
        if (v20 > 0.0)
        {
          v31 = 1;
        }

        else
        {
          v31 = 2;
        }

        attribute[v21] = v31;
      }

LABEL_23:
      ++v21;
    }

    while (v17 != v21);
  }

  CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
}

- (void)_foregroundDifferencesFromPixelBuffer:(__CVBuffer *)buffer differences:(float *)differences
{
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, 0);
  [(HMIBackgroundEstimator *)self modelSize];
  v9 = v8;
  [(HMIBackgroundEstimator *)self modelSize];
  v11 = v10;
  [(HMIBackgroundEstimator *)self modelSize];
  v13 = (v11 * v12);
  CVPixelBufferLockBaseAddress(buffer, 1uLL);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, 0);
  v15 = CVPixelBufferGetBaseAddressOfPlane(buffer, 1uLL);
  if (v13)
  {
    v17 = 0;
    runningMean = self->_runningMean;
    runningStd = self->_runningStd;
    v20 = v9;
    do
    {
      v21 = v17 / v20 * BytesPerRowOfPlane;
      v22 = v21 + 2 * (v17 % v20);
      LOBYTE(v16) = BaseAddressOfPlane[2 * v21 + 2 * (v17 % v20)];
      v23 = LODWORD(v16) - runningMean[v17];
      if (v23 < 0.0)
      {
        v23 = -v23;
      }

      v24 = runningStd[v17];
      v25 = v23 + (v24 * -2.0);
      LOBYTE(v24) = v15[v22];
      v26 = LODWORD(v24) - runningMean[v13 + v17];
      if (v26 < 0.0)
      {
        v26 = -v26;
      }

      v27 = runningStd[v13 + v17];
      v28 = v26 + (v27 * -2.0);
      LOBYTE(v27) = v15[v22 + 1];
      v29 = LODWORD(v27) - runningMean[2 * v13 + v17];
      if (v29 < 0.0)
      {
        v29 = -v29;
      }

      v30 = v29 + (runningStd[2 * v13 + v17] * -2.0);
      v31 = v25 + -15.0;
      if (v31 < 0.0)
      {
        v31 = 0.0;
      }

      differences[v17] = v31;
      v32 = v28 + -6.0;
      if ((v28 + -6.0) < 0.0)
      {
        v32 = 0.0;
      }

      differences[v13 + v17] = v32;
      v16 = v30 + -6.0;
      if ((v30 + -6.0) < 0.0)
      {
        v16 = 0.0;
      }

      differences[2 * v13 + v17++] = v16;
    }

    while (v13 != v17);
  }

  CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
}

- (id)_blobsFromAssignment:(unsigned __int16 *)assignment timeStamp:(id *)stamp
{
  selfCopy2 = self;
  v83 = *MEMORY[0x277D85DE8];
  {
    __asm { FMOV            V1.2D, #-1.0 }

    v67 = _Q1;
    v68 = xmmword_22D297FE0;
    v69 = xmmword_22D297FF0;
    v70 = xmmword_22D298000;
    v71 = xmmword_22D298010;
    v72 = xmmword_22D298020;
    __asm { FMOV            V1.2D, #1.0 }

    v73 = xmmword_22D298030;
    v74 = _Q1;
    __asm { FMOV            V0.2D, #-3.0 }

    v75 = _Q0;
    v76 = xmmword_22D298040;
    v77 = xmmword_22D298050;
    v78 = xmmword_22D298060;
    v79 = xmmword_22D298070;
    v80 = xmmword_22D298080;
    __asm { FMOV            V1.2D, #3.0 }

    v81 = xmmword_22D298090;
    v82 = _Q1;
    qword_27D9FABC8 = 0;
    unk_27D9FABD0 = 0;
    [HMIBackgroundEstimator _blobsFromAssignment:timeStamp:]::neighbors = 0;
    std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint const*,CGPoint const*>(&-[HMIBackgroundEstimator _blobsFromAssignment:timeStamp:]::neighbors, &v67, &v83, 0x10uLL);
    selfCopy2 = self;
  }

  [(HMIBackgroundEstimator *)selfCopy2 modelSize];
  v7 = v6;
  [(HMIBackgroundEstimator *)selfCopy2 modelSize];
  v9 = v8;
  v58 = [MEMORY[0x277CBEB58] set];
  v10 = v7;
  v11 = v9;
  v12 = (v9 * v7);
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = 5;
    do
    {
      if (assignment[v13] == 2)
      {
        __p = 0;
        v65 = 0;
        v66 = 0;
        v68 = 0u;
        v69 = 0u;
        v67 = 0u;
        v63.n128_f64[0] = (v13 % v10);
        v63.n128_f64[1] = (v13 / v10);
        std::vector<CGPoint>::push_back[abi:ne200100](&__p, &v63);
        std::deque<CGPoint>::push_back(&v67, &v63);
        assignment[v63.n128_f64[0] + v63.n128_f64[1] * v10] = 4;
        while (*(&v69 + 1))
        {
          v15 = *(*(*(&v67 + 1) + ((v69 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v69);
          *&v69 = v69 + 1;
          --*(&v69 + 1);
          v60 = v15;
          if (v69 >= 0x200)
          {
            operator delete(**(&v67 + 1));
            v15 = v60;
            *(&v67 + 1) += 8;
            *&v69 = v69 - 256;
          }

          assignment[v15.f64[0] + v15.f64[1] * v10] = v14;
          v17 = [HMIBackgroundEstimator _blobsFromAssignment:timeStamp:]::neighbors;
          v16 = qword_27D9FABC8;
          while (v17 != v16)
          {
            v18 = vmovn_s64(vcvtq_s64_f64(*v17));
            v19.i64[0] = v18.i32[0];
            v19.i64[1] = v18.i32[1];
            v20 = vmovn_s64(vcvtq_s64_f64(vaddq_f64(v15, vcvtq_f64_s64(v19))));
            if ((v20.i32[0] & 0x80000000) == 0 && v20.i32[0] < v10 && (v20.i32[1] & 0x80000000) == 0 && v20.i32[1] < v11)
            {
              v21 = v20.i32[0] + v20.i32[1] * v10;
              if (assignment[v21] == 2)
              {
                v22.i64[0] = v20.u32[0];
                v22.i64[1] = v20.u32[1];
                v61 = vcvtq_f64_u64(v22);
                std::vector<CGPoint>::push_back[abi:ne200100](&__p, &v61);
                std::deque<CGPoint>::push_back(&v67, &v61);
                assignment[v21] = 4;
                v15 = v60;
              }
            }

            ++v17;
          }
        }

        v23 = __p;
        if ((v65 - __p) >= 0x81)
        {
          if (__p == v65)
          {
            v25 = 0;
            v24 = 0;
            v26 = v11 - 1;
            v27 = v10 - 1;
          }

          else
          {
            v24 = 0;
            v25 = 0;
            v26 = v11 - 1;
            v27 = v10 - 1;
            do
            {
              v28 = *v23;
              v29 = v23[1];
              v23 += 2;
              if (v24 <= v28)
              {
                v24 = v28;
              }

              if (v25 <= v29)
              {
                v25 = v29;
              }

              if (v27 >= v28)
              {
                v27 = v28;
              }

              if (v26 >= v29)
              {
                v26 = v29;
              }
            }

            while (v23 != v65);
          }

          HMICGRectNormalizedFromPixel(v10, v11, v27, v26, (v24 - v27 + 1), (v25 - v26 + 1));
          v31 = v30;
          v33 = v32;
          v35 = v34;
          v37 = v36;
          v39 = __p;
          v38 = v65;
          [(HMIBackgroundEstimator *)self modelSize];
          v41 = v40;
          [(HMIBackgroundEstimator *)self modelSize];
          v43 = v42;
          v44 = [HMIVideoAnalyzerBlob alloc];
          *&v45 = ((v38 - v39) >> 4) / (v41 * v43);
          v61 = *&stamp->var0;
          var3 = stamp->var3;
          v46 = [(HMIVideoAnalyzerBlob *)v44 initWithBoundingBox:&v61 timeStamp:v14 blobArea:v31 blobID:v33, v35, v37, v45];
          [v58 addObject:v46];
        }

        std::deque<CGPoint>::~deque[abi:ne200100](&v67);
        if (__p)
        {
          v65 = __p;
          operator delete(__p);
        }

        ++v14;
        v12 = (v11 * v10);
      }

      ++v13;
    }

    while (v13 != v12);
  }

  v47 = [v58 copy];

  return v47;
}

- (id)_exportInternalStateForPixelBuffer:(__CVBuffer *)buffer exportMode:(unint64_t)mode
{
  memset(&v27, 0, sizeof(v27));
  [(HMIBackgroundEstimator *)self foregroundTimeStamp];
  v25 = **&MEMORY[0x277CC08F0];
  if (CMTimeCompare(&time1, &v25))
  {
    [(HMIBackgroundEstimator *)self foregroundTimeStamp];
  }

  else
  {
    [(HMIBackgroundEstimator *)self backgroundTimeStamp];
  }

  [(HMIBackgroundEstimator *)self modelSize];
  v8 = v7;
  [(HMIBackgroundEstimator *)self modelSize];
  v10 = v9;
  [(HMIBackgroundEstimator *)self modelSize];
  v12 = v11 + v11;
  [(HMIBackgroundEstimator *)self modelSize];
  v14 = [HMIVisionUtilities createPixelBufferWithSize:875704422 pixelFormat:0 useIOSurface:v12, (v13 + v13)];
  if (v14)
  {
    v15 = [HMIVideoFrame alloc];
    time1 = v27;
    v16 = [(HMIVideoFrame *)v15 initWithPixelBuffer:v14 presentationTimeStamp:&time1];
    CVPixelBufferRelease(v14);
  }

  else
  {
    v16 = 0;
  }

  if (![(HMIBackgroundEstimator *)self runningMean]|| ![(HMIBackgroundEstimator *)self runningStd]|| ![(HMIBackgroundEstimator *)self assignment])
  {
    goto LABEL_31;
  }

  v17 = 0;
  if (mode > 1)
  {
    v20 = (v8 * v10);
    if (mode == 2)
    {
      v17 = malloc_type_calloc(3 * v20, 4uLL, 0x100004052888210uLL);
      [(HMIBackgroundEstimator *)self _foregroundDifferencesFromPixelBuffer:buffer differences:v17];
      v18 = v17;
    }

    else
    {
      v18 = 0;
      if (mode == 3)
      {
        v17 = malloc_type_calloc(3 * v20, 4uLL, 0x100004052888210uLL);
        LODWORD(time1.value) = 1124073472;
        vDSP_vfill(&time1, &v17[v20], 1, 2 * v20);
        if (v20)
        {
          v21 = 0;
          v22 = v17;
          v23 = (v8 * v10);
          do
          {
            if ([(HMIBackgroundEstimator *)self assignment][v21] >= 5u)
            {
              *v22 = 255.0;
            }

            if ([(HMIBackgroundEstimator *)self assignment][v21] == 1)
            {
              v22[2 * v20] = 255.0;
            }

            if (![(HMIBackgroundEstimator *)self assignment][v21])
            {
              v22[v20] = 255.0;
            }

            v21 += 2;
            ++v22;
            --v23;
          }

          while (v23);
        }

        v18 = v17;
      }
    }

    goto LABEL_29;
  }

  if (mode)
  {
    v18 = 0;
    if (mode != 1)
    {
      goto LABEL_29;
    }

    runningStd = [(HMIBackgroundEstimator *)self runningStd];
  }

  else
  {
    runningStd = [(HMIBackgroundEstimator *)self runningMean];
  }

  v18 = runningStd;
  v17 = 0;
LABEL_29:
  [(HMIBackgroundEstimator *)self _copyFromOutputBuffer:v18 toPixelBuffer:v14];
  if (v17)
  {
    free(v17);
  }

LABEL_31:

  return v16;
}

- (CGSize)imageSize
{
  objc_copyStruct(v4, &self->_imageSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)modelSize
{
  objc_copyStruct(v4, &self->_modelSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end
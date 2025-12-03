@interface HMIVideoFrameAnalyzer
- (BOOL)handleSampleBuffer:(opaqueCMSampleBuffer *)buffer background:(opaqueCMSampleBuffer *)background motionDetections:(id)detections tracks:(id)tracks;
- (HMIVideoFrameAnalyzer)initWithConfiguration:(id)configuration workQueue:(id)queue;
- (HMIVideoFrameAnalyzerDelegate)delegate;
- (void)flush;
@end

@implementation HMIVideoFrameAnalyzer

- (HMIVideoFrameAnalyzer)initWithConfiguration:(id)configuration workQueue:(id)queue
{
  v31 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  queueCopy = queue;
  v29.receiver = self;
  v29.super_class = HMIVideoFrameAnalyzer;
  v8 = [(HMIVideoAnalyzerProcessingNode *)&v29 initWithConfiguration:configurationCopy workQueue:queueCopy];
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = [[MovingAverage alloc] initWithWindowSize:8];
  analysisTime = v8->_analysisTime;
  v8->_analysisTime = v9;

  v11 = [HMICameraVideoFrameAnalyzerSignificantActivity alloc];
  v12 = +[HMIVideoAnalyzerEvent eventConfidenceThresholdsMedium];
  v13 = +[HMIVideoAnalyzerEvent eventConfidenceThresholdsHigh];
  v28 = 0;
  v14 = [(HMICameraVideoFrameAnalyzerSignificantActivity *)v11 initWithMediumConfidenceThresholds:v12 highConfidenceThresholds:v13 analyzerConfiguration:configurationCopy error:&v28];
  v15 = v28;
  cameraVideoFrameAnalyzer = v8->_cameraVideoFrameAnalyzer;
  v8->_cameraVideoFrameAnalyzer = v14;

  cameraVideoFrameAnalyzer = [(HMIVideoFrameAnalyzer *)v8 cameraVideoFrameAnalyzer];

  if (cameraVideoFrameAnalyzer)
  {
    v18 = [HMIVideoFrameIntervalSampler alloc];
    CMTimeMake(&v30, 10, 1);
    v19 = [(HMIVideoFrameIntervalSampler *)v18 initWithInterval:&v30];
    frameSampler = v8->_frameSampler;
    v8->_frameSampler = v19;

    frameSampler = [(HMIVideoFrameAnalyzer *)v8 frameSampler];
    [frameSampler setDelegate:v8];

LABEL_4:
    v22 = v8;
    goto LABEL_8;
  }

  v23 = objc_autoreleasePoolPush();
  v24 = v8;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = HMFGetLogIdentifier();
    LODWORD(v30.value) = 138543618;
    *(&v30.value + 4) = v26;
    LOWORD(v30.flags) = 2112;
    *(&v30.flags + 2) = v15;
    _os_log_impl(&dword_22D12F000, v25, OS_LOG_TYPE_ERROR, "%{public}@Error creating frame analyzer: %@", &v30, 0x16u);
  }

  objc_autoreleasePoolPop(v23);
  v22 = 0;
LABEL_8:

  return v22;
}

- (BOOL)handleSampleBuffer:(opaqueCMSampleBuffer *)buffer background:(opaqueCMSampleBuffer *)background motionDetections:(id)detections tracks:(id)tracks
{
  v101 = *MEMORY[0x277D85DE8];
  detectionsCopy = detections;
  tracksCopy = tracks;
  dynamicConfiguration = [(HMIVideoAnalyzerProcessingNode *)self dynamicConfiguration];

  if (!dynamicConfiguration)
  {
    [HMIVideoFrameAnalyzer handleSampleBuffer:background:motionDetections:tracks:];
  }

  v13 = 0x277CBE000uLL;
  date = [MEMORY[0x277CBEAA8] date];
  v95 = [MEMORY[0x277CBEB58] set];
  v94 = [MEMORY[0x277CBEB58] set];
  v96 = [[HMIVideoFrame alloc] initWithSampleBuffer:buffer];
  dynamicConfiguration2 = [(HMIVideoAnalyzerProcessingNode *)self dynamicConfiguration];
  eventTriggers = [dynamicConfiguration2 eventTriggers];

  v93 = tracksCopy;
  if ((eventTriggers & 0x1E) == 0)
  {
    v23 = *MEMORY[0x277CBF398];
    v24 = *(MEMORY[0x277CBF398] + 8);
    v25 = *(MEMORY[0x277CBF398] + 16);
    v26 = *(MEMORY[0x277CBF398] + 24);
    if ((eventTriggers & 1) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_30;
  }

  v92 = date;
  v98[0] = MEMORY[0x277D85DD0];
  v98[1] = 3221225472;
  v98[2] = __79__HMIVideoFrameAnalyzer_handleSampleBuffer_background_motionDetections_tracks___block_invoke;
  v98[3] = &unk_278753558;
  v17 = v96;
  v99 = v17;
  v18 = [tracksCopy na_map:v98];
  configuration = [(HMIVideoAnalyzerProcessingNode *)self configuration];
  packageClassifierMode = [configuration packageClassifierMode];

  backgroundCopy = background;
  if (packageClassifierMode)
  {
    bufferCopy2 = buffer;
    v22 = v18;
  }

  else
  {
    bufferCopy2 = buffer;
    [v95 unionSet:v18];
    v22 = [MEMORY[0x277CBEB98] set];
  }

  cameraVideoFrameAnalyzer = [(HMIVideoFrameAnalyzer *)self cameraVideoFrameAnalyzer];
  [(HMIVideoFrame *)v17 size];
  v90 = detectionsCopy;
  [cameraVideoFrameAnalyzer regionOfInterestForMotionDetections:detectionsCopy foregroundEvents:v22 frameSize:?];
  v23 = v28;
  v24 = v29;
  v25 = v30;
  v26 = v31;

  cameraVideoFrameAnalyzer2 = [(HMIVideoFrameAnalyzer *)self cameraVideoFrameAnalyzer];
  v33 = [cameraVideoFrameAnalyzer2 analyzeFrame:v17 regionOfInterest:{v23, v24, v25, v26}];

  cameraVideoFrameAnalyzer3 = [(HMIVideoFrameAnalyzer *)self cameraVideoFrameAnalyzer];
  dynamicConfiguration3 = [(HMIVideoAnalyzerProcessingNode *)self dynamicConfiguration];
  recognizeFaces = [dynamicConfiguration3 recognizeFaces];
  v37 = +[HMIPreference sharedInstance];
  v38 = [cameraVideoFrameAnalyzer3 getAnalyzerEvents:v33 eventTriggers:eventTriggers & 0xFFFFFFFFFFFFFFEFLL enableFaceClassification:recognizeFaces enableTorsoRecognition:{objc_msgSend(v37, "shouldEnableTorsoRecognition")}];

  dynamicConfiguration4 = [(HMIVideoAnalyzerProcessingNode *)self dynamicConfiguration];
  if ([dynamicConfiguration4 recognizeFaces])
  {
    configuration2 = [(HMIVideoAnalyzerProcessingNode *)self configuration];
    homeUUID = [configuration2 homeUUID];

    if (homeUUID)
    {
      cameraVideoFrameAnalyzer4 = [(HMIVideoFrameAnalyzer *)self cameraVideoFrameAnalyzer];
      configuration3 = [(HMIVideoAnalyzerProcessingNode *)self configuration];
      homeUUID2 = [configuration3 homeUUID];
      v45 = [cameraVideoFrameAnalyzer4 recognizeEvents:v38 frame:v17 regionOfInterest:homeUUID2 homeUUID:{v23, v24, v25, v26}];

      v38 = v45;
LABEL_18:
      date = v92;
      goto LABEL_19;
    }
  }

  else
  {
  }

  dynamicConfiguration5 = [(HMIVideoAnalyzerProcessingNode *)self dynamicConfiguration];
  if (([dynamicConfiguration5 recognizeFaces] & 1) == 0)
  {

    goto LABEL_18;
  }

  configuration4 = [(HMIVideoAnalyzerProcessingNode *)self configuration];
  homeUUID3 = [configuration4 homeUUID];

  date = v92;
  if (homeUUID3)
  {
LABEL_19:
    background = backgroundCopy;
    goto LABEL_20;
  }

  v49 = objc_autoreleasePoolPush();
  selfCopy = self;
  v51 = HMFGetOSLogHandle();
  background = backgroundCopy;
  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
  {
    HMFGetLogIdentifier();
    v52 = v88 = v49;
    LODWORD(buf.value) = 138543362;
    *(&buf.value + 4) = v52;
    _os_log_impl(&dword_22D12F000, v51, OS_LOG_TYPE_ERROR, "%{public}@Face Classification is enabled, but homeUUID is nil, skipping face recognition", &buf, 0xCu);

    v49 = v88;
  }

  objc_autoreleasePoolPop(v49);
  date = v92;
LABEL_20:
  buffer = bufferCopy2;
  v13 = 0x277CBE000;
  if ((eventTriggers & 0x10) != 0)
  {
    v53 = [v22 count];
    if (background)
    {
      if (v53)
      {
        v54 = [[HMIVideoFrame alloc] initWithSampleBuffer:background];
        cameraVideoFrameAnalyzer5 = [(HMIVideoFrameAnalyzer *)self cameraVideoFrameAnalyzer];
        bufferCopy3 = buffer;
        if (v54)
        {
          [(HMIVideoFrame *)v54 presentationTimeStamp];
        }

        else
        {
          memset(&buf, 0, sizeof(buf));
        }

        v56 = [cameraVideoFrameAnalyzer5 getPackageEvents:v33 foregroundEvents:v22 newBackgroundEvents:v94 backgroundTimeStamp:&buf];

        if ([v56 count])
        {
          cameraVideoFrameAnalyzer6 = [(HMIVideoFrameAnalyzer *)self cameraVideoFrameAnalyzer];
          v58 = [cameraVideoFrameAnalyzer6 analyzeBackgroundFrame:v54 packageEvents:v56 newBackgroundEvents:v94 regionOfInterest:{v23, v24, v25, v26}];

          [v95 unionSet:v58];
          v56 = v58;
          background = backgroundCopy;
        }

        v13 = 0x277CBE000uLL;

        buffer = bufferCopy3;
        date = v92;
      }
    }
  }

  [v95 unionSet:v38];

  detectionsCopy = v90;
  if (eventTriggers)
  {
LABEL_30:
    v59 = [HMIMotionDetection firstMotionDetectionInArray:detectionsCopy withMode:1];
    v60 = v59;
    if (v59)
    {
      [v59 motionScore];
      if (v61 > 1.0)
      {
        v62 = v13;
        v63 = [[HMIConfidence alloc] initWithValue:&unk_284075528 levelThresholds:1.0];
        v64 = [HMIVideoAnalyzerEventMotion alloc];
        [v60 boundingBox];
        v66 = v65;
        v68 = v67;
        v70 = v69;
        v72 = v71;
        [v60 motionScore];
        LODWORD(v74) = v73;
        v75 = [(HMIVideoAnalyzerEventMotion *)v64 initWithConfidence:v63 boundingBox:v66 motionScore:v68, v70, v72, v74];
        [v95 addObject:v75];

        v102.origin.x = v23;
        v102.origin.y = v24;
        v102.size.width = v25;
        v102.size.height = v26;
        if (CGRectIsNull(v102))
        {
          v26 = 1.0;
          v25 = 1.0;
          v24 = 0.0;
          v23 = 0.0;
        }

        v13 = v62;
      }
    }
  }

LABEL_36:
  analysisTime = self->_analysisTime;
  v77 = MEMORY[0x277CCABB0];
  date2 = [*(v13 + 2728) date];
  [date2 timeIntervalSinceDate:date];
  v79 = [v77 numberWithDouble:?];
  [(MovingAverage *)analysisTime addNumber:v79];

  v80 = objc_autoreleasePoolPush();
  configuration5 = [(HMIVideoAnalyzerProcessingNode *)self configuration];
  LODWORD(date2) = [configuration5 redactFrames];

  if (date2)
  {
    redactedCopy = [(HMIVideoFrame *)v96 redactedCopy];

    v96 = redactedCopy;
  }

  memset(&buf, 0, sizeof(buf));
  if (background)
  {
    CMSampleBufferGetPresentationTimeStamp(&buf, background);
  }

  else
  {
    buf = **&MEMORY[0x277CC08F0];
  }

  v83 = [HMIVideoFrameAnalyzerResult alloc];
  v97 = buf;
  v84 = [(HMIVideoFrameAnalyzerResult *)v83 initWithFrame:v96 events:v95 backgroundEvents:v94 backgroundTimeStamp:&v97 regionOfInterest:detectionsCopy motionDetections:v23, v24, v25, v26];
  delegate = [(HMIVideoFrameAnalyzer *)self delegate];
  [delegate frameAnalyzer:self didAnalyzeFrame:v84];

  objc_autoreleasePoolPop(v80);
  frameSampler = [(HMIVideoFrameAnalyzer *)self frameSampler];
  [frameSampler handleSampleBuffer:buffer];

  return 1;
}

id __79__HMIVideoFrameAnalyzer_handleSampleBuffer_background_motionDetections_tracks___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    [v4 presentationTimeStamp];
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  v5 = [v3 createPackageEventAtTimeStamp:v7];

  return v5;
}

- (void)flush
{
  cameraVideoFrameAnalyzer = [(HMIVideoFrameAnalyzer *)self cameraVideoFrameAnalyzer];
  configuration = [(HMIVideoAnalyzerProcessingNode *)self configuration];
  homeUUID = [configuration homeUUID];
  dynamicConfiguration = [(HMIVideoAnalyzerProcessingNode *)self dynamicConfiguration];
  v8 = [cameraVideoFrameAnalyzer flushAndGetAnalysisStateUpdateForHome:homeUUID enableFaceClassification:{objc_msgSend(dynamicConfiguration, "recognizeFaces")}];

  if (v8)
  {
    delegate = [(HMIVideoFrameAnalyzer *)self delegate];
    [delegate frameAnalyzer:self didProduceAnalysisStateUpdate:v8];
  }
}

- (HMIVideoFrameAnalyzerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
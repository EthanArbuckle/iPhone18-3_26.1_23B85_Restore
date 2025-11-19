@interface HMIVideoFrameAnalyzer
- (BOOL)handleSampleBuffer:(opaqueCMSampleBuffer *)a3 background:(opaqueCMSampleBuffer *)a4 motionDetections:(id)a5 tracks:(id)a6;
- (HMIVideoFrameAnalyzer)initWithConfiguration:(id)a3 workQueue:(id)a4;
- (HMIVideoFrameAnalyzerDelegate)delegate;
- (void)flush;
@end

@implementation HMIVideoFrameAnalyzer

- (HMIVideoFrameAnalyzer)initWithConfiguration:(id)a3 workQueue:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v29.receiver = self;
  v29.super_class = HMIVideoFrameAnalyzer;
  v8 = [(HMIVideoAnalyzerProcessingNode *)&v29 initWithConfiguration:v6 workQueue:v7];
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
  v14 = [(HMICameraVideoFrameAnalyzerSignificantActivity *)v11 initWithMediumConfidenceThresholds:v12 highConfidenceThresholds:v13 analyzerConfiguration:v6 error:&v28];
  v15 = v28;
  cameraVideoFrameAnalyzer = v8->_cameraVideoFrameAnalyzer;
  v8->_cameraVideoFrameAnalyzer = v14;

  v17 = [(HMIVideoFrameAnalyzer *)v8 cameraVideoFrameAnalyzer];

  if (v17)
  {
    v18 = [HMIVideoFrameIntervalSampler alloc];
    CMTimeMake(&v30, 10, 1);
    v19 = [(HMIVideoFrameIntervalSampler *)v18 initWithInterval:&v30];
    frameSampler = v8->_frameSampler;
    v8->_frameSampler = v19;

    v21 = [(HMIVideoFrameAnalyzer *)v8 frameSampler];
    [v21 setDelegate:v8];

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

- (BOOL)handleSampleBuffer:(opaqueCMSampleBuffer *)a3 background:(opaqueCMSampleBuffer *)a4 motionDetections:(id)a5 tracks:(id)a6
{
  v101 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a6;
  v12 = [(HMIVideoAnalyzerProcessingNode *)self dynamicConfiguration];

  if (!v12)
  {
    [HMIVideoFrameAnalyzer handleSampleBuffer:background:motionDetections:tracks:];
  }

  v13 = 0x277CBE000uLL;
  v14 = [MEMORY[0x277CBEAA8] date];
  v95 = [MEMORY[0x277CBEB58] set];
  v94 = [MEMORY[0x277CBEB58] set];
  v96 = [[HMIVideoFrame alloc] initWithSampleBuffer:a3];
  v15 = [(HMIVideoAnalyzerProcessingNode *)self dynamicConfiguration];
  v16 = [v15 eventTriggers];

  v93 = v11;
  if ((v16 & 0x1E) == 0)
  {
    v23 = *MEMORY[0x277CBF398];
    v24 = *(MEMORY[0x277CBF398] + 8);
    v25 = *(MEMORY[0x277CBF398] + 16);
    v26 = *(MEMORY[0x277CBF398] + 24);
    if ((v16 & 1) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_30;
  }

  v92 = v14;
  v98[0] = MEMORY[0x277D85DD0];
  v98[1] = 3221225472;
  v98[2] = __79__HMIVideoFrameAnalyzer_handleSampleBuffer_background_motionDetections_tracks___block_invoke;
  v98[3] = &unk_278753558;
  v17 = v96;
  v99 = v17;
  v18 = [v11 na_map:v98];
  v19 = [(HMIVideoAnalyzerProcessingNode *)self configuration];
  v20 = [v19 packageClassifierMode];

  v91 = a4;
  if (v20)
  {
    v21 = a3;
    v22 = v18;
  }

  else
  {
    v21 = a3;
    [v95 unionSet:v18];
    v22 = [MEMORY[0x277CBEB98] set];
  }

  v27 = [(HMIVideoFrameAnalyzer *)self cameraVideoFrameAnalyzer];
  [(HMIVideoFrame *)v17 size];
  v90 = v10;
  [v27 regionOfInterestForMotionDetections:v10 foregroundEvents:v22 frameSize:?];
  v23 = v28;
  v24 = v29;
  v25 = v30;
  v26 = v31;

  v32 = [(HMIVideoFrameAnalyzer *)self cameraVideoFrameAnalyzer];
  v33 = [v32 analyzeFrame:v17 regionOfInterest:{v23, v24, v25, v26}];

  v34 = [(HMIVideoFrameAnalyzer *)self cameraVideoFrameAnalyzer];
  v35 = [(HMIVideoAnalyzerProcessingNode *)self dynamicConfiguration];
  v36 = [v35 recognizeFaces];
  v37 = +[HMIPreference sharedInstance];
  v38 = [v34 getAnalyzerEvents:v33 eventTriggers:v16 & 0xFFFFFFFFFFFFFFEFLL enableFaceClassification:v36 enableTorsoRecognition:{objc_msgSend(v37, "shouldEnableTorsoRecognition")}];

  v39 = [(HMIVideoAnalyzerProcessingNode *)self dynamicConfiguration];
  if ([v39 recognizeFaces])
  {
    v40 = [(HMIVideoAnalyzerProcessingNode *)self configuration];
    v41 = [v40 homeUUID];

    if (v41)
    {
      v42 = [(HMIVideoFrameAnalyzer *)self cameraVideoFrameAnalyzer];
      v43 = [(HMIVideoAnalyzerProcessingNode *)self configuration];
      v44 = [v43 homeUUID];
      v45 = [v42 recognizeEvents:v38 frame:v17 regionOfInterest:v44 homeUUID:{v23, v24, v25, v26}];

      v38 = v45;
LABEL_18:
      v14 = v92;
      goto LABEL_19;
    }
  }

  else
  {
  }

  v46 = [(HMIVideoAnalyzerProcessingNode *)self dynamicConfiguration];
  if (([v46 recognizeFaces] & 1) == 0)
  {

    goto LABEL_18;
  }

  v47 = [(HMIVideoAnalyzerProcessingNode *)self configuration];
  v48 = [v47 homeUUID];

  v14 = v92;
  if (v48)
  {
LABEL_19:
    a4 = v91;
    goto LABEL_20;
  }

  v49 = objc_autoreleasePoolPush();
  v50 = self;
  v51 = HMFGetOSLogHandle();
  a4 = v91;
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
  v14 = v92;
LABEL_20:
  a3 = v21;
  v13 = 0x277CBE000;
  if ((v16 & 0x10) != 0)
  {
    v53 = [v22 count];
    if (a4)
    {
      if (v53)
      {
        v54 = [[HMIVideoFrame alloc] initWithSampleBuffer:a4];
        v55 = [(HMIVideoFrameAnalyzer *)self cameraVideoFrameAnalyzer];
        v89 = a3;
        if (v54)
        {
          [(HMIVideoFrame *)v54 presentationTimeStamp];
        }

        else
        {
          memset(&buf, 0, sizeof(buf));
        }

        v56 = [v55 getPackageEvents:v33 foregroundEvents:v22 newBackgroundEvents:v94 backgroundTimeStamp:&buf];

        if ([v56 count])
        {
          v57 = [(HMIVideoFrameAnalyzer *)self cameraVideoFrameAnalyzer];
          v58 = [v57 analyzeBackgroundFrame:v54 packageEvents:v56 newBackgroundEvents:v94 regionOfInterest:{v23, v24, v25, v26}];

          [v95 unionSet:v58];
          v56 = v58;
          a4 = v91;
        }

        v13 = 0x277CBE000uLL;

        a3 = v89;
        v14 = v92;
      }
    }
  }

  [v95 unionSet:v38];

  v10 = v90;
  if (v16)
  {
LABEL_30:
    v59 = [HMIMotionDetection firstMotionDetectionInArray:v10 withMode:1];
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
  v78 = [*(v13 + 2728) date];
  [v78 timeIntervalSinceDate:v14];
  v79 = [v77 numberWithDouble:?];
  [(MovingAverage *)analysisTime addNumber:v79];

  v80 = objc_autoreleasePoolPush();
  v81 = [(HMIVideoAnalyzerProcessingNode *)self configuration];
  LODWORD(v78) = [v81 redactFrames];

  if (v78)
  {
    v82 = [(HMIVideoFrame *)v96 redactedCopy];

    v96 = v82;
  }

  memset(&buf, 0, sizeof(buf));
  if (a4)
  {
    CMSampleBufferGetPresentationTimeStamp(&buf, a4);
  }

  else
  {
    buf = **&MEMORY[0x277CC08F0];
  }

  v83 = [HMIVideoFrameAnalyzerResult alloc];
  v97 = buf;
  v84 = [(HMIVideoFrameAnalyzerResult *)v83 initWithFrame:v96 events:v95 backgroundEvents:v94 backgroundTimeStamp:&v97 regionOfInterest:v10 motionDetections:v23, v24, v25, v26];
  v85 = [(HMIVideoFrameAnalyzer *)self delegate];
  [v85 frameAnalyzer:self didAnalyzeFrame:v84];

  objc_autoreleasePoolPop(v80);
  v86 = [(HMIVideoFrameAnalyzer *)self frameSampler];
  [v86 handleSampleBuffer:a3];

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
  v3 = [(HMIVideoFrameAnalyzer *)self cameraVideoFrameAnalyzer];
  v4 = [(HMIVideoAnalyzerProcessingNode *)self configuration];
  v5 = [v4 homeUUID];
  v6 = [(HMIVideoAnalyzerProcessingNode *)self dynamicConfiguration];
  v8 = [v3 flushAndGetAnalysisStateUpdateForHome:v5 enableFaceClassification:{objc_msgSend(v6, "recognizeFaces")}];

  if (v8)
  {
    v7 = [(HMIVideoFrameAnalyzer *)self delegate];
    [v7 frameAnalyzer:self didProduceAnalysisStateUpdate:v8];
  }
}

- (HMIVideoFrameAnalyzerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
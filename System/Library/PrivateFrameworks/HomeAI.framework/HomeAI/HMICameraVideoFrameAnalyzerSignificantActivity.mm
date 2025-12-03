@interface HMICameraVideoFrameAnalyzerSignificantActivity
+ (NSDictionary)classHierarchyMap;
+ (id)desLabelIndexForEventClass:(Class)class;
+ (id)labelIndexForEventClass:(Class)class;
- (CGRect)regionOfInterestForMotionDetections:(id)detections foregroundEvents:(id)events frameSize:(CGSize)size;
- (CGSize)inputDimensions;
- (HMICameraVideoFrameAnalyzerSignificantActivity)initWithMediumConfidenceThresholds:(id)thresholds highConfidenceThresholds:(id)confidenceThresholds analyzerConfiguration:(id)configuration error:(id *)error;
- (id)_analyzerEventsFromObjectDetections:(id)detections;
- (id)_eventsWithClassificationsFromEvents:(id)events videoFrame:(id)frame regionOfInterest:(CGRect)interest homeUUID:(id)d;
- (id)_eventsWithSessionEntitiesFromEvents:(id)events regionOfInterest:(CGRect)interest timeStamp:(id *)stamp homeUUID:(id)d;
- (id)_filterPackageEvents:(id)events backgroundEvents:(id)backgroundEvents;
- (id)_predictEventsFromCropPixelBuffer:(__CVBuffer *)buffer cropRect:(CGRect)rect imageSize:(CGSize)size error:(id *)error;
- (id)_simulatedEventForEventClass:(Class)class;
- (id)_targetEventsSetFromEventTriggers:(int64_t)triggers enableFaceClassification:(BOOL)classification enableTorsoRecognition:(BOOL)recognition;
- (id)analyzeBackgroundFrame:(id)frame packageEvents:(id)events newBackgroundEvents:(id)backgroundEvents regionOfInterest:(CGRect)interest;
- (id)analyzeFrame:(id)frame regionOfInterest:(CGRect)interest;
- (id)analyzePixelBuffer:(__CVBuffer *)buffer regionOfInterest:(CGRect)interest error:(id *)error;
- (id)eventsWithFaceEventsFromTorsoEventsFromEvents:(id)events homeUUID:(id)d;
- (id)flushAndGetAnalysisStateUpdateForHome:(id)home enableFaceClassification:(BOOL)classification;
- (id)getAnalyzerEvents:(id)events eventTriggers:(int64_t)triggers enableFaceClassification:(BOOL)classification enableTorsoRecognition:(BOOL)recognition;
- (id)getPackageEvents:(id)events foregroundEvents:(id)foregroundEvents newBackgroundEvents:(id)backgroundEvents backgroundTimeStamp:(id *)stamp;
- (id)recognizeEvents:(id)events frame:(id)frame regionOfInterest:(CGRect)interest homeUUID:(id)d;
@end

@implementation HMICameraVideoFrameAnalyzerSignificantActivity

- (HMICameraVideoFrameAnalyzerSignificantActivity)initWithMediumConfidenceThresholds:(id)thresholds highConfidenceThresholds:(id)confidenceThresholds analyzerConfiguration:(id)configuration error:(id *)error
{
  thresholdsCopy = thresholds;
  confidenceThresholdsCopy = confidenceThresholds;
  configurationCopy = configuration;
  v45.receiver = self;
  v45.super_class = HMICameraVideoFrameAnalyzerSignificantActivity;
  v14 = [(HMICameraVideoFrameAnalyzerSignificantActivity *)&v45 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_9;
  }

  objc_storeStrong(&v14->_analyzerConfiguration, configuration);
  v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:7];
  for (i = 0; i != 7; ++i)
  {
    [v16 setObject:&unk_284075378 atIndexedSubscript:i];
  }

  v18 = +[HMICameraVideoFrameAnalyzerSignificantActivity classHierarchyMap];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __138__HMICameraVideoFrameAnalyzerSignificantActivity_initWithMediumConfidenceThresholds_highConfidenceThresholds_analyzerConfiguration_error___block_invoke;
  v42[3] = &unk_278755898;
  v43 = thresholdsCopy;
  v19 = v16;
  v44 = v19;
  [v18 enumerateKeysAndObjectsUsingBlock:v42];

  objc_storeStrong(&v15->_mediumConfidenceThresholds, thresholds);
  objc_storeStrong(&v15->_highConfidenceThresholds, confidenceThresholds);
  v20 = [HMISignificantActivityFcosDetector alloc];
  v21 = +[HMISignificantActivityFcosDetector defaultNMSConfiguration];
  v41 = 0;
  v22 = [(HMISignificantActivityFcosDetector *)v20 initWithConfidenceThresholds:v19 nmsConfiguration:v21 error:&v41];
  v23 = v41;
  significantActivityFcosDetector = v15->_significantActivityFcosDetector;
  v15->_significantActivityFcosDetector = v22;

  v25 = MEMORY[0x277CC08F0];
  *&v15->_backgroundTimeStamp.value = *MEMORY[0x277CC08F0];
  v15->_backgroundTimeStamp.epoch = *(v25 + 16);
  array = [MEMORY[0x277CBEB18] array];
  backgroundEvents = v15->_backgroundEvents;
  v15->_backgroundEvents = array;

  if (v15->_significantActivityFcosDetector)
  {
    v28 = +[HMIPreference sharedInstance];
    shouldEnableTorsoRecognition = [v28 shouldEnableTorsoRecognition];

    if (!shouldEnableTorsoRecognition || (v30 = objc_alloc_init(HMITorsoClassifier), torsoClassifier = v15->_torsoClassifier, v15->_torsoClassifier = v30, torsoClassifier, v15->_torsoClassifier))
    {
      v40 = v23;
      v32 = [[HMIFaceClassifierVIP alloc] initWithError:&v40];
      v33 = v40;

      faceClassifier = v15->_faceClassifier;
      v15->_faceClassifier = v32;

      if (v15->_faceClassifier)
      {
        v35 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"HMICameraVideoFrameAnalyzerSignificantActivity"];
        transaction = v15->_transaction;
        v15->_transaction = v35;

LABEL_9:
        v37 = v15;
        goto LABEL_14;
      }

      v23 = v33;
    }
  }

  if (error)
  {
    v38 = v23;
    *error = v23;
  }

  HMIErrorLog(v15, v23);

  v37 = 0;
LABEL_14:

  return v37;
}

void __138__HMICameraVideoFrameAnalyzerSignificantActivity_initWithMediumConfidenceThresholds_highConfidenceThresholds_analyzerConfiguration_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = [*(a1 + 32) objectForKeyedSubscript:a3];
  if (v5)
  {
    [*(a1 + 40) setObject:v5 atIndexedSubscript:{objc_msgSend(v6, "integerValue")}];
  }
}

- (CGSize)inputDimensions
{
  significantActivityFcosDetector = [(HMICameraVideoFrameAnalyzerSignificantActivity *)self significantActivityFcosDetector];
  [significantActivityFcosDetector inputDimensions];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGRect)regionOfInterestForMotionDetections:(id)detections foregroundEvents:(id)events frameSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  detectionsCopy = detections;
  eventsCopy = events;
  v11 = [HMIMotionDetection firstMotionDetectionInArray:detectionsCopy withMode:2];
  v40 = 0;
  v41 = &v40;
  v42 = 0x4010000000;
  v43 = &unk_22D2C2491;
  v44 = 0u;
  v45 = 0u;
  [v11 motionScore];
  if (v12 <= 0.0)
  {
    v17 = *(MEMORY[0x277CBF398] + 16);
    v44 = *MEMORY[0x277CBF398];
    v45 = v17;
  }

  else
  {
    [v11 boundingBox];
    *&v44 = v13;
    *(&v44 + 1) = v14;
    *&v45 = v15;
    *(&v45 + 1) = v16;
  }

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __113__HMICameraVideoFrameAnalyzerSignificantActivity_regionOfInterestForMotionDetections_foregroundEvents_frameSize___block_invoke;
  v39[3] = &unk_278752EF8;
  v39[4] = &v40;
  [eventsCopy na_each:v39];
  if (CGRectIsNull(v41[1]))
  {
    v20 = v41[1].size.width;
    v19 = v41[1].size.height;
    x = v41[1].origin.x;
    y = v41[1].origin.y;
  }

  else
  {
    LODWORD(v18) = 1.0;
    [HMIVisionUtilities maintainAspectRatio:v41[1].origin.x originalSize:v41[1].origin.y ratioThreshold:v41[1].size.width, v41[1].size.height, width, height, v18];
    v23 = v41;
    v41[1].origin.x = v24;
    v23[1].origin.y = v25;
    v23[1].size.width = v26;
    v23[1].size.height = v27;
    [(HMICameraVideoFrameAnalyzerSignificantActivity *)self inputDimensions];
    [HMIVisionUtilities imposeMinSizeFor:v23[1].origin.x withOriginalSize:v23[1].origin.y minCrop:v23[1].size.width, v23[1].size.height, width, height, v28, v29];
    x = v30;
    y = v31;
    v20 = v32;
    v19 = v33;
    p_x = &v41->origin.x;
    v41[1].origin.x = v30;
    p_x[5] = v31;
    p_x[6] = v32;
    p_x[7] = v33;
  }

  _Block_object_dispose(&v40, 8);

  v35 = x;
  v36 = y;
  v37 = v20;
  v38 = v19;
  result.size.height = v38;
  result.size.width = v37;
  result.origin.y = v36;
  result.origin.x = v35;
  return result;
}

void __113__HMICameraVideoFrameAnalyzerSignificantActivity_regionOfInterestForMotionDetections_foregroundEvents_frameSize___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 boundingBox];
  v20 = v5;
  v21 = v4;
  v7 = v6;
  v9 = v8;
  [v3 boundingBox];
  v10 = CGRectGetWidth(v22) * -0.4;
  [v3 boundingBox];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v23.origin.x = v12;
  v23.origin.y = v14;
  v23.size.width = v16;
  v23.size.height = v18;
  v19 = CGRectGetHeight(v23) * -0.4;
  v24.origin.y = v20;
  v24.origin.x = v21;
  v24.size.width = v7;
  v24.size.height = v9;
  v25 = CGRectInset(v24, v10, v19);
  *(*(*(a1 + 32) + 8) + 32) = CGRectUnion(*(*(*(a1 + 32) + 8) + 32), v25);
}

- (id)analyzeFrame:(id)frame regionOfInterest:(CGRect)interest
{
  v9 = 0;
  v4 = -[HMICameraVideoFrameAnalyzerSignificantActivity analyzePixelBuffer:regionOfInterest:error:](self, "analyzePixelBuffer:regionOfInterest:error:", [frame pixelBuffer], &v9, interest.origin.x, interest.origin.y, interest.size.width, interest.size.height);
  v5 = v4;
  if (v9)
  {
    v6 = [MEMORY[0x277CBEB98] set];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v7;
}

- (id)getAnalyzerEvents:(id)events eventTriggers:(int64_t)triggers enableFaceClassification:(BOOL)classification enableTorsoRecognition:(BOOL)recognition
{
  recognitionCopy = recognition;
  classificationCopy = classification;
  v45[4] = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v11 = [eventsCopy na_filter:&__block_literal_global_36];
  v12 = +[HMIPreference sharedInstance];
  v13 = &off_22D297000;
  if ([v12 hasPreferenceForKey:@"personDetected"])
  {
    goto LABEL_6;
  }

  v14 = +[HMIPreference sharedInstance];
  if ([v14 hasPreferenceForKey:@"petDetected"])
  {
LABEL_5:

LABEL_6:
LABEL_7:
    v16 = MEMORY[0x277CBEB98];
    v45[0] = objc_opt_class();
    v45[1] = objc_opt_class();
    v45[2] = objc_opt_class();
    v45[3] = objc_opt_class();
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:4];
    v18 = [v16 setWithArray:v17];

    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = *(v13 + 437);
    v40[2] = __130__HMICameraVideoFrameAnalyzerSignificantActivity_getAnalyzerEvents_eventTriggers_enableFaceClassification_enableTorsoRecognition___block_invoke_2;
    v40[3] = &unk_278752F20;
    v40[4] = self;
    v19 = [v18 na_map:v40];

    v11 = v19;
    goto LABEL_8;
  }

  v15 = +[HMIPreference sharedInstance];
  if ([v15 hasPreferenceForKey:@"vehicleDetected"])
  {

    v13 = &off_22D297000;
    goto LABEL_5;
  }

  +[HMIPreference sharedInstance];
  v35 = v37 = eventsCopy;
  v36 = [v35 hasPreferenceForKey:@"packageDetected"];

  eventsCopy = v37;
  v13 = &off_22D297000;
  if (v36)
  {
    goto LABEL_7;
  }

LABEL_8:
  v20 = [(HMICameraVideoFrameAnalyzerSignificantActivity *)self _targetEventsSetFromEventTriggers:triggers enableFaceClassification:classificationCopy enableTorsoRecognition:recognitionCopy];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = *(v13 + 437);
  v38[2] = __130__HMICameraVideoFrameAnalyzerSignificantActivity_getAnalyzerEvents_eventTriggers_enableFaceClassification_enableTorsoRecognition___block_invoke_3;
  v38[3] = &unk_278755120;
  v21 = v20;
  v39 = v21;
  v22 = [v11 na_filter:v38];

  v23 = [HMIFaceUtilities mergedPersonEventsFromEvents:v22];

  v24 = +[HMIPreference sharedInstance];
  v25 = [v24 hasPreferenceForKey:@"syntheticEvents"];

  if (v25)
  {
    v26 = +[HMIPreference sharedInstance];
    v27 = [v26 stringPreferenceForKey:@"syntheticEvents" defaultValue:&stru_284057FB8];

    v28 = [HMIVideoAnalyzerEvent eventsWithContentsOfFile:v27];
    if (v28)
    {
      v29 = objc_autoreleasePoolPush();
      selfCopy = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543618;
        v42 = v32;
        v43 = 2112;
        v44 = v27;
        _os_log_impl(&dword_22D12F000, v31, OS_LOG_TYPE_DEBUG, "%{public}@Reading and injecting synthesized events from path %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v29);
      v33 = v28;

      v23 = v33;
    }
  }

  return v23;
}

uint64_t __130__HMICameraVideoFrameAnalyzerSignificantActivity_getAnalyzerEvents_eventTriggers_enableFaceClassification_enableTorsoRecognition___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();

  return [v1 containsObject:v2];
}

- (id)getPackageEvents:(id)events foregroundEvents:(id)foregroundEvents newBackgroundEvents:(id)backgroundEvents backgroundTimeStamp:(id *)stamp
{
  foregroundEventsCopy = foregroundEvents;
  backgroundEventsCopy = backgroundEvents;
  eventsCopy = events;
  v13 = [eventsCopy na_filter:&__block_literal_global_26_0];
  v14 = [eventsCopy na_filter:&__block_literal_global_28];

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __124__HMICameraVideoFrameAnalyzerSignificantActivity_getPackageEvents_foregroundEvents_newBackgroundEvents_backgroundTimeStamp___block_invoke_3;
  v29[3] = &unk_2787558C0;
  v30 = v14;
  v31 = backgroundEventsCopy;
  v15 = backgroundEventsCopy;
  v16 = v14;
  v17 = [v13 na_filter:v29];

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __124__HMICameraVideoFrameAnalyzerSignificantActivity_getPackageEvents_foregroundEvents_newBackgroundEvents_backgroundTimeStamp___block_invoke_6;
  v27[3] = &unk_278755120;
  v28 = foregroundEventsCopy;
  v18 = foregroundEventsCopy;
  v19 = [v17 na_filter:v27];

  [(HMICameraVideoFrameAnalyzerSignificantActivity *)self backgroundTimeStamp];
  v25 = *stamp;
  if (CMTimeCompare(&time1, &v25))
  {
    time1 = *stamp;
    [(HMICameraVideoFrameAnalyzerSignificantActivity *)self setBackgroundTimeStamp:&time1];
    backgroundEvents = [(HMICameraVideoFrameAnalyzerSignificantActivity *)self backgroundEvents];
    [backgroundEvents removeAllObjects];
  }

  backgroundEvents2 = [(HMICameraVideoFrameAnalyzerSignificantActivity *)self backgroundEvents];
  v22 = [backgroundEvents2 copy];
  v23 = [(HMICameraVideoFrameAnalyzerSignificantActivity *)self _filterPackageEvents:v19 backgroundEvents:v22];

  return v23;
}

BOOL __124__HMICameraVideoFrameAnalyzerSignificantActivity_getPackageEvents_foregroundEvents_newBackgroundEvents_backgroundTimeStamp___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = v3 == objc_opt_class() && [v2 confidenceLevel] == 2;

  return v4;
}

BOOL __124__HMICameraVideoFrameAnalyzerSignificantActivity_getPackageEvents_foregroundEvents_newBackgroundEvents_backgroundTimeStamp___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  if (v4 == v5)
  {
    v2 = [v3 confidence];
    [v2 value];
    if (v6 > 0.41)
    {
      v7 = 1;
LABEL_8:

      goto LABEL_9;
    }
  }

  v8 = objc_opt_class();
  if (v8 == objc_opt_class())
  {
    v9 = [v3 confidence];
    [v9 value];
    v7 = v10 > 0.44;
  }

  else
  {
    v7 = 0;
  }

  if (v4 == v5)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v7;
}

uint64_t __124__HMICameraVideoFrameAnalyzerSignificantActivity_getPackageEvents_foregroundEvents_newBackgroundEvents_backgroundTimeStamp___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 confidence];
  [v4 value];
  if (v5 <= 0.24)
  {
  }

  else
  {
    v6 = *(a1 + 32);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __124__HMICameraVideoFrameAnalyzerSignificantActivity_getPackageEvents_foregroundEvents_newBackgroundEvents_backgroundTimeStamp___block_invoke_4;
    v13[3] = &unk_278755120;
    v7 = v3;
    v14 = v7;
    LODWORD(v6) = [v6 na_any:v13];

    if (v6)
    {
      [*(a1 + 40) addObject:v7];
    }
  }

  v8 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __124__HMICameraVideoFrameAnalyzerSignificantActivity_getPackageEvents_foregroundEvents_newBackgroundEvents_backgroundTimeStamp___block_invoke_5;
  v11[3] = &unk_278755120;
  v12 = v3;
  v9 = v3;
  LODWORD(v8) = [v8 na_any:v11];

  return v8 ^ 1;
}

BOOL __124__HMICameraVideoFrameAnalyzerSignificantActivity_getPackageEvents_foregroundEvents_newBackgroundEvents_backgroundTimeStamp___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  if (v4 == objc_opt_class())
  {
    [*(a1 + 32) boundingBox];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [v3 boundingBox];
    v20.origin.x = v14;
    v20.origin.y = v15;
    v20.size.width = v16;
    v20.size.height = v17;
    v19.origin.x = v7;
    v19.origin.y = v9;
    v19.size.width = v11;
    v19.size.height = v13;
    v5 = CGRectIntersectsRect(v19, v20);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL __124__HMICameraVideoFrameAnalyzerSignificantActivity_getPackageEvents_foregroundEvents_newBackgroundEvents_backgroundTimeStamp___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  if (v4 == objc_opt_class() || (v5 = objc_opt_class(), v5 == objc_opt_class()))
  {
    [*(a1 + 32) boundingBox];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [v3 boundingBox];
    v21.origin.x = v15;
    v21.origin.y = v16;
    v21.size.width = v17;
    v21.size.height = v18;
    v20.origin.x = v8;
    v20.origin.y = v10;
    v20.size.width = v12;
    v20.size.height = v14;
    v6 = CGRectIntersectsRect(v20, v21);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __124__HMICameraVideoFrameAnalyzerSignificantActivity_getPackageEvents_foregroundEvents_newBackgroundEvents_backgroundTimeStamp___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __124__HMICameraVideoFrameAnalyzerSignificantActivity_getPackageEvents_foregroundEvents_newBackgroundEvents_backgroundTimeStamp___block_invoke_7;
  v8[3] = &unk_278755120;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_any:v8];

  return v6;
}

BOOL __124__HMICameraVideoFrameAnalyzerSignificantActivity_getPackageEvents_foregroundEvents_newBackgroundEvents_backgroundTimeStamp___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 boundingBox];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 boundingBox];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  HMICGRectIntersectionOverUnion(v5, v7, v9, v11, v13, v15, v17, v19);
  return v20 > 0.2;
}

- (id)analyzeBackgroundFrame:(id)frame packageEvents:(id)events newBackgroundEvents:(id)backgroundEvents regionOfInterest:(CGRect)interest
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  backgroundEventsCopy = backgroundEvents;
  eventsCopy = events;
  v15 = -[HMICameraVideoFrameAnalyzerSignificantActivity analyzePixelBuffer:regionOfInterest:error:](self, "analyzePixelBuffer:regionOfInterest:error:", [frame pixelBuffer], 0, x, y, width, height);
  v16 = [v15 na_filter:&__block_literal_global_30_0];

  [backgroundEventsCopy unionSet:v16];
  v17 = [(HMICameraVideoFrameAnalyzerSignificantActivity *)self _filterPackageEvents:eventsCopy backgroundEvents:backgroundEventsCopy];

  backgroundEvents = [(HMICameraVideoFrameAnalyzerSignificantActivity *)self backgroundEvents];
  allObjects = [backgroundEventsCopy allObjects];
  [backgroundEvents addObjectsFromArray:allObjects];

  backgroundEvents2 = [(HMICameraVideoFrameAnalyzerSignificantActivity *)self backgroundEvents];
  v21 = [backgroundEvents2 count];

  if (v21 >= 0x65)
  {
    do
    {
      backgroundEvents3 = [(HMICameraVideoFrameAnalyzerSignificantActivity *)self backgroundEvents];
      [backgroundEvents3 hmf_removeFirstObject];

      backgroundEvents4 = [(HMICameraVideoFrameAnalyzerSignificantActivity *)self backgroundEvents];
      v24 = [backgroundEvents4 count];
    }

    while (v24 > 0x64);
  }

  return v17;
}

BOOL __124__HMICameraVideoFrameAnalyzerSignificantActivity_analyzeBackgroundFrame_packageEvents_newBackgroundEvents_regionOfInterest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  if (v4 == v5)
  {
    v6 = [v3 confidence];
    [v6 value];
    if (v7 > 0.41)
    {
      v8 = 1;
LABEL_20:

      goto LABEL_21;
    }

    v21 = v6;
  }

  v9 = objc_opt_class();
  v10 = objc_opt_class();
  if (v9 == v10)
  {
    v11 = [v3 confidence];
    [v11 value];
    if (v12 > 0.44)
    {

      v8 = 1;
      goto LABEL_19;
    }

    v20 = v11;
  }

  v13 = objc_opt_class();
  v14 = objc_opt_class();
  if (v13 == v14 && ([v3 confidence], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "value"), v15 > 0.42))
  {

    v8 = 1;
  }

  else
  {
    v16 = objc_opt_class();
    if (v16 == objc_opt_class())
    {
      v17 = [v3 confidence];
      [v17 value];
      v8 = v18 > 0.24;
    }

    else
    {
      v8 = 0;
    }

    if (v13 == v14)
    {
    }
  }

  if (v9 == v10)
  {
  }

LABEL_19:
  v6 = v21;
  if (v4 == v5)
  {
    goto LABEL_20;
  }

LABEL_21:

  return v8;
}

- (id)recognizeEvents:(id)events frame:(id)frame regionOfInterest:(CGRect)interest homeUUID:(id)d
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  frameCopy = frame;
  dCopy = d;
  eventsCopy = events;
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  IsNull = CGRectIsNull(v27);
  v17 = 0.0;
  if (IsNull)
  {
    v18 = 1.0;
  }

  else
  {
    v18 = height;
  }

  if (IsNull)
  {
    v19 = 1.0;
  }

  else
  {
    v19 = width;
  }

  if (IsNull)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = y;
  }

  if (!IsNull)
  {
    v17 = x;
  }

  v21 = [(HMICameraVideoFrameAnalyzerSignificantActivity *)self _eventsWithClassificationsFromEvents:eventsCopy videoFrame:frameCopy regionOfInterest:dCopy homeUUID:v17, v20, v19, v18];

  if (frameCopy)
  {
    [frameCopy presentationTimeStamp];
  }

  else
  {
    memset(v25, 0, sizeof(v25));
  }

  height = [(HMICameraVideoFrameAnalyzerSignificantActivity *)self _eventsWithSessionEntitiesFromEvents:v21 regionOfInterest:v25 timeStamp:dCopy homeUUID:x, y, width, height];

  v23 = [(HMICameraVideoFrameAnalyzerSignificantActivity *)self eventsWithFaceEventsFromTorsoEventsFromEvents:height homeUUID:dCopy];

  return v23;
}

- (id)analyzePixelBuffer:(__CVBuffer *)buffer regionOfInterest:(CGRect)interest error:(id *)error
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  if (CGRectIsNull(interest))
  {
    v12 = [MEMORY[0x277CBEB98] set];
  }

  else
  {
    Size = HMICVPixelBufferGetSize(buffer);
    HMICGRectPixelFromNormalized(x, y, width, height, Size, v14);
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    [(HMICameraVideoFrameAnalyzerSignificantActivity *)self inputDimensions];
    v25 = [HMIVisionUtilities transferPixelBuffer:buffer crop:1111970369 size:1 pixelFormat:error options:v16 error:v18, v20, v22, v23, v24];
    v26 = HMICVPixelBufferGetSize(buffer);
    v12 = [(HMICameraVideoFrameAnalyzerSignificantActivity *)self _predictEventsFromCropPixelBuffer:v25 cropRect:error imageSize:v16 error:v18, v20, v22, v26, v27];
    CVPixelBufferRelease(v25);
  }

  return v12;
}

- (id)_predictEventsFromCropPixelBuffer:(__CVBuffer *)buffer cropRect:(CGRect)rect imageSize:(CGSize)size error:(id *)error
{
  height = size.height;
  width = size.width;
  v9 = rect.size.height;
  v10 = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  array = [MEMORY[0x277CBEB18] array];
  significantActivityFcosDetector = [(HMICameraVideoFrameAnalyzerSignificantActivity *)self significantActivityFcosDetector];
  LOBYTE(error) = [significantActivityFcosDetector predict:buffer detectedObjects:array error:error];

  if (error)
  {
    height = [HMIObjectDetectionUtils convertObjectDetections:array cropRect:x originalImageSize:y, v10, v9, width, height];
    v18 = [(HMICameraVideoFrameAnalyzerSignificantActivity *)self _analyzerEventsFromObjectDetections:height];
  }

  else
  {
    v18 = [MEMORY[0x277CBEB98] set];
  }

  return v18;
}

- (id)flushAndGetAnalysisStateUpdateForHome:(id)home enableFaceClassification:(BOOL)classification
{
  classificationCopy = classification;
  v23 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v7 = 0;
  if (homeCopy && classificationCopy)
  {
    v8 = +[HMIPreference sharedInstance];
    shouldEnableTorsoRecognition = [v8 shouldEnableTorsoRecognition];

    if (!shouldEnableTorsoRecognition)
    {
LABEL_6:
      v7 = 0;
      goto LABEL_10;
    }

    sessionEntityManager = [(HMICameraVideoFrameAnalyzerSignificantActivity *)self sessionEntityManager];
    v11 = [sessionEntityManager updateTorsoModelAndGetTorsoAnnotationsForHome:homeCopy];

    if ([v11 hmf_isEmpty])
    {

      goto LABEL_6;
    }

    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v15;
      v21 = 2048;
      v22 = [v11 count];
      _os_log_impl(&dword_22D12F000, v14, OS_LOG_TYPE_INFO, "%{public}@Creating analysis state update with %lu torso annotations", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [HMIAnalysisStateUpdate alloc];
    v17 = [MEMORY[0x277CBEB98] setWithArray:v11];
    v7 = [(HMIAnalysisStateUpdate *)v16 initWithTorsoAnnotations:v17];
  }

LABEL_10:

  return v7;
}

- (id)eventsWithFaceEventsFromTorsoEventsFromEvents:(id)events homeUUID:(id)d
{
  dCopy = d;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __105__HMICameraVideoFrameAnalyzerSignificantActivity_eventsWithFaceEventsFromTorsoEventsFromEvents_homeUUID___block_invoke;
  v10[3] = &unk_278755910;
  v11 = dCopy;
  selfCopy = self;
  v7 = dCopy;
  v8 = [events na_map:v10];

  return v8;
}

HMIVideoAnalyzerEventPerson *__105__HMICameraVideoFrameAnalyzerSignificantActivity_eventsWithFaceEventsFromTorsoEventsFromEvents_homeUUID___block_invoke(uint64_t a1, void *a2)
{
  v112 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 torso];
  v7 = [v6 torsoRecognition];
  v8 = [v7 classification];
  v9 = [v8 personUUID];

  if (v9)
  {
    v10 = [v5 face];
    v11 = [(HMIVideoAnalyzerEventFace *)v10 faceRecognition];
    if (!v11)
    {
      v11 = [(HMIVideoAnalyzerEvent *)v10 userInfo];
      v12 = [v11 objectForKeyedSubscript:@"FaceFilteredState"];
      v13 = HMIFaceFilteredStateAsString(2);
      if (([v12 isEqualToString:v13] & 1) == 0)
      {
        v98 = a1;
        v16 = [(HMIVideoAnalyzerEvent *)v10 userInfo];
        v17 = [v16 objectForKeyedSubscript:@"FaceFilteredState"];
        v18 = HMIFaceFilteredStateAsString(4);
        v19 = [v17 isEqualToString:v18];

        if ((v19 & 1) == 0)
        {
          v97 = [v5 torso];
          v96 = [v97 torsoRecognition];
          v20 = [v96 classification];
          v21 = +[HMIPersonsModelManager sharedInstance];
          v22 = v98;
          v23 = *(v98 + 32);
          v24 = [v20 personUUID];
          v25 = [v20 sourceUUID];
          v26 = [v21 faceCropFromTorsoModelForHomeUUID:v23 personUUID:v24 sourceUUID:v25];

          v95 = v26;
          if (v26)
          {
            v27 = [MEMORY[0x277CCAD78] UUID];
            v28 = [MEMORY[0x277CCAD78] UUID];
            v29 = [MEMORY[0x277CCAD78] UUID];
            v88 = [HMIFaceprint sentinelFaceprintWithUUID:v27 modelUUID:v28 faceCropUUID:v29];

            v30 = [HMIPersonsModelPrediction alloc];
            v31 = [v20 sourceUUID];
            v32 = [v20 personUUID];
            v33 = MEMORY[0x277CCABB0];
            [v20 confidence];
            v34 = [v33 numberWithDouble:?];
            v35 = [(HMIPersonsModelPrediction *)v30 initWithSourceUUID:v31 personUUID:v32 confidence:v34 linkedEntityUUID:0];

            v36 = +[HMIPersonsModelManager sharedInstance];
            v37 = *(v98 + 32);
            v103 = 0;
            v92 = v35;
            v38 = [v36 linkedPredictionsForPrediction:v35 homeUUID:v37 error:&v103];
            v91 = v103;

            if (!v38 || [v38 hmf_isEmpty])
            {
              v93 = v38;
              v39 = objc_autoreleasePoolPush();
              v40 = *(v98 + 40);
              v41 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
              {
                v42 = HMFGetLogIdentifier();
                v43 = [v20 personUUID];
                v44 = *(v98 + 32);
                *buf = 138544130;
                v105 = v42;
                v106 = 2112;
                v107 = v43;
                v108 = 2112;
                v109 = v44;
                v110 = 2112;
                v111 = v91;
                _os_log_impl(&dword_22D12F000, v41, OS_LOG_TYPE_ERROR, "%{public}@Couldn't retrieve linked predictions from torsomodel for personUUID: %@ homeUUID: %@ error: %@", buf, 0x2Au);

                v22 = v98;
              }

              objc_autoreleasePoolPop(v39);
              v38 = [MEMORY[0x277CBEB98] setWithObject:v92];
            }

            if (v10)
            {
              v45 = objc_autoreleasePoolPush();
              v46 = *(v22 + 40);
              v47 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
              {
                v48 = HMFGetLogIdentifier();
                *buf = 138543618;
                v105 = v48;
                v106 = 2112;
                v107 = v10;
                _os_log_impl(&dword_22D12F000, v47, OS_LOG_TYPE_INFO, "%{public}@Dropping Face event: %@ due to torso recognition", buf, 0x16u);

                v22 = v98;
              }

              objc_autoreleasePoolPop(v45);
              v49 = *(v22 + 32);
              v50 = [*(v22 + 40) analyzerConfiguration];
              v51 = [v50 camera];
              [HMIAnalytics sendEventForFaceEvent:v10 homePersonManagerUUID:v49 camera:v51];
            }

            v90 = v20;
            v99[0] = MEMORY[0x277D85DD0];
            v99[1] = 3221225472;
            v99[2] = __105__HMICameraVideoFrameAnalyzerSignificantActivity_eventsWithFaceEventsFromTorsoEventsFromEvents_homeUUID___block_invoke_39;
            v99[3] = &unk_2787558E8;
            v52 = v96;
            v100 = v52;
            v53 = v95;
            v101 = v53;
            v54 = v88;
            v102 = v54;
            v94 = v38;
            v55 = [v38 na_map:v99];
            v56 = [HMIFaceRecognition alloc];
            v57 = [v52 predictedLinkedEntityUUIDs];
            v58 = [v52 sessionEntityAssignment];
            v59 = [v52 sessionEntityUUID];
            v60 = v53;
            v89 = v54;
            v61 = v55;
            v62 = [(HMIFaceRecognition *)v56 initWithFaceCrop:v60 faceprint:v54 classifications:v55 predictedLinkedEntityUUIDs:v57 faceQualityScore:v58 sessionEntityAssignment:v59 sessionEntityUUID:1.0];

            v63 = [HMIVideoAnalyzerEventFace alloc];
            v64 = [v97 confidence];
            [v97 boundingBox];
            v65 = [(HMIVideoAnalyzerEventFace *)v63 initWithConfidence:v64 boundingBox:v62 faceRecognition:?];

            v66 = objc_autoreleasePoolPush();
            v67 = *(v98 + 40);
            v68 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
            {
              v69 = HMFGetLogIdentifier();
              *buf = 138543874;
              v105 = v69;
              v106 = 2112;
              v107 = v65;
              v108 = 2112;
              v109 = v97;
              _os_log_impl(&dword_22D12F000, v68, OS_LOG_TYPE_INFO, "%{public}@Creating face recognition event: %@ from torso recognition event: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v66);
            v70 = [HMIVideoAnalyzerEventPerson alloc];
            v71 = [v5 confidence];
            [v5 boundingBox];
            v73 = v72;
            v75 = v74;
            v77 = v76;
            v79 = v78;
            v80 = [v5 torso];
            v14 = [(HMIVideoAnalyzerEventPerson *)v70 initWithConfidence:v71 boundingBox:v65 face:v80 torso:v73, v75, v77, v79];

            v81 = v96;
            v20 = v90;
          }

          else
          {
            v82 = objc_autoreleasePoolPush();
            v83 = *(v98 + 40);
            v84 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
            {
              v85 = HMFGetLogIdentifier();
              v86 = [v20 personUUID];
              v87 = *(v98 + 32);
              *buf = 138543874;
              v105 = v85;
              v106 = 2112;
              v107 = v86;
              v108 = 2112;
              v109 = v87;
              _os_log_impl(&dword_22D12F000, v84, OS_LOG_TYPE_ERROR, "%{public}@Error while retrieving facecrop from torsomodel for personUUID: %@ homeUUID: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v82);
            v14 = v5;
            v81 = v96;
          }

          goto LABEL_10;
        }

LABEL_9:
        v14 = v5;
LABEL_10:

        goto LABEL_12;
      }
    }

    goto LABEL_9;
  }

  v14 = v3;
LABEL_12:

  return v14;
}

HMIFaceClassification *__105__HMICameraVideoFrameAnalyzerSignificantActivity_eventsWithFaceEventsFromTorsoEventsFromEvents_homeUUID___block_invoke_39(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HMIFaceClassification alloc];
  v5 = [v3 personUUID];
  v6 = [v3 sourceUUID];
  v7 = [*(a1 + 32) sessionEntityUUID];
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = [v3 confidence];

  [v10 doubleValue];
  v11 = [(HMIFaceClassification *)v4 initWithUUID:v5 sourceUUID:v6 sessionEntityUUID:v7 faceCrop:v9 faceprint:v8 confidence:1 fromTorsoClassification:2 familiarity:?];

  return v11;
}

- (id)_simulatedEventForEventClass:(Class)class
{
  v32[4] = *MEMORY[0x277D85DE8];
  v31[0] = objc_opt_class();
  v32[0] = @"personDetected";
  v31[1] = objc_opt_class();
  v32[1] = @"petDetected";
  v31[2] = objc_opt_class();
  v32[2] = @"vehicleDetected";
  v31[3] = objc_opt_class();
  v32[3] = @"packageDetected";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:4];
  v6 = [v5 objectForKeyedSubscript:class];
  if (!v6)
  {
    v13 = 0;
    goto LABEL_25;
  }

  v7 = +[HMIPreference sharedInstance];
  v8 = [v7 valuePreferenceForKey:v6 defaultValue:@"none" withParser:&__block_literal_global_51];

  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_2840756A8];
  v10 = [v9 containsObject:v8];

  if (v10)
  {
    v11 = [&unk_284075B08 objectForKeyedSubscript:v8];
    integerValue = [v11 integerValue];

    if (objc_opt_class() != class || integerValue != 1)
    {
      if (integerValue == 2)
      {
        v14 = 1.0;
      }

      else
      {
        v14 = 0.0;
        if (integerValue == 1)
        {
          highConfidenceThresholds = [(HMICameraVideoFrameAnalyzerSignificantActivity *)self highConfidenceThresholds];
          v16 = [highConfidenceThresholds objectForKeyedSubscript:class];
          [v16 doubleValue];
          v14 = v17 + -0.01;
        }
      }

      mediumConfidenceThresholds = [(HMICameraVideoFrameAnalyzerSignificantActivity *)self mediumConfidenceThresholds];
      v19 = [mediumConfidenceThresholds objectForKeyedSubscript:class];
      v30[0] = v19;
      highConfidenceThresholds2 = [(HMICameraVideoFrameAnalyzerSignificantActivity *)self highConfidenceThresholds];
      v21 = [highConfidenceThresholds2 objectForKeyedSubscript:class];
      v30[1] = v21;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];

      if (objc_opt_class() == class)
      {
        v23 = HMIVideoAnalyzerEventPerson;
      }

      else
      {
        if (objc_opt_class() == class)
        {
          v27 = [HMIVideoAnalyzerEventFace alloc];
          v25 = [[HMIConfidence alloc] initWithValue:v22 levelThresholds:v14];
          v26 = [(HMIVideoAnalyzerEventFace *)v27 initWithConfidence:v25 boundingBox:&unk_2840753C0 yaw:&unk_2840753C0 roll:0 faceRecognition:0 userInfo:0.0, 0.0, 1.0, 1.0];
          goto LABEL_22;
        }

        if (objc_opt_class() == class)
        {
          v28 = [HMIVideoAnalyzerEventTorso alloc];
          v25 = [[HMIConfidence alloc] initWithValue:v22 levelThresholds:v14];
          v26 = [(HMIVideoAnalyzerEventTorso *)v28 initWithConfidence:v25 boundingBox:&unk_2840753C0 roll:0 torsoRecognition:0.0, 0.0, 1.0, 1.0];
          goto LABEL_22;
        }

        if (objc_opt_class() == class)
        {
          v23 = HMIVideoAnalyzerEventPet;
        }

        else if (objc_opt_class() == class)
        {
          v23 = HMIVideoAnalyzerEventVehicle;
        }

        else
        {
          if (objc_opt_class() != class)
          {
            v13 = 0;
LABEL_23:

            goto LABEL_24;
          }

          v23 = HMIVideoAnalyzerEventPackage;
        }
      }

      v24 = [v23 alloc];
      v25 = [[HMIConfidence alloc] initWithValue:v22 levelThresholds:v14];
      v26 = [v24 initWithConfidence:v25 boundingBox:{0.0, 0.0, 1.0, 1.0}];
LABEL_22:
      v13 = v26;

      goto LABEL_23;
    }
  }

  v13 = 0;
LABEL_24:

LABEL_25:

  return v13;
}

__CFString *__79__HMICameraVideoFrameAnalyzerSignificantActivity__simulatedEventForEventClass___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 lowercaseString];
LABEL_7:
    v6 = v3;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v2 BOOLValue];
    v5 = @"none";
    if (v4)
    {
      v5 = @"high";
    }

    v3 = v5;
    goto LABEL_7;
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (id)_targetEventsSetFromEventTriggers:(int64_t)triggers enableFaceClassification:(BOOL)classification enableTorsoRecognition:(BOOL)recognition
{
  recognitionCopy = recognition;
  classificationCopy = classification;
  triggersCopy = triggers;
  v8 = [MEMORY[0x277CBEB58] set];
  if ((triggersCopy & 2) != 0)
  {
    [v8 addObject:objc_opt_class()];
    if (classificationCopy)
    {
      [v8 addObject:objc_opt_class()];
      if (recognitionCopy)
      {
        [v8 addObject:objc_opt_class()];
      }
    }
  }

  if ((triggersCopy & 4) != 0)
  {
    [v8 addObject:objc_opt_class()];
    if ((triggersCopy & 8) == 0)
    {
LABEL_7:
      if ((triggersCopy & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((triggersCopy & 8) == 0)
  {
    goto LABEL_7;
  }

  [v8 addObject:objc_opt_class()];
  if ((triggersCopy & 0x10) != 0)
  {
LABEL_8:
    [v8 addObject:objc_opt_class()];
  }

LABEL_9:
  v9 = [v8 copy];

  return v9;
}

- (id)_analyzerEventsFromObjectDetections:(id)detections
{
  v3 = MEMORY[0x277CBEB98];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __86__HMICameraVideoFrameAnalyzerSignificantActivity__analyzerEventsFromObjectDetections___block_invoke;
  v7[3] = &unk_278755958;
  v7[4] = self;
  v4 = [detections na_map:v7];
  v5 = [v3 setWithArray:v4];

  return v5;
}

HMIVideoAnalyzerEventFace *__86__HMICameraVideoFrameAnalyzerSignificantActivity__analyzerEventsFromObjectDetections___block_invoke(uint64_t a1, void *a2)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 labelIndex];
  v4 = objc_opt_class();
  v5 = v4;
  v6 = [*(a1 + 32) mediumConfidenceThresholds];
  v7 = [v6 objectForKeyedSubscript:v4];
  v39[0] = v7;
  v8 = [*(a1 + 32) highConfidenceThresholds];
  v9 = [v8 objectForKeyedSubscript:v4];
  v39[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];

  if (v4 != objc_opt_class())
  {
    if (v4 == objc_opt_class())
    {
      v16 = [HMIVideoAnalyzerEventFace alloc];
      v17 = [HMIConfidence alloc];
      [v3 confidence];
      v15 = [(HMIConfidence *)v17 initWithValue:v10 levelThresholds:?];
      [v3 boundingBox];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v26 = [v3 yaw];
      v27 = [v3 roll];
      v11 = [(HMIVideoAnalyzerEventFace *)v16 initWithConfidence:v15 boundingBox:v26 yaw:v27 roll:0 faceRecognition:0 userInfo:v19, v21, v23, v25];
    }

    else
    {
      if (v4 != objc_opt_class())
      {
        if (v4 == objc_opt_class())
        {
          v12 = HMIVideoAnalyzerEventPet;
        }

        else if (v4 == objc_opt_class())
        {
          v12 = HMIVideoAnalyzerEventVehicle;
        }

        else
        {
          if (v4 != objc_opt_class())
          {
            v11 = 0;
            goto LABEL_14;
          }

          v12 = HMIVideoAnalyzerEventPackage;
        }

        goto LABEL_9;
      }

      v28 = [HMIVideoAnalyzerEventTorso alloc];
      v29 = [HMIConfidence alloc];
      [v3 confidence];
      v15 = [(HMIConfidence *)v29 initWithValue:v10 levelThresholds:?];
      [v3 boundingBox];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v26 = [v3 roll];
      v11 = [(HMIVideoAnalyzerEventTorso *)v28 initWithConfidence:v15 boundingBox:v26 roll:0 torsoRecognition:v31, v33, v35, v37];
    }

    goto LABEL_13;
  }

  v12 = HMIVideoAnalyzerEventPerson;
LABEL_9:
  v13 = [v12 alloc];
  v14 = [HMIConfidence alloc];
  [v3 confidence];
  v15 = [(HMIConfidence *)v14 initWithValue:v10 levelThresholds:?];
  [v3 boundingBox];
  v11 = [v13 initWithConfidence:v15 boundingBox:?];
LABEL_13:

LABEL_14:

  return v11;
}

- (id)_filterPackageEvents:(id)events backgroundEvents:(id)backgroundEvents
{
  backgroundEventsCopy = backgroundEvents;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __88__HMICameraVideoFrameAnalyzerSignificantActivity__filterPackageEvents_backgroundEvents___block_invoke;
  v9[3] = &unk_278755120;
  v10 = backgroundEventsCopy;
  v6 = backgroundEventsCopy;
  v7 = [events na_filter:v9];

  return v7;
}

uint64_t __88__HMICameraVideoFrameAnalyzerSignificantActivity__filterPackageEvents_backgroundEvents___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __88__HMICameraVideoFrameAnalyzerSignificantActivity__filterPackageEvents_backgroundEvents___block_invoke_2;
  v7[3] = &unk_278755120;
  v8 = v3;
  v5 = v3;
  LODWORD(v4) = [v4 na_any:v7];

  return v4 ^ 1;
}

BOOL __88__HMICameraVideoFrameAnalyzerSignificantActivity__filterPackageEvents_backgroundEvents___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  if (v4 == objc_opt_class())
  {
    [*(a1 + 32) boundingBox];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    [v3 boundingBox];
    HMICGRectIntersectionOverUnion(v21, v23, v25, v27, v28, v29, v30, v31);
    v7 = v32 > 0.4;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() || (v6 = objc_opt_class(), v6 == objc_opt_class()))
    {
      [*(a1 + 32) boundingBox];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      [v3 boundingBox];
      v35.origin.x = v16;
      v35.origin.y = v17;
      v35.size.width = v18;
      v35.size.height = v19;
      v34.origin.x = v9;
      v34.origin.y = v11;
      v34.size.width = v13;
      v34.size.height = v15;
      v7 = CGRectIntersectsRect(v34, v35);
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_eventsWithClassificationsFromEvents:(id)events videoFrame:(id)frame regionOfInterest:(CGRect)interest homeUUID:(id)d
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  eventsCopy = events;
  frameCopy = frame;
  dCopy = d;
  v16 = [MEMORY[0x277CBEB58] set];
  v19 = +[HMIPreference isProductTypeJ105](HMIPreference, "isProductTypeJ105") && (+[HMIThermalMonitor sharedInstance](HMIThermalMonitor, "sharedInstance"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 thermalLevel], v17, v18 > 1) || +[HMIPreference isProductTypeB238](HMIPreference, "isProductTypeB238");
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v40 = 0;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v38 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __124__HMICameraVideoFrameAnalyzerSignificantActivity__eventsWithClassificationsFromEvents_videoFrame_regionOfInterest_homeUUID___block_invoke;
  v25[3] = &unk_278755980;
  v20 = v16;
  v30 = v39;
  v26 = v20;
  selfCopy = self;
  v21 = frameCopy;
  v28 = v21;
  v36 = v19;
  v22 = dCopy;
  v29 = v22;
  v31 = v37;
  v32 = x;
  v33 = y;
  v34 = width;
  v35 = height;
  [eventsCopy enumerateObjectsUsingBlock:v25];
  v23 = [v20 copy];

  _Block_object_dispose(v37, 8);
  _Block_object_dispose(v39, 8);

  return v23;
}

void __124__HMICameraVideoFrameAnalyzerSignificantActivity__eventsWithClassificationsFromEvents_videoFrame_regionOfInterest_homeUUID___block_invoke(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (!v5)
  {
    [*(a1 + 32) addObject:v3];
    goto LABEL_30;
  }

  v6 = [v5 face];
  if (!v6 || (v7 = *(*(a1 + 64) + 8), v8 = *(v7 + 24), v8 > 4))
  {
    v14 = 0;
    goto LABEL_18;
  }

  *(v7 + 24) = v8 + 1;
  v9 = [[HMISignpost alloc] initWithName:@"ClassifyFaceEvent"];
  v10 = *(*(a1 + 40) + 40);
  v11 = [*(a1 + 48) pixelBuffer];
  v12 = *(a1 + 112);
  v13 = *(a1 + 56);
  v41 = 0;
  v14 = [v10 classifyFaceEvent:v6 pixelBuffer:v11 fastMode:v12 homeUUID:v13 error:&v41];
  v15 = v41;
  [(HMISignpost *)v9 end];
  if (!v14)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 40);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v20 = v38 = v17;
      *buf = 138543874;
      v43 = v20;
      v44 = 2112;
      v45 = v6;
      v46 = 2112;
      v47 = v15;
      v21 = "%{public}@Faceprinting failed for face: %@, error: %@";
      v22 = v19;
      v23 = OS_LOG_TYPE_ERROR;
      v24 = 32;
      goto LABEL_15;
    }

LABEL_16:

    objc_autoreleasePoolPop(v17);
    goto LABEL_17;
  }

  v16 = [v14 faceRecognition];

  if (!v16)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 40);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v20 = v38 = v17;
      *buf = 138543618;
      v43 = v20;
      v44 = 2112;
      v45 = v6;
      v21 = "%{public}@Face: %@ didn't produce any classifications";
      v22 = v19;
      v23 = OS_LOG_TYPE_INFO;
      v24 = 22;
LABEL_15:
      _os_log_impl(&dword_22D12F000, v22, v23, v21, buf, v24);

      v17 = v38;
      goto LABEL_16;
    }

    goto LABEL_16;
  }

LABEL_17:

LABEL_18:
  v25 = [v5 torso];
  if (v25 && (v26 = *(*(a1 + 72) + 8), v27 = *(v26 + 24), v27 <= 4))
  {
    *(v26 + 24) = v27 + 1;
    v28 = [[HMISignpost alloc] initWithName:@"ClassifyTorsoEvent"];
    v29 = *(*(a1 + 40) + 48);
    v30 = [*(a1 + 48) pixelBuffer];
    v31 = *(a1 + 56);
    v40 = 0;
    v32 = [v29 classifyTorsoEvent:v25 regionOfInterest:v30 pixelBuffer:v31 homeUUID:&v40 error:{*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)}];
    v33 = v40;
    [(HMISignpost *)v28 end];
    if (!v32)
    {
      context = objc_autoreleasePoolPush();
      v39 = *(a1 + 40);
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138543874;
        v43 = v36;
        v44 = 2112;
        v45 = v25;
        v46 = 2112;
        v47 = v33;
        _os_log_impl(&dword_22D12F000, v34, OS_LOG_TYPE_ERROR, "%{public}@Torsoprinting failed for torso: %@, error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(context);
    }
  }

  else
  {
    v32 = 0;
  }

  if (v14 | v32)
  {
    v35 = [v5 copyWithFaceEvent:v14 torso:v32];
    [*(a1 + 32) addObject:v35];
  }

  else
  {
    [*(a1 + 32) addObject:v3];
  }

LABEL_30:
}

- (id)_eventsWithSessionEntitiesFromEvents:(id)events regionOfInterest:(CGRect)interest timeStamp:(id *)stamp homeUUID:(id)d
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  dCopy = d;
  v14 = MEMORY[0x277CBEB58];
  eventsCopy = events;
  v16 = [v14 set];
  v17 = [MEMORY[0x277CBEB58] set];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __123__HMICameraVideoFrameAnalyzerSignificantActivity__eventsWithSessionEntitiesFromEvents_regionOfInterest_timeStamp_homeUUID___block_invoke;
  v29[3] = &unk_2787559A8;
  v18 = v17;
  v30 = v18;
  v19 = v16;
  v31 = v19;
  [eventsCopy na_each:v29];

  sessionEntityManager = [(HMICameraVideoFrameAnalyzerSignificantActivity *)self sessionEntityManager];

  if (!sessionEntityManager)
  {
    v21 = objc_alloc_init(HMISessionEntityManager);
    sessionEntityManager = self->_sessionEntityManager;
    self->_sessionEntityManager = v21;
  }

  if (([v18 hmf_isEmpty] & 1) == 0)
  {
    sessionEntityManager2 = [(HMICameraVideoFrameAnalyzerSignificantActivity *)self sessionEntityManager];
    v27 = *&stamp->var0;
    var3 = stamp->var3;
    v24 = [sessionEntityManager2 assignSessionEntitiesToPersonEvents:v18 regionOfInterest:&v27 timeStamp:dCopy homeUUID:{x, y, width, height}];

    [v19 unionSet:v24];
  }

  v25 = [v19 copy];

  return v25;
}

void __123__HMICameraVideoFrameAnalyzerSignificantActivity__eventsWithSessionEntitiesFromEvents_regionOfInterest_timeStamp_homeUUID___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v7;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = v4;
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = v7;
  }

  [v5 addObject:v6];
}

+ (NSDictionary)classHierarchyMap
{
  if (classHierarchyMap_onceToken != -1)
  {
    +[HMICameraVideoFrameAnalyzerSignificantActivity classHierarchyMap];
  }

  v3 = classHierarchyMap_hierarchyMap;

  return v3;
}

void __67__HMICameraVideoFrameAnalyzerSignificantActivity_classHierarchyMap__block_invoke()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_284075390;
  v3[0] = objc_opt_class();
  v2[1] = &unk_2840753D8;
  v3[1] = objc_opt_class();
  v2[2] = &unk_2840753A8;
  v3[2] = objc_opt_class();
  v2[3] = &unk_2840753F0;
  v3[3] = objc_opt_class();
  v2[4] = &unk_284075408;
  v3[4] = objc_opt_class();
  v2[5] = &unk_284075420;
  v3[5] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:6];
  v1 = classHierarchyMap_hierarchyMap;
  classHierarchyMap_hierarchyMap = v0;
}

+ (id)labelIndexForEventClass:(Class)class
{
  if (labelIndexForEventClass__onceToken != -1)
  {
    +[HMICameraVideoFrameAnalyzerSignificantActivity labelIndexForEventClass:];
  }

  v4 = labelIndexForEventClass__map;

  return [v4 objectForKeyedSubscript:class];
}

void __74__HMICameraVideoFrameAnalyzerSignificantActivity_labelIndexForEventClass___block_invoke()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v2[0] = objc_opt_class();
  v3[0] = &unk_284075390;
  v2[1] = objc_opt_class();
  v3[1] = &unk_2840753A8;
  v2[2] = objc_opt_class();
  v3[2] = &unk_2840753D8;
  v2[3] = objc_opt_class();
  v3[3] = &unk_2840753F0;
  v2[4] = objc_opt_class();
  v3[4] = &unk_284075408;
  v2[5] = objc_opt_class();
  v3[5] = &unk_284075420;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:6];
  v1 = labelIndexForEventClass__map;
  labelIndexForEventClass__map = v0;
}

+ (id)desLabelIndexForEventClass:(Class)class
{
  if (desLabelIndexForEventClass__onceToken != -1)
  {
    +[HMICameraVideoFrameAnalyzerSignificantActivity desLabelIndexForEventClass:];
  }

  v4 = desLabelIndexForEventClass__map;

  return [v4 objectForKeyedSubscript:class];
}

void __77__HMICameraVideoFrameAnalyzerSignificantActivity_desLabelIndexForEventClass___block_invoke()
{
  v3[3] = *MEMORY[0x277D85DE8];
  v2[0] = objc_opt_class();
  v3[0] = &unk_284075390;
  v2[1] = objc_opt_class();
  v3[1] = &unk_284075438;
  v2[2] = objc_opt_class();
  v3[2] = &unk_2840753D8;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:3];
  v1 = desLabelIndexForEventClass__map;
  desLabelIndexForEventClass__map = v0;
}

@end
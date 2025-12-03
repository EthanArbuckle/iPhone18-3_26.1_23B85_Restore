@interface HMIVideoTemporalEventFilter
- (BOOL)_resetPreviousFrameResult:(id)result expirationPTS:(id *)s regionOfInterest:(CGRect)interest;
- (HMIVideoTemporalEventFilter)init;
- (id)_filterEvents:(id)events stationaryEvents:(id)stationaryEvents motionDetection:(id)detection;
- (id)_filterEvents:(id)events stationaryEvents:(id)stationaryEvents motionDetection:(id)detection prevFrameResult:(id)result regionOfInterest:(CGRect)interest;
- (id)_filterEvents:(id)events stationaryEvents:(id)stationaryEvents stationaryObjects:(id)objects expirationPTS:(id *)s imageSize:(CGSize)size;
- (id)applyFilterWithFrameResult:(id)result motionDetection:(id)detection;
@end

@implementation HMIVideoTemporalEventFilter

- (HMIVideoTemporalEventFilter)init
{
  v12[3] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = HMIVideoTemporalEventFilter;
  v2 = [(HMIVideoTemporalEventFilter *)&v10 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    stationaryObjects = v2->_stationaryObjects;
    v2->_stationaryObjects = array;

    CMTimeMakeWithSeconds(&v9, 10.0, 1000);
    v5 = *&v9.value;
    v2->_timeInterval.epoch = v9.epoch;
    *&v2->_timeInterval.value = v5;
    v11[0] = objc_opt_class();
    v12[0] = &unk_284075240;
    v11[1] = objc_opt_class();
    v12[1] = &unk_284075258;
    v11[2] = objc_opt_class();
    v12[2] = &unk_284075270;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
    targetEventClassRanks = v2->_targetEventClassRanks;
    v2->_targetEventClassRanks = v6;
  }

  return v2;
}

- (id)applyFilterWithFrameResult:(id)result motionDetection:(id)detection
{
  resultCopy = result;
  detectionCopy = detection;
  events = [resultCopy events];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __74__HMIVideoTemporalEventFilter_applyFilterWithFrameResult_motionDetection___block_invoke;
  v41[3] = &unk_278755120;
  v41[4] = self;
  v9 = [events na_filter:v41];

  events2 = [resultCopy events];
  allObjects = [events2 allObjects];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __74__HMIVideoTemporalEventFilter_applyFilterWithFrameResult_motionDetection___block_invoke_2;
  v40[3] = &unk_278755120;
  v40[4] = self;
  v12 = [allObjects na_filter:v40];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __74__HMIVideoTemporalEventFilter_applyFilterWithFrameResult_motionDetection___block_invoke_3;
  v39[3] = &unk_278755148;
  v39[4] = self;
  v13 = [v12 sortedArrayUsingComparator:v39];

  memset(&v38, 0, sizeof(v38));
  frame = [resultCopy frame];
  v15 = frame;
  if (frame)
  {
    [frame presentationTimeStamp];
  }

  else
  {
    memset(&v38, 0, sizeof(v38));
  }

  memset(&v37, 0, sizeof(v37));
  [(HMIVideoTemporalEventFilter *)self timeInterval];
  lhs = v38;
  CMTimeSubtract(&v37, &lhs, &rhs);
  array = [MEMORY[0x277CBEB18] array];
  v17 = [(HMIVideoTemporalEventFilter *)self _filterEvents:v13 stationaryEvents:array motionDetection:detectionCopy];

  stationaryObjects = [(HMIVideoTemporalEventFilter *)self stationaryObjects];
  frame2 = [resultCopy frame];
  [frame2 size];
  rhs = v37;
  v20 = [(HMIVideoTemporalEventFilter *)self _filterEvents:v17 stationaryEvents:array stationaryObjects:stationaryObjects expirationPTS:&rhs imageSize:?];

  prevFrameResult = [(HMIVideoTemporalEventFilter *)self prevFrameResult];
  if (prevFrameResult)
  {
    v22 = prevFrameResult;
    prevFrameResult2 = [(HMIVideoTemporalEventFilter *)self prevFrameResult];
    [resultCopy regionOfInterest];
    rhs = v37;
    v24 = [(HMIVideoTemporalEventFilter *)self _resetPreviousFrameResult:prevFrameResult2 expirationPTS:&rhs regionOfInterest:?];

    if (v24)
    {
      [(HMIVideoTemporalEventFilter *)self setPrevFrameResult:0];
    }
  }

  prevFrameResult3 = [(HMIVideoTemporalEventFilter *)self prevFrameResult];
  [resultCopy regionOfInterest];
  v26 = [(HMIVideoTemporalEventFilter *)self _filterEvents:v20 stationaryEvents:array motionDetection:detectionCopy prevFrameResult:prevFrameResult3 regionOfInterest:?];

  redactedCopy = [resultCopy redactedCopy];
  [(HMIVideoTemporalEventFilter *)self setPrevFrameResult:redactedCopy];

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __74__HMIVideoTemporalEventFilter_applyFilterWithFrameResult_motionDetection___block_invoke_4;
  v33[3] = &unk_278755170;
  v33[4] = self;
  v34 = v38;
  [array na_each:v33];
  v28 = [HMIVideoAnalyzerFrameResult alloc];
  frame3 = [resultCopy frame];
  v30 = [v9 setByAddingObjectsFromArray:v26];
  [resultCopy regionOfInterest];
  v31 = [(HMIVideoAnalyzerFrameResult *)v28 initWithFrame:frame3 events:v30 regionOfInterest:?];

  return v31;
}

BOOL __74__HMIVideoTemporalEventFilter_applyFilterWithFrameResult_motionDetection___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 targetEventClassRanks];
  v5 = objc_opt_class();

  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = v6 == 0;

  return v7;
}

BOOL __74__HMIVideoTemporalEventFilter_applyFilterWithFrameResult_motionDetection___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 targetEventClassRanks];
  v5 = objc_opt_class();

  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = v6 != 0;

  return v7;
}

BOOL __74__HMIVideoTemporalEventFilter_applyFilterWithFrameResult_motionDetection___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 targetEventClassRanks];
  v9 = objc_opt_class();

  v10 = [v8 objectForKeyedSubscript:v9];
  LODWORD(v7) = [v10 intValue];
  v11 = [*(a1 + 32) targetEventClassRanks];
  v12 = objc_opt_class();

  v13 = [v11 objectForKeyedSubscript:v12];
  v14 = v7 > [v13 intValue];

  return v14;
}

void __74__HMIVideoTemporalEventFilter_applyFilterWithFrameResult_motionDetection___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 stationaryObjects];
  v6 = [HMIStationaryObject alloc];
  v8 = *(a1 + 40);
  v9 = *(a1 + 56);
  v7 = [(HMIStationaryObject *)v6 initWithEvent:v4 time:&v8];

  [v5 addObject:v7];
}

- (id)_filterEvents:(id)events stationaryEvents:(id)stationaryEvents motionDetection:(id)detection
{
  stationaryEventsCopy = stationaryEvents;
  detectionCopy = detection;
  v10 = detectionCopy;
  if (detectionCopy)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __78__HMIVideoTemporalEventFilter__filterEvents_stationaryEvents_motionDetection___block_invoke;
    v13[3] = &unk_278755198;
    v14 = detectionCopy;
    selfCopy = self;
    v16 = stationaryEventsCopy;
    v11 = [events na_filter:v13];
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

uint64_t __78__HMIVideoTemporalEventFilter__filterEvents_stationaryEvents_motionDetection___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  [v3 boundingBox];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = objc_opt_class();
  v14 = [v3 confidence];
  [v14 value];
  *&v16 = v15;
  v17 = [v4 applyEventTypeAndCheckIfSubBoundingIsStatic:v13 eventClass:v6 confidence:{v8, v10, v12, v16}];

  if (v17)
  {
    v18 = objc_opt_class();
    if (v18 == objc_opt_class())
    {
      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 40);
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v22 = HMFGetLogIdentifier();
        v23 = [v3 shortDescription];
        v25 = 138543618;
        v26 = v22;
        v27 = 2112;
        v28 = v23;
        _os_log_impl(&dword_22D12F000, v21, OS_LOG_TYPE_DEBUG, "%{public}@Add motion-vector stationary event %@", &v25, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      [*(a1 + 48) addObject:v3];
    }
  }

  return v17 ^ 1u;
}

- (id)_filterEvents:(id)events stationaryEvents:(id)stationaryEvents stationaryObjects:(id)objects expirationPTS:(id *)s imageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  eventsCopy = events;
  stationaryEventsCopy = stationaryEvents;
  objectsCopy = objects;
  if (([objectsCopy hmf_isEmpty] & 1) == 0)
  {
    do
    {
      firstObject = [objectsCopy firstObject];
      v17 = firstObject;
      if (firstObject)
      {
        [firstObject time];
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
      }

      time2 = *s;
      v18 = CMTimeCompare(&time1, &time2);

      if ((v18 & 0x80000000) == 0)
      {
        break;
      }

      [objectsCopy hmf_removeFirstObject];
    }

    while (![objectsCopy hmf_isEmpty]);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __104__HMIVideoTemporalEventFilter__filterEvents_stationaryEvents_stationaryObjects_expirationPTS_imageSize___block_invoke;
  v23[3] = &unk_2787551E8;
  v27 = width;
  v28 = height;
  v24 = objectsCopy;
  selfCopy = self;
  v26 = stationaryEventsCopy;
  v19 = stationaryEventsCopy;
  v20 = objectsCopy;
  v21 = [eventsCopy na_filter:v23];

  return v21;
}

BOOL __104__HMIVideoTemporalEventFilter__filterEvents_stationaryEvents_stationaryObjects_expirationPTS_imageSize___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __104__HMIVideoTemporalEventFilter__filterEvents_stationaryEvents_stationaryObjects_expirationPTS_imageSize___block_invoke_2;
  v15[3] = &unk_2787551C0;
  v5 = v3;
  v16 = v5;
  v17 = *(a1 + 56);
  v6 = [v4 na_firstObjectPassingTest:v15];
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 40);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v5 shortDescription];
      v12 = [v6 event];
      v13 = [v12 shortDescription];
      *buf = 138543874;
      v19 = v10;
      v20 = 2112;
      v21 = v11;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_22D12F000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Replace matched stationary event %@ for %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 48) addObject:v5];
    [*(a1 + 32) removeObject:v6];
  }

  return v6 == 0;
}

BOOL __104__HMIVideoTemporalEventFilter__filterEvents_stationaryEvents_stationaryObjects_expirationPTS_imageSize___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = [v3 event];
  if (v4 == objc_opt_class())
  {
    [*(a1 + 32) boundingBox];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [v3 event];
    [v15 boundingBox];
    v6 = HMICGRectMaxParallelEdgeDistance(v8, v10, v12, v14, v16, v17, v18, v19, *(a1 + 40), *(a1 + 48)) < 1.86;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_filterEvents:(id)events stationaryEvents:(id)stationaryEvents motionDetection:(id)detection prevFrameResult:(id)result regionOfInterest:(CGRect)interest
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  stationaryEventsCopy = stationaryEvents;
  detectionCopy = detection;
  resultCopy = result;
  if (resultCopy)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __111__HMIVideoTemporalEventFilter__filterEvents_stationaryEvents_motionDetection_prevFrameResult_regionOfInterest___block_invoke_2;
    v20[3] = &unk_278755238;
    v21 = detectionCopy;
    v25 = x;
    v26 = y;
    v27 = width;
    v28 = height;
    v22 = resultCopy;
    selfCopy = self;
    v24 = stationaryEventsCopy;
    v18 = [events na_filter:v20];
  }

  else
  {
    v18 = [events na_filter:&__block_literal_global_30];
  }

  return v18;
}

BOOL __111__HMIVideoTemporalEventFilter__filterEvents_stationaryEvents_motionDetection_prevFrameResult_regionOfInterest___block_invoke_2(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_class();
  if (v4 == objc_opt_class())
  {
    v6 = *(a1 + 32);
    if (v6 && ([v3 boundingBox], v8 = v7, v10 = v9, v12 = v11, v14 = v13, v15 = objc_opt_class(), objc_msgSend(v3, "confidence"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "value"), *&v18 = v17, objc_msgSend(v6, "scoreForSubBoundingBox:eventClass:confidence:", v15, v8, v10, v12, v14, v18), LODWORD(v8) = v19, v16, *&v8 <= 15.0) || (objc_msgSend(v3, "boundingBox"), HMICGRectMinElementwiseDistance(v20, v21, v22, v23, *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)) < 0.02))
    {
      v5 = 0;
    }

    else
    {
      v45 = 0;
      v46 = &v45;
      v47 = 0x2020000000;
      v24 = [*(a1 + 40) frame];
      [v24 size];
      v26 = v25;

      v27 = [*(a1 + 40) frame];
      [v27 size];
      v29 = v28;

      if (v26 >= v29)
      {
        v30 = v26;
      }

      else
      {
        v30 = v29;
      }

      v31 = v30;
      v48 = v31;
      v32 = [*(a1 + 40) events];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __111__HMIVideoTemporalEventFilter__filterEvents_stationaryEvents_motionDetection_prevFrameResult_regionOfInterest___block_invoke_3;
      v41[3] = &unk_278755210;
      v33 = v3;
      v42 = v33;
      v43 = *(a1 + 40);
      v44 = &v45;
      [v32 na_each:v41];

      v34 = v46[6];
      v5 = v34 >= 1.86;
      if (v34 < 1.86)
      {
        v35 = objc_autoreleasePoolPush();
        v36 = *(a1 + 48);
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          v38 = HMFGetLogIdentifier();
          v39 = [v33 shortDescription];
          *buf = 138543618;
          v50 = v38;
          v51 = 2112;
          v52 = v39;
          _os_log_impl(&dword_22D12F000, v37, OS_LOG_TYPE_DEBUG, "%{public}@Add edge-distance stationary event %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v35);
        [*(a1 + 56) addObject:v33];
      }

      _Block_object_dispose(&v45, 8);
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void __111__HMIVideoTemporalEventFilter__filterEvents_stationaryEvents_motionDetection_prevFrameResult_regionOfInterest___block_invoke_3(uint64_t a1, void *a2)
{
  v26 = a2;
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    [*(a1 + 32) boundingBox];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [v26 boundingBox];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = [*(a1 + 40) frame];
    [v20 size];
    v23 = HMICGRectMaxParallelEdgeDistance(v5, v7, v9, v11, v13, v15, v17, v19, v21, v22);

    v24 = *(*(a1 + 48) + 8);
    v25 = *(v24 + 24);
    if (v23 < v25)
    {
      v25 = v23;
    }

    *(v24 + 24) = v25;
  }
}

- (BOOL)_resetPreviousFrameResult:(id)result expirationPTS:(id *)s regionOfInterest:(CGRect)interest
{
  resultCopy = result;
  frame = [resultCopy frame];
  v8 = frame;
  if (frame)
  {
    [frame presentationTimeStamp];
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  v14 = *s;
  v9 = CMTimeCompare(&time1, &v14);

  if (v9 < 0)
  {
    v12 = 1;
  }

  else
  {
    events = [resultCopy events];
    v11 = [events na_any:&__block_literal_global_32];

    v12 = v11 ^ 1;
  }

  return v12;
}

@end
@interface HMDCameraRecordingSessionSignificantEventManager
+ (id)logCategory;
- (BOOL)_isAnyEventInAnalyzerEvents:(id)events includedInRecordingEventTriggers:(unint64_t)triggers;
- (BOOL)_isAnyEventInAnalyzerFrameResults:(id)results includedInRecordingEventTriggers:(unint64_t)triggers;
- (BOOL)isAnyEventInAnalyzerFragmentResult:(id)result includedInRecordingEventTriggers:(unint64_t)triggers;
- (HMDCameraRecordingSessionSignificantEventManager)initWithWorkQueue:(id)queue faceClassificationResolver:(id)resolver logIdentifier:(id)identifier;
- (id)_faceRecognitionSignificantEventForAnalyzerEvent:(id)event dateOfOccurrence:(id)occurrence heroFrameData:(id)data timeOffsetWithinClip:(double)clip confidenceLevel:(unint64_t)level;
- (id)_filteredAndUpdatedSignificantEventsFromSignificantEvents:(id)events;
- (id)_filteredFaceClassificationsFromFaceClassifications:(id)classifications;
- (id)_significantEventsForAnalyzerEvent:(id)event dateOfOccurrence:(id)occurrence heroFrameData:(id)data timeOffsetWithinClip:(double)clip recordingEventTriggers:(unint64_t)triggers;
- (id)_significantEventsForEmptyAnalyzerResult:(id)result dateOfOccurrence:(id)occurrence timeOffsetWithinClip:(double)clip;
- (id)_significantEventsForFrameResult:(id)result analyzerResult:(id)analyzerResult dateOfOccurrence:(id)occurrence timeOffsetWithinClip:(double)clip recordingEventTriggers:(unint64_t)triggers;
- (id)_supersedingSignificantEventFromCurrentSignificantEvents:(id)events forSignificantEvent:(id)event;
- (id)_supersedingSignificantEventFromPreviousSignificantEvents:(id)events forSignificantEvent:(id)event;
- (id)significantEventsForAnalyzerFragmentResult:(id)result dateOfOccurrence:(id)occurrence timeOffsetWithinClip:(double)clip recordingEventTriggers:(unint64_t)triggers;
- (void)resetState;
@end

@implementation HMDCameraRecordingSessionSignificantEventManager

- (id)_faceRecognitionSignificantEventForAnalyzerEvent:(id)event dateOfOccurrence:(id)occurrence heroFrameData:(id)data timeOffsetWithinClip:(double)clip confidenceLevel:(unint64_t)level
{
  eventCopy = event;
  occurrenceCopy = occurrence;
  dataCopy = data;
  workQueue = [(HMDCameraRecordingSessionSignificantEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v16 = eventCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  face = [v18 face];
  v20 = face;
  if (face)
  {
    v21 = face;
  }

  else
  {
    v22 = v16;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v21 = v23;
  }

  faceRecognition = [v21 faceRecognition];
  v25 = faceRecognition;
  if (faceRecognition)
  {
    levelCopy = level;
    classifications = [faceRecognition classifications];
    v27 = [(HMDCameraRecordingSessionSignificantEventManager *)self _filteredFaceClassificationsFromFaceClassifications:classifications];

    if ([v27 count])
    {
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __169__HMDCameraRecordingSessionSignificantEventManager__faceRecognitionSignificantEventForAnalyzerEvent_dateOfOccurrence_heroFrameData_timeOffsetWithinClip_confidenceLevel___block_invoke;
      v41[3] = &unk_2797277D8;
      v41[4] = self;
      v28 = v25;
      v42 = v28;
      v37 = [v27 na_map:v41];
      significantEventUUIDFactory = [(HMDCameraRecordingSessionSignificantEventManager *)self significantEventUUIDFactory];
      [v28 sessionEntityUUID];
      v40 = dataCopy;
      v31 = v30 = occurrenceCopy;
      v38 = (significantEventUUIDFactory)[2](significantEventUUIDFactory, v16, v31);

      v32 = [(HMDCameraRecordingSessionSignificantEvent *)[HMDMutableCameraRecordingSessionSignificantEvent alloc] initWithUUID:v38];
      [(HMDCameraRecordingSessionSignificantEvent *)v32 setReason:2];
      [(HMDCameraRecordingSessionSignificantEvent *)v32 setDateOfOccurrence:v30];
      [(HMDCameraRecordingSessionSignificantEvent *)v32 setConfidenceLevel:levelCopy];
      sessionEntityUUID = [v28 sessionEntityUUID];
      [(HMDCameraRecordingSessionSignificantEvent *)v32 setSessionEntityUUID:sessionEntityUUID];

      [(HMDCameraRecordingSessionSignificantEvent *)v32 setFaceClassifications:v37];
      [(HMDCameraRecordingSessionSignificantEvent *)v32 setHeroFrameData:v40];
      faceCrop = [v28 faceCrop];
      dataRepresentation = [faceCrop dataRepresentation];
      [(HMDCameraRecordingSessionSignificantEvent *)v32 setFaceCropData:dataRepresentation];

      occurrenceCopy = v30;
      dataCopy = v40;

      [(HMDCameraRecordingSessionSignificantEvent *)v32 setTimeOffsetWithinClip:clip];
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

HMDMutableCameraSignificantEventFaceClassification *__169__HMDCameraRecordingSessionSignificantEventManager__faceRecognitionSignificantEventForAnalyzerEvent_dateOfOccurrence_heroFrameData_timeOffsetWithinClip_confidenceLevel___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) faceClassificationUUIDFactory];
  v5 = (v4)[2](v4, v3);

  v6 = [HMDMutableCameraSignificantEventFaceClassification alloc];
  v7 = [v3 sourceUUID];
  v8 = [(HMDCameraSignificantEventFaceClassification *)v6 initWithUUID:v5 personManagerUUID:v7];

  v9 = [v3 personUUID];
  if (!v9)
  {
    v12 = [*(a1 + 40) faceCrop];
    v13 = [v12 UUID];
    [(HMDCameraSignificantEventFaceClassification *)v8 setUnassociatedFaceCropUUID:v13];
    goto LABEL_6;
  }

  [(HMDCameraSignificantEventFaceClassification *)v8 setPersonUUID:v9];
  v10 = [*(a1 + 32) faceClassificationResolver];
  v11 = [v3 sourceUUID];
  v12 = [v10 personManagerWithUUID:v11];

  if ([v12 sharesFaceClassifications] && (objc_msgSend(v12, "syncsPersonData") & 1) == 0)
  {
    v13 = [v12 personWithUUID:v9];
    v14 = [v13 name];
    [(HMDCameraSignificantEventFaceClassification *)v8 setPersonName:v14];

LABEL_6:
  }

  return v8;
}

- (id)_supersedingSignificantEventFromCurrentSignificantEvents:(id)events forSignificantEvent:(id)event
{
  eventCopy = event;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __129__HMDCameraRecordingSessionSignificantEventManager__supersedingSignificantEventFromCurrentSignificantEvents_forSignificantEvent___block_invoke;
  v9[3] = &unk_279727760;
  v10 = eventCopy;
  v6 = eventCopy;
  v7 = [events na_firstObjectPassingTest:v9];

  return v7;
}

- (id)_supersedingSignificantEventFromPreviousSignificantEvents:(id)events forSignificantEvent:(id)event
{
  eventCopy = event;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __130__HMDCameraRecordingSessionSignificantEventManager__supersedingSignificantEventFromPreviousSignificantEvents_forSignificantEvent___block_invoke;
  v9[3] = &unk_279727760;
  v10 = eventCopy;
  v6 = eventCopy;
  v7 = [events na_firstObjectPassingTest:v9];

  return v7;
}

BOOL __130__HMDCameraRecordingSessionSignificantEventManager__supersedingSignificantEventFromPreviousSignificantEvents_forSignificantEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = 1;
  if ([*(a1 + 32) reason] != 1 || objc_msgSend(v3, "reason") == 6)
  {
    v4 = [v3 reason];
    if (v4 != [*(a1 + 32) reason] || (v5 = objc_msgSend(v3, "confidenceLevel"), v5 < objc_msgSend(*(a1 + 32), "confidenceLevel")))
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)_filteredFaceClassificationsFromFaceClassifications:(id)classifications
{
  classificationsCopy = classifications;
  workQueue = [(HMDCameraRecordingSessionSignificantEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __104__HMDCameraRecordingSessionSignificantEventManager__filteredFaceClassificationsFromFaceClassifications___block_invoke;
  v8[3] = &unk_2797277B0;
  v8[4] = self;
  v6 = [classificationsCopy na_filter:v8];

  return v6;
}

uint64_t __104__HMDCameraRecordingSessionSignificantEventManager__filteredFaceClassificationsFromFaceClassifications___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 familiarity];
  if (v4 == 1)
  {
    goto LABEL_4;
  }

  if (v4)
  {
    goto LABEL_5;
  }

  v5 = [*(a1 + 32) faceClassificationResolver];
  v6 = [v3 sourceUUID];
  v7 = [v5 personManagerWithUUID:v6];

  objc_opt_class();
  LOBYTE(v5) = objc_opt_isKindOfClass();

  if (v5)
  {
LABEL_4:
    v8 = 0;
  }

  else
  {
LABEL_5:
    v8 = 1;
  }

  return v8;
}

- (id)_filteredAndUpdatedSignificantEventsFromSignificantEvents:(id)events
{
  v91 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  workQueue = [(HMDCameraRecordingSessionSignificantEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v74 = [MEMORY[0x277CBEB58] set];
  v6 = MEMORY[0x277CBEB58];
  significantEvents = [(HMDCameraRecordingSessionSignificantEventManager *)self significantEvents];
  v8 = [v6 setWithArray:significantEvents];

  v70 = eventsCopy;
  allObjects = [eventsCopy allObjects];
  v10 = [allObjects sortedArrayUsingComparator:&__block_literal_global_15_54211];

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = v10;
  v11 = [obj countByEnumeratingWithState:&v80 objects:v90 count:16];
  if (v11)
  {
    v13 = v11;
    v75 = *v81;
    *&v12 = 138543618;
    v68 = v12;
    selfCopy = self;
    v73 = v8;
    do
    {
      v14 = 0;
      v69 = v13;
      do
      {
        if (*v81 != v75)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v80 + 1) + 8 * v14);
        v16 = [(HMDCameraRecordingSessionSignificantEventManager *)self _supersedingSignificantEventFromPreviousSignificantEvents:v8 forSignificantEvent:v15, v68];
        if (v16 || ([(HMDCameraRecordingSessionSignificantEventManager *)self _supersedingSignificantEventFromCurrentSignificantEvents:v70 forSignificantEvent:v15], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v17 = v16;
          sessionEntityUUID = [v15 sessionEntityUUID];
          v19 = sessionEntityUUID;
          if (sessionEntityUUID)
          {
            v78[0] = MEMORY[0x277D85DD0];
            v78[1] = 3221225472;
            v78[2] = __110__HMDCameraRecordingSessionSignificantEventManager__filteredAndUpdatedSignificantEventsFromSignificantEvents___block_invoke_16;
            v78[3] = &unk_279727760;
            v79 = sessionEntityUUID;
            v20 = [v8 na_firstObjectPassingTest:v78];
            if (!v20)
            {
              sessionEntityUUID2 = [v17 sessionEntityUUID];

              if (sessionEntityUUID2)
              {
                v32 = objc_autoreleasePoolPush();
                selfCopy2 = self;
                v34 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
                {
                  v35 = HMFGetLogIdentifier();
                  *buf = v68;
                  *&buf[4] = v35;
                  *&buf[12] = 2112;
                  *&buf[14] = v15;
                  _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@Adding new significant event: %@", buf, 0x16u);

                  v8 = v73;
                }

                objc_autoreleasePoolPop(v32);
                significantEvents2 = [(HMDCameraRecordingSessionSignificantEventManager *)selfCopy2 significantEvents];
                [significantEvents2 addObject:v15];

                [v74 addObject:v15];
              }

              else
              {
                [v8 removeObject:v17];
                v48 = objc_autoreleasePoolPush();
                selfCopy3 = self;
                v50 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
                {
                  v51 = HMFGetLogIdentifier();
                  *buf = 0;
                  *&buf[8] = 0;
                  uUID = [v17 UUID];

                  if (uUID)
                  {
                    uUID2 = [v17 UUID];
                    [uUID2 getUUIDBytes:buf];
                  }

                  else
                  {
                    *buf = *MEMORY[0x277D0F960];
                  }

                  v85 = *buf;
                  *buf = 138544130;
                  *&buf[4] = v51;
                  *&buf[12] = 1040;
                  *&buf[14] = 16;
                  *&buf[18] = 2096;
                  *&buf[20] = &v85;
                  v88 = 2112;
                  v89 = v15;
                  _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_INFO, "%{public}@Updating previous significant event with UUID %{uuid_t}.16P using new significant event: %@", buf, 0x26u);

                  self = selfCopy;
                  v8 = v73;
                }

                objc_autoreleasePoolPop(v48);
                v58 = [v17 mutableCopy];
                dateOfOccurrence = [v15 dateOfOccurrence];
                [v58 setDateOfOccurrence:dateOfOccurrence];

                sessionEntityUUID3 = [v15 sessionEntityUUID];
                [v58 setSessionEntityUUID:sessionEntityUUID3];

                faceClassifications = [v15 faceClassifications];
                [v58 setFaceClassifications:faceClassifications];

                heroFrameData = [v15 heroFrameData];
                [v58 setHeroFrameData:heroFrameData];

                faceCropData = [v15 faceCropData];
                [v58 setFaceCropData:faceCropData];

                [v15 timeOffsetWithinClip];
                [v58 setTimeOffsetWithinClip:?];
                v64 = [v58 copy];
                [v74 addObject:v64];
              }

              goto LABEL_38;
            }

            v21 = v20;
            faceClassifications2 = [v15 faceClassifications];
            v76[0] = MEMORY[0x277D85DD0];
            v76[1] = 3221225472;
            v76[2] = __110__HMDCameraRecordingSessionSignificantEventManager__filteredAndUpdatedSignificantEventsFromSignificantEvents___block_invoke_2;
            v76[3] = &unk_279727788;
            v23 = v21;
            v77 = v23;
            v24 = [faceClassifications2 na_filter:v76];

            if ([v24 count])
            {
              [v8 removeObject:v23];
              v25 = objc_autoreleasePoolPush();
              selfCopy4 = self;
              v27 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
              {
                v28 = HMFGetLogIdentifier();
                *buf = 0;
                *&buf[8] = 0;
                uUID3 = [v23 UUID];

                if (uUID3)
                {
                  uUID4 = [v23 UUID];
                  [uUID4 getUUIDBytes:buf];
                }

                else
                {
                  *buf = *MEMORY[0x277D0F960];
                }

                v86 = *buf;
                *buf = 138544130;
                *&buf[4] = v28;
                *&buf[12] = 2112;
                *&buf[14] = v24;
                *&buf[22] = 1040;
                *&buf[24] = 16;
                v88 = 2096;
                v89 = &v86;
                _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Adding new face classifications %@ to previous significant event with UUID: %{uuid_t}.16P", buf, 0x26u);

                self = selfCopy;
              }

              objc_autoreleasePoolPop(v25);
              v54 = [v23 mutableCopy];
              faceClassifications3 = [v23 faceClassifications];
              v56 = [faceClassifications3 setByAddingObjectsFromSet:v24];
              [v54 setFaceClassifications:v56];

              v57 = [v54 copy];
              [v74 addObject:v57];

              v8 = v73;
              v13 = v69;
LABEL_38:

              goto LABEL_39;
            }

            v13 = v69;
          }

          v42 = objc_autoreleasePoolPush();
          selfCopy5 = self;
          v44 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            v45 = HMFGetLogIdentifier();
            *buf = 0;
            *&buf[8] = 0;
            uUID5 = [v15 UUID];

            if (uUID5)
            {
              uUID6 = [v15 UUID];
              [uUID6 getUUIDBytes:buf];
            }

            else
            {
              *buf = *MEMORY[0x277D0F960];
            }

            v84 = *buf;
            *buf = 138543874;
            *&buf[4] = v45;
            *&buf[12] = 1040;
            *&buf[14] = 16;
            *&buf[18] = 2096;
            *&buf[20] = &v84;
            _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_INFO, "%{public}@Skipping already-represented significant event with UUID: %{uuid_t}.16P", buf, 0x1Cu);

            self = selfCopy;
            v8 = v73;
          }

          objc_autoreleasePoolPop(v42);
          goto LABEL_38;
        }

        v37 = objc_autoreleasePoolPush();
        selfCopy6 = self;
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          v40 = HMFGetLogIdentifier();
          *buf = v68;
          *&buf[4] = v40;
          *&buf[12] = 2112;
          *&buf[14] = v15;
          _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_INFO, "%{public}@Adding new significant event: %@", buf, 0x16u);

          self = selfCopy;
        }

        objc_autoreleasePoolPop(v37);
        significantEvents3 = [(HMDCameraRecordingSessionSignificantEventManager *)selfCopy6 significantEvents];
        [significantEvents3 addObject:v15];

        [v74 addObject:v15];
LABEL_39:
        ++v14;
      }

      while (v13 != v14);
      v13 = [obj countByEnumeratingWithState:&v80 objects:v90 count:16];
    }

    while (v13);
  }

  v65 = [v74 copy];
  v66 = *MEMORY[0x277D85DE8];

  return v65;
}

uint64_t __110__HMDCameraRecordingSessionSignificantEventManager__filteredAndUpdatedSignificantEventsFromSignificantEvents___block_invoke_16(uint64_t a1, void *a2)
{
  v3 = [a2 sessionEntityUUID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

uint64_t __110__HMDCameraRecordingSessionSignificantEventManager__filteredAndUpdatedSignificantEventsFromSignificantEvents___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) faceClassifications];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __110__HMDCameraRecordingSessionSignificantEventManager__filteredAndUpdatedSignificantEventsFromSignificantEvents___block_invoke_3;
  v8[3] = &unk_279727788;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_allObjectsPassTest:v8];

  return v6;
}

uint64_t __110__HMDCameraRecordingSessionSignificantEventManager__filteredAndUpdatedSignificantEventsFromSignificantEvents___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 personManagerUUID];
  v5 = [*(a1 + 32) personManagerUUID];
  v6 = [v4 isEqual:v5];

  v7 = [v3 personUUID];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = [*(a1 + 32) personUUID];
    v8 = v9 != 0;
  }

  return v8 | ((v6 & 1) == 0);
}

uint64_t __110__HMDCameraRecordingSessionSignificantEventManager__filteredAndUpdatedSignificantEventsFromSignificantEvents___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 sessionEntityUUID];
  if (v5 && (v6 = v5, [v4 sessionEntityUUID], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = 0;
  }

  else
  {
    v9 = [v4 sessionEntityUUID];

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = -1;
    }
  }

  return v8;
}

- (id)_significantEventsForEmptyAnalyzerResult:(id)result dateOfOccurrence:(id)occurrence timeOffsetWithinClip:(double)clip
{
  occurrenceCopy = occurrence;
  resultCopy = result;
  significantEventUUIDFactory = [(HMDCameraRecordingSessionSignificantEventManager *)self significantEventUUIDFactory];
  v11 = significantEventUUIDFactory[2](significantEventUUIDFactory, 0, 0);

  v12 = [(HMDCameraRecordingSessionSignificantEvent *)[HMDMutableCameraRecordingSessionSignificantEvent alloc] initWithUUID:v11];
  outcome = [resultCopy outcome];
  if ([outcome isSuccess])
  {
    v14 = 1;
  }

  else
  {
    v14 = 6;
  }

  [(HMDCameraRecordingSessionSignificantEvent *)v12 setReason:v14];

  [(HMDCameraRecordingSessionSignificantEvent *)v12 setDateOfOccurrence:occurrenceCopy];
  [(HMDCameraRecordingSessionSignificantEvent *)v12 setConfidenceLevel:100];
  thumbnails = [resultCopy thumbnails];

  firstObject = [thumbnails firstObject];
  data = [firstObject data];
  [(HMDCameraRecordingSessionSignificantEvent *)v12 setHeroFrameData:data];

  [(HMDCameraRecordingSessionSignificantEvent *)v12 setTimeOffsetWithinClip:clip];
  v18 = [MEMORY[0x277CBEB98] setWithObject:v12];
  v19 = [(HMDCameraRecordingSessionSignificantEventManager *)self _filteredAndUpdatedSignificantEventsFromSignificantEvents:v18];

  return v19;
}

- (id)_significantEventsForAnalyzerEvent:(id)event dateOfOccurrence:(id)occurrence heroFrameData:(id)data timeOffsetWithinClip:(double)clip recordingEventTriggers:(unint64_t)triggers
{
  v43 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  occurrenceCopy = occurrence;
  dataCopy = data;
  workQueue = [(HMDCameraRecordingSessionSignificantEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v14 = [MEMORY[0x277CBEB58] set];
  v15 = objc_opt_class();
  v16 = significantEventReasonFromVideoAnalyzerEventClass(v15);
  confidenceLevel = [eventCopy confidenceLevel];
  v18 = confidenceLevel;
  if (confidenceLevel >= 3)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v22;
      v41 = 2048;
      v42 = v18;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Unknown analyzer event confidence level: %ld", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v19 = 100;
  }

  else
  {
    v19 = qword_253D4B8E8[confidenceLevel];
  }

  v23 = MEMORY[0x277CBEB98];
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v16, triggers}];
  v25 = [v23 setWithObject:v24];
  v26 = HMCameraSignificantEventTypesFromReasons();

  if ((v26 & v37) != 0)
  {
    v27 = occurrenceCopy;
    v28 = dataCopy;
    v29 = [(HMDCameraRecordingSessionSignificantEventManager *)self _faceRecognitionSignificantEventForAnalyzerEvent:eventCopy dateOfOccurrence:occurrenceCopy heroFrameData:dataCopy timeOffsetWithinClip:v19 confidenceLevel:clip];
    if (v29)
    {
      [v14 addObject:v29];
    }

    else
    {
      significantEventUUIDFactory = [(HMDCameraRecordingSessionSignificantEventManager *)self significantEventUUIDFactory];
      v32 = (significantEventUUIDFactory)[2](significantEventUUIDFactory, eventCopy, 0);

      v33 = [(HMDCameraRecordingSessionSignificantEvent *)[HMDMutableCameraRecordingSessionSignificantEvent alloc] initWithUUID:v32];
      [(HMDCameraRecordingSessionSignificantEvent *)v33 setReason:v16];
      [(HMDCameraRecordingSessionSignificantEvent *)v33 setDateOfOccurrence:occurrenceCopy];
      [(HMDCameraRecordingSessionSignificantEvent *)v33 setConfidenceLevel:v19];
      [(HMDCameraRecordingSessionSignificantEvent *)v33 setHeroFrameData:v28];
      [(HMDCameraRecordingSessionSignificantEvent *)v33 setTimeOffsetWithinClip:clip];
      [v14 addObject:v33];
    }

    v30 = [v14 copy];
  }

  else
  {
    v30 = [MEMORY[0x277CBEB98] set];
    v27 = occurrenceCopy;
    v28 = dataCopy;
  }

  v34 = *MEMORY[0x277D85DE8];

  return v30;
}

- (id)_significantEventsForFrameResult:(id)result analyzerResult:(id)analyzerResult dateOfOccurrence:(id)occurrence timeOffsetWithinClip:(double)clip recordingEventTriggers:(unint64_t)triggers
{
  v62 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  analyzerResultCopy = analyzerResult;
  occurrenceCopy = occurrence;
  workQueue = [(HMDCameraRecordingSessionSignificantEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    frame = [resultCopy frame];
    events = [resultCopy events];
    LODWORD(buf.value) = 138543874;
    *(&buf.value + 4) = v16;
    LOWORD(buf.flags) = 2112;
    *(&buf.flags + 2) = frame;
    HIWORD(buf.epoch) = 2112;
    v61 = events;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Finding significant events for frame result %@ with analyzer events: %@", &buf, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  v19 = [MEMORY[0x277CBEB58] set];
  frame2 = [resultCopy frame];
  v58 = 0;
  v21 = [frame2 compressedFrameWithScale:&v58 quality:1.0 error:1.0];
  v46 = v58;

  if (!v21)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      frame3 = [resultCopy frame];
      LODWORD(buf.value) = 138543874;
      *(&buf.value + 4) = v25;
      LOWORD(buf.flags) = 2112;
      *(&buf.flags + 2) = frame3;
      HIWORD(buf.epoch) = 2112;
      v61 = v46;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to create hero frame from frame %@: %@", &buf, 0x20u);
    }

    objc_autoreleasePoolPop(v22);
  }

  v27 = selfCopy;
  data = [v21 data];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v29 = resultCopy;
  obj = [resultCopy events];
  v30 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v55;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v55 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v54 + 1) + 8 * i);
        frame4 = [v29 frame];
        v36 = frame4;
        if (frame4)
        {
          [frame4 presentationTimeStamp];
        }

        else
        {
          memset(&lhs, 0, sizeof(lhs));
        }

        fragment = [analyzerResultCopy fragment];
        v38 = fragment;
        if (fragment)
        {
          [fragment timeRange];
        }

        else
        {
          memset(&v51, 0, sizeof(v51));
        }

        rhs = v51;
        CMTimeSubtract(&buf, &lhs, &rhs);
        Seconds = CMTimeGetSeconds(&buf);

        v40 = [occurrenceCopy dateByAddingTimeInterval:Seconds];
        clip = [(HMDCameraRecordingSessionSignificantEventManager *)v27 _significantEventsForAnalyzerEvent:v34 dateOfOccurrence:v40 heroFrameData:data timeOffsetWithinClip:triggers recordingEventTriggers:Seconds + clip];
        [v19 unionSet:clip];
      }

      v31 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
    }

    while (v31);
  }

  v42 = [v19 copy];
  v43 = *MEMORY[0x277D85DE8];

  return v42;
}

- (BOOL)_isAnyEventInAnalyzerEvents:(id)events includedInRecordingEventTriggers:(unint64_t)triggers
{
  eventsCopy = events;
  workQueue = [(HMDCameraRecordingSessionSignificantEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __113__HMDCameraRecordingSessionSignificantEventManager__isAnyEventInAnalyzerEvents_includedInRecordingEventTriggers___block_invoke;
  v9[3] = &unk_279727718;
  v9[4] = self;
  v9[5] = triggers;
  LOBYTE(triggers) = [eventsCopy na_any:v9];

  return triggers;
}

BOOL __113__HMDCameraRecordingSessionSignificantEventManager__isAnyEventInAnalyzerEvents_includedInRecordingEventTriggers___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_class();
  v5 = significantEventReasonFromVideoAnalyzerEventClass(v4);
  v6 = MEMORY[0x277CBEB98];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
  v8 = [v6 setWithObject:v7];
  v9 = HMCameraSignificantEventTypesFromReasons();

  v10 = *(a1 + 40) & v9;
  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Recording fragment due to recording trigger event: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10 != 0;
}

- (BOOL)_isAnyEventInAnalyzerFrameResults:(id)results includedInRecordingEventTriggers:(unint64_t)triggers
{
  resultsCopy = results;
  workQueue = [(HMDCameraRecordingSessionSignificantEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __119__HMDCameraRecordingSessionSignificantEventManager__isAnyEventInAnalyzerFrameResults_includedInRecordingEventTriggers___block_invoke;
  v9[3] = &unk_2797276F0;
  v9[4] = self;
  v9[5] = triggers;
  LOBYTE(triggers) = [resultsCopy na_any:v9];

  return triggers;
}

uint64_t __119__HMDCameraRecordingSessionSignificantEventManager__isAnyEventInAnalyzerFrameResults_includedInRecordingEventTriggers___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 events];
  v5 = [v3 _isAnyEventInAnalyzerEvents:v4 includedInRecordingEventTriggers:*(a1 + 40)];

  return v5;
}

- (void)resetState
{
  v12 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingSessionSignificantEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Resetting state", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  significantEvents = [(HMDCameraRecordingSessionSignificantEventManager *)selfCopy significantEvents];
  [significantEvents removeAllObjects];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)significantEventsForAnalyzerFragmentResult:(id)result dateOfOccurrence:(id)occurrence timeOffsetWithinClip:(double)clip recordingEventTriggers:(unint64_t)triggers
{
  v71 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  occurrenceCopy = occurrence;
  workQueue = [(HMDCameraRecordingSessionSignificantEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  outcome = [resultCopy outcome];
  isSuccess = [outcome isSuccess];

  if (isSuccess)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    obj = [resultCopy frameResults];
    v48 = occurrenceCopy;
    v49 = resultCopy;
    v46 = [obj countByEnumeratingWithState:&v63 objects:v70 count:16];
    if (v46)
    {
      v44 = *v64;
      do
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v64 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v16 = [(HMDCameraRecordingSessionSignificantEventManager *)self _significantEventsForFrameResult:*(*(&v63 + 1) + 8 * i) analyzerResult:resultCopy dateOfOccurrence:occurrenceCopy timeOffsetWithinClip:triggers recordingEventTriggers:clip];
          v17 = [(HMDCameraRecordingSessionSignificantEventManager *)self _filteredAndUpdatedSignificantEventsFromSignificantEvents:v16];
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v18 = [v17 countByEnumeratingWithState:&v59 objects:v69 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v60;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v60 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v59 + 1) + 8 * j);
                uUID = [v22 UUID];
                [dictionary setObject:v22 forKeyedSubscript:uUID];
              }

              v19 = [v17 countByEnumeratingWithState:&v59 objects:v69 count:16];
            }

            while (v19);
          }

          occurrenceCopy = v48;
          resultCopy = v49;
        }

        v46 = [obj countByEnumeratingWithState:&v63 objects:v70 count:16];
      }

      while (v46);
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obja = [resultCopy events];
    v47 = [obja countByEnumeratingWithState:&v55 objects:v68 count:16];
    if (v47)
    {
      v45 = *v56;
      do
      {
        for (k = 0; k != v47; ++k)
        {
          if (*v56 != v45)
          {
            objc_enumerationMutation(obja);
          }

          v25 = *(*(&v55 + 1) + 8 * k);
          thumbnails = [resultCopy thumbnails];
          firstObject = [thumbnails firstObject];
          data = [firstObject data];
          v29 = [(HMDCameraRecordingSessionSignificantEventManager *)self _significantEventsForAnalyzerEvent:v25 dateOfOccurrence:occurrenceCopy heroFrameData:data timeOffsetWithinClip:triggers recordingEventTriggers:clip];

          v30 = [(HMDCameraRecordingSessionSignificantEventManager *)self _filteredAndUpdatedSignificantEventsFromSignificantEvents:v29];
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v31 = [v30 countByEnumeratingWithState:&v51 objects:v67 count:16];
          if (v31)
          {
            v32 = v31;
            v33 = *v52;
            do
            {
              for (m = 0; m != v32; ++m)
              {
                if (*v52 != v33)
                {
                  objc_enumerationMutation(v30);
                }

                v35 = *(*(&v51 + 1) + 8 * m);
                uUID2 = [v35 UUID];
                [dictionary setObject:v35 forKeyedSubscript:uUID2];
              }

              v32 = [v30 countByEnumeratingWithState:&v51 objects:v67 count:16];
            }

            while (v32);
          }

          occurrenceCopy = v48;
          resultCopy = v49;
        }

        v47 = [obja countByEnumeratingWithState:&v55 objects:v68 count:16];
      }

      while (v47);
    }

    if ([dictionary count])
    {
      v37 = MEMORY[0x277CBEB98];
      allValues = [dictionary allValues];
      v39 = [v37 setWithArray:allValues];
    }

    else
    {
      v39 = [(HMDCameraRecordingSessionSignificantEventManager *)self _significantEventsForEmptyAnalyzerResult:resultCopy dateOfOccurrence:occurrenceCopy timeOffsetWithinClip:clip];
    }
  }

  else
  {
    v39 = [(HMDCameraRecordingSessionSignificantEventManager *)self _significantEventsForEmptyAnalyzerResult:resultCopy dateOfOccurrence:occurrenceCopy timeOffsetWithinClip:clip];
  }

  v40 = *MEMORY[0x277D85DE8];

  return v39;
}

- (BOOL)isAnyEventInAnalyzerFragmentResult:(id)result includedInRecordingEventTriggers:(unint64_t)triggers
{
  resultCopy = result;
  workQueue = [(HMDCameraRecordingSessionSignificantEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  events = [resultCopy events];
  if ([(HMDCameraRecordingSessionSignificantEventManager *)self _isAnyEventInAnalyzerEvents:events includedInRecordingEventTriggers:triggers])
  {
    v9 = 1;
  }

  else
  {
    frameResults = [resultCopy frameResults];
    v9 = [(HMDCameraRecordingSessionSignificantEventManager *)self _isAnyEventInAnalyzerFrameResults:frameResults includedInRecordingEventTriggers:triggers];
  }

  return v9;
}

- (HMDCameraRecordingSessionSignificantEventManager)initWithWorkQueue:(id)queue faceClassificationResolver:(id)resolver logIdentifier:(id)identifier
{
  queueCopy = queue;
  resolverCopy = resolver;
  identifierCopy = identifier;
  if (queueCopy)
  {
    v12 = identifierCopy;
    v21.receiver = self;
    v21.super_class = HMDCameraRecordingSessionSignificantEventManager;
    v13 = [(HMDCameraRecordingSessionSignificantEventManager *)&v21 init];
    v14 = v13;
    if (v13)
    {
      objc_storeStrong(&v13->_workQueue, queue);
      objc_storeStrong(&v14->_faceClassificationResolver, resolver);
      objc_storeStrong(&v14->_logIdentifier, identifier);
      array = [MEMORY[0x277CBEB18] array];
      significantEvents = v14->_significantEvents;
      v14->_significantEvents = array;

      significantEventUUIDFactory = v14->_significantEventUUIDFactory;
      v14->_significantEventUUIDFactory = &__block_literal_global_54239;

      faceClassificationUUIDFactory = v14->_faceClassificationUUIDFactory;
      v14->_faceClassificationUUIDFactory = &__block_literal_global_5_54240;
    }

    return v14;
  }

  else
  {
    v20 = _HMFPreconditionFailure();
    return __111__HMDCameraRecordingSessionSignificantEventManager_initWithWorkQueue_faceClassificationResolver_logIdentifier___block_invoke_2(v20);
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t13_54252 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t13_54252, &__block_literal_global_27_54253);
  }

  v3 = logCategory__hmf_once_v14_54254;

  return v3;
}

uint64_t __63__HMDCameraRecordingSessionSignificantEventManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v14_54254;
  logCategory__hmf_once_v14_54254 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end
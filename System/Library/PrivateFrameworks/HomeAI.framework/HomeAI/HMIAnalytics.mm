@interface HMIAnalytics
+ (BOOL)sendEventWithName:(id)a3 payloadBuilder:(id)a4;
+ (BOOL)upload;
+ (id)payloadWithCamera:(id)a3;
+ (int64_t)bucketForValue:(int64_t)a3 usingBuckets:(id)a4;
+ (void)sendEventForClusteringTask:(id)a3;
+ (void)sendEventForFaceEvent:(id)a3 homePersonManagerUUID:(id)a4 camera:(id)a5;
+ (void)sendEventForPersonRecognitionType:(int64_t)a3 camera:(id)a4;
+ (void)sendEventForPersonsModels:(id)a3;
+ (void)sendEventsForFragmentResult:(id)a3;
+ (void)videoAnalyzerDidAnalyzeFragmentWithResult:(id)a3 state:(id)a4;
+ (void)videoAnalyzerDidCreateTimelapseFragment:(id)a3 state:(id)a4;
+ (void)videoAnalyzerDidFindFaceEvent:(id)a3 homePersonManagerUUID:(id)a4 camera:(id)a5;
+ (void)videoAnalyzerDidTerminateWithError:(id)a3 state:(id)a4;
+ (void)videoPackageAnalyzerDidClassifyCandidateAsPackage:(BOOL)a3 camera:(id)a4;
+ (void)videoPackageAnalyzerDidResetReferenceImageWithInterval:(double)a3 camera:(id)a4;
@end

@implementation HMIAnalytics

+ (BOOL)upload
{
  v2 = +[HMIPreference sharedInstance];
  v3 = [v2 BOOLPreferenceForKey:@"uploadVideoAnalysisEvent" defaultValue:1];

  return v3;
}

+ (BOOL)sendEventWithName:(id)a3 payloadBuilder:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([a1 upload])
  {
    if ([a1 lazyPayloads])
    {
      v8 = AnalyticsSendEventLazy();
    }

    else
    {
      v9 = v7[2](v7);
      AnalyticsSendEvent();

      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)payloadWithCamera:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [v3 manufacturer];

  if (v5)
  {
    v6 = [v3 manufacturer];
    [v4 setObject:v6 forKeyedSubscript:@"cameraManufacturer"];
  }

  v7 = [v3 model];

  if (v7)
  {
    v8 = [v3 model];
    [v4 setObject:v8 forKeyedSubscript:@"cameraModel"];
  }

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "hasBattery")}];
  [v4 setObject:v9 forKeyedSubscript:@"cameraHasBattery"];

  v10 = [v4 copy];

  return v10;
}

+ (void)sendEventForPersonRecognitionType:(int64_t)a3 camera:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x277CBEB38] dictionary];
  if (v6)
  {
    v8 = [HMIAnalytics payloadWithCamera:v6];
    [v7 addEntriesFromDictionary:v8];
  }

  if (!a3)
  {
    v9 = @"face";
    goto LABEL_7;
  }

  if (a3 == 1)
  {
    v9 = @"torso";
LABEL_7:
    [v7 setObject:v9 forKeyedSubscript:@"recognitionType"];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__HMIAnalytics_sendEventForPersonRecognitionType_camera___block_invoke;
  v11[3] = &unk_2787549B0;
  v12 = v7;
  v10 = v7;
  [a1 sendEventWithName:@"com.apple.HomeAI.PersonRecognitionEvent" payloadBuilder:v11];
}

+ (void)videoAnalyzerDidFindFaceEvent:(id)a3 homePersonManagerUUID:(id)a4 camera:(id)a5
{
  v15 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v15 faceRecognition];
  v10 = [v9 classifications];
  v11 = [v10 na_any:&__block_literal_global_24];

  v12 = [v15 faceRecognition];
  v13 = [v12 classifications];
  v14 = [v13 na_any:&__block_literal_global_25];

  if (v11)
  {
    [HMIAnalytics sendEventForPersonRecognitionType:0 camera:v8];
  }

  if (v14)
  {
    [HMIAnalytics sendEventForPersonRecognitionType:1 camera:v8];
  }

  else
  {
    [HMIAnalytics sendEventForFaceEvent:v15 homePersonManagerUUID:v7 camera:v8];
  }
}

BOOL __75__HMIAnalytics_videoAnalyzerDidFindFaceEvent_homePersonManagerUUID_camera___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ([v2 fromTorsoClassification] & 1) == 0 && objc_msgSend(v2, "familiarity") == 2;

  return v3;
}

BOOL __75__HMIAnalytics_videoAnalyzerDidFindFaceEvent_homePersonManagerUUID_camera___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 fromTorsoClassification])
  {
    v3 = [v2 familiarity] == 2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (void)sendEventForFaceEvent:(id)a3 homePersonManagerUUID:(id)a4 camera:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277CBEB38] dictionary];
  if (v10)
  {
    v12 = [HMIAnalytics payloadWithCamera:v10];
    [v11 addEntriesFromDictionary:v12];
  }

  v13 = MEMORY[0x277CCABB0];
  v14 = [v8 confidence];
  [v14 value];
  v16 = [v13 numberWithDouble:ceil(v15 * 10.0)];
  [v11 setObject:v16 forKeyedSubscript:@"detectionScore"];

  v17 = [v8 userInfo];
  v18 = [v17 objectForKeyedSubscript:@"FaceFilteredState"];

  if (v18)
  {
    [v11 setObject:v18 forKeyedSubscript:@"faceFilteredState"];
  }

  v19 = [v8 faceRecognition];

  if (v19)
  {
    v32 = a1;
    v20 = [MEMORY[0x277CBEB58] set];
    v21 = [v8 faceRecognition];
    v22 = [v21 classifications];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __67__HMIAnalytics_sendEventForFaceEvent_homePersonManagerUUID_camera___block_invoke;
    v35[3] = &unk_2787549D8;
    v36 = v9;
    v23 = v11;
    v37 = v23;
    v24 = v20;
    v38 = v24;
    [v22 na_each:v35];

    if ([v24 count])
    {
      v25 = [v24 allObjects];
      v26 = [v25 sortedArrayUsingComparator:&__block_literal_global_39];

      v27 = [v26 firstObject];
      v28 = HMIFaceFamiliarityAsString([v27 integerValue]);
      [v23 setObject:v28 forKeyedSubscript:@"externalFamiliarity"];
    }

    v29 = [v8 faceRecognition];
    v30 = HMISessionEntityAssignmentAsString([v29 sessionEntityAssignment]);
    [v23 setObject:v30 forKeyedSubscript:@"sessionEntityAssignment"];

    a1 = v32;
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __67__HMIAnalytics_sendEventForFaceEvent_homePersonManagerUUID_camera___block_invoke_3;
  v33[3] = &unk_2787549B0;
  v34 = v11;
  v31 = v11;
  [a1 sendEventWithName:@"com.apple.HomeAI.FaceEvent" payloadBuilder:v33];
}

void __67__HMIAnalytics_sendEventForFaceEvent_homePersonManagerUUID_camera___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 sourceUUID];
  v5 = [v4 isEqual:*(a1 + 32)];

  if (v5)
  {
    v6 = [v3 familiarity];

    v10 = HMIFaceFamiliarityAsString(v6);
    [*(a1 + 40) setObject:? forKeyedSubscript:?];
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = MEMORY[0x277CCABB0];
    v9 = [v3 familiarity];

    v10 = [v8 numberWithInteger:v9];
    [v7 addObject:?];
  }
}

BOOL __67__HMIAnalytics_sendEventForFaceEvent_homePersonManagerUUID_camera___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 integerValue];
  v6 = [v4 integerValue];

  return v5 > v6;
}

+ (void)sendEventForClusteringTask:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "numberOfFaceprintsClustered")}];
  [v5 setObject:v6 forKeyedSubscript:@"faceprintsClustered"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "numberOfClusters")}];
  [v5 setObject:v7 forKeyedSubscript:@"clusters"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "numberOfPersonsCreated")}];
  [v5 setObject:v8 forKeyedSubscript:@"personsCreated"];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "numberOfUnknownFaceprintsAssociated")}];
  [v5 setObject:v9 forKeyedSubscript:@"faceprintsAssociated"];

  v10 = MEMORY[0x277CCABB0];
  [v4 faceprintingDuration];
  v11 = [v10 numberWithDouble:?];
  [v5 setObject:v11 forKeyedSubscript:@"faceprintingDuration"];

  v12 = MEMORY[0x277CCABB0];
  [v4 clusteringDuration];
  v13 = [v12 numberWithDouble:?];
  [v5 setObject:v13 forKeyedSubscript:@"clusteringDuration"];

  v14 = MEMORY[0x277CCABB0];
  [v4 totalDuration];
  v15 = [v14 numberWithDouble:?];
  [v5 setObject:v15 forKeyedSubscript:@"totalDuration"];

  v16 = [v4 error];

  if (v16)
  {
    v17 = MEMORY[0x277CCABB0];
    v18 = [v4 error];
    v19 = [v17 numberWithInteger:{objc_msgSend(v18, "code")}];
    [v5 setObject:v19 forKeyedSubscript:@"errorCode"];

    v20 = [v4 error];
    v21 = [v20 description];
    [v5 setObject:v21 forKeyedSubscript:@"errorDescription"];
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __43__HMIAnalytics_sendEventForClusteringTask___block_invoke;
  v23[3] = &unk_2787549B0;
  v24 = v5;
  v22 = v5;
  [a1 sendEventWithName:@"com.apple.HomeAI.FaceClustering" payloadBuilder:v23];
}

+ (void)sendEventForPersonsModels:(id)a3
{
  v36[7] = *MEMORY[0x277D85DE8];
  v24 = a3;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v4 = [MEMORY[0x277CBEB18] array];
  v22 = a1;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [v24 modelSummaries];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __42__HMIAnalytics_sendEventForPersonsModels___block_invoke;
  v27[3] = &unk_278754A48;
  v7 = v4;
  v28 = v7;
  v30 = &v31;
  v8 = v5;
  v29 = v8;
  [v6 na_each:v27];

  v23 = [MEMORY[0x277CCABB0] numberWithInteger:{+[HMIAnalytics bucketForValue:usingBuckets:](HMIAnalytics, "bucketForValue:usingBuckets:", objc_msgSend(v7, "count"), &unk_284075588)}];
  v9 = [v7 valueForKeyPath:@"@avg.self"];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{+[HMIAnalytics bucketForValue:usingBuckets:](HMIAnalytics, "bucketForValue:usingBuckets:", objc_msgSend(v9, "integerValue"), &unk_2840755A0)}];

  if (v32[3])
  {
    v11 = MEMORY[0x277CCABB0];
    v12 = [v8 count];
    v13 = [v11 numberWithUnsignedInteger:v12 / v32[3]];
  }

  else
  {
    v13 = &unk_284075138;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{+[HMIAnalytics bucketForValue:usingBuckets:](HMIAnalytics, "bucketForValue:usingBuckets:", objc_msgSend(v13, "integerValue"), &unk_2840755B8)}];

  v15 = [v8 valueForKeyPath:@"@avg.self"];
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{+[HMIAnalytics bucketForValue:usingBuckets:](HMIAnalytics, "bucketForValue:usingBuckets:", objc_msgSend(v15, "integerValue"), &unk_2840755D0)}];

  v17 = [MEMORY[0x277CCABB0] numberWithInteger:{+[HMIAnalytics bucketForValue:usingBuckets:](HMIAnalytics, "bucketForValue:usingBuckets:", objc_msgSend(v24, "homeToExternalEquivalencies"), &unk_2840755E8)}];
  v18 = [MEMORY[0x277CCABB0] numberWithInteger:{+[HMIAnalytics bucketForValue:usingBuckets:](HMIAnalytics, "bucketForValue:usingBuckets:", objc_msgSend(v24, "externalToExternalEquivalencies"), &unk_284075600)}];
  v35[0] = @"externalLibraries";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v32[3]];
  v36[0] = v19;
  v36[1] = v23;
  v35[1] = @"homeIdentities";
  v35[2] = @"averageExternalIdentities";
  v36[2] = v14;
  v36[3] = v10;
  v35[3] = @"averageHomeFaceCrops";
  v35[4] = @"averageExternalFaceCrops";
  v36[4] = v16;
  v36[5] = v17;
  v35[5] = @"homeToExternal";
  v35[6] = @"externalToExternal";
  v36[6] = v18;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:7];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __42__HMIAnalytics_sendEventForPersonsModels___block_invoke_138;
  v25[3] = &unk_278754A70;
  v21 = v20;
  v26 = v21;
  [v22 sendEventWithName:@"com.apple.HomeAI.PersonsModels" payloadBuilder:v25];

  _Block_object_dispose(&v31, 8);
}

void __42__HMIAnalytics_sendEventForPersonsModels___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isExternalLibrary])
  {
    ++*(*(*(a1 + 48) + 8) + 24);
    v4 = [v3 faceCountsByPerson];

    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __42__HMIAnalytics_sendEventForPersonsModels___block_invoke_3;
    v10 = &unk_278754A20;
    v5 = &v11;
    v11 = *(a1 + 40);
    v6 = &v7;
  }

  else
  {
    v4 = [v3 faceCountsByPerson];

    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __42__HMIAnalytics_sendEventForPersonsModels___block_invoke_2;
    v15 = &unk_278754A20;
    v5 = &v16;
    v16 = *(a1 + 32);
    v6 = &v12;
  }

  [v4 na_each:{v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16}];
}

+ (int64_t)bucketForValue:(int64_t)a3 usingBuckets:(id)a4
{
  v5 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__HMIAnalytics_bucketForValue_usingBuckets___block_invoke;
  v12[3] = &__block_descriptor_40_e18_B16__0__NSNumber_8l;
  v12[4] = a3;
  v6 = [v5 na_firstObjectPassingTest:v12];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [v5 lastObject];
  }

  v9 = v8;

  v10 = [v9 integerValue];
  return v10;
}

+ (void)sendEventsForFragmentResult:(id)a3
{
  v4 = a3;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v5 = [v4 configuration];
  v6 = [v5 activityZones];

  if ([v6 count])
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = [v7 isInclusion];

    if (v8)
    {
      v9 = @"inclusion";
    }

    else
    {
      v9 = @"exclusion";
    }
  }

  else
  {
    v9 = @"None";
  }

  v10 = [v4 frameResults];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __44__HMIAnalytics_sendEventsForFragmentResult___block_invoke;
  v15[3] = &unk_278754AE0;
  v15[4] = v20;
  v15[5] = &v16;
  [v10 na_each:v15];

  if (v17[6] >= 1)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __44__HMIAnalytics_sendEventsForFragmentResult___block_invoke_3;
    v11[3] = &unk_278754B08;
    v14 = &v16;
    v12 = v9;
    v13 = v20;
    [a1 sendEventWithName:@"com.apple.HomeAI.MotionScore" payloadBuilder:v11];
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

void __44__HMIAnalytics_sendEventsForFragmentResult___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 events];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__HMIAnalytics_sendEventsForFragmentResult___block_invoke_2;
  v4[3] = &unk_278754AB8;
  v5 = *(a1 + 32);
  [v3 na_each:v4];
}

void __44__HMIAnalytics_sendEventsForFragmentResult___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    [v5 motionScore];
    *(*(*(a1 + 32) + 8) + 24) = v4 + *(*(*(a1 + 32) + 8) + 24);
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

id __44__HMIAnalytics_sendEventsForFragmentResult___block_invoke_3(void *a1, double a2)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  *&a2 = *(*(a1[5] + 8) + 24) / *(*(a1[6] + 8) + 24);
  v6[0] = @"zoneType";
  v6[1] = @"motionScore";
  v7[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithFloat:a2];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

+ (void)videoAnalyzerDidTerminateWithError:(id)a3 state:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__HMIAnalytics_videoAnalyzerDidTerminateWithError_state___block_invoke;
  v10[3] = &unk_278754B30;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  [a1 sendEventWithName:@"com.apple.HomeAI.VideoAnalyzer.DidTerminate_v0" payloadBuilder:v10];
}

id __57__HMIAnalytics_videoAnalyzerDidTerminateWithError_state___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [*(a1 + 32) configuration];
  v4 = [v3 camera];

  if (v4)
  {
    v5 = [HMIAnalytics payloadWithCamera:v4];
    [v2 addEntriesFromDictionary:v5];
  }

  if (*(a1 + 40))
  {
    v6 = @"Success";
  }

  else
  {
    v6 = @"Fail";
  }

  [v2 setObject:v6 forKeyedSubscript:@"status"];
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = HMIErrorCodeName([v7 code]);
    [v2 setObject:v8 forKeyedSubscript:@"error"];

    v9 = [*(a1 + 40) userInfo];
    v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    if (v10)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(v10, "code")];
      [v2 setObject:v11 forKeyedSubscript:@"underlyingError"];
    }
  }

  v12 = MEMORY[0x277CCABB0];
  [*(a1 + 32) timeSinceAnalyzerStarted];
  v13 = [v12 numberWithDouble:?];
  [v2 setObject:v13 forKeyedSubscript:@"timeSinceAnalyzerStarted"];

  v14 = MEMORY[0x277CCABB0];
  [*(a1 + 32) averageAnalysisTime];
  v15 = [v14 numberWithDouble:?];
  [v2 setObject:v15 forKeyedSubscript:@"averageFrameAnalysisTime"];

  v16 = MEMORY[0x277CCABB0];
  [*(a1 + 32) delay];
  v17 = [v16 numberWithDouble:?];
  [v2 setObject:v17 forKeyedSubscript:@"averageDelay"];

  return v2;
}

+ (void)videoAnalyzerDidCreateTimelapseFragment:(id)a3 state:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__HMIAnalytics_videoAnalyzerDidCreateTimelapseFragment_state___block_invoke;
  v10[3] = &unk_278754B30;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  [a1 sendEventWithName:@"com.apple.HomeAI.VideoAnalyzer.DidCreateTimelapseFragment_v0" payloadBuilder:v10];
}

id __62__HMIAnalytics_videoAnalyzerDidCreateTimelapseFragment_state___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [*(a1 + 32) configuration];
  v4 = [v3 camera];

  if (v4)
  {
    v5 = [HMIAnalytics payloadWithCamera:v4];
    [v2 addEntriesFromDictionary:v5];
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    [v6 duration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  Seconds = CMTimeGetSeconds(&time);
  if (Seconds)
  {
    v8 = [*(a1 + 40) separableSegment];
    v9 = 8 * [v8 length] / Seconds;

    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
    [v2 setObject:v10 forKeyedSubscript:@"bitrate"];
  }

  return v2;
}

+ (void)videoAnalyzerDidAnalyzeFragmentWithResult:(id)a3 state:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__HMIAnalytics_videoAnalyzerDidAnalyzeFragmentWithResult_state___block_invoke;
  v10[3] = &unk_278754B30;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  [a1 sendEventWithName:@"com.apple.HomeAI.VideoAnalyzer.DidAnalyzeFragment_v5" payloadBuilder:v10];
}

id __64__HMIAnalytics_videoAnalyzerDidAnalyzeFragmentWithResult_state___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [*(a1 + 32) configuration];
  v4 = [v3 camera];

  if (v4)
  {
    v5 = [HMIAnalytics payloadWithCamera:v4];
    [v2 addEntriesFromDictionary:v5];
  }

  v6 = MEMORY[0x277CCABB0];
  v7 = [*(a1 + 32) dynamicConfiguration];
  v8 = [v6 numberWithBool:{objc_msgSend(v7, "recognizeFaces")}];
  [v2 setObject:v8 forKeyedSubscript:@"recognizeFaces"];

  v9 = [*(a1 + 32) dynamicConfiguration];
  v10 = [v9 eventTriggers];

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __64__HMIAnalytics_videoAnalyzerDidAnalyzeFragmentWithResult_state___block_invoke_2;
  v35[3] = &unk_278754B58;
  v11 = v2;
  v36 = v11;
  v38 = v10;
  v37 = *(a1 + 40);
  v12 = MEMORY[0x2318CB8E0](v35);
  v13 = objc_opt_class();
  (v12)[2](v12, @"motion", 1, v13);
  v14 = objc_opt_class();
  (v12)[2](v12, @"pet", 4, v14);
  v15 = objc_opt_class();
  (v12)[2](v12, @"person", 2, v15);
  v16 = objc_opt_class();
  (v12)[2](v12, @"vehicle", 8, v16);
  v17 = objc_opt_class();
  (v12)[2](v12, @"package", 16, v17);
  v18 = MEMORY[0x277CCABB0];
  v19 = [*(a1 + 32) configuration];
  v20 = [v18 numberWithBool:{objc_msgSend(v19, "transcode")}];
  [v11 setObject:v20 forKeyedSubscript:@"transcode"];

  v21 = MEMORY[0x277CCABB0];
  [*(a1 + 32) analysisFPS];
  v22 = [v21 numberWithDouble:?];
  [v11 setObject:v22 forKeyedSubscript:@"analysisQuality"];

  v23 = MEMORY[0x277CCABB0];
  v24 = [*(a1 + 40) fragment];
  v25 = [v23 numberWithInteger:{+[HMIAnalytics bucketForValue:usingBuckets:](HMIAnalytics, "bucketForValue:usingBuckets:", objc_msgSend(v24, "sequenceNumber"), &unk_284075618)}];
  [v11 setObject:v25 forKeyedSubscript:@"sequenceNumber"];

  v26 = MEMORY[0x277CCABB0];
  v27 = [*(a1 + 40) outcome];
  v28 = [v26 numberWithUnsignedInteger:{objc_msgSend(v27, "code")}];
  [v11 setObject:v28 forKeyedSubscript:@"outcomeCode"];

  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "activeAnalyzerCount")}];
  [v11 setObject:v29 forKeyedSubscript:@"activeAnalyzerCount"];

  v30 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "systemResourceUsageLevel")}];
  [v11 setObject:v30 forKeyedSubscript:@"systemResourceUsageLevel"];

  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "thermalLevel")}];
  [v11 setObject:v31 forKeyedSubscript:@"thermalLevel"];

  v32 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "isThermalAndSystemResourceUsageLevelIgnored")}];
  [v11 setObject:v32 forKeyedSubscript:@"thermalAndSystemResourceUsageLevelIgnored"];

  v33 = v11;
  return v11;
}

void __64__HMIAnalytics_videoAnalyzerDidAnalyzeFragmentWithResult_state___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ((*(a1 + 48) & a3) != 0)
  {
    v6 = &unk_2840751E0;
  }

  else
  {
    v6 = &unk_284075138;
  }

  v7 = *(a1 + 32);
  v8 = MEMORY[0x277CCACA8];
  v9 = a2;
  v10 = [v8 stringWithFormat:@"%@Trigger", v9];
  [v7 setObject:v6 forKeyedSubscript:v10];

  v11 = MEMORY[0x277CCABB0];
  v15 = [*(a1 + 40) maxConfidenceEventForEventClass:a4];
  v12 = [v11 numberWithInt:v15 != 0];
  v13 = *(a1 + 32);
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@Found", v9];

  [v13 setObject:v12 forKeyedSubscript:v14];
}

+ (void)videoPackageAnalyzerDidClassifyCandidateAsPackage:(BOOL)a3 camera:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__HMIAnalytics_videoPackageAnalyzerDidClassifyCandidateAsPackage_camera___block_invoke;
  v8[3] = &unk_278754B80;
  v9 = v6;
  v10 = a3;
  v7 = v6;
  [a1 sendEventWithName:@"com.apple.HomeAI.VideoPackageAnalyzer.DidClassify_v0" payloadBuilder:v8];
}

id __73__HMIAnalytics_videoPackageAnalyzerDidClassifyCandidateAsPackage_camera___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  if (*(a1 + 32))
  {
    v3 = [HMIAnalytics payloadWithCamera:?];
    [v2 addEntriesFromDictionary:v3];
  }

  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  [v2 setObject:v4 forKeyedSubscript:@"package"];

  return v2;
}

+ (void)videoPackageAnalyzerDidResetReferenceImageWithInterval:(double)a3 camera:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__HMIAnalytics_videoPackageAnalyzerDidResetReferenceImageWithInterval_camera___block_invoke;
  v8[3] = &unk_278754BA8;
  v9 = v6;
  v10 = a3;
  v7 = v6;
  [a1 sendEventWithName:@"com.apple.HomeAI.VideoPackageAnalyzer.DidReset_v0" payloadBuilder:v8];
}

id __78__HMIAnalytics_videoPackageAnalyzerDidResetReferenceImageWithInterval_camera___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  if (*(a1 + 32))
  {
    v3 = [HMIAnalytics payloadWithCamera:?];
    [v2 addEntriesFromDictionary:v3];
  }

  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  [v2 setObject:v4 forKeyedSubscript:@"interval"];

  return v2;
}

@end
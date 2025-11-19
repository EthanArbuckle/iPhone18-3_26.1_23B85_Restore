@interface HDDemoDataActivityWorkoutState
@end

@implementation HDDemoDataActivityWorkoutState

void __90___HDDemoDataActivityWorkoutState_addWorkoutRouteFromFilePath_profile_provenance_workout___block_invoke(uint64_t a1, void *a2)
{
  v39[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 count];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  context = objc_autoreleasePoolPush();
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __90___HDDemoDataActivityWorkoutState_addWorkoutRouteFromFilePath_profile_provenance_workout___block_invoke_2;
  v34[3] = &unk_27861EDE8;
  v36 = *(a1 + 56);
  v6 = v5;
  v35 = v6;
  v29 = v3;
  [v3 enumerateObjectsUsingBlock:v34];
  v7 = MEMORY[0x277CCDC70];
  v8 = [MEMORY[0x277CCD2E8] localDevice];
  v9 = [v7 _workoutRouteWithDevice:v8 metadata:0];

  [v9 _setCount:v4];
  v10 = [*(a1 + 32) dataManager];
  v39[0] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
  v12 = *(a1 + 40);
  v33 = 0;
  [v10 insertDataObjects:v11 withProvenance:v12 creationDate:&v33 error:CFAbsoluteTimeGetCurrent()];
  v13 = v33;

  v14 = [v9 UUID];
  v15 = *(a1 + 32);
  v32 = v13;
  [HDLocationSeriesSampleEntity insertLocationData:v6 seriesIdentifier:v14 assertion:0 profile:v15 error:&v32];
  v16 = v32;

  v17 = [v9 UUID];
  v37[0] = *MEMORY[0x277CCC520];
  v18 = [MEMORY[0x277CCAD78] UUID];
  v19 = [v18 UUIDString];
  v37[1] = *MEMORY[0x277CCC528];
  v38[0] = v19;
  v38[1] = &unk_283CB1FC8;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
  v21 = *(a1 + 32);
  v31 = v16;
  v22 = [(HDSeriesSampleEntity *)HDLocationSeriesSampleEntity freezeSeriesWithIdentifier:v17 metadata:v20 profile:v21 error:&v31];
  v23 = v31;

  if (v22)
  {
    v24 = *(a1 + 48);
    v25 = [v9 UUID];
    if (v24)
    {
      [*(v24 + 8) hk_appendBytesWithUUID:v25];
    }
  }

  else
  {
    _HKInitializeLogging();
    v26 = *MEMORY[0x277CCC2B8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "Cannot associate workout route due to lack of frozen identifier", buf, 2u);
    }
  }

  objc_autoreleasePoolPop(context);
  v27 = *MEMORY[0x277D85DE8];
}

void __90___HDDemoDataActivityWorkoutState_addWorkoutRouteFromFilePath_profile_provenance_workout___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectAtIndexedSubscript:0];
  [v4 doubleValue];
  v6 = v5;
  v7 = [v3 objectAtIndexedSubscript:1];
  [v7 doubleValue];
  v9 = CLLocationCoordinate2DMake(v6, v8);

  v10 = [*(*(*(a1 + 40) + 8) + 40) dateByAddingTimeInterval:1.0];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = objc_alloc(MEMORY[0x277CE41F8]);
  v14 = [v3 objectAtIndexedSubscript:2];
  [v14 doubleValue];
  v16 = v15;
  v17 = [v3 objectAtIndexedSubscript:3];
  [v17 doubleValue];
  v19 = v18;
  v20 = [v3 objectAtIndexedSubscript:4];
  [v20 doubleValue];
  v22 = v21;
  v23 = [v3 objectAtIndexedSubscript:5];
  [v23 doubleValue];
  v25 = v24;
  v26 = [v3 objectAtIndexedSubscript:6];

  [v26 doubleValue];
  v28 = [v13 initWithCoordinate:*(*(*(a1 + 40) + 8) + 40) altitude:v9.latitude horizontalAccuracy:v9.longitude verticalAccuracy:v16 course:v19 speed:v22 timestamp:{v25, v27}];

  [*(a1 + 32) addObject:v28];
}

@end
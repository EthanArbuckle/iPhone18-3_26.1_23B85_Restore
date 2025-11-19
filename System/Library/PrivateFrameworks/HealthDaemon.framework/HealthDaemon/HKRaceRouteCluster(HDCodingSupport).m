@interface HKRaceRouteCluster(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
@end

@implementation HKRaceRouteCluster(HDCodingSupport)

+ (id)createWithCodable:()HDCodingSupport
{
  v3 = a3;
  v4 = [v3 lastWorkoutMetrics];
  v5 = [v3 bestWorkoutMetrics];
  v6 = [v4 routePoints];
  v7 = [v6 firstObject];

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277CE41F8]);
    [v7 latitude];
    v10 = v9;
    [v7 longitude];
    v46 = [v8 initWithLatitude:v10 longitude:v11];
  }

  else
  {
    v46 = 0;
  }

  v12 = objc_alloc(MEMORY[0x277CCD860]);
  v13 = MEMORY[0x277CCAD78];
  v45 = [v3 uuid];
  v42 = [v13 hk_UUIDWithData:v45];
  v14 = MEMORY[0x277CCAD78];
  v44 = [v3 workoutClusterUUID];
  v41 = [v14 hk_UUIDWithData:v44];
  v39 = [v3 clusterSize];
  [v3 relevance];
  v16 = v15;
  v17 = [v3 activityType];
  v18 = MEMORY[0x277CCAD78];
  v43 = [v4 workoutUUID];
  v38 = [v18 hk_UUIDWithData:v43];
  v19 = MEMORY[0x277CBEAA8];
  [v4 startDate];
  v36 = [v19 dateWithTimeIntervalSinceReferenceDate:?];
  [v4 distance];
  v21 = v20;
  [v4 duration];
  v23 = v22;
  v24 = MEMORY[0x277CCAD78];
  v37 = [v3 bestWorkoutMetrics];
  v35 = [v37 workoutUUID];
  v25 = [v24 hk_UUIDWithData:v35];
  v26 = MEMORY[0x277CBEAA8];
  [v5 startDate];
  v27 = [v26 dateWithTimeIntervalSinceReferenceDate:?];
  [v5 distance];
  v29 = v28;
  [v5 duration];
  v31 = v30;
  v32 = [v3 routeSnapshot];
  v33 = [v3 routeLabel];
  v40 = [v12 _initWithUUID:v42 workoutClusterUUID:v41 clusterSize:v39 relevanceValue:v17 workoutActivityType:v38 lastWorkoutUUID:v36 lastWorkoutDate:v16 lastWorkoutDistance:v21 lastWorkoutDuration:v23 lastWorkoutStartingPoint:v29 bestWorkoutUUID:v31 bestWorkoutDate:v46 bestWorkoutDistance:v25 bestWorkoutDuration:v27 workoutRouteSnapshot:v32 workoutRouteLabel:v33];

  return v40;
}

@end
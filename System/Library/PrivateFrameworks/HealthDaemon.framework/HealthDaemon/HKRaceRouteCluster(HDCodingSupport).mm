@interface HKRaceRouteCluster(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
@end

@implementation HKRaceRouteCluster(HDCodingSupport)

+ (id)createWithCodable:()HDCodingSupport
{
  v3 = a3;
  lastWorkoutMetrics = [v3 lastWorkoutMetrics];
  bestWorkoutMetrics = [v3 bestWorkoutMetrics];
  routePoints = [lastWorkoutMetrics routePoints];
  firstObject = [routePoints firstObject];

  if (firstObject)
  {
    v8 = objc_alloc(MEMORY[0x277CE41F8]);
    [firstObject latitude];
    v10 = v9;
    [firstObject longitude];
    v46 = [v8 initWithLatitude:v10 longitude:v11];
  }

  else
  {
    v46 = 0;
  }

  v12 = objc_alloc(MEMORY[0x277CCD860]);
  v13 = MEMORY[0x277CCAD78];
  uuid = [v3 uuid];
  v42 = [v13 hk_UUIDWithData:uuid];
  v14 = MEMORY[0x277CCAD78];
  workoutClusterUUID = [v3 workoutClusterUUID];
  v41 = [v14 hk_UUIDWithData:workoutClusterUUID];
  clusterSize = [v3 clusterSize];
  [v3 relevance];
  v16 = v15;
  activityType = [v3 activityType];
  v18 = MEMORY[0x277CCAD78];
  workoutUUID = [lastWorkoutMetrics workoutUUID];
  v38 = [v18 hk_UUIDWithData:workoutUUID];
  v19 = MEMORY[0x277CBEAA8];
  [lastWorkoutMetrics startDate];
  v36 = [v19 dateWithTimeIntervalSinceReferenceDate:?];
  [lastWorkoutMetrics distance];
  v21 = v20;
  [lastWorkoutMetrics duration];
  v23 = v22;
  v24 = MEMORY[0x277CCAD78];
  bestWorkoutMetrics2 = [v3 bestWorkoutMetrics];
  workoutUUID2 = [bestWorkoutMetrics2 workoutUUID];
  v25 = [v24 hk_UUIDWithData:workoutUUID2];
  v26 = MEMORY[0x277CBEAA8];
  [bestWorkoutMetrics startDate];
  v27 = [v26 dateWithTimeIntervalSinceReferenceDate:?];
  [bestWorkoutMetrics distance];
  v29 = v28;
  [bestWorkoutMetrics duration];
  v31 = v30;
  routeSnapshot = [v3 routeSnapshot];
  routeLabel = [v3 routeLabel];
  v40 = [v12 _initWithUUID:v42 workoutClusterUUID:v41 clusterSize:clusterSize relevanceValue:activityType workoutActivityType:v38 lastWorkoutUUID:v36 lastWorkoutDate:v16 lastWorkoutDistance:v21 lastWorkoutDuration:v23 lastWorkoutStartingPoint:v29 bestWorkoutUUID:v31 bestWorkoutDate:v46 bestWorkoutDistance:v25 bestWorkoutDuration:v27 workoutRouteSnapshot:routeSnapshot workoutRouteLabel:routeLabel];

  return v40;
}

@end
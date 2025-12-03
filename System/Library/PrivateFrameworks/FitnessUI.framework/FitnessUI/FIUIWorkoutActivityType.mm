@interface FIUIWorkoutActivityType
+ (FIUIWorkoutActivityType)activityTypeWithHKWorkoutActivityTypeIdentifier:(unint64_t)identifier isIndoor:(BOOL)indoor;
+ (FIUIWorkoutActivityType)activityTypeWithHKWorkoutActivityTypeIdentifier:(unint64_t)identifier isIndoor:(BOOL)indoor metadata:(id)metadata;
+ (FIUIWorkoutActivityType)activityTypeWithWorkout:(id)workout;
+ (id)defaultActivityTypesWithIsWheelchairUser:(BOOL)user isSwimmingSupported:(BOOL)supported activityMoveMode:(int64_t)mode;
+ (id)deprecatedActivityTypes;
+ (id)effectiveActivityTypeWithWorkout:(id)workout;
+ (id)gymKitCapableActivityTypes;
+ (id)nonOptimizedActivityTypes;
+ (id)optimizedActivityTypesWithIsWheelchairUser:(BOOL)user isSwimmingSupported:(BOOL)supported;
+ (id)possibleActivityTypesForIdentifier:(unint64_t)identifier locationType:(int64_t)type swimmingLocationType:(int64_t)locationType wheelchairUser:(BOOL)user;
+ (id)swimmingOptimizedActivityTypes;
+ (id)swimmingOtherActivityTypes;
+ (id)unsupportedActivityTypesWithIsWheelchairUser:(BOOL)user isSwimmingSupported:(BOOL)supported;
+ (id)unsupportedActivityTypesWithIsWheelchairUser:(BOOL)user isSwimmingSupported:(BOOL)supported supportsPairedWatchFeatures:(BOOL)features supportsExternalHeartRateSensorFeatures:(BOOL)sensorFeatures;
+ (id)wheelchairActivityTypes;
- (BOOL)isEqual:(id)equal;
- (FIUIWorkoutActivityType)initWithActivityTypeIdentifier:(unint64_t)identifier isIndoor:(BOOL)indoor;
- (FIUIWorkoutActivityType)initWithActivityTypeIdentifier:(unint64_t)identifier isIndoor:(BOOL)indoor isPartOfMultiSport:(BOOL)sport metadata:(id)metadata;
- (FIUIWorkoutActivityType)initWithActivityTypeIdentifier:(unint64_t)identifier isIndoor:(BOOL)indoor isPartOfMultiSport:(BOOL)sport metadata:(id)metadata auxiliaryTypeIdentifier:(unint64_t)typeIdentifier;
- (FIUIWorkoutActivityType)initWithActivityTypeIdentifier:(unint64_t)identifier isIndoor:(BOOL)indoor metadata:(id)metadata;
- (FIUIWorkoutActivityType)initWithActivityTypeIdentifier:(unint64_t)identifier isIndoor:(BOOL)indoor metadata:(id)metadata auxiliaryTypeIdentifier:(unint64_t)typeIdentifier;
- (FIUIWorkoutActivityType)initWithActivityTypeIdentifier:(unint64_t)identifier location:(int64_t)location isPartOfMultiSport:(BOOL)sport metadata:(id)metadata;
- (FIUIWorkoutActivityType)initWithActivityTypeIdentifier:(unint64_t)identifier location:(int64_t)location isPartOfMultiSport:(BOOL)sport metadata:(id)metadata auxiliaryTypeIdentifier:(unint64_t)typeIdentifier;
- (FIUIWorkoutActivityType)initWithCoder:(id)coder;
- (FIUIWorkoutActivityType)initWithWorkoutActivityType:(id)type;
- (id)activityTypeByAddingLapLength:(double)length;
- (id)description;
@end

@implementation FIUIWorkoutActivityType

+ (id)wheelchairActivityTypes
{
  wheelchairActivityTypes = [MEMORY[0x1E699C9F0] wheelchairActivityTypes];
  v3 = [wheelchairActivityTypes hk_map:&__block_literal_global_318];

  return v3;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(FIWorkoutActivityType *)self->_workoutActivityType description];
  v4 = [v2 stringWithFormat:@"FIUIWorkoutActivityType(workoutActivityType=%@)", v3];

  return v4;
}

+ (FIUIWorkoutActivityType)activityTypeWithHKWorkoutActivityTypeIdentifier:(unint64_t)identifier isIndoor:(BOOL)indoor
{
  indoorCopy = indoor;
  v6 = [FIUIWorkoutActivityType alloc];
  v7 = [(FIUIWorkoutActivityType *)v6 initWithActivityTypeIdentifier:identifier isIndoor:indoorCopy metadata:MEMORY[0x1E695E0F8]];

  return v7;
}

+ (FIUIWorkoutActivityType)activityTypeWithHKWorkoutActivityTypeIdentifier:(unint64_t)identifier isIndoor:(BOOL)indoor metadata:(id)metadata
{
  indoorCopy = indoor;
  metadataCopy = metadata;
  v8 = [[FIUIWorkoutActivityType alloc] initWithActivityTypeIdentifier:identifier isIndoor:indoorCopy metadata:metadataCopy];

  return v8;
}

+ (FIUIWorkoutActivityType)activityTypeWithWorkout:(id)workout
{
  v3 = [MEMORY[0x1E699C9F0] activityTypeWithWorkout:workout];
  v4 = [[FIUIWorkoutActivityType alloc] initWithWorkoutActivityType:v3];

  return v4;
}

+ (id)effectiveActivityTypeWithWorkout:(id)workout
{
  v3 = [MEMORY[0x1E699C9F0] effectiveActivityTypeWithWorkout:workout];
  v4 = [[FIUIWorkoutActivityType alloc] initWithWorkoutActivityType:v3];

  return v4;
}

- (FIUIWorkoutActivityType)initWithActivityTypeIdentifier:(unint64_t)identifier isIndoor:(BOOL)indoor
{
  v5 = [objc_alloc(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:identifier isIndoor:indoor];
  v6 = [(FIUIWorkoutActivityType *)self initWithWorkoutActivityType:v5];

  return v6;
}

- (FIUIWorkoutActivityType)initWithActivityTypeIdentifier:(unint64_t)identifier isIndoor:(BOOL)indoor metadata:(id)metadata
{
  indoorCopy = indoor;
  v8 = MEMORY[0x1E699C9F0];
  metadataCopy = metadata;
  v10 = [[v8 alloc] initWithActivityTypeIdentifier:identifier isIndoor:indoorCopy metadata:metadataCopy];

  v11 = [(FIUIWorkoutActivityType *)self initWithWorkoutActivityType:v10];
  return v11;
}

- (FIUIWorkoutActivityType)initWithActivityTypeIdentifier:(unint64_t)identifier isIndoor:(BOOL)indoor metadata:(id)metadata auxiliaryTypeIdentifier:(unint64_t)typeIdentifier
{
  indoorCopy = indoor;
  v10 = MEMORY[0x1E699C9F0];
  metadataCopy = metadata;
  v12 = [[v10 alloc] initWithActivityTypeIdentifier:identifier isIndoor:indoorCopy metadata:metadataCopy auxiliaryTypeIdentifier:typeIdentifier];

  v13 = [(FIUIWorkoutActivityType *)self initWithWorkoutActivityType:v12];
  return v13;
}

- (FIUIWorkoutActivityType)initWithActivityTypeIdentifier:(unint64_t)identifier isIndoor:(BOOL)indoor isPartOfMultiSport:(BOOL)sport metadata:(id)metadata
{
  sportCopy = sport;
  indoorCopy = indoor;
  v10 = MEMORY[0x1E699C9F0];
  metadataCopy = metadata;
  v12 = [[v10 alloc] initWithActivityTypeIdentifier:identifier isIndoor:indoorCopy isPartOfMultiSport:sportCopy metadata:metadataCopy];

  v13 = [(FIUIWorkoutActivityType *)self initWithWorkoutActivityType:v12];
  return v13;
}

- (FIUIWorkoutActivityType)initWithActivityTypeIdentifier:(unint64_t)identifier isIndoor:(BOOL)indoor isPartOfMultiSport:(BOOL)sport metadata:(id)metadata auxiliaryTypeIdentifier:(unint64_t)typeIdentifier
{
  sportCopy = sport;
  indoorCopy = indoor;
  v12 = MEMORY[0x1E699C9F0];
  metadataCopy = metadata;
  v14 = [[v12 alloc] initWithActivityTypeIdentifier:identifier isIndoor:indoorCopy isPartOfMultiSport:sportCopy metadata:metadataCopy auxiliaryTypeIdentifier:typeIdentifier];

  v15 = [(FIUIWorkoutActivityType *)self initWithWorkoutActivityType:v14];
  return v15;
}

- (FIUIWorkoutActivityType)initWithActivityTypeIdentifier:(unint64_t)identifier location:(int64_t)location isPartOfMultiSport:(BOOL)sport metadata:(id)metadata
{
  sportCopy = sport;
  v10 = MEMORY[0x1E699C9F0];
  metadataCopy = metadata;
  v12 = [[v10 alloc] initWithActivityTypeIdentifier:identifier location:location isPartOfMultiSport:sportCopy metadata:metadataCopy];

  v13 = [(FIUIWorkoutActivityType *)self initWithWorkoutActivityType:v12];
  return v13;
}

- (FIUIWorkoutActivityType)initWithActivityTypeIdentifier:(unint64_t)identifier location:(int64_t)location isPartOfMultiSport:(BOOL)sport metadata:(id)metadata auxiliaryTypeIdentifier:(unint64_t)typeIdentifier
{
  sportCopy = sport;
  v12 = MEMORY[0x1E699C9F0];
  metadataCopy = metadata;
  v14 = [[v12 alloc] initWithActivityTypeIdentifier:identifier location:location isPartOfMultiSport:sportCopy metadata:metadataCopy auxiliaryTypeIdentifier:typeIdentifier];

  v15 = [(FIUIWorkoutActivityType *)self initWithWorkoutActivityType:v14];
  return v15;
}

- (FIUIWorkoutActivityType)initWithWorkoutActivityType:(id)type
{
  typeCopy = type;
  v9.receiver = self;
  v9.super_class = FIUIWorkoutActivityType;
  v6 = [(FIUIWorkoutActivityType *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workoutActivityType, type);
  }

  return v7;
}

- (FIUIWorkoutActivityType)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = FIUIWorkoutActivityType;
  v5 = [(FIUIWorkoutActivityType *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E699C9F0]) initWithCoder:coderCopy];
    workoutActivityType = v5->_workoutActivityType;
    v5->_workoutActivityType = v6;
  }

  return v5;
}

- (id)activityTypeByAddingLapLength:(double)length
{
  v4 = [(FIWorkoutActivityType *)self->_workoutActivityType activityTypeByAddingLapLength:length];
  v5 = [(FIUIWorkoutActivityType *)self initWithWorkoutActivityType:v4];

  return v5;
}

+ (id)defaultActivityTypesWithIsWheelchairUser:(BOOL)user isSwimmingSupported:(BOOL)supported activityMoveMode:(int64_t)mode
{
  v5 = [MEMORY[0x1E699C9F0] defaultActivityTypesWithIsWheelchairUser:user isSwimmingSupported:supported activityMoveMode:mode];
  v6 = [v5 hk_map:&__block_literal_global_2];

  return v6;
}

FIUIWorkoutActivityType *__105__FIUIWorkoutActivityType_defaultActivityTypesWithIsWheelchairUser_isSwimmingSupported_activityMoveMode___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FIUIWorkoutActivityType alloc] initWithWorkoutActivityType:v2];

  return v3;
}

+ (id)gymKitCapableActivityTypes
{
  gymKitCapableActivityTypes = [MEMORY[0x1E699C9F0] gymKitCapableActivityTypes];
  v3 = [gymKitCapableActivityTypes hk_map:&__block_literal_global_308];

  return v3;
}

FIUIWorkoutActivityType *__53__FIUIWorkoutActivityType_gymKitCapableActivityTypes__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FIUIWorkoutActivityType alloc] initWithWorkoutActivityType:v2];

  return v3;
}

+ (id)optimizedActivityTypesWithIsWheelchairUser:(BOOL)user isSwimmingSupported:(BOOL)supported
{
  v4 = [MEMORY[0x1E699C9F0] optimizedActivityTypesWithIsWheelchairUser:user isSwimmingSupported:supported];
  v5 = [v4 hk_map:&__block_literal_global_310];

  return v5;
}

FIUIWorkoutActivityType *__90__FIUIWorkoutActivityType_optimizedActivityTypesWithIsWheelchairUser_isSwimmingSupported___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FIUIWorkoutActivityType alloc] initWithWorkoutActivityType:v2];

  return v3;
}

+ (id)nonOptimizedActivityTypes
{
  nonOptimizedActivityTypes = [MEMORY[0x1E699C9F0] nonOptimizedActivityTypes];
  v3 = [nonOptimizedActivityTypes hk_map:&__block_literal_global_312];

  return v3;
}

FIUIWorkoutActivityType *__52__FIUIWorkoutActivityType_nonOptimizedActivityTypes__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FIUIWorkoutActivityType alloc] initWithWorkoutActivityType:v2];

  return v3;
}

+ (id)unsupportedActivityTypesWithIsWheelchairUser:(BOOL)user isSwimmingSupported:(BOOL)supported
{
  v4 = [MEMORY[0x1E699C9F0] unsupportedActivityTypesWithIsWheelchairUser:user isSwimmingSupported:supported];
  v5 = [v4 hk_map:&__block_literal_global_314];

  return v5;
}

FIUIWorkoutActivityType *__92__FIUIWorkoutActivityType_unsupportedActivityTypesWithIsWheelchairUser_isSwimmingSupported___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FIUIWorkoutActivityType alloc] initWithWorkoutActivityType:v2];

  return v3;
}

+ (id)unsupportedActivityTypesWithIsWheelchairUser:(BOOL)user isSwimmingSupported:(BOOL)supported supportsPairedWatchFeatures:(BOOL)features supportsExternalHeartRateSensorFeatures:(BOOL)sensorFeatures
{
  if (features)
  {
    sensorFeatures = [FIUIWorkoutActivityType unsupportedActivityTypesWithIsWheelchairUser:user isSwimmingSupported:supported, features, sensorFeatures];
  }

  else
  {
    sensorFeaturesCopy = sensorFeatures;
    v9 = [MEMORY[0x1E699C9F0] optimizedActivityTypesWithIsWheelchairUser:user isSwimmingSupported:supported];
    v10 = [v9 mutableCopy];

    nonOptimizedActivityTypes = [MEMORY[0x1E699C9F0] nonOptimizedActivityTypes];
    [v10 addObjectsFromArray:nonOptimizedActivityTypes];

    if (sensorFeaturesCopy)
    {
      [MEMORY[0x1E699C9F0] phoneAndHeartRateMonitorSupportedActivityTypes];
    }

    else
    {
      [MEMORY[0x1E699C9F0] phoneOnlySupportedActivityTypes];
    }
    v12 = ;
    [v10 removeObjectsInArray:v12];

    if (!user)
    {
      wheelchairActivityTypes = [MEMORY[0x1E699C9F0] wheelchairActivityTypes];
      [v10 addObjectsFromArray:wheelchairActivityTypes];
    }

    sensorFeatures = [v10 hk_map:&__block_literal_global_316];
  }

  return sensorFeatures;
}

FIUIWorkoutActivityType *__160__FIUIWorkoutActivityType_unsupportedActivityTypesWithIsWheelchairUser_isSwimmingSupported_supportsPairedWatchFeatures_supportsExternalHeartRateSensorFeatures___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FIUIWorkoutActivityType alloc] initWithWorkoutActivityType:v2];

  return v3;
}

FIUIWorkoutActivityType *__50__FIUIWorkoutActivityType_wheelchairActivityTypes__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FIUIWorkoutActivityType alloc] initWithWorkoutActivityType:v2];

  return v3;
}

+ (id)swimmingOptimizedActivityTypes
{
  swimmingOptimizedActivityTypes = [MEMORY[0x1E699C9F0] swimmingOptimizedActivityTypes];
  v3 = [swimmingOptimizedActivityTypes hk_map:&__block_literal_global_320];

  return v3;
}

FIUIWorkoutActivityType *__57__FIUIWorkoutActivityType_swimmingOptimizedActivityTypes__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FIUIWorkoutActivityType alloc] initWithWorkoutActivityType:v2];

  return v3;
}

+ (id)swimmingOtherActivityTypes
{
  swimmingOtherActivityTypes = [MEMORY[0x1E699C9F0] swimmingOtherActivityTypes];
  v3 = [swimmingOtherActivityTypes hk_map:&__block_literal_global_322];

  return v3;
}

FIUIWorkoutActivityType *__53__FIUIWorkoutActivityType_swimmingOtherActivityTypes__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FIUIWorkoutActivityType alloc] initWithWorkoutActivityType:v2];

  return v3;
}

+ (id)deprecatedActivityTypes
{
  deprecatedActivityTypes = [MEMORY[0x1E699C9F0] deprecatedActivityTypes];
  v3 = [deprecatedActivityTypes hk_map:&__block_literal_global_324];

  return v3;
}

FIUIWorkoutActivityType *__50__FIUIWorkoutActivityType_deprecatedActivityTypes__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FIUIWorkoutActivityType alloc] initWithWorkoutActivityType:v2];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  workoutActivityType = self->_workoutActivityType;
  workoutActivityType = [equal workoutActivityType];
  LOBYTE(workoutActivityType) = [(FIWorkoutActivityType *)workoutActivityType isEqual:workoutActivityType];

  return workoutActivityType;
}

+ (id)possibleActivityTypesForIdentifier:(unint64_t)identifier locationType:(int64_t)type swimmingLocationType:(int64_t)locationType wheelchairUser:(BOOL)user
{
  v6 = [MEMORY[0x1E699C9F0] possibleActivityTypesForIdentifier:identifier locationType:type swimmingLocationType:locationType wheelchairUser:user];
  v7 = [v6 hk_map:&__block_literal_global_330];

  return v7;
}

FIUIWorkoutActivityType *__111__FIUIWorkoutActivityType_possibleActivityTypesForIdentifier_locationType_swimmingLocationType_wheelchairUser___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FIUIWorkoutActivityType alloc] initWithWorkoutActivityType:v2];

  return v3;
}

@end
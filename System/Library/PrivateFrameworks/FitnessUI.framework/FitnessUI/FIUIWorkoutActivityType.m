@interface FIUIWorkoutActivityType
+ (FIUIWorkoutActivityType)activityTypeWithHKWorkoutActivityTypeIdentifier:(unint64_t)a3 isIndoor:(BOOL)a4;
+ (FIUIWorkoutActivityType)activityTypeWithHKWorkoutActivityTypeIdentifier:(unint64_t)a3 isIndoor:(BOOL)a4 metadata:(id)a5;
+ (FIUIWorkoutActivityType)activityTypeWithWorkout:(id)a3;
+ (id)defaultActivityTypesWithIsWheelchairUser:(BOOL)a3 isSwimmingSupported:(BOOL)a4 activityMoveMode:(int64_t)a5;
+ (id)deprecatedActivityTypes;
+ (id)effectiveActivityTypeWithWorkout:(id)a3;
+ (id)gymKitCapableActivityTypes;
+ (id)nonOptimizedActivityTypes;
+ (id)optimizedActivityTypesWithIsWheelchairUser:(BOOL)a3 isSwimmingSupported:(BOOL)a4;
+ (id)possibleActivityTypesForIdentifier:(unint64_t)a3 locationType:(int64_t)a4 swimmingLocationType:(int64_t)a5 wheelchairUser:(BOOL)a6;
+ (id)swimmingOptimizedActivityTypes;
+ (id)swimmingOtherActivityTypes;
+ (id)unsupportedActivityTypesWithIsWheelchairUser:(BOOL)a3 isSwimmingSupported:(BOOL)a4;
+ (id)unsupportedActivityTypesWithIsWheelchairUser:(BOOL)a3 isSwimmingSupported:(BOOL)a4 supportsPairedWatchFeatures:(BOOL)a5 supportsExternalHeartRateSensorFeatures:(BOOL)a6;
+ (id)wheelchairActivityTypes;
- (BOOL)isEqual:(id)a3;
- (FIUIWorkoutActivityType)initWithActivityTypeIdentifier:(unint64_t)a3 isIndoor:(BOOL)a4;
- (FIUIWorkoutActivityType)initWithActivityTypeIdentifier:(unint64_t)a3 isIndoor:(BOOL)a4 isPartOfMultiSport:(BOOL)a5 metadata:(id)a6;
- (FIUIWorkoutActivityType)initWithActivityTypeIdentifier:(unint64_t)a3 isIndoor:(BOOL)a4 isPartOfMultiSport:(BOOL)a5 metadata:(id)a6 auxiliaryTypeIdentifier:(unint64_t)a7;
- (FIUIWorkoutActivityType)initWithActivityTypeIdentifier:(unint64_t)a3 isIndoor:(BOOL)a4 metadata:(id)a5;
- (FIUIWorkoutActivityType)initWithActivityTypeIdentifier:(unint64_t)a3 isIndoor:(BOOL)a4 metadata:(id)a5 auxiliaryTypeIdentifier:(unint64_t)a6;
- (FIUIWorkoutActivityType)initWithActivityTypeIdentifier:(unint64_t)a3 location:(int64_t)a4 isPartOfMultiSport:(BOOL)a5 metadata:(id)a6;
- (FIUIWorkoutActivityType)initWithActivityTypeIdentifier:(unint64_t)a3 location:(int64_t)a4 isPartOfMultiSport:(BOOL)a5 metadata:(id)a6 auxiliaryTypeIdentifier:(unint64_t)a7;
- (FIUIWorkoutActivityType)initWithCoder:(id)a3;
- (FIUIWorkoutActivityType)initWithWorkoutActivityType:(id)a3;
- (id)activityTypeByAddingLapLength:(double)a3;
- (id)description;
@end

@implementation FIUIWorkoutActivityType

+ (id)wheelchairActivityTypes
{
  v2 = [MEMORY[0x1E699C9F0] wheelchairActivityTypes];
  v3 = [v2 hk_map:&__block_literal_global_318];

  return v3;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(FIWorkoutActivityType *)self->_workoutActivityType description];
  v4 = [v2 stringWithFormat:@"FIUIWorkoutActivityType(workoutActivityType=%@)", v3];

  return v4;
}

+ (FIUIWorkoutActivityType)activityTypeWithHKWorkoutActivityTypeIdentifier:(unint64_t)a3 isIndoor:(BOOL)a4
{
  v4 = a4;
  v6 = [FIUIWorkoutActivityType alloc];
  v7 = [(FIUIWorkoutActivityType *)v6 initWithActivityTypeIdentifier:a3 isIndoor:v4 metadata:MEMORY[0x1E695E0F8]];

  return v7;
}

+ (FIUIWorkoutActivityType)activityTypeWithHKWorkoutActivityTypeIdentifier:(unint64_t)a3 isIndoor:(BOOL)a4 metadata:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = [[FIUIWorkoutActivityType alloc] initWithActivityTypeIdentifier:a3 isIndoor:v5 metadata:v7];

  return v8;
}

+ (FIUIWorkoutActivityType)activityTypeWithWorkout:(id)a3
{
  v3 = [MEMORY[0x1E699C9F0] activityTypeWithWorkout:a3];
  v4 = [[FIUIWorkoutActivityType alloc] initWithWorkoutActivityType:v3];

  return v4;
}

+ (id)effectiveActivityTypeWithWorkout:(id)a3
{
  v3 = [MEMORY[0x1E699C9F0] effectiveActivityTypeWithWorkout:a3];
  v4 = [[FIUIWorkoutActivityType alloc] initWithWorkoutActivityType:v3];

  return v4;
}

- (FIUIWorkoutActivityType)initWithActivityTypeIdentifier:(unint64_t)a3 isIndoor:(BOOL)a4
{
  v5 = [objc_alloc(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:a3 isIndoor:a4];
  v6 = [(FIUIWorkoutActivityType *)self initWithWorkoutActivityType:v5];

  return v6;
}

- (FIUIWorkoutActivityType)initWithActivityTypeIdentifier:(unint64_t)a3 isIndoor:(BOOL)a4 metadata:(id)a5
{
  v5 = a4;
  v8 = MEMORY[0x1E699C9F0];
  v9 = a5;
  v10 = [[v8 alloc] initWithActivityTypeIdentifier:a3 isIndoor:v5 metadata:v9];

  v11 = [(FIUIWorkoutActivityType *)self initWithWorkoutActivityType:v10];
  return v11;
}

- (FIUIWorkoutActivityType)initWithActivityTypeIdentifier:(unint64_t)a3 isIndoor:(BOOL)a4 metadata:(id)a5 auxiliaryTypeIdentifier:(unint64_t)a6
{
  v7 = a4;
  v10 = MEMORY[0x1E699C9F0];
  v11 = a5;
  v12 = [[v10 alloc] initWithActivityTypeIdentifier:a3 isIndoor:v7 metadata:v11 auxiliaryTypeIdentifier:a6];

  v13 = [(FIUIWorkoutActivityType *)self initWithWorkoutActivityType:v12];
  return v13;
}

- (FIUIWorkoutActivityType)initWithActivityTypeIdentifier:(unint64_t)a3 isIndoor:(BOOL)a4 isPartOfMultiSport:(BOOL)a5 metadata:(id)a6
{
  v6 = a5;
  v7 = a4;
  v10 = MEMORY[0x1E699C9F0];
  v11 = a6;
  v12 = [[v10 alloc] initWithActivityTypeIdentifier:a3 isIndoor:v7 isPartOfMultiSport:v6 metadata:v11];

  v13 = [(FIUIWorkoutActivityType *)self initWithWorkoutActivityType:v12];
  return v13;
}

- (FIUIWorkoutActivityType)initWithActivityTypeIdentifier:(unint64_t)a3 isIndoor:(BOOL)a4 isPartOfMultiSport:(BOOL)a5 metadata:(id)a6 auxiliaryTypeIdentifier:(unint64_t)a7
{
  v8 = a5;
  v9 = a4;
  v12 = MEMORY[0x1E699C9F0];
  v13 = a6;
  v14 = [[v12 alloc] initWithActivityTypeIdentifier:a3 isIndoor:v9 isPartOfMultiSport:v8 metadata:v13 auxiliaryTypeIdentifier:a7];

  v15 = [(FIUIWorkoutActivityType *)self initWithWorkoutActivityType:v14];
  return v15;
}

- (FIUIWorkoutActivityType)initWithActivityTypeIdentifier:(unint64_t)a3 location:(int64_t)a4 isPartOfMultiSport:(BOOL)a5 metadata:(id)a6
{
  v6 = a5;
  v10 = MEMORY[0x1E699C9F0];
  v11 = a6;
  v12 = [[v10 alloc] initWithActivityTypeIdentifier:a3 location:a4 isPartOfMultiSport:v6 metadata:v11];

  v13 = [(FIUIWorkoutActivityType *)self initWithWorkoutActivityType:v12];
  return v13;
}

- (FIUIWorkoutActivityType)initWithActivityTypeIdentifier:(unint64_t)a3 location:(int64_t)a4 isPartOfMultiSport:(BOOL)a5 metadata:(id)a6 auxiliaryTypeIdentifier:(unint64_t)a7
{
  v8 = a5;
  v12 = MEMORY[0x1E699C9F0];
  v13 = a6;
  v14 = [[v12 alloc] initWithActivityTypeIdentifier:a3 location:a4 isPartOfMultiSport:v8 metadata:v13 auxiliaryTypeIdentifier:a7];

  v15 = [(FIUIWorkoutActivityType *)self initWithWorkoutActivityType:v14];
  return v15;
}

- (FIUIWorkoutActivityType)initWithWorkoutActivityType:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FIUIWorkoutActivityType;
  v6 = [(FIUIWorkoutActivityType *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workoutActivityType, a3);
  }

  return v7;
}

- (FIUIWorkoutActivityType)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FIUIWorkoutActivityType;
  v5 = [(FIUIWorkoutActivityType *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E699C9F0]) initWithCoder:v4];
    workoutActivityType = v5->_workoutActivityType;
    v5->_workoutActivityType = v6;
  }

  return v5;
}

- (id)activityTypeByAddingLapLength:(double)a3
{
  v4 = [(FIWorkoutActivityType *)self->_workoutActivityType activityTypeByAddingLapLength:a3];
  v5 = [(FIUIWorkoutActivityType *)self initWithWorkoutActivityType:v4];

  return v5;
}

+ (id)defaultActivityTypesWithIsWheelchairUser:(BOOL)a3 isSwimmingSupported:(BOOL)a4 activityMoveMode:(int64_t)a5
{
  v5 = [MEMORY[0x1E699C9F0] defaultActivityTypesWithIsWheelchairUser:a3 isSwimmingSupported:a4 activityMoveMode:a5];
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
  v2 = [MEMORY[0x1E699C9F0] gymKitCapableActivityTypes];
  v3 = [v2 hk_map:&__block_literal_global_308];

  return v3;
}

FIUIWorkoutActivityType *__53__FIUIWorkoutActivityType_gymKitCapableActivityTypes__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FIUIWorkoutActivityType alloc] initWithWorkoutActivityType:v2];

  return v3;
}

+ (id)optimizedActivityTypesWithIsWheelchairUser:(BOOL)a3 isSwimmingSupported:(BOOL)a4
{
  v4 = [MEMORY[0x1E699C9F0] optimizedActivityTypesWithIsWheelchairUser:a3 isSwimmingSupported:a4];
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
  v2 = [MEMORY[0x1E699C9F0] nonOptimizedActivityTypes];
  v3 = [v2 hk_map:&__block_literal_global_312];

  return v3;
}

FIUIWorkoutActivityType *__52__FIUIWorkoutActivityType_nonOptimizedActivityTypes__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FIUIWorkoutActivityType alloc] initWithWorkoutActivityType:v2];

  return v3;
}

+ (id)unsupportedActivityTypesWithIsWheelchairUser:(BOOL)a3 isSwimmingSupported:(BOOL)a4
{
  v4 = [MEMORY[0x1E699C9F0] unsupportedActivityTypesWithIsWheelchairUser:a3 isSwimmingSupported:a4];
  v5 = [v4 hk_map:&__block_literal_global_314];

  return v5;
}

FIUIWorkoutActivityType *__92__FIUIWorkoutActivityType_unsupportedActivityTypesWithIsWheelchairUser_isSwimmingSupported___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FIUIWorkoutActivityType alloc] initWithWorkoutActivityType:v2];

  return v3;
}

+ (id)unsupportedActivityTypesWithIsWheelchairUser:(BOOL)a3 isSwimmingSupported:(BOOL)a4 supportsPairedWatchFeatures:(BOOL)a5 supportsExternalHeartRateSensorFeatures:(BOOL)a6
{
  if (a5)
  {
    v7 = [FIUIWorkoutActivityType unsupportedActivityTypesWithIsWheelchairUser:a3 isSwimmingSupported:a4, a5, a6];
  }

  else
  {
    v8 = a6;
    v9 = [MEMORY[0x1E699C9F0] optimizedActivityTypesWithIsWheelchairUser:a3 isSwimmingSupported:a4];
    v10 = [v9 mutableCopy];

    v11 = [MEMORY[0x1E699C9F0] nonOptimizedActivityTypes];
    [v10 addObjectsFromArray:v11];

    if (v8)
    {
      [MEMORY[0x1E699C9F0] phoneAndHeartRateMonitorSupportedActivityTypes];
    }

    else
    {
      [MEMORY[0x1E699C9F0] phoneOnlySupportedActivityTypes];
    }
    v12 = ;
    [v10 removeObjectsInArray:v12];

    if (!a3)
    {
      v13 = [MEMORY[0x1E699C9F0] wheelchairActivityTypes];
      [v10 addObjectsFromArray:v13];
    }

    v7 = [v10 hk_map:&__block_literal_global_316];
  }

  return v7;
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
  v2 = [MEMORY[0x1E699C9F0] swimmingOptimizedActivityTypes];
  v3 = [v2 hk_map:&__block_literal_global_320];

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
  v2 = [MEMORY[0x1E699C9F0] swimmingOtherActivityTypes];
  v3 = [v2 hk_map:&__block_literal_global_322];

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
  v2 = [MEMORY[0x1E699C9F0] deprecatedActivityTypes];
  v3 = [v2 hk_map:&__block_literal_global_324];

  return v3;
}

FIUIWorkoutActivityType *__50__FIUIWorkoutActivityType_deprecatedActivityTypes__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FIUIWorkoutActivityType alloc] initWithWorkoutActivityType:v2];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  workoutActivityType = self->_workoutActivityType;
  v4 = [a3 workoutActivityType];
  LOBYTE(workoutActivityType) = [(FIWorkoutActivityType *)workoutActivityType isEqual:v4];

  return workoutActivityType;
}

+ (id)possibleActivityTypesForIdentifier:(unint64_t)a3 locationType:(int64_t)a4 swimmingLocationType:(int64_t)a5 wheelchairUser:(BOOL)a6
{
  v6 = [MEMORY[0x1E699C9F0] possibleActivityTypesForIdentifier:a3 locationType:a4 swimmingLocationType:a5 wheelchairUser:a6];
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
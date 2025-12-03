@interface FIUIActivityDataModel
+ (id)formattingManager;
+ (id)idealizedModel;
+ (id)lockedModel;
- (BOOL)userHasDoneActivitySetup;
- (double)activeEnergyCompletionPercentage;
- (double)appleExerciseTimeCompletionPercentage;
- (double)appleMoveTimeCompletionPercentage;
- (double)appleStandHourCompletionPercentage;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)loggingString;
@end

@implementation FIUIActivityDataModel

+ (id)lockedModel
{
  v2 = objc_opt_new();
  v2[11] = 1;

  return v2;
}

+ (id)idealizedModel
{
  if (idealizedModel_onceToken != -1)
  {
    +[FIUIActivityDataModel idealizedModel];
  }

  v3 = idealizedModel_idealizedModel;

  return v3;
}

uint64_t __39__FIUIActivityDataModel_idealizedModel__block_invoke()
{
  v0 = objc_opt_new();
  v1 = idealizedModel_idealizedModel;
  idealizedModel_idealizedModel = v0;

  v2 = idealizedModel_idealizedModel;
  v3 = MEMORY[0x1E696C348];
  v4 = [MEMORY[0x1E696C510] kilocalorieUnit];
  v5 = [v3 quantityWithUnit:v4 doubleValue:500.0];
  [v2 setActiveEnergyGoal:v5];

  v6 = idealizedModel_idealizedModel;
  v7 = [idealizedModel_idealizedModel activeEnergyGoal];
  [v6 setActiveEnergyTotal:v7];

  [idealizedModel_idealizedModel setAppleStandHoursGoal:12];
  [idealizedModel_idealizedModel setAppleStandHoursTotal:{objc_msgSend(idealizedModel_idealizedModel, "appleStandHoursGoal")}];
  [idealizedModel_idealizedModel setAppleExerciseTimeGoal:30.0];
  v8 = idealizedModel_idealizedModel;
  [idealizedModel_idealizedModel appleExerciseTimeGoal];

  return [v8 setAppleExerciseTimeTotal:?];
}

- (id)debugDescription
{
  activeEnergyGoal = [(FIUIActivityDataModel *)self activeEnergyGoal];
  v4 = _kilocalorieUnit();
  [activeEnergyGoal doubleValueForUnit:v4];
  v6 = v5;

  activeEnergyTotal = [(FIUIActivityDataModel *)self activeEnergyTotal];
  v8 = _kilocalorieUnit();
  [activeEnergyTotal doubleValueForUnit:v8];
  v10 = v9;

  v11 = MEMORY[0x1E696AEC0];
  date = [(FIUIActivityDataModel *)self date];
  [(FIUIActivityDataModel *)self appleMoveTimeGoal];
  v14 = v13;
  [(FIUIActivityDataModel *)self appleMoveTimeTotal];
  v16 = v15;
  [(FIUIActivityDataModel *)self appleExerciseTimeGoal];
  v18 = v17;
  [(FIUIActivityDataModel *)self appleExerciseTimeTotal];
  v20 = [v11 stringWithFormat:@"Date: %@, Active Energy Goal: %f, Active Energy Total: %f, Apple Move Time Goal: %f, Apple Move Time Total: %f, Apple Exercise Time Goal: %f, Apple Exercise Time Total: %f, Apple Stand Hours Goal: %ld, Apple Stand Hours Total: %ld, databaseLoading %i, userHasDoneActivitySetup %i, deviceLocked %i, privacy %i areFitnessAppsRestricted %i paused %i", date, v6, v10, v14, v16, v18, v19, -[FIUIActivityDataModel appleStandHoursGoal](self, "appleStandHoursGoal"), -[FIUIActivityDataModel appleStandHoursTotal](self, "appleStandHoursTotal"), self->_databaseLoading, -[FIUIActivityDataModel userHasDoneActivitySetup](self, "userHasDoneActivitySetup"), self->_deviceLocked, 0, self->_areFitnessAppsRestricted, self->_paused];

  return v20;
}

- (BOOL)userHasDoneActivitySetup
{
  if ([(FIUIActivityDataModel *)self activityMoveMode]== 2)
  {
    [(FIUIActivityDataModel *)self appleMoveTimeGoal];
    v4 = v3;
  }

  else
  {
    activeEnergyGoal = [(FIUIActivityDataModel *)self activeEnergyGoal];
    v6 = _kilocalorieUnit();
    [activeEnergyGoal doubleValueForUnit:v6];
    v4 = v7;
  }

  return v4 > 0.0;
}

- (double)activeEnergyCompletionPercentage
{
  v21 = *MEMORY[0x1E69E9840];
  if ([(FIUIActivityDataModel *)self deviceLocked]|| [(FIUIActivityDataModel *)self areFitnessAppsRestricted]|| [(FIUIActivityDataModel *)self activityMoveMode]== 2 || ![(FIUIActivityDataModel *)self userHasDoneActivitySetup]|| [(FIUIActivityDataModel *)self databaseLoading]|| [(FIUIActivityDataModel *)self paused])
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x1E696B928];
    if (os_log_type_enabled(*MEMORY[0x1E696B928], OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      loggingString = [(FIUIActivityDataModel *)self loggingString];
      v17 = 138412546;
      v18 = v6;
      v19 = 2112;
      v20 = loggingString;
      _os_log_impl(&dword_1E5D0F000, v4, OS_LOG_TYPE_DEFAULT, "%@ %@", &v17, 0x16u);
    }

    return *MEMORY[0x1E6989B10];
  }

  else
  {
    activeEnergyGoal = [(FIUIActivityDataModel *)self activeEnergyGoal];
    v10 = _kilocalorieUnit();
    [activeEnergyGoal doubleValueForUnit:v10];
    v12 = v11;

    activeEnergyTotal = [(FIUIActivityDataModel *)self activeEnergyTotal];
    v14 = _kilocalorieUnit();
    [activeEnergyTotal doubleValueForUnit:v14];
    v16 = v15;

    result = v16 / v12;
    if (v12 <= 0.0)
    {
      return 0.0;
    }
  }

  return result;
}

- (double)appleMoveTimeCompletionPercentage
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(FIUIActivityDataModel *)self deviceLocked]|| [(FIUIActivityDataModel *)self areFitnessAppsRestricted]|| ![(FIUIActivityDataModel *)self userHasDoneActivitySetup]|| [(FIUIActivityDataModel *)self databaseLoading]|| [(FIUIActivityDataModel *)self activityMoveMode]!= 2 || [(FIUIActivityDataModel *)self paused])
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x1E696B928];
    if (os_log_type_enabled(*MEMORY[0x1E696B928], OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      loggingString = [(FIUIActivityDataModel *)self loggingString];
      v14 = 138412546;
      v15 = v6;
      v16 = 2112;
      v17 = loggingString;
      _os_log_impl(&dword_1E5D0F000, v4, OS_LOG_TYPE_DEFAULT, "%@ %@", &v14, 0x16u);
    }

    return *MEMORY[0x1E6989B10];
  }

  else
  {
    [(FIUIActivityDataModel *)self appleMoveTimeGoal];
    v10 = v9;
    result = 0.0;
    if (v10 > 0.0)
    {
      [(FIUIActivityDataModel *)self appleMoveTimeTotal];
      v12 = v11;
      [(FIUIActivityDataModel *)self appleMoveTimeGoal];
      return v12 / v13;
    }
  }

  return result;
}

- (double)appleExerciseTimeCompletionPercentage
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(FIUIActivityDataModel *)self deviceLocked]|| [(FIUIActivityDataModel *)self areFitnessAppsRestricted]|| ![(FIUIActivityDataModel *)self userHasDoneActivitySetup]|| [(FIUIActivityDataModel *)self databaseLoading]|| [(FIUIActivityDataModel *)self paused])
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x1E696B928];
    if (os_log_type_enabled(*MEMORY[0x1E696B928], OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      loggingString = [(FIUIActivityDataModel *)self loggingString];
      v14 = 138412546;
      v15 = v6;
      v16 = 2112;
      v17 = loggingString;
      _os_log_impl(&dword_1E5D0F000, v4, OS_LOG_TYPE_DEFAULT, "%@ %@", &v14, 0x16u);
    }

    return *MEMORY[0x1E6989B10];
  }

  else
  {
    [(FIUIActivityDataModel *)self appleExerciseTimeGoal];
    v10 = v9;
    result = 0.0;
    if (v10 > 0.0)
    {
      [(FIUIActivityDataModel *)self appleExerciseTimeTotal];
      v12 = v11;
      [(FIUIActivityDataModel *)self appleExerciseTimeGoal];
      return v12 / v13;
    }
  }

  return result;
}

- (double)appleStandHourCompletionPercentage
{
  if ([(FIUIActivityDataModel *)self deviceLocked]|| [(FIUIActivityDataModel *)self areFitnessAppsRestricted]|| ![(FIUIActivityDataModel *)self userHasDoneActivitySetup]|| [(FIUIActivityDataModel *)self databaseLoading]|| [(FIUIActivityDataModel *)self paused])
  {
    return *MEMORY[0x1E6989B10];
  }

  if ([(FIUIActivityDataModel *)self appleStandHoursGoal]< 1)
  {
    return 0.0;
  }

  appleStandHoursTotal = [(FIUIActivityDataModel *)self appleStandHoursTotal];
  return appleStandHoursTotal / [(FIUIActivityDataModel *)self appleStandHoursGoal];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  [v4 setActivityMoveMode:self->_activityMoveMode];
  [v4 setActiveEnergyTotal:self->_activeEnergyTotal];
  [v4 setActiveEnergyGoal:self->_activeEnergyGoal];
  [v4 setAppleMoveTimeTotal:self->_appleMoveTimeTotal];
  [v4 setAppleMoveTimeGoal:self->_appleMoveTimeGoal];
  [v4 setAppleExerciseTimeTotal:self->_appleExerciseTimeTotal];
  [v4 setAppleExerciseTimeGoal:self->_appleExerciseTimeGoal];
  [v4 setAppleStandHoursTotal:self->_appleStandHoursTotal];
  [v4 setAppleStandHoursGoal:self->_appleStandHoursGoal];
  [v4 setWheelchairUser:self->_wheelchairUser];
  [v4 setPaused:self->_paused];
  [v4 setActiveEnergyChartData:self->_activeEnergyChartData];
  [v4 setAppleExerciseTimeChartData:self->_appleExerciseTimeChartData];
  [v4 setAppleStandHourChartData:self->_appleStandHourChartData];
  v4[11] = self->_deviceLocked;
  v4[12] = self->_areFitnessAppsRestricted;
  return v4;
}

+ (id)formattingManager
{
  if (formattingManager_onceToken != -1)
  {
    +[FIUIActivityDataModel formattingManager];
  }

  v3 = formattingManager___formattingManager;

  return v3;
}

void __42__FIUIActivityDataModel_formattingManager__block_invoke()
{
  v3 = [MEMORY[0x1E696C1C0] fiui_sharedHealthStoreForCarousel];
  v0 = [[FIUIUnitManager alloc] initWithHealthStore:v3];
  v1 = [[FIUIFormattingManager alloc] initWithUnitManager:v0];
  v2 = formattingManager___formattingManager;
  formattingManager___formattingManager = v1;
}

- (id)loggingString
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"%s returning ARUIRingPercentageValueNoRing, with reason deviceLocked: %u, hasDoneActivitySetup: %i, databaseLoading: %u", "-[FIUIActivityDataModel loggingString]", -[FIUIActivityDataModel deviceLocked](self, "deviceLocked"), -[FIUIActivityDataModel userHasDoneActivitySetup](self, "userHasDoneActivitySetup"), -[FIUIActivityDataModel databaseLoading](self, "databaseLoading")];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@", activityMoveMode: %ld", -[FIUIActivityDataModel activityMoveMode](self, "activityMoveMode")];
  [v3 appendString:v4];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@", paused: %u", -[FIUIActivityDataModel paused](self, "paused")];
  [v3 appendString:v5];

  return v3;
}

@end
@interface FIUIUnitManager
+ (id)sharedManager;
- (FIUIUnitManager)init;
- (FIUIUnitManager)initWithHealthStore:(id)store;
- (FIUIUnitManager)initWithUnitManager:(id)manager;
- (id)userDistanceElevationHKUnit;
- (id)userDistanceHKUnitForActivityType:(id)type;
@end

@implementation FIUIUnitManager

void __48__FIUIUnitManager__notifyUnitPreferencesChanged__block_invoke()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"FitnessUnitPreferencesDidChangeNotification" object:0];
}

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[FIUIUnitManager sharedManager];
  }

  v3 = sharedManager___unitPreferencesManager;

  return v3;
}

uint64_t __32__FIUIUnitManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696C1C0]);
  v1 = sharedManager___healthStore;
  sharedManager___healthStore = v0;

  v2 = [FIUIUnitManager alloc];
  sharedManager___unitPreferencesManager = [(FIUIUnitManager *)v2 initWithHealthStore:sharedManager___healthStore];

  return MEMORY[0x1EEE66BB8]();
}

- (FIUIUnitManager)init
{
  v3 = objc_alloc_init(MEMORY[0x1E699C9E8]);
  v4 = [(FIUIUnitManager *)self initWithUnitManager:v3];

  return v4;
}

- (FIUIUnitManager)initWithHealthStore:(id)store
{
  v4 = MEMORY[0x1E699C9E8];
  storeCopy = store;
  v6 = [[v4 alloc] initWithHealthStore:storeCopy];

  v7 = [(FIUIUnitManager *)self initWithUnitManager:v6];
  return v7;
}

- (FIUIUnitManager)initWithUnitManager:(id)manager
{
  managerCopy = manager;
  v10.receiver = self;
  v10.super_class = FIUIUnitManager;
  v6 = [(FIUIUnitManager *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_unitManager, manager);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__notifyUnitPreferencesChanged name:*MEMORY[0x1E699CA10] object:0];
  }

  return v7;
}

- (id)userDistanceHKUnitForActivityType:(id)type
{
  unitManager = self->_unitManager;
  workoutActivityType = [type workoutActivityType];
  v5 = [(FIUnitManager *)unitManager userDistanceHKUnitForActivityType:workoutActivityType];

  return v5;
}

- (id)userDistanceElevationHKUnit
{
  if ([(FIUIUnitManager *)self userDistanceElevationUnit]== 1)
  {
    [MEMORY[0x1E696C510] meterUnit];
  }

  else
  {
    [MEMORY[0x1E696C510] footUnit];
  }
  v2 = ;

  return v2;
}

@end
@interface CyclePreferences
- (BOOL)hasAnyNonStandardPreferences;
- (CyclePreferences)initWithAvoidHills:(BOOL)a3 avoidBusyRoads:(BOOL)a4 ebike:(BOOL)a5 defaults:(id)a6;
- (CyclePreferences)initWithCopy:(id)a3;
- (CyclePreferences)initWithCyclingOptions:(id)a3 defaults:(id)a4;
- (CyclePreferences)initWithDefaults:(id)a3;
- (id)_values;
- (id)cyclingOptions;
- (void)loadValuesFromDefaults;
@end

@implementation CyclePreferences

- (CyclePreferences)initWithAvoidHills:(BOOL)a3 avoidBusyRoads:(BOOL)a4 ebike:(BOOL)a5 defaults:(id)a6
{
  v10.receiver = self;
  v10.super_class = CyclePreferences;
  result = [(WatchSyncedPreferences *)&v10 initWithDefaults:a6];
  if (result)
  {
    result->_avoidHills = a3;
    result->_avoidBusyRoads = a4;
    result->_ebike = a5;
  }

  return result;
}

- (CyclePreferences)initWithCyclingOptions:(id)a3 defaults:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 cyclingUserPreferences];
  v9 = [v7 cyclingVehicleSpecifications];

  v10 = -[CyclePreferences initWithAvoidHills:avoidBusyRoads:ebike:defaults:](self, "initWithAvoidHills:avoidBusyRoads:ebike:defaults:", [v8 avoidHills], objc_msgSend(v8, "avoidBusyRoads"), objc_msgSend(v9, "isEbike"), v6);
  return v10;
}

- (CyclePreferences)initWithDefaults:(id)a3
{
  v4.receiver = self;
  v4.super_class = CyclePreferences;
  return [(WatchSyncedPreferences *)&v4 initWithDefaults:a3];
}

- (CyclePreferences)initWithCopy:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CyclePreferences;
  v5 = [(WatchSyncedPreferences *)&v8 initWithCopy:v4];
  if (v5)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (v4)
    {
      if (isKindOfClass)
      {
        v5->_avoidHills = v4[24];
        v5->_avoidBusyRoads = v4[25];
        v5->_ebike = v4[26];
      }
    }
  }

  return v5;
}

- (id)cyclingOptions
{
  v3 = objc_opt_new();
  [v3 setAvoidHills:{-[CyclePreferences avoidHills](self, "avoidHills")}];
  [v3 setAvoidBusyRoads:{-[CyclePreferences avoidBusyRoads](self, "avoidBusyRoads")}];
  v4 = objc_alloc_init(GEOCyclingVehicleSpecifications);
  [v4 setIsEbike:{-[CyclePreferences ebike](self, "ebike")}];
  v5 = objc_opt_new();
  [v5 setCyclingUserPreferences:v3];
  [v5 setCyclingVehicleSpecifications:v4];

  return v5;
}

- (BOOL)hasAnyNonStandardPreferences
{
  if ([(CyclePreferences *)self avoidHills])
  {
    return 1;
  }

  return [(CyclePreferences *)self avoidBusyRoads];
}

- (void)loadValuesFromDefaults
{
  v3 = [(WatchSyncedPreferences *)self defaults];
  -[CyclePreferences setAvoidHills:](self, "setAvoidHills:", [v3 BOOLForKey:@"MapsDefaultAvoidHillsKey"]);

  v4 = [(WatchSyncedPreferences *)self defaults];
  -[CyclePreferences setAvoidBusyRoads:](self, "setAvoidBusyRoads:", [v4 BOOLForKey:@"MapsDefaultAvoidBusyRoadsKey"]);

  v5 = [(WatchSyncedPreferences *)self defaults];
  -[CyclePreferences setEbike:](self, "setEbike:", [v5 BOOLForKey:@"MapsDefaultUseEbikeKey"]);
}

- (id)_values
{
  v3 = [NSNumber numberWithBool:self->_avoidHills];
  v4 = [NSNumber numberWithBool:self->_avoidBusyRoads, v3];
  v8[1] = v4;
  v5 = [NSNumber numberWithBool:self->_ebike];
  v8[2] = v5;
  v6 = [NSArray arrayWithObjects:v8 count:3];

  return v6;
}

@end
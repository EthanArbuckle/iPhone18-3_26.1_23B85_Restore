@interface DrivePreferences
- (BOOL)hasAnyNonStandardPreferences;
- (DrivePreferences)initWithAutomobileOptions:(id)options defaults:(id)defaults;
- (DrivePreferences)initWithAvoidTolls:(BOOL)tolls avoidHighways:(BOOL)highways ignoreLiveTraffic:(BOOL)traffic defaults:(id)defaults;
- (DrivePreferences)initWithCopy:(id)copy;
- (DrivePreferences)initWithDefaults:(id)defaults;
- (id)_values;
- (id)automobileOptions;
- (id)writtenDefaults;
- (void)loadValuesFromDefaults;
@end

@implementation DrivePreferences

- (DrivePreferences)initWithAvoidTolls:(BOOL)tolls avoidHighways:(BOOL)highways ignoreLiveTraffic:(BOOL)traffic defaults:(id)defaults
{
  v10.receiver = self;
  v10.super_class = DrivePreferences;
  result = [(WatchSyncedPreferences *)&v10 initWithDefaults:defaults];
  if (result)
  {
    result->_avoidTolls = tolls;
    result->_avoidHighways = highways;
    result->_ignoreLiveTraffic = traffic;
  }

  return result;
}

- (DrivePreferences)initWithAutomobileOptions:(id)options defaults:(id)defaults
{
  defaultsCopy = defaults;
  optionsCopy = options;
  userPreferences = [optionsCopy userPreferences];
  avoidTolls = [userPreferences avoidTolls];
  userPreferences2 = [optionsCopy userPreferences];
  avoidHighways = [userPreferences2 avoidHighways];
  trafficType = [optionsCopy trafficType];

  v13 = [(DrivePreferences *)self initWithAvoidTolls:avoidTolls avoidHighways:avoidHighways ignoreLiveTraffic:trafficType != 3 defaults:defaultsCopy];
  return v13;
}

- (DrivePreferences)initWithDefaults:(id)defaults
{
  v4.receiver = self;
  v4.super_class = DrivePreferences;
  return [(WatchSyncedPreferences *)&v4 initWithDefaults:defaults];
}

- (DrivePreferences)initWithCopy:(id)copy
{
  copyCopy = copy;
  v8.receiver = self;
  v8.super_class = DrivePreferences;
  v5 = [(WatchSyncedPreferences *)&v8 initWithCopy:copyCopy];
  if (v5)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (copyCopy)
    {
      if (isKindOfClass)
      {
        v5->_avoidTolls = copyCopy[24];
        v5->_avoidHighways = copyCopy[25];
        v5->_ignoreLiveTraffic = copyCopy[26];
      }
    }
  }

  return v5;
}

- (id)automobileOptions
{
  v3 = objc_opt_new();
  [v3 setIncludeHistoricTravelTime:1];
  if ([(DrivePreferences *)self ignoreLiveTraffic])
  {
    v4 = 1;
  }

  else
  {
    v4 = 3;
  }

  [v3 setTrafficType:v4];
  v5 = objc_opt_new();
  [v5 setAvoidTolls:{-[DrivePreferences avoidTolls](self, "avoidTolls")}];
  [v5 setAvoidHighways:{-[DrivePreferences avoidHighways](self, "avoidHighways")}];
  [v3 setUserPreferences:v5];

  return v3;
}

- (id)writtenDefaults
{
  defaults = [(WatchSyncedPreferences *)self defaults];
  v6[0] = defaults;
  v3 = +[NSUserDefaults __maps_groupUserDefaults];
  v6[1] = v3;
  v4 = [NSArray arrayWithObjects:v6 count:2];

  return v4;
}

- (BOOL)hasAnyNonStandardPreferences
{
  if ([(DrivePreferences *)self avoidTolls])
  {
    return 1;
  }

  return [(DrivePreferences *)self avoidHighways];
}

- (void)loadValuesFromDefaults
{
  defaults = [(WatchSyncedPreferences *)self defaults];
  -[DrivePreferences setAvoidTolls:](self, "setAvoidTolls:", [defaults BOOLForKey:@"MapsDefaultAvoidTollsKey"]);

  defaults2 = [(WatchSyncedPreferences *)self defaults];
  -[DrivePreferences setAvoidHighways:](self, "setAvoidHighways:", [defaults2 BOOLForKey:@"MapsDefaultAvoidHighwaysKey"]);

  defaults3 = [(WatchSyncedPreferences *)self defaults];
  -[DrivePreferences setIgnoreLiveTraffic:](self, "setIgnoreLiveTraffic:", [defaults3 BOOLForKey:@"NavigationDirectionsIgnoreLiveTraffic"]);
}

- (id)_values
{
  v3 = [NSNumber numberWithBool:self->_avoidTolls];
  v4 = [NSNumber numberWithBool:self->_avoidHighways, v3];
  v8[1] = v4;
  v5 = [NSNumber numberWithBool:self->_ignoreLiveTraffic];
  v8[2] = v5;
  v6 = [NSArray arrayWithObjects:v8 count:3];

  return v6;
}

@end
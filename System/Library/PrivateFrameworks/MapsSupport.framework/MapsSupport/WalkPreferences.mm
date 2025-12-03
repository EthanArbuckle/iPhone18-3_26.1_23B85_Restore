@interface WalkPreferences
- (BOOL)hasAnyNonStandardPreferences;
- (WalkPreferences)initWithAvoidHills:(BOOL)hills avoidBusyRoads:(BOOL)roads avoidStairs:(BOOL)stairs defaults:(id)defaults;
- (WalkPreferences)initWithCopy:(id)copy;
- (WalkPreferences)initWithDefaults:(id)defaults;
- (WalkPreferences)initWithWalkingOptions:(id)options defaults:(id)defaults;
- (id)_values;
- (id)walkingOptions;
- (void)loadValuesFromDefaults;
@end

@implementation WalkPreferences

- (WalkPreferences)initWithAvoidHills:(BOOL)hills avoidBusyRoads:(BOOL)roads avoidStairs:(BOOL)stairs defaults:(id)defaults
{
  v10.receiver = self;
  v10.super_class = WalkPreferences;
  result = [(WatchSyncedPreferences *)&v10 initWithDefaults:defaults];
  if (result)
  {
    result->_avoidHills = hills;
    result->_avoidBusyRoads = roads;
    result->_avoidStairs = stairs;
  }

  return result;
}

- (WalkPreferences)initWithWalkingOptions:(id)options defaults:(id)defaults
{
  defaultsCopy = defaults;
  walkingUserPreferences = [options walkingUserPreferences];
  v8 = -[WalkPreferences initWithAvoidHills:avoidBusyRoads:avoidStairs:defaults:](self, "initWithAvoidHills:avoidBusyRoads:avoidStairs:defaults:", [walkingUserPreferences avoidHills], objc_msgSend(walkingUserPreferences, "avoidBusyRoads"), objc_msgSend(walkingUserPreferences, "avoidStairs"), defaultsCopy);

  return v8;
}

- (WalkPreferences)initWithDefaults:(id)defaults
{
  v4.receiver = self;
  v4.super_class = WalkPreferences;
  return [(WatchSyncedPreferences *)&v4 initWithDefaults:defaults];
}

- (WalkPreferences)initWithCopy:(id)copy
{
  copyCopy = copy;
  v8.receiver = self;
  v8.super_class = WalkPreferences;
  v5 = [(WatchSyncedPreferences *)&v8 initWithCopy:copyCopy];
  if (v5)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (copyCopy)
    {
      if (isKindOfClass)
      {
        v5->_avoidHills = copyCopy[24];
        v5->_avoidBusyRoads = copyCopy[25];
        v5->_avoidStairs = copyCopy[26];
      }
    }
  }

  return v5;
}

- (id)walkingOptions
{
  v3 = objc_opt_new();
  [v3 setAvoidHills:{-[WalkPreferences avoidHills](self, "avoidHills")}];
  [v3 setAvoidBusyRoads:{-[WalkPreferences avoidBusyRoads](self, "avoidBusyRoads")}];
  [v3 setAvoidStairs:{-[WalkPreferences avoidStairs](self, "avoidStairs")}];
  v4 = objc_opt_new();
  [v4 setWalkingUserPreferences:v3];

  return v4;
}

- (BOOL)hasAnyNonStandardPreferences
{
  if ([(WalkPreferences *)self avoidHills]|| [(WalkPreferences *)self avoidBusyRoads])
  {
    return 1;
  }

  return [(WalkPreferences *)self avoidStairs];
}

- (void)loadValuesFromDefaults
{
  defaults = [(WatchSyncedPreferences *)self defaults];
  -[WalkPreferences setAvoidHills:](self, "setAvoidHills:", [defaults BOOLForKey:@"MapsDefaultWalkingAvoidHillsKey"]);

  defaults2 = [(WatchSyncedPreferences *)self defaults];
  -[WalkPreferences setAvoidBusyRoads:](self, "setAvoidBusyRoads:", [defaults2 BOOLForKey:@"MapsDefaultWalkingAvoidBusyRoadsKey"]);

  defaults3 = [(WatchSyncedPreferences *)self defaults];
  -[WalkPreferences setAvoidStairs:](self, "setAvoidStairs:", [defaults3 BOOLForKey:@"MapsDefaultWalkingAvoidStairsKey"]);
}

- (id)_values
{
  v3 = [NSNumber numberWithBool:self->_avoidHills];
  v4 = [NSNumber numberWithBool:self->_avoidBusyRoads, v3];
  v8[1] = v4;
  v5 = [NSNumber numberWithBool:self->_avoidStairs];
  v8[2] = v5;
  v6 = [NSArray arrayWithObjects:v8 count:3];

  return v6;
}

@end
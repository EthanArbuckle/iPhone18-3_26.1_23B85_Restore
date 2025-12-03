@interface HDDemoDataGeneratorState
- (BOOL)isCoolingDown;
- (BOOL)isCrossCountrySkiing;
- (BOOL)isCycling;
- (BOOL)isDoingElliptical;
- (BOOL)isDoingHIIT;
- (BOOL)isDoingYoga;
- (BOOL)isDownhillSnowSports;
- (BOOL)isExercising;
- (BOOL)isGolf;
- (BOOL)isHiking;
- (BOOL)isPaddleSports;
- (BOOL)isRowing;
- (BOOL)isRunning;
- (BOOL)isSkatingSports;
- (BOOL)isSoccer;
- (BOOL)isSwimming;
- (BOOL)isUnderwaterDiving;
- (BOOL)isWalking;
- (HDDemoDataGeneratorState)init;
- (HDDemoDataGeneratorState)initWithCoder:(id)coder;
- (NSDate)currentDate;
- (int64_t)calendarDay;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDDemoDataGeneratorState

- (HDDemoDataGeneratorState)init
{
  v8.receiver = self;
  v8.super_class = HDDemoDataGeneratorState;
  v2 = [(HDDemoDataGeneratorState *)&v8 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_createdFromNSKeyedUnarchiver = 0;
    firstSampleDate = v2->_firstSampleDate;
    v2->_firstSampleDate = 0;

    lastSampleDate = v3->_lastSampleDate;
    v3->_lastSampleDate = 0;

    lastRunDate = v3->_lastRunDate;
    v3->_lastRunDate = 0;

    v3->_endTime = 0.0;
    v3->_firstRun = 0;
    v3->_currentDay = 0;
    v3->_startTime = 0.0;
  }

  return v3;
}

- (BOOL)isExercising
{
  workoutConfiguration = [(HDDemoDataGeneratorState *)self workoutConfiguration];
  v3 = workoutConfiguration != 0;

  return v3;
}

- (BOOL)isRunning
{
  if (![(HDDemoDataGeneratorState *)self isExercising])
  {
    return 0;
  }

  workoutConfiguration = [(HDDemoDataGeneratorState *)self workoutConfiguration];
  v4 = [workoutConfiguration activityType] == 37;

  return v4;
}

- (BOOL)isCycling
{
  if (![(HDDemoDataGeneratorState *)self isExercising])
  {
    return 0;
  }

  workoutConfiguration = [(HDDemoDataGeneratorState *)self workoutConfiguration];
  v4 = [workoutConfiguration activityType] == 13;

  return v4;
}

- (BOOL)isSwimming
{
  if (![(HDDemoDataGeneratorState *)self isExercising])
  {
    return 0;
  }

  workoutConfiguration = [(HDDemoDataGeneratorState *)self workoutConfiguration];
  v4 = [workoutConfiguration activityType] == 46;

  return v4;
}

- (BOOL)isDoingHIIT
{
  if (![(HDDemoDataGeneratorState *)self isExercising])
  {
    return 0;
  }

  workoutConfiguration = [(HDDemoDataGeneratorState *)self workoutConfiguration];
  v4 = [workoutConfiguration activityType] == 63;

  return v4;
}

- (BOOL)isDoingElliptical
{
  if (![(HDDemoDataGeneratorState *)self isExercising])
  {
    return 0;
  }

  workoutConfiguration = [(HDDemoDataGeneratorState *)self workoutConfiguration];
  v4 = [workoutConfiguration activityType] == 16;

  return v4;
}

- (BOOL)isWalking
{
  if (![(HDDemoDataGeneratorState *)self isExercising])
  {
    return 0;
  }

  workoutConfiguration = [(HDDemoDataGeneratorState *)self workoutConfiguration];
  v4 = [workoutConfiguration activityType] == 52;

  return v4;
}

- (BOOL)isDoingYoga
{
  if (![(HDDemoDataGeneratorState *)self isExercising])
  {
    return 0;
  }

  workoutConfiguration = [(HDDemoDataGeneratorState *)self workoutConfiguration];
  v4 = [workoutConfiguration activityType] == 57;

  return v4;
}

- (BOOL)isHiking
{
  if (![(HDDemoDataGeneratorState *)self isExercising])
  {
    return 0;
  }

  workoutConfiguration = [(HDDemoDataGeneratorState *)self workoutConfiguration];
  v4 = [workoutConfiguration activityType] == 24;

  return v4;
}

- (BOOL)isCoolingDown
{
  if (![(HDDemoDataGeneratorState *)self isExercising])
  {
    return 0;
  }

  workoutConfiguration = [(HDDemoDataGeneratorState *)self workoutConfiguration];
  v4 = [workoutConfiguration activityType] == 80;

  return v4;
}

- (BOOL)isUnderwaterDiving
{
  if (![(HDDemoDataGeneratorState *)self isExercising])
  {
    return 0;
  }

  workoutConfiguration = [(HDDemoDataGeneratorState *)self workoutConfiguration];
  v4 = [workoutConfiguration activityType] == 84;

  return v4;
}

- (BOOL)isCrossCountrySkiing
{
  if (![(HDDemoDataGeneratorState *)self isExercising])
  {
    return 0;
  }

  workoutConfiguration = [(HDDemoDataGeneratorState *)self workoutConfiguration];
  v4 = [workoutConfiguration activityType] == 60;

  return v4;
}

- (BOOL)isRowing
{
  if (![(HDDemoDataGeneratorState *)self isExercising])
  {
    return 0;
  }

  workoutConfiguration = [(HDDemoDataGeneratorState *)self workoutConfiguration];
  v4 = [workoutConfiguration activityType] == 35;

  return v4;
}

- (BOOL)isSkatingSports
{
  if (![(HDDemoDataGeneratorState *)self isExercising])
  {
    return 0;
  }

  workoutConfiguration = [(HDDemoDataGeneratorState *)self workoutConfiguration];
  v4 = [workoutConfiguration activityType] == 39;

  return v4;
}

- (BOOL)isPaddleSports
{
  if (![(HDDemoDataGeneratorState *)self isExercising])
  {
    return 0;
  }

  workoutConfiguration = [(HDDemoDataGeneratorState *)self workoutConfiguration];
  v4 = [workoutConfiguration activityType] == 31;

  return v4;
}

- (BOOL)isGolf
{
  if (![(HDDemoDataGeneratorState *)self isExercising])
  {
    return 0;
  }

  workoutConfiguration = [(HDDemoDataGeneratorState *)self workoutConfiguration];
  v4 = [workoutConfiguration activityType] == 21;

  return v4;
}

- (BOOL)isDownhillSnowSports
{
  if (![(HDDemoDataGeneratorState *)self isExercising])
  {
    return 0;
  }

  workoutConfiguration = [(HDDemoDataGeneratorState *)self workoutConfiguration];
  if ([workoutConfiguration activityType] == 61)
  {
    v4 = 1;
  }

  else
  {
    workoutConfiguration2 = [(HDDemoDataGeneratorState *)self workoutConfiguration];
    v4 = [workoutConfiguration2 activityType] == 67;
  }

  return v4;
}

- (BOOL)isSoccer
{
  if (![(HDDemoDataGeneratorState *)self isExercising])
  {
    return 0;
  }

  workoutConfiguration = [(HDDemoDataGeneratorState *)self workoutConfiguration];
  v4 = [workoutConfiguration activityType] == 41;

  return v4;
}

- (NSDate)currentDate
{
  firstSampleDate = [(HDDemoDataGeneratorState *)self firstSampleDate];
  [(HDDemoDataGeneratorState *)self currentTime];
  v5 = [firstSampleDate dateByAddingTimeInterval:v4 * 86400.0];

  return v5;
}

- (int64_t)calendarDay
{
  v3 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  currentDate = [(HDDemoDataGeneratorState *)self currentDate];
  v5 = [v3 component:512 fromDate:currentDate];

  return v5;
}

- (HDDemoDataGeneratorState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = HDDemoDataGeneratorState;
  v5 = [(HDDemoDataGeneratorState *)&v16 init];
  v6 = v5;
  if (v5)
  {
    *&v5->_createdFromNSKeyedUnarchiver = 1;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HDDemoDataGeneratorStateFirstSampleDateKey"];
    firstSampleDate = v6->_firstSampleDate;
    v6->_firstSampleDate = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HDDemoDataGeneratorStateLastSampleDateKey"];
    lastSampleDate = v6->_lastSampleDate;
    v6->_lastSampleDate = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HDDemoDataGeneratorStateLastRunDateKey"];
    lastRunDate = v6->_lastRunDate;
    v6->_lastRunDate = v11;

    v6->_currentDay = [coderCopy decodeIntegerForKey:@"HDDemoDataGeneratorStateCurrentDayKey"];
    [coderCopy decodeDoubleForKey:@"HDDemoDataGeneratorStateStartTimeKey"];
    v6->_startTime = v13;
    [coderCopy decodeDoubleForKey:@"HDDemoDataGeneratorStateEndTimeKey"];
    v6->_endTime = v14;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  firstSampleDate = self->_firstSampleDate;
  coderCopy = coder;
  [coderCopy encodeObject:firstSampleDate forKey:@"HDDemoDataGeneratorStateFirstSampleDateKey"];
  [coderCopy encodeObject:self->_lastSampleDate forKey:@"HDDemoDataGeneratorStateLastSampleDateKey"];
  [coderCopy encodeObject:self->_lastRunDate forKey:@"HDDemoDataGeneratorStateLastRunDateKey"];
  [coderCopy encodeInteger:self->_currentDay forKey:@"HDDemoDataGeneratorStateCurrentDayKey"];
  [coderCopy encodeDouble:@"HDDemoDataGeneratorStateStartTimeKey" forKey:self->_startTime];
  [coderCopy encodeDouble:@"HDDemoDataGeneratorStateEndTimeKey" forKey:self->_endTime];
}

@end
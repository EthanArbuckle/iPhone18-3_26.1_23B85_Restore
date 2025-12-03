@interface HDDemoDataWorkoutPrototype
+ (id)HIITPrototype;
+ (id)coolDownPrototype;
+ (id)coreTrainingPrototype;
+ (id)cyclingPrototype;
+ (id)dancePrototype;
+ (id)downhillSnowSportsPrototype;
+ (id)ellipticalPrototype;
+ (id)functionalStrengthTrainingPrototype;
+ (id)golfPrototype;
+ (id)hikingPrototype;
+ (id)pickRandomWorkoutFrom:(id)from;
+ (id)runningPrototype;
+ (id)soccerPrototype;
+ (id)swimmingPrototype;
+ (id)thirdPartyWorkoutPrototype;
+ (id)underwaterDivingPrototype;
+ (id)walkingPrototype;
+ (id)workoutPrototypeWithActivityType:(unint64_t)type goalType:(unint64_t)goalType goal:(id)goal startTime:(double)time duration:(double)duration energyBurned:(double)burned distanceWalking:(double)walking distanceCycling:(double)self0;
+ (id)workoutPrototypeWithActivityType:(unint64_t)type goalType:(unint64_t)goalType goal:(id)goal startTime:(double)time duration:(double)duration energyBurned:(double)burned distanceWalking:(double)walking distanceCycling:(double)self0 distanceCrossCountrySkiing:(double)self1 distanceRowing:(double)self2 distanceSkatingSports:(double)self3 distancePaddleSports:(double)self4 distanceDownhillSnowSports:(double)self5;
+ (id)workoutPrototypeWithActivityType:(unint64_t)type goalType:(unint64_t)goalType goal:(id)goal startTime:(double)time duration:(double)duration energyBurned:(double)burned distanceWalking:(double)walking distanceCycling:(double)self0 distanceSwimming:(double)self1 distanceSwimmingSegment:(double)self2 totalSwimmingSegments:(int64_t)self3 numLapsPerSegment:(int64_t)self4 swimTimePerSegment:(double)self5 restTimePerSegment:(double)self6 swimmingStrokeStyle:(int64_t)self7;
+ (id)yogaAndRunningPrototypes;
+ (id)yogaPrototype;
@end

@implementation HDDemoDataWorkoutPrototype

+ (id)workoutPrototypeWithActivityType:(unint64_t)type goalType:(unint64_t)goalType goal:(id)goal startTime:(double)time duration:(double)duration energyBurned:(double)burned distanceWalking:(double)walking distanceCycling:(double)self0
{
  goalCopy = goal;
  v18 = objc_alloc_init(HDDemoDataWorkoutPrototype);
  v18->_workoutActivityType = type;
  v18->_goalType = goalType;
  goal = v18->_goal;
  v18->_goal = goalCopy;

  v18->_startTimeOffsetInDay = time;
  v18->_duration = duration;
  v18->_totalEnergyBurnedInKcal = burned;
  v18->_totalDistanceWalkingInMiles = walking;
  v18->_totalDistanceCyclingInMiles = cycling;

  return v18;
}

+ (id)workoutPrototypeWithActivityType:(unint64_t)type goalType:(unint64_t)goalType goal:(id)goal startTime:(double)time duration:(double)duration energyBurned:(double)burned distanceWalking:(double)walking distanceCycling:(double)self0 distanceSwimming:(double)self1 distanceSwimmingSegment:(double)self2 totalSwimmingSegments:(int64_t)self3 numLapsPerSegment:(int64_t)self4 swimTimePerSegment:(double)self5 restTimePerSegment:(double)self6 swimmingStrokeStyle:(int64_t)self7
{
  goalCopy = goal;
  v30 = objc_alloc_init(HDDemoDataWorkoutPrototype);
  v30->_workoutActivityType = type;
  v30->_goalType = goalType;
  goal = v30->_goal;
  v30->_goal = goalCopy;

  v30->_startTimeOffsetInDay = time;
  v30->_duration = duration;
  v30->_totalEnergyBurnedInKcal = burned;
  v30->_totalDistanceWalkingInMiles = walking;
  v30->_totalDistanceCyclingInMiles = cycling;
  v30->_totalDistanceSwimmingInYards = swimming;
  v30->_swimmingSegmentDistanceInYards = segment;
  v30->_totalSwimmingSegments = segments;
  v30->_numLapsPerSegment = perSegment;
  v30->_swimTimePerSegment = timePerSegment;
  v30->_restTimePerSegment = restTimePerSegment;
  v30->_swimmingStrokeStyle = style;

  return v30;
}

+ (id)workoutPrototypeWithActivityType:(unint64_t)type goalType:(unint64_t)goalType goal:(id)goal startTime:(double)time duration:(double)duration energyBurned:(double)burned distanceWalking:(double)walking distanceCycling:(double)self0 distanceCrossCountrySkiing:(double)self1 distanceRowing:(double)self2 distanceSkatingSports:(double)self3 distancePaddleSports:(double)self4 distanceDownhillSnowSports:(double)self5
{
  goalCopy = goal;
  v24 = objc_alloc_init(HDDemoDataWorkoutPrototype);
  v24->_workoutActivityType = type;
  v24->_goalType = goalType;
  goal = v24->_goal;
  v24->_goal = goalCopy;

  v24->_startTimeOffsetInDay = time;
  v24->_duration = duration;
  v24->_totalEnergyBurnedInKcal = burned;
  v24->_totalDistanceWalkingInMiles = walking;
  v24->_totalDistanceCyclingInMiles = cycling;
  v24->_totalDistanceCrossCountrySkiingInMeters = skiing;
  v24->_totalDistanceRowingInMeters = rowing;
  v24->_totalDistanceSkatingSportsInMeters = sports;
  v24->_totalDistancePaddleSportsInMeters = paddleSports;
  v24->_totalDistanceDownhillSnowSportsInMeters = snowSports;

  return v24;
}

+ (id)ellipticalPrototype
{
  v2 = objc_opt_class();
  v3 = MEMORY[0x277CCD7E8];
  minuteUnit = [MEMORY[0x277CCDAB0] minuteUnit];
  v5 = [v3 quantityWithUnit:minuteUnit doubleValue:30.0];
  v6 = [v2 workoutPrototypeWithActivityType:16 goalType:2 goal:v5 startTime:0.334027778 duration:1800.0 energyBurned:452.0 distanceWalking:0.0 distanceCycling:0.0];

  return v6;
}

+ (id)HIITPrototype
{
  v2 = objc_opt_class();
  v3 = MEMORY[0x277CCD7E8];
  minuteUnit = [MEMORY[0x277CCDAB0] minuteUnit];
  v5 = [v3 quantityWithUnit:minuteUnit doubleValue:30.0];
  v6 = [v2 workoutPrototypeWithActivityType:63 goalType:2 goal:v5 startTime:0.345486111 duration:1800.0 energyBurned:322.0 distanceWalking:0.0 distanceCycling:0.0];

  return v6;
}

+ (id)runningPrototype
{
  v2 = objc_opt_class();
  v3 = MEMORY[0x277CCD7E8];
  mileUnit = [MEMORY[0x277CCDAB0] mileUnit];
  v5 = [v3 quantityWithUnit:mileUnit doubleValue:5.0];
  v6 = [v2 workoutPrototypeWithActivityType:37 goalType:1 goal:v5 startTime:0.356944444 duration:3240.0 energyBurned:545.0 distanceWalking:5.12 distanceCycling:0.0];

  return v6;
}

+ (id)cyclingPrototype
{
  v2 = objc_opt_class();
  v3 = MEMORY[0x277CCD7E8];
  mileUnit = [MEMORY[0x277CCDAB0] mileUnit];
  v5 = [v3 quantityWithUnit:mileUnit doubleValue:10.0];
  v6 = [v2 workoutPrototypeWithActivityType:13 goalType:1 goal:v5 startTime:0.356944444 duration:2520.0 energyBurned:513.0 distanceWalking:0.0 distanceCycling:10.8];

  return v6;
}

+ (id)swimmingPrototype
{
  v2 = objc_opt_class();
  v3 = MEMORY[0x277CCD7E8];
  yardUnit = [MEMORY[0x277CCDAB0] yardUnit];
  v5 = [v3 quantityWithUnit:yardUnit doubleValue:1500.0];
  v6 = [v2 workoutPrototypeWithActivityType:46 goalType:1 goal:v5 startTime:8 duration:2 energyBurned:2 distanceWalking:0.348611111 distanceCycling:1800.0 distanceSwimming:458.5 distanceSwimmingSegment:0.0 totalSwimmingSegments:0.0 numLapsPerSegment:1500.0 swimTimePerSegment:200.0 restTimePerSegment:180.0 swimmingStrokeStyle:0x404E000000000000];

  return v6;
}

+ (id)walkingPrototype
{
  v2 = objc_opt_class();
  v3 = MEMORY[0x277CCD7E8];
  mileUnit = [MEMORY[0x277CCDAB0] mileUnit];
  v5 = [v3 quantityWithUnit:mileUnit doubleValue:2.0];
  v6 = [v2 workoutPrototypeWithActivityType:52 goalType:1 goal:v5 startTime:0.344097222 duration:1800.0 energyBurned:205.0 distanceWalking:2.04 distanceCycling:0.0];

  return v6;
}

+ (id)hikingPrototype
{
  v2 = objc_opt_class();

  return [v2 workoutPrototypeWithActivityType:24 goalType:0 goal:0 startTime:0.342013889 duration:3600.0 energyBurned:446.0 distanceWalking:1.97 distanceCycling:0.0];
}

+ (id)yogaPrototype
{
  v2 = objc_opt_class();
  v3 = MEMORY[0x277CCD7E8];
  hourUnit = [MEMORY[0x277CCDAB0] hourUnit];
  v5 = [v3 quantityWithUnit:hourUnit doubleValue:1.0];
  v6 = [v2 workoutPrototypeWithActivityType:57 goalType:2 goal:v5 startTime:0.345486111 duration:3600.0 energyBurned:210.0 distanceWalking:0.0 distanceCycling:0.0];

  return v6;
}

+ (id)thirdPartyWorkoutPrototype
{
  v2 = objc_opt_class();

  return [v2 workoutPrototypeWithActivityType:0 goalType:0 goal:0 startTime:0.673611111 duration:1260.0 energyBurned:188.0 distanceWalking:0.0 distanceCycling:0.0];
}

+ (id)functionalStrengthTrainingPrototype
{
  v2 = objc_opt_class();

  return [v2 workoutPrototypeWithActivityType:20 goalType:0 goal:0 startTime:0.340277778 duration:1800.0 energyBurned:220.0 distanceWalking:0.0 distanceCycling:0.0];
}

+ (id)coolDownPrototype
{
  v2 = objc_opt_class();

  return [v2 workoutPrototypeWithActivityType:80 goalType:0 goal:0 startTime:0.350347222 duration:600.0 energyBurned:56.0 distanceWalking:0.0 distanceCycling:0.0];
}

+ (id)coreTrainingPrototype
{
  v2 = objc_opt_class();

  return [v2 workoutPrototypeWithActivityType:59 goalType:0 goal:0 startTime:0.336805556 duration:1800.0 energyBurned:180.0 distanceWalking:0.0 distanceCycling:0.0];
}

+ (id)dancePrototype
{
  v2 = objc_opt_class();
  v3 = MEMORY[0x277CCD7E8];
  minuteUnit = [MEMORY[0x277CCDAB0] minuteUnit];
  v5 = [v3 quantityWithUnit:minuteUnit doubleValue:30.0];
  v6 = [v2 workoutPrototypeWithActivityType:77 goalType:2 goal:v5 startTime:0.346875 duration:3600.0 energyBurned:322.0 distanceWalking:0.0 distanceCycling:0.0];

  return v6;
}

+ (id)underwaterDivingPrototype
{
  v2 = objc_opt_class();

  return [v2 workoutPrototypeWithActivityType:84 goalType:0 goal:0 startTime:0.352233796 duration:3600.0 energyBurned:450.0 distanceWalking:0.0 distanceCycling:0.0];
}

+ (id)golfPrototype
{
  v2 = objc_opt_class();

  return [v2 workoutPrototypeWithActivityType:21 goalType:0 goal:0 startTime:0.338252315 duration:3600.0 energyBurned:200.0 distanceWalking:3.43 distanceCycling:0.0];
}

+ (id)downhillSnowSportsPrototype
{
  if (arc4random_uniform(2u))
  {
    v2 = 61;
  }

  else
  {
    v2 = 67;
  }

  return [objc_opt_class() workoutPrototypeWithActivityType:v2 goalType:0 goal:0 startTime:0.336828704 duration:1800.0 energyBurned:326.0 distanceWalking:0.0 distanceCycling:0.0 distanceCrossCountrySkiing:0.0 distanceRowing:0.0 distanceSkatingSports:0.0 distancePaddleSports:0 distanceDownhillSnowSports:0x40B83D0000000000];
}

+ (id)soccerPrototype
{
  v2 = objc_opt_class();

  return [v2 workoutPrototypeWithActivityType:41 goalType:0 goal:0 startTime:0.709733796 duration:1800.0 energyBurned:350.0 distanceWalking:6.43 distanceCycling:0.0];
}

+ (id)yogaAndRunningPrototypes
{
  v15[2] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v3 = MEMORY[0x277CCD7E8];
  hourUnit = [MEMORY[0x277CCDAB0] hourUnit];
  v5 = [v3 quantityWithUnit:hourUnit doubleValue:1.0];
  v6 = [v2 workoutPrototypeWithActivityType:57 goalType:2 goal:v5 startTime:0.345486111 duration:3600.0 energyBurned:210.0 distanceWalking:0.0 distanceCycling:0.0];
  v15[0] = v6;
  v7 = objc_opt_class();
  v8 = MEMORY[0x277CCD7E8];
  mileUnit = [MEMORY[0x277CCDAB0] mileUnit];
  v10 = [v8 quantityWithUnit:mileUnit doubleValue:5.0];
  v11 = [v7 workoutPrototypeWithActivityType:37 goalType:1 goal:v10 startTime:0.440277778 duration:3240.0 energyBurned:545.0 distanceWalking:5.12 distanceCycling:0.0];
  v15[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)pickRandomWorkoutFrom:(id)from
{
  fromCopy = from;
  v4 = [fromCopy objectAtIndex:{arc4random() % objc_msgSend(fromCopy, "count")}];

  return v4;
}

@end
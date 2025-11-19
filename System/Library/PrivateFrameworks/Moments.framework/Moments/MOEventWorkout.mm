@interface MOEventWorkout
- (MOEventWorkout)init;
- (MOEventWorkout)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOEventWorkout

- (MOEventWorkout)init
{
  v3.receiver = self;
  v3.super_class = MOEventWorkout;
  result = [(MOEventWorkout *)&v3 init];
  if (result)
  {
    *&result->_isFitnessPlusSession = 0;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  workoutType = self->_workoutType;
  v5 = a3;
  [v5 encodeObject:workoutType forKey:@"workoutType"];
  [v5 encodeObject:self->_workoutTotalDistance forKey:@"workoutTotalDistance"];
  [v5 encodeObject:self->_workoutTotalEnergyBurned forKey:@"workoutTotalEnergyBurned"];
  [v5 encodeObject:self->_workoutDuration forKey:@"workoutDuration"];
  [v5 encodeObject:self->_workoutLocationStart forKey:@"workoutLocationStart"];
  [v5 encodeObject:self->_workoutLocationRoute forKey:@"workoutLocationRoute"];
  [v5 encodeBool:self->_isFitnessPlusSession forKey:@"isFitnessPlusSession"];
  [v5 encodeBool:self->_isIndoors forKey:@"isIndoors"];
}

- (MOEventWorkout)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = MOEventWorkout;
  v5 = [(MOEventWorkout *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"workoutType"];
    workoutType = v5->_workoutType;
    v5->_workoutType = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"workoutTotalDistance"];
    workoutTotalDistance = v5->_workoutTotalDistance;
    v5->_workoutTotalDistance = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"workoutTotalEnergyBurned"];
    workoutTotalEnergyBurned = v5->_workoutTotalEnergyBurned;
    v5->_workoutTotalEnergyBurned = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"workoutDuration"];
    workoutDuration = v5->_workoutDuration;
    v5->_workoutDuration = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"workoutLocationStart"];
    workoutLocationStart = v5->_workoutLocationStart;
    v5->_workoutLocationStart = v14;

    v16 = objc_autoreleasePoolPush();
    v17 = objc_alloc(MEMORY[0x277CBEB98]);
    v18 = objc_opt_class();
    v19 = [v17 initWithObjects:{v18, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v16);
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"workoutLocationRoute"];
    workoutLocationRoute = v5->_workoutLocationRoute;
    v5->_workoutLocationRoute = v20;

    v5->_isFitnessPlusSession = [v4 decodeBoolForKey:@"isFitnessPlusSession"];
    v5->_isIndoors = [v4 decodeBoolForKey:@"isIndoors"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MOEventWorkout);
  objc_storeStrong(&v4->_workoutType, self->_workoutType);
  objc_storeStrong(&v4->_workoutTotalDistance, self->_workoutTotalDistance);
  objc_storeStrong(&v4->_workoutTotalEnergyBurned, self->_workoutTotalEnergyBurned);
  objc_storeStrong(&v4->_workoutDuration, self->_workoutDuration);
  objc_storeStrong(&v4->_workoutLocationStart, self->_workoutLocationStart);
  objc_storeStrong(&v4->_workoutLocationRoute, self->_workoutLocationRoute);
  v4->_isFitnessPlusSession = self->_isFitnessPlusSession;
  v4->_isIndoors = self->_isIndoors;
  return v4;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"workoutType, %@", self->_workoutType];

  return v2;
}

@end
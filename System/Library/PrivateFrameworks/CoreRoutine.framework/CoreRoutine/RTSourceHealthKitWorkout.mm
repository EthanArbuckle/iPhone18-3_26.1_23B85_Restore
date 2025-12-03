@interface RTSourceHealthKitWorkout
- (BOOL)isEqual:(id)equal;
- (RTSourceHealthKitWorkout)initWithCoder:(id)coder;
- (RTSourceHealthKitWorkout)initWithWorkoutUUID:(id)d startDate:(id)date;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTSourceHealthKitWorkout

- (RTSourceHealthKitWorkout)initWithWorkoutUUID:(id)d startDate:(id)date
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dateCopy = date;
  if (!dCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[RTSourceHealthKitWorkout initWithWorkoutUUID:startDate:]";
      v17 = 1024;
      v18 = 28;
      _os_log_error_impl(&dword_1BF1C4000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: workoutUUID (in %s:%d)", buf, 0x12u);
    }
  }

  v14.receiver = self;
  v14.super_class = RTSourceHealthKitWorkout;
  v10 = [(RTSourceHealthKitWorkout *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_workoutUUID, d);
    objc_storeStrong(&v11->_startDate, date);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (RTSourceHealthKitWorkout)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"workoutUUID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];

  v7 = [[RTSourceHealthKitWorkout alloc] initWithWorkoutUUID:v5 startDate:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = RTSourceHealthKitWorkout;
  coderCopy = coder;
  [(RTSource *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_workoutUUID forKey:{@"workoutUUID", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  workoutUUID = [(RTSourceHealthKitWorkout *)self workoutUUID];
  startDate = [(RTSourceHealthKitWorkout *)self startDate];
  stringFromDate = [startDate stringFromDate];
  v9 = [v3 stringWithFormat:@"%@, workoutUUID, %@, startDate, %@", v5, workoutUUID, stringFromDate];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v18.receiver = self;
  v18.super_class = RTSourceHealthKitWorkout;
  if (![(RTSource *)&v18 isEqual:equalCopy])
  {
    v10 = 0;
    goto LABEL_20;
  }

  v7 = equalCopy;
  workoutUUID = [(RTSourceHealthKitWorkout *)self workoutUUID];
  if (workoutUUID || ([v7 workoutUUID], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    workoutUUID2 = [(RTSourceHealthKitWorkout *)self workoutUUID];
    workoutUUID3 = [v7 workoutUUID];
    if (![workoutUUID2 isEqual:workoutUUID3])
    {
      v10 = 0;
LABEL_16:

      goto LABEL_17;
    }

    v9 = 1;
  }

  else
  {
    v17 = 0;
    v9 = 0;
  }

  startDate = [(RTSourceHealthKitWorkout *)self startDate];
  if (startDate || ([v7 startDate], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = [(RTSourceHealthKitWorkout *)self startDate:v15];
    startDate2 = [v7 startDate];
    v10 = [v12 isEqual:startDate2];

    if (startDate)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v16 = 0;
    v10 = 1;
  }

LABEL_15:
  if (v9)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (!workoutUUID)
  {
  }

LABEL_20:
  return v10;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = RTSourceHealthKitWorkout;
  v3 = [(RTSource *)&v9 hash];
  workoutUUID = [(RTSourceHealthKitWorkout *)self workoutUUID];
  v5 = [workoutUUID hash];
  startDate = [(RTSourceHealthKitWorkout *)self startDate];
  v7 = v5 ^ [startDate hash];

  return v7 ^ v3;
}

@end
@interface RTSourceHealthKitWorkout
- (BOOL)isEqual:(id)a3;
- (RTSourceHealthKitWorkout)initWithCoder:(id)a3;
- (RTSourceHealthKitWorkout)initWithWorkoutUUID:(id)a3 startDate:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTSourceHealthKitWorkout

- (RTSourceHealthKitWorkout)initWithWorkoutUUID:(id)a3 startDate:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
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
    objc_storeStrong(&v10->_workoutUUID, a3);
    objc_storeStrong(&v11->_startDate, a4);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (RTSourceHealthKitWorkout)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"workoutUUID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];

  v7 = [[RTSourceHealthKitWorkout alloc] initWithWorkoutUUID:v5 startDate:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = RTSourceHealthKitWorkout;
  v4 = a3;
  [(RTSource *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_workoutUUID forKey:{@"workoutUUID", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_startDate forKey:@"startDate"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(RTSourceHealthKitWorkout *)self workoutUUID];
  v7 = [(RTSourceHealthKitWorkout *)self startDate];
  v8 = [v7 stringFromDate];
  v9 = [v3 stringWithFormat:@"%@, workoutUUID, %@, startDate, %@", v5, v6, v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = RTSourceHealthKitWorkout;
  if (![(RTSource *)&v18 isEqual:v6])
  {
    v10 = 0;
    goto LABEL_20;
  }

  v7 = v6;
  v8 = [(RTSourceHealthKitWorkout *)self workoutUUID];
  if (v8 || ([v7 workoutUUID], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = [(RTSourceHealthKitWorkout *)self workoutUUID];
    v4 = [v7 workoutUUID];
    if (![v3 isEqual:v4])
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

  v11 = [(RTSourceHealthKitWorkout *)self startDate];
  if (v11 || ([v7 startDate], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = [(RTSourceHealthKitWorkout *)self startDate:v15];
    v13 = [v7 startDate];
    v10 = [v12 isEqual:v13];

    if (v11)
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
  if (!v8)
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
  v4 = [(RTSourceHealthKitWorkout *)self workoutUUID];
  v5 = [v4 hash];
  v6 = [(RTSourceHealthKitWorkout *)self startDate];
  v7 = v5 ^ [v6 hash];

  return v7 ^ v3;
}

@end
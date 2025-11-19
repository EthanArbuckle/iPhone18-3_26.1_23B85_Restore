@interface RTPredictedContextWorkout
- (BOOL)isEqual:(id)a3;
- (RTPredictedContextWorkout)initWithCoder:(id)a3;
- (RTPredictedContextWorkout)initWithDateInterval:(id)a3 predictionSources:(id)a4 probability:(double)a5 sourceBundleIdentifier:(id)a6 workoutActivityType:(int64_t)a7 workoutLocationType:(unint64_t)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTPredictedContextWorkout

- (RTPredictedContextWorkout)initWithDateInterval:(id)a3 predictionSources:(id)a4 probability:(double)a5 sourceBundleIdentifier:(id)a6 workoutActivityType:(int64_t)a7 workoutLocationType:(unint64_t)a8
{
  v15 = a6;
  if (v15)
  {
    v21.receiver = self;
    v21.super_class = RTPredictedContextWorkout;
    v16 = [(RTPredictedContext *)&v21 initWithPredictedContextDateInterval:a3 predictionSources:a4 probability:a5];
    v17 = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_sourceBundleIdentifier, a6);
      v17->_workoutActivityType = a7;
      v17->_workoutLocationType = a8;
    }

    self = v17;
    v18 = self;
  }

  else
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sourceBundleIdentifier", buf, 2u);
    }

    v18 = 0;
  }

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "[RTPredictedContextWorkout encodeWithCoder:]";
      v10 = 1024;
      v11 = 51;
      _os_log_error_impl(&dword_1BF1C4000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: encoder (in %s:%d)", buf, 0x12u);
    }
  }

  v7.receiver = self;
  v7.super_class = RTPredictedContextWorkout;
  [(RTPredictedContext *)&v7 encodeWithCoder:v4];
  [v4 encodeObject:self->_sourceBundleIdentifier forKey:@"sourceBundleIdentifier"];
  [v4 encodeInt64:self->_workoutActivityType forKey:@"workoutActivityType"];
  [v4 encodeInteger:self->_workoutLocationType forKey:@"workoutLocationType"];

  v6 = *MEMORY[0x1E69E9840];
}

- (RTPredictedContextWorkout)initWithCoder:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11.receiver = self;
    v11.super_class = RTPredictedContextWorkout;
    v5 = [(RTPredictedContext *)&v11 initWithCoder:v4];
    if (v5)
    {
      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceBundleIdentifier"];
      sourceBundleIdentifier = v5->_sourceBundleIdentifier;
      v5->_sourceBundleIdentifier = v6;

      v5->_workoutActivityType = [v4 decodeInt64ForKey:@"workoutActivityType"];
      v5->_workoutLocationType = [v4 decodeIntegerForKey:@"workoutLocationType"];
    }

    self = v5;
    v8 = self;
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: coder", buf, 2u);
    }

    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [RTPredictedContextWorkout alloc];
  v5 = [(RTPredictedContext *)self dateInterval];
  v6 = [(RTPredictedContext *)self predictionSources];
  [(RTPredictedContext *)self probability];
  v8 = v7;
  v9 = [(RTPredictedContextWorkout *)self sourceBundleIdentifier];
  v10 = [(RTPredictedContextWorkout *)v4 initWithDateInterval:v5 predictionSources:v6 probability:v9 sourceBundleIdentifier:[(RTPredictedContextWorkout *)self workoutActivityType] workoutActivityType:[(RTPredictedContextWorkout *)self workoutLocationType] workoutLocationType:v8];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v11 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v13.receiver = self;
    v13.super_class = RTPredictedContextWorkout;
    if ([(RTPredictedContext *)&v13 isEqual:v6])
    {
      v7 = [(RTPredictedContextWorkout *)self sourceBundleIdentifier];
      v8 = [(RTPredictedContextWorkout *)v6 sourceBundleIdentifier];
      if ([v7 isEqual:v8] && (v9 = -[RTPredictedContextWorkout workoutActivityType](self, "workoutActivityType"), v9 == -[RTPredictedContextWorkout workoutActivityType](v6, "workoutActivityType")))
      {
        v10 = [(RTPredictedContextWorkout *)self workoutLocationType];
        v11 = v10 == [(RTPredictedContextWorkout *)v6 workoutLocationType];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(RTPredictedContextWorkout *)self sourceBundleIdentifier];
  v5 = [(RTPredictedContextWorkout *)self workoutActivityType];
  v6 = [(RTPredictedContextWorkout *)self workoutLocationType];
  v10.receiver = self;
  v10.super_class = RTPredictedContextWorkout;
  v7 = [(RTPredictedContext *)&v10 description];
  v8 = [v3 stringWithFormat:@"sourceBundleIdentifier, %@, workoutActivityType, %lld, workoutLocationType, %lu, %@", v4, v5, v6, v7];

  return v8;
}

@end
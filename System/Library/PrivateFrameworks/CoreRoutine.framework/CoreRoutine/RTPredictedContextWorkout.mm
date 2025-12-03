@interface RTPredictedContextWorkout
- (BOOL)isEqual:(id)equal;
- (RTPredictedContextWorkout)initWithCoder:(id)coder;
- (RTPredictedContextWorkout)initWithDateInterval:(id)interval predictionSources:(id)sources probability:(double)probability sourceBundleIdentifier:(id)identifier workoutActivityType:(int64_t)type workoutLocationType:(unint64_t)locationType;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTPredictedContextWorkout

- (RTPredictedContextWorkout)initWithDateInterval:(id)interval predictionSources:(id)sources probability:(double)probability sourceBundleIdentifier:(id)identifier workoutActivityType:(int64_t)type workoutLocationType:(unint64_t)locationType
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v21.receiver = self;
    v21.super_class = RTPredictedContextWorkout;
    v16 = [(RTPredictedContext *)&v21 initWithPredictedContextDateInterval:interval predictionSources:sources probability:probability];
    v17 = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_sourceBundleIdentifier, identifier);
      v17->_workoutActivityType = type;
      v17->_workoutLocationType = locationType;
    }

    self = v17;
    selfCopy = self;
  }

  else
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sourceBundleIdentifier", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v12 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  if (!coderCopy)
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
  [(RTPredictedContext *)&v7 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_sourceBundleIdentifier forKey:@"sourceBundleIdentifier"];
  [coderCopy encodeInt64:self->_workoutActivityType forKey:@"workoutActivityType"];
  [coderCopy encodeInteger:self->_workoutLocationType forKey:@"workoutLocationType"];

  v6 = *MEMORY[0x1E69E9840];
}

- (RTPredictedContextWorkout)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (coderCopy)
  {
    v11.receiver = self;
    v11.super_class = RTPredictedContextWorkout;
    v5 = [(RTPredictedContext *)&v11 initWithCoder:coderCopy];
    if (v5)
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceBundleIdentifier"];
      sourceBundleIdentifier = v5->_sourceBundleIdentifier;
      v5->_sourceBundleIdentifier = v6;

      v5->_workoutActivityType = [coderCopy decodeInt64ForKey:@"workoutActivityType"];
      v5->_workoutLocationType = [coderCopy decodeIntegerForKey:@"workoutLocationType"];
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: coder", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [RTPredictedContextWorkout alloc];
  dateInterval = [(RTPredictedContext *)self dateInterval];
  predictionSources = [(RTPredictedContext *)self predictionSources];
  [(RTPredictedContext *)self probability];
  v8 = v7;
  sourceBundleIdentifier = [(RTPredictedContextWorkout *)self sourceBundleIdentifier];
  v10 = [(RTPredictedContextWorkout *)v4 initWithDateInterval:dateInterval predictionSources:predictionSources probability:sourceBundleIdentifier sourceBundleIdentifier:[(RTPredictedContextWorkout *)self workoutActivityType] workoutActivityType:[(RTPredictedContextWorkout *)self workoutLocationType] workoutLocationType:v8];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v13.receiver = self;
    v13.super_class = RTPredictedContextWorkout;
    if ([(RTPredictedContext *)&v13 isEqual:v6])
    {
      sourceBundleIdentifier = [(RTPredictedContextWorkout *)self sourceBundleIdentifier];
      sourceBundleIdentifier2 = [(RTPredictedContextWorkout *)v6 sourceBundleIdentifier];
      if ([sourceBundleIdentifier isEqual:sourceBundleIdentifier2] && (v9 = -[RTPredictedContextWorkout workoutActivityType](self, "workoutActivityType"), v9 == -[RTPredictedContextWorkout workoutActivityType](v6, "workoutActivityType")))
      {
        workoutLocationType = [(RTPredictedContextWorkout *)self workoutLocationType];
        v11 = workoutLocationType == [(RTPredictedContextWorkout *)v6 workoutLocationType];
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
  sourceBundleIdentifier = [(RTPredictedContextWorkout *)self sourceBundleIdentifier];
  workoutActivityType = [(RTPredictedContextWorkout *)self workoutActivityType];
  workoutLocationType = [(RTPredictedContextWorkout *)self workoutLocationType];
  v10.receiver = self;
  v10.super_class = RTPredictedContextWorkout;
  v7 = [(RTPredictedContext *)&v10 description];
  v8 = [v3 stringWithFormat:@"sourceBundleIdentifier, %@, workoutActivityType, %lld, workoutLocationType, %lu, %@", sourceBundleIdentifier, workoutActivityType, workoutLocationType, v7];

  return v8;
}

@end
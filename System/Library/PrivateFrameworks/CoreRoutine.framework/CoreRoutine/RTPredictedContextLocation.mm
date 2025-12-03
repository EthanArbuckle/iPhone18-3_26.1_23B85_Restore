@interface RTPredictedContextLocation
- (BOOL)isEqual:(id)equal;
- (RTPredictedContextLocation)initWithCoder:(id)coder;
- (RTPredictedContextLocation)initWithLocationOfInterest:(id)interest dateInterval:(id)interval predictionSources:(id)sources probability:(double)probability;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTPredictedContextLocation

- (RTPredictedContextLocation)initWithLocationOfInterest:(id)interest dateInterval:(id)interval predictionSources:(id)sources probability:(double)probability
{
  interestCopy = interest;
  if (interestCopy)
  {
    v17.receiver = self;
    v17.super_class = RTPredictedContextLocation;
    v12 = [(RTPredictedContext *)&v17 initWithPredictedContextDateInterval:interval predictionSources:sources probability:probability];
    v13 = v12;
    if (v12)
    {
      objc_storeStrong(&v12->_locationOfInterest, interest);
    }

    self = v13;
    selfCopy = self;
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locationOfInterest", buf, 2u);
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
      v9 = "[RTPredictedContextLocation encodeWithCoder:]";
      v10 = 1024;
      v11 = 45;
      _os_log_error_impl(&dword_1BF1C4000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: encoder (in %s:%d)", buf, 0x12u);
    }
  }

  v7.receiver = self;
  v7.super_class = RTPredictedContextLocation;
  [(RTPredictedContext *)&v7 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_locationOfInterest forKey:@"locationOfInterest"];

  v6 = *MEMORY[0x1E69E9840];
}

- (RTPredictedContextLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (coderCopy)
  {
    v11.receiver = self;
    v11.super_class = RTPredictedContextLocation;
    v5 = [(RTPredictedContext *)&v11 initWithCoder:coderCopy];
    if (v5)
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locationOfInterest"];
      locationOfInterest = v5->_locationOfInterest;
      v5->_locationOfInterest = v6;
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
  v4 = [RTPredictedContextLocation alloc];
  locationOfInterest = [(RTPredictedContextLocation *)self locationOfInterest];
  dateInterval = [(RTPredictedContext *)self dateInterval];
  predictionSources = [(RTPredictedContext *)self predictionSources];
  [(RTPredictedContext *)self probability];
  v8 = [(RTPredictedContextLocation *)v4 initWithLocationOfInterest:locationOfInterest dateInterval:dateInterval predictionSources:predictionSources probability:?];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v11.receiver = self;
    v11.super_class = RTPredictedContextLocation;
    if ([(RTPredictedContext *)&v11 isEqual:v6])
    {
      locationOfInterest = [(RTPredictedContextLocation *)self locationOfInterest];
      locationOfInterest2 = [(RTPredictedContextLocation *)v6 locationOfInterest];
      v9 = [locationOfInterest isEqual:locationOfInterest2];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  locationOfInterest = [(RTPredictedContextLocation *)self locationOfInterest];
  v8.receiver = self;
  v8.super_class = RTPredictedContextLocation;
  v5 = [(RTPredictedContext *)&v8 description];
  v6 = [v3 stringWithFormat:@"locationOfInterest, %@, %@", locationOfInterest, v5];

  return v6;
}

@end
@interface RTPredictedContextLocation
- (BOOL)isEqual:(id)a3;
- (RTPredictedContextLocation)initWithCoder:(id)a3;
- (RTPredictedContextLocation)initWithLocationOfInterest:(id)a3 dateInterval:(id)a4 predictionSources:(id)a5 probability:(double)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTPredictedContextLocation

- (RTPredictedContextLocation)initWithLocationOfInterest:(id)a3 dateInterval:(id)a4 predictionSources:(id)a5 probability:(double)a6
{
  v11 = a3;
  if (v11)
  {
    v17.receiver = self;
    v17.super_class = RTPredictedContextLocation;
    v12 = [(RTPredictedContext *)&v17 initWithPredictedContextDateInterval:a4 predictionSources:a5 probability:a6];
    v13 = v12;
    if (v12)
    {
      objc_storeStrong(&v12->_locationOfInterest, a3);
    }

    self = v13;
    v14 = self;
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locationOfInterest", buf, 2u);
    }

    v14 = 0;
  }

  return v14;
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
      v9 = "[RTPredictedContextLocation encodeWithCoder:]";
      v10 = 1024;
      v11 = 45;
      _os_log_error_impl(&dword_1BF1C4000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: encoder (in %s:%d)", buf, 0x12u);
    }
  }

  v7.receiver = self;
  v7.super_class = RTPredictedContextLocation;
  [(RTPredictedContext *)&v7 encodeWithCoder:v4];
  [v4 encodeObject:self->_locationOfInterest forKey:@"locationOfInterest"];

  v6 = *MEMORY[0x1E69E9840];
}

- (RTPredictedContextLocation)initWithCoder:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11.receiver = self;
    v11.super_class = RTPredictedContextLocation;
    v5 = [(RTPredictedContext *)&v11 initWithCoder:v4];
    if (v5)
    {
      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locationOfInterest"];
      locationOfInterest = v5->_locationOfInterest;
      v5->_locationOfInterest = v6;
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
  v4 = [RTPredictedContextLocation alloc];
  v5 = [(RTPredictedContextLocation *)self locationOfInterest];
  v6 = [(RTPredictedContext *)self dateInterval];
  v7 = [(RTPredictedContext *)self predictionSources];
  [(RTPredictedContext *)self probability];
  v8 = [(RTPredictedContextLocation *)v4 initWithLocationOfInterest:v5 dateInterval:v6 predictionSources:v7 probability:?];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v9 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v11.receiver = self;
    v11.super_class = RTPredictedContextLocation;
    if ([(RTPredictedContext *)&v11 isEqual:v6])
    {
      v7 = [(RTPredictedContextLocation *)self locationOfInterest];
      v8 = [(RTPredictedContextLocation *)v6 locationOfInterest];
      v9 = [v7 isEqual:v8];
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
  v4 = [(RTPredictedContextLocation *)self locationOfInterest];
  v8.receiver = self;
  v8.super_class = RTPredictedContextLocation;
  v5 = [(RTPredictedContext *)&v8 description];
  v6 = [v3 stringWithFormat:@"locationOfInterest, %@, %@", v4, v5];

  return v6;
}

@end
@interface RTSourcePropagatedLocation
- (BOOL)isEqual:(id)a3;
- (RTSourcePropagatedLocation)initWithCoder:(id)a3;
- (RTSourcePropagatedLocation)initWithDate:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTSourcePropagatedLocation

- (RTSourcePropagatedLocation)initWithDate:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RTSourcePropagatedLocation;
  v6 = [(RTSourcePropagatedLocation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_date, a3);
  }

  return v7;
}

- (RTSourcePropagatedLocation)initWithCoder:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[RTSourcePropagatedLocation initWithCoder:]";
      v12 = 1024;
      v13 = 33;
      _os_log_error_impl(&dword_1BF1C4000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: [aDecoder allowsKeyedCoding] (in %s:%d)", &v10, 0x12u);
    }
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];

  v7 = [(RTSourcePropagatedLocation *)self initWithDate:v6];
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[RTSourcePropagatedLocation encodeWithCoder:]";
      v10 = 1024;
      v11 = 43;
      _os_log_error_impl(&dword_1BF1C4000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: [aCoder allowsKeyedCoding] (in %s:%d)", &v8, 0x12u);
    }
  }

  v6 = [(RTSourcePropagatedLocation *)self date];
  [v4 encodeObject:v6 forKey:@"date"];

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = RTSourcePropagatedLocation;
  if ([(RTSource *)&v12 isEqual:v5])
  {
    v6 = v5;
    v7 = [(RTSourcePropagatedLocation *)self date];
    if (v7 || ([v6 date], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = [(RTSourcePropagatedLocation *)self date];
      v9 = [v6 date];
      v10 = [v8 isEqualToDate:v9];

      if (v7)
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      v10 = 1;
    }

    goto LABEL_9;
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = RTSourcePropagatedLocation;
  v3 = [(RTSource *)&v7 hash];
  v4 = [(RTSourcePropagatedLocation *)self date];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = RTSourcePropagatedLocation;
  v4 = [(RTSource *)&v9 description];
  v5 = [(RTSourcePropagatedLocation *)self date];
  v6 = [v5 stringFromDate];
  v7 = [v3 stringWithFormat:@"%@, date, %@", v4, v6];

  return v7;
}

@end
@interface RTSourcePropagatedLocation
- (BOOL)isEqual:(id)equal;
- (RTSourcePropagatedLocation)initWithCoder:(id)coder;
- (RTSourcePropagatedLocation)initWithDate:(id)date;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTSourcePropagatedLocation

- (RTSourcePropagatedLocation)initWithDate:(id)date
{
  dateCopy = date;
  v9.receiver = self;
  v9.super_class = RTSourcePropagatedLocation;
  v6 = [(RTSourcePropagatedLocation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_date, date);
  }

  return v7;
}

- (RTSourcePropagatedLocation)initWithCoder:(id)coder
{
  v14 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
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

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];

  v7 = [(RTSourcePropagatedLocation *)self initWithDate:v6];
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v12 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
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

  date = [(RTSourcePropagatedLocation *)self date];
  [coderCopy encodeObject:date forKey:@"date"];

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = RTSourcePropagatedLocation;
  if ([(RTSource *)&v12 isEqual:equalCopy])
  {
    v6 = equalCopy;
    date = [(RTSourcePropagatedLocation *)self date];
    if (date || ([v6 date], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      date2 = [(RTSourcePropagatedLocation *)self date];
      date3 = [v6 date];
      v10 = [date2 isEqualToDate:date3];

      if (date)
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
  date = [(RTSourcePropagatedLocation *)self date];
  v5 = [date hash];

  return v5 ^ v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = RTSourcePropagatedLocation;
  v4 = [(RTSource *)&v9 description];
  date = [(RTSourcePropagatedLocation *)self date];
  stringFromDate = [date stringFromDate];
  v7 = [v3 stringWithFormat:@"%@, date, %@", v4, stringFromDate];

  return v7;
}

@end
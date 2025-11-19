@interface RTSourceParkedCar
- (BOOL)isEqual:(id)a3;
- (RTSourceParkedCar)initWithCoder:(id)a3;
- (RTSourceParkedCar)initWithIdentifier:(id)a3 parkDate:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTSourceParkedCar

- (RTSourceParkedCar)initWithIdentifier:(id)a3 parkDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = RTSourceParkedCar;
  v9 = [(RTSourceParkedCar *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v10->_parkDate, a4);
  }

  return v10;
}

- (RTSourceParkedCar)initWithCoder:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[RTSourceParkedCar initWithCoder:]";
      v13 = 1024;
      v14 = 36;
      _os_log_error_impl(&dword_1BF1C4000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: [aDecoder allowsKeyedCoding] (in %s:%d)", &v11, 0x12u);
    }
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parkDate"];

  v8 = [(RTSourceParkedCar *)self initWithIdentifier:v6 parkDate:v7];
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[RTSourceParkedCar encodeWithCoder:]";
      v11 = 1024;
      v12 = 48;
      _os_log_error_impl(&dword_1BF1C4000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: [aCoder allowsKeyedCoding] (in %s:%d)", &v9, 0x12u);
    }
  }

  v6 = [(RTSourceParkedCar *)self identifier];
  [v4 encodeObject:v6 forKey:@"identifier"];

  v7 = [(RTSourceParkedCar *)self parkDate];
  [v4 encodeObject:v7 forKey:@"parkDate"];

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = RTSourceParkedCar;
  if ([(RTSource *)&v16 isEqual:v5])
  {
    v6 = v5;
    v7 = [(RTSourceParkedCar *)self identifier];
    if (v7 || ([v6 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = [(RTSourceParkedCar *)self identifier];
      v9 = [v6 identifier];
      v10 = [v8 isEqualToString:v9];

      if (v7)
      {
LABEL_9:

        v12 = [(RTSourceParkedCar *)self parkDate];
        v13 = [v6 parkDate];
        v14 = [v12 isEqualToDate:v13];

        v11 = v10 & v14;
        goto LABEL_10;
      }
    }

    else
    {
      v10 = 1;
    }

    goto LABEL_9;
  }

  v11 = 0;
LABEL_10:

  return v11;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = RTSourceParkedCar;
  v3 = [(RTSource *)&v9 hash];
  v4 = [(RTSourceParkedCar *)self identifier];
  v5 = [v4 hash];
  v6 = [(RTSourceParkedCar *)self parkDate];
  v7 = v5 ^ [v6 hash];

  return v7 ^ v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = RTSourceParkedCar;
  v4 = [(RTSource *)&v10 description];
  v5 = [(RTSourceParkedCar *)self identifier];
  v6 = [(RTSourceParkedCar *)self parkDate];
  v7 = [v6 stringFromDate];
  v8 = [v3 stringWithFormat:@"%@, identifier, %@, parkDate, %@", v4, v5, v7];

  return v8;
}

@end
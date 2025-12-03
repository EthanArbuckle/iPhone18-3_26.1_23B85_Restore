@interface RTSourceParkedCar
- (BOOL)isEqual:(id)equal;
- (RTSourceParkedCar)initWithCoder:(id)coder;
- (RTSourceParkedCar)initWithIdentifier:(id)identifier parkDate:(id)date;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTSourceParkedCar

- (RTSourceParkedCar)initWithIdentifier:(id)identifier parkDate:(id)date
{
  identifierCopy = identifier;
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = RTSourceParkedCar;
  v9 = [(RTSourceParkedCar *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_parkDate, date);
  }

  return v10;
}

- (RTSourceParkedCar)initWithCoder:(id)coder
{
  v15 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
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

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parkDate"];

  v8 = [(RTSourceParkedCar *)self initWithIdentifier:v6 parkDate:v7];
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v13 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
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

  identifier = [(RTSourceParkedCar *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  parkDate = [(RTSourceParkedCar *)self parkDate];
  [coderCopy encodeObject:parkDate forKey:@"parkDate"];

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v16.receiver = self;
  v16.super_class = RTSourceParkedCar;
  if ([(RTSource *)&v16 isEqual:equalCopy])
  {
    v6 = equalCopy;
    identifier = [(RTSourceParkedCar *)self identifier];
    if (identifier || ([v6 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      identifier2 = [(RTSourceParkedCar *)self identifier];
      identifier3 = [v6 identifier];
      v10 = [identifier2 isEqualToString:identifier3];

      if (identifier)
      {
LABEL_9:

        parkDate = [(RTSourceParkedCar *)self parkDate];
        parkDate2 = [v6 parkDate];
        v14 = [parkDate isEqualToDate:parkDate2];

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
  identifier = [(RTSourceParkedCar *)self identifier];
  v5 = [identifier hash];
  parkDate = [(RTSourceParkedCar *)self parkDate];
  v7 = v5 ^ [parkDate hash];

  return v7 ^ v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = RTSourceParkedCar;
  v4 = [(RTSource *)&v10 description];
  identifier = [(RTSourceParkedCar *)self identifier];
  parkDate = [(RTSourceParkedCar *)self parkDate];
  stringFromDate = [parkDate stringFromDate];
  v8 = [v3 stringWithFormat:@"%@, identifier, %@, parkDate, %@", v4, identifier, stringFromDate];

  return v8;
}

@end
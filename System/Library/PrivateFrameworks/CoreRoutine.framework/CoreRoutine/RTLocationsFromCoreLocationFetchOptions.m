@interface RTLocationsFromCoreLocationFetchOptions
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToFetchOptions:(id)a3;
- (RTLocationsFromCoreLocationFetchOptions)initWithCoder:(id)a3;
- (RTLocationsFromCoreLocationFetchOptions)initWithDate:(id)a3 machContinuousTimeSec:(id)a4 numberOfSeconds:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTLocationsFromCoreLocationFetchOptions

- (RTLocationsFromCoreLocationFetchOptions)initWithDate:(id)a3 machContinuousTimeSec:(id)a4 numberOfSeconds:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v9 || v10 || v11)
  {
    v18.receiver = self;
    v18.super_class = RTLocationsFromCoreLocationFetchOptions;
    v15 = [(RTLocationsFromCoreLocationFetchOptions *)&v18 init];
    p_isa = &v15->super.isa;
    if (v15)
    {
      objc_storeStrong(&v15->_date, a3);
      objc_storeStrong(p_isa + 2, a4);
      objc_storeStrong(p_isa + 3, a5);
    }

    self = p_isa;
    v14 = self;
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: date || machContinuousTimeSec || numberOfSeconds", buf, 2u);
    }

    v14 = 0;
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTLocationsFromCoreLocationFetchOptions *)self isEqualToFetchOptions:v5];
  }

  return v6;
}

- (BOOL)isEqualToFetchOptions:(id)a3
{
  v6 = a3;
  v7 = v6;
  date = self->_date;
  v9 = date;
  if (date)
  {
LABEL_4:
    v4 = [v7 date];
    v10 = [(NSDate *)v9 isEqual:v4];

    if (date)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = [v6 date];
  if (v3)
  {
    v9 = self->_date;
    goto LABEL_4;
  }

  v10 = 1;
LABEL_7:

LABEL_8:
  machContinuousTimeSec = self->_machContinuousTimeSec;
  v12 = machContinuousTimeSec;
  if (machContinuousTimeSec)
  {
    goto LABEL_11;
  }

  v4 = [v7 machContinuousTimeSec];
  if (v4)
  {
    v12 = self->_machContinuousTimeSec;
LABEL_11:
    v13 = [v7 machContinuousTimeSec];
    v14 = [(NSNumber *)v12 isEqual:v13];

    if (machContinuousTimeSec)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v14 = 1;
LABEL_14:

LABEL_15:
  numberOfSeconds = self->_numberOfSeconds;
  v16 = numberOfSeconds;
  if (!numberOfSeconds)
  {
    v4 = [v7 numberOfSeconds];
    if (!v4)
    {
      v18 = 1;
LABEL_21:

      goto LABEL_22;
    }

    v16 = self->_numberOfSeconds;
  }

  v17 = [v7 numberOfSeconds];
  v18 = [(NSNumber *)v16 isEqual:v17];

  if (!numberOfSeconds)
  {
    goto LABEL_21;
  }

LABEL_22:

  return v10 & v14 & v18;
}

- (void)encodeWithCoder:(id)a3
{
  date = self->_date;
  v5 = a3;
  [v5 encodeObject:date forKey:@"date"];
  [v5 encodeObject:self->_machContinuousTimeSec forKey:@"machContinuousTimeSec"];
  [v5 encodeObject:self->_numberOfSeconds forKey:@"numberOfSeconds"];
}

- (RTLocationsFromCoreLocationFetchOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"machContinuousTimeSec"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"numberOfSeconds"];

  v8 = [(RTLocationsFromCoreLocationFetchOptions *)self initWithDate:v5 machContinuousTimeSec:v6 numberOfSeconds:v7];
  return v8;
}

- (id)description
{
  v3 = [(RTLocationsFromCoreLocationFetchOptions *)self date];

  if (v3)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [(RTLocationsFromCoreLocationFetchOptions *)self date];
    v6 = [v5 stringFromDate];
    v7 = [v4 stringWithFormat:@"Date: %@", v6];

LABEL_8:
    goto LABEL_9;
  }

  v8 = [(RTLocationsFromCoreLocationFetchOptions *)self machContinuousTimeSec];

  if (v8)
  {
    v9 = MEMORY[0x1E696AEC0];
    v5 = [(RTLocationsFromCoreLocationFetchOptions *)self machContinuousTimeSec];
    [v5 doubleValue];
    [v9 stringWithFormat:@"MachContinuousTimeSec: %.3f", v10];
    v7 = LABEL_7:;
    goto LABEL_8;
  }

  v11 = [(RTLocationsFromCoreLocationFetchOptions *)self numberOfSeconds];

  if (v11)
  {
    v12 = MEMORY[0x1E696AEC0];
    v5 = [(RTLocationsFromCoreLocationFetchOptions *)self numberOfSeconds];
    [v12 stringWithFormat:@"NumberOfSeconds: %u", objc_msgSend(v5, "unsignedIntValue")];
    goto LABEL_7;
  }

  v7 = @"<Invalid>";
LABEL_9:

  return v7;
}

@end
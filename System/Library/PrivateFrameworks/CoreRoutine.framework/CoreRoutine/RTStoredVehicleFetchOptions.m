@interface RTStoredVehicleFetchOptions
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToFetchOptions:(id)a3;
- (RTStoredVehicleFetchOptions)initWithCoder:(id)a3;
- (RTStoredVehicleFetchOptions)initWithDateInterval:(id)a3 limit:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTStoredVehicleFetchOptions

- (RTStoredVehicleFetchOptions)initWithDateInterval:(id)a3 limit:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v8 && ![v8 unsignedIntegerValue])
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: !limit || (limit && limit.unsignedIntegerValue > 0)", buf, 2u);
    }

    v12 = 0;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = RTStoredVehicleFetchOptions;
    v10 = [(RTStoredVehicleFetchOptions *)&v15 init];
    p_isa = &v10->super.isa;
    if (v10)
    {
      objc_storeStrong(&v10->_dateInterval, a3);
      objc_storeStrong(p_isa + 2, a4);
    }

    self = p_isa;
    v12 = self;
  }

  return v12;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTStoredVehicleFetchOptions *)self isEqualToFetchOptions:v5];
  }

  return v6;
}

- (BOOL)isEqualToFetchOptions:(id)a3
{
  v5 = a3;
  v6 = v5;
  dateInterval = self->_dateInterval;
  if (dateInterval)
  {
    goto LABEL_2;
  }

  v3 = [v5 dateInterval];
  if (!v3)
  {
    v12 = 1;
    goto LABEL_11;
  }

  if (self->_dateInterval)
  {
LABEL_2:
    v8 = [v6 dateInterval];
    if (v8)
    {
      v9 = v8;
      v10 = self->_dateInterval;
      v11 = [v6 dateInterval];
      v12 = [(NSDateInterval *)v10 isEqualToDateInterval:v11];

      if (dateInterval)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v12 = 0;
      if (dateInterval)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_11:

LABEL_12:
  limit = self->_limit;
  if (limit)
  {
    goto LABEL_13;
  }

  v3 = [v6 limit];
  if (!v3)
  {
    v18 = 1;
    goto LABEL_22;
  }

  if (!self->_limit)
  {
    v18 = 0;
LABEL_22:

    goto LABEL_23;
  }

LABEL_13:
  v14 = [v6 limit];
  if (v14)
  {
    v15 = v14;
    v16 = self->_limit;
    v17 = [v6 limit];
    v18 = [(NSNumber *)v16 isEqualToNumber:v17];

    if (!limit)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v18 = 0;
    if (!limit)
    {
      goto LABEL_22;
    }
  }

LABEL_23:

  return v12 & v18;
}

- (void)encodeWithCoder:(id)a3
{
  dateInterval = self->_dateInterval;
  v5 = a3;
  [v5 encodeObject:dateInterval forKey:@"dateInterval"];
  [v5 encodeObject:self->_limit forKey:@"limit"];
}

- (RTStoredVehicleFetchOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"limit"];

  v7 = [(RTStoredVehicleFetchOptions *)self initWithDateInterval:v5 limit:v6];
  return v7;
}

@end
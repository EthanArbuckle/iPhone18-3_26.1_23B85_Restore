@interface RTStoredVehicleFetchOptions
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFetchOptions:(id)options;
- (RTStoredVehicleFetchOptions)initWithCoder:(id)coder;
- (RTStoredVehicleFetchOptions)initWithDateInterval:(id)interval limit:(id)limit;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTStoredVehicleFetchOptions

- (RTStoredVehicleFetchOptions)initWithDateInterval:(id)interval limit:(id)limit
{
  intervalCopy = interval;
  limitCopy = limit;
  v9 = limitCopy;
  if (limitCopy && ![limitCopy unsignedIntegerValue])
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: !limit || (limit && limit.unsignedIntegerValue > 0)", buf, 2u);
    }

    selfCopy = 0;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = RTStoredVehicleFetchOptions;
    v10 = [(RTStoredVehicleFetchOptions *)&v15 init];
    p_isa = &v10->super.isa;
    if (v10)
    {
      objc_storeStrong(&v10->_dateInterval, interval);
      objc_storeStrong(p_isa + 2, limit);
    }

    self = p_isa;
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTStoredVehicleFetchOptions *)self isEqualToFetchOptions:v5];
  }

  return v6;
}

- (BOOL)isEqualToFetchOptions:(id)options
{
  optionsCopy = options;
  v6 = optionsCopy;
  dateInterval = self->_dateInterval;
  if (dateInterval)
  {
    goto LABEL_2;
  }

  dateInterval = [optionsCopy dateInterval];
  if (!dateInterval)
  {
    v12 = 1;
    goto LABEL_11;
  }

  if (self->_dateInterval)
  {
LABEL_2:
    dateInterval2 = [v6 dateInterval];
    if (dateInterval2)
    {
      v9 = dateInterval2;
      v10 = self->_dateInterval;
      dateInterval3 = [v6 dateInterval];
      v12 = [(NSDateInterval *)v10 isEqualToDateInterval:dateInterval3];

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

  dateInterval = [v6 limit];
  if (!dateInterval)
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
  limit = [v6 limit];
  if (limit)
  {
    v15 = limit;
    v16 = self->_limit;
    limit2 = [v6 limit];
    v18 = [(NSNumber *)v16 isEqualToNumber:limit2];

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

- (void)encodeWithCoder:(id)coder
{
  dateInterval = self->_dateInterval;
  coderCopy = coder;
  [coderCopy encodeObject:dateInterval forKey:@"dateInterval"];
  [coderCopy encodeObject:self->_limit forKey:@"limit"];
}

- (RTStoredVehicleFetchOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"limit"];

  v7 = [(RTStoredVehicleFetchOptions *)self initWithDateInterval:v5 limit:v6];
  return v7;
}

@end
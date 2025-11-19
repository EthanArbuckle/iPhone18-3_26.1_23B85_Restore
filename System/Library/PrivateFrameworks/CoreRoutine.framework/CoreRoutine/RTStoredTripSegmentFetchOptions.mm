@interface RTStoredTripSegmentFetchOptions
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToFetchOptions:(id)a3;
- (RTStoredTripSegmentFetchOptions)initWithAscending:(BOOL)a3 dateInterval:(id)a4 limit:(id)a5;
- (RTStoredTripSegmentFetchOptions)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTStoredTripSegmentFetchOptions

- (RTStoredTripSegmentFetchOptions)initWithAscending:(BOOL)a3 dateInterval:(id)a4 limit:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v10 && ![v10 unsignedIntegerValue])
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: !limit || (limit && limit.unsignedIntegerValue > 0)", buf, 2u);
    }

    v14 = 0;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = RTStoredTripSegmentFetchOptions;
    v12 = [(RTStoredTripSegmentFetchOptions *)&v17 init];
    p_isa = &v12->super.isa;
    if (v12)
    {
      v12->_ascending = a3;
      objc_storeStrong(&v12->_dateInterval, a4);
      objc_storeStrong(p_isa + 3, a5);
    }

    self = p_isa;
    v14 = self;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTStoredTripSegmentFetchOptions *)self isEqualToFetchOptions:v5];
  }

  return v6;
}

- (BOOL)isEqualToFetchOptions:(id)a3
{
  v5 = a3;
  ascending = self->_ascending;
  v7 = [v5 isAscending];
  dateInterval = self->_dateInterval;
  if (dateInterval)
  {
    goto LABEL_2;
  }

  v3 = [v5 dateInterval];
  if (!v3)
  {
    v13 = 1;
    goto LABEL_11;
  }

  if (self->_dateInterval)
  {
LABEL_2:
    v9 = [v5 dateInterval];
    if (v9)
    {
      v10 = v9;
      v11 = self->_dateInterval;
      v12 = [v5 dateInterval];
      v13 = [(NSDateInterval *)v11 isEqualToDateInterval:v12];

      if (dateInterval)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v13 = 0;
      if (dateInterval)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_11:

LABEL_12:
  limit = self->_limit;
  if (limit)
  {
    goto LABEL_13;
  }

  v3 = [v5 limit];
  if (!v3)
  {
    v19 = 1;
    goto LABEL_22;
  }

  if (!self->_limit)
  {
    v19 = 0;
LABEL_22:

    goto LABEL_23;
  }

LABEL_13:
  v15 = [v5 limit];
  if (v15)
  {
    v16 = v15;
    v17 = self->_limit;
    v18 = [v5 limit];
    v19 = [(NSNumber *)v17 isEqualToNumber:v18];

    if (!limit)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v19 = 0;
    if (!limit)
    {
      goto LABEL_22;
    }
  }

LABEL_23:

  return (ascending == v7) & v13 & v19;
}

- (void)encodeWithCoder:(id)a3
{
  ascending = self->_ascending;
  v5 = a3;
  [v5 encodeBool:ascending forKey:@"ascending"];
  [v5 encodeObject:self->_dateInterval forKey:@"dateInterval"];
  [v5 encodeObject:self->_limit forKey:@"limit"];
}

- (RTStoredTripSegmentFetchOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"ascending"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"limit"];

  v8 = [(RTStoredTripSegmentFetchOptions *)self initWithAscending:v5 dateInterval:v6 limit:v7];
  return v8;
}

@end
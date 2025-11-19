@interface RTStoredUserCurationFetchOptions
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToFetchOptions:(id)a3;
- (RTStoredUserCurationFetchOptions)initWithAscending:(BOOL)a3 sortIndex:(unint64_t)a4 submissionDateInterval:(id)a5 visitDateInterval:(id)a6 limit:(id)a7;
- (RTStoredUserCurationFetchOptions)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTStoredUserCurationFetchOptions

- (RTStoredUserCurationFetchOptions)initWithAscending:(BOOL)a3 sortIndex:(unint64_t)a4 submissionDateInterval:(id)a5 visitDateInterval:(id)a6 limit:(id)a7
{
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = v15;
  if (v15 && ![v15 unsignedIntegerValue])
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: !limit || (limit && limit.unsignedIntegerValue > 0)", buf, 2u);
    }

    v19 = 0;
  }

  else
  {
    v22.receiver = self;
    v22.super_class = RTStoredUserCurationFetchOptions;
    v17 = [(RTStoredUserCurationFetchOptions *)&v22 init];
    p_isa = &v17->super.isa;
    if (v17)
    {
      v17->_ascending = a3;
      v17->_sortIndex = a4;
      objc_storeStrong(&v17->_submissionDateInterval, a5);
      objc_storeStrong(p_isa + 4, a6);
      objc_storeStrong(p_isa + 5, a7);
    }

    self = p_isa;
    v19 = self;
  }

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  ascending = self->_ascending;
  v5 = a3;
  [v5 encodeBool:ascending forKey:@"ascending"];
  [v5 encodeInteger:self->_sortIndex forKey:@"sortIndex"];
  [v5 encodeObject:self->_submissionDateInterval forKey:@"submissionDateInterval"];
  [v5 encodeObject:self->_visitDateInterval forKey:@"visitDateInterval"];
  [v5 encodeObject:self->_limit forKey:@"limit"];
}

- (RTStoredUserCurationFetchOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"ascending"];
  v6 = [v4 decodeIntegerForKey:@"sortIndex"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"submissionDateInterval"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"visitDateInterval"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"limit"];

  v10 = [(RTStoredUserCurationFetchOptions *)self initWithAscending:v5 sortIndex:v6 submissionDateInterval:v7 visitDateInterval:v8 limit:v9];
  return v10;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTStoredUserCurationFetchOptions *)self isEqualToFetchOptions:v5];
  }

  return v6;
}

- (BOOL)isEqualToFetchOptions:(id)a3
{
  v6 = a3;
  ascending = self->_ascending;
  v7 = [v6 ascending];
  sortIndex = self->_sortIndex;
  v8 = [v6 sortIndex];
  submissionDateInterval = self->_submissionDateInterval;
  if (submissionDateInterval)
  {
    goto LABEL_2;
  }

  v3 = [v6 submissionDateInterval];
  if (!v3)
  {
    v13 = 1;
    goto LABEL_11;
  }

  if (self->_submissionDateInterval)
  {
LABEL_2:
    v10 = [v6 submissionDateInterval];
    if (v10)
    {
      v4 = v10;
      v11 = self->_submissionDateInterval;
      v12 = [v6 submissionDateInterval];
      v13 = [(NSDateInterval *)v11 isEqualToDateInterval:v12];

      if (submissionDateInterval)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v13 = 0;
      if (submissionDateInterval)
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
  visitDateInterval = self->_visitDateInterval;
  if (visitDateInterval)
  {
    goto LABEL_13;
  }

  v4 = [v6 visitDateInterval];
  if (!v4)
  {
    v19 = 1;
    goto LABEL_22;
  }

  if (!self->_visitDateInterval)
  {
    v19 = 0;
LABEL_22:

    goto LABEL_23;
  }

LABEL_13:
  v15 = [v6 visitDateInterval];
  if (v15)
  {
    v16 = v15;
    v17 = self->_visitDateInterval;
    v18 = [v6 visitDateInterval];
    v19 = [(NSDateInterval *)v17 isEqualToDateInterval:v18];

    if (!visitDateInterval)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v19 = 0;
    if (!visitDateInterval)
    {
      goto LABEL_22;
    }
  }

LABEL_23:
  limit = self->_limit;
  if (limit)
  {
    goto LABEL_24;
  }

  v4 = [v6 limit];
  if (!v4)
  {
    v25 = 1;
    goto LABEL_33;
  }

  if (self->_limit)
  {
LABEL_24:
    v21 = [v6 limit];
    if (v21)
    {
      v22 = v21;
      v23 = self->_limit;
      v24 = [v6 limit];
      v25 = [(NSNumber *)v23 isEqualToNumber:v24];

      if (limit)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v25 = 0;
      if (limit)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v25 = 0;
  }

LABEL_33:

LABEL_34:
  v27 = ascending == v7 && sortIndex == v8;

  return v27 & v13 & v19 & v25;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:self->_ascending];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_sortIndex];
  v6 = [v5 hash] ^ v4;
  v7 = [(NSDateInterval *)self->_submissionDateInterval hash];
  v8 = v7 ^ [(NSDateInterval *)self->_visitDateInterval hash];
  v9 = v8 ^ [(NSNumber *)self->_limit hash];

  return v6 ^ v9;
}

- (id)description
{
  if (self->_ascending)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v15 = v3;
  v16 = MEMORY[0x1E696AD60];
  sortIndex = self->_sortIndex;
  v5 = [(NSDateInterval *)self->_submissionDateInterval startDate];
  v6 = [v5 stringFromDate];
  v7 = [(NSDateInterval *)self->_submissionDateInterval endDate];
  v8 = [v7 stringFromDate];
  v9 = [(NSDateInterval *)self->_visitDateInterval startDate];
  v10 = [v9 stringFromDate];
  v11 = [(NSDateInterval *)self->_visitDateInterval endDate];
  v12 = [v11 stringFromDate];
  v13 = [v16 stringWithFormat:@"ascending, %@, sortIndex, %lu, submissionStartDate, %@, submissionEndDate, %@, visitStartDate, %@, visitEndDate, %@, limit, %@", v15, sortIndex, v6, v8, v10, v12, self->_limit];

  return v13;
}

@end
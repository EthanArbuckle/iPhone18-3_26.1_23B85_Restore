@interface RTStoredUserCurationFetchOptions
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFetchOptions:(id)options;
- (RTStoredUserCurationFetchOptions)initWithAscending:(BOOL)ascending sortIndex:(unint64_t)index submissionDateInterval:(id)interval visitDateInterval:(id)dateInterval limit:(id)limit;
- (RTStoredUserCurationFetchOptions)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTStoredUserCurationFetchOptions

- (RTStoredUserCurationFetchOptions)initWithAscending:(BOOL)ascending sortIndex:(unint64_t)index submissionDateInterval:(id)interval visitDateInterval:(id)dateInterval limit:(id)limit
{
  intervalCopy = interval;
  dateIntervalCopy = dateInterval;
  limitCopy = limit;
  v16 = limitCopy;
  if (limitCopy && ![limitCopy unsignedIntegerValue])
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: !limit || (limit && limit.unsignedIntegerValue > 0)", buf, 2u);
    }

    selfCopy = 0;
  }

  else
  {
    v22.receiver = self;
    v22.super_class = RTStoredUserCurationFetchOptions;
    v17 = [(RTStoredUserCurationFetchOptions *)&v22 init];
    p_isa = &v17->super.isa;
    if (v17)
    {
      v17->_ascending = ascending;
      v17->_sortIndex = index;
      objc_storeStrong(&v17->_submissionDateInterval, interval);
      objc_storeStrong(p_isa + 4, dateInterval);
      objc_storeStrong(p_isa + 5, limit);
    }

    self = p_isa;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  ascending = self->_ascending;
  coderCopy = coder;
  [coderCopy encodeBool:ascending forKey:@"ascending"];
  [coderCopy encodeInteger:self->_sortIndex forKey:@"sortIndex"];
  [coderCopy encodeObject:self->_submissionDateInterval forKey:@"submissionDateInterval"];
  [coderCopy encodeObject:self->_visitDateInterval forKey:@"visitDateInterval"];
  [coderCopy encodeObject:self->_limit forKey:@"limit"];
}

- (RTStoredUserCurationFetchOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"ascending"];
  v6 = [coderCopy decodeIntegerForKey:@"sortIndex"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"submissionDateInterval"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"visitDateInterval"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"limit"];

  v10 = [(RTStoredUserCurationFetchOptions *)self initWithAscending:v5 sortIndex:v6 submissionDateInterval:v7 visitDateInterval:v8 limit:v9];
  return v10;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTStoredUserCurationFetchOptions *)self isEqualToFetchOptions:v5];
  }

  return v6;
}

- (BOOL)isEqualToFetchOptions:(id)options
{
  optionsCopy = options;
  ascending = self->_ascending;
  ascending = [optionsCopy ascending];
  sortIndex = self->_sortIndex;
  sortIndex = [optionsCopy sortIndex];
  submissionDateInterval = self->_submissionDateInterval;
  if (submissionDateInterval)
  {
    goto LABEL_2;
  }

  submissionDateInterval = [optionsCopy submissionDateInterval];
  if (!submissionDateInterval)
  {
    v13 = 1;
    goto LABEL_11;
  }

  if (self->_submissionDateInterval)
  {
LABEL_2:
    submissionDateInterval2 = [optionsCopy submissionDateInterval];
    if (submissionDateInterval2)
    {
      visitDateInterval = submissionDateInterval2;
      v11 = self->_submissionDateInterval;
      submissionDateInterval3 = [optionsCopy submissionDateInterval];
      v13 = [(NSDateInterval *)v11 isEqualToDateInterval:submissionDateInterval3];

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

  visitDateInterval = [optionsCopy visitDateInterval];
  if (!visitDateInterval)
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
  visitDateInterval2 = [optionsCopy visitDateInterval];
  if (visitDateInterval2)
  {
    v16 = visitDateInterval2;
    v17 = self->_visitDateInterval;
    visitDateInterval3 = [optionsCopy visitDateInterval];
    v19 = [(NSDateInterval *)v17 isEqualToDateInterval:visitDateInterval3];

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

  visitDateInterval = [optionsCopy limit];
  if (!visitDateInterval)
  {
    v25 = 1;
    goto LABEL_33;
  }

  if (self->_limit)
  {
LABEL_24:
    limit = [optionsCopy limit];
    if (limit)
    {
      v22 = limit;
      v23 = self->_limit;
      limit2 = [optionsCopy limit];
      v25 = [(NSNumber *)v23 isEqualToNumber:limit2];

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
  v27 = ascending == ascending && sortIndex == sortIndex;

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
  startDate = [(NSDateInterval *)self->_submissionDateInterval startDate];
  stringFromDate = [startDate stringFromDate];
  endDate = [(NSDateInterval *)self->_submissionDateInterval endDate];
  stringFromDate2 = [endDate stringFromDate];
  startDate2 = [(NSDateInterval *)self->_visitDateInterval startDate];
  stringFromDate3 = [startDate2 stringFromDate];
  endDate2 = [(NSDateInterval *)self->_visitDateInterval endDate];
  stringFromDate4 = [endDate2 stringFromDate];
  v13 = [v16 stringWithFormat:@"ascending, %@, sortIndex, %lu, submissionStartDate, %@, submissionEndDate, %@, visitStartDate, %@, visitEndDate, %@, limit, %@", v15, sortIndex, stringFromDate, stringFromDate2, stringFromDate3, stringFromDate4, self->_limit];

  return v13;
}

@end
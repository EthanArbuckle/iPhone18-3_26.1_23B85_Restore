@interface RTLocationsFromCoreLocationFetchOptions
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFetchOptions:(id)options;
- (RTLocationsFromCoreLocationFetchOptions)initWithCoder:(id)coder;
- (RTLocationsFromCoreLocationFetchOptions)initWithDate:(id)date machContinuousTimeSec:(id)sec numberOfSeconds:(id)seconds;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTLocationsFromCoreLocationFetchOptions

- (RTLocationsFromCoreLocationFetchOptions)initWithDate:(id)date machContinuousTimeSec:(id)sec numberOfSeconds:(id)seconds
{
  dateCopy = date;
  secCopy = sec;
  secondsCopy = seconds;
  v12 = secondsCopy;
  if (dateCopy || secCopy || secondsCopy)
  {
    v18.receiver = self;
    v18.super_class = RTLocationsFromCoreLocationFetchOptions;
    v15 = [(RTLocationsFromCoreLocationFetchOptions *)&v18 init];
    p_isa = &v15->super.isa;
    if (v15)
    {
      objc_storeStrong(&v15->_date, date);
      objc_storeStrong(p_isa + 2, sec);
      objc_storeStrong(p_isa + 3, seconds);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: date || machContinuousTimeSec || numberOfSeconds", buf, 2u);
    }

    selfCopy = 0;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTLocationsFromCoreLocationFetchOptions *)self isEqualToFetchOptions:v5];
  }

  return v6;
}

- (BOOL)isEqualToFetchOptions:(id)options
{
  optionsCopy = options;
  v7 = optionsCopy;
  date = self->_date;
  v9 = date;
  if (date)
  {
LABEL_4:
    date = [v7 date];
    v10 = [(NSDate *)v9 isEqual:date];

    if (date)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  date2 = [optionsCopy date];
  if (date2)
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

  date = [v7 machContinuousTimeSec];
  if (date)
  {
    v12 = self->_machContinuousTimeSec;
LABEL_11:
    machContinuousTimeSec = [v7 machContinuousTimeSec];
    v14 = [(NSNumber *)v12 isEqual:machContinuousTimeSec];

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
    date = [v7 numberOfSeconds];
    if (!date)
    {
      v18 = 1;
LABEL_21:

      goto LABEL_22;
    }

    v16 = self->_numberOfSeconds;
  }

  numberOfSeconds = [v7 numberOfSeconds];
  v18 = [(NSNumber *)v16 isEqual:numberOfSeconds];

  if (!numberOfSeconds)
  {
    goto LABEL_21;
  }

LABEL_22:

  return v10 & v14 & v18;
}

- (void)encodeWithCoder:(id)coder
{
  date = self->_date;
  coderCopy = coder;
  [coderCopy encodeObject:date forKey:@"date"];
  [coderCopy encodeObject:self->_machContinuousTimeSec forKey:@"machContinuousTimeSec"];
  [coderCopy encodeObject:self->_numberOfSeconds forKey:@"numberOfSeconds"];
}

- (RTLocationsFromCoreLocationFetchOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"machContinuousTimeSec"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"numberOfSeconds"];

  v8 = [(RTLocationsFromCoreLocationFetchOptions *)self initWithDate:v5 machContinuousTimeSec:v6 numberOfSeconds:v7];
  return v8;
}

- (id)description
{
  date = [(RTLocationsFromCoreLocationFetchOptions *)self date];

  if (date)
  {
    v4 = MEMORY[0x1E696AEC0];
    date2 = [(RTLocationsFromCoreLocationFetchOptions *)self date];
    stringFromDate = [date2 stringFromDate];
    v7 = [v4 stringWithFormat:@"Date: %@", stringFromDate];

LABEL_8:
    goto LABEL_9;
  }

  machContinuousTimeSec = [(RTLocationsFromCoreLocationFetchOptions *)self machContinuousTimeSec];

  if (machContinuousTimeSec)
  {
    v9 = MEMORY[0x1E696AEC0];
    date2 = [(RTLocationsFromCoreLocationFetchOptions *)self machContinuousTimeSec];
    [date2 doubleValue];
    [v9 stringWithFormat:@"MachContinuousTimeSec: %.3f", v10];
    v7 = LABEL_7:;
    goto LABEL_8;
  }

  numberOfSeconds = [(RTLocationsFromCoreLocationFetchOptions *)self numberOfSeconds];

  if (numberOfSeconds)
  {
    v12 = MEMORY[0x1E696AEC0];
    date2 = [(RTLocationsFromCoreLocationFetchOptions *)self numberOfSeconds];
    [v12 stringWithFormat:@"NumberOfSeconds: %u", objc_msgSend(date2, "unsignedIntValue")];
    goto LABEL_7;
  }

  v7 = @"<Invalid>";
LABEL_9:

  return v7;
}

@end
@interface RTPlaceInferenceOptions
+ (id)fidelityPolicyMaskToString:(unint64_t)string;
- (RTPlaceInferenceOptions)initWithCoder:(id)coder;
- (RTPlaceInferenceOptions)initWithFidelityPolicy:(unint64_t)policy locations:(id)locations accessPoints:(id)points distance:(double)distance location:(id)location startDate:(id)date endDate:(id)endDate limit:(int64_t)self0 useBackground:(BOOL)self1 clientIdentifier:(id)self2;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTPlaceInferenceOptions

- (RTPlaceInferenceOptions)initWithFidelityPolicy:(unint64_t)policy locations:(id)locations accessPoints:(id)points distance:(double)distance location:(id)location startDate:(id)date endDate:(id)endDate limit:(int64_t)self0 useBackground:(BOOL)self1 clientIdentifier:(id)self2
{
  locationsCopy = locations;
  pointsCopy = points;
  locationCopy = location;
  dateCopy = date;
  endDateCopy = endDate;
  identifierCopy = identifier;
  if (policy >= 0x80)
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v30, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: RTFidelityPolicyMaskValid(policy)", buf, 2u);
    }

    selfCopy = 0;
  }

  else
  {
    v34.receiver = self;
    v34.super_class = RTPlaceInferenceOptions;
    v23 = [(RTPlaceInferenceOptions *)&v34 init];
    v24 = v23;
    if (v23)
    {
      v23->_fidelityPolicy = policy;
      v25 = [locationsCopy copy];
      locations = v24->_locations;
      v24->_locations = v25;

      v27 = [pointsCopy copy];
      accessPoints = v24->_accessPoints;
      v24->_accessPoints = v27;

      v24->_distance = distance;
      objc_storeStrong(&v24->_location, location);
      objc_storeStrong(&v24->_startDate, date);
      objc_storeStrong(&v24->_endDate, endDate);
      v24->_limit = limit;
      v24->_useBackground = background;
      objc_storeStrong(&v24->_clientIdentifier, identifier);
    }

    self = v24;
    selfCopy = self;
  }

  return selfCopy;
}

- (RTPlaceInferenceOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"policy"];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"locations"];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"accessPoints"];

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"distance"];
  [v14 doubleValue];
  v16 = v15;

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"limit"];
  integerValue = [v20 integerValue];

  LOBYTE(v20) = [coderCopy decodeBoolForKey:@"useBackground"];
  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientIdentifier"];

  LOBYTE(v25) = v20;
  v23 = [(RTPlaceInferenceOptions *)self initWithFidelityPolicy:unsignedIntegerValue locations:v9 accessPoints:v13 distance:v17 location:v18 startDate:v19 endDate:v16 limit:integerValue useBackground:v25 clientIdentifier:v22];

  return v23;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  fidelityPolicy = self->_fidelityPolicy;
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInteger:fidelityPolicy];
  [coderCopy encodeObject:v6 forKey:@"policy"];

  [coderCopy encodeObject:self->_locations forKey:@"locations"];
  [coderCopy encodeObject:self->_accessPoints forKey:@"accessPoints"];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_distance];
  [coderCopy encodeObject:v7 forKey:@"distance"];

  [coderCopy encodeObject:self->_location forKey:@"location"];
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_limit];
  [coderCopy encodeObject:v8 forKey:@"limit"];

  [coderCopy encodeBool:self->_useBackground forKey:@"useBackground"];
  [coderCopy encodeObject:self->_clientIdentifier forKey:@"clientIdentifier"];
}

+ (id)fidelityPolicyMaskToString:(unint64_t)string
{
  v21 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v6 = array;
  if (!string)
  {
    v7 = @"Local";
LABEL_16:
    [v6 addObject:v7];
    goto LABEL_17;
  }

  if (string)
  {
    [array addObject:@"Network"];
    if ((string & 2) == 0)
    {
LABEL_4:
      if ((string & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }
  }

  else if ((string & 2) == 0)
  {
    goto LABEL_4;
  }

  [v6 addObject:@"High Fidelity Location"];
  if ((string & 4) == 0)
  {
LABEL_5:
    if ((string & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  [v6 addObject:@"Fallback"];
  if ((string & 8) == 0)
  {
LABEL_6:
    if ((string & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    [v6 addObject:@"Skip Labelling"];
    if ((string & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

LABEL_13:
  [v6 addObject:@"Best Reference Location"];
  if ((string & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((string & 0x20) != 0)
  {
LABEL_15:
    v7 = @"Blue POI Only";
    goto LABEL_16;
  }

LABEL_17:
  if (![v6 count])
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = 138413058;
      v14 = v12;
      v15 = 2048;
      stringCopy = string;
      v17 = 2080;
      v18 = "+[RTPlaceInferenceOptions fidelityPolicyMaskToString:]";
      v19 = 1024;
      v20 = 232;
      _os_log_error_impl(&dword_1BF1C4000, v8, OS_LOG_TYPE_ERROR, "%@ does not handle RTFidelityPolicyMask, %lu (in %s:%d)", &v13, 0x26u);
    }
  }

  if ([v6 count])
  {
    v9 = [v6 componentsJoinedByString:@" + "];
  }

  else
  {
    v9 = &stru_1F3DD00E8;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [objc_opt_class() fidelityPolicyMaskToString:self->_fidelityPolicy];
  v5 = [(NSArray *)self->_locations count];
  lastObject = [(NSArray *)self->_locations lastObject];
  v7 = [(NSArray *)self->_accessPoints count];
  lastObject2 = [(NSArray *)self->_accessPoints lastObject];
  location = self->_location;
  distance = self->_distance;
  stringFromDate = [(NSDate *)self->_startDate stringFromDate];
  stringFromDate2 = [(NSDate *)self->_endDate stringFromDate];
  v13 = stringFromDate2;
  if (self->_useBackground)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  v15 = [v3 stringWithFormat:@"fidelityPolicy, %@, locations count, %lu, last location, %@, accessPoints count, %lu, last accessPoint, %@, location, %@, distance, %f, startDate, %@, endDate, %@, limit, %ld, useBackground, %@, clientIdentifier, %@", v4, v5, lastObject, v7, lastObject2, location, *&distance, stringFromDate, stringFromDate2, self->_limit, v14, self->_clientIdentifier];

  return v15;
}

@end
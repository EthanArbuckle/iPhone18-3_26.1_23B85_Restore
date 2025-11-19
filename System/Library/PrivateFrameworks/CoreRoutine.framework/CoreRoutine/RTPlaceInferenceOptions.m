@interface RTPlaceInferenceOptions
+ (id)fidelityPolicyMaskToString:(unint64_t)a3;
- (RTPlaceInferenceOptions)initWithCoder:(id)a3;
- (RTPlaceInferenceOptions)initWithFidelityPolicy:(unint64_t)a3 locations:(id)a4 accessPoints:(id)a5 distance:(double)a6 location:(id)a7 startDate:(id)a8 endDate:(id)a9 limit:(int64_t)a10 useBackground:(BOOL)a11 clientIdentifier:(id)a12;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTPlaceInferenceOptions

- (RTPlaceInferenceOptions)initWithFidelityPolicy:(unint64_t)a3 locations:(id)a4 accessPoints:(id)a5 distance:(double)a6 location:(id)a7 startDate:(id)a8 endDate:(id)a9 limit:(int64_t)a10 useBackground:(BOOL)a11 clientIdentifier:(id)a12
{
  v33 = a4;
  v19 = a5;
  v32 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a12;
  if (a3 >= 0x80)
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v30, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: RTFidelityPolicyMaskValid(policy)", buf, 2u);
    }

    v29 = 0;
  }

  else
  {
    v34.receiver = self;
    v34.super_class = RTPlaceInferenceOptions;
    v23 = [(RTPlaceInferenceOptions *)&v34 init];
    v24 = v23;
    if (v23)
    {
      v23->_fidelityPolicy = a3;
      v25 = [v33 copy];
      locations = v24->_locations;
      v24->_locations = v25;

      v27 = [v19 copy];
      accessPoints = v24->_accessPoints;
      v24->_accessPoints = v27;

      v24->_distance = a6;
      objc_storeStrong(&v24->_location, a7);
      objc_storeStrong(&v24->_startDate, a8);
      objc_storeStrong(&v24->_endDate, a9);
      v24->_limit = a10;
      v24->_useBackground = a11;
      objc_storeStrong(&v24->_clientIdentifier, a12);
    }

    self = v24;
    v29 = self;
  }

  return v29;
}

- (RTPlaceInferenceOptions)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"policy"];
  v5 = [v4 unsignedIntegerValue];

  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v3 decodeObjectOfClasses:v8 forKey:@"locations"];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [v3 decodeObjectOfClasses:v12 forKey:@"accessPoints"];

  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"distance"];
  [v14 doubleValue];
  v16 = v15;

  v17 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
  v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
  v20 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"limit"];
  v21 = [v20 integerValue];

  LOBYTE(v20) = [v3 decodeBoolForKey:@"useBackground"];
  v22 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"clientIdentifier"];

  LOBYTE(v25) = v20;
  v23 = [(RTPlaceInferenceOptions *)self initWithFidelityPolicy:v5 locations:v9 accessPoints:v13 distance:v17 location:v18 startDate:v19 endDate:v16 limit:v21 useBackground:v25 clientIdentifier:v22];

  return v23;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  fidelityPolicy = self->_fidelityPolicy;
  v9 = a3;
  v6 = [v4 numberWithUnsignedInteger:fidelityPolicy];
  [v9 encodeObject:v6 forKey:@"policy"];

  [v9 encodeObject:self->_locations forKey:@"locations"];
  [v9 encodeObject:self->_accessPoints forKey:@"accessPoints"];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_distance];
  [v9 encodeObject:v7 forKey:@"distance"];

  [v9 encodeObject:self->_location forKey:@"location"];
  [v9 encodeObject:self->_startDate forKey:@"startDate"];
  [v9 encodeObject:self->_endDate forKey:@"endDate"];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_limit];
  [v9 encodeObject:v8 forKey:@"limit"];

  [v9 encodeBool:self->_useBackground forKey:@"useBackground"];
  [v9 encodeObject:self->_clientIdentifier forKey:@"clientIdentifier"];
}

+ (id)fidelityPolicyMaskToString:(unint64_t)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = v5;
  if (!a3)
  {
    v7 = @"Local";
LABEL_16:
    [v6 addObject:v7];
    goto LABEL_17;
  }

  if (a3)
  {
    [v5 addObject:@"Network"];
    if ((a3 & 2) == 0)
    {
LABEL_4:
      if ((a3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }
  }

  else if ((a3 & 2) == 0)
  {
    goto LABEL_4;
  }

  [v6 addObject:@"High Fidelity Location"];
  if ((a3 & 4) == 0)
  {
LABEL_5:
    if ((a3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  [v6 addObject:@"Fallback"];
  if ((a3 & 8) == 0)
  {
LABEL_6:
    if ((a3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    [v6 addObject:@"Skip Labelling"];
    if ((a3 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

LABEL_13:
  [v6 addObject:@"Best Reference Location"];
  if ((a3 & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((a3 & 0x20) != 0)
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
      v16 = a3;
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
  v6 = [(NSArray *)self->_locations lastObject];
  v7 = [(NSArray *)self->_accessPoints count];
  v8 = [(NSArray *)self->_accessPoints lastObject];
  location = self->_location;
  distance = self->_distance;
  v11 = [(NSDate *)self->_startDate stringFromDate];
  v12 = [(NSDate *)self->_endDate stringFromDate];
  v13 = v12;
  if (self->_useBackground)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  v15 = [v3 stringWithFormat:@"fidelityPolicy, %@, locations count, %lu, last location, %@, accessPoints count, %lu, last accessPoint, %@, location, %@, distance, %f, startDate, %@, endDate, %@, limit, %ld, useBackground, %@, clientIdentifier, %@", v4, v5, v6, v7, v8, location, *&distance, v11, v12, self->_limit, v14, self->_clientIdentifier];

  return v15;
}

@end
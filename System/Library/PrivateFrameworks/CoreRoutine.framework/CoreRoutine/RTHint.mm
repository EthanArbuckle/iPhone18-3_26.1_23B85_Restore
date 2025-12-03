@interface RTHint
+ (id)hintSourceToString:(int64_t)string;
- (BOOL)isEqual:(id)equal;
- (RTHint)initWithCoder:(id)coder;
- (RTHint)initWithLocation:(id)location source:(int64_t)source date:(id)date;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTHint

+ (id)hintSourceToString:(int64_t)string
{
  if ((string + 1) > 0xC)
  {
    return @"Bluetooth";
  }

  else
  {
    return off_1E80B4E08[string + 1];
  }
}

- (RTHint)initWithLocation:(id)location source:(int64_t)source date:(id)date
{
  v25 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  dateCopy = date;
  v11 = dateCopy;
  if (!locationCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
LABEL_13:

      selfCopy = 0;
      goto LABEL_14;
    }

    *buf = 0;
    v17 = "Invalid parameter not satisfying: location";
LABEL_16:
    _os_log_error_impl(&dword_1BF1C4000, v16, OS_LOG_TYPE_ERROR, v17, buf, 2u);
    goto LABEL_13;
  }

  if (!dateCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v17 = "Invalid parameter not satisfying: date";
    goto LABEL_16;
  }

  if ((source + 1) >= 0xD)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[RTHint initWithLocation:source:date:]";
      v23 = 1024;
      v24 = 93;
      _os_log_error_impl(&dword_1BF1C4000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: source >= RTHintSourceFirst() && source <= RTHintSourceLast() (in %s:%d)", buf, 0x12u);
    }
  }

  v20.receiver = self;
  v20.super_class = RTHint;
  v13 = [(RTHint *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_location, location);
    v14->_source = source;
    objc_storeStrong(&v14->_date, date);
  }

  self = v14;
  selfCopy = self;
LABEL_14:

  v18 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  location = [(RTHint *)self location];
  v5 = [RTHint hintSourceToString:[(RTHint *)self source]];
  date = [(RTHint *)self date];
  stringFromDate = [date stringFromDate];
  v8 = [v3 stringWithFormat:@"location, %@, source, %@, date, %@", location, v5, stringFromDate];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  date = self->_date;
  coderCopy = coder;
  [coderCopy encodeObject:date forKey:@"date"];
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_source];
  [coderCopy encodeObject:v5 forKey:@"source"];

  [coderCopy encodeObject:self->_location forKey:@"location"];
}

- (RTHint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"source"];
  integerValue = [v6 integerValue];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];

  v9 = [(RTHint *)self initWithLocation:v8 source:integerValue date:v5];
  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_7;
  }

  if (self == equalCopy)
  {
    v17 = 1;
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    location = [(RTHint *)self location];
    [location latitude];
    v9 = v8;
    location2 = [(RTHint *)v6 location];
    [location2 latitude];
    if (v9 == v11)
    {
      location3 = [(RTHint *)self location];
      [location3 longitude];
      v14 = v13;
      location4 = [(RTHint *)v6 location];
      [location4 longitude];
      if (v14 == v16)
      {
        location5 = [(RTHint *)self location];
        [location5 horizontalUncertainty];
        v20 = v19;
        location6 = [(RTHint *)v6 location];
        [location6 horizontalUncertainty];
        if (v20 == v22)
        {
          date = [(RTHint *)self date];
          date2 = [(RTHint *)v6 date];
          v29 = date;
          v25 = date;
          v26 = date2;
          if ([v25 isEqualToDate:date2])
          {
            source = [(RTHint *)self source];
            v17 = source == [(RTHint *)v6 source];
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
LABEL_7:
    v17 = 0;
  }

LABEL_19:

  return v17;
}

- (unint64_t)hash
{
  location = [(RTHint *)self location];
  v4 = [location hash];
  date = [(RTHint *)self date];
  v6 = [date hash] ^ v4;
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[RTHint source](self, "source")}];
  v8 = [v7 hash];

  return v6 ^ v8;
}

@end
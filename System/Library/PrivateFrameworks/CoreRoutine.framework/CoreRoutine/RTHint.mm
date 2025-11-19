@interface RTHint
+ (id)hintSourceToString:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (RTHint)initWithCoder:(id)a3;
- (RTHint)initWithLocation:(id)a3 source:(int64_t)a4 date:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTHint

+ (id)hintSourceToString:(int64_t)a3
{
  if ((a3 + 1) > 0xC)
  {
    return @"Bluetooth";
  }

  else
  {
    return off_1E80B4E08[a3 + 1];
  }
}

- (RTHint)initWithLocation:(id)a3 source:(int64_t)a4 date:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (!v9)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
LABEL_13:

      v15 = 0;
      goto LABEL_14;
    }

    *buf = 0;
    v17 = "Invalid parameter not satisfying: location";
LABEL_16:
    _os_log_error_impl(&dword_1BF1C4000, v16, OS_LOG_TYPE_ERROR, v17, buf, 2u);
    goto LABEL_13;
  }

  if (!v10)
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

  if ((a4 + 1) >= 0xD)
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
    objc_storeStrong(&v13->_location, a3);
    v14->_source = a4;
    objc_storeStrong(&v14->_date, a5);
  }

  self = v14;
  v15 = self;
LABEL_14:

  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(RTHint *)self location];
  v5 = [RTHint hintSourceToString:[(RTHint *)self source]];
  v6 = [(RTHint *)self date];
  v7 = [v6 stringFromDate];
  v8 = [v3 stringWithFormat:@"location, %@, source, %@, date, %@", v4, v5, v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  date = self->_date;
  v6 = a3;
  [v6 encodeObject:date forKey:@"date"];
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_source];
  [v6 encodeObject:v5 forKey:@"source"];

  [v6 encodeObject:self->_location forKey:@"location"];
}

- (RTHint)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"source"];
  v7 = [v6 integerValue];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location"];

  v9 = [(RTHint *)self initWithLocation:v8 source:v7 date:v5];
  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  if (self == v4)
  {
    v17 = 1;
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(RTHint *)self location];
    [v7 latitude];
    v9 = v8;
    v10 = [(RTHint *)v6 location];
    [v10 latitude];
    if (v9 == v11)
    {
      v12 = [(RTHint *)self location];
      [v12 longitude];
      v14 = v13;
      v15 = [(RTHint *)v6 location];
      [v15 longitude];
      if (v14 == v16)
      {
        v18 = [(RTHint *)self location];
        [v18 horizontalUncertainty];
        v20 = v19;
        v21 = [(RTHint *)v6 location];
        [v21 horizontalUncertainty];
        if (v20 == v22)
        {
          v23 = [(RTHint *)self date];
          v24 = [(RTHint *)v6 date];
          v29 = v23;
          v25 = v23;
          v26 = v24;
          if ([v25 isEqualToDate:v24])
          {
            v27 = [(RTHint *)self source];
            v17 = v27 == [(RTHint *)v6 source];
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
  v3 = [(RTHint *)self location];
  v4 = [v3 hash];
  v5 = [(RTHint *)self date];
  v6 = [v5 hash] ^ v4;
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[RTHint source](self, "source")}];
  v8 = [v7 hash];

  return v6 ^ v8;
}

@end
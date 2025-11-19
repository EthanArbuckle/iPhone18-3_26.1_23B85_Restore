@interface RTLocationOfInterestVisit
- (BOOL)isEqual:(id)a3;
- (RTLocationOfInterestVisit)initWithCoder:(id)a3;
- (RTLocationOfInterestVisit)initWithIdentifier:(id)a3 entry:(id)a4 exit:(id)a5 location:(id)a6 locationOfInterestConfidence:(double)a7 locationOfInterestSource:(unint64_t)a8;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTLocationOfInterestVisit

- (RTLocationOfInterestVisit)initWithIdentifier:(id)a3 entry:(id)a4 exit:(id)a5 location:(id)a6 locationOfInterestConfidence:(double)a7 locationOfInterestSource:(unint64_t)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = v17;
  if (!v14)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v28 = "Invalid parameter not satisfying: identifier";
LABEL_21:
    _os_log_error_impl(&dword_1BF1C4000, v27, OS_LOG_TYPE_ERROR, v28, buf, 2u);
    goto LABEL_22;
  }

  if (!v15)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v28 = "Invalid parameter not satisfying: entry";
    goto LABEL_21;
  }

  if (!v16)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v28 = "Invalid parameter not satisfying: exit";
    goto LABEL_21;
  }

  if (!v17)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v28 = "Invalid parameter not satisfying: location";
    goto LABEL_21;
  }

  if (a7 < 0.0 || a7 > 1.0)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v28 = "Invalid parameter not satisfying: kRTLocationOfInterestVisitConfidenceMin <= locationOfInterestConfidence && locationOfInterestConfidence <= kRTLocationOfInterestVisitConfidenceMax";
      goto LABEL_21;
    }

LABEL_22:

    goto LABEL_23;
  }

  if ((a8 & 0xFFFFFFFFFFC00020) != 0)
  {
LABEL_23:
    v26 = 0;
    goto LABEL_24;
  }

  v30.receiver = self;
  v30.super_class = RTLocationOfInterestVisit;
  v19 = [(RTLocationOfInterestVisit *)&v30 init];
  if (v19)
  {
    v20 = [v14 copy];
    identifier = v19->_identifier;
    v19->_identifier = v20;

    v22 = [v15 copy];
    entryDate = v19->_entryDate;
    v19->_entryDate = v22;

    v24 = [v16 copy];
    exitDate = v19->_exitDate;
    v19->_exitDate = v24;

    objc_storeStrong(&v19->_location, a6);
    v19->_locationOfInterestConfidence = a7;
    v19->_locationOfInterestSource = a8;
  }

  self = v19;
  v26 = self;
LABEL_24:

  return v26;
}

- (RTLocationOfInterestVisit)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"entryDate"];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"entry"];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"entryTime"];
    }

    v8 = v11;
  }

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"exitDate"];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"exit"];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"exitTime"];
    }

    v14 = v17;
  }

  v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
  [v4 decodeDoubleForKey:@"locationOfInterestConfidence"];
  v20 = -[RTLocationOfInterestVisit initWithIdentifier:entry:exit:location:locationOfInterestConfidence:locationOfInterestSource:](self, "initWithIdentifier:entry:exit:location:locationOfInterestConfidence:locationOfInterestSource:", v5, v8, v14, v18, [v4 decodeIntegerForKey:@"locationOfInterestSource"], v19);

  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_entryDate forKey:@"entryDate"];
  [v5 encodeObject:self->_exitDate forKey:@"exitDate"];
  [v5 encodeObject:self->_location forKey:@"location"];
  [v5 encodeDouble:@"locationOfInterestConfidence" forKey:self->_locationOfInterestConfidence];
  [v5 encodeInteger:self->_locationOfInterestSource forKey:@"locationOfInterestSource"];
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5 == self)
  {
    v11 = 1;
  }

  else
  {
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        v8 = [(RTLocationOfInterestVisit *)self identifier];
        if (v8 || ([(RTLocationOfInterestVisit *)v7 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v9 = [(RTLocationOfInterestVisit *)self identifier];
          v10 = [(RTLocationOfInterestVisit *)v7 identifier];
          v11 = [v9 isEqual:v10];

          if (v8)
          {
LABEL_12:

            goto LABEL_13;
          }
        }

        else
        {
          v11 = 1;
        }

        goto LABEL_12;
      }
    }

    v11 = 0;
  }

LABEL_13:

  return v11;
}

- (unint64_t)hash
{
  v2 = [(RTLocationOfInterestVisit *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  if (qword_1ED7C3860 != -1)
  {
    dispatch_once(&qword_1ED7C3860, &__block_literal_global_5);
  }

  v3 = MEMORY[0x1E696AEC0];
  v4 = _MergedGlobals_21;
  v5 = [(RTLocationOfInterestVisit *)self entryDate];
  v6 = [v4 stringFromDate:v5];
  v7 = _MergedGlobals_21;
  v8 = [(RTLocationOfInterestVisit *)self exitDate];
  v9 = [v7 stringFromDate:v8];
  v10 = [(RTLocationOfInterestVisit *)self location];
  [(RTLocationOfInterestVisit *)self locationOfInterestConfidence];
  v12 = [v3 stringWithFormat:@"entry, %@, exit, %@, location, %@, loiConfidence, %f", v6, v9, v10, v11];

  return v12;
}

uint64_t __40__RTLocationOfInterestVisit_description__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _MergedGlobals_21;
  _MergedGlobals_21 = v0;

  v2 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [_MergedGlobals_21 setLocale:v2];

  [_MergedGlobals_21 setDateStyle:1];
  v3 = _MergedGlobals_21;

  return [v3 setTimeStyle:3];
}

@end
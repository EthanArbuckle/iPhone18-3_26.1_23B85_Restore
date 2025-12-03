@interface RTLocationOfInterestVisit
- (BOOL)isEqual:(id)equal;
- (RTLocationOfInterestVisit)initWithCoder:(id)coder;
- (RTLocationOfInterestVisit)initWithIdentifier:(id)identifier entry:(id)entry exit:(id)exit location:(id)location locationOfInterestConfidence:(double)confidence locationOfInterestSource:(unint64_t)source;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTLocationOfInterestVisit

- (RTLocationOfInterestVisit)initWithIdentifier:(id)identifier entry:(id)entry exit:(id)exit location:(id)location locationOfInterestConfidence:(double)confidence locationOfInterestSource:(unint64_t)source
{
  identifierCopy = identifier;
  entryCopy = entry;
  exitCopy = exit;
  locationCopy = location;
  v18 = locationCopy;
  if (!identifierCopy)
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

  if (!entryCopy)
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

  if (!exitCopy)
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

  if (!locationCopy)
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

  if (confidence < 0.0 || confidence > 1.0)
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

  if ((source & 0xFFFFFFFFFFC00020) != 0)
  {
LABEL_23:
    selfCopy = 0;
    goto LABEL_24;
  }

  v30.receiver = self;
  v30.super_class = RTLocationOfInterestVisit;
  v19 = [(RTLocationOfInterestVisit *)&v30 init];
  if (v19)
  {
    v20 = [identifierCopy copy];
    identifier = v19->_identifier;
    v19->_identifier = v20;

    v22 = [entryCopy copy];
    entryDate = v19->_entryDate;
    v19->_entryDate = v22;

    v24 = [exitCopy copy];
    exitDate = v19->_exitDate;
    v19->_exitDate = v24;

    objc_storeStrong(&v19->_location, location);
    v19->_locationOfInterestConfidence = confidence;
    v19->_locationOfInterestSource = source;
  }

  self = v19;
  selfCopy = self;
LABEL_24:

  return selfCopy;
}

- (RTLocationOfInterestVisit)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entryDate"];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entry"];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entryTime"];
    }

    v8 = v11;
  }

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"exitDate"];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"exit"];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"exitTime"];
    }

    v14 = v17;
  }

  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
  [coderCopy decodeDoubleForKey:@"locationOfInterestConfidence"];
  v20 = -[RTLocationOfInterestVisit initWithIdentifier:entry:exit:location:locationOfInterestConfidence:locationOfInterestSource:](self, "initWithIdentifier:entry:exit:location:locationOfInterestConfidence:locationOfInterestSource:", v5, v8, v14, v18, [coderCopy decodeIntegerForKey:@"locationOfInterestSource"], v19);

  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_entryDate forKey:@"entryDate"];
  [coderCopy encodeObject:self->_exitDate forKey:@"exitDate"];
  [coderCopy encodeObject:self->_location forKey:@"location"];
  [coderCopy encodeDouble:@"locationOfInterestConfidence" forKey:self->_locationOfInterestConfidence];
  [coderCopy encodeInteger:self->_locationOfInterestSource forKey:@"locationOfInterestSource"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        identifier = [(RTLocationOfInterestVisit *)self identifier];
        if (identifier || ([(RTLocationOfInterestVisit *)v7 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          identifier2 = [(RTLocationOfInterestVisit *)self identifier];
          identifier3 = [(RTLocationOfInterestVisit *)v7 identifier];
          v11 = [identifier2 isEqual:identifier3];

          if (identifier)
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
  identifier = [(RTLocationOfInterestVisit *)self identifier];
  v3 = [identifier hash];

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
  entryDate = [(RTLocationOfInterestVisit *)self entryDate];
  v6 = [v4 stringFromDate:entryDate];
  v7 = _MergedGlobals_21;
  exitDate = [(RTLocationOfInterestVisit *)self exitDate];
  v9 = [v7 stringFromDate:exitDate];
  location = [(RTLocationOfInterestVisit *)self location];
  [(RTLocationOfInterestVisit *)self locationOfInterestConfidence];
  v12 = [v3 stringWithFormat:@"entry, %@, exit, %@, location, %@, loiConfidence, %f", v6, v9, location, v11];

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
@interface RTLocationOfInterestTransition
- (BOOL)isEqual:(id)a3;
- (RTLocationOfInterestTransition)initWithCoder:(id)a3;
- (RTLocationOfInterestTransition)initWithIdentifier:(id)a3 startDate:(id)a4 stopDate:(id)a5 visitIdentifierOrigin:(id)a6 visitIdentifierDestination:(id)a7 modeOfTransportation:(int64_t)a8;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTLocationOfInterestTransition

- (RTLocationOfInterestTransition)initWithIdentifier:(id)a3 startDate:(id)a4 stopDate:(id)a5 visitIdentifierOrigin:(id)a6 visitIdentifierDestination:(id)a7 modeOfTransportation:(int64_t)a8
{
  v39 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (v14)
  {
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v36 = "[RTLocationOfInterestTransition initWithIdentifier:startDate:stopDate:visitIdentifierOrigin:visitIdentifierDestination:modeOfTransportation:]";
      v37 = 1024;
      v38 = 33;
      _os_log_error_impl(&dword_1BF1C4000, v26, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier (in %s:%d)", buf, 0x12u);
    }

    if (v15)
    {
LABEL_3:
      if (v16)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v36 = "[RTLocationOfInterestTransition initWithIdentifier:startDate:stopDate:visitIdentifierOrigin:visitIdentifierDestination:modeOfTransportation:]";
    v37 = 1024;
    v38 = 34;
    _os_log_error_impl(&dword_1BF1C4000, v27, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startDate (in %s:%d)", buf, 0x12u);
  }

  if (v16)
  {
LABEL_4:
    if (v17)
    {
      goto LABEL_5;
    }

LABEL_22:
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v36 = "[RTLocationOfInterestTransition initWithIdentifier:startDate:stopDate:visitIdentifierOrigin:visitIdentifierDestination:modeOfTransportation:]";
      v37 = 1024;
      v38 = 36;
      _os_log_error_impl(&dword_1BF1C4000, v29, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visitIdentifierOrigin (in %s:%d)", buf, 0x12u);
    }

    if (v18)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_19:
  v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v36 = "[RTLocationOfInterestTransition initWithIdentifier:startDate:stopDate:visitIdentifierOrigin:visitIdentifierDestination:modeOfTransportation:]";
    v37 = 1024;
    v38 = 35;
    _os_log_error_impl(&dword_1BF1C4000, v28, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: stopDate (in %s:%d)", buf, 0x12u);
  }

  if (!v17)
  {
    goto LABEL_22;
  }

LABEL_5:
  if (v18)
  {
LABEL_6:
    v19 = 0;
    if (v14 && v15 && v16 && v17)
    {
      v34.receiver = self;
      v34.super_class = RTLocationOfInterestTransition;
      v20 = [(RTLocationOfInterestTransition *)&v34 init];
      v21 = v20;
      if (v20)
      {
        objc_storeStrong(&v20->_identifier, a3);
        v22 = [v15 copy];
        startDate = v21->_startDate;
        v21->_startDate = v22;

        v24 = [v16 copy];
        stopDate = v21->_stopDate;
        v21->_stopDate = v24;

        objc_storeStrong(&v21->_visitIdentifierOrigin, a6);
        objc_storeStrong(&v21->_visitIdentifierDestination, a7);
        v21->_modeOfTransportation = a8;
      }

      self = v21;
      v19 = self;
    }

    goto LABEL_28;
  }

LABEL_25:
  v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v36 = "[RTLocationOfInterestTransition initWithIdentifier:startDate:stopDate:visitIdentifierOrigin:visitIdentifierDestination:modeOfTransportation:]";
    v37 = 1024;
    v38 = 37;
    _os_log_error_impl(&dword_1BF1C4000, v30, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visitIdentifierDestination (in %s:%d)", buf, 0x12u);
  }

  v19 = 0;
LABEL_28:

  v31 = *MEMORY[0x1E69E9840];
  return v19;
}

- (id)description
{
  v14 = MEMORY[0x1E696AD60];
  v16 = [(RTLocationOfInterestTransition *)self identifier];
  v3 = [v16 UUIDString];
  v15 = [(RTLocationOfInterestTransition *)self startDate];
  v4 = [v15 stringFromDate];
  v5 = [(RTLocationOfInterestTransition *)self stopDate];
  v6 = [v5 stringFromDate];
  v7 = [(RTLocationOfInterestTransition *)self visitIdentifierOrigin];
  v8 = [v7 UUIDString];
  v9 = [(RTLocationOfInterestTransition *)self visitIdentifierDestination];
  v10 = [v9 UUIDString];
  v11 = [RTRoutineManager modeOfTransportationToString:[(RTLocationOfInterestTransition *)self modeOfTransportation]];
  v12 = [v14 stringWithFormat:@"identifier, %@, startDate, %@, stopDate, %@, origin, %@, destination, %@, modeOfTransportation, %@", v3, v4, v6, v8, v10, v11];

  return v12;
}

- (RTLocationOfInterestTransition)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = RTLocationOfInterestTransition;
  v5 = [(RTLocationOfInterestTransition *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stopDate"];
    stopDate = v5->_stopDate;
    v5->_stopDate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"visitIdentifierOrigin"];
    visitIdentifierOrigin = v5->_visitIdentifierOrigin;
    v5->_visitIdentifierOrigin = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"visitIdentifierDestination"];
    visitIdentifierDestination = v5->_visitIdentifierDestination;
    v5->_visitIdentifierDestination = v14;

    v5->_modeOfTransportation = [v4 decodeIntegerForKey:@"modeOfTransportation"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_startDate forKey:@"startDate"];
  [v5 encodeObject:self->_stopDate forKey:@"stopDate"];
  [v5 encodeObject:self->_visitIdentifierOrigin forKey:@"visitIdentifierOrigin"];
  [v5 encodeObject:self->_visitIdentifierDestination forKey:@"visitIdentifierDestination"];
  [v5 encodeInteger:self->_modeOfTransportation forKey:@"modeOfTransportation"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v9 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(RTLocationOfInterestTransition *)self identifier];
    v8 = [(RTLocationOfInterestTransition *)v6 identifier];

    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(RTLocationOfInterestTransition *)self identifier];
  v3 = [v2 hash];

  return v3;
}

@end
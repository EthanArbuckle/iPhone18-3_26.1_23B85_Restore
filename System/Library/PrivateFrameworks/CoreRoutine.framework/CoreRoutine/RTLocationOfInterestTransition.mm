@interface RTLocationOfInterestTransition
- (BOOL)isEqual:(id)equal;
- (RTLocationOfInterestTransition)initWithCoder:(id)coder;
- (RTLocationOfInterestTransition)initWithIdentifier:(id)identifier startDate:(id)date stopDate:(id)stopDate visitIdentifierOrigin:(id)origin visitIdentifierDestination:(id)destination modeOfTransportation:(int64_t)transportation;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTLocationOfInterestTransition

- (RTLocationOfInterestTransition)initWithIdentifier:(id)identifier startDate:(id)date stopDate:(id)stopDate visitIdentifierOrigin:(id)origin visitIdentifierDestination:(id)destination modeOfTransportation:(int64_t)transportation
{
  v39 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dateCopy = date;
  stopDateCopy = stopDate;
  originCopy = origin;
  destinationCopy = destination;
  if (identifierCopy)
  {
    if (dateCopy)
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

    if (dateCopy)
    {
LABEL_3:
      if (stopDateCopy)
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

  if (stopDateCopy)
  {
LABEL_4:
    if (originCopy)
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

    if (destinationCopy)
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

  if (!originCopy)
  {
    goto LABEL_22;
  }

LABEL_5:
  if (destinationCopy)
  {
LABEL_6:
    selfCopy = 0;
    if (identifierCopy && dateCopy && stopDateCopy && originCopy)
    {
      v34.receiver = self;
      v34.super_class = RTLocationOfInterestTransition;
      v20 = [(RTLocationOfInterestTransition *)&v34 init];
      v21 = v20;
      if (v20)
      {
        objc_storeStrong(&v20->_identifier, identifier);
        v22 = [dateCopy copy];
        startDate = v21->_startDate;
        v21->_startDate = v22;

        v24 = [stopDateCopy copy];
        stopDate = v21->_stopDate;
        v21->_stopDate = v24;

        objc_storeStrong(&v21->_visitIdentifierOrigin, origin);
        objc_storeStrong(&v21->_visitIdentifierDestination, destination);
        v21->_modeOfTransportation = transportation;
      }

      self = v21;
      selfCopy = self;
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

  selfCopy = 0;
LABEL_28:

  v31 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)description
{
  v14 = MEMORY[0x1E696AD60];
  identifier = [(RTLocationOfInterestTransition *)self identifier];
  uUIDString = [identifier UUIDString];
  startDate = [(RTLocationOfInterestTransition *)self startDate];
  stringFromDate = [startDate stringFromDate];
  stopDate = [(RTLocationOfInterestTransition *)self stopDate];
  stringFromDate2 = [stopDate stringFromDate];
  visitIdentifierOrigin = [(RTLocationOfInterestTransition *)self visitIdentifierOrigin];
  uUIDString2 = [visitIdentifierOrigin UUIDString];
  visitIdentifierDestination = [(RTLocationOfInterestTransition *)self visitIdentifierDestination];
  uUIDString3 = [visitIdentifierDestination UUIDString];
  v11 = [RTRoutineManager modeOfTransportationToString:[(RTLocationOfInterestTransition *)self modeOfTransportation]];
  v12 = [v14 stringWithFormat:@"identifier, %@, startDate, %@, stopDate, %@, origin, %@, destination, %@, modeOfTransportation, %@", uUIDString, stringFromDate, stringFromDate2, uUIDString2, uUIDString3, v11];

  return v12;
}

- (RTLocationOfInterestTransition)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = RTLocationOfInterestTransition;
  v5 = [(RTLocationOfInterestTransition *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stopDate"];
    stopDate = v5->_stopDate;
    v5->_stopDate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"visitIdentifierOrigin"];
    visitIdentifierOrigin = v5->_visitIdentifierOrigin;
    v5->_visitIdentifierOrigin = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"visitIdentifierDestination"];
    visitIdentifierDestination = v5->_visitIdentifierDestination;
    v5->_visitIdentifierDestination = v14;

    v5->_modeOfTransportation = [coderCopy decodeIntegerForKey:@"modeOfTransportation"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_stopDate forKey:@"stopDate"];
  [coderCopy encodeObject:self->_visitIdentifierOrigin forKey:@"visitIdentifierOrigin"];
  [coderCopy encodeObject:self->_visitIdentifierDestination forKey:@"visitIdentifierDestination"];
  [coderCopy encodeInteger:self->_modeOfTransportation forKey:@"modeOfTransportation"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    identifier = [(RTLocationOfInterestTransition *)self identifier];
    identifier2 = [(RTLocationOfInterestTransition *)v6 identifier];

    v9 = [identifier isEqual:identifier2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  identifier = [(RTLocationOfInterestTransition *)self identifier];
  v3 = [identifier hash];

  return v3;
}

@end
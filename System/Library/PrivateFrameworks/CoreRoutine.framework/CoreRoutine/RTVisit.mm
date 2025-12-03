@interface RTVisit
+ (BOOL)validVisitSources:(id)sources;
+ (id)stringFromVisitIncidentType:(int64_t)type;
+ (int64_t)visitIncidentTypeFromString:(id)string;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToVisit:(id)visit;
- (RTVisit)initWithCoder:(id)coder;
- (RTVisit)initWithDate:(id)date type:(int64_t)type location:(id)location entry:(id)entry exit:(id)exit dataPointCount:(int64_t)count confidence:(double)confidence placeInference:(id)self0 source:(int64_t)self1 identifier:(id)self2;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTVisit

- (RTVisit)initWithDate:(id)date type:(int64_t)type location:(id)location entry:(id)entry exit:(id)exit dataPointCount:(int64_t)count confidence:(double)confidence placeInference:(id)self0 source:(int64_t)self1 identifier:(id)self2
{
  dateCopy = date;
  locationCopy = location;
  entryCopy = entry;
  exitCopy = exit;
  inferenceCopy = inference;
  identifierCopy = identifier;
  if (!dateCopy)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v35 = "Invalid parameter not satisfying: date";
LABEL_21:
    _os_log_error_impl(&dword_1BF1C4000, v34, OS_LOG_TYPE_ERROR, v35, buf, 2u);
    goto LABEL_22;
  }

  if (!locationCopy)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v35 = "Invalid parameter not satisfying: location";
    goto LABEL_21;
  }

  if (!entryCopy)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v35 = "Invalid parameter not satisfying: entry";
    goto LABEL_21;
  }

  if (exitCopy && ([entryCopy isOnOrBefore:exitCopy] & 1) == 0)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v35 = "Invalid parameter not satisfying: !exit || [entry isOnOrBefore:exit]";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if (confidence < 0.0 || confidence > 1.0)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v35 = "Invalid parameter not satisfying: confidence >= RTVisitConfidenceLow && confidence <= RTVisitConfidenceHigh";
      goto LABEL_21;
    }

LABEL_22:

    selfCopy = 0;
    goto LABEL_23;
  }

  v38.receiver = self;
  v38.super_class = RTVisit;
  v24 = [(RTVisit *)&v38 init];
  if (v24)
  {
    v25 = [dateCopy copy];
    date = v24->_date;
    v24->_date = v25;

    v24->_type = type;
    v27 = [locationCopy copy];
    location = v24->_location;
    v24->_location = v27;

    v29 = [entryCopy copy];
    entry = v24->_entry;
    v24->_entry = v29;

    v31 = [exitCopy copy];
    exit = v24->_exit;
    v24->_exit = v31;

    v24->_dataPointCount = count;
    v24->_confidence = confidence;
    objc_storeStrong(&v24->_placeInference, inference);
    v24->_source = source;
    objc_storeStrong(&v24->_identifier, identifier);
  }

  self = v24;
  selfCopy = self;
LABEL_23:

  return selfCopy;
}

- (id)description
{
  v18 = MEMORY[0x1E696AEC0];
  date = [(RTVisit *)self date];
  stringFromDate = [date stringFromDate];
  v3 = [RTVisit stringFromVisitIncidentType:[(RTVisit *)self type]];
  location = [(RTVisit *)self location];
  entry = [(RTVisit *)self entry];
  stringFromDate2 = [entry stringFromDate];
  exit = [(RTVisit *)self exit];
  stringFromDate3 = [exit stringFromDate];
  dataPointCount = [(RTVisit *)self dataPointCount];
  [(RTVisit *)self confidence];
  v11 = v10;
  placeInference = [(RTVisit *)self placeInference];
  source = [(RTVisit *)self source];
  identifier = [(RTVisit *)self identifier];
  v15 = [v18 stringWithFormat:@"date, %@, type, %@, location, %@, entry, %@, exit, %@, dataPointCount, %lu, confidence, %.2f, placeInference, %@, source, %lu, identifier, %@", stringFromDate, v3, location, stringFromDate2, stringFromDate3, dataPointCount, v11, placeInference, source, identifier];

  return v15;
}

+ (id)stringFromVisitIncidentType:(int64_t)type
{
  if ((type - 1) > 2)
  {
    return @"RTVisitTypeUnknown";
  }

  else
  {
    return off_1E80B3D70[type - 1];
  }
}

+ (int64_t)visitIncidentTypeFromString:(id)string
{
  v15 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if (!stringCopy)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "+[RTVisit visitIncidentTypeFromString:]";
      v11 = 1024;
      LODWORD(v12) = 153;
      _os_log_error_impl(&dword_1BF1C4000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: typeString (in %s:%d)", &v9, 0x12u);
    }
  }

  if (([stringCopy isEqualToString:@"RTVisitTypeUnknown"] & 1) == 0)
  {
    if ([stringCopy isEqualToString:@"RTVisitTypeEntry"])
    {
      v5 = 1;
      goto LABEL_13;
    }

    if ([stringCopy isEqualToString:@"RTVisitTypeEntryResume"])
    {
      v5 = 2;
      goto LABEL_13;
    }

    if ([stringCopy isEqualToString:@"RTVisitTypeExit"])
    {
      v5 = 3;
      goto LABEL_13;
    }

    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412802;
      v10 = stringCopy;
      v11 = 2080;
      v12 = "+[RTVisit visitIncidentTypeFromString:]";
      v13 = 1024;
      v14 = 163;
      _os_log_error_impl(&dword_1BF1C4000, v8, OS_LOG_TYPE_ERROR, "Invalid type string, %@. (in %s:%d)", &v9, 0x1Cu);
    }
  }

  v5 = 0;
LABEL_13:

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  date = self->_date;
  coderCopy = coder;
  [coderCopy encodeObject:date forKey:@"date"];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_type];
  [coderCopy encodeObject:v5 forKey:@"type"];

  [coderCopy encodeObject:self->_location forKey:@"location"];
  [coderCopy encodeObject:self->_entry forKey:@"entry"];
  [coderCopy encodeObject:self->_exit forKey:@"exit"];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_dataPointCount];
  [coderCopy encodeObject:v6 forKey:@"dataPointCount"];

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_confidence];
  [coderCopy encodeObject:v7 forKey:@"confidence"];

  [coderCopy encodeObject:self->_placeInference forKey:@"placeInference"];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_source];
  [coderCopy encodeObject:v8 forKey:@"source"];

  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
}

- (RTVisit)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  integerValue = [v5 integerValue];
  self->_type = integerValue;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entry"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"exit"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dataPointCount"];
  integerValue2 = [v10 integerValue];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"confidence"];
  integerValue3 = [v12 integerValue];

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"placeInference"];
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"source"];
  unsignedIntValue = [v15 unsignedIntValue];

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];

  v18 = [(RTVisit *)self initWithDate:v20 type:integerValue location:v7 entry:v8 exit:v9 dataPointCount:integerValue2 confidence:integerValue3 placeInference:v14 source:unsignedIntValue identifier:v17];
  return v18;
}

- (BOOL)isEqualToVisit:(id)visit
{
  visitCopy = visit;
  v9 = visitCopy;
  identifier = self->_identifier;
  if (identifier)
  {
    identifier = [visitCopy identifier];
    v11 = [(NSUUID *)identifier isEqual:identifier];

    if (v11)
    {
      v12 = 1;
      goto LABEL_49;
    }
  }

  date = self->_date;
  v14 = date;
  if (date)
  {
LABEL_7:
    date = [v9 date];
    v40 = [(NSDate *)v14 isEqualToDate:date];

    if (date)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  identifier = [v9 date];
  if (identifier)
  {
    v14 = self->_date;
    goto LABEL_7;
  }

  v40 = 1;
LABEL_10:

LABEL_11:
  type = self->_type;
  type = [v9 type];
  location = self->_location;
  v17 = location;
  if (location)
  {
    goto LABEL_14;
  }

  date = [v9 location];
  if (date)
  {
    v17 = self->_location;
LABEL_14:
    location = [v9 location];
    v37 = [(RTLocation *)v17 isEqualToLocation:location];

    if (location)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v37 = 1;
LABEL_17:

LABEL_18:
  entry = self->_entry;
  v19 = entry;
  if (entry)
  {
    goto LABEL_21;
  }

  location = [v9 entry];
  if (location)
  {
    v19 = self->_entry;
LABEL_21:
    entry = [v9 entry];
    v20 = [(NSDate *)v19 isEqualToDate:entry];

    if (entry)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v20 = 1;
LABEL_24:

LABEL_25:
  exit = self->_exit;
  v22 = exit;
  if (exit)
  {
    goto LABEL_28;
  }

  entry = [v9 exit];
  if (entry)
  {
    v22 = self->_exit;
LABEL_28:
    exit = [v9 exit];
    v24 = [(NSDate *)v22 isEqualToDate:exit];

    if (exit)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v24 = 1;
LABEL_31:

LABEL_32:
  dataPointCount = self->_dataPointCount;
  dataPointCount = [v9 dataPointCount];
  confidence = self->_confidence;
  [v9 confidence];
  v29 = v28;
  placeInference = self->_placeInference;
  v31 = placeInference;
  if (!placeInference)
  {
    placeInference = [v9 placeInference];
    if (!placeInference)
    {
      v33 = 1;
LABEL_38:

      goto LABEL_39;
    }

    v31 = self->_placeInference;
  }

  placeInference2 = [v9 placeInference];
  v33 = [(RTPlaceInference *)v31 isEqual:placeInference2];

  if (!placeInference)
  {
    goto LABEL_38;
  }

LABEL_39:
  source = self->_source;
  source = [v9 source];
  v12 = 0;
  if (v40 && type == type && ((v37 ^ 1) & 1) == 0 && ((v20 ^ 1) & 1) == 0 && ((v24 ^ 1) & 1) == 0 && dataPointCount == dataPointCount && confidence == v29)
  {
    if (source == source)
    {
      v12 = v33;
    }

    else
    {
      v12 = 0;
    }
  }

LABEL_49:

  return v12;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTVisit *)self isEqualToVisit:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSDate *)self->_date hash];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_type];
  v5 = [v4 hash];
  v6 = v3 ^ [(RTLocation *)self->_location hash];
  v7 = v5 ^ v6 ^ [(NSDate *)self->_entry hash];
  v8 = [(NSDate *)self->_exit hash];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_dataPointCount];
  v10 = v7 ^ v8 ^ [v9 hash];
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_confidence];
  v12 = [v11 hash];
  v13 = v12 ^ [(RTPlaceInference *)self->_placeInference hash];
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:self->_source];
  v15 = v10 ^ v13 ^ [v14 hash];
  v16 = [(NSUUID *)self->_identifier hash];

  return v15 ^ v16;
}

+ (BOOL)validVisitSources:(id)sources
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  sourcesCopy = sources;
  v4 = [sourcesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(sourcesCopy);
        }

        if ([*(*(&v11 + 1) + 8 * i) unsignedIntValue] > 3)
        {
          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [sourcesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

@end
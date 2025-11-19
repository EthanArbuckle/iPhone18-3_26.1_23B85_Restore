@interface RTVisit
+ (BOOL)validVisitSources:(id)a3;
+ (id)stringFromVisitIncidentType:(int64_t)a3;
+ (int64_t)visitIncidentTypeFromString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToVisit:(id)a3;
- (RTVisit)initWithCoder:(id)a3;
- (RTVisit)initWithDate:(id)a3 type:(int64_t)a4 location:(id)a5 entry:(id)a6 exit:(id)a7 dataPointCount:(int64_t)a8 confidence:(double)a9 placeInference:(id)a10 source:(int64_t)a11 identifier:(id)a12;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTVisit

- (RTVisit)initWithDate:(id)a3 type:(int64_t)a4 location:(id)a5 entry:(id)a6 exit:(id)a7 dataPointCount:(int64_t)a8 confidence:(double)a9 placeInference:(id)a10 source:(int64_t)a11 identifier:(id)a12
{
  v19 = a3;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v37 = a10;
  v23 = a12;
  if (!v19)
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

  if (!v20)
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

  if (!v21)
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

  if (v22 && ([v21 isOnOrBefore:v22] & 1) == 0)
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

  if (a9 < 0.0 || a9 > 1.0)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v35 = "Invalid parameter not satisfying: confidence >= RTVisitConfidenceLow && confidence <= RTVisitConfidenceHigh";
      goto LABEL_21;
    }

LABEL_22:

    v33 = 0;
    goto LABEL_23;
  }

  v38.receiver = self;
  v38.super_class = RTVisit;
  v24 = [(RTVisit *)&v38 init];
  if (v24)
  {
    v25 = [v19 copy];
    date = v24->_date;
    v24->_date = v25;

    v24->_type = a4;
    v27 = [v20 copy];
    location = v24->_location;
    v24->_location = v27;

    v29 = [v21 copy];
    entry = v24->_entry;
    v24->_entry = v29;

    v31 = [v22 copy];
    exit = v24->_exit;
    v24->_exit = v31;

    v24->_dataPointCount = a8;
    v24->_confidence = a9;
    objc_storeStrong(&v24->_placeInference, a10);
    v24->_source = a11;
    objc_storeStrong(&v24->_identifier, a12);
  }

  self = v24;
  v33 = self;
LABEL_23:

  return v33;
}

- (id)description
{
  v18 = MEMORY[0x1E696AEC0];
  v19 = [(RTVisit *)self date];
  v17 = [v19 stringFromDate];
  v3 = [RTVisit stringFromVisitIncidentType:[(RTVisit *)self type]];
  v4 = [(RTVisit *)self location];
  v5 = [(RTVisit *)self entry];
  v6 = [v5 stringFromDate];
  v7 = [(RTVisit *)self exit];
  v8 = [v7 stringFromDate];
  v9 = [(RTVisit *)self dataPointCount];
  [(RTVisit *)self confidence];
  v11 = v10;
  v12 = [(RTVisit *)self placeInference];
  v13 = [(RTVisit *)self source];
  v14 = [(RTVisit *)self identifier];
  v15 = [v18 stringWithFormat:@"date, %@, type, %@, location, %@, entry, %@, exit, %@, dataPointCount, %lu, confidence, %.2f, placeInference, %@, source, %lu, identifier, %@", v17, v3, v4, v6, v8, v9, v11, v12, v13, v14];

  return v15;
}

+ (id)stringFromVisitIncidentType:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return @"RTVisitTypeUnknown";
  }

  else
  {
    return off_1E80B3D70[a3 - 1];
  }
}

+ (int64_t)visitIncidentTypeFromString:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3)
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

  if (([v3 isEqualToString:@"RTVisitTypeUnknown"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"RTVisitTypeEntry"])
    {
      v5 = 1;
      goto LABEL_13;
    }

    if ([v3 isEqualToString:@"RTVisitTypeEntryResume"])
    {
      v5 = 2;
      goto LABEL_13;
    }

    if ([v3 isEqualToString:@"RTVisitTypeExit"])
    {
      v5 = 3;
      goto LABEL_13;
    }

    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412802;
      v10 = v3;
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

- (void)encodeWithCoder:(id)a3
{
  date = self->_date;
  v9 = a3;
  [v9 encodeObject:date forKey:@"date"];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_type];
  [v9 encodeObject:v5 forKey:@"type"];

  [v9 encodeObject:self->_location forKey:@"location"];
  [v9 encodeObject:self->_entry forKey:@"entry"];
  [v9 encodeObject:self->_exit forKey:@"exit"];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_dataPointCount];
  [v9 encodeObject:v6 forKey:@"dataPointCount"];

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_confidence];
  [v9 encodeObject:v7 forKey:@"confidence"];

  [v9 encodeObject:self->_placeInference forKey:@"placeInference"];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_source];
  [v9 encodeObject:v8 forKey:@"source"];

  [v9 encodeObject:self->_identifier forKey:@"identifier"];
}

- (RTVisit)initWithCoder:(id)a3
{
  v4 = a3;
  v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  v6 = [v5 integerValue];
  self->_type = v6;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"entry"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"exit"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dataPointCount"];
  v11 = [v10 integerValue];

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"confidence"];
  v13 = [v12 integerValue];

  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"placeInference"];
  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"source"];
  v16 = [v15 unsignedIntValue];

  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];

  v18 = [(RTVisit *)self initWithDate:v20 type:v6 location:v7 entry:v8 exit:v9 dataPointCount:v11 confidence:v13 placeInference:v14 source:v16 identifier:v17];
  return v18;
}

- (BOOL)isEqualToVisit:(id)a3
{
  v8 = a3;
  v9 = v8;
  identifier = self->_identifier;
  if (identifier)
  {
    v3 = [v8 identifier];
    v11 = [(NSUUID *)identifier isEqual:v3];

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
    v15 = [v9 date];
    v40 = [(NSDate *)v14 isEqualToDate:v15];

    if (date)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v3 = [v9 date];
  if (v3)
  {
    v14 = self->_date;
    goto LABEL_7;
  }

  v40 = 1;
LABEL_10:

LABEL_11:
  type = self->_type;
  v38 = [v9 type];
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
    v4 = [v9 location];
    v37 = [(RTLocation *)v17 isEqualToLocation:v4];

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

  v4 = [v9 entry];
  if (v4)
  {
    v19 = self->_entry;
LABEL_21:
    v5 = [v9 entry];
    v20 = [(NSDate *)v19 isEqualToDate:v5];

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

  v5 = [v9 exit];
  if (v5)
  {
    v22 = self->_exit;
LABEL_28:
    v23 = [v9 exit];
    v24 = [(NSDate *)v22 isEqualToDate:v23];

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
  v26 = [v9 dataPointCount];
  confidence = self->_confidence;
  [v9 confidence];
  v29 = v28;
  placeInference = self->_placeInference;
  v31 = placeInference;
  if (!placeInference)
  {
    v6 = [v9 placeInference];
    if (!v6)
    {
      v33 = 1;
LABEL_38:

      goto LABEL_39;
    }

    v31 = self->_placeInference;
  }

  v32 = [v9 placeInference];
  v33 = [(RTPlaceInference *)v31 isEqual:v32];

  if (!placeInference)
  {
    goto LABEL_38;
  }

LABEL_39:
  source = self->_source;
  v35 = [v9 source];
  v12 = 0;
  if (v40 && type == v38 && ((v37 ^ 1) & 1) == 0 && ((v20 ^ 1) & 1) == 0 && ((v24 ^ 1) & 1) == 0 && dataPointCount == v26 && confidence == v29)
  {
    if (source == v35)
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTVisit *)self isEqualToVisit:v5];
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

+ (BOOL)validVisitSources:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v11 + 1) + 8 * i) unsignedIntValue] > 3)
        {
          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
@interface MOPlace
- (BOOL)_isString:(id)string equalToString:(id)toString;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSimilarToPlace:(id)place locationThreshold:(double)threshold;
- (MOPlace)initWithCoder:(id)coder;
- (MOPlace)initWithIdentifier:(id)identifier;
- (MOPlace)initWithIdentifier:(id)identifier placeName:(id)name enclosingArea:(id)area placeType:(unint64_t)type placeUserType:(unint64_t)userType location:(id)location locationMode:(unint64_t)mode poiCategory:(id)self0 categoryMuid:(id)self1 distanceToHomeInMiles:(double)self2 placeNameConfidence:(double)self3 familiarityIndexLOI:(double)self4 priorityScore:(double)self5 startDate:(id)self6 endDate:(id)self7;
- (MOPlace)initWithPlaceName:(id)name enclosingArea:(id)area placeType:(unint64_t)type placeUserType:(unint64_t)userType location:(id)location locationMode:(unint64_t)mode poiCategory:(id)category categoryMuid:(id)self0 distanceToHomeInMiles:(double)self1 placeNameConfidence:(double)self2 familiarityIndexLOI:(double)self3 startDate:(id)self4 endDate:(id)self5;
- (MOPlace)initWithPlaceName:(id)name placeType:(unint64_t)type placeUserType:(unint64_t)userType location:(id)location locationMode:(unint64_t)mode poiCategory:(id)category categoryMuid:(id)muid distanceToHomeInMiles:(double)self0 placeNameConfidence:(double)self1 familiarityIndexLOI:(double)self2;
- (id)description;
- (id)placeKey;
- (id)promptDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOPlace

- (MOPlace)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    v6 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MOPlace initWithIdentifier:v6];
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MOPlace.m" lineNumber:23 description:{@"Invalid parameter not satisfying: identifier (in %s:%d)", "-[MOPlace initWithIdentifier:]", 23}];
  }

  v8 = [(MOPlace *)self initWithIdentifier:identifierCopy placeName:&stru_2840EECB0 enclosingArea:&stru_2840EECB0 placeType:0 placeUserType:0 location:0 locationMode:-1.0 poiCategory:-1.0 categoryMuid:0.0 distanceToHomeInMiles:-1.0 placeNameConfidence:0 familiarityIndexLOI:&stru_2840EECB0 priorityScore:0 startDate:0 endDate:0];

  return v8;
}

- (MOPlace)initWithPlaceName:(id)name enclosingArea:(id)area placeType:(unint64_t)type placeUserType:(unint64_t)userType location:(id)location locationMode:(unint64_t)mode poiCategory:(id)category categoryMuid:(id)self0 distanceToHomeInMiles:(double)self1 placeNameConfidence:(double)self2 familiarityIndexLOI:(double)self3 startDate:(id)self4 endDate:(id)self5
{
  v21 = MEMORY[0x277CCAD78];
  endDateCopy = endDate;
  dateCopy = date;
  muidCopy = muid;
  categoryCopy = category;
  locationCopy = location;
  areaCopy = area;
  nameCopy = name;
  uUID = [v21 UUID];
  v30 = [(MOPlace *)self initWithIdentifier:uUID placeName:nameCopy enclosingArea:areaCopy placeType:type placeUserType:userType location:locationCopy locationMode:miles poiCategory:confidence categoryMuid:i distanceToHomeInMiles:-1.0 placeNameConfidence:mode familiarityIndexLOI:categoryCopy priorityScore:muidCopy startDate:dateCopy endDate:endDateCopy];

  return v30;
}

- (MOPlace)initWithPlaceName:(id)name placeType:(unint64_t)type placeUserType:(unint64_t)userType location:(id)location locationMode:(unint64_t)mode poiCategory:(id)category categoryMuid:(id)muid distanceToHomeInMiles:(double)self0 placeNameConfidence:(double)self1 familiarityIndexLOI:(double)self2
{
  v22 = MEMORY[0x277CCAD78];
  muidCopy = muid;
  categoryCopy = category;
  locationCopy = location;
  nameCopy = name;
  uUID = [v22 UUID];
  v28 = [(MOPlace *)self initWithIdentifier:uUID placeName:nameCopy enclosingArea:&stru_2840EECB0 placeType:type placeUserType:userType location:locationCopy locationMode:miles poiCategory:confidence categoryMuid:i distanceToHomeInMiles:-1.0 placeNameConfidence:mode familiarityIndexLOI:categoryCopy priorityScore:muidCopy startDate:0 endDate:0];

  return v28;
}

- (MOPlace)initWithIdentifier:(id)identifier placeName:(id)name enclosingArea:(id)area placeType:(unint64_t)type placeUserType:(unint64_t)userType location:(id)location locationMode:(unint64_t)mode poiCategory:(id)self0 categoryMuid:(id)self1 distanceToHomeInMiles:(double)self2 placeNameConfidence:(double)self3 familiarityIndexLOI:(double)self4 priorityScore:(double)self5 startDate:(id)self6 endDate:(id)self7
{
  identifierCopy = identifier;
  obj = name;
  nameCopy = name;
  areaCopy = area;
  areaCopy2 = area;
  locationCopy = location;
  categoryCopy = category;
  muidCopy = muid;
  dateCopy = date;
  endDateCopy = endDate;
  v41.receiver = self;
  v41.super_class = MOPlace;
  v32 = [(MOPlace *)&v41 init];
  v33 = v32;
  if (v32)
  {
    objc_storeStrong(&v32->_identifier, identifier);
    v33->_placeUserType = userType;
    v33->_placeType = type;
    objc_storeStrong(&v33->_placeName, obj);
    objc_storeStrong(&v33->_enclosingArea, areaCopy);
    objc_storeStrong(&v33->_location, location);
    v33->_locationMode = mode;
    objc_storeStrong(&v33->_poiCategory, category);
    objc_storeStrong(&v33->_categoryMuid, muid);
    v33->_proposition = 0;
    v33->_familiarityIndexLOI = i;
    v33->_distanceToHomeInMiles = miles;
    v33->_placeNameConfidence = confidence;
    v33->_priorityScore = score;
    objc_storeStrong(&v33->_startDate, date);
    objc_storeStrong(&v33->_endDate, endDate);
    v33->_sourceEventAccessType = 5;
  }

  return v33;
}

- (id)promptDescription
{
  placeName = [(MOPlace *)self placeName];

  if (placeName)
  {
    proposition = [(MOPlace *)self proposition];
    v5 = @"at";
    if (proposition == 2)
    {
      v5 = @"on";
    }

    if (proposition == 3)
    {
      v6 = @"in";
    }

    else
    {
      v6 = v5;
    }

    v7 = MEMORY[0x277CCACA8];
    placeName2 = [(MOPlace *)self placeName];
    v9 = [v7 stringWithFormat:@"%@ %@", v6, placeName2];
  }

  else
  {
    v9 = &stru_2840EECB0;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(MOPlace *)self identifier];
  placeName = [(MOPlace *)self placeName];
  mask = [placeName mask];
  [(MOPlace *)self placeNameConfidence];
  v8 = v7;
  placeType = [(MOPlace *)self placeType];
  placeUserType = [(MOPlace *)self placeUserType];
  categoryMuid = [(MOPlace *)self categoryMuid];
  locationMode = [(MOPlace *)self locationMode];
  [(MOPlace *)self distanceToHomeInMiles];
  v14 = v13;
  poiCategory = [(MOPlace *)self poiCategory];
  [(MOPlace *)self familiarityIndexLOI];
  v17 = [v3 stringWithFormat:@"<MOPlace identifier, %@, name, %@, confidence, %f, placeType, %lu, placeUserType, %lu, categoryMuid, %@, locationMode, %lu, distanceToHomeInMiles, %f, poiCategory, %@, familiarityIndexLOI, %f>", identifier, mask, v8, placeType, placeUserType, categoryMuid, locationMode, v14, poiCategory, v16];

  return v17;
}

- (MOPlace)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"placeName"];
  v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"enclosingArea"];
  v29 = [coderCopy decodeInt64ForKey:@"placeType"];
  v28 = [coderCopy decodeInt64ForKey:@"placeUserType"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
  v27 = [coderCopy decodeInt64ForKey:@"proposition"];
  [coderCopy decodeFloatForKey:@"placeNameConfidence"];
  v8 = v7;
  v9 = [coderCopy decodeInt64ForKey:@"locationMode"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"poiCategory"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"categoryMuid"];
  [coderCopy decodeFloatForKey:@"distanceToHomeInMiles"];
  v13 = v12;
  [coderCopy decodeFloatForKey:@"familiarityIndexLOI"];
  v15 = v14;
  [coderCopy decodeFloatForKey:@"priorityScore"];
  v17 = v16;
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
  v26 = v10;
  v20 = v10;
  v21 = v6;
  v22 = [(MOPlace *)self initWithIdentifier:v4 placeName:v5 enclosingArea:v30 placeType:v29 placeUserType:v28 location:v6 locationMode:v13 poiCategory:v8 categoryMuid:v15 distanceToHomeInMiles:v17 placeNameConfidence:v9 familiarityIndexLOI:v26 priorityScore:v11 startDate:v18 endDate:v19];
  v23 = v22;
  if (v22)
  {
    [(MOPlace *)v22 setProposition:v27];
    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceEventIdentifier"];
    [(MOPlace *)v23 setSourceEventIdentifier:v24];

    -[MOPlace setSourceEventAccessType:](v23, "setSourceEventAccessType:", [coderCopy decodeInt64ForKey:@"sourceEventAccessType"]);
  }

  return v23;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_placeName forKey:@"placeName"];
  [coderCopy encodeInt64:self->_placeType forKey:@"placeType"];
  [coderCopy encodeInt64:self->_placeUserType forKey:@"placeUserType"];
  [coderCopy encodeObject:self->_location forKey:@"location"];
  [coderCopy encodeInt64:self->_proposition forKey:@"proposition"];
  [coderCopy encodeInt64:self->_locationMode forKey:@"locationMode"];
  [coderCopy encodeObject:self->_poiCategory forKey:@"poiCategory"];
  [coderCopy encodeObject:self->_categoryMuid forKey:@"categoryMuid"];
  priorityScore = self->_priorityScore;
  *&priorityScore = priorityScore;
  [coderCopy encodeFloat:@"priorityScore" forKey:priorityScore];
  distanceToHomeInMiles = self->_distanceToHomeInMiles;
  *&distanceToHomeInMiles = distanceToHomeInMiles;
  [coderCopy encodeFloat:@"distanceToHomeInMiles" forKey:distanceToHomeInMiles];
  placeNameConfidence = self->_placeNameConfidence;
  *&placeNameConfidence = placeNameConfidence;
  [coderCopy encodeFloat:@"placeNameConfidence" forKey:placeNameConfidence];
  familiarityIndexLOI = self->_familiarityIndexLOI;
  *&familiarityIndexLOI = familiarityIndexLOI;
  [coderCopy encodeFloat:@"familiarityIndexLOI" forKey:familiarityIndexLOI];
  [coderCopy encodeObject:self->_enclosingArea forKey:@"enclosingArea"];
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
  [coderCopy encodeInt64:self->_sourceEventAccessType forKey:@"sourceEventAccessType"];
  [coderCopy encodeObject:self->_sourceEventIdentifier forKey:@"sourceEventIdentifier"];
}

- (unint64_t)hash
{
  identifier = [(MOPlace *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self == equalCopy)
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
        identifier = [(MOPlace *)self identifier];
        if (identifier || ([(MOPlace *)v7 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          identifier2 = [(MOPlace *)self identifier];
          identifier3 = [(MOPlace *)v7 identifier];
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

- (BOOL)isSimilarToPlace:(id)place locationThreshold:(double)threshold
{
  placeCopy = place;
  if (placeCopy)
  {
    placeName = [(MOPlace *)self placeName];
    placeName2 = [placeCopy placeName];
    if (![(MOPlace *)self _isString:placeName equalToString:placeName2])
    {
      v28 = 0;
LABEL_9:

      goto LABEL_11;
    }

    enclosingArea = [(MOPlace *)self enclosingArea];
    enclosingArea2 = [placeCopy enclosingArea];
    v11 = [(MOPlace *)self _isString:enclosingArea equalToString:enclosingArea2];

    if (v11)
    {
      location = [(MOPlace *)self location];
      if (!location || (v13 = location, [placeCopy location], v14 = objc_claimAutoreleasedReturnValue(), v14, v13, !v14))
      {
        v28 = 1;
        goto LABEL_11;
      }

      v15 = objc_alloc(MEMORY[0x277CE41F8]);
      location2 = [(MOPlace *)self location];
      [location2 latitude];
      v18 = v17;
      location3 = [(MOPlace *)self location];
      [location3 longitude];
      placeName = [v15 initWithLatitude:v18 longitude:v20];

      v21 = objc_alloc(MEMORY[0x277CE41F8]);
      location4 = [placeCopy location];
      [location4 latitude];
      v24 = v23;
      location5 = [placeCopy location];
      [location5 longitude];
      placeName2 = [v21 initWithLatitude:v24 longitude:v26];

      [placeName distanceFromLocation:placeName2];
      v28 = v27 <= threshold;
      goto LABEL_9;
    }
  }

  v28 = 0;
LABEL_11:

  return v28;
}

- (id)placeKey
{
  placeName = [(MOPlace *)self placeName];
  v4 = placeName;
  if (placeName)
  {
    v5 = placeName;
  }

  else
  {
    v5 = &stru_2840EECB0;
  }

  v6 = v5;

  enclosingArea = [(MOPlace *)self enclosingArea];
  v8 = enclosingArea;
  if (enclosingArea)
  {
    v9 = enclosingArea;
  }

  else
  {
    v9 = &stru_2840EECB0;
  }

  v10 = v9;

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@|%@", v6, v10];

  return v11;
}

- (BOOL)_isString:(id)string equalToString:(id)toString
{
  stringCopy = string;
  toStringCopy = toString;
  v7 = toStringCopy;
  if (stringCopy | toStringCopy)
  {
    v8 = 0;
    if (stringCopy && toStringCopy)
    {
      v8 = [stringCopy isEqualToString:toStringCopy];
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)initWithIdentifier:(os_log_t)log .cold.1(os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[MOPlace initWithIdentifier:]";
  v4 = 1024;
  v5 = 23;
  _os_log_error_impl(&dword_22D8C5000, log, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier (in %s:%d)", &v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

@end
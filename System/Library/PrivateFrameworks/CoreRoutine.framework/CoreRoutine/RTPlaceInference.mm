@interface RTPlaceInference
+ (id)placeTypeToString:(unint64_t)string;
+ (id)userSpecificPlaceTypeSourceToString:(unint64_t)string;
+ (id)userSpecificPlaceTypeToString:(unint64_t)string;
+ (unint64_t)placeInferencePlaceTypeFromMapItem:(id)item userType:(unint64_t)type source:(unint64_t)source;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPlaceInference:(id)inference;
- (RTPlaceInference)initWithCoder:(id)coder;
- (RTPlaceInference)initWithMapItem:(id)item finerGranularityMapItem:(id)mapItem userType:(unint64_t)type userTypeSource:(unint64_t)source placeType:(unint64_t)placeType referenceLocation:(id)location confidence:(double)confidence finerGranularityMapItemConfidence:(double)self0 loiIdentifier:(id)self1;
- (RTPlaceInference)initWithMapItem:(id)item finerGranularityMapItem:(id)mapItem userType:(unint64_t)type userTypeSource:(unint64_t)source placeType:(unint64_t)placeType referenceLocation:(id)location confidence:(double)confidence finerGranularityMapItemConfidence:(double)self0 loiIdentifier:(id)self1 preferredName:(id)self2;
- (RTPlaceInference)initWithMapItem:(id)item userType:(unint64_t)type userTypeSource:(unint64_t)source placeType:(unint64_t)placeType referenceLocation:(id)location confidence:(double)confidence loiIdentifier:(id)identifier;
- (id)description;
- (id)nameFromUserType:(unint64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTPlaceInference

- (RTPlaceInference)initWithMapItem:(id)item userType:(unint64_t)type userTypeSource:(unint64_t)source placeType:(unint64_t)placeType referenceLocation:(id)location confidence:(double)confidence loiIdentifier:(id)identifier
{
  itemCopy = item;
  locationCopy = location;
  identifierCopy = identifier;
  v19 = [(RTPlaceInference *)self nameFromUserType:type];
  if (![v19 length])
  {
    name = [itemCopy name];

    v19 = name;
  }

  v21 = [(RTPlaceInference *)self initWithMapItem:itemCopy userType:type userTypeSource:source placeType:placeType referenceLocation:locationCopy confidence:identifierCopy loiIdentifier:confidence preferredName:v19];

  return v21;
}

- (RTPlaceInference)initWithMapItem:(id)item finerGranularityMapItem:(id)mapItem userType:(unint64_t)type userTypeSource:(unint64_t)source placeType:(unint64_t)placeType referenceLocation:(id)location confidence:(double)confidence finerGranularityMapItemConfidence:(double)self0 loiIdentifier:(id)self1
{
  itemCopy = item;
  mapItemCopy = mapItem;
  locationCopy = location;
  identifierCopy = identifier;
  v23 = [(RTPlaceInference *)self nameFromUserType:type];
  if (![v23 length])
  {
    name = [itemCopy name];

    v23 = name;
  }

  v25 = [(RTPlaceInference *)self initWithMapItem:itemCopy finerGranularityMapItem:mapItemCopy userType:type userTypeSource:source placeType:placeType referenceLocation:locationCopy confidence:confidence finerGranularityMapItemConfidence:itemConfidence loiIdentifier:identifierCopy preferredName:v23];

  return v25;
}

- (RTPlaceInference)initWithMapItem:(id)item finerGranularityMapItem:(id)mapItem userType:(unint64_t)type userTypeSource:(unint64_t)source placeType:(unint64_t)placeType referenceLocation:(id)location confidence:(double)confidence finerGranularityMapItemConfidence:(double)self0 loiIdentifier:(id)self1 preferredName:(id)self2
{
  itemCopy = item;
  mapItemCopy = mapItem;
  locationCopy = location;
  identifierCopy = identifier;
  nameCopy = name;
  if (type >= 8)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v26 = "Invalid parameter not satisfying: RTPlaceInferenceUserSpecificPlaceTypeValid(userType)";
LABEL_24:
    _os_log_error_impl(&dword_1BF1C4000, v25, OS_LOG_TYPE_ERROR, v26, buf, 2u);
    goto LABEL_25;
  }

  if (source >= 0x20)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v26 = "Invalid parameter not satisfying: RTPlaceInferenceUserSpecificPlaceTypeSourceValid(userTypeSource)";
    goto LABEL_24;
  }

  if (placeType >= 8)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v26 = "Invalid parameter not satisfying: RTPlaceInferencePlaceTypeValid(placeType)";
    goto LABEL_24;
  }

  if (!locationCopy)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v26 = "Invalid parameter not satisfying: referenceLocation";
    goto LABEL_24;
  }

  if (confidence < 0.0 || confidence > 1.0)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v26 = "Invalid parameter not satisfying: RTPlaceInferenceConfidenceValid(confidence)";
    goto LABEL_24;
  }

  if (itemConfidence < 0.0 || itemConfidence > 1.0)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v26 = "Invalid parameter not satisfying: RTPlaceInferenceConfidenceValid(finerGranularityMapItemConfidence)";
      goto LABEL_24;
    }

LABEL_25:

    selfCopy = 0;
    goto LABEL_26;
  }

  v32.receiver = self;
  v32.super_class = RTPlaceInference;
  v22 = [(RTPlaceInference *)&v32 init:nameCopy];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_mapItem, item);
    objc_storeStrong(&v23->_finerGranularityMapItem, mapItem);
    v23->_userType = type;
    v23->_userTypeSource = source;
    v23->_placeType = placeType;
    objc_storeStrong(&v23->_referenceLocation, location);
    v23->_confidence = confidence;
    v23->_finerGranularityMapItemConfidence = itemConfidence;
    objc_storeStrong(&v23->_loiIdentifier, identifier);
    objc_storeStrong(&v23->_preferredName, name);
  }

  self = v23;
  selfCopy = self;
LABEL_26:

  return selfCopy;
}

- (RTPlaceInference)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mapItem"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"finerGranularityMapItem"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userType"];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userTypeSource"];
  unsignedIntegerValue2 = [v9 unsignedIntegerValue];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"placeType"];
  unsignedIntegerValue3 = [v11 unsignedIntegerValue];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"referenceLocation"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"confidence"];
  [v14 doubleValue];
  v16 = v15;

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"finerGranularityMapItemConfidence"];
  [v17 doubleValue];
  v19 = v18;

  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"loiIdentifier"];
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preferredName"];

  v22 = [(RTPlaceInference *)self initWithMapItem:v5 finerGranularityMapItem:v6 userType:unsignedIntegerValue userTypeSource:unsignedIntegerValue2 placeType:unsignedIntegerValue3 referenceLocation:v13 confidence:v16 finerGranularityMapItemConfidence:v19 loiIdentifier:v20 preferredName:v21];
  return v22;
}

- (void)encodeWithCoder:(id)coder
{
  mapItem = self->_mapItem;
  coderCopy = coder;
  [coderCopy encodeObject:mapItem forKey:@"mapItem"];
  [coderCopy encodeObject:self->_finerGranularityMapItem forKey:@"finerGranularityMapItem"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_userType];
  [coderCopy encodeObject:v5 forKey:@"userType"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_userTypeSource];
  [coderCopy encodeObject:v6 forKey:@"userTypeSource"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_placeType];
  [coderCopy encodeObject:v7 forKey:@"placeType"];

  [coderCopy encodeObject:self->_referenceLocation forKey:@"referenceLocation"];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_confidence];
  [coderCopy encodeObject:v8 forKey:@"confidence"];

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_finerGranularityMapItemConfidence];
  [coderCopy encodeObject:v9 forKey:@"finerGranularityMapItemConfidence"];

  [coderCopy encodeObject:self->_loiIdentifier forKey:@"loiIdentifier"];
  [coderCopy encodeObject:self->_preferredName forKey:@"preferredName"];
}

- (id)nameFromUserType:(unint64_t)type
{
  if (type - 1 > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AAE8] _coreroutine_LocalizedStringForKey:{off_1E80B3D00[type - 1], v3}];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  referenceLocation = [(RTPlaceInference *)self referenceLocation];
  v5 = [objc_opt_class() userSpecificPlaceTypeToString:{-[RTPlaceInference userType](self, "userType")}];
  v6 = [objc_opt_class() userSpecificPlaceTypeSourceToString:{-[RTPlaceInference userTypeSource](self, "userTypeSource")}];
  v7 = [objc_opt_class() placeTypeToString:{-[RTPlaceInference placeType](self, "placeType")}];
  mapItem = [(RTPlaceInference *)self mapItem];
  finerGranularityMapItem = [(RTPlaceInference *)self finerGranularityMapItem];
  preferredName = [(RTPlaceInference *)self preferredName];
  [(RTPlaceInference *)self confidence];
  v12 = v11;
  [(RTPlaceInference *)self finerGranularityMapItemConfidence];
  v14 = v13;
  loiIdentifier = [(RTPlaceInference *)self loiIdentifier];
  v16 = [v3 stringWithFormat:@"location, %@, userType, %@, userTypeSource, %@, placeType, %@, map item, %@, finerGranularityMapItem, %@, preferredName, %@, confidence, %f, finerGranularityMapItemConfidence, %f, related LOI identifier, %@", referenceLocation, v5, v6, v7, mapItem, finerGranularityMapItem, preferredName, v12, v14, loiIdentifier];

  return v16;
}

+ (id)userSpecificPlaceTypeToString:(unint64_t)string
{
  if (string > 4)
  {
    return @"Home";
  }

  else
  {
    return off_1E80B3D20[string];
  }
}

+ (id)userSpecificPlaceTypeSourceToString:(unint64_t)string
{
  v21 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v6 = array;
  if (!string)
  {
    v7 = @"Unknown";
LABEL_14:
    [v6 addObject:v7];
    goto LABEL_15;
  }

  if (string)
  {
    [array addObject:@"Inferred"];
    if ((string & 2) == 0)
    {
LABEL_4:
      if ((string & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  else if ((string & 2) == 0)
  {
    goto LABEL_4;
  }

  [v6 addObject:@"MeCard"];
  if ((string & 4) == 0)
  {
LABEL_5:
    if ((string & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    [v6 addObject:@"Fallback"];
    if ((string & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

LABEL_11:
  [v6 addObject:@"User"];
  if ((string & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((string & 0x10) != 0)
  {
LABEL_13:
    v7 = @"Maps";
    goto LABEL_14;
  }

LABEL_15:
  if (![v6 count])
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = 138413058;
      v14 = v12;
      v15 = 2048;
      stringCopy = string;
      v17 = 2080;
      v18 = "+[RTPlaceInference userSpecificPlaceTypeSourceToString:]";
      v19 = 1024;
      v20 = 309;
      _os_log_error_impl(&dword_1BF1C4000, v8, OS_LOG_TYPE_ERROR, "%@ does not handle RTPlaceInferenceUserSpecificPlaceTypeSource, %lu (in %s:%d)", &v13, 0x26u);
    }
  }

  if ([v6 count])
  {
    v9 = [v6 componentsJoinedByString:{@", "}];
  }

  else
  {
    v9 = &stru_1F3DD00E8;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)placeTypeToString:(unint64_t)string
{
  if (string > 4)
  {
    return @"NonClassified";
  }

  else
  {
    return off_1E80B3D48[string];
  }
}

+ (unint64_t)placeInferencePlaceTypeFromMapItem:(id)item userType:(unint64_t)type source:(unint64_t)source
{
  sourceCopy = source;
  itemCopy = item;
  v8 = itemCopy;
  if (type)
  {
    v9 = 1;
  }

  else if ([itemCopy mapItemPlaceType] == 1)
  {
    v9 = 2;
  }

  else if ((sourceCopy & 1) != 0 || ([v8 validMUID] & 1) == 0)
  {
    v9 = 4;
  }

  else
  {
    v9 = 3;
  }

  return v9;
}

- (BOOL)isEqualToPlaceInference:(id)inference
{
  inferenceCopy = inference;
  v8 = inferenceCopy;
  referenceLocation = self->_referenceLocation;
  v10 = referenceLocation;
  if (referenceLocation)
  {
LABEL_4:
    referenceLocation = [v8 referenceLocation];
    v40 = [(RTLocation *)v10 isEqual:referenceLocation];

    if (referenceLocation)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  referenceLocation2 = [inferenceCopy referenceLocation];
  if (referenceLocation2)
  {
    v10 = self->_referenceLocation;
    goto LABEL_4;
  }

  v40 = 1;
LABEL_7:

LABEL_8:
  mapItem = self->_mapItem;
  v12 = mapItem;
  if (mapItem)
  {
    goto LABEL_11;
  }

  referenceLocation = [v8 mapItem];
  if (referenceLocation)
  {
    v12 = self->_mapItem;
LABEL_11:
    referenceLocation = [v8 mapItem];
    v39 = [(RTMapItem *)v12 isEqual:referenceLocation];

    if (mapItem)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v39 = 1;
LABEL_14:

LABEL_15:
  finerGranularityMapItem = self->_finerGranularityMapItem;
  v14 = finerGranularityMapItem;
  if (finerGranularityMapItem)
  {
    goto LABEL_18;
  }

  referenceLocation = [v8 finerGranularityMapItem];
  if (referenceLocation)
  {
    v14 = self->_finerGranularityMapItem;
LABEL_18:
    finerGranularityMapItem = [v8 finerGranularityMapItem];
    v38 = [(RTMapItem *)v14 isEqual:finerGranularityMapItem];

    if (finerGranularityMapItem)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v38 = 1;
LABEL_21:

LABEL_22:
  userType = self->_userType;
  if (userType)
  {
LABEL_25:
    v37 = userType != [v8 userType];
    goto LABEL_26;
  }

  if ([v8 userType])
  {
    userType = self->_userType;
    goto LABEL_25;
  }

  v37 = 0;
LABEL_26:
  userTypeSource = self->_userTypeSource;
  if (userTypeSource)
  {
LABEL_29:
    v36 = userTypeSource != [v8 userTypeSource];
    goto LABEL_30;
  }

  if ([v8 userTypeSource])
  {
    userTypeSource = self->_userTypeSource;
    goto LABEL_29;
  }

  v36 = 0;
LABEL_30:
  placeType = self->_placeType;
  if (placeType)
  {
LABEL_33:
    v18 = placeType != [v8 placeType];
    goto LABEL_34;
  }

  if ([v8 placeType])
  {
    placeType = self->_placeType;
    goto LABEL_33;
  }

  v18 = 0;
LABEL_34:
  confidence = self->_confidence;
  if (confidence != 0.0)
  {
LABEL_37:
    [v8 confidence];
    v22 = confidence != v21;
    goto LABEL_38;
  }

  [v8 confidence];
  if (v20 != 0.0)
  {
    confidence = self->_confidence;
    goto LABEL_37;
  }

  v22 = 0;
LABEL_38:
  finerGranularityMapItemConfidence = self->_finerGranularityMapItemConfidence;
  if (finerGranularityMapItemConfidence != 0.0)
  {
LABEL_41:
    [v8 finerGranularityMapItemConfidence];
    v26 = finerGranularityMapItemConfidence != v25;
    goto LABEL_42;
  }

  [v8 finerGranularityMapItemConfidence];
  if (v24 != 0.0)
  {
    finerGranularityMapItemConfidence = self->_finerGranularityMapItemConfidence;
    goto LABEL_41;
  }

  v26 = 0;
LABEL_42:
  preferredName = self->_preferredName;
  v28 = preferredName;
  if (preferredName)
  {
    goto LABEL_45;
  }

  finerGranularityMapItem = [v8 preferredName];
  if (finerGranularityMapItem)
  {
    v28 = self->_preferredName;
LABEL_45:
    preferredName = [v8 preferredName];
    v30 = [(NSString *)v28 isEqualToString:preferredName];

    if (preferredName)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  v30 = 1;
LABEL_53:

LABEL_54:
  loiIdentifier = self->_loiIdentifier;
  v32 = loiIdentifier;
  if (!loiIdentifier)
  {
    finerGranularityMapItem = [v8 loiIdentifier];
    if (!finerGranularityMapItem)
    {
      v34 = 1;
LABEL_60:

      goto LABEL_61;
    }

    v32 = self->_loiIdentifier;
  }

  loiIdentifier = [v8 loiIdentifier];
  v34 = [(NSUUID *)v32 isEqual:loiIdentifier];

  if (!loiIdentifier)
  {
    goto LABEL_60;
  }

LABEL_61:

  return v30 & ~(v40 & v39 & v38 ^ 1 | (v37 || v36 || v18 || v22 || v26)) & v34 & 1;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTPlaceInference *)self isEqualToPlaceInference:v5];
  }

  return v6;
}

@end
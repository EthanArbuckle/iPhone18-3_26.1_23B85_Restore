@interface RTPlaceInference
+ (id)placeTypeToString:(unint64_t)a3;
+ (id)userSpecificPlaceTypeSourceToString:(unint64_t)a3;
+ (id)userSpecificPlaceTypeToString:(unint64_t)a3;
+ (unint64_t)placeInferencePlaceTypeFromMapItem:(id)a3 userType:(unint64_t)a4 source:(unint64_t)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPlaceInference:(id)a3;
- (RTPlaceInference)initWithCoder:(id)a3;
- (RTPlaceInference)initWithMapItem:(id)a3 finerGranularityMapItem:(id)a4 userType:(unint64_t)a5 userTypeSource:(unint64_t)a6 placeType:(unint64_t)a7 referenceLocation:(id)a8 confidence:(double)a9 finerGranularityMapItemConfidence:(double)a10 loiIdentifier:(id)a11;
- (RTPlaceInference)initWithMapItem:(id)a3 finerGranularityMapItem:(id)a4 userType:(unint64_t)a5 userTypeSource:(unint64_t)a6 placeType:(unint64_t)a7 referenceLocation:(id)a8 confidence:(double)a9 finerGranularityMapItemConfidence:(double)a10 loiIdentifier:(id)a11 preferredName:(id)a12;
- (RTPlaceInference)initWithMapItem:(id)a3 userType:(unint64_t)a4 userTypeSource:(unint64_t)a5 placeType:(unint64_t)a6 referenceLocation:(id)a7 confidence:(double)a8 loiIdentifier:(id)a9;
- (id)description;
- (id)nameFromUserType:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTPlaceInference

- (RTPlaceInference)initWithMapItem:(id)a3 userType:(unint64_t)a4 userTypeSource:(unint64_t)a5 placeType:(unint64_t)a6 referenceLocation:(id)a7 confidence:(double)a8 loiIdentifier:(id)a9
{
  v16 = a3;
  v17 = a7;
  v18 = a9;
  v19 = [(RTPlaceInference *)self nameFromUserType:a4];
  if (![v19 length])
  {
    v20 = [v16 name];

    v19 = v20;
  }

  v21 = [(RTPlaceInference *)self initWithMapItem:v16 userType:a4 userTypeSource:a5 placeType:a6 referenceLocation:v17 confidence:v18 loiIdentifier:a8 preferredName:v19];

  return v21;
}

- (RTPlaceInference)initWithMapItem:(id)a3 finerGranularityMapItem:(id)a4 userType:(unint64_t)a5 userTypeSource:(unint64_t)a6 placeType:(unint64_t)a7 referenceLocation:(id)a8 confidence:(double)a9 finerGranularityMapItemConfidence:(double)a10 loiIdentifier:(id)a11
{
  v19 = a3;
  v20 = a4;
  v21 = a8;
  v22 = a11;
  v23 = [(RTPlaceInference *)self nameFromUserType:a5];
  if (![v23 length])
  {
    v24 = [v19 name];

    v23 = v24;
  }

  v25 = [(RTPlaceInference *)self initWithMapItem:v19 finerGranularityMapItem:v20 userType:a5 userTypeSource:a6 placeType:a7 referenceLocation:v21 confidence:a9 finerGranularityMapItemConfidence:a10 loiIdentifier:v22 preferredName:v23];

  return v25;
}

- (RTPlaceInference)initWithMapItem:(id)a3 finerGranularityMapItem:(id)a4 userType:(unint64_t)a5 userTypeSource:(unint64_t)a6 placeType:(unint64_t)a7 referenceLocation:(id)a8 confidence:(double)a9 finerGranularityMapItemConfidence:(double)a10 loiIdentifier:(id)a11 preferredName:(id)a12
{
  v31 = a3;
  v30 = a4;
  v21 = a8;
  v29 = a11;
  v28 = a12;
  if (a5 >= 8)
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

  if (a6 >= 0x20)
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

  if (a7 >= 8)
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

  if (!v21)
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

  if (a9 < 0.0 || a9 > 1.0)
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

  if (a10 < 0.0 || a10 > 1.0)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v26 = "Invalid parameter not satisfying: RTPlaceInferenceConfidenceValid(finerGranularityMapItemConfidence)";
      goto LABEL_24;
    }

LABEL_25:

    v24 = 0;
    goto LABEL_26;
  }

  v32.receiver = self;
  v32.super_class = RTPlaceInference;
  v22 = [(RTPlaceInference *)&v32 init:v28];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_mapItem, a3);
    objc_storeStrong(&v23->_finerGranularityMapItem, a4);
    v23->_userType = a5;
    v23->_userTypeSource = a6;
    v23->_placeType = a7;
    objc_storeStrong(&v23->_referenceLocation, a8);
    v23->_confidence = a9;
    v23->_finerGranularityMapItemConfidence = a10;
    objc_storeStrong(&v23->_loiIdentifier, a11);
    objc_storeStrong(&v23->_preferredName, a12);
  }

  self = v23;
  v24 = self;
LABEL_26:

  return v24;
}

- (RTPlaceInference)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mapItem"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"finerGranularityMapItem"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userType"];
  v8 = [v7 unsignedIntegerValue];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userTypeSource"];
  v10 = [v9 unsignedIntegerValue];

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"placeType"];
  v12 = [v11 unsignedIntegerValue];

  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"referenceLocation"];
  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"confidence"];
  [v14 doubleValue];
  v16 = v15;

  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"finerGranularityMapItemConfidence"];
  [v17 doubleValue];
  v19 = v18;

  v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"loiIdentifier"];
  v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preferredName"];

  v22 = [(RTPlaceInference *)self initWithMapItem:v5 finerGranularityMapItem:v6 userType:v8 userTypeSource:v10 placeType:v12 referenceLocation:v13 confidence:v16 finerGranularityMapItemConfidence:v19 loiIdentifier:v20 preferredName:v21];
  return v22;
}

- (void)encodeWithCoder:(id)a3
{
  mapItem = self->_mapItem;
  v10 = a3;
  [v10 encodeObject:mapItem forKey:@"mapItem"];
  [v10 encodeObject:self->_finerGranularityMapItem forKey:@"finerGranularityMapItem"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_userType];
  [v10 encodeObject:v5 forKey:@"userType"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_userTypeSource];
  [v10 encodeObject:v6 forKey:@"userTypeSource"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_placeType];
  [v10 encodeObject:v7 forKey:@"placeType"];

  [v10 encodeObject:self->_referenceLocation forKey:@"referenceLocation"];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_confidence];
  [v10 encodeObject:v8 forKey:@"confidence"];

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_finerGranularityMapItemConfidence];
  [v10 encodeObject:v9 forKey:@"finerGranularityMapItemConfidence"];

  [v10 encodeObject:self->_loiIdentifier forKey:@"loiIdentifier"];
  [v10 encodeObject:self->_preferredName forKey:@"preferredName"];
}

- (id)nameFromUserType:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AAE8] _coreroutine_LocalizedStringForKey:{off_1E80B3D00[a3 - 1], v3}];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(RTPlaceInference *)self referenceLocation];
  v5 = [objc_opt_class() userSpecificPlaceTypeToString:{-[RTPlaceInference userType](self, "userType")}];
  v6 = [objc_opt_class() userSpecificPlaceTypeSourceToString:{-[RTPlaceInference userTypeSource](self, "userTypeSource")}];
  v7 = [objc_opt_class() placeTypeToString:{-[RTPlaceInference placeType](self, "placeType")}];
  v8 = [(RTPlaceInference *)self mapItem];
  v9 = [(RTPlaceInference *)self finerGranularityMapItem];
  v10 = [(RTPlaceInference *)self preferredName];
  [(RTPlaceInference *)self confidence];
  v12 = v11;
  [(RTPlaceInference *)self finerGranularityMapItemConfidence];
  v14 = v13;
  v15 = [(RTPlaceInference *)self loiIdentifier];
  v16 = [v3 stringWithFormat:@"location, %@, userType, %@, userTypeSource, %@, placeType, %@, map item, %@, finerGranularityMapItem, %@, preferredName, %@, confidence, %f, finerGranularityMapItemConfidence, %f, related LOI identifier, %@", v4, v5, v6, v7, v8, v9, v10, v12, v14, v15];

  return v16;
}

+ (id)userSpecificPlaceTypeToString:(unint64_t)a3
{
  if (a3 > 4)
  {
    return @"Home";
  }

  else
  {
    return off_1E80B3D20[a3];
  }
}

+ (id)userSpecificPlaceTypeSourceToString:(unint64_t)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = v5;
  if (!a3)
  {
    v7 = @"Unknown";
LABEL_14:
    [v6 addObject:v7];
    goto LABEL_15;
  }

  if (a3)
  {
    [v5 addObject:@"Inferred"];
    if ((a3 & 2) == 0)
    {
LABEL_4:
      if ((a3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  else if ((a3 & 2) == 0)
  {
    goto LABEL_4;
  }

  [v6 addObject:@"MeCard"];
  if ((a3 & 4) == 0)
  {
LABEL_5:
    if ((a3 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    [v6 addObject:@"Fallback"];
    if ((a3 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

LABEL_11:
  [v6 addObject:@"User"];
  if ((a3 & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((a3 & 0x10) != 0)
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
      v16 = a3;
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

+ (id)placeTypeToString:(unint64_t)a3
{
  if (a3 > 4)
  {
    return @"NonClassified";
  }

  else
  {
    return off_1E80B3D48[a3];
  }
}

+ (unint64_t)placeInferencePlaceTypeFromMapItem:(id)a3 userType:(unint64_t)a4 source:(unint64_t)a5
{
  v5 = a5;
  v7 = a3;
  v8 = v7;
  if (a4)
  {
    v9 = 1;
  }

  else if ([v7 mapItemPlaceType] == 1)
  {
    v9 = 2;
  }

  else if ((v5 & 1) != 0 || ([v8 validMUID] & 1) == 0)
  {
    v9 = 4;
  }

  else
  {
    v9 = 3;
  }

  return v9;
}

- (BOOL)isEqualToPlaceInference:(id)a3
{
  v7 = a3;
  v8 = v7;
  referenceLocation = self->_referenceLocation;
  v10 = referenceLocation;
  if (referenceLocation)
  {
LABEL_4:
    v4 = [v8 referenceLocation];
    v40 = [(RTLocation *)v10 isEqual:v4];

    if (referenceLocation)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = [v7 referenceLocation];
  if (v3)
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

  v4 = [v8 mapItem];
  if (v4)
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
    v5 = [v8 finerGranularityMapItem];
    v38 = [(RTMapItem *)v14 isEqual:v5];

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

  v5 = [v8 preferredName];
  if (v5)
  {
    v28 = self->_preferredName;
LABEL_45:
    v29 = [v8 preferredName];
    v30 = [(NSString *)v28 isEqualToString:v29];

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
    v5 = [v8 loiIdentifier];
    if (!v5)
    {
      v34 = 1;
LABEL_60:

      goto LABEL_61;
    }

    v32 = self->_loiIdentifier;
  }

  v33 = [v8 loiIdentifier];
  v34 = [(NSUUID *)v32 isEqual:v33];

  if (!loiIdentifier)
  {
    goto LABEL_60;
  }

LABEL_61:

  return v30 & ~(v40 & v39 & v38 ^ 1 | (v37 || v36 || v18 || v22 || v26)) & v34 & 1;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTPlaceInference *)self isEqualToPlaceInference:v5];
  }

  return v6;
}

@end
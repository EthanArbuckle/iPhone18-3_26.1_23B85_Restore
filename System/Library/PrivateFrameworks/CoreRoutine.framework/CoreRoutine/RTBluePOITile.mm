@interface RTBluePOITile
- (BOOL)isEqual:(id)equal;
- (RTBluePOITile)initWithCoder:(id)coder;
- (RTBluePOITile)initWithIdentifier:(id)identifier apToModelMapping:(id)mapping date:(id)date downloadKey:(id)key geoCacheInfo:(id)info geoTileKey:(unint64_t)tileKey hashedApToModelMapping:(id)modelMapping hashSalt:(id)self0 modelCalibrationParameters:(id)self1 models:(id)self2 modelURLs:(id)self3 pointsOfInterest:(id)self4 singlePOIMuid:(unint64_t)self5 size:(double)self6;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTBluePOITile

- (RTBluePOITile)initWithIdentifier:(id)identifier apToModelMapping:(id)mapping date:(id)date downloadKey:(id)key geoCacheInfo:(id)info geoTileKey:(unint64_t)tileKey hashedApToModelMapping:(id)modelMapping hashSalt:(id)self0 modelCalibrationParameters:(id)self1 models:(id)self2 modelURLs:(id)self3 pointsOfInterest:(id)self4 singlePOIMuid:(unint64_t)self5 size:(double)self6
{
  identifierCopy = identifier;
  mappingCopy = mapping;
  dateCopy = date;
  dateCopy2 = date;
  keyCopy = key;
  keyCopy2 = key;
  infoCopy = info;
  modelMappingCopy = modelMapping;
  saltCopy = salt;
  v22 = identifierCopy;
  parametersCopy = parameters;
  modelsCopy = models;
  lsCopy = ls;
  interestCopy = interest;
  if (!identifierCopy)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v27, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier", buf, 2u);
    }

    v26 = 0;
    goto LABEL_12;
  }

  if (!dateCopy2)
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v28, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: date", buf, 2u);
    }

    v26 = 0;
    dateCopy2 = 0;
LABEL_12:
    selfCopy = self;
    goto LABEL_13;
  }

  v45.receiver = self;
  v45.super_class = RTBluePOITile;
  v23 = [(RTBluePOITile *)&v45 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_identifier, identifier);
    objc_storeStrong(&v24->_apToModelMapping, mapping);
    objc_storeStrong(&v24->_date, dateCopy);
    objc_storeStrong(&v24->_downloadKey, keyCopy);
    objc_storeStrong(&v24->_geoCacheInfo, info);
    v24->_geoTileKey = tileKey;
    objc_storeStrong(&v24->_hashedApToModelMapping, modelMapping);
    objc_storeStrong(&v24->_hashSalt, salt);
    objc_storeStrong(&v24->_modelCalibrationParameters, parameters);
    objc_storeStrong(&v24->_models, models);
    objc_storeStrong(&v24->_modelURLs, ls);
    objc_storeStrong(&v24->_pointsOfInterest, interest);
    v24->_singlePOIMuid = muid;
    v24->_size = size;
  }

  selfCopy = v24;
  v26 = selfCopy;
  v22 = identifierCopy;
LABEL_13:

  return v26;
}

- (id)description
{
  v21 = MEMORY[0x1E696AEC0];
  identifier = [(RTBluePOITile *)self identifier];
  date = [(RTBluePOITile *)self date];
  stringFromDate = [date stringFromDate];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[RTBluePOITile geoTileKey](self, "geoTileKey")}];
  downloadKey = [(RTBluePOITile *)self downloadKey];
  geoCacheInfo = [(RTBluePOITile *)self geoCacheInfo];
  [(RTBluePOITile *)self size];
  v5 = v4;
  hashSalt = [(RTBluePOITile *)self hashSalt];
  apToModelMapping = [(RTBluePOITile *)self apToModelMapping];
  v7 = [apToModelMapping count];
  hashedApToModelMapping = [(RTBluePOITile *)self hashedApToModelMapping];
  v8 = [hashedApToModelMapping count];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[RTBluePOITile singlePOIMuid](self, "singlePOIMuid")}];
  models = [(RTBluePOITile *)self models];
  modelURLs = [(RTBluePOITile *)self modelURLs];
  modelCalibrationParameters = [(RTBluePOITile *)self modelCalibrationParameters];
  pointsOfInterest = [(RTBluePOITile *)self pointsOfInterest];
  v22 = [v21 stringWithFormat:@"identifier, %@, date, %@, geoTileKey, %@, downloadKey, %@, geoCacheInfo, %@, size, %.1f kB, hashSalt, %@, apToModelMapping count, %lu, hashedApToModelMapping count, %lu, singlePOIMuid, %@, models, %@, model URLs, %@, modelCalibrationParameters, %@, pointsOfInterest, %@", identifier, stringFromDate, v15, downloadKey, geoCacheInfo, v5, hashSalt, v7, v8, v9, models, modelURLs, modelCalibrationParameters, pointsOfInterest];

  return v22;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [RTBluePOITile alloc];
  identifier = [(RTBluePOITile *)self identifier];
  apToModelMapping = [(RTBluePOITile *)self apToModelMapping];
  date = [(RTBluePOITile *)self date];
  downloadKey = [(RTBluePOITile *)self downloadKey];
  geoCacheInfo = [(RTBluePOITile *)self geoCacheInfo];
  geoTileKey = [(RTBluePOITile *)self geoTileKey];
  hashedApToModelMapping = [(RTBluePOITile *)self hashedApToModelMapping];
  hashSalt = [(RTBluePOITile *)self hashSalt];
  modelCalibrationParameters = [(RTBluePOITile *)self modelCalibrationParameters];
  models = [(RTBluePOITile *)self models];
  modelURLs = [(RTBluePOITile *)self modelURLs];
  pointsOfInterest = [(RTBluePOITile *)self pointsOfInterest];
  singlePOIMuid = [(RTBluePOITile *)self singlePOIMuid];
  [(RTBluePOITile *)self size];
  v15 = [(RTBluePOITile *)v4 initWithIdentifier:identifier apToModelMapping:apToModelMapping date:date downloadKey:downloadKey geoCacheInfo:geoCacheInfo geoTileKey:geoTileKey hashedApToModelMapping:hashedApToModelMapping hashSalt:hashSalt modelCalibrationParameters:modelCalibrationParameters models:models modelURLs:modelURLs pointsOfInterest:pointsOfInterest singlePOIMuid:singlePOIMuid size:?];

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_apToModelMapping forKey:@"apToModelMapping"];
  [coderCopy encodeObject:self->_date forKey:@"date"];
  [coderCopy encodeObject:self->_downloadKey forKey:@"downloadKey"];
  [coderCopy encodeObject:self->_geoCacheInfo forKey:@"geoCacheInfo"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_geoTileKey];
  [coderCopy encodeObject:v6 forKey:@"geoTileKey"];

  [coderCopy encodeObject:self->_hashedApToModelMapping forKey:@"hashedApToModelMapping"];
  [coderCopy encodeObject:self->_hashSalt forKey:@"hashSalt"];
  [coderCopy encodeObject:self->_modelCalibrationParameters forKey:@"modelCalibrationParameters"];
  [coderCopy encodeObject:self->_models forKey:@"models"];
  [coderCopy encodeObject:self->_modelURLs forKey:@"modelURLs"];
  [coderCopy encodeObject:self->_pointsOfInterest forKey:@"pointsOfInterest"];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_singlePOIMuid];
  [coderCopy encodeObject:v7 forKey:@"singlePOIMuid"];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_size];
  [coderCopy encodeObject:v8 forKey:@"size"];
}

- (RTBluePOITile)initWithCoder:(id)coder
{
  coderCopy = coder;
  v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v5, v6, v7, objc_opt_class(), 0}];
  v42 = [coderCopy decodeObjectOfClasses:v8 forKey:@"apToModelMapping"];

  v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downloadKey"];
  v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"geoCacheInfo"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"geoTileKey"];
  unsignedLongLongValue = [v9 unsignedLongLongValue];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v10 setWithObjects:{v11, v12, v13, objc_opt_class(), 0}];
  v39 = [coderCopy decodeObjectOfClasses:v14 forKey:@"hashedApToModelMapping"];

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hashSalt"];
  v16 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = [v16 setWithObjects:{v17, v18, objc_opt_class(), 0}];
  v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"modelCalibrationParameters"];

  v21 = MEMORY[0x1E695DFD8];
  v22 = objc_opt_class();
  v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
  v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"models"];

  v25 = MEMORY[0x1E695DFD8];
  v26 = objc_opt_class();
  v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
  v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"modelURLs"];

  v29 = MEMORY[0x1E695DFD8];
  v30 = objc_opt_class();
  v31 = [v29 setWithObjects:{v30, objc_opt_class(), 0}];
  v32 = [coderCopy decodeObjectOfClasses:v31 forKey:@"pointsOfInterest"];

  v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"singlePOIMuid"];
  unsignedLongLongValue2 = [v33 unsignedLongLongValue];

  v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"size"];

  [v35 doubleValue];
  v37 = v36;

  v46 = [(RTBluePOITile *)self initWithIdentifier:v47 apToModelMapping:v42 date:v44 downloadKey:v43 geoCacheInfo:v41 geoTileKey:unsignedLongLongValue hashedApToModelMapping:v37 hashSalt:v39 modelCalibrationParameters:v15 models:v20 modelURLs:v24 pointsOfInterest:v28 singlePOIMuid:v32 size:unsignedLongLongValue2];
  return v46;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(RTBluePOITile *)self identifier];
      identifier2 = [(RTBluePOITile *)v5 identifier];

      v8 = [identifier isEqual:identifier2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end
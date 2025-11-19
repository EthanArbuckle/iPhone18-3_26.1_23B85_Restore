@interface RTBluePOITile
- (BOOL)isEqual:(id)a3;
- (RTBluePOITile)initWithCoder:(id)a3;
- (RTBluePOITile)initWithIdentifier:(id)a3 apToModelMapping:(id)a4 date:(id)a5 downloadKey:(id)a6 geoCacheInfo:(id)a7 geoTileKey:(unint64_t)a8 hashedApToModelMapping:(id)a9 hashSalt:(id)a10 modelCalibrationParameters:(id)a11 models:(id)a12 modelURLs:(id)a13 pointsOfInterest:(id)a14 singlePOIMuid:(unint64_t)a15 size:(double)a16;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTBluePOITile

- (RTBluePOITile)initWithIdentifier:(id)a3 apToModelMapping:(id)a4 date:(id)a5 downloadKey:(id)a6 geoCacheInfo:(id)a7 geoTileKey:(unint64_t)a8 hashedApToModelMapping:(id)a9 hashSalt:(id)a10 modelCalibrationParameters:(id)a11 models:(id)a12 modelURLs:(id)a13 pointsOfInterest:(id)a14 singlePOIMuid:(unint64_t)a15 size:(double)a16
{
  v44 = a3;
  v43 = a4;
  v31 = a5;
  v21 = a5;
  v32 = a6;
  v42 = a6;
  v41 = a7;
  v40 = a9;
  v39 = a10;
  v22 = v44;
  v38 = a11;
  v36 = a12;
  v35 = a13;
  v34 = a14;
  if (!v44)
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

  if (!v21)
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v28, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: date", buf, 2u);
    }

    v26 = 0;
    v21 = 0;
LABEL_12:
    v25 = self;
    goto LABEL_13;
  }

  v45.receiver = self;
  v45.super_class = RTBluePOITile;
  v23 = [(RTBluePOITile *)&v45 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_identifier, a3);
    objc_storeStrong(&v24->_apToModelMapping, a4);
    objc_storeStrong(&v24->_date, v31);
    objc_storeStrong(&v24->_downloadKey, v32);
    objc_storeStrong(&v24->_geoCacheInfo, a7);
    v24->_geoTileKey = a8;
    objc_storeStrong(&v24->_hashedApToModelMapping, a9);
    objc_storeStrong(&v24->_hashSalt, a10);
    objc_storeStrong(&v24->_modelCalibrationParameters, a11);
    objc_storeStrong(&v24->_models, a12);
    objc_storeStrong(&v24->_modelURLs, a13);
    objc_storeStrong(&v24->_pointsOfInterest, a14);
    v24->_singlePOIMuid = a15;
    v24->_size = a16;
  }

  v25 = v24;
  v26 = v25;
  v22 = v44;
LABEL_13:

  return v26;
}

- (id)description
{
  v21 = MEMORY[0x1E696AEC0];
  v20 = [(RTBluePOITile *)self identifier];
  v23 = [(RTBluePOITile *)self date];
  v19 = [v23 stringFromDate];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[RTBluePOITile geoTileKey](self, "geoTileKey")}];
  v16 = [(RTBluePOITile *)self downloadKey];
  v3 = [(RTBluePOITile *)self geoCacheInfo];
  [(RTBluePOITile *)self size];
  v5 = v4;
  v6 = [(RTBluePOITile *)self hashSalt];
  v18 = [(RTBluePOITile *)self apToModelMapping];
  v7 = [v18 count];
  v17 = [(RTBluePOITile *)self hashedApToModelMapping];
  v8 = [v17 count];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[RTBluePOITile singlePOIMuid](self, "singlePOIMuid")}];
  v10 = [(RTBluePOITile *)self models];
  v11 = [(RTBluePOITile *)self modelURLs];
  v12 = [(RTBluePOITile *)self modelCalibrationParameters];
  v13 = [(RTBluePOITile *)self pointsOfInterest];
  v22 = [v21 stringWithFormat:@"identifier, %@, date, %@, geoTileKey, %@, downloadKey, %@, geoCacheInfo, %@, size, %.1f kB, hashSalt, %@, apToModelMapping count, %lu, hashedApToModelMapping count, %lu, singlePOIMuid, %@, models, %@, model URLs, %@, modelCalibrationParameters, %@, pointsOfInterest, %@", v20, v19, v15, v16, v3, v5, v6, v7, v8, v9, v10, v11, v12, v13];

  return v22;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [RTBluePOITile alloc];
  v19 = [(RTBluePOITile *)self identifier];
  v5 = [(RTBluePOITile *)self apToModelMapping];
  v18 = [(RTBluePOITile *)self date];
  v17 = [(RTBluePOITile *)self downloadKey];
  v16 = [(RTBluePOITile *)self geoCacheInfo];
  v14 = [(RTBluePOITile *)self geoTileKey];
  v13 = [(RTBluePOITile *)self hashedApToModelMapping];
  v6 = [(RTBluePOITile *)self hashSalt];
  v7 = [(RTBluePOITile *)self modelCalibrationParameters];
  v8 = [(RTBluePOITile *)self models];
  v9 = [(RTBluePOITile *)self modelURLs];
  v10 = [(RTBluePOITile *)self pointsOfInterest];
  v11 = [(RTBluePOITile *)self singlePOIMuid];
  [(RTBluePOITile *)self size];
  v15 = [(RTBluePOITile *)v4 initWithIdentifier:v19 apToModelMapping:v5 date:v18 downloadKey:v17 geoCacheInfo:v16 geoTileKey:v14 hashedApToModelMapping:v13 hashSalt:v6 modelCalibrationParameters:v7 models:v8 modelURLs:v9 pointsOfInterest:v10 singlePOIMuid:v11 size:?];

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_apToModelMapping forKey:@"apToModelMapping"];
  [v5 encodeObject:self->_date forKey:@"date"];
  [v5 encodeObject:self->_downloadKey forKey:@"downloadKey"];
  [v5 encodeObject:self->_geoCacheInfo forKey:@"geoCacheInfo"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_geoTileKey];
  [v5 encodeObject:v6 forKey:@"geoTileKey"];

  [v5 encodeObject:self->_hashedApToModelMapping forKey:@"hashedApToModelMapping"];
  [v5 encodeObject:self->_hashSalt forKey:@"hashSalt"];
  [v5 encodeObject:self->_modelCalibrationParameters forKey:@"modelCalibrationParameters"];
  [v5 encodeObject:self->_models forKey:@"models"];
  [v5 encodeObject:self->_modelURLs forKey:@"modelURLs"];
  [v5 encodeObject:self->_pointsOfInterest forKey:@"pointsOfInterest"];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_singlePOIMuid];
  [v5 encodeObject:v7 forKey:@"singlePOIMuid"];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_size];
  [v5 encodeObject:v8 forKey:@"size"];
}

- (RTBluePOITile)initWithCoder:(id)a3
{
  v3 = a3;
  v47 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v44 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v5, v6, v7, objc_opt_class(), 0}];
  v42 = [v3 decodeObjectOfClasses:v8 forKey:@"apToModelMapping"];

  v43 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"downloadKey"];
  v41 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"geoCacheInfo"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"geoTileKey"];
  v40 = [v9 unsignedLongLongValue];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v10 setWithObjects:{v11, v12, v13, objc_opt_class(), 0}];
  v39 = [v3 decodeObjectOfClasses:v14 forKey:@"hashedApToModelMapping"];

  v15 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"hashSalt"];
  v16 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = [v16 setWithObjects:{v17, v18, objc_opt_class(), 0}];
  v20 = [v3 decodeObjectOfClasses:v19 forKey:@"modelCalibrationParameters"];

  v21 = MEMORY[0x1E695DFD8];
  v22 = objc_opt_class();
  v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
  v24 = [v3 decodeObjectOfClasses:v23 forKey:@"models"];

  v25 = MEMORY[0x1E695DFD8];
  v26 = objc_opt_class();
  v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
  v28 = [v3 decodeObjectOfClasses:v27 forKey:@"modelURLs"];

  v29 = MEMORY[0x1E695DFD8];
  v30 = objc_opt_class();
  v31 = [v29 setWithObjects:{v30, objc_opt_class(), 0}];
  v32 = [v3 decodeObjectOfClasses:v31 forKey:@"pointsOfInterest"];

  v33 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"singlePOIMuid"];
  v34 = [v33 unsignedLongLongValue];

  v35 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"size"];

  [v35 doubleValue];
  v37 = v36;

  v46 = [(RTBluePOITile *)self initWithIdentifier:v47 apToModelMapping:v42 date:v44 downloadKey:v43 geoCacheInfo:v41 geoTileKey:v40 hashedApToModelMapping:v37 hashSalt:v39 modelCalibrationParameters:v15 models:v20 modelURLs:v24 pointsOfInterest:v28 singlePOIMuid:v32 size:v34];
  return v46;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(RTBluePOITile *)self identifier];
      v7 = [(RTBluePOITile *)v5 identifier];

      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end
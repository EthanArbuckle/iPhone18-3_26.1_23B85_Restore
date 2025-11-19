@interface RTBluePOIMetadata
- (BOOL)isEqual:(id)a3;
- (RTBluePOIMetadata)initWithCoder:(id)a3;
- (RTBluePOIMetadata)initWithIdentifier:(id)a3 categoryDenyList:(id)a4 geoCacheInfo:(id)a5 modelCalibrationParameters:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTBluePOIMetadata

- (RTBluePOIMetadata)initWithIdentifier:(id)a3 categoryDenyList:(id)a4 geoCacheInfo:(id)a5 modelCalibrationParameters:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
  {
    v20.receiver = self;
    v20.super_class = RTBluePOIMetadata;
    v15 = [(RTBluePOIMetadata *)&v20 init];
    p_isa = &v15->super.isa;
    if (v15)
    {
      objc_storeStrong(&v15->_identifier, a3);
      objc_storeStrong(p_isa + 2, a4);
      objc_storeStrong(p_isa + 3, a5);
      objc_storeStrong(p_isa + 4, a6);
    }

    self = p_isa;
    v17 = self;
  }

  else
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier", buf, 2u);
    }

    v17 = 0;
  }

  return v17;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(RTBluePOIMetadata *)self identifier];
  v5 = [(RTBluePOIMetadata *)self modelCalibrationParameters];
  v6 = [(RTBluePOIMetadata *)self categoryDenyList];
  v7 = [v6 count];
  v8 = [(RTBluePOIMetadata *)self geoCacheInfo];
  v9 = [v3 stringWithFormat:@"identifier, %@, model calibration parameters, %@, category deny list count, %lu, geoCacheInfo, %@", v4, v5, v7, v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [RTBluePOIMetadata alloc];
  v5 = [(RTBluePOIMetadata *)self identifier];
  v6 = [(RTBluePOIMetadata *)self categoryDenyList];
  v7 = [(RTBluePOIMetadata *)self geoCacheInfo];
  v8 = [(RTBluePOIMetadata *)self modelCalibrationParameters];
  v9 = [(RTBluePOIMetadata *)v4 initWithIdentifier:v5 categoryDenyList:v6 geoCacheInfo:v7 modelCalibrationParameters:v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_categoryDenyList forKey:@"categoryDenyList"];
  [v5 encodeObject:self->_geoCacheInfo forKey:@"geoCacheInfo"];
  [v5 encodeObject:self->_modelCalibrationParameters forKey:@"modelCalibrationParameters"];
}

- (RTBluePOIMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"categoryDenyList"];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"geoCacheInfo"];
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v11 setWithObjects:{v12, v13, objc_opt_class(), 0}];
  v15 = [v4 decodeObjectOfClasses:v14 forKey:@"modelCalibrationParameters"];

  v16 = [(RTBluePOIMetadata *)self initWithIdentifier:v5 categoryDenyList:v9 geoCacheInfo:v10 modelCalibrationParameters:v15];
  return v16;
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
      v6 = [(RTBluePOIMetadata *)self identifier];
      v7 = [(RTBluePOIMetadata *)v5 identifier];

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
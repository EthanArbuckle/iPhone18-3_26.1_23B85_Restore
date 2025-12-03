@interface RTBluePOIMetadata
- (BOOL)isEqual:(id)equal;
- (RTBluePOIMetadata)initWithCoder:(id)coder;
- (RTBluePOIMetadata)initWithIdentifier:(id)identifier categoryDenyList:(id)list geoCacheInfo:(id)info modelCalibrationParameters:(id)parameters;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTBluePOIMetadata

- (RTBluePOIMetadata)initWithIdentifier:(id)identifier categoryDenyList:(id)list geoCacheInfo:(id)info modelCalibrationParameters:(id)parameters
{
  identifierCopy = identifier;
  listCopy = list;
  infoCopy = info;
  parametersCopy = parameters;
  if (identifierCopy)
  {
    v20.receiver = self;
    v20.super_class = RTBluePOIMetadata;
    v15 = [(RTBluePOIMetadata *)&v20 init];
    p_isa = &v15->super.isa;
    if (v15)
    {
      objc_storeStrong(&v15->_identifier, identifier);
      objc_storeStrong(p_isa + 2, list);
      objc_storeStrong(p_isa + 3, info);
      objc_storeStrong(p_isa + 4, parameters);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(RTBluePOIMetadata *)self identifier];
  modelCalibrationParameters = [(RTBluePOIMetadata *)self modelCalibrationParameters];
  categoryDenyList = [(RTBluePOIMetadata *)self categoryDenyList];
  v7 = [categoryDenyList count];
  geoCacheInfo = [(RTBluePOIMetadata *)self geoCacheInfo];
  v9 = [v3 stringWithFormat:@"identifier, %@, model calibration parameters, %@, category deny list count, %lu, geoCacheInfo, %@", identifier, modelCalibrationParameters, v7, geoCacheInfo];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [RTBluePOIMetadata alloc];
  identifier = [(RTBluePOIMetadata *)self identifier];
  categoryDenyList = [(RTBluePOIMetadata *)self categoryDenyList];
  geoCacheInfo = [(RTBluePOIMetadata *)self geoCacheInfo];
  modelCalibrationParameters = [(RTBluePOIMetadata *)self modelCalibrationParameters];
  v9 = [(RTBluePOIMetadata *)v4 initWithIdentifier:identifier categoryDenyList:categoryDenyList geoCacheInfo:geoCacheInfo modelCalibrationParameters:modelCalibrationParameters];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_categoryDenyList forKey:@"categoryDenyList"];
  [coderCopy encodeObject:self->_geoCacheInfo forKey:@"geoCacheInfo"];
  [coderCopy encodeObject:self->_modelCalibrationParameters forKey:@"modelCalibrationParameters"];
}

- (RTBluePOIMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"categoryDenyList"];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"geoCacheInfo"];
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v11 setWithObjects:{v12, v13, objc_opt_class(), 0}];
  v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"modelCalibrationParameters"];

  v16 = [(RTBluePOIMetadata *)self initWithIdentifier:v5 categoryDenyList:v9 geoCacheInfo:v10 modelCalibrationParameters:v15];
  return v16;
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
      identifier = [(RTBluePOIMetadata *)self identifier];
      identifier2 = [(RTBluePOIMetadata *)v5 identifier];

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
@interface RTBluePOIModel
- (BOOL)isEqual:(id)equal;
- (RTBluePOIModel)initWithCoder:(id)coder;
- (RTBluePOIModel)initWithIdentifier:(id)identifier featureToHashedApMapping:(id)mapping url:(id)url;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTBluePOIModel

- (RTBluePOIModel)initWithIdentifier:(id)identifier featureToHashedApMapping:(id)mapping url:(id)url
{
  identifierCopy = identifier;
  mappingCopy = mapping;
  urlCopy = url;
  if (!identifierCopy)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      selfCopy = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: identifier";
LABEL_12:
    _os_log_error_impl(&dword_1BF1C4000, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
    goto LABEL_9;
  }

  if (!mappingCopy)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: featureToHashedApMapping";
    goto LABEL_12;
  }

  v18.receiver = self;
  v18.super_class = RTBluePOIModel;
  v12 = [(RTBluePOIModel *)&v18 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeStrong(p_isa + 3, mapping);
    objc_storeStrong(p_isa + 2, url);
  }

  self = p_isa;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [RTBluePOIModel alloc];
  identifier = [(RTBluePOIModel *)self identifier];
  featureToHashedApMapping = [(RTBluePOIModel *)self featureToHashedApMapping];
  v7 = [(RTBluePOIModel *)self url];
  v8 = [(RTBluePOIModel *)v4 initWithIdentifier:identifier featureToHashedApMapping:featureToHashedApMapping url:v7];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_featureToHashedApMapping forKey:@"featureToHashedApMapping"];
  [coderCopy encodeObject:self->_url forKey:@"url"];
}

- (RTBluePOIModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"featureToHashedApMapping"];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];

  v12 = [(RTBluePOIModel *)self initWithIdentifier:v5 featureToHashedApMapping:v10 url:v11];
  return v12;
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
      identifier = [(RTBluePOIModel *)self identifier];
      identifier2 = [(RTBluePOIModel *)v5 identifier];

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
@interface RTBluePOIModel
- (BOOL)isEqual:(id)a3;
- (RTBluePOIModel)initWithCoder:(id)a3;
- (RTBluePOIModel)initWithIdentifier:(id)a3 featureToHashedApMapping:(id)a4 url:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTBluePOIModel

- (RTBluePOIModel)initWithIdentifier:(id)a3 featureToHashedApMapping:(id)a4 url:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      v14 = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: identifier";
LABEL_12:
    _os_log_error_impl(&dword_1BF1C4000, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
    goto LABEL_9;
  }

  if (!v10)
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
    objc_storeStrong(&v12->_identifier, a3);
    objc_storeStrong(p_isa + 3, a4);
    objc_storeStrong(p_isa + 2, a5);
  }

  self = p_isa;
  v14 = self;
LABEL_10:

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [RTBluePOIModel alloc];
  v5 = [(RTBluePOIModel *)self identifier];
  v6 = [(RTBluePOIModel *)self featureToHashedApMapping];
  v7 = [(RTBluePOIModel *)self url];
  v8 = [(RTBluePOIModel *)v4 initWithIdentifier:v5 featureToHashedApMapping:v6 url:v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_featureToHashedApMapping forKey:@"featureToHashedApMapping"];
  [v5 encodeObject:self->_url forKey:@"url"];
}

- (RTBluePOIModel)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"featureToHashedApMapping"];

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];

  v12 = [(RTBluePOIModel *)self initWithIdentifier:v5 featureToHashedApMapping:v10 url:v11];
  return v12;
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
      v6 = [(RTBluePOIModel *)self identifier];
      v7 = [(RTBluePOIModel *)v5 identifier];

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
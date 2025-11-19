@interface RTTripClusterRouteEnumerationContext
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToContext:(id)a3;
- (RTTripClusterRouteEnumerationContext)init;
- (RTTripClusterRouteEnumerationContext)initWithCoder:(id)a3;
- (RTTripClusterRouteEnumerationContext)initWithEnumerationOptions:(id)a3 offset:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTTripClusterRouteEnumerationContext

- (RTTripClusterRouteEnumerationContext)init
{
  v3 = objc_opt_new();
  v4 = [(RTTripClusterRouteEnumerationContext *)self initWithEnumerationOptions:v3 offset:0];

  return v4;
}

- (RTTripClusterRouteEnumerationContext)initWithEnumerationOptions:(id)a3 offset:(unint64_t)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v17.receiver = self;
  v17.super_class = RTTripClusterRouteEnumerationContext;
  v7 = [(RTTripClusterRouteEnumerationContext *)&v17 init];
  if (v7)
  {
    v8 = v6 ? v6 : objc_opt_new();
    options = v7->_options;
    v7->_options = v8;

    v7->_offset = a4;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = [(RTTripClusterRouteEnumerationOptions *)v7->_options clusterID];
        v14 = [v13 UUIDString];
        *buf = 138412546;
        v19 = v12;
        v20 = 2112;
        v21 = v14;
        _os_log_impl(&dword_1BF1C4000, v10, OS_LOG_TYPE_INFO, "%@,Initialized context with options clusterID,%@", buf, 0x16u);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(RTTripClusterRouteEnumerationContext *)self options];
  v6 = [v4 initWithEnumerationOptions:v5 offset:{-[RTTripClusterRouteEnumerationContext offset](self, "offset")}];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  options = self->_options;
  v5 = a3;
  [v5 encodeObject:options forKey:@"options"];
  [v5 encodeInteger:self->_offset forKey:@"offset"];
}

- (RTTripClusterRouteEnumerationContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"options"];
  v6 = [v4 decodeIntegerForKey:@"offset"];

  v7 = [(RTTripClusterRouteEnumerationContext *)self initWithEnumerationOptions:v5 offset:v6];
  return v7;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTTripClusterRouteEnumerationContext *)self isEqualToContext:v5];
  }

  return v6;
}

- (BOOL)isEqualToContext:(id)a3
{
  v5 = a3;
  v6 = v5;
  options = self->_options;
  v8 = options;
  if (!options)
  {
    v3 = [v5 options];
    if (!v3)
    {
      v10 = 1;
LABEL_8:

      if (v6)
      {
        goto LABEL_6;
      }

LABEL_9:
      v12 = 0;
      goto LABEL_10;
    }

    v8 = self->_options;
  }

  v9 = [v6 options];
  v10 = [(RTTripClusterRouteEnumerationOptions *)v8 isEqual:v9];

  if (!options)
  {
    goto LABEL_8;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_6:
  offset = self->_offset;
  v12 = offset == [v6 offset];
LABEL_10:

  return v10 & v12;
}

- (unint64_t)hash
{
  v3 = [(RTTripClusterRouteEnumerationOptions *)self->_options hash];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_offset];
  v5 = [v4 hash];

  return v5 ^ v3;
}

@end
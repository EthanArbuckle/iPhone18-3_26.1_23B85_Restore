@interface RTTripClusterWaypointEnumerationContext
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToContext:(id)a3;
- (RTTripClusterWaypointEnumerationContext)init;
- (RTTripClusterWaypointEnumerationContext)initWithCoder:(id)a3;
- (RTTripClusterWaypointEnumerationContext)initWithEnumerationOptions:(id)a3 offset:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTTripClusterWaypointEnumerationContext

- (RTTripClusterWaypointEnumerationContext)init
{
  v3 = objc_opt_new();
  v4 = [(RTTripClusterWaypointEnumerationContext *)self initWithEnumerationOptions:v3 offset:0];

  return v4;
}

- (RTTripClusterWaypointEnumerationContext)initWithEnumerationOptions:(id)a3 offset:(unint64_t)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v17.receiver = self;
  v17.super_class = RTTripClusterWaypointEnumerationContext;
  v7 = [(RTTripClusterWaypointEnumerationContext *)&v17 init];
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
        v13 = [(RTTripClusterWaypointEnumerationOptions *)v7->_options clusterID];
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
  v5 = [(RTTripClusterWaypointEnumerationContext *)self options];
  v6 = [v4 initWithEnumerationOptions:v5 offset:{-[RTTripClusterWaypointEnumerationContext offset](self, "offset")}];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  options = self->_options;
  v5 = a3;
  [v5 encodeObject:options forKey:@"options"];
  [v5 encodeInteger:self->_offset forKey:@"offset"];
}

- (RTTripClusterWaypointEnumerationContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"options"];
  v6 = [v4 decodeIntegerForKey:@"offset"];

  v7 = [(RTTripClusterWaypointEnumerationContext *)self initWithEnumerationOptions:v5 offset:v6];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTTripClusterWaypointEnumerationContext *)self isEqualToContext:v5];
  }

  return v6;
}

- (BOOL)isEqualToContext:(id)a3
{
  v5 = a3;
  v6 = v5;
  options = self->_options;
  if (!options)
  {
    v3 = [v5 options];
    if (!v3)
    {
      v12 = 1;
      goto LABEL_12;
    }

    if (!self->_options)
    {
      v12 = 0;
      goto LABEL_12;
    }
  }

  v8 = [v6 options];
  if (v8)
  {
    v9 = v8;
    v10 = self->_options;
    v11 = [v6 options];
    v12 = [(RTTripClusterWaypointEnumerationOptions *)v10 isEqual:v11];

    if (options)
    {
      goto LABEL_4;
    }

LABEL_12:

    if (v6)
    {
      goto LABEL_5;
    }

LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  v12 = 0;
  if (!options)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_5:
  offset = self->_offset;
  v14 = offset == [v6 offset];
LABEL_14:

  return v12 & v14;
}

- (unint64_t)hash
{
  v3 = [(RTTripClusterWaypointEnumerationOptions *)self->_options hash];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_offset];
  v5 = [v4 hash];

  return v5 ^ v3;
}

@end
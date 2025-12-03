@interface RTTripClusterWaypointEnumerationContext
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToContext:(id)context;
- (RTTripClusterWaypointEnumerationContext)init;
- (RTTripClusterWaypointEnumerationContext)initWithCoder:(id)coder;
- (RTTripClusterWaypointEnumerationContext)initWithEnumerationOptions:(id)options offset:(unint64_t)offset;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTTripClusterWaypointEnumerationContext

- (RTTripClusterWaypointEnumerationContext)init
{
  v3 = objc_opt_new();
  v4 = [(RTTripClusterWaypointEnumerationContext *)self initWithEnumerationOptions:v3 offset:0];

  return v4;
}

- (RTTripClusterWaypointEnumerationContext)initWithEnumerationOptions:(id)options offset:(unint64_t)offset
{
  v22 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v17.receiver = self;
  v17.super_class = RTTripClusterWaypointEnumerationContext;
  v7 = [(RTTripClusterWaypointEnumerationContext *)&v17 init];
  if (v7)
  {
    v8 = optionsCopy ? optionsCopy : objc_opt_new();
    options = v7->_options;
    v7->_options = v8;

    v7->_offset = offset;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        clusterID = [(RTTripClusterWaypointEnumerationOptions *)v7->_options clusterID];
        uUIDString = [clusterID UUIDString];
        *buf = 138412546;
        v19 = v12;
        v20 = 2112;
        v21 = uUIDString;
        _os_log_impl(&dword_1BF1C4000, v10, OS_LOG_TYPE_INFO, "%@,Initialized context with options clusterID,%@", buf, 0x16u);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  options = [(RTTripClusterWaypointEnumerationContext *)self options];
  v6 = [v4 initWithEnumerationOptions:options offset:{-[RTTripClusterWaypointEnumerationContext offset](self, "offset")}];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  options = self->_options;
  coderCopy = coder;
  [coderCopy encodeObject:options forKey:@"options"];
  [coderCopy encodeInteger:self->_offset forKey:@"offset"];
}

- (RTTripClusterWaypointEnumerationContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"options"];
  v6 = [coderCopy decodeIntegerForKey:@"offset"];

  v7 = [(RTTripClusterWaypointEnumerationContext *)self initWithEnumerationOptions:v5 offset:v6];
  return v7;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTTripClusterWaypointEnumerationContext *)self isEqualToContext:v5];
  }

  return v6;
}

- (BOOL)isEqualToContext:(id)context
{
  contextCopy = context;
  v6 = contextCopy;
  options = self->_options;
  if (!options)
  {
    options = [contextCopy options];
    if (!options)
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

  options2 = [v6 options];
  if (options2)
  {
    v9 = options2;
    v10 = self->_options;
    options3 = [v6 options];
    v12 = [(RTTripClusterWaypointEnumerationOptions *)v10 isEqual:options3];

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
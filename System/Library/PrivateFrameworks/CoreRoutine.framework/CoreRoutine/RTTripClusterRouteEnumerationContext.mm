@interface RTTripClusterRouteEnumerationContext
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToContext:(id)context;
- (RTTripClusterRouteEnumerationContext)init;
- (RTTripClusterRouteEnumerationContext)initWithCoder:(id)coder;
- (RTTripClusterRouteEnumerationContext)initWithEnumerationOptions:(id)options offset:(unint64_t)offset;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTTripClusterRouteEnumerationContext

- (RTTripClusterRouteEnumerationContext)init
{
  v3 = objc_opt_new();
  v4 = [(RTTripClusterRouteEnumerationContext *)self initWithEnumerationOptions:v3 offset:0];

  return v4;
}

- (RTTripClusterRouteEnumerationContext)initWithEnumerationOptions:(id)options offset:(unint64_t)offset
{
  v22 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v17.receiver = self;
  v17.super_class = RTTripClusterRouteEnumerationContext;
  v7 = [(RTTripClusterRouteEnumerationContext *)&v17 init];
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
        clusterID = [(RTTripClusterRouteEnumerationOptions *)v7->_options clusterID];
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
  options = [(RTTripClusterRouteEnumerationContext *)self options];
  v6 = [v4 initWithEnumerationOptions:options offset:{-[RTTripClusterRouteEnumerationContext offset](self, "offset")}];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  options = self->_options;
  coderCopy = coder;
  [coderCopy encodeObject:options forKey:@"options"];
  [coderCopy encodeInteger:self->_offset forKey:@"offset"];
}

- (RTTripClusterRouteEnumerationContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"options"];
  v6 = [coderCopy decodeIntegerForKey:@"offset"];

  v7 = [(RTTripClusterRouteEnumerationContext *)self initWithEnumerationOptions:v5 offset:v6];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTTripClusterRouteEnumerationContext *)self isEqualToContext:v5];
  }

  return v6;
}

- (BOOL)isEqualToContext:(id)context
{
  contextCopy = context;
  v6 = contextCopy;
  options = self->_options;
  v8 = options;
  if (!options)
  {
    options = [contextCopy options];
    if (!options)
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

  options2 = [v6 options];
  v10 = [(RTTripClusterRouteEnumerationOptions *)v8 isEqual:options2];

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
@interface RTTripClusterRouteEnumerationOptions
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToOptions:(id)options;
- (RTTripClusterRouteEnumerationOptions)initWithClusterID:(id)d;
- (RTTripClusterRouteEnumerationOptions)initWithCoder:(id)coder;
- (RTTripClusterRouteEnumerationOptions)initWithbatchSize:(unint64_t)size;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTTripClusterRouteEnumerationOptions

- (RTTripClusterRouteEnumerationOptions)initWithbatchSize:(unint64_t)size
{
  v5.receiver = self;
  v5.super_class = RTTripClusterRouteEnumerationOptions;
  result = [(RTTripClusterRouteEnumerationOptions *)&v5 init];
  if (result)
  {
    result->_batchSize = size;
  }

  return result;
}

- (RTTripClusterRouteEnumerationOptions)initWithClusterID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = RTTripClusterRouteEnumerationOptions;
  v6 = [(RTTripClusterRouteEnumerationOptions *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_batchSize = 0;
    objc_storeStrong(&v6->_clusterID, d);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_opt_class() allocWithZone:zone];

  return [v3 initWithbatchSize:0];
}

- (void)encodeWithCoder:(id)coder
{
  batchSize = self->_batchSize;
  coderCopy = coder;
  [coderCopy encodeInteger:batchSize forKey:@"batchSize"];
  [coderCopy encodeObject:self->_clusterID forKey:@"clusterID"];
}

- (RTTripClusterRouteEnumerationOptions)initWithCoder:(id)coder
{
  v4 = [coder decodeObjectForKey:@"clusterID"];
  v5 = [(RTTripClusterRouteEnumerationOptions *)self initWithClusterID:v4];

  return v5;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTTripClusterRouteEnumerationOptions *)self isEqualToOptions:v5];
  }

  return v6;
}

- (BOOL)isEqualToOptions:(id)options
{
  optionsCopy = options;
  batchSize = self->_batchSize;
  batchSize = [optionsCopy batchSize];
  if (self->_clusterID)
  {
    clusterID = [optionsCopy clusterID];
    if (clusterID)
    {
      clusterID = self->_clusterID;
      clusterID2 = [optionsCopy clusterID];
      v10 = [(NSUUID *)clusterID isEqual:clusterID2];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return (batchSize == batchSize) & v10;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_batchSize];
  v4 = [v3 hash];
  v5 = [(NSUUID *)self->_clusterID hash];

  return v5 ^ v4;
}

@end
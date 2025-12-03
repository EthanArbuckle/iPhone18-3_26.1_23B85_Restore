@interface RTTripClusterRoadTransitionsEnumerationOptions
- (BOOL)isEqual:(id)equal;
- (RTTripClusterRoadTransitionsEnumerationOptions)initWithClusterID:(id)d;
- (RTTripClusterRoadTransitionsEnumerationOptions)initWithCoder:(id)coder;
- (RTTripClusterRoadTransitionsEnumerationOptions)initWithbatchSize:(unint64_t)size;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTTripClusterRoadTransitionsEnumerationOptions

- (RTTripClusterRoadTransitionsEnumerationOptions)initWithbatchSize:(unint64_t)size
{
  v8.receiver = self;
  v8.super_class = RTTripClusterRoadTransitionsEnumerationOptions;
  v4 = [(RTTripClusterRoadTransitionsEnumerationOptions *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_batchSize = size;
    clusterID = v4->_clusterID;
    v4->_clusterID = 0;
  }

  return v5;
}

- (RTTripClusterRoadTransitionsEnumerationOptions)initWithClusterID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = RTTripClusterRoadTransitionsEnumerationOptions;
  v6 = [(RTTripClusterRoadTransitionsEnumerationOptions *)&v9 init];
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

- (RTTripClusterRoadTransitionsEnumerationOptions)initWithCoder:(id)coder
{
  v4 = [coder decodeObjectForKey:@"clusterID"];
  v5 = [(RTTripClusterRoadTransitionsEnumerationOptions *)self initWithClusterID:v4];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    isKindOfClass = 1;
  }

  else if (equalCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_batchSize];
  v4 = [v3 hash];
  v5 = [(NSUUID *)self->_clusterID hash];

  return v5 ^ v4;
}

@end
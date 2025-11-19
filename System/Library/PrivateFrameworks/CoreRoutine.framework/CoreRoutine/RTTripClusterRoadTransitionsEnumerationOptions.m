@interface RTTripClusterRoadTransitionsEnumerationOptions
- (BOOL)isEqual:(id)a3;
- (RTTripClusterRoadTransitionsEnumerationOptions)initWithClusterID:(id)a3;
- (RTTripClusterRoadTransitionsEnumerationOptions)initWithCoder:(id)a3;
- (RTTripClusterRoadTransitionsEnumerationOptions)initWithbatchSize:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTTripClusterRoadTransitionsEnumerationOptions

- (RTTripClusterRoadTransitionsEnumerationOptions)initWithbatchSize:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = RTTripClusterRoadTransitionsEnumerationOptions;
  v4 = [(RTTripClusterRoadTransitionsEnumerationOptions *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_batchSize = a3;
    clusterID = v4->_clusterID;
    v4->_clusterID = 0;
  }

  return v5;
}

- (RTTripClusterRoadTransitionsEnumerationOptions)initWithClusterID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RTTripClusterRoadTransitionsEnumerationOptions;
  v6 = [(RTTripClusterRoadTransitionsEnumerationOptions *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_batchSize = 0;
    objc_storeStrong(&v6->_clusterID, a3);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_opt_class() allocWithZone:a3];

  return [v3 initWithbatchSize:0];
}

- (void)encodeWithCoder:(id)a3
{
  batchSize = self->_batchSize;
  v5 = a3;
  [v5 encodeInteger:batchSize forKey:@"batchSize"];
  [v5 encodeObject:self->_clusterID forKey:@"clusterID"];
}

- (RTTripClusterRoadTransitionsEnumerationOptions)initWithCoder:(id)a3
{
  v4 = [a3 decodeObjectForKey:@"clusterID"];
  v5 = [(RTTripClusterRoadTransitionsEnumerationOptions *)self initWithClusterID:v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    isKindOfClass = 1;
  }

  else if (v4)
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
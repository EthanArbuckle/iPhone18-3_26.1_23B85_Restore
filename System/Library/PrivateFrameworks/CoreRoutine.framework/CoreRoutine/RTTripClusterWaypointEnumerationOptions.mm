@interface RTTripClusterWaypointEnumerationOptions
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToOptions:(id)a3;
- (RTTripClusterWaypointEnumerationOptions)initWithClusterID:(id)a3;
- (RTTripClusterWaypointEnumerationOptions)initWithCoder:(id)a3;
- (RTTripClusterWaypointEnumerationOptions)initWithbatchSize:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTTripClusterWaypointEnumerationOptions

- (RTTripClusterWaypointEnumerationOptions)initWithbatchSize:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = RTTripClusterWaypointEnumerationOptions;
  result = [(RTTripClusterWaypointEnumerationOptions *)&v5 init];
  if (result)
  {
    result->_batchSize = a3;
  }

  return result;
}

- (RTTripClusterWaypointEnumerationOptions)initWithClusterID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RTTripClusterWaypointEnumerationOptions;
  v6 = [(RTTripClusterWaypointEnumerationOptions *)&v9 init];
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

- (RTTripClusterWaypointEnumerationOptions)initWithCoder:(id)a3
{
  v4 = [a3 decodeObjectForKey:@"clusterID"];
  v5 = [(RTTripClusterWaypointEnumerationOptions *)self initWithClusterID:v4];

  return v5;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTTripClusterWaypointEnumerationOptions *)self isEqualToOptions:v5];
  }

  return v6;
}

- (BOOL)isEqualToOptions:(id)a3
{
  v4 = a3;
  batchSize = self->_batchSize;
  v6 = [v4 batchSize];
  if (self->_clusterID)
  {
    v7 = [v4 clusterID];
    if (v7)
    {
      clusterID = self->_clusterID;
      v9 = [v4 clusterID];
      v10 = [(NSUUID *)clusterID isEqual:v9];
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

  return (batchSize == v6) & v10;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_batchSize];
  v4 = [v3 hash];
  v5 = [(NSUUID *)self->_clusterID hash];

  return v5 ^ v4;
}

@end
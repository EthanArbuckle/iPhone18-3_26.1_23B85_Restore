@interface RTTripClusterScheduleEnumerationOptions
- (BOOL)isEqual:(id)equal;
- (RTTripClusterScheduleEnumerationOptions)initWithClusterID:(id)d;
- (RTTripClusterScheduleEnumerationOptions)initWithCoder:(id)coder;
- (RTTripClusterScheduleEnumerationOptions)initWithbatchSize:(unint64_t)size;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTTripClusterScheduleEnumerationOptions

- (RTTripClusterScheduleEnumerationOptions)initWithbatchSize:(unint64_t)size
{
  v5.receiver = self;
  v5.super_class = RTTripClusterScheduleEnumerationOptions;
  result = [(RTTripClusterScheduleEnumerationOptions *)&v5 init];
  if (result)
  {
    result->_batchSize = size;
  }

  return result;
}

- (RTTripClusterScheduleEnumerationOptions)initWithClusterID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = RTTripClusterScheduleEnumerationOptions;
  v6 = [(RTTripClusterScheduleEnumerationOptions *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clusterID, d);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  clusterID = [(RTTripClusterScheduleEnumerationOptions *)self clusterID];
  v6 = [v4 initWithClusterID:clusterID];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  batchSize = self->_batchSize;
  coderCopy = coder;
  [coderCopy encodeInteger:batchSize forKey:@"batchSize"];
  [coderCopy encodeObject:self->_clusterID forKey:@"clusterID"];
}

- (RTTripClusterScheduleEnumerationOptions)initWithCoder:(id)coder
{
  v4 = [coder decodeObjectForKey:@"clusterID"];
  v5 = [(RTTripClusterScheduleEnumerationOptions *)self initWithClusterID:v4];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    clusterID = [(RTTripClusterScheduleEnumerationOptions *)self clusterID];
    clusterID2 = [(RTTripClusterScheduleEnumerationOptions *)v6 clusterID];
    if (clusterID == clusterID2)
    {
      batchSize = [(RTTripClusterScheduleEnumerationOptions *)self batchSize];
      v9 = batchSize == [(RTTripClusterScheduleEnumerationOptions *)v6 batchSize];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_batchSize];
  v4 = [v3 hash];
  v5 = [(NSUUID *)self->_clusterID hash];

  return v5 ^ v4;
}

@end
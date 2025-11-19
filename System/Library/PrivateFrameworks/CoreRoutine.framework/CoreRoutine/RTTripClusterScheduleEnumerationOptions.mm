@interface RTTripClusterScheduleEnumerationOptions
- (BOOL)isEqual:(id)a3;
- (RTTripClusterScheduleEnumerationOptions)initWithClusterID:(id)a3;
- (RTTripClusterScheduleEnumerationOptions)initWithCoder:(id)a3;
- (RTTripClusterScheduleEnumerationOptions)initWithbatchSize:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTTripClusterScheduleEnumerationOptions

- (RTTripClusterScheduleEnumerationOptions)initWithbatchSize:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = RTTripClusterScheduleEnumerationOptions;
  result = [(RTTripClusterScheduleEnumerationOptions *)&v5 init];
  if (result)
  {
    result->_batchSize = a3;
  }

  return result;
}

- (RTTripClusterScheduleEnumerationOptions)initWithClusterID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RTTripClusterScheduleEnumerationOptions;
  v6 = [(RTTripClusterScheduleEnumerationOptions *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clusterID, a3);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(RTTripClusterScheduleEnumerationOptions *)self clusterID];
  v6 = [v4 initWithClusterID:v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  batchSize = self->_batchSize;
  v5 = a3;
  [v5 encodeInteger:batchSize forKey:@"batchSize"];
  [v5 encodeObject:self->_clusterID forKey:@"clusterID"];
}

- (RTTripClusterScheduleEnumerationOptions)initWithCoder:(id)a3
{
  v4 = [a3 decodeObjectForKey:@"clusterID"];
  v5 = [(RTTripClusterScheduleEnumerationOptions *)self initWithClusterID:v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v9 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(RTTripClusterScheduleEnumerationOptions *)self clusterID];
    v8 = [(RTTripClusterScheduleEnumerationOptions *)v6 clusterID];
    if (v7 == v8)
    {
      v10 = [(RTTripClusterScheduleEnumerationOptions *)self batchSize];
      v9 = v10 == [(RTTripClusterScheduleEnumerationOptions *)v6 batchSize];
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
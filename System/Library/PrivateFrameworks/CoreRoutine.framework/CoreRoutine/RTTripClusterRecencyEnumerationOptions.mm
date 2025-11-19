@interface RTTripClusterRecencyEnumerationOptions
- (BOOL)isEqual:(id)a3;
- (RTTripClusterRecencyEnumerationOptions)initWithClusterID:(id)a3;
- (RTTripClusterRecencyEnumerationOptions)initWithCoder:(id)a3;
- (RTTripClusterRecencyEnumerationOptions)initWithbatchSize:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTTripClusterRecencyEnumerationOptions

- (RTTripClusterRecencyEnumerationOptions)initWithbatchSize:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = RTTripClusterRecencyEnumerationOptions;
  result = [(RTTripClusterRecencyEnumerationOptions *)&v5 init];
  if (result)
  {
    result->_batchSize = a3;
  }

  return result;
}

- (RTTripClusterRecencyEnumerationOptions)initWithClusterID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RTTripClusterRecencyEnumerationOptions;
  v6 = [(RTTripClusterRecencyEnumerationOptions *)&v9 init];
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
  v5 = [(RTTripClusterRecencyEnumerationOptions *)self clusterID];
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

- (RTTripClusterRecencyEnumerationOptions)initWithCoder:(id)a3
{
  v4 = [a3 decodeObjectForKey:@"clusterID"];
  v5 = [(RTTripClusterRecencyEnumerationOptions *)self initWithClusterID:v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v12 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(RTTripClusterRecencyEnumerationOptions *)self clusterID];
    if (v7)
    {
      v8 = [(RTTripClusterRecencyEnumerationOptions *)v6 clusterID];
      if (v8)
      {
        v9 = [(RTTripClusterRecencyEnumerationOptions *)self clusterID];
        v10 = [(RTTripClusterRecencyEnumerationOptions *)v6 clusterID];
        if ([v9 isEqual:v10])
        {
          v11 = [(RTTripClusterRecencyEnumerationOptions *)self batchSize];
          v12 = v11 == [(RTTripClusterRecencyEnumerationOptions *)v6 batchSize];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_batchSize];
  v4 = [v3 hash];
  v5 = [(NSUUID *)self->_clusterID hash];

  return v5 ^ v4;
}

@end
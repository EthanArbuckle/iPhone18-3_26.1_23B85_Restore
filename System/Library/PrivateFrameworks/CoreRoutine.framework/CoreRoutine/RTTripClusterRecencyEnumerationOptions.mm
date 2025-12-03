@interface RTTripClusterRecencyEnumerationOptions
- (BOOL)isEqual:(id)equal;
- (RTTripClusterRecencyEnumerationOptions)initWithClusterID:(id)d;
- (RTTripClusterRecencyEnumerationOptions)initWithCoder:(id)coder;
- (RTTripClusterRecencyEnumerationOptions)initWithbatchSize:(unint64_t)size;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTTripClusterRecencyEnumerationOptions

- (RTTripClusterRecencyEnumerationOptions)initWithbatchSize:(unint64_t)size
{
  v5.receiver = self;
  v5.super_class = RTTripClusterRecencyEnumerationOptions;
  result = [(RTTripClusterRecencyEnumerationOptions *)&v5 init];
  if (result)
  {
    result->_batchSize = size;
  }

  return result;
}

- (RTTripClusterRecencyEnumerationOptions)initWithClusterID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = RTTripClusterRecencyEnumerationOptions;
  v6 = [(RTTripClusterRecencyEnumerationOptions *)&v9 init];
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
  clusterID = [(RTTripClusterRecencyEnumerationOptions *)self clusterID];
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

- (RTTripClusterRecencyEnumerationOptions)initWithCoder:(id)coder
{
  v4 = [coder decodeObjectForKey:@"clusterID"];
  v5 = [(RTTripClusterRecencyEnumerationOptions *)self initWithClusterID:v4];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    clusterID = [(RTTripClusterRecencyEnumerationOptions *)self clusterID];
    if (clusterID)
    {
      clusterID2 = [(RTTripClusterRecencyEnumerationOptions *)v6 clusterID];
      if (clusterID2)
      {
        clusterID3 = [(RTTripClusterRecencyEnumerationOptions *)self clusterID];
        clusterID4 = [(RTTripClusterRecencyEnumerationOptions *)v6 clusterID];
        if ([clusterID3 isEqual:clusterID4])
        {
          batchSize = [(RTTripClusterRecencyEnumerationOptions *)self batchSize];
          v12 = batchSize == [(RTTripClusterRecencyEnumerationOptions *)v6 batchSize];
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
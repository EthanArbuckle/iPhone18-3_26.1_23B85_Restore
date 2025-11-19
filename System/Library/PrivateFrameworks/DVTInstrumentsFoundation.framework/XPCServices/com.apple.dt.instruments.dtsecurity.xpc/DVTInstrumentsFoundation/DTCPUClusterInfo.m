@interface DTCPUClusterInfo
- (DTCPUClusterInfo)initWithClusterID:(unint64_t)a3 flags:(unint64_t)a4;
- (DTCPUClusterInfo)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DTCPUClusterInfo

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  if (([v5 allowsKeyedCoding] & 1) == 0)
  {
    sub_10001304C(a2, self);
  }

  [v5 encodeInteger:self->_clusterID forKey:@"_clusterID"];
  [v5 encodeInteger:self->_clusterFlags forKey:@"_clusterFlags"];
}

- (DTCPUClusterInfo)initWithCoder:(id)a3
{
  v5 = a3;
  if (([v5 allowsKeyedCoding] & 1) == 0)
  {
    sub_1000130C8(a2, self);
  }

  v8.receiver = self;
  v8.super_class = DTCPUClusterInfo;
  v6 = [(DTCPUClusterInfo *)&v8 init];
  if (v6)
  {
    v6->_clusterID = [v5 decodeIntegerForKey:@"_clusterID"];
    v6->_clusterFlags = [v5 decodeIntegerForKey:@"_clusterFlags"];
  }

  return v6;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@: %p> cluster id: %lu, flags: 0x%lx", v4, self, self->_clusterID, self->_clusterFlags];

  return v5;
}

- (DTCPUClusterInfo)initWithClusterID:(unint64_t)a3 flags:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = DTCPUClusterInfo;
  result = [(DTCPUClusterInfo *)&v7 init];
  if (result)
  {
    result->_clusterID = a3;
    result->_clusterFlags = a4;
  }

  return result;
}

@end
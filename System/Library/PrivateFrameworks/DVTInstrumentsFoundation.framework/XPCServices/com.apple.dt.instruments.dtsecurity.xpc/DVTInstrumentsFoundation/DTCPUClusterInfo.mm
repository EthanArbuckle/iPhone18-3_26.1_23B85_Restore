@interface DTCPUClusterInfo
- (DTCPUClusterInfo)initWithClusterID:(unint64_t)d flags:(unint64_t)flags;
- (DTCPUClusterInfo)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DTCPUClusterInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    sub_10001304C(a2, self);
  }

  [coderCopy encodeInteger:self->_clusterID forKey:@"_clusterID"];
  [coderCopy encodeInteger:self->_clusterFlags forKey:@"_clusterFlags"];
}

- (DTCPUClusterInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    sub_1000130C8(a2, self);
  }

  v8.receiver = self;
  v8.super_class = DTCPUClusterInfo;
  v6 = [(DTCPUClusterInfo *)&v8 init];
  if (v6)
  {
    v6->_clusterID = [coderCopy decodeIntegerForKey:@"_clusterID"];
    v6->_clusterFlags = [coderCopy decodeIntegerForKey:@"_clusterFlags"];
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

- (DTCPUClusterInfo)initWithClusterID:(unint64_t)d flags:(unint64_t)flags
{
  v7.receiver = self;
  v7.super_class = DTCPUClusterInfo;
  result = [(DTCPUClusterInfo *)&v7 init];
  if (result)
  {
    result->_clusterID = d;
    result->_clusterFlags = flags;
  }

  return result;
}

@end
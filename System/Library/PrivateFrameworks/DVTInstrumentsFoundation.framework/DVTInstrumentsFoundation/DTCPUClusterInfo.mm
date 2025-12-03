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
    sub_24802EA50(a2, self);
  }

  [coderCopy encodeInteger:self->_clusterID forKey:@"_clusterID"];
  [coderCopy encodeInteger:self->_clusterFlags forKey:@"_clusterFlags"];
}

- (DTCPUClusterInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    sub_24802EACC(a2, self);
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
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p> cluster id: %lu, flags: 0x%lx", v5, self, self->_clusterID, self->_clusterFlags];

  return v6;
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
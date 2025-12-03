@interface BRServerMetrics
- (BRServerMetrics)initWithCoder:(id)coder;
- (BRServerMetrics)initWithServerMetrics:(id)metrics;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BRServerMetrics

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:64];
  quotaUsed = self->_quotaUsed;
  if (quotaUsed)
  {
    [v3 appendFormat:@"qta:%llu ", -[NSNumber unsignedLongLongValue](quotaUsed, "unsignedLongLongValue")];
  }

  recursiveChildCount = self->_recursiveChildCount;
  if (recursiveChildCount)
  {
    [v3 appendFormat:@"rcc:%llu ", -[NSNumber unsignedLongLongValue](recursiveChildCount, "unsignedLongLongValue")];
  }

  sharedByMeRecursiveCount = self->_sharedByMeRecursiveCount;
  if (sharedByMeRecursiveCount)
  {
    [v3 appendFormat:@"sbm:%llu ", -[NSNumber unsignedLongLongValue](sharedByMeRecursiveCount, "unsignedLongLongValue")];
  }

  sharedAliasRecursiveCount = self->_sharedAliasRecursiveCount;
  if (sharedAliasRecursiveCount)
  {
    [v3 appendFormat:@"stm:%llu ", -[NSNumber unsignedLongLongValue](sharedAliasRecursiveCount, "unsignedLongLongValue")];
  }

  childCount = self->_childCount;
  if (childCount)
  {
    [v3 appendFormat:@"cc:%llu ", -[NSNumber unsignedLongLongValue](childCount, "unsignedLongLongValue")];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithServerMetrics:self];
}

- (BRServerMetrics)initWithServerMetrics:(id)metrics
{
  metricsCopy = metrics;
  v17.receiver = self;
  v17.super_class = BRServerMetrics;
  v5 = [(BRServerMetrics *)&v17 init];
  if (v5)
  {
    quotaUsed = [metricsCopy quotaUsed];
    quotaUsed = v5->_quotaUsed;
    v5->_quotaUsed = quotaUsed;

    recursiveChildCount = [metricsCopy recursiveChildCount];
    recursiveChildCount = v5->_recursiveChildCount;
    v5->_recursiveChildCount = recursiveChildCount;

    sharedByMeRecursiveCount = [metricsCopy sharedByMeRecursiveCount];
    sharedByMeRecursiveCount = v5->_sharedByMeRecursiveCount;
    v5->_sharedByMeRecursiveCount = sharedByMeRecursiveCount;

    sharedAliasRecursiveCount = [metricsCopy sharedAliasRecursiveCount];
    sharedAliasRecursiveCount = v5->_sharedAliasRecursiveCount;
    v5->_sharedAliasRecursiveCount = sharedAliasRecursiveCount;

    childCount = [metricsCopy childCount];
    childCount = v5->_childCount;
    v5->_childCount = childCount;
  }

  return v5;
}

- (BRServerMetrics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = BRServerMetrics;
  v5 = [(BRServerMetrics *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"quota-used"];
    quotaUsed = v5->_quotaUsed;
    v5->_quotaUsed = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rec-child-count"];
    recursiveChildCount = v5->_recursiveChildCount;
    v5->_recursiveChildCount = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shared-by-me"];
    sharedByMeRecursiveCount = v5->_sharedByMeRecursiveCount;
    v5->_sharedByMeRecursiveCount = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shared-alias"];
    sharedAliasRecursiveCount = v5->_sharedAliasRecursiveCount;
    v5->_sharedAliasRecursiveCount = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"child-count"];
    childCount = v5->_childCount;
    v5->_childCount = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  quotaUsed = self->_quotaUsed;
  coderCopy = coder;
  [coderCopy encodeObject:quotaUsed forKey:@"quota-used"];
  [coderCopy encodeObject:self->_recursiveChildCount forKey:@"rec-child-count"];
  [coderCopy encodeObject:self->_sharedByMeRecursiveCount forKey:@"shared-by-me"];
  [coderCopy encodeObject:self->_sharedAliasRecursiveCount forKey:@"shared-alias"];
  [coderCopy encodeObject:self->_childCount forKey:@"child-count"];
}

@end
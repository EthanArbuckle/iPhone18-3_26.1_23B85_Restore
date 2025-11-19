@interface BRServerMetrics
- (BRServerMetrics)initWithCoder:(id)a3;
- (BRServerMetrics)initWithServerMetrics:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithServerMetrics:self];
}

- (BRServerMetrics)initWithServerMetrics:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = BRServerMetrics;
  v5 = [(BRServerMetrics *)&v17 init];
  if (v5)
  {
    v6 = [v4 quotaUsed];
    quotaUsed = v5->_quotaUsed;
    v5->_quotaUsed = v6;

    v8 = [v4 recursiveChildCount];
    recursiveChildCount = v5->_recursiveChildCount;
    v5->_recursiveChildCount = v8;

    v10 = [v4 sharedByMeRecursiveCount];
    sharedByMeRecursiveCount = v5->_sharedByMeRecursiveCount;
    v5->_sharedByMeRecursiveCount = v10;

    v12 = [v4 sharedAliasRecursiveCount];
    sharedAliasRecursiveCount = v5->_sharedAliasRecursiveCount;
    v5->_sharedAliasRecursiveCount = v12;

    v14 = [v4 childCount];
    childCount = v5->_childCount;
    v5->_childCount = v14;
  }

  return v5;
}

- (BRServerMetrics)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = BRServerMetrics;
  v5 = [(BRServerMetrics *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"quota-used"];
    quotaUsed = v5->_quotaUsed;
    v5->_quotaUsed = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rec-child-count"];
    recursiveChildCount = v5->_recursiveChildCount;
    v5->_recursiveChildCount = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shared-by-me"];
    sharedByMeRecursiveCount = v5->_sharedByMeRecursiveCount;
    v5->_sharedByMeRecursiveCount = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shared-alias"];
    sharedAliasRecursiveCount = v5->_sharedAliasRecursiveCount;
    v5->_sharedAliasRecursiveCount = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"child-count"];
    childCount = v5->_childCount;
    v5->_childCount = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  quotaUsed = self->_quotaUsed;
  v5 = a3;
  [v5 encodeObject:quotaUsed forKey:@"quota-used"];
  [v5 encodeObject:self->_recursiveChildCount forKey:@"rec-child-count"];
  [v5 encodeObject:self->_sharedByMeRecursiveCount forKey:@"shared-by-me"];
  [v5 encodeObject:self->_sharedAliasRecursiveCount forKey:@"shared-alias"];
  [v5 encodeObject:self->_childCount forKey:@"child-count"];
}

@end
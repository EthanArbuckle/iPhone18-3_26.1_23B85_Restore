@interface PSDProgress
- (PSDProgress)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PSDProgress

- (PSDProgress)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = PSDProgress;
  v5 = [(PSDProgress *)&v8 init];
  if (v5)
  {
    [coderCopy decodeFloatForKey:@"activityProgress"];
    v5->_activityProgress = v6;
    v5->_totalActivityCount = [coderCopy decodeIntegerForKey:@"totalActivityCount"];
    v5->_completedActivityCount = [coderCopy decodeIntegerForKey:@"completedActivityCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  activityProgress = self->_activityProgress;
  coderCopy = coder;
  *&v5 = activityProgress;
  [coderCopy encodeFloat:@"activityProgress" forKey:v5];
  [coderCopy encodeInteger:self->_totalActivityCount forKey:@"totalActivityCount"];
  [coderCopy encodeInteger:self->_completedActivityCount forKey:@"completedActivityCount"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [(PSDProgress *)self activityProgress];
  [v4 setActivityProgress:?];
  [v4 setTotalActivityCount:{-[PSDProgress totalActivityCount](self, "totalActivityCount")}];
  [v4 setCompletedActivityCount:{-[PSDProgress completedActivityCount](self, "completedActivityCount")}];
  return v4;
}

@end
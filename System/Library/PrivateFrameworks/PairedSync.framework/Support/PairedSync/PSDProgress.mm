@interface PSDProgress
- (PSDProgress)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PSDProgress

- (PSDProgress)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PSDProgress;
  v5 = [(PSDProgress *)&v8 init];
  if (v5)
  {
    [v4 decodeFloatForKey:@"activityProgress"];
    v5->_activityProgress = v6;
    v5->_totalActivityCount = [v4 decodeIntegerForKey:@"totalActivityCount"];
    v5->_completedActivityCount = [v4 decodeIntegerForKey:@"completedActivityCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  activityProgress = self->_activityProgress;
  v6 = a3;
  *&v5 = activityProgress;
  [v6 encodeFloat:@"activityProgress" forKey:v5];
  [v6 encodeInteger:self->_totalActivityCount forKey:@"totalActivityCount"];
  [v6 encodeInteger:self->_completedActivityCount forKey:@"completedActivityCount"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [(PSDProgress *)self activityProgress];
  [v4 setActivityProgress:?];
  [v4 setTotalActivityCount:{-[PSDProgress totalActivityCount](self, "totalActivityCount")}];
  [v4 setCompletedActivityCount:{-[PSDProgress completedActivityCount](self, "completedActivityCount")}];
  return v4;
}

@end
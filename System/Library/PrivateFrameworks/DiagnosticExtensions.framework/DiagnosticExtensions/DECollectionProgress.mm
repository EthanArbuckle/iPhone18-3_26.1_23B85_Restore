@interface DECollectionProgress
- (DECollectionProgress)initWithCoder:(id)a3;
- (DECollectionProgress)initWithPercentComplete:(double)a3 withEstimatedTimeRemaining:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DECollectionProgress

- (DECollectionProgress)initWithPercentComplete:(double)a3 withEstimatedTimeRemaining:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = DECollectionProgress;
  v8 = [(DECollectionProgress *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_percentComplete = a3;
    objc_storeStrong(&v8->_estimatedTimeRemaining, a4);
  }

  return v9;
}

- (DECollectionProgress)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DECollectionProgress *)self init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"PercentComplete"];
    v5->_percentComplete = v6;
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TimeRemaining"];
    estimatedTimeRemaining = v5->_estimatedTimeRemaining;
    v5->_estimatedTimeRemaining = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"StatusString"];
    statusString = v5->_statusString;
    v5->_statusString = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  percentComplete = self->_percentComplete;
  v5 = a3;
  [v5 encodeDouble:@"PercentComplete" forKey:percentComplete];
  [v5 encodeObject:self->_estimatedTimeRemaining forKey:@"TimeRemaining"];
  [v5 encodeObject:self->_statusString forKey:@"StatusString"];
}

@end
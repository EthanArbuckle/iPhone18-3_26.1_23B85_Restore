@interface DECollectionProgress
- (DECollectionProgress)initWithCoder:(id)coder;
- (DECollectionProgress)initWithPercentComplete:(double)complete withEstimatedTimeRemaining:(id)remaining;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DECollectionProgress

- (DECollectionProgress)initWithPercentComplete:(double)complete withEstimatedTimeRemaining:(id)remaining
{
  remainingCopy = remaining;
  v11.receiver = self;
  v11.super_class = DECollectionProgress;
  v8 = [(DECollectionProgress *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_percentComplete = complete;
    objc_storeStrong(&v8->_estimatedTimeRemaining, remaining);
  }

  return v9;
}

- (DECollectionProgress)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(DECollectionProgress *)self init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"PercentComplete"];
    v5->_percentComplete = v6;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TimeRemaining"];
    estimatedTimeRemaining = v5->_estimatedTimeRemaining;
    v5->_estimatedTimeRemaining = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"StatusString"];
    statusString = v5->_statusString;
    v5->_statusString = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  percentComplete = self->_percentComplete;
  coderCopy = coder;
  [coderCopy encodeDouble:@"PercentComplete" forKey:percentComplete];
  [coderCopy encodeObject:self->_estimatedTimeRemaining forKey:@"TimeRemaining"];
  [coderCopy encodeObject:self->_statusString forKey:@"StatusString"];
}

@end
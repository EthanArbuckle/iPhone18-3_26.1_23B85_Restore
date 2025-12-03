@interface FBKSFeedback
- (FBKSFeedback)initWithSwiftObject:(id)object;
- (NSDate)submissionDate;
- (NSString)build;
- (NSString)formIdentifier;
- (id)description;
- (int64_t)ID;
@end

@implementation FBKSFeedback

- (FBKSFeedback)initWithSwiftObject:(id)object
{
  objectCopy = object;
  if (objectCopy)
  {
    v10.receiver = self;
    v10.super_class = FBKSFeedback;
    v6 = [(FBKSFeedback *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_swiftObject, object);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NSString)formIdentifier
{
  swiftObject = [(FBKSFeedback *)self swiftObject];
  formIdentifier = [swiftObject formIdentifier];

  return formIdentifier;
}

- (NSDate)submissionDate
{
  swiftObject = [(FBKSFeedback *)self swiftObject];
  submissionDate = [swiftObject submissionDate];

  return submissionDate;
}

- (NSString)build
{
  swiftObject = [(FBKSFeedback *)self swiftObject];
  build = [swiftObject build];

  return build;
}

- (int64_t)ID
{
  swiftObject = [(FBKSFeedback *)self swiftObject];
  v3 = [swiftObject id];

  return v3;
}

- (id)description
{
  swiftObject = [(FBKSFeedback *)self swiftObject];
  v3 = [swiftObject description];

  return v3;
}

@end
@interface FBKSCampaign
- (FBKSCampaign)initWithSwiftObject:(id)object;
- (NSDate)updatedAt;
- (id)description;
- (int64_t)state;
@end

@implementation FBKSCampaign

- (FBKSCampaign)initWithSwiftObject:(id)object
{
  objectCopy = object;
  if (objectCopy)
  {
    v10.receiver = self;
    v10.super_class = FBKSCampaign;
    v6 = [(FBKSCampaign *)&v10 init];
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

- (NSDate)updatedAt
{
  swiftObject = [(FBKSCampaign *)self swiftObject];
  updatedAt = [swiftObject updatedAt];

  return updatedAt;
}

- (int64_t)state
{
  swiftObject = [(FBKSCampaign *)self swiftObject];
  state = [swiftObject state];

  return state;
}

- (id)description
{
  swiftObject = [(FBKSCampaign *)self swiftObject];
  v3 = [swiftObject description];

  return v3;
}

@end
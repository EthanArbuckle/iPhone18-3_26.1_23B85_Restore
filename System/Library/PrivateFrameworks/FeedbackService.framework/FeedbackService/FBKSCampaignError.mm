@interface FBKSCampaignError
- (FBKSCampaignError)initWithSwiftObject:(id)object;
- (NSDate)date;
- (NSString)domain;
- (NSString)errorDescription;
- (id)description;
- (int64_t)code;
@end

@implementation FBKSCampaignError

- (FBKSCampaignError)initWithSwiftObject:(id)object
{
  objectCopy = object;
  if (objectCopy)
  {
    v10.receiver = self;
    v10.super_class = FBKSCampaignError;
    v6 = [(FBKSCampaignError *)&v10 init];
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

- (NSDate)date
{
  swiftObject = [(FBKSCampaignError *)self swiftObject];
  date = [swiftObject date];

  return date;
}

- (int64_t)code
{
  swiftObject = [(FBKSCampaignError *)self swiftObject];
  code = [swiftObject code];

  return code;
}

- (NSString)domain
{
  swiftObject = [(FBKSCampaignError *)self swiftObject];
  domain = [swiftObject domain];

  return domain;
}

- (NSString)errorDescription
{
  swiftObject = [(FBKSCampaignError *)self swiftObject];
  errorDescription = [swiftObject errorDescription];

  return errorDescription;
}

- (id)description
{
  swiftObject = [(FBKSCampaignError *)self swiftObject];
  v3 = [swiftObject description];

  return v3;
}

@end
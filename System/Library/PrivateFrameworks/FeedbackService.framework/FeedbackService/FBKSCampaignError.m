@interface FBKSCampaignError
- (FBKSCampaignError)initWithSwiftObject:(id)a3;
- (NSDate)date;
- (NSString)domain;
- (NSString)errorDescription;
- (id)description;
- (int64_t)code;
@end

@implementation FBKSCampaignError

- (FBKSCampaignError)initWithSwiftObject:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = FBKSCampaignError;
    v6 = [(FBKSCampaignError *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_swiftObject, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSDate)date
{
  v2 = [(FBKSCampaignError *)self swiftObject];
  v3 = [v2 date];

  return v3;
}

- (int64_t)code
{
  v2 = [(FBKSCampaignError *)self swiftObject];
  v3 = [v2 code];

  return v3;
}

- (NSString)domain
{
  v2 = [(FBKSCampaignError *)self swiftObject];
  v3 = [v2 domain];

  return v3;
}

- (NSString)errorDescription
{
  v2 = [(FBKSCampaignError *)self swiftObject];
  v3 = [v2 errorDescription];

  return v3;
}

- (id)description
{
  v2 = [(FBKSCampaignError *)self swiftObject];
  v3 = [v2 description];

  return v3;
}

@end
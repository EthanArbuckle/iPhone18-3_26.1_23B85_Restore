@interface FBKSCampaign
- (FBKSCampaign)initWithSwiftObject:(id)a3;
- (NSDate)updatedAt;
- (id)description;
- (int64_t)state;
@end

@implementation FBKSCampaign

- (FBKSCampaign)initWithSwiftObject:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = FBKSCampaign;
    v6 = [(FBKSCampaign *)&v10 init];
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

- (NSDate)updatedAt
{
  v2 = [(FBKSCampaign *)self swiftObject];
  v3 = [v2 updatedAt];

  return v3;
}

- (int64_t)state
{
  v2 = [(FBKSCampaign *)self swiftObject];
  v3 = [v2 state];

  return v3;
}

- (id)description
{
  v2 = [(FBKSCampaign *)self swiftObject];
  v3 = [v2 description];

  return v3;
}

@end
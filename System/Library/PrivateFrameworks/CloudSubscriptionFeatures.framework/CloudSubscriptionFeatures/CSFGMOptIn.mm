@interface CSFGMOptIn
- (BOOL)isOptedIn;
- (CSFGMOptIn)init;
- (CSFGMOptIn)initWithOptInProvider:(id)provider;
- (unint64_t)state;
@end

@implementation CSFGMOptIn

- (CSFGMOptIn)init
{
  v3 = +[_TtC25CloudSubscriptionFeatures7GMOptIn shared];
  v4 = [(CSFGMOptIn *)self initWithOptInProvider:v3];

  return v4;
}

- (CSFGMOptIn)initWithOptInProvider:(id)provider
{
  providerCopy = provider;
  v8.receiver = self;
  v8.super_class = CSFGMOptIn;
  v5 = [(CSFGMOptIn *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CSFGMOptIn *)v5 setGmOptIn:providerCopy];
  }

  return v6;
}

- (BOOL)isOptedIn
{
  gmOptIn = [(CSFGMOptIn *)self gmOptIn];
  isOptedIn = [gmOptIn isOptedIn];

  return isOptedIn;
}

- (unint64_t)state
{
  gmOptIn = [(CSFGMOptIn *)self gmOptIn];
  state = [gmOptIn state];

  if (state == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (state == 2);
  }
}

@end
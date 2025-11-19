@interface CSFGMOptIn
- (BOOL)isOptedIn;
- (CSFGMOptIn)init;
- (CSFGMOptIn)initWithOptInProvider:(id)a3;
- (unint64_t)state;
@end

@implementation CSFGMOptIn

- (CSFGMOptIn)init
{
  v3 = +[_TtC25CloudSubscriptionFeatures7GMOptIn shared];
  v4 = [(CSFGMOptIn *)self initWithOptInProvider:v3];

  return v4;
}

- (CSFGMOptIn)initWithOptInProvider:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CSFGMOptIn;
  v5 = [(CSFGMOptIn *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CSFGMOptIn *)v5 setGmOptIn:v4];
  }

  return v6;
}

- (BOOL)isOptedIn
{
  v2 = [(CSFGMOptIn *)self gmOptIn];
  v3 = [v2 isOptedIn];

  return v3;
}

- (unint64_t)state
{
  v2 = [(CSFGMOptIn *)self gmOptIn];
  v3 = [v2 state];

  if (v3 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (v3 == 2);
  }
}

@end
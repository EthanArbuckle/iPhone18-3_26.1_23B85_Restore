@interface JTSuspendedInteractionRequest
+ (id)requestWithTag:(id)a3 excludedViewControllers:(id)a4;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation JTSuspendedInteractionRequest

+ (id)requestWithTag:(id)a3 excludedViewControllers:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setTag:v6];

  [v7 setExcludedChildViewControllers:v5];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(JTSuspendedInteractionRequest *)self tag];
      v6 = [(JTSuspendedInteractionRequest *)v4 tag];
      v7 = [v5 isEqualToString:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(JTSuspendedInteractionRequest *)self tag];
  v3 = [v2 hash];

  return v3;
}

@end
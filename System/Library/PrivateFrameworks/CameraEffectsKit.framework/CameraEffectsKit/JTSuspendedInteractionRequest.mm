@interface JTSuspendedInteractionRequest
+ (id)requestWithTag:(id)tag excludedViewControllers:(id)controllers;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation JTSuspendedInteractionRequest

+ (id)requestWithTag:(id)tag excludedViewControllers:(id)controllers
{
  controllersCopy = controllers;
  tagCopy = tag;
  v7 = objc_opt_new();
  [v7 setTag:tagCopy];

  [v7 setExcludedChildViewControllers:controllersCopy];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(JTSuspendedInteractionRequest *)self tag];
      v6 = [(JTSuspendedInteractionRequest *)equalCopy tag];
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
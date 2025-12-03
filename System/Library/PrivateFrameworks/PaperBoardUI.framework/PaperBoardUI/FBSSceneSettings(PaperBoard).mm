@interface FBSSceneSettings(PaperBoard)
- (uint64_t)pb_activeVariant;
- (uint64_t)pb_animationSuspended;
- (uint64_t)pb_significantEventsCounter;
@end

@implementation FBSSceneSettings(PaperBoard)

- (uint64_t)pb_activeVariant
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:303000];

  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  integerValue = [v6 integerValue];
  return integerValue;
}

- (uint64_t)pb_significantEventsCounter
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:20489];

  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  unsignedIntegerValue = [v6 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (uint64_t)pb_animationSuspended
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings BOOLForSetting:303001];

  return v2;
}

@end
@interface HMService(AccessoryLikeObjectDataSource)
- (id)hf_rootAccessoryLikeHomeKitObject;
@end

@implementation HMService(AccessoryLikeObjectDataSource)

- (id)hf_rootAccessoryLikeHomeKitObject
{
  v2 = [a1 hf_serviceGroup];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 hf_rootAccessoryLikeHomeKitObject];
    goto LABEL_12;
  }

  v5 = [a1 accessory];
  if ([v5 hf_showAsAccessoryTile])
  {
    v6 = [a1 accessory];
    v7 = [v6 hf_isHomePod];

    if (v7)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  v8 = [a1 accessory];
  if ([v8 hf_showAsAccessoryTile])
  {
    v9 = [a1 accessory];
    v10 = [v9 hf_primaryService];
    v11 = [v10 serviceType];
    v12 = [a1 serviceType];
    v13 = [v11 isEqualToString:v12];

    if (v13)
    {
      v4 = [a1 accessory];
      goto LABEL_12;
    }
  }

  else
  {
  }

LABEL_11:
  v4 = a1;
LABEL_12:
  v14 = v4;

  return v14;
}

@end
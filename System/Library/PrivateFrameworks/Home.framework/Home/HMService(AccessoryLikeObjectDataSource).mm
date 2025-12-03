@interface HMService(AccessoryLikeObjectDataSource)
- (id)hf_rootAccessoryLikeHomeKitObject;
@end

@implementation HMService(AccessoryLikeObjectDataSource)

- (id)hf_rootAccessoryLikeHomeKitObject
{
  hf_serviceGroup = [self hf_serviceGroup];
  v3 = hf_serviceGroup;
  if (hf_serviceGroup)
  {
    selfCopy = [hf_serviceGroup hf_rootAccessoryLikeHomeKitObject];
    goto LABEL_12;
  }

  accessory = [self accessory];
  if ([accessory hf_showAsAccessoryTile])
  {
    accessory2 = [self accessory];
    hf_isHomePod = [accessory2 hf_isHomePod];

    if (hf_isHomePod)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  accessory3 = [self accessory];
  if ([accessory3 hf_showAsAccessoryTile])
  {
    accessory4 = [self accessory];
    hf_primaryService = [accessory4 hf_primaryService];
    serviceType = [hf_primaryService serviceType];
    serviceType2 = [self serviceType];
    v13 = [serviceType isEqualToString:serviceType2];

    if (v13)
    {
      selfCopy = [self accessory];
      goto LABEL_12;
    }
  }

  else
  {
  }

LABEL_11:
  selfCopy = self;
LABEL_12:
  v14 = selfCopy;

  return v14;
}

@end
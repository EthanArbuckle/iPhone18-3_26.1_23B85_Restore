@interface HFHomeKitTransformItem
- (HFHomeKitObject)homeKitObject;
- (id)accessories;
@end

@implementation HFHomeKitTransformItem

- (HFHomeKitObject)homeKitObject
{
  sourceHomeKitItem = [(HFHomeKitTransformItem *)self sourceHomeKitItem];
  homeKitObject = [sourceHomeKitItem homeKitObject];

  return homeKitObject;
}

- (id)accessories
{
  sourceHomeKitItem = [(HFHomeKitTransformItem *)self sourceHomeKitItem];
  if ([sourceHomeKitItem conformsToProtocol:&unk_28252AAD0])
  {
    v3 = sourceHomeKitItem;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  accessories = [v4 accessories];

  if ([accessories count])
  {
    v6 = accessories;
  }

  else
  {
    v6 = [MEMORY[0x277CBEB98] set];
  }

  v7 = v6;

  return v7;
}

@end
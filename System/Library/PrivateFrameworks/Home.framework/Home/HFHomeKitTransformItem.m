@interface HFHomeKitTransformItem
- (HFHomeKitObject)homeKitObject;
- (id)accessories;
@end

@implementation HFHomeKitTransformItem

- (HFHomeKitObject)homeKitObject
{
  v2 = [(HFHomeKitTransformItem *)self sourceHomeKitItem];
  v3 = [v2 homeKitObject];

  return v3;
}

- (id)accessories
{
  v2 = [(HFHomeKitTransformItem *)self sourceHomeKitItem];
  if ([v2 conformsToProtocol:&unk_28252AAD0])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 accessories];

  if ([v5 count])
  {
    v6 = v5;
  }

  else
  {
    v6 = [MEMORY[0x277CBEB98] set];
  }

  v7 = v6;

  return v7;
}

@end
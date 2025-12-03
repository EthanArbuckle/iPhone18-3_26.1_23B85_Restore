@interface HFAccessoryRepresentableTransformItem
- (HFAccessoryRepresentable)accessoryRepresentableObject;
- (HFHomeKitObject)homeKitObject;
@end

@implementation HFAccessoryRepresentableTransformItem

- (HFAccessoryRepresentable)accessoryRepresentableObject
{
  sourceItem = [(HFTransformItem *)self sourceItem];
  accessoryRepresentableObject = [sourceItem accessoryRepresentableObject];

  return accessoryRepresentableObject;
}

- (HFHomeKitObject)homeKitObject
{
  sourceItem = [(HFTransformItem *)self sourceItem];
  homeKitObject = [sourceItem homeKitObject];

  return homeKitObject;
}

@end
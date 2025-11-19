@interface HFAccessoryRepresentableTransformItem
- (HFAccessoryRepresentable)accessoryRepresentableObject;
- (HFHomeKitObject)homeKitObject;
@end

@implementation HFAccessoryRepresentableTransformItem

- (HFAccessoryRepresentable)accessoryRepresentableObject
{
  v2 = [(HFTransformItem *)self sourceItem];
  v3 = [v2 accessoryRepresentableObject];

  return v3;
}

- (HFHomeKitObject)homeKitObject
{
  v2 = [(HFTransformItem *)self sourceItem];
  v3 = [v2 homeKitObject];

  return v3;
}

@end
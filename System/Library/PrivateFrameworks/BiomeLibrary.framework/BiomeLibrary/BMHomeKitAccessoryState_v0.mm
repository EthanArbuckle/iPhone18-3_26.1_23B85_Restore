@interface BMHomeKitAccessoryState_v0
- (int)valuetype;
@end

@implementation BMHomeKitAccessoryState_v0

- (int)valuetype
{
  v4.receiver = self;
  v4.super_class = BMHomeKitAccessoryState_v0;
  valueType = [(BMHomeKitAccessoryState *)&v4 valueType];
  if (valueType < 3)
  {
    return valueType + 1;
  }

  else
  {
    return 0;
  }
}

@end
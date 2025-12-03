@interface BMHomeKitClientAccessoryControl_v0
- (id)accessoryState;
@end

@implementation BMHomeKitClientAccessoryControl_v0

- (id)accessoryState
{
  v12.receiver = self;
  v12.super_class = BMHomeKitClientAccessoryControl_v0;
  accessoryState = [(BMHomeKitClientAccessoryControl *)&v12 accessoryState];
  v3 = [BMHomeKitAccessoryState_v0 alloc];
  mediaPropertyType = [accessoryState mediaPropertyType];
  valueType = [accessoryState valueType];
  dataValue = [accessoryState dataValue];
  stringValue = [accessoryState stringValue];
  v8 = MEMORY[0x1E696AD98];
  [accessoryState numValue];
  v9 = [v8 numberWithDouble:?];
  v10 = [(BMHomeKitAccessoryState *)v3 initWithMediaPropertyType:mediaPropertyType valueType:valueType dataValue:dataValue stringValue:stringValue numValue:v9];

  return v10;
}

@end
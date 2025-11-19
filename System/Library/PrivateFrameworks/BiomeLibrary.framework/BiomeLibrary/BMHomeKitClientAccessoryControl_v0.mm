@interface BMHomeKitClientAccessoryControl_v0
- (id)accessoryState;
@end

@implementation BMHomeKitClientAccessoryControl_v0

- (id)accessoryState
{
  v12.receiver = self;
  v12.super_class = BMHomeKitClientAccessoryControl_v0;
  v2 = [(BMHomeKitClientAccessoryControl *)&v12 accessoryState];
  v3 = [BMHomeKitAccessoryState_v0 alloc];
  v4 = [v2 mediaPropertyType];
  v5 = [v2 valueType];
  v6 = [v2 dataValue];
  v7 = [v2 stringValue];
  v8 = MEMORY[0x1E696AD98];
  [v2 numValue];
  v9 = [v8 numberWithDouble:?];
  v10 = [(BMHomeKitAccessoryState *)v3 initWithMediaPropertyType:v4 valueType:v5 dataValue:v6 stringValue:v7 numValue:v9];

  return v10;
}

@end
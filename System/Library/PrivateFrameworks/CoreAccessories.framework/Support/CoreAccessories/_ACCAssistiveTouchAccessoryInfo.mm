@interface _ACCAssistiveTouchAccessoryInfo
- (_ACCAssistiveTouchAccessoryInfo)initWithUID:(id)a3;
- (void)dealloc;
@end

@implementation _ACCAssistiveTouchAccessoryInfo

- (_ACCAssistiveTouchAccessoryInfo)initWithUID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _ACCAssistiveTouchAccessoryInfo;
  v5 = [(_ACCAssistiveTouchAccessoryInfo *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    accessoryUID = v5->_accessoryUID;
    v5->_accessoryUID = v6;
  }

  return v5;
}

- (void)dealloc
{
  accessoryUID = self->_accessoryUID;
  self->_accessoryUID = 0;

  v4.receiver = self;
  v4.super_class = _ACCAssistiveTouchAccessoryInfo;
  [(_ACCAssistiveTouchAccessoryInfo *)&v4 dealloc];
}

@end
@interface _ACCVoiceOverAccessoryInfo
- (_ACCVoiceOverAccessoryInfo)initWithUID:(id)d;
- (void)dealloc;
@end

@implementation _ACCVoiceOverAccessoryInfo

- (_ACCVoiceOverAccessoryInfo)initWithUID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = _ACCVoiceOverAccessoryInfo;
  v6 = [(_ACCVoiceOverAccessoryInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accessoryUID, d);
  }

  return v7;
}

- (void)dealloc
{
  accessoryUID = self->_accessoryUID;
  self->_accessoryUID = 0;

  v4.receiver = self;
  v4.super_class = _ACCVoiceOverAccessoryInfo;
  [(_ACCVoiceOverAccessoryInfo *)&v4 dealloc];
}

@end
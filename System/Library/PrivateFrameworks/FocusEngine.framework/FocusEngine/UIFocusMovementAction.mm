@interface UIFocusMovementAction
- (BOOL)shouldPerformHapticFeedback;
- (CGRect)focusedFrame;
- (UIFocusMovementAction)initWithFocusMovementInfo:(id)info;
- (UIFocusMovementAction)initWithFocusMovementInfo:(id)info inputDeviceInfo:(id)deviceInfo shouldPerformHapticFeedback:(BOOL)feedback focusedFrameInSceneCoordinateSpace:(CGRect)space;
- (_UIFocusInputDeviceInfo)inputDeviceInfo;
- (_UIFocusMovementInfo)focusMovementInfo;
@end

@implementation UIFocusMovementAction

- (UIFocusMovementAction)initWithFocusMovementInfo:(id)info
{
  infoCopy = info;
  v5 = [_UIFocusInputDeviceInfo infoWithSenderID:0];
  v6 = [(UIFocusMovementAction *)self initWithFocusMovementInfo:infoCopy inputDeviceInfo:v5 shouldPerformHapticFeedback:0];

  return v6;
}

- (UIFocusMovementAction)initWithFocusMovementInfo:(id)info inputDeviceInfo:(id)deviceInfo shouldPerformHapticFeedback:(BOOL)feedback focusedFrameInSceneCoordinateSpace:(CGRect)space
{
  height = space.size.height;
  width = space.size.width;
  y = space.origin.y;
  x = space.origin.x;
  feedbackCopy = feedback;
  v13 = MEMORY[0x277CF0C80];
  deviceInfoCopy = deviceInfo;
  infoCopy = info;
  v16 = objc_alloc_init(v13);
  [v16 setObject:infoCopy forSetting:1];

  [v16 setObject:deviceInfoCopy forSetting:2];
  v17 = [MEMORY[0x277CCABB0] numberWithBool:feedbackCopy];
  [v16 setObject:v17 forSetting:3];

  v18 = [MEMORY[0x277CCAE60] bs_valueWithCGRect:{x, y, width, height}];
  [v16 setObject:v18 forSetting:4];

  v21.receiver = self;
  v21.super_class = UIFocusMovementAction;
  v19 = [(UIFocusMovementAction *)&v21 initWithInfo:v16 timeout:0 forResponseOnQueue:0 withHandler:0.0];

  return v19;
}

- (_UIFocusMovementInfo)focusMovementInfo
{
  info = [(UIFocusMovementAction *)self info];
  v3 = [info objectForSetting:1];

  return v3;
}

- (_UIFocusInputDeviceInfo)inputDeviceInfo
{
  info = [(UIFocusMovementAction *)self info];
  v3 = [info objectForSetting:2];

  return v3;
}

- (BOOL)shouldPerformHapticFeedback
{
  info = [(UIFocusMovementAction *)self info];
  v3 = [info objectForSetting:3];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (CGRect)focusedFrame
{
  info = [(UIFocusMovementAction *)self info];
  v3 = [info objectForSetting:4];
  [v3 bs_CGRectValue];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

@end
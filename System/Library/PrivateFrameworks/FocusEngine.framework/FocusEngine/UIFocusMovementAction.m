@interface UIFocusMovementAction
- (BOOL)shouldPerformHapticFeedback;
- (CGRect)focusedFrame;
- (UIFocusMovementAction)initWithFocusMovementInfo:(id)a3;
- (UIFocusMovementAction)initWithFocusMovementInfo:(id)a3 inputDeviceInfo:(id)a4 shouldPerformHapticFeedback:(BOOL)a5 focusedFrameInSceneCoordinateSpace:(CGRect)a6;
- (_UIFocusInputDeviceInfo)inputDeviceInfo;
- (_UIFocusMovementInfo)focusMovementInfo;
@end

@implementation UIFocusMovementAction

- (UIFocusMovementAction)initWithFocusMovementInfo:(id)a3
{
  v4 = a3;
  v5 = [_UIFocusInputDeviceInfo infoWithSenderID:0];
  v6 = [(UIFocusMovementAction *)self initWithFocusMovementInfo:v4 inputDeviceInfo:v5 shouldPerformHapticFeedback:0];

  return v6;
}

- (UIFocusMovementAction)initWithFocusMovementInfo:(id)a3 inputDeviceInfo:(id)a4 shouldPerformHapticFeedback:(BOOL)a5 focusedFrameInSceneCoordinateSpace:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v10 = a5;
  v13 = MEMORY[0x277CF0C80];
  v14 = a4;
  v15 = a3;
  v16 = objc_alloc_init(v13);
  [v16 setObject:v15 forSetting:1];

  [v16 setObject:v14 forSetting:2];
  v17 = [MEMORY[0x277CCABB0] numberWithBool:v10];
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
  v2 = [(UIFocusMovementAction *)self info];
  v3 = [v2 objectForSetting:1];

  return v3;
}

- (_UIFocusInputDeviceInfo)inputDeviceInfo
{
  v2 = [(UIFocusMovementAction *)self info];
  v3 = [v2 objectForSetting:2];

  return v3;
}

- (BOOL)shouldPerformHapticFeedback
{
  v2 = [(UIFocusMovementAction *)self info];
  v3 = [v2 objectForSetting:3];
  v4 = [v3 BOOLValue];

  return v4;
}

- (CGRect)focusedFrame
{
  v2 = [(UIFocusMovementAction *)self info];
  v3 = [v2 objectForSetting:4];
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
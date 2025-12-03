@interface UIApplication(SUUIMedusaAdditions)
- (BOOL)SUUI_isFullscreen;
@end

@implementation UIApplication(SUUIMedusaAdditions)

- (BOOL)SUUI_isFullscreen
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v4 = v3;
  v6 = v5;

  keyWindow = [self keyWindow];
  [keyWindow bounds];
  v9 = v8;
  v11 = v10;

  return v4 + v6 == v9 + v11;
}

@end
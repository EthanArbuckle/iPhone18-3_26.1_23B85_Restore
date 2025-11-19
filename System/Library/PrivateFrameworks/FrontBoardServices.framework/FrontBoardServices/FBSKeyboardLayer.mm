@interface FBSKeyboardLayer
- (FBSKeyboardLayer)initWithTrackingContext:(id)a3;
@end

@implementation FBSKeyboardLayer

- (FBSKeyboardLayer)initWithTrackingContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = FBSKeyboardLayer;
  return [(FBSSceneLayer *)&v4 initWithKeyboardContext:a3];
}

@end
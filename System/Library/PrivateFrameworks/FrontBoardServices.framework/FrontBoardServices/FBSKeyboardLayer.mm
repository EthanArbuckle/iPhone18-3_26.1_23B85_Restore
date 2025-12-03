@interface FBSKeyboardLayer
- (FBSKeyboardLayer)initWithTrackingContext:(id)context;
@end

@implementation FBSKeyboardLayer

- (FBSKeyboardLayer)initWithTrackingContext:(id)context
{
  v4.receiver = self;
  v4.super_class = FBSKeyboardLayer;
  return [(FBSSceneLayer *)&v4 initWithKeyboardContext:context];
}

@end
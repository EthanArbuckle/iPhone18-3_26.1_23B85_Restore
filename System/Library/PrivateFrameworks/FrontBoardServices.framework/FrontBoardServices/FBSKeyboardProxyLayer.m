@interface FBSKeyboardProxyLayer
- (FBSKeyboardProxyLayer)initWithLevel:(double)a3 keyboardOwner:(id)a4;
@end

@implementation FBSKeyboardProxyLayer

- (FBSKeyboardProxyLayer)initWithLevel:(double)a3 keyboardOwner:(id)a4
{
  v5.receiver = self;
  v5.super_class = FBSKeyboardProxyLayer;
  return [(FBSSceneLayer *)&v5 initWithKeyboardOwner:a4 level:a3];
}

@end
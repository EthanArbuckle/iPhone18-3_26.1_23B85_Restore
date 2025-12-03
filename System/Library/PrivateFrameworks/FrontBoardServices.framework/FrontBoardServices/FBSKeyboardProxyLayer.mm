@interface FBSKeyboardProxyLayer
- (FBSKeyboardProxyLayer)initWithLevel:(double)level keyboardOwner:(id)owner;
@end

@implementation FBSKeyboardProxyLayer

- (FBSKeyboardProxyLayer)initWithLevel:(double)level keyboardOwner:(id)owner
{
  v5.receiver = self;
  v5.super_class = FBSKeyboardProxyLayer;
  return [(FBSSceneLayer *)&v5 initWithKeyboardOwner:owner level:level];
}

@end
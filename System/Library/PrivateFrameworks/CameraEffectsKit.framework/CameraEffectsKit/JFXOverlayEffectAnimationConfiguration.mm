@interface JFXOverlayEffectAnimationConfiguration
- (JFXOverlayEffectAnimationConfiguration)initWithStartFrame:(id)a3 endFrame:(id)a4;
@end

@implementation JFXOverlayEffectAnimationConfiguration

- (JFXOverlayEffectAnimationConfiguration)initWithStartFrame:(id)a3 endFrame:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = JFXOverlayEffectAnimationConfiguration;
  v9 = [(JFXOverlayEffectAnimationConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startFrame, a3);
    objc_storeStrong(&v10->_endFrame, a4);
  }

  return v10;
}

@end
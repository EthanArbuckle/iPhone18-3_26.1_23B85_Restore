@interface JFXOverlayEffectAnimationConfiguration
- (JFXOverlayEffectAnimationConfiguration)initWithStartFrame:(id)frame endFrame:(id)endFrame;
@end

@implementation JFXOverlayEffectAnimationConfiguration

- (JFXOverlayEffectAnimationConfiguration)initWithStartFrame:(id)frame endFrame:(id)endFrame
{
  frameCopy = frame;
  endFrameCopy = endFrame;
  v12.receiver = self;
  v12.super_class = JFXOverlayEffectAnimationConfiguration;
  v9 = [(JFXOverlayEffectAnimationConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startFrame, frame);
    objc_storeStrong(&v10->_endFrame, endFrame);
  }

  return v10;
}

@end
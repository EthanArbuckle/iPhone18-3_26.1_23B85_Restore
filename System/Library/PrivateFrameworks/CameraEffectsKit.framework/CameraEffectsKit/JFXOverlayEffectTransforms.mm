@interface JFXOverlayEffectTransforms
+ (id)transformsWithEffect:(id)effect;
+ (id)transformsWithTransform:(id)transform transformAnimation:(id)animation faceTrackingTransform:(id)trackingTransform;
- (JFXOverlayEffectTransforms)initWithEffect:(id)effect;
- (JFXOverlayEffectTransforms)initWithTransform:(id)transform transformAnimation:(id)animation faceTrackingTransform:(id)trackingTransform;
- (void)applyToEffect:(id)effect;
@end

@implementation JFXOverlayEffectTransforms

+ (id)transformsWithTransform:(id)transform transformAnimation:(id)animation faceTrackingTransform:(id)trackingTransform
{
  trackingTransformCopy = trackingTransform;
  animationCopy = animation;
  transformCopy = transform;
  v11 = [[self alloc] initWithTransform:transformCopy transformAnimation:animationCopy faceTrackingTransform:trackingTransformCopy];

  return v11;
}

+ (id)transformsWithEffect:(id)effect
{
  effectCopy = effect;
  v5 = [[self alloc] initWithEffect:effectCopy];

  return v5;
}

- (JFXOverlayEffectTransforms)initWithTransform:(id)transform transformAnimation:(id)animation faceTrackingTransform:(id)trackingTransform
{
  animationCopy = animation;
  trackingTransformCopy = trackingTransform;
  v16.receiver = self;
  v16.super_class = JFXOverlayEffectTransforms;
  v10 = [(JFXTextEffectTransforms *)&v16 initWithTransform:transform];
  if (v10)
  {
    v11 = [animationCopy copy];
    transformAnimation = v10->_transformAnimation;
    v10->_transformAnimation = v11;

    v13 = [trackingTransformCopy copy];
    faceTrackingTransform = v10->_faceTrackingTransform;
    v10->_faceTrackingTransform = v13;
  }

  return v10;
}

- (JFXOverlayEffectTransforms)initWithEffect:(id)effect
{
  effectCopy = effect;
  topLevelTransformObject = [effectCopy topLevelTransformObject];
  transformAnimation = [effectCopy transformAnimation];
  faceTrackingTransform = [effectCopy faceTrackingTransform];

  v8 = [(JFXOverlayEffectTransforms *)self initWithTransform:topLevelTransformObject transformAnimation:transformAnimation faceTrackingTransform:faceTrackingTransform];
  return v8;
}

- (void)applyToEffect:(id)effect
{
  v7.receiver = self;
  v7.super_class = JFXOverlayEffectTransforms;
  effectCopy = effect;
  [(JFXTextEffectTransforms *)&v7 applyToEffect:effectCopy];
  v5 = [(JFXOverlayEffectTransforms *)self transformAnimation:v7.receiver];
  [effectCopy setTransformAnimation:v5];

  faceTrackingTransform = [(JFXOverlayEffectTransforms *)self faceTrackingTransform];
  [effectCopy setFaceTrackingTransform:faceTrackingTransform];
}

@end
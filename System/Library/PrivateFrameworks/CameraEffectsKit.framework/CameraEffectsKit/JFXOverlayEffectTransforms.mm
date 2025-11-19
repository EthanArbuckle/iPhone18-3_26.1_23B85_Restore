@interface JFXOverlayEffectTransforms
+ (id)transformsWithEffect:(id)a3;
+ (id)transformsWithTransform:(id)a3 transformAnimation:(id)a4 faceTrackingTransform:(id)a5;
- (JFXOverlayEffectTransforms)initWithEffect:(id)a3;
- (JFXOverlayEffectTransforms)initWithTransform:(id)a3 transformAnimation:(id)a4 faceTrackingTransform:(id)a5;
- (void)applyToEffect:(id)a3;
@end

@implementation JFXOverlayEffectTransforms

+ (id)transformsWithTransform:(id)a3 transformAnimation:(id)a4 faceTrackingTransform:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithTransform:v10 transformAnimation:v9 faceTrackingTransform:v8];

  return v11;
}

+ (id)transformsWithEffect:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithEffect:v4];

  return v5;
}

- (JFXOverlayEffectTransforms)initWithTransform:(id)a3 transformAnimation:(id)a4 faceTrackingTransform:(id)a5
{
  v8 = a4;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = JFXOverlayEffectTransforms;
  v10 = [(JFXTextEffectTransforms *)&v16 initWithTransform:a3];
  if (v10)
  {
    v11 = [v8 copy];
    transformAnimation = v10->_transformAnimation;
    v10->_transformAnimation = v11;

    v13 = [v9 copy];
    faceTrackingTransform = v10->_faceTrackingTransform;
    v10->_faceTrackingTransform = v13;
  }

  return v10;
}

- (JFXOverlayEffectTransforms)initWithEffect:(id)a3
{
  v4 = a3;
  v5 = [v4 topLevelTransformObject];
  v6 = [v4 transformAnimation];
  v7 = [v4 faceTrackingTransform];

  v8 = [(JFXOverlayEffectTransforms *)self initWithTransform:v5 transformAnimation:v6 faceTrackingTransform:v7];
  return v8;
}

- (void)applyToEffect:(id)a3
{
  v7.receiver = self;
  v7.super_class = JFXOverlayEffectTransforms;
  v4 = a3;
  [(JFXTextEffectTransforms *)&v7 applyToEffect:v4];
  v5 = [(JFXOverlayEffectTransforms *)self transformAnimation:v7.receiver];
  [v4 setTransformAnimation:v5];

  v6 = [(JFXOverlayEffectTransforms *)self faceTrackingTransform];
  [v4 setFaceTrackingTransform:v6];
}

@end
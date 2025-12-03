@interface CAMAnimationHelper
+ (id)_animationWithKeyPath:(id)path;
+ (id)highlightTransformAnimation;
+ (void)animateLayer:(id)layer toFrame:(CGRect)frame fromCurrentState:(BOOL)state;
+ (void)configurePowerSensitiveAnimation:(id)animation;
+ (void)setLayer:(id)layer highlighted:(BOOL)highlighted inverted:(BOOL)inverted animated:(BOOL)animated layoutStyle:(int64_t)style;
@end

@implementation CAMAnimationHelper

+ (void)animateLayer:(id)layer toFrame:(CGRect)frame fromCurrentState:(BOOL)state
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  layerCopy = layer;
  presentationLayer = [layerCopy presentationLayer];
  if (presentationLayer && state)
  {
    presentationLayer2 = [layerCopy presentationLayer];
    v13 = [presentationLayer2 valueForKeyPath:@"position"];
  }

  else
  {
    v13 = [layerCopy valueForKeyPath:@"position"];
  }

  presentationLayer3 = [layerCopy presentationLayer];
  if (presentationLayer3 && state)
  {
    presentationLayer4 = [layerCopy presentationLayer];
    v16 = [presentationLayer4 valueForKeyPath:@"bounds"];
  }

  else
  {
    v16 = [layerCopy valueForKeyPath:@"bounds"];
  }

  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  MidX = CGRectGetMidX(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  MidY = CGRectGetMidY(v26);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v19 = CGRectGetWidth(v27);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  v20 = CGRectGetHeight(v28);
  [layerCopy setPosition:{MidX, MidY}];
  [layerCopy setBounds:{0.0, 0.0, v19, v20}];
  v21 = [self _animationWithKeyPath:@"position"];
  [v21 setFromValue:v13];
  v22 = [self _animationWithKeyPath:@"bounds"];
  [v22 setFromValue:v16];
  [layerCopy addAnimation:v21 forKey:@"positionAnimation"];
  [layerCopy addAnimation:v22 forKey:@"boundsAnimation"];
}

+ (id)_animationWithKeyPath:(id)path
{
  v3 = [MEMORY[0x1E69794A8] animationWithKeyPath:path];
  [v3 setMass:2.0];
  [v3 setStiffness:300.0];
  [v3 setDamping:400.0];
  [v3 setVelocity:0.0];
  UIAnimationDragCoefficient();
  [v3 setDuration:v4 * 0.91];
  LODWORD(v5) = 1043928040;
  LODWORD(v6) = 1058272560;
  LODWORD(v7) = 1063980840;
  v8 = [MEMORY[0x1E69793D0] functionWithControlPoints:v5 :0.0 :v6 :v7];
  [v3 setTimingFunction:v8];

  [v3 setFillMode:*MEMORY[0x1E69797E0]];

  return v3;
}

+ (void)setLayer:(id)layer highlighted:(BOOL)highlighted inverted:(BOOL)inverted animated:(BOOL)animated layoutStyle:(int64_t)style
{
  animatedCopy = animated;
  invertedCopy = inverted;
  highlightedCopy = highlighted;
  layerCopy = layer;
  presentationLayer = [layerCopy presentationLayer];
  v14 = presentationLayer;
  if (presentationLayer)
  {
    v15 = presentationLayer;
  }

  else
  {
    v15 = layerCopy;
  }

  v16 = v15;

  v17 = [v16 valueForKeyPath:@"transform.scale.xy"];
  [v17 doubleValue];
  v19 = v18;

  memset(&v32, 0, sizeof(v32));
  v20 = [v16 valueForKeyPath:@"transform"];
  v21 = v20;
  if (v20)
  {
    [v20 CATransform3DValue];
  }

  else
  {
    memset(&v32, 0, sizeof(v32));
  }

  memset(&v31, 0, sizeof(v31));
  CATransform3DMakeScale(&v31, v19, v19, 1.0);
  memset(&v30, 0, sizeof(v30));
  a = v31;
  CATransform3DInvert(&b, &a);
  a = v32;
  CATransform3DConcat(&v30, &a, &b);
  if (highlightedCopy)
  {
    [self highlightScaleForLayoutStyle:style];
    memset(&b.m21, 0, 96);
    if (invertedCopy)
    {
      v22 = 1.0 / v22;
    }

    memset(&b, 0, 32);
    CATransform3DMakeScale(&b, v22, v22, 1.0);
    v27 = v30;
    v26 = b;
    CATransform3DConcat(&a, &v27, &v26);
    v30 = a;
  }

  if (animatedCopy)
  {
    highlightTransformAnimation = [self highlightTransformAnimation];
    b = v32;
    v24 = [MEMORY[0x1E696B098] valueWithCATransform3D:&b];
    [highlightTransformAnimation setFromValue:v24];

    b = v30;
    v25 = [MEMORY[0x1E696B098] valueWithCATransform3D:&b];
    [highlightTransformAnimation setToValue:v25];

    [layerCopy addAnimation:highlightTransformAnimation forKey:@"highlightScaleAnimation"];
  }

  b = v30;
  [layerCopy setTransform:&b];
}

+ (id)highlightTransformAnimation
{
  UIAnimationDragCoefficient();
  v3 = v2;
  v4 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform"];
  [v4 setMass:0.8];
  [v4 setVelocity:0.0];
  [v4 setDamping:12.0 / v3];
  [v4 setStiffness:300.0 / (v3 * v3)];
  [v4 durationForEpsilon:0.01];
  [v4 setDuration:?];
  LODWORD(v5) = 1041865114;
  LODWORD(v6) = 0.5;
  LODWORD(v7) = 1.0;
  v8 = [MEMORY[0x1E69793D0] functionWithControlPoints:v5 :0.0 :v6 :v7];
  [v4 setTimingFunction:v8];

  return v4;
}

+ (void)configurePowerSensitiveAnimation:(id)animation
{
  animationCopy = animation;
  [animationCopy setFrameInterval:0.0166666667];
  [animationCopy setDiscretizesTime:1];
}

@end
@interface CFXAnimationHelper
+ (id)_animationWithKeyPath:(id)path;
+ (void)animateLayer:(id)layer forButtonHighlighted:(BOOL)highlighted layoutStyle:(int64_t)style;
+ (void)animateLayer:(id)layer toFrame:(CGRect)frame fromCurrentState:(BOOL)state;
+ (void)configurePowerSensitiveAnimation:(id)animation;
@end

@implementation CFXAnimationHelper

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
  v3 = [MEMORY[0x277CD9FA0] animationWithKeyPath:path];
  [v3 setMass:2.0];
  [v3 setStiffness:300.0];
  [v3 setDamping:400.0];
  [v3 setVelocity:0.0];
  UIAnimationDragCoefficient();
  [v3 setDuration:v4 * 0.91];
  LODWORD(v5) = 1043928040;
  LODWORD(v6) = 1058272560;
  LODWORD(v7) = 1063980840;
  v8 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v5 :0.0 :v6 :v7];
  [v3 setTimingFunction:v8];

  [v3 setFillMode:*MEMORY[0x277CDA230]];

  return v3;
}

+ (void)animateLayer:(id)layer forButtonHighlighted:(BOOL)highlighted layoutStyle:(int64_t)style
{
  highlightedCopy = highlighted;
  layerCopy = layer;
  UIAnimationDragCoefficient();
  v10 = v9;
  v11 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"transform"];
  [v11 setMass:0.8];
  [v11 setVelocity:0.0];
  [v11 setDamping:12.0 / v10];
  [v11 setStiffness:300.0 / (v10 * v10)];
  [v11 durationForEpsilon:0.01];
  [v11 setDuration:?];
  LODWORD(v12) = 1041865114;
  LODWORD(v13) = 0.5;
  LODWORD(v14) = 1.0;
  v15 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v12 :0.0 :v13 :v14];
  [v11 setTimingFunction:v15];

  presentationLayer = [layerCopy presentationLayer];
  v17 = presentationLayer;
  if (presentationLayer)
  {
    v18 = presentationLayer;
  }

  else
  {
    v18 = layerCopy;
  }

  v19 = v18;

  v20 = [v19 valueForKeyPath:@"transform.scale.xy"];
  [v20 doubleValue];
  v22 = v21;

  memset(&v34, 0, sizeof(v34));
  v23 = [v19 valueForKeyPath:@"transform"];
  v24 = v23;
  if (v23)
  {
    [v23 CATransform3DValue];
  }

  else
  {
    memset(&v34, 0, sizeof(v34));
  }

  memset(&v33, 0, sizeof(v33));
  CATransform3DMakeScale(&v33, v22, v22, 1.0);
  memset(&v32, 0, sizeof(v32));
  a = v33;
  CATransform3DInvert(&b, &a);
  a = v34;
  CATransform3DConcat(&v32, &a, &b);
  if (highlightedCopy)
  {
    [self _highlightScaleForLayoutStyle:style];
    memset(&b, 0, sizeof(b));
    CATransform3DMakeScale(&b, v25, v25, 1.0);
    v29 = v32;
    v28 = b;
    CATransform3DConcat(&a, &v29, &v28);
    v32 = a;
  }

  b = v34;
  v26 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&b];
  [v11 setFromValue:v26];

  b = v32;
  v27 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&b];
  [v11 setToValue:v27];

  [layerCopy addAnimation:v11 forKey:@"highlightScaleAnimation"];
  b = v32;
  [layerCopy setTransform:&b];
}

+ (void)configurePowerSensitiveAnimation:(id)animation
{
  animationCopy = animation;
  [animationCopy setFrameInterval:0.0166666667];
  [animationCopy setDiscretizesTime:1];
}

@end
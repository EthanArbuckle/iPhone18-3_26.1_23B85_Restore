@interface CFXAnimationHelper
+ (id)_animationWithKeyPath:(id)a3;
+ (void)animateLayer:(id)a3 forButtonHighlighted:(BOOL)a4 layoutStyle:(int64_t)a5;
+ (void)animateLayer:(id)a3 toFrame:(CGRect)a4 fromCurrentState:(BOOL)a5;
+ (void)configurePowerSensitiveAnimation:(id)a3;
@end

@implementation CFXAnimationHelper

+ (void)animateLayer:(id)a3 toFrame:(CGRect)a4 fromCurrentState:(BOOL)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v23 = a3;
  v11 = [v23 presentationLayer];
  if (v11 && a5)
  {
    v12 = [v23 presentationLayer];
    v13 = [v12 valueForKeyPath:@"position"];
  }

  else
  {
    v13 = [v23 valueForKeyPath:@"position"];
  }

  v14 = [v23 presentationLayer];
  if (v14 && a5)
  {
    v15 = [v23 presentationLayer];
    v16 = [v15 valueForKeyPath:@"bounds"];
  }

  else
  {
    v16 = [v23 valueForKeyPath:@"bounds"];
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
  [v23 setPosition:{MidX, MidY}];
  [v23 setBounds:{0.0, 0.0, v19, v20}];
  v21 = [a1 _animationWithKeyPath:@"position"];
  [v21 setFromValue:v13];
  v22 = [a1 _animationWithKeyPath:@"bounds"];
  [v22 setFromValue:v16];
  [v23 addAnimation:v21 forKey:@"positionAnimation"];
  [v23 addAnimation:v22 forKey:@"boundsAnimation"];
}

+ (id)_animationWithKeyPath:(id)a3
{
  v3 = [MEMORY[0x277CD9FA0] animationWithKeyPath:a3];
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

+ (void)animateLayer:(id)a3 forButtonHighlighted:(BOOL)a4 layoutStyle:(int64_t)a5
{
  v6 = a4;
  v8 = a3;
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

  v16 = [v8 presentationLayer];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v8;
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
  if (v6)
  {
    [a1 _highlightScaleForLayoutStyle:a5];
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

  [v8 addAnimation:v11 forKey:@"highlightScaleAnimation"];
  b = v32;
  [v8 setTransform:&b];
}

+ (void)configurePowerSensitiveAnimation:(id)a3
{
  v3 = a3;
  [v3 setFrameInterval:0.0166666667];
  [v3 setDiscretizesTime:1];
}

@end
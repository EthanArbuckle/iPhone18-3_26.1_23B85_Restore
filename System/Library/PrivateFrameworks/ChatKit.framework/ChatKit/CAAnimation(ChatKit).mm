@interface CAAnimation(ChatKit)
+ (id)ck_opacityAnimationForRevealingSticker:()ChatKit;
+ (id)ck_springAnimationForRevealingReactWithASticker;
+ (id)ck_springAnimationForRevealingSticker:()ChatKit;
+ (id)ck_stickerFlyInBoundsAnimationFromSize:()ChatKit toSize:;
+ (id)ck_stickerFlyInMoveAnimationFromRect:()ChatKit toRect:;
+ (id)ck_stickerFlyInScaleAnimation;
+ (id)ck_stickerFlyInSpringAnimation;
+ (id)ck_stickerFlyInTransformAnimationTo:()ChatKit;
@end

@implementation CAAnimation(ChatKit)

+ (id)ck_springAnimationForRevealingSticker:()ChatKit
{
  v4 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform.scale.xy"];
  v5 = v4;
  if (a3)
  {
    v6 = &unk_1F04E7E90;
  }

  else
  {
    v6 = &unk_1F04E7EA8;
  }

  if (a3)
  {
    v7 = &unk_1F04E7EA8;
  }

  else
  {
    v7 = &unk_1F04E7E90;
  }

  [v4 setFromValue:v6];
  [v5 setToValue:v7];
  [v5 setMass:2.0];
  [v5 setStiffness:300.0];
  [v5 setDamping:400.0];
  [v5 setFillMode:*MEMORY[0x1E69797E0]];
  [v5 setRemovedOnCompletion:0];

  return v5;
}

+ (id)ck_springAnimationForRevealingReactWithASticker
{
  v0 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"bounds"];
  v1 = *(MEMORY[0x1E695F058] + 16);
  v4[0] = *MEMORY[0x1E695F058];
  v4[1] = v1;
  v2 = [MEMORY[0x1E696B098] valueWithBytes:v4 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [v0 setFromValue:v2];

  [v0 setMass:1.0];
  [v0 setStiffness:109.0];
  [v0 setDamping:14.6];
  [v0 setInitialVelocity:10.0];
  [v0 setFillMode:*MEMORY[0x1E69797E0]];
  [v0 setRemovedOnCompletion:0];

  return v0;
}

+ (id)ck_opacityAnimationForRevealingSticker:()ChatKit
{
  v4 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"opacity"];
  v5 = v4;
  if (a3)
  {
    v6 = &unk_1F04E7E90;
  }

  else
  {
    v6 = &unk_1F04E7EA8;
  }

  if (a3)
  {
    v7 = &unk_1F04E7EA8;
  }

  else
  {
    v7 = &unk_1F04E7E90;
  }

  [v4 setFromValue:v6];
  [v5 setToValue:v7];
  [v5 setMass:2.0];
  [v5 setStiffness:300.0];
  [v5 setDamping:400.0];
  [v5 setFillMode:*MEMORY[0x1E69797E0]];
  [v5 setRemovedOnCompletion:0];

  return v5;
}

+ (id)ck_stickerFlyInMoveAnimationFromRect:()ChatKit toRect:
{
  v8.f64[0] = a5;
  v40[4] = *MEMORY[0x1E69E9840];
  v9 = *(MEMORY[0x1E695F058] + 16);
  if (CKMainScreenScale_once_49 != -1)
  {
    v39 = a6;
    v33 = a8;
    v35 = *&a7.f64[0];
    selfCopy = self;
    v31 = *(MEMORY[0x1E695F058] + 16);
    v28 = a4;
    v29 = a2;
    v27 = a3;
    +[CAAnimation(ChatKit) ck_stickerFlyInMoveAnimationFromRect:toRect:];
    a3.f64[0] = v27.f64[0];
    a4.n128_u64[0] = v28.n128_u64[0];
    a2.n128_u64[0] = v29.n128_u64[0];
    self.f64[0] = selfCopy.f64[0];
    v9 = v31;
    a8 = v33;
    *&a7.f64[0] = v35;
    v8.f64[0] = a5;
    a6 = v39;
  }

  if (*&CKMainScreenScale_sMainScreenScale_49 == 0.0)
  {
    *&v10 = 1.0;
  }

  else
  {
    v10 = CKMainScreenScale_sMainScreenScale_49;
  }

  *&a3.f64[1] = a4.n128_u64[0];
  __asm { FMOV            V3.2D, #0.5 }

  *&self.f64[1] = a2.n128_u64[0];
  v16 = vdivq_f64(vrndmq_f64(vmulq_n_f64(vaddq_f64(self, vmulq_f64(vsubq_f64(a3, v9), _Q3)), *&v10)), vdupq_lane_s64(v10, 0));
  v17 = CKMainScreenScale_sMainScreenScale_49;
  a7.f64[1] = a8;
  if (*&CKMainScreenScale_sMainScreenScale_49 == 0.0)
  {
    *&v17 = 1.0;
  }

  v8.f64[1] = a6;
  v38 = vdivq_f64(vrndmq_f64(vmulq_n_f64(vaddq_f64(v8, vmulq_f64(vsubq_f64(a7, v9), _Q3)), *&v17)), vdupq_lane_s64(v17, 0));
  v18 = vsubq_f64(v38, v16);
  v32 = v16;
  v34 = vmlaq_f64(v16, vdupq_n_s64(0x3FD6666666666666uLL), v18);
  v36 = vmlaq_f64(v16, vdupq_n_s64(0x3FE6666666666666uLL), v18);
  v19 = [MEMORY[0x1E6979390] animationWithKeyPath:{@"position", *&v27, *&v28, *&v29, *&selfCopy, *&v31}];
  [v19 setCalculationMode:*MEMORY[0x1E6979598]];
  [v19 setFillMode:*MEMORY[0x1E69797E8]];
  v20 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v19 setTimingFunction:v20];

  v21 = [MEMORY[0x1E696B098] valueWithCGPoint:*&v32];
  v40[0] = v21;
  v22 = [MEMORY[0x1E696B098] valueWithCGPoint:*&v34];
  v40[1] = v22;
  v23 = [MEMORY[0x1E696B098] valueWithCGPoint:*&v36];
  v40[2] = v23;
  v24 = [MEMORY[0x1E696B098] valueWithCGPoint:*&v38];
  v40[3] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:4];
  [v19 setValues:v25];

  [v19 setKeyTimes:&unk_1F04E6BA0];
  [v19 setDuration:0.5];
  [v19 setRemovedOnCompletion:0];

  return v19;
}

+ (id)ck_stickerFlyInSpringAnimation
{
  v0 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform.scale.xy"];
  [v0 setFromValue:&unk_1F04E88B8];
  [v0 setToValue:&unk_1F04E88C8];
  [v0 setMass:1.0];
  [v0 setStiffness:109.66];
  [v0 setDamping:14.6];
  [v0 setInitialVelocity:20.0];
  [v0 setFillMode:*MEMORY[0x1E69797E0]];
  [v0 setAdditive:1];
  [v0 setBeginTime:0.34];
  [v0 settlingDuration];
  [v0 setDuration:v1 + -0.3];
  [v0 setRemovedOnCompletion:0];

  return v0;
}

+ (id)ck_stickerFlyInScaleAnimation
{
  v0 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform.scale.xy"];
  [v0 setValues:&unk_1F04E6BB8];
  [v0 setKeyTimes:&unk_1F04E6BD0];
  [v0 setDuration:0.7];
  [v0 setCalculationMode:*MEMORY[0x1E6979590]];
  [v0 setFillMode:*MEMORY[0x1E69797E8]];
  v1 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
  [v0 setTimingFunction:v1];

  [v0 setAdditive:1];
  [v0 setRemovedOnCompletion:0];

  return v0;
}

+ (id)ck_stickerFlyInBoundsAnimationFromSize:()ChatKit toSize:
{
  v8 = [MEMORY[0x1E6979318] animationWithKeyPath:@"bounds.size"];
  *v13 = self;
  *&v13[1] = a2;
  v9 = [MEMORY[0x1E696B098] valueWithBytes:v13 objCType:"{CGSize=dd}"];
  [v8 setFromValue:v9];

  *v12 = a3;
  *&v12[1] = a4;
  v10 = [MEMORY[0x1E696B098] valueWithBytes:v12 objCType:"{CGSize=dd}"];
  [v8 setToValue:v10];

  [v8 setDuration:0.7];
  [v8 setFillMode:*MEMORY[0x1E69797E8]];
  [v8 setRemovedOnCompletion:0];

  return v8;
}

+ (id)ck_stickerFlyInTransformAnimationTo:()ChatKit
{
  v20[2] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform"];
  [v4 setCalculationMode:*MEMORY[0x1E6979598]];
  v5 = *(MEMORY[0x1E69792E8] + 80);
  v19[4] = *(MEMORY[0x1E69792E8] + 64);
  v19[5] = v5;
  v6 = *(MEMORY[0x1E69792E8] + 112);
  v19[6] = *(MEMORY[0x1E69792E8] + 96);
  v19[7] = v6;
  v7 = *(MEMORY[0x1E69792E8] + 16);
  v19[0] = *MEMORY[0x1E69792E8];
  v19[1] = v7;
  v8 = *(MEMORY[0x1E69792E8] + 48);
  v19[2] = *(MEMORY[0x1E69792E8] + 32);
  v19[3] = v8;
  v9 = [MEMORY[0x1E696B098] valueWithBytes:v19 objCType:"{CATransform3D=dddddddddddddddd}"];
  v20[0] = v9;
  v10 = a3[5];
  v18[4] = a3[4];
  v18[5] = v10;
  v11 = a3[7];
  v18[6] = a3[6];
  v18[7] = v11;
  v12 = a3[1];
  v18[0] = *a3;
  v18[1] = v12;
  v13 = a3[3];
  v18[2] = a3[2];
  v18[3] = v13;
  v14 = [MEMORY[0x1E696B098] valueWithBytes:v18 objCType:"{CATransform3D=dddddddddddddddd}"];
  v20[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  [v4 setValues:v15];

  [v4 setKeyTimes:&unk_1F04E6BE8];
  [v4 setDuration:0.7];
  [v4 setFillMode:*MEMORY[0x1E69797E8]];
  v16 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v4 setTimingFunction:v16];

  [v4 setRemovedOnCompletion:0];

  return v4;
}

@end
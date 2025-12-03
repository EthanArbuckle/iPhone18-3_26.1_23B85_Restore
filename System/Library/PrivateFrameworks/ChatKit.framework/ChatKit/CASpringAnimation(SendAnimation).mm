@interface CASpringAnimation(SendAnimation)
+ (double)_ck_scaleDownFactorForEntryViewSize:()SendAnimation;
+ (id)ck_glassScaleDownAnimationWithBeginTime:()SendAnimation entryViewSize:delegate:;
+ (id)ck_glassScaleUpAnimationWithBeginTime:()SendAnimation entryViewSize:delegate:;
+ (id)ck_glassScaleUpAnimationWithBeginTime:()SendAnimation entryViewSize:initialSize:finalSize:delegate:;
@end

@implementation CASpringAnimation(SendAnimation)

+ (double)_ck_scaleDownFactorForEntryViewSize:()SendAnimation
{
  v3 = +[CKMessageEntryViewLayoutMetrics cachedMetricsRecalculatingIfNecessary];
  [v3 defaultEntryViewHeight];
  v5 = fmax(fmin((a2 - v4) / (v4 * 7.0 - v4), 1.0), 0.0) * 0.2 + 0.7;

  return v5;
}

+ (id)ck_glassScaleDownAnimationWithBeginTime:()SendAnimation entryViewSize:delegate:
{
  v10 = a6;
  [self _ck_scaleDownFactorForEntryViewSize:{a3, a4}];
  memset(&v26, 0, sizeof(v26));
  v11 = *(MEMORY[0x1E695EFD0] + 16);
  *&v25.m11 = *MEMORY[0x1E695EFD0];
  *&v25.m13 = v11;
  *&v25.m21 = *(MEMORY[0x1E695EFD0] + 32);
  CGAffineTransformScale(&v26, &v25, v12, v12);
  memset(&v25, 0, sizeof(v25));
  m = v26;
  CATransform3DMakeAffineTransform(&v25, &m);
  v13 = [self animationWithKeyPath:@"transform"];
  [v13 setAdditive:1];
  v14 = *(MEMORY[0x1E69792E8] + 80);
  v23[4] = *(MEMORY[0x1E69792E8] + 64);
  v23[5] = v14;
  v15 = *(MEMORY[0x1E69792E8] + 112);
  v23[6] = *(MEMORY[0x1E69792E8] + 96);
  v23[7] = v15;
  v16 = *(MEMORY[0x1E69792E8] + 16);
  v23[0] = *MEMORY[0x1E69792E8];
  v23[1] = v16;
  v17 = *(MEMORY[0x1E69792E8] + 48);
  v23[2] = *(MEMORY[0x1E69792E8] + 32);
  v23[3] = v17;
  v18 = [MEMORY[0x1E696B098] valueWithBytes:v23 objCType:"{CATransform3D=dddddddddddddddd}"];
  [v13 setFromValue:v18];

  v22 = v25;
  v19 = [MEMORY[0x1E696B098] valueWithBytes:&v22 objCType:"{CATransform3D=dddddddddddddddd}"];
  [v13 setToValue:v19];

  [v13 setMass:2.0];
  [v13 setStiffness:310.0];
  [v13 setDamping:38.0];
  LODWORD(v20) = 1.0;
  [v13 setSpeed:v20];
  [v13 settlingDuration];
  [v13 setDuration:?];
  [v13 setFillMode:*MEMORY[0x1E69797E8]];
  [v13 setRemovedOnCompletion:0];
  [v13 setBeginTime:a2];
  [v13 setDelegate:v10];

  [v13 ck_requestHighFrameRate];

  return v13;
}

+ (id)ck_glassScaleUpAnimationWithBeginTime:()SendAnimation entryViewSize:delegate:
{
  v10 = a6;
  [self _ck_scaleDownFactorForEntryViewSize:{a3, a4}];
  memset(&v26, 0, sizeof(v26));
  v11 = *(MEMORY[0x1E695EFD0] + 16);
  *&v25.m11 = *MEMORY[0x1E695EFD0];
  *&v25.m13 = v11;
  *&v25.m21 = *(MEMORY[0x1E695EFD0] + 32);
  CGAffineTransformScale(&v26, &v25, 1.0 / v12, 1.0 / v12);
  memset(&v25, 0, sizeof(v25));
  m = v26;
  CATransform3DMakeAffineTransform(&v25, &m);
  v13 = [self animationWithKeyPath:@"transform"];
  [v13 setAdditive:1];
  v14 = *(MEMORY[0x1E69792E8] + 80);
  v23[4] = *(MEMORY[0x1E69792E8] + 64);
  v23[5] = v14;
  v15 = *(MEMORY[0x1E69792E8] + 112);
  v23[6] = *(MEMORY[0x1E69792E8] + 96);
  v23[7] = v15;
  v16 = *(MEMORY[0x1E69792E8] + 16);
  v23[0] = *MEMORY[0x1E69792E8];
  v23[1] = v16;
  v17 = *(MEMORY[0x1E69792E8] + 48);
  v23[2] = *(MEMORY[0x1E69792E8] + 32);
  v23[3] = v17;
  v18 = [MEMORY[0x1E696B098] valueWithBytes:v23 objCType:"{CATransform3D=dddddddddddddddd}"];
  [v13 setFromValue:v18];

  v22 = v25;
  v19 = [MEMORY[0x1E696B098] valueWithBytes:&v22 objCType:"{CATransform3D=dddddddddddddddd}"];
  [v13 setToValue:v19];

  [v13 setMass:2.0];
  [v13 setStiffness:320.0];
  [v13 setDamping:38.0];
  LODWORD(v20) = 1.0;
  [v13 setSpeed:v20];
  [v13 settlingDuration];
  [v13 setDuration:?];
  [v13 setFillMode:*MEMORY[0x1E69797E8]];
  [v13 setRemovedOnCompletion:0];
  [v13 setBeginTime:a2 + 0.185];
  [v13 setDelegate:v10];

  [v13 ck_requestHighFrameRate];

  return v13;
}

+ (id)ck_glassScaleUpAnimationWithBeginTime:()SendAnimation entryViewSize:initialSize:finalSize:delegate:
{
  v18 = a10;
  [self _ck_scaleDownFactorForEntryViewSize:{a3, a4}];
  memset(&v34, 0, sizeof(v34));
  v19 = *(MEMORY[0x1E695EFD0] + 16);
  *&v33.m11 = *MEMORY[0x1E695EFD0];
  *&v33.m13 = v19;
  *&v33.m21 = *(MEMORY[0x1E695EFD0] + 32);
  CGAffineTransformScale(&v34, &v33, a7 / a5 / v20, a8 / a6 / v20);
  memset(&v33, 0, sizeof(v33));
  m = v34;
  CATransform3DMakeAffineTransform(&v33, &m);
  v21 = [self animationWithKeyPath:@"transform"];
  [v21 setAdditive:1];
  v22 = *(MEMORY[0x1E69792E8] + 80);
  v31[4] = *(MEMORY[0x1E69792E8] + 64);
  v31[5] = v22;
  v23 = *(MEMORY[0x1E69792E8] + 112);
  v31[6] = *(MEMORY[0x1E69792E8] + 96);
  v31[7] = v23;
  v24 = *(MEMORY[0x1E69792E8] + 16);
  v31[0] = *MEMORY[0x1E69792E8];
  v31[1] = v24;
  v25 = *(MEMORY[0x1E69792E8] + 48);
  v31[2] = *(MEMORY[0x1E69792E8] + 32);
  v31[3] = v25;
  v26 = [MEMORY[0x1E696B098] valueWithBytes:v31 objCType:"{CATransform3D=dddddddddddddddd}"];
  [v21 setFromValue:v26];

  v30 = v33;
  v27 = [MEMORY[0x1E696B098] valueWithBytes:&v30 objCType:"{CATransform3D=dddddddddddddddd}"];
  [v21 setToValue:v27];

  [v21 setMass:2.0];
  [v21 setStiffness:320.0];
  [v21 setDamping:38.0];
  LODWORD(v28) = 1.0;
  [v21 setSpeed:v28];
  [v21 settlingDuration];
  [v21 setDuration:?];
  [v21 setFillMode:*MEMORY[0x1E69797E8]];
  [v21 setRemovedOnCompletion:0];
  [v21 setBeginTime:a2 + 0.185];
  [v21 setDelegate:v18];

  [v21 ck_requestHighFrameRate];

  return v21;
}

@end
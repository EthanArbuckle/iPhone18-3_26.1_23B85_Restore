@interface CABasicAnimation(PKCAUtilities)
- (uint64_t)pkui_updateForAdditiveAnimationFromTransform:()PKCAUtilities toTransform:;
- (void)pkui_updateForAdditiveAnimationFromPoint:()PKCAUtilities toPoint:withLayerPoint:;
- (void)pkui_updateForAdditiveAnimationFromScalar:()PKCAUtilities toScalar:withLayerScalar:;
- (void)pkui_updateForAdditiveAnimationFromSize:()PKCAUtilities toSize:withLayerSize:;
- (void)pkui_updateForAdditiveAnimationFromTransform:()PKCAUtilities toTransform:withLayerTransform:;
@end

@implementation CABasicAnimation(PKCAUtilities)

- (void)pkui_updateForAdditiveAnimationFromScalar:()PKCAUtilities toScalar:withLayerScalar:
{
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:a2 - a4];
  [a1 setFromValue:v7];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3 - a4];
  [a1 setToValue:v8];
}

- (void)pkui_updateForAdditiveAnimationFromPoint:()PKCAUtilities toPoint:withLayerPoint:
{
  v8 = a4 - a6;
  v9 = a5 - a7;
  v10 = [MEMORY[0x1E696B098] valueWithPoint:{a2 - a6, a3 - a7}];
  [a1 setFromValue:v10];

  v11 = [MEMORY[0x1E696B098] valueWithPoint:{v8, v9}];
  [a1 setToValue:v11];
}

- (void)pkui_updateForAdditiveAnimationFromSize:()PKCAUtilities toSize:withLayerSize:
{
  v8 = a4 - a6;
  v9 = a5 - a7;
  v10 = [MEMORY[0x1E696B098] valueWithSize:{a2 - a6, a3 - a7}];
  [a1 setFromValue:v10];

  v11 = [MEMORY[0x1E696B098] valueWithSize:{v8, v9}];
  [a1 setToValue:v11];
}

- (uint64_t)pkui_updateForAdditiveAnimationFromTransform:()PKCAUtilities toTransform:
{
  v4 = a3[5];
  v26[4] = a3[4];
  v26[5] = v4;
  v5 = a3[7];
  v26[6] = a3[6];
  v26[7] = v5;
  v6 = a3[1];
  v26[0] = *a3;
  v26[1] = v6;
  v7 = a3[3];
  v26[2] = a3[2];
  v26[3] = v7;
  v8 = a4[5];
  v9 = a4[3];
  v22 = a4[4];
  v23 = v8;
  v10 = a4[5];
  v11 = a4[7];
  v24 = a4[6];
  v25 = v11;
  v12 = a4[1];
  v19[0] = *a4;
  v19[1] = v12;
  v13 = a4[3];
  v15 = *a4;
  v14 = a4[1];
  v20 = a4[2];
  v21 = v13;
  v18[4] = v22;
  v18[5] = v10;
  v16 = a4[7];
  v18[6] = v24;
  v18[7] = v16;
  v18[0] = v15;
  v18[1] = v14;
  v18[2] = v20;
  v18[3] = v9;
  return [a1 pkui_updateForAdditiveAnimationFromTransform:v26 toTransform:v19 withLayerTransform:v18];
}

- (void)pkui_updateForAdditiveAnimationFromTransform:()PKCAUtilities toTransform:withLayerTransform:
{
  memset(&v53, 0, sizeof(v53));
  v9 = a5[5];
  *&v52.m31 = a5[4];
  *&v52.m33 = v9;
  v10 = a5[7];
  *&v52.m41 = a5[6];
  *&v52.m43 = v10;
  v11 = a5[1];
  *&v52.m11 = *a5;
  *&v52.m13 = v11;
  v12 = a5[3];
  *&v52.m21 = a5[2];
  *&v52.m23 = v12;
  CATransform3DInvert(&v53, &v52);
  memset(&v52, 0, sizeof(v52));
  v13 = a3[5];
  *&a.m31 = a3[4];
  *&a.m33 = v13;
  v14 = a3[7];
  *&a.m41 = a3[6];
  *&a.m43 = v14;
  v15 = a3[1];
  *&a.m11 = *a3;
  *&a.m13 = v15;
  v16 = a3[3];
  *&a.m21 = a3[2];
  *&a.m23 = v16;
  v17 = a5[5];
  *&b.m31 = a5[4];
  *&b.m33 = v17;
  v18 = a5[7];
  *&b.m41 = a5[6];
  *&b.m43 = v18;
  v19 = a5[1];
  *&b.m11 = *a5;
  *&b.m13 = v19;
  v20 = a5[3];
  *&b.m21 = a5[2];
  *&b.m23 = v20;
  v21 = CATransform3DEqualToTransform(&a, &b);
  v22 = MEMORY[0x1E69792E8];
  if (v21)
  {
    v23 = *(MEMORY[0x1E69792E8] + 80);
    *&v52.m31 = *(MEMORY[0x1E69792E8] + 64);
    *&v52.m33 = v23;
    v24 = *(MEMORY[0x1E69792E8] + 112);
    *&v52.m41 = *(MEMORY[0x1E69792E8] + 96);
    *&v52.m43 = v24;
    v25 = *(MEMORY[0x1E69792E8] + 16);
    *&v52.m11 = *MEMORY[0x1E69792E8];
    *&v52.m13 = v25;
    v26 = *(MEMORY[0x1E69792E8] + 48);
    *&v52.m21 = *(MEMORY[0x1E69792E8] + 32);
    *&v52.m23 = v26;
  }

  else
  {
    a = v53;
    v27 = a3[5];
    *&b.m31 = a3[4];
    *&b.m33 = v27;
    v28 = a3[7];
    *&b.m41 = a3[6];
    *&b.m43 = v28;
    v29 = a3[1];
    *&b.m11 = *a3;
    *&b.m13 = v29;
    v30 = a3[3];
    *&b.m21 = a3[2];
    *&b.m23 = v30;
    CATransform3DConcat(&v52, &a, &b);
  }

  memset(&a, 0, sizeof(a));
  v31 = a4[5];
  *&b.m31 = a4[4];
  *&b.m33 = v31;
  v32 = a4[7];
  *&b.m41 = a4[6];
  *&b.m43 = v32;
  v33 = a4[1];
  *&b.m11 = *a4;
  *&b.m13 = v33;
  v34 = a4[3];
  *&b.m21 = a4[2];
  *&b.m23 = v34;
  v35 = a5[5];
  *&v49.m31 = a5[4];
  *&v49.m33 = v35;
  v36 = a5[7];
  *&v49.m41 = a5[6];
  *&v49.m43 = v36;
  v37 = a5[1];
  *&v49.m11 = *a5;
  *&v49.m13 = v37;
  v38 = a5[3];
  *&v49.m21 = a5[2];
  *&v49.m23 = v38;
  if (CATransform3DEqualToTransform(&b, &v49))
  {
    v39 = v22[5];
    *&a.m31 = v22[4];
    *&a.m33 = v39;
    v40 = v22[7];
    *&a.m41 = v22[6];
    *&a.m43 = v40;
    v41 = v22[1];
    *&a.m11 = *v22;
    *&a.m13 = v41;
    v42 = v22[3];
    *&a.m21 = v22[2];
    *&a.m23 = v42;
  }

  else
  {
    b = v53;
    v43 = a4[5];
    *&v49.m31 = a4[4];
    *&v49.m33 = v43;
    v44 = a4[7];
    *&v49.m41 = a4[6];
    *&v49.m43 = v44;
    v45 = a4[1];
    *&v49.m11 = *a4;
    *&v49.m13 = v45;
    v46 = a4[3];
    *&v49.m21 = a4[2];
    *&v49.m23 = v46;
    CATransform3DConcat(&a, &b, &v49);
  }

  b = v52;
  v47 = [MEMORY[0x1E696B098] valueWithCATransform3D:&b];
  [a1 setFromValue:v47];

  b = a;
  v48 = [MEMORY[0x1E696B098] valueWithCATransform3D:&b];
  [a1 setToValue:v48];
}

@end
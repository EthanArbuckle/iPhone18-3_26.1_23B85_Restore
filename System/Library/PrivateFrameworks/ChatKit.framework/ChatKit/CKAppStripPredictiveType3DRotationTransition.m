@interface CKAppStripPredictiveType3DRotationTransition
- (void)transitionFromView:(id)a3 toView:(id)a4 withDirection:(int64_t)a5 completion:(id)a6;
@end

@implementation CKAppStripPredictiveType3DRotationTransition

- (void)transitionFromView:(id)a3 toView:(id)a4 withDirection:(int64_t)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [v9 superview];
  v13 = v12;
  if (a5 <= 0)
  {
    v14 = 1.57079633;
  }

  else
  {
    v14 = -1.57079633;
  }

  if (a5 <= 0)
  {
    v15 = -1.57079633;
  }

  else
  {
    v15 = 1.57079633;
  }

  [v12 bringSubviewToFront:v10];
  [v10 setAlpha:1.0];
  [v9 setAlpha:1.0];
  v16 = [v10 layer];
  [v16 setDoubleSided:0];

  v17 = [v9 layer];
  [v17 setDoubleSided:0];

  [v13 bounds];
  v19 = v18 * 0.5;
  v20 = [v10 layer];
  [v20 setAnchorPointZ:v19];

  v21 = [v9 layer];
  [v21 setAnchorPointZ:v19];

  v22 = [v9 layer];
  [v22 setZPosition:v19];

  v23 = [v10 layer];
  [v23 setZPosition:v19];

  memset(&v40, 0, sizeof(v40));
  CATransform3DMakeRotation(&v40, v14, 1.0, 0.0, 0.0);
  v39 = v40;
  v24 = [v10 layer];
  v38 = v39;
  [v24 setTransform:&v38];

  v25 = [v9 layer];
  v26 = *(MEMORY[0x1E69792E8] + 64);
  v27 = *(MEMORY[0x1E69792E8] + 96);
  v28 = *(MEMORY[0x1E69792E8] + 112);
  *&v38.m33 = *(MEMORY[0x1E69792E8] + 80);
  *&v38.m41 = v27;
  *&v38.m43 = v28;
  v29 = *(MEMORY[0x1E69792E8] + 16);
  *&v38.m11 = *MEMORY[0x1E69792E8];
  *&v38.m13 = v29;
  v30 = *(MEMORY[0x1E69792E8] + 48);
  *&v38.m21 = *(MEMORY[0x1E69792E8] + 32);
  *&v38.m23 = v30;
  *&v38.m31 = v26;
  [v25 setTransform:&v38];

  v31 = MEMORY[0x1E69DD250];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __99__CKAppStripPredictiveType3DRotationTransition_transitionFromView_toView_withDirection_completion___block_invoke;
  v34[3] = &unk_1E72EBC38;
  v37 = v15;
  v35 = v9;
  v36 = v10;
  v32 = v10;
  v33 = v9;
  [v31 animateWithDuration:0 delay:v34 usingSpringWithDamping:v11 initialSpringVelocity:0.5 options:0.0 animations:14.0 completion:0.0];
}

void __99__CKAppStripPredictiveType3DRotationTransition_transitionFromView_toView_withDirection_completion___block_invoke(uint64_t a1)
{
  memset(&v10, 0, sizeof(v10));
  CATransform3DMakeRotation(&v10, *(a1 + 48), 1.0, 0.0, 0.0);
  v9 = v10;
  v2 = [*(a1 + 32) layer];
  v8 = v9;
  [v2 setTransform:&v8];

  v3 = [*(a1 + 40) layer];
  v4 = *(MEMORY[0x1E69792E8] + 80);
  *&v8.m31 = *(MEMORY[0x1E69792E8] + 64);
  *&v8.m33 = v4;
  v5 = *(MEMORY[0x1E69792E8] + 112);
  *&v8.m41 = *(MEMORY[0x1E69792E8] + 96);
  *&v8.m43 = v5;
  v6 = *(MEMORY[0x1E69792E8] + 16);
  *&v8.m11 = *MEMORY[0x1E69792E8];
  *&v8.m13 = v6;
  v7 = *(MEMORY[0x1E69792E8] + 48);
  *&v8.m21 = *(MEMORY[0x1E69792E8] + 32);
  *&v8.m23 = v7;
  [v3 setTransform:&v8];
}

@end
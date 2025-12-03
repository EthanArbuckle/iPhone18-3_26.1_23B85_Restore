@interface CKAppStripPredictiveType3DRotationTransition
- (void)transitionFromView:(id)view toView:(id)toView withDirection:(int64_t)direction completion:(id)completion;
@end

@implementation CKAppStripPredictiveType3DRotationTransition

- (void)transitionFromView:(id)view toView:(id)toView withDirection:(int64_t)direction completion:(id)completion
{
  viewCopy = view;
  toViewCopy = toView;
  completionCopy = completion;
  superview = [viewCopy superview];
  v13 = superview;
  if (direction <= 0)
  {
    v14 = 1.57079633;
  }

  else
  {
    v14 = -1.57079633;
  }

  if (direction <= 0)
  {
    v15 = -1.57079633;
  }

  else
  {
    v15 = 1.57079633;
  }

  [superview bringSubviewToFront:toViewCopy];
  [toViewCopy setAlpha:1.0];
  [viewCopy setAlpha:1.0];
  layer = [toViewCopy layer];
  [layer setDoubleSided:0];

  layer2 = [viewCopy layer];
  [layer2 setDoubleSided:0];

  [v13 bounds];
  v19 = v18 * 0.5;
  layer3 = [toViewCopy layer];
  [layer3 setAnchorPointZ:v19];

  layer4 = [viewCopy layer];
  [layer4 setAnchorPointZ:v19];

  layer5 = [viewCopy layer];
  [layer5 setZPosition:v19];

  layer6 = [toViewCopy layer];
  [layer6 setZPosition:v19];

  memset(&v40, 0, sizeof(v40));
  CATransform3DMakeRotation(&v40, v14, 1.0, 0.0, 0.0);
  v39 = v40;
  layer7 = [toViewCopy layer];
  v38 = v39;
  [layer7 setTransform:&v38];

  layer8 = [viewCopy layer];
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
  [layer8 setTransform:&v38];

  v31 = MEMORY[0x1E69DD250];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __99__CKAppStripPredictiveType3DRotationTransition_transitionFromView_toView_withDirection_completion___block_invoke;
  v34[3] = &unk_1E72EBC38;
  v37 = v15;
  v35 = viewCopy;
  v36 = toViewCopy;
  v32 = toViewCopy;
  v33 = viewCopy;
  [v31 animateWithDuration:0 delay:v34 usingSpringWithDamping:completionCopy initialSpringVelocity:0.5 options:0.0 animations:14.0 completion:0.0];
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
@interface UIView(CKMessageAcknowledgmentAnimations)
- (void)messageAcknowledgmentBounceView:()CKMessageAcknowledgmentAnimations;
- (void)messageAcknowledgmentShrinkViewToPoint:()CKMessageAcknowledgmentAnimations completion:;
@end

@implementation UIView(CKMessageAcknowledgmentAnimations)

- (void)messageAcknowledgmentBounceView:()CKMessageAcknowledgmentAnimations
{
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  [a1 transform];
  memset(&v14, 0, sizeof(v14));
  CGAffineTransformMakeScale(&v14, 0.95, 0.95);
  v13 = v14;
  [a1 setTransform:&v13];
  v5 = MEMORY[0x1E69DD250];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v10 = v15;
  v11 = v16;
  v9[2] = __77__UIView_CKMessageAcknowledgmentAnimations__messageAcknowledgmentBounceView___block_invoke;
  v9[3] = &unk_1E72ECB00;
  v9[4] = a1;
  v12 = v17;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__UIView_CKMessageAcknowledgmentAnimations__messageAcknowledgmentBounceView___block_invoke_2;
  v7[3] = &unk_1E72ED1F0;
  v8 = v4;
  v6 = v4;
  [v5 animateWithDuration:0 delay:v9 usingSpringWithDamping:v7 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:-100.0];
}

- (void)messageAcknowledgmentShrinkViewToPoint:()CKMessageAcknowledgmentAnimations completion:
{
  v8 = a5;
  [a1 frame];
  v10 = v9;
  v12 = v11;
  [a1 frame];
  Width = CGRectGetWidth(v35);
  [a1 frame];
  Height = CGRectGetHeight(v36);
  memset(&v34, 0, sizeof(v34));
  v15 = [a1 layer];
  v16 = v15;
  if (v15)
  {
    [v15 transform];
  }

  else
  {
    memset(&v34, 0, sizeof(v34));
  }

  memset(&v33, 0, sizeof(v33));
  CATransform3DMakeScale(&v33, 0.0, 0.0, 1.0);
  memset(&v32, 0, sizeof(v32));
  CATransform3DMakeTranslation(&v32, a2 - (v10 + Width * 0.5), a3 - (v12 + Height * 0.5), 0.0);
  memset(&v31, 0, sizeof(v31));
  a = v33;
  b = v32;
  CATransform3DConcat(&v31, &a, &b);
  v17 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform"];
  a = v34;
  v18 = [MEMORY[0x1E696B098] valueWithCATransform3D:&a];
  [v17 setFromValue:v18];

  a = v31;
  v19 = [MEMORY[0x1E696B098] valueWithCATransform3D:&a];
  [v17 setToValue:v19];

  [v17 setDuration:0.300000012];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v20 = MEMORY[0x1E6979518];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __95__UIView_CKMessageAcknowledgmentAnimations__messageAcknowledgmentShrinkViewToPoint_completion___block_invoke;
  v27[3] = &unk_1E72EBDB8;
  v28 = v8;
  v21 = v8;
  [v20 setCompletionBlock:v27];
  v22 = [a1 layer];
  [v22 addAnimation:v17 forKey:@"transform"];

  v23 = MEMORY[0x1E6979518];
  v24 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v23 setAnimationTimingFunction:v24];

  [MEMORY[0x1E6979518] setAnimationDuration:0.300000012];
  [MEMORY[0x1E6979518] setDisableActions:0];
  [MEMORY[0x1E6979518] begin];
  v26 = v31;
  v25 = [a1 layer];
  a = v26;
  [v25 setTransform:&a];

  [MEMORY[0x1E6979518] commit];
}

@end
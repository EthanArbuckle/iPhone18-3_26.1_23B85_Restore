@interface CNUIAvatarLayoutItemConfiguration
- (CGRect)itemFrameInContainingBounds:(CGRect)a3 isRTL:(BOOL)a4;
- (CNUIAvatarLayoutItemConfiguration)initWithSize:(double)a3 x:(double)a4 y:(double)a5 baseSize:(double)a6;
- (void)animateLayer:(id)a3 to:(CGRect)a4 within:(CGRect)a5 withAvatarIndex:(int64_t)a6;
- (void)updateLayer:(id)a3 inBounds:(CGRect)a4 atIndex:(int64_t)a5 isRTL:(BOOL)a6 layoutType:(unint64_t)a7;
@end

@implementation CNUIAvatarLayoutItemConfiguration

- (CNUIAvatarLayoutItemConfiguration)initWithSize:(double)a3 x:(double)a4 y:(double)a5 baseSize:(double)a6
{
  v14.receiver = self;
  v14.super_class = CNUIAvatarLayoutItemConfiguration;
  v10 = [(CNUIAvatarLayoutItemConfiguration *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_size = a3;
    v10->_x = a4;
    v10->_y = a5;
    v10->_baseSize = a6;
    v12 = v10;
  }

  return v11;
}

- (CGRect)itemFrameInContainingBounds:(CGRect)a3 isRTL:(BOOL)a4
{
  if (a3.size.width <= 0.0 || (height = a3.size.height, a3.size.height <= 0.0))
  {
    v17 = *MEMORY[0x1E695F058];
    v20 = *(MEMORY[0x1E695F058] + 8);
    v14 = *(MEMORY[0x1E695F058] + 16);
    v21 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    v5 = a4;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    [(CNUIAvatarLayoutItemConfiguration *)self size];
    v11 = v10;
    [(CNUIAvatarLayoutItemConfiguration *)self baseSize];
    v13 = height / v12;
    v14 = v11 * (height / v12);
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    v15 = CGRectGetMidX(v24) - v14 * 0.5;
    [(CNUIAvatarLayoutItemConfiguration *)self x];
    if (v5)
    {
      v16 = -v16;
    }

    v17 = v15 + v16 * v13;
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    v18 = CGRectGetMidY(v25) - v14 * 0.5;
    [(CNUIAvatarLayoutItemConfiguration *)self y];
    v20 = v18 + v19 * v13;
    v21 = v14;
  }

  v22 = v17;
  v23 = v14;
  result.size.height = v21;
  result.size.width = v23;
  result.origin.y = v20;
  result.origin.x = v22;
  return result;
}

- (void)updateLayer:(id)a3 inBounds:(CGRect)a4 atIndex:(int64_t)a5 isRTL:(BOOL)a6 layoutType:(unint64_t)a7
{
  v8 = a6;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v15 = a3;
  [(CNUIAvatarLayoutItemConfiguration *)self itemFrameInContainingBounds:v8 isRTL:x, y, width, height];
  if (a7 == 3)
  {
    [CNUIAvatarLayoutItemConfiguration animateLayer:"animateLayer:to:within:withAvatarIndex:" to:v15 within:a5 withAvatarIndex:?];
  }

  else
  {
    [v15 setFrame:?];
    [v15 setZPosition:-a5];
  }
}

- (void)animateLayer:(id)a3 to:(CGRect)a4 within:(CGRect)a5 withAvatarIndex:(int64_t)a6
{
  width = a4.size.width;
  height = a4.size.height;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  [v9 frame];
  if (CGRectIsEmpty(v51))
  {
    v52.origin.x = x;
    v52.origin.y = y;
    v52.size.width = width;
    v52.size.height = height;
    MidX = CGRectGetMidX(v52);
    v53.origin.x = x;
    v53.origin.y = y;
    v53.size.width = width;
    v53.size.height = height;
    [v9 setPosition:{MidX, CGRectGetMidY(v53)}];
    v11 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"bounds"];
    [v11 setDuration:0.5];
    [v11 setMass:2.0];
    [v11 setStiffness:350.0];
    [v11 setDamping:40.0];
    [v11 setInitialVelocity:0.0];
    v12.f64[0] = width;
    v12.f64[1] = height;
    __asm { FMOV            V1.2D, #0.5 }

    v49[0] = 0;
    v49[1] = 0;
    v50 = vmulq_f64(v12, _Q1);
    v18 = [MEMORY[0x1E696B098] valueWithBytes:v49 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    [v11 setFromValue:v18];

    v48[0] = 0;
    v48[1] = 0;
    *&v48[2] = width;
    *&v48[3] = height;
    v19 = [MEMORY[0x1E696B098] valueWithBytes:v48 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    [v11 setToValue:v19];

    [v9 addAnimation:v11 forKey:@"bounds"];
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v20 = MEMORY[0x1E6979518];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __76__CNUIAvatarLayoutItemConfiguration_animateLayer_to_within_withAvatarIndex___block_invoke;
    v45[3] = &unk_1E76EA230;
    v21 = v9;
    v46 = v21;
    v47 = a6;
    [v20 setCompletionBlock:v45];
    [v21 setFrame:{x, y, width, height}];
    [v21 setZPosition:-a6];
    [MEMORY[0x1E6979518] commit];
    v22 = v46;
  }

  else
  {
    v11 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position"];
    [v11 setDuration:0.5];
    [v11 setMass:2.0];
    [v11 setStiffness:350.0];
    [v11 setDamping:40.0];
    [v11 setInitialVelocity:0.0];
    v23 = MEMORY[0x1E696B098];
    v24 = [v9 presentationLayer];
    [v24 position];
    v44[0] = v25;
    v44[1] = v26;
    v27 = [v23 valueWithBytes:v44 objCType:"{CGPoint=dd}"];
    [v11 setFromValue:v27];

    v28 = MEMORY[0x1E696B098];
    v54.origin.x = x;
    v54.origin.y = y;
    v54.size.width = width;
    v54.size.height = height;
    v29 = CGRectGetMidX(v54);
    v55.origin.x = x;
    v55.origin.y = y;
    v55.size.width = width;
    v55.size.height = height;
    *v43 = v29;
    v43[1] = CGRectGetMidY(v55);
    v30 = [v28 valueWithBytes:v43 objCType:"{CGPoint=dd}"];
    [v11 setToValue:v30];

    [v9 addAnimation:v11 forKey:@"position"];
    v22 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"bounds"];
    [v22 setDuration:0.5];
    [v22 setMass:2.0];
    [v22 setStiffness:350.0];
    [v22 setDamping:40.0];
    [v22 setInitialVelocity:0.0];
    v31 = MEMORY[0x1E696B098];
    v32 = [v9 presentationLayer];
    [v32 bounds];
    v42[0] = v33;
    v42[1] = v34;
    v42[2] = v35;
    v42[3] = v36;
    v37 = [v31 valueWithBytes:v42 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    [v22 setFromValue:v37];

    v41[0] = 0;
    v41[1] = 0;
    *&v41[2] = width;
    *&v41[3] = height;
    v38 = [MEMORY[0x1E696B098] valueWithBytes:v41 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    [v22 setToValue:v38];

    [v9 addAnimation:v22 forKey:@"bounds"];
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    [v9 setFrame:{x, y, width, height}];
    [v9 setZPosition:a6];
    [MEMORY[0x1E6979518] commit];
  }
}

@end
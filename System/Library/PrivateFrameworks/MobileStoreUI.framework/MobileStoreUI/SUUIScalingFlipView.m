@interface SUUIScalingFlipView
- (SUUIScalingFlipView)initWithFrontView:(id)a3 backView:(id)a4;
- (id)_backLayerAnimation;
- (id)_frontLayerAnimation;
- (id)_inputColorAnimation;
- (id)_positionAnimation;
- (id)_timingFunction;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)performFlipWithCompletionBlock:(id)a3;
@end

@implementation SUUIScalingFlipView

- (SUUIScalingFlipView)initWithFrontView:(id)a3 backView:(id)a4
{
  v7 = a3;
  v8 = a4;
  [v7 frame];
  self->_fromFrame.origin.x = v9;
  self->_fromFrame.origin.y = v10;
  self->_fromFrame.size.width = v11;
  self->_fromFrame.size.height = v12;
  v13 = [(SUUIScalingFlipView *)self initWithFrame:?];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_backView, a4);
    objc_storeStrong(&v14->_frontView, a3);
    [(UIView *)v14->_backView frame];
    v14->_toFrame.origin.x = v15;
    v14->_toFrame.origin.y = v16;
    v14->_toFrame.size.width = v17;
    v14->_toFrame.size.height = v18;
    v19 = [(UIView *)v14->_backView layer];
    [v19 setDoubleSided:0];

    v20 = [(UIView *)v14->_frontView layer];
    [v20 setDoubleSided:0];

    [(SUUIScalingFlipView *)v14 addSubview:v14->_backView];
    [(SUUIScalingFlipView *)v14 addSubview:v14->_frontView];
    frontView = v14->_frontView;
    [(SUUIScalingFlipView *)v14 center];
    [(UIView *)frontView convertPoint:v14 fromView:?];
    v23 = v22;
    v25 = v24;
    [(UIView *)v14->_backView setCenter:?];
    [(UIView *)v14->_frontView setCenter:v23, v25];
    v26 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5B0]];
    [v26 setName:@"multiply"];
    v27 = [MEMORY[0x277D75348] whiteColor];
    [v26 setValue:objc_msgSend(v27 forKeyPath:{"CGColor"), @"inputColor"}];

    v28 = [(SUUIScalingFlipView *)v14 layer];
    v29 = [MEMORY[0x277CBEA60] arrayWithObject:v26];
    [v28 setFilters:v29];
  }

  return v14;
}

- (void)performFlipWithCompletionBlock:(id)a3
{
  v20 = a3;
  v4 = [MEMORY[0x277D75128] sharedApplication];
  [v4 beginIgnoringInteractionEvents];

  if (self->_completionBlock != v20)
  {
    v5 = [v20 copy];
    completionBlock = self->_completionBlock;
    self->_completionBlock = v5;
  }

  v7 = [(UIView *)self->_frontView layer];
  v8 = [(SUUIScalingFlipView *)self _frontLayerAnimation];
  [v7 addAnimation:v8 forKey:@"flipAnimation"];

  v9 = [(UIView *)self->_backView layer];
  v10 = [(SUUIScalingFlipView *)self _backLayerAnimation];
  [v9 addAnimation:v10 forKey:@"flipAnimation"];

  v11 = [MEMORY[0x277CD9E00] animation];
  v12 = MEMORY[0x277CBEA60];
  v13 = [(SUUIScalingFlipView *)self _inputColorAnimation];
  v14 = [(SUUIScalingFlipView *)self _positionAnimation];
  v15 = [v12 arrayWithObjects:{v13, v14, 0}];
  [v11 setAnimations:v15];

  [v11 setDelegate:self];
  duration = self->_duration;
  UIAnimationDragCoefficient();
  [v11 setDuration:duration * v17];
  [v11 setFillMode:*MEMORY[0x277CDA238]];
  [v11 setRemovedOnCompletion:0];
  v18 = [(SUUIScalingFlipView *)self _timingFunction];
  [v11 setTimingFunction:v18];

  v19 = [(SUUIScalingFlipView *)self layer];
  [v19 addAnimation:v11 forKey:@"multiplyAndPositionAnimation"];
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v5 = [(SUUIScalingFlipView *)self layer:a3];
  [v5 removeAllAnimations];

  v6 = [(UIView *)self->_backView layer];
  [v6 removeAllAnimations];

  v7 = [(UIView *)self->_frontView layer];
  [v7 removeAllAnimations];

  v8 = [(UIView *)self->_backView layer];
  v9 = *(MEMORY[0x277CD9DE8] + 80);
  *&v24.m31 = *(MEMORY[0x277CD9DE8] + 64);
  *&v24.m33 = v9;
  v10 = *(MEMORY[0x277CD9DE8] + 112);
  *&v24.m41 = *(MEMORY[0x277CD9DE8] + 96);
  *&v24.m43 = v10;
  v11 = *(MEMORY[0x277CD9DE8] + 16);
  *&v24.m11 = *MEMORY[0x277CD9DE8];
  *&v24.m13 = v11;
  v12 = *(MEMORY[0x277CD9DE8] + 48);
  *&v24.m21 = *(MEMORY[0x277CD9DE8] + 32);
  *&v24.m23 = v12;
  [v8 setTransform:&v24];

  v13 = [(UIView *)self->_frontView layer];
  CATransform3DMakeRotation(&v24, 3.14159265, 0.0, 1.0, 0.0);
  [v13 setTransform:&v24];

  [(SUUIScalingFlipView *)self setFrame:self->_toFrame.origin.x, self->_toFrame.origin.y, self->_toFrame.size.width, self->_toFrame.size.height];
  [(SUUIScalingFlipView *)self bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [(UIView *)self->_backView setFrame:?];
  [(UIView *)self->_frontView setFrame:v15, v17, v19, v21];
  [(UIView *)self->_backView setNeedsDisplay];
  completionBlock = self->_completionBlock;
  if (completionBlock)
  {
    completionBlock[2](completionBlock, self);
  }

  v23 = [MEMORY[0x277D75128] sharedApplication];
  [v23 endIgnoringInteractionEvents];
}

- (id)_backLayerAnimation
{
  v60[3] = *MEMORY[0x277D85DE8];
  width = self->_toFrame.size.width;
  height = self->_toFrame.size.height;
  direction = self->_direction;
  if ((direction & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  if ((direction & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = dbl_259FCB130[(direction & 0xFFFFFFFFFFFFFFFDLL) == 0];
  v9 = 1.0 / ((width + height) * 0.5 * 3.0);
  v10 = self->_fromFrame.size.height;
  v11 = self->_fromFrame.size.width / width;
  v38 = *(MEMORY[0x277CD9DE8] + 48);
  *&v40.m21 = *(MEMORY[0x277CD9DE8] + 32);
  v39 = *&v40.m21;
  *&v40.m23 = v38;
  *&v40.m31 = *(MEMORY[0x277CD9DE8] + 64);
  v37 = *&v40.m31;
  v13 = v10 / height;
  v40.m33 = *(MEMORY[0x277CD9DE8] + 80);
  m33 = v40.m33;
  v35 = *(MEMORY[0x277CD9DE8] + 16);
  *&v40.m11 = *MEMORY[0x277CD9DE8];
  v36 = *&v40.m11;
  *&v40.m13 = v35;
  v40.m34 = v9;
  v33 = *(MEMORY[0x277CD9DE8] + 112);
  *&v40.m41 = *(MEMORY[0x277CD9DE8] + 96);
  v34 = *&v40.m41;
  *&v40.m43 = v33;
  CATransform3DScale(&v41, &v40, v11, 1.0, 1.0);
  v56 = *&v41.m21;
  v57 = *&v41.m23;
  v58 = *&v41.m31;
  v59 = v41.m33;
  v54 = *&v41.m11;
  v55 = *&v41.m13;
  v52 = *&v41.m41;
  v53 = *&v41.m43;
  *&v40.m21 = *&v41.m21;
  *&v40.m23 = *&v41.m23;
  *&v40.m31 = *&v41.m31;
  v40.m33 = v41.m33;
  *&v40.m11 = *&v41.m11;
  *&v40.m13 = *&v41.m13;
  v40.m34 = v41.m34;
  *&v40.m41 = *&v41.m41;
  *&v40.m43 = *&v41.m43;
  CATransform3DRotate(&v41, &v40, v8, v7, v6, 0.0);
  v56 = *&v41.m21;
  v57 = *&v41.m23;
  v58 = *&v41.m31;
  v59 = v41.m33;
  v54 = *&v41.m11;
  v55 = *&v41.m13;
  m34 = v41.m34;
  v52 = *&v41.m41;
  v53 = *&v41.m43;
  *&v40.m21 = v39;
  *&v40.m23 = v38;
  *&v40.m31 = v37;
  v40.m33 = m33;
  *&v40.m11 = v36;
  *&v40.m13 = v35;
  v40.m34 = v9;
  *&v40.m41 = v34;
  *&v40.m43 = v33;
  CATransform3DScale(&v41, &v40, v11 + (1.0 - v11) * 0.330000013, v13 + (1.0 - v13) * 0.330000013, 1.0);
  v48 = *&v41.m21;
  v49 = *&v41.m23;
  v50 = *&v41.m31;
  v51 = v41.m33;
  v46 = *&v41.m11;
  v47 = *&v41.m13;
  v44 = *&v41.m41;
  v45 = *&v41.m43;
  *&v40.m21 = *&v41.m21;
  *&v40.m23 = *&v41.m23;
  *&v40.m31 = *&v41.m31;
  v40.m33 = v41.m33;
  *&v40.m11 = *&v41.m11;
  *&v40.m13 = *&v41.m13;
  v40.m34 = v41.m34;
  *&v40.m41 = *&v41.m41;
  *&v40.m43 = *&v41.m43;
  CATransform3DRotate(&v41, &v40, v8 * 0.5, v7, v6, 0.0);
  v48 = *&v41.m21;
  v49 = *&v41.m23;
  v50 = *&v41.m31;
  v51 = v41.m33;
  v46 = *&v41.m11;
  v47 = *&v41.m13;
  v14 = v41.m34;
  v44 = *&v41.m41;
  v45 = *&v41.m43;
  *&v40.m21 = v39;
  *&v40.m23 = v38;
  *&v40.m31 = v37;
  v40.m33 = m33;
  *&v40.m11 = v36;
  *&v40.m13 = v35;
  v40.m34 = v9;
  *&v40.m41 = v34;
  *&v40.m43 = v33;
  CATransform3DScale(&v41, &v40, 1.0, 1.0, 1.0);
  *&v40.m21 = *&v41.m21;
  *&v40.m23 = *&v41.m23;
  *&v40.m31 = *&v41.m31;
  v40.m33 = v41.m33;
  *&v40.m11 = *&v41.m11;
  *&v40.m13 = *&v41.m13;
  v15 = v41.m34;
  v42 = *&v41.m41;
  v43 = *&v41.m43;
  v16 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"transform"];
  v17 = MEMORY[0x277CBEA60];
  v18 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
  LODWORD(v19) = 0.5;
  v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  LODWORD(v21) = 1.0;
  v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
  v23 = [v17 arrayWithObjects:{v18, v20, v22, 0}];
  [v16 setKeyTimes:v23];

  *&v41.m21 = v56;
  *&v41.m23 = v57;
  *&v41.m31 = v58;
  v41.m33 = v59;
  *&v41.m11 = v54;
  *&v41.m13 = v55;
  v41.m34 = m34;
  *&v41.m41 = v52;
  *&v41.m43 = v53;
  v24 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v41];
  v60[0] = v24;
  *&v41.m21 = v48;
  *&v41.m23 = v49;
  *&v41.m31 = v50;
  v41.m33 = v51;
  *&v41.m11 = v46;
  *&v41.m13 = v47;
  v41.m34 = v14;
  *&v41.m41 = v44;
  *&v41.m43 = v45;
  v25 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v41];
  v60[1] = v25;
  *&v41.m21 = *&v40.m21;
  *&v41.m23 = *&v40.m23;
  *&v41.m31 = *&v40.m31;
  v41.m33 = v40.m33;
  *&v41.m11 = *&v40.m11;
  *&v41.m13 = *&v40.m13;
  v41.m34 = v15;
  *&v41.m41 = v42;
  *&v41.m43 = v43;
  v26 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v41];
  v60[2] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:3];
  [v16 setValues:v27];

  duration = self->_duration;
  UIAnimationDragCoefficient();
  [v16 setDuration:duration * v29];
  [v16 setFillMode:*MEMORY[0x277CDA238]];
  [v16 setRemovedOnCompletion:0];
  v30 = [(SUUIScalingFlipView *)self _timingFunction];
  [v16 setTimingFunction:v30];

  return v16;
}

- (id)_frontLayerAnimation
{
  v57[3] = *MEMORY[0x277D85DE8];
  width = self->_fromFrame.size.width;
  height = self->_fromFrame.size.height;
  direction = self->_direction;
  if ((direction & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  if ((direction & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = dbl_259FCB140[(direction & 0xFFFFFFFFFFFFFFFDLL) == 0];
  v9 = 1.0 / ((width + height) * 0.5 * 3.0);
  v10 = self->_toFrame.size.width / width;
  v11 = self->_toFrame.size.height / height;
  v37 = *(MEMORY[0x277CD9DE8] + 48);
  *&v39.m21 = *(MEMORY[0x277CD9DE8] + 32);
  v38 = *&v39.m21;
  *&v39.m23 = v37;
  *&v39.m31 = *(MEMORY[0x277CD9DE8] + 64);
  v39.m33 = *(MEMORY[0x277CD9DE8] + 80);
  m33 = v39.m33;
  v36 = *&v39.m31;
  v13 = *(MEMORY[0x277CD9DE8] + 16);
  *&v39.m11 = *MEMORY[0x277CD9DE8];
  v35 = *&v39.m11;
  *&v39.m13 = v13;
  v39.m34 = v9;
  v34 = v13;
  v32 = *(MEMORY[0x277CD9DE8] + 112);
  *&v39.m41 = *(MEMORY[0x277CD9DE8] + 96);
  v33 = *&v39.m41;
  *&v39.m43 = v32;
  CATransform3DScale(&v40, &v39, (v10 + -1.0) * 0.5 + 1.0, (v11 + -1.0) * 0.5 + 1.0, 1.0);
  v53 = *&v40.m21;
  v54 = *&v40.m23;
  v55 = *&v40.m31;
  v56 = v40.m33;
  v51 = *&v40.m11;
  v52 = *&v40.m13;
  v49 = *&v40.m41;
  v50 = *&v40.m43;
  v39 = v40;
  CATransform3DRotate(&v40, &v39, v8 * 0.5, v7, v6, 0.0);
  v53 = *&v40.m21;
  v54 = *&v40.m23;
  v55 = *&v40.m31;
  v56 = v40.m33;
  v51 = *&v40.m11;
  v52 = *&v40.m13;
  m34 = v40.m34;
  v49 = *&v40.m41;
  v50 = *&v40.m43;
  *&v39.m21 = v38;
  *&v39.m23 = v37;
  *&v39.m31 = v36;
  v39.m33 = m33;
  *&v39.m11 = v35;
  *&v39.m13 = v34;
  v39.m34 = v9;
  *&v39.m41 = v33;
  *&v39.m43 = v32;
  CATransform3DScale(&v40, &v39, v10, v11, 1.0);
  v45 = *&v40.m21;
  v46 = *&v40.m23;
  v47 = *&v40.m31;
  v48 = v40.m33;
  v43 = *&v40.m11;
  v44 = *&v40.m13;
  v41 = *&v40.m41;
  v42 = *&v40.m43;
  v39 = v40;
  CATransform3DRotate(&v40, &v39, v8, v7, v6, 0.0);
  v45 = *&v40.m21;
  v46 = *&v40.m23;
  v47 = *&v40.m31;
  v48 = v40.m33;
  v43 = *&v40.m11;
  v44 = *&v40.m13;
  v15 = v40.m34;
  v41 = *&v40.m41;
  v42 = *&v40.m43;
  v16 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"transform"];
  v17 = MEMORY[0x277CBEA60];
  v18 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
  LODWORD(v19) = 0.5;
  v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  LODWORD(v21) = 1.0;
  v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
  v23 = [v17 arrayWithObjects:{v18, v20, v22, 0}];
  [v16 setKeyTimes:v23];

  *&v40.m21 = v38;
  *&v40.m23 = v37;
  *&v40.m31 = v36;
  v40.m33 = m33;
  *&v40.m11 = v35;
  *&v40.m13 = v34;
  v40.m34 = v9;
  *&v40.m41 = v33;
  *&v40.m43 = v32;
  v24 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v40];
  v57[0] = v24;
  *&v40.m21 = v53;
  *&v40.m23 = v54;
  *&v40.m31 = v55;
  v40.m33 = v56;
  *&v40.m11 = v51;
  *&v40.m13 = v52;
  v40.m34 = m34;
  *&v40.m41 = v49;
  *&v40.m43 = v50;
  v25 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v40];
  v57[1] = v25;
  *&v40.m21 = v45;
  *&v40.m23 = v46;
  *&v40.m31 = v47;
  v40.m33 = v48;
  *&v40.m11 = v43;
  *&v40.m13 = v44;
  v40.m34 = v15;
  *&v40.m41 = v41;
  *&v40.m43 = v42;
  v26 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v40];
  v57[2] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:3];
  [v16 setValues:v27];

  duration = self->_duration;
  UIAnimationDragCoefficient();
  [v16 setDuration:duration * v29];
  [v16 setFillMode:*MEMORY[0x277CDA238]];
  [v16 setRemovedOnCompletion:0];
  v30 = [(SUUIScalingFlipView *)self _timingFunction];
  [v16 setTimingFunction:v30];

  return v16;
}

- (id)_inputColorAnimation
{
  v2 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"filters.multiply.inputColor"];
  v3 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:1.0];
  v4 = [MEMORY[0x277D75348] colorWithWhite:0.330000013 alpha:1.0];
  v5 = MEMORY[0x277CBEA60];
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
  LODWORD(v7) = 0.5;
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  LODWORD(v9) = 1.0;
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  v11 = [v5 arrayWithObjects:{v6, v8, v10, 0}];
  [v2 setKeyTimes:v11];

  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:{objc_msgSend(v3, "CGColor"), objc_msgSend(v4, "CGColor"), objc_msgSend(v3, "CGColor"), 0}];
  [v2 setValues:v12];

  return v2;
}

- (id)_positionAnimation
{
  v2 = [(SUUIScalingFlipView *)self layer];
  [v2 position];
  v4 = v3;
  v6 = v5;

  UIRectGetCenter();
  *&v7 = v4 + v7 - v4;
  v8 = floorf(*&v7);
  *&v7 = v6 + v9 - v6;
  v10 = floorf(*&v7);
  v11 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"position"];
  v12 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v8, v10}];
  [v11 setToValue:v12];

  return v11;
}

- (id)_timingFunction
{
  LODWORD(v3) = 1036831949;
  LODWORD(v2) = 0.25;
  LODWORD(v4) = 0.25;
  LODWORD(v5) = 1.0;
  return [MEMORY[0x277CD9EF8] functionWithControlPoints:v2 :v3 :v4 :v5];
}

@end